void sub_1D0D3DDEC(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x30F]) < 0)
  {
    operator delete(STACK[0x2F8]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0D3E05C(void *a1, double *a2, const char *a3, double a4)
{
  v37 = 0.0;
  result = sub_1D0D43094(a1, &v37, a3);
  if (result)
  {
    v9 = v37;
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v37 > a4)
    {
      *a2 = v37;
      return 1;
    }

    else
    {
      sub_1D0BC2944(&v32);
      v11 = strlen(a3);
      v12 = sub_1D0BCD7C4(&v32, a3, v11);
      v13 = sub_1D0BCD7C4(v12, " - value (", 10);
      v14 = MEMORY[0x1D387E990](v13, v9);
      v15 = sub_1D0BCD7C4(v14, ") must be greater than ", 23);
      MEMORY[0x1D387E990](v15, a4);
      sub_1D0D3627C(&v30, &v32);
      v17 = a1[6];
      v16 = a1[7];
      if (v17 >= v16)
      {
        v19 = a1[5];
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v19) >> 3);
        v21 = v20 + 1;
        if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v19) >> 3);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v21;
        }

        v38[4] = a1 + 5;
        if (v23)
        {
          sub_1D0D414A8((a1 + 5), v23);
        }

        v24 = 24 * v20;
        *v24 = v30;
        *(v24 + 16) = v31;
        v18 = 24 * v20 + 24;
        v25 = a1[5];
        v26 = a1[6] - v25;
        v27 = 24 * v20 - v26;
        memcpy((v24 - v26), v25, v26);
        v28 = a1[5];
        a1[5] = v27;
        a1[6] = v18;
        v29 = a1[7];
        a1[7] = 0;
        v38[2] = v28;
        v38[3] = v29;
        v38[0] = v28;
        v38[1] = v28;
        sub_1D0D41500(v38);
      }

      else
      {
        *v17 = v30;
        *(v17 + 16) = v31;
        v18 = v17 + 24;
      }

      a1[6] = v18;
      v32 = *MEMORY[0x1E69E54E8];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v33 = MEMORY[0x1E69E5548] + 16;
      if (v35 < 0)
      {
        operator delete(v34[7].__locale_);
      }

      v33 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v34);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](&v36);
      return 0;
    }
  }

  return result;
}

void sub_1D0D3E328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D36324(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D3E358(void *a1, double *a2, const char *a3, double a4)
{
  v37 = 0.0;
  result = sub_1D0D43094(a1, &v37, a3);
  if (result)
  {
    v9 = v37;
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v37 < a4)
    {
      sub_1D0BC2944(&v32);
      v11 = strlen(a3);
      v12 = sub_1D0BCD7C4(&v32, a3, v11);
      v13 = sub_1D0BCD7C4(v12, " - value (", 10);
      v14 = MEMORY[0x1D387E990](v13, v9);
      v15 = sub_1D0BCD7C4(v14, ") must be greater or equal to ", 30);
      MEMORY[0x1D387E990](v15, a4);
      sub_1D0D3627C(&v30, &v32);
      v17 = a1[6];
      v16 = a1[7];
      if (v17 >= v16)
      {
        v19 = a1[5];
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v19) >> 3);
        v21 = v20 + 1;
        if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v19) >> 3);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v21;
        }

        v38[4] = a1 + 5;
        if (v23)
        {
          sub_1D0D414A8((a1 + 5), v23);
        }

        v24 = 24 * v20;
        *v24 = v30;
        *(v24 + 16) = v31;
        v18 = 24 * v20 + 24;
        v25 = a1[5];
        v26 = a1[6] - v25;
        v27 = 24 * v20 - v26;
        memcpy((v24 - v26), v25, v26);
        v28 = a1[5];
        a1[5] = v27;
        a1[6] = v18;
        v29 = a1[7];
        a1[7] = 0;
        v38[2] = v28;
        v38[3] = v29;
        v38[0] = v28;
        v38[1] = v28;
        sub_1D0D41500(v38);
      }

      else
      {
        *v17 = v30;
        *(v17 + 16) = v31;
        v18 = v17 + 24;
      }

      a1[6] = v18;
      v32 = *MEMORY[0x1E69E54E8];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v33 = MEMORY[0x1E69E5548] + 16;
      if (v35 < 0)
      {
        operator delete(v34[7].__locale_);
      }

      v33 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v34);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](&v36);
      return 0;
    }

    else
    {
      *a2 = v37;
      return 1;
    }
  }

  return result;
}

void sub_1D0D3E624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D36324(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D3E654(void *a1, double *a2, const char *a3, double a4, double a5)
{
  v42 = 0.0;
  result = sub_1D0D43094(a1, &v42, a3);
  if (result)
  {
    v11 = v42;
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v42 > a4 && v42 < a5)
    {
      *a2 = v42;
      return 1;
    }

    else
    {
      sub_1D0BC2944(&v37);
      v14 = strlen(a3);
      v15 = sub_1D0BCD7C4(&v37, a3, v14);
      v16 = sub_1D0BCD7C4(v15, " - value (", 10);
      v17 = MEMORY[0x1D387E990](v16, v11);
      v18 = sub_1D0BCD7C4(v17, ") must be greater than ", 23);
      v19 = MEMORY[0x1D387E990](v18, a4);
      v20 = sub_1D0BCD7C4(v19, " and less than ", 15);
      MEMORY[0x1D387E990](v20, a5);
      sub_1D0D3627C(&v35, &v37);
      v22 = a1[6];
      v21 = a1[7];
      if (v22 >= v21)
      {
        v24 = a1[5];
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v24) >> 3);
        v26 = v25 + 1;
        if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v27 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v24) >> 3);
        if (2 * v27 > v26)
        {
          v26 = 2 * v27;
        }

        if (v27 >= 0x555555555555555)
        {
          v28 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v28 = v26;
        }

        v43[4] = a1 + 5;
        if (v28)
        {
          sub_1D0D414A8((a1 + 5), v28);
        }

        v29 = 24 * v25;
        *v29 = v35;
        *(v29 + 16) = v36;
        v23 = 24 * v25 + 24;
        v30 = a1[5];
        v31 = a1[6] - v30;
        v32 = 24 * v25 - v31;
        memcpy((v29 - v31), v30, v31);
        v33 = a1[5];
        a1[5] = v32;
        a1[6] = v23;
        v34 = a1[7];
        a1[7] = 0;
        v43[2] = v33;
        v43[3] = v34;
        v43[0] = v33;
        v43[1] = v33;
        sub_1D0D41500(v43);
      }

      else
      {
        *v22 = v35;
        *(v22 + 16) = v36;
        v23 = v22 + 24;
      }

      a1[6] = v23;
      v37 = *MEMORY[0x1E69E54E8];
      *(&v37 + *(v37 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v38 = MEMORY[0x1E69E5548] + 16;
      if (v40 < 0)
      {
        operator delete(v39[7].__locale_);
      }

      v38 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v39);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](&v41);
      return 0;
    }
  }

  return result;
}

void sub_1D0D3E948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D36324(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D3E978(uint64_t a1, std::string *a2, const char *a3, char *__s)
{
  sub_1D0B751F4(&__p, __s);
  memset(&v11, 0, sizeof(v11));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1D0BC39B4(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = __p;
  }

  v7 = sub_1D0D43100(a1, &v11, a3);
  if ((v7 & 1) == 0)
  {
    std::string::operator=(&v11, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v7)
  {
LABEL_10:
    std::string::operator=(a2, &v11);
  }

LABEL_11:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1D0D3EA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D3EAA0(void *a1, double *a2, const char *a3, double a4, double a5)
{
  v42 = 0.0;
  result = sub_1D0D43094(a1, &v42, a3);
  if (result)
  {
    v11 = v42;
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v42 >= a4 && v42 <= a5)
    {
      *a2 = v42;
      return 1;
    }

    else
    {
      sub_1D0BC2944(&v37);
      v14 = strlen(a3);
      v15 = sub_1D0BCD7C4(&v37, a3, v14);
      v16 = sub_1D0BCD7C4(v15, " - value (", 10);
      v17 = MEMORY[0x1D387E990](v16, v11);
      v18 = sub_1D0BCD7C4(v17, ") must be greater or equal to ", 30);
      v19 = MEMORY[0x1D387E990](v18, a4);
      v20 = sub_1D0BCD7C4(v19, " and less or equal to ", 22);
      MEMORY[0x1D387E990](v20, a5);
      sub_1D0D3627C(&v35, &v37);
      v22 = a1[6];
      v21 = a1[7];
      if (v22 >= v21)
      {
        v24 = a1[5];
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v24) >> 3);
        v26 = v25 + 1;
        if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v27 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v24) >> 3);
        if (2 * v27 > v26)
        {
          v26 = 2 * v27;
        }

        if (v27 >= 0x555555555555555)
        {
          v28 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v28 = v26;
        }

        v43[4] = a1 + 5;
        if (v28)
        {
          sub_1D0D414A8((a1 + 5), v28);
        }

        v29 = 24 * v25;
        *v29 = v35;
        *(v29 + 16) = v36;
        v23 = 24 * v25 + 24;
        v30 = a1[5];
        v31 = a1[6] - v30;
        v32 = 24 * v25 - v31;
        memcpy((v29 - v31), v30, v31);
        v33 = a1[5];
        a1[5] = v32;
        a1[6] = v23;
        v34 = a1[7];
        a1[7] = 0;
        v43[2] = v33;
        v43[3] = v34;
        v43[0] = v33;
        v43[1] = v33;
        sub_1D0D41500(v43);
      }

      else
      {
        *v22 = v35;
        *(v22 + 16) = v36;
        v23 = v22 + 24;
      }

      a1[6] = v23;
      v37 = *MEMORY[0x1E69E54E8];
      *(&v37 + *(v37 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v38 = MEMORY[0x1E69E5548] + 16;
      if (v40 < 0)
      {
        operator delete(v39[7].__locale_);
      }

      v38 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v39);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](&v41);
      return 0;
    }
  }

  return result;
}

void sub_1D0D3ED94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D36324(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D3EDC4(uint64_t a1, std::string *a2, const char *a3)
{
  sub_1D0B751F4(&__str, &unk_1D0ED80C5);
  v6 = sub_1D0D43100(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    std::string::operator=(a2, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1D0D3EE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D3EE60(void *a1, _DWORD *a2, const char *a3, uint64_t a4)
{
  v46[114] = *MEMORY[0x1E69E9840];
  if (!sub_1D0D41828(a1, __s, a3))
  {
LABEL_27:
    result = 0;
    goto LABEL_28;
  }

  v41 = 0;
  v8 = strlen(__s);
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = __s[0];
  v10 = __s;
  if (__s[0] == 45 || __s[0] == 43)
  {
    v10 = &__s[1];
  }

  LOBYTE(v34.__vftable) = 0;
  HIDWORD(v34.__vftable) = 1;
  v35 = &v41;
  v36 = v10;
  v37 = &__s[v8];
  v11 = sub_1D0D434F4(&v34);
  if (v9 == 45)
  {
    v12 = -v41;
    v41 = -v41;
    if ((v11 & 1) == 0)
    {
LABEL_29:
      std::bad_cast::bad_cast(&v34);
      v34.__vftable = &unk_1F4CDFA50;
      v35 = MEMORY[0x1E69E53D8];
      v36 = MEMORY[0x1E69E5480];
      sub_1D0D428D0(&v34);
    }
  }

  else
  {
    if (!v11)
    {
      goto LABEL_29;
    }

    v12 = v41;
  }

  if (v12 <= a4)
  {
    sub_1D0BC2944(__s);
    v14 = strlen(a3);
    v15 = sub_1D0BCD7C4(__s, a3, v14);
    v16 = sub_1D0BCD7C4(v15, " - value (", 10);
    v17 = MEMORY[0x1D387E9D0](v16, v12);
    v18 = sub_1D0BCD7C4(v17, ") must be greater than ", 23);
    MEMORY[0x1D387E9D0](v18, a4);
    sub_1D0D3627C(&v39, __s);
    v20 = a1[6];
    v19 = a1[7];
    if (v20 >= v19)
    {
      v22 = a1[5];
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v22) >> 3);
      v24 = v23 + 1;
      if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1D0C5663C();
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v24;
      }

      v38 = a1 + 5;
      if (v26)
      {
        sub_1D0D414A8((a1 + 5), v26);
      }

      v27 = 24 * v23;
      *v27 = v39;
      *(v27 + 16) = v40;
      v21 = 24 * v23 + 24;
      v28 = a1[5];
      v29 = a1[6] - v28;
      v30 = 24 * v23 - v29;
      memcpy((v27 - v29), v28, v29);
      v31 = a1[5];
      a1[5] = v30;
      a1[6] = v21;
      v32 = a1[7];
      a1[7] = 0;
      v36 = v31;
      v37 = v32;
      v34.__vftable = v31;
      v35 = v31;
      sub_1D0D41500(&v34);
    }

    else
    {
      *v20 = v39;
      *(v20 + 16) = v40;
      v21 = v20 + 24;
    }

    a1[6] = v21;
    *__s = *MEMORY[0x1E69E54E8];
    *&__s[*(*__s - 24)] = *(MEMORY[0x1E69E54E8] + 24);
    v43 = MEMORY[0x1E69E5548] + 16;
    if (v45 < 0)
    {
      operator delete(v44[7].__locale_);
    }

    v43 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v44);
    std::ostream::~ostream();
    MEMORY[0x1D387EBF0](v46);
    goto LABEL_27;
  }

  *a2 = v12;
  result = 1;
LABEL_28:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0D3F1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D36324(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D3F2A0(void *a1, int *a2, const char *a3)
{
  v35 = 0;
  v6 = sub_1D0D43850(a1, &v35, a3);
  result = 0;
  if (v6)
  {
    v8 = (v35 & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
    v9 = v35 < 0 && ((v35 & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
    if (v35 >= 0)
    {
      v8 = 0;
    }

    v10 = (v35 & 0x7FFFFFFF) == 0x7F800000 || v8;
    if ((v35 & 0x7FFFFFFFu) > 0x7F800000)
    {
      v10 = 1;
    }

    if ((v10 | v9) == 1)
    {
      sub_1D0BC2944(&v30);
      v11 = strlen(a3);
      v12 = sub_1D0BCD7C4(&v30, a3, v11);
      sub_1D0BCD7C4(v12, " - value (", 10);
      v13 = std::ostream::operator<<();
      sub_1D0BCD7C4(v13, ") must be greater or equal to ", 30);
      std::ostream::operator<<();
      sub_1D0D3627C(&v28, &v30);
      v15 = a1[6];
      v14 = a1[7];
      if (v15 >= v14)
      {
        v17 = a1[5];
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v19;
        }

        v36[4] = a1 + 5;
        if (v21)
        {
          sub_1D0D414A8((a1 + 5), v21);
        }

        v22 = 24 * v18;
        *v22 = v28;
        *(v22 + 16) = v29;
        v16 = 24 * v18 + 24;
        v23 = a1[5];
        v24 = a1[6] - v23;
        v25 = 24 * v18 - v24;
        memcpy((v22 - v24), v23, v24);
        v26 = a1[5];
        a1[5] = v25;
        a1[6] = v16;
        v27 = a1[7];
        a1[7] = 0;
        v36[2] = v26;
        v36[3] = v27;
        v36[0] = v26;
        v36[1] = v26;
        sub_1D0D41500(v36);
      }

      else
      {
        *v15 = v28;
        *(v15 + 16) = v29;
        v16 = v15 + 24;
      }

      a1[6] = v16;
      v30 = *MEMORY[0x1E69E54E8];
      *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v31 = MEMORY[0x1E69E5548] + 16;
      if (v33 < 0)
      {
        operator delete(v32[7].__locale_);
      }

      v31 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v32);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](&v34);
      return 0;
    }

    else
    {
      *a2 = v35;
      return 1;
    }
  }

  return result;
}

void sub_1D0D3F5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D36324(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D3F5D8(void *a1, unsigned int *a2, const char *a3)
{
  v35 = 0;
  v6 = sub_1D0D43D5C(a1, &v35, a3);
  result = 0;
  if (v6)
  {
    v8 = v35;
    if ((v35 & 0x80000000) != 0)
    {
      sub_1D0BC2944(&v30);
      v9 = strlen(a3);
      v10 = sub_1D0BCD7C4(&v30, a3, v9);
      v11 = sub_1D0BCD7C4(v10, " - value (", 10);
      v12 = MEMORY[0x1D387E9C0](v11, v8);
      v13 = sub_1D0BCD7C4(v12, ") must be greater or equal to ", 30);
      MEMORY[0x1D387E9C0](v13, 0);
      sub_1D0D3627C(&v28, &v30);
      v15 = a1[6];
      v14 = a1[7];
      if (v15 >= v14)
      {
        v17 = a1[5];
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v19;
        }

        v36[4] = a1 + 5;
        if (v21)
        {
          sub_1D0D414A8((a1 + 5), v21);
        }

        v22 = 24 * v18;
        *v22 = v28;
        *(v22 + 16) = v29;
        v16 = 24 * v18 + 24;
        v23 = a1[5];
        v24 = a1[6] - v23;
        v25 = 24 * v18 - v24;
        memcpy((v22 - v24), v23, v24);
        v26 = a1[5];
        a1[5] = v25;
        a1[6] = v16;
        v27 = a1[7];
        a1[7] = 0;
        v36[2] = v26;
        v36[3] = v27;
        v36[0] = v26;
        v36[1] = v26;
        sub_1D0D41500(v36);
      }

      else
      {
        *v15 = v28;
        *(v15 + 16) = v29;
        v16 = v15 + 24;
      }

      a1[6] = v16;
      v30 = *MEMORY[0x1E69E54E8];
      *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v31 = MEMORY[0x1E69E5548] + 16;
      if (v33 < 0)
      {
        operator delete(v32[7].__locale_);
      }

      v31 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v32);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](&v34);
      return 0;
    }

    else
    {
      *a2 = v35;
      return 1;
    }
  }

  return result;
}

void sub_1D0D3F88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D36324(&a15);
  _Unwind_Resume(a1);
}

raven::RavenParameters *raven::RavenParameters::RavenParameters(raven::RavenParameters *this, const raven::RavenPlatformInfo *a2)
{
  v4 = this + 547;
  *this = &unk_1F4CDFA78;
  sub_1D0B751F4(this + 8, &unk_1D0ED80C5);
  *this = &unk_1F4CDF868;
  *(this + 40) = 0u;
  *(this + 33) = 0;
  *(this + 56) = 0u;
  *(this + 72) = xmmword_1D0E82F40;
  *(this + 88) = xmmword_1D0E82F50;
  *(this + 104) = xmmword_1D0E82F60;
  *(this + 120) = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
  *(this + 136) = xmmword_1D0E82F60;
  *(this + 152) = xmmword_1D0E82F50;
  *(this + 168) = xmmword_1D0E82F60;
  *(this + 184) = vdupq_n_s64(0x3F9B573EAB367A10uLL);
  *(this + 200) = xmmword_1D0E82F60;
  *(this + 216) = xmmword_1D0E82F50;
  *(this + 232) = xmmword_1D0E82F60;
  *(this + 248) = xmmword_1D0E82F70;
  *(this + 33) = 0x3FF0000000000000;
  __asm { FMOV            V2.2D, #1.0 }

  *(this + 17) = _Q2;
  *(this + 18) = xmmword_1D0E82F80;
  *(this + 19) = xmmword_1D0E82F90;
  *(this + 20) = xmmword_1D0E82FA0;
  *(this + 21) = xmmword_1D0E82FB0;
  *(this + 22) = xmmword_1D0E82FC0;
  *(this + 23) = xmmword_1D0E82FD0;
  *(this + 24) = xmmword_1D0E82FE0;
  *(this + 25) = xmmword_1D0E82FF0;
  *(this + 52) = 0x3F847AE147AE147BLL;
  *(this + 106) = 2;
  *(this + 27) = xmmword_1D0E83000;
  *(this + 28) = xmmword_1D0E83010;
  *(this + 29) = xmmword_1D0E83020;
  *(this + 30) = xmmword_1D0E83030;
  *(this + 31) = xmmword_1D0E83040;
  *(this + 32) = xmmword_1D0E83050;
  *(this + 33) = xmmword_1D0E83060;
  *(this + 272) = 257;
  *(this + 546) = 1;
  *v4 = 0;
  *(this + 551) = 1;
  *(this + 138) = 0;
  *(this + 35) = xmmword_1D0E83070;
  *(this + 144) = 0;
  *(this + 290) = 1;
  *(this + 146) = 0;
  *(this + 588) = 0;
  *(v4 + 42) = 0x101010101010101;
  *(this + 597) = 0;
  *(this + 603) = 0x101010101010101;
  *(this + 598) = 0x101010101010101;
  *(this + 153) = 1096810496;
  *(this + 77) = 0x3FE0000000000000;
  *(this + 39) = xmmword_1D0E83080;
  *(this + 320) = 0;
  *(this + 81) = 0x3F847AE147AE147BLL;
  *(this + 41) = xmmword_1D0E83090;
  *(this + 42) = xmmword_1D0E830A0;
  *(this + 43) = xmmword_1D0E830B0;
  *(this + 44) = xmmword_1D0E830C0;
  *(this + 45) = xmmword_1D0E830D0;
  *(this + 46) = xmmword_1D0E830E0;
  *(this + 47) = xmmword_1D0E830F0;
  *(this + 48) = xmmword_1D0E83100;
  *(this + 49) = xmmword_1D0E83110;
  *(this + 50) = xmmword_1D0E83120;
  *(this + 102) = 0x3DB5FD7FE1796495;
  *(this + 206) = 2;
  *(this + 104) = 0x3FE0000000000000;
  *(this + 420) = 256;
  *(this + 53) = xmmword_1D0E83130;
  *(this + 54) = xmmword_1D0E83140;
  *(this + 55) = xmmword_1D0E83150;
  *(this + 56) = xmmword_1D0E83160;
  *(this + 57) = xmmword_1D0E83170;
  *(this + 58) = xmmword_1D0E83180;
  *(this + 59) = xmmword_1D0E83190;
  *(this + 60) = xmmword_1D0E831A0;
  *(this + 122) = 0x3FF0000000000000;
  *(this + 246) = 350;
  *(this + 62) = xmmword_1D0E831B0;
  *(this + 63) = xmmword_1D0E831C0;
  *(this + 128) = 0x3FF0000000000000;
  *(this + 258) = 3;
  *(this + 65) = xmmword_1D0E831D0;
  *(this + 66) = xmmword_1D0E831E0;
  *(this + 67) = xmmword_1D0E831F0;
  *(this + 68) = _Q2;
  *(this + 69) = xmmword_1D0E83200;
  *(this + 70) = xmmword_1D0E83210;
  *(this + 71) = xmmword_1D0E83220;
  *(this + 72) = xmmword_1D0E83230;
  *(this + 73) = xmmword_1D0E83240;
  *(this + 148) = 0x4018000000000000;
  *(this + 298) = 3;
  *(this + 75) = xmmword_1D0E83250;
  *(this + 76) = xmmword_1D0E83260;
  *(this + 77) = xmmword_1D0E83270;
  *(this + 78) = xmmword_1D0E83280;
  *(this + 79) = xmmword_1D0E83250;
  *(this + 320) = 6;
  *(this + 161) = 0x4000000000000000;
  *(this + 324) = 6;
  *(this + 163) = 0x4000000000000000;
  *(this + 328) = 2;
  *(this + 165) = 0x4000000000000000;
  *(this + 83) = xmmword_1D0E83290;
  *(this + 84) = xmmword_1D0E832A0;
  *(this + 85) = xmmword_1D0E832B0;
  *(this + 86) = xmmword_1D0E832C0;
  __asm { FMOV            V2.2D, #6.0 }

  *(this + 87) = _Q2;
  *(this + 88) = xmmword_1D0E832D0;
  __asm { FMOV            V2.2D, #3.0 }

  *(this + 89) = _Q2;
  *(this + 90) = _Q2;
  *(this + 91) = xmmword_1D0E832E0;
  *(this + 368) = 2;
  *(this + 185) = 0x4024000000000000;
  *(this + 93) = vdupq_n_s64(0x3FE0CCCCCCCCCCCDuLL);
  *(this + 94) = xmmword_1D0E832F0;
  *(this + 95) = xmmword_1D0E83300;
  *(this + 96) = xmmword_1D0E83310;
  *(this + 97) = vdupq_n_s64(0x4066800000000000uLL);
  *(this + 98) = xmmword_1D0E83320;
  *(this + 99) = xmmword_1D0E83330;
  *(this + 100) = xmmword_1D0E83340;
  *(this + 101) = xmmword_1D0E83350;
  *(this + 102) = xmmword_1D0E83360;
  *(this + 206) = 0;
  *(this + 1656) = xmmword_1D0E83630;
  *(this + 1672) = unk_1D0E83640;
  *(this + 1688) = xmmword_1D0E83630;
  *(this + 1704) = unk_1D0E83640;
  *(this + 1720) = xmmword_1D0E83630;
  *(this + 1736) = unk_1D0E83640;
  *(this + 1752) = xmmword_1D0E83630;
  *(this + 1768) = unk_1D0E83640;
  *(this + 1784) = xmmword_1D0E83630;
  *(this + 1800) = unk_1D0E83640;
  *(this + 1816) = xmmword_1D0E83630;
  *(this + 1832) = unk_1D0E83640;
  *(this + 1848) = xmmword_1D0E835F0;
  *(this + 1864) = unk_1D0E83600;
  *(this + 1880) = xmmword_1D0E835D0;
  *(this + 1896) = unk_1D0E835E0;
  *(this + 1912) = xmmword_1D0E835F0;
  *(this + 1928) = unk_1D0E83600;
  *(this + 1944) = xmmword_1D0E83610;
  *(this + 1960) = unk_1D0E83620;
  *(this + 1976) = xmmword_1D0E83630;
  *(this + 1992) = unk_1D0E83640;
  *(this + 2008) = xmmword_1D0E83630;
  *(this + 2024) = unk_1D0E83640;
  *(this + 2040) = xmmword_1D0E83630;
  *(this + 2056) = unk_1D0E83640;
  *(this + 2072) = xmmword_1D0E83630;
  *(this + 2088) = unk_1D0E83640;
  *(this + 2104) = 0;
  *(this + 132) = xmmword_1D0E83370;
  *(this + 133) = xmmword_1D0E83380;
  *(this + 134) = xmmword_1D0E832E0;
  *(this + 135) = xmmword_1D0E83390;
  *(this + 136) = xmmword_1D0E833A0;
  *(this + 1096) = 1;
  *(this + 275) = 0x4034000000000000;
  *(this + 552) = 0;
  *(this + 277) = 0x404E000000000000;
  *(this + 139) = xmmword_1D0E833B0;
  *(this + 140) = xmmword_1D0E833C0;
  *(this + 141) = xmmword_1D0E833D0;
  *(this + 284) = 0x3FE3333333333333;
  *(this + 570) = 1;
  *(this + 143) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(this + 1152) = 0;
  *(this + 293) = 0;
  *(this + 2312) = 0u;
  *(this + 2328) = 0u;
  *(this + 294) = 0x3FD51EB851EB851FLL;
  *(this + 2360) = xmmword_1D0E83650;
  *(this + 2376) = unk_1D0E83660;
  *(this + 1196) = 257;
  *(this + 2394) = 1;
  *(this + 150) = xmmword_1D0E83670;
  *(this + 151) = unk_1D0E83680;
  *(this + 152) = xmmword_1D0E833E0;
  *(this + 153) = xmmword_1D0E833F0;
  *(this + 154) = xmmword_1D0E83400;
  __asm { FMOV            V1.2D, #0.5 }

  *(this + 155) = _Q1;
  *(this + 156) = vdupq_n_s64(0x3FEE666666666666uLL);
  *(this + 157) = xmmword_1D0E83410;
  *(this + 158) = xmmword_1D0E83420;
  *(this + 2544) = 1;
  *(this + 319) = 0x40BC200000000000;
  *(this + 1280) = 1;
  *(this + 2562) = 0;
  *(this + 321) = 0x3FF0000000000000;
  *(this + 161) = xmmword_1D0E83780;
  *(this + 165) = unk_1D0E837C0;
  *(this + 164) = xmmword_1D0E837B0;
  *(this + 163) = xmmword_1D0E837A0;
  *(this + 162) = *algn_1D0E83790;
  *(this + 166) = xmmword_1D0E83690;
  *(this + 170) = xmmword_1D0E836D0;
  *(this + 169) = unk_1D0E836C0;
  *(this + 168) = xmmword_1D0E836B0;
  *(this + 167) = unk_1D0E836A0;
  *(this + 2736) = 0;
  *(this + 2792) = xmmword_1D0E83710;
  *(this + 2808) = unk_1D0E83720;
  *(this + 2760) = unk_1D0E836F0;
  *(this + 2776) = xmmword_1D0E83700;
  *(this + 2744) = xmmword_1D0E836E0;
  *(this + 2872) = xmmword_1D0E83760;
  *(this + 2888) = unk_1D0E83770;
  *(this + 2840) = unk_1D0E83740;
  *(this + 2856) = xmmword_1D0E83750;
  *(this + 2824) = xmmword_1D0E83730;
  *(this + 2952) = xmmword_1D0E837B0;
  *(this + 2968) = unk_1D0E837C0;
  *(this + 2920) = *algn_1D0E83790;
  *(this + 2936) = xmmword_1D0E837A0;
  *(this + 2904) = xmmword_1D0E83780;
  *(this + 3032) = unk_1D0E83800;
  *(this + 3048) = xmmword_1D0E83810;
  *(this + 3000) = unk_1D0E837E0;
  *(this + 3016) = xmmword_1D0E837F0;
  *(this + 2984) = xmmword_1D0E837D0;
  *(this + 383) = 0x3FEE666666666666;
  *(this + 192) = xmmword_1D0E83430;
  *(this + 193) = xmmword_1D0E83440;
  *(this + 194) = xmmword_1D0E83450;
  *(this + 195) = xmmword_1D0E83460;
  *(this + 196) = xmmword_1D0E83470;
  *(this + 197) = xmmword_1D0E83480;
  *(this + 198) = xmmword_1D0E83490;
  *(this + 199) = xmmword_1D0E834A0;
  *(this + 200) = xmmword_1D0E834B0;
  *(this + 201) = xmmword_1D0E834C0;
  *(this + 202) = xmmword_1D0E834D0;
  *(this + 203) = xmmword_1D0E83040;
  *(this + 204) = xmmword_1D0E834E0;
  *(this + 205) = xmmword_1D0E834F0;
  *(this + 206) = xmmword_1D0E83500;
  *(this + 207) = xmmword_1D0E83510;
  __asm { FMOV            V0.2D, #5.0 }

  *(this + 208) = _Q0;
  *(this + 209) = xmmword_1D0E83520;
  *(this + 420) = 0x3FE999999999999ALL;
  *(this + 1684) = 257;
  *(this + 211) = xmmword_1D0E83530;
  *(this + 424) = 0x3FE0000000000000;
  *(this + 425) = 0x400000005;
  *(this + 213) = xmmword_1D0E83540;
  *(this + 214) = xmmword_1D0E83550;
  *(this + 215) = xmmword_1D0E83560;
  *(this + 216) = vdupq_n_s64(0x4014880F19EA2B99uLL);
  *(this + 217) = xmmword_1D0E83570;
  *(this + 218) = xmmword_1D0E83580;
  *(this + 438) = 0x4022000000000000;
  *(this + 3512) = 0;
  *(this + 220) = xmmword_1D0E83590;
  *(this + 1768) = 257;
  *(this + 443) = 0x4072C00000000000;
  *(this + 444) = 0x412E848000000000;
  *(this + 445) = 2;
  *(this + 3568) = 1;
  *(this + 447) = 0x4014000000000000;
  *(this + 448) = 0x3F847AE147AE147BLL;
  *(this + 898) = 5;
  *(this + 3596) = 1;
  *(this + 225) = xmmword_1D0E835A0;
  *(this + 452) = 0x4014000000000000;
  *(this + 453) = 100;
  *(this + 227) = xmmword_1D0E835B0;
  *(this + 456) = 0x3FD3333333333333;
  *(this + 457) = 3;
  *(this + 3664) = 0;
  *(this + 917) = 0;
  *(this + 3672) = 0;
  sub_1D0B751F4(this + 3680, &unk_1D0ED80C5);
  *(this + 926) = 10;
  *(this + 3708) = 0;
  sub_1D0B751F4(this + 3712, "raven_output.bin");
  *(this + 1868) = 256;
  *(this + 3738) = 0;
  sub_1D0B751F4(this + 3744, "raven_debug.txt");
  *(this + 1884) = 0;
  *(this + 3770) = 0;
  v14 = sub_1D0B751F4(this + 3776, "raven_msr.txt");
  *(this + 3804) = 1;
  *(this + 950) = 16843009;
  *(this + 3805) = 0;
  *(this + 3807) = 0x101010101010101;
  *(this + 3815) = 1;
  *(v4 + 3270) = 16843009;
  *(this + 3821) = 0;
  *(this + 3822) = 16843009;
  *(this + 3825) = 16843009;
  *(this + 3829) = 0;
  *(this + 3834) = 1;
  *(this + 3830) = 16843009;
  *(v4 + 822) = 0x1000000;
  *(this + 3839) = 1;
  *(this + 960) = 0;
  *(this + 3844) = 0;
  if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
  {
    LOWORD(v50[0]) = 12;
    v51 = 1;
    cnprint::CNPrinter::Print(v50, &v51, "Hardware platform %hu received", v15, v16, v17, v18, v19, *a2);
  }

  if (!*a2)
  {
    LOWORD(v50[0]) = 12;
    v51 = 5;
    cnprint::CNPrinter::Print(v50, &v51, "Error: Unsupported hardware type %hu detected", v15, v16, v17, v18, v19, 0);
    v30 = 0;
    goto LABEL_41;
  }

  v20 = *(a2 + 15) == 2;
  *(this + 641) = v20;
  *(this + 3369) = v20;
  *(this + 592) = 1;
  GnssChipset = CNPlatformInfo::GetGnssChipset(a2);
  v22 = 10.0;
  if ((GnssChipset - 3) >= 7)
  {
    v22 = 9.0;
    if ((GnssChipset - 10) >= 3)
    {
      v22 = 14.0;
      if (GnssChipset == 13)
      {
        v22 = 10.0;
      }
    }
  }

  *(this + 153) = v22;
  *(this + 544) = CNPlatformInfo::GetGnssChipset(a2) - 10 < 0xFFFFFFF9;
  *(this + 546) = CNPlatformInfo::GetGnssChipset(a2) - 10 < 0xFFFFFFF9;
  *(this + 545) = CNPlatformInfo::GetGnssChipset(a2) - 3 < 0xFFFFFFFE;
  *(this + 547) = CNPlatformInfo::GetGnssChipset(a2) - 1 < 2;
  *(this + 548) = CNPlatformInfo::GetGnssChipset(a2) - 3 < 7;
  v23 = CNPlatformInfo::GetGnssChipset(a2);
  if ((v23 - 1) > 1)
  {
    if ((v23 - 3) > 6)
    {
      if ((v23 - 10) > 2)
      {
        if (v23 != 13)
        {
          *(this + 138) = 0;
          LOWORD(v50[0]) = 12;
          v51 = 3;
          cnprint::CNPrinter::Print(v50, &v51, "WARNING: Invalid HW type", v24, v25, v26, v27, v28, v49);
          goto LABEL_22;
        }

        v29 = 6;
      }

      else
      {
        if (v23 != 12)
        {
          goto LABEL_20;
        }

        v31 = *(a2 + 14);
        if (v31 == 3)
        {
          v29 = 5;
          goto LABEL_21;
        }

        if (v31 == 1)
        {
          v29 = 4;
        }

        else
        {
LABEL_20:
          v29 = 3;
        }
      }
    }

    else
    {
      v29 = 2;
    }
  }

  else
  {
    v29 = 1;
  }

LABEL_21:
  *(this + 138) = v29;
LABEL_22:
  if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
  {
    LOWORD(v50[0]) = 12;
    v51 = 1;
    cnprint::CNPrinter::Print(v50, &v51, "GNSS Measurement Uncertainty Model Type: %d", v32, v33, v34, v35, v36, *(this + 138));
  }

  *(this + 3814) = *(a2 + 14) != 3;
  *(this + 840) = CNPlatformInfo::GetGnssChipset(a2) - 3 < 7;
  v37 = CNPlatformInfo::GetGnssChipset(a2);
  v38 = 4.0;
  if ((v37 - 3) < 7)
  {
    v38 = 2.5;
  }

  *(this + 196) = v38;
  *(this + 550) = CNPlatformInfo::GetGnssChipset(a2) - 3 < 7;
  *(this + 576) = CNPlatformInfo::GetGnssChipset(a2) - 3 < 7;
  *(this + 577) = CNPlatformInfo::GetGnssChipset(a2) == 9;
  *(this + 578) = CNPlatformInfo::GetGnssChipset(a2) - 10 < 3;
  *(this + 579) = CNPlatformInfo::GetGnssChipset(a2) - 10 < 3;
  if (CNPlatformInfo::GetGnssChipset(a2) - 3 >= 7)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 17.0;
  }

  *(this + 146) = v39;
  *(this + 588) = CNPlatformInfo::GetGnssChipset(a2) - 3 < 7;
  v40 = CNPlatformInfo::GetGnssChipset(a2);
  v41 = 1.0;
  if ((v40 - 3) < 7)
  {
    v41 = 0.5;
  }

  *(this + 205) = v41;
  *(this + 3512) = 0;
  *(this + 2736) = CNPlatformInfo::GetGnssChipset(a2) - 3 < 7;
  *(this + 2193) = CNPlatformInfo::GetGnssChipset(a2) - 4 < 9;
  v42 = CNPlatformInfo::GetGnssChipset(a2);
  v43 = 0.6;
  if ((v42 - 4) < 0xA)
  {
    v43 = 25.0;
  }

  *(this + 287) = v43;
  if (CNPlatformInfo::GetGnssChipset(a2) - 3 >= 7)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 17.0;
  }

  *(this + 552) = v44;
  *(this + 640) = CNPlatformInfo::GetGnssChipset(a2) - 10 < 3;
  *(this + 414) = qword_1D0E835C0[CNPlatformInfo::GetGnssChipset(a2) - 4 < 6];
  LOWORD(v50[0]) = 0;
  memset(v50 + 8, 0, 40);
  raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::Initialize(v50, a2);
  v45 = v50[1];
  *(this + 144) = v50[0];
  v50[1] = 0uLL;
  v46 = *(this + 291);
  *(this + 145) = v45;
  if (v46)
  {
    sub_1D0B7CAB8(v46);
    v47 = *(&v50[1] + 1);
    *(this + 146) = v50[2];
    if (v47)
    {
      sub_1D0B7CAB8(v47);
    }
  }

  else
  {
    *(this + 146) = v50[2];
  }

  *(this + 589) = CNPlatformInfo::GetGnssChipset(a2) - 13 < 0xFFFFFFFD;
  *(this + 590) = CNPlatformInfo::GetGnssChipset(a2) - 13 < 0xFFFFFFFD;
  *(this + 591) = CNPlatformInfo::GetGnssChipset(a2) != 13;
  v30 = 1;
LABEL_41:
  *(this + 33) = v30;
  return this;
}

void sub_1D0D407E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 3799) < 0)
  {
    operator delete(*v7);
  }

  if (*(v2 + 3767) < 0)
  {
    operator delete(*v6);
  }

  if (*(v2 + 3735) < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 3703) < 0)
  {
    operator delete(*v5);
  }

  v9 = *(v2 + 2328);
  if (v9)
  {
    sub_1D0B7CAB8(v9);
  }

  sub_1D0D41594(va);
  *v2 = v3;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  _Unwind_Resume(a1);
}

void raven::RavenParameters::GetDebugMsrLoggingFilenameForEstimator(uint64_t a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  sub_1D0B751F4(&v17, off_1E83D7DD0[*a2]);
  v5 = std::string::insert(&v17, 0, ".", 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v19 = v5->__r_.__value_.__r.__words[2];
  *__p = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v19 >= 0)
  {
    v7 = (__p + HIBYTE(v19));
  }

  else
  {
    v7 = (__p[0] + __p[1]);
  }

  if (v19 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  while (v8 != v7)
  {
    *v8 = __tolower(*v8);
    v8 = (v8 + 1);
  }

  v9 = (a1 + 3776);
  v10 = *(a1 + 3799);
  if (v10 < 0)
  {
    v11 = *(a1 + 3776);
    v12 = *(a1 + 3784);
  }

  else
  {
    v11 = a1 + 3776;
    v12 = *(a1 + 3799);
  }

  v13 = v11 - 1;
  do
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = *(v13 + v12--);
  }

  while (v14 != 46);
  if (v12 == -1)
  {
LABEL_20:
    sub_1D0BBB79C(v9, __p, a3);
    goto LABEL_29;
  }

  if ((v10 & 0x80000000) != 0)
  {
    sub_1D0BC39B4(a3, *(a1 + 3776), *(a1 + 3784));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *v9;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 3792);
  }

  if (v19 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v19 >= 0)
  {
    v16 = HIBYTE(v19);
  }

  else
  {
    v16 = __p[1];
  }

  std::string::insert(a3, v12, v15, v16);
LABEL_29:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0D40A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenParameters::LoadConfigurationFile(raven::RavenParameters *this, const char *a2)
{
  v23[19] = *MEMORY[0x1E69E9840];
  sub_1D0C541CC(v21);
  v8 = v21 + *(v21[0] - 24);
  if ((v8[32] & 5) != 0)
  {
    LOWORD(v19.__r_.__value_.__l.__data_) = 12;
    v20 = 4;
    cnprint::CNPrinter::Print(&v19, &v20, "Error: Could not open configuration file", v3, v4, v5, v6, v7, v18);
    v9 = 0;
  }

  else
  {
    v10 = *(v8 + 5);
    memset(&v19, 0, sizeof(v19));
    if (v10)
    {
      while (1)
      {
        v11 = v10[3];
        v12 = v10[4];
        if (v11 == v12)
        {
          if ((*(*v10 + 72))(v10) == -1)
          {
            if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = &v19;
            }

            else
            {
              v15 = v19.__r_.__value_.__r.__words[0];
            }

            goto LABEL_17;
          }

          v11 = v10[3];
          v12 = v10[4];
        }

        if (v11 == v12)
        {
          v13 = (*(*v10 + 72))(v10);
        }

        else
        {
          v13 = *v11;
        }

        std::string::push_back(&v19, v13);
        v14 = v10[3];
        if (v14 == v10[4])
        {
          (*(*v10 + 80))(v10);
        }

        else
        {
          v10[3] = v14 + 1;
        }
      }
    }

    v15 = &v19;
LABEL_17:
    v9 = (*(*this + 24))(this, v15, 0);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  v21[0] = *MEMORY[0x1E69E54C8];
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1D387E8C0](&v22);
  std::istream::~istream();
  MEMORY[0x1D387EBF0](v23);
  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1D0D40D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D40D98(&a17);
  _Unwind_Resume(a1);
}

void *sub_1D0D40D98(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1D387E8C0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x1D387EBF0](a1 + 53);
  return a1;
}

uint64_t raven::RavenParameters::LoadConfigurationString(raven::RavenParameters *this, char *a2, char a3)
{
  sub_1D0B751F4(&__p, a2);
  v50[6] = 0;
  v5 = MEMORY[0x1E69E5568] + 64;
  v50[0] = MEMORY[0x1E69E5568] + 64;
  v6 = *(MEMORY[0x1E69E54E0] + 16);
  v42[0] = *(MEMORY[0x1E69E54E0] + 8);
  *(v42 + *(v42[0] - 24)) = v6;
  v42[1] = 0;
  v7 = (v42 + *(v42[0] - 24));
  std::ios_base::init(v7, &v43);
  v8 = MEMORY[0x1E69E5568] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v42[0] = v8;
  v50[0] = v5;
  v39 = MEMORY[0x1E69E5538] + 16;
  v43 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1D387EB80](&v44);
  memset(v45, 0, sizeof(v45));
  v9 = MEMORY[0x1E69E5548] + 16;
  v43 = MEMORY[0x1E69E5548] + 16;
  *v46 = *&__p.__r_.__value_.__l.__data_;
  v10 = __p.__r_.__value_.__r.__words[2];
  memset(&__p, 0, sizeof(__p));
  v47 = v10;
  v48 = 0;
  v49 = 8;
  sub_1D0BC2B6C(&v43);
  v38 = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = v42[0];
  if ((*(v45 + *(v42[0] - 24)) & 5) != 0)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    v40.__r_.__value_.__s.__data_[0] = 4;
    cnprint::CNPrinter::Print(&__p, &v40, "Error: Could not initialize input string stream", v11, v12, v13, v14, v15, v9);
    LOBYTE(v17) = 0;
    v18 = MEMORY[0x1E69E54E0];
    goto LABEL_35;
  }

  memset(&__p, 0, sizeof(__p));
  v17 = 1;
  v19 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v42 + *(v16 - 24)));
    v20 = std::locale::use_facet(&v40, v19);
    v21 = (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v40);
    v22 = sub_1D0D44808(v42, &__p, v21);
    if ((*(v22 + *(*v22 - 24) + 32) & 5) != 0)
    {
      break;
    }

    LODWORD(v30) = HIBYTE(__p.__r_.__value_.__r.__words[2]);
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

    if (size >= 1)
    {
      v33 = p_p + size;
      v34 = p_p;
      do
      {
        v35 = memchr(v34, 35, size);
        if (!v35)
        {
          break;
        }

        if (*v35 == 35)
        {
          if (v35 != v33 && v35 - p_p != -1)
          {
            std::string::basic_string(&v40, &__p, 0, v35 - p_p, v51);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = v40;
            v30 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
          }

          break;
        }

        v34 = (v35 + 1);
        size = v33 - v34;
      }

      while (v33 - v34 >= 1);
    }

    if ((v30 & 0x80) != 0)
    {
      if (!__p.__r_.__value_.__l.__size_)
      {
        goto LABEL_30;
      }

      v36 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!v30)
      {
        goto LABEL_30;
      }

      v36 = &__p;
    }

    *(this + 32) = a3;
    sub_1D0BBB60C((this + 8), v36);
    v17 &= (*(*this + 32))(this);
LABEL_30:
    v16 = v42[0];
  }

  if ((v17 & 1) == 0)
  {
    raven::RavenParameters::PrintLoadErrors(this, v23, v24, v25, v26, v27, v28, v29);
  }

  v18 = MEMORY[0x1E69E54E0];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_35:
  v42[0] = *v18;
  *(v42 + *(v42[0] - 24)) = v18[3];
  v43 = v38;
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  v43 = v39;
  std::locale::~locale(&v44);
  std::istream::~istream();
  MEMORY[0x1D387EBF0](v50);
  return v17 & 1;
}

void sub_1D0D4135C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D41638(&a22);
  MEMORY[0x1D387EBF0](a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D4140C(uint64_t a1, char *a2, char a3)
{
  *(a1 + 32) = a3;
  sub_1D0BBB60C((a1 + 8), a2);
  v4 = *(*a1 + 32);

  return v4(a1);
}

void sub_1D0D41470(uint64_t a1)
{
  sub_1D0D41758(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D414A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0D41500(uint64_t a1)
{
  sub_1D0D41538(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0D41538(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
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

    while (v5 != a2);
  }
}

void sub_1D0D41594(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0D415E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D0D415E8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1D0D41638(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t sub_1D0D41758(uint64_t a1)
{
  *a1 = &unk_1F4CDF868;
  if (*(a1 + 3799) < 0)
  {
    operator delete(*(a1 + 3776));
  }

  if (*(a1 + 3767) < 0)
  {
    operator delete(*(a1 + 3744));
  }

  if (*(a1 + 3735) < 0)
  {
    operator delete(*(a1 + 3712));
  }

  if (*(a1 + 3703) < 0)
  {
    operator delete(*(a1 + 3680));
  }

  v2 = *(a1 + 2328);
  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

  v4 = (a1 + 40);
  sub_1D0D41594(&v4);
  *a1 = &unk_1F4CDFA78;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1D0D41828(uint64_t a1, _BYTE *a2, const char *a3)
{
  if ((*(a1 + 31) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 31))
    {
      goto LABEL_98;
    }

LABEL_5:
    sub_1D0B751F4(&v66, "\n");
    v6 = strlen(a3);
    v7 = std::string::append(&v66, a3, v6);
    v8 = std::string::append(v7, ":", 1uLL);
    v14 = (a1 + 8);
    v15 = *(a1 + 31);
    __s = a3;
    if (v15 < 0)
    {
      v16 = *(a1 + 8);
      v17 = *(a1 + 16);
    }

    else
    {
      v16 = (a1 + 8);
      v17 = *(a1 + 31);
    }

    v18 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
    if (v18 >= 0)
    {
      v19 = v8;
    }

    else
    {
      v19 = v8->__r_.__value_.__r.__words[0];
    }

    if (v18 >= 0)
    {
      size = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (v17 >= size)
      {
        v25 = &v16[v17];
        v26 = v19->__r_.__value_.__s.__data_[0];
        v27 = v16;
        do
        {
          v28 = v17 - size;
          if (v28 == -1)
          {
            break;
          }

          v29 = memchr(v27, v26, v28 + 1);
          if (!v29)
          {
            break;
          }

          v30 = v29;
          if (!memcmp(v29, v19, size))
          {
            if (v30 != v25)
            {
              v24 = v30 - v16;
              if (v30 - v16 != -1)
              {
                goto LABEL_48;
              }
            }

            break;
          }

          v27 = v30 + 1;
          v17 = v25 - (v30 + 1);
        }

        while (v17 >= size);
      }

      sub_1D0BBB60C(&v66, __s);
      v21 = std::string::append(&v66, ":", 1uLL);
      v15 = *(a1 + 31);
      if (v15 < 0)
      {
        v22 = *(a1 + 8);
        v23 = *(a1 + 16);
      }

      else
      {
        v22 = (a1 + 8);
        v23 = *(a1 + 31);
      }

      v31 = SHIBYTE(v21->__r_.__value_.__r.__words[2]);
      if (v31 >= 0)
      {
        v32 = v21;
      }

      else
      {
        v32 = v21->__r_.__value_.__r.__words[0];
      }

      if (v31 >= 0)
      {
        v33 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = v21->__r_.__value_.__l.__size_;
      }

      if (v33)
      {
        if (v23 >= v33)
        {
          v35 = &v22[v23];
          v36 = v32->__r_.__value_.__s.__data_[0];
          v37 = v22;
          do
          {
            v38 = v23 - v33;
            if (v38 == -1)
            {
              break;
            }

            v39 = memchr(v37, v36, v38 + 1);
            if (!v39)
            {
              break;
            }

            v40 = v39;
            if (!memcmp(v39, v32, v33))
            {
              v34 = 1;
              if (v40 == v35)
              {
                goto LABEL_35;
              }

              LOBYTE(a3) = __s;
              if (v40 != v22)
              {
                goto LABEL_96;
              }

              goto LABEL_47;
            }

            v37 = v40 + 1;
            v23 = v35 - (v40 + 1);
          }

          while (v23 >= v33);
        }

        v34 = 1;
LABEL_35:
        LOBYTE(a3) = __s;
LABEL_96:
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
          if (v34)
          {
            goto LABEL_98;
          }
        }

        else if (v34)
        {
          goto LABEL_98;
        }

        return 1;
      }

LABEL_47:
      v24 = 0;
    }

    else
    {
      v24 = 0;
    }

LABEL_48:
    v41 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v41 = v66.__r_.__value_.__l.__size_;
    }

    v42 = v41 + v24;
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    v43 = v15;
    if (v42 < v15)
    {
      while (v43 > v42)
      {
        v44 = a1 + 8;
        if ((v15 & 0x80000000) != 0)
        {
          v44 = *v14;
        }

        if (*(v44 + v42) != 58)
        {
          v45 = v15;
          if ((v15 & 0x80000000) != 0)
          {
            v45 = *(a1 + 16);
          }

          if (v45 <= v42)
          {
            break;
          }

          v46 = a1 + 8;
          if ((v15 & 0x80000000) != 0)
          {
            v46 = *v14;
          }

          if (*(v46 + v42) != 32)
          {
            v47 = v15;
            if ((v15 & 0x80000000) != 0)
            {
              v47 = *(a1 + 16);
            }

            if (v47 <= v42)
            {
              break;
            }

            v48 = a1 + 8;
            if ((v15 & 0x80000000) != 0)
            {
              v48 = *v14;
            }

            if (*(v48 + v42) != 9)
            {
              goto LABEL_72;
            }
          }
        }

        ++v42;
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

LABEL_53:
        v43 = *(a1 + 16);
        if (v42 >= v43)
        {
          goto LABEL_72;
        }
      }

      sub_1D0C54390();
    }

LABEL_72:
    v49 = 0;
    LOBYTE(a3) = __s;
    do
    {
      v50 = v42 + v49;
      v51 = *(a1 + 31);
      if ((v51 & 0x8000000000000000) != 0)
      {
        if (v50 >= *(a1 + 16))
        {
          break;
        }
      }

      else if (v50 >= v51)
      {
        break;
      }

      v52 = a1 + 8;
      if ((v51 & 0x80000000) != 0)
      {
        v52 = *v14;
      }

      if (*(v52 + v49 + v42) == 10)
      {
        break;
      }

      if ((v51 & 0x80000000) != 0)
      {
        v53 = *(a1 + 16);
      }

      else
      {
        v53 = *(a1 + 31);
      }

      if (v53 <= v50)
      {
LABEL_104:
        sub_1D0C54390();
      }

      v54 = a1 + 8;
      if ((v51 & 0x80000000) != 0)
      {
        v54 = *v14;
      }

      if (*(v54 + v49 + v42) == 13)
      {
        break;
      }

      if ((v51 & 0x80000000) != 0)
      {
        v55 = *(a1 + 16);
      }

      else
      {
        v55 = *(a1 + 31);
      }

      if (v55 <= v50)
      {
        goto LABEL_104;
      }

      v56 = a1 + 8;
      if ((v51 & 0x80000000) != 0)
      {
        v56 = *v14;
      }

      a2[v49] = *(v56 + v49 + v42);
      ++v49;
    }

    while (v49 != 1023);
    v34 = 0;
    a2[v49] = 0;
    if (*(a1 + 32) == 1)
    {
      v65 = 0;
      v64 = 2;
      cnprint::CNPrinter::Print(&v65, &v64, "ConfigLoader: %s loaded value %s", v9, v10, v11, v12, v13, __s);
      v34 = 0;
    }

    goto LABEL_96;
  }

  if (*(a1 + 16))
  {
    goto LABEL_5;
  }

LABEL_98:
  bzero(a2, 0x400uLL);
  if (*(a1 + 32) == 1)
  {
    LOWORD(v66.__r_.__value_.__l.__data_) = 0;
    LOBYTE(v65) = 2;
    cnprint::CNPrinter::Print(&v66, &v65, "ConfigLoader: %s using default value %s", v57, v58, v59, v60, v61, a3);
  }

  return 0;
}

void sub_1D0D41C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D41C9C(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0D41CF0(void *a1, char *__s)
{
  v4 = 0;
  v5[0] = __s;
  v5[1] = &__s[strlen(__s)];
  if ((sub_1D0D42304(v5, &v4) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v6);
    v6.__vftable = &unk_1F4CDFA50;
    v7 = MEMORY[0x1E69E53D8];
    v8 = MEMORY[0x1E69E5458];
    sub_1D0D428D0(&v6);
  }

  *a1 = v4;
  return 1;
}

void sub_1D0D41D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, __int128 a13)
{
  std::exception::~exception(&a12);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    a12.__vftable = &unk_1F4CDFA50;
    a13 = *(exception_ptr + 8);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a12);
    __cxa_end_catch();
    JUMPOUT(0x1D0D41D3CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0D41E0C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_1D0D41E50(char *__dst, __int128 *a2, std::string::value_type *a3, std::string::value_type *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D0BC39B4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v8;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1D0BC39B4(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v9;
  }

  v10 = 0;
  v11 = *(a2 + 6);
  v12 = *(a2 + 56);
  *(__dst + 8) = a3;
  __dst[56] = v12;
  *(__dst + 6) = v11;
  *(__dst + 9) = a4;
  __dst[80] = 0;
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  if (a3 != a4)
  {
    v10 = sub_1D0D41F60(__dst, __dst + 8, a4, (__dst + 88));
  }

  __dst[80] = v10;
  return __dst;
}

void sub_1D0D41F24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D41F60(uint64_t a1, std::string::value_type **a2, std::string::value_type *a3, std::string *this)
{
  v8 = *a2;
  if (*(a1 + 52))
  {
    goto LABEL_2;
  }

  if (v8 != a3)
  {
    do
    {
      v11 = sub_1D0D42140(a1, *v8);
      v8 = *a2;
      if (!v11)
      {
        break;
      }

      *a2 = ++v8;
    }

    while (v8 != a3);
    if (*(a1 + 52))
    {
LABEL_2:
      if (v8 == a3)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          v14 = 1;
          *(a1 + 56) = 1;
          sub_1D0D42234(this, a3, a3, 0);
          return v14;
        }

        return 0;
      }

      v9 = sub_1D0D421BC(a1, *v8);
      v10 = *(a1 + 56);
      if (v9)
      {
        if (*(a1 + 56))
        {
          ++*a2;
          *(a1 + 56) = 0;
LABEL_28:
          sub_1D0D42234(this, v8, *a2, *a2 - v8);
          return 1;
        }
      }

      else if ((*(a1 + 56) & 1) != 0 || !sub_1D0D42140(a1, **a2))
      {
        v15 = sub_1D0D42140(a1, **a2);
        v16 = *a2;
        if (v15)
        {
          *a2 = ++v16;
          v8 = v16;
        }

        while (v16 != a3 && !sub_1D0D42140(a1, *v16) && !sub_1D0D421BC(a1, **a2))
        {
          v16 = *a2 + 1;
          *a2 = v16;
        }
      }

      *(a1 + 56) = 1;
      goto LABEL_28;
    }
  }

  if (v8 != a3)
  {
    v12 = sub_1D0D421BC(a1, *v8);
    v13 = *a2;
    if (v12)
    {
      *a2 = v13 + 1;
    }

    else
    {
      while (v13 != a3 && !sub_1D0D42140(a1, *v13) && !sub_1D0D421BC(a1, **a2))
      {
        v13 = *a2 + 1;
        *a2 = v13;
      }
    }

    goto LABEL_28;
  }

  return 0;
}

BOOL sub_1D0D42140(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 47);
  if (v2 < 0)
  {
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v3 = std::string::find((a1 + 24), a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 49) != 1)
    {
      return 0;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v4 = __maskrune(a2, 0x4000uLL);
    }

    else
    {
      v4 = *(MEMORY[0x1E69E9830] + 4 * a2 + 60) & 0x4000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

BOOL sub_1D0D421BC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    v3 = std::string::find(a1, a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 48) != 1)
    {
      return 0;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v4 = __maskrune(a2, 0x2000uLL);
    }

    else
    {
      v4 = *(MEMORY[0x1E69E9830] + 4 * a2 + 60) & 0x2000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

void sub_1D0D42234(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
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

uint64_t sub_1D0D42304(uint64_t a1, double *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
    goto LABEL_8;
  }

  v5 = *v3;
  if (v5 == 45 || v5 == 43)
  {
    v3 = (v3 + 1);
  }

  v7 = v4 - v3;
  if (v4 - v3 < 3)
  {
    goto LABEL_8;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(v3 + v10);
    if (v12 != aNan_0[v10] && v12 != aNan[v10])
    {
      break;
    }

    v11 = v10++ > 1;
  }

  while (v10 != 3);
  if (!v11)
  {
    if (v7 == 3)
    {
      v20 = 0;
      v18 = 0;
      do
      {
        v21 = *(v3 + v20);
        if (v21 != aInfinity_0[v20] && v21 != aInfinity[v20])
        {
          break;
        }

        v18 = v20++ > 1;
      }

      while (v20 != 3);
    }

    else
    {
      if (v7 != 8)
      {
        goto LABEL_8;
      }

      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(v3 + v17);
        if (v19 != aInfinity_0[v17] && v19 != aInfinity[v17])
        {
          break;
        }

        v18 = v17++ > 6;
      }

      while (v17 != 8);
    }

    if (v18)
    {
      v14 = v5 == 45;
      v15 = INFINITY;
      v16 = -INFINITY;
      goto LABEL_34;
    }

LABEL_8:
    result = sub_1D0D424EC(a1, a2);
    if (result)
    {
      v9 = *(*(a1 + 8) - 1) - 43;
      if (v9 <= 0x3A)
      {
        return result & ((0x400000004000005uLL >> v9) ^ 1);
      }
    }

    return result;
  }

  v13 = v3 + 3;
  if (v13 != v4 && (v4 - v13 < 2 || *v13 != 40 || *(v4 - 1) != 41))
  {
    goto LABEL_8;
  }

  v14 = v5 == 45;
  v15 = NAN;
  v16 = NAN;
LABEL_34:
  if (v14)
  {
    v15 = v16;
  }

  *a2 = v15;
  return 1;
}

BOOL sub_1D0D424EC(std::locale::__imp **a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E5538] + 16;
  __sb = (MEMORY[0x1E69E5538] + 16);
  MEMORY[0x1D387EB80](v17);
  memset(&v17[4], 0, 24);
  v5 = *a1;
  v6 = a1[1];
  __sb = &unk_1F4CDF8E0;
  v17[1].__locale_ = v5;
  v17[2].__locale_ = v5;
  v17[3].__locale_ = v6;
  v13.__loc_ = 0;
  v12[0] = MEMORY[0x1E69E5518] + 24;
  v12[1] = 0;
  v13.__vftable = (MEMORY[0x1E69E5518] + 64);
  std::ios_base::init(&v13, &__sb);
  v14 = 0;
  v15 = -1;
  v7 = (v12 + *(v12[0] - 24));
  v7->__exceptions_ = 1;
  std::ios_base::clear(v7, v7->__rdstate_);
  v8 = v12[0];
  *(&v12[1] + *(v12[0] - 24)) &= ~0x1000u;
  *(&v12[2] + *(v8 - 24)) = 17;
  v9 = MEMORY[0x1D387E910](v12, a2);
  v10 = (*(v9 + *(*v9 - 24) + 32) & 5) == 0 && std::istream::get() == -1;
  std::istream::~istream();
  __sb = v4;
  std::locale::~locale(v17);
  return v10;
}

void sub_1D0D426D0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  *(v3 - 112) = v1;
  std::locale::~locale(v2 + 1);
  _Unwind_Resume(a1);
}

void *sub_1D0D42720(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

std::locale *sub_1D0D42730(std::locale *a1)
{
  a1->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(a1 + 1);
  return a1;
}

void sub_1D0D42774(std::locale *a1)
{
  a1->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(a1 + 1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0D427D8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double sub_1D0D42888@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

void sub_1D0D428D0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_1D0D4292C(exception, a1);
  __cxa_throw(exception, &unk_1F4CDF980, sub_1D0D429D8);
}

__n128 sub_1D0D4292C(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_1F4CDEDB8;
  a1->n128_u64[1] = &unk_1F4CDFA50;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_1F4CDF9D8;
  a1->n128_u64[1] = &unk_1F4CDFA08;
  a1[2].n128_u64[0] = &unk_1F4CDFA30;
  a1[2].n128_u64[1] = 0;
  return result;
}

uint64_t sub_1D0D429D8(uint64_t a1)
{
  *(a1 + 32) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 40));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_1D0D42BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0D42C64(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_1D0D42F18(exception, a1);
  __cxa_throw(exception, &unk_1F4CDF980, sub_1D0D429D8);
}

void sub_1D0D42CC0(uint64_t a1)
{
  *(a1 + 32) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 40));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D42D34(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));

  std::exception::~exception(a1);
}

void sub_1D0D42D90(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D42E14(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 3);
  sub_1D0D278F8(a1 + 1);

  std::exception::~exception(v1);
}

void sub_1D0D42E6C(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 3);
  sub_1D0D278F8(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D42EE0(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D42F18(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  *(a1 + 8) = &unk_1F4CDFA50;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_1F4CDEDE8;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_1F4CDF9D8;
  *(a1 + 8) = &unk_1F4CDFA08;
  *(a1 + 32) = &unk_1F4CDFA30;
  return a1;
}

uint64_t sub_1D0D43050(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D43094(uint64_t a1, void *a2, const char *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  result = sub_1D0D41828(a1, __s, a3);
  if (result)
  {
    result = sub_1D0D41CF0(a2, __s);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0D43100(uint64_t a1, uint64_t a2, const char *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  result = sub_1D0D41828(a1, __s, a3);
  if (result)
  {
    memset(&v6, 0, sizeof(v6));
    sub_1D0BBB60C(&v6, __s);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v6;
    result = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0D431A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, __int128 a10)
{
  if (SHIBYTE(a10) < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(exception_object);
    __p = &unk_1F4CDFA50;
    a10 = *(exception_ptr + 8);
    __cxa_begin_catch(exception_object);
    std::exception::~exception(&__p);
    __cxa_end_catch();
    JUMPOUT(0x1D0D43170);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D43218(uint64_t a1, char *a2, const char *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!sub_1D0D41828(a1, __s, a3))
  {
    v10 = 0;
    goto LABEL_71;
  }

  if (!__s[0])
  {
    goto LABEL_70;
  }

  p_p = &__p;
  sub_1D0B751F4(&__p, __s);
  v5 = v21;
  v6 = __p;
  if ((v21 & 0x80u) == 0)
  {
    v7 = &__p + v21;
  }

  else
  {
    v7 = __p + v20;
  }

  if ((v21 & 0x80u) != 0)
  {
    p_p = __p;
  }

  if (p_p != v7)
  {
    do
    {
      *p_p = __tolower(*p_p);
      ++p_p;
    }

    while (p_p != v7);
    v5 = v21;
    v6 = __p;
  }

  v8 = &__p;
  if ((v5 & 0x80u) != 0)
  {
    v8 = v6;
  }

  if (*v8 == 49)
  {
    goto LABEL_14;
  }

  if ((v5 & 0x80) != 0)
  {
    if (v20 == 1)
    {
      v16 = *v6;
      switch(v16)
      {
        case '0':
          goto LABEL_66;
        case 'y':
          goto LABEL_14;
        case 'n':
          goto LABEL_66;
      }
    }

    else
    {
      if (v20 == 3)
      {
        if (*v6 == 25977 && *(v6 + 2) == 115)
        {
          goto LABEL_14;
        }
      }

      else if (v20 == 4 && *v6 == 1702195828)
      {
        goto LABEL_14;
      }

      if (*v6 == 48)
      {
        goto LABEL_66;
      }

      v14 = v6;
      if (v20 == 2)
      {
        goto LABEL_63;
      }

      if (v20 == 5 && *v6 == 1936482662 && *(v6 + 4) == 101)
      {
        goto LABEL_66;
      }
    }

    v10 = 0;
    *a2 = 0;
LABEL_69:
    operator delete(v6);
    goto LABEL_71;
  }

  if (v5 == 1)
  {
    if (v6 == 48 || v6 == 110)
    {
      goto LABEL_66;
    }

    if (v6 != 121)
    {
      goto LABEL_70;
    }
  }

  else if (v5 == 3)
  {
    if (__p != 25977 || BYTE2(__p) != 115)
    {
      goto LABEL_31;
    }
  }

  else if (v5 != 4 || v6 != 1702195828)
  {
LABEL_31:
    if (v6 == 48)
    {
      goto LABEL_66;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        if (v5 != 5)
        {
          goto LABEL_70;
        }

        if (__p != 1936482662 || BYTE4(__p) != 101)
        {
          goto LABEL_70;
        }

LABEL_66:
        v9 = 0;
        goto LABEL_67;
      }

      v14 = &__p;
LABEL_63:
      v9 = 0;
      v10 = 0;
      if (*v14 != 28526)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if (v6 == 110)
    {
      goto LABEL_66;
    }

LABEL_70:
    v10 = 0;
    *a2 = 0;
    goto LABEL_71;
  }

LABEL_14:
  v9 = 1;
LABEL_67:
  v10 = 1;
LABEL_68:
  *a2 = v9;
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_69;
  }

LABEL_71:
  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1D0D434F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  *(a1 + 24) = v1 - 1;
  v3 = *(a1 + 8);
  *v3 = 0;
  if (v2 <= v1 - 1)
  {
    v4 = *(v1 - 1);
    if ((v4 - 58) >= 0xF6u)
    {
      *v3 = (v4 - 48);
      *(a1 + 24) = v1 - 2;
      MEMORY[0x1D387EB80](&v30);
      v7 = std::locale::classic();
      if (std::locale::operator==(&v30, v7))
      {
        v5 = sub_1D0D4379C(a1);
LABEL_39:
        std::locale::~locale(&v30);
        return v5;
      }

      v8 = std::locale::use_facet(&v30, MEMORY[0x1E69E5368]);
      (v8->__vftable[1].__on_zero_shared)(&__p);
      v9 = v29;
      if ((v29 & 0x8000000000000000) != 0)
      {
        v9 = v28;
        if (!v28)
        {
          goto LABEL_36;
        }

        p_p = __p;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_36;
        }

        p_p = &__p;
      }

      if (*p_p >= 1)
      {
        v11 = (v8->__vftable[1].~facet_0)(v8);
        v12 = *(a1 + 16);
        v13 = *(a1 + 24);
        if (v13 >= v12)
        {
          v14 = 0;
          v15 = __p;
          if (v29 >= 0)
          {
            v15 = &__p;
          }

          v16 = *v15 - 1;
          do
          {
            if (v16)
            {
              v17 = *(a1 + 4);
              v18 = *a1 | (v17 > 0x19999999);
              *a1 = v18;
              v19 = 10 * v17;
              *(a1 + 4) = v19;
              v20 = *v13;
              if ((*v13 - 58) < 0xF6u)
              {
                goto LABEL_41;
              }

              v21 = v20 - 48;
              v22 = (v20 - 48) * v19;
              if (v21)
              {
                if (v18)
                {
                  goto LABEL_41;
                }

                if (((v21 * v19) & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_41;
                }

                v23 = *(a1 + 8);
                v24 = *v23;
                if (__CFADD__(v22, *v23))
                {
                  goto LABEL_41;
                }
              }

              else
              {
                v23 = *(a1 + 8);
                v24 = *v23;
              }

              *v23 = v24 + v22;
              --v16;
            }

            else
            {
              if (*v13 != v11)
              {
                goto LABEL_36;
              }

              if (v13 == v12)
              {
LABEL_41:
                v5 = 0;
                goto LABEL_37;
              }

              if (v9 - 1 > v14)
              {
                ++v14;
              }

              if (v29 >= 0)
              {
                v25 = &__p;
              }

              else
              {
                v25 = __p;
              }

              v16 = v25[v14];
            }

            *(a1 + 24) = --v13;
          }

          while (v13 >= v12);
        }

        v5 = 1;
        goto LABEL_37;
      }

LABEL_36:
      v5 = sub_1D0D4379C(a1);
LABEL_37:
      if (v29 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_39;
    }
  }

  return 0;
}

void sub_1D0D43768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D4379C(char *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v1)
  {
    return 1;
  }

  v4 = *a1;
  while (1)
  {
    v5 = *(a1 + 1);
    v4 |= v5 > 0x19999999;
    *a1 = v4 & 1;
    v6 = 10 * v5;
    *(a1 + 1) = 10 * v5;
    v7 = *v2;
    if ((*v2 - 58) < 0xF6u)
    {
      break;
    }

    v8 = v7 - 48;
    v9 = (v7 - 48) * v6;
    if (v8)
    {
      if (v4)
      {
        return 0;
      }

      if (((v8 * v6) & 0xFFFFFFFF00000000) != 0)
      {
        return 0;
      }

      v10 = *(a1 + 1);
      v11 = *v10;
      if (__CFADD__(v9, *v10))
      {
        return 0;
      }
    }

    else
    {
      v10 = *(a1 + 1);
      v11 = *v10;
    }

    *v10 = v11 + v9;
    *(a1 + 3) = --v2;
    if (v2 < v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D0D43850(uint64_t a1, float *a2, const char *a3)
{
  *&v39[1023] = *MEMORY[0x1E69E9840];
  result = sub_1D0D41828(a1, &__s, a3);
  if (result)
  {
    v30 = 0.0;
    v5 = strlen(&__s);
    v6 = &v39[v5 - 1];
    if (!v5)
    {
      goto LABEL_13;
    }

    v7 = __s == 45 || __s == 43;
    v8 = v7;
    v9 = v7 ? v39 : &__s;
    v10 = v5 - v8;
    if (v10 < 3)
    {
      goto LABEL_13;
    }

    v19 = 0;
    v20 = 0;
    do
    {
      v21 = v9[v19];
      if (v21 != aNan_0[v19] && v21 != aNan[v19])
      {
        break;
      }

      v20 = v19++ > 1;
    }

    while (v19 != 3);
    if (v20)
    {
      v22 = (v9 + 3);
      if (v22 != v6 && (v6 - v22 < 2 || *v22 != 40 || *(v6 - 1) != 41))
      {
        goto LABEL_13;
      }

      v23 = __s == 45;
      v17 = NAN;
      v24 = NAN;
    }

    else
    {
      if (v10 == 3)
      {
        v28 = 0;
        v26 = 0;
        do
        {
          v29 = v9[v28];
          if (v29 != aInfinity_0[v28] && v29 != aInfinity[v28])
          {
            break;
          }

          v26 = v28++ > 1;
        }

        while (v28 != 3);
      }

      else
      {
        if (v10 != 8)
        {
          goto LABEL_13;
        }

        v25 = 0;
        v26 = 0;
        do
        {
          v27 = v9[v25];
          if (v27 != aInfinity_0[v25] && v27 != aInfinity[v25])
          {
            break;
          }

          v26 = v25++ > 6;
        }

        while (v25 != 8);
      }

      if (!v26)
      {
LABEL_13:
        v11 = MEMORY[0x1E69E5538] + 16;
        MEMORY[0x1D387EB80](v37);
        __sb = &unk_1F4CDF8E0;
        v37[1].__locale_ = &__s;
        v37[2].__locale_ = &__s;
        v37[3].__locale_ = v6;
        memset(&v37[4], 0, 24);
        v33.__loc_ = 0;
        v31.__vftable = (MEMORY[0x1E69E5518] + 24);
        v32 = 0;
        v33.__vftable = (MEMORY[0x1E69E5518] + 64);
        std::ios_base::init(&v33, &__sb);
        v34 = 0;
        v35 = -1;
        v12 = (&v31 + v31.__vftable[-1].~bad_cast);
        v12->__exceptions_ = 1;
        std::ios_base::clear(v12, v12->__rdstate_);
        v13 = v31.__vftable;
        *(&v31 + v31.__vftable[-1].~bad_cast + 8) &= ~0x1000u;
        *(&v33.__vftable + v13[-1].~bad_cast) = 9;
        v14 = MEMORY[0x1D387E920](&v31, &v30);
        if ((*(v14 + *(*v14 - 24) + 32) & 5) != 0)
        {
          std::istream::~istream();
          __sb = v11;
          std::locale::~locale(v37);
        }

        else
        {
          v15 = std::istream::get();
          std::istream::~istream();
          __sb = v11;
          std::locale::~locale(v37);
          if (v15 == -1)
          {
            v16 = *(v6 - 1) - 43;
            if (v16 > 0x3A || ((1 << v16) & 0x400000004000005) == 0)
            {
              v17 = v30;
LABEL_18:
              *a2 = v17;
              result = 1;
              goto LABEL_19;
            }
          }
        }

        std::bad_cast::bad_cast(&v31);
        v31.__vftable = &unk_1F4CDFA50;
        v32 = MEMORY[0x1E69E53D8];
        v33.__vftable = MEMORY[0x1E69E5468];
        sub_1D0D428D0(&v31);
      }

      v23 = __s == 45;
      v17 = INFINITY;
      v24 = -INFINITY;
    }

    if (v23)
    {
      v17 = v24;
    }

    goto LABEL_18;
  }

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0D43D5C(uint64_t a1, int *a2, const char *a3)
{
  *&v19[1023] = *MEMORY[0x1E69E9840];
  result = sub_1D0D41828(a1, &__s, a3);
  if (result)
  {
    v5 = strlen(&__s);
    if (v5)
    {
      v17 = 0;
      v6 = __s;
      p_s = &__s;
      if (__s == 45 || __s == 43)
      {
        p_s = v19;
      }

      LOBYTE(v13.__vftable) = 0;
      HIDWORD(v13.__vftable) = 1;
      v14 = &v17;
      v15 = p_s;
      v16 = &v19[v5 - 1];
      v8 = sub_1D0D434F4(&v13);
      v9 = v17;
      if (v6 == 45)
      {
        if (v17 < 0x80000001)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          v9 = -v17;
LABEL_16:
          *a2 = v9;
          result = 1;
          goto LABEL_17;
        }
      }

      else
      {
        if (v17 >= 0)
        {
          v11 = v8;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          goto LABEL_16;
        }
      }
    }

    std::bad_cast::bad_cast(&v13);
    v13.__vftable = &unk_1F4CDFA50;
    v14 = MEMORY[0x1E69E53D8];
    v15 = MEMORY[0x1E69E5478];
    sub_1D0D428D0(&v13);
  }

LABEL_17:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0D43E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10, __int128 a11, std::exception a12)
{
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(exception_object);
    a10.__vftable = &unk_1F4CDFA50;
    a11 = *(exception_ptr + 8);
    __cxa_begin_catch(exception_object);
    std::exception::~exception(&a10);
    __cxa_end_catch();
    JUMPOUT(0x1D0D43E20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D43F18(uint64_t a1, uint64_t *a2, const char *a3)
{
  *&v42[1023] = *MEMORY[0x1E69E9840];
  result = sub_1D0D41828(a1, &__s, a3);
  if (result)
  {
    v32 = 0;
    v5 = strlen(&__s);
    if (!v5)
    {
      goto LABEL_51;
    }

    v6 = &v42[v5 - 1];
    v7 = __s;
    p_s = &__s;
    if (__s == 45 || __s == 43)
    {
      p_s = v42;
    }

    LOBYTE(v33.__vftable) = 0;
    v34 = 1;
    v35 = &v32;
    v36 = p_s;
    v32 = 0;
    if (p_s <= v6 - 1 && (v9 = *(v6 - 1), (v9 - 58) >= 0xF6u))
    {
      v32 = (v9 - 48);
      v11 = v6 - 2;
      v37 = v6 - 2;
      MEMORY[0x1D387EB80](&v31);
      v12 = std::locale::classic();
      if (std::locale::operator==(&v31, v12))
      {
        v10 = sub_1D0D44310(&v33);
      }

      else
      {
        v13 = std::locale::use_facet(&v31, MEMORY[0x1E69E5368]);
        (v13->__vftable[1].__on_zero_shared)(&__p);
        v14 = v40;
        if ((v40 & 0x8000000000000000) != 0)
        {
          v14 = v39;
          if (!v39)
          {
            goto LABEL_40;
          }

          p_p = __p;
        }

        else
        {
          if (!v40)
          {
            goto LABEL_40;
          }

          p_p = &__p;
        }

        if (*p_p < 1)
        {
LABEL_40:
          v10 = sub_1D0D44310(&v33);
          v17 = v40;
        }

        else
        {
          v16 = (v13->__vftable[1].~facet_0)(v13);
          v17 = v40;
          if (v11 >= p_s)
          {
            v18 = 0;
            v19 = 0;
            v20 = __p;
            if (v40 >= 0)
            {
              v20 = &__p;
            }

            v21 = *v20 - 1;
            v22 = v32;
            v23 = 1;
            do
            {
              if (v21)
              {
                v24 = *v11;
                if (v24 - 58) < 0xF6u || (v18 = v18 & 1 | (v23 > 0x1999999999999999), v23 *= 10, v25 = v24 - 48, v26 = v23 * (v24 - 48), v25) && ((v18 & 1) != 0 || ((v27 = (v25 * v23) >> 64 != 0, !__CFADD__(v26, v22)) ? (v28 = 0) : (v28 = 1), v27 || (v28)))
                {
LABEL_38:
                  v10 = 0;
                  goto LABEL_41;
                }

                v22 += v26;
                v32 = v22;
                --v21;
              }

              else
              {
                if (*v11 != v16)
                {
                  LOBYTE(v33.__vftable) = v18;
                  v34 = v23;
                  v37 = v11;
                  goto LABEL_40;
                }

                if (v11 == p_s)
                {
                  goto LABEL_38;
                }

                if (v14 - 1 > v19)
                {
                  ++v19;
                }

                v21 = v20[v19];
              }

              --v11;
            }

            while (v11 >= p_s);
          }

          v10 = 1;
        }

LABEL_41:
        if (v17 < 0)
        {
          operator delete(__p);
        }
      }

      std::locale::~locale(&v31);
    }

    else
    {
      v10 = 0;
    }

    if (v7 == 45)
    {
      v29 = -v32;
      v32 = -v32;
      if ((v10 & 1) == 0)
      {
LABEL_51:
        std::bad_cast::bad_cast(&v33);
        v33.__vftable = &unk_1F4CDFA50;
        v34 = MEMORY[0x1E69E53D8];
        v35 = MEMORY[0x1E69E54B8];
        sub_1D0D428D0(&v33);
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_51;
      }

      v29 = v32;
    }

    *a2 = v29;
    result = 1;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0D44268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, __int128 a11, uint64_t a12, std::exception a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a10);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    a10.__locale_ = &unk_1F4CDFA50;
    a11 = *(exception_ptr + 8);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
    __cxa_end_catch();
    JUMPOUT(0x1D0D441E8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0D44310(char *a1)
{
  v1 = *(a1 + 3);
  v2 = *(a1 + 4);
  if (v2 < v1)
  {
    return 1;
  }

  v4 = *a1;
  while (1)
  {
    v5 = *(a1 + 1);
    v4 |= v5 > 0x1999999999999999;
    *a1 = v4 & 1;
    v6 = 10 * v5;
    *(a1 + 1) = 10 * v5;
    v7 = *v2;
    if ((v7 - 58) < 0xF6u)
    {
      break;
    }

    v8 = v7 - 48;
    v9 = v6 * (v7 - 48);
    if (v8)
    {
      if (v4)
      {
        return 0;
      }

      if (!is_mul_ok(v8, v6))
      {
        return 0;
      }

      v10 = *(a1 + 2);
      v11 = *v10;
      if (__CFADD__(v9, *v10))
      {
        return 0;
      }
    }

    else
    {
      v10 = *(a1 + 2);
      v11 = *v10;
    }

    *v10 = v11 + v9;
    *(a1 + 4) = --v2;
    if (v2 < v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D0D443CC(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1;
  v38[19] = *MEMORY[0x1E69E9840];
  *(a1 + 32) = a3;
  sub_1D0C541CC(v36);
  v9 = v36[0];
  if ((v37[*(v36[0] - 24) + 16] & 5) != 0)
  {
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    v33.__r_.__value_.__s.__data_[0] = 2;
    cnprint::CNPrinter::Print(&__str, &v33, "ConfigLoader: could not open config file, using default values", v4, v5, v6, v7, v8, v31);
  }

  else
  {
    v10 = (v3 + 8);
    v32 = v3;
    if (*(v3 + 31) < 0)
    {
      *(v3 + 16) = 0;
      v11 = *(v3 + 8);
    }

    else
    {
      *(v3 + 31) = 0;
      v11 = (v3 + 8);
    }

    *v11 = 0;
    memset(&__str, 0, sizeof(__str));
    v12 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((v36 + *(v9 - 24)));
      v13 = std::locale::use_facet(&v33, v12);
      v14 = (v13->__vftable[2].~facet_0)(v13, 10);
      std::locale::~locale(&v33);
      v15 = sub_1D0D44808(v36, &__str, v14);
      v16 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      LOBYTE(v17) = *(&__str.__r_.__value_.__s + 23);
      if ((*(v15 + *(*v15 - 24) + 32) & 5) != 0)
      {
        break;
      }

      size = __str.__r_.__value_.__l.__size_;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __str.__r_.__value_.__l.__size_;
      }

      if (v20 >= 1)
      {
        v21 = p_str + v20;
        v22 = p_str;
        do
        {
          v23 = memchr(v22, 35, v20);
          if (!v23)
          {
            break;
          }

          if (*v23 == 35)
          {
            if (v23 != v21 && v23 - p_str != -1)
            {
              std::string::basic_string(&v33, &__str, 0, v23 - p_str, &v35);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = v33;
              v16 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
              size = v33.__r_.__value_.__l.__size_;
              v17 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
            }

            break;
          }

          v22 = (v23 + 1);
          v20 = v21 - v22;
        }

        while (v21 - v22 >= 1);
      }

      if ((v17 & 0x80u) != 0)
      {
        v16 = size;
      }

      sub_1D0BBB710(&v33, v16 + 1);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v33;
      }

      else
      {
        v24 = v33.__r_.__value_.__r.__words[0];
      }

      if (v16)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &__str;
        }

        else
        {
          v25 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v24, v25, v16);
      }

      *(&v24->__r_.__value_.__l.__data_ + v16) = 10;
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v33;
      }

      else
      {
        v26 = v33.__r_.__value_.__r.__words[0];
      }

      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v33.__r_.__value_.__l.__size_;
      }

      std::string::append(v10, v26, v27);
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      v9 = v36[0];
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v3 = v32;
  }

  v28 = (*(*v3 + 32))(v3);
  v36[0] = *MEMORY[0x1E69E54C8];
  *(v36 + *(v36[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1D387E8C0](v37);
  std::istream::~istream();
  MEMORY[0x1D387EBF0](v38);
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

void *sub_1D0D44808(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1D387E8E0](&v11, a1, 1);
  if (v11 != 1)
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

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1D0D4496C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1D0D4492CLL);
  }

  __cxa_rethrow();
}

double raven::BuildingSectionFacetID::Get_DistanceFromBuildingCentroid_Squared_m2(uint64_t *a1, double *a2, float64x2_t *a3)
{
  v3 = *a1;
  v4 = *a1 * 0.000001;
  v5 = v4 + -360.0;
  if (v4 <= 180.0)
  {
    v5 = *a1 * 0.000001;
  }

  v6 = *a3;
  v8 = *a2;
  v7 = a2[1];
  v9 = v5 - v7;
  if (vabdd_f64(v5, v7) > 180.0)
  {
    v10 = dbl_1D0E83970[v9 >= 0.0];
    v15 = *a3;
    v11 = fmod(v9 + v10, 360.0);
    v6 = v15;
    v9 = v11 - v10;
  }

  v12.f64[0] = HIDWORD(v3) * 0.000001 + -90.0 - v8;
  v12.f64[1] = v9;
  v13 = vmulq_f64(v6, v12);
  return vaddvq_f64(vmulq_f64(v13, v13));
}

BOOL raven::BuildingSectionFacetID::operator>(uint64_t a1, uint64_t a2)
{
  v2 = *a1 > *a2;
  if (*a1 == *a2)
  {
    return __PAIR64__(*(a1 + 10), *(a1 + 8)) > __PAIR64__(*(a2 + 10), *(a2 + 8));
  }

  return v2;
}

BOOL raven::BuildingSectionFacetID::operator<(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    v7 = *a1 > *a2;
    return !v7;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *(a1 + 10);
  v5 = *(a2 + 10);
  v6 = v2 == v3 && v4 == v5;
  if (!v6)
  {
    v7 = v2 > v3;
    v6 = v4 == v5;
    v8 = v4 > v5;
    if (!v6)
    {
      v7 = v8;
    }

    return !v7;
  }

  return 0;
}

uint64_t raven::PointToFacetVisibilityHierarchy::PointToFacetVisibilityHierarchy(uint64_t result, double *a2)
{
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *(result + 40) = 1065353216;
  v2 = a2[1] * 57.2957795;
  v3 = COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL;
  v4 = -1;
  if (v2 > -180.0 && v2 < 360.0 && !v3)
  {
    v5 = *a2 * 57.2957795;
    v4 = -1;
    if (COERCE_UNSIGNED_INT64(fabs(v5)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v6 = ioctl;
      if (fabs(v5) <= 90.0)
      {
        if (v2 < 0.0)
        {
          v2 = v2 + 360.0;
        }

        v7 = ioctl;
        LODWORD(v7) = vcvtad_u64_f64(v2 * 1000000.0);
        LODWORD(v6) = vcvtad_u64_f64((v5 + 90.0) * 1000000.0);
        v4 = v7 | (v6 << 32);
      }
    }
  }

  *result = v4;
  return result;
}

void sub_1D0D454C0(void *a1)
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

uint64_t raven::RavenFacetVisibilityData::GetCBFPointerForABuildingFacet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 != v3)
  {
    while (*(*v2 + 16) != a2)
    {
      v2 += 8;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t raven::RavenFacetVisibilityData::GetBuildingSectionFacetID(raven::RavenFacetVisibilityData *this, int a2, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *a3)
{
  if (*(a3 + 18) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v5 = *(*(a3 + 8) + 4 * a2);
  v6 = *(a3 + 1);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
    v6 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);
  }

  v7 = (0xFFFFFFFF >> *(v6 + 64)) & v5;
  if (*(a3 + 12) <= v7)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v8 = (0xFFFFFFFF >> *(v6 + 60)) & *(*(a3 + 5) + 4 * v7);
  if (*(a3 + 6) <= v8)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  return *(*(a3 + 2) + 8 * v8);
}

void sub_1D0D45714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenFacetVisibilityData::GetTileAndFacetIntervisibilityIndex(raven::RavenFacetVisibilityData *a1, int a2, uint64_t a3, CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *a4)
{
  if (a3)
  {
    v5 = *(a1 + 23);
    if (!v5)
    {
LABEL_33:
      v27 = 0;
      return v27 | v5;
    }

    BuildingSectionFacetID = raven::RavenFacetVisibilityData::GetBuildingSectionFacetID(a1, a2, a4);
    v10 = v9;
    v11 = *(a1 + 23);
    v12 = (*(*a3 + 48))(a3);
    if (*(v11 + 24) != 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
      {
        LOWORD(v50.f64[0]) = 12;
        LOBYTE(v49) = 1;
        cnprint::CNPrinter::Print(&v50, &v49, "#FacetVisInfo,Failed to convert facet vertex lat/long to ENU, bldg_facet_section {%llu,%hu,%hu}", v28, v29, v30, v31, v32, BuildingSectionFacetID);
      }

      goto LABEL_32;
    }

    v15 = *(v11 + 176);
    v16.f64[0] = v14 / *(v11 + 168);
    v17 = v13 / v15;
    if (v15 <= 0.0)
    {
      v17 = 0.0;
    }

    v16.f64[1] = v17;
    v18 = vaddq_f64(v16, *v11);
    v19 = vdupq_n_s64(0x404CA5DC1A63C1F8uLL);
    v50 = vmulq_f64(v18, v19);
    TileIndexInRayTracingTileDataBase = raven::RavenFacetVisibilityData::GetTileIndexInRayTracingTileDataBase(a1, v50.f64, v50.f64[0], v19.f64[0]);
    if ((TileIndexInRayTracingTileDataBase & 0x100000000) != 0)
    {
      v33 = TileIndexInRayTracingTileDataBase;
      v34 = *(*(a1 + 16) + 8 * TileIndexInRayTracingTileDataBase);
      v35 = *(v34 + 96);
      if (v35 < 1)
      {
        LODWORD(i) = 0;
      }

      else
      {
        for (i = 0; i < v35; ++i)
        {
          TileIndexInRayTracingTileDataBase = raven::RavenFacetVisibilityData::GetBuildingSectionFacetID(TileIndexInRayTracingTileDataBase, *(*(*(v34 + 88) + 8 * i) + 8), v34);
          v35 = *(v34 + 96);
          if (BuildingSectionFacetID == TileIndexInRayTracingTileDataBase && v10 == v37 && HIWORD(v10) == v38)
          {
            break;
          }
        }
      }

      if (i != v35)
      {
        v27 = i & 0x7FFFFF00 | (v33 << 32);
        v5 = i;
        return v27 | v5;
      }

      LogLevel = cnprint::CNPrinter::GetLogLevel(TileIndexInRayTracingTileDataBase);
      if (LogLevel)
      {
        goto LABEL_32;
      }

      v49 = 12;
      v48 = 0;
      v42 = *(a4 + 1);
      if (!v42)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(LogLevel);
        v42 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);
      }

      v43 = *(v42 + 8);
      v44 = *(*(*(a1 + 16) + 8 * v33) + 8);
      if (!v44)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(LogLevel);
        v44 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);
      }

      v47 = *(v44 + 8);
      v46 = BuildingSectionFacetID;
      v26 = "#FacetVisInfo,Missing facet info for bldg_facet_section {%llu,%hu,%hu},ref_tile %llu,loc_tile,%llu, facet_ap LL, %12.7f, %12.7f";
    }

    else
    {
      if (cnprint::CNPrinter::GetLogLevel(TileIndexInRayTracingTileDataBase))
      {
LABEL_32:
        v5 = 0;
        goto LABEL_33;
      }

      v49 = 12;
      v48 = 0;
      v46 = BuildingSectionFacetID;
      v26 = "#FacetVisInfo,Facet not found in any tile bldg_facet_section {%llu,%hu,%hu}, facet_ap LL, %12.7f, %12.7f";
    }

    cnprint::CNPrinter::Print(&v49, &v48, v26, v21, v22, v23, v24, v25, v46);
    goto LABEL_32;
  }

  v5 = 0;
  v27 = 0;
  return v27 | v5;
}

uint64_t raven::RavenFacetVisibilityData::ConstructPointToFacetVisibilityHierarchy(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  *(a1 + 112) = *a4;
  v7 = vdupq_n_s64(0x404CA5DC1A63C1F8uLL);
  v53 = vmulq_f64(*a2, v7);
  v55 = v53;
  TileIndexInRayTracingTileDataBase = raven::RavenFacetVisibilityData::GetTileIndexInRayTracingTileDataBase(a1, v55.f64, v53.f64[0], v7.f64[0]);
  if ((TileIndexInRayTracingTileDataBase & 0x100000000) == 0)
  {
    if (!cnprint::CNPrinter::GetLogLevel(TileIndexInRayTracingTileDataBase))
    {
      LOWORD(v56) = 12;
      LOBYTE(v54.f64[0]) = 0;
      v46 = LOBYTE(v53.f64[0]);
      v17 = "#FacetVisInfo,Unable to locate (home) tile that contains candidate point, %12.7f, %12.7f";
LABEL_39:
      cnprint::CNPrinter::Print(&v56, &v54, v17, v12, v13, v14, v15, v16, v46);
      return 0;
    }

    return 0;
  }

  v18 = *(*(a1 + 128) + 8 * TileIndexInRayTracingTileDataBase);
  v19 = *(v18 + 8);
  if (!v19)
  {
    CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(TileIndexInRayTracingTileDataBase);
    v19 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);
  }

  LODWORD(v10) = *(v19 + 8);
  LODWORD(v9) = *(v19 + 12);
  v52 = v9 * 0.000001 + -90.0;
  v20 = v10 * 0.000001;
  v21 = v20 + -360.0;
  if (v20 <= 180.0)
  {
    v21 = v20;
  }

  v22 = *(v18 + 160);
  v23 = *(v18 + 168);
  v24 = v53.f64[1] - v21;
  v51 = v21;
  if (vabdd_f64(v53.f64[1], v21) > 180.0)
  {
    v25 = dbl_1D0E83970[v24 >= 0.0];
    v24 = fmod(v24 + v25, 360.0) - v25;
  }

  if (v53.f64[0] < v52)
  {
    v26 = 136;
    if (v24 < 0.0)
    {
      v26 = 112;
    }

    v27 = 144;
    if (v24 < 0.0)
    {
      v27 = 120;
    }

    goto LABEL_18;
  }

  if (v24 < 0.0)
  {
    v27 = 192;
    v26 = 184;
LABEL_18:
    v22 = *(v18 + v26);
    v28 = v22 + 8 * *(v18 + v27);
    goto LABEL_20;
  }

  v28 = v22 + 8 * v23;
LABEL_20:
  if (v22 != v28)
  {
    v29 = *(a1 + 152);
    v30 = v29 * 0.5;
    v31 = v29 * v29;
    v32 = *(a1 + 120);
    v50 = *(a1 + 112);
    v48 = v29 * v29;
    v33 = v28;
    while (1)
    {
      v34 = *(*v22 + 8);
      *&v11 = v51 + v34 * 0.000001;
      if (fabs(*&v11) > 180.0)
      {
        v35 = dbl_1D0E83970[*&v11 >= 0.0];
        *&v11 = fmod(*&v11 + v35, 360.0) - v35;
      }

      v36 = *&v11 - v53.f64[1];
      if (vabdd_f64(*&v11, v53.f64[1]) > 180.0)
      {
        v37 = dbl_1D0E83970[v36 >= 0.0];
        v49 = v11;
        v38 = fmod(v36 + v37, 360.0);
        v11 = v49;
        v36 = v38 - v37;
      }

      v39.f64[0] = v52 + (v34 >> 16) * 0.000001;
      v40 = v50 * (v39.f64[0] - v53.f64[0]);
      v41 = v32 * v36;
      v42 = v40 * v40 + v41 * v41;
      v43 = fabs(v41);
      if (fabs(v40) <= v30 && v43 <= v30)
      {
        break;
      }

      if (v42 <= v31)
      {
        v33 = v22;
        v31 = v42;
      }

      v22 += 8;
      if (v22 == v28)
      {
        goto LABEL_34;
      }
    }

    v33 = v22;
    v31 = v42;
LABEL_34:
    if (v33 != v28 && v31 < v48)
    {
      *&v39.f64[1] = v11;
      v54 = vmulq_f64(v39, vdupq_n_s64(0x3F91DF46A2529D39uLL));
      operator new();
    }
  }

  if (!cnprint::CNPrinter::GetLogLevel(TileIndexInRayTracingTileDataBase))
  {
    LOWORD(v56) = 12;
    LOBYTE(v54.f64[0]) = 0;
    v47 = *(v19 + 8);
    v46 = LOBYTE(v53.f64[0]);
    v17 = "#FacetVisInfo,PointID for lat_lon{%.6lf,%.6lf} not found in the tile,Hashid,%llu";
    goto LABEL_39;
  }

  return 0;
}

void sub_1D0D46134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1D0D46340(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenFacetVisibilityData::GetTileIndexInRayTracingTileDataBase(CoreNavigation::CLP::LogEntry::RayTracingTileData *a1, double *a2, double a3, double a4)
{
  v4 = *(a1 + 16);
  if (*(a1 + 17) == v4)
  {
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0.5;
    HIDWORD(v10) = 1081507840;
    while (1)
    {
      v11 = *(*(v4 + 8 * v7) + 8);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(a1);
        v11 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);
      }

      LODWORD(a4) = *(v11 + 8);
      LODWORD(v10) = *(v11 + 12);
      v12 = *&v10 * 0.000001 + -90.0;
      v13 = *&a4 * 0.000001;
      v14 = v13 <= 180.0 ? v13 : v13 + -360.0;
      a4 = *(v11 + 20) * v9;
      v15 = v12 - a4;
      v10 = a4 + v12;
      if (*a2 >= v15 && *a2 <= v10)
      {
        v17 = *(v11 + 24) * v9;
        v18 = v14 + v17;
        if (fabs(v14 + v17) > 180.0)
        {
          v19 = dbl_1D0E83970[v18 >= 0.0];
          v18 = fmod(v18 + v19, 360.0) - v19;
          v9 = 0.5;
        }

        v10 = v14 - v17;
        if (vabdd_f64(v14, v17) > 180.0)
        {
          v20 = dbl_1D0E83970[v10 >= 0.0];
          v10 = fmod(v10 + v20, 360.0) - v20;
        }

        a4 = a2[1];
        if (a4 >= v10 && a4 <= v18)
        {
          break;
        }
      }

      v4 = *(a1 + 16);
      v7 = ++v8;
      if (v8 >= ((*(a1 + 17) - v4) >> 3))
      {
        v22 = 0;
        v23 = 0;
        return v23 | v22;
      }
    }

    v23 = v8;
    v22 = 0x100000000;
  }

  return v23 | v22;
}

uint64_t *sub_1D0D46340(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1D0BCB594(v2 + 8);
    MEMORY[0x1D387ECA0](v2, 0x10A0C4002E6F8ADLL);
  }

  return a1;
}

raven::RavenFacetVisibilityData *raven::RavenFacetVisibilityData::RavenFacetVisibilityData(raven::RavenFacetVisibilityData *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *(this + 24) = 0u;
  v2 = (this + 24);
  *(this + 10) = 0;
  *this = this + 8;
  *(this + 9) = this + 80;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 11) = 0;
  *(this + 12) = 0x40E3880000000000;
  *(this + 104) = 3;
  *(this + 7) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0x4010000000000000;
  *(this + 22) = 0;
  *(this + 21) = 0;
  *(this + 20) = this + 168;
  *(this + 23) = 0;
  sub_1D0D464D0(this + 16, 0x19uLL);
  sub_1D0D4656C(v2, 0x2BCuLL);
  return this;
}

void sub_1D0D46474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_1D0BCB540(v12, *(v10 + 168));
  sub_1D0D46C24(&a10);
  sub_1D0BCB540(v11, *(v10 + 80));
  a10 = (v10 + 48);
  sub_1D0D46C78(&a10);
  sub_1D0D46CFC(&a10);
  sub_1D0BCB540(v10, *(v10 + 8));
  _Unwind_Resume(a1);
}

void *sub_1D0D464D0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1D0D46B30(result, a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

void *sub_1D0D4656C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1D0D46998(a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

void raven::RavenFacetVisibilityData::Reset(int64x2_t *this)
{
  sub_1D0D46690(this[8].i64);
  sub_1D0BCB540(&this[4].i64[1], this[5].i64[0]);
  this[4].i64[1] = this[5].i64;
  this[5].i64[1] = 0;
  this[5].i64[0] = 0;
  this[7] = vdupq_n_s64(0x7FF8000000000000uLL);
  sub_1D0BCB540(this[10].i64, this[10].i64[1]);
  this[10].i64[0] = &this[10].i64[1];
  this[11].i64[0] = 0;
  this[10].i64[1] = 0;

  raven::RavenFacetVisibilityData::ResetFacetVisibilityContainers(this);
}

void *sub_1D0D46690(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void raven::RavenFacetVisibilityData::ResetFacetVisibilityContainers(raven::RavenFacetVisibilityData *this)
{
  sub_1D0D46778(this + 3);
  sub_1D0D467E4(this + 24);
  v3 = *(this + 6);
    ;
  }

  *(this + 7) = v3;
  sub_1D0D468BC(this + 6);
  sub_1D0BCB540(this, *(this + 1));
  *this = this + 8;
  *(this + 2) = 0;
  *(this + 1) = 0;
}

void *sub_1D0D46778(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_1D0D467E4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *result;
  v3 = *(result + 16) - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = v4 >> 3;
    v16 = result;
    if (v1 != v2)
    {
      sub_1D0D46998(v4 >> 3);
    }

    v7 = 8 * v6;
    v12 = 0;
    v13 = 8 * v6;
    v14 = 8 * v6;
    v15 = 0;
    if (v3 >> 3)
    {
      v8 = *(result + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v10 = *v5;
      *v5 = v9;
      v5[1] = v7;
      v11 = v5[2];
      v5[2] = 0;
      v14 = v10;
      v15 = v11;
      v12 = v10;
      v13 = v10;
    }

    return sub_1D0D469E0(&v12);
  }

  return result;
}

void sub_1D0D468AC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1D0D46898);
}

uint64_t *sub_1D0D468BC(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = v4 >> 3;
    v16 = result;
    if (v1 != v2)
    {
      sub_1D0C54E78(result, v4 >> 3);
    }

    v7 = 8 * v6;
    v12 = 0;
    v13 = 8 * v6;
    v14 = 8 * v6;
    v15 = 0;
    if (v3 >> 3)
    {
      v8 = result[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v10 = *v5;
      *v5 = v9;
      v5[1] = v7;
      v11 = v5[2];
      v5[2] = 0;
      v14 = v10;
      v15 = v11;
      v12 = v10;
      v13 = v10;
    }

    return sub_1D0D46AE0(&v12);
  }

  return result;
}

void sub_1D0D46988(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1D0D46974);
}

void sub_1D0D46998(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0D469E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_1D0D46A58(uint64_t a1, double a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0C42F28();
  }

  v3 = -(*(a1 + 8) - a2 * 0.0174532925);
  if (fabs(v3) > 3.14159265)
  {
    v4 = dbl_1D0E83980[v3 >= 0.0];
    v3 = fmod(v3 + v4, 6.28318531) - v4;
  }

  return v3 * *(a1 + 176);
}

uint64_t sub_1D0D46AE0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_1D0D46340((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0D46B30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0D46B78(uint64_t a1)
{
  sub_1D0D46BB0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1D0D46BB0(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1D0D46C24(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0D46690(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D0D46C78(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1D0D46340(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1D0D46CFC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0D46778(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_1D0D46D50(void *a1)
{
  *a1 = &unk_1F4CDFAB0;
  a1[1] = &unk_1F4CDFB48;
  sub_1D0BCB594((a1 + 3));
  return a1;
}

void sub_1D0D46DB8(void *a1)
{
  *a1 = &unk_1F4CDFAB0;
  a1[1] = &unk_1F4CDFB48;
  sub_1D0BCB594((a1 + 3));

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0D47060(uint64_t a1, double *a2)
{
  v4 = *a2 - (*(*a1 + 48))(a1);
  v6 = a2[1] - v5;
  v8 = a2[2] - v7;
  v9 = (*(*a1 + 72))(a1);
  v11 = v10;
  v13 = v12;
  v14 = (*(*a1 + 80))(a1);
  v17 = v11 * v15 + v9 * v14 + v13 * v16;
  return 1.0 / (1.0 - v17 * v17) * (v6 * (v11 - v15 * v17) + v4 * (v9 - v14 * v17) + v8 * (v13 - v16 * v17));
}

uint64_t sub_1D0D47264(void *a1)
{
  *(a1 - 1) = &unk_1F4CDFAB0;
  *a1 = &unk_1F4CDFB48;
  return sub_1D0BCB594((a1 + 2));
}

void sub_1D0D472A4(void *a1)
{
  *(a1 - 1) = &unk_1F4CDFAB0;
  *a1 = &unk_1F4CDFB48;
  sub_1D0BCB594((a1 + 2));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D47350(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CDFC08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t *sub_1D0D4741C(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = v2;
  v8 = *(a2 + 5);
  do
  {
    v9 = v3[4];
    if (v9 == v5)
    {
      v10 = *(v3 + 20);
      v11 = *(v3 + 21);
      v12 = v10 == v6 && v11 == v8;
      if (v12)
      {
        v7 = v3;
        goto LABEL_19;
      }

      v13 = v10 > v6;
      v12 = v11 == v8;
      v14 = v11 > v8;
      if (v12)
      {
        v14 = v13;
      }
    }

    else
    {
      v14 = v9 > v5;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = 8;
    }

    if (!v15)
    {
      v7 = v3;
    }

    v3 = (v3 + v16);
LABEL_19:
    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v17 = v7[4];
  v18 = v5 > v17;
  if (v5 != v17)
  {
    goto LABEL_26;
  }

  v19 = *(v7 + 20);
  v20 = *(v7 + 21);
  if (v6 != v19 || v8 != v20)
  {
    v18 = v8 > v20;
    if (v8 == v20)
    {
      v18 = v6 > v19;
    }

LABEL_26:
    if (!v18)
    {
      return v2;
    }
  }

  return v7;
}

void sub_1D0D474DC(uint64_t a1, void *a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v29 = *a1;
        *a1 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (v6 <= v5)
    {
      v17 = v5 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & v5;
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v17);
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v22 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        v23 = v19[1];
        if (v22 >= v6)
        {
          v23 = v22 % v6;
        }
      }

      else
      {
        v23 = v22 & (v6 - 1);
      }

      if (v23 != v17)
      {
        break;
      }

      v24 = v22 == v5 && v19[2] == a2[2];
      v25 = v24 != (v20 & 1);
      v26 = v20 & v25;
      v20 |= v25;
    }

    while (v26 != 1);
  }

  else
  {
    v21 = 0;
  }

  v27 = a2[1];
  if (v16.u32[0] > 1uLL)
  {
    if (v27 >= v6)
    {
      v27 %= v6;
    }
  }

  else
  {
    v27 &= v6 - 1;
  }

  if (!v21)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v27] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_57;
    }

    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

LABEL_56:
    *(*a1 + 8 * v28) = a2;
    goto LABEL_57;
  }

  *a2 = *v21;
  *v21 = a2;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  ++*(a1 + 24);
}

void *sub_1D0D47944(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

double raven::RavenUserSpeedActiveObject::RavenUserSpeedActiveObject(uint64_t a1)
{
  *(a1 + 56) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *a1 = &unk_1F4CEE648;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1320) = 0;
  return result;
}

uint64_t raven::RavenUserSpeedActiveObject::Configure(cnframework::ActiveObjectBase *this, uint64_t *a2)
{
  if (*(this + 224) == 1 && cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v28 = 12;
    v27 = 1;
    (*(*this + 16))(__p, this);
    if (v26 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Warning: %s configured more than once.", v4, v5, v6, v7, v8, v9);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 224) = 0;
  v10 = *a2;
  if (*a2 && (*(v10 + 33) & 1) != 0)
  {
    *(this + 29) = v10;
    cnframework::ActiveObjectBase::SetEventQueueDelay(this, 0.0);
    *(this + 224) = 1;
    v11 = (*(*this + 40))(this);
    if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
    {
      v28 = 12;
      v27 = 1;
      (*(*this + 16))(__p, this);
      if (v26 >= 0)
      {
        v17 = __p;
      }

      else
      {
        LOBYTE(v17) = __p[0];
      }

      cnprint::CNPrinter::Print(&v28, &v27, "%s configured successfully.", v12, v13, v14, v15, v16, v17);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  else
  {
    v28 = 12;
    v27 = 4;
    (*(*this + 16))(__p, this);
    if (v26 >= 0)
    {
      v24 = __p;
    }

    else
    {
      LOBYTE(v24) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Error: %s could not be configured.", v19, v20, v21, v22, v23, v24);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_1D0D48038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenUserSpeedActiveObject::HandleEvent(uint64_t result, uint64_t a2)
{
  if (*(result + 432) == 1)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 24);
    v4 = *(a2 + 56);
    *(result + 280) = *(a2 + 40);
    *(result + 296) = v4;
    *(result + 264) = v3;
    *(result + 248) = v2;
    v5 = *(a2 + 72);
    v6 = *(a2 + 88);
    v7 = *(a2 + 120);
    *(result + 344) = *(a2 + 104);
    *(result + 360) = v7;
    *(result + 312) = v5;
    *(result + 328) = v6;
    v8 = *(a2 + 136);
    v9 = *(a2 + 152);
    v10 = *(a2 + 168);
    *(result + 424) = *(a2 + 184);
    *(result + 392) = v9;
    *(result + 408) = v10;
    *(result + 376) = v8;
  }

  else
  {
    *(result + 240) = &unk_1F4CEF688;
    v11 = *(a2 + 8);
    v12 = *(a2 + 24);
    v13 = *(a2 + 56);
    *(result + 280) = *(a2 + 40);
    *(result + 296) = v13;
    *(result + 264) = v12;
    *(result + 248) = v11;
    v14 = *(a2 + 72);
    v15 = *(a2 + 88);
    v16 = *(a2 + 120);
    *(result + 344) = *(a2 + 104);
    *(result + 360) = v16;
    *(result + 312) = v14;
    *(result + 328) = v15;
    v17 = *(a2 + 136);
    v18 = *(a2 + 152);
    v19 = *(a2 + 168);
    *(result + 424) = *(a2 + 184);
    *(result + 392) = v18;
    *(result + 408) = v19;
    *(result + 376) = v17;
    *(result + 432) = 1;
  }

  if ((*(a2 + 104) & 0xFE) != 2 && *(result + 1320) == 1)
  {
    *(result + 1320) = 0;
  }

  return result;
}

{
  if (*(result + 1024) == 1)
  {
    *(result + 888) = *(a2 + 8);
    v2 = *(a2 + 24);
    v3 = *(a2 + 40);
    v4 = *(a2 + 72);
    *(result + 936) = *(a2 + 56);
    *(result + 952) = v4;
    *(result + 904) = v2;
    *(result + 920) = v3;
    v5 = *(a2 + 88);
    v6 = *(a2 + 104);
    v7 = *(a2 + 120);
    *(result + 1016) = *(a2 + 136);
    *(result + 984) = v6;
    *(result + 1000) = v7;
    *(result + 968) = v5;
  }

  else
  {
    *(result + 880) = &unk_1F4CEF778;
    *(result + 888) = *(a2 + 8);
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    v10 = *(a2 + 72);
    *(result + 936) = *(a2 + 56);
    *(result + 952) = v10;
    *(result + 904) = v8;
    *(result + 920) = v9;
    v11 = *(a2 + 88);
    v12 = *(a2 + 104);
    v13 = *(a2 + 120);
    *(result + 1016) = *(a2 + 136);
    *(result + 984) = v12;
    *(result + 1000) = v13;
    *(result + 968) = v11;
    *(result + 1024) = 1;
  }

  if (*(a2 + 104) != 3 && *(result + 1320) == 1)
  {
    *(result + 1320) = 0;
  }

  return result;
}

void raven::RavenUserSpeedActiveObject::HandleEvent(raven::RavenUserSpeedActiveObject *this, const raven::FitnessSessionEvent *a2)
{
  if (*(this + 872) == 1)
  {
    v4 = memcpy(this + 448, a2 + 8, 0x1A1uLL);
  }

  else
  {
    *(this + 55) = &unk_1F4CEF508;
    v4 = memcpy(this + 448, a2 + 8, 0x1A1uLL);
    *(this + 872) = 1;
  }

  v5 = *(a2 + 104);
  v6 = v5 > 9;
  v7 = (1 << v5) & 0x370;
  if (!v6 && v7 != 0)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v4))
    {
      v19 = 12;
      v18 = 0;
      v9 = (*(*a2 + 16))(a2);
      v17 = *(this + 544);
      v16 = v10 + v9;
      cnprint::CNPrinter::Print(&v19, &v18, "t,%.3lf,UserSpeedAO: Received fitness session does not expect steps,disabling user speed events,type,%d", v11, v12, v13, v14, v15, SLOBYTE(v16));
    }

    if (*(this + 1320) == 1)
    {
      *(this + 1320) = 0;
    }
  }
}

void raven::RavenUserSpeedActiveObject::HandleEvent(raven::RavenUserSpeedActiveObject *this, const raven::StepCountEvent *a2)
{
  v127 = *MEMORY[0x1E69E9840];
  if (*(this + 1024) != 1 || *(this + 984) != 3)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v124[0]) = 12;
      v123[0] = 0;
      v12 = (*(*a2 + 16))(a2);
      v108 = v13 + v12;
      cnprint::CNPrinter::Print(v124, v123, "t,%.3lf,UserSpeedAO: Not Moving", v14, v15, v16, v17, v18, SLOBYTE(v108));
    }

    goto LABEL_45;
  }

  if ((*(this + 432) & 1) == 0)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v124[0]) = 12;
      v123[0] = 0;
      v19 = (*(*a2 + 16))(a2);
      v109 = v20 + v19;
      cnprint::CNPrinter::Print(v124, v123, "t,%.3lf,UserSpeedAO: Activity state unavailable,Ignoring user speed event", v21, v22, v23, v24, v25, SLOBYTE(v109));
    }

    goto LABEL_45;
  }

  if ((*(this + 344) & 0xFE) != 2)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v124[0]) = 12;
      v123[0] = 0;
      v26 = (*(*a2 + 16))(a2);
      v115 = *(this + 344);
      v116 = *(a2 + 39);
      v110 = v27 + v26;
      cnprint::CNPrinter::Print(v124, v123, "t,%.3lf,UserSpeedAO: Activity,%u,Not Pedestrian,Ignoring user speed event,Steps,%u", v28, v29, v30, v31, v32, SLOBYTE(v110));
    }

    goto LABEL_45;
  }

  if (*(this + 872) == 1)
  {
    v4 = *(this + 544);
    if (v4 <= 9 && ((1 << v4) & 0x370) != 0)
    {
      if (!cnprint::CNPrinter::GetLogLevel(this))
      {
        LOWORD(v124[0]) = 12;
        v123[0] = 0;
        v5 = (*(*a2 + 16))(a2);
        v114 = *(this + 544);
        v107 = v6 + v5;
        cnprint::CNPrinter::Print(v124, v123, "t,%.3lf,UserSpeedAO: Received step counts when fitness session does not expect steps; ignoring user speed event,type,%d", v7, v8, v9, v10, v11, SLOBYTE(v107));
      }

      goto LABEL_45;
    }
  }

  if ((*(a2 + 14) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = *(a2 + 14);
  }

  if (v33 > 11.4822547)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v124[0]) = 12;
      v123[0] = 0;
      v34 = (*(*a2 + 16))(a2);
      v111 = v35 + v34;
      cnprint::CNPrinter::Print(v124, v123, "t,%10.3lf,UserSpeedAO: Rejected %lf > %lf max", v36, v37, v38, v39, v40, SLOBYTE(v111));
    }

    goto LABEL_45;
  }

  if (v33 < 0.1)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v124[0]) = 12;
      v123[0] = 0;
      v41 = (*(*a2 + 16))(a2);
      v112 = v42 + v41;
      cnprint::CNPrinter::Print(v124, v123, "t,%.3lf,UserSpeedAO: Rejected %lf < %lf min", v43, v44, v45, v46, v47, SLOBYTE(v112));
    }

    goto LABEL_45;
  }

  v48 = *(a2 + 15);
  v49 = *(a2 + 16);
  if (v33 < v48 || (*(a2 + 15) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v33 > v49)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v124[0]) = 12;
      v123[0] = 0;
      v85 = (*(*a2 + 16))(a2);
      v113 = v86 + v85;
      cnprint::CNPrinter::Print(v124, v123, "t,%.3lf,UserSpeedAO: Rejected %lf < %lf OR > %lf", v87, v88, v89, v90, v91, SLOBYTE(v113));
    }

    goto LABEL_45;
  }

  v50 = fmax(v33 - v48, 0.1);
  v51 = fmax(v49 - v33, 0.1);
  if (*(this + 1192) != 1)
  {
    *(this + 129) = &unk_1F4CEEBE8;
    v92 = *(a2 + 8);
    *(this + 66) = *(a2 + 24);
    *(this + 65) = v92;
    v93 = *(a2 + 40);
    v94 = *(a2 + 56);
    v95 = *(a2 + 72);
    *(this + 70) = *(a2 + 88);
    *(this + 69) = v95;
    *(this + 68) = v94;
    *(this + 67) = v93;
    v96 = *(a2 + 104);
    v97 = *(a2 + 120);
    v98 = *(a2 + 136);
    *(this + 148) = *(a2 + 19);
    *(this + 73) = v98;
    *(this + 72) = v97;
    *(this + 71) = v96;
    *(this + 1192) = 1;
    goto LABEL_45;
  }

  v52 = *(*(this + 29) + 3296);
  v124[0] = &unk_1F4CEEBE8;
  *&v124[13] = *(this + 71);
  *&v124[15] = *(this + 72);
  v125 = *(this + 73);
  v126 = *(this + 148);
  v53 = *(this + 68);
  *&v124[5] = *(this + 67);
  *&v124[7] = v53;
  *&v124[9] = *(this + 69);
  *&v124[11] = *(this + 70);
  v54 = *(this + 66);
  *&v124[1] = *(this + 65);
  *&v124[3] = v54;
  v55 = CNTimeSpan::operator-(a2 + 1, &v124[1], v54, *&v124[1]);
  *v123 = v55;
  *&v123[8] = v56;
  if (v55 < 0 || (*v57.i64 = v56, v56 < 0.0))
  {
    v55 = CNTimeSpan::operator-(v123, v57, v58);
    v57.i64[0] = v59;
  }

  v60 = (this + 1040);
  v61 = *v57.i64 + v55;
  if (v61 <= 1.0 || v61 >= 10.0)
  {
    v99 = *(a2 + 24);
    *v60 = *(a2 + 8);
    *(this + 66) = v99;
    v100 = *(a2 + 40);
    v101 = *(a2 + 56);
    v102 = *(a2 + 88);
    *(this + 69) = *(a2 + 72);
    *(this + 70) = v102;
    *(this + 67) = v100;
    *(this + 68) = v101;
    v103 = *(a2 + 104);
    v104 = *(a2 + 120);
    v105 = *(a2 + 136);
    *(this + 148) = *(a2 + 19);
    *(this + 72) = v104;
    *(this + 73) = v105;
    *(this + 71) = v103;
LABEL_45:
    if (*(this + 1320) == 1)
    {
      *(this + 1320) = 0;
    }

    goto LABEL_47;
  }

  v62 = (*(a2 + 18) - *(&v125 + 1)) / v61;
  v63 = *(a2 + 24);
  *v60 = *(a2 + 8);
  *(this + 66) = v63;
  v64 = *(a2 + 40);
  v65 = *(a2 + 56);
  v66 = *(a2 + 88);
  *(this + 69) = *(a2 + 72);
  *(this + 70) = v66;
  *(this + 67) = v64;
  *(this + 68) = v65;
  v67 = *(a2 + 104);
  v68 = *(a2 + 120);
  v69 = *(a2 + 136);
  *(this + 148) = *(a2 + 19);
  *(this + 72) = v68;
  *(this + 73) = v69;
  *(this + 71) = v67;
  if (v62 <= 0.0)
  {
    goto LABEL_45;
  }

  LogLevel = cnprint::CNPrinter::GetLogLevel(v55);
  *v72.i64 = v51 * (v51 * (v50 / (v50 + v51)));
  v73 = sqrt(*v72.i64 + v50 * (v51 / (v50 + v51)) * v50) * v52;
  v74 = vabdd_f64(v62, v33) / v73;
  if (!LogLevel)
  {
    LOWORD(v124[0]) = 12;
    v123[0] = 0;
    v75 = (*(*a2 + 16))(a2);
    v77 = v76 + v75;
    v120 = *(this + 344);
    v119 = *(a2 + 18);
    v117 = *(a2 + 39);
    v118 = *(a2 + 38);
    cnprint::CNPrinter::Print(v124, v123, "t,%.3lf,UserSpeedAO: raw_spd,%.2lf,pedSpeedMps,%.2lf,pedSpeedSigmaMps,%.2lf,spd_diff,%.2lf,spd_diff_ratio,%.2lf,foot_step_count_,%u,step_count_event_id_,%d,raw_distance_from_accel,%.2lf,last_activity,%u", v78, v79, v80, v81, v82, SLOBYTE(v77));
  }

  v71.i64[0] = 2.5;
  if (v74 < 2.5)
  {
    memset(v124 + 7, 0, 17);
    memset(&v123[7], 0, 17);
    *&v122[7] = 0;
    *&v122[15] = 0;
    v121[0] = 2;
    v121[1] = 0x3FE1EB851EB851ECLL;
    v83 = CNTimeSpan::operator+(a2 + 1, v121, v71, v72);
    if (*(this + 1320) == 1)
    {
      *(this + 151) = v83;
      *(this + 152) = v84;
      *(this + 1224) = 0;
      *(this + 1225) = *v124;
      *(this + 1241) = v124[2];
      *(this + 1249) = *v123;
      *(this + 1265) = *&v123[16];
      *(this + 161) = *&v122[15];
      *(this + 1273) = *v122;
      *(this + 162) = 0x7FF8000000000000;
      *(this + 163) = v33;
      *(this + 164) = v73;
    }

    else
    {
      *(this + 150) = &unk_1F4CEF718;
      *(this + 151) = v83;
      *(this + 152) = v84;
      *(this + 1224) = 0;
      *(this + 1225) = *v124;
      *(this + 1241) = v124[2];
      *(this + 1249) = *v123;
      *(this + 1265) = *&v123[16];
      *(this + 161) = *&v122[15];
      *(this + 1273) = *v122;
      *(this + 162) = 0x7FF8000000000000;
      *(this + 163) = v33;
      *(this + 164) = v73;
      *(this + 1320) = 1;
    }
  }

LABEL_47:
  v106 = *MEMORY[0x1E69E9840];
}

void sub_1D0D48C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenUserSpeedActiveObject::Reset(cnframework::ActiveObjectBase *this)
{
  if (*(this + 432) == 1)
  {
    *(this + 432) = 0;
  }

  if (*(this + 1192) == 1)
  {
    *(this + 1192) = 0;
  }

  if (*(this + 1024) == 1)
  {
    *(this + 1024) = 0;
  }

  if (*(this + 1320) == 1)
  {
    *(this + 1320) = 0;
  }

  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0D48D38(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0D48D94((a1 + 3));
}

void sub_1D0D48D94(uint64_t a1)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0D48F28();
}

void sub_1D0D48ED0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSolutionActiveObject::Configure(void ***a1, uint64_t *a2)
{
  if (*(a1 + 224) == 1)
  {
    LOWORD(v38[0]) = 12;
    LOBYTE(v39) = 2;
    ((*a1)[2])(__p, a1);
    if (v41 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(v38, &v39, "Warning: %s configured more than once.", v4, v5, v6, v7, v8, v9);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 224) = 0;
  if (a1[1406])
  {
    sub_1D0D4950C(a1 + 1406, 0);
  }

  v10 = *a2;
  if (!*a2 || (*(v10 + 33) & 1) == 0)
  {
    LOWORD(v38[0]) = 12;
    LOBYTE(v39) = 4;
    ((*a1)[2])(__p, a1);
    if (v41 >= 0)
    {
      v17 = __p;
    }

    else
    {
      LOBYTE(v17) = __p[0];
    }

    cnprint::CNPrinter::Print(v38, &v39, "Error: %s could not be configured. Failed to create or initialize RavenParameters.", v12, v13, v14, v15, v16, v17);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  a1[42] = v10;
  if (*(v10 + 3708) == 1)
  {
    if (*(v10 + 3735) < 0)
    {
      sub_1D0BC39B4(__p, *(v10 + 3712), *(v10 + 3720));
    }

    else
    {
      v11 = v10 + 3712;
      *__p = *v11;
      v41 = *(v11 + 16);
    }

    v38[0] = 0;
    operator new();
  }

  std::mutex::lock((a1 + 1415));
  if (raven::RavenPredictor::Configure((a1 + 376), a2 + 1, v18, v19, v20, v21, v22, v23))
  {
    LOWORD(v38[0]) = 12;
    LOBYTE(v39) = 4;
    ((*a1)[2])(__p, a1);
    if (v41 >= 0)
    {
      v29 = __p;
    }

    else
    {
      LOBYTE(v29) = __p[0];
    }

    cnprint::CNPrinter::Print(v38, &v39, "Error: %s could not be configured. Failed to configure RavenPredictor.", v24, v25, v26, v27, v28, v29);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    std::mutex::unlock((a1 + 1415));
    return 0xFFFFFFFFLL;
  }

  std::mutex::unlock((a1 + 1415));
  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  *(a1 + 224) = 1;
  if (cnprint::CNPrinter::GetLogLevel(v31) <= 1)
  {
    LOWORD(v38[0]) = 12;
    LOBYTE(v39) = 1;
    ((*a1)[2])(__p, a1);
    if (v41 >= 0)
    {
      v37 = __p;
    }

    else
    {
      LOBYTE(v37) = __p[0];
    }

    cnprint::CNPrinter::Print(v38, &v39, "%s configured successfully.", v32, v33, v34, v35, v36, v37);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0D49474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1D0D4950C(void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    cnlogging::ProtobufOutputStream::~ProtobufOutputStream(result);

    JUMPOUT(0x1D387ECA0);
  }

  return result;
}

uint64_t raven::RavenSolutionActiveObject::GetRavenSolution(raven::RavenSolutionActiveObject *this, raven::RavenSolutionEvent *a2)
{
  std::mutex::lock((this + 11320));
  memcpy(a2 + 8, this + 360, 0xA51uLL);
  std::mutex::unlock((this + 11320));
  return 0;
}

uint64_t raven::RavenSolutionActiveObject::HandleEvent(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 104))
  {
    return (*(*result + 40))();
  }

  return result;
}

void raven::RavenSolutionActiveObject::Reset(raven::RavenSolutionActiveObject *this)
{
  if (*(this + 224) == 1)
  {
    std::mutex::lock((this + 11320));
    *(this + 344) = 0;
    sub_1D0BAE168(this + 352);
    *(this + 3009) = 0;
    std::mutex::unlock((this + 11320));
  }

  *&v2 = 0;
  *(&v2 + 1) = 0x7FF8000000000000;
  *(this + 15) = 0uLL;
  *(this + 16) = 0uLL;
  *(this + 19) = 0uLL;
  *(this + 20) = v2;
  *(this + 17) = 0uLL;
  *(this + 18) = 0uLL;
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0D4973C(uint64_t a1)
{
  *a1 = &unk_1F4CDFCF8;
  std::mutex::~mutex((a1 + 11320));
  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::~RavenOutput((a1 + 11256));
  sub_1D0D4950C((a1 + 11248), 0);
  *(a1 + 5760) = &unk_1F4CDFD88;
  *(a1 + 8328) = &unk_1F4CD5B78;
  *(a1 + 5752) = &unk_1F4CD5B78;
  *(a1 + 3024) = &unk_1F4CDFD88;
  *(a1 + 5592) = &unk_1F4CD5B78;

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

void sub_1D0D49864(uint64_t a1)
{
  *a1 = &unk_1F4CDFCF8;
  std::mutex::~mutex((a1 + 11320));
  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::~RavenOutput((a1 + 11256));
  sub_1D0D4950C((a1 + 11248), 0);
  *(a1 + 5760) = &unk_1F4CDFD88;
  *(a1 + 8328) = &unk_1F4CD5B78;
  *(a1 + 5752) = &unk_1F4CD5B78;
  *(a1 + 3024) = &unk_1F4CDFD88;
  *(a1 + 5592) = &unk_1F4CD5B78;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D499A0(void *result)
{
  *result = &unk_1F4CDFD88;
  result[321] = &unk_1F4CD5B78;
  return result;
}

void sub_1D0D499E0(void *a1)
{
  *a1 = &unk_1F4CDFD88;
  a1[321] = &unk_1F4CD5B78;
  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::GnssSvDatabase::GnssSvDatabase(uint64_t this, const raven::RavenParameters *a2)
{
  *(this + 8) = 0;
  *(this + 32) = 0;
  *this = this + 8;
  *(this + 16) = 0;
  *(this + 24) = this + 32;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 40) = 0;
  *(this + 48) = this + 56;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 168) = 0;
  *(this + 176) = 0;
  *(this + 192) = 0;
  *(this + 200) = 0;
  *(this + 224) = 0;
  *(this + 232) = 0;
  *(this + 256) = 0;
  *(this + 264) = 0;
  *(this + 288) = 0;
  if (a2)
  {
    *(this + 72) = *(a2 + 588);
    *(this + 73) = *(a2 + 597);
  }

  return this;
}

uint64_t raven::GnssSvDatabase::Configure(uint64_t this, const raven::RavenParameters *a2)
{
  if (a2)
  {
    *(this + 72) = *(a2 + 588);
    *(this + 73) = *(a2 + 597);
  }

  return this;
}

uint64_t raven::GnssSvDatabase::MergeMultiFreqInfoSplitBetweenTwoIndications@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v6 = raven::GnssSvDatabase::AggregateHealthL1(a1);
  v7 = raven::GnssSvDatabase::AggregateHealthL5(a1);
  v8 = raven::GnssSvDatabase::AggregateHealthL1(a2);
  result = raven::GnssSvDatabase::AggregateHealthL5(a2);
  if (v6 && !v7)
  {
    if (v8 || !result)
    {
      goto LABEL_11;
    }

LABEL_10:
    operator new();
  }

  if (!v6 && v7 && v8 && !result)
  {
    goto LABEL_10;
  }

LABEL_11:
  *a3 = 0;
  return result;
}

void sub_1D0D49E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_1D0C36F80((v23 - 88), 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D49EE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D0BC2944(&v26);
  v4 = 0;
  v5 = *a1;
  __p[1] = 0;
  v25 = 0;
  __p[0] = 0;
  if (v5 <= 7)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v4 = 3;
        HIBYTE(v25) = 3;
        LOWORD(__p[0]) = 19527;
        v7 = 79;
        goto LABEL_21;
      }

      if (v5 != 4)
      {
        goto LABEL_22;
      }

      v4 = 3;
      HIBYTE(v25) = 3;
      v6 = 17474;
    }

    else
    {
      if (!v5)
      {
        v4 = 3;
        HIBYTE(v25) = 3;
        LOWORD(__p[0]) = 20053;
        v7 = 75;
        goto LABEL_21;
      }

      if (v5 != 1)
      {
        goto LABEL_22;
      }

      v4 = 3;
      HIBYTE(v25) = 3;
      v6 = 20551;
    }

    goto LABEL_13;
  }

  if (v5 <= 31)
  {
    if (v5 == 8)
    {
      v4 = 3;
      HIBYTE(v25) = 3;
      LOWORD(__p[0]) = 16711;
      v7 = 76;
      goto LABEL_21;
    }

    if (v5 != 16)
    {
      goto LABEL_22;
    }

    v4 = 3;
    HIBYTE(v25) = 3;
    v6 = 23121;
LABEL_13:
    LOWORD(__p[0]) = v6;
    v7 = 83;
    goto LABEL_21;
  }

  if (v5 == 32)
  {
    v4 = 3;
    HIBYTE(v25) = 3;
    LOWORD(__p[0]) = 21825;
    v7 = 71;
  }

  else
  {
    if (v5 != 64)
    {
      goto LABEL_22;
    }

    v4 = 3;
    HIBYTE(v25) = 3;
    LOWORD(__p[0]) = 22094;
    v7 = 67;
  }

LABEL_21:
  BYTE2(__p[0]) = v7;
LABEL_22:
  sub_1D0BCD7C4(&v26, __p, v4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *a1;
  if (*a1 > 7)
  {
    if (v8 > 31)
    {
      if (v8 == 32)
      {
        v17 = sub_1D0BCD7C4(&v26, "[", 1);
        *(v17 + *(*v17 - 24) + 24) = 6;
        v18 = *(a1 + 4);
        v19 = MEMORY[0x1D387E9D0]();
        sub_1D0BCD7C4(v19, "]", 1);
        goto LABEL_45;
      }

      if (v8 == 64)
      {
LABEL_45:
        v20 = sub_1D0BCD7C4(&v26, "[", 1);
        *(v20 + *(*v20 - 24) + 24) = 6;
        v21 = *(a1 + 4);
        v22 = MEMORY[0x1D387E9D0]();
        sub_1D0BCD7C4(v22, "]", 1);
      }
    }

    else if (v8 == 8 || v8 == 16)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        v9 = sub_1D0BCD7C4(&v26, "[", 1);
        *(v9 + *(*v9 - 24) + 24) = 6;
        v10 = sub_1D0BCD7C4(v9, " ", 1);
        sub_1D0BCD7C4(v10, "]", 1);
        goto LABEL_47;
      }

      if (v8 != 1)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (v8 == 2)
    {
      v11 = sub_1D0BCD7C4(&v26, "[", 1);
      v12 = *v11;
      *(v11 + *(*v11 - 24) + 8) |= 0x800u;
      *(v11 + *(v12 - 24) + 24) = 2;
      v13 = *(a1 + 5);
      v14 = MEMORY[0x1D387E9C0]();
      *(v14 + *(*v14 - 24) + 8) &= ~0x800u;
      v15 = *(a1 + 4) - 1;
      *(&v28[1].__locale_ + *(v26 - 24)) = 4;
      if (v15 > 0x17)
      {
        v16 = sub_1D0BCD7C4(&v26, " ", 1);
      }

      else
      {
        v16 = MEMORY[0x1D387E9D0](&v26);
      }

      sub_1D0BCD7C4(v16, "]", 1);
      goto LABEL_47;
    }

    if (v8 == 4)
    {
      goto LABEL_45;
    }
  }

LABEL_47:
  sub_1D0BC2E5C(&v27, a2);
  v26 = *MEMORY[0x1E69E54E8];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v27 = MEMORY[0x1E69E5548] + 16;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v28);
  std::ostream::~ostream();
  return MEMORY[0x1D387EBF0](&v30);
}

void sub_1D0D4A500(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1D0C71B88(&a8, MEMORY[0x1E69E54E8]);
  MEMORY[0x1D387EBF0](va);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssSvDatabase::RecomputeActiveGlonassSlots(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v131[3] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 280) & 1) == 0)
  {
    v128[0] = 12;
    LOBYTE(v116) = 3;
    cnprint::CNPrinter::Print(v128, &v116, "#svdb,RecomputeActiveGlonassSlots,No valid position available", a4, a5, a6, a7, a8, v97);
    goto LABEL_5;
  }

  v8 = *(a2 + 232) + *(a2 + 256);
  if (v8 > 2500000000.0)
  {
    v128[0] = 12;
    LOBYTE(v116) = 3;
    cnprint::CNPrinter::Print(v128, &v116, "#svdb,RecomputeActiveGlonassSlots,Position uncertainty is too large,var,%.3lf", a4, a5, a6, a7, a8, SLOBYTE(v8));
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v129 = *(a2 + 288);
  v130 = *(a2 + 304);
  v14 = a1 + 7;
  v111 = (a1 + 6);
  v112 = (a1 + 7);
  sub_1D0BCB540((a1 + 6), a1[7]);
  *v14 = 0;
  v14[1] = 0;
  *(v14 - 1) = v14;
  LogLevel = cnprint::CNPrinter::GetLogLevel(v15);
  if (LogLevel <= 1)
  {
    v128[0] = 12;
    LOBYTE(v116) = 1;
    cnprint::CNPrinter::Print(v128, &v116, "#svdb,Clearing active freq-to-slot", v17, v18, v19, v20, v21, v97);
  }

  v22 = a1[3];
  v9 = 1;
  v114 = a1 + 4;
  if (v22 != a1 + 4)
  {
    v23 = 0;
    v24 = 0;
    v25 = -8;
    while (1)
    {
      v26 = cnprint::CNPrinter::GetLogLevel(LogLevel);
      if (v26 <= 1)
      {
        v128[0] = 12;
        LOBYTE(v116) = 1;
        v98 = *(v22 + 8);
        cnprint::CNPrinter::Print(v128, &v116, "#svdb,Considering frequency and slot for active status,freq,%i,slot,%i", v27, v28, v29, v30, v31, *(v22 + 7));
      }

      if (*(v22 + 7) != v25)
      {
        if (((v25 != -8) & v24) != 1)
        {
          goto LABEL_21;
        }

        v32 = v112;
        v33 = *v112;
        if (!*v112)
        {
          goto LABEL_21;
        }

        do
        {
          if (*(v33 + 7) >= v25)
          {
            v32 = v33;
          }

          v33 = v33[*(v33 + 7) < v25];
        }

        while (v33);
        if (v32 != v112 && v25 >= *(v32 + 7))
        {
          if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
          {
            v128[0] = 12;
            LOBYTE(v116) = 1;
            v101 = *sub_1D0D4AC68(*v112, v25);
            cnprint::CNPrinter::Print(v128, &v116, "#svdb,Removing from active list,freq,%i,slot,%i", v80, v81, v82, v83, v84, v25);
          }

          sub_1D0D4B73C(v111, v25);
          v24 = 0;
          v23 = 0;
          v25 = *(v22 + 7);
        }

        else
        {
LABEL_21:
          v24 = 0;
          v23 = 0;
          v25 = *(v22 + 7);
        }
      }

      v34 = *(v22 + 8);
      sub_1D0B751F4(__p, &unk_1D0ED80C5);
      v126 = 2;
      v127 = v34;
      v35 = sub_1D0C36A78(a3, __p);
      if (a3 + 8 == v35)
      {
        break;
      }

      v36 = *(v35 + 64);
      if (!v36)
      {
        v128[0] = 12;
        LOBYTE(v116) = 5;
        v50 = sub_1D0BCFAB8(__p);
        cnprint::CNPrinter::Print(v128, &v116, "#svdb,Null sat data,SV,%s", v51, v52, v53, v54, v55, v50);
        goto LABEL_30;
      }

      v116 = 0;
      v117 = 0u;
      v118 = 0u;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
      if (!(*(*(v36 + 32) + 56))(v36 + 32, a4, &v116, v123, v128, v131))
      {
        v56 = cnnavigation::SatElAz(&v129, v123, 0, v131, 0, v128);
        if (!v56)
        {
          v71 = LOBYTE(v131[0]);
          if (v131[0] <= -0.0872664626)
          {
            v110 = v23;
          }

          else
          {
            if (v23)
            {
              v128[0] = 12;
              v115 = 3;
              v105 = *(v22 + 8);
              cnprint::CNPrinter::Print(v128, &v115, "#svdb,Two active slots at frequency found,freq,%i,slot0,%i,slot1,%i,elevation1,%lf", v57, v58, v59, v60, v61, v25);
              v24 = 1;
            }

            v56 = cnprint::CNPrinter::GetLogLevel(v56);
            if (v56 <= 1)
            {
              v128[0] = 12;
              v115 = 1;
              v100 = *(v22 + 7);
              v106 = *(v22 + 8);
              cnprint::CNPrinter::Print(v128, &v115, "#svdb,Adding to active list,elevation,%.3lf,freq,%i,slot,%i", v72, v73, v74, v75, v76, v71);
            }

            v110 = *(v22 + 8);
            v77 = v112;
LABEL_48:
            v78 = *v77;
            if (!*v77)
            {
LABEL_53:
              operator new();
            }

            while (1)
            {
              v77 = v78;
              v79 = *(v78 + 7);
              if (v79 > v25)
              {
                goto LABEL_48;
              }

              if (v79 >= v25)
              {
                break;
              }

              v78 = v77[1];
              if (!v78)
              {
                goto LABEL_53;
              }
            }

            *(v77 + 8) = v110;
          }

          LogLevel = cnprint::CNPrinter::GetLogLevel(v56);
          if (LogLevel > 1)
          {
            v43 = 0;
            v23 = v110;
          }

          else
          {
            v128[0] = 12;
            v115 = 1;
            v102 = *(v22 + 7);
            v107 = *(v22 + 8);
            cnprint::CNPrinter::Print(v128, &v115, "#svdb,elevation,%.3lf,freq,%i,slot,%i", v85, v86, v87, v88, v89, SLOBYTE(v131[0]));
            v23 = v110;
            v43 = 0;
          }

          goto LABEL_31;
        }

        v128[0] = 12;
        v115 = 4;
        v62 = sub_1D0BCFAB8(v36);
        cnprint::CNPrinter::Print(v128, &v115, "#svdb,Could not compute elevation,SV,%s", v63, v64, v65, v66, v67, v62);
        goto LABEL_30;
      }

      v128[0] = 12;
      LOBYTE(v131[0]) = 3;
      v37 = sub_1D0BCFAB8(v36);
      v108 = *(v36 + 112) + *(v36 + 104);
      v109 = *(a4 + 8) + *a4;
      v99 = *(v22 + 8);
      v104 = *(v22 + 7);
      cnprint::CNPrinter::Print(v128, v131, "#svdb,Cannot compute SV position while determining active GLONASS slot,SV,%s,slot,%i,freq,%i,t_eph,%lf,t_eval,%lf", v38, v39, v40, v41, v42, v37);
      v43 = 3;
LABEL_31:
      if (v125 < 0)
      {
        operator delete(__p[0]);
      }

      if (v43 != 3 && v43)
      {
        goto LABEL_5;
      }

      v68 = v22[1];
      if (v68)
      {
        do
        {
          v69 = v68;
          v68 = *v68;
        }

        while (v68);
      }

      else
      {
        do
        {
          v69 = v22[2];
          v70 = *v69 == v22;
          v22 = v69;
        }

        while (!v70);
      }

      v22 = v69;
      if (v69 == v114)
      {
        if (((v25 != -8) & v24) == 1)
        {
          v90 = v112;
          v91 = *v112;
          if (*v112)
          {
            do
            {
              if (*(v91 + 7) >= v25)
              {
                v90 = v91;
              }

              v91 = v91[*(v91 + 7) < v25];
            }

            while (v91);
            if (v90 != v112 && v25 >= *(v90 + 7))
            {
              if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
              {
                v128[0] = 12;
                LOBYTE(v116) = 1;
                v103 = *sub_1D0D4AC68(*v112, v25);
                cnprint::CNPrinter::Print(v128, &v116, "#svdb,Removing from active list,freq,%i,slot,%i", v92, v93, v94, v95, v96, v25);
              }

              sub_1D0D4B73C(v111, v25);
            }
          }
        }

        v9 = 1;
        goto LABEL_6;
      }
    }

    v128[0] = 12;
    LOBYTE(v116) = 3;
    v44 = sub_1D0BCFAB8(__p);
    cnprint::CNPrinter::Print(v128, &v116, "#svdb,In freq-to-slot map but not sat data,SV,%s", v45, v46, v47, v48, v49, v44);
LABEL_30:
    v43 = 1;
    goto LABEL_31;
  }

LABEL_6:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1D0D4AC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D0D4AC68(uint64_t *a1, int a2)
{
  if (!a1)
  {
LABEL_8:
    sub_1D0C543A8("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 7);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 4;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_8;
    }
  }
}

uint64_t raven::GnssSvDatabase::PopulateGnssUTCParametersWithNavic(raven::GnssSvDatabase *this, cnnavigation::GNSSUTCParameters *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 144);
  if (v8 == 1 && (*(this + 112) & 1) != 0 && (*(this + 288) & 1) != 0)
  {
    *a2 = 1536;
    *(a2 + 2) = 0u;
    *(a2 + 18) = 0u;
    *(a2 + 34) = 0u;
    *(a2 + 50) = 0u;
    *(a2 + 33) = 0;
    v11 = *(this + 33) / 1000000000.0;
    LODWORD(v36[0]) = vcvtmd_s64_f64(v11 / 604800.0);
    v36[1] = v11 + SLODWORD(v36[0]) * -604800.0;
    v40 = 0;
    v39 = 0u;
    memset(v38, 0, sizeof(v38));
    cnnavigation::TAITime::TAITime(v37, v36, v38);
    LOWORD(v38[0]) = 0;
    memset(v38 + 8, 0, 36);
    v39 = 0uLL;
    LODWORD(v40) = 0;
    v12 = cnnavigation::TAITime::ToNavicTime(v37, v38);
    *v14.i64 = floor(v13);
    *v15.i64 = v13 - *v14.i64;
    v38[0] = 0uLL;
    CNTimeSpan::SetTimeSpan(v38, vcvtmd_s64_f64(v13) + 604800 * v12, v15, v14);
    *(a2 + 24) = v38[0];
    v23 = *(this + 12);
    v24.f64[0] = *(this + 34) + *(this + 11) + v23 * 0.0;
    v24.f64[1] = v23 + *(this + 35);
    *(a2 + 8) = vdivq_f64(v24, vdupq_n_s64(0x41CDCD6500000000uLL));
    v25 = *(this + 60);
    *(a2 + 10) = v25;
    if (v25 == -32768 || (v26 = *(this + 16)) == 0 || *(this + 122) != 2 || (v27 = *(this + 68), v27 == 0x8000))
    {
      *(a2 + 16) = v25;
    }

    else
    {
      *(a2 + 16) = v27;
      sub_1D0C345C8(v35, v26 / 1000000000.0, v16, v17, v18, v19, v20, v21, v22);
      cnnavigation::TAITime::TAITime(v36, v35, v28, v29);
      LOWORD(v38[0]) = 0;
      memset(v38 + 8, 0, 36);
      v39 = 0uLL;
      LODWORD(v40) = 0;
      *&v38[0] = cnnavigation::TAITime::ToNavicTime(v36, v38);
      *(&v38[0] + 1) = v30;
      *(a2 + 6) = cnnavigation::NavicTime::operator CNTime(v38, v31, v32);
      *(a2 + 7) = v33;
    }

    result = 1;
    *a2 = 1;
  }

  else
  {
    LOWORD(v38[0]) = 12;
    LOBYTE(v37[0]) = 3;
    cnprint::CNPrinter::Print(v38, v37, "#svdb,Failed to populate Navic-to-UTC conversion parameters,gps-leap-second,%i,gps-to-utc,%i", a4, a5, a6, a7, a8, v8);
    return 0;
  }

  return result;
}

uint64_t raven::GnssSvDatabase::PopulateEphemFromPolynomial(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  if ((sub_1D0C39154(a2) & 1) == 0)
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v79) = 4;
    cnprint::CNPrinter::Print(__p, &v79, "#svdb,PopulateEphemFromPolynomial,Malformed sv_info", v7, v8, v9, v10, v11, v69);
  }

  if ((*(a2 + 168) & 1) == 0)
  {
    v79 = 12;
    v78 = 4;
    sub_1D0D49EE8(a2, __p);
    if (v77 >= 0)
    {
      v61 = __p;
    }

    else
    {
      LOBYTE(v61) = __p[0];
    }

    cnprint::CNPrinter::Print(&v79, &v78, "#svdb,missing poly,SV,%s", v56, v57, v58, v59, v60, v61);
    goto LABEL_19;
  }

  *v12.i64 = *(a2 + 56) * 0.000000001;
  v80[0] = 0;
  v80[1] = 0;
  CNTimeSpan::SetTimeSpan(v80, 0, v12, v13);
  v19 = raven::GnssSvDatabase::ConvertCNTimeInGnssTimeBaseToTAI(a3, v80, (a4 + 72), v14, v15, v16, v17, v18);
  *v20.i64 = *(a2 + 64) * 0.000000001;
  v81[0] = 0;
  v81[1] = 0;
  CNTimeSpan::SetTimeSpan(v81, 0, v20, v21);
  v27 = raven::GnssSvDatabase::ConvertCNTimeInGnssTimeBaseToTAI(a3, v81, (a4 + 88), v22, v23, v24, v25, v26);
  if (v19)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  if (v27)
  {
    v31 = v19 ^ 1;
  }

  else
  {
    v31 = v30;
  }

  *v28.i64 = *(a2 + 8) * 0.000000001;
  v82[0] = 0;
  v82[1] = 0;
  CNTimeSpan::SetTimeSpan(v82, 0, v28, v29);
  v37 = raven::GnssSvDatabase::ConvertCNTimeInGnssTimeBaseToTAI(a3, v82, (a4 + 104), v32, v33, v34, v35, v36);
  v38 = vdupq_n_s64(0x3E112E0BE826D695uLL);
  v39 = *(a2 + 72);
  *(a4 + 136) = *(a2 + 88);
  *(a4 + 120) = v39;
  v40 = *(a2 + 120);
  *(a4 + 152) = *(a2 + 104);
  *(a4 + 168) = v40;
  v41 = *(a2 + 152);
  *(a4 + 184) = *(a2 + 136);
  *(a4 + 200) = v41;
  v42 = vmulq_f64(*(a2 + 192), v38);
  __asm { FMOV            V3.2D, #0.5 }

  *&_Q3.f64[0] = *&vmulq_f64(v42, _Q3);
  __asm { FMOV            V4.2D, #6.0 }

  _Q3.f64[1] = vdivq_f64(v42, _Q4).f64[1];
  v49 = vmulq_f64(*(a2 + 176), v38);
  *(a4 + 216) = v49;
  *(a4 + 232) = _Q3;
  *(a4 + 216) = v49.f64[0] + a3[1];
  *(a4 + 224) = v49.f64[1] + a3[2];
  if (v31 + (v37 ^ 1))
  {
    v79 = 12;
    v78 = 4;
    sub_1D0D49EE8(a2, __p);
    if (v77 >= 0)
    {
      v55 = __p;
    }

    else
    {
      LOBYTE(v55) = __p[0];
    }

    cnprint::CNPrinter::Print(&v79, &v78, "#svdb,Failed to convert poly GNSS time to TAI,%s,%d", v50, v51, v52, v53, v54, v55);
LABEL_19:
    if (v77 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  if (!cnprint::CNPrinter::GetLogLevel(v37))
  {
    v79 = 12;
    v78 = 0;
    sub_1D0D49EE8(a2, __p);
    if (v77 >= 0)
    {
      v68 = __p;
    }

    else
    {
      LOBYTE(v68) = __p[0];
    }

    v74 = *(a4 + 232);
    v75 = *(a4 + 240);
    v73 = *(a4 + 216);
    v71 = *(a2 + 56);
    v72 = *(a2 + 64);
    v70 = *(a2 + 8);
    cnprint::CNPrinter::Print(&v79, &v78, "#svdb,poly ephem,SV,%s,interval,%.3f,%.3f,%.3f,clockpoly,%f,%f,%f,%f", v63, v64, v65, v66, v67, v68);
    if (v77 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 1;
}

void sub_1D0D4B1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::GnssSvDatabase::AggregateHealthFromOrderedHealthArray(uint64_t a1)
{
  v1 = 0;
  while (1)
  {
    v2 = *(a1 + v1);
    if ((v2 - 1) < 2)
    {
      break;
    }

    if (++v1 == 5)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1D0D4B208@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (result <= 4)
  {
    if (result <= 1)
    {
      if (result)
      {
        if (result != 1)
        {
          return result;
        }

        *(a2 + 23) = 4;
        v2 = 1094922572;
      }

      else
      {
        *(a2 + 23) = 4;
        v2 = 543911509;
      }
    }

    else if (result == 2)
    {
      *(a2 + 23) = 4;
      v2 = 538981708;
    }

    else
    {
      *(a2 + 23) = 4;
      if (result == 3)
      {
        v2 = 543568204;
      }

      else
      {
        v2 = 541667650;
      }
    }

    goto LABEL_24;
  }

  if (result <= 7)
  {
    if (result == 5)
    {
      *(a2 + 23) = 4;
      v2 = 541274434;
    }

    else
    {
      *(a2 + 23) = 4;
      if (result == 6)
      {
        v2 = 543240770;
      }

      else
      {
        v2 = 538980677;
      }
    }

    goto LABEL_24;
  }

  switch(result)
  {
    case 8:
      *(a2 + 23) = 4;
      v2 = 543241541;
      goto LABEL_24;
    case 9:
      *(a2 + 23) = 4;
      v2 = 1112748364;
LABEL_24:
      *a2 = v2;
      return result;
    case 0xA:
      *(a2 + 23) = 3;
      *a2 = 19534;
      *(a2 + 2) = 53;
      break;
  }

  return result;
}

uint64_t *sub_1D0D4B370(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return sub_1D0D4B3C4(v6, a2);
}

uint64_t *sub_1D0D4B3C4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
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
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
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
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void sub_1D0D4B73C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      if (*(v2 + 28) >= a2)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < a2));
    }

    while (v2);
    if (v3 != a1 + 8 && *(v3 + 28) <= a2)
    {
      sub_1D0D4B370(a1, v3);

      operator delete(v3);
    }
  }
}

uint64_t *sub_1D0D4B7BC(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_1D0B94A04(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void sub_1D0D4B8F0(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D4B960(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CDFE48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D4B9B4(uint64_t a1)
{
  *a1 = &unk_1F4CDFE98;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *a1 = &unk_1F4CD5F70;
  return a1;
}

void sub_1D0D4BA20(uint64_t a1)
{
  *a1 = &unk_1F4CDFE98;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *a1 = &unk_1F4CD5F70;

  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::VelocityChecker::Configure(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  v4 = *a2;
  v5 = *(*a2 + 920);
  *(a1 + 24) = *(*a2 + 2512);
  *(a1 + 32) = v5;
  *(a1 + 40) = raven::GNSSMeasurementSelectionParameters::AllMeasurementsExcluded((v4 + 592)) ^ 1;
  *(a1 + 8) = 1;
  return 0;
}

void sub_1D0D4BAFC(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 8) = xmmword_1D0E76C10;
  *(a3 + 32) = a3 + 40;
  v15 = 0x100000003;
  v14 = xmmword_1D0E7DCC0;
  v13 = &unk_1F4CDEAA0;
  v16 = &v17;
  v10 = 0x100000003;
  v9 = xmmword_1D0E7DCC0;
  v8 = &unk_1F4CDEAA0;
  v11 = &v12;
  v5 = 0x10000000CLL;
  v3 = &unk_1F4CDFFF8;
  v4 = xmmword_1D0E83DD0;
  v6 = &v7;
  *a2 = sub_1D0BA5174(a1, &v13, &v8, &v3, a3);
}

uint64_t sub_1D0D4BC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 24) = 0x300000001;
  *a2 = &unk_1F4CDF248;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v4 * v3;
  *(a2 + 20) = v3;
  *(a2 + 32) = a2 + 40;
  return sub_1D0BD2018(a1, a2);
}

void sub_1D0D4BD50(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D4BE04(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

double raven::RavenEstimator::RavenEstimator(uint64_t a1, char a2)
{
  *a1 = &unk_1F4CE0150;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = a2;
  *(a1 + 57) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = &unk_1F4CEF4D8;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0x7FF8000000000000;
  *(a1 + 232) = 0;
  *(a1 + 284) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0x7FF8000000000000;
  *(a1 + 1408) = 0;
  *(a1 + 1848) = 0;
  *(a1 + 2000) = 0;
  *(a1 + 2152) = 0;
  *(a1 + 2288) = 0;
  *(a1 + 2440) = 0;
  *(a1 + 2576) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1193) = 0u;
  *(a1 + 2568) = a1 + 2576;
  *(a1 + 2592) = 0;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2744) = 0u;
  return result;
}

BOOL raven::RavenEstimator::ShouldInflatePositionStateUncertaintyForVL(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6)
{
  *a6 = 1.0;
  v7 = *(a2 + 8);
  v8 = *(a2 + 12);
  if (v7 <= v8)
  {
    v9 = *(a2 + 12);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10 && v9 == 3;
  if (!v11 || ((v12 = *(a4 + 8), v13 = *(a4 + 12), v12 <= v13) ? (v14 = *(a4 + 12)) : (v14 = *(a4 + 8)), v12 ? (v15 = v13 == 0) : (v15 = 1), !v15 ? (v16 = v14 == 3) : (v16 = 0), !v16))
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v64) = 12;
      LOBYTE(v54) = 1;
      v17 = cnprint::CNLogFormatter::FormatWarning((a1 + 2712), "ShouldInflatePositionStateUncertaintyForVL, Wrong position vector dimension");
LABEL_24:
      if (a1[2735] >= 0)
      {
        LOBYTE(v23) = v17;
      }

      else
      {
        v23 = *(a1 + 339);
      }

      cnprint::CNPrinter::Print(&v64, &v54, "%s", v18, v19, v20, v21, v22, v23);
      return 0;
    }

    return 0;
  }

  v27 = *(a3 + 8);
  v27.i64[1] = *(a5 + 8);
  v28.i64[0] = 0x300000003;
  v28.i64[1] = 0x300000003;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v27, v28)))))
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v64) = 12;
      LOBYTE(v54) = 1;
      v17 = cnprint::CNLogFormatter::FormatWarning((a1 + 2712), "ShouldInflatePositionStateUncertaintyForVL, Wrong position covariance matrix dimensions");
      goto LABEL_24;
    }

    return 0;
  }

  v61 = 0x100000003;
  v60 = xmmword_1D0E7DCC0;
  v59 = &unk_1F4CDEB28;
  v62 = &v63;
  sub_1D0BA5A78(a2, a4, &v59);
  v56 = 0x300000003;
  v55 = xmmword_1D0E76C10;
  v54 = &unk_1F4CD5DD0;
  v57 = &v58;
  sub_1D0B88838(a3, a5, &v54);
  v30 = DWORD1(v60);
  v31 = v60;
  v51 = 0x300000001;
  v46 = &unk_1F4CDF248;
  v52 = v53;
  v47 = DWORD1(v60);
  v48 = v60;
  v49 = v60 * DWORD1(v60);
  v50 = DWORD1(v60);
  if (DWORD1(v60))
  {
    v32 = 0;
    v33 = 0;
    v34 = HIDWORD(v60);
    v35 = v62;
    do
    {
      v36 = v32;
      v37 = v33;
      for (i = v31; i; --i)
      {
        v53[v37] = v35[v36];
        v37 += v30;
        ++v36;
      }

      ++v33;
      v32 += v34;
    }

    while (v33 != v30);
  }

  v43 = 0x300000003;
  v41 = &unk_1F4CD5DD0;
  v42 = xmmword_1D0E76C10;
  v44 = &v45;
  v71 = 0x100000003;
  v70 = xmmword_1D0E7DCC0;
  v69 = &unk_1F4CDEAA0;
  v72 = v73;
  v66 = 0x10000000CLL;
  v65 = xmmword_1D0E83DD0;
  v64 = &unk_1F4CDFFF8;
  v67 = v68;
  sub_1D0B9F868(&v54, &v69, &v64, &v41);
  v66 = 0x300000001;
  v65 = xmmword_1D0E7F310;
  v64 = &unk_1F4CDF248;
  v67 = v68;
  sub_1D0B89390(&v46, &v41, &v64);
  v71 = 0x100000001;
  *&v39 = 0x100000001;
  *(&v39 + 1) = 0x100000001;
  v70 = v39;
  v69 = &unk_1F4CDF418;
  v72 = v73;
  sub_1D0B89390(&v64, &v59, &v69);
  v40 = *v72 / 3.0;
  result = v40 > 2.6;
  if (v40 > 2.6)
  {
    *a6 = sqrt(v40);
  }

  return result;
}

double sub_1D0D4C358@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 8) = xmmword_1D0E76C10;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0B88838(a1, a2, a3);
  return result;
}

void sub_1D0D4C398(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 8) = xmmword_1D0E76C10;
  *(a2 + 32) = a2 + 40;
  v9 = 0x100000003;
  v7 = &unk_1F4CDEAA0;
  v8 = xmmword_1D0E7DCC0;
  v10 = &v11;
  v4 = 0x10000000CLL;
  v2 = &unk_1F4CDFFF8;
  v3 = xmmword_1D0E83DD0;
  v5 = &v6;
  sub_1D0B9F868(a1, &v7, &v2, a2);
}

uint64_t raven::RavenEstimator::Configure(uint64_t a1, void *a2)
{
  if (*(a1 + 57) == 1)
  {
    puts("Warning: RavenEstimator::Configure() called more than once.");
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *(a1 + 1168) = *a2;
    *(a1 + 57) = 1;
  }

  return result;
}

double raven::RavenEstimator::UpdatePriorInformation(raven::RavenEstimator *this, double result)
{
  if (result >= 0.0 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&result - 1) <= 0xFFFFFFFFFFFFELL)
  {
    result = 1.0 / (result * result);
    *(this + 140) = result;
  }

  return result;
}

double raven::RavenEstimator::AddCellInformation(raven::RavenEstimator *this, double result)
{
  if (result >= 0.0 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&result - 1) <= 0xFFFFFFFFFFFFELL)
  {
    result = 1.0 / (result * result) + *(this + 143);
    *(this + 143) = result;
  }

  return result;
}

double raven::RavenEstimator::AddGNSSInformation(raven::RavenEstimator *this, double result)
{
  if (result >= 0.0 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&result - 1) <= 0xFFFFFFFFFFFFELL)
  {
    result = 1.0 / (result * result) + *(this + 141);
    *(this + 141) = result;
  }

  return result;
}

double raven::RavenEstimator::AddWiFiInformation(raven::RavenEstimator *this, double result)
{
  if (result >= 0.0 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&result - 1) <= 0xFFFFFFFFFFFFELL)
  {
    result = 1.0 / (result * result) + *(this + 142);
    *(this + 142) = result;
  }

  return result;
}

double raven::RavenEstimator::AddIndoorInformation(raven::RavenEstimator *this, double result)
{
  if (result >= 0.0 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&result - 1) <= 0xFFFFFFFFFFFFELL)
  {
    result = 1.0 / (result * result) + *(this + 144);
    *(this + 144) = result;
  }

  return result;
}

double raven::RavenEstimator::AddAccessoryInformation(raven::RavenEstimator *this, double result)
{
  if (result >= 0.0 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&result - 1) <= 0xFFFFFFFFFFFFELL)
  {
    result = 1.0 / (result * result) + *(this + 145);
    *(this + 145) = result;
  }

  return result;
}

uint64_t raven::RavenEstimator::HandleFitnessSessionEvent(raven::RavenEstimator *this, const raven::FitnessSessionEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 1408) == 1)
    {
      memcpy(this + 1424, a2 + 8, 0x1A1uLL);
      return 0;
    }

    else
    {
      *(this + 177) = &unk_1F4CEF508;
      memcpy(this + 1424, a2 + 8, 0x1A1uLL);
      result = 0;
      *(this + 1408) = 1;
    }
  }

  else
  {
    v13 = 12;
    v12 = 4;
    v4 = (*(*a2 + 16))(a2);
    v11 = v5 + v4;
    cnprint::CNPrinter::Print(&v13, &v12, "t,%.3lf, ERROR: Estimator not configured, failed to handle FitnesSessionEvent.", v6, v7, v8, v9, v10, SLOBYTE(v11));
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t raven::RavenEstimator::IsContextIndoorsFromIndoorProbability(uint64_t a1, uint64_t a2, double *a3)
{
  if (a3[15] >= dbl_1D0E83EC0[*(a2 + 8) + *a2 <= *(*(a1 + 1168) + 3376)])
  {
    return *a3;
  }

  else
  {
    return 0;
  }
}

void raven::RavenEstimator::Reset(raven::RavenEstimator *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  *(this + 6) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(this + 3);
      v2 = (*(this + 2) + 8);
      *(this + 2) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 16;
  }

  *(this + 5) = v6;
LABEL_8:
  *(this + 58) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  v12 = 0uLL;
  v11 = 0uLL;
  v10 = &unk_1F4CEF4D8;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  *&v16 = 0;
  *(&v16 + 1) = 0x7FF8000000000000;
  *(this + 152) = 0uLL;
  *(this + 136) = 0uLL;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  *(this + 216) = v16;
  *(this + 200) = v9;
  *(this + 184) = v8;
  *(this + 168) = v7;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  if (*(this + 232) == 1)
  {
    *(this + 232) = 0;
  }

  *(this + 39) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 73) = 0;
  *(this + 328) = 0uLL;
  *(this + 344) = 0uLL;
  *(this + 360) = 0uLL;
  *(this + 376) = 0uLL;
  *(this + 392) = 0uLL;
  *(this + 408) = 0uLL;
  *(this + 424) = 0uLL;
  *(this + 440) = 0uLL;
  *(this + 456) = 0uLL;
  *(this + 472) = 0uLL;
  *(this + 488) = 0uLL;
  *(this + 504) = 0uLL;
  *(this + 520) = 0uLL;
  *(this + 536) = 0uLL;
  *(this + 552) = 0uLL;
  *(this + 568) = 0uLL;
  *(this + 980) = 0;
  *(this + 948) = 0uLL;
  *(this + 964) = 0uLL;
  *(this + 916) = 0uLL;
  *(this + 932) = 0uLL;
  *(this + 884) = 0uLL;
  *(this + 900) = 0uLL;
  *(this + 852) = 0uLL;
  *(this + 868) = 0uLL;
  *(this + 820) = 0uLL;
  *(this + 836) = 0uLL;
  *(this + 788) = 0uLL;
  *(this + 804) = 0uLL;
  *(this + 756) = 0uLL;
  *(this + 772) = 0uLL;
  *(this + 724) = 0uLL;
  *(this + 740) = 0uLL;
  *(this + 40) = 0x7FF8000000000000;
  *(this + 34) = 0;
  *(this + 37) = 0uLL;
  *(this + 38) = 0uLL;
  *(this + 39) = 0uLL;
  *(this + 40) = 0uLL;
  *(this + 41) = 0uLL;
  *(this + 42) = 0uLL;
  *(this + 43) = 0uLL;
  *(this + 44) = 0uLL;
  *(this + 180) = 0;
  *(this + 988) = 0uLL;
  *(this + 1004) = 0uLL;
  *(this + 1020) = 0uLL;
  *(this + 1036) = 0uLL;
  *(this + 1052) = 0uLL;
  *(this + 1068) = 0uLL;
  *(this + 1084) = 0uLL;
  *(this + 1100) = 0uLL;
  *(this + 1116) = 0uLL;
  *(this + 1132) = 0uLL;
  *(this + 1148) = 0uLL;
  *(this + 291) = 0;
  if (*(this + 1208) == 1)
  {
    *(this + 1208) = 0;
  }

  if (*(this + 1408) == 1)
  {
    *(this + 1408) = 0;
  }

  if (*(this + 1848) == 1)
  {
    *(this + 1848) = 0;
  }

  if (*(this + 2000) == 1)
  {
    *(this + 2000) = 0;
  }

  if (*(this + 2152) == 1)
  {
    *(this + 2152) = 0;
  }

  if (*(this + 2288) == 1)
  {
    *(this + 2288) = 0;
  }

  if (*(this + 2440) == 1)
  {
    *(this + 306) = &unk_1F4CEF598;
    v10 = (this + 2544);
    sub_1D0BBBD80(&v10);
    *(this + 2440) = 0;
  }

  sub_1D0BCB540(this + 2568, *(this + 322));
  *(this + 321) = this + 2576;
  *(this + 161) = 0u;
  if (*(this + 2592) == 1)
  {
    *(this + 2592) = 0;
  }
}

double raven::RavenEstimator::ResetMeasurementCounts(raven::RavenEstimator *this)
{
  result = 0.0;
  *(this + 708) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  return result;
}

BOOL raven::RavenEstimator::IsPositionMeasurementUsable(_BYTE *a1, uint64_t a2)
{
  v2 = *(a2 + 200);
  result = 0;
  if (v2 != 16)
  {
    if (v2 != 4)
    {
      return 1;
    }

    if (a1[1208] != 1)
    {
      return 1;
    }

    if (a1[2592] != 1)
    {
      return 1;
    }

    v3 = a1[1320];
    if (v3 < 0xA && ((0x323u >> v3) & 1) != 0)
    {
      return 1;
    }

    if (a1[2704] - 3 <= 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t raven::RavenEstimator::ShouldMapVectorConstraintBeApplied(_BYTE *a1, float64x2_t *a2, float64x2_t *a3)
{
  if (a1[1208] != 1)
  {
    return 0;
  }

  v16 = v6;
  v17 = v5;
  v18 = v3;
  v19 = v4;
  v8 = a1[1320];
  v9 = 0.45;
  if (v8 > 9)
  {
    goto LABEL_14;
  }

  if (((1 << v8) & 0x9E) != 0)
  {
    v9 = 0.8;
    if (a1[2592] != 1 || a1[2704] - 3 >= 2)
    {
      goto LABEL_14;
    }

    return 4294967294;
  }

  if (((1 << v8) & 0x240) != 0)
  {
    return 4294967294;
  }

  if (v8 == 5 && a1[2592] == 1 && a1[2704] - 3 < 2)
  {
    return 0;
  }

LABEL_14:
  v15 = 0;
  v14 = vmulq_f64(a3[6], vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v11 = cnnavigation::ECEFToENU(a2, 1, 1, &v14, 0, v13);
  result = 0;
  if (!v11)
  {
    v12 = __sincos_stret(a3[9].f64[1] * 0.0174532925);
    if (fabs(v12.__sinval * v13[1] - v12.__cosval * v13[0]) > v9 * a3[8].f64[1])
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

BOOL raven::RavenEstimator::IsZUPTAppropriate(raven::RavenEstimator *this, const raven::AccessoryVehicleSpeedEvent *a2)
{
  v2 = *(this + 146);
  if (v2 && (*(v2 + 33) & 1) != 0)
  {
    v3 = *(a2 + 30);
    if (v3 != *(a2 + 29) && *(v3 - 8) <= 0.01)
    {
      v15[0] = (*(*a2 + 16))(a2);
      v15[1] = v5;
      return raven::RavenEstimator::IsTimeForZUPT(this, v15);
    }
  }

  else
  {
    LOWORD(v15[0]) = 12;
    v16 = 4;
    v7 = (*(*a2 + 16))(a2);
    v14 = v8 + v7;
    cnprint::CNPrinter::Print(v15, &v16, "t,%.3lf,AccessoryVehicleSpeed,nozupt,Raven parameters not configured.", v9, v10, v11, v12, v13, SLOBYTE(v14));
  }

  return 0;
}

uint64_t raven::RavenEstimator::UpdateAggressiveFlooringOfOutputUncertaintyData(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, int8x16_t a5, int8x16_t a6)
{
  v9 = result;
  if (*(result + 1408) == 1)
  {
    v10 = *(result + 1521);
    if (v10 > 3 || v10 == 1)
    {
      goto LABEL_30;
    }
  }

  if (*(result + 1208) == 1)
  {
    v12 = *(result + 1320);
    if (v12 > 9 || v12 == 5)
    {
      goto LABEL_30;
    }
  }

  if (a4 <= 4 && (*(result + 280) & 1) != 0)
  {
LABEL_13:
    result = CNTimeSpan::operator-((v9 + 80), (v9 + 296), a5, a6);
    v15 = v14 + result;
    if (v15 >= 10.0)
    {
      *(v9 + 296) = 0;
      *(v9 + 304) = 0;
    }

    *(v9 + 280) = v15 >= 10.0;
    return result;
  }

  v16 = 1.1;
  if (*(result + 2592) == 1)
  {
    v17 = *(result + 2704);
    if (v17 > 6)
    {
      v18 = 22;
    }

    else
    {
      v18 = dword_1D0E83F38[*(result + 2704)];
    }

    if (v17 > 6 || ((1 << v17) & 0x59) == 0)
    {
      v16 = 0.8;
    }
  }

  else
  {
    v18 = 17;
  }

  result = (**result)(result);
  if (v18 <= a4 || v19 <= v16)
  {
LABEL_30:
    v20 = *(v9 + 284) + 1;
    *(v9 + 284) = v20;
    if (v20 > *(v9 + 288))
    {
      *(v9 + 288) = v20;
    }

    *(v9 + 280) = 0;
    *(v9 + 296) = *(v9 + 80);
  }

  else
  {
    if (*(v9 + 288) >= 5u && (a4 > 0xB || v19 <= 1.5))
    {
      *(v9 + 280) = 0;
      return result;
    }

    *(v9 + 284) = 0;
    result = (*(*v9 + 160))(v9, a2, a3);
    if (result)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_1D0D4D068(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 16;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1D0C565EC(a1);
}

void sub_1D0D4D114(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0D4D174(exception, a1);
  __cxa_throw(exception, &unk_1F4CE0058, sub_1D0D4D220);
}

uint64_t sub_1D0D4D174(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4CE00B0;
  *(a1 + 8) = &unk_1F4CE00E0;
  *(a1 + 24) = &unk_1F4CE0108;
  return a1;
}

uint64_t sub_1D0D4D220(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));
  return a1;
}

void sub_1D0D4D444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0D4D4B0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0D4D758(exception, a1);
  __cxa_throw(exception, &unk_1F4CE0058, sub_1D0D4D220);
}

void sub_1D0D4D50C(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D4D580(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));

  std::logic_error::~logic_error(a1);
}

void sub_1D0D4D5DC(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::logic_error::~logic_error(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D4D654(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);

  std::logic_error::~logic_error(v1);
}

void sub_1D0D4D6AC(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);
  std::logic_error::~logic_error(v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D4D720(std::logic_error *a1)
{
  std::logic_error::~logic_error(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D4D758(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F4CE0128;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4CDEDE8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4CE00B0;
  *(a1 + 8) = &unk_1F4CE00E0;
  *(a1 + 24) = &unk_1F4CE0108;
  return a1;
}

uint64_t raven::RavenPositionContextEstimator::Configure(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 1) == 1)
  {
    v31 = 12;
    v30 = 2;
    v3 = cnprint::CNLogFormatter::FormatWarning((a1 + 424), "RavenPositionContextEstimator::Configure() called more than once");
    if (*(a1 + 447) >= 0)
    {
      LOBYTE(v9) = v3;
    }

    else
    {
      v9 = *(a1 + 424);
    }

    cnprint::CNPrinter::Print(&v31, &v30, "%s", v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v10 = *a2;
    if (*a2)
    {
      if (*(v10 + 33))
      {
        result = 0;
        *(a1 + 8) = v10;
        *(a1 + 1) = 1;
        return result;
      }

      v27 = 12;
      v26 = 4;
      v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 424), "RavenPositionContextEstimator::Configure() called with uninitialized raven parameters");
      if (*(a1 + 447) >= 0)
      {
        LOBYTE(v25) = v19;
      }

      else
      {
        v25 = *(a1 + 424);
      }

      cnprint::CNPrinter::Print(&v27, &v26, "%s", v20, v21, v22, v23, v24, v25);
    }

    else
    {
      v29 = 12;
      v28 = 4;
      v12 = cnprint::CNLogFormatter::FormatGeneral((a1 + 424), "RavenPositionContextEstimator::Configure() called with null raven parameters");
      if (*(a1 + 447) >= 0)
      {
        LOBYTE(v18) = v12;
      }

      else
      {
        v18 = *(a1 + 424);
      }

      cnprint::CNPrinter::Print(&v29, &v28, "%s", v13, v14, v15, v16, v17, v18);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenPositionContextEstimator::Initialize(raven::RavenPositionContextEstimator *this, uint64_t a2)
{
  if (*this == 1)
  {
    v44 = 12;
    v43 = 2;
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 53, "WARNING: RavenPositionContextEstimator::Initialize(),estimator being re-initialized");
    if (*(this + 447) >= 0)
    {
      LOBYTE(v10) = v4;
    }

    else
    {
      v10 = *(this + 53);
    }

    cnprint::CNPrinter::Print(&v44, &v43, "%s", v5, v6, v7, v8, v9, v10);
    *this = 0;
  }

  v11 = *(this + 1);
  if (!v11)
  {
    v44 = 12;
    v43 = 4;
    v14 = cnprint::CNLogFormatter::FormatGeneral(this + 53, "RavenPositionContextEstimator::Initialize(),invalid pointer to RavenParameters", v42);
    goto LABEL_20;
  }

  v12 = v11[310];
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v12 >= 0.0 ? (v13 = v12 <= 1.0) : (v13 = 0), !v13))
  {
    v44 = 12;
    v43 = 4;
    v14 = cnprint::CNLogFormatter::FormatGeneral(this + 53, "RavenPositionContextEstimator::Initialize(),invalid P(indoor),%.3lf");
LABEL_20:
    if (*(this + 447) >= 0)
    {
      LOBYTE(v22) = v14;
    }

    else
    {
      v22 = *(this + 53);
    }

    cnprint::CNPrinter::Print(&v44, &v43, "%s", v15, v16, v17, v18, v19, v22);
    return 0xFFFFFFFFLL;
  }

  v20 = v11[311];
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v20 >= 0.0 ? (v21 = v20 <= 1.0) : (v21 = 0), !v21))
  {
    v44 = 12;
    v43 = 4;
    v14 = cnprint::CNLogFormatter::FormatGeneral(this + 53, "RavenPositionContextEstimator::Initialize(),invalid P(outdoor),%.3lf");
    goto LABEL_20;
  }

  if (fabs(v12 + v20 + -1.0) > 1.0e-10)
  {
    v44 = 12;
    v43 = 4;
    v14 = cnprint::CNLogFormatter::FormatGeneral(this + 53, "RavenPositionContextEstimator::Initialize(),sum of initial probabilities does not add up to one,P(indoor),%.3lf,P(outdoor),%.3lf");
    goto LABEL_20;
  }

  v24 = v11[312];
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v24 >= 0.0 ? (v25 = v24 <= 1.0) : (v25 = 0), !v25))
  {
    v44 = 12;
    v43 = 4;
    v14 = cnprint::CNLogFormatter::FormatGeneral(this + 53, "RavenPositionContextEstimator::Initialize(),invalid P(indoor|indoor),%.3lf");
    goto LABEL_20;
  }

  v26 = v11[313];
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v26 >= 0.0 ? (v27 = v26 <= 1.0) : (v27 = 0), !v27))
  {
    v44 = 12;
    v43 = 4;
    v14 = cnprint::CNLogFormatter::FormatGeneral(this + 53, "RavenPositionContextEstimator::Initialize(),invalid P(outdoor|outdoor),%.3lf");
    goto LABEL_20;
  }

  v28 = *(a2 + 8) + *a2;
  v29 = fabs(v28);
  v30 = (*&v29 - 1) < 0xFFFFFFFFFFFFFLL;
  v31 = v28 < 0.0 && (*&v29 - 0x10000000000000) >> 53 < 0x3FF;
  if (v28 >= 0.0)
  {
    v30 = 0;
  }

  v32 = *&v29 <= 0x7FF0000000000000;
  v33 = v29 == INFINITY || v30;
  if (!v32)
  {
    v33 = 1;
  }

  if ((v33 | v31) == 1)
  {
    v44 = 12;
    v43 = 4;
    v14 = cnprint::CNLogFormatter::FormatGeneral(this + 53, "RavenPositionContextEstimator::Initialize(),invalid input time,%.3lf");
    goto LABEL_20;
  }

  v34 = raven::RavenPositionContextEstimator::InitializeHiddenMarkovModel(this);
  *(this + 152) = *a2;
  *this = 1;
  if (cnprint::CNPrinter::GetLogLevel(v34) <= 1)
  {
    v44 = 12;
    v43 = 1;
    v35 = cnprint::CNLogFormatter::FormatGeneral(this + 424, a2, "RavenPositionContextEstimator::Initialize(),estimator is initialized");
    if (*(this + 447) >= 0)
    {
      LOBYTE(v41) = v35;
    }

    else
    {
      v41 = *(this + 53);
    }

    cnprint::CNPrinter::Print(&v44, &v43, "%s", v36, v37, v38, v39, v40, v41);
  }

  return 0;
}

uint64_t raven::RavenPositionContextEstimator::InitializeHiddenMarkovModel(raven::RavenPositionContextEstimator *this)
{
  *(this + 18) = 0x3DDB7CDFD9D7BDBBLL;
  v15 = 0x100000002;
  v13 = &unk_1F4CE0220;
  v12 = xmmword_1D0E83F60;
  v14 = xmmword_1D0E83F60;
  v16 = v17;
  v2 = *(this + 1);
  v3 = *(v2 + 2488);
  v17[0] = *(v2 + 2480);
  v17[1] = v3;
  v4 = v17[0] + v3;
  if (fabs(v17[0] + v3 + -1.0) > 1.0e-10 && cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    LOWORD(v20) = 2;
    v18[0] = 1;
    cnprint::CNPrinter::Print(&v20, v18, "WARNING: HMM initialized with non-normalized probability vector.", v5, v6, v7, v8, v9, 2);
  }

  sub_1D0BBEF48(v18, &v13);
  *&v10.f64[1] = 0x200000002;
  v19 = v12;
  v22 = 0x100000002;
  v20 = &unk_1F4CE0220;
  v21 = v12;
  v23 = &v24;
  v10.f64[0] = 1.0 / v4;
  sub_1D0B8930C(v18, &v20, v10);
  sub_1D0B894B0(this + 24, &v20);
  sub_1D0B894B0(this + 80, this + 24);
  *(this + 34) = 1;
  return 0;
}

__n128 raven::RavenPositionContextEstimator::ResetPositionContextStateEvent(raven::RavenPositionContextEstimator *this)
{
  *(this + 400) = 0;
  result = *(*(this + 1) + 2480);
  *(this + 408) = result;
  return result;
}

uint64_t raven::RavenPositionContextEstimator::HandleEvent(raven::RavenPositionContextEstimator *this, const raven::RavenSolutionEvent *a2)
{
  *(this + 21) = *(a2 + 169);
  *(this + 176) = *(a2 + 1344);
  return 0;
}

uint64_t raven::RavenPositionContextEstimator::HandleEvent(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 40);
  *(a1 + 208) = *(a2 + 24);
  *(a1 + 224) = v3;
  *(a1 + 192) = v2;
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 288) = *(a2 + 104);
  *(a1 + 256) = v5;
  *(a1 + 272) = v6;
  *(a1 + 240) = v4;
  return 0;
}

double raven::RavenPositionContextEstimator::Reset(raven::RavenPositionContextEstimator *this)
{
  *this = 0;
  *(this + 19) = 0;
  *(this + 288) = 0;
  result = NAN;
  *(this + 10) = xmmword_1D0E83F80;
  *(this + 176) = 0;
  *(this + 400) = 0;
  *(this + 51) = 0x3FE0000000000000;
  *(this + 52) = 0x3FE0000000000000;
  return result;
}

void sub_1D0D4E3B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v13[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }
}

void raven::RavenPNTEstimator::RavenPNTEstimator(raven::RavenPNTEstimator *this)
{
  raven::RavenEstimator::RavenEstimator(this, 3);
  *v2 = &unk_1F4CE39D0;
  *(v2 + 2760) = 0;
  *(v2 + 2768) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(v2 + 2784) = _Q0;
  *(v2 + 2800) = 0u;
  *(v2 + 2816) = 0u;
  *(v2 + 2832) = 0u;
  *(v2 + 2848) = 0u;
  *(v2 + 2864) = 0u;
  *(v2 + 2880) = 0u;
  *(v2 + 2896) = _Q0;
  *(v2 + 2912) = 0x3FF0000000000000;
  sub_1D0D7CFF0(v2 + 2920);
  *(this + 3376) = 0;
  *(this + 365) = &unk_1F4CE3F68;
  *(this + 8840) = 0u;
  *(this + 8856) = 0u;
  sub_1D0D7CFF0(this + 8872);
  *(this + 9328) = 0;
  *(this + 1109) = &unk_1F4CE3F68;
  *(this + 14792) = 0u;
  *(this + 14808) = 0u;
  *(this + 14824) = 0u;
  *(this + 1858) = 0x10000001CLL;
  *(this + 1855) = &unk_1F4CE0A20;
  *(this + 928) = xmmword_1D0E843A0;
  *(this + 1859) = this + 14880;
  sub_1D0D84F48(this + 15104);
}

void sub_1D0D4F094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, void *a25, uint64_t a26, void *a27, uint64_t a28, void *a29, void **a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v37 - 128) = a1;
  sub_1D0D81928(v36);
  **(v37 - 160) = a20;
  v38 = v33 + 7711;
  v39 = -16800;
  do
  {
    *v35 = &unk_1F4CE36E0;
    v35 -= 6;
    v38 -= 6;
    v39 += 48;
  }

  while (v39);
  **(v37 - 160) = &unk_1F4CE3698;
  v33[3505] = a21;
  v40 = v33 + 5605;
  v41 = -16800;
  do
  {
    *v34 = &unk_1F4CE3C98;
    v34 -= 6;
    v40 -= 6;
    v41 += 48;
  }

  while (v41);
  **(v37 - 176) = &unk_1F4CE3C50;
  *a24 = a23;
  *a22 = &unk_1F4CD5B78;
  **(v37 - 168) = &unk_1F4CD5B78;
  *a27 = a26;
  *a25 = &unk_1F4CD5B78;
  if (*(*(v37 - 184) + 3064) == 1)
  {
    *(*(v37 - 184) + 3064) = 0;
  }

  if (*(*(v37 - 184) + 400) == 1)
  {
    *(*(v37 - 184) + 400) = 0;
  }

  if (*(*(v37 - 184) + 168) == 1)
  {
    *(*(v37 - 184) + 168) = 0;
  }

  *a29 = a28;
  sub_1D0D83110((v33 + 2128));
  sub_1D0D859D4((v33 + 2125), *a30);
  sub_1D0D83314(*(v37 - 136));
  sub_1D0D855A8(v33 + 1888);
  v33[1855] = &unk_1F4CD5E28;
  sub_1D0D4F978(a32);
  sub_1D0D4F978(a33);
  sub_1D0D4FA90(v33);
  _Unwind_Resume(*(v37 - 128));
}

void raven::RavenPNTEstimator::Reset(raven::RavenPNTEstimator *this)
{
  LOWORD(v14) = 12;
  v19 = 2;
  v2 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Resetting estimator");
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v8) = v2;
  }

  else
  {
    v8 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v14, &v19, "%s", v3, v4, v5, v6, v7, v8);
  sub_1D0D859D4(this + 17000, *(this + 2126));
  *(this + 2125) = this + 17008;
  *(this + 1063) = 0u;
  *(this + 2760) = 0;
  *(this + 173) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 174) = _Q0;
  sub_1D0D75810(this + 2920);
  sub_1D0D75810(this + 8872);
  *(this + 14824) = 0u;
  v16 = 0x10000001CLL;
  v14 = &unk_1F4CE0A20;
  v15 = xmmword_1D0E843A0;
  v17 = &v18;
  sub_1D0B894B0(this + 14840, &v14);
  sub_1D0D84F48(&v14);
}

void *sub_1D0D4F838(void *result)
{
  v1 = 2100;
  do
  {
    result[v1] = &unk_1F4CE36E0;
    v1 -= 6;
  }

  while (v1 * 8);
  *result = &unk_1F4CE3698;
  return result;
}

void *sub_1D0D4F884(void *result)
{
  v1 = 2100;
  do
  {
    result[v1] = &unk_1F4CE3C98;
    v1 -= 6;
  }

  while (v1 * 8);
  *result = &unk_1F4CE3C50;
  return result;
}

void *sub_1D0D4F8D0(void *result)
{
  result[1] = &unk_1F4CDFD88;
  result[322] = &unk_1F4CD5B78;
  *result = &unk_1F4CD5B78;
  return result;
}

uint64_t sub_1D0D4F978(uint64_t a1)
{
  *a1 = &unk_1F4CE3F68;
  v3 = (a1 + 5920);
  sub_1D0D83948(&v3);
  *a1 = &unk_1F4CE4100;
  *(a1 + 3600) = &unk_1F4CD5E28;
  *(a1 + 672) = &unk_1F4CD5E28;
  *(a1 + 480) = &unk_1F4CD5E28;
  *(a1 + 256) = &unk_1F4CD5E28;
  *(a1 + 64) = &unk_1F4CD5E28;
  return a1;
}

uint64_t sub_1D0D4FA90(uint64_t a1)
{
  *a1 = &unk_1F4CE0150;
  if (*(a1 + 2759) < 0)
  {
    operator delete(*(a1 + 2736));
  }

  if (*(a1 + 2735) < 0)
  {
    operator delete(*(a1 + 2712));
  }

  if (*(a1 + 2592) == 1)
  {
    *(a1 + 2592) = 0;
  }

  sub_1D0BCB540(a1 + 2568, *(a1 + 2576));
  if (*(a1 + 2440) == 1)
  {
    *(a1 + 2448) = &unk_1F4CEF598;
    v3 = (a1 + 2544);
    sub_1D0BBBD80(&v3);
    *(a1 + 2440) = 0;
  }

  if (*(a1 + 2288) == 1)
  {
    *(a1 + 2288) = 0;
  }

  if (*(a1 + 2152) == 1)
  {
    *(a1 + 2152) = 0;
  }

  if (*(a1 + 2000) == 1)
  {
    *(a1 + 2000) = 0;
  }

  if (*(a1 + 1848) == 1)
  {
    *(a1 + 1848) = 0;
  }

  if (*(a1 + 1408) == 1)
  {
    *(a1 + 1408) = 0;
  }

  if (*(a1 + 1208) == 1)
  {
    *(a1 + 1208) = 0;
  }

  if (*(a1 + 232) == 1)
  {
    *(a1 + 232) = 0;
  }

  sub_1D0D4D068((a1 + 8));
  return a1;
}