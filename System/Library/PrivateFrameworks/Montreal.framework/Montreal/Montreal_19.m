void sub_19D41E200(void *a1)
{
  *a1 = &unk_1F10BC4C8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_19D41EA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v13);
  _Unwind_Resume(a1);
}

void sub_19D41EB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_19D41EC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_19D41EED8(uint64_t a1)
{
  *a1 = &unk_1F10BD038;
  v2 = a1 + 168;
  v3 = *(a1 + 192);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 160);
    if (v4 != a1 + 136)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v4 + 32))(v4);
    goto LABEL_9;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 160);
  if (v4 == a1 + 136)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

LABEL_9:
  sub_19D2A3E48(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_19D41EFF0(char *a1)
{
  *a1 = &unk_1F10BD038;
  v2 = a1 + 168;
  v3 = *(a1 + 24);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 20);
    if (v4 != a1 + 136)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v4 + 32))(v4);
    goto LABEL_9;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 20);
  if (v4 == a1 + 136)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

LABEL_9:
  sub_19D2A3E48((a1 + 16), *(a1 + 3));

  operator delete(a1);
}

void sub_19D420138(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19D4203DC(void *a1, uint64_t a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v64 = a1;
  v9 = sub_19D4513A0(v5, *(a1[7] + 8) + 48);
  if (*v9)
  {
    v10 = a1[4];
    v11 = a1[5];
    v62 = v10[1];
    if (v11)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v12 = objc_msgSend_weights(v11, v6, v7, v8);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v65, v71, 16);
      if (v17)
      {
        v18 = *v66;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v66 != v18)
            {
              objc_enumerationMutation(v12);
            }

            v20 = *(*(&v65 + 1) + 8 * i);
            v21 = objc_msgSend_name(v20, v14, v15, v16, v62);
            isEqualToString = objc_msgSend_isEqualToString_(v21, v22, v5, v23);

            if (isEqualToString)
            {
              v25 = objc_msgSend_index(v20, v14, v15, v16);
              v62 = objc_msgSend_unsignedIntegerValue(v25, v26, v27, v28);

              goto LABEL_13;
            }
          }

          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v65, v71, 16);
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      v10 = v64[4];
    }

    if (objc_msgSend_weightDataFormat(v10, v6, v7, v8, v62) == 1)
    {
      v35 = objc_msgSend_array(MEMORY[0x1E695DF70], v29, v30, v31);
      if (a2)
      {
        v37 = 0;
        do
        {
          LODWORD(v36) = *(*v9 + 4 * v37);
          v38 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v32, v33, v34, v36);
          objc_msgSend_addObject_(v35, v39, v38, v40);

          ++v37;
        }

        while (a2 != v37);
      }

      v41 = [MontrealNNModelWeight alloc];
      v44 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v42, v63, v43);
      v70[0] = &unk_1F10C4FF8;
      v47 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v45, a2, v46);
      v70[1] = v47;
      v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v48, v70, 2);
      v51 = objc_msgSend_initWithName_index_dimension_weightValues_(v41, v50, v5, v44, v49, v35);
    }

    else
    {
      v35 = objc_msgSend_dataFromWeights_length_(v64[4], v29, *v9, a2);
      v52 = [MontrealNNModelWeight alloc];
      v44 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v53, v63, v54);
      v69[0] = &unk_1F10C4FF8;
      v47 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v55, a2, v56);
      v69[1] = v47;
      v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v57, v69, 2);
      v51 = objc_msgSend_initWithName_index_dimension_weightData_(v52, v58, v5, v44, v49, v35);
    }

    v59 = v51;

    objc_msgSend_addObject_(v64[6], v60, v59, v61);
    ++*(v64[4] + 8);
  }
}

void sub_19D420B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MontrealNNGenerateModel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_19D421118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_19D38DEA4(va);
  _Unwind_Resume(a1);
}

void sub_19D4214A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_19D4217B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void *sub_19D421C14(void *a1, uint64_t a2, uint64_t a3, void *__src)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BC980;
  a1[127] = __src[56];
  LODWORD(v7) = *(__src + 32);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  v12 = 1;
  v13 = vdupq_n_s64(1uLL);
  v14 = v7;
  v15 = v13;
  sub_19D2AD9C0((a1 + 2), &v12, &v16);
  v8 = *(__src + 64);
  v12 = 9;
  v13 = vdupq_n_s64(1uLL);
  v15 = 0uLL;
  v14 = v8;
  sub_19D2AD9C0((a1 + 5), &v12, &v16);
  return a1;
}

void sub_19D421D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D421DA0(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      operator delete(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 64);

  return v10(a2, a1);
}

uint64_t sub_19D421E84(uint64_t a1, int a2)
{
  if ((*(*a1 + 72))(a1, 1) < 1)
  {
    v14 = (*(*a1 + 224))(a1);
    result = (*(*a1 + 216))(a1, 1);
    v15 = *(a1 + 48);
    v8 = *(a1 + 568);
    v9 = v14;
    v10 = result;
    if (!v15)
    {
LABEL_15:
      operator new();
    }

    v7 = 1;
    while (1)
    {
      while (1)
      {
        v12 = v15;
        v16 = *(v15 + 32);
        if (v16 <= a2)
        {
          break;
        }

        v15 = *v12;
        if (!*v12)
        {
          goto LABEL_15;
        }
      }

      if (v16 >= a2)
      {
        break;
      }

      v15 = v12[1];
      if (!v15)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = (*(*a1 + 72))(a1, 1);
    v5 = *(a1 + 568);
    LODWORD(v8) = v5 / (*(*a1 + 72))(a1, 1);
    LODWORD(v9) = (*(*a1 + 224))(a1);
    result = (*(*a1 + 216))(a1, 1);
    v7 = v4;
    v8 = v8;
    v9 = v9;
    v10 = result;
    v11 = *(a1 + 48);
    if (!v11)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v12 = v11;
        v13 = *(v11 + 32);
        if (v13 <= a2)
        {
          break;
        }

        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_8;
        }
      }

      if (v13 >= a2)
      {
        break;
      }

      v11 = v12[1];
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  v12[5] = v7;
  v12[6] = 1;
  v12[7] = v8;
  v12[8] = v9;
  v12[9] = v10;
  return result;
}

void *sub_19D42217C(void *a1, uint64_t a2, uint64_t a3, void *__src)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  sub_19D388468(a1, __p, a3, __src);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BCAF0;
  a1[127] = __src[56];
  LODWORD(v7) = *(__src + 32);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  v12 = 1;
  v13 = vdupq_n_s64(1uLL);
  v14 = v7;
  v15 = v13;
  sub_19D2AD9C0((a1 + 2), &v12, &v16);
  v8 = *(__src + 64);
  v12 = 9;
  v13 = vdupq_n_s64(1uLL);
  v15 = 0uLL;
  v14 = v8;
  sub_19D2AD9C0((a1 + 5), &v12, &v16);
  return a1;
}

void sub_19D4222EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D422308(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      operator delete(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 168);

  return v10(a2, a1);
}

uint64_t sub_19D4223EC(uint64_t a1, int a2)
{
  if ((*(*a1 + 72))(a1, 1) < 1)
  {
    v14 = (*(*a1 + 224))(a1);
    result = (*(*a1 + 216))(a1, 1);
    v15 = *(a1 + 48);
    v8 = *(a1 + 568);
    v9 = v14;
    v10 = result;
    if (!v15)
    {
LABEL_15:
      operator new();
    }

    v7 = 1;
    while (1)
    {
      while (1)
      {
        v12 = v15;
        v16 = *(v15 + 32);
        if (v16 <= a2)
        {
          break;
        }

        v15 = *v12;
        if (!*v12)
        {
          goto LABEL_15;
        }
      }

      if (v16 >= a2)
      {
        break;
      }

      v15 = v12[1];
      if (!v15)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = (*(*a1 + 72))(a1, 1);
    v5 = *(a1 + 568);
    LODWORD(v8) = v5 / (*(*a1 + 72))(a1, 1);
    LODWORD(v9) = (*(*a1 + 224))(a1);
    result = (*(*a1 + 216))(a1, 1);
    v7 = v4;
    v8 = v8;
    v9 = v9;
    v10 = result;
    v11 = *(a1 + 48);
    if (!v11)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v12 = v11;
        v13 = *(v11 + 32);
        if (v13 <= a2)
        {
          break;
        }

        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_8;
        }
      }

      if (v13 >= a2)
      {
        break;
      }

      v11 = v12[1];
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  v12[5] = v7;
  v12[6] = 1;
  v12[7] = v8;
  v12[8] = v9;
  v12[9] = v10;
  return result;
}

void sub_19D4226E8(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

void sub_19D422714(uint64_t a1)
{
  v1 = sub_19D388648(a1);

  operator delete(v1);
}

uint64_t sub_19D42392C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_1F10BCC90;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_19D42395C(uint64_t a1, unsigned int a2, uint64_t (*a3)(uint64_t, uint64_t, void), uint64_t a4)
{
  *a1 = &unk_1F10BCCB8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  v6 = (a1 + 16);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = a4;
  if (!a2 && ((v16 = 0, v15 = 4, v12 = sysctlbyname("hw.activecpu", &v16, &v15, 0, 0), v16 <= 1) ? (a2 = 1) : (a2 = v16), v12) || a2 == 1)
  {
    *(a1 + 160) = a3(0, a1, *(a1 + 168));
    LODWORD(v7) = 1;
  }

  else
  {
    v7 = a2;
    if (sub_19D44F110(v6, a2, 0, 8u, 0))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "tpThreadInit error");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v10 = *(a1 + 24) + v8;
      *(v10 + 136) = 0;
      *(v10 + 152) = sub_19D423AFC;
      v11 = *(v10 + 144);
      *v11 = a3(i, a1, *(a1 + 168));
      v8 += 184;
    }
  }

  *(a1 + 8) = v7;
  return a1;
}

uint64_t sub_19D423B40(uint64_t a1)
{
  *a1 = &unk_1F10BCCB8;
  v2 = *(a1 + 8);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 160);
      if (v3)
      {
        (*(*v3 + 8))(v3);
        return a1;
      }
    }

    else
    {
      v5 = 0;
      v6 = 144;
      do
      {
        v7 = *(*(a1 + 24) + v6);
        if (*v7)
        {
          (*(**v7 + 8))(*v7);
          v2 = *(a1 + 8);
        }

        *v7 = 0;
        ++v5;
        v6 += 184;
      }

      while (v5 < v2);
      if ((*(a1 + 152) & 1) == 0)
      {
        sub_19D44F440((a1 + 16));
      }
    }
  }

  return a1;
}

void sub_19D423C48(unsigned int *__p)
{
  *__p = &unk_1F10BCCB8;
  v2 = __p[2];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(__p + 20);
      if (v3)
      {
        (*(*v3 + 8))(v3);
        v4 = __p;

        goto LABEL_6;
      }
    }

    else
    {
      v5 = 0;
      v6 = 144;
      do
      {
        v7 = *(*(__p + 3) + v6);
        if (*v7)
        {
          (*(**v7 + 8))(*v7);
          v2 = __p[2];
        }

        *v7 = 0;
        ++v5;
        v6 += 184;
      }

      while (v5 < v2);
      if ((__p[38] & 1) == 0)
      {
        sub_19D44F440(__p + 4);
      }
    }
  }

  v4 = __p;

LABEL_6:
  operator delete(v4);
}

uint64_t sub_19D423D70(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2 <= a2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    return *(a1 + 160);
  }

  return **(*(a1 + 24) + 184 * a2 + 144);
}

uint64_t sub_19D423DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = v3;
  if (a2)
  {
    v4 = a2;
    if (v3 < a2)
    {
      return 2;
    }
  }

  if (!v3)
  {
    return 3;
  }

  if (v3 == 1)
  {
    (*(**(a1 + 160) + 16))(*(a1 + 160), v4);
    return 0;
  }

  else
  {
    result = sub_19D44F584(a1 + 16, v4);
    if (result || (result = sub_19D44F6D4(a1 + 16), result))
    {
      *(a1 + 152) = 1;
    }
  }

  return result;
}

void sub_19D4243A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_19D424878(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695DF70];
  v36 = v3;
  v8 = objc_msgSend_count(v3, v5, v6, v7);
  v11 = objc_msgSend_arrayWithCapacity_(v4, v9, v8, v10);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v36;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v37, v41, 16);
  if (v17)
  {
    v18 = *v38;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = MEMORY[0x1E696AE18];
        v21 = *(a1 + 8);
        v22 = objc_msgSend_name(*(*(&v37 + 1) + 8 * i), v14, v15, v16);
        v25 = objc_msgSend_predicateWithFormat_(v20, v23, v21, v24, v22);

        v28 = objc_msgSend_filteredSetUsingPredicate_(*a1, v26, v25, v27);
        v32 = objc_msgSend_anyObject(v28, v29, v30, v31);

        if (v32)
        {
          objc_msgSend_addObject_(v11, v33, v32, v34);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v37, v41, 16);
    }

    while (v17);
  }

  return v11;
}

id sub_19D425010(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v5 = objc_msgSend_mutableCopy(v1, v2, v3, v4);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v1;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v25, v29, 16);
  if (v11)
  {
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = objc_msgSend_dimension(v14, v8, v9, v10, v25);
        v19 = objc_msgSend_count(v15, v16, v17, v18) == 0;

        if (v19)
        {
          objc_msgSend_removeObject_(v5, v8, v14, v10);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v25, v29, 16);
    }

    while (v11);
  }

  v23 = objc_msgSend_copy(v5, v20, v21, v22);

  return v23;
}

uint64_t sub_19D426DF4(uint64_t a1, uint64_t a2, uint64_t a3, void *__src)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BCCF8;
  *(a1 + 1016) = __src[7];
  *(a1 + 1024) = __src[56];
  *(a1 + 1032) = __src[72];
  *(a1 + 1056) = 0;
  *(a1 + 1058) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0;
  v7 = *(__src + 32);
  v12 = 1;
  v13 = vdupq_n_s64(1uLL);
  v15 = 0;
  v16 = 0;
  v14 = v7;
  sub_19D2AD9C0(a1 + 16, &v12, &v17);
  v8 = *(__src + 64);
  v12 = 9;
  v13 = vdupq_n_s64(1uLL);
  v15 = 0;
  v16 = 0;
  v14 = v8;
  sub_19D2AD9C0(a1 + 40, &v12, &v17);
  *(a1 + 1088) = *(__src + 96);
  return a1;
}

void sub_19D426F64(_Unwind_Exception *a1)
{
  v3 = *(v1 + 1064);
  if (v3)
  {
    *(v1 + 1072) = v3;
    operator delete(v3);
  }

  sub_19D38640C(v1);
  _Unwind_Resume(a1);
}

void sub_19D426F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D426FB0(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 16);

  return v10(a2, a1);
}

int64x2_t sub_19D4270B4(uint64_t a1, int a2)
{
  if ((*(*a1 + 104))(a1) != 2)
  {
    if ((*(*a1 + 104))(a1))
    {
      if ((*(*a1 + 104))(a1) != 13)
      {
        return result;
      }

      v10 = (*(*a1 + 224))(a1);
      v11 = (*(*a1 + 216))(a1, 1);
      v12 = *(a1 + 48);
      v13 = *(a1 + 568);
      v14 = v10;
      v15 = v11;
      if (!v12)
      {
LABEL_28:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v12;
          v17 = *(v12 + 8);
          if (v17 <= a2)
          {
            break;
          }

          v12 = *v16;
          if (!*v16)
          {
            goto LABEL_28;
          }
        }

        if (v17 >= a2)
        {
          break;
        }

        v12 = v16[1];
        if (!v12)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (*(*(a1 + 16) + 40) != 1)
      {
        v18 = (*(*a1 + 72))(a1, 1);
        v19 = (*(*a1 + 224))(a1);
        v20 = (*(*a1 + 216))(a1, 1);
        v21 = *(a1 + 16);
        *(v21 + 40) = vdupq_n_s64(1uLL);
        *(v21 + 56) = v18;
        *(v21 + 64) = v19;
        *(v21 + 72) = v20;
      }

      v22 = (*(*a1 + 224))(a1);
      v23 = (*(*a1 + 216))(a1, 1);
      v24 = *(a1 + 48);
      v13 = *(a1 + 568);
      v14 = v22;
      v15 = v23;
      if (!v24)
      {
        goto LABEL_28;
      }

      while (1)
      {
        while (1)
        {
          v16 = v24;
          v25 = *(v24 + 8);
          if (v25 <= a2)
          {
            break;
          }

          v24 = *v16;
          if (!*v16)
          {
            goto LABEL_28;
          }
        }

        if (v25 >= a2)
        {
          break;
        }

        v24 = v16[1];
        if (!v24)
        {
          goto LABEL_28;
        }
      }
    }

    result = vdupq_n_s64(1uLL);
    *(v16 + 5) = result;
    v16[7] = v13;
    v16[8] = v14;
    v16[9] = v15;
    return result;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  if (!v4)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 8);
      if (v7 <= a2)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_9;
      }
    }

    if (v7 >= a2)
    {
      break;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  result = *(v5 + 40);
  v9 = *(v5 + 56);
  v6[9] = *(v5 + 72);
  *(v6 + 7) = v9;
  *(v6 + 5) = result;
  return result;
}

void sub_19D4274D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19D387698(a1, a2, a3);

  sub_19D42750C(a1);
}

void sub_19D42750C(uint64_t a1)
{
  if (*(a1 + 1057) == 1)
  {
    v79 = v1;
    v80 = v2;
    v4 = sub_19D387D50(a1, 9);
    (*(*a1 + 168))(&v74, a1, 9);
    *v4 -= 4 * v74 * v75 * v76 * v77 * v78;
    v5 = (*(*a1 + 216))(a1, 1);
    v66 = (v5 - 1);
    if (v5 >= 1)
    {
      v68 = 4 * (v5 - 1);
      v69 = 0;
      v67 = (v5 - 1);
      while (1)
      {
        v6 = (*(*a1 + 80))(a1, 9);
        v7 = (*(*a1 + 224))(a1);
        v8 = (*(*a1 + 224))(a1);
        v73 = (v8 - 1);
        if (v8 >= 1)
        {
          break;
        }

LABEL_4:
        --v67;
        v68 -= 4;
        v39 = v69++ == v66;
        if (v39)
        {
          goto LABEL_54;
        }
      }

      v9 = 0;
      v10 = v6;
      v11 = v7;
      v12 = v67 * v6 * v7;
      v70 = (v69 - v66) * v10 * v7;
      v13 = v8;
      v71 = v12 - 1;
      v72 = v68 * v10 * v11;
      v14 = (v8 - 1);
      v15 = 4 * v14;
      while (1)
      {
        v16 = (*(*a1 + 80))(a1, 9);
        v17 = v14 * v16;
        v18 = v14 * v16 + v12;
        if (*(a1 + 1057) == 1)
        {
          v19 = *(a1 + 1056);
          if (v19 == 1)
          {
            v20 = v12 + v14 * *(*(a1 + 1064) + 8);
          }

          else
          {
            v20 = v12 + v14 * ((*(a1 + 1072) - *(a1 + 1064)) >> 3);
            if ((v19 & 1) == 0)
            {
LABEL_36:
              v45 = *(a1 + 1064);
              v46 = *(a1 + 1072) - v45;
              if (v46)
              {
                v47 = v46 >> 3;
                v37 = v47 < 1;
                v48 = v47 - 1;
                if (!v37)
                {
                  v49 = *v4 + 4 * v20;
                  v50 = *v4 + 4 * v18;
                  do
                  {
                    *(v50 + 4 * *(v45 + 8 * v48)) = *(v49 + 4 * v48);
                    v51 = v48-- + 1;
                  }

                  while (v51 > 1);
                }

                if ((*(*a1 + 80))(a1, 9) >= 1)
                {
                  v52 = 0;
                  v53 = 0;
                  v54 = v72 + v15 * v16;
                  do
                  {
                    v55 = *(a1 + 1064);
                    if (v53 < (*(a1 + 1072) - v55) >> 3 && v52 == *(v55 + 8 * v53))
                    {
                      ++v53;
                    }

                    else
                    {
                      *(*v4 + v54 + 4 * v52) = 0;
                    }

                    ++v52;
                  }

                  while (v52 < (*(*a1 + 80))(a1, 9));
                }
              }

              goto LABEL_7;
            }
          }
        }

        else
        {
          v20 = v12 + v14 * *(a1 + 568);
          if ((*(a1 + 1056) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v21 = *(a1 + 1064);
        if (*(a1 + 1072) - v21 == 16)
        {
          break;
        }

LABEL_7:
        --v14;
        ++v9;
        v15 -= 4;
        if (v9 == v13)
        {
          goto LABEL_4;
        }
      }

      v22 = *v21;
      v23 = v21[1];
      v24 = *v21 + v18;
      v25 = v24 + v23;
      if (v23 >= 1)
      {
        v26 = v23 + v20;
        v27 = *v4;
        v28 = v12 + v22 + v17;
        v29 = v28 + v23;
        v30 = v71 + v23 + v22;
        v31 = v30 + v17;
        if (v30 + v17 >= v28)
        {
          v32 = v12 + v22 + v17;
        }

        else
        {
          v32 = v30 + v17;
        }

        v33 = v29 - v32;
        if ((v29 - v32) > 0x2F && ((v34 = v31 - v32, v35 = v27 + 4 * v29 - 4, v36 = 4 * v26, v35 - 4 * v34 <= v35) ? (v37 = v27 + 4 * v26 - 4 - 4 * v34 > v27 + 4 * v26 - 4) : (v37 = 1), (v38 = v34 >> 62, !v37) ? (v39 = v38 == 0) : (v39 = 0), v39))
        {
          v56 = v20 - v28;
          v40 = v24 + v23;
          if ((v56 & 0x3FFFFFFFFFFFFFF8) != 0)
          {
            v40 = v25 - (v33 & 0xFFFFFFFFFFFFFFF8);
            v26 -= v33 & 0xFFFFFFFFFFFFFFF8;
            v57 = v12 + v22 + v17;
            v58 = v57 + v23;
            v59 = v71 + v23 + v22 + v17;
            if (v59 >= v57)
            {
              v59 = v12 + v22 + v17;
            }

            v60 = (v58 - v59) & 0xFFFFFFFFFFFFFFF8;
            v61 = (v27 - 16 + v36);
            v62 = (v27 - 16 + 4 * v58);
            do
            {
              v63 = *v61;
              *(v62 - 1) = *(v61 - 1);
              *v62 = v63;
              v61 -= 2;
              v62 -= 2;
              v60 -= 8;
            }

            while (v60);
            if (v33 == (v33 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v40 = v24 + v23;
        }

        v41 = v27 - 4;
        v42 = 4 * v26;
        do
        {
          *(v41 + 4 * v40) = *(v41 + v42);
          v42 -= 4;
          --v40;
        }

        while (v40 > v24);
      }

LABEL_28:
      if (v22 >= 1)
      {
        v43 = v12 + v22 + v17;
        v44 = v12 + 1 + v17;
        if (v43 > v44)
        {
          v44 = v43;
        }

        bzero((*v4 + 4 * v18), 4 * (v70 + v44 + (v9 - v73) * v16));
      }

      while (v25 < v18 + (*(*a1 + 80))(a1, 9))
      {
        *(*v4 + 4 * v25++) = 0;
      }

      goto LABEL_7;
    }

LABEL_54:
    (*(*a1 + 168))(&v74, a1, 9);
    *v4 += 4 * v74 * v75 * v76 * v77 * v78;
    *(a1 + 1072) = *(a1 + 1064);
    if ((*(a1 + 1056) & 1) == 0)
    {
      v64 = *(a1 + 1040);
      if (v64)
      {
        operator delete[](v64);
      }

      v65 = *(a1 + 1048);
      if (v65)
      {
        operator delete[](v65);
      }
    }

    *(a1 + 1056) = 0;
    *(a1 + 1058) = 1;
  }
}

uint64_t sub_19D427B38(uint64_t a1, char **a2, int a3)
{
  v3 = a3;
  v6 = *a2;
  v7 = a2[1];
  if (!a3)
  {
    if (v7 != v6)
    {
      while ((*v6 & 0x8000000000000000) == 0)
      {
        v10 = *v6;
        if (v10 >= (*(*a1 + 80))(a1, 9))
        {
          break;
        }

        v6 += 8;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid rangeOrIndices for partial output. ");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v7 - v6 != 16)
  {
    goto LABEL_14;
  }

  if ((*v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v9 = *(v6 + 1);
  if (v9 < 1)
  {
    goto LABEL_14;
  }

  v8 = *v6;
  if (v9 + v8 > (*(*a1 + 80))(a1, 9))
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((a1 + 1064) != a2)
  {
    sub_19D3C4E20((a1 + 1064), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  *(a1 + 1056) = v3;
  sub_19D427CA8(a1);
  *(a1 + 1057) = 257;
  return 1;
}

uint64_t sub_19D427CA8(uint64_t a1)
{
  if (*(a1 + 1056) != 1)
  {
    (*(*a1 + 72))(a1, 1);
    operator new[]();
  }

  v2 = **(a1 + 1064);
  v3 = *(a1 + 1024);
  result = (*(*a1 + 72))(a1, 1);
  *(a1 + 1040) = v3 + 4 * v2 * result;
  *(a1 + 1048) = *(a1 + 1032) + 4 * v2;
  return result;
}

uint64_t sub_19D427EDC(uint64_t a1)
{
  if (*(a1 + 1057) != 1)
  {
    return *(a1 + 568);
  }

  if (*(a1 + 1056) == 1)
  {
    return *(*(a1 + 1064) + 8);
  }

  return (*(a1 + 1072) - *(a1 + 1064)) >> 3;
}

BOOL sub_19D427F1C(uint64_t *a1, void *a2, int a3)
{
  if ((a3 - 8) < 0xFFFFFFF9)
  {
    if ((a3 - 12) >= 0xFFFFFFFD)
    {
      memset(v17, 0, 512);
      (*(*a1 + 152))(v17, a1);
      if (!(*(*a1 + 104))(a1) && ((*(a1 + 1058) & 1) != 0 || *(a1 + 1057) == 1))
      {
        *(a1 + 1058) = 0;
        return 1;
      }
    }

    return 0;
  }

  if ((*(*a1 + 104))(a1) != 2)
  {
    return 0;
  }

  v7 = a1 + 3;
  v6 = a1[3];
  if (!v6)
  {
LABEL_14:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v6;
      v9 = *(v6 + 32);
      if (v9 <= a3)
      {
        break;
      }

      v6 = *v8;
      if (!*v8)
      {
        goto LABEL_14;
      }
    }

    if (v9 >= a3)
    {
      break;
    }

    v6 = v8[1];
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (v8[5] != *a2)
  {
    return 1;
  }

  v10 = *v7;
  if (!*v7)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v11 = v10;
      v12 = *(v10 + 32);
      if (v12 <= a3)
      {
        break;
      }

      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_22;
      }
    }

    if (v12 >= a3)
    {
      break;
    }

    v10 = v11[1];
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v11[6] != a2[1])
  {
    return 1;
  }

  v13 = *v7;
  if (!*v7)
  {
LABEL_32:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v15 = v13;
      v16 = *(v13 + 32);
      if (v16 <= a3)
      {
        break;
      }

      v13 = *v15;
      if (!*v15)
      {
        goto LABEL_32;
      }
    }

    if (v16 >= a3)
    {
      return v15[7] != a2[2];
    }

    v13 = v15[1];
    if (!v13)
    {
      goto LABEL_32;
    }
  }
}

uint64_t sub_19D428290(uint64_t a1, uint64_t a2, uint64_t a3, void *__src)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  sub_19D388468(a1, __p, a3, __src);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BCE68;
  *(a1 + 1016) = __src[7];
  *(a1 + 1024) = __src[56];
  *(a1 + 1032) = __src[72];
  *(a1 + 1056) = 0;
  *(a1 + 1058) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0;
  v7 = *(__src + 32);
  v12 = 1;
  v13 = vdupq_n_s64(1uLL);
  v15 = 0;
  v16 = 0;
  v14 = v7;
  sub_19D2AD9C0(a1 + 16, &v12, &v17);
  v8 = *(__src + 64);
  v12 = 9;
  v13 = vdupq_n_s64(1uLL);
  v15 = 0;
  v16 = 0;
  v14 = v8;
  sub_19D2AD9C0(a1 + 40, &v12, &v17);
  *(a1 + 1088) = *(__src + 96);
  return a1;
}

void sub_19D428400(_Unwind_Exception *a1)
{
  v3 = *(v1 + 1064);
  if (v3)
  {
    *(v1 + 1072) = v3;
    operator delete(v3);
  }

  sub_19D388648(v1);
  _Unwind_Resume(a1);
}

void sub_19D42842C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D42844C(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 120);

  return v10(a2, a1);
}

int64x2_t sub_19D428550(uint64_t a1, int a2)
{
  if ((*(*a1 + 104))(a1) != 2)
  {
    if ((*(*a1 + 104))(a1))
    {
      if ((*(*a1 + 104))(a1) != 13)
      {
        return result;
      }

      v10 = (*(*a1 + 224))(a1);
      v11 = (*(*a1 + 216))(a1, 1);
      v12 = *(a1 + 48);
      v13 = *(a1 + 568);
      v14 = v10;
      v15 = v11;
      if (!v12)
      {
LABEL_28:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v12;
          v17 = *(v12 + 8);
          if (v17 <= a2)
          {
            break;
          }

          v12 = *v16;
          if (!*v16)
          {
            goto LABEL_28;
          }
        }

        if (v17 >= a2)
        {
          break;
        }

        v12 = v16[1];
        if (!v12)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (*(*(a1 + 16) + 40) != 1)
      {
        v18 = (*(*a1 + 72))(a1, 1);
        v19 = (*(*a1 + 224))(a1);
        v20 = (*(*a1 + 216))(a1, 1);
        v21 = *(a1 + 16);
        *(v21 + 40) = vdupq_n_s64(1uLL);
        *(v21 + 56) = v18;
        *(v21 + 64) = v19;
        *(v21 + 72) = v20;
      }

      v22 = (*(*a1 + 224))(a1);
      v23 = (*(*a1 + 216))(a1, 1);
      v24 = *(a1 + 48);
      v13 = *(a1 + 568);
      v14 = v22;
      v15 = v23;
      if (!v24)
      {
        goto LABEL_28;
      }

      while (1)
      {
        while (1)
        {
          v16 = v24;
          v25 = *(v24 + 8);
          if (v25 <= a2)
          {
            break;
          }

          v24 = *v16;
          if (!*v16)
          {
            goto LABEL_28;
          }
        }

        if (v25 >= a2)
        {
          break;
        }

        v24 = v16[1];
        if (!v24)
        {
          goto LABEL_28;
        }
      }
    }

    result = vdupq_n_s64(1uLL);
    *(v16 + 5) = result;
    v16[7] = v13;
    v16[8] = v14;
    v16[9] = v15;
    return result;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  if (!v4)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 8);
      if (v7 <= a2)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_9;
      }
    }

    if (v7 >= a2)
    {
      break;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  result = *(v5 + 40);
  v9 = *(v5 + 56);
  v6[9] = *(v5 + 72);
  *(v6 + 7) = v9;
  *(v6 + 5) = result;
  return result;
}

void sub_19D428970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19D389740(a1, a2, a3);

  sub_19D42750C(a1);
}

uint64_t sub_19D4289A8(uint64_t a1, char **a2, int a3)
{
  v3 = a3;
  v6 = *a2;
  v7 = a2[1];
  if (!a3)
  {
    if (v7 != v6)
    {
      while ((*v6 & 0x8000000000000000) == 0)
      {
        v10 = *v6;
        if (v10 >= (*(*a1 + 80))(a1, 9))
        {
          break;
        }

        v6 += 8;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid rangeOrIndices for partial output. ");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v7 - v6 != 16)
  {
    goto LABEL_14;
  }

  if ((*v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v9 = *(v6 + 1);
  if (v9 < 1)
  {
    goto LABEL_14;
  }

  v8 = *v6;
  if (v9 + v8 > (*(*a1 + 80))(a1, 9))
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((a1 + 1064) != a2)
  {
    sub_19D3C4E20((a1 + 1064), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  *(a1 + 1056) = v3;
  sub_19D428B18(a1);
  *(a1 + 1057) = 257;
  return 1;
}

uint64_t sub_19D428B18(uint64_t a1)
{
  if (*(a1 + 1056) != 1)
  {
    (*(*a1 + 72))(a1, 1);
    operator new[]();
  }

  v2 = **(a1 + 1064);
  v3 = *(a1 + 1024);
  result = (*(*a1 + 72))(a1, 1);
  *(a1 + 1040) = v3 + v2 * result;
  *(a1 + 1048) = *(a1 + 1032) + 4 * v2;
  return result;
}

BOOL sub_19D428D38(uint64_t *a1, void *a2, int a3)
{
  if ((a3 - 8) < 0xFFFFFFF9)
  {
    if ((a3 - 12) >= 0xFFFFFFFD)
    {
      memset(v17, 0, 512);
      (*(*a1 + 152))(v17, a1);
      if (!(*(*a1 + 104))(a1) && ((*(a1 + 1058) & 1) != 0 || *(a1 + 1057) == 1))
      {
        *(a1 + 1058) = 0;
        return 1;
      }
    }

    return 0;
  }

  if ((*(*a1 + 104))(a1) != 2)
  {
    return 0;
  }

  v7 = a1 + 3;
  v6 = a1[3];
  if (!v6)
  {
LABEL_14:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v6;
      v9 = *(v6 + 32);
      if (v9 <= a3)
      {
        break;
      }

      v6 = *v8;
      if (!*v8)
      {
        goto LABEL_14;
      }
    }

    if (v9 >= a3)
    {
      break;
    }

    v6 = v8[1];
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (v8[5] != *a2)
  {
    return 1;
  }

  v10 = *v7;
  if (!*v7)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v11 = v10;
      v12 = *(v10 + 32);
      if (v12 <= a3)
      {
        break;
      }

      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_22;
      }
    }

    if (v12 >= a3)
    {
      break;
    }

    v10 = v11[1];
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v11[6] != a2[1])
  {
    return 1;
  }

  v13 = *v7;
  if (!*v7)
  {
LABEL_32:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v15 = v13;
      v16 = *(v13 + 32);
      if (v16 <= a3)
      {
        break;
      }

      v13 = *v15;
      if (!*v15)
      {
        goto LABEL_32;
      }
    }

    if (v16 >= a3)
    {
      return v15[7] != a2[2];
    }

    v13 = v15[1];
    if (!v13)
    {
      goto LABEL_32;
    }
  }
}

uint64_t sub_19D4290AC(void *a1)
{
  *a1 = &unk_1F10BCCF8;
  v2 = a1[133];
  if (v2)
  {
    a1[134] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_19D38640C(a1);
}

void sub_19D429110(void *a1)
{
  *a1 = &unk_1F10BCCF8;
  v2 = a1[133];
  if (v2)
  {
    a1[134] = v2;
    operator delete(v2);
  }

  v3 = sub_19D38640C(a1);

  operator delete(v3);
}

uint64_t sub_19D429174(void *a1)
{
  *a1 = &unk_1F10BCE68;
  v2 = a1[133];
  if (v2)
  {
    a1[134] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_19D388648(a1);
}

void sub_19D4291D8(void *a1)
{
  *a1 = &unk_1F10BCE68;
  v2 = a1[133];
  if (v2)
  {
    a1[134] = v2;
    operator delete(v2);
  }

  v3 = sub_19D388648(a1);

  operator delete(v3);
}

vImage_Error sub_19D42923C(void *a1, void *a2, vImagePixelCount a3)
{
  dest.data = a2;
  dest.height = 1;
  dest.width = a3;
  dest.rowBytes = 2 * a3;
  v4.data = a1;
  v4.height = 1;
  v4.width = a3;
  v4.rowBytes = 4 * a3;
  return vImageConvert_PlanarFtoPlanar16F(&v4, &dest, 0);
}

vImage_Error sub_19D429284(void *a1, void *a2, vImagePixelCount a3)
{
  src.data = a1;
  src.height = 1;
  src.width = a3;
  src.rowBytes = 2 * a3;
  v4.data = a2;
  v4.height = 1;
  v4.width = a3;
  v4.rowBytes = 4 * a3;
  return vImageConvert_Planar16FtoPlanarF(&src, &v4, 0);
}

float *sub_19D4292CC(float *result, _BYTE *a2, uint64_t a3, float a4)
{
  for (; a3; --a3)
  {
    v5 = *result;
    if (*result <= -a4)
    {
      LOBYTE(v4) = -127;
    }

    else if (v5 < a4 && (v4 = llroundf(v5 * ((1.0 / a4) * 128.0)), v4 <= 127))
    {
      if (v4 <= -127)
      {
        LOBYTE(v4) = -127;
      }
    }

    else
    {
      LOBYTE(v4) = 127;
    }

    *a2++ = v4;
    ++result;
  }

  return result;
}

uint64_t sub_19D42933C(uint64_t a1)
{
  *a1 = &unk_1F10BD008;
  pthread_mutex_init((a1 + 8), 0);
  return a1;
}

uint64_t sub_19D429384(uint64_t a1)
{
  *a1 = &unk_1F10BD008;
  pthread_mutex_destroy((a1 + 8));
  return a1;
}

void sub_19D4293CC(char *a1)
{
  *a1 = &unk_1F10BD008;
  pthread_mutex_destroy((a1 + 8));

  operator delete(a1);
}

void sub_19D429668(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_19D4297EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t sub_19D4298D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = &unk_1F10BD038;
  *(a1 + 8) = a2;
  sub_19D3955B4(a1 + 16, a3);
  v15 = *(a4 + 24);
  if (!v15)
  {
    goto LABEL_4;
  }

  if (v15 != a4)
  {
    v15 = (*(*v15 + 16))(v15);
LABEL_4:
    *(a1 + 160) = v15;
    goto LABEL_6;
  }

  *(a1 + 160) = a1 + 136;
  (*(**(a4 + 24) + 24))(*(a4 + 24), a1 + 136);
LABEL_6:
  v16 = *(a5 + 24);
  if (v16)
  {
    if (v16 == a5)
    {
      *(a1 + 192) = a1 + 168;
      (*(**(a5 + 24) + 24))(*(a5 + 24));
      goto LABEL_11;
    }

    v16 = (*(*v16 + 16))(v16);
  }

  *(a1 + 192) = v16;
LABEL_11:
  *(a1 + 200) = a6;
  *(a1 + 208) = a7;
  *(a1 + 216) = a8;
  *(a1 + 224) = *a9;
  *(a1 + 232) = *(a9 + 8);
  *(a1 + 240) = *(a9 + 16);
  *(a1 + 248) = 0;
  return a1;
}

void sub_19D429A4C(_Unwind_Exception *a1)
{
  sub_19D41D94C(v2);
  sub_19D2A3E48(v1 + 16, *(v1 + 24));
  _Unwind_Resume(a1);
}

void sub_19D429A84(uint64_t a1, int a2)
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  *out = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *in = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  sub_19D429BF8(a1, a2, v14);
  memset(v13, 0, sizeof(v13));
  v4 = MEMORY[0x19EAF99E0](v14, v13);
  v39 = a2;
  v5 = *(a1 + 160);
  if (!v5 || ((*(*v5 + 48))(&v8), v39 = a2, (v6 = *(a1 + 192)) == 0))
  {
    sub_19D3D0FFC();
  }

  v7 = v9 * v10 * v11 * v12 / a2;
  (*(*v6 + 48))(&v8);
  BNNSFilterApplyBatch(v4, a2, in[1], v7, out[1], v9 * v10 * v11 * v12 / a2);
  if (v4)
  {
    BNNSFilterDestroy(v4);
  }
}

double sub_19D429BF8@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v4 = *(a1 + 160);
  if (!v4 || ((*(*v4 + 48))(&v25), v24 = v29, v7 = sub_19D41D9D8(&v25, 0), v22 = v26, v23 = v7, v21 = sub_19D41D9D8(&v25, 1), v8 = v27, v9 = sub_19D41D9D8(&v25, 2), v10 = v28, v30 = a2, (v11 = *(a1 + 192)) == 0))
  {
    sub_19D3D0FFC();
  }

  (*(*v11 + 48))(&v25);
  v12 = v29;
  v13 = sub_19D41D9D8(&v25, 0);
  v14 = v26;
  v15 = sub_19D41D9D8(&v25, 1);
  v16 = v27;
  v17 = sub_19D41D9D8(&v25, 2);
  v18 = v28;
  *a3 = 0x3000000000000;
  *(a3 + 8) = v22;
  *(a3 + 16) = v8;
  *(a3 + 24) = v10;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = v23;
  *(a3 + 80) = v21;
  *(a3 + 88) = v9;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 136) = v24;
  *(a3 + 144) = 65568;
  *(a3 + 156) = 0;
  *(a3 + 148) = 0;
  *(a3 + 164) = 1065353216;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0x3000000000000;
  *(a3 + 184) = v14;
  *(a3 + 192) = v16;
  *(a3 + 200) = v18;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0;
  *(a3 + 248) = v13;
  *(a3 + 256) = v15;
  *(a3 + 264) = v17;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0;
  *(a3 + 312) = v12;
  *(a3 + 320) = 65568;
  *(a3 + 332) = 0;
  *(a3 + 324) = 0;
  *(a3 + 340) = 1065353216;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a3 + 376) = 0u;
  *(a3 + 392) = 0u;
  *(a3 + 408) = 0u;
  *(a3 + 424) = 0u;
  *(a3 + 440) = 0u;
  *(a3 + 456) = 0u;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 0u;
  *(a3 + 504) = 0u;
  *(a3 + 520) = 0;
  v19 = *(a1 + 200);
  *(a3 + 544) = 0u;
  *(a3 + 560) = 0u;
  *(a3 + 528) = 0u;
  if (v19 - 1) <= 4 && ((0x1Bu >> (v19 - 1)))
  {
    *(a3 + 528) = dword_19D478B2C[v19 - 1];
  }

  *(a3 + 576) = *(a1 + 248);
  *(a3 + 584) = sub_19D37EE00(a1 + 16, 0);
  *(a3 + 592) = sub_19D37EE00(a1 + 16, 1);
  *(a3 + 600) = sub_19D37F014(a1 + 16, 0);
  *(a3 + 608) = sub_19D37F014(a1 + 16, 1);
  *(a3 + 616) = sub_19D429EA8(a1 + 16, 0);
  *(a3 + 624) = sub_19D429EA8(a1 + 16, 1);
  *(a3 + 632) = *(a1 + 208);
  result = 0.0;
  *(a3 + 648) = 0u;
  *(a3 + 664) = 0u;
  return result;
}

uint64_t sub_19D429EA8(uint64_t a1, int a2)
{
  v16 = 14;
  strcpy(__s1, "dilationStride");
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_20:
    sub_19D2AEA2C("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 55);
      if (v4 >= 0)
      {
        v5 = *(v2 + 55);
      }

      else
      {
        v5 = v2[5];
      }

      if (v4 >= 0)
      {
        v6 = (v2 + 4);
      }

      else
      {
        v6 = v2[4];
      }

      if (v5 >= 0xE)
      {
        v7 = 14;
      }

      else
      {
        v7 = v5;
      }

      v8 = memcmp(__s1, v6, v7);
      v9 = v8 < 0;
      if (!v8)
      {
        v9 = v5 > 0xE;
      }

      if (!v9)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_20;
      }
    }

    v10 = memcmp(v6, __s1, v7);
    v11 = v5 < 0xE;
    if (v10)
    {
      v11 = v10 < 0;
    }

    if (!v11)
    {
      break;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  v17 = a2;
  v12 = *(v2 + 18);
  if (v12 == -1)
  {
    sub_19D37EF7C();
  }

  v18 = &v17;
  result = (off_1F10BD068[v12])(&v18, v2 + 7);
  if (v16 < 0)
  {
    v14 = result;
    operator delete(__s1[0]);
    return v14;
  }

  return result;
}

void sub_19D42A00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D42A028(void *a1, uint64_t a2, uint64_t a3, int32x2_t *__src)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BD088;
  v7 = __src[32];
  LODWORD(v8) = __src[17].i32[0];
  if (v8 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v8;
  }

  v9 = __src[33].i32[0];
  v10 = __src[33].i32[1];
  v18 = 1;
  v11 = vmax_s32(__src[16], 0x100000001);
  *&v12 = v11.u32[0];
  *(&v12 + 1) = v11.u32[1];
  v19 = v12;
  v20 = v8;
  sub_19D2AD9C0((a1 + 2), &v18, &v22);
  v13 = vmax_s32(v7, 0x100000001);
  v18 = 9;
  *&v12 = v13.u32[0];
  *(&v12 + 1) = v13.u32[1];
  v19 = v12;
  if (v9 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9;
  }

  v20 = v14;
  v21 = v10;
  sub_19D2AD9C0((a1 + 5), &v18, &v22);
  return a1;
}

void sub_19D42A1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D42A1D0(void *a1)
{
  v2 = *sub_19D387D50(a1, 9);
  v3 = sub_19D387A2C(a1, 1);
  memcpy(v2, *v3, 4 * *(a1[2] + 40) * *(a1[2] + 48) * *(a1[2] + 56) * *(a1[2] + 64) * *(a1[2] + 72));
  v4 = *(*a1 + 32);

  return v4(a1);
}

double sub_19D42A274(void *a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  v28 = *(v4 + 40);
  v29 = *(v4 + 56);
  v5 = *(v4 + 72);
  v6 = (*(*a1 + 224))(a1);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  (*(*a1 + 152))(v11, a1);
  if (HIDWORD(v12))
  {
    v7 = a1[6];
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_11:
    operator new();
  }

  v5 = (*(*a1 + 216))(a1, 1);
  v7 = a1[6];
  if (!v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
LABEL_7:
    while (1)
    {
      v8 = v7;
      v9 = *(v7 + 8);
      if (v9 <= a2)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_11;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  result = *&v28;
  *(v8 + 5) = v28;
  v8[7] = v29;
  v8[8] = v6;
  v8[9] = v5;
  return result;
}

void *sub_19D42A4A4(void *a1, uint64_t a2, uint64_t a3, int32x2_t *__src)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  sub_19D388468(a1, __p, a3, __src);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BD1F8;
  v7 = __src[32];
  LODWORD(v8) = __src[17].i32[0];
  if (v8 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v8;
  }

  v9 = __src[33].i32[0];
  v10 = __src[33].i32[1];
  v18 = 1;
  v11 = vmax_s32(__src[16], 0x100000001);
  *&v12 = v11.u32[0];
  *(&v12 + 1) = v11.u32[1];
  v19 = v12;
  v20 = v8;
  sub_19D2AD9C0((a1 + 2), &v18, &v22);
  v13 = vmax_s32(v7, 0x100000001);
  v18 = 9;
  *&v12 = v13.u32[0];
  *(&v12 + 1) = v13.u32[1];
  v19 = v12;
  if (v9 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9;
  }

  v20 = v14;
  v21 = v10;
  sub_19D2AD9C0((a1 + 5), &v18, &v22);
  return a1;
}

void sub_19D42A62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D42A64C(void *a1)
{
  v2 = *sub_19D387D50(a1, 9);
  v3 = sub_19D387A2C(a1, 1);
  memcpy(v2, *v3, *(a1[2] + 40) * *(a1[2] + 48) * *(a1[2] + 56) * *(a1[2] + 64) * *(a1[2] + 72));
  v4 = *(*a1 + 32);

  return v4(a1);
}

double sub_19D42A6F0(void *a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  v28 = *(v4 + 40);
  v29 = *(v4 + 56);
  v5 = *(v4 + 72);
  v6 = (*(*a1 + 224))(a1);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  (*(*a1 + 152))(v11, a1);
  if (HIDWORD(v12))
  {
    v7 = a1[6];
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_11:
    operator new();
  }

  v5 = (*(*a1 + 216))(a1, 1);
  v7 = a1[6];
  if (!v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
LABEL_7:
    while (1)
    {
      v8 = v7;
      v9 = *(v7 + 8);
      if (v9 <= a2)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_11;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  result = *&v28;
  *(v8 + 5) = v28;
  v8[7] = v29;
  v8[8] = v6;
  v8[9] = v5;
  return result;
}

void sub_19D42A924(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

void sub_19D42A950(uint64_t a1)
{
  v1 = sub_19D388648(a1);

  operator delete(v1);
}

void sub_19D42A978(uint64_t a1)
{
  *a1 = &unk_1F10BD398;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_19D42AA60(_Unwind_Exception *a1)
{
  sub_19D2A3E48(v2, *v4);
  sub_19D2A3E48(v1, *v3);
  _Unwind_Resume(a1);
}

void sub_19D42AA88(uint64_t a1)
{
  v1 = sub_19D2A3D18(a1);

  operator delete(v1);
}

uint64_t sub_19D42AAB0(uint64_t result, const void ***a2, const void ***a3)
{
  v4 = result;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      result = sub_19D2C3E1C((v4 + 8), (v4 + 16), v5);
      v5 += 3;
    }

    while (v5 != v6);
  }

  v8 = *a3;
  for (i = a3[1]; v8 != i; v8 += 3)
  {
    result = sub_19D2C3E1C((v4 + 32), (v4 + 40), v8);
  }

  return result;
}

uint64_t sub_19D42AB34(uint64_t a1, uint64_t a2)
{
  sub_19D42AC20(a1, a2, __p);
  v8 = __p;
  v8 = (sub_19D432C70(a1 + 144, __p)[7] + 24);
  v3 = sub_19D432E84(a1 + 96, v8);
  result = (*(*v3[7] + 72))(v3[7], 1);
  if (v7 < 0)
  {
    v5 = result;
    operator delete(__p[0]);
    return v5;
  }

  return result;
}

void sub_19D42AC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D42AC20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80000000) == 0)
  {
    __p = *a2;
    v7 = a1 + 8;
    if (*(a1 + 24) != 1 || v6 != 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    std::string::operator=(&__p, (*v7 + 32));
    goto LABEL_14;
  }

  sub_19D2AD6B8(&__p, *a2, *(a2 + 8));
  v7 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    if (*(a1 + 24) == 1 && *(a2 + 8) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (*(a1 + 24) == 1 && *(a2 + 23) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (sub_19D2AAD7C(v7, &__p))
  {
    *a3 = __p;
    return;
  }

  v10 = sub_19D398AE4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_19D455420(v10);
    *(a3 + 23) = 0;
    *a3 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(a3 + 23) = 0;
    *a3 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_19:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19D42AD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D42AD8C(uint64_t a1, uint64_t a2)
{
  v3 = __p;
  sub_19D2AAC0C(a1, a2, __p);
  v6 = *(a1 + 176);
  v4 = a1 + 176;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_41;
  }

  v7 = v4 - 8;
  if ((v31 & 0x80u) == 0)
  {
    v8 = v31;
  }

  else
  {
    v8 = __p[1];
  }

  if ((v31 & 0x80u) != 0)
  {
    v3 = __p[0];
  }

  v9 = v4;
  do
  {
    v10 = *(v5 + 55);
    if (v10 >= 0)
    {
      v11 = *(v5 + 55);
    }

    else
    {
      v11 = *(v5 + 40);
    }

    if (v10 >= 0)
    {
      v12 = (v5 + 32);
    }

    else
    {
      v12 = *(v5 + 32);
    }

    if (v8 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    v14 = memcmp(v12, v3, v13);
    v15 = v11 < v8;
    if (v14)
    {
      v15 = v14 < 0;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v9 = v5;
    }

    v5 = *(v5 + v17);
  }

  while (v5);
  if (v9 == v4)
  {
    goto LABEL_41;
  }

  v20 = *(v9 + 32);
  v19 = v9 + 32;
  v18 = v20;
  v21 = *(v19 + 23);
  v22 = v21 >= 0 ? *(v19 + 23) : *(v19 + 8);
  v23 = (v21 >= 0 ? v19 : v18);
  v24 = v22 >= v8 ? v8 : v22;
  v25 = memcmp(v3, v23, v24);
  v26 = v8 >= v22;
  if (v25)
  {
    v26 = v25 >= 0;
  }

  if (v26)
  {
    v32 = __p;
    v27 = sub_19D37DE20(v7, __p);
    v28 = (v27[14] * v27[16] * v27[18]);
    if (v31 < 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_41:
    v28 = 0;
    if (v31 < 0)
    {
LABEL_42:
      operator delete(__p[0]);
    }
  }

  return v28;
}

void sub_19D42AF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D42AF24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D42AC20(a1, a2, v11);
  v5 = v12;
  if ((v12 & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    if ((v5 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!v11[1])
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = v11;
  v6 = sub_19D432C70(a1 + 144, v11)[7];
  if (*(v6 + 47) < 0)
  {
    sub_19D2AD6B8(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v10 = *(v6 + 40);
  }

  v13 = v11;
  v7 = *(sub_19D432C70(a1 + 144, v11)[7] + 52);
  v13 = __p;
  v8 = sub_19D432E84(a1 + 96, __p);
  (*(*v8[7] + 160))(v8[7], v7);
  if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    if ((v12 & 0x80) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11[0]);
    return;
  }

  operator delete(__p[0]);
  if (v12 < 0)
  {
    goto LABEL_13;
  }
}

void sub_19D42B094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D42B0E0(uint64_t a1, uint64_t a2)
{
  sub_19D2AAC0C(a1, a2, __p);
  if (sub_19D2AAD7C(a1 + 192, __p))
  {
    v7 = __p;
    v3 = *(sub_19D4330C4(a1 + 192, __p)[7] + 8);
    if (v6 < 0)
    {
      goto LABEL_6;
    }

    return v3;
  }

  v3 = 0;
  if ((v6 & 0x80000000) == 0)
  {
    return v3;
  }

LABEL_6:
  operator delete(__p[0]);
  return v3;
}

void sub_19D42B184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D42B1A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D2AAC0C(a1, a2, __p);
  if (sub_19D2AAD7C(a1 + 168, __p))
  {
    v9 = __p;
    v5 = sub_19D37DE20(a1 + 168, __p);
    v6 = *(v5 + 9);
    *a3 = *(v5 + 7);
    *(a3 + 16) = v6;
    *(a3 + 32) = v5[11];
    if (v8 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    if (v8 < 0)
    {
LABEL_6:
      operator delete(__p[0]);
    }
  }
}

void sub_19D42B254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *sub_19D42B270(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (*(a1 + 56) >= 1)
  {
    v3 = 0;
    v4 = (a1 + 104);
    do
    {
      if (qword_1EB013258 != -1)
      {
        sub_19D4554DC();
      }

      Instance = _CFRuntimeCreateInstance();
      Instance[3] = 0;
      Instance[2] = Instance + 3;
      Instance[6] = 0;
      Instance[4] = 0;
      Instance[5] = Instance + 6;
      Instance[8] = 0;
      Instance[9] = 0;
      Instance[7] = 0;
      v6 = *(a1 + 96);
      if (v6 != v4)
      {
        do
        {
          (*(*v6[7] + 288))(v6[7], Instance, v3);
          v7 = v6[1];
          if (v7)
          {
            do
            {
              v8 = v7;
              v7 = *v7;
            }

            while (v7);
          }

          else
          {
            do
            {
              v8 = v6[2];
              v9 = *v8 == v6;
              v6 = v8;
            }

            while (!v9);
          }

          v6 = v8;
        }

        while (v8 != v4);
      }

      CFArrayAppendValue(Mutable, Instance);
      CFRelease(Instance);
      v3 = (v3 + 1);
    }

    while (v3 < *(a1 + 56));
  }

  return Mutable;
}

void *sub_19D42B3F4(void *a1, void *a2, uint64_t a3)
{
  if (a2[1] == 250)
  {
    v5 = 250;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[10];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = a1 + 10;
  do
  {
    if (v6[4] >= v5)
    {
      v7 = v6;
    }

    v6 = v6[v6[4] < v5];
  }

  while (v6);
  if (v7 == a1 + 10 || v5 < v7[4])
  {
LABEL_11:
    operator new();
  }

  switch(*a2)
  {
    case 0:
    case 2:
    case 0xDLL:
      v14 = a2[4];
      if (v14 == 2)
      {
        operator new();
      }

      if (!v14)
      {
        operator new();
      }

      return result;
    case 1:
      operator new();
    case 3:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x19:
    case 0x1CLL:
      operator new();
    case 4:
      v16 = a2[4];
      if (v16 == 2)
      {
        sub_19D42C65C();
      }

      if (!v16)
      {
        sub_19D42C5DC();
      }

      return result;
    case 5:
    case 6:
    case 9:
    case 0xALL:
      v13 = a2[4];
      if (v13 == 2)
      {
        operator new();
      }

      if (!v13)
      {
        operator new();
      }

      return result;
    case 0xBLL:
      operator new();
    case 0xCLL:
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
      v19 = a2[4];
      if (v19 == 2)
      {
        sub_19D42C95C();
      }

      if (!v19)
      {
        sub_19D42C8DC();
      }

      return result;
    case 0x17:
      v18 = a2[4];
      if (v18 == 2)
      {
        sub_19D42C75C();
      }

      if (!v18)
      {
        sub_19D42C6DC();
      }

      return result;
    case 0x18:
      v20 = a2[4];
      if (v20 == 2)
      {
        sub_19D42CA5C();
      }

      if (!v20)
      {
        sub_19D42C9DC();
      }

      return result;
    case 0x1ALL:
      v17 = a2[4];
      if (v17 == 2)
      {
        sub_19D42C85C();
      }

      if (!v17)
      {
        sub_19D42C7DC();
      }

      return result;
    case 0x1BLL:
      v15 = a2[4];
      if (v15 == 2)
      {
        sub_19D42C4DC();
      }

      if (!v15)
      {
        sub_19D42C3DC();
      }

      return result;
    default:
      v21 = sub_19D432E84((a1 + 12), a3);
      v22 = v21[7];
      v21[7] = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      break;
  }

  if (sub_19D432E84((a1 + 12), a3)[7])
  {
    v8 = sub_19D432E84((a1 + 12), a3);
    (*(*v8[7] + 136))(v8[7], v5);
    sub_19D432E84((a1 + 12), a3);
    operator new();
  }

  v9 = a1[16];
  if (v9 >= a1[17])
  {
    v11 = sub_19D2A48F8((a1 + 15), a3);
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      sub_19D2AD6B8(a1[16], *a3, *(a3 + 8));
    }

    else
    {
      v10 = *a3;
      *(v9 + 16) = *(a3 + 16);
      *v9 = v10;
    }

    v11 = v9 + 24;
    a1[16] = v9 + 24;
  }

  a1[16] = v11;
  return sub_19D2A4A4C((a1 + 28), a3);
}

void sub_19D42C14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_19D4554F0();
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D42C4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

void sub_19D42C5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

BOOL sub_19D42CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 248) = a5;
  sub_19D42AC20(a1, a3, __p);
  v6 = sub_19D2AAD7C(a1 + 144, __p);
  if (v6)
  {
    operator new();
  }

  sub_19D42CF38(__p, " has not been connected to any node in the network.");
  v7 = sub_19D398AE4();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    if ((SBYTE7(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v9[0]);
    if ((v12 & 0x80000000) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  sub_19D454F80();
  if (SBYTE7(v10) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v12 < 0)
  {
LABEL_6:
    operator delete(__p[0]);
  }

  return v6;
}

void sub_19D42CE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_19D37661C(&a19);
  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D42CF38(uint64_t a1, const char *a2)
{
  sub_19D2AE334(&v9);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  sub_19D2AE554(&v9, v5, v6);
  v7 = strlen(a2);
  sub_19D2AE554(&v9, a2, v7);
  std::stringbuf::str();
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x19EAFA410](&v13);
}

void sub_19D42D0B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D42D0CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D42D0E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v16 = a5;
  v17 = a3;
  if (sub_19D2AAD7C(a1 + 8, a2))
  {
    sub_19D42D278(a1, a2, a4, a5);
  }

  else if (sub_19D2AAD7C(a1 + 32, a4))
  {
    sub_19D42D3DC(a1, a2, a3, a4);
  }

  else
  {
    *&v20 = a2;
    v10 = sub_19D432C70(a1 + 144, a2);
    v11 = v10;
    v12 = v10[8];
    if (v12 >= v10[9])
    {
      v13 = sub_19D43348C(v10 + 7, a2, a4, &v17, &v16);
    }

    else
    {
      if (*(a2 + 23) < 0)
      {
        sub_19D2AD6B8(&v20, *a2, *(a2 + 8));
      }

      else
      {
        v20 = *a2;
        v21 = *(a2 + 16);
      }

      if (*(a4 + 23) < 0)
      {
        sub_19D2AD6B8(&v18, *a4, *(a4 + 8));
      }

      else
      {
        v18 = *a4;
        v19 = *(a4 + 16);
      }

      v14 = v20;
      *(v12 + 16) = v21;
      *v12 = v14;
      *(v12 + 24) = v18;
      *(v12 + 40) = v19;
      *(v12 + 48) = a3;
      *(v12 + 52) = a5;
      v13 = v12 + 56;
      v11[8] = v12 + 56;
    }

    v11[8] = v13;
  }

  return 1;
}

void sub_19D42D248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    *(v20 + 64) = v21;
    _Unwind_Resume(exception_object);
  }

  *(v20 + 64) = v21;
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D42D278(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v20 = a4;
  *&v23 = a2;
  v7 = sub_19D432C70(a1 + 144, a2);
  v8 = sub_19D37D0A8("None");
  v19 = v8;
  v9 = v7[8];
  if (v9 >= v7[9])
  {
    v10 = sub_19D43379C(v7 + 7, a2, a3, &v19, &v20);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v11 = *a2;
      v12 = *(a2 + 1);
      v13 = v8;
      sub_19D2AD6B8(&v23, v11, v12);
      v8 = v13;
    }

    else
    {
      v23 = *a2;
      v24 = *(a2 + 2);
    }

    if (*(a3 + 23) < 0)
    {
      v14 = *a3;
      v15 = *(a3 + 8);
      v16 = v8;
      sub_19D2AD6B8(&v21, v14, v15);
      v8 = v16;
    }

    else
    {
      v21 = *a3;
      v22 = *(a3 + 16);
    }

    v17 = v23;
    *(v9 + 16) = v24;
    *v9 = v17;
    *(v9 + 24) = v21;
    *(v9 + 40) = v22;
    *(v9 + 48) = v8;
    *(v9 + 52) = a4;
    v10 = v9 + 56;
    v7[8] = v9 + 56;
  }

  v7[8] = v10;
  return 1;
}

void sub_19D42D3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    *(v20 + 64) = v21;
    _Unwind_Resume(exception_object);
  }

  *(v20 + 64) = v21;
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D42D3DC(uint64_t a1, __int128 *a2, int a3, __int128 *a4)
{
  v5 = a3;
  v47 = a3;
  v8 = a1 + 104;
  v9 = *(a1 + 104);
  if (!v9)
  {
    goto LABEL_40;
  }

  v10 = *(a2 + 23);
  v11 = v10 >= 0 ? *(a2 + 23) : *(a2 + 1);
  v12 = v10 >= 0 ? a2 : *a2;
  v13 = a1 + 104;
  do
  {
    v14 = *(v9 + 55);
    if (v14 >= 0)
    {
      v15 = *(v9 + 55);
    }

    else
    {
      v15 = *(v9 + 40);
    }

    if (v14 >= 0)
    {
      v16 = (v9 + 32);
    }

    else
    {
      v16 = *(v9 + 32);
    }

    if (v11 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }

    v18 = memcmp(v16, v12, v17);
    v19 = v15 < v11;
    if (v18)
    {
      v19 = v18 < 0;
    }

    v20 = !v19;
    if (v19)
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v13 = v9;
    }

    v9 = *(v9 + v21);
  }

  while (v9);
  v5 = a3;
  if (v13 == v8)
  {
    goto LABEL_40;
  }

  v22 = *(v13 + 55);
  if (v22 >= 0)
  {
    v23 = *(v13 + 55);
  }

  else
  {
    v23 = *(v13 + 40);
  }

  if (v22 >= 0)
  {
    v24 = (v13 + 32);
  }

  else
  {
    v24 = *(v13 + 32);
  }

  if (v23 >= v11)
  {
    v25 = v11;
  }

  else
  {
    v25 = v23;
  }

  v26 = memcmp(v12, v24, v25);
  v27 = v11 < v23;
  if (v26)
  {
    v27 = v26 < 0;
  }

  if (v27)
  {
LABEL_40:
    v13 = v8;
  }

  (*(**(v13 + 56) + 168))(&v44);
  *&v48 = a4;
  v28 = sub_19D37DE20(a1 + 168, a4);
  v29 = v45;
  *(v28 + 7) = v44;
  *(v28 + 9) = v29;
  v28[11] = v46;
  *&v44 = a2;
  v30 = sub_19D432C70(a1 + 144, a2);
  v31 = sub_19D37D0A8("None");
  v43 = v31;
  v32 = v30[8];
  if (v32 >= v30[9])
  {
    v33 = sub_19D433A28(v30 + 7, a2, a4, &v47, &v43);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v34 = *a2;
      v35 = *(a2 + 1);
      v36 = v31;
      sub_19D2AD6B8(&v44, v34, v35);
      v31 = v36;
    }

    else
    {
      v44 = *a2;
      *&v45 = *(a2 + 2);
    }

    if (*(a4 + 23) < 0)
    {
      v37 = *a4;
      v38 = *(a4 + 1);
      v39 = v31;
      sub_19D2AD6B8(&v48, v37, v38);
      v31 = v39;
    }

    else
    {
      v48 = *a4;
      v49 = *(a4 + 2);
    }

    v40 = v44;
    *(v32 + 16) = v45;
    *v32 = v40;
    *(v32 + 24) = v48;
    *(v32 + 40) = v49;
    *(v32 + 48) = v5;
    *(v32 + 52) = v31;
    v33 = v32 + 56;
    v30[8] = v32 + 56;
  }

  v30[8] = v33;
  return 1;
}

void sub_19D42D670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    *(v16 + 64) = v17;
    _Unwind_Resume(exception_object);
  }

  *(v16 + 64) = v17;
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D42D6A0(void *a1)
{
  v1 = a1[15];
  v133 = a1[16];
  if (v1 != v133)
  {
    v2 = a1;
    v3 = (a1 + 12);
    v143 = (a1 + 13);
    v138 = (a1 + 22);
    v139 = a1 + 29;
    v141 = (a1 + 12);
    do
    {
      v134 = v1;
      if (*(v1 + 23) < 0)
      {
        sub_19D2AD6B8(&v152, *v1, *(v1 + 1));
      }

      else
      {
        v4 = *v1;
        v153 = *(v1 + 2);
        v152 = v4;
      }

      *&v147 = &v152;
      v5 = sub_19D432E84(v3, &v152);
      *&v147 = &v152;
      v137 = sub_19D432C70((v2 + 18), &v152);
      (*(*v5[7] + 24))(&v150);
      v6 = v150;
      v136 = v151;
      if (v150 != v151)
      {
        v135 = v5;
        do
        {
          (*(*v5[7] + 192))(v5[7], *v6);
          (*(*v5[7] + 168))(&v147);
          v142 = v6;
          v8 = v137[7];
          v7 = v137[8];
          v140 = v7;
          while (v8 != v7)
          {
            v9 = *(v8 + 48);
            if (v9 == *v142)
            {
              v10 = v2;
              if (*(v8 + 52))
              {
                v11 = *v143;
                if (!*v143)
                {
LABEL_39:
                  operator new();
                }

                v12 = *(v8 + 47);
                if (v12 >= 0)
                {
                  v13 = *(v8 + 47);
                }

                else
                {
                  v13 = *(v8 + 32);
                }

                if (v12 >= 0)
                {
                  v14 = (v8 + 24);
                }

                else
                {
                  v14 = *(v8 + 24);
                }

                while (1)
                {
                  while (1)
                  {
                    v15 = v11;
                    v18 = v11[4];
                    v16 = v11 + 4;
                    v17 = v18;
                    v19 = *(v16 + 23);
                    if (v19 >= 0)
                    {
                      v20 = *(v16 + 23);
                    }

                    else
                    {
                      v20 = v16[1];
                    }

                    if (v19 >= 0)
                    {
                      v21 = v16;
                    }

                    else
                    {
                      v21 = v17;
                    }

                    if (v20 >= v13)
                    {
                      v22 = v13;
                    }

                    else
                    {
                      v22 = v20;
                    }

                    v23 = memcmp(v14, v21, v22);
                    v24 = v13 < v20;
                    if (v23)
                    {
                      v24 = v23 < 0;
                    }

                    if (!v24)
                    {
                      break;
                    }

                    v11 = *v15;
                    if (!*v15)
                    {
                      goto LABEL_39;
                    }
                  }

                  v25 = memcmp(v21, v14, v22);
                  v26 = v20 < v13;
                  if (v25)
                  {
                    v26 = v25 < 0;
                  }

                  if (!v26)
                  {
                    break;
                  }

                  v11 = v15[1];
                  if (!v11)
                  {
                    goto LABEL_39;
                  }
                }

                v2 = v10;
                (*(*v15[7] + 160))(&v144);
                if (v144 != v147 || *(&v144 + 1) != *(&v147 + 1) || v145 != v148 || *(&v145 + 1) != *(&v148 + 1) || v146 != v149)
                {
                  v47 = *v143;
                  if (!*v143)
                  {
LABEL_102:
                    operator new();
                  }

                  v48 = *(v8 + 47);
                  if (v48 >= 0)
                  {
                    v49 = *(v8 + 47);
                  }

                  else
                  {
                    v49 = *(v8 + 32);
                  }

                  if (v48 >= 0)
                  {
                    v50 = (v8 + 24);
                  }

                  else
                  {
                    v50 = *(v8 + 24);
                  }

                  while (1)
                  {
                    while (1)
                    {
                      v51 = v47;
                      v54 = v47[4];
                      v52 = v47 + 4;
                      v53 = v54;
                      v55 = *(v52 + 23);
                      if (v55 >= 0)
                      {
                        v56 = *(v52 + 23);
                      }

                      else
                      {
                        v56 = v52[1];
                      }

                      if (v55 >= 0)
                      {
                        v57 = v52;
                      }

                      else
                      {
                        v57 = v53;
                      }

                      if (v56 >= v49)
                      {
                        v58 = v49;
                      }

                      else
                      {
                        v58 = v56;
                      }

                      v59 = memcmp(v50, v57, v58);
                      v60 = v49 < v56;
                      if (v59)
                      {
                        v60 = v59 < 0;
                      }

                      if (!v60)
                      {
                        break;
                      }

                      v47 = *v51;
                      if (!*v51)
                      {
                        goto LABEL_102;
                      }
                    }

                    v61 = memcmp(v57, v50, v58);
                    v62 = v56 < v49;
                    if (v61)
                    {
                      v62 = v61 < 0;
                    }

                    if (!v62)
                    {
                      break;
                    }

                    v47 = v51[1];
                    if (!v47)
                    {
                      goto LABEL_102;
                    }
                  }

                  if ((*(*v51[7] + 304))(v51[7], &v147, *(v8 + 52)))
                  {
                    v64 = *v139;
                    if (!*v139)
                    {
LABEL_130:
                      operator new();
                    }

                    v65 = *(v8 + 47);
                    if (v65 >= 0)
                    {
                      v66 = *(v8 + 47);
                    }

                    else
                    {
                      v66 = *(v8 + 32);
                    }

                    if (v65 >= 0)
                    {
                      v67 = (v8 + 24);
                    }

                    else
                    {
                      v67 = *(v8 + 24);
                    }

                    while (1)
                    {
                      while (1)
                      {
                        v68 = v64;
                        v71 = v64[4];
                        v69 = v64 + 4;
                        v70 = v71;
                        v72 = *(v69 + 23);
                        if (v72 >= 0)
                        {
                          v73 = *(v69 + 23);
                        }

                        else
                        {
                          v73 = v69[1];
                        }

                        if (v72 >= 0)
                        {
                          v74 = v69;
                        }

                        else
                        {
                          v74 = v70;
                        }

                        if (v73 >= v66)
                        {
                          v75 = v66;
                        }

                        else
                        {
                          v75 = v73;
                        }

                        v76 = memcmp(v67, v74, v75);
                        v77 = v66 < v73;
                        if (v76)
                        {
                          v77 = v76 < 0;
                        }

                        if (!v77)
                        {
                          break;
                        }

                        v64 = *v68;
                        if (!*v68)
                        {
                          goto LABEL_130;
                        }
                      }

                      v78 = memcmp(v74, v67, v75);
                      v79 = v73 < v66;
                      if (v78)
                      {
                        v79 = v78 < 0;
                      }

                      if (!v79)
                      {
                        break;
                      }

                      v64 = v68[1];
                      if (!v64)
                      {
                        goto LABEL_130;
                      }
                    }
                  }
                }

                v97 = *v143;
                if (!*v143)
                {
LABEL_181:
                  operator new();
                }

                v98 = *(v8 + 47);
                if (v98 >= 0)
                {
                  v99 = *(v8 + 47);
                }

                else
                {
                  v99 = *(v8 + 32);
                }

                if (v98 >= 0)
                {
                  v100 = (v8 + 24);
                }

                else
                {
                  v100 = *(v8 + 24);
                }

                while (1)
                {
                  while (1)
                  {
                    v101 = v97;
                    v104 = v97[4];
                    v102 = v97 + 4;
                    v103 = v104;
                    v105 = *(v102 + 23);
                    if (v105 >= 0)
                    {
                      v106 = *(v102 + 23);
                    }

                    else
                    {
                      v106 = v102[1];
                    }

                    if (v105 >= 0)
                    {
                      v107 = v102;
                    }

                    else
                    {
                      v107 = v103;
                    }

                    if (v106 >= v99)
                    {
                      v108 = v99;
                    }

                    else
                    {
                      v108 = v106;
                    }

                    v109 = memcmp(v100, v107, v108);
                    v110 = v99 < v106;
                    if (v109)
                    {
                      v110 = v109 < 0;
                    }

                    if (!v110)
                    {
                      break;
                    }

                    v97 = *v101;
                    if (!*v101)
                    {
                      goto LABEL_181;
                    }
                  }

                  v111 = memcmp(v107, v100, v108);
                  v112 = v106 < v99;
                  if (v111)
                  {
                    v112 = v111 < 0;
                  }

                  if (!v112)
                  {
                    break;
                  }

                  v97 = v101[1];
                  if (!v97)
                  {
                    goto LABEL_181;
                  }
                }

                v113 = v101[7];
                v144 = v147;
                v145 = v148;
                v146 = v149;
                (*(*v113 + 176))(v113, &v144, *(v8 + 52), *(v10 + 248));
              }

              else
              {
                v27 = *v143;
                if (!*v143)
                {
LABEL_64:
                  operator new();
                }

                v28 = *(v8 + 23);
                if (v28 >= 0)
                {
                  v29 = *(v8 + 23);
                }

                else
                {
                  v29 = *(v8 + 8);
                }

                if (v28 >= 0)
                {
                  v30 = v8;
                }

                else
                {
                  v30 = *v8;
                }

                while (1)
                {
                  while (1)
                  {
                    v31 = v27;
                    v34 = v27[4];
                    v32 = v27 + 4;
                    v33 = v34;
                    v35 = *(v32 + 23);
                    if (v35 >= 0)
                    {
                      v36 = *(v32 + 23);
                    }

                    else
                    {
                      v36 = v32[1];
                    }

                    if (v35 >= 0)
                    {
                      v37 = v32;
                    }

                    else
                    {
                      v37 = v33;
                    }

                    if (v36 >= v29)
                    {
                      v38 = v29;
                    }

                    else
                    {
                      v38 = v36;
                    }

                    v39 = memcmp(v30, v37, v38);
                    v40 = v29 < v36;
                    if (v39)
                    {
                      v40 = v39 < 0;
                    }

                    if (!v40)
                    {
                      break;
                    }

                    v27 = *v31;
                    if (!*v31)
                    {
                      goto LABEL_64;
                    }
                  }

                  v41 = memcmp(v37, v30, v38);
                  v42 = v36 < v29;
                  if (v41)
                  {
                    v42 = v41 < 0;
                  }

                  if (!v42)
                  {
                    break;
                  }

                  v27 = v31[1];
                  if (!v27)
                  {
                    goto LABEL_64;
                  }
                }

                v2 = v10;
                if (!(*(*v31[7] + 304))(v31[7], &v147, v9))
                {
                  goto LABEL_184;
                }

                sub_19D42F060("recompiling ", v8, "for ", (v8 + 48));
                v81 = *v139;
                if (!*v139)
                {
LABEL_156:
                  operator new();
                }

                v82 = *(v8 + 23);
                v83 = v82 >= 0 ? *(v8 + 23) : *(v8 + 8);
                v84 = v82 >= 0 ? v8 : *v8;
                while (1)
                {
                  while (1)
                  {
                    v85 = v81;
                    v88 = v81[4];
                    v86 = v81 + 4;
                    v87 = v88;
                    v89 = *(v86 + 23);
                    if (v89 >= 0)
                    {
                      v90 = *(v86 + 23);
                    }

                    else
                    {
                      v90 = v86[1];
                    }

                    if (v89 >= 0)
                    {
                      v91 = v86;
                    }

                    else
                    {
                      v91 = v87;
                    }

                    if (v90 >= v83)
                    {
                      v92 = v83;
                    }

                    else
                    {
                      v92 = v90;
                    }

                    v93 = memcmp(v84, v91, v92);
                    v94 = v83 < v90;
                    if (v93)
                    {
                      v94 = v93 < 0;
                    }

                    if (!v94)
                    {
                      break;
                    }

                    v81 = *v85;
                    if (!*v85)
                    {
                      goto LABEL_156;
                    }
                  }

                  v95 = memcmp(v91, v84, v92);
                  v96 = v90 < v83;
                  if (v95)
                  {
                    v96 = v95 < 0;
                  }

                  if (!v96)
                  {
                    break;
                  }

                  v81 = v85[1];
                  if (!v81)
                  {
                    goto LABEL_156;
                  }
                }

                if (SHIBYTE(v155) < 0)
                {
                  operator delete(v154);
                  v114 = (v8 + 24);
                  v115 = *v138;
                  if (!*v138)
                  {
LABEL_211:
                    operator new();
                  }
                }

                else
                {
LABEL_184:
                  v114 = (v8 + 24);
                  v115 = *v138;
                  if (!*v138)
                  {
                    goto LABEL_211;
                  }
                }

                v116 = *(v8 + 47);
                if (v116 >= 0)
                {
                  v117 = *(v8 + 47);
                }

                else
                {
                  v117 = *(v8 + 32);
                }

                if (v116 >= 0)
                {
                  v118 = v114;
                }

                else
                {
                  v118 = *(v8 + 24);
                }

                while (1)
                {
                  while (1)
                  {
                    v119 = v115;
                    v122 = v115[4];
                    v120 = v115 + 4;
                    v121 = v122;
                    v123 = *(v120 + 23);
                    if (v123 >= 0)
                    {
                      v124 = *(v120 + 23);
                    }

                    else
                    {
                      v124 = v120[1];
                    }

                    if (v123 >= 0)
                    {
                      v125 = v120;
                    }

                    else
                    {
                      v125 = v121;
                    }

                    if (v124 >= v117)
                    {
                      v126 = v117;
                    }

                    else
                    {
                      v126 = v124;
                    }

                    v127 = memcmp(v118, v125, v126);
                    v128 = v117 < v124;
                    if (v127)
                    {
                      v128 = v127 < 0;
                    }

                    if (!v128)
                    {
                      break;
                    }

                    v115 = *v119;
                    if (!*v119)
                    {
                      goto LABEL_211;
                    }
                  }

                  v129 = memcmp(v125, v118, v126);
                  v130 = v124 < v117;
                  if (v129)
                  {
                    v130 = v129 < 0;
                  }

                  if (!v130)
                  {
                    break;
                  }

                  v115 = v119[1];
                  if (!v115)
                  {
                    goto LABEL_211;
                  }
                }

                v131 = v148;
                *(v119 + 7) = v147;
                *(v119 + 9) = v131;
                v119[11] = v149;
              }
            }

            v8 += 56;
            v7 = v140;
          }

          v3 = v141;
          v6 = v142 + 1;
          v5 = v135;
        }

        while (v142 + 1 != v136);
        v6 = v150;
      }

      if (v6)
      {
        v151 = v6;
        operator delete(v6);
      }

      if (SHIBYTE(v153) < 0)
      {
        operator delete(v152);
      }

      v1 = (v134 + 24);
    }

    while ((v134 + 24) != v133);
  }

  return 1;
}

void sub_19D42EF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if ((*(v23 - 121) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v23 - 144));
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D42F060(const char *a1, uint64_t a2, const char *a3, unsigned int *a4)
{
  sub_19D2AE334(&v14);
  v8 = strlen(a1);
  sub_19D2AE554(&v14, a1, v8);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  sub_19D2AE554(&v14, v10, v11);
  v12 = strlen(a3);
  sub_19D2AE554(&v14, a3, v12);
  MEMORY[0x19EAFA2E0](&v14, *a4);
  std::stringbuf::str();
  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x19EAFA410](&v18);
}

void sub_19D42F214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D42F228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D42F23C(void *a1, uint64_t a2)
{
  sub_19D42D6A0(a1);
  v45 = a1;
  v5 = a1[12];
  v4 = (a1 + 12);
  v3 = v5;
  v46 = v4;
  v47 = (v4 + 8);
  if (v5 != (v4 + 8))
  {
    v6 = (v45 + 232);
    v7 = *(v45 + 232);
    if (v7)
    {
LABEL_3:
      v8 = *(v3 + 55);
      if (v8 >= 0)
      {
        v9 = *(v3 + 55);
      }

      else
      {
        v9 = v3[5];
      }

      if (v8 >= 0)
      {
        v10 = v3 + 4;
      }

      else
      {
        v10 = v3[4];
      }

      v11 = (v45 + 232);
      do
      {
        v12 = *(v7 + 55);
        if (v12 >= 0)
        {
          v13 = *(v7 + 55);
        }

        else
        {
          v13 = *(v7 + 40);
        }

        if (v12 >= 0)
        {
          v14 = (v7 + 32);
        }

        else
        {
          v14 = *(v7 + 32);
        }

        if (v9 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v9;
        }

        v16 = memcmp(v14, v10, v15);
        v17 = v13 < v9;
        if (v16)
        {
          v17 = v16 < 0;
        }

        v18 = !v17;
        if (v17)
        {
          v19 = 8;
        }

        else
        {
          v19 = 0;
        }

        if (v18)
        {
          v11 = v7;
        }

        v7 = *(v7 + v19);
      }

      while (v7);
      v4 = v46;
      if (v11 != v6)
      {
        v22 = v11[4];
        v21 = v11 + 4;
        v20 = v22;
        v23 = *(v21 + 23);
        if (v23 >= 0)
        {
          v24 = *(v21 + 23);
        }

        else
        {
          v24 = v21[1];
        }

        if (v23 >= 0)
        {
          v25 = v21;
        }

        else
        {
          v25 = v20;
        }

        if (v24 >= v9)
        {
          v26 = v9;
        }

        else
        {
          v26 = v24;
        }

        v27 = memcmp(v10, v25, v26);
        v28 = v9 >= v24;
        if (v27)
        {
          v28 = v27 >= 0;
        }

        if (v28)
        {
          v48 = (v3 + 4);
          v29 = sub_19D432E84(v46, v3 + 4);
          sub_19D4300D0(v45, v29[7]);
        }
      }

      while (1)
      {
        v30 = v3[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v3[2];
            v18 = *v31 == v3;
            v3 = v31;
          }

          while (!v18);
        }

        if (v31 == v47)
        {
          break;
        }

        v7 = *v6;
        v3 = v31;
        if (*v6)
        {
          goto LABEL_3;
        }
      }
    }
  }

  sub_19D2A3E48(v45 + 224, *(v45 + 232));
  *(v45 + 224) = v45 + 232;
  *(v45 + 232) = 0;
  v32 = *(v45 + 200);
  *(v45 + 240) = 0;
  sub_19D2A3ECC(v45 + 192, v32);
  *(v45 + 200) = 0;
  *(v45 + 208) = 0;
  *(v45 + 192) = v45 + 200;
  v33 = *(v45 + 120);
  v42 = *(v45 + 128);
  if (v33 != v42)
  {
    do
    {
      v44 = v33;
      if (*(v33 + 23) < 0)
      {
        sub_19D2AD6B8(&v52, *v33, *(v33 + 1));
      }

      else
      {
        v34 = *v33;
        v53 = *(v33 + 2);
        v52 = v34;
      }

      v35 = sub_19D432E84(v4, &v52);
      v48 = &v52;
      sub_19D432C70(v45 + 144, &v52);
      (*(*v35[7] + 24))(&v50);
      if (v50 != v51)
      {
        (*(*v35[7] + 168))(&v48);
        (*(*v35[7] + 88))(v35[7]);
        operator new();
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      v36 = v35[7];
      v37 = (*(*v36 + 224))(v36);
      (*(*v36 + 280))(v36, a2, v37);
      v38 = v35[7];
      v39 = (*(*v38 + 216))(v38, 1);
      v40 = (*(*v35[7] + 224))(v35[7]);
      (*(*v38 + 256))(v38, v39, v40);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52);
      }

      v33 = (v44 + 24);
    }

    while ((v44 + 24) != v42);
  }

  (*(**(*(v45 + 96) + 56) + 160))(&v48);
  *(v45 + 56) = v49;
  return 1;
}

void sub_19D42FFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if ((*(v25 - 121) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v25 - 144));
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D4300D0(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 128))(a2) != 2)
  {
    v4 = (*(*a2 + 128))(a2);
    v5 = *(a1 + 80);
    if (!v5)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v6 = v5;
        v7 = v5[4];
        if (v4 >= v7)
        {
          break;
        }

        v5 = *v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= v4)
      {
        break;
      }

      v5 = v6[1];
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    (*(*a2 + 248))(a2, v6[5]);
  }

  return 1;
}

uint64_t sub_19D43022C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 216);
  *(a1 + 216) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_19D430284(int a1, int a2, void *__p)
{
  if (__p)
  {
    operator delete[](__p);
  }
}

void sub_19D430294(uint64_t a1, int a2)
{
  v4 = (a1 + 200);
  sub_19D2A3ECC(a1 + 192, *(a1 + 200));
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  v5 = *(v4 - 13);
  v6 = v4 - 12;
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      v8 = (*(*v5[7] + 40))(v5[7]);
      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v7 += v8;
      v5 = v10;
    }

    while (v10 != v6);
    v12 = *(a1 + 96);
    v13 = 1000 * a2;
    if (v12 != v6 && v7 > v13)
    {
      do
      {
        v15 = (*(*v12[7] + 40))(v12[7]);
        (*(*v12[7] + 32))(v12[7]);
        v16 = v12[1];
        v17 = v12;
        if (v16)
        {
          do
          {
            v12 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v12 = v17[2];
            v11 = *v12 == v17;
            v17 = v12;
          }

          while (!v11);
        }

        if (v12 == v6)
        {
          break;
        }

        v7 -= v15;
      }

      while (v7 > v13);
    }
  }
}

void sub_19D43042C(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  v3 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 144);
  v31 = (a1 + 152);
  if (v4 != (a1 + 152))
  {
    v6 = 0;
    while (1)
    {
      v7 = v4[7];
      v8 = v4[8];
      if (v7 != v8)
      {
        break;
      }

LABEL_41:
      v28 = v4[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v4[2];
          v30 = *v29 == v4;
          v4 = v29;
        }

        while (!v30);
      }

      v4 = v29;
      if (v29 == v31)
      {
        return;
      }
    }

    v9 = v7 + 13;
    while (1)
    {
      v12 = *(v9 - 5);
      if (v12 >= 0)
      {
        v13 = *(v9 - 5);
      }

      else
      {
        v13 = *(v9 - 5);
      }

      v14 = *(a2 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a2 + 8);
      }

      if (v13 != v14)
      {
        goto LABEL_8;
      }

      v16 = v12 >= 0 ? v9 - 7 : *(v9 - 7);
      v17 = v15 >= 0 ? a2 : *a2;
      if (memcmp(v16, v17, v13))
      {
        goto LABEL_8;
      }

      if (*v9 <= 8)
      {
        v18 = *v9;
      }

      else
      {
        v18 = 0;
      }

      if (*(v9 - 29) < 0)
      {
        sub_19D2AD6B8(__p, *(v9 - 13), *(v9 - 11));
      }

      else
      {
        v19 = *(v9 - 13);
        v34 = *(v9 - 9);
        *__p = v19;
      }

      v35 = v18;
      v20 = v3[2];
      if (v6 < v20)
      {
        v10 = *__p;
        *(v6 + 16) = v34;
        *v6 = v10;
        __p[1] = 0;
        v34 = 0;
        __p[0] = 0;
        *(v6 + 24) = v35;
        v6 += 32;
      }

      else
      {
        v21 = *v3;
        v22 = v6 - *v3;
        v23 = (v22 >> 5) + 1;
        if (v23 >> 59)
        {
          sub_19D2AE2B4();
        }

        v24 = v20 - v21;
        if (v24 >> 4 > v23)
        {
          v23 = v24 >> 4;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFE0)
        {
          v25 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (!(v25 >> 59))
          {
            operator new();
          }

          sub_19D2AD81C();
        }

        v26 = 32 * (v22 >> 5);
        *v26 = *__p;
        *(v26 + 16) = v34;
        __p[1] = 0;
        v34 = 0;
        __p[0] = 0;
        *(v26 + 24) = v18;
        v6 = v26 + 32;
        memcpy(0, v21, v22);
        v3 = a3;
        *a3 = 0;
        a3[2] = 0;
        if (v21)
        {
          operator delete(v21);
          v27 = SHIBYTE(v34);
          a3[1] = v6;
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_8;
        }
      }

      v3[1] = v6;
LABEL_8:
      v11 = v9 + 1;
      v9 += 14;
      if (v11 == v8)
      {
        goto LABEL_41;
      }
    }
  }
}

void sub_19D4306B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_19D3A325C(a10);
  _Unwind_Resume(a1);
}

void sub_19D4306F0(uint64_t a1@<X0>, const void **a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 144);
  v28 = (a1 + 152);
  if (v4 != (a1 + 152))
  {
    v6 = 0;
    do
    {
      v7 = v4[7];
      v8 = v4[8];
      while (v7 != v8)
      {
        v9 = *(v7 + 23);
        if (v9 >= 0)
        {
          v10 = *(v7 + 23);
        }

        else
        {
          v10 = v7[1];
        }

        v11 = *(a2 + 23);
        v12 = v11;
        if (v11 < 0)
        {
          v11 = a2[1];
        }

        if (v10 == v11 && (v9 >= 0 ? (v13 = v7) : (v13 = *v7), v12 >= 0 ? (v14 = a2) : (v14 = *a2), !memcmp(v13, v14, v10)))
        {
          if (*(v7 + 47) < 0)
          {
            sub_19D2AD6B8(__p, v7[3], v7[4]);
          }

          else
          {
            *__p = *(v7 + 3);
            v30 = v7[5];
          }

          v15 = *(v7 + 12);
          v31 = v15;
          v16 = a3[2];
          if (v6 >= v16)
          {
            v18 = *a3;
            v19 = v6 - *a3;
            v20 = (v19 >> 5) + 1;
            if (v20 >> 59)
            {
              sub_19D2AE2B4();
            }

            v21 = v16 - v18;
            if (v21 >> 4 > v20)
            {
              v20 = v21 >> 4;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFE0)
            {
              v22 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              if (!(v22 >> 59))
              {
                operator new();
              }

              sub_19D2AD81C();
            }

            v23 = 32 * (v19 >> 5);
            *v23 = *__p;
            *(v23 + 16) = v30;
            __p[1] = 0;
            v30 = 0;
            __p[0] = 0;
            *(v23 + 24) = v15;
            v6 = v23 + 32;
            memcpy(0, v18, v19);
            *a3 = 0;
            a3[2] = 0;
            if (v18)
            {
              operator delete(v18);
              v24 = SHIBYTE(v30);
              a3[1] = v6;
              if (v24 < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_5;
            }

            a3[1] = v6;
            v7 += 7;
          }

          else
          {
            v17 = *__p;
            *(v6 + 16) = v30;
            *v6 = v17;
            __p[1] = 0;
            v30 = 0;
            __p[0] = 0;
            *(v6 + 24) = v31;
            v6 += 32;
            a3[1] = v6;
            v7 += 7;
          }
        }

        else
        {
LABEL_5:
          v7 += 7;
        }
      }

      v25 = v4[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v4[2];
          v27 = *v26 == v4;
          v4 = v26;
        }

        while (!v27);
      }

      v4 = v26;
    }

    while (v26 != v28);
  }
}

void sub_19D43095C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_19D3A325C(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19D430998(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a1 + 144);
  v4 = (a1 + 152);
  if (v3 != (a1 + 152))
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    do
    {
      v11 = v3[7];
      v12 = v3[8];
      while (v11 != v12)
      {
        v13 = *(v11 + 47);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(v11 + 32);
        }

        if (v13 == v6)
        {
          v15 = v14 >= 0 ? (v11 + 24) : *(v11 + 24);
          if (!memcmp(v15, v7, v6))
          {
            v16 = *(v11 + 23);
            v17 = v16;
            if ((v16 & 0x80u) != 0)
            {
              v16 = *(v11 + 8);
            }

            if (v16 == v9)
            {
              v18 = v17 >= 0 ? v11 : *v11;
              if (!memcmp(v18, v10, v9))
              {
                return *(v11 + 48);
              }
            }
          }
        }

        v11 += 56;
      }

      v19 = v3[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v3[2];
          v21 = *v20 == v3;
          v3 = v20;
        }

        while (!v21);
      }

      v3 = v20;
    }

    while (v20 != v4);
  }

  return 9;
}

uint64_t sub_19D430AF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 104;
  v4 = *(a1 + 104);
  if (!v4)
  {
    goto LABEL_43;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v7 = v5 >= 0 ? a2 : *a2;
  v8 = a1 + 104;
  do
  {
    v9 = *(v4 + 55);
    if (v9 >= 0)
    {
      v10 = *(v4 + 55);
    }

    else
    {
      v10 = *(v4 + 40);
    }

    if (v9 >= 0)
    {
      v11 = (v4 + 32);
    }

    else
    {
      v11 = *(v4 + 32);
    }

    if (v6 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    v13 = memcmp(v11, v7, v12);
    v14 = v10 < v6;
    if (v13)
    {
      v14 = v13 < 0;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v8 = v4;
    }

    v4 = *(v4 + v16);
  }

  while (v4);
  if (v8 == v3)
  {
    goto LABEL_43;
  }

  v17 = *(v8 + 55);
  if (v17 >= 0)
  {
    v18 = *(v8 + 55);
  }

  else
  {
    v18 = *(v8 + 40);
  }

  if (v17 >= 0)
  {
    v19 = (v8 + 32);
  }

  else
  {
    v19 = *(v8 + 32);
  }

  if (v18 >= v6)
  {
    v20 = v6;
  }

  else
  {
    v20 = v18;
  }

  v21 = memcmp(v7, v19, v20);
  v22 = v6 >= v18;
  if (v21)
  {
    v22 = v21 >= 0;
  }

  if (!v22)
  {
LABEL_43:
    sub_19D430CDC("Invalid node name: ", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    v26 = exception;
    if (v29 >= 0)
    {
      v27 = &v28;
    }

    else
    {
      v27 = v28;
    }

    std::runtime_error::runtime_error(exception, v27);
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v23 = *(**(v8 + 56) + 152);

  return v23();
}

void sub_19D430CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D430CDC(const char *a1, uint64_t a2)
{
  sub_19D2AE334(&v9);
  v4 = strlen(a1);
  sub_19D2AE554(&v9, a1, v4);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  sub_19D2AE554(&v9, v6, v7);
  std::stringbuf::str();
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x19EAFA410](&v13);
}

void sub_19D430E5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D430E70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D430E84(uint64_t a1, uint64_t *a2, const void ***a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6)
  {
    operator new();
  }

  v11 = *(a1 + 216);
  if (!v11 || (v12 = *v11, !__dynamic_cast(v11, &unk_1F10BA080, &unk_1F10BAF18, 0)))
  {
    operator new();
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  v15 = *a3;
  v13 = a3 + 1;
  v14 = v15;
  if (v15 != v13)
  {
    do
    {
      sub_19D2C50CC(&v21, v22, v14 + 4);
      v16 = v14[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v14[2];
          v18 = *v17 == v14;
          v14 = v17;
        }

        while (!v18);
      }

      v14 = v17;
    }

    while (v17 != v13);
    v12 = *v11;
  }

  v20 = (*(v12 + 24))(v11, a2, a1, &v21, a4, a5);
  sub_19D2A3E48(&v21, v22[0]);
  return v20;
}

void sub_19D431204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char *a14)
{
  sub_19D2A3E48(&a13, a14);
  (*(*v14 + 8))(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_19D4312DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    sub_19D2AD6B8(&__p, *a2, *(a2 + 8));
    if (*(a2 + 23) < 0)
    {
      if (*(a2 + 8))
      {
        goto LABEL_9;
      }
    }

    else if (*(a2 + 23))
    {
      goto LABEL_9;
    }
  }

  else
  {
    __p = *a2;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  v9 = a1[16];
  if (a1[15] != v9)
  {
    std::string::operator=(&__p, (v9 - 24));
  }

LABEL_9:
  v10 = a1[13];
  if (!v10)
  {
    goto LABEL_52;
  }

  v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
  v13 = a1 + 13;
  do
  {
    v14 = *(v10 + 55);
    if (v14 >= 0)
    {
      v15 = *(v10 + 55);
    }

    else
    {
      v15 = *(v10 + 40);
    }

    if (v14 >= 0)
    {
      v16 = (v10 + 32);
    }

    else
    {
      v16 = *(v10 + 32);
    }

    if (v11 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }

    v18 = memcmp(v16, v12, v17);
    v19 = v15 < v11;
    if (v18)
    {
      v19 = v18 < 0;
    }

    v20 = !v19;
    if (v19)
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v13 = v10;
    }

    v10 = *(v10 + v21);
  }

  while (v10);
  if (v13 == a1 + 13)
  {
    goto LABEL_52;
  }

  v22 = *(v13 + 55);
  if (v22 >= 0)
  {
    v23 = *(v13 + 55);
  }

  else
  {
    v23 = v13[5];
  }

  if (v22 >= 0)
  {
    v24 = v13 + 4;
  }

  else
  {
    v24 = v13[4];
  }

  if (v23 >= v11)
  {
    v25 = v11;
  }

  else
  {
    v25 = v23;
  }

  v26 = memcmp(v12, v24, v25);
  v27 = v11 < v23;
  if (v26)
  {
    v27 = v26 < 0;
  }

  if (v27 || (*(*v13[7] + 104))(v13[7]))
  {
LABEL_52:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid nodeName for partial output. ");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D2A4A4C((a1 + 28), &__p.__r_.__value_.__l.__data_);
  result = (*(*v13[7] + 296))(v13[7], a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v29 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v29;
  }

  return result;
}

void sub_19D43153C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D431570(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  std::operator+<char>();
  v6 = std::string::append(v49, "_");
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&v80[16] = *(&v6->__r_.__value_.__l + 2);
  *v80 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = a3[23];
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = a3[23];
  }

  else
  {
    v10 = *(a3 + 1);
  }

  v11 = std::string::append(v80, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if ((v80[23] & 0x80000000) != 0)
  {
    operator delete(*v80);
    __s2 = a2;
    if ((v49[23] & 0x80000000) == 0)
    {
LABEL_9:
      v13 = *(a1 + 120);
      v14 = *(a1 + 128);
      if (v13 != v14)
      {
        goto LABEL_10;
      }

      goto LABEL_45;
    }
  }

  else
  {
    __s2 = a2;
    if ((v49[23] & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  operator delete(*v49);
  v13 = *(a1 + 120);
  v14 = *(a1 + 128);
  if (v13 != v14)
  {
LABEL_10:
    v15 = __s2[23];
    if (v15 >= 0)
    {
      v16 = __s2[23];
    }

    else
    {
      v16 = *(__s2 + 1);
    }

    if (v15 >= 0)
    {
      v17 = __s2;
    }

    else
    {
      v17 = *__s2;
    }

    v18 = v13;
    do
    {
      v19 = *(v18 + 23);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v18 + 8);
      }

      if (v19 == v16)
      {
        v21 = v20 >= 0 ? v18 : *v18;
        if (!memcmp(v21, v17, v16))
        {
          goto LABEL_27;
        }
      }

      v18 += 24;
    }

    while (v18 != v14);
    v18 = v14;
LABEL_27:
    v22 = a3[23];
    if (v22 >= 0)
    {
      v23 = a3[23];
    }

    else
    {
      v23 = *(a3 + 1);
    }

    if (v22 < 0)
    {
      a3 = *a3;
    }

    do
    {
      v24 = *(v13 + 23);
      v25 = v24;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(v13 + 8);
      }

      if (v24 == v23)
      {
        v26 = v25 >= 0 ? v13 : *v13;
        if (!memcmp(v26, a3, v23))
        {
          goto LABEL_46;
        }
      }

      v13 += 24;
    }

    while (v13 != v14);
    v13 = v14;
LABEL_46:
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    memset(v80, 0, sizeof(v80));
    *v49 = v18;
    v27 = sub_19D432E84(a1 + 96, v18);
    (*(*v27[7] + 152))(v80);
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    memset(v49, 0, sizeof(v49));
    __src[0] = v13;
    v28 = sub_19D432E84(a1 + 96, v13);
    (*(*v28[7] + 152))(v49);
    bzero(__src, 0x2C0uLL);
    __src[1] = 2;
    memset(&__src[4], 0, 24);
    v37 = v91;
    v38 = v92;
    v39 = v93;
    v40 = v94;
    v33 = v87;
    v34 = v88;
    v35 = v89;
    v36 = v90;
    v48 = v71;
    v47 = v70;
    v46 = v69;
    v45 = v68;
    v44 = v67;
    v42 = v65;
    v43 = v66;
    v41 = v64;
    if (*v80 != 11)
    {
      v29 = v33;
      LODWORD(v33) = DWORD2(v33);
      DWORD2(v33) = v29;
    }

    if (*v49 != 11)
    {
      v30 = v41;
      LODWORD(v41) = DWORD2(v41);
      DWORD2(v41) = v30;
    }

    operator new();
  }

LABEL_45:
  v18 = v13;
  goto LABEL_46;
}

void sub_19D4328F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v27 - 105) < 0)
  {
    operator delete(*(v27 - 128));
  }

  *(v25 + 64) = v26;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v27 - 169) < 0)
  {
    operator delete(*(v27 - 192));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D432B48(uint64_t a1)
{
  result = *(a1 + 216);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_19D432B78(uint64_t a1)
{
  result = *(a1 + 216);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void sub_19D432BB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 24);
    if (v4 == v3)
    {
LABEL_11:
      *(a2 + 32) = v3;
      operator delete(v5);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 4));
        v6 = v4 - 7;
        if (*(v4 - 33) < 0)
        {
LABEL_9:
          operator delete(*v6);
        }
      }

      else
      {
        v6 = v4 - 7;
        if (*(v4 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v4 = v6;
      if (v6 == v3)
      {
        v5 = *(a2 + 24);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;

    operator delete(v7);
  }
}

void *sub_19D432C70(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
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
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D432E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D432E30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D432E30(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_19D432BB0(*(a1 + 8), v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_19D432E84(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
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
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D43302C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D433040(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D433040(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_19D4330C4(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
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
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D43326C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D433280(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D433280(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 55) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 55) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 32));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_19D433340()
{
  qword_1EB0131F8 = 0;
  unk_1EB013200 = "MontrealNeuralNetworkState";
  qword_1EB013208 = 0;
  unk_1EB013210 = 0;
  qword_1EB013218 = sub_19D2B0D5C;
  unk_1EB013220 = 0u;
  unk_1EB013230 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB0131F0 = result;
  return result;
}

void sub_19D43339C(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

void sub_19D4333C8(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

void sub_19D4333F4(uint64_t a1)
{
  v1 = sub_19D388648(a1);

  operator delete(v1);
}

void sub_19D43343C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F10BD448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_19D43348C(uint64_t *a1, __int128 *a2, __int128 *a3, int *a4, int *a5)
{
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v5 > 0x492492492492492)
  {
    sub_19D2AE2B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v10 = 0x492492492492492;
  }

  else
  {
    v10 = v5;
  }

  if (v10)
  {
    if (v10 <= 0x492492492492492)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8(&v25, *a2, *(a2 + 1));
  }

  else
  {
    v25 = *a2;
    v26 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_19D2AD6B8(&v23, *a3, *(a3 + 1));
  }

  else
  {
    v23 = *a3;
    v24 = *(a3 + 2);
  }

  v12 = *a4;
  v13 = *a5;
  *v11 = v25;
  *(v11 + 16) = v26;
  v14 = v23;
  *(v11 + 40) = v24;
  *(v11 + 48) = v12;
  *(v11 + 52) = v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = v11 + *a1 - v16;
  *(v11 + 24) = v14;
  if (v16 != v15)
  {
    v18 = v15;
    v19 = v17;
    do
    {
      v20 = *v18;
      *(v19 + 16) = *(v18 + 2);
      *v19 = v20;
      *(v18 + 1) = 0;
      *(v18 + 2) = 0;
      *v18 = 0;
      v21 = *(v18 + 24);
      *(v19 + 40) = *(v18 + 5);
      *(v19 + 24) = v21;
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 3) = 0;
      *(v19 + 48) = *(v18 + 6);
      v18 = (v18 + 56);
      v19 += 56;
    }

    while (v18 != v16);
    while (1)
    {
      if (*(v15 + 47) < 0)
      {
        operator delete(*(v15 + 24));
        if (*(v15 + 23) < 0)
        {
LABEL_25:
          operator delete(*v15);
        }
      }

      else if (*(v15 + 23) < 0)
      {
        goto LABEL_25;
      }

      v15 += 56;
      if (v15 == v16)
      {
        v15 = *a1;
        break;
      }
    }
  }

  *a1 = v17;
  a1[1] = v11 + 56;
  a1[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v11 + 56;
}

void sub_19D4336E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_19D433718(&a10);
    _Unwind_Resume(a1);
  }

  sub_19D433718(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19D433718(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      if ((*(i - 33) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 33) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_19D43379C(uint64_t *a1, __int128 *a2, __int128 *a3, int *a4, int *a5)
{
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v5 > 0x492492492492492)
  {
    sub_19D2AE2B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v10 = 0x492492492492492;
  }

  else
  {
    v10 = v5;
  }

  if (v10)
  {
    if (v10 <= 0x492492492492492)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8(&v25, *a2, *(a2 + 1));
  }

  else
  {
    v25 = *a2;
    v26 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_19D2AD6B8(&v23, *a3, *(a3 + 1));
  }

  else
  {
    v23 = *a3;
    v24 = *(a3 + 2);
  }

  v12 = *a4;
  v13 = *a5;
  *v11 = v25;
  *(v11 + 16) = v26;
  v14 = v23;
  *(v11 + 40) = v24;
  *(v11 + 48) = v12;
  *(v11 + 52) = v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = v11 + *a1 - v16;
  *(v11 + 24) = v14;
  if (v16 != v15)
  {
    v18 = v15;
    v19 = v17;
    do
    {
      v20 = *v18;
      *(v19 + 16) = *(v18 + 2);
      *v19 = v20;
      *(v18 + 1) = 0;
      *(v18 + 2) = 0;
      *v18 = 0;
      v21 = *(v18 + 24);
      *(v19 + 40) = *(v18 + 5);
      *(v19 + 24) = v21;
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 3) = 0;
      *(v19 + 48) = *(v18 + 6);
      v18 = (v18 + 56);
      v19 += 56;
    }

    while (v18 != v16);
    while (1)
    {
      if (*(v15 + 47) < 0)
      {
        operator delete(*(v15 + 24));
        if (*(v15 + 23) < 0)
        {
LABEL_25:
          operator delete(*v15);
        }
      }

      else if (*(v15 + 23) < 0)
      {
        goto LABEL_25;
      }

      v15 += 56;
      if (v15 == v16)
      {
        v15 = *a1;
        break;
      }
    }
  }

  *a1 = v17;
  a1[1] = v11 + 56;
  a1[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v11 + 56;
}

void sub_19D4339F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_19D433718(&a10);
    _Unwind_Resume(a1);
  }

  sub_19D433718(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19D433A28(uint64_t *a1, __int128 *a2, __int128 *a3, int *a4, int *a5)
{
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v5 > 0x492492492492492)
  {
    sub_19D2AE2B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v10 = 0x492492492492492;
  }

  else
  {
    v10 = v5;
  }

  if (v10)
  {
    if (v10 <= 0x492492492492492)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8(&v25, *a2, *(a2 + 1));
  }

  else
  {
    v25 = *a2;
    v26 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_19D2AD6B8(&v23, *a3, *(a3 + 1));
  }

  else
  {
    v23 = *a3;
    v24 = *(a3 + 2);
  }

  v12 = *a4;
  v13 = *a5;
  *v11 = v25;
  *(v11 + 16) = v26;
  v14 = v23;
  *(v11 + 40) = v24;
  *(v11 + 48) = v12;
  *(v11 + 52) = v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = v11 + *a1 - v16;
  *(v11 + 24) = v14;
  if (v16 != v15)
  {
    v18 = v15;
    v19 = v17;
    do
    {
      v20 = *v18;
      *(v19 + 16) = *(v18 + 2);
      *v19 = v20;
      *(v18 + 1) = 0;
      *(v18 + 2) = 0;
      *v18 = 0;
      v21 = *(v18 + 24);
      *(v19 + 40) = *(v18 + 5);
      *(v19 + 24) = v21;
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 3) = 0;
      *(v19 + 48) = *(v18 + 6);
      v18 = (v18 + 56);
      v19 += 56;
    }

    while (v18 != v16);
    while (1)
    {
      if (*(v15 + 47) < 0)
      {
        operator delete(*(v15 + 24));
        if (*(v15 + 23) < 0)
        {
LABEL_25:
          operator delete(*v15);
        }
      }

      else if (*(v15 + 23) < 0)
      {
        goto LABEL_25;
      }

      v15 += 56;
      if (v15 == v16)
      {
        v15 = *a1;
        break;
      }
    }
  }

  *a1 = v17;
  a1[1] = v11 + 56;
  a1[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v11 + 56;
}

void sub_19D433C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_19D433718(&a10);
    _Unwind_Resume(a1);
  }

  sub_19D433718(&a10);
  _Unwind_Resume(a1);
}

uint64_t **sub_19D433CB4(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = v14[1];
      v17 = *v16;
      v14[1] = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = v14[2];
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      v14[2] = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (!v20)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v20 + 24) == 1)
      {
LABEL_62:
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      else
      {
        v19 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      v21[2] = v14;
    }

    v22 = v14[2];
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    v14[2] = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
  }

  else
  {
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v26 = *v25;
    v7[1] = *v25;
    if (v26)
    {
      *(v26 + 16) = v7;
    }

    v27 = v7[2];
    v25[2] = v27;
    v27[*v27 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = v34[2];
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  v34[2] = v35;
  return result;
}

uint64_t sub_19D434068(uint64_t *a1, __int128 *a2, __int128 *a3, int *a4, int *a5)
{
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v5 > 0x492492492492492)
  {
    sub_19D2AE2B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v10 = 0x492492492492492;
  }

  else
  {
    v10 = v5;
  }

  if (v10)
  {
    if (v10 <= 0x492492492492492)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8(&v25, *a2, *(a2 + 1));
  }

  else
  {
    v25 = *a2;
    v26 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_19D2AD6B8(&v23, *a3, *(a3 + 1));
  }

  else
  {
    v23 = *a3;
    v24 = *(a3 + 2);
  }

  v12 = *a4;
  v13 = *a5;
  *v11 = v25;
  *(v11 + 16) = v26;
  v14 = v23;
  *(v11 + 40) = v24;
  *(v11 + 48) = v12;
  *(v11 + 52) = v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = v11 + *a1 - v16;
  *(v11 + 24) = v14;
  if (v16 != v15)
  {
    v18 = v15;
    v19 = v17;
    do
    {
      v20 = *v18;
      *(v19 + 16) = *(v18 + 2);
      *v19 = v20;
      *(v18 + 1) = 0;
      *(v18 + 2) = 0;
      *v18 = 0;
      v21 = *(v18 + 24);
      *(v19 + 40) = *(v18 + 5);
      *(v19 + 24) = v21;
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 3) = 0;
      *(v19 + 48) = *(v18 + 6);
      v18 = (v18 + 56);
      v19 += 56;
    }

    while (v18 != v16);
    while (1)
    {
      if (*(v15 + 47) < 0)
      {
        operator delete(*(v15 + 24));
        if (*(v15 + 23) < 0)
        {
LABEL_25:
          operator delete(*v15);
        }
      }

      else if (*(v15 + 23) < 0)
      {
        goto LABEL_25;
      }

      v15 += 56;
      if (v15 == v16)
      {
        v15 = *a1;
        break;
      }
    }
  }

  *a1 = v17;
  a1[1] = v11 + 56;
  a1[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v11 + 56;
}

void sub_19D4342BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_19D433718(&a10);
    _Unwind_Resume(a1);
  }

  sub_19D433718(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19D4342F4(uint64_t *a1, __int128 *a2, __int128 *a3, int *a4, int *a5)
{
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v5 > 0x492492492492492)
  {
    sub_19D2AE2B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v10 = 0x492492492492492;
  }

  else
  {
    v10 = v5;
  }

  if (v10)
  {
    if (v10 <= 0x492492492492492)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8(&v25, *a2, *(a2 + 1));
  }

  else
  {
    v25 = *a2;
    v26 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_19D2AD6B8(&v23, *a3, *(a3 + 1));
  }

  else
  {
    v23 = *a3;
    v24 = *(a3 + 2);
  }

  v12 = *a4;
  v13 = *a5;
  *v11 = v25;
  *(v11 + 16) = v26;
  v14 = v23;
  *(v11 + 40) = v24;
  *(v11 + 48) = v12;
  *(v11 + 52) = v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = v11 + *a1 - v16;
  *(v11 + 24) = v14;
  if (v16 != v15)
  {
    v18 = v15;
    v19 = v17;
    do
    {
      v20 = *v18;
      *(v19 + 16) = *(v18 + 2);
      *v19 = v20;
      *(v18 + 1) = 0;
      *(v18 + 2) = 0;
      *v18 = 0;
      v21 = *(v18 + 24);
      *(v19 + 40) = *(v18 + 5);
      *(v19 + 24) = v21;
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 3) = 0;
      *(v19 + 48) = *(v18 + 6);
      v18 = (v18 + 56);
      v19 += 56;
    }

    while (v18 != v16);
    while (1)
    {
      if (*(v15 + 47) < 0)
      {
        operator delete(*(v15 + 24));
        if (*(v15 + 23) < 0)
        {
LABEL_25:
          operator delete(*v15);
        }
      }

      else if (*(v15 + 23) < 0)
      {
        goto LABEL_25;
      }

      v15 += 56;
      if (v15 == v16)
      {
        v15 = *a1;
        break;
      }
    }
  }

  *a1 = v17;
  a1[1] = v11 + 56;
  a1[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v11 + 56;
}

void sub_19D434548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_19D433718(&a10);
    _Unwind_Resume(a1);
  }

  sub_19D433718(&a10);
  _Unwind_Resume(a1);
}

void sub_19D434EFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_19D4352AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *sub_19D435408(void *a1, uint64_t a2, uint64_t a3, int *__src)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BD498;
  v7 = __src[32];
  v8 = __src[36];
  v9 = __src[40];
  v10 = __src[64];
  v11 = __src[68];
  v15 = 1;
  v16 = vdupq_n_s64(1uLL);
  v18 = 0;
  v19 = 0;
  v17 = v7;
  v20 = 2;
  v21 = v16;
  v23 = 0;
  v24 = 0;
  v22 = v8;
  v25 = 3;
  v26 = v16;
  v28 = 0;
  v29 = 0;
  v27 = v9;
  sub_19D2AD9C0((a1 + 2), &v15, &v30);
  v15 = 9;
  v16 = vdupq_n_s64(1uLL);
  v18 = 0;
  v19 = 0;
  v17 = v10;
  v20 = 10;
  v21 = v16;
  v23 = 0;
  v24 = 0;
  v22 = v11;
  sub_19D2AD9C0((a1 + 5), &v15, &v25);
  return a1;
}

void sub_19D4355B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D4355CC(uint64_t result, int a2)
{
  v2 = *(result + 24);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = *(result + 24);
  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 < 3)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 == 2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v6 = v4[7];
  v7 = v4[9];
  while (1)
  {
    while (1)
    {
      v8 = v2;
      v9 = *(v2 + 32);
      if (v9 < 2)
      {
        break;
      }

      v2 = *v8;
      if (!*v8)
      {
        goto LABEL_13;
      }
    }

    if (v9 == 1)
    {
      break;
    }

    v2 = v8[1];
    if (!v2)
    {
LABEL_13:
      operator new();
    }
  }

  v10 = v8[8];
  v11 = v8[9];
  v12 = *(result + 48);
  if (!v12)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v13 = v12;
      v14 = *(v12 + 8);
      if (v14 <= a2)
      {
        break;
      }

      v12 = *v13;
      if (!*v13)
      {
        goto LABEL_20;
      }
    }

    if (v14 >= a2)
    {
      break;
    }

    v12 = v13[1];
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v15 = vdupq_n_s64(1uLL);
  if (a2 == 10)
  {
    v16 = v7;
  }

  else
  {
    v16 = v11;
  }

  *(v13 + 5) = v15;
  if (a2 == 10)
  {
    v17 = 1;
  }

  else
  {
    v17 = v6;
  }

  v13[7] = v17;
  v13[8] = v10;
  v13[9] = v16;
  return result;
}

BOOL sub_19D435830(uint64_t a1, void *a2, int a3)
{
  if ((a3 - 8) < 0xFFFFFFF9)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (v6 <= a3)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_9;
      }
    }

    if (v6 >= a3)
    {
      return v5[5] != *a2 || v5[6] != a2[1] || v5[7] != a2[2] || v5[8] != a2[3] || v5[9] != a2[4];
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_9;
    }
  }
}

void sub_19D43595C(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

void *sub_19D435984(void *a1, uint64_t a2, uint64_t a3, void *__src)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BD620;
  a1[127] = __src[56];
  LODWORD(v7) = *(__src + 32);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  v12 = 1;
  v13 = vdupq_n_s64(1uLL);
  v14 = v7;
  v15 = v13;
  sub_19D2AD9C0((a1 + 2), &v12, &v16);
  v8 = *(__src + 64);
  v12 = 9;
  v13 = vdupq_n_s64(1uLL);
  v15 = 0uLL;
  v14 = v8;
  sub_19D2AD9C0((a1 + 5), &v12, &v16);
  return a1;
}

void sub_19D435AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D435B10(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      operator delete(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 48);

  return v10(a2, a1);
}

int64x2_t sub_19D435BF4(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 224))(a1);
  v5 = (*(*a1 + 216))(a1, 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 568);
  if (!v6)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v6;
      v9 = *(v6 + 8);
      if (v9 <= a2)
      {
        break;
      }

      v6 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v6 = v8[1];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  result = vdupq_n_s64(1uLL);
  *(v8 + 5) = result;
  v8[7] = v7;
  v8[8] = v4;
  v8[9] = v5;
  return result;
}

void *sub_19D435D50(void *a1, uint64_t a2, uint64_t a3, void *__src)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  sub_19D388468(a1, __p, a3, __src);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BD790;
  a1[127] = __src[56];
  LODWORD(v7) = *(__src + 32);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  v12 = 1;
  v13 = vdupq_n_s64(1uLL);
  v14 = v7;
  v15 = v13;
  sub_19D2AD9C0((a1 + 2), &v12, &v16);
  v8 = *(__src + 64);
  v12 = 9;
  v13 = vdupq_n_s64(1uLL);
  v15 = 0uLL;
  v14 = v8;
  sub_19D2AD9C0((a1 + 5), &v12, &v16);
  return a1;
}

void sub_19D435EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D435EDC(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      operator delete(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 152);

  return v10(a2, a1);
}

int64x2_t sub_19D435FC0(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 224))(a1);
  v5 = (*(*a1 + 216))(a1, 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 568);
  if (!v6)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v6;
      v9 = *(v6 + 8);
      if (v9 <= a2)
      {
        break;
      }

      v6 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v6 = v8[1];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  result = vdupq_n_s64(1uLL);
  *(v8 + 5) = result;
  v8[7] = v7;
  v8[8] = v4;
  v8[9] = v5;
  return result;
}

void sub_19D43611C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = a1;
    Count = objc_msgSend_readCount(v8, v2, v3, v4);
    objc_msgSend_setReadCount_(v8, v6, Count + 1, v7);
  }
}

void sub_19D4361B0(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = a1;
    Count = objc_msgSend_readCount(v8, v2, v3, v4);
    objc_msgSend_setReadCount_(v8, v6, Count - 1, v7);
  }
}

uint64_t sub_19D436244(void *a1)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {

    return objc_msgSend_setReadCount_(a1, v3, 0, v4);
  }

  return result;
}

void sub_19D4362A4(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v9, v13, 16);
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v1);
        }

        objc_msgSend_incrementReadCount(*(*(&v9 + 1) + 8 * v8++), v3, v4, v5, v9);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v3, &v9, v13, 16);
    }

    while (v6);
  }
}

void *sub_19D4363B8(uint64_t a1)
{
  v1 = 4 * a1;
  v2 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  bzero(v2, v1);
  return v2;
}

void *sub_19D436400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_19D435408(a1, a2, a3, a4);
  *result = &unk_1F10BD930;
  result[128] = *(a4 + 576);
  *(result + 264) = *(a4 + 320);
  v6 = *(a4 + 448);
  if ((*(a4 + 120) & 0x40) != 0)
  {
    result[127] = v6;
    v7 = *(a4 + 456);
  }

  else
  {
    result[129] = v6;
    result[130] = *(a4 + 456);
    v7 = *(a4 + 464);
  }

  result[131] = v7;
  return result;
}

uint64_t sub_19D436490(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 96);

  return v10(a2, a1);
}

uint64_t sub_19D436594(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 216))(a1, 2);
  sub_19D387870(a1);
  (*(*a1 + 312))(a1, a3, v5);
  v6 = a1[21] - a1[20];
  if ((v6 >> 3) >= 1)
  {
    v7 = 0;
    v8 = (v6 >> 3) & 0x7FFFFFFF;
    do
    {
      v9 = *(a1[20] + 8 * v7);
      (*(*v9 + 16))(v9, a3);
      ++v7;
    }

    while (v8 != v7);
  }

  sub_19D3878CC(a1, a3);
  v10 = *(*a1 + 32);

  return v10(a1);
}

void sub_19D4366D8(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

void sub_19D436700(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D436AA8(a2, &v15);
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  if (v16 != v15)
  {
    if (((v16 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = v17;
  memset(v6, 0, sizeof(v6));
  if (v19 != __p)
  {
    if (((v19 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = v20;
  sub_19D436BEC(v10, v8, v6, &v12);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = v12;
  if (v13 != v12)
  {
    if (((v13 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a3 + 24) = v14;
  if (v5)
  {
    operator delete(v5);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_19D436A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v28)
  {
    operator delete(v28);
    if (!v27)
    {
LABEL_3:
      if (!v26)
      {
LABEL_8:
        sub_19D36CF9C(&a25);
        if (v25)
        {
          operator delete(v25);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v26);
      goto LABEL_8;
    }
  }

  else if (!v27)
  {
    goto LABEL_3;
  }

  operator delete(v27);
  if (!v26)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D436AA8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = *(a1 + 8);
  if (v3 != *a1)
  {
    if (((v3 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v13 = *(a1 + 24);
  v7 = 0;
  v8 = 0;
  __p = 0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = *(a1 + 56);
  sub_19D373204(a2, &v10, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_19D436BD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D436BEC(uint64_t a1@<X0>, const double **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 8);
  if (v7 != *a3)
  {
    if (((v7 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = *(a3 + 24);
  vDSP_vsubD(*a2, 1, 0, 1, 0, 1, v8);
  __B[0] = 10.0;
  vDSP_vsdivD(0, 1, __B, 0, 1, v8);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if ((v9 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  bzero(__B, 0x9F0uLL);
  sub_19D370B80(__B);
  v57 = xmmword_19D475ED0;
  v59 = 0;
  v52 = *(a1 + 24);
  if (v52 >= 1)
  {
    v10 = 0;
    do
    {
      v53 = v10;
      v11 = *(8 * v10);
      *&v57 = 0;
      *(&v57 + 1) = v11;
      v59 = 0;
      v60 = xmmword_19D478CB0;
      do
      {
        v12 = v60;
        v13 = (v55 + 1) % 0x270;
        v14 = *(__B + v13);
        v15 = v14 & 0x7FFFFFFE | *(__B + v55) & 0x80000000;
        if (v14)
        {
          v16 = -1727483681;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16 ^ *(__B + (v55 + 397) % 0x270) ^ (v15 >> 1);
        *(__B + v55) = v17;
        if (v13 == 623)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13 + 1;
        }

        v19 = *(__B + v18);
        v20 = v19 & 0x7FFFFFFE | *(__B + v13) & 0x80000000;
        v21 = 397;
        if (v13 >= 0xE3)
        {
          v21 = -227;
        }

        v22 = *(__B + v21 + v13);
        if (v19)
        {
          v23 = -1727483681;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 ^ v22 ^ (v20 >> 1);
        *(__B + v13) = v24;
        v55 = v18;
        v25 = sub_19D437B04(&v60, __B);
        v26 = ((v24 ^ (v24 >> 11)) << 7) & 0x9D2C5680 ^ v24 ^ (v24 >> 11);
        v27 = ((v26 << 15) & 0xEFC60000 ^ v26 ^ (((v26 << 15) & 0xEFC60000 ^ v26) >> 18));
        v28 = ((v17 ^ (v17 >> 11)) << 7) & 0x9D2C5680 ^ v17 ^ (v17 >> 11);
        v29 = *&v12 + (*(&v12 + 1) - *&v12) * 5.42101086e-20 * (((v28 << 15) & 0xEFC60000 ^ v28 ^ (((v28 << 15) & 0xEFC60000 ^ v28) >> 18)) + v27 * 4294967300.0);
        v30 = v25 * v25 + v29 * v29;
      }

      while (v30 > 1.0 || v30 == 0.0);
      v31 = v25;
      v32 = sqrt(log(v25 * v25 + v29 * v29) * -2.0 / v30);
      v58 = v32 * v31;
      v59 = 1;
      *(8 * v53) = *&v57 + v32 * (v29 * *(&v57 + 1));
      v10 = v53 + 1;
    }

    while (v53 + 1 != v52);
  }

  v33 = *(a1 + 8);
  if (v33 != *a1)
  {
    if (((v33 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v34 = *(a1 + 24);
  vDSP_vaddD(0, 1, 0, 1, 0, 1, v34);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v34)
  {
    if ((v34 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a4 + 24) = 0;
  v35 = *(a1 + 24);
  if (v35 >= 1)
  {
    v36 = *a4;
    v37 = *a2;
    v38 = *a3;
    if (v35 <= 5)
    {
      v39 = 0;
LABEL_36:
      v40 = v35 - v39;
      v41 = v39 << 32;
      do
      {
        *(v36 + (v41 >> 29)) = fmax(fmin(*(v38->f64 + (v41 >> 29)), *(v36 + (v41 >> 29))), *(v37 + (v41 >> 29)));
        v41 += 0x100000000;
        --v40;
      }

      while (v40);
      goto LABEL_38;
    }

    v39 = 0;
    v42 = v36 + 8 * v35;
    v44 = v36 < &v38->f64[v35] && v38 < v42;
    if (v37 < v42 && v36 < &v37[v35])
    {
      goto LABEL_36;
    }

    if (v44)
    {
      goto LABEL_36;
    }

    v39 = v35 & 0x7FFFFFFC;
    v46 = v38 + 1;
    v47 = (v37 + 2);
    v48 = (v36 + 16);
    v49 = v39;
    do
    {
      v50 = vmaxnmq_f64(vminnmq_f64(*v46, *v48), *v47);
      v48[-1] = vmaxnmq_f64(vminnmq_f64(v46[-1], v48[-1]), v47[-1]);
      *v48 = v50;
      v46 += 2;
      v47 += 2;
      v48 += 2;
      v49 -= 4;
    }

    while (v49);
    if (v39 != v35)
    {
      goto LABEL_36;
    }
  }

LABEL_38:
  std::random_device::~random_device(&v56);
}