uint64_t sub_10008B7D8(uint64_t result)
{
  if ((*(*(result + 8) + 168) & 1) == 0)
  {
    sub_100013CA0(v1, 0, 0, 0, 2);
  }

  return result;
}

void sub_10008B910(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10008B93C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10008B988(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100014578(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100004E54(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_10008BAC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100185570;
  a2[1] = v2;
  return result;
}

uint64_t sub_10008BAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 152);
  if (v5 >= *(v4 + 160))
  {
    result = sub_10001D0FC(v4 + 144, a3);
  }

  else
  {
    *v5 = *a3;
    *(v5 + 8) = *(a3 + 8);
    sub_10000298C(a3);
    *a3 = 0;
    *(a3 + 8) = 0;
    sub_10000298C(v5);
    result = v5 + 16;
  }

  *(v4 + 152) = result;
  return result;
}

uint64_t sub_10008BB6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008BBB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

id sub_10008BC38(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 6)
  {
    __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    sub_10001E0A4(a1, &__p);
    v3 = [NSNumber numberWithUnsignedLongLong:__p.__r_.__value_.__r.__words[0]];
    goto LABEL_7;
  }

  if (v2 == 4)
  {
    __p.__r_.__value_.__s.__data_[0] = -86;
    sub_100032734(a1, &__p);
    v3 = [NSNumber numberWithBool:__p.__r_.__value_.__s.__data_[0]];
LABEL_7:
    v4 = v3;
    goto LABEL_8;
  }

  if ((v2 - 5) <= 1)
  {
    __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    sub_10001D684(a1, &__p);
    v3 = [NSNumber numberWithLongLong:__p.__r_.__value_.__r.__words[0]];
    goto LABEL_7;
  }

  v4 = 0;
  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      v3 = +[NSNull null];
      goto LABEL_7;
    }

    v50 = 0;
    v51 = 0;
    v52 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    sub_10008C40C(&v50, *(*(a1 + 1) + 16));
    v6 = *a1;
    if (*a1)
    {
      if (v6 == 1)
      {
        v6 = *(*(a1 + 1) + 16);
      }

      else if (v6 == 2)
      {
        v6 = (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4;
      }

      else
      {
        v6 = 1;
      }
    }

    sub_10008C4C8(&v47, v6);
    v46 = a1;
    sub_10008C584(&v46, &__p);
    sub_10008C608(&v46, v35);
    while (!sub_10000DD7C(&__p, v35))
    {
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v34[16] = v15;
      *v34 = v15;
      v33 = v15;
      v31 = __p;
      *v32 = v40;
      *&v32[16] = v41;
      if (SHIBYTE(v43) < 0)
      {
        sub_1000078D8(&v33, v42, *(&v42 + 1));
      }

      else
      {
        v33 = v42;
        *v34 = v43;
      }

      if (SHIBYTE(v45) < 0)
      {
        sub_1000078D8(&v34[8], v44, *(&v44 + 1));
      }

      else
      {
        *&v34[8] = v44;
        *&v34[24] = v45;
      }

      v16 = sub_10008C68C(&v31);
      if (*(v16 + 23) >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = *v16;
      }

      v18 = [NSString stringWithUTF8String:v17, v31.__r_.__value_.__r.__words[0], *&v31.__r_.__value_.__r.__words[1], *v32];
      v19 = v51;
      if (v51 >= v52)
      {
        v21 = (v51 - v50) >> 3;
        if ((v21 + 1) >> 61)
        {
          sub_10002C63C();
        }

        v22 = (v52 - v50) >> 2;
        if (v22 <= v21 + 1)
        {
          v22 = v21 + 1;
        }

        if (v52 - v50 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        v57 = &v50;
        if (v23)
        {
          sub_10008C978(&v50, v23);
        }

        v53 = 0;
        v54 = (8 * v21);
        v56 = 0;
        *v54 = v18;
        v55 = 8 * v21 + 8;
        sub_10008C8C8(&v50, &v53);
        v20 = v51;
        sub_10008C9C0(&v53);
      }

      else
      {
        *v51 = v18;
        v20 = v19 + 1;
      }

      v51 = v20;
      v24 = sub_10000DB44(&v31);
      v25 = sub_10008BC38(v24);
      v26 = v48;
      if (v48 >= v49)
      {
        v28 = (v48 - v47) >> 3;
        if ((v28 + 1) >> 61)
        {
          sub_10002C63C();
        }

        v29 = (v49 - v47) >> 2;
        if (v29 <= v28 + 1)
        {
          v29 = v28 + 1;
        }

        if (v49 - v47 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        v57 = &v47;
        if (v30)
        {
          sub_10008C978(&v47, v30);
        }

        v53 = 0;
        v54 = (8 * v28);
        v56 = 0;
        *v54 = v25;
        v55 = 8 * v28 + 8;
        sub_10008C8C8(&v47, &v53);
        v27 = v48;
        sub_10008C9C0(&v53);
      }

      else
      {
        *v48 = v25;
        v27 = v26 + 1;
      }

      v48 = v27;
      if ((v34[31] & 0x80000000) != 0)
      {
        operator delete(*&v34[8]);
      }

      if ((v34[7] & 0x80000000) != 0)
      {
        operator delete(v33);
      }

      sub_100012BFC(&__p);
      *&v41 = v41 + 1;
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(v35[7]);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    v4 = [NSDictionary dictionaryWithObjects:v31.__r_.__value_.__r.__words[0] forKeys:*&v31.__r_.__value_.__r.__words[1] count:*v32, *&v32[8], *&v32[24]];
    __p.__r_.__value_.__r.__words[0] = &v47;
    sub_10008C848(&__p);
    __p.__r_.__value_.__r.__words[0] = &v50;
    sub_10008C848(&__p);
  }

  else
  {
    switch(v2)
    {
      case 2:
        v54 = 0;
        v55 = 0;
        v53 = 0;
        sub_10008C4C8(&v53, (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4);
        v35[0] = a1;
        memset(&v35[1], 0, 24);
        v35[4] = 0x8000000000000000;
        sub_10000DF14(v35);
        v31.__r_.__value_.__r.__words[0] = a1;
        *&v31.__r_.__value_.__r.__words[1] = 0uLL;
        *v32 = 0;
        *&v32[8] = 0x8000000000000000;
        sub_10000DCFC(&v31);
        while (!sub_10000DD7C(v35, &v31))
        {
          v7 = sub_10000DB44(v35);
          v8 = sub_10008BC38(v7);
          v9 = v54;
          if (v54 >= v55)
          {
            v11 = (v54 - v53) >> 3;
            if ((v11 + 1) >> 61)
            {
              sub_10002C63C();
            }

            v12 = (v55 - v53) >> 2;
            if (v12 <= v11 + 1)
            {
              v12 = v11 + 1;
            }

            if (v55 - v53 >= 0x7FFFFFFFFFFFFFF8)
            {
              v13 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v12;
            }

            *(&v40 + 1) = &v53;
            if (v13)
            {
              sub_10008C978(&v53, v13);
            }

            __p.__r_.__value_.__r.__words[0] = 0;
            __p.__r_.__value_.__l.__size_ = 8 * v11;
            *&v40 = 0;
            *__p.__r_.__value_.__l.__size_ = v8;
            __p.__r_.__value_.__r.__words[2] = 8 * v11 + 8;
            sub_10008C8C8(&v53, &__p);
            v10 = v54;
            sub_10008C9C0(&__p);
          }

          else
          {
            *v54 = v8;
            v10 = v9 + 1;
          }

          v54 = v10;
          sub_100012BFC(v35);
        }

        v4 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
        __p.__r_.__value_.__r.__words[0] = &v53;
        sub_10008C848(&__p);
        break;
      case 3:
        sub_100010390(a1, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v4 = [NSString stringWithUTF8String:p_p];
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        break;
      case 7:
        __p.__r_.__value_.__r.__words[0] = -1;
        sub_100025F58(a1, &__p);
        v3 = [NSNumber numberWithDouble:*&__p.__r_.__value_.__l.__data_];
        goto LABEL_7;
    }
  }

LABEL_8:

  return v4;
}

void sub_10008C2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10008C40C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_10008C978(result, a2);
    }

    sub_10002C63C();
  }

  return result;
}

void *sub_10008C4C8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_10008C978(result, a2);
    }

    sub_10002C63C();
  }

  return result;
}

uint64_t sub_10008C584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v4;
  v6[1] = v4;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  sub_10000DEC4(v6, v3);
  sub_10000DF14(v6);
  return sub_10008CA14(a2, v6);
}

uint64_t sub_10008C608@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v4;
  v6[1] = v4;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  sub_10000DEC4(v6, v3);
  sub_10000DCFC(v6);
  return sub_10008CA14(a2, v6);
}

uint64_t sub_10008C68C(unsigned __int8 **a1)
{
  if (!*a1)
  {
    sub_100025780();
  }

  v2 = **a1;
  if (v2 == 1)
  {

    return sub_100088A20(a1);
  }

  else if (v2 == 2)
  {
    v3 = a1[5];
    if (v3 != a1[6])
    {
      sub_10008CA78((a1 + 7), v3);
      a1[6] = a1[5];
    }

    return (a1 + 7);
  }

  else
  {
    return (a1 + 10);
  }
}

uint64_t sub_10008C714(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

void sub_10008C758(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10001A460(&v5, a2, (*(a1 + 40) + 1));
  v3 = *(v2 + 8);
  if (v3 >= *(v2 + 16))
  {
    v4 = sub_10001D0FC(v2, &v5);
  }

  else
  {
    *v3 = v5;
    *(v3 + 8) = v6;
    sub_10000298C(&v5);
    LOBYTE(v5) = 0;
    v6 = 0;
    sub_10000298C(v3);
    v4 = v3 + 16;
  }

  *(v2 + 8) = v4;
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
}

void sub_10008C82C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_10008C848(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10008C8C8(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_10008C978(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100025BBC();
}

uint64_t sub_10008C9C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10008CA14(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10000459C((a1 + 56), "0");
  sub_10000459C((a1 + 80), "");
  return a1;
}

double sub_10008CA78(uint64_t a1, unint64_t __val)
{
  std::to_string(&v4, __val);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

id sub_10008CAF8(void *a1, void *a2)
{
  v2 = sub_10008CB28(a1, a2, 1);

  return v2;
}

id sub_10008CB28(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v17 = v5;
  v7 = sub_10008D568(v5, v6, a3);
  if (sub_10008D444(v7))
  {
    v8 = sub_10008D768(v17, v6, a3);
    v9 = v8;
    if (v8)
    {
      v10 = [v8 uppercaseString];
      v11 = [NSString stringWithFormat:@"%@ %@", v7, v10];

      if (v11)
      {
        v12 = 0;
        v13 = 0;
        goto LABEL_13;
      }

      v14 = v9;
      if (!a3)
      {
        goto LABEL_8;
      }

LABEL_6:
      v15 = sub_10008D07C(v17, v6);
      v13 = sub_10008D23C(v17, v6);
      v12 = v15;
      goto LABEL_9;
    }
  }

  v14 = 0;
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_8:
  v12 = sub_10008D294(v17, v6);
  v13 = sub_10008D3EC(v17, v6);
LABEL_9:
  v11 = 0;
  if (v12 && v13)
  {
    v11 = [NSString stringWithFormat:@"Unknown (mcc=%@, mnc=%@)", v12, v13];
  }

  v9 = v14;
LABEL_13:

  return v11;
}

id sub_10008CD84(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[CTBundle alloc] initWithBundleType:1];
  v13 = 0;
  v6 = [v3 copyBundleVersion:v4 bundleType:v5 error:&v13];
  v7 = v13;

  if (v7)
  {
    v8 = qword_100192D98;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [v7 description];
      v11 = v10;
      v12 = [v10 UTF8String];
      *buf = 136315138;
      v15 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[TelephonyStateHelpers]: Failed to get the CarrierBundle version: %s", buf, 0xCu);
    }
  }

  return v6;
}

void sub_10008CEE0(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id sub_10008CF2C(void *a1, void *a2)
{
  v2 = sub_10008CF5C(a1, a2, 1);

  return v2;
}

id sub_10008CF5C(void *a1, void *a2, int a3)
{
  v3 = sub_10008D768(a1, a2, a3);
  if (v3)
  {
    v4 = +[NSLocale systemLocale];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 localizedStringForCountryCode:v3];
    }

    else
    {
      v6 = 0;
    }

    v8 = sub_10008D978(v6);
  }

  else
  {
    v7 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
    {
      sub_10011E258(v7);
    }

    v8 = 0;
  }

  return v8;
}

id sub_10008D04C(void *a1, void *a2)
{
  v2 = sub_10008CB28(a1, a2, 0);

  return v2;
}

void *sub_10008D07C(void *a1, uint64_t a2)
{
  v11 = 0;
  v2 = [a1 copyMobileSubscriberCountryCode:a2 error:&v11];
  v3 = v11;
  if (v3)
  {
    v4 = qword_100192D98;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 description];
      v9 = v8;
      v10 = [v8 UTF8String];
      *buf = 136315138;
      v13 = v10;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[TelephonyStateHelpers]: Failed to get the subscriber MCC: %s", buf, 0xCu);
    }
  }

  if (sub_10008D1D4(v2))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void sub_10008D19C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_10008D1D4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    v3 = [v2 isEqualToString:@"65535"];
  }

  else
  {
    v3 = 1;
  }

  return v3 ^ 1;
}

void *sub_10008D23C(void *a1, uint64_t a2)
{
  v2 = [a1 copyMobileSubscriberNetworkCode:a2 error:0];
  if (sub_10008D1D4(v2))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void *sub_10008D294(void *a1, uint64_t a2)
{
  v11 = 0;
  v2 = [a1 copyMobileCountryCode:a2 error:&v11];
  v3 = v11;
  if (v3)
  {
    v4 = qword_100192D98;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 description];
      v9 = v8;
      v10 = [v8 UTF8String];
      *buf = 136315138;
      v13 = v10;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[TelephonyStateHelpers]: Failed to get the serving MCC: %s", buf, 0xCu);
    }
  }

  if (sub_10008D1D4(v2))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void sub_10008D3B4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *sub_10008D3EC(void *a1, uint64_t a2)
{
  v2 = [a1 copyMobileNetworkCode:a2 error:0];
  if (sub_10008D1D4(v2))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_10008D444(void *a1)
{
  v1 = a1;
  v2 = [NSSet setWithArray:&off_10018CC70];
  v3 = v2;
  if (v1)
  {
    v4 = [v2 containsObject:v1] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10008D4D0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:kCTRegistrationStatusRegisteredHome] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", kCTRegistrationStatusRegisteredRoaming))
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 isEqualToString:kCTRegistrationStatusEmergencyOnly];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSObject *sub_10008D568(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [CTBundle alloc];
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = [v7 initWithBundleType:v8];
  v19 = 0;
  v10 = [v5 copyCarrierBundleValue:v6 key:@"CarrierName" bundleType:v9 error:&v19];
  v11 = v19;
  if (v11)
  {
    v12 = qword_100192D98;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v11 description];
      v17 = v16;
      v18 = [v16 UTF8String];
      *buf = 136315138;
      v21 = v18;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[TelephonyStateHelpers]: Failed to get the CarrierName from the bundle: %s", buf, 0xCu);
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_8;
    }

    v15 = [v5 getEnglishCarrierNameFor:v10 error:0];
    v12 = v15;
    if (v15)
    {
      v12 = v15;

      v10 = v12;
    }
  }

LABEL_8:
  v13 = v10;

  return v10;
}

id sub_10008D768(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [CTBundle alloc];
  if (a3)
  {
    v8 = 5;
  }

  else
  {
    v8 = 6;
  }

  v9 = [v7 initWithBundleType:v8];
  v18 = 0;
  v10 = [v5 copyCarrierBundleValue:v6 key:@"ISOAlpha2CountryCode" bundleType:v9 error:&v18];
  v11 = v18;
  if (v11)
  {
    v12 = qword_100192D98;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v11 description];
      v16 = v15;
      v17 = [v15 UTF8String];
      *buf = 136315138;
      v20 = v17;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[TelephonyStateHelpers]: Failed to get the ISOAlpha2CountryCode from country bundle: %s", buf, 0xCu);
    }
  }

  if (v10 && [v10 count])
  {
    v13 = [v10 objectAtIndex:0];
    if ([v13 length] == 2)
    {
      goto LABEL_13;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

void sub_10008D928(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

__CFString *sub_10008D978(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (([(__CFString *)v1 isEqualToString:@"China"]& 1) != 0)
    {
      v3 = @"China mainland";
    }

    else if (([(__CFString *)v2 isEqualToString:@"Taiwan (China)"]& 1) != 0)
    {
      v3 = @"Taiwan";
    }

    else if (([(__CFString *)v2 isEqualToString:@"Hong Kong (China)"]& 1) != 0)
    {
      v3 = @"Hong Kong";
    }

    else
    {
      if (![(__CFString *)v2 isEqualToString:@"Macao (China)"])
      {
        goto LABEL_11;
      }

      v3 = @"Macao";
    }

    v2 = v3;
  }

LABEL_11:

  return v2;
}

void start()
{
  objc_autoreleasePoolPush();
  sub_1000D39CC();
  sub_100089A40();
  v0 = getenv("USER");
  if (!v0)
  {
    v0 = "";
  }

  if (strcmp(v0, "_analyticsd"))
  {
    v24 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_ERROR))
    {
      sub_10011E2C8(v24);
    }

    v25 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_ERROR))
    {
      sub_10011E35C(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    exit(1);
  }

  sub_1000ACD6C();
  memset(&v41, 0, sizeof(v41));
  v1 = getuid();
  v2 = 10;
  while (1)
  {
    v3 = sub_10005D1A4();
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    v4 = !stat(v3, &v41) && v41.st_uid == v1;
    if (v4 && (~v41.st_mode & 0x1C0) == 0)
    {
      break;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10011E3C0(&v33, v34);
    }

    sleep(0xAu);
    if (!--v2)
    {
      st_uid = v41.st_uid;
      v6 = (~v41.st_mode & 0x1C0) == 0;
LABEL_18:
      if (st_uid != v1 || !v6)
      {
        v7 = sub_10005D1A4();
        if (*(v7 + 23) >= 0)
        {
          v8 = v7;
        }

        else
        {
          v8 = *v7;
        }

        memset(&v41, 0, sizeof(v41));
        *__error() = 0;
        stat(v8, &v41);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          v19 = v41.st_uid;
          st_mode = v41.st_mode;
          v21 = *__error();
          v22 = __error();
          v23 = strerror(*v22);
          *v35 = 67110146;
          *&v35[4] = v19;
          *&v35[8] = 1024;
          *&v35[10] = st_mode;
          *&v35[14] = 1024;
          v36 = v21;
          v37 = 2082;
          v38 = v23;
          v39 = 2082;
          *&v40 = v8;
          _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "==== DEACTIVATING! Home directory uid: %d mode: 0x%X errno: %d errno string: %{public}s path: %{public}s ====", v35, 0x28u);
        }

        v9 = xpc_connection_create_mach_service("com.apple.analyticsd", 0, 1uLL);
        v10 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
        }

        xpc_connection_set_event_handler(v10, &stru_100185660);
        v11 = xpc_connection_create_mach_service("com.apple.analyticsd.messagetracer", 0, 1uLL);
        v12 = v11;
        if (!v11)
        {
          v12 = xpc_null_create();
        }

        xpc_connection_set_event_handler(v12, &stru_100185680);
        xpc_connection_activate(v10);
        xpc_connection_activate(v12);
        CFRunLoopRun();
      }

      sub_1000ACFC4();
      v13 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
      v14 = qword_100192C18;
      qword_100192C18 = v13;

      if (qword_100192C18)
      {
        dispatch_source_set_event_handler(qword_100192C18, &stru_1001856A0);
        dispatch_resume(qword_100192C18);
      }

      v15 = qword_100192D38;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41.st_dev) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "==== START ====", &v41, 2u);
      }

      v16 = dispatch_queue_create("analyticsd.MTShim ConnectionAnalyticsStartupQueue", 0);
      v17 = v16;

      v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      dispatch_queue_create("analyticsd.MessageTracerShimQueue", v18);

      sub_100035974();
    }
  }

  v6 = 1;
  st_uid = v1;
  goto LABEL_18;
}

void sub_100090740(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_100090D5C(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = a1[23];
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = a1[21];
  if (v7)
  {
    sub_10000786C(v7);
  }

  v8 = a1[19];
  if (v8)
  {
    sub_10000786C(v8);
  }

  v9 = a1[17];
  if (v9)
  {
    sub_10000786C(v9);
  }

  v10 = a1[15];
  if (v10)
  {
    sub_10000786C(v10);
  }

  v11 = a1[13];
  if (v11)
  {
    sub_10000786C(v11);
  }

  v12 = a1[11];
  if (v12)
  {
    sub_10000786C(v12);
  }

  v13 = a1[9];
  if (v13)
  {
    sub_10000786C(v13);
  }

  v14 = a1[7];
  if (v14)
  {
    sub_10000786C(v14);
  }

  v15 = a1[5];
  if (v15)
  {
    sub_10000786C(v15);
  }

  v16 = a1[3];
  if (v16)
  {
    sub_10000786C(v16);
  }

  v17 = a1[1];
  if (v17)
  {
    sub_10000786C(v17);
  }

  return a1;
}

void *sub_100090E40(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    sub_10000786C(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    sub_10000786C(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    sub_10000786C(v9);
  }

  return a1;
}

void *sub_100090EC4(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    sub_10000786C(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    sub_10000786C(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    sub_10000786C(v9);
  }

  return a1;
}

uint64_t sub_100090F48(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    sub_10000786C(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    sub_10000786C(v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    sub_10000786C(v9);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    sub_10000786C(v10);
  }

  v11 = *a1;
  *a1 = 0;

  return a1;
}

id *sub_100090FEC(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

void sub_100091024(id *a1, id *a2)
{
  if (*a1)
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v4 = *a1;
    dispatch_group_enter(v4);
    v5 = sub_100006020(a2);
    v6 = dispatch_get_global_queue(0, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3321888768;
    v9[2] = nullsub_56;
    v9[3] = &unk_1001856C0;
    v7 = v4;
    group = v7;
    dispatch_group_enter(v7);
    dispatch_group_notify(v5, v6, v9);

    if (group)
    {
      dispatch_group_leave(group);
    }

    v8 = group;
    group = 0;

    dispatch_group_leave(v7);
  }
}

void sub_100091174(id a1, OS_xpc_object *a2)
{
  xdict = a2;
  reply = xpc_dictionary_create_reply(xdict);
  v3 = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(v3, reply);
}

void sub_1000911DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10009120C(id a1)
{
  v1 = qword_100192D38;
  if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "=== SIGTERM captured: Restart started", v3, 2u);
  }

  Main = CFRunLoopGetMain();
  CFRunLoopStop(Main);
}

void sub_1000912B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  v3 = (a1 + 32);
  v4 = sub_100006020(v3);

  if (v4)
  {
    v5 = sub_100006020(v3);
    dispatch_group_enter(v5);
  }
}

void sub_100091334(uint64_t a1)
{
  v2 = sub_100006020((a1 + 32));

  if (v2)
  {
    v3 = sub_100006020((a1 + 32));
    dispatch_group_leave(v3);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;

  v5 = *(a1 + 32);
}

void *sub_1000913A4(void *a1)
{
  *a1 = off_100185700;
  v2 = a1[2];
  if (v2)
  {
    sub_10000786C(v2);
  }

  return a1;
}

void sub_1000913F0(void *a1)
{
  *a1 = off_100185700;
  v1 = a1[2];
  if (v1)
  {
    sub_10000786C(v1);
  }

  operator delete();
}

uint64_t sub_1000914C8(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_100185700;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100091500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000786C(v1);
  }
}

void sub_100091510(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000786C(v2);
  }

  operator delete(__p);
}

uint64_t sub_100091578(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10009164C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009173C;
  block[3] = &unk_1001857F0;
  block[4] = &v0;
  dispatch_sync(&_dispatch_main_q, block);
}

uint64_t sub_1000916F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10009173C()
{
  v0 = qword_100192D38;
  if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[DaemonPerf] Restart started after perf check", v2, 2u);
  }

  Main = CFRunLoopGetMain();
  CFRunLoopStop(Main);
}

void *sub_1000917DC(void *a1)
{
  *a1 = off_100185830;
  v2 = a1[2];
  if (v2)
  {
    sub_10000786C(v2);
  }

  return a1;
}

void sub_100091828(void *a1)
{
  *a1 = off_100185830;
  v1 = a1[2];
  if (v1)
  {
    sub_10000786C(v1);
  }

  operator delete();
}

uint64_t sub_100091900(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_100185830;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100091938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000786C(v1);
  }
}

void sub_100091948(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000786C(v2);
  }

  operator delete(__p);
}

uint64_t sub_1000919B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1000919FC(void *a1)
{
  *a1 = off_1001858B0;
  v2 = a1[2];
  if (v2)
  {
    sub_10000786C(v2);
  }

  return a1;
}

void sub_100091A48(void *a1)
{
  *a1 = off_1001858B0;
  v1 = a1[2];
  if (v1)
  {
    sub_10000786C(v1);
  }

  operator delete();
}

uint64_t sub_100091B20(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1001858B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100091B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000786C(v1);
  }
}

void sub_100091B68(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000786C(v2);
  }

  operator delete(__p);
}

uint64_t sub_100091BD0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100091C3C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100185930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100091CB8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100185980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100091D14(uint64_t a1)
{
  sub_100090D5C((a1 + 8));
  v2 = sub_100006020(a1);

  if (v2)
  {
    v3 = sub_100006020(a1);
    dispatch_group_leave(v3);
  }

  v4 = *a1;
  *a1 = 0;

  return a1;
}

void sub_100091D84(uint64_t a1)
{
  **(a1 + 224) = sub_100035B3C(*(a1 + 16));
  sub_1000D7238();
  sub_1000D71A0();
  sub_10007EE48(*(a1 + 48));
  v2 = qword_100192D38;
  if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "==== STARTUP: Starting mtShimServer early", buf, 2u);
  }

  (***a1)();
  if (*(*(a1 + 224) + 4) == 1)
  {
    sub_10002F938(*(a1 + 32));
  }

  if (sub_1000D4FC8())
  {
    sub_1000EB4B8(*(a1 + 80), 1);
    sub_1000EB568(*(a1 + 80), &v5);
  }

  v3 = *(a1 + 96);
  v4 = *(a1 + 120);
  *buf = *(a1 + 112);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100071D2C(v3, buf);
}

void sub_100092378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a17 = &a21;
  sub_100004E54(&a17);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000923D8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100091D14(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_100092498(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = sub_100006020(a1);

  if (v6)
  {
    v7 = sub_100006020(a1);
    dispatch_group_leave(v7);
  }

  v8 = *a1;
  *a1 = 0;

  return a1;
}

uint64_t *sub_100092530(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100092498(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_100092578(uint64_t a1)
{
  v4 = a1;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  sub_100092640((a1 + 8), &v5);
  sub_100056904(a1, &v5);
  v2 = v5;
  v5 = 0;

  return sub_100092530(&v4);
}

void sub_100092608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11)
{
  v12 = a11;
  a11 = 0;

  sub_100092530(&a10);
  _Unwind_Resume(a1);
}

void sub_100092640(void *a1@<X0>, dispatch_group_t *a2@<X8>)
{
  if (*a1[4] == 1)
  {
    v3 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "==== STARTUP ROLLOVER BEGINNING ===", &buf, 2u);
    }

    memset(&buf, 170, sizeof(buf));
    sub_10000459C(&buf, "scheduled");
    v8 = 0xAAAAAAAAAAAAAA00;
    v9 = 0;
    sub_10000298C(&v8);
    sub_10000298C(&v8);
    if (*(a1[6] + 4) == 1)
    {
      std::string::assign(&buf, "osUpdate");
      sub_100037164(a1[2], v5);
      sub_100036D80(a1[2], v4);
      sub_10005F5BC(v5, v4, &__p);
      sub_1000739F0(v7);
    }

    (*(**a1 + 16))(*a1, &buf, &v8);
    sub_10000298C(&v8);
    sub_1000048FC(&v9, v8);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = dispatch_group_create();
  }
}

void sub_1000929FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  sub_10002C5F4(&a10);
  sub_10002C5F4((v34 - 112));
  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100092AC8(uint64_t a1)
{
  v4 = a1;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  sub_100092640((a1 + 8), &v5);
  sub_100056904(a1, &v5);
  v2 = v5;
  v5 = 0;

  return sub_100092530(&v4);
}

void sub_100092B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11)
{
  v12 = a11;
  a11 = 0;

  sub_100092530(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100092B90(uint64_t a1)
{
  sub_100090E40((a1 + 8));
  v2 = sub_100006020(a1);

  if (v2)
  {
    v3 = sub_100006020(a1);
    dispatch_group_leave(v3);
  }

  v4 = *a1;
  *a1 = 0;

  return a1;
}

uint64_t *sub_100092C00(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100092B90(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_100092C48(uint64_t a1)
{
  v2 = a1;
  sub_100092CC0(a1 + 8);
  return sub_100092C00(&v2);
}

uint64_t sub_100092CC0(uint64_t result)
{
  v1 = result;
  if ((**(result + 96) & 1) != 0 || *(*(result + 80) + 4) == 1)
  {
    v2 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      v3 = "false";
      if (**(v1 + 96))
      {
        v4 = "true";
      }

      else
      {
        v4 = "false";
      }

      if (*(*(v1 + 80) + 4) == 1)
      {
        v3 = "true";
      }

      *buf = 136446466;
      v11 = v4;
      v12 = 2082;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "==== WIPE STATE BEGINNING (abnormal-state: %{public}s, os-update: %{public}s)", buf, 0x16u);
    }

    if (*(*(v1 + 80) + 4))
    {
      v5 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "==== WIPE: Marking partial data flag. Data wipe is occurring but device did not do a clean install", buf, 2u);
      }

      sub_1000361A8(*v1);
    }

    v6 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "==== WIPE: Recreating configuration database", buf, 2u);
    }

    sub_10007F028(*(v1 + 48));
    sub_10007EE48(*(v1 + 48));
    v7 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "==== WIPE: Recreating state database", buf, 2u);
    }

    sub_10007F028(*(v1 + 64));
    sub_10007EE48(*(v1 + 64));
    sub_10009C320(*(v1 + 112));
    v8 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "==== WIPE: Resetting of sampling override on new build", buf, 2u);
    }

    sub_1000EB4B8(*(v1 + 32), 0);
    sub_1000EB568(*(v1 + 32), &v9);
  }

  return result;
}

uint64_t *sub_100092F28(uint64_t a1)
{
  v2 = a1;
  sub_100092CC0(a1 + 8);
  return sub_100092C00(&v2);
}

uint64_t sub_100092FA0(uint64_t a1)
{
  sub_100090EC4((a1 + 8));
  v2 = sub_100006020(a1);

  if (v2)
  {
    v3 = sub_100006020(a1);
    dispatch_group_leave(v3);
  }

  v4 = *a1;
  *a1 = 0;

  return a1;
}

uint64_t *sub_100093010(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100092FA0(v2);
    operator delete();
  }

  return a1;
}

void sub_1000930D0(uint64_t *a1)
{
  memset(v6, 170, 24);
  sub_1000F8538(*a1, v6);
  if (*(a1[11] + 4) <= 2u && sub_1000D46C4())
  {
    v2 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "==== STARTUP CONFIG: removing dev config after reboot", buf, 2u);
    }

    sub_10005D2C4();
  }

  v3 = a1[8];
  v4 = a1[3];
  *&v5 = a1[2];
  *(&v5 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1000EB398(v3, &v5);
}

void sub_100093560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  sub_10009365C(&a21);
  sub_10009365C(v39 - 160);
  *(v39 - 160) = &a39;
  sub_100004E54((v39 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_10009365C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10000786C(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

id *sub_100093714(id *a1)
{
  sub_100090F48((a1 + 1));
  v2 = sub_100006020(a1);

  if (v2)
  {
    v3 = sub_100006020(a1);
    dispatch_group_leave(v3);
  }

  v4 = *a1;
  *a1 = 0;

  return a1;
}

id **sub_100093784(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100093714(v2);
    operator delete();
  }

  return a1;
}

void sub_100093844(uint64_t a1)
{
  sub_100083E74(*(*(a1 + 152) + 4));
  if (**(a1 + 152) == 1)
  {
    sub_1000AD068();
  }

  v2 = qword_100192D38;
  if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "==== startup complete; starting services", buf, 2u);
  }

  sub_100036658(*(a1 + 40));
  memset(&__p[3], 170, 24);
  *buf = sub_10003606C(*(a1 + 40));
  sub_10005F764(buf);
  v3 = *(a1 + 40);
  v4 = *a1;
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(__p[5]) < 0)
  {
    sub_1000078D8(__p, __p[3], __p[4]);
  }

  else
  {
    *__p = *&__p[3];
    __p[2] = __p[5];
  }

  v12 = 0;
  operator new();
}

void sub_100093C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, char a26, uint64_t a27, uint64_t a28)
{
  if (a25)
  {
    sub_10000786C(a25);
  }

  sub_10002C5F4(&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (*(v28 - 81) < 0)
  {
    operator delete(*(v28 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100093D58(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *a1;
  *a1 = 0;

  return a1;
}

uint64_t sub_100093DAC(uint64_t a1)
{
  *a1 = off_1001859D0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;

  return a1;
}

void sub_100093E1C(uint64_t a1)
{
  *a1 = off_1001859D0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;

  operator delete();
}

void sub_100093F60(_Unwind_Exception *a1)
{
  v4 = v1[3];
  if (v4)
  {
    sub_10000786C(v4);
  }

  sub_100090FEC(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

id sub_100093F88(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001859D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  v5 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 55) < 0)
  {
    return sub_1000078D8((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  v6 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 32) = v6;
  return result;
}

void sub_100094020(_Unwind_Exception *a1)
{
  v4 = *(v1 + 24);
  if (v4)
  {
    sub_10000786C(v4);
  }

  sub_100090FEC(v2);
  _Unwind_Resume(a1);
}

void sub_100094040(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;

  v4 = *(a1 + 8);
}

void sub_10009409C(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;

  operator delete(a1);
}

void sub_100094100(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a1 + 24);
  v6 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 55) < 0)
  {
    sub_1000078D8(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v8 = *(a1 + 48);
  }

  v5 = sub_100006020((a1 + 8));
  operator new();
}

void sub_100094244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000786C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100094278(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1000942C4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 8);
    if (v2)
    {
      sub_10000786C(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100094328(char *a1)
{
  v8 = a1;
  v2 = *(a1 + 4);
  if (a1[47] < 0)
  {
    sub_1000078D8(__dst, *(a1 + 3), *(a1 + 4));
  }

  else
  {
    *__dst = *(a1 + 24);
    v10 = *(a1 + 5);
  }

  switch(v2)
  {
    case 0:
      v4 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=== Two Hour Timer fired.", __p, 2u);
      }

      v11[0] = 0xAAAAAAAAAAAAAAAALL;
      v11[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_10002B820(v11);
      v5 = qword_100192DC0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        sub_100017DF0(__p);
      }

      v6 = *a1;
      sub_10000459C(__p, "com.apple.coreanalytics.heartbeat.2hours");
      sub_100019D5C(__p, v11);
    case 1:
      __p[0] = _NSConcreteStackBlock;
      __p[1] = 3221225472;
      __p[2] = sub_1000947CC;
      __p[3] = &unk_100185A40;
      __p[4] = a1;
      sub_100082DC4(__p);
      break;
    case 2:
      v3 = *a1;
      sub_10000459C(__p, "com.apple.coreanalytics.heartbeat.1day");
      sub_100020F58();
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  return sub_1000942C4(&v8);
}

void sub_1000946F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_10002C5F4(&a18);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000942C4(&a10);
  _Unwind_Resume(a1);
}

void sub_1000947CC(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 32);
  sub_10000459C(&__p, "com.apple.coreanalytics.appUsage");
  sub_100019D5C(&__p, a2);
}

void sub_100094894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_10000786C(a16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100094944()
{
  v0 = objc_autoreleasePoolPush();
  sub_10000459C(byte_100192BB8, "primaryNetworkInterface");
  __cxa_atexit(&std::string::~string, byte_100192BB8, &_mh_execute_header);
  sub_10000459C(byte_100192BD0, "wiFiRadioTech");
  __cxa_atexit(&std::string::~string, byte_100192BD0, &_mh_execute_header);
  sub_10000459C(byte_100192BE8, "wiFiLQM");
  __cxa_atexit(&std::string::~string, byte_100192BE8, &_mh_execute_header);
  sub_10000459C(byte_100192C00, "wirelessTrialIdentifier");
  __cxa_atexit(&std::string::~string, byte_100192C00, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_100094F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TrialStateRelay;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_100095328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100095394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained refreshTrialState:*(a1 + 32)];
}

void sub_1000957B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void *sub_10009590C(void *result, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = a2[1];
  *result = *a2;
  result[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  result[2] = *a3;
  result[3] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a4[1];
  result[4] = *a4;
  result[5] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a6[1];
  result[6] = *a6;
  result[7] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  result[8] = *a5;
  result[9] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10009598C(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEBUG))
  {
    sub_10011E678();
  }

  v4 = *(a1 + 64);
  v7 = off_100185AE8;
  v8 = a1;
  v9 = &v7;
  (*(*v4 + 104))(v4, 10, a2, &v7);
  sub_100096608(&v7);
  if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEBUG))
  {
    sub_10011E6E4();
  }

  v5 = *(a1 + 64);
  v7 = off_100185B78;
  v8 = a1;
  v9 = &v7;
  (*(*v5 + 112))(v5, 10, a2, &v7);
  return sub_100096608(&v7);
}

void sub_100095AF8(uint64_t *a1)
{
  v2 = qword_100192D40;
  if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Emitting CA meta pre-rollover events", buf, 2u);
  }

  v3 = *a1;
  sub_10000459C(buf, "com.apple.coreanalytics.meta.preRollover");
  sub_100020F58();
}

void sub_100096018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_10000786C(a25);
  }

  sub_10002C5F4(&a20);
  if (*(v25 - 105) < 0)
  {
    operator delete(*(v25 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1000960C0()
{
  v0 = 0xAAAAAAAAAAAAAAAALL;
  v1 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000B0064();
}

void sub_1000961BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000786C(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000961E0(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 32);
  sub_10000459C(&__p, "com.apple.coreanalytics.appUsage");
  sub_100019D5C(&__p, a2);
}

void sub_1000962A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_10000786C(a16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000962E0(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = **(a1 + 32);
  sub_10000459C(&__p, a2);
  sub_100019D5C(&__p, a3);
}

void sub_10009639C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_10000786C(a16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100096444(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100185AE8;
  a2[1] = v2;
  return result;
}

void sub_100096470(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a3;
  v5 = *a4;
  v6 = **(a1 + 8);
  sub_10000459C(&__p, "com.apple.coreanalytics.highEventCountViews");
  sub_100035530(v7);
}

void sub_100096574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_10000786C(a18);
  }

  sub_10002C5F4(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000965BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100096608(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1000966F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100185B78;
  a2[1] = v2;
  return result;
}

void sub_100096724(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a3;
  v5 = *a4;
  v6 = **(a1 + 8);
  sub_10000459C(&__p, "com.apple.coreanalytics.highStorageSizeViews");
  sub_100035530(v7);
}

void sub_100096828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_10000786C(a18);
  }

  sub_10002C5F4(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100096870(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100096930(uint64_t a1, uint64_t a2)
{
  *a2 = off_100185BF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100096960(uint64_t a1, char **a2, char **a3, const char **a4)
{
  v4 = *a2;
  v5 = *a3;
  v35 = *a4;
  if (v5)
  {
    v7 = *(a1 + 16);
    memset(v34, 170, sizeof(v34));
    sub_10000459C(v34, v5);
    if (SHIBYTE(v34[2]) < 0)
    {
      if (v34[1] == 10)
      {
        v9 = v34[0];
        if (*v34[0] != 0x6C6143746E657665 || *(v34[0] + 4) != 29548)
        {
          goto LABEL_16;
        }

        goto LABEL_22;
      }
    }

    else if (SHIBYTE(v34[2]) == 10)
    {
      if (v34[0] != 0x6C6143746E657665 || LOWORD(v34[1]) != 29548)
      {
        v9 = v34;
LABEL_16:
        v11 = *v9;
        v12 = *(v9 + 4);
        if (v11 != 0x6973736572707865 || v12 != 28271)
        {
          goto LABEL_20;
        }

        v27 = 0xAAAAAAAAAAAAAAAALL;
        v28 = 0xAAAAAAAAAAAAAAAALL;
        *(&v43 + 1) = 0;
        sub_10000ACE4(&v35, &buf, 1, &v27);
        sub_100004FBC(&buf);
        v19 = v27;
        if (!v27)
        {
          goto LABEL_43;
        }

        if (v27 == 1)
        {
          v20 = v28[2];
        }

        else
        {
          if (v27 != 2)
          {
            goto LABEL_49;
          }

          v20 = (v28[1] - *v28) >> 4;
        }

        if (v20 != 1)
        {
LABEL_43:
          v21 = qword_100192D40;
          if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_INFO))
          {
            if (v19)
            {
              if (v19 == 1)
              {
                v19 = v28[2];
              }

              else
              {
                v19 = (v28[1] - *v28) >> 4;
              }
            }

            LODWORD(buf) = 134217984;
            *(&buf + 4) = v19;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[IOReporter] WARNING: expression type event config length != 1: %lu", &buf, 0xCu);
          }
        }

LABEL_49:
        v46 = -1431655766;
        buf = 0u;
        v43 = 0u;
        v44 = 0u;
        memset(v45, 0, sizeof(v45));
        v22 = *(a1 + 8);
        v23 = *v22;
        v24 = v22[1];
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          v25 = *&v45[16];
          *&v45[8] = v23;
          *&v45[16] = v24;
          if (v25)
          {
            sub_10000786C(v25);
          }
        }

        else
        {
          *&v45[8] = v23;
          *&v45[16] = 0;
        }

        sub_10000459C(v29, v4);
        sub_100020F58();
      }

LABEL_22:
      memset(v41, 170, 16);
      *(&v43 + 1) = 0;
      sub_10000ACE4(&v35, &buf, 1, v41);
      sub_100004FBC(&buf);
      v33 = v41;
      sub_100023420(&v33, &buf);
      sub_100023508(&v33, v29);
      if (!sub_100013878(&buf, v29))
      {
        v40 = -1431655766;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        memset(v39, 0, sizeof(v39));
        v15 = *(a1 + 8);
        v16 = *v15;
        v17 = v15[1];
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          v18 = *&v39[16];
          *&v39[8] = v16;
          *&v39[16] = v17;
          if (v18)
          {
            sub_10000786C(v18);
          }
        }

        else
        {
          *&v39[8] = v16;
        }

        sub_10000459C(&__p, v4);
        sub_100020F58();
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }

      if (v30 < 0)
      {
        operator delete(v29[7]);
      }

      if (v48 < 0)
      {
        operator delete(v47);
      }

      if (SHIBYTE(v46) < 0)
      {
        operator delete(*&v45[8]);
      }

      sub_10000298C(v41);
      sub_1000048FC(&v41[8], v41[0]);
      goto LABEL_54;
    }

LABEL_20:
    v14 = qword_100192D40;
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
    {
      sub_10011E750(v5, v14);
    }

LABEL_54:
    if (SHIBYTE(v34[2]) < 0)
    {
      operator delete(v34[0]);
    }

    return;
  }

  if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
  {
    sub_10011E834();
  }
}

void sub_100097050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, std::__shared_weak_count *a45)
{
  if (a45)
  {
    sub_10000786C(a45);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_1000358F0(v45 - 208);
  sub_10002C5F4(&a18);
  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000971D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void **sub_100097220(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_10002C63C();
    }

    v8 = v4 - *result;
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

    v16[4] = result;
    if (v10)
    {
      sub_10000BED4(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_10000BF70(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

id sub_10009752C(uint64_t a1)
{
  [*(a1 + 32) refreshInternetConnectionSync];
  [*(a1 + 32) refreshSignalStrengthBarsSync];
  [*(a1 + 32) refreshSubscriberInfoSync];
  [*(a1 + 32) refreshServingCarrierNameSync];
  [*(a1 + 32) refreshIsDualSimSync];
  [*(a1 + 32) refreshIsSatelliteSystemSync];
  v2 = *(a1 + 32);

  return [v2 refreshRadioStateSync];
}

void sub_100097970(id a1, __CFString *a2, __CFDictionary *a3)
{
  v4 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011E8E4(a2, v4);
  }
}

void sub_1000979C0(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = CFDictionaryGetValue(theDict, kCTRadioStateKey);
  if (v3)
  {
    [*(a1 + 32) radioStateChanged:v3];
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011E95C();
  }
}

void sub_100097F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100098188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100099350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100099C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10009A1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19)
{
  _Block_object_dispose(&a14, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10009A204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009A21C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 objectForKeyedSubscript:kCTCellMonitorCellType];
    v8 = v7;
    if (v7 && [v7 isEqualToString:kCTCellMonitorCellTypeServing])
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_10009A408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_10011C404(&a9);
  _Unwind_Resume(a1);
}

void sub_10009A760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009A9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a25 == 1 && a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009AC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a25 == 1 && a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009AEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a25 == 1 && a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009B18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a25 == 1 && a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009B348(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009B5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10009B7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10009B928(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10009B978(a1, a2);
  return a1;
}

void sub_10009B958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_10011F03C(v1);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_10009B978(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = __dst;
    if (*(a2 + 23) < 0)
    {
      __dst = sub_1000078D8(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v3;
    }

    v2[24] = 1;
  }

  return __dst;
}

uint64_t sub_10009B9DC(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_10009B9F4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0xEu);
}

void *sub_10009BA34(void *a1)
{
  *a1 = &off_100185D50;
  sub_10009BA7C(a1);
  return a1;
}

void sub_10009BA7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      CFRunLoopRemoveSource(v2, v3, kCFRunLoopDefaultMode);
    }
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    IOObjectRelease(v5);
    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 44);
  if (v6)
  {
    IOObjectRelease(v6);
    *(a1 + 44) = 0;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    mach_port_deallocate(mach_task_self_, v7);
    *(a1 + 24) = 0;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 48) = 0;
  }
}

uint64_t sub_10009BB20(uint64_t a1, uint64_t a2)
{
  v4 = IOServiceMatching("CoreAnalyticsHub");
  v5 = sub_10009BB7C(a1, a2, v4);
  CFRelease(v4);
  return v5;
}

uint64_t sub_10009BB7C(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[KernelDriverMatch] configureNotificationsForMatchingDict", buf, 2u);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a3;
  CFRetain(a3);
  if (IOMainPort(0, (a1 + 24)) || (v7 = IONotificationPortCreate(*(a1 + 24)), (*(a1 + 32) = v7) == 0) || (RunLoopSource = IONotificationPortGetRunLoopSource(v7), (*(a1 + 16) = RunLoopSource) == 0) || (CFRunLoopAddSource(*(a1 + 8), RunLoopSource, kCFRunLoopDefaultMode), CFRetain(*(a1 + 48)), IOServiceAddMatchingNotification(*(a1 + 32), "IOServicePublish", *(a1 + 48), sub_10009BD6C, a1, (a1 + 40))) || (CFRetain(*(a1 + 48)), IOServiceAddMatchingNotification(*(a1 + 32), "IOServiceTerminate", *(a1 + 48), sub_10009BD70, a1, (a1 + 44))))
  {
    sub_10011F050(&qword_100192DB8, a1);
    return 0;
  }

  else
  {
    v9 = 1;
    *(a1 + 56) = 1;
    v10 = qword_100192DB8;
    if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[KernelDriverMatch] configureNotificationsForMatchingDict complete", v12, 2u);
    }
  }

  return v9;
}

uint64_t sub_10009BD74(uint64_t a1)
{
  existing = 0;
  v2 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[KernelDriverMatch] scanServices", buf, 2u);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    if (!IOServiceGetMatchingServices(v3, *(a1 + 48), &existing))
    {
      sub_10009BEAC(a1, existing);
      v4 = qword_100192DB8;
      if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[KernelDriverMatch] scanServices complete", buf, 2u);
      }

      result = existing;
      if (existing)
      {
        return IOObjectRelease(result);
      }

      return result;
    }
  }

  else
  {
    sub_10011F0EC(&qword_100192DB8);
  }

  result = sub_10011F17C(&qword_100192DB8, &existing, buf);
  if ((result & 1) == 0)
  {
    LODWORD(result) = *buf;
    return IOObjectRelease(result);
  }

  return result;
}

void sub_10009BEAC(void (***a1)(void, uint64_t), io_iterator_t a2)
{
  v4 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[KernelDriverMatch] CoreAnalyticsClient::servicesPublished...\n", buf, 2u);
  }

  v5 = IOIteratorNext(a2);
  if (v5)
  {
    v6 = v5;
    do
    {
      (**a1)(a1, v6);
      IOObjectRelease(v6);
      v6 = IOIteratorNext(a2);
    }

    while (v6);
  }

  v7 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[KernelDriverMatch] CoreAnalyticsClient::servicesPublished done\n", v8, 2u);
  }
}

uint64_t sub_10009BFE4(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      (*(*a1 + 8))(a1, v5);
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10009C0F8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  *a1 = off_100185F90;
  *(a1 + 8) = off_100185FB8;
  *(a1 + 16) = off_100185FF8;
  *(a1 + 24) = off_100186028;
  *(a1 + 32) = off_100186050;
  v12 = dispatch_queue_create("analyticsd.RolloverSessionManagerQueue", 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v12;
  *a1 = off_100185D90;
  *(a1 + 8) = off_100185DF8;
  *(a1 + 16) = off_100185E38;
  *(a1 + 24) = off_100185E68;
  *(a1 + 32) = off_100185E90;
  v13 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a3[1];
  *(a1 + 80) = *a3;
  *(a1 + 88) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a4[1];
  *(a1 + 96) = *a4;
  *(a1 + 104) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a5[1];
  *(a1 + 112) = *a5;
  *(a1 + 120) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = a6[1];
  *(a1 + 128) = *a6;
  *(a1 + 136) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  sub_10009C320(a1);
  return a1;
}

void sub_10009C320(uint64_t a1)
{
  v3 = a1;
  v2 = sub_100006020((a1 + 56));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D47C;
  block[3] = &unk_1001818D8;
  block[4] = a1 + 40;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

void sub_10009C3E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10009C3F4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6[0] = a1;
  v6[1] = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_100006020((a1 + 56));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D37C;
  block[3] = &unk_1001818D8;
  block[4] = a1 + 40;
  block[5] = v6;
  dispatch_sync(v5, block);

  if (v7)
  {
    sub_10000786C(v7);
  }
}

void sub_10009C4E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10009C4EC(uint64_t a1)
{
  memset(v22, 170, sizeof(v22));
  (*(**(a1 + 112) + 104))(v22);
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  memset(__dst, 170, sizeof(__dst));
  v4 = v3;
  v5 = [v3 UTF8String];
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000173E4();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v6;
  if (v6)
  {
    memmove(__dst, v5, v6);
  }

  __dst[v7] = 0;
  v8 = __dst[23];
  if ((__dst[23] & 0x80000000) != 0)
  {
    sub_1000078D8(__p, *__dst, *&__dst[8]);
  }

  else
  {
    *__p = *__dst;
    v25 = *&__dst[16];
  }

  v26 = 0uLL;
  v27 = 0;
  sub_10009D534(&v26, v22[0], v22[1], 0xAAAAAAAAAAAAAAABLL * ((v22[1] - v22[0]) >> 3));
  *&v28 = sub_10003606C(*(a1 + 128));
  *(&v28 + 1) = sub_10000D6F8(*(a1 + 128));
  v29 = 1;
  v9 = (a1 + 183);
  v10 = (a1 + 160);
  if (*(a1 + 183) < 0)
  {
    operator delete(*v10);
  }

  *v10 = *__p;
  *(a1 + 176) = v25;
  HIBYTE(v25) = 0;
  LOBYTE(__p[0]) = 0;
  sub_1000336AC(a1 + 184);
  *(a1 + 184) = v26;
  *(a1 + 200) = v27;
  v27 = 0;
  v26 = 0uLL;
  *(a1 + 208) = v28;
  *(a1 + 224) = v29;
  v23 = &v26;
  sub_10002DE40(&v23);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = (*(**(a1 + 96) + 96))(*(a1 + 96), a1 + 160);
  v12 = qword_100192D40;
  if (v11)
  {
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEBUG))
    {
      sub_10011F2B0(v9, v10, v12);
      if (v8 < 0)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  else if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
  {
    sub_10011F24C(v12, v13, v14, v15, v16, v17, v18, v19);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v8 < 0)
  {
LABEL_20:
    operator delete(*__dst);
  }

LABEL_21:

  __p[0] = v22;
  sub_10002DE40(__p);
  return v11;
}

void sub_10009C800(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10009C884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v4 = sub_100006020((a1 + 56));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D6EC;
  block[3] = &unk_1001818D8;
  block[4] = a1 + 40;
  block[5] = v5;
  dispatch_sync(v4, block);
}

void sub_10009C950(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10009C964(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a3;
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = &v10;
  v7[3] = a5;
  v6 = sub_100006020((a1 + 56));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D720;
  block[3] = &unk_1001818D8;
  block[4] = a1 + 40;
  block[5] = v7;
  dispatch_sync(v6, block);
}

void sub_10009CA40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10009CA54(uint64_t a1)
{
  v3 = a1;
  v2 = sub_100006020((a1 + 56));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D760;
  block[3] = &unk_1001818D8;
  block[4] = a1 + 40;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

void sub_10009CB1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10009CB30(uint64_t a1)
{
  v3 = a1;
  v2 = sub_100006020((a1 + 56));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D790;
  block[3] = &unk_1001818D8;
  block[4] = a1 + 40;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

void sub_10009CBF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10009CC0C(uint64_t a1, int a2)
{
  v5 = a2;
  v4[0] = &v5;
  v4[1] = a1;
  v3 = sub_100006020((a1 + 56));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D7C0;
  block[3] = &unk_1001818D8;
  block[4] = a1 + 40;
  block[5] = v4;
  dispatch_sync(v3, block);
}

void sub_10009CCDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10009CCF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  v4 = sub_100006020((a1 + 56));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009D840;
  v7[3] = &unk_1001860E0;
  v7[4] = a1 + 40;
  v7[5] = &v6;
  v8 = objc_retainBlock(v7);
  v5 = v4;
  *a2 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D998;
  block[3] = &unk_1001818D8;
  block[4] = a2;
  block[5] = &v8;
  dispatch_sync(v5, block);
}

void sub_10009CE30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10009CE48(uint64_t a1)
{
  sub_10009CFA8(a1);

  operator delete();
}

void sub_10009CE88(uint64_t a1)
{
  sub_10009CFA8(a1 - 8);

  operator delete();
}

void sub_10009CECC(uint64_t a1)
{
  sub_10009CFA8(a1 - 16);

  operator delete();
}

void sub_10009CF10(uint64_t a1)
{
  sub_10009CFA8(a1 - 24);

  operator delete();
}

void sub_10009CF54(uint64_t a1)
{
  sub_10009CFA8(a1 - 32);

  operator delete();
}

uint64_t sub_10009CFA8(uint64_t a1)
{
  *a1 = off_100185D90;
  *(a1 + 8) = off_100185DF8;
  *(a1 + 16) = off_100185E38;
  *(a1 + 24) = off_100185E68;
  *(a1 + 32) = off_100185E90;
  v9 = (a1 + 184);
  sub_10002DE40(&v9);
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v2 = *(a1 + 152);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    sub_10000786C(v7);
  }

  sub_10002CDDC(a1 + 40);
  return a1;
}

void sub_10009D1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_10009D208(&a12, v12);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10009D208(uint64_t a1, id *a2)
{
  v3 = sub_100006020(a2 + 7);
  dispatch_barrier_async_f(v3, a2, sub_10009D350);
}

void sub_10009D270(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10009D2A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100006020(v1 + 7);
  dispatch_barrier_async_f(v2, v1, sub_10009D350);
}

uint64_t sub_10009D310(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009D350(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10009D37C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v3[19];
  v3[18] = v2;
  v3[19] = v4;
  if (v5)
  {
    sub_10000786C(v5);
    v2 = v3[18];
  }

  sub_100006028(&v7, v3 + 5);
  if (v7)
  {
    v6 = v7 + 24;
  }

  else
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10002F3B8(v2, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v8)
  {
    sub_10000786C(v8);
  }
}

void sub_10009D450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  if (a11)
  {
    sub_10000786C(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009D47C(uint64_t a1)
{
  v1 = **(a1 + 40);
  if (((*(**(v1 + 96) + 88))(*(v1 + 96), v1 + 160) & 1) == 0)
  {
    sub_10009C4EC(v1);
    if (((*(**(v1 + 96) + 72))(*(v1 + 96), v1 + 160) & 1) == 0)
    {
      v2 = qword_100192D40;
      if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
      {
        sub_10011F338(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }
}

uint64_t sub_10009D534(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10003C250(result, a4);
  }

  return result;
}

void sub_10009D5CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_10002DE40(va);
  _Unwind_Resume(a1);
}

char *sub_10009D5EC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v9 = __dst;
  v10 = __dst;
  v11[0] = a1;
  v11[1] = &v9;
  v11[2] = &v10;
  v12 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000078D8(v4, *v6, *(v6 + 1));
        v4 = v10;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v10 = v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  sub_10003C38C(v11);
  return v4;
}

void sub_10009D6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10003C38C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009D7C0(uint64_t result)
{
  v2 = *(result + 40);
  if (**v2 == 6)
  {
    v3 = *(v2 + 8);
    *(v3 + 224) = 2;
    (*(**(v3 + 96) + 96))(*(v3 + 96), v3 + 160);

    return sub_10009C4EC(v3);
  }

  return result;
}

void sub_10009D840(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = **(a1 + 40);
  memset(v12, 170, sizeof(v12));
  (*(**(v3 + 112) + 104))(v12);
  if ((v3 + 184) != v12)
  {
    sub_10009DA3C((v3 + 184), v12[0], v12[1], 0xAAAAAAAAAAAAAAABLL * ((v12[1] - v12[0]) >> 3));
  }

  if (((*(**(v3 + 96) + 96))(*(v3 + 96), v3 + 160) & 1) == 0)
  {
    v4 = qword_100192D40;
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
    {
      sub_10011F24C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *a2 = 0;
  v13 = v12;
  sub_10002DE40(&v13);
}

void sub_10009D998(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v6;
  v6 = 0;

  v4 = *v2;
  *v2 = v3;

  v5 = v6;
  v6 = 0;
}

void sub_10009DA3C(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1000336AC(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10003C250(a1, v10);
    }

    sub_10002C63C();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_10009D5EC(a1, (v6 + v12), a3, v11);
  }
}

uint64_t sub_10009DC58(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v8 = dispatch_queue_create("analyticsd.ModifyEventManagerQueue", 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    dispatch_release(v9);
  }

  *a1 = off_100186110;
  v11 = *a2;
  v10 = a2[1];
  *(a1 + 32) = off_100186158;
  *(a1 + 40) = v11;
  *(a1 + 48) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  *(a1 + 56) = *a3;
  *(a1 + 64) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a4[1];
  *(a1 + 72) = *a4;
  *(a1 + 80) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_10009DD50(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  *a2 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, (a1 + 8));
  operator new();
}

void sub_10009DE70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10009DE80(uint64_t a1)
{
  v2 = qword_100192D48;
  if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[ModifyEventManager] Reconfiguring modify event manager", buf, 2u);
  }

  if ((*(a1 + 128) & 1) == 0)
  {
    sub_10009E618(__p, 0x20000uLL, 0);
    sub_10009E04C(a1 + 88, buf);
    if (!sub_10009E1DC(__p))
    {
      __assert_rtn("~dynamic_bitset", "dynamic_bitset.hpp", 702, "m_check_invariants()");
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v3 = *(a1 + 96);
  v4 = *(a1 + 104) - v3;
  if (v4 >= 1)
  {
    bzero(v3, v4);
  }

  v5 = *(a1 + 40);
  sub_10000459C(v6, "queried_states");
  *buf = off_100186300;
  __p[0] = a1;
  __p[2] = buf;
  (*(*v5 + 224))(v5, v6, buf);
  sub_100029708(buf);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_10009E01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10009E174(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009E04C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    if (a2 != a1)
    {
      sub_10009E838(a1 + 8, (a2 + 8));
      *(a1 + 32) = *(a2 + 32);
      v4 = *(a2 + 8);
      if (v4)
      {
        *(a2 + 16) = v4;
        operator delete(v4);
      }

      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = *(a2 + 8);
    v5 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a1 + 32) = v5;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_10009E0F8(uint64_t a1)
{
  sub_10009E244(a1);

  operator delete();
}

void sub_10009E138(uint64_t a1)
{
  sub_10009E244(a1 - 32);

  operator delete();
}

uint64_t sub_10009E174(uint64_t a1)
{
  if (!sub_10009E1DC((a1 + 8)))
  {
    __assert_rtn("~dynamic_bitset", "dynamic_bitset.hpp", 702, "m_check_invariants()");
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

BOOL sub_10009E1DC(uint64_t *a1)
{
  v1 = a1[3];
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 & 0x3F;
  if ((v1 & 0x3F) != 0)
  {
    if (v3 == v2)
    {
      sub_10011F3DC();
    }

    if (*(v3 - 8) >> v4)
    {
      return 0;
    }
  }

  v5 = v3 - v2;
  if (v5 > (a1[2] - v2))
  {
    return 0;
  }

  v7 = v1 >> 6;
  if (v4)
  {
    ++v7;
  }

  return v7 == v5 >> 3;
}

uint64_t sub_10009E244(uint64_t a1)
{
  *a1 = off_100186110;
  *(a1 + 32) = off_100186158;
  if (*(a1 + 128) == 1)
  {
    if (!sub_10009E1DC((a1 + 96)))
    {
      __assert_rtn("~dynamic_bitset", "dynamic_bitset.hpp", 702, "m_check_invariants()");
    }

    v2 = *(a1 + 96);
    if (v2)
    {
      *(a1 + 104) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    sub_10000786C(v5);
  }

  sub_100044430(a1 + 8);
  return a1;
}

void sub_10009E3A0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10009E474);
  __cxa_rethrow();
}

void sub_10009E3E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10009E434(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009E474(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

__n128 sub_10009E514(uint64_t a1, uint64_t a2)
{
  *a2 = off_100186280;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10009E540(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10009E58C(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10009DE80(*v1);
  sub_100046828(&v4);
  return sub_1000120B8(&v3);
}

void sub_10009E5FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_100046828(va1);
  sub_1000120B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009E618(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_10009E664(a1, a2, a3);
  return a1;
}

void sub_10009E648(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009E664(void *a1, unint64_t a2, uint64_t a3)
{
  if (a1[1] != *a1)
  {
    sub_10011F480();
  }

  if ((a2 & 0x3F) != 0)
  {
    v6 = (a2 >> 6) + 1;
  }

  else
  {
    v6 = a2 >> 6;
  }

  sub_10009E6D8(a1, v6);
  a1[3] = a2;
  v7 = -1;
  if (a2 < 0x40)
  {
    v7 = ~(-1 << a2);
  }

  v8 = v7 & a3;
  if (v8)
  {
    **a1 = v8;
  }
}

void sub_10009E6D8(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_10009E708(a1, a2 - v2);
  }
}

void sub_10009E708(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_10002C63C();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_100007BA0(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

__n128 sub_10009E838(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_10009E8FC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100186300;
  a2[1] = v2;
  return result;
}

void sub_10009E928(uint64_t a1, char **a2)
{
  v2 = *(a1 + 8);
  sub_10000459C(__p, *a2);
  sub_10009EA14(v2 + 88, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10009E9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10009E9C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10009EA14(uint64_t a1, char *a2)
{
  v4 = sub_10000DAE8(a1, a2);
  *(*(a1 + 8) + (((v4 % *(a1 + 32)) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v4 % *(a1 + 32));
  result = sub_10000D2A0(a1 + 1, a2);
  *(*(a1 + 8) + (((result % *(a1 + 32)) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (result % *(a1 + 32));
  return result;
}

uint64_t sub_10009EB3C(uint64_t a1, __int128 *a2, void *a3)
{
  *a1 = off_100186F40;
  v8 = dispatch_queue_create("analyticsd.SqliteStateStoreQueue", 0);
  sub_10007EA2C(a1, off_100186898, &v8, a2, a3);
  v6 = v8;
  v8 = 0;

  *a1 = off_1001863C8;
  *(a1 + 112) = off_100186560;
  *(a1 + 120) = off_1001865F8;
  *(a1 + 128) = off_100186700;
  *(a1 + 136) = off_1001867F0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  return a1;
}

void sub_10009ECB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10009ECC0(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v4 = sub_100006020((a1 + 24));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7BFC;
  block[3] = &unk_1001818D8;
  block[4] = a1 + 8;
  block[5] = &v6;
  dispatch_sync(v4, block);

  sub_10007FC24((a1 + 224), 0);
  sub_10007FC24((a1 + 216), 0);
  sub_10007FC24((a1 + 208), 0);
  sub_10007FC24((a1 + 200), 0);
  sub_10007FC24((a1 + 192), 0);
  sub_10007FC24((a1 + 184), 0);
  sub_10007FC24((a1 + 176), 0);
  sub_10007FC24((a1 + 168), 0);
  sub_10007FC24((a1 + 160), 0);
  sub_10007FC24((a1 + 152), 0);
  sub_10007FC24((a1 + 144), 0);
  sub_10009EE34(a1, (a2 + 8));
  return a1;
}

void sub_10009EE28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10009EE34(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 88)) = a2[1];
  v4 = *(a1 + 72);
  if (v4)
  {
    sub_10000786C(v4);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  sub_10007FE8C((a1 + 32), 0);
  sub_100044430(a1 + 8);
  return a1;
}

void sub_10009EF58(uint64_t a1)
{
  sub_10009ECC0(a1, &off_100186890);

  operator delete();
}

void sub_10009EF98(uint64_t a1)
{
  sub_10009ECC0(a1 - 112, &off_100186890);

  operator delete();
}

void sub_10009EFDC(uint64_t a1)
{
  sub_10009ECC0(a1 - 120, &off_100186890);

  operator delete();
}

void sub_10009F020(uint64_t a1)
{
  sub_10009ECC0(a1 - 128, &off_100186890);

  operator delete();
}

void sub_10009F064(uint64_t a1)
{
  sub_10009ECC0(a1 - 136, &off_100186890);

  operator delete();
}

void sub_10009F0B0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_100192C20, memory_order_acquire) & 1) == 0)
  {
    sub_10011F4E4();
  }

  std::mutex::lock(&stru_1001925C0);
  v20 = 0;
  __p = &v20;
  v22 = a1;
  v3 = sub_100006020((a1 + 24));
  v4 = (a1 + 8);
  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_1000A7CB0;
  v38 = &unk_1001818F8;
  v39 = (a1 + 8);
  p_p = &__p;
  v13 = objc_retainBlock(&v35);
  LOBYTE(__s) = -86;
  block = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10002051C;
  v31 = &unk_1001818D8;
  p_s = &__s;
  v33 = &v13;
  dispatch_sync(v3, &block);
  v5 = __s;

  if (v5)
  {
    v6 = qword_100192D80;
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[State Store] Iterating all persisted queried states", &block, 2u);
    }

    do
    {
      while (1)
      {
        v18 = 0;
        __s = 0;
        v16 = -1;
        v17 = 0;
        v15 = -1;
        block = a1;
        v29 = &v20;
        v30 = &__s;
        v31 = &v18;
        p_s = &v17;
        v33 = &v16;
        v34 = &v15;
        v7 = sub_100006020((a1 + 24));
        __p = _NSConcreteStackBlock;
        v22 = 3221225472;
        v23 = sub_1000A7DD0;
        v24 = &unk_1001818F8;
        v25 = a1 + 8;
        p_block = &block;
        v13 = objc_retainBlock(&__p);
        v27 = -86;
        v35 = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_10002051C;
        v38 = &unk_1001818D8;
        v39 = &v27;
        p_p = &v13;
        dispatch_sync(v7, &v35);
        v8 = v27;

        v9 = __s ? v8 : 0;
        if (v9 == 1)
        {
          sub_10000459C(&__p, __s);
          if (!v18)
          {
            sub_100013CA0(&v13, 0, 0, 0, 1);
          }

          v31 = 0;
          sub_10000ACE4(&v18, &block, 1, &v13);
          sub_100004FBC(&block);
          if (v17)
          {
            v38 = 0;
            sub_10000ACE4(&v17, &v35, 1, &block);
            sub_100004FBC(&v35);
          }

          else
          {
            LOBYTE(block) = 0;
            v29 = 0;
            sub_10000298C(&block);
            sub_10000298C(&block);
          }

          v30 = (1000000 * v16);
          v31 = 1000000 * v15;
          LOBYTE(p_s) = 1;
          v10 = *(a2 + 24);
          if (!v10)
          {
            sub_10002B200();
          }

          (*(*v10 + 48))(v10, &__p, &v13, &block);
          sub_10000298C(&block);
          sub_1000048FC(&v29, block);
          sub_10000298C(&v13);
          sub_1000048FC(&v14, v13);
          if (SHIBYTE(v23) < 0)
          {
            break;
          }
        }

        if ((v8 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      operator delete(__p);
    }

    while ((v8 & 1) != 0);
  }

LABEL_21:
  v35 = &v20;
  v11 = sub_100006020((a1 + 24));
  block = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_1000A7FA4;
  v31 = &unk_1001818D8;
  p_s = v4;
  v33 = &v35;
  dispatch_sync(v11, &block);

  sub_10007FC24(&v20, 0);
  std::mutex::unlock(&stru_1001925C0);
}

void sub_10009F5FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x10009F614);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10009F630(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6[0] = a1;
  v6[1] = a2;
  v3 = sub_100006020((a1 + 24));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A7FB4;
  v7[3] = &unk_1001818F8;
  v7[4] = v2 + 8;
  v7[5] = v6;
  v4 = objc_retainBlock(v7);
  v10 = -86;
  v8 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v10;

  return v2 & 1;
}

void sub_10009F768(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10009F77C(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 24));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A81E0;
  v6[3] = &unk_1001818F8;
  v6[4] = v1 + 8;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_10009F8B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10009F8C8(uint64_t a1, const char **a2, const char **a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_100192C28, memory_order_acquire) & 1) == 0)
  {
    sub_10011F53C();
  }

  std::mutex::lock(&stru_100192600);
  v18 = a1 + 192;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v7 = sub_100006020((a1 + 24));
  v8 = (a1 + 8);
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1000A83E0;
  v25 = &unk_1001818F8;
  v26 = a1 + 8;
  v27 = &v18;
  v28 = objc_retainBlock(&v22);
  LOBYTE(v17) = -86;
  block = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_10002051C;
  v33 = &unk_1001818D8;
  v34 = &v17;
  v35 = &v28;
  dispatch_sync(v7, &block);
  v9 = v17;

  if (v9)
  {
    do
    {
      v16 = 0;
      v17 = 0;
      v18 = a1;
      v19 = a1 + 192;
      v20 = &v17;
      v21 = &v16;
      v10 = sub_100006020((a1 + 24));
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_1000A8534;
      v25 = &unk_1001818F8;
      v26 = a1 + 8;
      v27 = &v18;
      v28 = objc_retainBlock(&v22);
      v29 = -86;
      block = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_10002051C;
      v33 = &unk_1001818D8;
      v34 = &v29;
      v35 = &v28;
      dispatch_sync(v10, &block);
      v11 = v29;

      if (v17)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v12 == 1 && v16)
      {
        v22 = 0xAAAAAAAAAAAAAAAALL;
        v23 = 0xAAAAAAAAAAAAAAAALL;
        v33 = 0;
        sub_10000ACE4(&v17, &block, 1, &v22);
        sub_100004FBC(&block);
        v18 = 0xAAAAAAAAAAAAAAAALL;
        v19 = 0xAAAAAAAAAAAAAAAALL;
        if (v16)
        {
          v33 = 0;
          sub_10000ACE4(&v16, &block, 1, &v18);
          sub_100004FBC(&block);
        }

        else
        {
          LOBYTE(v18) = 0;
          v19 = 0;
          sub_10000298C(&v18);
          sub_10000298C(&v18);
        }

        if (v22 | v18)
        {
          v13 = *(a4 + 24);
          if (!v13)
          {
            sub_10002B200();
          }

          (*(*v13 + 48))(v13, &v22, &v18);
        }

        sub_10000298C(&v18);
        sub_1000048FC(&v19, v18);
        sub_10000298C(&v22);
        sub_1000048FC(&v23, v22);
      }
    }

    while ((v11 & 1) != 0);
  }

  v22 = (a1 + 192);
  v14 = sub_100006020((a1 + 24));
  block = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_1000A8664;
  v33 = &unk_1001818D8;
  v34 = v8;
  v35 = &v22;
  dispatch_sync(v14, &block);

  std::mutex::unlock(&stru_100192600);
}

void sub_10009FD58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x10009FD70);
  }

  _Unwind_Resume(a1);
}

void sub_10009FD8C(id *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_100192C30, memory_order_acquire) & 1) == 0)
  {
    sub_10011F594();
  }

  std::mutex::lock(&stru_100192640);
  v24 = 0;
  v25 = &v24;
  v26 = a1;
  v3 = sub_100006020(a1 + 3);
  v4 = (a1 + 1);
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1000A86CC;
  v35 = &unk_1001818F8;
  v36 = (a1 + 1);
  v37 = &v25;
  v31 = objc_retainBlock(&v32);
  LOBYTE(__s) = -86;
  block = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10002051C;
  v16 = &unk_1001818D8;
  p_s = &__s;
  v18 = &v31;
  dispatch_sync(v3, &block);
  v5 = __s;

  if (v5)
  {
    do
    {
      while (1)
      {
        v23 = 1;
        v21 = 0;
        __s = 0;
        block = a1;
        v14 = &v24;
        v15 = &v23;
        v16 = &__s;
        p_s = (&v21 + 4);
        v18 = &v21;
        v19 = &v20;
        v20 = 0;
        v6 = sub_100006020(a1 + 3);
        v25 = _NSConcreteStackBlock;
        v26 = 3221225472;
        v27 = sub_1000A87EC;
        v28 = &unk_1001818F8;
        v29 = a1 + 1;
        p_block = &block;
        v7 = objc_retainBlock(&v25);
        v38 = -86;
        v31 = v7;
        v32 = _NSConcreteStackBlock;
        v33 = 3221225472;
        v34 = sub_10002051C;
        v35 = &unk_1001818D8;
        v36 = &v38;
        v37 = &v31;
        dispatch_sync(v6, &v32);
        v8 = v38;

        v9 = __s ? v8 : 0;
        if (v9 == 1)
        {
          v10 = v23;
          sub_10000459C(&block, __s);
          sub_1000A0128(a2, v10, &block, SHIDWORD(v21), v21);
          if (SHIBYTE(v15) < 0)
          {
            break;
          }
        }

        if ((v8 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      operator delete(block);
    }

    while ((v8 & 1) != 0);
  }

LABEL_12:
  v32 = &v24;
  v11 = sub_100006020(a1 + 3);
  block = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000A8970;
  v16 = &unk_1001818D8;
  p_s = v4;
  v18 = &v32;
  dispatch_sync(v11, &block);

  sub_10007FC24(&v24, 0);
  std::mutex::unlock(&stru_100192640);
}

void sub_1000A00FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A0128(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v9 = a2;
  v7 = a5;
  v8 = a4;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_10002B200();
  }

  return (*(*v5 + 48))(v5, &v9, a3, &v8, &v7);
}

void sub_1000A01BC(uint64_t a1, int a2, char **a3, uint64_t a4)
{
  v22 = a2;
  if ((atomic_load_explicit(&qword_100192C38, memory_order_acquire) & 1) == 0)
  {
    sub_10011F5EC();
  }

  std::mutex::lock(&stru_100192680);
  v21 = 0;
  v14 = &v21;
  v15 = a1;
  v16 = a3;
  v17 = &v22;
  v6 = sub_100006020((a1 + 24));
  v7 = (a1 + 8);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1000A8980;
  v26 = &unk_1001818F8;
  v27 = a1 + 8;
  v28 = &v14;
  v29 = objc_retainBlock(&v23);
  LOBYTE(__s) = -86;
  block = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10002051C;
  v34 = &unk_1001818D8;
  p_s = &__s;
  v36 = &v29;
  dispatch_sync(v6, &block);
  v8 = __s;

  if (v8)
  {
    do
    {
      while (1)
      {
        v19 = 0;
        __s = 0;
        v14 = a1;
        v15 = &v21;
        v16 = &__s;
        v17 = &v19 + 4;
        v18 = &v19;
        v9 = sub_100006020((a1 + 24));
        v23 = _NSConcreteStackBlock;
        v24 = 3221225472;
        v25 = sub_1000A8AD4;
        v26 = &unk_1001818F8;
        v27 = a1 + 8;
        v28 = &v14;
        v29 = objc_retainBlock(&v23);
        v30 = -86;
        block = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_10002051C;
        v34 = &unk_1001818D8;
        p_s = &v30;
        v36 = &v29;
        dispatch_sync(v9, &block);
        v10 = v30;

        v11 = __s ? v10 : 0;
        if (v11 == 1)
        {
          sub_10000459C(&block, __s);
          sub_1000A0548(a4, &block, SHIDWORD(v19), v19);
          if (SHIBYTE(v33) < 0)
          {
            break;
          }
        }

        if ((v10 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      operator delete(block);
    }

    while ((v10 & 1) != 0);
  }

LABEL_12:
  v23 = &v21;
  v12 = sub_100006020((a1 + 24));
  block = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_1000A8C1C;
  v34 = &unk_1001818D8;
  p_s = v7;
  v36 = &v23;
  dispatch_sync(v12, &block);

  sub_10007FC24(&v21, 0);
  std::mutex::unlock(&stru_100192680);
}

void sub_1000A051C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A0548(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10002B200();
  }

  return (*(*v4 + 48))(v4, a2, &v7, &v6);
}

void sub_1000A05D4(uint64_t a1, int a2, char **a3, uint64_t a4)
{
  v22 = a2;
  if ((atomic_load_explicit(&qword_100192C40, memory_order_acquire) & 1) == 0)
  {
    sub_10011F644();
  }

  std::mutex::lock(&stru_1001926C0);
  v21 = 0;
  v14 = &v21;
  v15 = a1;
  v16 = a3;
  v17 = &v22;
  v6 = sub_100006020((a1 + 24));
  v7 = (a1 + 8);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1000A8C2C;
  v26 = &unk_1001818F8;
  v27 = a1 + 8;
  v28 = &v14;
  v29 = objc_retainBlock(&v23);
  LOBYTE(__s) = -86;
  block = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10002051C;
  v34 = &unk_1001818D8;
  p_s = &__s;
  v36 = &v29;
  dispatch_sync(v6, &block);
  v8 = __s;

  if (v8)
  {
    do
    {
      while (1)
      {
        v19 = 0;
        __s = 0;
        v14 = a1;
        v15 = &v21;
        v16 = &__s;
        v17 = &v19 + 4;
        v18 = &v19;
        v9 = sub_100006020((a1 + 24));
        v23 = _NSConcreteStackBlock;
        v24 = 3221225472;
        v25 = sub_1000A8D80;
        v26 = &unk_1001818F8;
        v27 = a1 + 8;
        v28 = &v14;
        v29 = objc_retainBlock(&v23);
        v30 = -86;
        block = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_10002051C;
        v34 = &unk_1001818D8;
        p_s = &v30;
        v36 = &v29;
        dispatch_sync(v9, &block);
        v10 = v30;

        v11 = __s ? v10 : 0;
        if (v11 == 1)
        {
          sub_10000459C(&block, __s);
          sub_1000A0548(a4, &block, SHIDWORD(v19), v19);
          if (SHIBYTE(v33) < 0)
          {
            break;
          }
        }

        if ((v10 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      operator delete(block);
    }

    while ((v10 & 1) != 0);
  }

LABEL_12:
  v23 = &v21;
  v12 = sub_100006020((a1 + 24));
  block = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_1000A8EC8;
  v34 = &unk_1001818D8;
  p_s = v7;
  v36 = &v23;
  dispatch_sync(v12, &block);

  sub_10007FC24(&v21, 0);
  std::mutex::unlock(&stru_1001926C0);
}

void sub_1000A0934(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000A0968(uint64_t a1, int a2, char **a3, uint64_t a4)
{
  v24 = a2;
  if ((atomic_load_explicit(&qword_100192C48, memory_order_acquire) & 1) == 0)
  {
    sub_10011F69C();
  }

  std::mutex::lock(&stru_100192700);
  p_s = a3;
  v23 = 0;
  v19 = &v23;
  v20 = a1;
  v21 = &v24;
  v6 = sub_100006020((a1 + 24));
  v7 = (a1 + 8);
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_1000A8ED8;
  v36 = &unk_1001818F8;
  v37 = a1 + 8;
  v38 = &v19;
  v25 = objc_retainBlock(&v33);
  LOBYTE(v18) = -86;
  block = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_10002051C;
  v30 = &unk_1001818D8;
  v31 = &v18;
  v32 = &v25;
  dispatch_sync(v6, &block);
  v8 = v18;

  if (v8)
  {
    while (1)
    {
      __s = 0;
      v18 = 0;
      v19 = a1;
      v20 = &v23;
      v21 = &v18;
      p_s = &__s;
      v9 = sub_100006020((a1 + 24));
      v33 = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_1000A902C;
      v36 = &unk_1001818F8;
      v37 = a1 + 8;
      v38 = &v19;
      v25 = objc_retainBlock(&v33);
      v26 = -86;
      block = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_10002051C;
      v30 = &unk_1001818D8;
      v31 = &v26;
      v32 = &v25;
      dispatch_sync(v9, &block);
      v10 = v26;

      if (v18)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1 || !__s)
      {
        goto LABEL_15;
      }

      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = 0xAAAAAAAAAAAAAAAALL;
      sub_10000459C(&__p, __s);
      v33 = sub_100009600(&__p);
      LOBYTE(v34) = v12;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v34)
        {
          goto LABEL_13;
        }

LABEL_15:
        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_13:
        sub_10000459C(&block, v18);
        v13 = *(a4 + 24);
        if (!v13)
        {
          sub_10002B200();
        }

        (*(*v13 + 48))(v13, &block, &v33);
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        operator delete(block);
        if ((v10 & 1) == 0)
        {
          break;
        }
      }
    }
  }

  v33 = &v23;
  v14 = sub_100006020((a1 + 24));
  block = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_1000A915C;
  v30 = &unk_1001818D8;
  v31 = v7;
  v32 = &v33;
  dispatch_sync(v14, &block);

  sub_10007FC24(&v23, 0);
  std::mutex::unlock(&stru_100192700);
}

void sub_1000A0D44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000A0D78(uint64_t a1, char **a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_100192C50, memory_order_acquire) & 1) == 0)
  {
    sub_10011F6F4();
  }

  std::mutex::lock(&stru_100192740);
  v21 = 0;
  v30 = &v21;
  v31 = a1;
  v32 = a2;
  v5 = sub_100006020((a1 + 24));
  v6 = (a1 + 8);
  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_1000A916C;
  v38 = &unk_1001818F8;
  v39 = a1 + 8;
  v40 = &v30;
  v22 = objc_retainBlock(&v35);
  LOBYTE(v20) = -86;
  block = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10002051C;
  v27 = &unk_1001818D8;
  v28 = &v20;
  v29 = &v22;
  dispatch_sync(v5, &block);
  v7 = v20;

  if (v7)
  {
    do
    {
      while (1)
      {
        __s = 0;
        v20 = 0;
        v18 = 0;
        v30 = a1;
        v31 = &v21;
        v32 = &v20;
        p_s = &__s;
        v34 = &v18;
        v8 = sub_100006020((a1 + 24));
        v35 = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_1000A92A0;
        v38 = &unk_1001818F8;
        v39 = a1 + 8;
        v40 = &v30;
        v22 = objc_retainBlock(&v35);
        v23 = -86;
        block = _NSConcreteStackBlock;
        v25 = 3221225472;
        v26 = sub_10002051C;
        v27 = &unk_1001818D8;
        v28 = &v23;
        v29 = &v22;
        dispatch_sync(v8, &block);
        v9 = v23;

        v10 = v20 ? v9 : 0;
        if (v10 == 1)
        {
          v35 = 0xAAAAAAAAAAAAAAAALL;
          v36 = 0xAAAAAAAAAAAAAAAALL;
          sub_10000459C(&__p, __s);
          v35 = sub_100009600(&__p);
          LOBYTE(v36) = v11;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v30 = 0xAAAAAAAAAAAAAAAALL;
          v31 = 0xAAAAAAAAAAAAAAAALL;
          sub_10000459C(&v16, v18);
          v30 = sub_100009600(&v16);
          LOBYTE(v31) = v12;
          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }

          if (v36 == 1 && v31 == 1)
          {
            sub_10000459C(&block, v20);
            v13 = *(a3 + 24);
            if (!v13)
            {
              sub_10002B200();
            }

            (*(*v13 + 48))(v13, &block, &v35, &v30);
            if (SHIBYTE(v26) < 0)
            {
              break;
            }
          }
        }

        if ((v9 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      operator delete(block);
    }

    while ((v9 & 1) != 0);
  }

LABEL_19:
  v35 = &v21;
  v14 = sub_100006020((a1 + 24));
  block = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000A93E8;
  v27 = &unk_1001818D8;
  v28 = v6;
  v29 = &v35;
  dispatch_sync(v14, &block);

  sub_10007FC24(&v21, 0);
  std::mutex::unlock(&stru_100192740);
}

void sub_1000A1194(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A11C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v4 = sub_100006020((a1 + 24));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A93F8;
  v8[3] = &unk_1001818F8;
  v8[4] = v3 + 8;
  v8[5] = v7;
  v5 = objc_retainBlock(v8);
  v11 = -86;
  v9 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v11;
  block[5] = &v9;
  dispatch_sync(v4, block);
  LOBYTE(v3) = v11;

  return v3 & 1;
}

void sub_1000A1304(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A1318(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6[0] = a1;
  v6[1] = a2;
  v3 = sub_100006020((a1 + 24));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A953C;
  v7[3] = &unk_1001818F8;
  v7[4] = v2 + 8;
  v7[5] = v6;
  v4 = objc_retainBlock(v7);
  v10 = -86;
  v8 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v10;

  return v2 & 1;
}

void sub_1000A1450(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A1464(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1;
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a3;
  v4 = sub_100006020((a1 + 24));
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A9680;
  v9[3] = &unk_1001818F8;
  v9[4] = v3 + 8;
  v9[5] = v7;
  v5 = objc_retainBlock(v9);
  v12 = -86;
  v10 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v12;
  block[5] = &v10;
  dispatch_sync(v4, block);
  LOBYTE(v3) = v12;

  return v3 & 1;
}

void sub_1000A15A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A15BC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6[0] = a1;
  v6[1] = a2;
  v3 = sub_100006020((a1 + 24));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A97CC;
  v7[3] = &unk_1001818F8;
  v7[4] = v2 + 8;
  v7[5] = v6;
  v4 = objc_retainBlock(v7);
  v10 = -86;
  v8 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v10;

  return v2 & 1;
}

void sub_1000A16F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A1708(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 24));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A9910;
  v6[3] = &unk_1001818F8;
  v6[4] = v1 + 8;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_1000A1840(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A1854(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 24));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A991C;
  v6[3] = &unk_1001818F8;
  v6[4] = v1 + 8;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_1000A198C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A19A0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6[0] = a1;
  v6[1] = a2;
  v3 = sub_100006020((a1 + 24));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A9B68;
  v7[3] = &unk_1001818F8;
  v7[4] = v2 + 8;
  v7[5] = v6;
  v4 = objc_retainBlock(v7);
  v10 = -86;
  v8 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v10;

  return v2 & 1;
}

void sub_1000A1AD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A1AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v4 = sub_100006020((a1 + 24));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A9D48;
  v8[3] = &unk_1001818F8;
  v8[4] = v3 + 8;
  v8[5] = v7;
  v5 = objc_retainBlock(v8);
  v11 = -86;
  v9 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v11;
  block[5] = &v9;
  dispatch_sync(v4, block);
  LOBYTE(v3) = v11;

  return v3 & 1;
}

void sub_1000A1C28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A1C3C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6[0] = a1;
  v6[1] = a2;
  v3 = sub_100006020((a1 + 24));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A9F4C;
  v7[3] = &unk_1001818F8;
  v7[4] = v2 + 8;
  v7[5] = v6;
  v4 = objc_retainBlock(v7);
  v10 = -86;
  v8 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v10;

  return v2 & 1;
}

void sub_1000A1D74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000A1D88(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v5 = sub_100006020((a1 + 24));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A9F58;
  v8[3] = &unk_100187038;
  v8[4] = a1 + 8;
  v8[5] = v7;
  v9 = objc_retainBlock(v8);
  v6 = v5;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AA198;
  block[3] = &unk_1001818D8;
  block[4] = a3;
  block[5] = &v9;
  dispatch_sync(v6, block);
}

void sub_1000A1ECC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000A1EE0(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  sub_10007F8D4(a1, "SELECT id, config_uuid, state, start, end FROM rollover_sessions WHERE state >= ?1 AND state < ?2", 0, &__str);
  v4 = __str.__r_.__value_.__r.__words[0];
  __str.__r_.__value_.__r.__words[0] = 0;
  sub_10007FC24(&v19, v4);
  sub_10007FC24(&__str, 0);
  if (v19)
  {
    v18 = 0;
    __str.__r_.__value_.__r.__words[0] = 1;
    sub_100023B24(a1, &v19, 1, &__str, &v18);
    __str.__r_.__value_.__r.__words[0] = 2;
    sub_100023B24(a1, &v19, 2, &__str, &v18);
    v5 = sub_10000BE48(a1, &v19);
    v6 = v5 == 100;
    if (v5 == 100)
    {
      v7 = sub_10000A5D0(a1, &v19, 0);
      v8 = sub_10000A5D0(a1, &v19, 1);
      v9 = sub_10007F898(a1, &v19, 2);
      v10 = sub_100016AC4(a1, &v19, 3);
      v11 = sub_100016AC4(a1, &v19, 4);
      memset(v17, 170, sizeof(v17));
      sub_10000459C(&__str, v8);
      sub_10000459C(__p, ",");
      sub_1000A2200(&__str, __p, v17);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      sub_10000459C(&__str, v7);
      v22 = 0uLL;
      v23 = 0;
      sub_10009D534(&v22, v17[0], v17[1], 0xAAAAAAAAAAAAAAABLL * ((v17[1] - v17[0]) >> 3));
      *&v24 = v10;
      *(&v24 + 1) = v11;
      v25 = v9;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = __str;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
      sub_1000336AC(a2 + 24);
      *(a2 + 24) = v22;
      *(a2 + 40) = v23;
      v23 = 0;
      v22 = 0uLL;
      *(a2 + 48) = v24;
      *(a2 + 64) = v25;
      v20 = &v22;
      sub_10002DE40(&v20);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v17;
      sub_10002DE40(&__str);
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      v12 = qword_100192D80;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg(*(a1 + 32));
        sub_10011F74C(v14, &__str);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10011F784();
    }

    v6 = 0;
  }

  sub_10007FC24(&v19, 0);
  return v6;
}

void sub_1000A21F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000A2200(std::string *__str@<X0>, char *a2@<X1>, std::string::size_type *a3@<X8>)
{
  v6 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  memset(&__p, 0, sizeof(__p));
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v9 = a2[23];
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
    v11 = a2[23];
  }

  else
  {
    v11 = *(a2 + 1);
  }

  while (1)
  {
    v12 = v6;
    if (v11)
    {
      break;
    }

LABEL_22:
    if (v12 != -1)
    {
      std::string::basic_string(&v37, __str, v6, v12 - v6, &v35);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v37;
      sub_1000544A8(a3, &__p);
      v6 = v12 + 1;
      size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v8 = __str;
      }

      else
      {
        v8 = __str->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = __str->__r_.__value_.__l.__size_;
      }

      v19 = a2[23];
      v10 = v19 >= 0 ? a2 : *a2;
      v11 = v19 >= 0 ? a2[23] : *(a2 + 1);
      if (size > v12)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  v13 = size - v6;
  if ((size - v6) >= v11)
  {
    v14 = v8 + size;
    v15 = v8 + v6;
    v16 = *v10;
    do
    {
      if (v13 - v11 == -1)
      {
        break;
      }

      v17 = memchr(v15, v16, v13 - v11 + 1);
      if (!v17)
      {
        break;
      }

      v18 = v17;
      if (!memcmp(v17, v10, v11))
      {
        if (v18 == v14)
        {
          break;
        }

        v12 = v18 - v8;
        goto LABEL_22;
      }

      v15 = v18 + 1;
      v13 = v14 - (v18 + 1);
    }

    while (v13 >= v11);
  }

LABEL_37:
  std::string::basic_string(&v35, __str, v6, 0xFFFFFFFFFFFFFFFFLL, &v37);
  v21 = a3[1];
  v20 = a3[2];
  if (v21 >= v20)
  {
    v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a3) >> 3);
    v24 = v23 + 1;
    if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10002C63C();
    }

    v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a3) >> 3);
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

    v39 = a3;
    if (v26)
    {
      sub_10002E2FC(a3, v26);
    }

    v27 = 24 * v23;
    v28 = *&v35.__r_.__value_.__l.__data_;
    *(v27 + 16) = *(&v35.__r_.__value_.__l + 2);
    *v27 = v28;
    memset(&v35, 0, sizeof(v35));
    v29 = 24 * v23 + 24;
    v30 = a3[1] - *a3;
    v31 = 24 * v23 - v30;
    memcpy((v27 - v30), *a3, v30);
    v32 = *a3;
    *a3 = v31;
    a3[1] = v29;
    v33 = a3[2];
    a3[2] = 0;
    v37.__r_.__value_.__r.__words[2] = v32;
    v38 = v33;
    v37.__r_.__value_.__r.__words[0] = v32;
    v37.__r_.__value_.__l.__size_ = v32;
    sub_10002E354(&v37);
    v34 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
    a3[1] = v29;
    if (v34 < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = *&v35.__r_.__value_.__l.__data_;
    *(v21 + 16) = *(&v35.__r_.__value_.__l + 2);
    *v21 = v22;
    a3[1] = v21 + 24;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000A24E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_10002DE40(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A2530(uint64_t a1, std::string *a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  memset(__str, 0, sizeof(__str));
  v3 = sub_1000A1C3C(a1, __str);
  std::string::operator=(a2, __str);
  v5 = &__str[24];
  sub_10002DE40(&v5);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  return v3;
}

void sub_1000A25E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000A25F4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6[0] = a1;
  v6[1] = a2;
  v3 = sub_100006020((a1 + 24));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA23C;
  v7[3] = &unk_1001818F8;
  v7[4] = v2 + 8;
  v7[5] = v6;
  v4 = objc_retainBlock(v7);
  v10 = -86;
  v8 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v10;

  return v2 & 1;
}

void sub_1000A272C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A2740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v4 = sub_100006020((a1 + 24));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AA768;
  v8[3] = &unk_1001818F8;
  v8[4] = v3 + 8;
  v8[5] = v7;
  v5 = objc_retainBlock(v8);
  v11 = -86;
  v9 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v11;
  block[5] = &v9;
  dispatch_sync(v4, block);
  LOBYTE(v3) = v11;

  return v3 & 1;
}

void sub_1000A287C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A2890(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6[0] = a1;
  v6[1] = a2;
  v3 = sub_100006020((a1 + 24));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AAADC;
  v7[3] = &unk_1001818F8;
  v7[4] = v2 + 8;
  v7[5] = v6;
  v4 = objc_retainBlock(v7);
  v10 = -86;
  v8 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v10;

  return v2 & 1;
}

void sub_1000A29C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A29DC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6[0] = a1;
  v6[1] = a2;
  v3 = sub_100006020((a1 + 24));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AAE84;
  v7[3] = &unk_1001818F8;
  v7[4] = v2 + 8;
  v7[5] = v6;
  v4 = objc_retainBlock(v7);
  v10 = -86;
  v8 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v10;

  return v2 & 1;
}

void sub_1000A2B14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A2B28(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 24));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AB190;
  v6[3] = &unk_1001818F8;
  v6[4] = v1 + 8;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_1000A2C60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A2C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v8[0] = a2;
  v8[1] = a1;
  v8[2] = a3;
  v8[3] = a4;
  v5 = sub_100006020((a1 + 24));
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AB444;
  v9[3] = &unk_1001818F8;
  v9[4] = v4 + 8;
  v9[5] = v8;
  v6 = objc_retainBlock(v9);
  v12 = -86;
  v10 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v12;
  block[5] = &v10;
  dispatch_sync(v5, block);
  LOBYTE(v4) = v12;

  return v4 & 1;
}

void sub_1000A2DB0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A2DC4(uint64_t a1, int a2)
{
  v2 = a1;
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v3 = sub_100006020((a1 + 24));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000ABAA4;
  v8[3] = &unk_1001818F8;
  v8[4] = v2 + 8;
  v8[5] = v6;
  v4 = objc_retainBlock(v8);
  v11 = -86;
  v9 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v11;
  block[5] = &v9;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v11;

  return v2 & 1;
}

void sub_1000A2F04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A2F18(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 24));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000ABAB4;
  v6[3] = &unk_1001818F8;
  v6[4] = v1 + 8;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_1000A3050(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A3064(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 24));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000ABCC0;
  v6[3] = &unk_1001818F8;
  v6[4] = v1 + 8;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_1000A319C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A31B0(uint64_t a1, int a2)
{
  v2 = a1;
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v3 = sub_100006020((a1 + 24));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000ABE70;
  v8[3] = &unk_1001818F8;
  v8[4] = v2 + 8;
  v8[5] = v6;
  v4 = objc_retainBlock(v8);
  v11 = -86;
  v9 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v11;
  block[5] = &v9;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v11;

  return v2 & 1;
}

void sub_1000A32F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A3304(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 24));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC040;
  v6[3] = &unk_1001818F8;
  v6[4] = v1 + 8;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_1000A343C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A3450(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 24));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC288;
  v6[3] = &unk_1001818F8;
  v6[4] = v1 + 8;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_1000A3588(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A359C(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 24));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC4E0;
  v6[3] = &unk_1001818F8;
  v6[4] = v1 + 8;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_1000A36D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000A36E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1000A3838(a1, a2, a4))
  {
    return 0;
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = v7;
  v16[1] = v7;
  sub_10000DEC4(v16, a3);
  sub_10000DF14(v16);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v8;
  v14[1] = v8;
  sub_10000DEC4(v14, a3);
  sub_10000DCFC(v14);
  while (1)
  {
    v9 = sub_10000DD7C(v16, v14);
    if (v9)
    {
      break;
    }

    sub_10000DB44(v16);
    v12[0] = 0;
    v13 = 0;
    sub_10000298C(v12);
    sub_10000298C(v12);
    v10 = sub_100023FD0(a1, a2);
    sub_10000298C(v12);
    sub_1000048FC(&v13, v12[0]);
    if (!v10)
    {
      break;
    }

    sub_100012BFC(v16);
  }

  return v9;
}

void sub_1000A382C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A3838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 208);
  if (*(a1 + 208) || (sub_10007F8D4(a1, "DELETE FROM transform_states WHERE transform_metadata_id IN (SELECT transform_metadata_id FROM transform_metadata WHERE (transform_uuid=?1 AND rollover_session_id=?2) LIMIT 1) AND rollover_session_id=?2", 1, buf), v7 = *buf, *buf = 0, sub_10007FC24(v6, v7), sub_10007FC24(buf, 0), *(a1 + 208)))
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v19, v6);
    v18 = 0;
    sub_100023980(a1, v6, 1, a2, &v18);
    sub_100023980(a1, v6, 2, a3, &v18);
    v8 = sub_100023B68(a1, v6, &v18);
    v9 = v8 == 101;
    if (v8 != 101)
    {
      if (*(a1 + 32))
      {
        v10 = qword_100192D80;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a2 + 23);
          v14 = *a2;
          v15 = sqlite3_errmsg(*(a1 + 32));
          if (v13 >= 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = v14;
          }

          *buf = 136446466;
          *&buf[4] = v16;
          v21 = 2080;
          v22 = v15;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[State Store] Failed to remove transform_state for (uuid='%{public}s'); %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10011F9F4(a2);
      }
    }

    sub_100011B58(&v19);
  }

  else
  {
    if (*(a1 + 32))
    {
      v12 = qword_100192D80;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = sqlite3_errmsg(*(a1 + 32));
        sub_10011FA64(v17, buf);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10011FA9C();
    }

    return 0;
  }

  return v9;
}

void sub_1000A3A80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000A3A8C(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v7 = 0;
  sub_10000298C(v6);
  sub_10000298C(v6);
  v4 = sub_100023FD0(a1, a2);
  sub_10000298C(v6);
  sub_1000048FC(&v7, v6[0]);
  return v4;
}

BOOL sub_1000A3B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 224);
  if (*(a1 + 224) || (sub_10007F8D4(a1, "DELETE FROM transform_metadata WHERE transform_uuid=?1 AND rollover_session_id=?2", 1, buf), v7 = *buf, *buf = 0, sub_10007FC24(v6, v7), sub_10007FC24(buf, 0), *(a1 + 224)))
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v19, v6);
    v18 = 0;
    sub_100023980(a1, v6, 1, a2, &v18);
    sub_100023980(a1, v6, 2, a3, &v18);
    v8 = sub_100023B68(a1, v6, &v18);
    v9 = v8 == 101;
    if (v8 != 101)
    {
      if (*(a1 + 32))
      {
        v10 = qword_100192D80;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a2 + 23);
          v14 = *a2;
          v15 = sqlite3_errmsg(*(a1 + 32));
          if (v13 >= 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = v14;
          }

          *buf = 136446466;
          *&buf[4] = v16;
          v21 = 2080;
          v22 = v15;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[State Store] Failed to remove transform_metadata for (uuid='%{public}s'); %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10011FC04(a2);
      }
    }

    sub_100011B58(&v19);
  }

  else
  {
    if (*(a1 + 32))
    {
      v12 = qword_100192D80;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = sqlite3_errmsg(*(a1 + 32));
        sub_10011FC74(v17, buf);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10011FCAC();
    }

    return 0;
  }

  return v9;
}

void sub_1000A3D94(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000A3DA0(uint64_t a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "DELETE FROM transform_states WHERE rollover_session_id=?1", 0, &v11);
  if (!v11)
  {
    if (!*(a1 + 32))
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10011FE74();
      }

      goto LABEL_22;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg(*(a1 + 32));
      sub_10011FE3C(v9, v13);
    }

    goto LABEL_9;
  }

  sub_10000BE00(a1, &v11, 1, a2);
  if (*(a1 + 32))
  {
    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*(a1 + 32));
      sub_10011FD0C(v8, v13);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_10011FD44();
  }

  v12[0] = 0;
  if (sub_100023B68(a1, &v11, v12) != 101)
  {
    if (!*(a1 + 32))
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10011FDDC();
      }

      goto LABEL_22;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = sqlite3_errmsg(*(a1 + 32));
      sub_10011FDA4(v10, v12);
    }

LABEL_9:

LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  v6 = 1;
LABEL_23:
  sub_10007FC24(&v11, 0);
  return v6;
}

void sub_1000A3F9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A3FA8(uint64_t a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "DELETE FROM transform_metadata WHERE rollover_session_id=?1", 0, &v11);
  if (!v11)
  {
    if (!*(a1 + 32))
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10012003C();
      }

      goto LABEL_22;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg(*(a1 + 32));
      sub_100120004(v9, v13);
    }

    goto LABEL_9;
  }

  sub_10000BE00(a1, &v11, 1, a2);
  if (*(a1 + 32))
  {
    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*(a1 + 32));
      sub_10011FED4(v8, v13);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_10011FF0C();
  }

  v12[0] = 0;
  if (sub_100023B68(a1, &v11, v12) != 101)
  {
    if (!*(a1 + 32))
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10011FFA4();
      }

      goto LABEL_22;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = sqlite3_errmsg(*(a1 + 32));
      sub_10011FF6C(v10, v12);
    }

LABEL_9:

LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  v6 = 1;
LABEL_23:
  sub_10007FC24(&v11, 0);
  return v6;
}

void sub_1000A41A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000A41B0(uint64_t a1, int a2, uint64_t a3)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "DELETE FROM transform_states WHERE rollover_session_id=?1 AND transform_metadata_id IN (SELECT tm.transform_metadata_id FROM transform_metadata AS tm JOIN agg_session ON tm.agg_session_id = agg_session.agg_session_id WHERE agg_session.agg_session_period = ?2 AND is_active = 0)", 1, &v21);
  if (v21)
  {
    v20 = 0;
    sub_100023980(a1, &v21, 1, a3, &v20);
    __p[0] = a2;
    sub_100023B24(a1, &v21, 2, __p, &v20);
    v6 = sub_100023B68(a1, &v21, &v20);
    v7 = v6 == 101;
    if (v6 != 101)
    {
      v8 = *(a1 + 32);
      v9 = qword_100192D80;
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          if ((a2 - 1) > 2)
          {
            v11 = "Daily";
          }

          else
          {
            v11 = off_100187058[a2 - 1];
          }

          sub_10000459C(__p, v11);
          v16 = v23;
          v17 = __p[0];
          v18 = sqlite3_errmsg(*(a1 + 32));
          v19 = __p;
          if (v16 < 0)
          {
            v19 = v17;
          }

          *buf = 136315394;
          v25 = v19;
          v26 = 2080;
          v27 = v18;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[State Store] Failed to remove transforms states for aggregation period='%s'; %s", buf, 0x16u);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else if (v10)
      {
        if ((a2 - 1) > 2)
        {
          v15 = "Daily";
        }

        else
        {
          v15 = off_100187058[a2 - 1];
        }

        sub_10000459C(__p, v15);
        sub_10012009C(__p);
      }
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      v12 = qword_100192D80;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg(*(a1 + 32));
        sub_1001200FC(v14, __p);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100120134();
    }

    v7 = 0;
  }

  sub_10007FC24(&v21, 0);
  return v7;
}

void sub_1000A442C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A4438(uint64_t a1, int a2, uint64_t a3)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "DELETE FROM transform_metadata WHERE rollover_session_id=?1 AND agg_session_id IN (SELECT agg_session_id FROM agg_session WHERE agg_session_period = ?2 AND is_active = 0)", 1, &v21);
  if (v21)
  {
    v20 = 0;
    sub_100023980(a1, &v21, 1, a3, &v20);
    __p[0] = a2;
    sub_100023B24(a1, &v21, 2, __p, &v20);
    v6 = sub_100023B68(a1, &v21, &v20);
    v7 = v6 == 101;
    if (v6 != 101)
    {
      v8 = *(a1 + 32);
      v9 = qword_100192D80;
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          if ((a2 - 1) > 2)
          {
            v11 = "Daily";
          }

          else
          {
            v11 = off_100187058[a2 - 1];
          }

          sub_10000459C(__p, v11);
          v16 = v23;
          v17 = __p[0];
          v18 = sqlite3_errmsg(*(a1 + 32));
          v19 = __p;
          if (v16 < 0)
          {
            v19 = v17;
          }

          *buf = 136315394;
          v25 = v19;
          v26 = 2080;
          v27 = v18;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[State Store] Failed to remove transforms metadata for aggregation period='%s'; %s", buf, 0x16u);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else if (v10)
      {
        if ((a2 - 1) > 2)
        {
          v15 = "Daily";
        }

        else
        {
          v15 = off_100187058[a2 - 1];
        }

        sub_10000459C(__p, v15);
        sub_100120194(__p);
      }
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      v12 = qword_100192D80;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg(*(a1 + 32));
        sub_1001201F4(v14, __p);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10012022C();
    }

    v7 = 0;
  }

  sub_10007FC24(&v21, 0);
  return v7;
}

void sub_1000A46B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A46C0(uint64_t a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "DELETE FROM transform_states WHERE rollover_session_id=?1 AND transform_metadata_id IN (SELECT tm.transform_metadata_id FROM transform_metadata AS tm LEFT JOIN agg_session ON tm.agg_session_id = agg_session.agg_session_id WHERE (agg_session.agg_session_end_boundary <= ?2 OR tm.agg_session_id IS NULL) AND rollover_session_id=?1)", 1, &v13);
  if (v13)
  {
    v12 = 0;
    sub_100023980(a1, &v13, 1, a2, &v12);
    memset(__p, 170, sizeof(__p));
    v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    sub_100024608(v4.__d_.__rep_);
    sub_100023980(a1, &v13, 2, __p, &v12);
    v5 = sub_100023B68(a1, &v13, &v12);
    v6 = v5 == 101;
    if (v5 != 101)
    {
      if (*(a1 + 32))
      {
        v7 = qword_100192D80;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v11 = sqlite3_errmsg(*(a1 + 32));
          sub_10012028C(v11, v14);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001202C4();
      }
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      v8 = qword_100192D80;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_errmsg(*(a1 + 32));
        sub_100120324(v10, __p);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10012035C();
    }

    v6 = 0;
  }

  sub_10007FC24(&v13, 0);
  return v6;
}

void sub_1000A48AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A48B8(uint64_t a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "DELETE FROM transform_metadata WHERE rollover_session_id=?1 AND agg_session_id IN (SELECT agg_session_id FROM agg_session WHERE agg_session_end_boundary <= ?2) OR agg_session_id IS NULL", 1, &v13);
  if (v13)
  {
    v12 = 0;
    sub_100023980(a1, &v13, 1, a2, &v12);
    memset(__p, 170, sizeof(__p));
    v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    sub_100024608(v4.__d_.__rep_);
    sub_100023980(a1, &v13, 2, __p, &v12);
    v5 = sub_100023B68(a1, &v13, &v12);
    v6 = v5 == 101;
    if (v5 != 101)
    {
      if (*(a1 + 32))
      {
        v7 = qword_100192D80;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v11 = sqlite3_errmsg(*(a1 + 32));
          sub_1001203BC(v11, v14);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001203F4();
      }
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      v8 = qword_100192D80;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_errmsg(*(a1 + 32));
        sub_100120454(v10, __p);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10012048C();
    }

    v6 = 0;
  }

  sub_10007FC24(&v13, 0);
  return v6;
}

void sub_1000A4AA4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A4AB0(uint64_t a1, int a2)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "SELECT 1 FROM agg_session WHERE agg_session_period=?1 AND agg_session_end_boundary > ?2", 1, &v9);
  if (v9)
  {
    __p[0] = a2;
    sub_10007F82C(a1, &v9, 1, __p);
    memset(__p, 170, sizeof(__p));
    v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    sub_100024608(v4.__d_.__rep_);
    sub_10000BE00(a1, &v9, 2, __p);
    v5 = sub_10000BE48(a1, &v9) == 100;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      v6 = qword_100192D80;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = sqlite3_errmsg(*(a1 + 32));
        sub_1001204EC(v8, __p);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100120524();
    }

    v5 = 0;
  }

  sub_10007FC24(&v9, 0);
  return v5;
}

void sub_1000A4C28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000A4C34(uint64_t a1, int a2)
{
  v2 = a1;
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v3 = sub_100006020((a1 + 24));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AC4EC;
  v8[3] = &unk_1001818F8;
  v8[4] = v2 + 8;
  v8[5] = v6;
  v4 = objc_retainBlock(v8);
  v11 = -86;
  v9 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v11;
  block[5] = &v9;
  dispatch_sync(v3, block);
  LOBYTE(v2) = v11;

  return v2 & 1;
}

void sub_1000A4D74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000A4D88(uint64_t a1, int a2, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep *a3)
{
  v24 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "INSERT INTO agg_session (agg_session_end_boundary, agg_session_period) VALUES (?1, ?2)", 1, &v24);
  if (v24)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v23, &v24);
    v22 = 0;
    memset(__p, 170, sizeof(__p));
    sub_100024608(*a3);
    sub_100023980(a1, &v24, 1, __p, &v22);
    v20[0] = a2;
    sub_100023B24(a1, &v24, 2, v20, &v22);
    v6 = sub_100023B68(a1, &v24, &v22);
    v7 = v6 == 101;
    if (v6 != 101)
    {
      v8 = *(a1 + 32);
      v9 = qword_100192D80;
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          if ((a2 - 1) > 2)
          {
            v11 = "Daily";
          }

          else
          {
            v11 = off_100187058[a2 - 1];
          }

          sub_10000459C(v20, v11);
          v16 = v21;
          v17 = v20[0];
          v18 = sqlite3_errmsg(*(a1 + 32));
          v19 = v20;
          if (v16 < 0)
          {
            v19 = v17;
          }

          *buf = 136315394;
          v26 = v19;
          v27 = 2080;
          v28 = v18;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[State Store] Failed to insert aggregation session for aggregation period='%s'; %s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }
        }
      }

      else if (v10)
      {
        if ((a2 - 1) > 2)
        {
          v15 = "Daily";
        }

        else
        {
          v15 = off_100187058[a2 - 1];
        }

        sub_10000459C(v20, v15);
        sub_100120584(v20);
      }
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100011B58(&v23);
  }

  else
  {
    if (*(a1 + 32))
    {
      v12 = qword_100192D80;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg(*(a1 + 32));
        sub_1001205E4(v14, __p);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10012061C();
    }

    v7 = 0;
  }

  sub_10007FC24(&v24, 0);
  return v7;
}

void sub_1000A504C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A5058(uint64_t a1)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "DELETE FROM agg_session WHERE is_active = 0 AND agg_session_end_boundary <= ?1", 1, &v11);
  if (v11)
  {
    v10 = 0;
    memset(__p, 170, sizeof(__p));
    v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    sub_100024608(v2.__d_.__rep_);
    sub_100023980(a1, &v11, 1, __p, &v10);
    v3 = sub_100023B68(a1, &v11, &v10);
    v4 = v3 == 101;
    if (v3 != 101)
    {
      if (*(a1 + 32))
      {
        v5 = qword_100192D80;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v9 = sqlite3_errmsg(*(a1 + 32));
          sub_10012067C(v9, v12);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001206B4();
      }
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      v6 = qword_100192D80;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = sqlite3_errmsg(*(a1 + 32));
        sub_100120714(v8, __p);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10012074C();
    }

    v4 = 0;
  }

  sub_10007FC24(&v11, 0);
  return v4;
}

void sub_1000A5228(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A5234(uint64_t a1)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "DELETE FROM agg_session WHERE is_active = 0", 1, &v10);
  if (v10)
  {
    v9 = 0;
    v2 = sub_100023B68(a1, &v10, &v9);
    v3 = v2 == 101;
    if (v2 != 101)
    {
      if (*(a1 + 32))
      {
        v4 = qword_100192D80;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v8 = sqlite3_errmsg(*(a1 + 32));
          sub_1001207AC(v8, v11);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001207E4();
      }
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = sqlite3_errmsg(*(a1 + 32));
        sub_100120844(v7, v11);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10012087C();
    }

    v3 = 0;
  }

  sub_10007FC24(&v10, 0);
  return v3;
}

void sub_1000A53BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000A53C8(uint64_t a1, int a2)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "DELETE FROM agg_session WHERE is_active = 0 AND agg_session_period = ?1", 1, &v12);
  if (v12)
  {
    v11 = 0;
    v13[0] = a2;
    sub_100023B24(a1, &v12, 1, v13, &v11);
    v4 = sub_100023B68(a1, &v12, &v11);
    v5 = v4 == 101;
    if (v4 != 101)
    {
      if (*(a1 + 32))
      {
        v6 = qword_100192D80;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v10 = sqlite3_errmsg(*(a1 + 32));
          sub_1001208DC(v10, v13);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100120914();
      }
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      v7 = qword_100192D80;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_errmsg(*(a1 + 32));
        sub_100120974(v9, v13);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_1001209AC();
    }

    v5 = 0;
  }

  sub_10007FC24(&v12, 0);
  return v5;
}

void sub_1000A5574(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000A5580(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[State Store] DATABASE INITIALIZATION: modifying for V1 schema", v12, 2u);
  }

  v3 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE queried_states\n         (\n          queried_state_id INTEGER PRIMARY KEY ASC,\n          queried_state_name STRING UNIQUE,\n          queried_state_params STRING,\n          queried_state_value STRING,\n          queried_state_error STRING,\n          queried_state_last_modified TEXT DEFAULT (strftime('%s', 'now')),\n          queried_state_ttl INTEGER,\n          CONSTRAINT queried_state_identifier UNIQUE (queried_state_name, queried_state_params)\n         )\n    ", 0, 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    if (!v4)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100120A44();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg(*(a1 + 32));
      sub_100120A0C(v9, v12);
    }

    goto LABEL_19;
  }

  v6 = sqlite3_exec(v4, "\n         CREATE TRIGGER update_queried_state_last_modified_time AFTER UPDATE ON queried_states\n         BEGIN\n                 UPDATE queried_states SET queried_state_last_modified = strftime('%s', 'now') WHERE  queried_state_id = new.queried_state_id;\n         END\n    ", 0, 0, 0);
  v7 = *(a1 + 32);
  if (v6)
  {
    if (v7)
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_errmsg(*(a1 + 32));
        sub_100120AA4(v10, v12);
      }

LABEL_19:

      return 0;
    }

    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100120ADC();
      return 0;
    }
  }

  else
  {
    if (!sqlite3_exec(v7, "CREATE UNIQUE INDEX index1 ON queried_states(queried_state_name, queried_state_params);", 0, 0, 0))
    {
      return sub_10007F970(a1, 1);
    }

    if (*(a1 + 32))
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_errmsg(*(a1 + 32));
        sub_100120B3C(v11, v12);
      }

      goto LABEL_19;
    }

    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100120B74();
      return 0;
    }
  }

  return result;
}

void sub_1000A57AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A57B8(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[State Store] DATABASE INITIALIZATION: modifying for V2 schema", v21, 2u);
  }

  v3 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE transform_states\n         (\n          transform_state_id INTEGER PRIMARY KEY ASC,\n          transform_uuid STRING,\n          transform_key STRING,\n          transform_value STRING,\n          CONSTRAINT fk_transform_states_transform_metadata FOREIGN KEY (transform_uuid) REFERENCES transform_metadata(transform_uuid)\n         )\n    ", 0, 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    if (!v4)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100120C0C();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errmsg(*(a1 + 32));
      sub_100120BD4(v13, v21);
    }

    goto LABEL_40;
  }

  v6 = sqlite3_exec(v4, "\n         CREATE TABLE transform_metadata\n         (\n          transform_metdata_id INTEGER PRIMARY KEY ASC,\n          transform_type INTEGER,\n          transform_uuid STRING UNIQUE,\n          transform_budget_used INTEGER,\n          transform_other_metadata STRING DEFAULT 'null',\n          transform_metadata_created_at TEXT DEFAULT (strftime('%s', 'now'))\n         )\n    ", 0, 0, 0);
  v7 = *(a1 + 32);
  if (v6)
  {
    if (!v7)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100120CA4();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = sqlite3_errmsg(*(a1 + 32));
      sub_100120C6C(v16, v21);
    }

    goto LABEL_40;
  }

  v9 = sqlite3_exec(v7, "CREATE INDEX index2 ON transform_states(transform_uuid);", 0, 0, 0);
  v10 = *(a1 + 32);
  if (v9)
  {
    if (!v10)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100120D3C();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = sqlite3_errmsg(*(a1 + 32));
      sub_100120D04(v17, v21);
    }

    goto LABEL_40;
  }

  v11 = sqlite3_exec(v10, "CREATE INDEX index3 ON transform_states(transform_key);", 0, 0, 0);
  v12 = *(a1 + 32);
  if (v11)
  {
    if (!v12)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100120DD4();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v18 = sqlite3_errmsg(*(a1 + 32));
      sub_100120D9C(v18, v21);
    }

    goto LABEL_40;
  }

  v14 = sqlite3_exec(v12, "CREATE UNIQUE INDEX index4 ON transform_metadata(transform_uuid);", 0, 0, 0);
  v15 = *(a1 + 32);
  if (v14)
  {
    if (v15)
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v19 = sqlite3_errmsg(*(a1 + 32));
        sub_100120E34(v19, v21);
      }

LABEL_40:

      return 0;
    }

    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100120E6C();
      return 0;
    }
  }

  else
  {
    if (!sqlite3_exec(v15, "\n         CREATE VIEW transform_metadata_and_states AS\n           SELECT tm.transform_uuid, tm.transform_type, tm.transform_budget_used, tm.transform_other_metadata, tm.transform_metadata_created_at, tb.transform_key, tb.transform_value\n           FROM transform_states AS tb\n           INNER JOIN transform_metadata AS tm\n           ON tb.transform_uuid=tm.transform_uuid\n    ", 0, 0, 0))
    {
      return sub_10007F970(a1, 2);
    }

    if (*(a1 + 32))
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v20 = sqlite3_errmsg(*(a1 + 32));
        sub_100120ECC(v20, v21);
      }

      goto LABEL_40;
    }

    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100120F04();
      return 0;
    }
  }

  return result;
}

void sub_1000A5B58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A5B64(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[State Store] DATABASE INITIALIZATION: modifying for V3 schema", v30, 2u);
  }

  v3 = sqlite3_exec(*(a1 + 32), "\n         DROP VIEW transform_metadata_and_states;\n    ", 0, 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    if (!v4)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100120F9C();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errmsg(*(a1 + 32));
      sub_100120F64(v13, v30);
    }

    goto LABEL_61;
  }

  v6 = sqlite3_exec(v4, "\n      ALTER TABLE transform_metadata\n      RENAME COLUMN transform_metdata_id TO transform_metadata_id;\n    ", 0, 0, 0);
  v7 = *(a1 + 32);
  if (v6)
  {
    if (!v7)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100121034();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = sqlite3_errmsg(*(a1 + 32));
      sub_100120FFC(v16, v30);
    }

    goto LABEL_61;
  }

  v9 = sqlite3_exec(v7, "\n      CREATE TABLE transform_states_new\n      (\n       transform_state_id INTEGER PRIMARY KEY ASC,\n       transform_metadata_id INTEGER NOT NULL,\n       transform_key STRING,\n       transform_value STRING,\n       CONSTRAINT fk_transform_states_transform_metadata_id FOREIGN KEY (transform_metadata_id) REFERENCES transform_metadata(transform_metadata_id)\n      )\n    ", 0, 0, 0);
  v10 = *(a1 + 32);
  if (v9)
  {
    if (!v10)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_1001210CC();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v19 = sqlite3_errmsg(*(a1 + 32));
      sub_100121094(v19, v30);
    }

    goto LABEL_61;
  }

  v11 = sqlite3_exec(v10, "\n         INSERT INTO transform_states_new (transform_state_id, transform_metadata_id, transform_key, transform_value) SELECT ts.transform_state_id, tm.transform_metadata_id, ts.transform_key, ts.transform_value\n           FROM transform_states AS ts\n           INNER JOIN transform_metadata AS tm\n           ON ts.transform_uuid=tm.transform_uuid;\n    ", 0, 0, 0);
  v12 = *(a1 + 32);
  if (v11)
  {
    if (!v12)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100121164();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v22 = sqlite3_errmsg(*(a1 + 32));
      sub_10012112C(v22, v30);
    }

    goto LABEL_61;
  }

  v14 = sqlite3_exec(v12, "\n        DROP TABLE transform_states;\n    ", 0, 0, 0);
  v15 = *(a1 + 32);
  if (v14)
  {
    if (!v15)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_1001211FC();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v25 = sqlite3_errmsg(*(a1 + 32));
      sub_1001211C4(v25, v30);
    }

    goto LABEL_61;
  }

  v17 = sqlite3_exec(v15, "\n      ALTER TABLE transform_states_new\n      RENAME TO transform_states;\n    ", 0, 0, 0);
  v18 = *(a1 + 32);
  if (v17)
  {
    if (!v18)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100121294();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v26 = sqlite3_errmsg(*(a1 + 32));
      sub_10012125C(v26, v30);
    }

    goto LABEL_61;
  }

  v20 = sqlite3_exec(v18, "CREATE INDEX index2 ON transform_states(transform_metadata_id);", 0, 0, 0);
  v21 = *(a1 + 32);
  if (v20)
  {
    if (!v21)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10012132C();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v27 = sqlite3_errmsg(*(a1 + 32));
      sub_1001212F4(v27, v30);
    }

    goto LABEL_61;
  }

  v23 = sqlite3_exec(v21, "CREATE INDEX index3 ON transform_states(transform_key);", 0, 0, 0);
  v24 = *(a1 + 32);
  if (v23)
  {
    if (v24)
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v28 = sqlite3_errmsg(*(a1 + 32));
        sub_10012138C(v28, v30);
      }

LABEL_61:

      return 0;
    }

    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1001213C4();
      return 0;
    }
  }

  else
  {
    if (!sqlite3_exec(v24, "\n         CREATE VIEW transform_metadata_and_states AS\n           SELECT tm.transform_uuid, tm.transform_type, tm.transform_budget_used, tm.transform_other_metadata, tm.transform_metadata_created_at, ts.transform_key, ts.transform_value, ts.transform_state_id, tm.transform_metadata_id\n           FROM transform_states AS ts\n           INNER JOIN transform_metadata AS tm\n           ON ts.transform_metadata_id=tm.transform_metadata_id\n    ", 0, 0, 0))
    {
      return sub_10007F970(a1, 3);
    }

    if (*(a1 + 32))
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v29 = sqlite3_errmsg(*(a1 + 32));
        sub_100121424(v29, v30);
      }

      goto LABEL_61;
    }

    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10012145C();
      return 0;
    }
  }

  return result;
}

void sub_1000A6078(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A6084(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[State Store] DATABASE INITIALIZATION: modifying for V4 schema", v15, 2u);
  }

  v3 = sqlite3_exec(*(a1 + 32), "\n      CREATE TABLE agg_session\n      (\n        agg_session_id INTEGER PRIMARY KEY ASC,\n        agg_session_start_timestamp TEXT DEFAULT (strftime('%Y-%m-%dT%H:%M:%S', 'now')),\n        agg_session_end_boundary TEXT,\n        agg_session_period INTEGER\n     )\n    ", 0, 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    if (!v4)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_1001214F4();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = sqlite3_errmsg(*(a1 + 32));
      sub_1001214BC(v11, v15);
    }

    goto LABEL_26;
  }

  v6 = sqlite3_exec(v4, "\n      ALTER TABLE transform_metadata\n      ADD COLUMN agg_session_id INTEGER REFERENCES agg_session(agg_session_id)\n    ", 0, 0, 0);
  v7 = *(a1 + 32);
  if (v6)
  {
    if (!v7)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10012158C();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = sqlite3_errmsg(*(a1 + 32));
      sub_100121554(v12, v15);
    }

    goto LABEL_26;
  }

  v9 = sqlite3_exec(v7, "CREATE INDEX IX_agg_session_agg_session_end_boundary ON agg_session(agg_session_end_boundary);", 0, 0, 0);
  v10 = *(a1 + 32);
  if (v9)
  {
    if (v10)
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v13 = sqlite3_errmsg(*(a1 + 32));
        sub_1001215EC(v13, v15);
      }

LABEL_26:

      return 0;
    }

    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100121624();
      return 0;
    }
  }

  else
  {
    if (!sqlite3_exec(v10, "CREATE INDEX IX_agg_session_agg_session_period_agg_session_start_timestamp ON agg_session(agg_session_period, agg_session_start_timestamp);", 0, 0, 0))
    {
      return sub_10007F970(a1, 4);
    }

    if (*(a1 + 32))
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg(*(a1 + 32));
        sub_100121684(v14, v15);
      }

      goto LABEL_26;
    }

    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1001216BC();
      return 0;
    }
  }

  return result;
}

void sub_1000A632C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A6338(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[State Store] DATABASE INITIALIZATION: modifying for V5 schema", v18, 2u);
  }

  v3 = sqlite3_exec(*(a1 + 32), "\n      ALTER TABLE transform_metadata\n      ADD COLUMN transform_event_count INTEGER DEFAULT 0\n    ", 0, 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    if (!v4)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100121754();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errmsg(*(a1 + 32));
      sub_10012171C(v13, v18);
    }

    goto LABEL_33;
  }

  v6 = sqlite3_exec(v4, "\n     UPDATE transform_metadata SET transform_event_count=CAST(REPLACE(REPLACE(transform_other_metadata,'{eventsSeen_:',''), '}', '') AS INTEGER) WHERE transform_other_metadata!=null;\n    ", 0, 0, 0);
  v7 = *(a1 + 32);
  if (v6)
  {
    if (!v7)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_1001217EC();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = sqlite3_errmsg(*(a1 + 32));
      sub_1001217B4(v14, v18);
    }

    goto LABEL_33;
  }

  v9 = sqlite3_exec(v7, "\n      ALTER TABLE transform_metadata\n      DROP COLUMN transform_other_metadata;\n    ", 0, 0, 0);
  v10 = *(a1 + 32);
  if (v9)
  {
    if (!v10)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100121884();
      return 0;
    }

    v5 = qword_100192D80;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = sqlite3_errmsg(*(a1 + 32));
      sub_10012184C(v15, v18);
    }

    goto LABEL_33;
  }

  v11 = sqlite3_exec(v10, "CREATE INDEX IX_transform_metadata_transform_event_count ON transform_metadata(transform_event_count);", 0, 0, 0);
  v12 = *(a1 + 32);
  if (v11)
  {
    if (v12)
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v16 = sqlite3_errmsg(*(a1 + 32));
        sub_1001218E4(v16, v18);
      }

LABEL_33:

      return 0;
    }

    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10012191C();
      return 0;
    }
  }

  else
  {
    if (!sqlite3_exec(v12, "\n        DROP VIEW transform_metadata_and_states; CREATE VIEW transform_metadata_and_states AS\n           SELECT transform_metadata.*, transform_states.*\n           FROM transform_metadata\n           LEFT JOIN transform_states\n           ON transform_metadata.transform_metadata_id=transform_states.transform_metadata_id\n    ", 0, 0, 0))
    {
      return sub_10007F970(a1, 5);
    }

    if (*(a1 + 32))
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v17 = sqlite3_errmsg(*(a1 + 32));
        sub_100121424(v17, v18);
      }

      goto LABEL_33;
    }

    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10012145C();
      return 0;
    }
  }

  return result;
}

void sub_1000A665C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000A6668(uint64_t a1)
{
  v2 = sqlite3_exec(*(a1 + 32), "\n      CREATE TABLE queried_states_new\n      (\n       queried_state_id INTEGER PRIMARY KEY ASC,\n       queried_state_name STRING,\n       queried_state_params STRING,\n       queried_state_value STRING,\n       queried_state_error STRING,\n       queried_state_last_modified TEXT DEFAULT (strftime('%s', 'now')),\n       queried_state_ttl INTEGER\n     )\n    ", 0, 0, 0);
  v3 = *(a1 + 32);
  if (v2)
  {
    if (!v3)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001219B4();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = sqlite3_errmsg(*(a1 + 32));
      sub_10012197C(v11, v17);
    }

LABEL_31:

    return 0;
  }

  v5 = sqlite3_exec(v3, "\n         INSERT INTO queried_states_new (queried_state_id, queried_state_name, queried_state_params, queried_state_value, queried_state_error, queried_state_last_modified, queried_state_ttl) SELECT qs.queried_state_id, qs.queried_state_name, qs.queried_state_params, qs.queried_state_value, qs.queried_state_error, qs.queried_state_last_modified, qs.queried_state_ttl\n           FROM queried_states AS qs;\n    ", 0, 0, 0);
  v6 = *(a1 + 32);
  if (v5)
  {
    if (!v6)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100121A4C();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = sqlite3_errmsg(*(a1 + 32));
      sub_100121A14(v12, v17);
    }

    goto LABEL_31;
  }

  v7 = sqlite3_exec(v6, "\n        DROP TABLE queried_states; ALTER TABLE queried_states_new RENAME TO queried_states;\n    ", 0, 0, 0);
  v8 = *(a1 + 32);
  if (v7)
  {
    if (!v8)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100121AE4();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v14 = sqlite3_errmsg(*(a1 + 32));
      sub_100121AAC(v14, v17);
    }

    goto LABEL_31;
  }

  v9 = sqlite3_exec(v8, "\n         CREATE TRIGGER update_queried_state_last_modified_time AFTER UPDATE ON queried_states\n         BEGIN\n                 UPDATE queried_states SET queried_state_last_modified = strftime('%s', 'now') WHERE  queried_state_id = new.queried_state_id;\n         END\n    ", 0, 0, 0);
  v10 = *(a1 + 32);
  if (v9)
  {
    if (!v10)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100121B7C();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v15 = sqlite3_errmsg(*(a1 + 32));
      sub_100121B44(v15, v17);
    }

    goto LABEL_31;
  }

  if (sqlite3_exec(v10, "CREATE UNIQUE INDEX UIX_queried_states_queried_state_name_queried_state_params ON queried_states(queried_state_name, queried_state_params);", 0, 0, 0))
  {
    if (!*(a1 + 32))
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100121C14();
      }

      return 0;
    }

    v4 = qword_100192D80;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v16 = sqlite3_errmsg(*(a1 + 32));
      sub_100121BDC(v16, v17);
    }

    goto LABEL_31;
  }

  return sub_10007F970(a1, 6);
}