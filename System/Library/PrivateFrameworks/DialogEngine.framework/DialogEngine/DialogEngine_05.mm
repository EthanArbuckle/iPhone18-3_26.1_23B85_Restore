void sub_100049224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 89) < 0)
  {
    operator delete(*(v43 - 112));
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100049530(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_100001FDC(&v8, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || (sub_100039B20() & 1) != 0)
  {
    goto LABEL_9;
  }

  v4 = (v8 + 48);
  v5 = *(v8 + 71);
  if (v5 < 0)
  {
    if (*(v8 + 56) != 8)
    {
      goto LABEL_9;
    }

    v4 = *v4;
  }

  else if (v5 != 8)
  {
    goto LABEL_9;
  }

  if (*v4 == 0x65746164696C6176)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) > 2;
    goto LABEL_10;
  }

LABEL_9:
  sub_100039B10(a2);
  v6 = 0;
LABEL_10:
  v11 = &v8;
  sub_100002260(&v11);
  return v6;
}

void sub_10004963C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100002260(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_100049658(_BYTE *a1, const char *a2)
{
  v2 = a2;
  v4 = "false";
  if (a2)
  {
    v4 = "true";
  }

  result = siri::dialogengine::Log::Info("ValidationContext::SetErrorsMode(%s)", a2, v4);
  *a1 = v2;
  return result;
}

uint64_t sub_1000496B8(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = "false";
  if (a2)
  {
    v4 = "true";
  }

  result = siri::dialogengine::Log::Info("ValidationContext::SetPedanticMode(%s)", a2, v4);
  *(a1 + 1) = v2;
  return result;
}

uint64_t sub_100049710(_BYTE *a1)
{
  if (*a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1[1];
  }

  return v1 & 1;
}

uint64_t sub_10004972C(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = "false";
  if (a2)
  {
    v4 = "true";
  }

  result = siri::dialogengine::Log::Info("ValidationContext::SetQuietMode(%s)", a2, v4);
  *(a1 + 2) = v2;
  return result;
}

uint64_t sub_100049784(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = "false";
  if (a2)
  {
    v4 = "true";
  }

  result = siri::dialogengine::Log::Info("ValidationContext::SetXcodeMode(%s)", a2, v4);
  *(a1 + 3) = v2;
  return result;
}

uint64_t sub_1000497E4(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = "false";
  if (a2)
  {
    v4 = "true";
  }

  result = siri::dialogengine::Log::Info("ValidationContext::SetAttrsMode(%s)", a2, v4);
  *(a1 + 4) = v2;
  return result;
}

uint64_t sub_10004983C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 1);
  }

  return v1 & 1;
}

uint64_t sub_100049858(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = "false";
  if (a2)
  {
    v4 = "true";
  }

  result = siri::dialogengine::Log::Info("ValidationContext::SetCheckSnippetDialogIds(%s)", a2, v4);
  *(a1 + 5) = v2;
  return result;
}

BOOL sub_1000498F4(uint64_t a1, int a2, uint64_t a3, const void **a4, unint64_t a5)
{
  memset(&v34, 0, sizeof(v34));
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (*a1)
      {
        goto LABEL_60;
      }

      v9 = "warning";
      v10 = 48;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_60;
      }

      v9 = "error";
      v10 = 56;
    }

LABEL_15:
    ++*(a1 + v10);
    std::string::assign(&v34, v9);
    if ((*(a1 + 2) & 1) == 0)
    {
      if (*(a4 + 23) >= 0)
      {
        v12 = *(a4 + 23);
      }

      else
      {
        v12 = a4[1];
      }

      if (v12)
      {
        sub_1000094C0(__p, v12 + 1);
        if (v33 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (*(a4 + 23) >= 0)
        {
          v14 = a4;
        }

        else
        {
          v14 = *a4;
        }

        memmove(v13, v14, v12);
        *(v13 + v12) = 58;
        if (v33 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        if (v33 >= 0)
        {
          v16 = HIBYTE(v33);
        }

        else
        {
          v16 = __p[1];
        }

        sub_1000027F4(&std::cout, v15, v16);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p[0]);
        }

        if (a5)
        {
          std::to_string(&v31, a5);
          v17 = std::string::append(&v31, ":");
          v18 = *&v17->__r_.__value_.__l.__data_;
          v33 = v17->__r_.__value_.__r.__words[2];
          *__p = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          if (v33 >= 0)
          {
            v19 = __p;
          }

          else
          {
            v19 = __p[0];
          }

          if (v33 >= 0)
          {
            v20 = HIBYTE(v33);
          }

          else
          {
            v20 = __p[1];
          }

          sub_1000027F4(&std::cout, v19, v20);
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }
        }

        sub_1000027F4(&std::cout, " ", 1);
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v34;
      }

      else
      {
        v21 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v34.__r_.__value_.__l.__size_;
      }

      v23 = sub_1000027F4(&std::cout, v21, size);
      v11 = sub_1000027F4(v23, ": ", 2);
      goto LABEL_53;
    }

    goto LABEL_60;
  }

  if (a2)
  {
    if (a2 != 1 || (*a1 & 1) != 0 || (*(a1 + 1) & 1) == 0)
    {
      goto LABEL_60;
    }

    v9 = "nit";
    v10 = 40;
    goto LABEL_15;
  }

  if ((*(a1 + 2) & 1) == 0 && (*(a1 + 3) & 1) == 0)
  {
    v11 = &std::cout;
LABEL_53:
    v24 = *(a3 + 23);
    if (v24 >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    if (v24 >= 0)
    {
      v26 = *(a3 + 23);
    }

    else
    {
      v26 = *(a3 + 8);
    }

    v27 = sub_1000027F4(v11, v25, v26);
    std::ios_base::getloc((v27 + *(*v27 - 24)));
    v28 = std::locale::use_facet(__p, &std::ctype<char>::id);
    (v28->__vftable[2].~facet_0)(v28, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
  }

LABEL_60:
  v29 = !*(a1 + 56) && ((*a1 & 1) != 0 || (*(a1 + 3) & 1) != 0 || !*(a1 + 48) && (*(a1 + 1) != 1 || !*(a1 + 40)));
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  return v29;
}

void sub_100049C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100049CDC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  LOBYTE(v3) = 0;
  return sub_1000498F4(a1, 0, a2, &v3, 0);
}

void sub_100049D5C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {

      sub_100039984(a1, a2);
    }
  }

  else if (*(a1 + 24))
  {
    sub_10000623C(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = *a2;
    v3 = (a2 + 8);
    v4 = *(a2 + 8);
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = *(a2 + 16);
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }
}

_BYTE *sub_100049E08@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10000A9C0(a1 + 48, a2);
  if ((a1 + 56) == result)
  {

    return sub_10000143C(a3, &unk_10006B9FB);
  }

  else if (result[79] < 0)
  {
    v7 = *(result + 7);
    v8 = *(result + 8);

    return sub_100001C60(a3, v7, v8);
  }

  else
  {
    v6 = *(result + 56);
    *(a3 + 16) = *(result + 9);
    *a3 = v6;
  }

  return result;
}

void sub_100049EA4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  if (*(a1 + 47) < 0)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
  }

  v2 = (a1 + 56);
  sub_10002A374(a1 + 48, *(a1 + 56));
  *(a1 + 48) = v2;
  *v2 = 0;
  v4 = *(a1 + 80);
  v3 = (a1 + 80);
  *(v3 - 2) = 0;
  sub_10000623C((v3 - 1), v4);
  *v3 = 0;
  v3[1] = 0;
  *(v3 - 1) = v3;
}

void sub_100049F34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100001C60(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v7 = __p;
  v4 = sub_10004DA68(a1, __p);
  std::string::operator=((v4 + 56), a2);
  std::string::operator=((v4 + 80), (a2 + 24));
  if (v4 + 56 != a2)
  {
    sub_10004D70C((v4 + 104), *(a2 + 48), (a2 + 56));
    sub_100036A4C((v4 + 128), *(a2 + 72), (a2 + 80));
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10004A00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004A028(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    siri::dialogengine::Log::Error("Null config passed to ReadCodegenConfigFile", 0);
    return 0;
  }

  v2 = (a2 + 8);
  sub_10004D9CC(a2, *(a2 + 8));
  *a2 = v2;
  *(a2 + 16) = 0;
  *v2 = 0;
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    if (siri::dialogengine::FileExists())
    {
      v20 = 1;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      memset(v16, 0, sizeof(v16));
      v18[0] = 0;
      v17 = v18;
      v19[1] = 0;
      v19[0] = 0;
      v18[1] = 0;
      v18[2] = v19;
      YAML::LoadFile(a1);
    }

    v7 = sub_1000027F4(&std::cout, "Error: Cannot find codegen config file: ", 40);
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    v11 = sub_1000027F4(v7, v9, v10);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v15, &std::ctype<char>::id);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v15);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  siri::dialogengine::Log::Debug("No codegen config file specified", v4);
  return 1;
}

void sub_10004B1F8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, std::locale a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, __int128 a55, std::string::size_type a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (STACK[0x378])
  {
    sub_100005EB4(STACK[0x378]);
  }

  sub_10003D6C8(&STACK[0x388]);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::operator+<char>();
    siri::dialogengine::ExceptionDetails();
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      operator delete(STACK[0x270]);
    }

    v69 = sub_1000027F4(&std::cout, "Error: ", 7);
    if (SLOBYTE(STACK[0x367]) >= 0)
    {
      v70 = &STACK[0x350];
    }

    else
    {
      v70 = STACK[0x350];
    }

    if (SLOBYTE(STACK[0x367]) >= 0)
    {
      v71 = LOBYTE(STACK[0x367]);
    }

    else
    {
      v71 = STACK[0x358];
    }

    v72 = sub_1000027F4(v69, v70, v71);
    sub_10000FD6C(v72);
    if (SLOBYTE(STACK[0x367]) < 0)
    {
      operator delete(STACK[0x350]);
    }

    __cxa_end_catch();
  }

  else
  {
    if (a2 != 2)
    {
      sub_10004D970(&STACK[0x3C0]);
      sub_10003D6C8(v66 - 192);
      _Unwind_Resume(a1);
    }

    v73 = __cxa_begin_catch(a1);
    std::operator+<char>();
    v74 = std::string::append(&a61, " ");
    v75 = *&v74->__r_.__value_.__l.__data_;
    a56 = v74->__r_.__value_.__r.__words[2];
    a55 = v75;
    v74->__r_.__value_.__l.__size_ = 0;
    v74->__r_.__value_.__r.__words[2] = 0;
    v74->__r_.__value_.__r.__words[0] = 0;
    v76 = (*(*v73 + 16))(v73);
    v77 = std::string::append(&a55, v76);
    v78 = *&v77->__r_.__value_.__l.__data_;
    STACK[0x280] = v77->__r_.__value_.__r.__words[2];
    *&STACK[0x270] = v78;
    v77->__r_.__value_.__l.__size_ = 0;
    v77->__r_.__value_.__r.__words[2] = 0;
    v77->__r_.__value_.__r.__words[0] = 0;
    v79 = std::string::append(&STACK[0x270], "");
    v80 = *&v79->__r_.__value_.__l.__data_;
    STACK[0x360] = v79->__r_.__value_.__r.__words[2];
    *&STACK[0x350] = v80;
    v79->__r_.__value_.__l.__size_ = 0;
    v79->__r_.__value_.__r.__words[2] = 0;
    v79->__r_.__value_.__r.__words[0] = 0;
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      operator delete(STACK[0x270]);
    }

    if (SHIBYTE(a56) < 0)
    {
      operator delete(a55);
    }

    if (a66 < 0)
    {
      operator delete(a61);
    }

    v81 = sub_1000027F4(&std::cout, "Error: ", 7);
    if (SLOBYTE(STACK[0x367]) >= 0)
    {
      v82 = &STACK[0x350];
    }

    else
    {
      v82 = STACK[0x350];
    }

    if (SLOBYTE(STACK[0x367]) >= 0)
    {
      v83 = LOBYTE(STACK[0x367]);
    }

    else
    {
      v83 = STACK[0x358];
    }

    v84 = sub_1000027F4(v81, v82, v83);
    sub_10000FD6C(v84);
    if (SLOBYTE(STACK[0x367]) < 0)
    {
      operator delete(STACK[0x350]);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x10004AE20);
}

void sub_10004B8CC(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*a1 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(a1 + 31) < 0)
    {
      sub_100001C60(&__dst, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      __dst = *(a1 + 8);
      v17 = *(a1 + 24);
    }

    sub_1000415A8(exception, &__dst);
  }

  sub_100041BB0(a1);
  v6 = *(a1 + 48);
  sub_10000143C(__p, a2);
  v7 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = sub_1000449FC(v6, __p, &v12);
  if (v13)
  {
    sub_100005EB4(v13);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100005EB4(v9);
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  *a3 = 1;
  *(a3 + 32) = v10;
  *(a3 + 40) = v9;
  *(a3 + 48) = v8;
}

uint64_t sub_10004BA70(uint64_t a1)
{
  sub_100024C08(v14);
  v2 = sub_1000027F4(&v15, "//\n", 3);
  v3 = sub_1000027F4(v2, "// ", 3);
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

  v7 = sub_1000027F4(v3, v5, v6);
  v8 = sub_1000027F4(v7, "\n", 1);
  v9 = sub_1000027F4(v8, "//\n", 3);
  v10 = sub_1000027F4(v9, "// GENERATED CODE. You shouldn't be editing this file.\n", 55);
  v11 = sub_1000027F4(v10, "//\n", 3);
  sub_1000027F4(v11, "\n", 1);
  std::stringbuf::str();
  v15 = v12;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10004BC84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000012E8(va);
  _Unwind_Resume(a1);
}

void sub_10004BC98(uint64_t a1@<X0>, void **a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100001C60(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v9 = *(a1 + 16);
  }

  if (v9 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = __toupper(*v3);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  *v5 = v4;
  if (v9 >= 0)
  {
    v6 = HIBYTE(v9);
  }

  else
  {
    v6 = __p[1];
  }

  sub_1000094C0(a2, v6 + 8);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  if (v6)
  {
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    memmove(a2, v7, v6);
  }

  strcpy(a2 + v6, "Semantic");
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10004BD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10004BDB8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100001C60(a4, *a1, *(a1 + 1));
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = *a1;
    *&a4->__r_.__value_.__l.__data_ = *a1;
    a4->__r_.__value_.__r.__words[2] = *(a1 + 2);
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  sub_100049E08(a3, a1, &__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=(a4, &__str);
    v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v10 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_11:
  v11 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  v12 = a4->__r_.__value_.__r.__words[0];
  v13 = a4->__r_.__value_.__l.__size_;
  if ((v11 & 0x80u) == 0)
  {
    v14 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = a4->__r_.__value_.__l.__size_;
  }

  if ((v11 & 0x80u) == 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = a4->__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    v16 = &v15[v14];
    v17 = v15;
    while (2)
    {
      for (i = 0; i != 4; ++i)
      {
        if (*v17 == asc_100070F4E[i])
        {
          if (v17 != v16)
          {
            v19 = (v17 - v15);
            if (v19 != -1)
            {
              while (2)
              {
                if ((v11 & 0x80u) == 0)
                {
                  v12 = a4;
                }

                v19[v12] = 95;
                v20 = v19 + 1;
                v11 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
                v12 = a4->__r_.__value_.__r.__words[0];
                v13 = a4->__r_.__value_.__l.__size_;
                if ((v11 & 0x80u) == 0)
                {
                  v21 = a4;
                }

                else
                {
                  v21 = a4->__r_.__value_.__r.__words[0];
                }

                if ((v11 & 0x80u) == 0)
                {
                  v22 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v22 = a4->__r_.__value_.__l.__size_;
                }

                if (v22 > v20)
                {
                  v23 = (v21 + v22);
                  v24 = &v20[v21];
LABEL_36:
                  v25 = 0;
                  while (*v24 != asc_100070F4E[v25])
                  {
                    if (++v25 == 4)
                    {
                      if (++v24 != v23)
                      {
                        goto LABEL_36;
                      }

                      goto LABEL_43;
                    }
                  }

                  if (v24 != v23)
                  {
                    v19 = &v24[-v21];
                    if (v19 != -1)
                    {
                      continue;
                    }
                  }
                }

                break;
              }
            }
          }

          goto LABEL_43;
        }
      }

      if (++v17 != v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_43:
  if ((v11 & 0x80) != 0)
  {
    if (!v13)
    {
      goto LABEL_53;
    }

    LOBYTE(v12) = *v12;
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_53;
    }
  }

  else if (!v11 || (v12 & 0x80) != 0)
  {
    goto LABEL_53;
  }

  if ((_DefaultRuneLocale.__runetype[v12] & 0x400) != 0)
  {
    std::operator+<char>();
    if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a4->__r_.__value_.__l.__data_);
    }

    *&v8 = __str.__r_.__value_.__r.__words[0];
    *a4 = __str;
  }

LABEL_53:
  v26 = (a2 + 248);
  v27 = *(a2 + 271);
  if ((v27 & 0x80000000) == 0)
  {
    if (v27 != 5)
    {
      return *&v8;
    }

    if (*v26 != 1701867637 || *(a2 + 252) != 114)
    {
      goto LABEL_68;
    }

LABEL_77:
    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = a4->__r_.__value_.__r.__words[0];
      v36 = a4->__r_.__value_.__l.__size_;
    }

    siri::dialogengine::StringToUpper();
    goto LABEL_81;
  }

  if (*(a2 + 256) == 5 && **v26 == 1701867637 && *(*v26 + 4) == 114)
  {
    goto LABEL_77;
  }

  if (*(a2 + 256) != 5)
  {
    return *&v8;
  }

  v26 = *v26;
LABEL_68:
  v30 = *v26;
  v31 = v26[4];
  if (v30 != 1702326124 || v31 != 114)
  {
    return *&v8;
  }

  if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = a4->__r_.__value_.__r.__words[0];
    v34 = a4->__r_.__value_.__l.__size_;
  }

  siri::dialogengine::StringToLower();
LABEL_81:
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(a4->__r_.__value_.__l.__data_);
  }

  *&v8 = __str.__r_.__value_.__r.__words[0];
  *a4 = __str;
  return *&v8;
}

void sub_10004C0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10004C0FC(siri::dialogengine::DialogMetadataReader *a1, uint64_t a2, uint64_t a3)
{
  siri::dialogengine::DialogMetadataReader::GetSemanticConcept(__p, a1);
  v6 = sub_10000A9C0(a3, __p);
  v7 = v6;
  v8 = a3 + 8;
  if (a3 + 8 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 + 56;
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
  }

  v65[0] = 0;
  v65[1] = 0;
  v66 = 0;
  if (v8 == v7)
  {
    goto LABEL_14;
  }

  if (*(v7 + 103) < 0)
  {
    sub_100001C60(__p, *(v7 + 80), *(v7 + 88));
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65[0]);
    }
  }

  else
  {
    *__p = *(v7 + 80);
    v68 = *(v7 + 96);
  }

  *v65 = *__p;
  v66 = v68;
  v10 = HIBYTE(v68);
  if (v68 < 0)
  {
    v10 = __p[1];
  }

  if (!v10)
  {
LABEL_14:
    siri::dialogengine::DialogMetadataReader::GetSemanticConcept(v63, a1);
    sub_10004BC98(v63, __p);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65[0]);
    }

    *v65 = *__p;
    v66 = v68;
    HIBYTE(v68) = 0;
    LOBYTE(__p[0]) = 0;
    if (v64 < 0)
    {
      operator delete(v63[0]);
    }
  }

  sub_10000143C(__p, "swift");
  siri::dialogengine::AddExtension();
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
  }

  siri::dialogengine::JoinPath();
  v11 = sub_1000027F4(&std::cout, "Write Swift enum: ", 18);
  if ((v62 & 0x80u) == 0)
  {
    v12 = &v60;
  }

  else
  {
    v12 = v60;
  }

  if ((v62 & 0x80u) == 0)
  {
    v13 = v62;
  }

  else
  {
    v13 = v61;
  }

  v14 = sub_1000027F4(v11, v12, v13);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(__p, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  sub_1000018DC(__p, &v60);
  v16 = v70;
  if (v70)
  {
    sub_10004BA70(v63);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v59;
    }

    else
    {
      v17 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v59.__r_.__value_.__l.__size_;
    }

    sub_1000027F4(__p, v17, size);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (v8 != v7 && *(v7 + 144))
    {
      v19 = *(v7 + 128);
      if (v19 != (v7 + 136))
      {
        do
        {
          v20 = sub_1000027F4(__p, "// swiftlint:disable ", 21);
          v21 = *(v19 + 55);
          if (v21 >= 0)
          {
            v22 = (v19 + 4);
          }

          else
          {
            v22 = v19[4];
          }

          if (v21 >= 0)
          {
            v23 = *(v19 + 55);
          }

          else
          {
            v23 = v19[5];
          }

          v24 = sub_1000027F4(v20, v22, v23);
          sub_1000027F4(v24, "\n", 1);
          v25 = v19[1];
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
              v26 = v19[2];
              v27 = *v26 == v19;
              v19 = v26;
            }

            while (!v27);
          }

          v19 = v26;
        }

        while (v26 != (v7 + 136));
      }

      sub_1000027F4(__p, "\n", 1);
    }

    v28 = sub_1000027F4(__p, "/// Semantic concept: ", 22);
    siri::dialogengine::DialogMetadataReader::GetSemanticConcept(&v59, a1);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v59;
    }

    else
    {
      v29 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = v59.__r_.__value_.__l.__size_;
    }

    v31 = sub_1000027F4(v28, v29, v30);
    sub_1000027F4(v31, "\n", 1);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    v32 = sub_1000027F4(__p, "internal enum ", 14);
    if (v66 >= 0)
    {
      v33 = v65;
    }

    else
    {
      v33 = v65[0];
    }

    if (v66 >= 0)
    {
      v34 = HIBYTE(v66);
    }

    else
    {
      v34 = v65[1];
    }

    v35 = sub_1000027F4(v32, v33, v34);
    sub_1000027F4(v35, ": String, CaseIterable {\n", 25);
    sub_10000143C(&v59, &unk_10006B9FB);
    v57 = v16;
    for (i = siri::dialogengine::DialogMetadataReader::GetNextSemanticValue(a1); i; i = siri::dialogengine::DialogMetadataReader::GetNextSemanticValue(a1))
    {
      v37 = *(i + 47);
      if (v37 >= 0)
      {
        v38 = *(i + 47);
      }

      else
      {
        v38 = *(i + 32);
      }

      v39 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v39 = v59.__r_.__value_.__l.__size_;
      }

      if (v38 != v39 || (v37 >= 0 ? (v40 = (i + 24)) : (v40 = *(i + 24)), (v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v41 = &v59) : (v41 = v59.__r_.__value_.__r.__words[0]), memcmp(v40, v41, v38)))
      {
        sub_10004BDB8((i + 24), a2, v9, &v58);
        v42 = sub_1000027F4(__p, "    case ", 9);
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v58;
        }

        else
        {
          v43 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44 = v58.__r_.__value_.__l.__size_;
        }

        v45 = sub_1000027F4(v42, v43, v44);
        v46 = sub_1000027F4(v45, " = ", 4);
        v47 = *(i + 47);
        if (v47 >= 0)
        {
          v48 = i + 24;
        }

        else
        {
          v48 = *(i + 24);
        }

        if (v47 >= 0)
        {
          v49 = *(i + 47);
        }

        else
        {
          v49 = *(i + 32);
        }

        v50 = sub_1000027F4(v46, v48, v49);
        sub_1000027F4(v50, "\n", 2);
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }
      }

      std::string::operator=(&v59, (i + 24));
    }

    sub_1000027F4(__p, "}\n", 2);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((__p + *(__p[0] - 3)), *&v69[*(__p[0] - 3)] | 4);
    }

    v16 = v57;
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v51 = sub_1000027F4(&std::cout, "Error: Failed to write to file: ", 32);
    if ((v62 & 0x80u) == 0)
    {
      v52 = &v60;
    }

    else
    {
      v52 = v60;
    }

    if ((v62 & 0x80u) == 0)
    {
      v53 = v62;
    }

    else
    {
      v53 = v61;
    }

    v54 = sub_1000027F4(v51, v52, v53);
    std::ios_base::getloc((v54 + *(*v54 - 24)));
    v55 = std::locale::use_facet(&v59, &std::ctype<char>::id);
    (v55->__vftable[2].~facet_0)(v55, 10);
    std::locale::~locale(&v59);
    std::ostream::put();
    std::ostream::flush();
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  if (v62 < 0)
  {
    operator delete(v60);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65[0]);
  }

  return v16 != 0;
}

void sub_10004C85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::locale a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, std::locale a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004C980(uint64_t a1, const char *a2)
{
  v3 = (a1 + 168);
  v4 = a1 + 168;
  if (*(a1 + 191) < 0)
  {
    v4 = *v3;
  }

  siri::dialogengine::Log::Debug("mOutputDir: %s", a2, v4);
  v6 = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    v6 = *(a1 + 24);
  }

  siri::dialogengine::Log::Debug("mTemplateDir: %s", v5, v6);
  v8 = (a1 + 120);
  v9 = a1 + 120;
  if (*(a1 + 143) < 0)
  {
    v9 = *v8;
  }

  siri::dialogengine::Log::Debug("mCategory: %s", v7, v9);
  v11 = (a1 + 247);
  v12 = (a1 + 224);
  v13 = a1 + 224;
  if (*(a1 + 247) < 0)
  {
    v13 = *v12;
  }

  siri::dialogengine::Log::Debug("mCodegenConfigPath: %s", v10, v13);
  v15 = (a1 + 248);
  v16 = (a1 + 248);
  if (*(a1 + 271) < 0)
  {
    v16 = *v15;
  }

  siri::dialogengine::Log::Debug("mSwiftCaseStyle: %s", v14, v16);
  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 32))
    {
      goto LABEL_13;
    }

LABEL_22:
    v20 = sub_1000027F4(&std::cout, "Error: No template directory specified. Try --templateDir.", 58);
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(&v124, &std::ctype<char>::id);
    (v21->__vftable[2].~facet_0)(v21, 10);
    goto LABEL_38;
  }

  if (!*(a1 + 47))
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((siri::dialogengine::DirExists() & 1) == 0)
  {
    v22 = sub_1000027F4(&std::cout, "Error: The specified template directory does not exist: ", 56);
    v23 = *(a1 + 47);
    if (v23 >= 0)
    {
      v24 = a1 + 24;
    }

    else
    {
      v24 = *(a1 + 24);
    }

    if (v23 >= 0)
    {
      v25 = *(a1 + 47);
    }

    else
    {
      v25 = *(a1 + 32);
    }

LABEL_37:
    v29 = sub_1000027F4(v22, v24, v25);
    std::ios_base::getloc((v29 + *(*v29 - 24)));
    v30 = std::locale::use_facet(&v124, &std::ctype<char>::id);
    (v30->__vftable[2].~facet_0)(v30, 10);
    goto LABEL_38;
  }

  if ((*(a1 + 191) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 176))
    {
      goto LABEL_16;
    }
  }

  else if (*(a1 + 191))
  {
LABEL_16:
    if (siri::dialogengine::DirExists())
    {
      sub_10003B6D4(a1, &v124);
      locale = v124.__locale_;
      v17 = v125;
      if (v124.__locale_ == v125)
      {
        v33 = sub_1000027F4(&std::cout, "No categories defined in the metadata config file", 49);
LABEL_114:
        std::ios_base::getloc((v33 + *(*v33 - 24)));
        v66 = std::locale::use_facet(&v123, &std::ctype<char>::id);
        (v66->__vftable[2].~facet_0)(v66, 10);
        std::locale::~locale(&v123);
        std::ostream::put();
        std::ostream::flush();
LABEL_115:
        i = 0;
LABEL_189:
        v123.__r_.__value_.__r.__words[0] = &v124;
        sub_100044620(&v123);
        return i;
      }

      v19 = *(a1 + 143);
      if (v19 < 0)
      {
        if (!*(a1 + 128))
        {
          goto LABEL_78;
        }
      }

      else if (!*(a1 + 143))
      {
        goto LABEL_78;
      }

      if (v19 >= 0)
      {
        v34 = *(a1 + 143);
      }

      else
      {
        v34 = *(a1 + 128);
      }

      while (1)
      {
        v35 = *(locale + 23);
        v36 = v35;
        if ((v35 & 0x80u) != 0)
        {
          v35 = *(locale + 1);
        }

        if (v35 != v34)
        {
          break;
        }

        v37 = v36 >= 0 ? locale : *locale;
        v38 = *v8;
        v39 = (v19 >= 0 ? a1 + 120 : *v8);
        if (memcmp(v37, v39, v34))
        {
          break;
        }

        locale = (locale + 32);
        if (locale == v17)
        {
          locale = v17;
          goto LABEL_77;
        }
      }

      if (locale != v17)
      {
        v40 = (locale + 32);
        if ((locale + 32) != v17)
        {
          do
          {
            v41 = *(v40 + 23);
            if (v41 >= 0)
            {
              v42 = *(v40 + 23);
            }

            else
            {
              v42 = *(v40 + 1);
            }

            v43 = *(a1 + 143);
            v44 = v43;
            if ((v43 & 0x80u) != 0)
            {
              v43 = *(a1 + 128);
            }

            if (v42 == v43)
            {
              v45 = v41 >= 0 ? v40 : *v40;
              v46 = *v8;
              v47 = (v44 >= 0 ? a1 + 120 : *v8);
              if (!memcmp(v45, v47, v42))
              {
                if (*(locale + 23) < 0)
                {
                  operator delete(*locale);
                }

                v48 = *v40;
                *(locale + 2) = *(v40 + 2);
                *locale = v48;
                *(v40 + 23) = 0;
                *v40 = 0;
                *(locale + 24) = *(v40 + 24);
                locale = (locale + 32);
              }
            }

            v40 += 2;
          }

          while (v40 != v17);
          v17 = v125;
        }
      }

LABEL_77:
      sub_1000423B4(&v124, locale, v17);
      if (v124.__locale_ == v125)
      {
        v53 = sub_1000027F4(&std::cout, "Error: The specified category '", 31);
        v54 = *(a1 + 143);
        if (v54 >= 0)
        {
          v55 = a1 + 120;
        }

        else
        {
          v55 = *(a1 + 120);
        }

        if (v54 >= 0)
        {
          v56 = *(a1 + 143);
        }

        else
        {
          v56 = *(a1 + 128);
        }

        v57 = sub_1000027F4(v53, v55, v56);
        v58 = sub_1000027F4(v57, "' was not found in the metadata config file.", 44);
        sub_10000FD6C(v58);
        goto LABEL_115;
      }

LABEL_78:
      v49 = *v11;
      if (v49 < 0)
      {
        v49 = *(a1 + 232);
      }

      if (v49 && (siri::dialogengine::FileExists() & 1) == 0)
      {
        v51 = sub_1000027F4(&std::cout, "Error: The specified codegen config file does not exist: ", 57);
        v52 = 232;
LABEL_107:
        v62 = *v11;
        v63 = *(a1 + v52);
        if (v62 >= 0)
        {
          v64 = v12;
        }

        else
        {
          v64 = *v12;
        }

        if (v62 >= 0)
        {
          v65 = *v11;
        }

        else
        {
          v65 = v63;
        }

        v33 = sub_1000027F4(v51, v64, v65);
        goto LABEL_114;
      }

      v50 = (a1 + 271);
      if ((*(a1 + 271) & 0x8000000000000000) != 0)
      {
        if (*(a1 + 256))
        {
          v59 = *v15;
          goto LABEL_95;
        }
      }

      else if (*(a1 + 271))
      {
LABEL_95:
        siri::dialogengine::StringToLower();
        if (*v50 < 0)
        {
          operator delete(*v15);
        }

        *v15 = *&v123.__r_.__value_.__l.__data_;
        *(a1 + 264) = *(&v123.__r_.__value_.__l + 2);
        v60 = *v50;
        if (v60 < 0)
        {
          if (*(a1 + 256) != 4)
          {
LABEL_104:
            if (sub_100019680((a1 + 248), "lower") && sub_100019680((a1 + 248), "upper"))
            {
              v51 = sub_1000027F4(&std::cout, "Error: Invalid value for --swiftCaseStyle: ", 43);
              v52 = 256;
              v11 = (a1 + 271);
              v12 = (a1 + 248);
              goto LABEL_107;
            }

LABEL_116:
            memset(&v123, 0, sizeof(v123));
            v67 = *(a1 + 143);
            if (v67 < 0)
            {
              v67 = *(a1 + 128);
            }

            if (v67)
            {
              std::string::operator=(&v123, (a1 + 120));
            }

            else
            {
              std::string::assign(&v123, "(All)");
            }

            v68 = sub_1000027F4(&std::cout, "Generate code for metadata\n", 27);
            v69 = sub_1000027F4(v68, "\tOutput directory: ", 19);
            v70 = *(a1 + 191);
            if (v70 >= 0)
            {
              v71 = v3;
            }

            else
            {
              v71 = *(a1 + 168);
            }

            if (v70 >= 0)
            {
              v72 = *(a1 + 191);
            }

            else
            {
              v72 = *(a1 + 176);
            }

            v73 = sub_1000027F4(v69, v71, v72);
            v74 = sub_1000027F4(v73, "\n", 1);
            v75 = sub_1000027F4(v74, "\tTemplate directory: ", 21);
            v76 = *(a1 + 47);
            if (v76 >= 0)
            {
              v77 = a1 + 24;
            }

            else
            {
              v77 = *(a1 + 24);
            }

            if (v76 >= 0)
            {
              v78 = *(a1 + 47);
            }

            else
            {
              v78 = *(a1 + 32);
            }

            v79 = sub_1000027F4(v75, v77, v78);
            v80 = sub_1000027F4(v79, "\n", 1);
            v81 = sub_1000027F4(v80, "\tCategory: ", 11);
            if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v82 = &v123;
            }

            else
            {
              v82 = v123.__r_.__value_.__r.__words[0];
            }

            if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v123.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v123.__r_.__value_.__l.__size_;
            }

            v84 = sub_1000027F4(v81, v82, size);
            v85 = sub_1000027F4(v84, "\n", 1);
            v86 = sub_1000027F4(v85, "\tConfig file: ", 14);
            if (*v11 < 0)
            {
              if (*(a1 + 232))
              {
                v87 = *v12;
              }

              else
              {
                v87 = "(None)";
              }
            }

            else if (*v11)
            {
              v87 = (a1 + 224);
            }

            else
            {
              v87 = "(None)";
            }

            v88 = strlen(v87);
            v89 = sub_1000027F4(v86, v87, v88);
            v90 = sub_1000027F4(v89, "\n", 1);
            v91 = sub_1000027F4(v90, "\tSwift case style: ", 19);
            v92 = *(a1 + 271);
            if (v92 >= 0)
            {
              v93 = a1 + 248;
            }

            else
            {
              v93 = *(a1 + 248);
            }

            if (v92 >= 0)
            {
              v94 = *(a1 + 271);
            }

            else
            {
              v94 = *(a1 + 256);
            }

            v95 = sub_1000027F4(v91, v93, v94);
            std::ios_base::getloc((v95 + *(*v95 - 24)));
            v96 = std::locale::use_facet(&v121, &std::ctype<char>::id);
            (v96->__vftable[2].~facet_0)(v96, 10);
            std::locale::~locale(&v121);
            std::ostream::put();
            std::ostream::flush();
            v122[0] = 0;
            v122[1] = 0;
            v121.__locale_ = v122;
            if (sub_10004A028(a1 + 224, &v121))
            {
              v97 = v124.__locale_;
              v98 = v125;
              for (i = 1; v97 != v98; v97 = (v97 + 32))
              {
                sub_10000143C(v114, "en");
                siri::dialogengine::GetDialogMetadataFilename();
                siri::dialogengine::JoinPath();
                if (v117 < 0)
                {
                  operator delete(__p[0]);
                }

                if (v115 < 0)
                {
                  operator delete(v114[0]);
                }

                if (siri::dialogengine::FileExists())
                {
                  v99 = sub_1000027F4(&std::cout, "\nRead metadata file: ", 21);
                  if ((v120 & 0x80u) == 0)
                  {
                    v100 = &v118;
                  }

                  else
                  {
                    v100 = v118;
                  }

                  if ((v120 & 0x80u) == 0)
                  {
                    v101 = v120;
                  }

                  else
                  {
                    v101 = v119;
                  }

                  v102 = sub_1000027F4(v99, v100, v101);
                  std::ios_base::getloc((v102 + *(*v102 - 24)));
                  v103 = std::locale::use_facet(__p, &std::ctype<char>::id);
                  (v103->__vftable[2].~facet_0)(v103, 10);
                  std::locale::~locale(__p);
                  std::ostream::put();
                  std::ostream::flush();
                  siri::dialogengine::DialogMetadataReader::DialogMetadataReader(v114);
                  if (siri::dialogengine::DialogMetadataReader::Load())
                  {
                    i = sub_10004C0FC(v114, a1, &v121) & i;
                  }

                  else
                  {
                    v109 = sub_1000027F4(&std::cout, "Error: Failed to read file: ", 28);
                    if ((v120 & 0x80u) == 0)
                    {
                      v110 = &v118;
                    }

                    else
                    {
                      v110 = v118;
                    }

                    if ((v120 & 0x80u) == 0)
                    {
                      v111 = v120;
                    }

                    else
                    {
                      v111 = v119;
                    }

                    v112 = sub_1000027F4(v109, v110, v111);
                    std::ios_base::getloc((v112 + *(*v112 - 24)));
                    v113 = std::locale::use_facet(__p, &std::ctype<char>::id);
                    (v113->__vftable[2].~facet_0)(v113, 10);
                    std::locale::~locale(__p);
                    std::ostream::put();
                    std::ostream::flush();
                    i = 0;
                  }

                  siri::dialogengine::DialogMetadataReader::~DialogMetadataReader(v114);
                }

                else
                {
                  v104 = sub_1000027F4(&std::cout, "Error: The metadata file does not exist: ", 41);
                  if ((v120 & 0x80u) == 0)
                  {
                    v105 = &v118;
                  }

                  else
                  {
                    v105 = v118;
                  }

                  if ((v120 & 0x80u) == 0)
                  {
                    v106 = v120;
                  }

                  else
                  {
                    v106 = v119;
                  }

                  v107 = sub_1000027F4(v104, v105, v106);
                  std::ios_base::getloc((v107 + *(*v107 - 24)));
                  v108 = std::locale::use_facet(__p, &std::ctype<char>::id);
                  (v108->__vftable[2].~facet_0)(v108, 10);
                  std::locale::~locale(__p);
                  std::ostream::put();
                  std::ostream::flush();
                  i = 0;
                }

                if (v120 < 0)
                {
                  operator delete(v118);
                }
              }

              sub_10000FD6C(&std::cout);
            }

            else
            {
              sub_10000FD6C(&std::cout);
              i = 0;
            }

            sub_10004D9CC(&v121, v122[0]);
            if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v123.__r_.__value_.__l.__data_);
            }

            goto LABEL_189;
          }

          v61 = *v15;
        }

        else
        {
          v61 = (a1 + 248);
          if (v60 != 4)
          {
            goto LABEL_104;
          }
        }

        if (*v61 == 1701736302)
        {
          goto LABEL_116;
        }

        goto LABEL_104;
      }

      std::string::assign((a1 + 248), "none");
      goto LABEL_116;
    }

    v22 = sub_1000027F4(&std::cout, "Error: The specified output directory does not exist: ", 54);
    v28 = *(a1 + 191);
    if (v28 >= 0)
    {
      v24 = v3;
    }

    else
    {
      v24 = *(a1 + 168);
    }

    if (v28 >= 0)
    {
      v25 = *(a1 + 191);
    }

    else
    {
      v25 = *(a1 + 176);
    }

    goto LABEL_37;
  }

  v26 = sub_1000027F4(&std::cout, "Error: No output directory specified. Try --outputDir.", 54);
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v27->__vftable[2].~facet_0)(v27, 10);
LABEL_38:
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

void sub_10004D5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::locale a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, std::locale a30, char *a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_10004D9CC(&a30, a31);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  a24 = (v38 - 112);
  sub_100044620(&a24);
  _Unwind_Resume(a1);
}

uint64_t **sub_10004D70C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100032984(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v10 = sub_100036BD0(v5, &v16, v15 + 4);
          sub_100005A54(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_100032984(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_10004D89C(&v13);
  }

  if (a2 != a3)
  {
    sub_10004D8F4();
  }

  return result;
}

uint64_t sub_10004D89C(uint64_t a1)
{
  sub_10002A374(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10002A374(*a1, v2);
  }

  return a1;
}

void sub_10004D95C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100030D04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004D970(uint64_t a1)
{
  sub_10000623C(a1 + 72, *(a1 + 80));
  sub_10002A374(a1 + 48, *(a1 + 56));
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

void sub_10004D9CC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10004D9CC(a1, *a2);
    sub_10004D9CC(a1, *(a2 + 1));
    sub_10000623C((a2 + 128), *(a2 + 17));
    sub_10002A374((a2 + 104), *(a2 + 14));
    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_10004DA68(uint64_t a1, const void **a2)
{
  v2 = *sub_100005AF8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

double YAML::Directives::Directives(YAML::Directives *this)
{
  *this = 1;
  *&result = 0x200000001;
  *(this + 4) = 0x200000001;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  return result;
}

char *YAML::Directives::TranslateTagHandle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10000A9C0(a1 + 16, a2);
  if ((a1 + 24) != result)
  {
    if ((result[79] & 0x80000000) == 0)
    {
      v7 = *(result + 56);
      *(a3 + 16) = *(result + 9);
      *a3 = v7;
      return result;
    }

    v9 = *(result + 7);
    v10 = *(result + 8);
    goto LABEL_11;
  }

  v8 = *(a2 + 23);
  if ((v8 & 0x80000000) == 0)
  {
    if (v8 != 2 || *a2 != 8481)
    {
      *a3 = *a2;
      *(a3 + 16) = *(a2 + 16);
      return result;
    }

    goto LABEL_14;
  }

  v9 = *a2;
  v10 = *(a2 + 8);
  if (v10 == 2 && *v9 == 8481)
  {
LABEL_14:
    *(a3 + 23) = 18;
    strcpy(a3, "tag:yaml.org,2002:");
    return result;
  }

LABEL_11:

  return sub_100001C60(a3, v9, v10);
}

void YAML::Exception::~Exception(std::runtime_error *this)
{
  this->__vftable = off_100075328;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::runtime_error::~runtime_error(this);
}

{
  YAML::Exception::~Exception(this);

  operator delete();
}

void YAML::ParserException::~ParserException(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  operator delete();
}

void YAML::RepresentationException::~RepresentationException(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  operator delete();
}

void YAML::InvalidNode::~InvalidNode(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  operator delete();
}

void YAML::BadConversion::~BadConversion(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  operator delete();
}

void YAML::BadSubscript::~BadSubscript(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  operator delete();
}

void YAML::BadPushback::~BadPushback(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  operator delete();
}

void YAML::BadFile::~BadFile(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  operator delete();
}

uint64_t YAML::Exp::ParseHex(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(result + 8);
  }

  if (!v2)
  {
    return 0;
  }

  v4 = result;
  LODWORD(result) = 0;
  if (v3 < 0)
  {
    v4 = *v4;
  }

  do
  {
    v6 = *v4;
    v4 = (v4 + 1);
    v5 = v6;
    if ((v6 - 97) >= 6)
    {
      if ((v5 - 65) >= 6)
      {
        if ((v5 - 48) >= 0xA)
        {
          exception = __cxa_allocate_exception(0x38uLL);
          sub_10000143C(v10, "bad character found while scanning hex number");
          sub_100041860(exception, a2, v10);
          *exception = off_100075368;
        }

        v7 = -48;
      }

      else
      {
        v7 = -55;
      }
    }

    else
    {
      v7 = -87;
    }

    result = (v7 + v5 + 16 * result);
    --v2;
  }

  while (v2);
  return result;
}

void sub_10004DFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

_BYTE *sub_10004E004(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001AA8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void YAML::Exp::Escape(YAML::Exp *this@<X0>, YAML::Stream *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v32, 0, sizeof(v32));
  if (a2 >= 1)
  {
    v5 = a2;
    do
    {
      v6 = YAML::Stream::get(this);
      std::string::push_back(&v32, v6);
      --v5;
    }

    while (v5);
  }

  v7 = *(this + 4);
  v31.__r_.__value_.__r.__words[0] = *(this + 1);
  LODWORD(v31.__r_.__value_.__r.__words[1]) = v7;
  v8 = YAML::Exp::ParseHex(&v32, &v31);
  v9 = v8;
  if (HIWORD(v8) > 0x10u || (v8 & 0xFFFFF800) == 55296)
  {
    sub_100024C08(&v31);
    sub_1000027F4(&v31.__r_.__value_.__r.__words[2], "invalid unicode: ", 17);
    std::ostream::operator<<();
    exception = __cxa_allocate_exception(0x38uLL);
    v22 = *(this + 4);
    v29.__r_.__value_.__r.__words[0] = *(this + 1);
    LODWORD(v29.__r_.__value_.__r.__words[1]) = v22;
    std::stringbuf::str();
    sub_100041860(exception, &v29, &__s);
    *exception = off_100075368;
  }

  if (v8 <= 0x7F)
  {
    *(a3 + 23) = 1;
    *a3 = v8;
    goto LABEL_37;
  }

  if (v8 > 0x7FF)
  {
    if (HIWORD(v8))
    {
      *(&v29.__r_.__value_.__s + 23) = 1;
      LOWORD(v29.__r_.__value_.__l.__data_) = (v8 >> 18) | 0xF0;
      v28 = 1;
      v27[0] = (v8 >> 12) & 0x3F | 0x80;
      v27[1] = 0;
      v16 = std::string::append(&v29, v27, 1uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      __s.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&__s.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v26 = 1;
      v25[0] = (v9 >> 6) & 0x3F | 0x80;
      v25[1] = 0;
      v18 = std::string::append(&__s, v25, 1uLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v24 = 1;
      LOWORD(__p) = v9 & 0x3F | 0x80;
      v20 = std::string::append(&v31, &__p, 1uLL);
      *a3 = *v20;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (v24 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (v26 < 0)
      {
        operator delete(*v25);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (v28 < 0)
      {
        operator delete(*v27);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        v12 = v29.__r_.__value_.__r.__words[0];
        goto LABEL_36;
      }
    }

    else
    {
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = (v8 >> 12) | 0xE0;
      *(&v29.__r_.__value_.__s + 23) = 1;
      LOWORD(v29.__r_.__value_.__l.__data_) = (v8 >> 6) & 0x3F | 0x80;
      v13 = std::string::append(&__s, &v29, 1uLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v28 = 1;
      v27[0] = v9 & 0x3F | 0x80;
      v27[1] = 0;
      v15 = std::string::append(&v31, v27, 1uLL);
      *a3 = *v15;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (v28 < 0)
      {
        operator delete(*v27);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        v12 = __s.__r_.__value_.__r.__words[0];
        goto LABEL_36;
      }
    }
  }

  else
  {
    *(&v31.__r_.__value_.__s + 23) = 1;
    LOWORD(v31.__r_.__value_.__l.__data_) = (v8 >> 6) | 0xC0;
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v8 & 0x3F | 0x80;
    v11 = std::string::append(&v31, &__s, 1uLL);
    *a3 = *v11;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      v12 = v31.__r_.__value_.__r.__words[0];
LABEL_36:
      operator delete(v12);
    }
  }

LABEL_37:
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_10004E4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v46 & 1) == 0)
    {
LABEL_6:
      sub_1000012E8(&a40);
      if (*(v47 - 49) < 0)
      {
        operator delete(*(v47 - 72));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v46)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v45);
  goto LABEL_6;
}

void YAML::Exp::Escape(YAML::Exp *this@<X0>, _BYTE *a2@<X8>)
{
  v5 = YAML::Stream::get(this);
  v6 = YAML::Stream::get(this);
  if (v5 == 39 && v6 == 39)
  {
LABEL_3:
    v7 = "'";
LABEL_4:

    sub_10000143C(a2, v7);
    return;
  }

  if (v6 > 0x5Eu)
  {
    if (v6 <= 0x6Du)
    {
      if (v6 <= 0x61u)
      {
        if (v6 == 95)
        {
          v7 = "\xA0";
          goto LABEL_4;
        }

        if (v6 == 97)
        {
          v7 = "\a";
          goto LABEL_4;
        }
      }

      else
      {
        switch(v6)
        {
          case 'b':
            v7 = "\b";
            goto LABEL_4;
          case 'e':
            v7 = "\x1B";
            goto LABEL_4;
          case 'f':
            v7 = "\f";
            goto LABEL_4;
        }
      }

      goto LABEL_60;
    }

    if (v6 > 0x74u)
    {
      switch(v6)
      {
        case 'u':
          v8 = a2;
          v9 = this;
          v10 = 4;
          break;
        case 'v':
          v7 = "\v";
          goto LABEL_4;
        case 'x':
          v8 = a2;
          v9 = this;
          v10 = 2;
          break;
        default:
          goto LABEL_60;
      }

      goto LABEL_56;
    }

    if (v6 == 110)
    {
      v7 = "\n";
      goto LABEL_4;
    }

    if (v6 == 114)
    {
      v7 = "\r";
      goto LABEL_4;
    }

    if (v6 != 116)
    {
      goto LABEL_60;
    }

LABEL_44:
    v7 = "\t";
    goto LABEL_4;
  }

  if (v6 <= 0x2Fu)
  {
    if (v6 > 0x21u)
    {
      switch(v6)
      {
        case '""':
          v7 = "";
          goto LABEL_4;
        case '\'':
          goto LABEL_3;
        case '/':
          v7 = "/";
          goto LABEL_4;
      }

LABEL_60:
      v11 = v6;
      sub_100024C08(&v18);
      exception = __cxa_allocate_exception(0x38uLL);
      v13 = *(this + 4);
      v16 = *(this + 1);
      v17 = v13;
      sub_10000143C(&v14, "unknown escape character: ");
      std::string::push_back(&v14, v11);
      v15 = v14;
      memset(&v14, 0, sizeof(v14));
      sub_100041860(exception, &v16, &v15);
      *exception = off_100075368;
    }

    if (v6 != 9)
    {
      if (v6 == 32)
      {
        v7 = " ";
        goto LABEL_4;
      }

      goto LABEL_60;
    }

    goto LABEL_44;
  }

  if (v6 <= 0x4Fu)
  {
    switch(v6)
    {
      case '0':
        a2[23] = 1;
        *a2 = 0;
        return;
      case 'L':
        v7 = "\u2028";
        goto LABEL_4;
      case 'N':
        v7 = "\x85";
        goto LABEL_4;
    }

    goto LABEL_60;
  }

  if (v6 == 80)
  {
    v7 = "\u2029";
    goto LABEL_4;
  }

  if (v6 != 85)
  {
    if (v6 == 92)
    {
      v7 = "\";
      goto LABEL_4;
    }

    goto LABEL_60;
  }

  v8 = a2;
  v9 = this;
  v10 = 8;
LABEL_56:

  YAML::Exp::Escape(v9, v10, v8);
}

void sub_10004E944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      sub_1000012E8(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

void YAML::detail::memory_holder::merge(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3 != *a2)
  {
    sub_10004EAD0(v3, **a2, (*a2 + 8));
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a2 + 8);
    *a2 = v6;
    *(a2 + 8) = v5;
    if (v7)
    {

      sub_100005EB4(v7);
    }
  }
}

void sub_10004EAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100005EB4(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004EAD0(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10004F1C8(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void sub_10004ECC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_10004ED68(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004ECE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10004ED28(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10004ED68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10004EDFC((a2 + 136));
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 80);
    if (v4)
    {
      *(a2 + 88) = v4;
      operator delete(v4);
    }

    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    operator delete();
  }
}

void *sub_10004EDFC(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_10004EED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_100041F34(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004EEF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10004EF34(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10004EFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_10004F088(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004F008(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10004F048(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10004F088(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100042254(a2 + 16, *(a2 + 24));
    v3 = *(a2 + 8);
    if (v3)
    {
      sub_100005EB4(v3);
    }

    operator delete();
  }
}

void *sub_10004F0EC(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10004F1C8(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_10004F270(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_10004F270(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *YAML::detail::node_data::empty_scalar(YAML::detail::node_data *this)
{
  if ((atomic_load_explicit(&qword_100078770, memory_order_acquire) & 1) == 0)
  {
    sub_10004FF3C();
  }

  return &qword_100078778;
}

double YAML::detail::node_data::node_data(YAML::detail::node_data *this)
{
  *this = 0;
  *(this + 4) = -1;
  *(this + 12) = 0x1FFFFFFFFLL;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = this + 136;
  *(this + 18) = this + 136;
  *(this + 19) = 0;
  return result;
}

uint64_t YAML::detail::node_data::mark_defined(uint64_t this)
{
  if (!*(this + 16))
  {
    *(this + 16) = 1;
  }

  *this = 1;
  return this;
}

uint64_t YAML::detail::node_data::set_mark(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 12) = *(a2 + 2);
  *(result + 4) = v2;
  return result;
}

void *YAML::detail::node_data::set_type(void *result, int a2)
{
  if (a2)
  {
    *result = 1;
    if (*(result + 4) != a2)
    {
      *(result + 4) = a2;
      switch(a2)
      {
        case 4:
          result[15] = result[14];
          return sub_10004EDFC(result + 17);
        case 3:
          result[11] = result[10];
          result[13] = 0;
          break;
        case 2:
          if (*(result + 79) < 0)
          {
            *result[7] = 0;
            result[8] = 0;
          }

          else
          {
            *(result + 56) = 0;
            *(result + 79) = 0;
          }

          break;
      }
    }
  }

  else
  {
    *(result + 4) = 0;
    *result = 0;
  }

  return result;
}

uint64_t YAML::detail::node_data::set_null(uint64_t this)
{
  *this = 1;
  *(this + 16) = 1;
  return this;
}

std::string *YAML::detail::node_data::set_scalar(uint64_t a1, const std::string *a2)
{
  *a1 = 1;
  *(a1 + 16) = 2;
  return std::string::operator=((a1 + 56), a2);
}

uint64_t YAML::detail::node_data::begin@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if ((*this & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    return this;
  }

  v2 = *(this + 16);
  if (v2 != 4)
  {
    if (v2 == 3)
    {
      v3 = *(this + 80);
      *a2 = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = v3;
      return this;
    }

    goto LABEL_5;
  }

  return sub_10004FDD8(a2, *(this + 112), *(this + 120));
}

uint64_t YAML::detail::node_data::end@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if ((*this & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    return this;
  }

  v2 = *(this + 16);
  if (v2 != 4)
  {
    if (v2 == 3)
    {
      v3 = *(this + 88);
      *a2 = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = v3;
      return this;
    }

    goto LABEL_5;
  }

  return sub_10004FDD8(a2, *(this + 120), *(this + 120));
}

void YAML::detail::node_data::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 > 1)
  {
    if (v4 != 3)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      sub_10004F76C(exception);
    }
  }

  else
  {
    *(a1 + 16) = 3;
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 88);
  v5 = *(a1 + 96);
  if (v6 >= v5)
  {
    v8 = *(a1 + 80);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      sub_1000020B0();
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      sub_10004FE34(a1 + 80, v12);
    }

    v13 = (8 * v9);
    *v13 = a2;
    v7 = 8 * v9 + 8;
    v14 = *(a1 + 80);
    v15 = *(a1 + 88) - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = *(a1 + 80);
    *(a1 + 80) = v16;
    *(a1 + 88) = v7;
    *(a1 + 96) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = a2;
    v7 = (v6 + 1);
  }

  *(a1 + 88) = v7;
}

void YAML::detail::node_data::insert(uint64_t a1, _BYTE ***a2, _BYTE ***a3, void *a4)
{
  v7 = *(a1 + 16);
  if (v7 < 2 || v7 == 3)
  {
    v9 = a4[1];
    v11[0] = *a4;
    v11[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    YAML::detail::node_data::convert_to_map(a1, v11);
    if (v9)
    {
      sub_100005EB4(v9);
    }
  }

  else if (v7 == 2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    sub_10004F930(exception);
  }

  YAML::detail::node_data::insert_map_pair(a1, a2, a3);
}

void YAML::detail::node_data::convert_to_map(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 < 2)
  {
    *(a1 + 120) = *(a1 + 112);
    sub_10004EDFC((a1 + 136));
    *(a1 + 16) = 4;
  }

  else if (v3 == 3)
  {
    v4 = *(a2 + 8);
    v5[0] = *a2;
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    YAML::detail::node_data::convert_sequence_to_map(a1, v5);
    if (v4)
    {

      sub_100005EB4(v4);
    }
  }

  else if (v3 == 2)
  {
    sub_10004FFB4();
  }
}

void sub_10004F918(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100005EB4(v1);
  }

  _Unwind_Resume(exception_object);
}

void YAML::detail::node_data::insert_map_pair(void *a1, _BYTE ***a2, _BYTE ***a3)
{
  v7 = a1[15];
  v6 = a1[16];
  if (v7 >= v6)
  {
    v9 = a1[14];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      sub_1000020B0();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF0;
    v15 = 0xFFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_100029F6C((a1 + 14), v15);
    }

    v16 = (16 * v11);
    *v16 = a2;
    v16[1] = a3;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    v17 = a1[14];
    a1[14] = 0;
    a1[15] = v8;
    a1[16] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v7 = a2;
    *(v7 + 1) = a3;
    v8 = (v7 + 16);
  }

  a1[15] = v8;
  if (***a2 != 1 || (***a3 & 1) == 0)
  {
    operator new();
  }
}

void *YAML::detail::node_data::convert_sequence_to_map(uint64_t a1, YAML::detail::memory ***a2)
{
  if (*(a1 + 16) != 3)
  {
    sub_10004FFE0();
  }

  *(a1 + 120) = *(a1 + 112);
  result = sub_10004EDFC((a1 + 136));
  v4 = *(a1 + 80);
  if (*(a1 + 88) != v4)
  {
    sub_100024C08(&v8);
    std::ostream::operator<<();
    YAML::detail::memory::create_node(**a2);
  }

  *(a1 + 88) = v4;
  *(a1 + 104) = 0;
  *(a1 + 16) = 4;
  return result;
}

void *sub_10004FD18(void *a1)
{
  v5 = -1;
  v6 = -1;
  sub_10000143C(__p, "appending to a non-sequence");
  sub_100041860(a1, &v5, __p);
  *a1 = off_1000753A8;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_100075468;
  return a1;
}

void sub_10004FDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004FDD8(uint64_t result, _BYTE ****a2, _BYTE ****a3)
{
  *result = 2;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = a3;
  if (a3 != a2)
  {
    while (****a2 != 1 || (***a2[1] & 1) == 0)
    {
      a2 += 2;
      if (a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  *(result + 16) = a2;
  return result;
}

void sub_10004FE34(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100001B50();
}

void *sub_10004FE7C(void *a1)
{
  v5 = -1;
  v6 = -1;
  sub_10000143C(__p, "operator[] call on a scalar");
  sub_100041860(a1, &v5, __p);
  *a1 = off_1000753A8;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_1000754E8;
  return a1;
}

void sub_10004FF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004FF3C()
{
  if (__cxa_guard_acquire(&qword_100078770))
  {
    qword_100078780 = 0;
    unk_100078788 = 0;
    qword_100078778 = 0;
    __cxa_atexit(&std::string::~string, &qword_100078778, &_mh_execute_header);

    __cxa_guard_release(&qword_100078770);
  }
}

void sub_1000500F4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object)
{
  v14 = v9[10];
  if (v14)
  {
    v9[11] = v14;
    operator delete(v14);
  }

  sub_100050B30(v10, v11, v9, a1, a2, &exception_object);
  _Unwind_Resume(exception_object);
}

void sub_100050148(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1000020B0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10004FE34(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void YAML::NodeBuilder::~NodeBuilder(YAML::NodeBuilder *this)
{
  *this = off_100075690;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    sub_100005EB4(v5);
  }
}

{
  YAML::NodeBuilder::~NodeBuilder(this);

  operator delete();
}

void YAML::NodeBuilder::Root(YAML::NodeBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      *a2 = 1;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = v4;
      *(a2 + 40) = v3;
      *(a2 + 48) = v2;
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100005EB4(v3);
    }

    else
    {
      *a2 = 1;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = v4;
      *(a2 + 40) = 0;
      *(a2 + 48) = v2;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
  }
}

void YAML::NodeBuilder::Pop(YAML::NodeBuilder *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  if (v1 == v2)
  {
    sub_100050BFC();
  }

  if (v2 - v1 == 8)
  {
    *(this + 3) = *v1;
    *(this + 5) = v2 - 8;
    return;
  }

  v6 = *(v2 - 1);
  v5 = v2 - 8;
  v4 = v6;
  *(this + 5) = v5;
  v7 = *(v5 - 1);
  v8 = **v7;
  if (*v8 != 1)
  {
    goto LABEL_22;
  }

  v9 = *(v8 + 16);
  if (v9 != 4)
  {
    if (v9 == 3)
    {
      v10 = *(this + 2);
      v16 = *(this + 1);
      v17 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000508E8(v7, v4, &v16);
      if (v17)
      {
        sub_100005EB4(v17);
      }

      return;
    }

LABEL_22:
    sub_100050BD0();
  }

  v11 = *(this + 11);
  if (*(this + 10) == v11)
  {
    sub_100050BA4();
  }

  if (*(v11 - 8) == 1)
  {
    v12 = *(v11 - 16);
    v13 = *(this + 2);
    v14 = *(this + 1);
    v15 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10005096C(v7, v12, v4, &v14);
    if (v15)
    {
      sub_100005EB4(v15);
    }

    *(this + 11) -= 16;
  }

  else
  {
    *(v11 - 8) = 1;
  }
}

void sub_100050530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_100005EB4(a10);
  }

  _Unwind_Resume(exception_object);
}

void YAML::NodeBuilder::OnAlias(YAML::NodeBuilder *a1, uint64_t a2, uint64_t a3)
{
  YAML::NodeBuilder::Push(a1, *(*(a1 + 7) + 8 * a3));

  YAML::NodeBuilder::Pop(a1);
}

void YAML::NodeBuilder::Push(void *a1, uint64_t a2)
{
  v6 = a1[4];
  v5 = a1[5];
  v4 = (a1 + 4);
  if (v6 != v5 && (v7 = ***(v5 - 8), *v7 == 1) && *(v7 + 16) == 4)
  {
    v8 = a1 + 10;
    v9 = a1[11] - a1[10];
    v10 = a1[13];
    v23 = a2;
    sub_100050148(v4, &v23);
    if (v10 > v9 >> 4)
    {
      v12 = a1[11];
      v11 = a1[12];
      if (v12 >= v11)
      {
        v14 = (v12 - *v8) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          sub_1000020B0();
        }

        v16 = v11 - *v8;
        if (v16 >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_100050AE8((a1 + 10), v17);
        }

        v18 = 16 * v14;
        *v18 = a2;
        *(v18 + 8) = 0;
        v13 = 16 * v14 + 16;
        v19 = a1[10];
        v20 = a1[11] - v19;
        v21 = (16 * v14 - v20);
        memcpy(v21, v19, v20);
        v22 = a1[10];
        a1[10] = v21;
        a1[11] = v13;
        a1[12] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v12 = a2;
        *(v12 + 8) = 0;
        v13 = v12 + 16;
      }

      a1[11] = v13;
    }
  }

  else
  {
    v23 = a2;
    sub_100050148(v4, &v23);
  }
}

void YAML::NodeBuilder::OnMapEnd(YAML::NodeBuilder *this)
{
  v2 = *(this + 13);
  if (!v2)
  {
    sub_100050C28();
  }

  *(this + 13) = v2 - 1;

  YAML::NodeBuilder::Pop(this);
}

void YAML::NodeBuilder::RegisterAnchor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v3 = a1 + 56;
    if (a2 != (v5 - v4) >> 3)
    {
      sub_100050C54();
    }

    v6 = a3;
    sub_100050148(v3, &v6);
  }
}

void sub_1000508E8(uint64_t **a1, _BYTE ***a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = a3[1];
  v7 = *a3;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100050A10(v5, a2, &v7);
  if (v8)
  {
    sub_100005EB4(v8);
  }

  sub_100044AF4(a2, a1);
}

void sub_100050954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100005EB4(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005096C(uint64_t **a1, _BYTE ***a2, _BYTE ***a3, uint64_t *a4)
{
  v7 = *a1;
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100050A7C(v7, a2, a3, &v9);
  if (v10)
  {
    sub_100005EB4(v10);
  }

  sub_100044AF4(a2, a1);
  sub_100044AF4(a3, a1);
}

void sub_1000509F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100005EB4(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100050A10(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  YAML::detail::node_data::push_back(v3, a2);
  if (v6)
  {
    sub_100005EB4(v6);
  }
}

void sub_100050A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100005EB4(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100050A7C(uint64_t *a1, _BYTE ***a2, _BYTE ***a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = a4[1];
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  YAML::detail::node_data::insert(v4, a2, a3, &v6);
  if (v7)
  {
    sub_100005EB4(v7);
  }
}

void sub_100050AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100005EB4(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100050AE8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100001B50();
}

void sub_100050B30(void **a1, void **a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *a1;
  if (v11)
  {
    a3[8] = v11;
    operator delete(v11);
  }

  v12 = *a2;
  if (*a2)
  {
    a3[5] = v12;
    operator delete(v12);
  }

  v13 = a3[2];
  if (v13)
  {
    sub_100005EB4(v13);
  }

  *a6 = a4;
  *(a6 + 8) = a5;
}

BOOL YAML::IsNullString(_DWORD *a1)
{
  v1 = *(a1 + 23);
  v2 = *(a1 + 1);
  if ((v1 & 0x80u) == 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  if (!v3)
  {
    return 1;
  }

  if ((v1 & 0x80) != 0)
  {
    if (v2 != 1)
    {
      if (v2 == 4)
      {
        if (**a1 != 1819047278 && **a1 != 1819047246)
        {
          a1 = *a1;
          return *a1 == 1280070990;
        }

        return 1;
      }

      return 0;
    }

    v6 = **a1;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 4)
      {
        if ((*a1 | 0x20) != 0x6C6C756E)
        {
          return *a1 == 1280070990;
        }

        return 1;
      }

      return 0;
    }

    v6 = *a1;
  }

  return v6 == 126;
}

void YAML::LoadFile(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  sub_100050FB0(v3);
  if ((*(&v3[4] + *(v3[0] - 3)) & 5) == 0)
  {
    YAML::Load();
  }

  exception = __cxa_allocate_exception(0x38uLL);
  sub_100051240(exception);
}

void sub_100050F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_100051174(&a10);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100050FB0(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_10005113C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100051174(void *a1)
{
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

void *sub_100051240(void *a1)
{
  v5 = -1;
  v6 = -1;
  sub_10000143C(__p, "bad file");
  sub_100041860(a1, &v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_1000754A8;
  return a1;
}

void sub_1000512C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Parser::Parser(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  YAML::Parser::Load();
}

YAML::Scanner *sub_100051418(YAML::Scanner **a1, YAML::Scanner *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    YAML::Scanner::~Scanner(result);

    operator delete();
  }

  return result;
}

uint64_t *sub_100051464(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_10002A374(v2 + 16, *(v2 + 24));

    operator delete();
  }

  return result;
}

uint64_t YAML::Parser::HandleNextDocument(uint64_t a1)
{
  if (*a1)
  {
    YAML::Parser::ParseDirectives(a1);
    if (!YAML::Scanner::empty(*a1))
    {
      YAML::SingleDocParser::SingleDocParser(v3, *a1, *(a1 + 8));
    }
  }

  return 0;
}

void sub_100051538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  YAML::SingleDocParser::~SingleDocParser(va);
  _Unwind_Resume(a1);
}

uint64_t YAML::Parser::ParseDirectives(int64x2_t **this)
{
  result = YAML::Scanner::empty(*this);
  if ((result & 1) == 0)
  {
    v3 = 0;
    do
    {
      result = YAML::Scanner::peek(*this);
      if (*(result + 4))
      {
        break;
      }

      if ((v3 & 1) == 0)
      {
        operator new();
      }

      YAML::Parser::HandleDirective(this, result);
      YAML::Scanner::pop(*this);
      result = YAML::Scanner::empty(*this);
      v3 = 1;
    }

    while (!result);
  }

  return result;
}

uint64_t YAML::Parser::HandleDirective(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 24);
  if ((*(a2 + 47) & 0x80000000) == 0)
  {
    v3 = *(a2 + 47);
    if (v3 != 3)
    {
      if (v3 == 4 && *v2 == 1280131417)
      {
        return YAML::Parser::HandleYamlDirective(a1, a2);
      }

      return a1;
    }

LABEL_10:
    v4 = *v2;
    v5 = *(v2 + 2);
    if (v4 == 16724 && v5 == 71)
    {
      return YAML::Parser::HandleTagDirective(a1, a2);
    }

    return a1;
  }

  if (*(a2 + 32) == 4 && **v2 == 1280131417)
  {
    return YAML::Parser::HandleYamlDirective(a1, a2);
  }

  if (*(a2 + 32) == 3)
  {
    v2 = *v2;
    goto LABEL_10;
  }

  return a1;
}

uint64_t YAML::Parser::HandleYamlDirective(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 48;
  v3 = *(a2 + 48);
  if (*(v4 + 8) - v3 != 24)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    sub_10000143C(v24, "YAML directives must have exactly one argument");
    sub_100041860(exception, (a2 + 8), v24);
    *exception = off_100075368;
  }

  if ((**(a1 + 8) & 1) == 0)
  {
    v19 = __cxa_allocate_exception(0x38uLL);
    sub_10000143C(v24, "repeated YAML directive");
    sub_100041860(v19, (a2 + 8), v24);
    *v19 = off_100075368;
  }

  sub_100000DFC(v24, v3, 24);
  v6 = *(a1 + 8);
  std::istream::operator>>();
  std::istream::get();
  v7 = *(a1 + 8);
  std::istream::operator>>();
  if ((*(&v26[0].__locale_ + *(v24[0] - 3)) & 5) != 0 || std::istream::peek() != -1)
  {
    v11 = __cxa_allocate_exception(0x38uLL);
    sub_10000143C(&v21, "bad YAML version: ");
    v12 = *(a2 + 48);
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = *(a2 + 48);
    }

    else
    {
      v14 = *v12;
    }

    if (v13 >= 0)
    {
      v15 = *(v12 + 23);
    }

    else
    {
      v15 = *(v12 + 8);
    }

    v16 = std::string::append(&v21, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v23 = v16->__r_.__value_.__r.__words[2];
    v22 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    sub_100041860(v11, (a2 + 8), &v22);
    *v11 = off_100075368;
  }

  v8 = *(a1 + 8);
  if (*(v8 + 4) >= 2)
  {
    v20 = __cxa_allocate_exception(0x38uLL);
    sub_10000143C(&v22, "YAML major version too large");
    sub_100041860(v20, (a2 + 8), &v22);
    *v20 = off_100075368;
  }

  *v8 = 0;
  v24[2] = v9;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100051AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      sub_1000012E8(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

std::string *YAML::Parser::HandleTagDirective(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (*(a2 + 56) - v3 != 48)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    sub_10000143C(v11, "TAG directives must have exactly two arguments");
    sub_100041860(exception, (a2 + 8), v11);
    *exception = off_100075368;
  }

  v5 = sub_10000E230(*(a1 + 8) + 16, *(a2 + 48));
  v6 = *(a1 + 8);
  if (v6 + 24 != v5)
  {
    v10 = __cxa_allocate_exception(0x38uLL);
    sub_10000143C(v11, "repeated TAG directive");
    sub_100041860(v10, (a2 + 8), v11);
    *v10 = off_100075368;
  }

  v11[0] = v3;
  v7 = sub_100030BB8(v6 + 16, &v3->__r_.__value_.__l.__data_);
  return std::string::operator=((v7 + 56), v3 + 1);
}

void sub_100051CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::RegEx::RegEx(uint64_t this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t YAML::RegEx::RegEx(uint64_t this, char a2)
{
  *this = 1;
  *(this + 4) = a2;
  *(this + 5) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t YAML::RegEx::RegEx(uint64_t this, char a2, char a3)
{
  *this = 2;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t YAML::RegEx::RegEx(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a3;
  *(a1 + 4) = 0;
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

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  sub_100052048(a1 + 8, a2, a2 + v5, v5);
  return a1;
}

uint64_t YAML::operator!@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 5;
  *(a2 + 4) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  return sub_100051E1C(a2 + 8, a1);
}

void sub_100051E04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100051FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100051E1C(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1000522D0(a1, a2);
  }

  else
  {
    sub_10005226C(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t YAML::operator|@<X0>(int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 3;
  *(a3 + 4) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v4 = a3 + 8;
  sub_100051E1C(a3 + 8, a1);
  return sub_100051E1C(v4, a2);
}

void sub_100051EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100051FAC(va);
  _Unwind_Resume(a1);
}

uint64_t YAML::operator&@<X0>(int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 4;
  *(a3 + 4) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v4 = a3 + 8;
  sub_100051E1C(a3 + 8, a1);
  return sub_100051E1C(v4, a2);
}

void sub_100051F24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100051FAC(va);
  _Unwind_Resume(a1);
}

uint64_t YAML::operator+@<X0>(int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 6;
  *(a3 + 4) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v4 = a3 + 8;
  sub_100051E1C(a3 + 8, a1);
  return sub_100051E1C(v4, a2);
}

void sub_100051F94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100051FAC(va);
  _Unwind_Resume(a1);
}

void sub_100051FAC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 32;
        v7 = v4 - 24;
        sub_100051FAC(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100052048(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000520D0(result, a4);
  }

  return result;
}

void sub_1000520B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100051FAC(&a9);
  _Unwind_Resume(a1);
}

void sub_1000520D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_10005210C(a1, a2);
  }

  sub_1000020B0();
}

void sub_10005210C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100001B50();
}

uint64_t sub_100052154(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = *a2++;
      *v4 = 1;
      *(v4 + 4) = v5;
      *(v4 + 5) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      v4 += 32;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_1000521DC(v7);
  return v4;
}

uint64_t sub_1000521DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100052214(a1);
  }

  return a1;
}

void sub_100052214(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 32;
      v4 = (v1 - 24);
      sub_100051FAC(&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_10005226C(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *(v3 + 4) = *(a2 + 2);
  *v3 = v4;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  result = sub_100052400(v3 + 8, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 5);
  *(a1 + 8) = v3 + 32;
  return result;
}

uint64_t sub_1000522D0(uint64_t a1, int *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000020B0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_10005210C(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  v18 = (32 * v2);
  v9 = *a2;
  *(v8 + 4) = *(a2 + 2);
  *v8 = v9;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  sub_100052400(32 * v2 + 8, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 5);
  *&v18 = v18 + 32;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  sub_10005254C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100052638(&v16);
  return v15;
}

void sub_1000523EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100052638(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100052400(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000520D0(result, a4);
  }

  return result;
}

void sub_100052468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100051FAC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100052488(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 4) = *(v6 + 2);
      *v4 = v7;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      v8 = *(v6 + 1);
      v9 = *(v6 + 2);
      sub_100052400(v4 + 8);
      v6 += 8;
      v4 = v14 + 32;
      v14 += 32;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_1000521DC(v11);
  return v4;
}

uint64_t sub_10005254C(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(v4 + 4) = *(v7 + 2);
      *v4 = v8;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      sub_100052400(v4 + 8, *(v7 + 1), *(v7 + 2), (*(v7 + 2) - *(v7 + 1)) >> 5);
      v7 += 8;
      v4 = v13 + 32;
      v13 += 32;
    }

    while (v7 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      v14 = (v6 + 2);
      sub_100051FAC(&v14);
      v6 += 8;
    }
  }

  return sub_1000521DC(v10);
}

void sub_100052624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000521DC(va);
  _Unwind_Resume(a1);
}

void **sub_100052638(void **a1)
{
  sub_10005266C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10005266C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v4 = (i - 24);
    sub_100051FAC(&v4);
  }
}

double YAML::Scanner::Scanner()
{
  v0 = YAML::Stream::Stream();
  *(v0 + 144) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 312) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  return result;
}

void YAML::Scanner::~Scanner(YAML::Scanner *this)
{
  sub_100054D80(this + 34);
  v2 = (this + 248);
  sub_100054E2C(&v2);
  sub_100054A34(this + 25);
  sub_100054B30(this + 19);
  sub_100054BDC(this + 12);
  YAML::Stream::~Stream(this);
}

void YAML::Scanner::EnsureTokensInQueue(int64x2_t *this)
{
  while (1)
  {
    while (1)
    {
      if (!this[8].i64[1])
      {
        goto LABEL_4;
      }

      v2 = *(*(this[6].i64[1] + 8 * (this[8].i64[0] / 0x33uLL)) + 80 * (this[8].i64[0] % 0x33uLL));
      if (v2 != 1)
      {
        break;
      }

      sub_10005534C(this + 6);
    }

    if (!v2)
    {
      return;
    }

LABEL_4:
    if (this[9].i8[1])
    {
      break;
    }

    YAML::Scanner::ScanNextToken(this);
  }
}

void YAML::Scanner::pop(int64x2_t *this)
{
  YAML::Scanner::EnsureTokensInQueue(this);
  if (this[8].i64[1])
  {

    sub_10005534C(this + 6);
  }
}

unint64_t YAML::Scanner::peek(int64x2_t *this)
{
  YAML::Scanner::EnsureTokensInQueue(this);
  if (!this[8].i64[1])
  {
    sub_100056308();
  }

  return *(this[6].i64[1] + 8 * (this[8].i64[0] / 0x33uLL)) + 80 * (this[8].i64[0] % 0x33uLL);
}

void YAML::Scanner::ScanNextToken(YAML::Scanner *this)
{
  if (*(this + 145))
  {
    return;
  }

  if ((*(this + 144) & 1) == 0)
  {

    YAML::Scanner::StartStream(this);
  }

  YAML::Scanner::ScanToNextToken(this);
  YAML::Scanner::PopIndentToHere(this);
  if (YAML::Stream::operator BOOL(this))
  {
    if (*(this + 4))
    {
LABEL_5:
      if (YAML::Stream::peek(this) == 91 || YAML::Stream::peek(this) == 123)
      {
        YAML::Scanner::ScanFlowStart(this);
      }

      else if (YAML::Stream::peek(this) == 93 || YAML::Stream::peek(this) == 125)
      {
        YAML::Scanner::ScanFlowEnd(this);
      }

      else if (YAML::Stream::peek(this) == 44)
      {
        YAML::Scanner::ScanFlowEntry(this);
      }

      else
      {
        v4 = sub_1000535C0();
        if (sub_1000533C4(v4, this))
        {
          YAML::Scanner::ScanBlockEntry(this);
        }

        else
        {
          if (*(this + 39))
          {
            v5 = sub_100053814();
          }

          else
          {
            v5 = sub_100053728();
          }

          if (sub_1000533C4(v5, this))
          {
            YAML::Scanner::ScanKey(this);
          }

          else
          {
            ValueRegex = YAML::Scanner::GetValueRegex(this);
            if (sub_1000533C4(ValueRegex, this))
            {
              YAML::Scanner::ScanValue(this);
            }

            else if (YAML::Stream::peek(this) == 42 || YAML::Stream::peek(this) == 38)
            {
              YAML::Scanner::ScanAnchorOrAlias(this);
            }

            else if (YAML::Stream::peek(this) == 33)
            {
              YAML::Scanner::ScanTag(this);
            }

            else if (!*(this + 39) && (YAML::Stream::peek(this) == 124 || YAML::Stream::peek(this) == 62))
            {
              YAML::Scanner::ScanBlockScalar(this);
            }

            else if (YAML::Stream::peek(this) == 39 || YAML::Stream::peek(this) == 34)
            {
              YAML::Scanner::ScanQuotedScalar(this);
            }

            else
            {
              if (*(this + 39))
              {
                v7 = sub_100053CD8();
              }

              else
              {
                v7 = sub_1000539EC();
              }

              if (!sub_1000533C4(v7, this))
              {
                exception = __cxa_allocate_exception(0x38uLL);
                v9 = *(this + 4);
                v12 = *(this + 1);
                v13 = v9;
                sub_10000143C(&v10, "unknown token");
                sub_100041860(exception, &v12, &v10);
                *exception = off_100075368;
              }

              YAML::Scanner::ScanPlainScalar(this);
            }
          }
        }
      }

      return;
    }

    if (YAML::Stream::peek(this) != 37)
    {
      if (!*(this + 4))
      {
        v2 = sub_100053220();
        v10 = 0;
        v11 = this;
        if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (sub_1000550E8(v2, &v10) & 0x80000000) == 0)
        {
          YAML::Scanner::ScanDocStart(this);
          return;
        }

        if (!*(this + 4))
        {
          v3 = sub_10005341C();
          v10 = 0;
          v11 = this;
          if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (sub_1000550E8(v3, &v10) & 0x80000000) == 0)
          {
            YAML::Scanner::ScanDocEnd(this);
            return;
          }
        }
      }

      goto LABEL_5;
    }

    YAML::Scanner::ScanDirective(this);
  }

  else
  {

    YAML::Scanner::EndStream(this);
  }
}

void sub_100052CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void YAML::Scanner::StartStream(YAML::Scanner *this)
{
  *(this + 144) = 1;
  *(this + 146) = 1;
  operator new();
}

void sub_100052D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::Scanner::ScanToNextToken(YAML::Scanner *this)
{
  while (1)
  {
    while (YAML::Stream::operator BOOL(this))
    {
      v2 = YAML::Stream::peek(this);
      if (v2 != 32 && v2 != 9)
      {
        break;
      }

      if (!*(this + 39))
      {
        if ((atomic_load_explicit(&qword_1000781E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000781E8))
        {
          YAML::RegEx::RegEx(&unk_1000781C8, 9);
          __cxa_atexit(sub_100053FE4, &unk_1000781C8, &_mh_execute_header);
          __cxa_guard_release(&qword_1000781E8);
        }

        v9 = 0;
        v10[0] = this;
        if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (sub_1000550E8(&unk_1000781C8, &v9) & 0x80000000) == 0)
        {
          *(this + 146) = 0;
        }
      }

      YAML::Stream::eat(this, 1);
    }

    if ((atomic_load_explicit(&qword_100078210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078210))
    {
      YAML::RegEx::RegEx(&dword_1000781F0, 35);
      __cxa_atexit(sub_100053FE4, &dword_1000781F0, &_mh_execute_header);
      __cxa_guard_release(&qword_100078210);
    }

    LODWORD(v9) = dword_1000781F0;
    WORD2(v9) = word_1000781F4;
    memset(v10, 0, sizeof(v10));
    sub_100052400(v10, qword_1000781F8, unk_100078200, (unk_100078200 - qword_1000781F8) >> 5);
    v11[0] = 0;
    v11[1] = this;
    if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
    {
      v3 = sub_1000550E8(&v9, v11);
      v11[0] = v10;
      sub_100051FAC(v11);
      if ((v3 & 0x80000000) == 0 && YAML::Stream::operator BOOL(this))
      {
        do
        {
          v4 = sub_100054020();
          v9 = 0;
          v10[0] = this;
          if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (sub_1000550E8(v4, &v9) & 0x80000000) == 0)
          {
            break;
          }

          YAML::Stream::eat(this, 1);
        }

        while (YAML::Stream::operator BOOL(this));
      }
    }

    else
    {
      v11[0] = v10;
      sub_100051FAC(v11);
    }

    v5 = sub_100054020();
    v9 = 0;
    v10[0] = this;
    if (!*(this + 8))
    {
      result = YAML::Stream::_ReadAheadTo(this, 0);
      if ((result & 1) == 0)
      {
        break;
      }
    }

    result = sub_1000550E8(v5, &v9);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v7 = sub_100054020();
    v9 = 0;
    v10[0] = this;
    if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
    {
      v8 = sub_1000550E8(v7, &v9);
    }

    else
    {
      v8 = -1;
    }

    YAML::Stream::eat(this, v8);
    YAML::Scanner::InvalidateSimpleKey(this);
    if (!*(this + 39))
    {
      *(this + 146) = 1;
    }
  }

  return result;
}

void YAML::Scanner::PopIndentToHere(YAML::Scanner *this)
{
  if (!*(this + 39))
  {
    v8[4] = v1;
    v8[5] = v2;
    while (1)
    {
      v4 = *(this + 30);
      if (!v4)
      {
        break;
      }

      v5 = *(*(*(this + 26) + (((v4 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + *(this + 29) - 1) & 0x1FF));
      v6 = *(this + 4);
      if (*v5 < v6)
      {
        goto LABEL_12;
      }

      if (*v5 == v6)
      {
        if (v5[1] != 1)
        {
          goto LABEL_12;
        }

        v7 = sub_1000535C0();
        v8[0] = 0;
        v8[1] = this;
        if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (sub_1000550E8(v7, v8) & 0x80000000) == 0)
        {
          while (1)
          {
            v4 = *(this + 30);
            if (!v4)
            {
              break;
            }

LABEL_12:
            if (*(*(*(*(this + 26) + (((v4 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + *(this + 29) - 1) & 0x1FF)) + 8) != 1)
            {
              return;
            }

            YAML::Scanner::PopIndent(this);
          }

          return;
        }
      }

      YAML::Scanner::PopIndent(this);
    }
  }
}

uint64_t YAML::Scanner::EndStream(YAML::Scanner *this)
{
  if (*(this + 4) >= 1)
  {
    *(this + 4) = 0;
  }

  YAML::Scanner::PopAllIndents(this);
  result = YAML::Scanner::PopAllSimpleKeys(this);
  *(this + 145) = 1;
  return result;
}

void *sub_100053220()
{
  if ((atomic_load_explicit(&qword_100078058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078058))
  {
    sub_10000143C(__p, "---");
    YAML::RegEx::RegEx(&v8, __p, 6);
    v1 = sub_100054EE8();
    YAML::RegEx::RegEx(&v2);
    YAML::operator|(v1, &v2, &v4);
    YAML::operator+(&v8, &v4, &unk_100078038);
    v10 = &v5;
    sub_100051FAC(&v10);
    v10 = &v3;
    sub_100051FAC(&v10);
    v4 = &v9;
    sub_100051FAC(&v4);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_100053FE4, &unk_100078038, &_mh_execute_header);
    __cxa_guard_release(&qword_100078058);
  }

  return &unk_100078038;
}

void sub_100053340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v23 - 24) = v22 + 8;
  sub_100051FAC((v23 - 24));
  *(v23 - 24) = &a10;
  sub_100051FAC((v23 - 24));
  a13 = v23 - 48;
  sub_100051FAC(&a13);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_100078058);
  _Unwind_Resume(a1);
}

BOOL sub_1000533C4(uint64_t a1, YAML::Stream *this)
{
  v4[0] = 0;
  v4[1] = this;
  if (*(this + 8))
  {
    return sub_1000550E8(a1, v4) >= 0;
  }

  result = YAML::Stream::_ReadAheadTo(this, 0);
  if (result)
  {
    return sub_1000550E8(a1, v4) >= 0;
  }

  return result;
}

void *sub_10005341C()
{
  if ((atomic_load_explicit(&qword_1000780F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000780F8))
  {
    sub_10000143C(__p, "...");
    YAML::RegEx::RegEx(&v8, __p, 6);
    v1 = sub_100054EE8();
    YAML::RegEx::RegEx(&v2);
    YAML::operator|(v1, &v2, &v4);
    YAML::operator+(&v8, &v4, &unk_1000780D8);
    v10 = &v5;
    sub_100051FAC(&v10);
    v10 = &v3;
    sub_100051FAC(&v10);
    v4 = &v9;
    sub_100051FAC(&v4);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_100053FE4, &unk_1000780D8, &_mh_execute_header);
    __cxa_guard_release(&qword_1000780F8);
  }

  return &unk_1000780D8;
}

void sub_10005353C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v23 - 24) = v22 + 8;
  sub_100051FAC((v23 - 24));
  *(v23 - 24) = &a10;
  sub_100051FAC((v23 - 24));
  a13 = v23 - 48;
  sub_100051FAC(&a13);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1000780F8);
  _Unwind_Resume(a1);
}

void *sub_1000535C0()
{
  if ((atomic_load_explicit(&qword_100078120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078120))
  {
    YAML::RegEx::RegEx(&v6, 45);
    v1 = sub_100054EE8();
    YAML::RegEx::RegEx(&v2);
    YAML::operator|(v1, &v2, &v4);
    YAML::operator+(&v6, &v4, &unk_100078100);
    v8 = &v5;
    sub_100051FAC(&v8);
    v8 = &v3;
    sub_100051FAC(&v8);
    v4 = &v7;
    sub_100051FAC(&v4);
    __cxa_atexit(sub_100053FE4, &unk_100078100, &_mh_execute_header);
    __cxa_guard_release(&qword_100078120);
  }

  return &unk_100078100;
}

void sub_1000536BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  *(v15 - 24) = v14 + 8;
  sub_100051FAC((v15 - 24));
  *(v15 - 24) = &a11;
  sub_100051FAC((v15 - 24));
  a14 = (v15 - 48);
  sub_100051FAC(&a14);
  __cxa_guard_abort(&qword_100078120);
  _Unwind_Resume(a1);
}

void *sub_100053728()
{
  if ((atomic_load_explicit(&qword_100078148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078148))
  {
    YAML::RegEx::RegEx(&v2, 63);
    v1 = sub_100054EE8();
    YAML::operator+(&v2, v1, &unk_100078128);
    v4 = &v3;
    sub_100051FAC(&v4);
    __cxa_atexit(sub_100053FE4, &unk_100078128, &_mh_execute_header);
    __cxa_guard_release(&qword_100078148);
  }

  return &unk_100078128;
}

void *sub_100053814()
{
  if ((atomic_load_explicit(&qword_100078170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078170))
  {
    YAML::RegEx::RegEx(&v2, 63);
    v1 = sub_100054EE8();
    YAML::operator+(&v2, v1, &unk_100078150);
    v4 = &v3;
    sub_100051FAC(&v4);
    __cxa_atexit(sub_100053FE4, &unk_100078150, &_mh_execute_header);
    __cxa_guard_release(&qword_100078170);
  }

  return &unk_100078150;
}

void *YAML::Scanner::GetValueRegex(YAML::Scanner *this)
{
  if (*(this + 39))
  {
    if (*(this + 147) == 1)
    {
      if ((atomic_load_explicit(&qword_100078288, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_100078288))
        {
          YAML::RegEx::RegEx(&unk_100078268, 58);
          __cxa_atexit(sub_100053FE4, &unk_100078268, &_mh_execute_header);
          __cxa_guard_release(&qword_100078288);
        }
      }

      return &unk_100078268;
    }

    else
    {

      return sub_1000542E4();
    }
  }

  else
  {

    return sub_10005417C();
  }
}

void *sub_1000539EC()
{
  if ((atomic_load_explicit(&qword_100078198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078198))
  {
    v1 = sub_100054EE8();
    YAML::RegEx::RegEx(&v15, v13, 3);
    YAML::operator|(v1, &v15, &v17);
    sub_10000143C(__p, "-?:");
    YAML::RegEx::RegEx(&v9, __p, 3);
    v2 = sub_100054EE8();
    YAML::RegEx::RegEx(&v3);
    YAML::operator|(v2, &v3, &v5);
    YAML::operator+(&v9, &v5, &v11);
    YAML::operator|(&v17, &v11, &v19);
    YAML::operator!(&v19, &unk_100078178);
    v21 = &v20;
    sub_100051FAC(&v21);
    v21 = &v12;
    sub_100051FAC(&v21);
    v21 = &v6;
    sub_100051FAC(&v21);
    v21 = &v4;
    sub_100051FAC(&v21);
    v5 = &v10;
    sub_100051FAC(&v5);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = &v18;
    sub_100051FAC(&v11);
    v11 = &v16;
    sub_100051FAC(&v11);
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    __cxa_atexit(sub_100053FE4, &unk_100078178, &_mh_execute_header);
    __cxa_guard_release(&qword_100078198);
  }

  return &unk_100078178;
}

void sub_100053BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  *(v38 - 40) = v37 + 8;
  sub_100051FAC((v38 - 40));
  *(v38 - 40) = &a29;
  sub_100051FAC((v38 - 40));
  *(v38 - 40) = &a15;
  sub_100051FAC((v38 - 40));
  *(v38 - 40) = &a11;
  sub_100051FAC((v38 - 40));
  a14 = &a25;
  sub_100051FAC(&a14);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  a28 = v38 - 96;
  sub_100051FAC(&a28);
  a28 = v38 - 128;
  sub_100051FAC(&a28);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  __cxa_guard_abort(&qword_100078198);
  _Unwind_Resume(a1);
}

void *sub_100053CD8()
{
  if ((atomic_load_explicit(&qword_1000781C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000781C0))
  {
    v1 = sub_100054EE8();
    YAML::RegEx::RegEx(&v11, v9, 3);
    YAML::operator|(v1, &v11, &v13);
    sub_10000143C(__p, "-:");
    YAML::RegEx::RegEx(&v5, __p, 3);
    v2 = sub_100054F98();
    YAML::operator+(&v5, v2, &v7);
    YAML::operator|(&v13, &v7, &v15);
    YAML::operator!(&v15, &unk_1000781A0);
    v17 = &v16;
    sub_100051FAC(&v17);
    v17 = &v8;
    sub_100051FAC(&v17);
    v17 = &v6;
    sub_100051FAC(&v17);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = &v14;
    sub_100051FAC(&v7);
    v7 = &v12;
    sub_100051FAC(&v7);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    __cxa_atexit(sub_100053FE4, &unk_1000781A0, &_mh_execute_header);
    __cxa_guard_release(&qword_1000781C0);
  }

  return &unk_1000781A0;
}

void sub_100053E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31)
{
  *(v32 - 40) = v31 + 8;
  sub_100051FAC((v32 - 40));
  *(v32 - 40) = &a21;
  sub_100051FAC((v32 - 40));
  *(v32 - 40) = &a17;
  sub_100051FAC((v32 - 40));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a20 = (v32 - 96);
  sub_100051FAC(&a20);
  a20 = &a31;
  sub_100051FAC(&a20);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  __cxa_guard_abort(&qword_1000781C0);
  _Unwind_Resume(a1);
}

void *sub_100053F44()
{
  if ((atomic_load_explicit(&qword_1000781E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000781E8))
  {
    YAML::RegEx::RegEx(&unk_1000781C8, 9);
    __cxa_atexit(sub_100053FE4, &unk_1000781C8, &_mh_execute_header);
    __cxa_guard_release(&qword_1000781E8);
  }

  return &unk_1000781C8;
}

uint64_t sub_100053FE4(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_100051FAC(&v3);
  return a1;
}

void *sub_100054020()
{
  if ((atomic_load_explicit(&qword_100078238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078238))
  {
    YAML::RegEx::RegEx(&v5, 10);
    sub_10000143C(__p, "\r\n");
    YAML::RegEx::RegEx(&v3, __p, 6);
    YAML::operator|(&v5, &v3, &unk_100078218);
    v7 = &v4;
    sub_100051FAC(&v7);
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = &v6;
    sub_100051FAC(&v3);
    __cxa_atexit(sub_100053FE4, &unk_100078218, &_mh_execute_header);
    __cxa_guard_release(&qword_100078238);
  }

  return &unk_100078218;
}

void sub_100054118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  *(v21 - 24) = v20 + 8;
  sub_100051FAC((v21 - 24));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = &a20;
  sub_100051FAC(&a15);
  __cxa_guard_abort(&qword_100078238);
  _Unwind_Resume(a1);
}

void *sub_10005417C()
{
  if ((atomic_load_explicit(&qword_100078260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078260))
  {
    YAML::RegEx::RegEx(&v6, 58);
    v1 = sub_100054EE8();
    YAML::RegEx::RegEx(&v2);
    YAML::operator|(v1, &v2, &v4);
    YAML::operator+(&v6, &v4, &unk_100078240);
    v8 = &v5;
    sub_100051FAC(&v8);
    v8 = &v3;
    sub_100051FAC(&v8);
    v4 = &v7;
    sub_100051FAC(&v4);
    __cxa_atexit(sub_100053FE4, &unk_100078240, &_mh_execute_header);
    __cxa_guard_release(&qword_100078260);
  }

  return &unk_100078240;
}

void sub_100054278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  *(v15 - 24) = v14 + 8;
  sub_100051FAC((v15 - 24));
  *(v15 - 24) = &a11;
  sub_100051FAC((v15 - 24));
  a14 = (v15 - 48);
  sub_100051FAC(&a14);
  __cxa_guard_abort(&qword_100078260);
  _Unwind_Resume(a1);
}

void *sub_1000542E4()
{
  if ((atomic_load_explicit(&qword_1000782B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000782B0))
  {
    YAML::RegEx::RegEx(&v8, 58);
    v1 = sub_100054EE8();
    sub_10000143C(__p, ",}");
    YAML::RegEx::RegEx(&v4, __p, 3);
    YAML::operator|(v1, &v4, &v6);
    YAML::operator+(&v8, &v6, &unk_100078290);
    v10 = &v7;
    sub_100051FAC(&v10);
    v10 = &v5;
    sub_100051FAC(&v10);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = &v9;
    sub_100051FAC(&v6);
    __cxa_atexit(sub_100053FE4, &unk_100078290, &_mh_execute_header);
    __cxa_guard_release(&qword_1000782B0);
  }

  return &unk_100078290;
}

void sub_100054408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 24) = v19 + 8;
  sub_100051FAC((v20 - 24));
  *(v20 - 24) = &a16;
  sub_100051FAC((v20 - 24));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a19 = v20 - 48;
  sub_100051FAC(&a19);
  __cxa_guard_abort(&qword_1000782B0);
  _Unwind_Resume(a1);
}

uint64_t *sub_10005448C(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_1000020B0();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      sub_10004FE34(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_100055430(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void YAML::Scanner::PopAllIndents(YAML::Scanner *this)
{
  if (!*(this + 39))
  {
    while (1)
    {
      v2 = *(this + 30);
      if (!v2 || *(*(*(*(this + 26) + (((v2 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v2 + *(this + 29) - 1) & 0x1FF)) + 4) == 2)
      {
        break;
      }

      YAML::Scanner::PopIndent(this);
    }
  }
}

unint64_t YAML::Scanner::PushToken(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  LODWORD(v7) = 0;
  DWORD1(v7) = a2;
  *(&v7 + 1) = v3;
  v8 = v4;
  *__p = 0u;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  sub_100055BA4(a1 + 96, &v7);
  v12 = v10 + 1;
  sub_100002260(&v12);
  if (SBYTE7(v10[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a1 + 136) + *(a1 + 128) - 1;
  return *(*(a1 + 104) + 8 * (v5 / 0x33)) + 80 * (v5 % 0x33);
}

void sub_1000546B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000546CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000546CC(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_100002260(&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t YAML::Scanner::GetStartTokenFor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 4;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      sub_100056334();
    }

    sub_100056360();
  }

  return 3;
}

uint64_t YAML::Scanner::PushIndentTo(uint64_t a1)
{
  if (!*(a1 + 312))
  {
    operator new();
  }

  return 0;
}

void YAML::Scanner::PopIndent(YAML::Scanner *this)
{
  v2 = *(this + 30) - 1;
  v3 = *(*(*(this + 26) + (((v2 + *(this + 29)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v2 + *(this + 29)) & 0x1FF));
  *(this + 30) = v2;
  sub_100056298(this + 25, 1);
  if (*(v3 + 8))
  {

    YAML::Scanner::InvalidateSimpleKey(this);
  }

  else
  {
    v4 = *(v3 + 4);
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = *(this + 1);
      v6 = *(this + 4);
      *&v9 = 0x500000000;
      *(&v9 + 1) = v5;
      v10 = v6;
      *__p = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
      sub_100055BA4(this + 96, &v9);
    }

    else
    {
      v7 = *(this + 1);
      v8 = *(this + 4);
      *&v9 = 0x600000000;
      *(&v9 + 1) = v7;
      v10 = v8;
      *__p = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
      sub_100055BA4(this + 96, &v9);
    }

    v15 = &v12 + 1;
    sub_100002260(&v15);
    if (SBYTE7(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1000549E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000546CC(va);
  _Unwind_Resume(a1);
}

uint64_t YAML::Scanner::GetTopIndent(YAML::Scanner *this)
{
  v1 = *(this + 30);
  if (v1)
  {
    return **(*(*(this + 26) + (((v1 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v1 + *(this + 29) - 1) & 0x1FF));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100054A34(void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_100054AE0(a1);
}

uint64_t sub_100054AE0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100054B30(void *a1)
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
    v5 = 42;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 85;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_100054AE0(a1);
}

uint64_t sub_100054BDC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x33];
    v7 = *v6 + 80 * (v5 % 0x33);
    v8 = v2[(a1[5] + v5) / 0x33] + 80 * ((a1[5] + v5) % 0x33);
    if (v7 != v8)
    {
      do
      {
        sub_100054D38(a1, v7);
        v7 += 80;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 25;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 51;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_100054AE0(a1);
}

void sub_100054D38(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  sub_100002260(&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }
}

uint64_t sub_100054D80(void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_100054AE0(a1);
}

void sub_100054E2C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100054E80(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100054E80(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void *sub_100054EE8()
{
  if ((atomic_load_explicit(&qword_100078080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078080))
  {
    v1 = sub_100054F98();
    v2 = sub_100054020();
    YAML::operator|(v1, v2, &unk_100078060);
    __cxa_atexit(sub_100053FE4, &unk_100078060, &_mh_execute_header);
    __cxa_guard_release(&qword_100078080);
  }

  return &unk_100078060;
}

void *sub_100054F98()
{
  if ((atomic_load_explicit(&qword_1000780A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000780A8))
  {
    v1 = sub_100055048();
    v2 = sub_100053F44();
    YAML::operator|(v1, v2, &unk_100078088);
    __cxa_atexit(sub_100053FE4, &unk_100078088, &_mh_execute_header);
    __cxa_guard_release(&qword_1000780A8);
  }

  return &unk_100078088;
}

void *sub_100055048()
{
  if ((atomic_load_explicit(&qword_1000780D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000780D0))
  {
    YAML::RegEx::RegEx(&unk_1000780B0, 32);
    __cxa_atexit(sub_100053FE4, &unk_1000780B0, &_mh_execute_header);
    __cxa_guard_release(&qword_1000780D0);
  }

  return &unk_1000780B0;
}

uint64_t sub_1000550E8(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = 0xFFFFFFFFLL;
  if (*a1 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (*(*(*(a2[1] + 32) + (((*(a2[1] + 56) + *a2) >> 9) & 0x7FFFFFFFFFFFF8)) + ((*(a2[1] + 56) + *a2) & 0xFFFLL)) == *(a1 + 4))
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v4 == 2)
      {
        v10 = *(*(*(a2[1] + 32) + (((*(a2[1] + 56) + *a2) >> 9) & 0x7FFFFFFFFFFFF8)) + ((*(a2[1] + 56) + *a2) & 0xFFFLL));
        if (*(a1 + 4) <= v10)
        {
          if (*(a1 + 5) < v10)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 1;
          }
        }
      }
    }

    else if (*(*(*(a2[1] + 32) + (((*(a2[1] + 56) + *a2) >> 9) & 0x7FFFFFFFFFFFF8)) + ((*(a2[1] + 56) + *a2) & 0xFFFLL)) == 4)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (v4 > 4)
  {
    if (v4 == 5)
    {
      v21 = *(a1 + 8);
      if (v21 != *(a1 + 16))
      {
        if (sub_1000550E8(v21, a2) >= 0)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 1;
        }
      }
    }

    else if (v4 == 6)
    {
      v11 = *(a1 + 8);
      if (*(a1 + 16) == v11)
      {
        return 0;
      }

      v12 = 0;
      LODWORD(v5) = 0;
      v13 = 0;
      while (1)
      {
        v14 = a2[1];
        v15 = (v5 + *a2) < 0 != __OFADD__(v5, *a2) ? 0 : *a2 + v5;
        v23[0] = v15;
        v23[1] = v14;
        if (*(v14 + 8) <= v15 && !YAML::Stream::_ReadAheadTo(v14, v15))
        {
          break;
        }

        v16 = sub_1000550E8(v11 + v12, v23);
        if (v16 == -1)
        {
          break;
        }

        v5 = (v16 + v5);
        ++v13;
        v11 = *(a1 + 8);
        v12 += 32;
        if (v13 >= (*(a1 + 16) - v11) >> 5)
        {
          return v5;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  else if (v4 == 3)
  {
    v17 = *(a1 + 8);
    if (*(a1 + 16) != v17)
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = sub_1000550E8(v17 + v18, a2);
        if ((v20 & 0x80000000) == 0)
        {
          break;
        }

        ++v19;
        v17 = *(a1 + 8);
        v18 += 32;
        if (v19 >= (*(a1 + 16) - v17) >> 5)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return v20;
    }
  }

  else if (v4 == 4)
  {
    v6 = *(a1 + 8);
    if (*(a1 + 16) != v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = sub_1000550E8(v6 + v7, a2);
        if (v9 == -1)
        {
          break;
        }

        if (v8)
        {
          v5 = v5;
        }

        else
        {
          v5 = v9;
        }

        ++v8;
        v6 = *(a1 + 8);
        v7 += 32;
        if (v8 >= (*(a1 + 16) - v6) >> 5)
        {
          return v5;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t sub_10005534C(int64x2_t *a1)
{
  sub_100054D38(a1, *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x33uLL)) + 80 * (a1[2].i64[0] % 0x33uLL));
  a1[2] = vaddq_s64(a1[2], xmmword_100064410);

  return sub_1000553D0(a1, 1);
}

uint64_t sub_1000553D0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x33)
  {
    a2 = 1;
  }

  if (v2 < 0x66)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 51;
  }

  return v4 ^ 1u;
}

uint64_t sub_100055430(uint64_t a1)
{
  sub_100055468(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100055468(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete();
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_1000554D8(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_100055560(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_100055560(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_100055B5C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100055734(a1, &v10);
}

void sub_1000556E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100055734(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100055B5C(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_10005583C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100055B5C(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_100055948(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100055B5C(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100055A50(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100055B5C(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_100055B5C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100001B50();
}

__n128 sub_100055BA4(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 51 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_100055C9C(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x33)) + 80 * (v8 % 0x33);
  v10 = *a2;
  *(v9 + 16) = *(a2 + 4);
  *v9 = v10;
  v11 = *(a2 + 24);
  *(v9 + 40) = *(a2 + 5);
  *(v9 + 24) = v11;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  result = a2[3];
  *(v9 + 48) = result;
  *(v9 + 64) = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(v9 + 72) = *(a2 + 18);
  ++*(a1 + 40);
  return result;
}

void *sub_100055C9C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x33;
  v3 = v1 - 51;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10004FE34(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100055E70(a1, &v10);
}

void sub_100055E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100055E70(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10004FE34(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100055F78(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10004FE34(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_100056084(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10004FE34(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_10005618C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10004FE34(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t sub_100056298(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void YAML::ScanScalar(std::string::size_type a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = *(a2 + 20) == 2;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  *(a2 + 40) = 0;
  if (!*a2)
  {
    if ((atomic_load_explicit(&qword_1000782D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000782D8))
    {
      YAML::RegEx::RegEx(&unk_1000782B8);
      __cxa_atexit(sub_100053FE4, &unk_1000782B8, &_mh_execute_header);
      __cxa_guard_release(&qword_1000782D8);
    }

    *a2 = &unk_1000782B8;
  }

  v7 = 0;
  v81 = 0;
  v82 = 0;
  v8 = 0;
  v9 = 0;
  v79 = -1;
LABEL_5:
  v83 = v8;
  while (1)
  {
    if (!YAML::Stream::operator BOOL(a1))
    {
      goto LABEL_152;
    }

LABEL_7:
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    while (1)
    {
      v11 = *a2;
      __p = 0;
      v85 = a1;
      if ((*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && (sub_1000550E8(v11, &__p) & 0x80000000) == 0 || ((v12 = sub_100054020(), __p = 0, v85 = a1, *(a1 + 64)) || YAML::Stream::_ReadAheadTo(a1, 0)) && (sub_1000550E8(v12, &__p) & 0x80000000) == 0 || !YAML::Stream::operator BOOL(a1))
      {
LABEL_46:
        v80 = 0;
        goto LABEL_47;
      }

      if (!*(a1 + 16))
      {
        if ((atomic_load_explicit(&qword_100078300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078300))
        {
          v18 = sub_100053220();
          v19 = sub_10005341C();
          YAML::operator|(v18, v19, &unk_1000782E0);
          __cxa_atexit(sub_100053FE4, &unk_1000782E0, &_mh_execute_header);
          __cxa_guard_release(&qword_100078300);
        }

        __p = 0;
        v85 = a1;
        if ((*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && (sub_1000550E8(&unk_1000782E0, &__p) & 0x80000000) == 0)
        {
          v13 = *(a2 + 32);
          if (v13 == 1)
          {
            goto LABEL_46;
          }

          if (v13 == 2)
          {
            exception = __cxa_allocate_exception(0x38uLL);
            v78 = *(a1 + 16);
            v87 = *(a1 + 8);
            v88 = v78;
            sub_10000143C(&__p, "illegal document indicator in scalar");
            sub_100041860(exception, &v87, &__p);
            *exception = off_100075368;
          }
        }
      }

      if (*(a2 + 18) == 92)
      {
        v14 = sub_1000570E0();
        __p = 0;
        v85 = a1;
        if ((*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && (sub_1000550E8(v14, &__p) & 0x80000000) == 0)
        {
          break;
        }
      }

      if (*(a2 + 18) == YAML::Stream::peek(a1))
      {
        YAML::Exp::Escape(a1, &__p);
        if ((v86 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v86 & 0x80u) == 0)
        {
          v17 = v86;
        }

        else
        {
          v17 = v85;
        }

        std::string::append(a3, p_p, v17);
        if (v86 < 0)
        {
          operator delete(__p);
        }

        if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = a3->__r_.__value_.__l.__size_;
        }

        v6 = 1;
        v79 = size;
        v9 = 1;
      }

      else
      {
        v15 = YAML::Stream::get(a1);
        std::string::push_back(a3, v15);
        v6 = 1;
        v9 = 1;
        if (v15 != 9 && v15 != 32)
        {
          goto LABEL_7;
        }
      }
    }

    YAML::Stream::get(a1);
    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v80 = 1;
    v79 = size;
    v6 = 1;
    v9 = 1;
LABEL_47:
    if (!YAML::Stream::operator BOOL(a1))
    {
      v42 = v79;
      if (*(a2 + 8) == 1)
      {
        v43 = __cxa_allocate_exception(0x38uLL);
        v44 = *(a1 + 16);
        v87 = *(a1 + 8);
        v88 = v44;
        sub_10000143C(&__p, "illegal EOF in scalar");
        sub_100041860(v43, &v87, &__p);
        *v43 = off_100075368;
      }

      goto LABEL_153;
    }

    if (*(a2 + 32) == 1 && !*(a1 + 16))
    {
      if ((atomic_load_explicit(&qword_100078300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078300))
      {
        v36 = sub_100053220();
        v37 = sub_10005341C();
        YAML::operator|(v36, v37, &unk_1000782E0);
        __cxa_atexit(sub_100053FE4, &unk_1000782E0, &_mh_execute_header);
        __cxa_guard_release(&qword_100078300);
      }

      __p = 0;
      v85 = a1;
      if ((*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && (sub_1000550E8(&unk_1000782E0, &__p) & 0x80000000) == 0)
      {
        goto LABEL_152;
      }
    }

    v20 = *a2;
    __p = 0;
    v85 = a1;
    if (*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0))
    {
      v21 = sub_1000550E8(v20, &__p);
      if ((v21 & 0x80000000) == 0)
      {
        break;
      }
    }

    if (*(a2 + 20) == 2)
    {
      std::string::erase(a3, size, 0xFFFFFFFFFFFFFFFFLL);
    }

    v22 = sub_100054020();
    __p = 0;
    v85 = a1;
    if (*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0))
    {
      v23 = sub_1000550E8(v22, &__p);
    }

    else
    {
      v23 = -1;
    }

    YAML::Stream::eat(a1, v23);
    while (YAML::Stream::peek(a1) == 32 && (*(a1 + 16) < *(a2 + 12) || !(v9 & 1 | ((*(a2 + 16) & 1) == 0))))
    {
      v24 = *a2;
      __p = 0;
      v85 = a1;
      if ((*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && (sub_1000550E8(v24, &__p) & 0x80000000) == 0)
      {
        break;
      }

      YAML::Stream::eat(a1, 1);
    }

    if (!(v9 & 1 | ((*(a2 + 16) & 1) == 0)))
    {
      v25 = *(a1 + 16);
      if (*(a2 + 12) > v25)
      {
        v25 = *(a2 + 12);
      }

      *(a2 + 12) = v25;
    }

    while (1)
    {
      if ((atomic_load_explicit(&qword_1000780A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000780A8))
      {
        v27 = sub_100055048();
        v28 = sub_100053F44();
        YAML::operator|(v27, v28, &unk_100078088);
        __cxa_atexit(sub_100053FE4, &unk_100078088, &_mh_execute_header);
        __cxa_guard_release(&qword_1000780A8);
      }

      __p = 0;
      v85 = a1;
      if (!*(a1 + 64) && !YAML::Stream::_ReadAheadTo(a1, 0))
      {
        break;
      }

      if ((sub_1000550E8(&unk_100078088, &__p) & 0x80000000) != 0)
      {
        break;
      }

      if (YAML::Stream::peek(a1) == 9 && *(a1 + 16) < *(a2 + 12) && *(a2 + 36) == 2)
      {
        v75 = __cxa_allocate_exception(0x38uLL);
        v76 = *(a1 + 16);
        v87 = *(a1 + 8);
        v88 = v76;
        sub_10000143C(&__p, "illegal tab when looking for indentation");
        sub_100041860(v75, &v87, &__p);
        *v75 = off_100075368;
      }

      if (*(a2 + 17) != 1)
      {
        break;
      }

      v26 = *a2;
      __p = 0;
      v85 = a1;
      if ((*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && (sub_1000550E8(v26, &__p) & 0x80000000) == 0)
      {
        break;
      }

      YAML::Stream::eat(a1, 1);
    }

    v29 = sub_100054020();
    __p = 0;
    v85 = a1;
    v30 = (*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && sub_1000550E8(v29, &__p) >= 0;
    if ((atomic_load_explicit(&qword_1000780A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000780A8))
    {
      v34 = sub_100055048();
      v35 = sub_100053F44();
      YAML::operator|(v34, v35, &unk_100078088);
      __cxa_atexit(sub_100053FE4, &unk_100078088, &_mh_execute_header);
      __cxa_guard_release(&qword_1000780A8);
    }

    __p = 0;
    v85 = a1;
    v8 = (*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && sub_1000550E8(&unk_100078088, &__p) >= 0;
    v31 = *(a2 + 20);
    v33 = v31 == 1 && v81 == 0;
    if (v33 && v30)
    {
      v7 = v83;
    }

    if (!v6)
    {
      goto LABEL_120;
    }

    if (v31 != 2)
    {
      if (v31 != 1)
      {
        if (!v31)
        {
          std::string::append(a3, "\n");
        }

LABEL_120:
        v82 = 1;
        v6 = 1;
        if (v30)
        {
          goto LABEL_5;
        }

LABEL_141:
        v82 = 0;
        v6 = 1;
        if (*(a1 + 16) >= *(a2 + 12))
        {
          goto LABEL_5;
        }

        *(a2 + 40) = 1;
        goto LABEL_152;
      }

      if ((v82 | v30 | (v83 || v8)))
      {
        v38 = "\n";
        if (!v30)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (*(a1 + 16) >= *(a2 + 12))
        {
          v38 = " ";
        }

        else
        {
          v38 = "\n";
        }

        if (*(a1 + 16) >= *(a2 + 12) || !v30)
        {
LABEL_124:
          std::string::append(a3, v38);
          v39 = v81 < 1 || v30;
          if ((v39 & 1) == 0)
          {
            sub_10004E004(&__p, (v81 - 1), 10);
            if ((v86 & 0x80u) == 0)
            {
              v40 = &__p;
            }

            else
            {
              v40 = __p;
            }

            if ((v86 & 0x80u) == 0)
            {
              v41 = v86;
            }

            else
            {
              v41 = v85;
            }

            std::string::append(a3, v40, v41);
            if (v86 < 0)
            {
              operator delete(__p);
            }

            if (v7 || v8 || (v9 & 1) == 0)
            {
              std::string::append(a3, "\n");
            }

            v81 = 0;
          }

          goto LABEL_120;
        }
      }

      ++v81;
      v82 = 1;
      v6 = 1;
      goto LABEL_5;
    }

    if (!v30)
    {
      if (((v82 | v80) & 1) == 0)
      {
        std::string::append(a3, " ");
      }

      goto LABEL_141;
    }

    v82 = 1;
    std::string::append(a3, "\n");
    v83 = v8;
    v6 = 1;
  }

  if (*(a2 + 8) == 1)
  {
    YAML::Stream::eat(a1, v21);
    v42 = v79;
    goto LABEL_153;
  }

LABEL_152:
  v42 = v79;
LABEL_153:
  if (*(a2 + 24) == 1)
  {
    v45 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    v46 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    v47 = v45 < 0;
    if (v45 >= 0)
    {
      v48 = a3;
    }

    else
    {
      v48 = a3->__r_.__value_.__r.__words[0];
    }

    if (v47)
    {
      v46 = a3->__r_.__value_.__l.__size_;
    }

    v49 = &v48[-1].__r_.__value_.__r.__words[2] + 7;
    v50 = v46;
    do
    {
      if (!v50)
      {
        v52 = v42 == -1;
        v50 = -1;
LABEL_168:
        v53 = v42;
        goto LABEL_169;
      }

      v51 = *(v49 + v50--);
    }

    while (v51 == 32);
    v52 = v42 == -1;
    if (v50 <= v42)
    {
      v53 = v42;
    }

    else
    {
      v53 = v50;
    }

    if (v50 == -1)
    {
      goto LABEL_168;
    }

LABEL_169:
    if (!v52)
    {
      v50 = v53;
    }

    if (v50 < v46)
    {
      std::string::erase(a3, v50 + 1, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v54 = *(a2 + 28);
  if (v54 == -1)
  {
    v64 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    v65 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    v66 = v64 < 0;
    if (v64 >= 0)
    {
      v67 = a3;
    }

    else
    {
      v67 = a3->__r_.__value_.__r.__words[0];
    }

    if (v66)
    {
      v65 = a3->__r_.__value_.__l.__size_;
    }

    v68 = &v67[-1].__r_.__value_.__r.__words[2] + 7;
    v69 = v65;
    do
    {
      if (!v69)
      {
        v71 = v42 == -1;
        v69 = -1;
        goto LABEL_208;
      }

      v70 = *(v68 + v69--);
    }

    while (v70 == 10);
    v71 = v42 == -1;
    if (v69 <= v42)
    {
      v72 = v42;
    }

    else
    {
      v72 = v69;
    }

    if (v69 != -1)
    {
      v42 = v72;
    }

LABEL_208:
    if (!v71)
    {
      v69 = v42;
    }

    if (v69 == -1)
    {
      v74 = 0;
    }

    else
    {
      if (v69 >= v65)
      {
        return;
      }

      v74 = v69 + 1;
    }

    std::string::erase(a3, v74, 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (!v54)
  {
    v55 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    v56 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    v57 = v55 < 0;
    if (v55 >= 0)
    {
      v58 = a3;
    }

    else
    {
      v58 = a3->__r_.__value_.__r.__words[0];
    }

    if (v57)
    {
      v56 = a3->__r_.__value_.__l.__size_;
    }

    v59 = &v58[-1].__r_.__value_.__r.__words[2] + 7;
    v60 = v56;
    do
    {
      if (!v60)
      {
        v62 = v42 == -1;
        v60 = -1;
        goto LABEL_202;
      }

      v61 = *(v59 + v60--);
    }

    while (v61 == 10);
    v62 = v42 == -1;
    if (v60 <= v42)
    {
      v63 = v42;
    }

    else
    {
      v63 = v60;
    }

    if (v60 != -1)
    {
      v42 = v63;
    }

LABEL_202:
    if (!v62)
    {
      v60 = v42;
    }

    if (v60 == -1)
    {
      v73 = 0;
      goto LABEL_214;
    }

    if (v60 + 1 < v56)
    {
      v73 = v60 + 2;
LABEL_214:
      std::string::erase(a3, v73, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void sub_100056FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_guard_abort(&qword_1000782D8);
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(a1);
}

void *sub_1000570E0()
{
  if ((atomic_load_explicit(&qword_100078328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078328))
  {
    YAML::RegEx::RegEx(&v2, 92);
    v1 = sub_100054020();
    YAML::operator+(&v2, v1, &unk_100078308);
    v4 = &v3;
    sub_100051FAC(&v4);
    __cxa_atexit(sub_100053FE4, &unk_100078308, &_mh_execute_header);
    __cxa_guard_release(&qword_100078328);
  }

  return &unk_100078308;
}

uint64_t YAML::ScanVerbatimTag@<X0>(YAML *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  YAML::Stream::get(this);
  while (1)
  {
    if (!YAML::Stream::operator BOOL(this))
    {
LABEL_16:
      exception = __cxa_allocate_exception(0x38uLL);
      v11 = *(this + 4);
      v12 = *(this + 1);
      v13 = v11;
      sub_10000143C(&__p, "end of verbatim tag not found");
      sub_100041860(exception, &v12, &__p);
      *exception = off_100075368;
    }

    if (YAML::Stream::peek(this) == 62)
    {
      return YAML::Stream::get(this);
    }

    v5 = sub_1000573A8();
    __p.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__l.__size_ = this;
    if (!*(this + 8) && !YAML::Stream::_ReadAheadTo(this, 0))
    {
      goto LABEL_16;
    }

    v6 = sub_1000550E8(v5, &__p);
    if (v6 < 1)
    {
      goto LABEL_16;
    }

    YAML::Stream::get(this, v6, &__p);
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
  }
}

void sub_100057334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000573A8()
{
  if ((atomic_load_explicit(&qword_100078350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078350))
  {
    v1 = sub_100057818();
    sub_10000143C(__p, "#;/?:@&=+$,_.!~*'()[]");
    YAML::RegEx::RegEx(&v12, __p, 3);
    YAML::operator|(v1, &v12, &v14);
    YAML::RegEx::RegEx(&v4, 37);
    v2 = sub_100057D0C();
    YAML::operator+(&v4, v2, &v6);
    v3 = sub_100057D0C();
    YAML::operator+(&v6, v3, &v8);
    YAML::operator|(&v14, &v8, &unk_100078330);
    v16 = &v9;
    sub_100051FAC(&v16);
    v16 = &v7;
    sub_100051FAC(&v16);
    v16 = &v5;
    sub_100051FAC(&v16);
    v8 = &v15;
    sub_100051FAC(&v8);
    v8 = &v13;
    sub_100051FAC(&v8);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_100053FE4, &unk_100078330, &_mh_execute_header);
    __cxa_guard_release(&qword_100078350);
  }

  return &unk_100078330;
}

void sub_10005751C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  *(v27 - 24) = v26 + 8;
  sub_100051FAC((v27 - 24));
  *(v27 - 24) = &a14;
  sub_100051FAC((v27 - 24));
  *(v27 - 24) = &a10;
  sub_100051FAC((v27 - 24));
  a17 = v27 - 48;
  sub_100051FAC(&a17);
  a17 = v27 - 80;
  sub_100051FAC(&a17);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_100078350);
  _Unwind_Resume(a1);
}

uint64_t YAML::ScanTagHandle@<X0>(YAML *this@<X0>, YAML::Stream *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  *a2 = 1;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    result = YAML::Stream::operator BOOL(this);
    if (!result)
    {
      return result;
    }

    result = YAML::Stream::peek(this);
    if (result == 33)
    {
      if ((*a2 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x38uLL);
        sub_10000143C(&__p, "illegal character found while scanning tag handle");
        sub_100041860(exception, &v16, &__p);
        *exception = off_100075368;
      }

      return result;
    }

    if (*a2)
    {
      v8 = sub_100057818();
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = this;
      if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (v9 = sub_1000550E8(v8, &__p), v9 >= 1))
      {
        if (*a2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        *a2 = 0;
        v10 = *(this + 4);
        v16 = *(this + 1);
        v17 = v10;
      }
    }

    v11 = sub_100057908();
    __p.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__l.__size_ = this;
    if (!*(this + 8))
    {
      result = YAML::Stream::_ReadAheadTo(this, 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    result = sub_1000550E8(v11, &__p);
    v9 = result;
    if (result < 1)
    {
      return result;
    }

LABEL_14:
    YAML::Stream::get(this, v9, &__p);
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
}

void sub_1000577A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      if (*(v15 + 23) < 0)
      {
        operator delete(*v15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void *sub_100057818()
{
  if ((atomic_load_explicit(&qword_1000783C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000783C8))
  {
    v1 = sub_100057F24();
    YAML::RegEx::RegEx(&v2, 45);
    YAML::operator|(v1, &v2, &unk_1000783A8);
    v4 = &v3;
    sub_100051FAC(&v4);
    __cxa_atexit(sub_100053FE4, &unk_1000783A8, &_mh_execute_header);
    __cxa_guard_release(&qword_1000783C8);
  }

  return &unk_1000783A8;
}

void sub_1000578D4(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1 + 8;
  sub_100051FAC((v2 - 24));
  __cxa_guard_abort(&qword_1000783C8);
  _Unwind_Resume(a1);
}

void *sub_100057908()
{
  if ((atomic_load_explicit(&qword_100078440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078440))
  {
    v1 = sub_100057818();
    sub_10000143C(__p, "#;/?:@&=+$_.~*'()");
    YAML::RegEx::RegEx(&v12, __p, 3);
    YAML::operator|(v1, &v12, &v14);
    YAML::RegEx::RegEx(&v4, 37);
    v2 = sub_100057D0C();
    YAML::operator+(&v4, v2, &v6);
    v3 = sub_100057D0C();
    YAML::operator+(&v6, v3, &v8);
    YAML::operator|(&v14, &v8, &unk_100078420);
    v16 = &v9;
    sub_100051FAC(&v16);
    v16 = &v7;
    sub_100051FAC(&v16);
    v16 = &v5;
    sub_100051FAC(&v16);
    v8 = &v15;
    sub_100051FAC(&v8);
    v8 = &v13;
    sub_100051FAC(&v8);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_100053FE4, &unk_100078420, &_mh_execute_header);
    __cxa_guard_release(&qword_100078440);
  }

  return &unk_100078420;
}

void sub_100057A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  *(v27 - 24) = v26 + 8;
  sub_100051FAC((v27 - 24));
  *(v27 - 24) = &a14;
  sub_100051FAC((v27 - 24));
  *(v27 - 24) = &a10;
  sub_100051FAC((v27 - 24));
  a17 = v27 - 48;
  sub_100051FAC(&a17);
  a17 = v27 - 80;
  sub_100051FAC(&a17);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_100078440);
  _Unwind_Resume(a1);
}

uint64_t YAML::ScanTagSuffix@<X0>(YAML *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  while (1)
  {
    result = YAML::Stream::operator BOOL(this);
    if (!result)
    {
      break;
    }

    v6 = sub_100057908();
    __p.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__l.__size_ = this;
    if (!*(this + 8))
    {
      result = YAML::Stream::_ReadAheadTo(this, 0);
      if ((result & 1) == 0)
      {
        break;
      }
    }

    result = sub_1000550E8(v6, &__p);
    if (result < 1)
    {
      break;
    }

    YAML::Stream::get(this, result, &__p);
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
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (!v9)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v11 = *(this + 4);
    v12 = *(this + 1);
    v13 = v11;
    sub_10000143C(&__p, "tag handle with no suffix");
    sub_100041860(exception, &v12, &__p);
    *exception = off_100075368;
  }

  return result;
}

void sub_100057C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      if (*(v17 + 23) < 0)
      {
        operator delete(*v17);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void *sub_100057D0C()
{
  if ((atomic_load_explicit(&qword_100078378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078378))
  {
    v1 = sub_100057E80();
    YAML::RegEx::RegEx(&v4, 65, 70);
    YAML::operator|(v1, &v4, &v6);
    YAML::RegEx::RegEx(&v2, 97, 102);
    YAML::operator|(&v6, &v2, &unk_100078358);
    v8 = &v3;
    sub_100051FAC(&v8);
    v2 = &v7;
    sub_100051FAC(&v2);
    v2 = &v5;
    sub_100051FAC(&v2);
    __cxa_atexit(sub_100053FE4, &unk_100078358, &_mh_execute_header);
    __cxa_guard_release(&qword_100078378);
  }

  return &unk_100078358;
}

void sub_100057E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v16 - 24) = v15 + 8;
  sub_100051FAC((v16 - 24));
  a10 = (v16 - 48);
  sub_100051FAC(&a10);
  a10 = &a15;
  sub_100051FAC(&a10);
  __cxa_guard_abort(&qword_100078378);
  _Unwind_Resume(a1);
}

int *sub_100057E80()
{
  if ((atomic_load_explicit(&qword_1000783A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000783A0))
  {
    YAML::RegEx::RegEx(&dword_100078380, 48, 57);
    __cxa_atexit(sub_100053FE4, &dword_100078380, &_mh_execute_header);
    __cxa_guard_release(&qword_1000783A0);
  }

  return &dword_100078380;
}

void *sub_100057F24()
{
  if ((atomic_load_explicit(&qword_1000783F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000783F0))
  {
    v1 = sub_100057FD4();
    v2 = sub_100057E80();
    YAML::operator|(v1, v2, &unk_1000783D0);
    __cxa_atexit(sub_100053FE4, &unk_1000783D0, &_mh_execute_header);
    __cxa_guard_release(&qword_1000783F0);
  }

  return &unk_1000783D0;
}

void *sub_100057FD4()
{
  if ((atomic_load_explicit(&qword_100078418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078418))
  {
    YAML::RegEx::RegEx(&v3, 97, 122);
    YAML::RegEx::RegEx(&v1, 65, 90);
    YAML::operator|(&v3, &v1, &unk_1000783F8);
    v5 = &v2;
    sub_100051FAC(&v5);
    v1 = &v4;
    sub_100051FAC(&v1);
    __cxa_atexit(sub_100053FE4, &unk_1000783F8, &_mh_execute_header);
    __cxa_guard_release(&qword_100078418);
  }

  return &unk_1000783F8;
}

void sub_1000580B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v16 - 24) = v15 + 8;
  sub_100051FAC((v16 - 24));
  a10 = &a15;
  sub_100051FAC(&a10);
  __cxa_guard_abort(&qword_100078418);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanDirective(YAML::Scanner *this)
{
  memset(v21, 0, 24);
  YAML::Scanner::PopAllIndents(this);
  YAML::Scanner::PopAllSimpleKeys(this);
  *(this + 73) = 0;
  v2 = *(this + 1);
  v3 = *(this + 4);
  *&v16 = 0;
  *(&v16 + 1) = v2;
  v17 = v3;
  *__p = 0u;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  YAML::Stream::eat(this, 1);
  while (YAML::Stream::operator BOOL(this))
  {
    if ((atomic_load_explicit(&qword_100078080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078080))
    {
      v5 = sub_100054F98();
      v6 = sub_100054020();
      YAML::operator|(v5, v6, &unk_100078060);
      __cxa_atexit(sub_100053FE4, &unk_100078060, &_mh_execute_header);
      __cxa_guard_release(&qword_100078080);
    }

    v14.__r_.__value_.__r.__words[0] = 0;
    v14.__r_.__value_.__l.__size_ = this;
    if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (sub_1000550E8(&unk_100078060, &v14) & 0x80000000) == 0)
    {
      break;
    }

    v4 = YAML::Stream::get(this);
    std::string::push_back(__p, v4);
  }

  while (1)
  {
    while (1)
    {
      if ((atomic_load_explicit(&qword_1000780A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000780A8))
      {
        v12 = sub_100055048();
        v13 = sub_100053F44();
        YAML::operator|(v12, v13, &unk_100078088);
        __cxa_atexit(sub_100053FE4, &unk_100078088, &_mh_execute_header);
        __cxa_guard_release(&qword_1000780A8);
      }

      v14.__r_.__value_.__r.__words[0] = 0;
      v14.__r_.__value_.__l.__size_ = this;
      if (!*(this + 8) && !YAML::Stream::_ReadAheadTo(this, 0))
      {
        break;
      }

      if ((sub_1000550E8(&unk_100078088, &v14) & 0x80000000) != 0)
      {
        break;
      }

      YAML::Stream::eat(this, 1);
    }

    if (!YAML::Stream::operator BOOL(this))
    {
      break;
    }

    v7 = sub_100054020();
    v14.__r_.__value_.__r.__words[0] = 0;
    v14.__r_.__value_.__l.__size_ = this;
    if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (sub_1000550E8(v7, &v14) & 0x80000000) == 0)
    {
      break;
    }

    if ((atomic_load_explicit(&qword_100078210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078210))
    {
      YAML::RegEx::RegEx(&dword_1000781F0, 35);
      __cxa_atexit(sub_100053FE4, &dword_1000781F0, &_mh_execute_header);
      __cxa_guard_release(&qword_100078210);
    }

    LODWORD(v14.__r_.__value_.__l.__data_) = dword_1000781F0;
    WORD2(v14.__r_.__value_.__r.__words[0]) = word_1000781F4;
    v15 = 0;
    *&v14.__r_.__value_.__r.__words[1] = 0uLL;
    sub_100052400(&v14.__r_.__value_.__l.__size_, qword_1000781F8, unk_100078200, (unk_100078200 - qword_1000781F8) >> 5);
    p_size = 0;
    v23 = this;
    if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
    {
      v8 = sub_1000550E8(&v14, &p_size);
      p_size = &v14.__r_.__value_.__l.__size_;
      sub_100051FAC(&p_size);
      if ((v8 & 0x80000000) == 0)
      {
        break;
      }
    }

    else
    {
      p_size = &v14.__r_.__value_.__l.__size_;
      sub_100051FAC(&p_size);
    }

    memset(&v14, 0, sizeof(v14));
    while (YAML::Stream::operator BOOL(this))
    {
      if ((atomic_load_explicit(&qword_100078080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078080))
      {
        v10 = sub_100054F98();
        v11 = sub_100054020();
        YAML::operator|(v10, v11, &unk_100078060);
        __cxa_atexit(sub_100053FE4, &unk_100078060, &_mh_execute_header);
        __cxa_guard_release(&qword_100078080);
      }

      p_size = 0;
      v23 = this;
      if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (sub_1000550E8(&unk_100078060, &p_size) & 0x80000000) == 0)
      {
        break;
      }

      v9 = YAML::Stream::get(this);
      std::string::push_back(&v14, v9);
    }

    sub_1000012A8(v19 + 1, &v14);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  sub_10005B214(this + 96, &v16);
  v14.__r_.__value_.__r.__words[0] = v19 + 8;
  sub_100002260(&v14);
  if (SBYTE7(v19[0]) < 0)
  {
    operator delete(__p[0]);
  }

  *&v16 = v21;
  sub_100002260(&v16);
}

void sub_10005852C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_guard_abort(&qword_100078080);
  sub_1000546CC(&a17);
  a17 = &a27;
  sub_100002260(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1000585E0@<X0>(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_100078210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078210))
  {
    YAML::RegEx::RegEx(&dword_1000781F0, 35);
    __cxa_atexit(sub_100053FE4, &dword_1000781F0, &_mh_execute_header);
    __cxa_guard_release(&qword_100078210);
  }

  *a1 = dword_1000781F0;
  *(a1 + 4) = word_1000781F4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v2 = qword_1000781F8;
  v3 = unk_100078200;
  v4 = (unk_100078200 - qword_1000781F8) >> 5;

  return sub_100052400(a1 + 8, v2, v3, v4);
}

void YAML::Scanner::ScanDocStart(YAML::Scanner *this)
{
  YAML::Scanner::PopAllIndents(this);
  YAML::Scanner::PopAllSimpleKeys(this);
  *(this + 73) = 0;
  v2 = *(this + 1);
  v3 = *(this + 4);
  YAML::Stream::eat(this, 3);
  *&v4 = &_mh_execute_header;
  *(&v4 + 1) = v2;
  v5 = v3;
  *__p = 0u;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  sub_100055BA4(this + 96, &v4);
  v9 = v7 + 1;
  sub_100002260(&v9);
  if (SBYTE7(v7[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100058764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000546CC(va);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanDocEnd(YAML::Scanner *this)
{
  YAML::Scanner::PopAllIndents(this);
  YAML::Scanner::PopAllSimpleKeys(this);
  *(this + 73) = 0;
  v2 = *(this + 1);
  v3 = *(this + 4);
  YAML::Stream::eat(this, 3);
  *&v4 = 0x200000000;
  *(&v4 + 1) = v2;
  v5 = v3;
  *__p = 0u;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  sub_100055BA4(this + 96, &v4);
  v9 = v7 + 1;
  sub_100002260(&v9);
  if (SBYTE7(v7[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100058820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000546CC(va);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanFlowStart(YAML::Scanner *this)
{
  YAML::Scanner::InsertPotentialSimpleKey(this);
  *(this + 73) = 1;
  v2 = *(this + 1);
  v3 = *(this + 4);
  v10 = YAML::Stream::get(this) == 91;
  sub_10005B348(this + 34, &v10);
  if (v10)
  {
    v4 = 8;
  }

  else
  {
    v4 = 9;
  }

  LODWORD(v5) = 0;
  DWORD1(v5) = v4;
  *(&v5 + 1) = v2;
  v6 = v3;
  *__p = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  sub_100055BA4(this + 96, &v5);
  v11 = v8 + 1;
  sub_100002260(&v11);
  if (SBYTE7(v8[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void YAML::Scanner::ScanFlowEnd(YAML::Scanner *this)
{
  v2 = *(this + 39);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v17 = *(this + 4);
    v25 = *(this + 1);
    v26 = v17;
    sub_10000143C(&v19, "illegal flow end");
    sub_100041860(exception, &v25, &v19);
    *exception = off_100075368;
  }

  v3 = v2 + *(this + 38) - 1;
  v4 = *(this + 35);
  v5 = v3 >> 10;
  v6 = *(v4 + 8 * (v3 >> 10));
  v7 = v3 & 0x3FF;
  if (!*(v6 + 4 * v7))
  {
    if (YAML::Scanner::VerifySimpleKey(this))
    {
      v8 = *(this + 1);
      v9 = *(this + 4);
      *&v19 = 0xF00000000;
      *(&v19 + 1) = v8;
      v20 = v9;
      *__p = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0;
      sub_100055BA4(this + 96, &v19);
      v25 = &v22 + 1;
      sub_100002260(&v25);
      if (SBYTE7(v22) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_9;
    }

    v4 = *(this + 35);
    v10 = *(this + 39) + *(this + 38) - 1;
    v5 = v10 >> 10;
    v7 = v10 & 0x3FF;
  }

  if (*(*(v4 + 8 * v5) + 4 * v7) == 1)
  {
    YAML::Scanner::InvalidateSimpleKey(this);
  }

LABEL_9:
  *(this + 73) = 256;
  v11 = *(this + 4);
  v25 = *(this + 1);
  v26 = v11;
  v12 = YAML::Stream::get(this);
  v13 = *(this + 39) - 1;
  if (*(*(*(this + 35) + (((v13 + *(this + 38)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v13 + *(this + 38)) & 0x3FF)) != (v12 == 93))
  {
    v18 = __cxa_allocate_exception(0x38uLL);
    sub_10000143C(&v19, "illegal flow end");
    sub_100041860(v18, &v25, &v19);
    *v18 = off_100075368;
  }

  v14 = v12;
  *(this + 39) = v13;
  sub_10005BA14(this + 34, 1);
  if (v14 == 93)
  {
    v15 = 10;
  }

  else
  {
    v15 = 11;
  }

  LODWORD(v19) = 0;
  DWORD1(v19) = v15;
  *(&v19 + 1) = v25;
  v20 = v26;
  *__p = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  sub_100055BA4(this + 96, &v19);
  v27 = &v22 + 1;
  sub_100002260(&v27);
  if (SBYTE7(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void YAML::Scanner::ScanFlowEntry(YAML::Scanner *this)
{
  v2 = *(this + 39);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2 + *(this + 38) - 1;
  v4 = *(this + 35);
  v5 = v3 >> 10;
  v6 = *(v4 + 8 * (v3 >> 10));
  v7 = v3 & 0x3FF;
  if (!*(v6 + 4 * v7))
  {
    if (YAML::Scanner::VerifySimpleKey(this))
    {
      v8 = *(this + 1);
      v9 = *(this + 4);
      *&v13 = 0xF00000000;
      *(&v13 + 1) = v8;
      v14 = v9;
      *__p = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      sub_100055BA4(this + 96, &v13);
      v19 = &v16 + 1;
      sub_100002260(&v19);
      if (SBYTE7(v16) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_9;
    }

    v4 = *(this + 35);
    v10 = *(this + 39) + *(this + 38) - 1;
    v5 = v10 >> 10;
    v7 = v10 & 0x3FF;
  }

  if (*(*(v4 + 8 * v5) + 4 * v7) == 1)
  {
    YAML::Scanner::InvalidateSimpleKey(this);
  }

LABEL_9:
  *(this + 73) = 1;
  v11 = *(this + 1);
  v12 = *(this + 4);
  YAML::Stream::eat(this, 1);
  *&v13 = 0xD00000000;
  *(&v13 + 1) = v11;
  v14 = v12;
  *__p = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  sub_100055BA4(this + 96, &v13);
  v19 = &v16 + 1;
  sub_100002260(&v19);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100058D80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000546CC(va);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanBlockEntry(YAML::Scanner *this)
{
  if (*(this + 39))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v6 = *(this + 4);
    v14 = *(this + 1);
    v15 = v6;
    sub_10000143C(&v9, "illegal block entry");
    sub_100041860(exception, &v14, &v9);
    *exception = off_100075368;
  }

  if ((*(this + 146) & 1) == 0)
  {
    v7 = __cxa_allocate_exception(0x38uLL);
    v8 = *(this + 4);
    v14 = *(this + 1);
    v15 = v8;
    sub_10000143C(&v9, "illegal block entry");
    sub_100041860(v7, &v14, &v9);
    *v7 = off_100075368;
  }

  v2 = *(this + 4);
  YAML::Scanner::PushIndentTo(this);
  *(this + 73) = 1;
  v3 = *(this + 1);
  v4 = *(this + 4);
  YAML::Stream::eat(this, 1);
  *&v9 = 0x700000000;
  *(&v9 + 1) = v3;
  v10 = v4;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  sub_100055BA4(this + 96, &v9);
  v14 = v12 + 1;
  sub_100002260(&v14);
  if (SBYTE7(v12[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100058F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void YAML::Scanner::ScanKey(YAML::Scanner *this)
{
  if (*(this + 39))
  {
    v2 = 0;
  }

  else
  {
    if ((*(this + 146) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      v7 = this;
      v8 = exception;
      v9 = *(v7 + 1);
      LODWORD(v7) = *(v7 + 4);
      v15 = v9;
      v16 = v7;
      sub_10000143C(&v10, "illegal map key");
      sub_100041860(v8, &v15, &v10);
      *v8 = off_100075368;
    }

    v3 = *(this + 4);
    YAML::Scanner::PushIndentTo(this);
    v2 = *(this + 39) == 0;
  }

  *(this + 146) = v2;
  v4 = *(this + 1);
  v5 = *(this + 4);
  YAML::Stream::eat(this, 1);
  *&v10 = 0xE00000000;
  *(&v10 + 1) = v4;
  v11 = v5;
  *__p = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  sub_100055BA4(this + 96, &v10);
  v15 = v13 + 1;
  sub_100002260(&v15);
  if (SBYTE7(v13[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100059110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void YAML::Scanner::ScanValue(YAML::Scanner *this)
{
  v2 = YAML::Scanner::VerifySimpleKey(this);
  *(this + 147) = 0;
  if (v2)
  {
    *(this + 146) = 0;
  }

  else
  {
    if (*(this + 39))
    {
      v3 = 0;
    }

    else
    {
      if ((*(this + 146) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x38uLL);
        v8 = this;
        v9 = exception;
        v10 = *(v8 + 1);
        LODWORD(v8) = *(v8 + 4);
        v16 = v10;
        v17 = v8;
        sub_10000143C(&v11, "illegal map value");
        sub_100041860(v9, &v16, &v11);
        *v9 = off_100075368;
      }

      v4 = *(this + 4);
      YAML::Scanner::PushIndentTo(this);
      v3 = *(this + 39) == 0;
    }

    *(this + 146) = v3;
  }

  v5 = *(this + 1);
  v6 = *(this + 4);
  YAML::Stream::eat(this, 1);
  *&v11 = 0xF00000000;
  *(&v11 + 1) = v5;
  v12 = v6;
  *__p = 0u;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  sub_100055BA4(this + 96, &v11);
  v16 = v14 + 1;
  sub_100002260(&v16);
  if (SBYTE7(v14[0]) < 0)
  {
    operator delete(__p[0]);
  }
}