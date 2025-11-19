uint64_t sub_19D3CA1C0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = sub_19D437D98(a2, a3);
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0x7FF0000000000000;
  *(a1 + 96) = -5;
  if (!v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v7, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  sub_19D438874(v4, sub_19D3CA2A4, sub_19D3CA2F0);
  return a1;
}

void sub_19D3CA278(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
  }

  sub_19D455340((v1 + 32), (v1 + 8), v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3CA2A4(void *a1)
{
  if (a1)
  {
    if (a1[3])
    {
      v1 = a1[5];
      if (v1)
      {
        v2 = a1;
        v1(a1[3]);
        a1 = v2;
      }
    }

    operator delete(a1);
  }

  return 0;
}

uint64_t sub_19D3CA2F0(uint64_t result)
{
  if (result)
  {
    if (!*(result + 24) || (v1 = *(result + 48)) == 0 || (result = v1(*(result + 24))) != 0)
    {
      operator new();
    }
  }

  return result;
}

uint64_t *sub_19D3CA36C(uint64_t *result, int a2)
{
  if (a2 <= -4)
  {
    if (a2 == -5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_19D3CA618(exception);
      __cxa_throw(exception, &unk_1F10BB418, std::runtime_error::~runtime_error);
    }

    if (a2 == -4)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      sub_19D3CA5D8(v11);
      __cxa_throw(v11, &unk_1F10BB400, std::runtime_error::~runtime_error);
    }
  }

  else
  {
    switch(a2)
    {
      case -3:
        v5 = __cxa_allocate_exception(8uLL);
        v6 = std::bad_alloc::bad_alloc(v5);
        __cxa_throw(v6, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
      case -2:
        v8 = result;
        v9 = __cxa_allocate_exception(0x10uLL);
        if (sub_19D3CA558(v8))
        {
          v10 = sub_19D3CA558(v8);
        }

        else
        {
          v10 = "nlopt invalid argument";
        }

        sub_19D3C1834(v9, v10);
        __cxa_throw(v9, off_1E7626760, MEMORY[0x1E69E5298]);
      case -1:
        v2 = result;
        v3 = __cxa_allocate_exception(0x10uLL);
        if (sub_19D3CA558(v2))
        {
          v4 = sub_19D3CA558(v2);
        }

        else
        {
          v4 = "nlopt failure";
        }

        std::runtime_error::runtime_error(v3, v4);
        __cxa_throw(v3, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

uint64_t sub_19D3CA558(uint64_t *a1)
{
  v1 = *a1;
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "uninitialized nlopt::opt");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_19D438880(v1);
}

std::runtime_error *sub_19D3CA5D8(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "nlopt roundoff-limited");
  result->__vftable = &unk_1F10BB440;
  return result;
}

std::runtime_error *sub_19D3CA618(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "nlopt forced stop");
  result->__vftable = &unk_1F10BB468;
  return result;
}

void sub_19D3CA658(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

void sub_19D3CA680(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

void sub_19D3CA6A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v4 = 0;
  v5 = 0;
  __p = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D3CA918((a1 + 8), &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_19D3CA7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3CA7E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v4 = 0;
  v5 = 0;
  __p = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D3CA9D8((a1 + 8), &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_19D3CA8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_19D3CA918(uint64_t *a1, const void **a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = sub_19D43886C(v4);
    v6 = *a2;
    v7 = a2[1];
    if (v5 != (v7 - *a2) >> 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_19D3C1834(exception, "dimension mismatch");
      __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
    }

    v4 = *a1;
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
  }

  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_19D43855C(v4, v8);

  return sub_19D3CA36C(a1, v9);
}

uint64_t *sub_19D3CA9D8(uint64_t *a1, const void **a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = sub_19D43886C(v4);
    v6 = *a2;
    v7 = a2[1];
    if (v5 != (v7 - *a2) >> 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_19D3C1834(exception, "dimension mismatch");
      __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
    }

    v4 = *a1;
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
  }

  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_19D438660(v4, v8);

  return sub_19D3CA36C(a1, v9);
}

uint64_t sub_19D3CAA98(uint64_t a1)
{
  *a1 = &unk_1F10BB3A0;
  std::random_device::~random_device((a1 + 10280));
  std::random_device::~random_device((a1 + 7736));
  std::random_device::~random_device((a1 + 5216));
  std::random_device::~random_device((a1 + 2688));
  *(a1 + 64) = &unk_1F10BB3E8;
  sub_19D437C34(*(a1 + 72));
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  *a1 = &unk_1F10BB370;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 40);
    }

    *(a1 + 48) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_19D3CAC14(uint64_t a1, __int128 **a2)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_19D3C77B4(a2, &__p);
  sub_19D3CB5B8(a1 + 64, v4, &__p);
}

void sub_19D3CB004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_19D3715C0(&a17);
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_19D3CB0B0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __p = 0;
  v9 = 0;
  v3 = *a1;
  v4 = a1[1];
  v10 = 0;
  p_p = &__p;
  v12 = 0;
  if (v4 != v3)
  {
    if ((0x4EC4EC4EC4EC4EC5 * ((v4 - v3) >> 3)) < 0x276276276276277)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D3BA6D0(a2, 0);
  *(a2 + 96) = MEMORY[0x60];
  v5 = __p;
  if (__p)
  {
    v6 = v9;
    v7 = __p;
    if (v9 != __p)
    {
      do
      {
        v6 = sub_19D3715C0(v6 - 104);
      }

      while (v6 != v5);
      v7 = __p;
    }

    v9 = v5;
    operator delete(v7);
  }
}

void sub_19D3CB20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19D3C71A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3CB220(uint64_t *a1, uint64_t *a2)
{
  if (a1[8] != a2[8])
  {
    return 1;
  }

  v4 = a1[6];
  v5 = a1 + 7;
  if (v4 == a1 + 7)
  {
LABEL_30:
    if (a1[11] == a2[11])
    {
      v19 = a1[9];
      if (v19 == a1 + 10)
      {
LABEL_58:
        v32 = *a1;
        v31 = a1[1];
        v33 = *a2;
        if (v31 - *a1 == a2[1] - *a2)
        {
          if (v32 == v31)
          {
LABEL_76:
            v44 = a1 + 3;
            v42 = a1[3];
            v43 = v44[1];
            v46 = a2 + 3;
            v45 = a2[3];
            if (v43 - v42 == v46[1] - v45)
            {
              if (v42 == v43)
              {
                return 0;
              }

              while (1)
              {
                v47 = *(v42 + 23);
                if (v47 >= 0)
                {
                  v48 = *(v42 + 23);
                }

                else
                {
                  v48 = *(v42 + 8);
                }

                v49 = *(v45 + 23);
                v50 = v49;
                if ((v49 & 0x80u) != 0)
                {
                  v49 = *(v45 + 8);
                }

                if (v48 != v49)
                {
                  break;
                }

                v51 = v47 >= 0 ? v42 : *v42;
                v52 = v50 >= 0 ? v45 : *v45;
                if (memcmp(v51, v52, v48))
                {
                  break;
                }

                v53 = *(v42 + 48);
                if (v53 != *(v45 + 48))
                {
                  break;
                }

                if (v53)
                {
                  v54 = *(v42 + 24);
                  v55 = *(v45 + 24);
                  do
                  {
                    v57 = *v54++;
                    v56 = v57;
                    v58 = *v55++;
                    if (v56 != v58)
                    {
                      return 1;
                    }
                  }

                  while (--v53);
                }

                result = 0;
                v42 += 56;
                v45 += 56;
                if (v42 == v43)
                {
                  return result;
                }
              }
            }
          }

          else
          {
            v34 = 0;
            while (1)
            {
              v35 = v33 + v34;
              v36 = *(v32 + v34 + 23);
              if (v36 >= 0)
              {
                v37 = *(v32 + v34 + 23);
              }

              else
              {
                v37 = *(v32 + v34 + 8);
              }

              v38 = *(v35 + 23);
              v39 = v38;
              if ((v38 & 0x80u) != 0)
              {
                v38 = *(v35 + 8);
              }

              if (v37 != v38)
              {
                break;
              }

              v40 = v36 >= 0 ? (v32 + v34) : *(v32 + v34);
              v41 = v39 >= 0 ? (v33 + v34) : *v35;
              if (memcmp(v40, v41, v37) || !sub_19D3CC234(v32 + v34 + 24, v33 + v34 + 24, 0.000001))
              {
                break;
              }

              v34 += 56;
              if (v32 + v34 == v31)
              {
                goto LABEL_76;
              }
            }
          }
        }
      }

      else
      {
        v20 = a2[9];
        while (1)
        {
          v21 = *(v19 + 55);
          if (v21 >= 0)
          {
            v22 = *(v19 + 55);
          }

          else
          {
            v22 = v19[5];
          }

          v23 = *(v20 + 55);
          v24 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v23 = v20[5];
          }

          if (v22 != v23)
          {
            break;
          }

          v25 = v21 >= 0 ? v19 + 4 : v19[4];
          v26 = v24 >= 0 ? v20 + 4 : v20[4];
          if (memcmp(v25, v26, v22))
          {
            break;
          }

          v27 = v19[1];
          v28 = v19;
          if (v27)
          {
            do
            {
              v19 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v19 = v28[2];
              v15 = *v19 == v28;
              v28 = v19;
            }

            while (!v15);
          }

          v29 = v20[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v15 = *v30 == v20;
              v20 = v30;
            }

            while (!v15);
          }

          v20 = v30;
          if (v19 == a1 + 10)
          {
            goto LABEL_58;
          }
        }
      }
    }
  }

  else
  {
    v6 = a2[6];
    while (1)
    {
      v7 = *(v4 + 55);
      if (v7 >= 0)
      {
        v8 = *(v4 + 55);
      }

      else
      {
        v8 = v4[5];
      }

      v9 = *(v6 + 55);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v6[5];
      }

      if (v8 != v9)
      {
        break;
      }

      v11 = v7 >= 0 ? v4 + 4 : v4[4];
      v12 = v10 >= 0 ? v6 + 4 : v6[4];
      if (memcmp(v11, v12, v8))
      {
        break;
      }

      v13 = v4[1];
      v14 = v4;
      if (v13)
      {
        do
        {
          v4 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v4 = v14[2];
          v15 = *v4 == v14;
          v14 = v4;
        }

        while (!v15);
      }

      v16 = v6[1];
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
          v17 = v6[2];
          v15 = *v17 == v6;
          v6 = v17;
        }

        while (!v15);
      }

      v6 = v17;
      if (v4 == v5)
      {
        goto LABEL_30;
      }
    }
  }

  return 1;
}

void sub_19D3CB5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

void sub_19D3CB994(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = v3 - v4 - 8;
    if (v7 < 0x18 || -v4 < 0x20)
    {
      v9 = v4;
    }

    else
    {
      v8 = (v7 >> 3) + 1;
      v6 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      v9 = (v4 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
      v10 = (v4 + 16);
      v11 = 16;
      v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 16) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 32;
        v12 -= 4;
      }

      while (v12);
      if (v8 == v6)
      {
        goto LABEL_14;
      }
    }

    v14 = (8 * v6);
    do
    {
      v15 = *v9++;
      *v14++ = v15;
    }

    while (v9 != v3);
  }

LABEL_14:
  if (*a2 == a2[1])
  {
    sub_19D3CBEB0(a3, &__p);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_19D3CBEB0(a3, &__p);
    __break(1u);
  }
}

void sub_19D3CBB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3CBB38(uint64_t a1, float64x2_t **a2, void **a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = sub_19D43886C(v6);
    v8 = *a2;
    v9 = a2[1];
    if (v7 != (v9 - *a2) >> 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_19D3C1834(exception, "dimension mismatch");
      __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
    }

    v6 = *a1;
  }

  else
  {
    v8 = *a2;
    v9 = a2[1];
  }

  *(a1 + 96) = -5;
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  sub_19D44F74C(v6, v10, a3);
  *(a1 + 80) = v11;
  *(a1 + 88) = *a3;
  if (v11 == -5)
  {
    sub_19D3CA36C(a1, *(a1 + 96));
    v13 = __cxa_allocate_exception(0x10uLL);
    sub_19D3CA618(v13);
    __cxa_throw(v13, &unk_1F10BB418, std::runtime_error::~runtime_error);
  }

  sub_19D3CA36C(a1, v11);
  return *(a1 + 80);
}

void *sub_19D3CBC6C(unsigned int a1, const void *a2, void *a3, uint64_t *a4)
{
  v7 = *a4;
  if (a1)
  {
    memcpy(*(v7 + 8), a2, 8 * a1);
  }

  v8 = 56;
  if (a3)
  {
    v8 = 32;
  }

  result = (a4[4])(v7 + 8, *a4 + v8, a4[3]);
  if (a1)
  {
    if (a3)
    {
      return memcpy(a3, *(*a4 + 32), 8 * a1);
    }
  }

  return result;
}

double sub_19D3CBD00(void *a1, int a2)
{
  if (a2 == 2)
  {
    v3 = -5;
  }

  else
  {
    v3 = -1;
  }

  if (a2 == 3)
  {
    v4 = -4;
  }

  else
  {
    v4 = v3;
  }

  if (a2 == 4)
  {
    v5 = -2;
  }

  else
  {
    v5 = v4;
  }

  if (a2 == 5)
  {
    v6 = -3;
  }

  else
  {
    v6 = v5;
  }

  sub_19D45539C(a1, v2, v6);
  return INFINITY;
}

void sub_19D3CBD54(uint64_t *a1)
{
  v2 = a1[2] - a1[1];
  if (sub_19D43886C(*a1) != v2 >> 3)
  {
    if (sub_19D43886C(*a1))
    {
      operator new();
    }

    v3 = a1[1];
    if (v3)
    {
      a1[2] = v3;
      operator delete(v3);
    }

    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0;
    if (sub_19D43886C(*a1))
    {
      operator new();
    }

    v4 = a1[4];
    if (v4)
    {
      a1[5] = v4;
      operator delete(v4);
    }

    a1[4] = 0;
    a1[5] = 0;
    a1[6] = 0;
  }
}

uint64_t *sub_19D3CBE70(uint64_t *a1, int a2)
{
  v3 = sub_19D438818(*a1, a2);

  return sub_19D3CA36C(a1, v3);
}

uint64_t sub_19D3CBEB0(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  sub_19D3C7B18(a1[1], v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  v16 = 0;
  v17 = 0;
  __p = 0;
  v18 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5.n128_f64[0] = sub_19D3C85B8(*(v3 + 8), &__p);
  v7 = sqrt(v6);
  if (v7 < 0.00000001 || (v8 = *(*(v3 + 8) + 96), v8 <= 0))
  {
    v10 = (*(*v3 + 8))(v3, v5);
  }

  else
  {
    if (*(v3 + 56) != v8)
    {
      v9 = v5.n128_u64[0];
      (*(*v3 + 16))(v3);
      v5.n128_u64[0] = v9;
    }

    (**v3)(v3, v5, v7);
  }

  v11 = v10;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return *&v11;
}

void sub_19D3CC20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_19D4553E8(v14, &a9);
  _Unwind_Resume(a1);
}

BOOL sub_19D3CC234(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 24);
  if (v3 != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 != *a1)
  {
    if (((v5 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(*a2, 1, 0, 1, 0, 1, v3);
  cblas_dnrm2_NEWLAPACK();
  return v7 <= a3;
}

void sub_19D3CC38C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3CC3C8(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_19D2AE2B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v6 = (32 * ((a1[1] - *a1) >> 5));
  sub_19D3BA6D0(v6, a2);
  v7 = 96 * v2 + 96;
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_19D3BF1AC(v12, v11);
      v11 += 96;
      v12 = v13 + 12;
    }

    while (v11 != v9);
    do
    {
      sub_19D3715C0(v8);
      v8 += 96;
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

void sub_19D3CC514()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

void sub_19D3CC560(void **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3) < a4)
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
          v12 = v10[-2].__r_.__value_.__r.__words[2];
          if (v12)
          {
            v10[-1].__r_.__value_.__r.__words[0] = v12;
            operator delete(v12);
          }

          v13 = &v10[-3].__r_.__value_.__r.__words[2];
          if (v10[-2].__r_.__value_.__s.__data_[15] < 0)
          {
            operator delete(*v13);
          }

          v10 = (v10 - 56);
        }

        while (v13 != v8);
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

    if (a4 <= 0x492492492492492)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v17 = 2 * v16;
      if (2 * v16 <= a4)
      {
        v17 = a4;
      }

      if (v16 >= 0x249249249249249)
      {
        v18 = 0x492492492492492;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= 0x492492492492492)
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  v14 = a1[1];
  if (0x6DB6DB6DB6DB6DB7 * ((v14 - v8) >> 3) >= a4)
  {
    if (__str == a3)
    {
      if (v14 == v8)
      {
LABEL_38:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        std::string::operator=(v8, v5);
        if (v8 != v5)
        {
          sub_19D3C4E20(&v8[1].__r_.__value_.__l.__data_, v5[1].__r_.__value_.__l.__data_, v5[1].__r_.__value_.__l.__size_, (v5[1].__r_.__value_.__l.__size_ - v5[1].__r_.__value_.__r.__words[0]) >> 3);
        }

        LODWORD(v8[2].__r_.__value_.__l.__data_) = v5[2].__r_.__value_.__l.__data_;
        v5 = (v5 + 56);
        v8 = (v8 + 56);
      }

      while (v5 != a3);
      v14 = a1[1];
      if (v14 == v8)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v20 = *(v14 - 32);
      if (v20)
      {
        *(v14 - 24) = v20;
        operator delete(v20);
      }

      v21 = (v14 - 56);
      if (*(v14 - 33) < 0)
      {
        operator delete(*v21);
      }

      v14 -= 56;
    }

    while (v21 != v8);
    goto LABEL_38;
  }

  v15 = (__str + v14 - v8);
  if (v14 != v8)
  {
    do
    {
      std::string::operator=(v8, v5);
      if (v8 != v5)
      {
        sub_19D3C4E20(&v8[1].__r_.__value_.__l.__data_, v5[1].__r_.__value_.__l.__data_, v5[1].__r_.__value_.__l.__size_, (v5[1].__r_.__value_.__l.__size_ - v5[1].__r_.__value_.__r.__words[0]) >> 3);
      }

      LODWORD(v8[2].__r_.__value_.__l.__data_) = v5[2].__r_.__value_.__l.__data_;
      v5 = (v5 + 56);
      v8 = (v8 + 56);
    }

    while (v5 != v15);
    v14 = a1[1];
  }

  v22 = v14;
  v19 = v14;
  if (v15 != a3)
  {
    v19 = v14;
    do
    {
      sub_19D371AD4(a1, v19, v15);
      v15 = (v15 + 56);
      v19 = v22 + 56;
      v22 += 56;
    }

    while (v15 != a3);
  }

  a1[1] = v19;
}

void sub_19D3CC880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D371A58(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_19D3CC898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D371A58(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_19D3CC8B0(void **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3) < a4)
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
          v12 = v10[-2].__r_.__value_.__r.__words[2];
          if (v12)
          {
            v10[-1].__r_.__value_.__r.__words[0] = v12;
            operator delete(v12);
          }

          v13 = &v10[-3].__r_.__value_.__r.__words[2];
          if (v10[-2].__r_.__value_.__s.__data_[15] < 0)
          {
            operator delete(*v13);
          }

          v10 = (v10 - 56);
        }

        while (v13 != v8);
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

    if (a4 <= 0x492492492492492)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v17 = 2 * v16;
      if (2 * v16 <= a4)
      {
        v17 = a4;
      }

      if (v16 >= 0x249249249249249)
      {
        v18 = 0x492492492492492;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= 0x492492492492492)
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  v14 = a1[1];
  if (0x6DB6DB6DB6DB6DB7 * ((v14 - v8) >> 3) >= a4)
  {
    if (__str == a3)
    {
      if (v14 == v8)
      {
LABEL_38:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        std::string::operator=(v8, v5);
        if (v8 != v5)
        {
          sub_19D3C812C(&v8[1].__r_.__value_.__l.__data_, v5[1].__r_.__value_.__l.__data_, v5[1].__r_.__value_.__l.__size_, (v5[1].__r_.__value_.__l.__size_ - v5[1].__r_.__value_.__r.__words[0]) >> 2);
        }

        LODWORD(v8[2].__r_.__value_.__l.__data_) = v5[2].__r_.__value_.__l.__data_;
        v5 = (v5 + 56);
        v8 = (v8 + 56);
      }

      while (v5 != a3);
      v14 = a1[1];
      if (v14 == v8)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v20 = *(v14 - 32);
      if (v20)
      {
        *(v14 - 24) = v20;
        operator delete(v20);
      }

      v21 = (v14 - 56);
      if (*(v14 - 33) < 0)
      {
        operator delete(*v21);
      }

      v14 -= 56;
    }

    while (v21 != v8);
    goto LABEL_38;
  }

  v15 = (__str + v14 - v8);
  if (v14 != v8)
  {
    do
    {
      std::string::operator=(v8, v5);
      if (v8 != v5)
      {
        sub_19D3C812C(&v8[1].__r_.__value_.__l.__data_, v5[1].__r_.__value_.__l.__data_, v5[1].__r_.__value_.__l.__size_, (v5[1].__r_.__value_.__l.__size_ - v5[1].__r_.__value_.__r.__words[0]) >> 2);
      }

      LODWORD(v8[2].__r_.__value_.__l.__data_) = v5[2].__r_.__value_.__l.__data_;
      v5 = (v5 + 56);
      v8 = (v8 + 56);
    }

    while (v5 != v15);
    v14 = a1[1];
  }

  v22 = v14;
  v19 = v14;
  if (v15 != a3)
  {
    v19 = v14;
    do
    {
      sub_19D371D94(a1, v19, v15);
      v15 = (v15 + 56);
      v19 = v22 + 56;
      v22 += 56;
    }

    while (v15 != a3);
  }

  a1[1] = v19;
}

void sub_19D3CCBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D371A58(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_19D3CCBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D371A58(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_19D3CCC00(uint64_t **a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_66;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = (a1 + 1);
  *(v7 + 16) = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  v36 = a1;
  v38 = v9;
  if (!v9)
  {
    goto LABEL_65;
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
        v35 = v10[1];
        if (!v35)
        {
          break;
        }

        do
        {
          v10 = v35;
          v35 = *v35;
        }

        while (v35);
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

  v37 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_19D2A3E48(a1, v9);
    if (v10)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  v13 = a2;
  do
  {
    std::string::operator=((v9 + 4), (v13 + 4));
    v14 = *v8;
    v15 = v5 + 1;
    v16 = v5 + 1;
    if (!*v8)
    {
LABEL_37:
      *v38 = 0;
      v38[1] = 0;
      v38[2] = v15;
      *v16 = v38;
      v29 = **v5;
      if (!v29)
      {
        goto LABEL_39;
      }

LABEL_38:
      *v5 = v29;
      goto LABEL_39;
    }

    v17 = *(v38 + 55);
    if (v17 >= 0)
    {
      v18 = *(v38 + 55);
    }

    else
    {
      v18 = v38[5];
    }

    if (v17 >= 0)
    {
      v19 = v38 + 4;
    }

    else
    {
      v19 = v38[4];
    }

    do
    {
      while (1)
      {
        v15 = v14;
        v22 = v14[4];
        v20 = v14 + 4;
        v21 = v22;
        v23 = *(v20 + 23);
        if (v23 >= 0)
        {
          v24 = *(v20 + 23);
        }

        else
        {
          v24 = v20[1];
        }

        if (v23 >= 0)
        {
          v25 = v20;
        }

        else
        {
          v25 = v21;
        }

        if (v24 >= v18)
        {
          v26 = v18;
        }

        else
        {
          v26 = v24;
        }

        v27 = memcmp(v19, v25, v26);
        v28 = v18 < v24;
        if (v27)
        {
          v28 = v27 < 0;
        }

        if (!v28)
        {
          break;
        }

        v14 = *v15;
        v16 = v15;
        if (!*v15)
        {
          goto LABEL_37;
        }
      }

      v14 = v15[1];
    }

    while (v14);
    *v38 = 0;
    v38[1] = 0;
    v38[2] = v15;
    v15[1] = v38;
    v29 = **v5;
    if (v29)
    {
      goto LABEL_38;
    }

LABEL_39:
    sub_19D2A60A8(v5[1], v38);
    v5[2] = (v5[2] + 1);
    v9 = v37;
    v38 = v37;
    if (v37)
    {
      v10 = v37[2];
      if (v10)
      {
        v30 = *v10;
        if (*v10 == v37)
        {
          *v10 = 0;
          while (1)
          {
            v33 = v10[1];
            if (!v33)
            {
              break;
            }

            do
            {
              v10 = v33;
              v33 = *v33;
            }

            while (v33);
          }
        }

        else
        {
          for (v10[1] = 0; v30; v30 = v10[1])
          {
            do
            {
              v10 = v30;
              v30 = *v30;
            }

            while (v30);
          }
        }
      }

      v37 = v10;
      v31 = v13[1];
      if (!v31)
      {
        do
        {
LABEL_50:
          a2 = v13[2];
          v32 = *a2 == v13;
          v13 = a2;
        }

        while (!v32);
        goto LABEL_52;
      }
    }

    else
    {
      v10 = 0;
      v31 = v13[1];
      if (!v31)
      {
        goto LABEL_50;
      }
    }

    do
    {
      a2 = v31;
      v31 = *v31;
    }

    while (v31);
LABEL_52:
    if (!v9)
    {
      break;
    }

    v13 = a2;
  }

  while (a2 != a3);
  v12 = v36;
  sub_19D2A3E48(v36, v9);
  if (v10)
  {
LABEL_62:
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v12;
    v9 = v10;
LABEL_65:
    sub_19D2A3E48(a1, v9);
  }

LABEL_66:
  if (a2 != a3)
  {
    sub_19D3CCF94();
  }
}

void sub_19D3CCF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3CCF3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3CCF3C(uint64_t a1)
{
  sub_19D2A3E48(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_19D2A3E48(*a1, v2);
  }

  return a1;
}

void sub_19D3CD108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

void *sub_19D3CD11C(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  v5 = a1[21];
  if (v5)
  {
    a1[22] = v5;
    operator delete(v5);
  }

  v6 = a1[17];
  if (v6)
  {
    a1[18] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    a1[14] = v7;
    operator delete(v7);
  }

  v8 = a1[9];
  if (v8)
  {
    a1[10] = v8;
    operator delete(v8);
  }

  v9 = a1[5];
  if (v9)
  {
    a1[6] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_19D3CD1C0(uint64_t a1)
{
  *a1 = &unk_1F10BB258;
  v2 = *(a1 + 10656);
  if (v2)
  {
    v3 = *(a1 + 10664);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 96);
      }

      while (v3 != v2);
      v4 = *(a1 + 10656);
    }

    *(a1 + 10664) = v2;
    operator delete(v4);
  }

  std::random_device::~random_device((a1 + 10648));
  std::random_device::~random_device((a1 + 8104));
  std::random_device::~random_device((a1 + 5584));
  std::random_device::~random_device((a1 + 3056));
  v5 = *(a1 + 544);
  *(a1 + 544) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 480) = &unk_1F10BB2F0;
  v6 = *(a1 + 496);
  if (v6)
  {
    *(a1 + 504) = v6;
    operator delete(v6);
  }

  sub_19D3CD11C((a1 + 176));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      v10 = *(a1 + 160);
      do
      {
        v12 = *(v10 - 56);
        v10 -= 56;
        v11 = v12;
        if (v12)
        {
          *(v8 - 48) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_19D3715C0(v14 - 104);
      }

      while (v14 != v13);
      v15 = *(a1 + 8);
    }

    *(a1 + 16) = v13;
    operator delete(v15);
  }

  return a1;
}

double sub_19D3CD37C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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
    v7 = 0x492492492492492;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x492492492492492)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v8 = 8 * ((a1[1] - *a1) >> 3);
  *(&v17 + 1) = 0;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v12 = *(a2 + 8);
  if (v12 != *a2)
  {
    if (((v12 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(v8 + 24) = *(a2 + 24);
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  *(v8 + 48) = v11;
  *&v17 = v8 + 56;
  v13 = a1[1];
  v14 = v8 + *a1 - v13;
  sub_19D3CD588(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  *&result = v8 + 56;
  *(a1 + 1) = v17;
  if (v15)
  {
    operator delete(v15);
    *&result = v8 + 56;
  }

  return result;
}

void sub_19D3CD550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19D3CD740(va);
  _Unwind_Resume(a1);
}

void sub_19D3CD564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *v4;
  if (*v4)
  {
    *(v4 + 8) = v6;
    operator delete(v6);
  }

  sub_19D3CD740(va);
  _Unwind_Resume(a1);
}

void sub_19D3CD588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v9 = *(v7 + 8);
      if (v9 != *v7)
      {
        if (((v9 - *v7) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      *(a4 + 24) = *(v7 + 24);
      v8 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v8;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    do
    {
      v10 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v10;
        operator delete(v10);
      }

      v6 += 56;
    }

    while (v6 != a3);
  }
}

void sub_19D3CD6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_19D3CD6D0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3CD6D0(uint64_t a1)
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
        v6 = *(v4 - 56);
        v4 -= 56;
        v5 = v6;
        if (v6)
        {
          *(v2 - 48) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t sub_19D3CD740(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 56;
        v4 = *(v2 - 56);
        *(a1 + 16) = v2 - 56;
        if (!v4)
        {
          break;
        }

        *(v2 - 48) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 56;
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

void sub_19D3CD7B0(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 72);
  v4 = *(a1 + 72);
  v6 = *(a1 + 96);
  v7 = *(a2 + 24);
  *(a1 + 96) = v6 + 1;
  *(a1 + 100) = v7;
  v8 = v7 * (v6 + 1);
  v9 = (*(a1 + 80) - v4) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      *(a1 + 80) = v4 + 8 * v8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 72, v8 - v9);
    v6 = *(a1 + 96) - 1;
  }

  sub_19D3C8D6C(a2, __p);
  v10 = *(a1 + 100);
  v11 = __p[0];
  if (!v10)
  {
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = *v5;
  if (v10 >= 0xA && (v13 = 8 * v10 * v6 + v12, v13 - __p[0] >= 0x20))
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (__p[0] + 16);
    v21 = (v13 + 16);
    v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v20;
      *(v21 - 1) = *(v20 - 1);
      *v21 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v14 == v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v10 - v14;
  v16 = 8 * v14;
  v17 = (v12 + v16 + 8 * v6 * v10);
  v18 = &v11[v16];
  do
  {
    v19 = *v18;
    v18 += 8;
    *v17++ = v19;
    --v15;
  }

  while (v15);
LABEL_17:
  __p[1] = v11;
  operator delete(v11);
LABEL_18:
  sub_19D3CD8F4(a1, 1, 1);
}

void sub_19D3CD8F4(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = (a1 + 104);
    v4 = *(a1 + 104);
    v6 = *(a1 + 96);
    *(a1 + 128) = v6;
    v7 = (*(a1 + 112) - v4) >> 3;
    v14 = v6;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(a1 + 112) = v4 + 8 * v6;
      }
    }

    else
    {
      sub_19D3628E0(a1 + 104, v6 - v7);
      v6 = *(a1 + 96);
      v14 = v6;
    }

    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 100);
        if (v10)
        {
          if ((v10 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v16 = 0;
        LODWORD(v18) = 0;
        v17 = 0;
        __C = 0.0;
        vDSP_meanvD(*(a1 + 264), 1, &__C, *(a1 + 288));
        *(*v5 + 8 * v9) = __C;
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        ++v9;
        v8 += 8;
      }

      while (v9 != v14);
    }
  }

  sub_19D3CDC64(a1 + 72, &__p);
  if ((a1 + 136) != &__p)
  {
    sub_19D3C4E20((a1 + 136), __p, v16, (v16 - __p) >> 3);
  }

  v11 = __p;
  *(a1 + 160) = v18;
  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }

  sub_19D3CE264(a1 + 136, &__p);
  if ((a1 + 168) != &__p)
  {
    sub_19D3C4E20((a1 + 168), __p, v16, (v16 - __p) >> 3);
  }

  v12 = __p;
  *(a1 + 192) = v18;
  if (v12)
  {
    v16 = v12;
    operator delete(v12);
  }

  sub_19D3CE384(a1);
  if (a3)
  {
    sub_19D3CE4C4(a1);
  }
}

void sub_19D3CDC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3CDC64(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v2)
  {
    operator new();
  }

  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
}

void sub_19D3CE1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (v19)
  {
    operator delete(v19);
    if (!v20)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v20)
  {
    goto LABEL_3;
  }

  operator delete(v20);
  if (!v22)
  {
LABEL_4:
    if (!v21)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v22);
  if (!v21)
  {
LABEL_5:
    v24 = a19;
    if (!a19)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v21);
  v24 = a19;
  if (!a19)
  {
LABEL_6:
    *(a10 + 8) = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(v24);
  *(a10 + 8) = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_19D3CE264(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 28);
  v9 = *(a1 + 24);
  v10 = v3;
  v8 = 0;
  sub_19D3C8EAC(a1, v7);
  v6 = 1;
  LOWORD(v5) = 76;
  dpotrf_NEWLAPACK();
  sub_19D3C8EAC(v7, __p);
  sub_19D3C88B4(__p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_19D3CE310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      v22 = a20;
      if (!a20)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  v22 = a20;
  if (!a20)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void sub_19D3CE384(uint64_t a1)
{
  sub_19D3C88B4(a1 + 168, v6);
  sub_19D3CE6EC(a1, v2);
  sub_19D3C8BF8(v6, v2, &__p);
  if ((a1 + 232) != &__p)
  {
    sub_19D3C4E20((a1 + 232), __p, v4, (v4 - __p) >> 3);
  }

  *(a1 + 256) = v5;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }

  sub_19D3C8EAC(v6, &__p);
  sub_19D3CE9F8(&__p, a1 + 232);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_19D3CE460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3CE4C4(int32x2_t *a1)
{
  v2 = a1[12].u32[0];
  if (v2)
  {
    operator new();
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    *(8 * v3) = 0;
    ++v4;
    v6 = v5 / 0;
    v3 = v4;
    ++v5;
  }

  while (v6 != 0 / 0uLL || v4 != 0 % 0uLL);
  sub_19D3C4E20(&a1[25], 0, 0, 0);
  a1[28] = (v2 | (v2 << 32));
  sub_19D3C88B4(&a1[21], &__p);
  sub_19D3CEB10(&__p, a1 + 25);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_19D3C8EAC(&a1[21], &__p);
  sub_19D3CEB10(&__p, a1 + 25);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_19D3CE6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3CE6EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 288);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(0, 1, 0, 1, 0, 1, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D3CE9C8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D3CE9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v7 = 1;
  v8 = v2;
  v6 = v2;
  v5 = *(a2 + 24);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = 0;
  sub_19D3C8EAC(a1, __p);
  dgesv_NEWLAPACK();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_19D3CEAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  _Unwind_Resume(exception_object);
}

void sub_19D3CEB10(uint64_t a1, int32x2_t *a2)
{
  v3 = *(a1 + 24);
  v4 = a2[3].i32[0];
  v33 = a2[3].i32[1];
  v34 = v3;
  v31 = v4;
  v32 = v3;
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v30 = 0;
  sub_19D3C8EAC(a1, v29);
  sub_19D3C8EAC(a2, &__p);
  v5 = __p;
  v6 = v38 * v37;
  if (v6)
  {
    v7 = 0;
    v8 = *a2;
    if (v6 < 4)
    {
      goto LABEL_10;
    }

    if (*&v8 - __p < 0x20uLL)
    {
      goto LABEL_10;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (__p + 16);
    v10 = (*&v8 + 16);
    v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v7 != v6)
    {
LABEL_10:
      v13 = (*&v8 + 8 * v7);
      v14 = v6 - v7;
      v15 = &v5[8 * v7];
      do
      {
        v16 = *v15;
        v15 += 8;
        *v13++ = v16;
        --v14;
      }

      while (v14);
    }
  }

  else if (!__p)
  {
    goto LABEL_15;
  }

  v36 = v5;
  operator delete(v5);
LABEL_15:
  a2[3] = vrev64_s32(a2[3]);
  dgesv_NEWLAPACK();
  sub_19D3C8EAC(a2, &__p);
  v17 = __p;
  v18 = v38 * v37;
  if (v18)
  {
    v19 = 0;
    v20 = *a2;
    if (v18 < 4)
    {
      goto LABEL_21;
    }

    if (*&v20 - __p < 0x20uLL)
    {
      goto LABEL_21;
    }

    v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = (__p + 16);
    v22 = (*&v20 + 16);
    v23 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v24 = *v21;
      *(v22 - 1) = *(v21 - 1);
      *v22 = v24;
      v21 += 2;
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    if (v19 != v18)
    {
LABEL_21:
      v25 = (*&v20 + 8 * v19);
      v26 = v18 - v19;
      v27 = &v17[8 * v19];
      do
      {
        v28 = *v27;
        v27 += 8;
        *v25++ = v28;
        --v26;
      }

      while (v26);
    }
  }

  else if (!__p)
  {
    goto LABEL_26;
  }

  v36 = v17;
  operator delete(v17);
LABEL_26:
  a2[3] = vrev64_s32(a2[3]);
  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }
}

void sub_19D3CED28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  _Unwind_Resume(exception_object);
}

void sub_19D3CED6C(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v6 = &unk_1F10BB3E8;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = -1;
  v13 = 0x7FF0000000000000;
  v14 = -5;
  v15 = 0;
  sub_19D3CA020(&v6, 2u);
  __p = 0;
  v3 = 0;
  v5 = 0;
  v4 = 0;
  operator new();
}

void sub_19D3CF040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (!__p)
  {
    sub_19D3C99D8(&a25);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_19D3C99D8(&a25);
  _Unwind_Resume(a1);
}

void sub_19D3CF0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_19D36CF9C(va);
  sub_19D3C99D8(va1);
  _Unwind_Resume(a1);
}

void sub_19D3CF0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

double sub_19D3CF4C4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1[1] - *a1) >> 3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v43 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = 0;
    v8 = v5 - v6 - 8;
    if (v8 < 0x18)
    {
      goto LABEL_10;
    }

    if (-v6 < 0x20)
    {
      goto LABEL_10;
    }

    v9 = (v8 >> 3) + 1;
    v7 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 8 * (v9 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v6 + 16);
    v12 = 16;
    v13 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 16) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 32;
      v13 -= 4;
    }

    while (v13);
    v6 = v10;
    if (v9 != v7)
    {
LABEL_10:
      v15 = (8 * v7);
      do
      {
        v16 = *v6;
        v6 += 8;
        *v15++ = v16;
      }

      while (v6 != v5);
    }
  }

  if (*a2 == a2[1])
  {
    sub_19D3CF7C0(a3, &__p, 0, &v33);
    v17 = v33;
    if (v36 == 1)
    {
      v31 = v34;
      if (v34)
      {
        v35 = v34;
        goto LABEL_30;
      }
    }
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v39 = 0;
    sub_19D3CF7C0(a3, &__p, 1, &v33);
    v17 = v33;
    sub_19D3D0C10(v37, &v34);
    if (v36 == 1 && v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v18 = v38;
    if (v38)
    {
      v19 = 0;
      v20 = v37[0];
      v21 = *a2;
      if (v38 < 4)
      {
        goto LABEL_22;
      }

      if ((v21 - v37[0]) < 0x20)
      {
        goto LABEL_22;
      }

      v19 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v37[0] + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_22:
        v26 = v18 - v19;
        v27 = 8 * v19;
        v28 = (v21 + 8 * v19);
        v29 = (v20 + v27);
        do
        {
          v30 = *v29++;
          *v28++ = v30;
          --v26;
        }

        while (v26);
      }
    }

    if (v39 == 1)
    {
      v31 = v37[0];
      if (v37[0])
      {
        v37[1] = v37[0];
LABEL_30:
        operator delete(v31);
      }
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_19D3CF758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D3CF7C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  sub_19D3D0768(v11, *a1);
  if (v12 != a2)
  {
    sub_19D3C4E20(v12, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v13 = *(a2 + 24);
  v7 = *a2;
  v11[3] = exp(*v7 + *v7);
  v11[4] = exp(*(v7 + 1));
  sub_19D3CD8F4(v11, 0, a3);
  v8 = sub_19D3CF98C(v11);
  if (a3)
  {
    sub_19D3CFBB4(v11, &v10);
  }

  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 40) = 0;
  return sub_19D3CD11C(v11);
}

double sub_19D3CF98C(uint64_t a1)
{
  sub_19D3CE6EC(a1, __A);
  __C = 0.0;
  vDSP_dotprD(__A[0], 1, *(a1 + 232), 1, &__C, __N);
  v2 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (*(a1 + 196) >= *(a1 + 192))
  {
    v3 = *(a1 + 192);
  }

  else
  {
    v3 = *(a1 + 196);
  }

  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  LODWORD(__A[0]) = 0;
  vvlog(0, 0, __A);
  __A[0] = 0;
  vDSP_sveD(0, 1, __A, 0);
  return *(a1 + 96) * -0.918938533 - (*__A - v2 * -0.5);
}

void sub_19D3CFB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v13)
  {
    operator delete(v13);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v11);
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if (!v11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D3CFBB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(v12, 0, sizeof(v12));
  v4 = *(a1 + 200);
  v3 = *(a1 + 208);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a1 + 232);
  v13 = *(a1 + 224);
  v6 = *(a1 + 240);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = *(a1 + 256);
  sub_19D3C8D6C(a1 + 232, __B);
  v8 = v11;
  v9 = (v11 * v7);
  if (v9)
  {
    if ((v9 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mmulD(0, 1, __B[0], 1, 0, 1, v7, v11, 1uLL);
  vDSP_vsubD(v12[0], 1, 0, 1, 0, 1, v9);
  sub_19D3C4E20(v12, 0, 0, 0);
  v13 = v7 | (v8 << 32);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  operator new();
}

void sub_19D3D0558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (v29)
  {
    operator delete(v29);
    if (!v25)
    {
LABEL_3:
      if (!v28)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  operator delete(v25);
  if (!v28)
  {
LABEL_4:
    if (!v27)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  operator delete(v28);
  if (!v27)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
      if (!v26)
      {
LABEL_8:
        v31 = a24;
        if (!a24)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if (!v26)
    {
      goto LABEL_8;
    }

    operator delete(v26);
    v31 = a24;
    if (!a24)
    {
LABEL_18:
      _Unwind_Resume(exception_object);
    }

LABEL_17:
    operator delete(v31);
    goto LABEL_18;
  }

LABEL_5:
  operator delete(v27);
  goto LABEL_6;
}

uint64_t sub_19D3D0768(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 24);
  *(result + 40) = 0;
  *(result + 24) = v2;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v4 = *(a2 + 40);
  v3 = *(a2 + 48);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a2 + 64);
  *(result + 72) = 0;
  *(result + 64) = v5;
  *(result + 80) = 0;
  *(result + 88) = 0;
  v7 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = *(a2 + 96);
  *(result + 104) = 0;
  *(result + 96) = v8;
  *(result + 112) = 0;
  *(result + 120) = 0;
  v10 = *(a2 + 104);
  v9 = *(a2 + 112);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v11 = *(a2 + 128);
  *(result + 136) = 0;
  *(result + 128) = v11;
  *(result + 144) = 0;
  *(result + 152) = 0;
  v13 = *(a2 + 136);
  v12 = *(a2 + 144);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v14 = *(a2 + 160);
  *(result + 168) = 0;
  *(result + 160) = v14;
  *(result + 176) = 0;
  *(result + 184) = 0;
  v16 = *(a2 + 168);
  v15 = *(a2 + 176);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v17 = *(a2 + 192);
  *(result + 200) = 0;
  *(result + 192) = v17;
  *(result + 208) = 0;
  *(result + 216) = 0;
  v19 = *(a2 + 200);
  v18 = *(a2 + 208);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v20 = *(a2 + 224);
  *(result + 232) = 0;
  *(result + 224) = v20;
  *(result + 240) = 0;
  *(result + 248) = 0;
  v22 = *(a2 + 232);
  v21 = *(a2 + 240);
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 256) = *(a2 + 256);
  *(result + 272) = 0;
  *(result + 280) = 0;
  *(result + 264) = 0;
  v24 = *(a2 + 264);
  v23 = *(a2 + 272);
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 288) = *(a2 + 288);
  return result;
}

void sub_19D3D0AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10)
{
  v17 = v10[33];
  if (v17)
  {
    v10[34] = v17;
    operator delete(v17);
    v18 = *v11;
    if (!*v11)
    {
LABEL_3:
      v19 = *v15;
      if (!*v15)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v18 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  v10[30] = v18;
  operator delete(v18);
  v19 = *v15;
  if (!*v15)
  {
LABEL_4:
    v20 = *v14;
    if (!*v14)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10[26] = v19;
  operator delete(v19);
  v20 = *v14;
  if (!*v14)
  {
LABEL_5:
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10[22] = v20;
  operator delete(v20);
  v21 = *v13;
  if (!*v13)
  {
LABEL_6:
    v22 = *v12;
    if (!*v12)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10[18] = v21;
  operator delete(v21);
  v22 = *v12;
  if (!*v12)
  {
LABEL_7:
    v23 = *a9;
    if (!*a9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v10[14] = v22;
  operator delete(v22);
  v23 = *a9;
  if (!*a9)
  {
LABEL_9:
    v24 = *a10;
    if (*a10)
    {
      v10[6] = v24;
      operator delete(v24);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_8:
  v10[10] = v23;
  operator delete(v23);
  goto LABEL_9;
}

void sub_19D3D0BF0()
{
  if (!*v0)
  {
    JUMPOUT(0x19D3D0B1CLL);
  }

  JUMPOUT(0x19D3D0B14);
}

void sub_19D3D0C00()
{
  if (!*v0)
  {
    JUMPOUT(0x19D3D0B30);
  }

  JUMPOUT(0x19D3D0B28);
}

void sub_19D3D0C10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      if (a1 != a2)
      {
        sub_19D3C4E20(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
      }

      *(a1 + 24) = *(a2 + 24);
    }
  }

  else if (*(a1 + 32))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v5 = *(a2 + 8);
    if (v5 != *a2)
    {
      if (((v5 - *a2) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 1;
  }
}

void sub_19D3D0D20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3D0D3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __p = 0;
  v8 = 0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v9 = 0;
  p_p = &__p;
  v11 = 0;
  if (v3 != v2)
  {
    if ((0x4EC4EC4EC4EC4EC5 * ((v3 - v2) >> 3)) < 0x276276276276277)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D3CB0B0(&__p, a2);
  v4 = __p;
  if (__p)
  {
    v5 = v8;
    v6 = __p;
    if (v8 != __p)
    {
      do
      {
        v5 = sub_19D3715C0(v5 - 104);
      }

      while (v5 != v4);
      v6 = __p;
    }

    v8 = v4;
    operator delete(v6);
  }
}

void sub_19D3D0E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(va);
  _Unwind_Resume(a1);
}

void sub_19D3D0E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19D3C71A4(va);
  _Unwind_Resume(a1);
}

BOOL sub_19D3D0E74(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Early stopping already requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v2 = *a2 >= *(a1 + 12);
  *(a1 + 8) = v2;
  return v2;
}

BOOL sub_19D3D0F00(uint64_t a1, int *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Early stopping already requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 12);
  if (v3 == -1)
  {
    return 0;
  }

  v6 = *a2;
  v5 = (a2 + 2);
  if (v6 == 1 || *(a1 + 120) < *(a2 + 13) - *(a1 + 16))
  {
    sub_19D3C3D68(a1 + 24, v5);
    result = 0;
    *(a1 + 120) = *(a2 + 13);
    *(a1 + 128) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = *(a1 + 128);
    *(a1 + 128) = v8 + 1;
    result = v8 >= v3;
    *(a1 + 8) = result;
  }

  return result;
}

void sub_19D3D0FFC()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t sub_19D3D1048(uint64_t a1)
{
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_19D3BBF48(a1);
}

uint64_t sub_19D3D10B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v30 = 0;
  v29 = &unk_1F10BB490;
  v31 = v5;
  v21[0] = 0;
  *v22 = v6;
  *&v22[4] = v7;
  memset(v23, 0, sizeof(v23));
  v24 = v25;
  v25[0] = 0;
  v26 = 0.0;
  v27[0] = 0;
  v25[1] = 0;
  v25[2] = &v26;
  v28 = 0;
  v33 = 0;
  v32 = &unk_1F10BB490;
  v34 = v5;
  v36 = 0;
  v35 = &unk_1F10BB690;
  v38 = HIDWORD(v7);
  v37 = *v22;
  sub_19D3BF1AC(v39, v23);
  v39[12] = v27[1];
  v40 = v28;
  v20 = &unk_1F10BB690;
  sub_19D3715C0(v23);
  v8 = *(a1 + 72);
  (*(**(a1 + 120) + 16))(&v29);
  v9 = *(a2 + 24);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = (*(*v9 + 48))(v9, &v29);
  (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
  std::chrono::steady_clock::now();
  LODWORD(v20) = 1;
  sub_19D3BA6D0(v21, &v29);
  v26 = v10;
  sub_19D3D0D3C(*(a1 + 120), v27);
  if (1 % v8)
  {
    goto LABEL_5;
  }

  v11 = *(a2 + 56);
  if (!v11)
  {
LABEL_17:
    sub_19D3D0FFC();
  }

  if (((*(*v11 + 48))(v11, &v20) & 1) == 0)
  {
LABEL_5:
    if (((*v32)(&v32, &v20) & 1) == 0)
    {
      v12 = (*v35)(&v35, &v20);
      sub_19D3715C0(v27);
      sub_19D3715C0(v21);
      sub_19D3715C0(&v29);
      if (v12)
      {
        goto LABEL_15;
      }

      v13 = 2;
      while (1)
      {
        (*(**(a1 + 120) + 16))(&v29);
        v14 = *(a2 + 24);
        if (!v14)
        {
          break;
        }

        v15 = (*(*v14 + 48))(v14, &v29);
        (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
        std::chrono::steady_clock::now();
        std::chrono::steady_clock::now();
        LODWORD(v20) = v13;
        sub_19D3BA6D0(v21, &v29);
        v26 = v15;
        sub_19D3D0D3C(*(a1 + 120), v27);
        if (!(v13 % v8))
        {
          v16 = *(a2 + 56);
          if (!v16)
          {
            goto LABEL_17;
          }

          if ((*(*v16 + 48))(v16, &v20))
          {
            goto LABEL_6;
          }
        }

        if ((*v32)(&v32, &v20))
        {
          goto LABEL_6;
        }

        v17 = (*v35)(&v35, &v20);
        sub_19D3715C0(v27);
        sub_19D3715C0(v21);
        sub_19D3715C0(&v29);
        ++v13;
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      sub_19D3D0FFC();
    }
  }

LABEL_6:
  sub_19D3715C0(v27);
  sub_19D3715C0(v21);
  sub_19D3715C0(&v29);
LABEL_15:
  sub_19D3D0D3C(*(a1 + 120), a3);
  v35 = &unk_1F10BB690;
  return sub_19D3715C0(v39);
}

void sub_19D3D154C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_19D3715C0(v39 + 112);
  sub_19D3715C0(v39 + 8);
  sub_19D3715C0(&a37);
  *(v40 - 240) = v37;
  sub_19D3715C0(v38 + 40);
  _Unwind_Resume(a1);
}

void sub_19D3D15F4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 1)
  {
    if (!v1)
    {
      sub_19D3C147C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3C1834(exception, "Invalid optimizer in user config.");
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  sub_19D3D16A8();
}

void sub_19D3D181C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3D1838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3D1854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3D1884(uint64_t a1, uint64_t a2)
{
  sub_19D370C7C(&v19, a2);
  sub_19D370EB8(&v21, (a2 + 24));
  v4 = *(a2 + 64);
  v23 = *(a2 + 48);
  v24 = v4;
  v25 = *(a2 + 80);
  sub_19D3B60F8(&__p, a2 + 88);
  *a1 = &unk_1F10BB228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_19D370C7C((a1 + 32), &v19);
  sub_19D370EB8((a1 + 56), &v21);
  v5 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v5;
  *(a1 + 112) = v25;
  sub_19D3B60F8(a1 + 120, &__p);
  if (v28 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = sub_19D3715C0(v7 - 96);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }
  }

  v9 = v21;
  if (v21)
  {
    v10 = v22;
    v11 = v21;
    if (v22 != v21)
    {
      do
      {
        v12 = *(v10 - 17);
        v10 -= 5;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v21;
    }

    v22 = v9;
    operator delete(v11);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }

  *a1 = &unk_1F10BB500;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v17 = sub_19D36EBA8(a2);
  v18 = sub_19D36F6A8(a2);
  *(a1 + 216) = 0;
  *(a1 + 176) = v18 + v17;
  *(a1 + 184) = v18 + v17;
  *(a1 + 192) = xmmword_19D475EE0;
  *(a1 + 208) = 0x3FF0000000000000;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  operator new();
}

void sub_19D3D1F80(_Unwind_Exception *a1)
{
  sub_19D372E78(v5);
  sub_19D3C1C0C((v6 + 320));
  v8 = v1[70];
  v1[70] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v4 = &unk_1F10BB598;
  v9 = *(v6 + 248);
  if (v9)
  {
    v1[63] = v9;
    operator delete(v9);
  }

  sub_19D3CD11C(v3);
  sub_19D3C3E08(v2);
  sub_19D3C1C5C(v1);
  _Unwind_Resume(a1);
}

void sub_19D3D221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3D2238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3D238C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3D23A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3D23DC(uint64_t a1)
{
  v1 = sub_19D3D628C(a1);

  operator delete(v1);
}

__int128 **sub_19D3D2404@<X0>(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  v4 = a1 + 8;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  v6 = sub_19D36EBA8((a1 + 32));
  v7 = 5 * (sub_19D36F6A8(v4 + 24) + v6);
  if (*(v4 + 136) == 1 && v7 <= (-1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5)))
  {
    v7 = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5);
  }

  if (v5 >= v7)
  {
    (*(**(a1 + 560) + 16))(v10);
    sub_19D3BA6D0(a2, v10);
    return sub_19D3715C0(v10);
  }

  else
  {
    v8 = (*(a1 + 10672) + 96 * (-991146299 * ((*(a1 + 16) - *(a1 + 8)) >> 3)));

    return sub_19D3BA6D0(a2, v8);
  }
}

void sub_19D3D2548(uint64_t a1, __int128 **a2, double a3)
{
  sub_19D3C6444(a2, &__p);
  v5 = sub_19D3D4738(a1 + 176, &__p);
  v7 = sqrt(v6);
  v19 = v7;
  v20 = v5;
  v8 = v5 - (*(a1 + 528) + *(a1 + 544));
  v9 = v8 / v7;
  v10 = erfc(v8 / v7 * -0.707106781) * (0.5 * v8);
  v11 = v10 + v7 * 0.39894228 * exp(v9 * v9 * -0.5);
  v18 = v11;
  v12 = *(a1 + 160);
  if (v12 >= *(a1 + 168))
  {
    sub_19D3CD37C((a1 + 152), &__p, &v20, &v19, &v18);
  }

  else
  {
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    if (v22 != __p)
    {
      if (((v22 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(v12 + 24) = v23;
    *(v12 + 32) = v5;
    *(v12 + 40) = v7;
    *(v12 + 48) = v11;
    v13 = v12 + 56;
    *(a1 + 160) = v12 + 56;
  }

  *(a1 + 160) = v13;
  v14 = *(a1 + 464);
  v15 = v14 + 1;
  *(a1 + 464) = v14 + 1;
  v16 = *(a1 + 440);
  v17 = (*(a1 + 448) - v16) >> 3;
  if (v14 + 1 <= v17)
  {
    if (v14 + 1 < v17)
    {
      *(a1 + 448) = v16 + 8 * v14 + 8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 440, v14 + 1 - v17);
    v15 = *(a1 + 464);
    v16 = *(a1 + 440);
  }

  *(v16 + 8 * v15 - 8) = a3;
  sub_19D3D6448(a1 + 176, &__p);
  sub_19D3D7570(a1 + 472, a1 + 176);
}

void sub_19D3D2780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_19D3715C0(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

long double sub_19D3D27CC(uint64_t a1, double a2, double a3)
{
  v4 = a2 - (*(a1 + 48) + *(a1 + 64));
  v5 = v4 / a3;
  v6 = erfc(v4 / a3 * -0.707106781) * (0.5 * v4);
  return v6 + a3 * 0.39894228 * exp(v5 * v5 * -0.5);
}

void sub_19D3D284C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1[9];
  v2 = v1[10];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = v1[12];
  v6 = HIDWORD(v5);
  if (v5 << 32)
  {
    v4 = *(a1 + 8);
    if (!v6)
    {
      __p = 0;
      v12 = 0;
      v14 = 0;
      v13 = 0;
      sub_19D3D2DC4(v4);
      operator new();
    }

    if ((v1[12] & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = *(*(a1 + 8) + 96);
  if (v6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = 0;
  v8 = 0;
  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v9 = MEMORY[0];
  v15 = MEMORY[0];
  if ((a1 + 16) != &__p)
  {
    sub_19D3C4E20((a1 + 16), 0, v12, v12 >> 3);
    v8 = v14;
    v9 = v15;
    v7 = __p;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  if (v7)
  {
    v12 = v7;
    operator delete(v7);
  }
}

void sub_19D3D2D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v17)
  {
    operator delete(v17);
    if (!v15)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_7;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

double sub_19D3D2DC4(uint64_t a1)
{
  if (*(a1 + 96))
  {
    sub_19D3D2EA8(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 232), 1, &__C, __N);
    v2 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 264), 1, &__C, *(a1 + 288));
    v3 = __C;
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v3 + v2;
  }

  else
  {
    __A[0] = 0;
    vDSP_meanvD(*(a1 + 264), 1, __A, *(a1 + 288));
    return *__A;
  }
}

void sub_19D3D2E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3D2EA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 96);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

void sub_19D3D310C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      *(a9 + 8) = v12;
      operator delete(v12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a9 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

double sub_19D3D3160(uint64_t a1, uint64_t a2, const double **a3)
{
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, *(a2 + 24));
  cblas_dnrm2_NEWLAPACK();
  return v5 * v5 / (*(a1 + 24) * *(a1 + 24));
}

void sub_19D3D3298(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3D32D4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19D370C7C(&v15, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BB618;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v15);
  sub_19D370EB8((a1 + 40), &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }

  v10 = v15;
  if (v15)
  {
    v11 = v16;
    v12 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = *(v11 - 25);
        v11 -= 6;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v15;
    }

    v16 = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F10BB5C0;
  *(a1 + 64) = 5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_19D3D341C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34((v9 + 16));
  sub_19D3708F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3D3460(uint64_t a1)
{
  *a1 = &unk_1F10BB5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  *a1 = &unk_1F10BB618;
  sub_19D3708F4((a1 + 16));
  return a1;
}

void sub_19D3D34FC(void *__p)
{
  *__p = &unk_1F10BB5C0;
  v2 = __p[9];
  if (v2)
  {
    v3 = __p[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = __p[9];
    }

    __p[10] = v2;
    operator delete(v4);
  }

  *__p = &unk_1F10BB618;
  v5 = __p[5];
  if (v5)
  {
    v6 = __p[6];
    v7 = __p[5];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[5];
    }

    __p[6] = v5;
    operator delete(v7);
  }

  v9 = __p[2];
  if (v9)
  {
    v10 = __p[3];
    v11 = __p[2];
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p[2];
    }

    __p[3] = v9;
    operator delete(v11);
  }

  operator delete(__p);
}

void sub_19D3D3638(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D3D4010(a1);
  v6 = *(a1 + 72);
  if (v6 != *(a1 + 80))
  {
    sub_19D3BA6D0(a3, *(a1 + 72));
    *(a3 + 96) = *(v6 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v92, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    return;
  }

  v80 = a3;
  sub_19D3C6024(a2, &v96);
  sub_19D3D4320(a2, v93);
  v7 = v94;
  if (v94 != v95)
  {
    while (1)
    {
      v8 = *(v7 + 28);
      v9 = HIDWORD(v8);
      sub_19D3BA6D0(v92, &v96[12 * v8]);
      v81 = v9;
      if (v9 >= 1)
      {
        break;
      }

LABEL_91:
      sub_19D3715C0(v92);
      v73 = v7[1];
      if (v73)
      {
        do
        {
          v74 = v73;
          v73 = *v73;
        }

        while (v73);
      }

      else
      {
        do
        {
          v74 = v7[2];
          v75 = *v74 == v7;
          v7 = v74;
        }

        while (!v75);
      }

      v7 = v74;
      if (v74 == v95)
      {
        goto LABEL_97;
      }
    }

    v10 = 0;
    while (1)
    {
      sub_19D3D4448(a1, v92, &__A);
      sub_19D3709B0(v92, &__A);
      sub_19D2A3E48(v91, v91[1]);
      sub_19D2A3E48(v90, v90[1]);
      v11 = __p;
      if (__p)
      {
        v12 = v89;
        v13 = __p;
        if (v89 != __p)
        {
          do
          {
            v14 = *(v12 - 4);
            if (v14)
            {
              *(v12 - 3) = v14;
              operator delete(v14);
            }

            v15 = v12 - 7;
            if (*(v12 - 33) < 0)
            {
              operator delete(*v15);
            }

            v12 -= 7;
          }

          while (v15 != v11);
          v13 = __p;
        }

        v89 = v11;
        operator delete(v13);
      }

      v16 = __A;
      if (*&__A != 0.0)
      {
        v17 = v87;
        v18 = __A;
        if (v87 != __A)
        {
          do
          {
            v19 = *(v17 - 4);
            if (v19)
            {
              *(v17 - 3) = v19;
              operator delete(v19);
            }

            v20 = (v17 - 7);
            if (*(v17 - 33) < 0)
            {
              operator delete(*v20);
            }

            v17 -= 7;
          }

          while (v20 != v16);
          v18 = __A;
        }

        v87 = v16;
        operator delete(v18);
      }

      v21 = *(a1 + 8);
      sub_19D3C6444(v92, &__B);
      v22 = *(v21 + 8);
      if (*(v22 + 96))
      {
        sub_19D3D2EA8(*(v21 + 8), v98);
        *&__A = 0.0;
        vDSP_dotprD(v98[0], 1, *(v22 + 232), 1, &__A, v99);
        v23 = __A;
        *&__A = 0.0;
        vDSP_meanvD(*(v22 + 264), 1, &__A, *(v22 + 288));
        v24 = __A;
        v26 = *(v22 + 192);
        v25 = *(v22 + 196);
        v101 = 0.0;
        v102 = 0;
        __C = 0.0;
        if (v25 * v26)
        {
          if (((v25 * v26) & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v103 = v26;
        v104 = v25;
        if (v26)
        {
          v29 = *(v22 + 196);
          if (v29)
          {
            v30 = 0;
            v31 = *(v22 + 168);
            v32 = 8 * v29;
            if (v31 + 8 * v26 * v29)
            {
              v33 = v31 >= 8 * v29 + (8 * v26 - 8) * v25;
            }

            else
            {
              v33 = 1;
            }

            v35 = !v33 || (v25 | v29) < 0;
            v36 = (v29 < 6) | v35;
            v37 = (v31 + 16);
            v38 = 16;
            v39 = 8 * v25;
            v40 = 0;
            do
            {
              if (v36)
              {
                v41 = 0;
              }

              else
              {
                v42 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                v43 = v38;
                v44 = v37;
                do
                {
                  v45 = *v44;
                  *(v43 - 1) = *(v44 - 1);
                  *v43 = v45;
                  v44 += 2;
                  v43 += 2;
                  v42 -= 4;
                }

                while (v42);
                v41 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == v29)
                {
                  goto LABEL_46;
                }
              }

              v46 = v29 - v41;
              v47 = 8 * v41;
              v48 = (v40 + 8 * v41);
              v49 = (v31 + v47);
              do
              {
                v50 = *v49++;
                *v48++ = v50;
                --v46;
              }

              while (v46);
LABEL_46:
              ++v30;
              v37 = (v37 + v32);
              v38 += v39;
              v40 += v39;
              v31 += v32;
            }

            while (v30 != v26);
          }

          if (v26 >= 1)
          {
            v51 = 0;
            v52 = 1;
            v53 = -1;
            do
            {
              if (v29 <= v52)
              {
                v54 = v52;
              }

              else
              {
                v54 = v29;
              }

              if (v51 + 1 < v29)
              {
                v55 = 0;
                v56 = v54 + v53;
                v57 = 8 * v51 * v25;
                if ((v54 + v53) < 4)
                {
                  goto LABEL_67;
                }

                if (v54 - v51 + v52 - 2 < v52)
                {
                  goto LABEL_67;
                }

                v58 = v56 & 0xFFFFFFFC;
                v55 = v56 & 0xFFFFFFFC;
                v59 = v52;
                do
                {
                  v60 = (v57 + 8 * v59);
                  *v60 = 0uLL;
                  v60[1] = 0uLL;
                  v59 += 4;
                  v58 -= 4;
                }

                while (v58);
                if (v56 != v55)
                {
LABEL_67:
                  v61 = v55 + v52;
                  do
                  {
                    *(v57 + 8 * v61++) = 0;
                  }

                  while (v54 != v61);
                }
              }

              ++v51;
              ++v52;
              --v53;
            }

            while (v51 != v26);
          }
        }

        sub_19D3C8BF8(&__C, v98, &__A);
        if (__C != 0.0)
        {
          v101 = __C;
          operator delete(*&__C);
        }

        v62 = *(v22 + 24);
        if (v83 != __B)
        {
          if (((v83 - __B) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        vDSP_vsubD(__B, 1, 0, 1, 0, 1, v84);
        cblas_dnrm2_NEWLAPACK();
        v64 = v63;
        v65 = *(v22 + 32);
        __C = 0.0;
        vDSP_dotprD(__A, 1, __A, 1, &__C, __p);
        v66 = __C;
        if (*&__A != 0.0)
        {
          v87 = __A;
          operator delete(__A);
        }

        v67 = -(v66 - exp(v64 * v64 * -0.5 / (v65 * v65)) * v62);
        if (v67 > 2.22044605e-16)
        {
          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        v69 = *(v22 + 16);
        if (v98[0])
        {
          v98[1] = v98[0];
          operator delete(v98[0]);
        }

        v27 = *&v24 + *&v23;
        v28 = sqrt(v69 + v68);
        if (v28 < 0.00000001)
        {
          goto LABEL_87;
        }
      }

      else
      {
        *&__A = 0.0;
        vDSP_meanvD(*(v22 + 264), 1, &__A, *(v22 + 288));
        v27 = *&__A;
        v28 = sqrt(sub_19D3D4858(v22, &__B));
        if (v28 < 0.00000001)
        {
          goto LABEL_87;
        }
      }

      v70 = *(*(v21 + 8) + 96);
      if (v70 > 0)
      {
        if (*(v21 + 56) != v70)
        {
          (*(*v21 + 16))(v21);
        }

        (**v21)(v21, v27, v28);
        goto LABEL_88;
      }

LABEL_87:
      v71 = (*(*v21 + 8))(v21);
LABEL_88:
      v72 = *&v71;
      if (__B)
      {
        v83 = __B;
        operator delete(__B);
      }

      v85 = v72;
      sub_19D3C6830((a1 + 64), v92, &v85);
      if (++v10 == v81)
      {
        goto LABEL_91;
      }
    }
  }

LABEL_97:
  v76 = *(a1 + 72);
  sub_19D3BA6D0(v80, v76);
  *(v80 + 96) = v76[12];
  sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v92, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
  sub_19D2AD8CC(&v94, v95[0]);
  v77 = v96;
  if (v96)
  {
    v78 = v97;
    v79 = v96;
    if (v97 != v96)
    {
      do
      {
        v78 = sub_19D3715C0(v78 - 96);
      }

      while (v78 != v77);
      v79 = v96;
    }

    v97 = v77;
    operator delete(v79);
  }
}

void sub_19D3D3E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, void *a43)
{
  sub_19D3715C0(v43);
  sub_19D2AD8CC(&a42, a43);
  sub_19D372E78((v44 - 240));
  _Unwind_Resume(a1);
}

void sub_19D3D4010(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 5;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v3 = *(a1 + 72);
  v2 = a1 + 72;
  if (v3 == *(a1 + 80))
  {
    v12 = 0;
    *(a1 + 64) = 5;
    if ((a1 + 64) == &v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    sub_19D3BA6D0(v17, v3);
    v17[12] = *(v3 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), __p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    v4 = *(a1 + 8);
    sub_19D3C6444(v17, __p);
    v5.n128_f64[0] = sub_19D3D4738(*(v4 + 8), __p);
    v7 = sqrt(v6);
    if (v7 < 0.00000001 || (v8 = *(*(v4 + 8) + 96), v8 <= 0))
    {
      v10 = (*(*v4 + 8))(v4, v5);
    }

    else
    {
      if (*(v4 + 56) != v8)
      {
        v9 = v5.n128_u64[0];
        (*(*v4 + 16))(v4);
        v5.n128_u64[0] = v9;
      }

      (**v4)(v4, v5, v7);
    }

    *&v11 = v10;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v16 = v11;
    if (*&v11 > (*(**(a1 + 8) + 8))(*(a1 + 8)))
    {
      sub_19D3C6830(&v18, v17, &v16);
    }

    sub_19D3715C0(v17);
    v3 = *(a1 + 72);
  }

  while (v3 != *(a1 + 80));
  v12 = v19;
  *(a1 + 64) = v18;
  if ((a1 + 64) != &v18)
  {
LABEL_17:
    sub_19D3C6B24(v2, v12, v20, 0x4EC4EC4EC4EC4EC5 * (v20 - v12));
    v12 = v19;
  }

LABEL_18:
  if (v12)
  {
    v13 = v20;
    v14 = v12;
    if (v20 != v12)
    {
      do
      {
        v13 = sub_19D3715C0((v13 - 13));
      }

      while (v13 != v12);
      v14 = v19;
    }

    v20 = v12;
    operator delete(v14);
  }
}

void sub_19D3D42D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D3715C0(va);
  sub_19D3C5CB8(v6 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3D42F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D3715C0(&a14);
  sub_19D3C5CB8(v14 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3D4320(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = a2 + 16;
  *(a2 + 24) = 0;
  sub_19D3C721C(a1, __p);
  sub_19D3700AC(v7, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v3 = 50;
  do
  {
    v5 = sub_19D3C759C(v7);
    v4 = sub_19D3C73D0(a2, &v5);
    ++*v4;
    --v3;
  }

  while (v3);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::random_device::~random_device(&v8);
}

void sub_19D3D43E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2AD8CC(v14, *v15);
    _Unwind_Resume(a1);
  }

  sub_19D2AD8CC(v14, *v15);
  _Unwind_Resume(a1);
}

void sub_19D3D4448(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X8>)
{
  sub_19D3BA6D0(a3, a2);
  sub_19D3C77B4(a2, v8);
  sub_19D3D45D8(a1, v8, &v9);
  sub_19D3C7B18(a2, v6);
  sub_19D3D4688(a1, v6, &__p);
  sub_19D3C7DCC(a3);
  sub_19D3C7F7C(a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v9)
  {
    *(&v9 + 1) = v9;
    operator delete(v9);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_19D3D4518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 64);
    if (!v21)
    {
LABEL_3:
      v22 = a17;
      if (!a17)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 64);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 56) = v21;
  operator delete(v21);
  v22 = a17;
  if (!a17)
  {
LABEL_4:
    sub_19D3715C0(v18);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v22);
  sub_19D3715C0(v18);
  _Unwind_Resume(a1);
}

double sub_19D3D45D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36EBA8((a1 + 16)))
  {
    sub_19D36EC54((a1 + 16), v7);
    sub_19D436700(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D3D4688@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36F6A8(a1 + 16))
  {
    sub_19D36F758(a1 + 16, v7);
    sub_19D437344(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D3D4738(uint64_t a1, const double **a2)
{
  if (*(a1 + 96))
  {
    sub_19D3D2EA8(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 232), 1, &__C, __N);
    v4 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 264), 1, &__C, *(a1 + 288));
    v5 = __C;
    sub_19D3D4920(a1, a2, __A);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v5 + v4;
  }

  else
  {
    v7 = sub_19D3D2DC4(a1);
    sub_19D3D4858(a1, a2);
    return v7;
  }
}

void sub_19D3D4838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19D3D4858(uint64_t a1, const double **a2)
{
  if (*(a1 + 96))
  {
    sub_19D3D2EA8(a1, __p);
    sub_19D3D4920(a1, a2, __p);
    v5 = v4;
    v6 = *(a1 + 16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v6 + v5;
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = sub_19D3D3160(a1 + 8, a2, a2);
    return *(a1 + 16) + exp(v9 * -0.5) * v8;
  }
}

void sub_19D3D4904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3D4920(uint64_t a1, const double **a2, uint64_t a3)
{
  sub_19D3C88B4(a1 + 168, __p);
  sub_19D3C8BF8(__p, a3, __B);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = sub_19D3D3160(a1 + 8, a2, a2);
  __p[0] = 0;
  vDSP_dotprD(__B[0], 1, __B[0], 1, __p, __N);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  exp(v6 * -0.5);
}

void sub_19D3D4A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3D4A34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_19D370C7C(&v36, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BB618;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v36);
  sub_19D370EB8((a1 + 40), &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v39;
    v10 = __p;
    if (v39 != __p)
    {
      do
      {
        v11 = *(v9 - 17);
        v9 -= 5;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v39 = v8;
    operator delete(v10);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v37;
    v14 = v36;
    if (v37 != v36)
    {
      do
      {
        v15 = *(v13 - 25);
        v13 -= 6;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v36;
    }

    v37 = v12;
    operator delete(v14);
  }

  *a1 = &unk_1F10BB648;
  v16 = sub_19D36EBA8(a3);
  *(a1 + 72) = 0u;
  *(a1 + 64) = &unk_1F10BB3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0x7FF0000000000000;
  *(a1 + 168) = -5;
  *(a1 + 176) = 0;
  sub_19D3CA020(a1 + 64, v16);
  sub_19D3C21BC(a1 + 184);
  sub_19D36EC54(a3, v34);
  sub_19D3CA6A8(a1 + 64, v34);
  sub_19D3CA7E0(a1 + 64, v35);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v17 = 0;
    *(a1 + 7776) = a4;
    v18 = 1;
    v19 = a4;
    do
    {
      v20 = 1812433253 * (v19 ^ (v19 >> 30));
      v19 = v20 + v18;
      *(a1 + 7780 + 4 * v17) = v17 + v20 + 1;
      ++v18;
      ++v17;
    }

    while (v17 != 623);
    *(a1 + 10272) = 0;
    *(a1 + 184) = a4;
    v21 = 1;
    v22 = 47;
    v23 = a4;
    do
    {
      v24 = 1812433253 * (v23 ^ (v23 >> 30));
      v23 = v24 + v21;
      *(a1 + 4 * v22) = v22 + v24 - 46;
      ++v21;
      ++v22;
    }

    while (v22 != 670);
    v25 = 0;
    *(a1 + 2680) = 0;
    *(a1 + 2712) = a4;
    v26 = 1;
    v27 = a4;
    do
    {
      v28 = 1812433253 * (v27 ^ (v27 >> 30));
      v27 = v28 + v26;
      *(a1 + 2716 + 4 * v25) = v25 + v28 + 1;
      ++v26;
      ++v25;
    }

    while (v25 != 623);
    v29 = 0;
    *(a1 + 5208) = 0;
    *(a1 + 5232) = a4;
    v30 = 1;
    v31 = a4;
    do
    {
      v32 = 1812433253 * (v31 ^ (v31 >> 30));
      v31 = v32 + v30;
      *(a1 + 5236 + 4 * v29) = v29 + v32 + 1;
      ++v30;
      ++v29;
    }

    while (v29 != 623);
    *(a1 + 7728) = 0;
    sub_19D43888C();
  }

  return a1;
}

void sub_19D3D4D48(_Unwind_Exception *a1)
{
  sub_19D3C99D8(v3);
  *v1 = v2;
  sub_19D3708F4((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_19D3D4E08(uint64_t a1)
{
  v1 = sub_19D3D5370(a1);

  operator delete(v1);
}

void sub_19D3D4E30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  *&v14 = &v14 + 8;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  sub_19D3BA6D0(a2, v13);
  *(a2 + 96) = v4;
  sub_19D3715C0(v13);
  sub_19D370C7C(&v18, (a1 + 16));
  sub_19D370EB8(&v20, (a1 + 40));
  sub_19D370344(&v18, 5, &v22);
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = v20;
    if (v21 != v20)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20;
    }

    v21 = v5;
    operator delete(v7);
  }

  v9 = v18;
  if (v18)
  {
    v10 = v19;
    v11 = v18;
    if (v19 != v18)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v18;
    }

    v19 = v9;
    operator delete(v11);
  }

  sub_19D3D54EC(a1, v22);
}

void sub_19D3D5258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_19D3715C0(va1);
  sub_19D3715C0(va);
  sub_19D372E78((v6 - 104));
  sub_19D3715C0(v5);
  _Unwind_Resume(a1);
}

void sub_19D3D528C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(va);
  sub_19D372E78((v3 - 104));
  sub_19D3715C0(v2);
  _Unwind_Resume(a1);
}

void sub_19D3D52B0(_Unwind_Exception *a1)
{
  sub_19D3708F4((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3D52CC(_Unwind_Exception *a1)
{
  sub_19D36EE34((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3D52FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void sub_19D3D5310(_Unwind_Exception *a1)
{
  sub_19D3C71A4((v2 - 80));
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3D5334(_Unwind_Exception *a1)
{
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3D5370(uint64_t a1)
{
  *a1 = &unk_1F10BB648;
  std::random_device::~random_device((a1 + 10280));
  std::random_device::~random_device((a1 + 7736));
  std::random_device::~random_device((a1 + 5216));
  std::random_device::~random_device((a1 + 2688));
  *(a1 + 64) = &unk_1F10BB3E8;
  sub_19D437C34(*(a1 + 72));
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  *a1 = &unk_1F10BB618;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 40);
    }

    *(a1 + 48) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_19D3D54EC(uint64_t a1, __int128 **a2)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_19D3C77B4(a2, &__p);
  sub_19D3D5988(a1 + 64, v4, &__p);
}

void sub_19D3D58DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_19D3715C0(&a17);
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_19D3D5988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

void sub_19D3D5D64(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = v3 - v4 - 8;
    if (v7 < 0x18 || -v4 < 0x20)
    {
      v9 = v4;
    }

    else
    {
      v8 = (v7 >> 3) + 1;
      v6 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      v9 = (v4 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
      v10 = (v4 + 16);
      v11 = 16;
      v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 16) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 32;
        v12 -= 4;
      }

      while (v12);
      if (v8 == v6)
      {
        goto LABEL_14;
      }
    }

    v14 = (8 * v6);
    do
    {
      v15 = *v9++;
      *v14++ = v15;
    }

    while (v9 != v3);
  }

LABEL_14:
  if (*a2 == a2[1])
  {
    sub_19D3D5F08(a3, &__p);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_19D3D5F08(a3, &__p);
    __break(1u);
  }
}

void sub_19D3D5EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3D5F08(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  sub_19D3C7B18(a1[1], v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  v16 = 0;
  v17 = 0;
  __p = 0;
  v18 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5.n128_f64[0] = sub_19D3D4738(*(v3 + 8), &__p);
  v7 = sqrt(v6);
  if (v7 < 0.00000001 || (v8 = *(*(v3 + 8) + 96), v8 <= 0))
  {
    v10 = (*(*v3 + 8))(v3, v5);
  }

  else
  {
    if (*(v3 + 56) != v8)
    {
      v9 = v5.n128_u64[0];
      (*(*v3 + 16))(v3);
      v5.n128_u64[0] = v9;
    }

    (**v3)(v3, v5, v7);
  }

  v11 = v10;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return *&v11;
}

void sub_19D3D6264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_19D4553E8(v14, &a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3D628C(uint64_t a1)
{
  *a1 = &unk_1F10BB500;
  v2 = *(a1 + 10672);
  if (v2)
  {
    v3 = *(a1 + 10680);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 96);
      }

      while (v3 != v2);
      v4 = *(a1 + 10672);
    }

    *(a1 + 10680) = v2;
    operator delete(v4);
  }

  std::random_device::~random_device((a1 + 10664));
  std::random_device::~random_device((a1 + 8120));
  std::random_device::~random_device((a1 + 5600));
  std::random_device::~random_device((a1 + 3072));
  v5 = *(a1 + 560);
  *(a1 + 560) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 480) = &unk_1F10BB598;
  v6 = *(a1 + 496);
  if (v6)
  {
    *(a1 + 504) = v6;
    operator delete(v6);
  }

  sub_19D3CD11C((a1 + 176));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      v10 = *(a1 + 160);
      do
      {
        v12 = *(v10 - 56);
        v10 -= 56;
        v11 = v12;
        if (v12)
        {
          *(v8 - 48) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_19D3715C0(v14 - 104);
      }

      while (v14 != v13);
      v15 = *(a1 + 8);
    }

    *(a1 + 16) = v13;
    operator delete(v15);
  }

  return a1;
}

void sub_19D3D6448(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 72);
  v4 = *(a1 + 72);
  v6 = *(a1 + 96);
  v7 = *(a2 + 24);
  *(a1 + 96) = v6 + 1;
  *(a1 + 100) = v7;
  v8 = v7 * (v6 + 1);
  v9 = (*(a1 + 80) - v4) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      *(a1 + 80) = v4 + 8 * v8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 72, v8 - v9);
    v6 = *(a1 + 96) - 1;
  }

  sub_19D3C8D6C(a2, __p);
  v10 = *(a1 + 100);
  v11 = __p[0];
  if (!v10)
  {
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = *v5;
  if (v10 >= 0xA && (v13 = 8 * v10 * v6 + v12, v13 - __p[0] >= 0x20))
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (__p[0] + 16);
    v21 = (v13 + 16);
    v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v20;
      *(v21 - 1) = *(v20 - 1);
      *v21 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v14 == v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v10 - v14;
  v16 = 8 * v14;
  v17 = (v12 + v16 + 8 * v6 * v10);
  v18 = &v11[v16];
  do
  {
    v19 = *v18;
    v18 += 8;
    *v17++ = v19;
    --v15;
  }

  while (v15);
LABEL_17:
  __p[1] = v11;
  operator delete(v11);
LABEL_18:
  sub_19D3D658C(a1, 1, 1);
}

void sub_19D3D658C(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = (a1 + 104);
    v4 = *(a1 + 104);
    v6 = *(a1 + 96);
    *(a1 + 128) = v6;
    v7 = (*(a1 + 112) - v4) >> 3;
    v14 = v6;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(a1 + 112) = v4 + 8 * v6;
      }
    }

    else
    {
      sub_19D3628E0(a1 + 104, v6 - v7);
      v6 = *(a1 + 96);
      v14 = v6;
    }

    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 100);
        if (v10)
        {
          if ((v10 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v16 = 0;
        LODWORD(v18) = 0;
        v17 = 0;
        __C = 0.0;
        vDSP_meanvD(*(a1 + 264), 1, &__C, *(a1 + 288));
        *(*v5 + 8 * v9) = __C;
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        ++v9;
        v8 += 8;
      }

      while (v9 != v14);
    }
  }

  sub_19D3D68FC(a1 + 72, &__p);
  if ((a1 + 136) != &__p)
  {
    sub_19D3C4E20((a1 + 136), __p, v16, (v16 - __p) >> 3);
  }

  v11 = __p;
  *(a1 + 160) = v18;
  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }

  sub_19D3CE264(a1 + 136, &__p);
  if ((a1 + 168) != &__p)
  {
    sub_19D3C4E20((a1 + 168), __p, v16, (v16 - __p) >> 3);
  }

  v12 = __p;
  *(a1 + 192) = v18;
  if (v12)
  {
    v16 = v12;
    operator delete(v12);
  }

  sub_19D3D6EFC(a1);
  if (a3)
  {
    sub_19D3D703C(a1);
  }
}

void sub_19D3D68B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3D68FC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v2)
  {
    operator new();
  }

  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
}

void sub_19D3D6E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (v19)
  {
    operator delete(v19);
    if (!v20)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v20)
  {
    goto LABEL_3;
  }

  operator delete(v20);
  if (!v22)
  {
LABEL_4:
    if (!v21)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v22);
  if (!v21)
  {
LABEL_5:
    v24 = a19;
    if (!a19)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v21);
  v24 = a19;
  if (!a19)
  {
LABEL_6:
    *(a10 + 8) = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(v24);
  *(a10 + 8) = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_19D3D6EFC(uint64_t a1)
{
  sub_19D3C88B4(a1 + 168, v6);
  sub_19D3D7264(a1, v2);
  sub_19D3C8BF8(v6, v2, &__p);
  if ((a1 + 232) != &__p)
  {
    sub_19D3C4E20((a1 + 232), __p, v4, (v4 - __p) >> 3);
  }

  *(a1 + 256) = v5;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }

  sub_19D3C8EAC(v6, &__p);
  sub_19D3CE9F8(&__p, a1 + 232);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_19D3D6FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3D703C(int32x2_t *a1)
{
  v2 = a1[12].u32[0];
  if (v2)
  {
    operator new();
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    *(8 * v3) = 0;
    ++v4;
    v6 = v5 / 0;
    v3 = v4;
    ++v5;
  }

  while (v6 != 0 / 0uLL || v4 != 0 % 0uLL);
  sub_19D3C4E20(&a1[25], 0, 0, 0);
  a1[28] = (v2 | (v2 << 32));
  sub_19D3C88B4(&a1[21], &__p);
  sub_19D3CEB10(&__p, a1 + 25);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_19D3C8EAC(&a1[21], &__p);
  sub_19D3CEB10(&__p, a1 + 25);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_19D3D7234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3D7264(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 288);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(0, 1, 0, 1, 0, 1, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D3D7540(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D3D7570(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v6 = &unk_1F10BB3E8;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = -1;
  v13 = 0x7FF0000000000000;
  v14 = -5;
  v15 = 0;
  sub_19D3CA020(&v6, 2u);
  __p = 0;
  v3 = 0;
  v5 = 0;
  v4 = 0;
  operator new();
}

void sub_19D3D7844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (!__p)
  {
    sub_19D3C99D8(&a25);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_19D3C99D8(&a25);
  _Unwind_Resume(a1);
}

void sub_19D3D78D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_19D36CF9C(va);
  sub_19D3C99D8(va1);
  _Unwind_Resume(a1);
}

void sub_19D3D78EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

double sub_19D3D7CC8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1[1] - *a1) >> 3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v43 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = 0;
    v8 = v5 - v6 - 8;
    if (v8 < 0x18)
    {
      goto LABEL_10;
    }

    if (-v6 < 0x20)
    {
      goto LABEL_10;
    }

    v9 = (v8 >> 3) + 1;
    v7 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 8 * (v9 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v6 + 16);
    v12 = 16;
    v13 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 16) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 32;
      v13 -= 4;
    }

    while (v13);
    v6 = v10;
    if (v9 != v7)
    {
LABEL_10:
      v15 = (8 * v7);
      do
      {
        v16 = *v6;
        v6 += 8;
        *v15++ = v16;
      }

      while (v6 != v5);
    }
  }

  if (*a2 == a2[1])
  {
    sub_19D3D7FC4(a3, &__p, 0, &v33);
    v17 = v33;
    if (v36 == 1)
    {
      v31 = v34;
      if (v34)
      {
        v35 = v34;
        goto LABEL_30;
      }
    }
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v39 = 0;
    sub_19D3D7FC4(a3, &__p, 1, &v33);
    v17 = v33;
    sub_19D3D0C10(v37, &v34);
    if (v36 == 1 && v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v18 = v38;
    if (v38)
    {
      v19 = 0;
      v20 = v37[0];
      v21 = *a2;
      if (v38 < 4)
      {
        goto LABEL_22;
      }

      if ((v21 - v37[0]) < 0x20)
      {
        goto LABEL_22;
      }

      v19 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v37[0] + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_22:
        v26 = v18 - v19;
        v27 = 8 * v19;
        v28 = (v21 + 8 * v19);
        v29 = (v20 + v27);
        do
        {
          v30 = *v29++;
          *v28++ = v30;
          --v26;
        }

        while (v26);
      }
    }

    if (v39 == 1)
    {
      v31 = v37[0];
      if (v37[0])
      {
        v37[1] = v37[0];
LABEL_30:
        operator delete(v31);
      }
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_19D3D7F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D3D7FC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  sub_19D3D8F6C(v11, *a1);
  if (v12 != a2)
  {
    sub_19D3C4E20(v12, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v13 = *(a2 + 24);
  v7 = *a2;
  v11[3] = exp(*v7 + *v7);
  v11[4] = exp(*(v7 + 1));
  sub_19D3D658C(v11, 0, a3);
  v8 = sub_19D3D8190(v11);
  if (a3)
  {
    sub_19D3D83B8(v11, &v10);
  }

  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 40) = 0;
  return sub_19D3CD11C(v11);
}

double sub_19D3D8190(uint64_t a1)
{
  sub_19D3D7264(a1, __A);
  __C = 0.0;
  vDSP_dotprD(__A[0], 1, *(a1 + 232), 1, &__C, __N);
  v2 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (*(a1 + 196) >= *(a1 + 192))
  {
    v3 = *(a1 + 192);
  }

  else
  {
    v3 = *(a1 + 196);
  }

  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  LODWORD(__A[0]) = 0;
  vvlog(0, 0, __A);
  __A[0] = 0;
  vDSP_sveD(0, 1, __A, 0);
  return *(a1 + 96) * -0.918938533 - (*__A - v2 * -0.5);
}

void sub_19D3D8360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v13)
  {
    operator delete(v13);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v11);
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if (!v11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D3D83B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(v12, 0, sizeof(v12));
  v4 = *(a1 + 200);
  v3 = *(a1 + 208);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a1 + 232);
  v13 = *(a1 + 224);
  v6 = *(a1 + 240);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = *(a1 + 256);
  sub_19D3C8D6C(a1 + 232, __B);
  v8 = v11;
  v9 = (v11 * v7);
  if (v9)
  {
    if ((v9 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mmulD(0, 1, __B[0], 1, 0, 1, v7, v11, 1uLL);
  vDSP_vsubD(v12[0], 1, 0, 1, 0, 1, v9);
  sub_19D3C4E20(v12, 0, 0, 0);
  v13 = v7 | (v8 << 32);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  operator new();
}

void sub_19D3D8D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (v29)
  {
    operator delete(v29);
    if (!v25)
    {
LABEL_3:
      if (!v28)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  operator delete(v25);
  if (!v28)
  {
LABEL_4:
    if (!v27)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  operator delete(v28);
  if (!v27)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
      if (!v26)
      {
LABEL_8:
        v31 = a24;
        if (!a24)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if (!v26)
    {
      goto LABEL_8;
    }

    operator delete(v26);
    v31 = a24;
    if (!a24)
    {
LABEL_18:
      _Unwind_Resume(exception_object);
    }

LABEL_17:
    operator delete(v31);
    goto LABEL_18;
  }

LABEL_5:
  operator delete(v27);
  goto LABEL_6;
}

uint64_t sub_19D3D8F6C(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 24);
  *(result + 40) = 0;
  *(result + 24) = v2;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v4 = *(a2 + 40);
  v3 = *(a2 + 48);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a2 + 64);
  *(result + 72) = 0;
  *(result + 64) = v5;
  *(result + 80) = 0;
  *(result + 88) = 0;
  v7 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = *(a2 + 96);
  *(result + 104) = 0;
  *(result + 96) = v8;
  *(result + 112) = 0;
  *(result + 120) = 0;
  v10 = *(a2 + 104);
  v9 = *(a2 + 112);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v11 = *(a2 + 128);
  *(result + 136) = 0;
  *(result + 128) = v11;
  *(result + 144) = 0;
  *(result + 152) = 0;
  v13 = *(a2 + 136);
  v12 = *(a2 + 144);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v14 = *(a2 + 160);
  *(result + 168) = 0;
  *(result + 160) = v14;
  *(result + 176) = 0;
  *(result + 184) = 0;
  v16 = *(a2 + 168);
  v15 = *(a2 + 176);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v17 = *(a2 + 192);
  *(result + 200) = 0;
  *(result + 192) = v17;
  *(result + 208) = 0;
  *(result + 216) = 0;
  v19 = *(a2 + 200);
  v18 = *(a2 + 208);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v20 = *(a2 + 224);
  *(result + 232) = 0;
  *(result + 224) = v20;
  *(result + 240) = 0;
  *(result + 248) = 0;
  v22 = *(a2 + 232);
  v21 = *(a2 + 240);
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 256) = *(a2 + 256);
  *(result + 272) = 0;
  *(result + 280) = 0;
  *(result + 264) = 0;
  v24 = *(a2 + 264);
  v23 = *(a2 + 272);
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 288) = *(a2 + 288);
  return result;
}

void sub_19D3D92D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10)
{
  v17 = v10[33];
  if (v17)
  {
    v10[34] = v17;
    operator delete(v17);
    v18 = *v11;
    if (!*v11)
    {
LABEL_3:
      v19 = *v15;
      if (!*v15)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v18 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  v10[30] = v18;
  operator delete(v18);
  v19 = *v15;
  if (!*v15)
  {
LABEL_4:
    v20 = *v14;
    if (!*v14)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10[26] = v19;
  operator delete(v19);
  v20 = *v14;
  if (!*v14)
  {
LABEL_5:
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10[22] = v20;
  operator delete(v20);
  v21 = *v13;
  if (!*v13)
  {
LABEL_6:
    v22 = *v12;
    if (!*v12)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10[18] = v21;
  operator delete(v21);
  v22 = *v12;
  if (!*v12)
  {
LABEL_7:
    v23 = *a9;
    if (!*a9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v10[14] = v22;
  operator delete(v22);
  v23 = *a9;
  if (!*a9)
  {
LABEL_9:
    v24 = *a10;
    if (*a10)
    {
      v10[6] = v24;
      operator delete(v24);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_8:
  v10[10] = v23;
  operator delete(v23);
  goto LABEL_9;
}

void sub_19D3D93F4()
{
  if (!*v0)
  {
    JUMPOUT(0x19D3D9320);
  }

  JUMPOUT(0x19D3D9318);
}

void sub_19D3D9404()
{
  if (!*v0)
  {
    JUMPOUT(0x19D3D9334);
  }

  JUMPOUT(0x19D3D932CLL);
}

BOOL sub_19D3D9414(uint64_t a1, int *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Early stopping already requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 12);
  if (v3 == -1)
  {
    return 0;
  }

  v6 = *a2;
  v5 = (a2 + 2);
  if (v6 == 1 || *(a1 + 120) < *(a2 + 13) - *(a1 + 16))
  {
    sub_19D3C3D68(a1 + 24, v5);
    result = 0;
    *(a1 + 120) = *(a2 + 13);
    *(a1 + 128) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = *(a1 + 128);
    *(a1 + 128) = v8 + 1;
    result = v8 >= v3;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_19D3D9510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v30 = 0;
  v29 = &unk_1F10BB490;
  v31 = v5;
  v21[0] = 0;
  *v22 = v6;
  *&v22[4] = v7;
  memset(v23, 0, sizeof(v23));
  v24 = v25;
  v25[0] = 0;
  v26 = 0.0;
  v27[0] = 0;
  v25[1] = 0;
  v25[2] = &v26;
  v28 = 0;
  v33 = 0;
  v32 = &unk_1F10BB490;
  v34 = v5;
  v36 = 0;
  v35 = &unk_1F10BB850;
  v38 = HIDWORD(v7);
  v37 = *v22;
  sub_19D3BF1AC(v39, v23);
  v39[12] = v27[1];
  v40 = v28;
  v20 = &unk_1F10BB850;
  sub_19D3715C0(v23);
  v8 = *(a1 + 72);
  (*(**(a1 + 120) + 16))(&v29);
  v9 = *(a2 + 24);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = (*(*v9 + 48))(v9, &v29);
  (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
  std::chrono::steady_clock::now();
  LODWORD(v20) = 1;
  sub_19D3BA6D0(v21, &v29);
  v26 = v10;
  sub_19D3D0D3C(*(a1 + 120), v27);
  if (1 % v8)
  {
    goto LABEL_5;
  }

  v11 = *(a2 + 56);
  if (!v11)
  {
LABEL_17:
    sub_19D3D0FFC();
  }

  if (((*(*v11 + 48))(v11, &v20) & 1) == 0)
  {
LABEL_5:
    if (((*v32)(&v32, &v20) & 1) == 0)
    {
      v12 = (*v35)(&v35, &v20);
      sub_19D3715C0(v27);
      sub_19D3715C0(v21);
      sub_19D3715C0(&v29);
      if (v12)
      {
        goto LABEL_15;
      }

      v13 = 2;
      while (1)
      {
        (*(**(a1 + 120) + 16))(&v29);
        v14 = *(a2 + 24);
        if (!v14)
        {
          break;
        }

        v15 = (*(*v14 + 48))(v14, &v29);
        (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
        std::chrono::steady_clock::now();
        std::chrono::steady_clock::now();
        LODWORD(v20) = v13;
        sub_19D3BA6D0(v21, &v29);
        v26 = v15;
        sub_19D3D0D3C(*(a1 + 120), v27);
        if (!(v13 % v8))
        {
          v16 = *(a2 + 56);
          if (!v16)
          {
            goto LABEL_17;
          }

          if ((*(*v16 + 48))(v16, &v20))
          {
            goto LABEL_6;
          }
        }

        if ((*v32)(&v32, &v20))
        {
          goto LABEL_6;
        }

        v17 = (*v35)(&v35, &v20);
        sub_19D3715C0(v27);
        sub_19D3715C0(v21);
        sub_19D3715C0(&v29);
        ++v13;
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      sub_19D3D0FFC();
    }
  }

LABEL_6:
  sub_19D3715C0(v27);
  sub_19D3715C0(v21);
  sub_19D3715C0(&v29);
LABEL_15:
  sub_19D3D0D3C(*(a1 + 120), a3);
  v35 = &unk_1F10BB850;
  return sub_19D3715C0(v39);
}

void sub_19D3D99AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_19D3715C0(v39 + 112);
  sub_19D3715C0(v39 + 8);
  sub_19D3715C0(&a37);
  *(v40 - 240) = v37;
  sub_19D3715C0(v38 + 40);
  _Unwind_Resume(a1);
}

void sub_19D3D9A54(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 1)
  {
    if (!v1)
    {
      sub_19D3C147C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3C1834(exception, "Invalid optimizer in user config.");
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  sub_19D3D9B08();
}

void sub_19D3D9C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3D9C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3D9CB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3D9CE4(uint64_t a1, uint64_t a2)
{
  sub_19D370C7C(&v19, a2);
  sub_19D370EB8(&v21, (a2 + 24));
  v4 = *(a2 + 64);
  v23 = *(a2 + 48);
  v24 = v4;
  v25 = *(a2 + 80);
  sub_19D3B60F8(&__p, a2 + 88);
  *a1 = &unk_1F10BB228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_19D370C7C((a1 + 32), &v19);
  sub_19D370EB8((a1 + 56), &v21);
  v5 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v5;
  *(a1 + 112) = v25;
  sub_19D3B60F8(a1 + 120, &__p);
  if (v28 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = sub_19D3715C0(v7 - 96);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }
  }

  v9 = v21;
  if (v21)
  {
    v10 = v22;
    v11 = v21;
    if (v22 != v21)
    {
      do
      {
        v12 = *(v10 - 17);
        v10 -= 5;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v21;
    }

    v22 = v9;
    operator delete(v11);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }

  *a1 = &unk_1F10BB6C0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v17 = sub_19D36EBA8(a2);
  v18 = sub_19D36F6A8(a2);
  *(a1 + 216) = 0;
  *(a1 + 176) = v18 + v17;
  *(a1 + 184) = v18 + v17;
  *(a1 + 192) = xmmword_19D475EE0;
  *(a1 + 208) = 0x3FF0000000000000;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  operator new();
}

void sub_19D3DA3E8(_Unwind_Exception *a1)
{
  sub_19D372E78(v5);
  sub_19D3C1C0C((v6 + 320));
  v8 = v1[70];
  v1[70] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v4 = &unk_1F10BB758;
  v9 = *(v6 + 248);
  if (v9)
  {
    v1[63] = v9;
    operator delete(v9);
  }

  sub_19D3CD11C(v3);
  sub_19D3C3E08(v2);
  sub_19D3C1C5C(v1);
  _Unwind_Resume(a1);
}

void sub_19D3DA684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3DA6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3DA7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3DA810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3DA844(uint64_t a1)
{
  v1 = sub_19D3DE718(a1);

  operator delete(v1);
}

__int128 **sub_19D3DA86C@<X0>(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  v4 = a1 + 8;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  v6 = sub_19D36EBA8((a1 + 32));
  v7 = 5 * (sub_19D36F6A8(v4 + 24) + v6);
  if (*(v4 + 136) == 1 && v7 <= (-1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5)))
  {
    v7 = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5);
  }

  if (v5 >= v7)
  {
    (*(**(a1 + 560) + 16))(v10);
    sub_19D3BA6D0(a2, v10);
    return sub_19D3715C0(v10);
  }

  else
  {
    v8 = (*(a1 + 10672) + 96 * (-991146299 * ((*(a1 + 16) - *(a1 + 8)) >> 3)));

    return sub_19D3BA6D0(a2, v8);
  }
}

void sub_19D3DA9B0(uint64_t a1, __int128 **a2, double a3)
{
  sub_19D3C6444(a2, &__p);
  v5 = sub_19D3DCBC4(a1 + 176, &__p);
  v7 = sqrt(v6);
  v16 = v7;
  v17 = v5;
  v8 = v5 + *(a1 + 544) * v7;
  v15 = v8;
  v9 = *(a1 + 160);
  if (v9 >= *(a1 + 168))
  {
    sub_19D3CD37C((a1 + 152), &__p, &v17, &v16, &v15);
  }

  else
  {
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    if (v19 != __p)
    {
      if (((v19 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(v9 + 24) = v20;
    *(v9 + 32) = v5;
    *(v9 + 40) = v7;
    *(v9 + 48) = v8;
    v10 = v9 + 56;
    *(a1 + 160) = v9 + 56;
  }

  *(a1 + 160) = v10;
  v11 = *(a1 + 464);
  v12 = v11 + 1;
  *(a1 + 464) = v11 + 1;
  v13 = *(a1 + 440);
  v14 = (*(a1 + 448) - v13) >> 3;
  if (v11 + 1 <= v14)
  {
    if (v11 + 1 < v14)
    {
      *(a1 + 448) = v13 + 8 * v11 + 8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 440, v11 + 1 - v14);
    v12 = *(a1 + 464);
    v13 = *(a1 + 440);
  }

  *(v13 + 8 * v12 - 8) = a3;
  sub_19D3DE8D4(a1 + 176, &__p);
  sub_19D3DF9FC(a1 + 472, a1 + 176);
}

void sub_19D3DABE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_19D3715C0(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19D3DAC4C(uint64_t a1)
{
  v2 = pow(*(*(a1 + 8) + 96), vcvtd_n_f64_s32(*(*(a1 + 8) + 100), 1uLL) + 2.0);
  v3 = log(v2 * 9.8696044 / (*(a1 + 72) * 3.0));
  *(a1 + 64) = sqrt(v3 + v3);

  sub_19D3DACD8(a1);
}

void sub_19D3DACD8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1[9];
  v2 = v1[10];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = v1[12];
  v6 = HIDWORD(v5);
  if (v5 << 32)
  {
    v4 = *(a1 + 8);
    if (!v6)
    {
      __p = 0;
      v12 = 0;
      v14 = 0;
      v13 = 0;
      sub_19D3DB250(v4);
      operator new();
    }

    if ((v1[12] & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = *(*(a1 + 8) + 96);
  if (v6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = 0;
  v8 = 0;
  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v9 = MEMORY[0];
  v15 = MEMORY[0];
  if ((a1 + 16) != &__p)
  {
    sub_19D3C4E20((a1 + 16), 0, v12, v12 >> 3);
    v8 = v14;
    v9 = v15;
    v7 = __p;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  if (v7)
  {
    v12 = v7;
    operator delete(v7);
  }
}

void sub_19D3DB1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v17)
  {
    operator delete(v17);
    if (!v15)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_7;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

double sub_19D3DB250(uint64_t a1)
{
  if (*(a1 + 96))
  {
    sub_19D3DB334(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 232), 1, &__C, __N);
    v2 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 264), 1, &__C, *(a1 + 288));
    v3 = __C;
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v3 + v2;
  }

  else
  {
    __A[0] = 0;
    vDSP_meanvD(*(a1 + 264), 1, __A, *(a1 + 288));
    return *__A;
  }
}

void sub_19D3DB318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3DB334@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 96);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

void sub_19D3DB598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      *(a9 + 8) = v12;
      operator delete(v12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a9 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

double sub_19D3DB5EC(uint64_t a1, uint64_t a2, const double **a3)
{
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, *(a2 + 24));
  cblas_dnrm2_NEWLAPACK();
  return v5 * v5 / (*(a1 + 24) * *(a1 + 24));
}

void sub_19D3DB724(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3DB760(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19D370C7C(&v15, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BB7D8;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v15);
  sub_19D370EB8((a1 + 40), &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }

  v10 = v15;
  if (v15)
  {
    v11 = v16;
    v12 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = *(v11 - 25);
        v11 -= 6;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v15;
    }

    v16 = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F10BB780;
  *(a1 + 64) = 5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_19D3DB8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34((v9 + 16));
  sub_19D3708F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3DB8EC(uint64_t a1)
{
  *a1 = &unk_1F10BB780;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  *a1 = &unk_1F10BB7D8;
  sub_19D3708F4((a1 + 16));
  return a1;
}

void sub_19D3DB988(void *__p)
{
  *__p = &unk_1F10BB780;
  v2 = __p[9];
  if (v2)
  {
    v3 = __p[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = __p[9];
    }

    __p[10] = v2;
    operator delete(v4);
  }

  *__p = &unk_1F10BB7D8;
  v5 = __p[5];
  if (v5)
  {
    v6 = __p[6];
    v7 = __p[5];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[5];
    }

    __p[6] = v5;
    operator delete(v7);
  }

  v9 = __p[2];
  if (v9)
  {
    v10 = __p[3];
    v11 = __p[2];
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p[2];
    }

    __p[3] = v9;
    operator delete(v11);
  }

  operator delete(__p);
}

void sub_19D3DBAC4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D3DC49C(a1);
  v6 = *(a1 + 72);
  if (v6 != *(a1 + 80))
  {
    sub_19D3BA6D0(a3, *(a1 + 72));
    *(a3 + 96) = *(v6 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v92, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    return;
  }

  v80 = a3;
  sub_19D3C6024(a2, &v96);
  sub_19D3DC7AC(a2, v93);
  v7 = v94;
  if (v94 != v95)
  {
    while (1)
    {
      v8 = *(v7 + 28);
      v9 = HIDWORD(v8);
      sub_19D3BA6D0(v92, &v96[12 * v8]);
      v81 = v9;
      if (v9 >= 1)
      {
        break;
      }

LABEL_91:
      sub_19D3715C0(v92);
      v73 = v7[1];
      if (v73)
      {
        do
        {
          v74 = v73;
          v73 = *v73;
        }

        while (v73);
      }

      else
      {
        do
        {
          v74 = v7[2];
          v75 = *v74 == v7;
          v7 = v74;
        }

        while (!v75);
      }

      v7 = v74;
      if (v74 == v95)
      {
        goto LABEL_97;
      }
    }

    v10 = 0;
    while (1)
    {
      sub_19D3DC8D4(a1, v92, &__A);
      sub_19D3709B0(v92, &__A);
      sub_19D2A3E48(v91, v91[1]);
      sub_19D2A3E48(v90, v90[1]);
      v11 = __p;
      if (__p)
      {
        v12 = v89;
        v13 = __p;
        if (v89 != __p)
        {
          do
          {
            v14 = *(v12 - 4);
            if (v14)
            {
              *(v12 - 3) = v14;
              operator delete(v14);
            }

            v15 = v12 - 7;
            if (*(v12 - 33) < 0)
            {
              operator delete(*v15);
            }

            v12 -= 7;
          }

          while (v15 != v11);
          v13 = __p;
        }

        v89 = v11;
        operator delete(v13);
      }

      v16 = __A;
      if (*&__A != 0.0)
      {
        v17 = v87;
        v18 = __A;
        if (v87 != __A)
        {
          do
          {
            v19 = *(v17 - 4);
            if (v19)
            {
              *(v17 - 3) = v19;
              operator delete(v19);
            }

            v20 = (v17 - 7);
            if (*(v17 - 33) < 0)
            {
              operator delete(*v20);
            }

            v17 -= 7;
          }

          while (v20 != v16);
          v18 = __A;
        }

        v87 = v16;
        operator delete(v18);
      }

      v21 = *(a1 + 8);
      sub_19D3C6444(v92, &__B);
      v22 = *(v21 + 8);
      if (*(v22 + 96))
      {
        sub_19D3DB334(*(v21 + 8), v98);
        *&__A = 0.0;
        vDSP_dotprD(v98[0], 1, *(v22 + 232), 1, &__A, v99);
        v23 = __A;
        *&__A = 0.0;
        vDSP_meanvD(*(v22 + 264), 1, &__A, *(v22 + 288));
        v24 = __A;
        v26 = *(v22 + 192);
        v25 = *(v22 + 196);
        v101 = 0.0;
        v102 = 0;
        __C = 0.0;
        if (v25 * v26)
        {
          if (((v25 * v26) & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v103 = v26;
        v104 = v25;
        if (v26)
        {
          v29 = *(v22 + 196);
          if (v29)
          {
            v30 = 0;
            v31 = *(v22 + 168);
            v32 = 8 * v29;
            if (v31 + 8 * v26 * v29)
            {
              v33 = v31 >= 8 * v29 + (8 * v26 - 8) * v25;
            }

            else
            {
              v33 = 1;
            }

            v35 = !v33 || (v25 | v29) < 0;
            v36 = (v29 < 6) | v35;
            v37 = (v31 + 16);
            v38 = 16;
            v39 = 8 * v25;
            v40 = 0;
            do
            {
              if (v36)
              {
                v41 = 0;
              }

              else
              {
                v42 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                v43 = v38;
                v44 = v37;
                do
                {
                  v45 = *v44;
                  *(v43 - 1) = *(v44 - 1);
                  *v43 = v45;
                  v44 += 2;
                  v43 += 2;
                  v42 -= 4;
                }

                while (v42);
                v41 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == v29)
                {
                  goto LABEL_46;
                }
              }

              v46 = v29 - v41;
              v47 = 8 * v41;
              v48 = (v40 + 8 * v41);
              v49 = (v31 + v47);
              do
              {
                v50 = *v49++;
                *v48++ = v50;
                --v46;
              }

              while (v46);
LABEL_46:
              ++v30;
              v37 = (v37 + v32);
              v38 += v39;
              v40 += v39;
              v31 += v32;
            }

            while (v30 != v26);
          }

          if (v26 >= 1)
          {
            v51 = 0;
            v52 = 1;
            v53 = -1;
            do
            {
              if (v29 <= v52)
              {
                v54 = v52;
              }

              else
              {
                v54 = v29;
              }

              if (v51 + 1 < v29)
              {
                v55 = 0;
                v56 = v54 + v53;
                v57 = 8 * v51 * v25;
                if ((v54 + v53) < 4)
                {
                  goto LABEL_67;
                }

                if (v54 - v51 + v52 - 2 < v52)
                {
                  goto LABEL_67;
                }

                v58 = v56 & 0xFFFFFFFC;
                v55 = v56 & 0xFFFFFFFC;
                v59 = v52;
                do
                {
                  v60 = (v57 + 8 * v59);
                  *v60 = 0uLL;
                  v60[1] = 0uLL;
                  v59 += 4;
                  v58 -= 4;
                }

                while (v58);
                if (v56 != v55)
                {
LABEL_67:
                  v61 = v55 + v52;
                  do
                  {
                    *(v57 + 8 * v61++) = 0;
                  }

                  while (v54 != v61);
                }
              }

              ++v51;
              ++v52;
              --v53;
            }

            while (v51 != v26);
          }
        }

        sub_19D3C8BF8(&__C, v98, &__A);
        if (__C != 0.0)
        {
          v101 = __C;
          operator delete(*&__C);
        }

        v62 = *(v22 + 24);
        if (v83 != __B)
        {
          if (((v83 - __B) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        vDSP_vsubD(__B, 1, 0, 1, 0, 1, v84);
        cblas_dnrm2_NEWLAPACK();
        v64 = v63;
        v65 = *(v22 + 32);
        __C = 0.0;
        vDSP_dotprD(__A, 1, __A, 1, &__C, __p);
        v66 = __C;
        if (*&__A != 0.0)
        {
          v87 = __A;
          operator delete(__A);
        }

        v67 = -(v66 - exp(v64 * v64 * -0.5 / (v65 * v65)) * v62);
        if (v67 > 2.22044605e-16)
        {
          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        v69 = *(v22 + 16);
        if (v98[0])
        {
          v98[1] = v98[0];
          operator delete(v98[0]);
        }

        v27 = *&v24 + *&v23;
        v28 = sqrt(v69 + v68);
        if (v28 < 0.00000001)
        {
          goto LABEL_87;
        }
      }

      else
      {
        *&__A = 0.0;
        vDSP_meanvD(*(v22 + 264), 1, &__A, *(v22 + 288));
        v27 = *&__A;
        v28 = sqrt(sub_19D3DCCE4(v22, &__B));
        if (v28 < 0.00000001)
        {
          goto LABEL_87;
        }
      }

      v70 = *(*(v21 + 8) + 96);
      if (v70 > 0)
      {
        if (*(v21 + 56) != v70)
        {
          (*(*v21 + 16))(v21);
        }

        (**v21)(v21, v27, v28);
        goto LABEL_88;
      }

LABEL_87:
      v71 = (*(*v21 + 8))(v21);
LABEL_88:
      v72 = *&v71;
      if (__B)
      {
        v83 = __B;
        operator delete(__B);
      }

      v85 = v72;
      sub_19D3C6830((a1 + 64), v92, &v85);
      if (++v10 == v81)
      {
        goto LABEL_91;
      }
    }
  }

LABEL_97:
  v76 = *(a1 + 72);
  sub_19D3BA6D0(v80, v76);
  *(v80 + 96) = v76[12];
  sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v92, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
  sub_19D2AD8CC(&v94, v95[0]);
  v77 = v96;
  if (v96)
  {
    v78 = v97;
    v79 = v96;
    if (v97 != v96)
    {
      do
      {
        v78 = sub_19D3715C0(v78 - 96);
      }

      while (v78 != v77);
      v79 = v96;
    }

    v97 = v77;
    operator delete(v79);
  }
}

void sub_19D3DC314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, void *a43)
{
  sub_19D3715C0(v43);
  sub_19D2AD8CC(&a42, a43);
  sub_19D372E78((v44 - 240));
  _Unwind_Resume(a1);
}

void sub_19D3DC49C(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 5;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v3 = *(a1 + 72);
  v2 = a1 + 72;
  if (v3 == *(a1 + 80))
  {
    v12 = 0;
    *(a1 + 64) = 5;
    if ((a1 + 64) == &v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    sub_19D3BA6D0(v17, v3);
    v17[12] = *(v3 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), __p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    v4 = *(a1 + 8);
    sub_19D3C6444(v17, __p);
    v5.n128_f64[0] = sub_19D3DCBC4(*(v4 + 8), __p);
    v7 = sqrt(v6);
    if (v7 < 0.00000001 || (v8 = *(*(v4 + 8) + 96), v8 <= 0))
    {
      v10 = (*(*v4 + 8))(v4, v5);
    }

    else
    {
      if (*(v4 + 56) != v8)
      {
        v9 = v5.n128_u64[0];
        (*(*v4 + 16))(v4);
        v5.n128_u64[0] = v9;
      }

      (**v4)(v4, v5, v7);
    }

    *&v11 = v10;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v16 = v11;
    if (*&v11 > (*(**(a1 + 8) + 8))(*(a1 + 8)))
    {
      sub_19D3C6830(&v18, v17, &v16);
    }

    sub_19D3715C0(v17);
    v3 = *(a1 + 72);
  }

  while (v3 != *(a1 + 80));
  v12 = v19;
  *(a1 + 64) = v18;
  if ((a1 + 64) != &v18)
  {
LABEL_17:
    sub_19D3C6B24(v2, v12, v20, 0x4EC4EC4EC4EC4EC5 * (v20 - v12));
    v12 = v19;
  }

LABEL_18:
  if (v12)
  {
    v13 = v20;
    v14 = v12;
    if (v20 != v12)
    {
      do
      {
        v13 = sub_19D3715C0((v13 - 13));
      }

      while (v13 != v12);
      v14 = v19;
    }

    v20 = v12;
    operator delete(v14);
  }
}

void sub_19D3DC75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D3715C0(va);
  sub_19D3C5CB8(v6 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3DC780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D3715C0(&a14);
  sub_19D3C5CB8(v14 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3DC7AC(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = a2 + 16;
  *(a2 + 24) = 0;
  sub_19D3C721C(a1, __p);
  sub_19D3700AC(v7, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v3 = 50;
  do
  {
    v5 = sub_19D3C759C(v7);
    v4 = sub_19D3C73D0(a2, &v5);
    ++*v4;
    --v3;
  }

  while (v3);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::random_device::~random_device(&v8);
}

void sub_19D3DC874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2AD8CC(v14, *v15);
    _Unwind_Resume(a1);
  }

  sub_19D2AD8CC(v14, *v15);
  _Unwind_Resume(a1);
}

void sub_19D3DC8D4(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X8>)
{
  sub_19D3BA6D0(a3, a2);
  sub_19D3C77B4(a2, v8);
  sub_19D3DCA64(a1, v8, &v9);
  sub_19D3C7B18(a2, v6);
  sub_19D3DCB14(a1, v6, &__p);
  sub_19D3C7DCC(a3);
  sub_19D3C7F7C(a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v9)
  {
    *(&v9 + 1) = v9;
    operator delete(v9);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_19D3DC9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 64);
    if (!v21)
    {
LABEL_3:
      v22 = a17;
      if (!a17)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 64);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 56) = v21;
  operator delete(v21);
  v22 = a17;
  if (!a17)
  {
LABEL_4:
    sub_19D3715C0(v18);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v22);
  sub_19D3715C0(v18);
  _Unwind_Resume(a1);
}

double sub_19D3DCA64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36EBA8((a1 + 16)))
  {
    sub_19D36EC54((a1 + 16), v7);
    sub_19D436700(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D3DCB14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36F6A8(a1 + 16))
  {
    sub_19D36F758(a1 + 16, v7);
    sub_19D437344(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D3DCBC4(uint64_t a1, const double **a2)
{
  if (*(a1 + 96))
  {
    sub_19D3DB334(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 232), 1, &__C, __N);
    v4 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 264), 1, &__C, *(a1 + 288));
    v5 = __C;
    sub_19D3DCDAC(a1, a2, __A);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v5 + v4;
  }

  else
  {
    v7 = sub_19D3DB250(a1);
    sub_19D3DCCE4(a1, a2);
    return v7;
  }
}

void sub_19D3DCCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19D3DCCE4(uint64_t a1, const double **a2)
{
  if (*(a1 + 96))
  {
    sub_19D3DB334(a1, __p);
    sub_19D3DCDAC(a1, a2, __p);
    v5 = v4;
    v6 = *(a1 + 16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v6 + v5;
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = sub_19D3DB5EC(a1 + 8, a2, a2);
    return *(a1 + 16) + exp(v9 * -0.5) * v8;
  }
}

void sub_19D3DCD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3DCDAC(uint64_t a1, const double **a2, uint64_t a3)
{
  sub_19D3C88B4(a1 + 168, __p);
  sub_19D3C8BF8(__p, a3, __B);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = sub_19D3DB5EC(a1 + 8, a2, a2);
  __p[0] = 0;
  vDSP_dotprD(__B[0], 1, __B[0], 1, __p, __N);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  exp(v6 * -0.5);
}

void sub_19D3DCE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3DCEC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_19D370C7C(&v36, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BB7D8;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v36);
  sub_19D370EB8((a1 + 40), &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v39;
    v10 = __p;
    if (v39 != __p)
    {
      do
      {
        v11 = *(v9 - 17);
        v9 -= 5;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v39 = v8;
    operator delete(v10);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v37;
    v14 = v36;
    if (v37 != v36)
    {
      do
      {
        v15 = *(v13 - 25);
        v13 -= 6;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v36;
    }

    v37 = v12;
    operator delete(v14);
  }

  *a1 = &unk_1F10BB808;
  v16 = sub_19D36EBA8(a3);
  *(a1 + 72) = 0u;
  *(a1 + 64) = &unk_1F10BB3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0x7FF0000000000000;
  *(a1 + 168) = -5;
  *(a1 + 176) = 0;
  sub_19D3CA020(a1 + 64, v16);
  sub_19D3C21BC(a1 + 184);
  sub_19D36EC54(a3, v34);
  sub_19D3CA6A8(a1 + 64, v34);
  sub_19D3CA7E0(a1 + 64, v35);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v17 = 0;
    *(a1 + 7776) = a4;
    v18 = 1;
    v19 = a4;
    do
    {
      v20 = 1812433253 * (v19 ^ (v19 >> 30));
      v19 = v20 + v18;
      *(a1 + 7780 + 4 * v17) = v17 + v20 + 1;
      ++v18;
      ++v17;
    }

    while (v17 != 623);
    *(a1 + 10272) = 0;
    *(a1 + 184) = a4;
    v21 = 1;
    v22 = 47;
    v23 = a4;
    do
    {
      v24 = 1812433253 * (v23 ^ (v23 >> 30));
      v23 = v24 + v21;
      *(a1 + 4 * v22) = v22 + v24 - 46;
      ++v21;
      ++v22;
    }

    while (v22 != 670);
    v25 = 0;
    *(a1 + 2680) = 0;
    *(a1 + 2712) = a4;
    v26 = 1;
    v27 = a4;
    do
    {
      v28 = 1812433253 * (v27 ^ (v27 >> 30));
      v27 = v28 + v26;
      *(a1 + 2716 + 4 * v25) = v25 + v28 + 1;
      ++v26;
      ++v25;
    }

    while (v25 != 623);
    v29 = 0;
    *(a1 + 5208) = 0;
    *(a1 + 5232) = a4;
    v30 = 1;
    v31 = a4;
    do
    {
      v32 = 1812433253 * (v31 ^ (v31 >> 30));
      v31 = v32 + v30;
      *(a1 + 5236 + 4 * v29) = v29 + v32 + 1;
      ++v30;
      ++v29;
    }

    while (v29 != 623);
    *(a1 + 7728) = 0;
    sub_19D43888C();
  }

  return a1;
}

void sub_19D3DD1D4(_Unwind_Exception *a1)
{
  sub_19D3C99D8(v3);
  *v1 = v2;
  sub_19D3708F4((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_19D3DD294(uint64_t a1)
{
  v1 = sub_19D3DD7FC(a1);

  operator delete(v1);
}

void sub_19D3DD2BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  *&v14 = &v14 + 8;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  sub_19D3BA6D0(a2, v13);
  *(a2 + 96) = v4;
  sub_19D3715C0(v13);
  sub_19D370C7C(&v18, (a1 + 16));
  sub_19D370EB8(&v20, (a1 + 40));
  sub_19D370344(&v18, 5, &v22);
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = v20;
    if (v21 != v20)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20;
    }

    v21 = v5;
    operator delete(v7);
  }

  v9 = v18;
  if (v18)
  {
    v10 = v19;
    v11 = v18;
    if (v19 != v18)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v18;
    }

    v19 = v9;
    operator delete(v11);
  }

  sub_19D3DD978(a1, v22);
}

void sub_19D3DD6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_19D3715C0(va1);
  sub_19D3715C0(va);
  sub_19D372E78((v6 - 104));
  sub_19D3715C0(v5);
  _Unwind_Resume(a1);
}

void sub_19D3DD718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(va);
  sub_19D372E78((v3 - 104));
  sub_19D3715C0(v2);
  _Unwind_Resume(a1);
}

void sub_19D3DD73C(_Unwind_Exception *a1)
{
  sub_19D3708F4((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3DD758(_Unwind_Exception *a1)
{
  sub_19D36EE34((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3DD788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void sub_19D3DD79C(_Unwind_Exception *a1)
{
  sub_19D3C71A4((v2 - 80));
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3DD7C0(_Unwind_Exception *a1)
{
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3DD7FC(uint64_t a1)
{
  *a1 = &unk_1F10BB808;
  std::random_device::~random_device((a1 + 10280));
  std::random_device::~random_device((a1 + 7736));
  std::random_device::~random_device((a1 + 5216));
  std::random_device::~random_device((a1 + 2688));
  *(a1 + 64) = &unk_1F10BB3E8;
  sub_19D437C34(*(a1 + 72));
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  *a1 = &unk_1F10BB7D8;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 40);
    }

    *(a1 + 48) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_19D3DD978(uint64_t a1, __int128 **a2)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_19D3C77B4(a2, &__p);
  sub_19D3DDE14(a1 + 64, v4, &__p);
}