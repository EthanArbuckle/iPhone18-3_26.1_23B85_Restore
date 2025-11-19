void sub_245A3A20C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  *(a2 + 80) = 0;
  if (v3)
  {
    v4 = sub_245A37CE8(v3);
    MEMORY[0x245D78870](v4, 0x1000C4052888210);
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 8);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

double sub_245A3A3A8(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a1[1];
  v20[0] = *a1;
  v20[1] = v4;
  v5 = a2[1];
  v19[0] = *a2;
  v19[1] = v5;
  v6 = a3[1];
  v18[0] = *a3;
  v18[1] = v6;
  v7 = v20[0] - v18[0];
  v27[0] = v20[0] - v18[0];
  v8 = v5 - v6;
  v26[0] = v5 - v6;
  v9 = v4 - v6;
  v25[0] = v4 - v6;
  v10 = v19[0] - v18[0];
  v24[0] = v19[0] - v18[0];
  v11 = vabdd_f64(v20[0], v18[0]);
  v12 = vabdd_f64(v5, v6);
  v13 = vabdd_f64(v4, v6);
  v14 = vabdd_f64(v19[0], v18[0]);
  if (v11 < v12)
  {
    v11 = v12;
  }

  if (v11 < v13)
  {
    v11 = v13;
  }

  if (v11 < v14)
  {
    v11 = v14;
  }

  if (v11 < 1.0)
  {
    v11 = 1.0;
  }

  *a4 = v11;
  v15 = v7 * v8;
  v23[0] = v7 * v8;
  v16 = v10 * v9;
  result = v7 * v8 - v10 * v9;
  v21 = fabs(v7 * v8) + fabs(v10 * v9);
  v22[0] = v10 * v9;
  if (vabdd_f64(v7 * v8, v10 * v9) < v21 * 3.33066907e-16 && (v15 <= 0.0 || v16 > 0.0) && (v15 >= 0.0 || v16 < 0.0))
  {
    return sub_245A8009C(v20, v19, v18, v27, v26, v25, v24, v23, v22, &v21);
  }

  return result;
}

uint64_t sub_245A3A4CC(double *a1, double *a2, double *a3, uint64_t a4, BOOL *a5, _BYTE *a6)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  if (*a2 != *a1)
  {
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v16 = fabs(v7);
      v17 = fabs(v6);
      v18 = vabdd_f64(v7, v6);
      if (v16 < v17)
      {
        v16 = v17;
      }

      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      *a5 = v18 <= v16 * 2.22044605e-16;
      if (v8 != v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *a5 = 0;
      if (v8 != v6)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    v9 = 1;
    *a6 = 1;
    v10 = *a5;
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_46;
  }

  *a5 = 1;
  if (v8 == v6)
  {
    goto LABEL_3;
  }

LABEL_12:
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    *a6 = 0;
    if (!*a5)
    {
LABEL_20:
      if (v8 >= v6 || v7 <= v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = -2;
      }

      if (v7 >= v6 || v8 <= v6)
      {
        return v14;
      }

      else
      {
        return 2;
      }
    }

LABEL_17:
    if (v8 > v6)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  v19 = fabs(v8);
  v20 = fabs(v6);
  v21 = vabdd_f64(v8, v6);
  if (v19 < v20)
  {
    v19 = v20;
  }

  if (v19 < 1.0)
  {
    v19 = 1.0;
  }

  v9 = v21 <= v19 * 2.22044605e-16;
  *a6 = v9;
  v10 = *a5;
  if (!v10 || v21 > v19 * 2.22044605e-16)
  {
LABEL_4:
    if (!v10)
    {
      if (v9)
      {
        if (v7 <= v6)
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_46:
  v23 = a1[1];
  v24 = a2[1];
  v25 = a3[1];
  if ((v24 > v23 || v25 < v23) && (v24 < v23 || v25 > v23))
  {
    return 0;
  }

  result = 0;
  *(a4 + 4) = 1;
  return result;
}

double *sub_245A3A67C(double *result, double *a2, double *a3, uint64_t a4, double **a5, double **a6, double *a7)
{
  if (a2 + 2 != a3)
  {
    v7 = a2[2];
    v8 = a2[3];
    v9 = *result;
    v10 = result[1];
    v11 = a2[1];
    v12 = v7 - *a2;
    v13 = v8 - v11;
    v14 = *result - *a2;
    v15 = (v10 - v11) * (v8 - v11) + v14 * v12;
    if (v15 <= 0.0)
    {
      v28 = v14 * v14 + 0.0 + (v10 - v11) * (v10 - v11);
      *a7 = v28;
      if (a2 + 4 != a3)
      {
LABEL_13:
        v29 = a2 + 2;
        v30 = a2 + 3;
        do
        {
          v32 = *(v30 - 1);
          v34 = v30[1];
          v33 = v30[2];
          v35 = *result;
          v36 = result[1];
          v37 = v34 - v32;
          v38 = v33 - *v30;
          v39 = *result - v32;
          v40 = v36 - *v30;
          v41 = v40 * v38 + v39 * (v34 - v32);
          if (v41 <= 0.0)
          {
            v43 = v39 * v39 + 0.0 + v40 * v40;
            if (v43 == 0.0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v42 = v38 * v38 + v37 * v37;
            if (v42 <= v41)
            {
              v43 = (v35 - v34) * (v35 - v34) + 0.0 + (v36 - v33) * (v36 - v33);
              if (v43 == 0.0)
              {
LABEL_25:
                *a7 = 0.0;
                *a5 = v29;
                *a6 = v29 + 2;
                return result;
              }
            }

            else
            {
              v43 = (v35 - (v32 + v37 * (v41 / v42))) * (v35 - (v32 + v37 * (v41 / v42))) + 0.0 + (v36 - (*v30 + v38 * (v41 / v42))) * (v36 - (*v30 + v38 * (v41 / v42)));
              if (v43 == 0.0)
              {
                goto LABEL_25;
              }
            }
          }

          if (v43 < v28)
          {
            *a7 = v43;
            v28 = v43;
            a2 = v30 - 1;
          }

          v29 += 2;
          v31 = v30 + 3;
          v30 += 2;
        }

        while (v31 != a3);
      }
    }

    else
    {
      v16 = v13 * v13 + v12 * v12;
      if (v16 <= v15)
      {
        v17 = v10 - v8;
        v18 = v9 - v7;
      }

      else
      {
        v17 = v10 - (v11 + v13 * (v15 / v16));
        v18 = v9 - (*a2 + v12 * (v15 / v16));
      }

      v28 = v18 * v18 + 0.0 + v17 * v17;
      *a7 = v28;
      if (a2 + 4 != a3)
      {
        goto LABEL_13;
      }
    }

    *a6 = a2;
    *a5 = a2;
    *a6 += 2;
    return result;
  }

  *a6 = a2;
  *a5 = a2;
  v19 = *a2;
  v20 = a2[1];
  v21 = result[1];
  v22 = v19 - v19;
  v23 = v20 - v20;
  v24 = *result - *a2;
  v25 = (v20 - v20) * (v21 - v20) + v24 * (v19 - v19);
  if (v25 <= 0.0 || (v26 = v23 * v23 + v22 * v22, v26 <= v25))
  {
    *a7 = v24 * v24 + 0.0 + (v21 - v20) * (v21 - v20);
  }

  else
  {
    v27 = *result - (v19 + v22 * (v25 / v26));
    *a7 = v27 * v27 + 0.0 + (v21 - (v20 + v23 * (v25 / v26))) * (v21 - (v20 + v23 * (v25 / v26)));
  }

  return result;
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_245A3ABFC(a1, a3, a2);
  *v4 = &unk_28589D198;
  v4[5] = 0;
  v5 = v4 + 5;
  v6 = operator new(0x50uLL);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  v8 = v6;
  atomic_fetch_add(v6, 1u);
  v8 = *v5;
  *v5 = v6;
  sub_245A3C59C(&v8);
  return a1;
}

void sub_245A3ABC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_245A3C59C(&a10);
  __cxa_end_catch();
  JUMPOUT(0x245A3ABA8);
}

void sub_245A3ABE0(_Unwind_Exception *a1)
{
  sub_245A3C59C(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A3ABFC(uint64_t a1, uint64_t a2, const char *a3)
{
  sub_245A3B978(a3, a2, &v7);
  std::runtime_error::runtime_error(a1, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28589D1F0;
  v5 = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 16) = v5;
  return a1;
}

void sub_245A3AC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_245A3AD94(a1, a3, a2);
  *v4 = &unk_28589D198;
  v4[5] = 0;
  v5 = v4 + 5;
  v6 = operator new(0x50uLL);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  v8 = v6;
  atomic_fetch_add(v6, 1u);
  v8 = *v5;
  *v5 = v6;
  sub_245A3C59C(&v8);
  return a1;
}

void sub_245A3AD58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_245A3C59C(&a10);
  __cxa_end_catch();
  JUMPOUT(0x245A3AD40);
}

void sub_245A3AD78(_Unwind_Exception *a1)
{
  sub_245A3C59C(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A3AD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  sub_245A3B978(v5, a2, &v8);
  std::runtime_error::runtime_error(a1, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28589D1F0;
  v6 = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 16) = v6;
  return a1;
}

void sub_245A3AE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_245A3ABFC(a1, a4, a2);
  *v6 = &unk_28589D198;
  v6[5] = 0;
  v7 = v6 + 5;
  v8 = operator new(0x50uLL);
  *v8 = 0;
  v9 = v8 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_245A3C288(v9, *a3, *(a3 + 8));
  }

  else
  {
    *v9 = *a3;
    *(v8 + 3) = *(a3 + 16);
  }

  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  v11 = v8;
  atomic_fetch_add(v8, 1u);
  v11 = *v7;
  *v7 = v8;
  sub_245A3C59C(&v11);
  return a1;
}

void sub_245A3AF10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_245A3C59C(&a10);
  __cxa_end_catch();
  JUMPOUT(0x245A3AEF8);
}

void sub_245A3AF48(_Unwind_Exception *a1)
{
  sub_245A3C59C(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_245A3AD94(a1, a4, a2);
  *v6 = &unk_28589D198;
  v6[5] = 0;
  v7 = v6 + 5;
  v8 = operator new(0x50uLL);
  *v8 = 0;
  v9 = v8 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_245A3C288(v9, *a3, *(a3 + 8));
  }

  else
  {
    *v9 = *a3;
    *(v8 + 3) = *(a3 + 16);
  }

  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  v11 = v8;
  atomic_fetch_add(v8, 1u);
  v11 = *v7;
  *v7 = v8;
  sub_245A3C59C(&v11);
  return a1;
}

void sub_245A3B034(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_245A3C59C(&a10);
  __cxa_end_catch();
  JUMPOUT(0x245A3B01CLL);
}

void sub_245A3B06C(_Unwind_Exception *a1)
{
  sub_245A3C59C(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v8 = sub_245A3ABFC(a1, a5, a2);
  *v8 = &unk_28589D198;
  v8[5] = 0;
  v9 = v8 + 5;
  v10 = operator new(0x50uLL);
  sub_245A3C31C(v10, a3, a4);
  v12 = v10;
  atomic_fetch_add(v10, 1u);
  v12 = *v9;
  *v9 = v10;
  sub_245A3C59C(&v12);
  return a1;
}

void sub_245A3B13C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_245A3C59C(&a10);
  __cxa_end_catch();
  JUMPOUT(0x245A3B120);
}

void sub_245A3B174(_Unwind_Exception *a1)
{
  sub_245A3C59C(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v8 = sub_245A3AD94(a1, a5, a2);
  *v8 = &unk_28589D198;
  v8[5] = 0;
  v9 = v8 + 5;
  v10 = operator new(0x50uLL);
  sub_245A3C31C(v10, a3, a4);
  v12 = v10;
  atomic_fetch_add(v10, 1u);
  v12 = *v9;
  *v9 = v10;
  sub_245A3C59C(&v12);
  return a1;
}

void sub_245A3B244(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_245A3C59C(&a10);
  __cxa_end_catch();
  JUMPOUT(0x245A3B228);
}

void sub_245A3B27C(_Unwind_Exception *a1)
{
  sub_245A3C59C(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

std::runtime_error *boost::filesystem::filesystem_error::filesystem_error(std::runtime_error *a1, uint64_t a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_28589D1F0;
  v4 = *(a2 + 16);
  result[2].__vftable = *(a2 + 32);
  result[1] = v4;
  result->__vftable = &unk_28589D198;
  v5 = *(a2 + 40);
  result[2].__imp_.__imp_ = v5;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  return result;
}

uint64_t boost::filesystem::filesystem_error::operator=(uint64_t a1, uint64_t a2)
{
  std::runtime_error::operator=(a1, a2);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
    v5 = v7;
  }

  v7 = *(a1 + 40);
  *(a1 + 40) = v5;
  sub_245A3C59C(&v7);
  return a1;
}

void boost::filesystem::filesystem_error::~filesystem_error(boost::filesystem::filesystem_error *this)
{
  *this = &unk_28589D198;
  sub_245A3C59C(this + 5);

  std::runtime_error::~runtime_error(this);
}

{
  *this = &unk_28589D198;
  sub_245A3C59C(this + 5);

  std::runtime_error::~runtime_error(this);
}

{
  *this = &unk_28589D198;
  sub_245A3C59C(this + 5);
  std::runtime_error::~runtime_error(this);

  operator delete(v2);
}

const char *boost::filesystem::filesystem_error::what(std::runtime_error *this)
{
  imp = this[2].__imp_.__imp_;
  if (imp)
  {
    if ((imp[79] & 0x8000000000000000) != 0)
    {
      if (*(imp + 8))
      {
        goto LABEL_28;
      }
    }

    else if (imp[79])
    {
      goto LABEL_28;
    }

    v3 = std::runtime_error::what(this);
    sub_245A3C488((this[2].__imp_.__imp_ + 56), v3);
    imp = this[2].__imp_.__imp_;
    if ((imp[31] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 2))
      {
        goto LABEL_17;
      }
    }

    else if (!imp[31])
    {
      goto LABEL_17;
    }

    std::string::append((imp + 56), ": ", 3uLL);
    v4 = this[2].__imp_.__imp_;
    v7 = *(v4 + 1);
    v5 = v4 + 8;
    v6 = v7;
    v8 = v5[23];
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 1);
    }

    std::string::append(v5 + 2, v9, v10);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
LABEL_17:
    if ((imp[55] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 5))
      {
        goto LABEL_28;
      }
    }

    else if (!imp[55])
    {
LABEL_28:
      result = imp + 56;
      if (imp[79] < 0)
      {
        return *result;
      }

      return result;
    }

    std::string::append((imp + 56), ", ", 3uLL);
    v11 = this[2].__imp_.__imp_;
    v14 = *(v11 + 4);
    v12 = v11 + 32;
    v13 = v14;
    v15 = v12[23];
    if (v15 >= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    if (v15 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 1);
    }

    std::string::append(v12 + 1, v16, v17);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
    goto LABEL_28;
  }

  return std::runtime_error::what(this);
}

uint64_t *boost::filesystem::filesystem_error::get_empty_path(boost::filesystem::filesystem_error *this)
{
  if ((atomic_load_explicit(&qword_28144B2E8, memory_order_acquire) & 1) == 0)
  {
    sub_245A8E4E4();
  }

  return &qword_28144B2F0;
}

uint64_t sub_245A3B664(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_245A3B698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v13[0] = 0;
    if ((qword_281B30AC0 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v9 = a1 != 0;
    }

    else
    {
      v9 = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v10 = 2;
    LODWORD(v13[0]) = a1;
    if (v9)
    {
      v10 = 3;
    }

    v13[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v13[2] = v10;
    boost::filesystem::filesystem_error::filesystem_error(exception, a4, a2, v13);
  }

  if ((qword_281B30AC0 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v7 = 2;
  if (result)
  {
    v7 = 3;
  }

  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_245A3B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v15[0] = 0;
    if ((qword_281B30AC0 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v10 = a1 != 0;
    }

    else
    {
      v10 = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v11 = 2;
    LODWORD(v15[0]) = a1;
    if (v10)
    {
      v11 = 3;
    }

    v15[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v15[2] = v11;
    boost::filesystem::filesystem_error::filesystem_error(exception, a5, a2, a3, v15);
  }

  if ((qword_281B30AC0 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v8 = 2;
  if (result)
  {
    v8 = 3;
  }

  *a4 = a1;
  *(a4 + 4) = 0;
  *(a4 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a4 + 16) = v8;
  return result;
}

void sub_245A3B978(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a1)
  {
    v6 = strlen(a1);
    std::string::append(a3, a1, v6);
    std::string::append(a3, ": ", 2uLL);
  }

  sub_245A3BA88(a2, &__p);
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

  std::string::append(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_245A3BA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A3BA60(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

std::string *sub_245A3BA88@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_245A3BBDC(a1, a2);
  std::string::append(a2, " [", 2uLL);
  sub_245A3BC2C(a1, &__p);
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 16) >= 4uLL)
  {
    std::string::append(a2, " at ", 4uLL);
    v6 = *(a1 + 16);
    if (v6 <= 3)
    {
      v7 = off_278E8AA00;
    }

    else
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_245A3BDF8(v7, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, "]", 1uLL);
}

void sub_245A3BB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_245A3BBDC@<X0>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    if (v2 == 1)
    {
      return std::error_code::message(a2, a1);
    }

    v4 = *(a1 + 1);
  }

  else
  {
    v4 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  return (*(*v4 + 4))(v4, *a1);
}

std::string *sub_245A3BC2C@<X0>(int *a1@<X0>, std::string *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_245A3C10C(a2, "std:");
      v5 = (*(**(a1 + 1) + 16))(*(a1 + 1));
      v6 = strlen(v5);
      std::string::append(a2, v5, v6);
      sub_245A3C25C(__s, 0x20uLL, ":%d", v7, v8, v9, v10, v11, *a1);
      v12 = strlen(__s);
      result = std::string::append(a2, __s, v12);
      goto LABEL_9;
    }

    v14 = *(a1 + 1);
  }

  else
  {
    v14 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  v15 = (**v14)(v14);
  sub_245A3C10C(a2, v15);
  v21 = *a1;
  if (*(a1 + 2) == 1)
  {
    v21 += 1000 * (*(a1 + 1) % 0x1FFFF7uLL);
  }

  sub_245A3C25C(__s, 0x20uLL, ":%d", v16, v17, v18, v19, v20, v21);
  v22 = strlen(__s);
  result = std::string::append(a2, __s, v22);
LABEL_9:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245A3BDD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A3BDF8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    sub_245A3C10C(a2, *a1);
    sprintf(__s, ":%ld", *(a1 + 16));
    v4 = strlen(__s);
    std::string::append(a2, __s, v4);
    if (*(a1 + 20))
    {
      sprintf(__s, ":%ld", *(a1 + 20));
      v5 = strlen(__s);
      std::string::append(a2, __s, v5);
    }

    std::string::append(a2, " in function '", 0xEuLL);
    v6 = *(a1 + 8);
    v7 = strlen(v6);
    std::string::append(a2, v6, v7);
    std::string::push_back(a2, 39);
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    sub_245A3C10C(a2, "(unknown source location)");
  }
}

void sub_245A3BF48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245A3BF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != (*(*a1 + 8))(a1))
  {
    return 0;
  }

  v5 = *(a3 + 8);
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

    v9 = *(v5 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  if (!v5)
  {
    v9 = *(v4 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  v6 = *(v5 + 8);
  v7 = v5 == v4;
  if (v6)
  {
    return *(v4 + 8) == v6;
  }

  else
  {
    return v7;
  }
}

BOOL sub_245A3C03C(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    if (*(a3 + 8) == 0xB2AB117A257EDFD2)
    {
      return *a1 + 1000 * (*(a1 + 8) % 0x1FFFF7uLL) == a2;
    }

    return 0;
  }

  if (!v3)
  {
    return !a2 && *(a3 + 8) == 0xB2AB117A257EDFD1;
  }

  if (*a1 != a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  v8 = v6 == a3;
  if (v7)
  {
    return *(a3 + 8) == v7;
  }

  else
  {
    return v8;
  }
}

void *sub_245A3C10C(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245A3C1B4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void sub_245A3C1CC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_245A3C228(exception, a1);
  __cxa_throw(exception, off_278E8A9F0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_245A3C228(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *sub_245A3C288(_BYTE *__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_245A3C1B4();
    }

    if ((a3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a3 | 7) + 1;
    }

    v7 = operator new(v6);
    v5[1] = a3;
    v5[2] = v6 | 0x8000000000000000;
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    __dst[23] = a3;
  }

  return memmove(v5, __src, a3 + 1);
}

uint64_t sub_245A3C31C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_245A3C288((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_245A3C288((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_245A3C3B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_245A3C3CC(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_245A3C488(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_245A3C3CC(a1, __s, v4);
}

void *sub_245A3C4E8@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_245A3C10C(a2, v4);
}

const char *sub_245A3C534(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t *sub_245A3C59C(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

void sub_245A3C610()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_245A3C660@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_245A3C10C(a2, v4);
}

const char *sub_245A3C6AC(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

void sub_245A3C714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  rename(a1, a2, a3);
  if (v6 && (v7 = *__error(), v7))
  {

    sub_245A3B804(v7, v5, v4, a3, "boost::filesystem::rename");
  }

  else if (a3)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_245A3C7B8(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t sub_245A3C884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_245A3B698(a1, v5, v4, a4);
}

int *sub_245A3C89C()
{

  return __error();
}

size_t sub_245A3C8B4(_BYTE *__s, size_t a2, size_t *a3)
{
  *a3 = 0;
  if (a2 && *__s == 47)
  {
    if (a2 == 1 || __s[1] != 47)
    {
      return 0;
    }

    v4 = a2 - 2;
    if (a2 != 2)
    {
      v5 = __s + 2;
      if (__s[2] == 47)
      {
        return 0;
      }

      v7 = memchr(v5, 47, v4);
      v8 = v7 - v5;
      if (!v7)
      {
        v8 = v4;
      }

      a2 = v8 + 2;
    }

    *a3 = a2;
  }

  return a2;
}

std::string *sub_245A3C950(std::string *a1, uint64_t a2)
{
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  sub_245A3CA7C(a1, &__p);
  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = __p.__r_.__value_.__l.__size_;
  }

  v6 = size - v5;
  v7 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v6 <= v7)
    {
      *(&a1->__r_.__value_.__s + 23) = v6;
      v8 = a1;
      goto LABEL_10;
    }

LABEL_27:
    sub_245A3CC00();
  }

  if (a1->__r_.__value_.__l.__size_ < v6)
  {
    goto LABEL_27;
  }

  v8 = a1->__r_.__value_.__r.__words[0];
  a1->__r_.__value_.__l.__size_ = v6;
LABEL_10:
  v8->__r_.__value_.__s.__data_[v6] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = *(a2 + 23);
  if (v9 < 0)
  {
    if (!*(a2 + 8))
    {
      return a1;
    }

    v10 = *a2;
  }

  else
  {
    v10 = a2;
    if (!*(a2 + 23))
    {
      return a1;
    }
  }

  if (*v10 != 46)
  {
    std::string::push_back(a1, 46);
    LOBYTE(v9) = *(a2 + 23);
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(a2 + 8);
  }

  std::string::append(a1, v11, v12);
  return a1;
}

void sub_245A3CA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A3CA7C(_BYTE *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v4 = *(v2 + 1);
  }

  v17 = 0;
  sub_245A3C8B4(a1, v4, &v17);
  v5 = v2[23];
  v6 = *v2;
  if (v4 >= v17)
  {
    v7 = v17;
  }

  else
  {
    v7 = v4;
  }

  if (v5 >= 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = *v2;
  }

  v9 = v8 - 1;
  v10 = v4;
  while (v10 > v17)
  {
    v11 = v10 - 1;
    v12 = v9[v10--];
    if (v12 == 47)
    {
      v7 = v11 + 1;
      break;
    }
  }

  v13 = v4 - v7;
  if (v4 != v7)
  {
    v14 = v5 >= 0 ? v2 : *v2;
    if (v14[v7] != 46 || v13 != 1 && (v13 != 2 || v14[v7 + 1] != 46))
    {
      v15 = 0;
      while (v4 + v15 > v7)
      {
        v16 = v14[v4 - 1 + v15--];
        if (v16 == 46)
        {
          if (v4 + v15 > v7)
          {
            sub_245A3C7B8(a2, &v14[v4 + v15], &v14[v4], -v15);
          }

          return;
        }
      }
    }
  }
}

void sub_245A3CBA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245A3CBC4(uint64_t a1)
{
  if (qword_28144B2E0)
  {
    std::locale::~locale(qword_28144B2E0);
    operator delete(v2);
  }

  qword_28144B2E0 = 0;
  return a1;
}

void sub_245A3CC18(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_245A3CC74(exception, a1);
  __cxa_throw(exception, off_278E8A9F8, MEMORY[0x277D825F8]);
}

std::logic_error *sub_245A3CC74(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t sub_245A3CCA8()
{
  __cxa_atexit(sub_245A3CBC4, &unk_27EE332F8, &dword_245A2E000);
  sub_245A3C10C(qword_28144B7C0, ".");
  __cxa_atexit(sub_245A3B664, qword_28144B7C0, &dword_245A2E000);
  sub_245A3C10C(qword_28144B7A8, "..");

  return __cxa_atexit(sub_245A3B664, qword_28144B7A8, &dword_245A2E000);
}

std::codecvt<wchar_t, char, mbstate_t> *boost::filesystem::detail::utf8_codecvt_facet::utf8_codecvt_facet(std::codecvt<wchar_t, char, mbstate_t> *this, size_t a2)
{
  result = std::codecvt<wchar_t,char,__mbstate_t>::codecvt(this, a2);
  result->__vftable = &unk_28589D2E8;
  return result;
}

{
  result = std::codecvt<wchar_t,char,__mbstate_t>::codecvt(this, a2);
  result->__vftable = &unk_28589D2E8;
  return result;
}

void boost::filesystem::detail::utf8_codecvt_facet::~utf8_codecvt_facet(std::codecvt<wchar_t, char, mbstate_t> *this)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(this);

  operator delete(v1);
}

uint64_t boost::filesystem::detail::utf8_codecvt_facet::do_in(uint64_t a1, uint64_t a2, char *a3, unsigned __int8 *a4, char **a5, unsigned int *a6, unsigned int *a7, unsigned int **a8)
{
  if (a3 == a4 || a6 == a7)
  {
LABEL_30:
    *a5 = a3;
    *a8 = a6;
    return a3 != a4;
  }

  else
  {
    while (*a3 >= -64)
    {
      v8 = *a3;
      if (v8 >= 0xFE)
      {
        break;
      }

      if ((v8 & 0x80) != 0)
      {
        if ((v8 & 0xE0) == 0xC0)
        {
          v9 = 1;
        }

        else if ((v8 & 0xF0) == 0xE0)
        {
          v9 = 2;
        }

        else
        {
          if ((v8 & 0xFC) == 0xF8)
          {
            v10 = 4;
          }

          else
          {
            v10 = 5;
          }

          if ((v8 & 0xF8) == 0xF0)
          {
            v9 = 3;
          }

          else
          {
            v9 = v10;
          }
        }

        v8 -= dword_245A98DB8[v9];
        if (++a3 != a4)
        {
          v11 = v9;
          v12 = 1;
          while (*a3 < -64)
          {
            v8 = *a3++ + (v8 << 6) - 128;
            v13 = v11 == v12;
            v14 = v11 != v12++;
            if (v13 || a3 == a4)
            {
              goto LABEL_27;
            }
          }

          break;
        }

        v12 = 1;
        v14 = 1;
LABEL_27:
        if (a3 == a4 && v14)
        {
          *a5 = &a3[-v12];
          *a8 = a6;
          return 1;
        }
      }

      else
      {
        ++a3;
      }

      *a6++ = v8;
      if (a3 == a4 || a6 == a7)
      {
        goto LABEL_30;
      }
    }

    *a5 = a3;
    *a8 = a6;
    return 2;
  }
}

BOOL boost::filesystem::detail::utf8_codecvt_facet::do_out(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int **a5, _BYTE *a6, _BYTE *a7, void *a8)
{
  if (a3 == a4 || a6 == a7)
  {
LABEL_31:
    *a5 = a3;
    *a8 = a6;
    return a3 != a4;
  }

  else
  {
    while (1)
    {
      v8 = *a3;
      if (*a3 >= 128)
      {
        if (v8 >= 0x800)
        {
          if (v8 >= 0x10000)
          {
            if (v8 >> 26)
            {
              v9 = 5;
            }

            else
            {
              v9 = 4;
            }

            if (v8 < 0x200000)
            {
              v9 = 3;
            }
          }

          else
          {
            v9 = 2;
          }
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }

      *a6++ = v8 / (1 << (6 * v9)) + LOBYTE(dword_245A98DB8[v9]);
      v10 = v9 != 0;
      if (!v9 || a6 == a7)
      {
        v19 = 1;
      }

      else
      {
        v11 = 6 * v9 - 6;
        v12 = -1;
        do
        {
          v13 = *a3 / (1 << v11);
          v14 = v13 & 0x3F;
          v16 = -v13;
          v15 = v16 < 0;
          v17 = v16 & 0x3F;
          if (v15)
          {
            LOBYTE(v18) = v14;
          }

          else
          {
            v18 = -v17;
          }

          *a6++ = v18 ^ 0x80;
          v10 = v11 != 0;
          --v12;
          if (!v11)
          {
            break;
          }

          v11 -= 6;
        }

        while (a6 != a7);
        v19 = -v12;
      }

      if (a6 == a7 && v10)
      {
        break;
      }

      if (++a3 == a4 || a6 == a7)
      {
        goto LABEL_31;
      }
    }

    *a5 = a3;
    *a8 = &a6[-v19];
    return 1;
  }
}

uint64_t boost::filesystem::detail::utf8_codecvt_facet::get_cont_octet_out_count(unsigned int a1)
{
  if (a1 >> 26)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 0x200000)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (a1 >= 0x10000)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (a1 >= 0x800)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a1 >= 128)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::filesystem::detail::utf8_codecvt_facet::do_length(boost::filesystem::detail::utf8_codecvt_facet *this, __mbstate_t *a2, const char *a3, const char *a4, unint64_t a5)
{
  LODWORD(v5) = a3;
  if (a5)
  {
    LODWORD(v5) = a3;
    if (a3 < a4)
    {
      v6 = 1;
      v5 = a3;
      do
      {
        v7 = *v5;
        if (v7 < 0)
        {
          if ((v7 & 0xE0) == 0xC0)
          {
            v8 = 2;
          }

          else if ((v7 & 0xF0) == 0xE0)
          {
            v8 = 3;
          }

          else
          {
            v9 = v7 & 0xF8;
            if ((v7 & 0xFC) == 0xF8)
            {
              v8 = 5;
            }

            else
            {
              v8 = 6;
            }

            if (v9 == 240)
            {
              v8 = 4;
            }
          }
        }

        else
        {
          v8 = 1;
        }

        if (&a4[-v5] < v8)
        {
          break;
        }

        v5 += v8;
        if (v6 >= a5)
        {
          break;
        }

        ++v6;
      }

      while (v5 < a4);
    }
  }

  return (v5 - a3);
}

uint64_t boost::filesystem::detail::utf8_codecvt_facet::get_octet_count(boost::filesystem::detail::utf8_codecvt_facet *this)
{
  if ((this & 0xFC) == 0xF8)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if ((this & 0xF8) == 0xF0)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if ((this & 0xF0) == 0xE0)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if ((this & 0xE0) == 0xC0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if ((this & 0x80) != 0)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

void sub_245A3D1E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_245A3D428(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_245A3D3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3D3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3D3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A3D428(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_28144B790 & 1) == 0)
  {
    byte_28144B790 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/math.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x17protobuf/gen/math.proto\x12\nproto.math\x88\x01\n\x10ObservationStats\x12\x15\n\nsumWeights\x18\x01 \x02(\x01:\x010\x12\x0E\n\x03sum\x18\x02 \x02(\x01:\x010\x12\x15\n\nsumSquared\x18\x03 \x02(\x01:\x010\x12\x1C\n\x11sumSquaredWeights\x18\x04 \x02(\x01:\x010\x12\v\n\x03min\x18\x05 \x01(\x01\x12\v\n\x03max\x18\x06 \x01(\x01f\nLinearSaturationFunctionParameters\x12\x10\n\x05slope\x18\x01 \x01(\x01:\x011\x12\x14\n\tintercept\x18\x02 \x01(\x01:\x010\x12\v\n\x03max\x18\x03 \x01(\x01\x12\v\n\x03min\x18\x04 \x01(\x01B\x1D\n\x1Bcom.apple.indoor.proto.math", 0x137);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

void sub_245A3D588(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A3D5A8()
{
  if (qword_28144B940)
  {
    (*(*qword_28144B940 + 8))(qword_28144B940);
  }

  if (qword_28144B318)
  {
    (*(*qword_28144B318 + 8))(qword_28144B318);
  }

  if (qword_28144B938)
  {
    (*(*qword_28144B938 + 8))(qword_28144B938);
  }

  result = qword_28144B328;
  if (qword_28144B328)
  {
    v1 = *(*qword_28144B328 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_245A3D690()
{
  v0 = qword_28144B330;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v3[0] = MEMORY[0x277D82C40] + 16;
    v3[1] = sub_245A3D1E4;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!qword_28144B940)
  {
    (sub_245A3D428)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B938)
  {
    sub_245A3D428(v1);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_245A3D774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A3D788(uint64_t a1)
{
  *a1 = &unk_28589D368;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

void *sub_245A3D7F0(void *a1)
{
  *a1 = &unk_28589D418;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[5] = 0;
  a1[6] = 0;
  a1[2] = 0x3FF0000000000000;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_245A3D858(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 68);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 68))
  {
    v7 = *(a2 + 16);
    *(a1 + 68) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 68) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 68) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a2 + 32);
  *(a1 + 68) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 48);
    *(a1 + 68) |= 0x10u;
    *(a1 + 48) = v11;
    if ((*(a2 + 68) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 40);
  *(a1 + 68) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 68);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 56);
    *(a1 + 68) |= 0x20u;
    *(a1 + 56) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A3D9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3D9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3D9C8(void *a1)
{
  *a1 = &unk_28589D368;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A3DA1C(void *a1)
{
  *a1 = &unk_28589D368;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A3DA8C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_28144B940;
  if (!qword_28144B940)
  {
    sub_245A3D428(0, a2, a3, a4);
    return qword_28144B940;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A3DB5C(uint64_t a1)
{
  if (*(a1 + 68))
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 15) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A3DB84(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 1)
          {
            goto LABEL_39;
          }

          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v16;
          *(a1 + 68) |= 1u;
          v10 = *(this + 1);
          if (v10 < *(this + 2) && *v10 == 17)
          {
            *(this + 1) = v10 + 1;
            goto LABEL_28;
          }
        }

        else if (v8 == 2)
        {
          if (v9 != 1)
          {
            goto LABEL_39;
          }

LABEL_28:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v16;
          *(a1 + 68) |= 2u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 25)
          {
            *(this + 1) = v11 + 1;
            v16 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_32;
          }
        }

        else
        {
          if (v8 != 3 || v9 != 1)
          {
            goto LABEL_39;
          }

          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

LABEL_32:
          *(a1 + 32) = v16;
          *(a1 + 68) |= 4u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 33)
          {
            *(this + 1) = v12 + 1;
            v16 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_35;
          }
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_39;
      }

      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      *(a1 + 40) = v16;
      *(a1 + 68) |= 8u;
      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 41)
      {
        *(this + 1) = v13 + 1;
LABEL_42:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v16;
        *(a1 + 68) |= 0x10u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 49)
        {
          *(this + 1) = v14 + 1;
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

LABEL_46:
          *(a1 + 56) = v16;
          *(a1 + 68) |= 0x20u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 5)
    {
      if (v9 == 1)
      {
        goto LABEL_42;
      }
    }

    else if (v8 == 6 && v9 == 1)
    {
      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_46;
    }

LABEL_39:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A3DEB0(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 68);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 68);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v5 = *(v4 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  if ((*(v4 + 68) & 0x20) == 0)
  {
LABEL_7:
    v8 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v4 + 56), a3);
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_15:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

uint64_t sub_245A3DFBC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 68);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 68);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v8;
  a2 += 9;
  v3 = *(a1 + 68);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v9 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 68);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = *(a1 + 40);
  *a2 = 33;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 68);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v12 = *(a1 + 56);
    *a2 = 49;
    *(a2 + 1) = v12;
    a2 += 9;
    v13 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v13;
    if (!v13)
    {
      return a2;
    }

    goto LABEL_15;
  }

LABEL_13:
  v11 = *(a1 + 48);
  *a2 = 41;
  *(a2 + 1) = v11;
  a2 += 9;
  if ((*(a1 + 68) & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_15:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A3E1F4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 68);
  if (*(a1 + 68))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_14:
      *(a1 + 64) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_14;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 64) = v9;
  return v9;
}

uint64_t sub_245A3E2B0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589D4B8, 0);
  if (v5)
  {
    return sub_245A3D858(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A3E390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3E3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A3E3B8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A3E458()
{
  v0 = qword_28144B330;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A3D1E4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B310;
}

void sub_245A3E4E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A3E4FC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 52))
  {
    v7 = *(a2 + 16);
    *(a1 + 52) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 32);
      *(a1 + 52) |= 4u;
      *(a1 + 32) = v9;
      if ((*(a2 + 52) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 52) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 40);
    *(a1 + 52) |= 8u;
    *(a1 + 40) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A3E604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3E618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3E62C(void *a1)
{
  *a1 = &unk_28589D418;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A3E680(void *a1)
{
  *a1 = &unk_28589D418;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A3E6F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_28144B938;
  if (!qword_28144B938)
  {
    sub_245A3D428(0, a2, a3, a4);
    return qword_28144B938;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A3E7C0(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 16) = 0x3FF0000000000000;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A3E7E8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v8 == 1)
      {
        if (v9 != 1)
        {
          goto LABEL_26;
        }

        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v14;
        *(a1 + 52) |= 1u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 17)
        {
          *(this + 1) = v10 + 1;
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_22;
        }
      }

      else
      {
        if (v8 != 2 || v9 != 1)
        {
          goto LABEL_26;
        }

        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

LABEL_22:
        *(a1 + 24) = v14;
        *(a1 + 52) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
LABEL_29:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v14;
          *(a1 + 52) |= 4u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 33)
          {
            *(this + 1) = v12 + 1;
            v14 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
            {
              return 0;
            }

LABEL_33:
            *(a1 + 40) = v14;
            *(a1 + 52) |= 8u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v8 == 3)
    {
      if (v9 == 1)
      {
        goto LABEL_29;
      }
    }

    else if (v8 == 4 && v9 == 1)
    {
      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_33;
    }

LABEL_26:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A3EA48(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 52);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  if ((*(v4 + 52) & 8) == 0)
  {
LABEL_5:
    v8 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_11:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

uint64_t sub_245A3EB1C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 52);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v8;
  a2 += 9;
  v3 = *(a1 + 52);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = *(a1 + 40);
    *a2 = 33;
    *(a2 + 1) = v10;
    a2 += 9;
    v11 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v11;
    if (!v11)
    {
      return a2;
    }

    goto LABEL_11;
  }

LABEL_9:
  v9 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  if ((*(a1 + 52) & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_11:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A3ECA4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 52);
  if (*(a1 + 52))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_10:
      *(a1 + 48) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_10;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 48) = v9;
  return v9;
}

uint64_t sub_245A3ED48(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589D4D0, 0);
  if (v5)
  {
    return sub_245A3E4FC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A3EE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3EE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A3EE50(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A3EEE4()
{
  v0 = qword_28144B330;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A3D1E4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B320;
}

void sub_245A3EF74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A3EFD8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_245A3F38C(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_245A3F320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3F334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3F348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A3F38C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_28144B788 & 1) == 0)
  {
    byte_28144B788 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/venue.pb.cc", a4);
    sub_245A46EDC(v4, v5, v6, v7);
    sub_245A3D428(v8, v9, v10, v11);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x18protobuf/gen/venue.proto\x12\vproto.venue\x1A\x1Eprotobuf/gen/coordinates.proto\x1A\x17protobuf/gen/math.protoB\n\rPolygonBounds\x12\x0E\n\x02xs\x18\x01 \x03(\x01B\x02\x10\x01\x12\x0E\n\x02ys\x18\x02 \x03(\x01B\x02\x10\x01\x12\x11\n\ttolerance\x18\x03 \x01(\x01u\n\x0EGeoJsonPolygon\x120\n\fexteriorRing\x18\x01 \x01(\v2\x1A.proto.venue.PolygonBounds\x121\n\rinteriorRings\x18\x02 \x03(\v2\x1A.proto.venue.PolygonBounds\x80\x01\n\x1DIndoorOutdoorLikelihoodParams\x12\x1E\n\x16indoorSurveyOnTileMean\x18\x01 \x02(\x01\x12\x1D\n\x15indoorSurveyOnTileMin\x18\x02 \x02(\x01\x12 \n\x18indoorSurveyOnTileStdDev\x18\x03 \x02(\x01\xB1\b\n\rFloorMetadata\x12\v\n\x03uid\x18\x01 \x02(\t\x12\x13\n\vfloorNumber\x18\x02 \x01(\x05\x12\x16\n\x0ErssiMapVersion\x18\x03 \x02(\x03\x12/\n\ftangentPoint\x18\x04 \x02(\v2\x19.proto.coordinates.LatLon\x12/\n\tglobalDbm\x18\x05 \x02(\v2\x1C.proto.math.ObservationStats\x12N\n\x17radioMapCoordinateFrame\x18\x06 \x02(\v2-.proto.coordinates.BoundedCellCoordinateFrame\x12Q\n\x1DwifiScanCountLikelihoodParams\x18\a \x02(\v2*.proto.venue.IndoorOutdoorLikelihoodParams\x12S\n\x1FbeaconScanCountLikelihoodParams\x18\n \x01(\v2*.proto.venue.IndoorOutdoorLikelihoodParams\x120\n\fsurveyBounds\x18\b \x03(\v2\x1A.proto.venue.PolygonBounds\x12\f\n\x04area\x18\t \x01(\x01\x12K\n\fencodingType\x18\v \x01(\x0E2!.proto.venue.RadioMapEncodingType:\x12FixedPointEncoding\x12J\n\x11mapCellLookupMode\x18\f \x01(\x0E2\x1E.proto.venue.MapCellLookupMode:\x0FNearestNeighbor\x124\n\x0FfloorplanBounds\x18\r \x03(\v2\x1B.proto.venue.GeoJsonPolygon\x12'\n\x1Fwifi2GpsFusionAccuracyThreshold\x18\x0E \x01(\x01\x12-\n\acontext\x18\x0F \x01(\x0E2\x1C.proto.venue.LocationContext\x12)\n!wifi2GpsInjectionParticleFraction\x18\x10 \x01(\x01\x12L\n\x14gpsAccuracyTransform\x18\x11 \x01(\v2..proto.math.LinearSaturationFunctionParameters\x12K\n\x13gpsAzimuthTransform\x18\x12 \x01(\v2..proto.math.LinearSaturationFunctionParameters\x12'\n\x1FcoarseRegionalWithWifiLocations\x18\x13 \x01(\b\x12\x16\n\x0EaltitudeMeters\x18\x14 \x01(\x01\x12\x1E\n\x16verticalAccuracyMeters\x18\x15 \x01(\x01\x95\x01\n\tOccupancy\x12F\n\x0FcoordinateFrame\x18\x01 \x02(\v2-.proto.coordinates.BoundedCellCoordinateFrame\x12\x10\n\bwalkable\x18\x02 \x02(\f\x12.\n\aversion\x18\x03 \x01(\x0E2\x1D.proto.venue.OccupancyVersion*6\n\x11MapCellLookupMode\x12\x13\n\x0FNearestNeighbor\x10\x01\x12\f\n\bBilinear\x10\x02*\xC0\x01\n\x14RadioMapEncodingType\x12\x1D\n\x19MangledFixedPointEncoding\x10\x01\x12\x16\n\x12FixedPointEncoding\x10\x02\x12\x1F\n\x1BRadiozapEncodingNoCertainty\x10\x03\x12\x14\n\x10RadiozapEncoding\x10\x04\x12\x19\n\x15PathLossModelEncoding\x10\x05\x12\x1F\n\x1BRadiozapEncoding_deprecated\x10e*+\n\x0FLocationContext\x12\n\n\x06Indoor\x10\x01\x12\f\n\bRegional\x10\x02*>\n\x10OccupancyVersion\x12\x0F\n\vSurveyBased\x10\x01\x12\x19\n\x15FloorplanOpeningBased\x10\x02B\x1E\n\x1Ccom.apple.indoor.proto.venue", 0x7F2);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

void sub_245A3F6D4(_Unwind_Exception *a1)
{
  v3 = v1;
  v5 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v5, v3);
  _Unwind_Resume(a1);
}

void sub_245A3F6F8(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A3F71C()
{
  if (qword_28144B928)
  {
    (*(*qword_28144B928 + 8))(qword_28144B928);
  }

  if (qword_28144B348)
  {
    (*(*qword_28144B348 + 8))(qword_28144B348);
  }

  if (qword_28144B920)
  {
    (*(*qword_28144B920 + 8))(qword_28144B920);
  }

  if (qword_28144B358)
  {
    (*(*qword_28144B358 + 8))(qword_28144B358);
  }

  if (qword_28144B918)
  {
    (*(*qword_28144B918 + 8))(qword_28144B918);
  }

  if (qword_28144B368)
  {
    (*(*qword_28144B368 + 8))(qword_28144B368);
  }

  if (qword_28144B930)
  {
    (*(*qword_28144B930 + 8))(qword_28144B930);
  }

  if (qword_28144B378)
  {
    (*(*qword_28144B378 + 8))(qword_28144B378);
  }

  if (qword_28144B910)
  {
    (*(*qword_28144B910 + 8))(qword_28144B910);
  }

  result = qword_28144B388;
  if (qword_28144B388)
  {
    v1 = *(*qword_28144B388 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_245A3F924()
{
  v0 = qword_28144B3B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v6[0] = MEMORY[0x277D82C40] + 16;
    v6[1] = sub_245A3EFD8;
    v7 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v6);
  }

  if (!qword_28144B928)
  {
    (sub_245A3F38C)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B920)
  {
    sub_245A3F38C(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B918)
  {
    sub_245A3F38C(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B930)
  {
    sub_245A3F38C(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B910)
  {
    sub_245A3F38C(v4);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_245A3FA74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A3FA88(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    v8 = *(a1 + 16);
    if (v6 < v7)
    {
      v9 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v9 = v7;
      }

      if (v9 <= 4)
      {
        v9 = 4;
      }

      *(a1 + 28) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 8 * v5), *(a2 + 16), 8 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 52);
    v13 = v11 + v10;
    v14 = *(a1 + 40);
    if (v12 < v13)
    {
      v15 = 2 * v12;
      if (2 * v12 <= v13)
      {
        v15 = v13;
      }

      if (v15 <= 4)
      {
        v15 = 4;
      }

      *(a1 + 52) = v15;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 8 * v11), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  if ((*(a2 + 76) & 4) != 0)
  {
    v16 = *(a2 + 64);
    *(a1 + 76) |= 4u;
    *(a1 + 64) = v16;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A3FC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3FC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A3FCB0(void *a1)
{
  *a1 = &unk_28589D4F8;
  v2 = a1[5];
  if (v2)
  {
    MEMORY[0x245D78850](v2, 0x1000C8000313F17);
  }

  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x245D78850](v3, 0x1000C8000313F17);
  }

  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A3FD38(void *a1)
{
  *a1 = &unk_28589D4F8;
  v2 = a1[5];
  if (v2)
  {
    MEMORY[0x245D78850](v2, 0x1000C8000313F17);
  }

  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x245D78850](v3, 0x1000C8000313F17);
  }

  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A3FE6C(uint64_t a1)
{
  if ((*(a1 + 76) & 0x3FC) != 0)
  {
    *(a1 + 64) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 17) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A3FE98(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v9 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_19;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_19;
      }

      if (v9 == 1)
      {
        result = sub_245A40284(1, 0xAu, this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 < v14)
        {
LABEL_40:
          if (*v15 == 18)
          {
            v12 = v15 + 1;
            *(this + 1) = v12;
            v27 = 0;
            if (v12 >= v14)
            {
              goto LABEL_44;
            }

LABEL_42:
            if (*v12 < 0)
            {
LABEL_44:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
              {
                return 0;
              }

              goto LABEL_45;
            }

            v27 = *v12;
            *(this + 1) = v12 + 1;
LABEL_45:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v28 = 0;
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28))
              {
                return 0;
              }

              v22 = v28;
              v23 = *(a1 + 48);
              v24 = *(a1 + 40);
              if (v23 == *(a1 + 52))
              {
                if (2 * v23 <= v23 + 1)
                {
                  v25 = v23 + 1;
                }

                else
                {
                  v25 = 2 * v23;
                }

                if (v25 <= 4)
                {
                  v25 = 4;
                }

                *(a1 + 52) = v25;
                operator new[]();
              }

              v21 = *(a1 + 40);
              *(a1 + 48) = v23 + 1;
              *(v21 + 8 * v23) = v22;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
LABEL_57:
            v26 = *(this + 1);
            if (v26 < *(this + 2) && *v26 == 25)
            {
              *(this + 1) = v26 + 1;
LABEL_60:
              v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 64) = v28;
              *(a1 + 76) |= 4u;
              if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_19;
        }

        v27 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
          {
            return 0;
          }
        }

        else
        {
          v27 = *v10;
          *(this + 1) = v10 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v28 = 0;
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28))
          {
            return 0;
          }

          v17 = v28;
          v18 = *(a1 + 24);
          v19 = *(a1 + 16);
          if (v18 == *(a1 + 28))
          {
            if (2 * v18 <= v18 + 1)
            {
              v20 = v18 + 1;
            }

            else
            {
              v20 = 2 * v18;
            }

            if (v20 <= 4)
            {
              v20 = 4;
            }

            *(a1 + 28) = v20;
            operator new[]();
          }

          v16 = *(a1 + 16);
          *(a1 + 24) = v18 + 1;
          *(v16 + 8 * v18) = v17;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 < v14)
        {
          goto LABEL_40;
        }
      }
    }

    if (v9 == 1)
    {
      result = sub_245A40284(1, 0x12u, this, (a1 + 40));
      if (!result)
      {
        return result;
      }

      goto LABEL_57;
    }

    if (v9 == 2)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      v27 = 0;
      if (v12 >= v11)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

LABEL_19:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_245A40284(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v30 = 0;
  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v30);
  if (result)
  {
    v9 = v30;
    v10 = *(a4 + 2);
    v11 = *a4;
    if (v10 == *(a4 + 3))
    {
      if (2 * v10 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = 2 * v10;
      }

      if (v12 <= 4)
      {
        v12 = 4;
      }

      *(a4 + 3) = v12;
      operator new[]();
    }

    v13 = *a4;
    v14 = v10 + 1;
    *(a4 + 2) = v10 + 1;
    *(v13 + 8 * v10) = v9;
    v15 = *(this + 1);
    v16 = *(this + 4) - v15;
    if (v16 >= 1)
    {
      v17 = *(a4 + 3) - v14;
      v18 = v16 / (a1 + 8);
      v19 = v18 >= v17 ? *(a4 + 3) - v14 : v16 / (a1 + 8);
      if (v19 >= 1)
      {
        if (a2 > 0x7F)
        {
          if (a2 >> 14)
          {
            return result;
          }

          v20 = 0;
          v25 = v10 + 2;
          v26 = v13 + 8 * v14;
          v27 = v18;
          if (v18 >= v17)
          {
            v27 = v17;
          }

          while ((a2 & 0x7F | 0x80) == *v15 && a2 >> 7 == v15[1])
          {
            v28 = *(v15 + 2);
            *(a4 + 2) = v25;
            *(v26 + 8 * v20++) = v28;
            ++v25;
            v15 += 10;
            if (v27 == v20)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v20 = 0;
          v21 = v10 + 2;
          v22 = v13 + 8 * v14;
          v23 = v18;
          if (v18 >= v17)
          {
            v23 = *(a4 + 3) - v14;
          }

          while (*v15 == a2)
          {
            v24 = *(v15 + 1);
            *(a4 + 2) = v21;
            *(v22 + 8 * v20) = v24;
            ++v21;
            ++v20;
            v15 += 9;
            if (v23 == v20)
            {
              goto LABEL_29;
            }
          }
        }

        v19 = v20;
LABEL_29:
        if (v19 * (a1 + 8) >= 1)
        {
          v29 = result;
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this);
          return v29;
        }
      }
    }
  }

  return result;
}

uint64_t sub_245A404B4(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v5 = *(v4 + 32);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v4 + 24) >= 1)
    {
      v6 = 0;
      do
      {
        v7 = *(*(v4 + 16) + 8 * v6);
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2);
        ++v6;
      }

      while (v6 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v8 = *(v4 + 56);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v4 + 48) >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(*(v4 + 40) + 8 * v9);
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2);
        ++v9;
      }

      while (v9 < *(v4 + 48));
    }
  }

  if ((*(v4 + 76) & 4) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 64), a3);
  }

  v13 = *(v4 + 8);
  v12 = v4 + 8;
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return MEMORY[0x2821F9DB8](v12, a2);
  }

  return result;
}

_BYTE *sub_245A405DC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v4 = *(this + 8);
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, (a2 + 1), a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    v5 = 0;
    do
    {
      *a2 = *(*(this + 2) + 8 * v5);
      a2 += 8;
      ++v5;
    }

    while (v5 < *(this + 6));
  }

LABEL_8:
  if (*(this + 12) <= 0)
  {
    goto LABEL_15;
  }

  *a2 = 18;
  v6 = *(this + 14);
  if (v6 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, (a2 + 1), a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  v7 = 0;
  do
  {
    *a2 = *(*(this + 5) + 8 * v7);
    a2 += 8;
    ++v7;
  }

  while (v7 < *(this + 12));
LABEL_15:
  if ((*(this + 76) & 4) != 0)
  {
    v8 = *(this + 8);
    *a2 = 25;
    *(a2 + 1) = v8;
    a2 += 9;
  }

  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
}

uint64_t sub_245A40770(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = (*(a1 + 76) << 29 >> 31) & 9;
  v4 = *(a1 + 24);
  v5 = 8 * v4;
  if (v4 >= 1)
  {
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v4)) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
  }

  *(a1 + 32) = v5;
  v7 = v3 + v5;
  v8 = *(a1 + 48);
  v9 = 8 * v8;
  if (v8 >= 1)
  {
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v8)) + 1;
    }

    else
    {
      v10 = 2;
    }

    v7 += v10;
  }

  v11 = *(a1 + 8);
  *(a1 + 56) = v9;
  v12 = v7 + v9;
  if (v11 && *v11 != v11[1])
  {
    v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v12;
  }

  *(a1 + 72) = v12;
  return v12;
}

uint64_t sub_245A40840(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589D858, 0);
  if (v5)
  {
    return sub_245A3FA88(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A40920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A40934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A40948(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A409DC()
{
  v0 = qword_28144B3B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A3EFD8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B340;
}

void sub_245A40A6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A40A80(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
    sub_245A417C8((a1 + 24), a2 + 24);
    if ((*(a2 + 52) & 1) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    sub_245A417C8((a1 + 24), a2 + 24);
    if ((*(a2 + 52) & 1) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  *(a1 + 52) |= 1u;
  v4 = *(a1 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    v5 = *(qword_28144B920 + 16);
  }

  sub_245A3FA88(v4, v5);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A40C00(uint64_t a1)
{
  *a1 = &unk_28589D5A8;
  if (qword_28144B920 != a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 36);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 24) + 8 * i);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 36);
      }
    }
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    MEMORY[0x245D78850](v6, 0x80C80B8603338);
  }

  MEMORY[0x245D78300](a1 + 8);

  JUMPOUT(0x245D78470);
}

void sub_245A40D0C(uint64_t a1)
{
  sub_245A40C00(a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A40DE0(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    this = *(this + 16);
    if (this)
    {
      if ((*(this + 76) & 0x3FC) != 0)
      {
        *(this + 64) = 0;
      }

      v2 = *(this + 8);
      this += 8;
      *(this + 16) = 0;
      *(this + 40) = 0;
      *(this + 68) = 0;
      if (v2)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if (*(v1 + 32) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 24) + 8 * v3);
      this = (*(*v4 + 32))(v4);
      ++v3;
    }

    while (v3 < *(v1 + 32));
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  *(v5 + 6) = 0;
  *(v5 + 11) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_245A40EB4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 16);
      if (!v9)
      {
        operator new();
      }

      v32 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
        {
          return 0;
        }
      }

      else
      {
        v32 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_245A3FE98(v9, this, v13, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
      }

      v18 = *(this + 1);
      if (v18 < *(this + 2) && *v18 == 18)
      {
        do
        {
          *(this + 1) = v18 + 1;
LABEL_27:
          v19 = *(a1 + 36);
          v20 = *(a1 + 32);
          if (v20 >= v19)
          {
            if (v19 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v19 = *(a1 + 36);
            }

            *(a1 + 36) = v19 + 1;
            operator new();
          }

          v21 = *(a1 + 24);
          *(a1 + 32) = v20 + 1;
          v22 = *(v21 + 8 * v20);
          v33 = 0;
          v23 = *(this + 1);
          if (v23 >= *(this + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33))
            {
              return 0;
            }
          }

          else
          {
            v33 = *v23;
            *(this + 1) = v23 + 1;
          }

          v24 = *(this + 14);
          v25 = *(this + 15);
          *(this + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245A3FE98(v22, this, v26, v27) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v28 = *(this + 14);
          v16 = __OFSUB__(v28, 1);
          v29 = v28 - 1;
          if (v29 < 0 == v16)
          {
            *(this + 14) = v29;
          }

          v18 = *(this + 1);
          v30 = *(this + 2);
        }

        while (v18 < v30 && *v18 == 18);
        if (v18 == v30 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_245A41238(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A41258(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 52))
  {
    if (!*(result + 16))
    {
      v4 = *(qword_28144B920 + 16);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
  }

  if (*(v3 + 32) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v3 + 24) + 8 * v5);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      ++v5;
    }

    while (v5 < *(v3 + 32));
  }

  v9 = *(v3 + 8);
  v8 = v3 + 8;
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A4131C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if ((*(this + 52) & 1) == 0)
  {
    result = a2;
    if (*(this + 8) < 1)
    {
      goto LABEL_15;
    }

LABEL_10:
    v11 = 0;
    do
    {
      v13 = *(*(this + 3) + 8 * v11);
      *result = 18;
      v14 = *(v13 + 18);
      if (v14 <= 0x7F)
      {
        *(result + 1) = v14;
        v12 = result + 2;
      }

      else
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v13 + 18), result + 1, a3);
      }

      result = sub_245A405DC(v13, v12, a3);
      ++v11;
    }

    while (v11 < *(this + 8));
    goto LABEL_15;
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = a2;
    *a2 = 10;
    v7 = a2 + 1;
    v8 = v5[18];
    if (v8 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(qword_28144B920 + 16);
    v6 = a2;
    *a2 = 10;
    v7 = a2 + 1;
    v8 = v5[18];
    if (v8 <= 0x7F)
    {
LABEL_6:
      *(v6 + 1) = v8;
      result = sub_245A405DC(v5, v6 + 2, a3);
      if (*(this + 8) < 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
  result = sub_245A405DC(v5, v9, v10);
  if (*(this + 8) >= 1)
  {
    goto LABEL_10;
  }

LABEL_15:
  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (v17 && *v15 != v15[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, result, a3);
  }

  return result;
}

uint64_t sub_245A41474(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = v3;
    if (v3 < 1)
    {
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_28144B920 + 16);
  }

  v6 = (*(v5 + 76) << 29 >> 31) & 9;
  v7 = *(v5 + 24);
  v8 = 8 * v7;
  if (v7 >= 1)
  {
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v7)) + 1;
    }

    else
    {
      v9 = 2;
    }

    v6 += v9;
  }

  *(v5 + 32) = v8;
  v10 = v6 + v8;
  v11 = *(v5 + 48);
  v12 = 8 * v11;
  if (v11 >= 1)
  {
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v11)) + 1;
    }

    else
    {
      v13 = 2;
    }

    v10 += v13;
  }

  v14 = *(v5 + 8);
  *(v5 + 56) = v12;
  v15 = (v10 + v12);
  if (v14 && *v14 != v14[1])
  {
    v15 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v5 + 8), a2) + v15);
  }

  *(v5 + 72) = v15;
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
  }

  else
  {
    v16 = 1;
  }

  v17 = *(a1 + 32);
  v4 = (v17 + v15 + v16 + 1);
  if (v17 >= 1)
  {
LABEL_23:
    v18 = 0;
    do
    {
      v20 = *(*(a1 + 24) + 8 * v18);
      v21 = (*(v20 + 76) << 29 >> 31) & 9;
      v22 = *(v20 + 24);
      v23 = 8 * v22;
      if (v22 >= 1)
      {
        if (v23 >= 0x80)
        {
          v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v22)) + 1;
        }

        else
        {
          v24 = 2;
        }

        v21 += v24;
      }

      *(v20 + 32) = v23;
      v25 = v21 + v23;
      v26 = *(v20 + 48);
      v27 = 8 * v26;
      if (v26 >= 1)
      {
        if (v27 >= 0x80)
        {
          v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v26)) + 1;
        }

        else
        {
          v28 = 2;
        }

        v25 += v28;
      }

      v29 = *(v20 + 8);
      *(v20 + 56) = v27;
      v30 = (v25 + v27);
      if (v29 && *v29 != v29[1])
      {
        v30 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v20 + 8), a2) + v30);
      }

      *(v20 + 72) = v30;
      if (v30 < 0x80)
      {
        v19 = 1;
      }

      else
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
      }

      v4 = (v30 + v4 + v19);
      ++v18;
    }

    while (v18 < *(a1 + 32));
  }

LABEL_41:
  v31 = *(a1 + 8);
  if (v31 && *v31 != v31[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_245A416C0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589D870, 0);
  if (v5)
  {
    return sub_245A40A80(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A417A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A417B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A417C8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v6 = 0;
    do
    {
      v8 = *(*a2 + 8 * v6);
      v9 = *(a1 + 3);
      v10 = *(a1 + 2);
      if (v10 >= v9)
      {
        if (v9 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v9 = *(a1 + 3);
        }

        *(a1 + 3) = v9 + 1;
        operator new();
      }

      v7 = *a1;
      *(a1 + 2) = v10 + 1;
      result = sub_245A3FA88(*(v7 + 8 * v10), v8);
      ++v6;
    }

    while (v6 < *(a2 + 8));
  }

  return result;
}

uint64_t sub_245A4191C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A419B0()
{
  v0 = qword_28144B3B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A3EFD8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B350;
}

void sub_245A41A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A41A54(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 44) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 44) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A41B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A41B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A41B64(void *a1)
{
  *a1 = &unk_28589D658;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A41BB8(void *a1)
{
  *a1 = &unk_28589D658;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A41CB4(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A41CD8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v13;
        *(a1 + 44) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v13;
      *(a1 + 44) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v13;
        *(a1 + 44) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A41EAC(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 44);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  if ((*(v4 + 44) & 4) == 0)
  {
LABEL_4:
    v8 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_9:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

uint64_t sub_245A41F64(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = *(a1 + 32);
      *a2 = 25;
      *(a2 + 1) = v9;
      a2 += 9;
      v10 = *(a1 + 8);
      v4 = (a1 + 8);
      v5 = v10;
      if (!v10)
      {
        return a2;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v8;
  a2 += 9;
  if ((*(a1 + 44) & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_9:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A42094(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 44))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_245A42108(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589D888, 0);
  if (v5)
  {
    return sub_245A41A54(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A421E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A421FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A42210(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A422B0()
{
  v0 = qword_28144B3B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A3EFD8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B360;
}

void sub_245A42340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A42354(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
  }

  sub_245A417C8((a1 + 80), a2 + 80);
  v4 = *(a1 + 120);
  v5 = *(a2 + 120);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112));
  if (*(a2 + 120) >= 1)
  {
    v6 = 0;
    do
    {
      v8 = *(*(a2 + 112) + 8 * v6);
      v9 = *(a1 + 124);
      v10 = *(a1 + 120);
      if (v10 >= v9)
      {
        if (v9 == *(a1 + 128))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112));
          v9 = *(a1 + 124);
        }

        *(a1 + 124) = v9 + 1;
        operator new();
      }

      v7 = *(a1 + 112);
      *(a1 + 120) = v10 + 1;
      sub_245A40A80(*(v7 + 8 * v10), v8);
      ++v6;
    }

    while (v6 < *(a2 + 120));
  }

  v11 = *(a2 + 200);
  if (!v11)
  {
    goto LABEL_19;
  }

  if (v11)
  {
    v12 = *(a2 + 16);
    *(a1 + 200) |= 1u;
    v13 = *(a1 + 16);
    if (v13 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v13, v12);
    v11 = *(a2 + 200);
    if ((v11 & 2) == 0)
    {
LABEL_13:
      if ((v11 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_13;
  }

  v14 = *(a2 + 56);
  *(a1 + 200) |= 2u;
  *(a1 + 56) = v14;
  v11 = *(a2 + 200);
  if ((v11 & 4) == 0)
  {
LABEL_14:
    if ((v11 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = *(a2 + 24);
  *(a1 + 200) |= 4u;
  *(a1 + 24) = v15;
  v11 = *(a2 + 200);
  if ((v11 & 8) == 0)
  {
LABEL_15:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    *(a1 + 200) |= 0x10u;
    v18 = *(a1 + 40);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 40);
    if (v19)
    {
      sub_245A3D858(v18, v19);
      v11 = *(a2 + 200);
      if ((v11 & 0x20) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_245A3D858(v18, *(qword_28144B930 + 40));
      v11 = *(a2 + 200);
      if ((v11 & 0x20) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_17:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_26:
  *(a1 + 200) |= 8u;
  v16 = *(a1 + 32);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 32);
  if (v17)
  {
    sub_245A474FC(v16, v17);
    v11 = *(a2 + 200);
    if ((v11 & 0x10) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    sub_245A474FC(v16, *(qword_28144B930 + 32));
    v11 = *(a2 + 200);
    if ((v11 & 0x10) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_16:
  if ((v11 & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_38:
  *(a1 + 200) |= 0x20u;
  v20 = *(a1 + 48);
  if (!v20)
  {
    operator new();
  }

  v21 = *(a2 + 48);
  if (v21)
  {
    sub_245A49444(v20, v21);
    v11 = *(a2 + 200);
    if ((v11 & 0x40) != 0)
    {
LABEL_44:
      *(a1 + 200) |= 0x40u;
      v22 = *(a1 + 64);
      if (!v22)
      {
        operator new();
      }

      v23 = *(a2 + 64);
      if (v23)
      {
        sub_245A41A54(v22, v23);
        v11 = *(a2 + 200);
        if ((v11 & 0x80) != 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        sub_245A41A54(v22, *(qword_28144B930 + 64));
        v11 = *(a2 + 200);
        if ((v11 & 0x80) != 0)
        {
          goto LABEL_50;
        }
      }

LABEL_19:
      if ((v11 & 0x1FE00) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_56;
    }
  }

  else
  {
    sub_245A49444(v20, *(qword_28144B930 + 48));
    v11 = *(a2 + 200);
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_44;
    }
  }

LABEL_18:
  if ((v11 & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_50:
  *(a1 + 200) |= 0x80u;
  v24 = *(a1 + 72);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 72);
  if (v25)
  {
    sub_245A41A54(v24, v25);
    v11 = *(a2 + 200);
    if ((v11 & 0x1FE00) == 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
    sub_245A41A54(v24, *(qword_28144B930 + 72));
    v11 = *(a2 + 200);
    if ((v11 & 0x1FE00) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_56:
  if ((v11 & 0x200) != 0)
  {
    v33 = *(a2 + 104);
    *(a1 + 200) |= 0x200u;
    *(a1 + 104) = v33;
    v11 = *(a2 + 200);
    if ((v11 & 0x400) == 0)
    {
LABEL_58:
      if ((v11 & 0x800) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_81;
    }
  }

  else if ((v11 & 0x400) == 0)
  {
    goto LABEL_58;
  }

  v34 = *(a2 + 60);
  *(a1 + 200) |= 0x400u;
  *(a1 + 60) = v34;
  v11 = *(a2 + 200);
  if ((v11 & 0x800) == 0)
  {
LABEL_59:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

LABEL_82:
    v36 = *(a2 + 144);
    *(a1 + 200) |= 0x2000u;
    *(a1 + 144) = v36;
    v11 = *(a2 + 200);
    if ((v11 & 0x4000) == 0)
    {
LABEL_61:
      if ((v11 & 0x8000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    goto LABEL_83;
  }

LABEL_81:
  v35 = *(a2 + 136);
  *(a1 + 200) |= 0x800u;
  *(a1 + 136) = v35;
  v11 = *(a2 + 200);
  if ((v11 & 0x2000) != 0)
  {
    goto LABEL_82;
  }

LABEL_60:
  if ((v11 & 0x4000) == 0)
  {
    goto LABEL_61;
  }

LABEL_83:
  v37 = *(a2 + 140);
  *(a1 + 200) |= 0x4000u;
  *(a1 + 140) = v37;
  v11 = *(a2 + 200);
  if ((v11 & 0x8000) != 0)
  {
LABEL_62:
    v26 = *(a2 + 152);
    *(a1 + 200) |= 0x8000u;
    *(a1 + 152) = v26;
    v11 = *(a2 + 200);
  }

LABEL_63:
  if ((v11 & 0xFF0000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v11 & 0x10000) != 0)
  {
    *(a1 + 200) |= 0x10000u;
    v27 = *(a1 + 160);
    if (!v27)
    {
      operator new();
    }

    v28 = *(a2 + 160);
    if (!v28)
    {
      v28 = *(qword_28144B930 + 160);
    }

    sub_245A3E4FC(v27, v28);
    v11 = *(a2 + 200);
  }

  if ((v11 & 0x20000) != 0)
  {
    *(a1 + 200) |= 0x20000u;
    v29 = *(a1 + 168);
    if (!v29)
    {
      operator new();
    }

    v30 = *(a2 + 168);
    if (!v30)
    {
      v30 = *(qword_28144B930 + 168);
    }

    sub_245A3E4FC(v29, v30);
    v11 = *(a2 + 200);
  }

  if ((v11 & 0x40000) == 0)
  {
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_76;
    }

LABEL_86:
    v39 = *(a2 + 176);
    *(a1 + 200) |= 0x80000u;
    *(a1 + 176) = v39;
    if ((*(a2 + 200) & 0x100000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_77;
  }

  v38 = *(a2 + 192);
  *(a1 + 200) |= 0x40000u;
  *(a1 + 192) = v38;
  v11 = *(a2 + 200);
  if ((v11 & 0x80000) != 0)
  {
    goto LABEL_86;
  }

LABEL_76:
  if ((v11 & 0x100000) != 0)
  {
LABEL_77:
    v31 = *(a2 + 184);
    *(a1 + 200) |= 0x100000u;
    *(a1 + 184) = v31;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A42AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A42AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A42AF0(uint64_t a1)
{
  *a1 = &unk_28589D708;
  sub_245A42C34(a1);
  v2 = *(a1 + 124);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 112) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 124);
      }
    }
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    MEMORY[0x245D78850](v5, 0x80C80B8603338);
  }

  v6 = *(a1 + 92);
  if (v6 >= 1)
  {
    for (j = 0; j < v6; ++j)
    {
      v8 = *(*(a1 + 80) + 8 * j);
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v6 = *(a1 + 92);
      }
    }
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    MEMORY[0x245D78850](v9, 0x80C80B8603338);
  }

  MEMORY[0x245D78300](a1 + 8);

  JUMPOUT(0x245D78470);
}

void *sub_245A42C34(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x245D78870](v2, 0x1012C40EC159624);
  }

  if (qword_28144B930 != v1)
  {
    v4 = v1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[9];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[20];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    result = v1[21];
    if (result)
    {
      v10 = *(*result + 8);

      return v10();
    }
  }

  return result;
}

void sub_245A42DF4(uint64_t a1)
{
  sub_245A42AF0(a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A42F14(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (!*(this + 200))
  {
    goto LABEL_27;
  }

  if ((*(this + 200) & 1) == 0 || (v2 = *(this + 2), v2 == MEMORY[0x277D82C30]))
  {
LABEL_6:
    *(this + 14) = 0;
    *(this + 3) = 0;
    v3 = *(this + 50);
    if ((v3 & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_6;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  *(this + 14) = 0;
  *(this + 3) = 0;
  v3 = *(this + 50);
  if ((v3 & 8) != 0)
  {
LABEL_7:
    this = *(this + 4);
    if (this)
    {
      this = sub_245A47770(this);
      v3 = *(v1 + 50);
    }
  }

LABEL_9:
  if ((v3 & 0x10) != 0)
  {
    this = *(v1 + 5);
    if (this)
    {
      this = sub_245A3DB5C(this);
      v3 = *(v1 + 50);
    }
  }

  if ((v3 & 0x20) != 0)
  {
    this = *(v1 + 6);
    if (this)
    {
      this = sub_245A49804(this);
      v3 = *(v1 + 50);
    }
  }

  if ((v3 & 0x40) != 0)
  {
    this = *(v1 + 8);
    if (this)
    {
      if (*(this + 44))
      {
        *(this + 2) = 0;
        *(this + 3) = 0;
        *(this + 4) = 0;
      }

      v4 = *(this + 1);
      this = (this + 8);
      *(this + 9) = 0;
      if (v4)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if ((*(v1 + 200) & 0x80) != 0)
  {
    this = *(v1 + 9);
    if (this)
    {
      if (*(this + 44))
      {
        *(this + 2) = 0;
        *(this + 3) = 0;
        *(this + 4) = 0;
      }

      v5 = *(this + 1);
      this = (this + 8);
      *(this + 9) = 0;
      if (v5)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

LABEL_27:
  v6 = *(v1 + 50);
  if ((v6 & 0x1FE00) != 0)
  {
    *(v1 + 13) = 0;
    *(v1 + 15) = 2;
    *(v1 + 17) = 0x100000001;
    *(v1 + 18) = 0;
    *(v1 + 19) = 0;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    if ((v6 & 0x10000) != 0)
    {
      this = *(v1 + 20);
      if (this)
      {
        this = sub_245A3E7C0(this);
        v6 = *(v1 + 50);
      }
    }

    if ((v6 & 0x20000) != 0)
    {
      this = *(v1 + 21);
      if (this)
      {
        this = sub_245A3E7C0(this);
      }
    }

    *(v1 + 22) = 0;
    *(v1 + 23) = 0;
    *(v1 + 192) = 0;
  }

  if (*(v1 + 22) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v1 + 10) + 8 * v7);
      this = (*(*v8 + 32))(v8);
      ++v7;
    }

    while (v7 < *(v1 + 22));
  }

  *(v1 + 22) = 0;
  if (*(v1 + 30) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(v1 + 14) + 8 * v9);
      this = (*(*v10 + 32))(v10);
      ++v9;
    }

    while (v9 < *(v1 + 30));
  }

  v12 = *(v1 + 1);
  v11 = (v1 + 8);
  *(v11 + 28) = 0;
  *(v11 + 48) = 0;
  if (v12)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v11);
  }

  return this;
}

uint64_t sub_245A4314C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x277D82C30];
  while (1)
  {
LABEL_2:
    v7 = *(this + 1);
    if (v7 < *(this + 2))
    {
      TagFallback = *v7;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v7 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_7;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_7:
    v9 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v9 != 2)
        {
          goto LABEL_82;
        }

        *(a1 + 200) |= 1u;
        if (*(a1 + 16) == v6)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        if (v12 >= v11 || *v12 != 16)
        {
          continue;
        }

        v13 = v12 + 1;
        *(this + 1) = v13;
LABEL_48:
        v133[0] = 0;
        if (v13 >= v11 || (v33 = *v13, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133);
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          v11 = *(this + 2);
          *(a1 + 56) = v133[0];
          *(a1 + 200) |= 2u;
          if (v34 >= v11)
          {
            continue;
          }
        }

        else
        {
          v34 = v13 + 1;
          *(this + 1) = v34;
          *(a1 + 56) = v33;
          *(a1 + 200) |= 2u;
          if (v34 >= v11)
          {
            continue;
          }
        }

        if (*v34 != 24)
        {
          continue;
        }

        v27 = v34 + 1;
        *(this + 1) = v27;
        *v133 = 0;
        if (v27 >= v11)
        {
          goto LABEL_92;
        }

LABEL_89:
        v44 = *v27;
        if (v44 < 0)
        {
LABEL_92:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v133);
          if (!result)
          {
            return result;
          }

          v45 = *(this + 1);
          v47 = *(this + 2);
          *(a1 + 24) = *v133;
          v46 = *(a1 + 200) | 4;
          *(a1 + 200) = v46;
          if (v45 >= v47)
          {
            continue;
          }
        }

        else
        {
          v45 = v27 + 1;
          *(this + 1) = v45;
          *(a1 + 24) = v44;
          v46 = *(a1 + 200) | 4;
          *(a1 + 200) = v46;
          if (v45 >= v11)
          {
            continue;
          }
        }

        if (*v45 != 34)
        {
          continue;
        }

        *(this + 1) = v45 + 1;
        *(a1 + 200) = v46 | 8;
        v28 = *(a1 + 32);
        if (!v28)
        {
LABEL_96:
          operator new();
        }

LABEL_97:
        v133[0] = 0;
        v48 = *(this + 1);
        if (v48 >= *(this + 2) || *v48 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133))
          {
            return 0;
          }
        }

        else
        {
          v133[0] = *v48;
          *(this + 1) = v48 + 1;
        }

        v49 = *(this + 14);
        v50 = *(this + 15);
        *(this + 14) = v49 + 1;
        if (v49 >= v50)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A47790(v28, this, v51, v52) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v53 = *(this + 14);
        v54 = __OFSUB__(v53, 1);
        v55 = v53 - 1;
        if (v55 < 0 == v54)
        {
          *(this + 14) = v55;
        }

        v56 = *(this + 1);
        if (v56 >= *(this + 2) || *v56 != 42)
        {
          continue;
        }

        *(this + 1) = v56 + 1;
        *(a1 + 200) |= 0x10u;
        v20 = *(a1 + 40);
        if (!v20)
        {
LABEL_109:
          operator new();
        }

LABEL_26:
        v133[0] = 0;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133))
          {
            return 0;
          }
        }

        else
        {
          v133[0] = *v21;
          *(this + 1) = v21 + 1;
        }

        v57 = *(this + 14);
        v58 = *(this + 15);
        *(this + 14) = v57 + 1;
        if (v57 >= v58)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A3DB84(v20, this, v59, v60) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v61 = *(this + 14);
        v54 = __OFSUB__(v61, 1);
        v62 = v61 - 1;
        if (v62 < 0 == v54)
        {
          *(this + 14) = v62;
        }

        v63 = *(this + 1);
        if (v63 >= *(this + 2) || *v63 != 50)
        {
          continue;
        }

        *(this + 1) = v63 + 1;
        *(a1 + 200) |= 0x20u;
        v36 = *(a1 + 48);
        if (!v36)
        {
LABEL_121:
          operator new();
        }

LABEL_63:
        v133[0] = 0;
        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133))
          {
            return 0;
          }
        }

        else
        {
          v133[0] = *v37;
          *(this + 1) = v37 + 1;
        }

        v64 = *(this + 14);
        v65 = *(this + 15);
        *(this + 14) = v64 + 1;
        if (v64 >= v65)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A498C0(v36, this, v66, v67) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v68 = *(this + 14);
        v54 = __OFSUB__(v68, 1);
        v69 = v68 - 1;
        if (v69 < 0 == v54)
        {
          *(this + 14) = v69;
        }

        v70 = *(this + 1);
        if (v70 >= *(this + 2) || *v70 != 58)
        {
          continue;
        }

        *(this + 1) = v70 + 1;
        *(a1 + 200) |= 0x40u;
        v38 = *(a1 + 64);
        if (!v38)
        {
LABEL_133:
          operator new();
        }

LABEL_70:
        v133[0] = 0;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133))
          {
            return 0;
          }
        }

        else
        {
          v133[0] = *v39;
          *(this + 1) = v39 + 1;
        }

        v71 = *(this + 14);
        v72 = *(this + 15);
        *(this + 14) = v71 + 1;
        if (v71 >= v72)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A41CD8(v38, this, v73, v74) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v75 = *(this + 14);
        v54 = __OFSUB__(v75, 1);
        v76 = v75 - 1;
        if (v76 < 0 == v54)
        {
          *(this + 14) = v76;
        }

        v77 = *(this + 1);
        if (v77 >= *(this + 2) || *v77 != 66)
        {
          continue;
        }

        do
        {
          *(this + 1) = v77 + 1;
          v29 = *(a1 + 92);
          v30 = *(a1 + 88);
          if (v30 >= v29)
          {
LABEL_145:
            if (v29 == *(a1 + 96))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80));
              v29 = *(a1 + 92);
            }

            *(a1 + 92) = v29 + 1;
            operator new();
          }

LABEL_45:
          v31 = *(a1 + 80);
          *(a1 + 88) = v30 + 1;
          v32 = *(v31 + 8 * v30);
          v133[0] = 0;
          v78 = *(this + 1);
          if (v78 >= *(this + 2) || *v78 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133))
            {
              return 0;
            }
          }

          else
          {
            v133[0] = *v78;
            *(this + 1) = v78 + 1;
          }

          v79 = *(this + 14);
          v80 = *(this + 15);
          *(this + 14) = v79 + 1;
          if (v79 >= v80)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245A3FE98(v32, this, v81, v82) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v83 = *(this + 14);
          v54 = __OFSUB__(v83, 1);
          v84 = v83 - 1;
          if (v84 < 0 == v54)
          {
            *(this + 14) = v84;
          }

          v77 = *(this + 1);
          if (v77 >= *(this + 2))
          {
            goto LABEL_2;
          }

          v85 = *v77;
        }

        while (v85 == 66);
        if (v85 != 73)
        {
          continue;
        }

        *(this + 1) = v77 + 1;
        *v133 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v133) & 1) == 0)
        {
          return 0;
        }

LABEL_161:
        *(a1 + 104) = *v133;
        v86 = *(a1 + 200) | 0x200;
        *(a1 + 200) = v86;
        v87 = *(this + 1);
        if (v87 >= *(this + 2) || *v87 != 82)
        {
          continue;
        }

        *(this + 1) = v87 + 1;
        *(a1 + 200) = v86 | 0x80;
        v26 = *(a1 + 72);
        if (!v26)
        {
LABEL_164:
          operator new();
        }

LABEL_165:
        v133[0] = 0;
        v88 = *(this + 1);
        if (v88 >= *(this + 2) || *v88 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133))
          {
            return 0;
          }
        }

        else
        {
          v133[0] = *v88;
          *(this + 1) = v88 + 1;
        }

        v89 = *(this + 14);
        v90 = *(this + 15);
        *(this + 14) = v89 + 1;
        if (v89 >= v90)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A41CD8(v26, this, v91, v92) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v93 = *(this + 14);
        v54 = __OFSUB__(v93, 1);
        v94 = v93 - 1;
        if (v94 < 0 == v54)
        {
          *(this + 14) = v94;
        }

        v96 = *(this + 1);
        v95 = *(this + 2);
        if (v96 >= v95 || *v96 != 88)
        {
          continue;
        }

        v43 = v96 + 1;
        *(this + 1) = v43;
        v133[0] = 0;
        if (v43 >= v95)
        {
          goto LABEL_180;
        }

LABEL_177:
        v97 = *v43;
        if ((v97 & 0x80000000) != 0)
        {
LABEL_180:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133);
          if (!result)
          {
            return result;
          }

          v97 = v133[0];
          if (v133[0] - 1 < 5)
          {
LABEL_183:
            *(a1 + 200) |= 0x400u;
            *(a1 + 60) = v97;
            v98 = *(this + 1);
            v18 = *(this + 2);
            if (v98 >= v18)
            {
              continue;
            }

            goto LABEL_184;
          }
        }

        else
        {
          *(this + 1) = v43 + 1;
          if (v97 - 1 < 5)
          {
            goto LABEL_183;
          }
        }

        if (v97 == 101)
        {
          goto LABEL_183;
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
        v98 = *(this + 1);
        v18 = *(this + 2);
        if (v98 >= v18)
        {
          continue;
        }

LABEL_184:
        if (*v98 != 96)
        {
          continue;
        }

        v19 = v98 + 1;
        *(this + 1) = v19;
LABEL_186:
        v133[0] = 0;
        if (v19 >= v18 || (v99 = *v19, (v99 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133);
          if (!result)
          {
            return result;
          }

          v99 = v133[0];
          if (v133[0] - 1 <= 1)
          {
LABEL_189:
            *(a1 + 200) |= 0x800u;
            *(a1 + 136) = v99;
            goto LABEL_193;
          }
        }

        else
        {
          *(this + 1) = v19 + 1;
          if (v99 - 1 <= 1)
          {
            goto LABEL_189;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
LABEL_193:
        v100 = *(this + 1);
        if (v100 >= *(this + 2) || *v100 != 106)
        {
          continue;
        }

        do
        {
          *(this + 1) = v100 + 1;
          v22 = *(a1 + 124);
          v23 = *(a1 + 120);
          if (v23 >= v22)
          {
LABEL_199:
            if (v22 == *(a1 + 128))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112));
              v22 = *(a1 + 124);
            }

            *(a1 + 124) = v22 + 1;
            operator new();
          }

LABEL_30:
          v24 = *(a1 + 112);
          *(a1 + 120) = v23 + 1;
          v25 = *(v24 + 8 * v23);
          v133[0] = 0;
          v101 = *(this + 1);
          if (v101 >= *(this + 2) || *v101 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133))
            {
              return 0;
            }
          }

          else
          {
            v133[0] = *v101;
            *(this + 1) = v101 + 1;
          }

          v102 = *(this + 14);
          v103 = *(this + 15);
          *(this + 14) = v102 + 1;
          if (v102 >= v103)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245A40EB4(v25, this, v104, v105) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v106 = *(this + 14);
          v54 = __OFSUB__(v106, 1);
          v107 = v106 - 1;
          if (v107 < 0 == v54)
          {
            *(this + 14) = v107;
          }

          v100 = *(this + 1);
          if (v100 >= *(this + 2))
          {
            goto LABEL_2;
          }

          v108 = *v100;
        }

        while (v108 == 106);
        if (v108 != 113)
        {
          continue;
        }

        *(this + 1) = v100 + 1;
        *v133 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v133) & 1) == 0)
        {
          return 0;
        }

LABEL_215:
        *(a1 + 144) = *v133;
        *(a1 + 200) |= 0x2000u;
        v110 = *(this + 1);
        v109 = *(this + 2);
        if (v110 >= v109 || *v110 != 120)
        {
          continue;
        }

        v17 = v110 + 1;
        *(this + 1) = v17;
        v133[0] = 0;
        if (v17 >= v109)
        {
          goto LABEL_221;
        }

LABEL_218:
        v111 = *v17;
        if ((v111 & 0x80000000) != 0)
        {
LABEL_221:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133);
          if (!result)
          {
            return result;
          }

          v111 = v133[0];
          if (v133[0] - 1 <= 1)
          {
LABEL_220:
            *(a1 + 200) |= 0x4000u;
            *(a1 + 140) = v111;
            goto LABEL_224;
          }
        }

        else
        {
          *(this + 1) = v17 + 1;
          if (v111 - 1 <= 1)
          {
            goto LABEL_220;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
LABEL_224:
        v112 = *(this + 1);
        if (*(this + 4) - v112 < 2 || *v112 != 129 || v112[1] != 1)
        {
          continue;
        }

        *(this + 1) = v112 + 2;
        *v133 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v133) & 1) == 0)
        {
          return 0;
        }

LABEL_228:
        *(a1 + 152) = *v133;
        v113 = *(a1 + 200) | 0x8000;
        *(a1 + 200) = v113;
        v114 = *(this + 1);
        if (*(this + 4) - v114 < 2 || *v114 != 138 || v114[1] != 1)
        {
          continue;
        }

        *(this + 1) = v114 + 2;
        *(a1 + 200) = v113 | 0x10000;
        v14 = *(a1 + 160);
        if (!v14)
        {
LABEL_232:
          operator new();
        }

LABEL_17:
        v133[0] = 0;
        v15 = *(this + 1);
        if (v15 >= *(this + 2) || *v15 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133))
          {
            return 0;
          }
        }

        else
        {
          v133[0] = *v15;
          *(this + 1) = v15 + 1;
        }

        v115 = *(this + 14);
        v116 = *(this + 15);
        *(this + 14) = v115 + 1;
        if (v115 >= v116)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A3E7E8(v14, this, v117, v118) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v119 = *(this + 14);
        v54 = __OFSUB__(v119, 1);
        v120 = v119 - 1;
        if (v120 < 0 == v54)
        {
          *(this + 14) = v120;
        }

        v121 = *(this + 1);
        if (*(this + 4) - v121 <= 1 || *v121 != 146 || v121[1] != 1)
        {
          continue;
        }

        *(this + 1) = v121 + 2;
        *(a1 + 200) |= 0x20000u;
        v35 = *(a1 + 168);
        if (!v35)
        {
LABEL_54:
          operator new();
        }

LABEL_245:
        v133[0] = 0;
        v122 = *(this + 1);
        if (v122 >= *(this + 2) || *v122 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133))
          {
            return 0;
          }
        }

        else
        {
          v133[0] = *v122;
          *(this + 1) = v122 + 1;
        }

        v123 = *(this + 14);
        v124 = *(this + 15);
        *(this + 14) = v123 + 1;
        if (v123 >= v124)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A3E7E8(v35, this, v125, v126) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v127 = *(this + 14);
        v54 = __OFSUB__(v127, 1);
        v128 = v127 - 1;
        if (v128 < 0 == v54)
        {
          *(this + 14) = v128;
        }

        v129 = *(this + 1);
        v40 = *(this + 2);
        if (v40 - v129 <= 1 || *v129 != 152 || v129[1] != 1)
        {
          continue;
        }

        v41 = (v129 + 2);
        *(this + 1) = v41;
        v133[0] = 0;
        if (v41 >= v40)
        {
          goto LABEL_260;
        }

LABEL_258:
        v130 = *v41;
        if ((v130 & 0x80000000) != 0)
        {
LABEL_260:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v133);
          if (!result)
          {
            return result;
          }

          v130 = v133[0];
          v131 = *(this + 1);
          v40 = *(this + 2);
        }

        else
        {
          v131 = (v41 + 1);
          *(this + 1) = v131;
        }

        *(a1 + 192) = v130 != 0;
        *(a1 + 200) |= 0x40000u;
        if (v40 - v131 >= 2 && *v131 == 161 && v131[1] == 1)
        {
          *(this + 1) = v131 + 2;
LABEL_266:
          *v133 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v133) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 176) = *v133;
          *(a1 + 200) |= 0x80000u;
          v132 = *(this + 1);
          if (*(this + 4) - v132 >= 2 && *v132 == 169 && v132[1] == 1)
          {
            *(this + 1) = v132 + 2;
            *v133 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v133) & 1) == 0)
            {
              return 0;
            }

LABEL_57:
            *(a1 + 184) = *v133;
            *(a1 + 200) |= 0x100000u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_48;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v27 = *(this + 1);
        v11 = *(this + 2);
        *v133 = 0;
        if (v27 >= v11)
        {
          goto LABEL_92;
        }

        goto LABEL_89;
      case 4u:
        if (v9 != 2)
        {
          goto LABEL_82;
        }

        *(a1 + 200) |= 8u;
        v28 = *(a1 + 32);
        if (!v28)
        {
          goto LABEL_96;
        }

        goto LABEL_97;
      case 5u:
        if (v9 != 2)
        {
          goto LABEL_82;
        }

        *(a1 + 200) |= 0x10u;
        v20 = *(a1 + 40);
        if (v20)
        {
          goto LABEL_26;
        }

        goto LABEL_109;
      case 6u:
        if (v9 != 2)
        {
          goto LABEL_82;
        }

        *(a1 + 200) |= 0x20u;
        v36 = *(a1 + 48);
        if (v36)
        {
          goto LABEL_63;
        }

        goto LABEL_121;
      case 7u:
        if (v9 != 2)
        {
          goto LABEL_82;
        }

        *(a1 + 200) |= 0x40u;
        v38 = *(a1 + 64);
        if (v38)
        {
          goto LABEL_70;
        }

        goto LABEL_133;
      case 8u:
        if (v9 != 2)
        {
          goto LABEL_82;
        }

        v29 = *(a1 + 92);
        v30 = *(a1 + 88);
        if (v30 < v29)
        {
          goto LABEL_45;
        }

        goto LABEL_145;
      case 9u:
        if (v9 != 1)
        {
          goto LABEL_82;
        }

        *v133 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v133) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_161;
      case 0xAu:
        if (v9 != 2)
        {
          goto LABEL_82;
        }

        *(a1 + 200) |= 0x80u;
        v26 = *(a1 + 72);
        if (!v26)
        {
          goto LABEL_164;
        }

        goto LABEL_165;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v43 = *(this + 1);
        v42 = *(this + 2);
        v133[0] = 0;
        if (v43 >= v42)
        {
          goto LABEL_180;
        }

        goto LABEL_177;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_186;
      case 0xDu:
        if (v9 != 2)
        {
          goto LABEL_82;
        }

        v22 = *(a1 + 124);
        v23 = *(a1 + 120);
        if (v23 < v22)
        {
          goto LABEL_30;
        }

        goto LABEL_199;
      case 0xEu:
        if (v9 != 1)
        {
          goto LABEL_82;
        }

        *v133 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v133) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_215;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        v133[0] = 0;
        if (v17 >= v16)
        {
          goto LABEL_221;
        }

        goto LABEL_218;
      case 0x10u:
        if (v9 != 1)
        {
          goto LABEL_82;
        }

        *v133 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v133) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_228;
      case 0x11u:
        if (v9 != 2)
        {
          goto LABEL_82;
        }

        *(a1 + 200) |= 0x10000u;
        v14 = *(a1 + 160);
        if (v14)
        {
          goto LABEL_17;
        }

        goto LABEL_232;
      case 0x12u:
        if (v9 != 2)
        {
          goto LABEL_82;
        }

        *(a1 + 200) |= 0x20000u;
        v35 = *(a1 + 168);
        if (!v35)
        {
          goto LABEL_54;
        }

        goto LABEL_245;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v41 = *(this + 1);
        v40 = *(this + 2);
        v133[0] = 0;
        if (v41 >= v40)
        {
          goto LABEL_260;
        }

        goto LABEL_258;
      case 0x14u:
        if (v9 != 1)
        {
          goto LABEL_82;
        }

        goto LABEL_266;
      case 0x15u:
        if (v9 != 1)
        {
          goto LABEL_82;
        }

        *v133 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v133))
        {
          goto LABEL_57;
        }

        return 0;
      default:
LABEL_82:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

void sub_245A443AC(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A44464(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 200);
  if (v6)
  {
    v7 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 200);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 56), a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (*(v5 + 32))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 200);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = *(qword_28144B930 + 32);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 200);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    if (*(v5 + 48))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      if ((*(v5 + 200) & 0x40) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(qword_28144B930 + 48);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      if ((*(v5 + 200) & 0x40) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    if (*(v5 + 88) < 1)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  if (*(v5 + 40))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v6 = *(v5 + 200);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = *(qword_28144B930 + 40);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v6 = *(v5 + 200);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  if (!*(v5 + 64))
  {
    v11 = *(qword_28144B930 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
  if (*(v5 + 88) >= 1)
  {
LABEL_28:
    v12 = 0;
    do
    {
      v13 = *(*(v5 + 80) + 8 * v12);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      ++v12;
    }

    while (v12 < *(v5 + 88));
  }

LABEL_30:
  v14 = *(v5 + 200);
  if ((v14 & 0x200) == 0)
  {
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    if (*(v5 + 72))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v14 = *(v5 + 200);
      if ((v14 & 0x400) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v15 = *(qword_28144B930 + 72);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v14 = *(v5 + 200);
      if ((v14 & 0x400) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_33:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 104), a3);
  v14 = *(v5 + 200);
  if ((v14 & 0x80) != 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if ((v14 & 0x400) == 0)
  {
    goto LABEL_33;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 60), a2, a4);
  if ((*(v5 + 200) & 0x800) == 0)
  {
LABEL_34:
    if (*(v5 + 120) < 1)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 136), a2, a4);
  if (*(v5 + 120) < 1)
  {
    goto LABEL_45;
  }

LABEL_43:
  v16 = 0;
  do
  {
    v17 = *(*(v5 + 112) + 8 * v16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    ++v16;
  }

  while (v16 < *(v5 + 120));
LABEL_45:
  v18 = *(v5 + 200);
  if ((v18 & 0x2000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 144), a3);
    v18 = *(v5 + 200);
    if ((v18 & 0x4000) == 0)
    {
LABEL_47:
      if ((v18 & 0x8000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_57;
    }
  }

  else if ((v18 & 0x4000) == 0)
  {
    goto LABEL_47;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 140), a2, a4);
  v18 = *(v5 + 200);
  if ((v18 & 0x8000) == 0)
  {
LABEL_48:
    if ((v18 & 0x10000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 152), a3);
  v18 = *(v5 + 200);
  if ((v18 & 0x10000) == 0)
  {
LABEL_49:
    if ((v18 & 0x20000) == 0)
    {
      goto LABEL_50;
    }

LABEL_62:
    if (*(v5 + 168))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v18 = *(v5 + 200);
      if ((v18 & 0x40000) != 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v23 = *(qword_28144B930 + 168);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v18 = *(v5 + 200);
      if ((v18 & 0x40000) != 0)
      {
        goto LABEL_66;
      }
    }

LABEL_51:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

LABEL_58:
  if (*(v5 + 160))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v18 = *(v5 + 200);
    if ((v18 & 0x20000) != 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v22 = *(qword_28144B930 + 160);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v18 = *(v5 + 200);
    if ((v18 & 0x20000) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_50:
  if ((v18 & 0x40000) == 0)
  {
    goto LABEL_51;
  }

LABEL_66:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x13, *(v5 + 192), a2, a4);
  v18 = *(v5 + 200);
  if ((v18 & 0x80000) == 0)
  {
LABEL_52:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 176), a3);
  if ((*(v5 + 200) & 0x100000) == 0)
  {
LABEL_53:
    v21 = *(v5 + 8);
    v20 = v5 + 8;
    v19 = v21;
    if (!v21)
    {
      return result;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 184), a3);
  v24 = *(v5 + 8);
  v20 = v5 + 8;
  v19 = v24;
  if (!v24)
  {
    return result;
  }

LABEL_69:
  if (*v19 != v19[1])
  {

    return MEMORY[0x2821F9DB8](v20, a2);
  }

  return result;
}

_BYTE *sub_245A44868(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 50);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v7 = *(this + 2);
  *a2 = 10;
  v9 = (a2 + 1);
  v10 = *(v7 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v7 + 8);
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else if (v10 <= 0x7F)
  {
LABEL_6:
    a2[1] = v10;
    v11 = (a2 + 2);
    goto LABEL_9;
  }

  v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
LABEL_9:
  v12 = *(v7 + 23);
  if (v12 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *v7;
  }

  if (v12 >= 0)
  {
    v14 = *(v7 + 23);
  }

  else
  {
    v14 = *(v7 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v13, v14, v11, a4);
  if ((*(this + 50) & 2) == 0)
  {
LABEL_21:
    v17 = *(this + 50);
    if ((v17 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_16:
  v15 = *(this + 14);
  *result = 16;
  v16 = (result + 1);
  if ((v15 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v16, a3);
    goto LABEL_21;
  }

  if (v15 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v16, a3);
    v17 = *(this + 50);
    if ((v17 & 4) == 0)
    {
LABEL_22:
      if ((v17 & 8) == 0)
      {
        goto LABEL_23;
      }

LABEL_30:
      v19 = *(this + 4);
      if (v19)
      {
        *result = 34;
        v20 = (result + 1);
        v21 = *(v19 + 32);
        if (v21 <= 0x7F)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v19 = *(qword_28144B930 + 32);
        *result = 34;
        v20 = (result + 1);
        v21 = *(v19 + 32);
        if (v21 <= 0x7F)
        {
LABEL_32:
          result[1] = v21;
          result = sub_245A479A4(v19, (result + 2), a3);
          v17 = *(this + 50);
          if ((v17 & 0x10) != 0)
          {
            goto LABEL_36;
          }

LABEL_24:
          if ((v17 & 0x20) == 0)
          {
            goto LABEL_25;
          }

LABEL_42:
          v29 = *(this + 6);
          if (v29)
          {
            *result = 50;
            v30 = (result + 1);
            v31 = v29[8];
            if (v31 <= 0x7F)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v29 = *(qword_28144B930 + 48);
            *result = 50;
            v30 = (result + 1);
            v31 = v29[8];
            if (v31 <= 0x7F)
            {
LABEL_44:
              result[1] = v31;
              result = sub_245A49CEC(v29, (result + 2), a3);
              if ((*(this + 50) & 0x40) != 0)
              {
                goto LABEL_48;
              }

LABEL_26:
              if (*(this + 22) < 1)
              {
                goto LABEL_59;
              }

              goto LABEL_54;
            }
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v30, a3);
          result = sub_245A49CEC(v29, v32, v33);
          if ((*(this + 50) & 0x40) != 0)
          {
            goto LABEL_48;
          }

          goto LABEL_26;
        }
      }

      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v20, a3);
      result = sub_245A479A4(v19, v22, v23);
      v17 = *(this + 50);
      if ((v17 & 0x10) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }
  }

  else
  {
    result[1] = v15;
    result += 2;
    v17 = *(this + 50);
    if ((v17 & 4) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_29:
  v18 = *(this + 3);
  *result = 24;
  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, (result + 1), a3);
  v17 = *(this + 50);
  if ((v17 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  if ((v17 & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_36:
  v24 = *(this + 5);
  if (v24)
  {
    *result = 42;
    v25 = (result + 1);
    v26 = *(v24 + 64);
    if (v26 <= 0x7F)
    {
      goto LABEL_38;
    }

LABEL_41:
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v25, a3);
    result = sub_245A3DFBC(v24, v27, v28);
    v17 = *(this + 50);
    if ((v17 & 0x20) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  v24 = *(qword_28144B930 + 40);
  *result = 42;
  v25 = (result + 1);
  v26 = *(v24 + 64);
  if (v26 > 0x7F)
  {
    goto LABEL_41;
  }

LABEL_38:
  result[1] = v26;
  result = sub_245A3DFBC(v24, (result + 2), a3);
  v17 = *(this + 50);
  if ((v17 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_25:
  if ((v17 & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_48:
  v34 = *(this + 8);
  if (v34)
  {
    *result = 58;
    v35 = (result + 1);
    v36 = *(v34 + 40);
    if (v36 <= 0x7F)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v34 = *(qword_28144B930 + 64);
    *result = 58;
    v35 = (result + 1);
    v36 = *(v34 + 40);
    if (v36 <= 0x7F)
    {
LABEL_50:
      result[1] = v36;
      result = sub_245A41F64(v34, (result + 2), a3);
      if (*(this + 22) < 1)
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }
  }

  v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v35, a3);
  result = sub_245A41F64(v34, v37, v38);
  if (*(this + 22) < 1)
  {
    goto LABEL_59;
  }

LABEL_54:
  v39 = 0;
  do
  {
    v41 = *(*(this + 10) + 8 * v39);
    *result = 66;
    v42 = *(v41 + 18);
    if (v42 <= 0x7F)
    {
      result[1] = v42;
      v40 = result + 2;
    }

    else
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v41 + 18), (result + 1), a3);
    }

    result = sub_245A405DC(v41, v40, a3);
    ++v39;
  }

  while (v39 < *(this + 22));
LABEL_59:
  v43 = *(this + 50);
  if ((v43 & 0x200) != 0)
  {
    v48 = *(this + 13);
    *result = 73;
    *(result + 1) = v48;
    result += 9;
    v43 = *(this + 50);
    if ((v43 & 0x80) == 0)
    {
LABEL_61:
      if ((v43 & 0x400) == 0)
      {
        goto LABEL_62;
      }

LABEL_76:
      v54 = *(this + 15);
      *result = 88;
      v55 = (result + 1);
      if ((v54 & 0x80000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v54, v55, a3);
        if ((*(this + 201) & 8) != 0)
        {
          goto LABEL_83;
        }
      }

      else if (v54 > 0x7F)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v54, v55, a3);
        if ((*(this + 201) & 8) != 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        result[1] = v54;
        result += 2;
        if ((*(this + 201) & 8) != 0)
        {
          goto LABEL_83;
        }
      }

LABEL_63:
      if (*(this + 30) < 1)
      {
        goto LABEL_90;
      }

      goto LABEL_64;
    }
  }

  else if ((v43 & 0x80) == 0)
  {
    goto LABEL_61;
  }

  v49 = *(this + 9);
  if (v49)
  {
    *result = 82;
    v50 = (result + 1);
    v51 = *(v49 + 40);
    if (v51 <= 0x7F)
    {
      goto LABEL_72;
    }

LABEL_75:
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v50, a3);
    result = sub_245A41F64(v49, v52, v53);
    if ((*(this + 50) & 0x400) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_62;
  }

  v49 = *(qword_28144B930 + 72);
  *result = 82;
  v50 = (result + 1);
  v51 = *(v49 + 40);
  if (v51 > 0x7F)
  {
    goto LABEL_75;
  }

LABEL_72:
  result[1] = v51;
  result = sub_245A41F64(v49, (result + 2), a3);
  if ((*(this + 50) & 0x400) != 0)
  {
    goto LABEL_76;
  }

LABEL_62:
  if ((*(this + 201) & 8) == 0)
  {
    goto LABEL_63;
  }

LABEL_83:
  v56 = *(this + 34);
  *result = 96;
  v57 = (result + 1);
  if ((v56 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v56, v57, a3);
    if (*(this + 30) < 1)
    {
      goto LABEL_90;
    }
  }

  else if (v56 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v56, v57, a3);
    if (*(this + 30) < 1)
    {
      goto LABEL_90;
    }
  }

  else
  {
    result[1] = v56;
    result += 2;
    if (*(this + 30) < 1)
    {
      goto LABEL_90;
    }
  }

LABEL_64:
  v44 = 0;
  do
  {
    v46 = *(*(this + 14) + 8 * v44);
    *result = 106;
    v47 = *(v46 + 12);
    if (v47 <= 0x7F)
    {
      result[1] = v47;
      v45 = (result + 2);
    }

    else
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v46 + 12), (result + 1), a3);
    }

    result = sub_245A4131C(v46, v45, a3);
    ++v44;
  }

  while (v44 < *(this + 30));
LABEL_90:
  v58 = *(this + 50);
  if ((v58 & 0x2000) == 0)
  {
    if ((v58 & 0x4000) == 0)
    {
      goto LABEL_92;
    }

LABEL_101:
    v64 = *(this + 35);
    *result = 120;
    v65 = (result + 1);
    if ((v64 & 0x80000000) != 0)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v64, v65, a3);
      v59 = *(this + 50);
      if ((v59 & 0x8000) != 0)
      {
        goto LABEL_108;
      }
    }

    else if (v64 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v64, v65, a3);
      v59 = *(this + 50);
      if ((v59 & 0x8000) != 0)
      {
        goto LABEL_108;
      }
    }

    else
    {
      result[1] = v64;
      result += 2;
      v59 = *(this + 50);
      if ((v59 & 0x8000) != 0)
      {
        goto LABEL_108;
      }
    }

LABEL_93:
    if ((v59 & 0x10000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_109;
  }

  v63 = *(this + 18);
  *result = 113;
  *(result + 1) = v63;
  result += 9;
  if ((*(this + 50) & 0x4000) != 0)
  {
    goto LABEL_101;
  }

LABEL_92:
  v59 = *(this + 50);
  if ((v59 & 0x8000) == 0)
  {
    goto LABEL_93;
  }

LABEL_108:
  v66 = *(this + 19);
  *result = 385;
  *(result + 2) = v66;
  result += 10;
  v59 = *(this + 50);
  if ((v59 & 0x10000) == 0)
  {
LABEL_94:
    if ((v59 & 0x20000) == 0)
    {
      goto LABEL_95;
    }

LABEL_115:
    v72 = *(this + 21);
    if (v72)
    {
      *result = 402;
      v73 = (result + 2);
      v74 = *(v72 + 48);
      if (v74 <= 0x7F)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v72 = *(qword_28144B930 + 168);
      *result = 402;
      v73 = (result + 2);
      v74 = *(v72 + 48);
      if (v74 <= 0x7F)
      {
LABEL_117:
        result[2] = v74;
        result = sub_245A3EB1C(v72, (result + 3), a3);
        v59 = *(this + 50);
        if ((v59 & 0x40000) != 0)
        {
          goto LABEL_121;
        }

LABEL_96:
        if ((v59 & 0x80000) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_122;
      }
    }

    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v74, v73, a3);
    result = sub_245A3EB1C(v72, v75, v76);
    v59 = *(this + 50);
    if ((v59 & 0x40000) != 0)
    {
      goto LABEL_121;
    }

    goto LABEL_96;
  }

LABEL_109:
  v67 = *(this + 20);
  if (v67)
  {
    *result = 394;
    v68 = (result + 2);
    v69 = *(v67 + 48);
    if (v69 <= 0x7F)
    {
      goto LABEL_111;
    }

LABEL_114:
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v69, v68, a3);
    result = sub_245A3EB1C(v67, v70, v71);
    v59 = *(this + 50);
    if ((v59 & 0x20000) != 0)
    {
      goto LABEL_115;
    }

    goto LABEL_95;
  }

  v67 = *(qword_28144B930 + 160);
  *result = 394;
  v68 = (result + 2);
  v69 = *(v67 + 48);
  if (v69 > 0x7F)
  {
    goto LABEL_114;
  }

LABEL_111:
  result[2] = v69;
  result = sub_245A3EB1C(v67, (result + 3), a3);
  v59 = *(this + 50);
  if ((v59 & 0x20000) != 0)
  {
    goto LABEL_115;
  }

LABEL_95:
  if ((v59 & 0x40000) == 0)
  {
    goto LABEL_96;
  }

LABEL_121:
  v77 = *(this + 192);
  *result = 408;
  result[2] = v77;
  result += 3;
  v59 = *(this + 50);
  if ((v59 & 0x80000) == 0)
  {
LABEL_97:
    if ((v59 & 0x100000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_123;
  }

LABEL_122:
  v78 = *(this + 22);
  *result = 417;
  *(result + 2) = v78;
  result += 10;
  if ((*(this + 50) & 0x100000) == 0)
  {
LABEL_98:
    v62 = *(this + 1);
    v61 = (this + 8);
    v60 = v62;
    if (!v62)
    {
      return result;
    }

    goto LABEL_124;
  }

LABEL_123:
  v79 = *(this + 23);
  *result = 425;
  *(result + 2) = v79;
  result += 10;
  v80 = *(this + 1);
  v61 = (this + 8);
  v60 = v80;
  if (!v80)
  {
    return result;
  }

LABEL_124:
  if (*v60 != v60[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v61, result, a3);
  }

  return result;
}

uint64_t sub_245A4510C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 200);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x1FE00) != 0)
    {
      goto LABEL_88;
    }

    goto LABEL_31;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = *(v5 + 23);
  }

  else
  {
    v7 = *(v5 + 8);
  }

  if (v7 < 0x80)
  {
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v5 + 8);
    }

    v4 = v6 + 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_18:
    v10 = *(a1 + 56);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(a1 + 200);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
    goto LABEL_24;
  }

  v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
  v9 = *(v5 + 23);
  v3 = *(a1 + 200);
  if (*(v5 + 23) < 0)
  {
    v9 = *(v5 + 8);
  }

  v4 = v8 + 1 + v9;
  if ((v3 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24)) + 1;
    v3 = *(a1 + 200);
    if ((v3 & 8) == 0)
    {
LABEL_26:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_27;
      }

LABEL_41:
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = sub_245A3E1F4(v16, a2);
        if (v17 < 0x80)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v17 = sub_245A3E1F4(*(qword_28144B930 + 40), a2);
        if (v17 < 0x80)
        {
LABEL_43:
          v4 += v17 + 2;
          v3 = *(a1 + 200);
          if ((v3 & 0x20) != 0)
          {
            goto LABEL_47;
          }

LABEL_28:
          if ((v3 & 0x40) == 0)
          {
            goto LABEL_29;
          }

LABEL_53:
          v20 = *(a1 + 64);
          if (v20)
          {
            v21 = *(v20 + 44);
            if (*(v20 + 44))
            {
              goto LABEL_55;
            }
          }

          else
          {
            v20 = *(qword_28144B930 + 64);
            v21 = *(v20 + 44);
            if (*(v20 + 44))
            {
LABEL_55:
              v22 = (v21 << 31 >> 31) & 9;
              if ((v21 & 2) != 0)
              {
                v22 += 9;
              }

              if ((v21 & 4) != 0)
              {
                v23 = v22 + 9;
              }

              else
              {
                v23 = v22;
              }

              v24 = (v20 + 8);
              v25 = *(v20 + 8);
              if (!v25)
              {
                goto LABEL_68;
              }

              goto LABEL_64;
            }
          }

          v23 = 0;
          v24 = (v20 + 8);
          v25 = *(v20 + 8);
          if (!v25)
          {
            goto LABEL_68;
          }

LABEL_64:
          if (*v25 != v25[1])
          {
            v26 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v24, a2) + v23);
            *(v20 + 40) = v26;
            if (v26 >= 0x80)
            {
              v4 += v26 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
              v3 = *(a1 + 200);
              if ((v3 & 0x80) != 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              v4 += v26 + 2;
              v3 = *(a1 + 200);
              if ((v3 & 0x80) != 0)
              {
                goto LABEL_71;
              }
            }

            goto LABEL_30;
          }

LABEL_68:
          *(v20 + 40) = v23;
          v4 += v23 + 2;
          v3 = *(a1 + 200);
          if ((v3 & 0x80) != 0)
          {
            goto LABEL_71;
          }

LABEL_30:
          if ((v3 & 0x1FE00) == 0)
          {
            goto LABEL_31;
          }

LABEL_88:
          if ((v3 & 0x200) != 0)
          {
            v34 = v4 + 9;
          }

          else
          {
            v34 = v4;
          }

          if ((v3 & 0x400) == 0)
          {
            if ((v3 & 0x800) == 0)
            {
              goto LABEL_93;
            }

LABEL_108:
            v37 = *(a1 + 136);
            if ((v37 & 0x80000000) != 0)
            {
              v34 += 11;
              if ((v3 & 0x2000) != 0)
              {
                v34 += 9;
              }

              if ((v3 & 0x4000) != 0)
              {
                goto LABEL_121;
              }
            }

            else if (v37 >= 0x80)
            {
              v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
              v3 = *(a1 + 200);
              v34 += v38 + 1;
              if ((v3 & 0x2000) != 0)
              {
                v34 += 9;
              }

              if ((v3 & 0x4000) != 0)
              {
                goto LABEL_121;
              }
            }

            else
            {
              v34 += 2;
              if ((v3 & 0x2000) != 0)
              {
                v34 += 9;
              }

              if ((v3 & 0x4000) != 0)
              {
                goto LABEL_121;
              }
            }

LABEL_96:
            if ((v3 & 0x8000) != 0)
            {
              v4 = v34 + 10;
            }

            else
            {
              v4 = v34;
            }

            if ((v3 & 0xFF0000) != 0)
            {
              goto LABEL_130;
            }

            goto LABEL_32;
          }

          v35 = *(a1 + 60);
          if ((v35 & 0x80000000) != 0)
          {
            v34 += 11;
            if ((v3 & 0x800) != 0)
            {
              goto LABEL_108;
            }
          }

          else if (v35 >= 0x80)
          {
            v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
            v3 = *(a1 + 200);
            v34 += v36 + 1;
            if ((v3 & 0x800) != 0)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v34 += 2;
            if ((v3 & 0x800) != 0)
            {
              goto LABEL_108;
            }
          }

LABEL_93:
          if ((v3 & 0x2000) != 0)
          {
            v34 += 9;
          }

          if ((v3 & 0x4000) == 0)
          {
            goto LABEL_96;
          }

LABEL_121:
          v39 = *(a1 + 140);
          if ((v39 & 0x80000000) != 0)
          {
            v40 = 11;
          }

          else if (v39 >= 0x80)
          {
            v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 1;
            v3 = *(a1 + 200);
          }

          else
          {
            v40 = 2;
          }

          v41 = v40 + v34;
          if ((v3 & 0x8000) != 0)
          {
            v4 = v41 + 10;
          }

          else
          {
            v4 = v41;
          }

          if ((v3 & 0xFF0000) != 0)
          {
            goto LABEL_130;
          }

LABEL_32:
          v12 = *(a1 + 88);
          v13 = v12 + v4;
          if (v12 < 1)
          {
            goto LABEL_170;
          }

          goto LABEL_152;
        }
      }

      v4 += v17 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(a1 + 200);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_47;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = sub_245A47A7C(v14, a2);
    if (v15 < 0x80)
    {
      goto LABEL_37;
    }

LABEL_40:
    v4 += v15 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(a1 + 200);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_27;
  }

  v15 = sub_245A47A7C(*(qword_28144B930 + 32), a2);
  if (v15 >= 0x80)
  {
    goto LABEL_40;
  }

LABEL_37:
  v4 += v15 + 2;
  v3 = *(a1 + 200);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_41;
  }

LABEL_27:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_47:
  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = sub_245A49E60(v18, a2);
    if (v19 < 0x80)
    {
      goto LABEL_49;
    }

LABEL_52:
    v4 += v19 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(a1 + 200);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_29;
  }

  v19 = sub_245A49E60(*(qword_28144B930 + 48), a2);
  if (v19 >= 0x80)
  {
    goto LABEL_52;
  }

LABEL_49:
  v4 += v19 + 2;
  v3 = *(a1 + 200);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_53;
  }

LABEL_29:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_30;
  }

LABEL_71:
  v27 = *(a1 + 72);
  if (v27)
  {
    v28 = *(v27 + 44);
    if (*(v27 + 44))
    {
      goto LABEL_73;
    }
  }

  else
  {
    v27 = *(qword_28144B930 + 72);
    v28 = *(v27 + 44);
    if (*(v27 + 44))
    {
LABEL_73:
      v29 = (v28 << 31 >> 31) & 9;
      if ((v28 & 2) != 0)
      {
        v29 += 9;
      }

      if ((v28 & 4) != 0)
      {
        LODWORD(v30) = v29 + 9;
      }

      else
      {
        LODWORD(v30) = v29;
      }

      v31 = (v27 + 8);
      v32 = *(v27 + 8);
      if (!v32)
      {
        goto LABEL_85;
      }

      goto LABEL_82;
    }
  }

  LODWORD(v30) = 0;
  v31 = (v27 + 8);
  v32 = *(v27 + 8);
  if (!v32)
  {
LABEL_85:
    *(v27 + 40) = v30;
    v33 = 1;
    goto LABEL_87;
  }

LABEL_82:
  if (*v32 == v32[1])
  {
    goto LABEL_85;
  }

  v30 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v31, a2) + v30);
  *(v27 + 40) = v30;
  if (v30 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
  }

  else
  {
    v33 = 1;
  }

LABEL_87:
  v4 += v30 + v33 + 1;
  v3 = *(a1 + 200);
  if ((v3 & 0x1FE00) != 0)
  {
    goto LABEL_88;
  }

LABEL_31:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_32;
  }

LABEL_130:
  if ((v3 & 0x10000) == 0)
  {
    goto LABEL_137;
  }

  v42 = *(a1 + 160);
  if (!v42)
  {
    v43 = sub_245A3ECA4(*(qword_28144B930 + 160), a2);
    if (v43 < 0x80)
    {
      goto LABEL_133;
    }

LABEL_135:
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
    goto LABEL_136;
  }

  v43 = sub_245A3ECA4(v42, a2);
  if (v43 >= 0x80)
  {
    goto LABEL_135;
  }

LABEL_133:
  v44 = 1;
LABEL_136:
  v4 += v43 + v44 + 2;
  v3 = *(a1 + 200);
LABEL_137:
  if ((v3 & 0x20000) == 0)
  {
    goto LABEL_144;
  }

  v45 = *(a1 + 168);
  if (!v45)
  {
    v46 = sub_245A3ECA4(*(qword_28144B930 + 168), a2);
    if (v46 < 0x80)
    {
      goto LABEL_140;
    }

LABEL_142:
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
    goto LABEL_143;
  }

  v46 = sub_245A3ECA4(v45, a2);
  if (v46 >= 0x80)
  {
    goto LABEL_142;
  }

LABEL_140:
  v47 = 1;
LABEL_143:
  v4 += v46 + v47 + 2;
  v3 = *(a1 + 200);
LABEL_144:
  v48 = v4 + 3;
  if ((v3 & 0x40000) == 0)
  {
    v48 = v4;
  }

  if ((v3 & 0x80000) != 0)
  {
    v48 += 10;
  }

  if ((v3 & 0x100000) != 0)
  {
    v49 = v48 + 10;
  }

  else
  {
    v49 = v48;
  }

  v50 = *(a1 + 88);
  v13 = v50 + v49;
  if (v50 >= 1)
  {
LABEL_152:
    v51 = 0;
    do
    {
      v53 = *(*(a1 + 80) + 8 * v51);
      v54 = (*(v53 + 76) << 29 >> 31) & 9;
      v55 = *(v53 + 24);
      v56 = 8 * v55;
      if (v55 >= 1)
      {
        if (v56 >= 0x80)
        {
          v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v55)) + 1;
        }

        else
        {
          v57 = 2;
        }

        v54 += v57;
      }

      *(v53 + 32) = v56;
      v58 = v54 + v56;
      v59 = *(v53 + 48);
      v60 = 8 * v59;
      if (v59 >= 1)
      {
        if (v60 >= 0x80)
        {
          v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v59)) + 1;
        }

        else
        {
          v61 = 2;
        }

        v58 += v61;
      }

      v62 = *(v53 + 8);
      *(v53 + 56) = v60;
      v63 = (v58 + v60);
      if (v62 && *v62 != v62[1])
      {
        v63 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v53 + 8), a2) + v63);
      }

      *(v53 + 72) = v63;
      if (v63 < 0x80)
      {
        v52 = 1;
      }

      else
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63);
      }

      v13 += v63 + v52;
      ++v51;
    }

    while (v51 < *(a1 + 88));
  }

LABEL_170:
  v64 = *(a1 + 120);
  v65 = (v64 + v13);
  if (v64 >= 1)
  {
    v66 = 0;
    do
    {
      v68 = sub_245A41474(*(*(a1 + 112) + 8 * v66), a2);
      v69 = v68;
      if (v68 < 0x80)
      {
        v67 = 1;
      }

      else
      {
        v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68);
      }

      v65 = (v69 + v65 + v67);
      ++v66;
    }

    while (v66 < *(a1 + 120));
  }

  v70 = *(a1 + 8);
  if (v70 && *v70 != v70[1])
  {
    v65 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v65;
  }

  *(a1 + 196) = v65;
  return v65;
}