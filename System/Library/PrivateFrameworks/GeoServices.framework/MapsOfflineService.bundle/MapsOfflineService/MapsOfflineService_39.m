double sub_2D430C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x7FFFFFFF;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x7FFFFFFF;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFF;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_2D435C(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 360) == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 364) == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 368) == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(v3 + 372))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v3 + 376);
  v5 = *(v3 + 384);
  if (v4 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 408) - *(v3 + 400) < ((v5 - v4) >> 3) || a3 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = (a1 + 3);
  a1[4] = a1[3];
  sub_2B8044(a1[2], a2, a1 + 3);
  v12 = *v10;
  v78 = v10[1];
  if (*v10 == v78)
  {
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&v81);
      v16 = sub_4A5C(&v81, "Segment ", 8);
      v17 = sub_30E900(v16, a2);
      sub_4A5C(v17, " does not have any quad nodes covering it.", 42);
      if ((v91 & 0x10) != 0)
      {
        v73 = v90;
        if (v90 < v87)
        {
          v90 = v87;
          v73 = v87;
        }

        v74 = &v86;
      }

      else
      {
        if ((v91 & 8) == 0)
        {
          v18 = 0;
          v80 = 0;
LABEL_112:
          *(&__dst + v18) = 0;
          sub_7E854(&__dst, 3u);
          if (v80 < 0)
          {
            operator delete(__dst);
          }

          if (v89 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v83);
          std::ostream::~ostream();
          std::ios::~ios();
          return 0xFFFFFFFFLL;
        }

        v74 = v84;
        v73 = v85;
      }

      v75 = *v74;
      v18 = v73 - *v74;
      if (v18 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v18 >= 0x17)
      {
        operator new();
      }

      v80 = v73 - *v74;
      if (v18)
      {
        memmove(&__dst, v75, v18);
      }

      goto LABEL_112;
    }

    return 0xFFFFFFFFLL;
  }

  v13 = *a1;
  v14 = *(*a1 + 360);
  v15 = 0.0;
  if (a3 > v14)
  {
    if (*(v13 + 364) <= a3)
    {
      v15 = (*(v13 + 372) - 1);
    }

    else
    {
      v15 = (10 * (a3 - v14)) / *(v13 + 368);
    }
  }

  v19 = v15 * *(v13 + 368);
  if (v19 >= 0.0)
  {
    if (v19 < 4.50359963e15)
    {
      v20 = (v19 + v19) + 1;
      goto LABEL_27;
    }
  }

  else if (v19 > -4.50359963e15)
  {
    v20 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
LABEL_27:
    v19 = (v20 >> 1);
  }

  v21 = 0;
  if (v19 < 0)
  {
    v22 = -5;
  }

  else
  {
    v22 = 5;
  }

  v23 = v19 / 10 + v14 + (((103 * (v22 + v19 % 10)) >> 15) & 1) + ((103 * (v22 + v19 % 10)) >> 10);
  v24 = a1 + 6;
  do
  {
    v25 = *v12;
    v26 = sub_57A90(**(v13 + 376)) & 0xFE;
    v27 = v25 >> ((sub_57A90(v25) - v26) & 0xFE);
    v28 = a1[18] + 1;
    a1[18] = v28;
    if (*(a1 + 12) == v27 && (v29 = v24, *(a1 + 13) == v23) || (a1[8] >= v28 ? (v30 = v28) : (v30 = a1[8]), *(a1 + 18) == v27 && (v29 = a1 + 9, *(a1 + 19) == v23) || ((v31 = a1[11], v31 >= v30) ? (v32 = v30) : (v32 = a1[11]), *(a1 + 24) == v27 && (v29 = a1 + 12, *(a1 + 25) == v23) || ((v33 = v31 < v30, v34 = a1[14], v34 >= v32) ? (v35 = v32) : (v35 = a1[14]), *(a1 + 30) == v27 && (v29 = a1 + 15, *(a1 + 31) == v23)))))
    {
      v38 = *(v29 + 2);
      v37 = (v29 + 1);
      v36 = v38;
      *(v37 + 1) = v28;
      if (v38 != 0x7FFFFFFF)
      {
        v21 += v36;
        goto LABEL_33;
      }

      v39 = *(v13 + 376);
      v40 = *(v13 + 384);
      v41 = v40 - v39;
      v42 = (v40 - v39) >> 3;
      if (v42 < 1)
      {
LABEL_66:
        if (v40 == v39)
        {
          goto LABEL_70;
        }

        goto LABEL_67;
      }
    }

    else
    {
      _CF = v34 >= v32;
      v53 = 2;
      if (_CF)
      {
        v53 = v33;
      }

      if (a1[17] < v35)
      {
        v53 = 3;
      }

      v54 = &v24[3 * v53];
      *v54 = v27;
      *(v54 + 1) = v23;
      v54[2] = v28;
      *(v54 + 2) = 0x7FFFFFFF;
      v37 = (v54 + 1);
      v39 = *(v13 + 376);
      v40 = *(v13 + 384);
      v41 = v40 - v39;
      v42 = (v40 - v39) >> 3;
      if (v42 < 1)
      {
        goto LABEL_66;
      }
    }

    if (v41 != 8)
    {
      do
      {
        v43 = (2 * v42) & 0xFFFFFFFFFFFFFFF8;
        _X13 = v39 + v43;
        __asm { PRFM            #0, [X13] }

        v49 = &v39[2 * (v42 >> 1)];
        _X12 = v49 + v43;
        __asm { PRFM            #0, [X12] }

        if (*v49 >= v27)
        {
          v52 = 0;
        }

        else
        {
          v52 = v42 >> 1;
        }

        v39 += 2 * v52;
        v42 -= v42 >> 1;
      }

      while (v42 > 1);
    }

    v39 += 2 * (*v39 < v27);
    if (v40 == v39)
    {
LABEL_70:
      if (!sub_7E7E4(3u))
      {
        goto LABEL_33;
      }

      sub_19594F8(&v81);
      v57 = sub_4A5C(&v81, "Quad node ", 10);
      v58 = sub_58200(v57, v25);
      v59 = sub_4A5C(v58, " (query node ", 13);
      v60 = sub_58200(v59, v27);
      sub_4A5C(v60, ") not present in WeatherForecast.", 33);
      if ((v91 & 0x10) != 0)
      {
        v62 = v90;
        v63 = &v86;
        if (v90 < v87)
        {
          v90 = v87;
          v62 = v87;
          v63 = &v86;
        }
      }

      else
      {
        if ((v91 & 8) == 0)
        {
          v61 = 0;
          v80 = 0;
LABEL_90:
          *(&__dst + v61) = 0;
          sub_7E854(&__dst, 3u);
          if (v80 < 0)
          {
            operator delete(__dst);
          }

          v81 = v77;
          *(&v81 + *(v77 - 3)) = v76;
          if (v89 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v83);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_33;
        }

        v62 = v85;
        v63 = v84;
      }

      v70 = *v63;
      v61 = v62 - *v63;
      if (v61 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v61 >= 0x17)
      {
        operator new();
      }

      v80 = v62 - *v63;
      if (v61)
      {
        memmove(&__dst, v70, v61);
      }

      v24 = a1 + 6;
      goto LABEL_90;
    }

LABEL_67:
    if (*v39 != v27)
    {
      goto LABEL_70;
    }

    v55 = *(v13 + 400);
    if (v40 == v39 + 2)
    {
      v56 = *(v13 + 408);
    }

    else
    {
      v56 = (v39[3] + v55);
    }

    v64 = (v39[1] + v55);
    v66 = *v64;
    v65 = v64 + 1;
    v67 = v66 - 128;
    *v37 = v66 - 128;
    if (v56 != v65)
    {
      v68 = 0;
      do
      {
        v69 = sub_394BD8(*v65);
        v68 += (v69 + 1);
        v67 = *v37;
        if (v15 < v68)
        {
          break;
        }

        v67 += SHIBYTE(v69);
        *v37 = v67;
        ++v65;
      }

      while (v65 != v56);
    }

    v21 += v67;
    v24 = a1 + 6;
LABEL_33:
    ++v12;
  }

  while (v12 != v78);
  v71 = ((v21 / ((a1[4] - a1[3]) >> 2)) + 273.15) * 1000.0;
  if (v71 >= 0.0)
  {
    if (v71 < 4.50359963e15)
    {
      v72 = (v71 + v71) + 1;
      return (v72 >> 1);
    }
  }

  else if (v71 > -4.50359963e15)
  {
    v72 = (v71 + v71) - 1 + (((v71 + v71) - 1) >> 63);
    return (v72 >> 1);
  }

  return v71;
}

void sub_2D4CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    sub_1959728(&a24);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_2D4D58@<X0>(char *__s@<X1>, const void **a2@<X0>, void *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = strlen(__s);
  v8 = v6 + result;
  if (v6 + result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = result;
  if (v8 > 0x16)
  {
    operator new();
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *(a3 + 23) = v8;
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    result = memmove(a3, v10, v6);
  }

  v11 = a3 + v6;
  if (v9)
  {
    result = memmove(v11, __s, v9);
  }

  v11[v9] = 0;
  return result;
}

uint64_t sub_2D4E5C(uint64_t a1, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v6 = a3[1] - *a3;
    if (!v6)
    {
      return a1;
    }

LABEL_5:
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_2D4F38(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_21E1144(v1);
  _Unwind_Resume(a1);
}

void sub_2D4F5C(_OWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  operator new();
}

void sub_2D5170(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  sub_2B1394((v1 + 32));
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_2D51AC(_Unwind_Exception *a1)
{
  v3 = v2;
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v5);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_2D51E4(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2D5204(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 96))(*(a1 + 16));
  v3 = 16;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *(**(a1 + v3) + 104);

  return v4();
}

uint64_t sub_2D52A4(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = (*(**(a1 + 16) + 96))(*(a1 + 16));
  v9 = 16;
  if (!v8)
  {
    v9 = 0;
  }

  result = (*(**(a1 + v9) + 64))(*(a1 + v9), a2, a3);
  if (!a4 && !v11)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = a3;
    v14 = exception;
    v20 = v13;
    v19[0] = sub_7FCF0(a2);
    v19[1] = v15;
    sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v19, v21);
    if ((v22 & 0x80u) == 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = v21[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v17 = v22;
    }

    else
    {
      v17 = v21[1];
    }

    v18 = sub_2D390(v14, v16, v17);
  }

  return result;
}

void sub_2D53D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2D5400(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 96))(*(a1 + 16));
  v3 = 16;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *(**(a1 + v3) + 72);

  return v4();
}

uint64_t sub_2D54A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 96))(*(a1 + 16));
  v7 = 16;
  if (!v6)
  {
    v7 = 0;
  }

  return (*(**(a1 + v7) + 24))(*(a1 + v7), a2, a3);
}

uint64_t sub_2D5538(void *a1, uint64_t a2, int a3)
{
  result = (*(**a1 + 96))(*a1);
  if ((result & 1) == 0 && a3)
  {
    v6 = *(*a1[2] + 96);

    return v6();
  }

  return result;
}

char *sub_2D55E0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[79] < 0)
  {
    return sub_325C(a2, *(result + 7), *(result + 8));
  }

  *a2 = *(result + 56);
  *(a2 + 16) = *(result + 9);
  return result;
}

char *sub_2D5608@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[103] < 0)
  {
    return sub_325C(a2, *(result + 10), *(result + 11));
  }

  *a2 = *(result + 5);
  *(a2 + 16) = *(result + 12);
  return result;
}

uint64_t sub_2D5658(void **a1)
{
  if ((*(*a1[2] + 120))(a1[2]))
  {
    return 1;
  }

  v3 = *(**a1 + 120);

  return v3();
}

void *sub_2D56E8(void **a1)
{
  result = (*(*a1[2] + 16))(a1[2]);
  if (*result == result[1])
  {
    v3 = *(**a1 + 16);

    return v3();
  }

  return result;
}

uint64_t **sub_2D57A4(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(v24, a2, v5);
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
    sub_2D5B70();
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

void sub_2D5B58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2D5CBC(va);
  _Unwind_Resume(a1);
}

void sub_2D5C70(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_2D5CBC(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  sub_2D5CBC(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2D5CBC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        *(v2 + 48) = v3;
        operator delete(v3);
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

uint64_t sub_2D5D20(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 5);
      if (v6)
      {
        *(v2 + 6) = v6;
        operator delete(v6);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
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

void sub_2D5DBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2668B38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2D5EC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl4data26FlatBufferResourceProvider3$_1E")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl4data26FlatBufferResourceProvider3$_1E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl4data26FlatBufferResourceProvider3$_1E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl4data26FlatBufferResourceProvider3$_1E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2D5F40()
{
  v0[23] = 12;
  strcpy(v0, "ROAD_NETWORK");
  operator new();
}

void sub_2D7248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _Unwind_Exception *exception_objecta, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a35)
  {
    operator delete(a35);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a53)
  {
    operator delete(a53);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a62)
  {
    operator delete(a62);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  if (a71)
  {
    operator delete(a71);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a74)
  {
    operator delete(a74);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a77)
  {
    operator delete(a77);
    if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
    {
LABEL_31:
      v79 = STACK[0x208];
      if (!STACK[0x208])
      {
        goto LABEL_32;
      }

      goto LABEL_100;
    }
  }

  else if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(a78);
  v79 = STACK[0x208];
  if (!STACK[0x208])
  {
LABEL_32:
    if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_100:
  STACK[0x210] = v79;
  operator delete(v79);
  if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
  {
LABEL_34:
    v80 = STACK[0x238];
    if (STACK[0x238])
    {
      STACK[0x240] = v80;
      operator delete(v80);
    }

    if (SLOBYTE(STACK[0x267]) < 0)
    {
      operator delete(STACK[0x250]);
    }

    v81 = STACK[0x268];
    if (STACK[0x268])
    {
      STACK[0x270] = v81;
      operator delete(v81);
    }

    if (SLOBYTE(STACK[0x297]) < 0)
    {
      operator delete(STACK[0x280]);
    }

    v82 = STACK[0x298];
    if (STACK[0x298])
    {
      STACK[0x2A0] = v82;
      operator delete(v82);
    }

    if (SLOBYTE(STACK[0x2C7]) < 0)
    {
      operator delete(STACK[0x2B0]);
    }

    v83 = STACK[0x2C8];
    if (STACK[0x2C8])
    {
      STACK[0x2D0] = v83;
      operator delete(v83);
    }

    if (SLOBYTE(STACK[0x2F7]) < 0)
    {
      operator delete(STACK[0x2E0]);
    }

    v84 = STACK[0x2F8];
    if (STACK[0x2F8])
    {
      STACK[0x300] = v84;
      operator delete(v84);
    }

    if (SLOBYTE(STACK[0x327]) < 0)
    {
      operator delete(STACK[0x310]);
    }

    v85 = v78;
    v86 = STACK[0x328];
    if (STACK[0x328])
    {
      STACK[0x330] = v86;
      operator delete(v86);
      if ((SLOBYTE(STACK[0x357]) & 0x80000000) == 0)
      {
LABEL_56:
        v87 = STACK[0x358];
        if (!STACK[0x358])
        {
          goto LABEL_57;
        }

        goto LABEL_79;
      }
    }

    else if ((SLOBYTE(STACK[0x357]) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    operator delete(STACK[0x340]);
    v87 = STACK[0x358];
    if (!STACK[0x358])
    {
LABEL_57:
      if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_80;
    }

LABEL_79:
    STACK[0x360] = v87;
    operator delete(v87);
    if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
    {
LABEL_58:
      v88 = STACK[0x388];
      if (!STACK[0x388])
      {
        goto LABEL_59;
      }

      goto LABEL_81;
    }

LABEL_80:
    operator delete(STACK[0x370]);
    v88 = STACK[0x388];
    if (!STACK[0x388])
    {
LABEL_59:
      if ((SLOBYTE(STACK[0x3B7]) & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_82;
    }

LABEL_81:
    STACK[0x390] = v88;
    operator delete(v88);
    if ((SLOBYTE(STACK[0x3B7]) & 0x80000000) == 0)
    {
LABEL_60:
      v89 = STACK[0x3B8];
      if (!STACK[0x3B8])
      {
        goto LABEL_61;
      }

      goto LABEL_83;
    }

LABEL_82:
    operator delete(STACK[0x3A0]);
    v89 = STACK[0x3B8];
    if (!STACK[0x3B8])
    {
LABEL_61:
      if ((SLOBYTE(STACK[0x3E7]) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_84;
    }

LABEL_83:
    STACK[0x3C0] = v89;
    operator delete(v89);
    if ((SLOBYTE(STACK[0x3E7]) & 0x80000000) == 0)
    {
LABEL_62:
      v90 = STACK[0x3E8];
      if (!STACK[0x3E8])
      {
        goto LABEL_63;
      }

      goto LABEL_85;
    }

LABEL_84:
    operator delete(STACK[0x3D0]);
    v90 = STACK[0x3E8];
    if (!STACK[0x3E8])
    {
LABEL_63:
      if ((SLOBYTE(STACK[0x417]) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_86;
    }

LABEL_85:
    STACK[0x3F0] = v90;
    operator delete(v90);
    if ((SLOBYTE(STACK[0x417]) & 0x80000000) == 0)
    {
LABEL_64:
      v91 = STACK[0x418];
      if (!STACK[0x418])
      {
        goto LABEL_65;
      }

      goto LABEL_87;
    }

LABEL_86:
    operator delete(STACK[0x400]);
    v91 = STACK[0x418];
    if (!STACK[0x418])
    {
LABEL_65:
      if ((SLOBYTE(STACK[0x447]) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_88;
    }

LABEL_87:
    STACK[0x420] = v91;
    operator delete(v91);
    if ((SLOBYTE(STACK[0x447]) & 0x80000000) == 0)
    {
LABEL_66:
      v92 = STACK[0x448];
      if (!STACK[0x448])
      {
        goto LABEL_67;
      }

      goto LABEL_89;
    }

LABEL_88:
    operator delete(STACK[0x430]);
    v92 = STACK[0x448];
    if (!STACK[0x448])
    {
LABEL_67:
      if ((SLOBYTE(STACK[0x477]) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_90;
    }

LABEL_89:
    STACK[0x450] = v92;
    operator delete(v92);
    if ((SLOBYTE(STACK[0x477]) & 0x80000000) == 0)
    {
LABEL_68:
      v93 = STACK[0x478];
      if (!STACK[0x478])
      {
        goto LABEL_69;
      }

      goto LABEL_91;
    }

LABEL_90:
    operator delete(STACK[0x460]);
    v93 = STACK[0x478];
    if (!STACK[0x478])
    {
LABEL_69:
      if ((SLOBYTE(STACK[0x4A7]) & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_92;
    }

LABEL_91:
    STACK[0x480] = v93;
    operator delete(v93);
    if ((SLOBYTE(STACK[0x4A7]) & 0x80000000) == 0)
    {
LABEL_70:
      v94 = STACK[0x4A8];
      if (!STACK[0x4A8])
      {
        goto LABEL_71;
      }

      goto LABEL_93;
    }

LABEL_92:
    operator delete(STACK[0x490]);
    v94 = STACK[0x4A8];
    if (!STACK[0x4A8])
    {
LABEL_71:
      if ((SLOBYTE(STACK[0x4D7]) & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_94;
    }

LABEL_93:
    STACK[0x4B0] = v94;
    operator delete(v94);
    if ((SLOBYTE(STACK[0x4D7]) & 0x80000000) == 0)
    {
LABEL_72:
      v95 = STACK[0x4D8];
      if (!STACK[0x4D8])
      {
        goto LABEL_73;
      }

      goto LABEL_95;
    }

LABEL_94:
    operator delete(STACK[0x4C0]);
    v95 = STACK[0x4D8];
    if (!STACK[0x4D8])
    {
LABEL_73:
      if ((SLOBYTE(STACK[0x507]) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_96;
    }

LABEL_95:
    STACK[0x4E0] = v95;
    operator delete(v95);
    if ((SLOBYTE(STACK[0x507]) & 0x80000000) == 0)
    {
LABEL_74:
      if (&STACK[0x508] == v78)
      {
        goto LABEL_76;
      }

      do
      {
LABEL_75:
        v85 -= 6;
        sub_B8580(v85);
      }

      while (v85 != &STACK[0x508]);
LABEL_76:
      _Unwind_Resume(a1);
    }

LABEL_96:
    operator delete(STACK[0x4F0]);
    if (&STACK[0x508] == v78)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_33:
  operator delete(STACK[0x220]);
  goto LABEL_34;
}

void sub_2D7A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_2D7AD0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2668C18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2D7B30(uint64_t a1)
{
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(*(a1 + 56));
    v2 = *(a1 + 32);
    if (!v2)
    {
LABEL_4:
      v3 = *(a1 + 24);
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    goto LABEL_8;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_4;
  }

LABEL_8:
  v4 = *(a1 + 40);
  v5 = v2;
  if (v4 == v2)
  {
    goto LABEL_17;
  }

  v6 = v4 - 68;
  do
  {
    sub_2B0F18((v6 + 6));
    if (*(v6 + 47) < 0)
    {
      operator delete(v6[3]);
      if ((*(v6 + 23) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((*(v6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(*v6);
LABEL_10:
    v7 = v6 == v2;
    v6 -= 68;
  }

  while (!v7);
  v5 = *(a1 + 32);
LABEL_17:
  *(a1 + 40) = v2;
  operator delete(v5);
  v3 = *(a1 + 24);
  if (v3)
  {
LABEL_18:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

LABEL_20:
  v8 = *(a1 + 8);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_2D7E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_2D7E90(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2668C68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2D7FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_2D801C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 0x27)
  {
    return 0;
  }

  if (((0xFFFFE7FFFBuLL >> a1) & 1) == 0)
  {
    return 0;
  }

  v3 = off_2668D58[a1];
  v11[0] = off_2668CB8;
  v11[1] = v3;
  v12 = v11;
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = -1;
  v7 = 257;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  result = (v3)(v6);
  if (v12 == v11)
  {
    v5 = result;
    (*(*v12 + 32))(v12);
    return v5;
  }

  if (v12)
  {
    v5 = result;
    (*(*v12 + 40))(v12);
    return v5;
  }

  return result;
}

void sub_2D818C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2FE9CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2D81AC(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2D8F60((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D81E8(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DA9BC((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8224(uint32x2_t *a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DB134((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8260(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DB658((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

BOOL sub_2D829C(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DC3B8((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D82D8(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DC510((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8314(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DD718((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8350(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DE4F8((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D838C(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DF4C4((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D83C8(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DF7F0((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8404(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DFE70((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8440(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2E2F10((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D847C(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2E3F00((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D84B8(uint32x2_t *a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2E44D0((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D84F4(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2E4968((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8530(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2E921C((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D856C(uint32x2_t *a1)
{
  v1 = a1[1];
  if (v1 < 0xC)
  {
    return 0;
  }

  v2 = *a1;
  v3 = **a1;
  if (v3 < 1)
  {
    return 0;
  }

  if (v1 - 1 < v3)
  {
    return 0;
  }

  if ((v3 & 3) != 0)
  {
    if (v1 - 4 < v3 || (a1[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v1 - 4 < v3)
  {
    return 0;
  }

  v5 = (*&v2 + v3);
  v6 = *(*&v2 + v3);
  v7 = a1[5];
  v8 = vadd_s32(v7, 0x100000001);
  a1[5] = v8;
  v9 = vcgt_u32(v8, a1[2]);
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v10 = v3 - v6;
  if ((v3 - v6))
  {
    if ((a1[3].i8[0] & 1) != 0 || v1 - 2 < v10)
    {
      return 0;
    }
  }

  else if (v1 - 2 < v10)
  {
    return 0;
  }

  v11 = *(*&v2 + v10);
  if (v11)
  {
    return 0;
  }

  if (v1 <= v11 || v1 - v11 < v10)
  {
    return 0;
  }

  v13 = (v5 - *v5);
  v14 = v7.i32[0];
  if (*v13 >= 5u)
  {
    v15 = v13[2];
    if (v15)
    {
      v16 = v15 + v3;
      if ((v16 & 3) != 0)
      {
        if (v1 - 4 < v16 || (a1[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v1 - 4 < v16)
      {
        return 0;
      }

      v17 = *(*&v2 + v16);
      if (v17 < 1 || v1 - 1 < v16 + v17)
      {
        return 0;
      }

      v19 = a1;
      if (!sub_2DA2D4((v5 + v15 + *(v5 + v15)), a1))
      {
        return 0;
      }

      a1 = v19;
      v14 = v19[5].i32[0] - 1;
    }
  }

  a1[5].i32[0] = v14;
  return 1;
}

uint64_t sub_2D8744(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2E9EE8((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8780(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2EA3F4((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D87BC(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2F7840((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D87F8(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2F7B18((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8834(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2FA3D4((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8870(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2FB4A0((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D88AC(uint32x2_t *a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2FB7B8((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D88E8(uint32x2_t *a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2FCF30((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8924(uint32x2_t *a1)
{
  v1 = a1[1];
  if (v1 < 0xC)
  {
    return 0;
  }

  v2 = *a1;
  v3 = **a1;
  if (v3 < 1)
  {
    return 0;
  }

  if (v1 - 1 < v3)
  {
    return 0;
  }

  if ((v3 & 3) != 0)
  {
    if (v1 - 4 < v3 || (a1[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v1 - 4 < v3)
  {
    return 0;
  }

  v5 = (*&v2 + v3);
  v6 = *(*&v2 + v3);
  v7 = a1[5];
  v8 = vadd_s32(v7, 0x100000001);
  a1[5] = v8;
  v9 = vcgt_u32(v8, a1[2]);
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v10 = v3 - v6;
  if ((v3 - v6))
  {
    if ((a1[3].i8[0] & 1) != 0 || v1 - 2 < v10)
    {
      return 0;
    }
  }

  else if (v1 - 2 < v10)
  {
    return 0;
  }

  v11 = *(*&v2 + v10);
  if (v11)
  {
    return 0;
  }

  if (v1 <= v11 || v1 - v11 < v10)
  {
    return 0;
  }

  v13 = (v5 - *v5);
  v14 = v7.i32[0];
  if (*v13 >= 5u)
  {
    v15 = v13[2];
    if (v15)
    {
      v16 = v15 + v3;
      if ((v16 & 3) != 0)
      {
        if (v1 - 4 < v16 || (a1[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v1 - 4 < v16)
      {
        return 0;
      }

      v17 = *(*&v2 + v16);
      if (v17 < 1 || v1 - 1 < v16 + v17)
      {
        return 0;
      }

      v19 = a1;
      if (!sub_2DA2D4((v5 + v15 + *(v5 + v15)), a1))
      {
        return 0;
      }

      a1 = v19;
      v14 = v19[5].i32[0] - 1;
    }
  }

  a1[5].i32[0] = v14;
  return 1;
}

uint64_t sub_2D8AFC(uint32x2_t *a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2FDD0C((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8B38(uint32x2_t *a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2CE560((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8B74(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2FE198((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

BOOL sub_2D8BB0(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 >= 0xC && (v2 = **a1, v2 >= 1) && v1 - 1 >= v2)
  {
    return sub_2DC3B8((*a1 + v2), a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D8BEC(uint32x2_t *a1, const char *a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < 0xC)
  {
    return 0;
  }

  if (a2)
  {
    v4 = a1;
    v5 = a3;
    v6 = strncmp((*a1 + a3 + 4), a2, 4uLL);
    a3 = v5;
    v7 = v6;
    a1 = v4;
    if (v7)
    {
      return 0;
    }
  }

  if ((a3 & 3) != 0)
  {
    if (v3 - 4 < a3 || (a1[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v3 - 4 < a3)
  {
    return 0;
  }

  v9 = *a1;
  v10 = (*a1 + a3);
  v11 = *v10;
  if (v11 < 1 || v3 - 1 < v11 + a3)
  {
    return 0;
  }

  v12 = (v10 + v11);
  v13 = v10 + v11 - *&v9;
  if ((v13 & 3) != 0)
  {
    if (v3 - 4 < v13 || (a1[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v3 - 4 < v13)
  {
    return 0;
  }

  v14 = *v12;
  v15 = a1[5];
  v16 = vadd_s32(v15, 0x100000001);
  a1[5] = v16;
  v17 = vcgt_u32(v16, a1[2]);
  if ((v17.i32[0] | v17.i32[1]))
  {
    return 0;
  }

  v18 = v13 - v14;
  if ((v13 - v14))
  {
    if ((a1[3].i8[0] & 1) != 0 || v3 - 2 < v18)
    {
      return 0;
    }
  }

  else if (v3 - 2 < v18)
  {
    return 0;
  }

  v19 = *(*&v9 + v18);
  if (v19)
  {
    return 0;
  }

  if (v3 <= v19 || v3 - v19 < v18)
  {
    return 0;
  }

  v21 = (v12 - *v12);
  if (*v21 >= 5u)
  {
    v22 = v21[2];
    if (v22)
    {
      v23 = v13 + v22;
      if ((v23 & 1) == 0)
      {
        if (v3 - 2 >= v23)
        {
          goto LABEL_36;
        }

        return 0;
      }

      if (v3 - 2 >= v23 && (a1[3].i8[0] & 1) == 0)
      {
        goto LABEL_36;
      }

      return 0;
    }
  }

LABEL_36:
  a1[5].i32[0] = v15.i32[0];
  return 1;
}

BOOL sub_2D8DE0(int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = (a1 - *a1);
  if (*v4 <= a3)
  {
    return 1;
  }

  v5 = *(v4 + a3);
  if (!v5)
  {
    return 1;
  }

  v6 = a1 + v5 - *a2;
  if (v6 & (a4 - 1)) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v9 = v8 > 2;
  v10 = v8 - 2;
  return v9 && v10 >= v6;
}

uint64_t sub_2D8EB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2668CB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2D8EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "PFbRN11flatbuffers8VerifierEE")
  {
    return a1 + 8;
  }

  if (((v2 & "PFbRN11flatbuffers8VerifierEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "PFbRN11flatbuffers8VerifierEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("PFbRN11flatbuffers8VerifierEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_2D8F60(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 < 5u)
    {
      goto LABEL_48;
    }

    v18 = v17[2];
    if (!v17[2])
    {
      goto LABEL_48;
    }

    v19 = &v3[v18];
    if ((v19 & 3) != 0)
    {
      v13 = 0;
      if (v5 < v19 || (*(a2 + 24) & 1) != 0)
      {
        return v13;
      }
    }

    else if (v5 < v19)
    {
      return 0;
    }

    v20 = *(v2 + v19);
    if (v20 >= 1 && v4 - 1 >= v19 + v20)
    {
      v21 = (a1 + v18);
      v22 = (a1 + v18 + *(a1 + v18));
      v23 = v22 - v2;
      if ((v23 & 3) != 0)
      {
        v13 = 0;
        if (v5 < v23 || (*(a2 + 24) & 1) != 0)
        {
          return v13;
        }

        goto LABEL_37;
      }

      if (v5 >= v23)
      {
LABEL_37:
        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v39 = a1;
          v29 = 0;
          v30 = v28 + 1;
          while (1)
          {
            v31 = a2;
            if ((sub_2D920C((v30 + *v30), a2) & 1) == 0)
            {
              return 0;
            }

            ++v29;
            ++v30;
            a2 = v31;
            if (v29 >= *v28)
            {
              a1 = v39;
              v16 = -*v39;
              break;
            }
          }
        }

LABEL_48:
        v32 = a1 + v16;
        if (*(a1 + v16) < 7u)
        {
          goto LABEL_57;
        }

        v33 = *(v32 + 3);
        if (!*(v32 + 3))
        {
          goto LABEL_57;
        }

        v34 = a1 + v33 - *a2;
        if ((v34 & 3) == 0 || (*(a2 + 24) & 1) == 0)
        {
          v13 = 0;
          v35 = *(a2 + 8);
          if (v35 < 5 || v35 - 4 < v34)
          {
            return v13;
          }

          v36 = *(*a2 + v34);
          if (v36 >= 1 && v35 - 1 >= v34 + v36)
          {
            v37 = a2;
            v38 = sub_2DA2D4((a1 + v33 + *(a1 + v33)), a2);
            a2 = v37;
            if (v38)
            {
LABEL_57:
              --*(a2 + 40);
              return 1;
            }
          }
        }
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2D920C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (v12)
  {
    result = 0;
    if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v12)
    {
      return result;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13)
  {
    return 0;
  }

  v6 = v4 >= v13;
  v14 = v4 - v13;
  if (v14 == 0 || !v6 || v14 < v12)
  {
    return 0;
  }

  v16 = a1;
  v17 = (a1 - *a1);
  v18 = *v17;
  if (v18 >= 5)
  {
    if (v17[2])
    {
      v19 = &v3[v17[2]];
      if (v19 & 7) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      if (v4 < 9 || v4 - 8 < v19)
      {
        return result;
      }
    }

    if (v18 >= 7)
    {
      if (v17[3] && v4 - 1 < &v3[v17[3]])
      {
        return 0;
      }

      if (v18 >= 9)
      {
        v20 = v17[4];
        if (v17[4])
        {
          v21 = &v3[v20];
          if ((&v3[v20] & 3) != 0)
          {
            result = 0;
            if (v5 < v21 || (*(a2 + 24) & 1) != 0)
            {
              return result;
            }
          }

          else if (v5 < v21)
          {
            return 0;
          }

          v22 = *&v21[v2];
          if (v22 < 1 || v4 - 1 < &v21[v22])
          {
            return 0;
          }

          v23 = (a1 + v20 + *(a1 + v20));
          v24 = v23 - v2;
          if (((v23 - v2) & 3) != 0)
          {
            result = 0;
            if (v5 < v24 || (*(a2 + 24) & 1) != 0)
            {
              return result;
            }
          }

          else if (v5 < v24)
          {
            return 0;
          }

          v25 = *v23;
          if (v25 > 0x7FFFFFFE)
          {
            return 0;
          }

          result = 0;
          v26 = v25 + 4;
          v27 = &v24[v25 + 4];
          if (v4 - 1 < v27 || v4 <= v26 || v4 - v26 < v24)
          {
            return result;
          }

          if (*(v2 + v27))
          {
            return 0;
          }
        }

        if (v18 >= 0xF)
        {
          v28 = v17[7];
          if (v28)
          {
            v29 = &v3[v28];
            if ((v29 & 3) != 0)
            {
              result = 0;
              if (v5 < v29 || (*(a2 + 24) & 1) != 0)
              {
                return result;
              }
            }

            else if (v5 < v29)
            {
              return 0;
            }

            v52 = *(v2 + v29);
            if (v52 >= 1 && v4 - 1 >= v29 + v52)
            {
              v30 = a2;
              result = sub_2D986C(a2, (v16 + v28 + *(v16 + v28)));
              if (!result)
              {
                return result;
              }

              goto LABEL_58;
            }

            return 0;
          }
        }
      }
    }
  }

  v30 = a2;
  result = sub_2D986C(a2, 0);
  if (!result)
  {
    return result;
  }

LABEL_58:
  v31 = (v16 - *v16);
  if (*v31 < 0xFu)
  {
    v34 = 0;
    v33 = v30;
  }

  else
  {
    v32 = v31[7];
    v33 = v30;
    if (v32)
    {
      v34 = (v16 + v32 + *(v16 + v32));
    }

    else
    {
      v34 = 0;
    }
  }

  result = sub_2D98D4(v33, v34);
  if (result)
  {
    result = sub_2CDF90(v16, v30, 0x10u);
    if (result)
    {
      v35 = (v16 - *v16);
      if (*v35 < 0x11u)
      {
        v38 = 0;
        v37 = v30;
      }

      else
      {
        v36 = v35[8];
        v37 = v30;
        v38 = v36 ? (v16 + v36 + *(v16 + v36)) : 0;
      }

      result = sub_2D986C(v37, v38);
      if (result)
      {
        v39 = (v16 - *v16);
        if (*v39 < 0x11u)
        {
          v42 = 0;
          v41 = v30;
        }

        else
        {
          v40 = v39[8];
          v41 = v30;
          v42 = v40 ? (v16 + v40 + *(v16 + v40)) : 0;
        }

        result = sub_2D9988(v41, v42);
        if (result)
        {
          result = sub_2CDF90(v16, v30, 0x12u);
          if (result)
          {
            v43 = (v16 - *v16);
            if (*v43 >= 0x13u && (v44 = v43[9]) != 0)
            {
              v45 = (v16 + v44 + *(v16 + v44));
            }

            else
            {
              v45 = 0;
            }

            result = sub_2D986C(v30, v45);
            if (result)
            {
              v46 = (v16 - *v16);
              if (*v46 >= 0x13u && (v47 = v46[9]) != 0)
              {
                v48 = (v16 + v47 + *(v16 + v47));
              }

              else
              {
                v48 = 0;
              }

              result = sub_2D9988(v30, v48);
              if (result)
              {
                result = sub_2CDF90(v16, v30, 0x14u);
                if (result)
                {
                  v49 = (v16 - *v16);
                  if (*v49 >= 0x15u && (v50 = v49[10]) != 0)
                  {
                    v51 = (v16 + v50 + *(v16 + v50));
                  }

                  else
                  {
                    v51 = 0;
                  }

                  result = sub_2D986C(v30, v51);
                  if (result)
                  {
                    v53 = (v16 - *v16);
                    if (*v53 >= 0x15u && (v54 = v53[10]) != 0)
                    {
                      v55 = (v16 + v54 + *(v16 + v54));
                    }

                    else
                    {
                      v55 = 0;
                    }

                    result = sub_2D9988(v30, v55);
                    if (result)
                    {
                      result = sub_2CDF90(v16, v30, 0x16u);
                      if (result)
                      {
                        v56 = (v16 - *v16);
                        if (*v56 < 0x17u || (v57 = v56[11]) == 0 || (result = sub_2D9A14((v16 + v57 + *(v16 + v57)), v30), result))
                        {
                          result = sub_2D9788(v16, v30, 0x18u, 8);
                          if (result)
                          {
                            result = sub_2CE0A0(v16, v30, 0x1Au, 4);
                            if (result)
                            {
                              result = sub_2D9788(v16, v30, 0x1Cu, 4);
                              if (result)
                              {
                                --*(v30 + 40);
                                return 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_2D9788(int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = (a1 - *a1);
  if (*v4 <= a3)
  {
    return 1;
  }

  v5 = *(v4 + a3);
  if (!v5)
  {
    return 1;
  }

  v6 = a1 + v5 - *a2;
  if (v6 & (a4 - 1)) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v9 = v8 > 8;
  v10 = v8 - 8;
  return v9 && v10 >= v6;
}

BOOL sub_2D97E8(uint64_t *a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a2 - *a1;
  if (v3 & 3) != 0 && (a1[3])
  {
    return 0;
  }

  v4 = a1[1];
  if (v4 < 5 || v4 - 4 < v3)
  {
    return 0;
  }

  v6 = *a2;
  if (v6 > 0x7FFFFFFE)
  {
    return 0;
  }

  result = 0;
  v8 = v6 + 4;
  v9 = v4 - v8;
  if (v4 > v8)
  {
    v10 = v3 + v8;
    v11 = v4 - 1;
    if (v9 >= v3 && v11 >= v10)
    {
      return *(v2 + v10) == 0;
    }
  }

  return result;
}

BOOL sub_2D986C(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (v2 & 3) != 0 && (*(a1 + 24))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 < 5 || v3 - 4 < v2)
  {
    return 0;
  }

  v5 = *a2;
  if (v5 > 0x1FFFFFFE)
  {
    return 0;
  }

  v6 = 4 * v5 + 4;
  v7 = v3 > v6;
  v8 = v3 - v6;
  return v7 && v8 >= v2;
}

uint64_t sub_2D98D4(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *a2;
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a2 + 1;
  v5 = a2 - *a1 + 4;
  v6 = 4 * v2;
  while (1)
  {
    v7 = v4[v3 / 4];
    v8 = v5 + v3 + v7;
    if (v8 & 3) != 0 && (*(a1 + 24))
    {
      break;
    }

    v9 = *(a1 + 8);
    if (v9 < 5 || v9 - 4 < v8)
    {
      break;
    }

    v11 = *(v4 + v7 + v3);
    if (v11 > 0x7FFFFFFE)
    {
      break;
    }

    v12 = v11 + 4;
    v13 = v7 + v12;
    v14 = v9 - 1 >= v5 + v3 + v13 && v9 > v12;
    v15 = v14 && v9 - v12 >= v8;
    if (!v15 || *(v4 + v13 + v3))
    {
      break;
    }

    v3 += 4;
    if (v6 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2D9988(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2D9A14((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2D9A14(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_75;
  }

  v16 = v14[2];
  if (v14[2])
  {
    v17 = &v3[v16];
    if ((&v3[v16] & 3) != 0)
    {
      if (v5 < v17 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v17)
    {
      return 0;
    }

    v18 = *&v17[v2];
    if (v18 < 1 || v4 - 1 < &v17[v18])
    {
      return 0;
    }

    v19 = (a1 + v16 + *(a1 + v16));
    v20 = v19 - v2;
    if (((v19 - v2) & 3) != 0)
    {
      if (v5 < v20 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v20)
    {
      return 0;
    }

    v21 = *v19;
    if (v21 > 0x7FFFFFFE)
    {
      return 0;
    }

    v22 = v21 + 4;
    v23 = &v20[v21 + 4];
    v24 = v4 - 1 >= v23 && v4 > v22;
    v25 = v24 && v4 - v22 >= v20;
    if (!v25 || *(v2 + v23))
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_75;
  }

  v26 = v14[3];
  if (v14[3])
  {
    v27 = &v3[v26];
    if ((&v3[v26] & 3) != 0)
    {
      if (v5 < v27 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v27)
    {
      return 0;
    }

    v28 = *&v27[v2];
    if (v28 < 1 || v4 - 1 < &v27[v28])
    {
      return 0;
    }

    v29 = (a1 + v26 + *(a1 + v26));
    v30 = v29 - v2;
    if (((v29 - v2) & 3) != 0)
    {
      if (v5 < v30 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v30)
    {
      return 0;
    }

    v31 = *v29;
    if (v31 > 0x7FFFFFFE)
    {
      return 0;
    }

    v32 = v31 + 4;
    v33 = &v30[v31 + 4];
    v34 = v4 - 1 >= v33 && v4 > v32;
    v35 = v34 && v4 - v32 >= v30;
    if (!v35 || *(v2 + v33))
    {
      return 0;
    }
  }

  if (v15 >= 9 && (v36 = v14[4]) != 0)
  {
    v37 = &v3[v36];
    if ((v37 & 3) != 0)
    {
      if (v5 < v37 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v37)
    {
      return 0;
    }

    v62 = *(v2 + v37);
    if (v62 < 1)
    {
      return 0;
    }

    if (v4 - 1 < v37 + v62)
    {
      return 0;
    }

    v38 = a1;
    v39 = a2;
    if (!sub_2D97E8(a2, (a1 + v36 + *(a1 + v36))))
    {
      return 0;
    }
  }

  else
  {
LABEL_75:
    v38 = a1;
    v39 = a2;
    if (!sub_2D97E8(a2, 0))
    {
      return 0;
    }
  }

  v40 = (v38 - *v38);
  if (*v40 >= 0xBu)
  {
    if (v40[5])
    {
      v41 = *(v39 + 8);
      if (v41 < 2 || v41 - 1 < v38 + v40[5] - *v39)
      {
        return 0;
      }
    }
  }

  if (sub_2CDF90(v38, v39, 0xCu))
  {
    v42 = (v38 - *v38);
    if (*v42 < 0xDu)
    {
      v45 = 0;
      v44 = v39;
    }

    else
    {
      v43 = v42[6];
      v44 = v39;
      v45 = v43 ? (v38 + v43 + *(v38 + v43)) : 0;
    }

    if (sub_2D986C(v44, v45))
    {
      v46 = (v38 - *v38);
      if (*v46 < 0xDu)
      {
        v49 = 0;
        v48 = v39;
      }

      else
      {
        v47 = v46[6];
        v48 = v39;
        v49 = v47 ? (v38 + v47 + *(v38 + v47)) : 0;
      }

      if (sub_2D9F6C(v48, v49))
      {
        v50 = v38;
        v51 = (v38 - *v38);
        v52 = *v51;
        v53 = v39;
        if (v52 >= 0xF)
        {
          if (v51[7])
          {
            v54 = *(v39 + 8);
            if (v54 < 2 || v54 - 1 < v38 + v51[7] - *v39)
            {
              return 0;
            }
          }

          if (v52 >= 0x11)
          {
            if (v51[8])
            {
              v55 = *(v39 + 8);
              if (v55 < 2 || v55 - 1 < v38 + v51[8] - *v39)
              {
                return 0;
              }
            }

            if (v52 >= 0x13)
            {
              v56 = v51[9];
              if (v56)
              {
                v57 = *(v39 + 8);
                if (v57 < 2)
                {
                  return 0;
                }

                v53 = v39;
                v50 = v38;
                if (v57 - 1 < v38 + v56 - *v39)
                {
                  return 0;
                }
              }
            }
          }
        }

        if (sub_2CDF90(v50, v53, 0x14u))
        {
          v58 = (v38 - *v38);
          if (*v58 < 0x15u)
          {
            v61 = 0;
            v60 = v39;
          }

          else
          {
            v59 = v58[10];
            v60 = v39;
            v61 = v59 ? (v38 + v59 + *(v38 + v59)) : 0;
          }

          if (sub_2D97E8(v60, v61))
          {
            --*(v39 + 40);
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2D9F6C(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2D9FF8((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2D9FF8(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_52;
  }

  if (v14[2] && v4 - 1 < &v3[v14[2]])
  {
    return 0;
  }

  if (v15 < 7)
  {
    goto LABEL_52;
  }

  if (v14[3] && v4 - 1 < &v3[v14[3]])
  {
    return 0;
  }

  if (v15 < 9)
  {
    goto LABEL_52;
  }

  v16 = v14[4];
  if (!v14[4])
  {
    goto LABEL_61;
  }

  v17 = &v3[v16];
  if ((&v3[v16] & 3) != 0)
  {
    if (v5 < v17 || (*(a2 + 24) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v17)
  {
    return 0;
  }

  v18 = *&v17[v2];
  if (v18 < 1 || v4 - 1 < &v17[v18])
  {
    return 0;
  }

  v19 = (a1 + v16 + *(a1 + v16));
  v20 = v19 - v2;
  if (((v19 - v2) & 3) != 0)
  {
    if (v5 < v20 || (*(a2 + 24) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v20)
  {
    return 0;
  }

  v21 = *v19;
  if (v21 <= 0x7FFFFFFE)
  {
    v22 = v21 + 4;
    v23 = &v20[v21 + 4];
    if (v4 - 1 < v23 || v4 <= v22 || v4 - v22 < v20)
    {
      return 0;
    }

    if (!*(v2 + v23))
    {
LABEL_61:
      if (v15 >= 0xD)
      {
        v24 = v14[6];
        if (v24)
        {
          v25 = &v3[v24];
          if ((v25 & 3) != 0)
          {
            if (v5 < v25 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }

LABEL_55:
            v27 = *(v2 + v25);
            if (v27 < 1)
            {
              return 0;
            }

            if (v4 - 1 < v25 + v27)
            {
              return 0;
            }

            v26 = a2;
            if (!sub_2D97E8(a2, (a1 + v24 + *(a1 + v24))))
            {
              return 0;
            }

LABEL_53:
            --*(v26 + 40);
            return 1;
          }

          if (v5 >= v25)
          {
            goto LABEL_55;
          }

          return 0;
        }
      }

LABEL_52:
      v26 = a2;
      if (sub_2D97E8(a2, 0))
      {
        goto LABEL_53;
      }
    }
  }

  return 0;
}

uint64_t sub_2DA2D4(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 < 5u)
    {
      goto LABEL_48;
    }

    v18 = v17[2];
    if (!v17[2])
    {
      goto LABEL_48;
    }

    v19 = &v3[v18];
    if ((v19 & 3) != 0)
    {
      v13 = 0;
      if (v5 < v19 || (*(a2 + 24) & 1) != 0)
      {
        return v13;
      }
    }

    else if (v5 < v19)
    {
      return 0;
    }

    v20 = *(v2 + v19);
    if (v20 >= 1 && v4 - 1 >= v19 + v20)
    {
      v21 = (a1 + v18);
      v22 = (a1 + v18 + *(a1 + v18));
      v23 = v22 - v2;
      if ((v23 & 3) != 0)
      {
        v13 = 0;
        if (v5 < v23 || (*(a2 + 24) & 1) != 0)
        {
          return v13;
        }

        goto LABEL_37;
      }

      if (v5 >= v23)
      {
LABEL_37:
        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v50 = a1;
          v29 = 0;
          v30 = v28 + 1;
          while (1)
          {
            v31 = a2;
            if ((sub_2DA68C((v30 + *v30), a2) & 1) == 0)
            {
              return 0;
            }

            ++v29;
            ++v30;
            a2 = v31;
            if (v29 >= *v28)
            {
              a1 = v50;
              v16 = -*v50;
              break;
            }
          }
        }

LABEL_48:
        v32 = a1 + v16;
        if (*(a1 + v16) < 7u)
        {
          goto LABEL_76;
        }

        v33 = *(v32 + 3);
        if (!*(v32 + 3))
        {
          goto LABEL_76;
        }

        v34 = a1 + v33 - *a2;
        if ((v34 & 3) == 0 || (*(a2 + 24) & 1) == 0)
        {
          v13 = 0;
          v35 = *(a2 + 8);
          if (v35 < 5 || v35 - 4 < v34)
          {
            return v13;
          }

          v36 = *(*a2 + v34);
          if (v36 >= 1 && v35 - 1 >= v34 + v36)
          {
            v37 = (a1 + v33 + *(a1 + v33));
            v38 = v37 - *a2;
            if ((v38 & 3) == 0 || (*(a2 + 24) & 1) == 0)
            {
              v13 = 0;
              v39 = *(a2 + 8);
              if (v39 < 5 || v39 - 4 < v38)
              {
                return v13;
              }

              v40 = *v37;
              if (v40 <= 0xFFFFFFE)
              {
                v41 = (8 * v40) | 4;
                v6 = v39 >= v41;
                v42 = v39 - v41;
                if (v42 != 0 && v6 && v42 >= v38)
                {
LABEL_76:
                  v44 = a1;
                  v45 = a2;
                  if (sub_2CDF90(a1, a2, 8u))
                  {
                    v46 = (v44 - *v44);
                    if (*v46 < 9u)
                    {
                      v49 = 0;
                      v48 = v45;
                    }

                    else
                    {
                      v47 = v46[4];
                      v48 = v45;
                      v49 = v47 ? (v44 + v47 + *(v44 + v47)) : 0;
                    }

                    if (sub_2DA624(v48, v49))
                    {
                      --*(v45 + 40);
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return 0;
}

BOOL sub_2DA624(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (v2 & 3) != 0 && (*(a1 + 24))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 < 5 || v3 - 4 < v2)
  {
    return 0;
  }

  v5 = *a2;
  if (v5 > 0xFFFFFFE)
  {
    return 0;
  }

  v6 = (8 * v5) | 4;
  v7 = v3 > v6;
  v8 = v3 - v6;
  return v7 && v8 >= v2;
}

uint64_t sub_2DA68C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v14 = *a1;
    v15 = -v14;
    v16 = (a1 - v14);
    if (*v16 >= 5u)
    {
      v17 = v16[2];
      if (v17)
      {
        v18 = &v3[v17];
        if ((v18 & 3) != 0)
        {
          if (v5 < v18 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v18)
        {
          return 0;
        }

        v19 = *(*&v2 + v18);
        if (v19 < 1)
        {
          return 0;
        }

        if (v4 - 1 < v18 + v19)
        {
          return 0;
        }

        v20 = a1;
        v21 = a2;
        if (!sub_2CE314((a1 + v17 + *(a1 + v17)), a2))
        {
          return 0;
        }

        a1 = v20;
        v15 = -*v20;
        a2 = v21;
      }
    }

    v22 = a1 + v15;
    v23 = *(a1 + v15);
    if (v23 < 7)
    {
LABEL_47:
      --*(a2 + 40);
      return 1;
    }

    if (!*(v22 + 3))
    {
      goto LABEL_51;
    }

    v24 = a1 + *(v22 + 3) - *a2;
    if (v24 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    v25 = *(a2 + 8);
    if (v25 >= 0x11 && v25 - 16 >= v24)
    {
LABEL_51:
      if (v23 < 9)
      {
        goto LABEL_47;
      }

      v26 = *(v22 + 4);
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = a1 + v26 - *a2;
      if (v27 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      v28 = *(a2 + 8);
      if (v28 >= 5 && v28 - 4 >= v27)
      {
        v29 = *(*a2 + v27);
        if (v29 >= 1 && v28 - 1 >= v27 + v29)
        {
          v31 = a2;
          v30 = sub_2CE100(a2, (a1 + v26 + *(a1 + v26)), 1uLL, 0);
          a2 = v31;
          if (v30)
          {
            goto LABEL_47;
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_2DA930(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2CE560((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2DA9BC(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = *a1;
  v15 = -v14;
  v16 = (a1 - v14);
  v17 = *(a1 - v14);
  if (v17 >= 9)
  {
    v18 = v16[4];
    if (v16[4])
    {
      v19 = &v3[v18];
      if ((&v3[v18] & 3) != 0)
      {
        if (v5 < v19 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v19)
      {
        return 0;
      }

      v20 = *&v19[v2];
      if (v20 < 1 || v4 - 1 < &v19[v20])
      {
        return 0;
      }

      v21 = (a1 + v18 + *(a1 + v18));
      v22 = v21 - v2;
      if (((v21 - v2) & 3) != 0)
      {
        if (v5 < v22 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v22)
      {
        return 0;
      }

      v23 = *v21;
      if (v23 > 0x7FFFFFFE)
      {
        return 0;
      }

      v24 = v23 + 4;
      v25 = &v22[v23 + 4];
      v26 = v4 - 1 >= v25 && v4 > v24;
      v27 = v26 && v4 - v24 >= v22;
      if (!v27 || *(v2 + v25))
      {
        return 0;
      }
    }

    if (v17 >= 0xB)
    {
      v28 = v16[5];
      if (v16[5])
      {
        v29 = &v3[v28];
        if ((&v3[v28] & 3) != 0)
        {
          if (v5 < v29 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v29)
        {
          return 0;
        }
      }

      if (v17 >= 0xD)
      {
        v30 = v16[6];
        if (v16[6])
        {
          v31 = &v3[v30];
          if ((&v3[v30] & 3) != 0)
          {
            if (v5 < v31 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v31)
          {
            return 0;
          }
        }

        if (v17 >= 0xF)
        {
          v32 = v16[7];
          if (v32)
          {
            v33 = &v3[v32];
            if ((v33 & 3) != 0)
            {
              if (v5 < v33 || (*(a2 + 24) & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v33)
            {
              return 0;
            }

            v37 = a1;
            v38 = a2;
            v34 = *(v2 + v33);
            if (v34 < 1 || v4 - 1 < v33 + v34 || !sub_2CE100(a2, (a1 + v32 + *(a1 + v32)), 4uLL, 0))
            {
              return 0;
            }

            a1 = v37;
            a2 = v38;
            v15 = -*v37;
          }
        }
      }
    }
  }

  if (*(a1 + v15) < 0xFu)
  {
    v35 = 0;
  }

  else
  {
    v35 = *(a1 + v15 + 14);
    if (*(a1 + v15 + 14))
    {
      v35 = (v35 + a1 + *(v35 + a1));
    }
  }

  v36 = a2;
  if (sub_2DAD74(a2, v35))
  {
    --*(v36 + 40);
    return 1;
  }

  return 0;
}

BOOL sub_2DAD14(int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = (a1 - *a1);
  if (*v4 <= a3)
  {
    return 1;
  }

  v5 = *(v4 + a3);
  if (!v5)
  {
    return 1;
  }

  v6 = a1 + v5 - *a2;
  if (v6 & (a4 - 1)) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v9 = v8 > 4;
  v10 = v8 - 4;
  return v9 && v10 >= v6;
}

uint64_t sub_2DAD74(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2DAE00((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2DAE00(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_67;
  }

  v16 = v14[2];
  if (v14[2])
  {
    v17 = &v3[v16];
    if ((&v3[v16] & 3) != 0)
    {
      if (v5 < v17 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v17)
    {
      return 0;
    }

    v18 = *&v17[v2];
    if (v18 < 1 || v4 - 1 < &v17[v18])
    {
      return 0;
    }

    v19 = (a1 + v16 + *(a1 + v16));
    v20 = v19 - v2;
    if (((v19 - v2) & 3) != 0)
    {
      if (v5 < v20 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v20)
    {
      return 0;
    }

    v21 = *v19;
    if (v21 > 0x1FFFFFFE)
    {
      return 0;
    }

    v22 = 4 * v21 + 4;
    v6 = v4 >= v22;
    v23 = v4 - v22;
    if (v23 == 0 || !v6 || v23 < v20)
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_67;
  }

  v25 = v14[3];
  if (v14[3])
  {
    v26 = &v3[v25];
    if ((&v3[v25] & 3) != 0)
    {
      if (v5 < v26 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v26)
    {
      return 0;
    }

    v27 = *&v26[v2];
    if (v27 < 1 || v4 - 1 < &v26[v27])
    {
      return 0;
    }

    v28 = (a1 + v25 + *(a1 + v25));
    v29 = v28 - v2;
    if (((v28 - v2) & 3) != 0)
    {
      if (v5 < v29 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v29)
    {
      return 0;
    }

    v30 = *v28;
    if (v30 > 0xFFFFFFE)
    {
      return 0;
    }

    v31 = (8 * v30) | 4;
    v6 = v4 >= v31;
    v32 = v4 - v31;
    if (v32 == 0 || !v6 || v32 < v29)
    {
      return 0;
    }
  }

  if (v15 >= 9 && (v34 = v14[4]) != 0)
  {
    v35 = &v3[v34];
    if ((v35 & 3) != 0)
    {
      if (v5 < v35 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }

LABEL_70:
      v37 = *(v2 + v35);
      if (v37 < 1)
      {
        return 0;
      }

      if (v4 - 1 < v35 + v37)
      {
        return 0;
      }

      v36 = a2;
      if (!sub_2D986C(a2, (a1 + v34 + *(a1 + v34))))
      {
        return 0;
      }

LABEL_68:
      --*(v36 + 40);
      return 1;
    }

    if (v5 >= v35)
    {
      goto LABEL_70;
    }
  }

  else
  {
LABEL_67:
    v36 = a2;
    if (sub_2D986C(a2, 0))
    {
      goto LABEL_68;
    }
  }

  return 0;
}

uint64_t sub_2DB134(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(*&v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - *&v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if ((sub_2DB380((v29 + *v29), a2) & 1) == 0)
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = v30[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v16;
  return 1;
}

uint64_t sub_2DB380(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  v17 = v8.i32[0];
  if (v16 >= 5)
  {
    v18 = v15[2];
    if (v15[2])
    {
      v19 = &v3[v18];
      if ((&v3[v18] & 3) != 0)
      {
        if (v5 < v19 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v19)
      {
        return 0;
      }
    }

    if (v16 >= 7)
    {
      if (v15[3] && v4 - 1 < &v3[v15[3]])
      {
        return 0;
      }

      if (v16 >= 9)
      {
        v20 = v15[4];
        if (v15[4])
        {
          v21 = &v3[v20];
          if ((&v3[v20] & 3) != 0)
          {
            if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v21)
          {
            return 0;
          }

          v22 = *&v21[*&v2];
          if (v22 < 1 || v4 - 1 < &v21[v22])
          {
            return 0;
          }

          v23 = (a1 + v20 + *(a1 + v20));
          v24 = v23 - *&v2;
          if (((v23 - *&v2) & 3) != 0)
          {
            if (v5 < v24 || (a2[3].i8[0] & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v24)
          {
            return 0;
          }

          v25 = *v23;
          if (v25 > 0xFFFFFFE)
          {
            return 0;
          }

          v26 = (8 * v25) | 4;
          v6 = v4 >= v26;
          v27 = v4 - v26;
          if (v27 == 0 || !v6 || v27 < v24)
          {
            return 0;
          }
        }

        if (v16 < 0xB)
        {
          goto LABEL_60;
        }

        v28 = v15[5];
        if (!v28)
        {
          goto LABEL_60;
        }

        v29 = &v3[v28];
        if ((v29 & 3) != 0)
        {
          if (v5 < v29 || (a2[3].i8[0] & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v29)
        {
          return 0;
        }

        v31 = a2;
        v30 = *(*&v2 + v29);
        if (v30 >= 1 && v4 - 1 >= v29 + v30 && sub_2CE100(a2, (a1 + v28 + *(a1 + v28)), 8uLL, 0))
        {
          a2 = v31;
          v17 = v31[5].i32[0] - 1;
          goto LABEL_60;
        }

        return 0;
      }
    }
  }

LABEL_60:
  a2[5].i32[0] = v17;
  return 1;
}

uint64_t sub_2DB658(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v18)
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(*&v2 + v19);
        if (v20 < 1)
        {
          return 0;
        }

        if (v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = a1;
        v22 = a2;
        if (!sub_2DBA3C((a1 + v18 + *(a1 + v18)), a2))
        {
          return 0;
        }

        a1 = v21;
        v16 = -*v21;
        a2 = v22;
      }
    }

    v23 = (a1 + v16);
    if (*v23 >= 7u)
    {
      v24 = v23[3];
      if (v23[3])
      {
        v25 = a1 + v24 - *a2;
        if (v25 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v26 = *(a2 + 8);
        if (v26 < 5 || v26 - 4 < v25)
        {
          return v13;
        }

        v27 = *(*a2 + v25);
        if (v27 < 1)
        {
          return 0;
        }

        if (v26 - 1 < v25 + v27)
        {
          return 0;
        }

        v28 = (a1 + v24);
        v29 = (v28 + *v28);
        v30 = v29 - *a2;
        if (v30 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v31 = *(a2 + 8);
        if (v31 < 5 || v31 - 4 < v30)
        {
          return v13;
        }

        v32 = *v29;
        if (v32 > 0x1FFFFFFE)
        {
          return 0;
        }

        v33 = 4 * v32 + 4;
        v6 = v31 >= v33;
        v34 = v31 - v33;
        if (v34 == 0 || !v6 || v34 < v30)
        {
          return 0;
        }

        v36 = (v28 + *v28);
        if (*v36)
        {
          v37 = 0;
          v38 = v36 + 1;
          do
          {
            v39 = a1;
            v40 = a2;
            if (!sub_2DBED8((v38 + *v38), a2))
            {
              return 0;
            }

            ++v37;
            ++v38;
            a2 = v40;
            a1 = v39;
          }

          while (v37 < *v36);
        }
      }
    }

    v41 = a1;
    v42 = a2;
    if (sub_2CDF90(a1, a2, 8u))
    {
      v43 = v41;
      v44 = *v41;
      v45 = -v44;
      v46 = (v41 - v44);
      if (*v46 < 9u)
      {
LABEL_61:
        v48 = v42;
        goto LABEL_62;
      }

      v47 = v46[4];
      v48 = v42;
      if (!v47)
      {
LABEL_62:
        v49 = (v43 + v45);
        if (*v49 >= 9u && (v50 = v49[4]) != 0)
        {
          v51 = (v43 + v50 + *(v43 + v50));
        }

        else
        {
          v51 = 0;
        }

        if (sub_2DB9B0(v48, v51))
        {
          --*(v42 + 40);
          return 1;
        }

        return 0;
      }

      if (sub_2CE100(v42, (v41 + v47 + *(v41 + v47)), 4uLL, 0))
      {
        v43 = v41;
        v45 = -*v41;
        goto LABEL_61;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2DB9B0(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2DC054((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2DBA3C(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(*&v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - *&v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if ((sub_2DBC88((v29 + *v29), a2) & 1) == 0)
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = v30[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v16;
  return 1;
}

uint64_t sub_2DBC88(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 < 5)
  {
    goto LABEL_65;
  }

  v17 = v15[2];
  if (v15[2])
  {
    v18 = &v3[v17];
    if ((&v3[v17] & 3) != 0)
    {
      if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v18)
    {
      return 0;
    }

    v19 = *&v18[*&v2];
    if (v19 < 1 || v4 - 1 < &v18[v19])
    {
      return 0;
    }

    v20 = (a1 + v17 + *(a1 + v17));
    v21 = v20 - *&v2;
    if (((v20 - *&v2) & 3) != 0)
    {
      if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v21)
    {
      return 0;
    }

    v22 = *v20;
    if (v22 > 0x7FFFFFFE)
    {
      return 0;
    }

    v23 = v22 + 4;
    v24 = &v21[v22 + 4];
    v25 = v4 - 1 >= v24 && v4 > v23;
    v26 = v25 && v4 - v23 >= v21;
    if (!v26 || *(*&v2 + v24))
    {
      return 0;
    }
  }

  if (v16 < 7)
  {
    goto LABEL_65;
  }

  v27 = v15[3];
  if (!v27)
  {
    goto LABEL_65;
  }

  v28 = &v3[v27];
  if ((v28 & 3) != 0)
  {
    if (v5 < v28 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v28)
  {
    return 0;
  }

  v29 = *(*&v2 + v28);
  if (v29 < 1 || v4 - 1 < v28 + v29)
  {
    return 0;
  }

  v30 = (a1 + v27 + *(a1 + v27));
  v31 = v30 - *&v2;
  if ((v31 & 3) != 0)
  {
    if (v5 < v31 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_59;
  }

  if (v5 < v31)
  {
    return 0;
  }

LABEL_59:
  v32 = *v30;
  if (v32 > 0x7FFFFFE)
  {
    return 0;
  }

  v33 = (16 * v32) | 4;
  v6 = v4 >= v33;
  v34 = v4 - v33;
  if (v34 == 0 || !v6 || v34 < v31)
  {
    return 0;
  }

LABEL_65:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

BOOL sub_2DBED8(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  v6 = *v5;
  if (v6 < 5)
  {
    goto LABEL_28;
  }

  if (v5[2])
  {
    v7 = a1 + v5[2] - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 < 5 || v8 - 4 < v7)
    {
      return result;
    }
  }

  if (v6 < 7 || (v9 = v5[3]) == 0)
  {
LABEL_28:
    --*(a2 + 40);
    return 1;
  }

  v10 = a1 + v9 - *a2;
  if (v10 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v11 = *(a2 + 8);
  if (v11 < 5 || v11 - 4 < v10)
  {
    return result;
  }

  v12 = *(*a2 + v10);
  if (v12 < 1)
  {
    return 0;
  }

  if (v11 - 1 < v10 + v12)
  {
    return 0;
  }

  v13 = (a1 + v9 + *(a1 + v9));
  v14 = v13 - *a2;
  if (v14 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v15 = *(a2 + 8);
  if (v15 >= 5 && v15 - 4 >= v14)
  {
    v16 = *v13;
    if (v16 > 0xFFFFFFE)
    {
      return 0;
    }

    v17 = (8 * v16) | 4;
    v19 = v15 >= v17;
    v18 = v15 - v17;
    v19 = v18 != 0 && v19 && v18 >= v14;
    if (!v19)
    {
      return 0;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_2DC054(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_57;
  }

  v16 = v14[2];
  if (v14[2])
  {
    v17 = &v3[v16];
    if ((&v3[v16] & 3) != 0)
    {
      if (v5 < v17 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v17)
    {
      return 0;
    }

    v18 = *&v17[v2];
    if (v18 < 1 || v4 - 1 < &v17[v18])
    {
      return 0;
    }

    v19 = (a1 + v16 + *(a1 + v16));
    v20 = v19 - v2;
    if (((v19 - v2) & 3) != 0)
    {
      if (v5 < v20 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v20)
    {
      return 0;
    }

    v21 = *v19;
    if (v21 > 0x7FFFFFFE)
    {
      return 0;
    }

    v22 = v21 + 4;
    v23 = &v20[v21 + 4];
    v24 = v4 - 1 >= v23 && v4 > v22;
    v25 = v24 && v4 - v22 >= v20;
    if (!v25 || *(v2 + v23))
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_57;
  }

  if (v14[3] && v4 - 1 < &v3[v14[3]])
  {
    return 0;
  }

  if (v15 < 9)
  {
    goto LABEL_57;
  }

  if (v14[4] && v4 - 1 < &v3[v14[4]])
  {
    return 0;
  }

  if (v15 >= 0xB && (v26 = v14[5]) != 0)
  {
    v27 = &v3[v26];
    if ((v27 & 3) != 0)
    {
      if (v5 < v27 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v27)
    {
      return 0;
    }

    v34 = *(v2 + v27);
    if (v34 < 1)
    {
      return 0;
    }

    if (v4 - 1 < v27 + v34)
    {
      return 0;
    }

    v28 = a1;
    v29 = a2;
    if (!sub_2DA624(a2, (a1 + v26 + *(a1 + v26))))
    {
      return 0;
    }
  }

  else
  {
LABEL_57:
    v28 = a1;
    v29 = a2;
    if (!sub_2DA624(a2, 0))
    {
      return 0;
    }
  }

  if (sub_2DAD14(v28, v29, 0xCu, 4) && sub_2DAD14(v28, v29, 0xEu, 4) && sub_2CDF90(v28, v29, 0x10u))
  {
    v30 = (v28 - *v28);
    if (*v30 < 0x11u)
    {
      v33 = 0;
      v32 = v29;
    }

    else
    {
      v31 = v30[8];
      v32 = v29;
      v33 = v31 ? (v28 + v31 + *(v28 + v31)) : 0;
    }

    if (sub_2D97E8(v32, v33))
    {
      --*(v29 + 40);
      return 1;
    }
  }

  return 0;
}

BOOL sub_2DC3B8(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_24;
    }

    if (v5[2])
    {
      result = 0;
      v7 = *(a2 + 8);
      if (v7 < 2 || v7 - 1 < a1 + v5[2] - *a2)
      {
        return result;
      }
    }

    if (v6 < 7 || (v8 = v5[3]) == 0)
    {
LABEL_24:
      --*(a2 + 40);
      return 1;
    }

    v9 = a1 + v8 - *a2;
    if (v9 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v10 = *(a2 + 8);
    if (v10 < 5 || v10 - 4 < v9)
    {
      return result;
    }

    v11 = *(*a2 + v9);
    if (v11 < 1)
    {
      return 0;
    }

    if (v10 - 1 < v9 + v11)
    {
      return 0;
    }

    v12 = (a1 + v8 + *(a1 + v8));
    v13 = v12 - *a2;
    if (v13 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v14 = *(a2 + 8);
    if (v14 >= 5 && v14 - 4 >= v13)
    {
      v15 = *v12;
      if (v15 > 0x7FFFFFE)
      {
        return 0;
      }

      v16 = (16 * v15) | 4;
      v18 = v14 >= v16;
      v17 = v14 - v16;
      v18 = v17 != 0 && v18 && v17 >= v13;
      if (!v18)
      {
        return 0;
      }

      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_2DC510(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v17[2])
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(*&v2 + v19);
        if (v20 < 1 || v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = (a1 + v18);
        v22 = (a1 + v18 + *(a1 + v18));
        v23 = v22 - *&v2;
        if ((v23 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v29 = a1;
          v30 = 0;
          v31 = v28 + 1;
          while (1)
          {
            v32 = a2;
            if ((sub_2DC9F8((v31 + *v31), a2) & 1) == 0)
            {
              return 0;
            }

            ++v30;
            ++v31;
            a2 = v32;
            if (v30 >= *v28)
            {
              a1 = v29;
              v16 = -*v29;
              break;
            }
          }
        }
      }
    }

    v33 = a1 + v16;
    if (*(a1 + v16) >= 7u && (v34 = *(v33 + 3), *(v33 + 3)))
    {
      v35 = a1 + v34 - *a2;
      if (v35 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      v13 = 0;
      v36 = *(a2 + 8);
      if (v36 < 5 || v36 - 4 < v35)
      {
        return v13;
      }

      v37 = *(*a2 + v35);
      if (v37 < 1)
      {
        return 0;
      }

      if (v36 - 1 < v35 + v37)
      {
        return 0;
      }

      v38 = (a1 + v34);
      v39 = (v38 + *v38);
      v40 = v39 - *a2;
      if (v40 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      v13 = 0;
      v41 = *(a2 + 8);
      if (v41 < 5 || v41 - 4 < v40)
      {
        return v13;
      }

      v42 = *v39;
      if (v42 > 0x1FFFFFFE)
      {
        return 0;
      }

      v43 = 4 * v42 + 4;
      v6 = v41 >= v43;
      v44 = v41 - v43;
      if (v44 == 0 || !v6 || v44 < v40)
      {
        return 0;
      }

      v46 = a1;
      v47 = a2;
      if (!sub_2DC8E0(a2, (v38 + *v38)))
      {
        return 0;
      }
    }

    else
    {
      v46 = a1;
      v47 = a2;
      if (!sub_2DC8E0(a2, 0))
      {
        return 0;
      }
    }

    if (sub_2CDF90(v46, v47, 8u))
    {
      v48 = *v46;
      v49 = -v48;
      v50 = (v46 - v48);
      if (*v50 < 9u)
      {
LABEL_74:
        v52 = v47;
        goto LABEL_75;
      }

      v51 = v50[4];
      v52 = v47;
      if (!v51)
      {
LABEL_75:
        v53 = (v46 + v49);
        if (*v53 >= 9u && (v54 = v53[4]) != 0)
        {
          v55 = (v46 + v54 + *(v46 + v54));
        }

        else
        {
          v55 = 0;
        }

        if (sub_2DC96C(v52, v55))
        {
          --*(v47 + 40);
          return 1;
        }

        return 0;
      }

      if (sub_2CE100(v47, (v46 + v51 + *(v46 + v51)), 4uLL, 0))
      {
        v49 = -*v46;
        goto LABEL_74;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2DC8E0(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2DCD60((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2DC96C(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2DD3FC((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2DC9F8(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_53;
  }

  v16 = v14[2];
  if (v14[2])
  {
    if (&v3[v16] & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    if (v4 < 9 || v4 - 8 < &v3[v16])
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_53;
  }

  v17 = v14[3];
  if (v14[3])
  {
    v18 = &v3[v17];
    if ((&v3[v17] & 3) != 0)
    {
      if (v5 < v18 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v18)
    {
      return 0;
    }
  }

  if (v15 < 9)
  {
    goto LABEL_53;
  }

  v19 = v14[4];
  if (v14[4])
  {
    if (&v3[v19] & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    if (v4 < 9 || v4 - 8 < &v3[v19])
    {
      return 0;
    }
  }

  if (v15 < 0xB)
  {
    goto LABEL_53;
  }

  v20 = v14[5];
  if (v14[5])
  {
    v21 = &v3[v20];
    if ((&v3[v20] & 3) != 0)
    {
      if (v5 < v21 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v21)
    {
      return 0;
    }
  }

  if (v15 < 0xD)
  {
LABEL_53:
    v22 = a1;
LABEL_54:
    v25 = a2;
    if (!sub_2DA624(a2, 0))
    {
      return 0;
    }

    goto LABEL_55;
  }

  v22 = a1;
  v23 = v14[6];
  if (!v23)
  {
    goto LABEL_54;
  }

  v24 = &v3[v23];
  if ((v24 & 3) != 0)
  {
    if (v5 < v24 || (*(a2 + 24) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v24)
  {
    return 0;
  }

  v32 = *(v2 + v24);
  if (v32 < 1)
  {
    return 0;
  }

  if (v4 - 1 < v24 + v32)
  {
    return 0;
  }

  v25 = a2;
  if (!sub_2DA624(a2, (a1 + v23 + *(a1 + v23))))
  {
    return 0;
  }

LABEL_55:
  if (sub_2CDF90(v22, v25, 0xEu))
  {
    v26 = (v22 - *v22);
    if (*v26 < 0xFu)
    {
      v29 = 0;
      v28 = v25;
    }

    else
    {
      v27 = v26[7];
      v28 = v25;
      v29 = v27 ? (v22 + v27 + *(v22 + v27)) : 0;
    }

    if (sub_2DA624(v28, v29))
    {
      v30 = (v22 - *v22);
      if (*v30 < 0x11u || !v30[8] || (v31 = *(v25 + 8), v31 >= 2) && v31 - 1 >= v22 + v30[8] - *v25)
      {
        --*(v25 + 40);
        return 1;
      }

      return 0;
    }
  }

  return 0;
}

uint64_t sub_2DCD60(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(*&v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - *&v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if ((sub_2DCFAC((v29 + *v29), a2) & 1) == 0)
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = v30[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v16;
  return 1;
}

uint64_t sub_2DCFAC(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 >= 5)
  {
    v17 = v15[2];
    if (v15[2])
    {
      v18 = &v3[v17];
      if (&v3[v17] & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      v13 = 0;
      if (v4 < 9 || v4 - 8 < v18)
      {
        return v13;
      }
    }

    if (v16 >= 7)
    {
      v19 = v15[3];
      if (v15[3])
      {
        v20 = &v3[v19];
        if (&v3[v19] & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        if (v4 < 9 || v4 - 8 < v20)
        {
          return v13;
        }
      }

      if (v16 >= 9)
      {
        v21 = v15[4];
        if (v15[4])
        {
          v22 = &v3[v21];
          if (&v3[v21] & 3) != 0 && (*(a2 + 24))
          {
            return 0;
          }

          v13 = 0;
          if (v4 < 9 || v4 - 8 < v22)
          {
            return v13;
          }
        }

        if (v16 >= 0xB)
        {
          v23 = v15[5];
          if (v15[5])
          {
            v24 = &v3[v23];
            if (&v3[v23] & 3) != 0 && (*(a2 + 24))
            {
              return 0;
            }

            v13 = 0;
            if (v4 < 9 || v4 - 8 < v24)
            {
              return v13;
            }
          }

          if (v16 >= 0xD)
          {
            v25 = v15[6];
            if (v25)
            {
              v26 = &v3[v25];
              if ((v26 & 3) != 0)
              {
                v13 = 0;
                if (v5 < v26 || (*(a2 + 24) & 1) != 0)
                {
                  return v13;
                }
              }

              else if (v5 < v26)
              {
                return 0;
              }

              v27 = *(v2 + v26);
              if (v27 < 1 || v4 - 1 < v26 + v27)
              {
                return 0;
              }

              v28 = a1;
              v29 = a2;
              v30 = sub_2CE1E0((a1 + v25 + *(a1 + v25)), a2);
              a2 = v29;
              v13 = v30;
              a1 = v28;
              if (!v13)
              {
                return v13;
              }
            }
          }
        }
      }
    }
  }

  v31 = a1;
  v32 = a2;
  if (sub_2DAD14(a1, a2, 0xEu, 4) && sub_2CDF90(v31, v32, 0x10u))
  {
    v33 = v31;
    v34 = (v31 - *v31);
    if (*v34 < 0x11u || (v35 = v34[8]) == 0 || (v36 = sub_2CE1E0((v31 + v35 + *(v31 + v35)), v32), v33 = v31, v36))
    {
      if (sub_2DAD14(v33, v32, 0x12u, 4) && sub_2DAD14(v31, v32, 0x14u, 4) && sub_2DAD14(v31, v32, 0x16u, 4) && sub_2DAD14(v31, v32, 0x18u, 4) && sub_2DAD14(v31, v32, 0x1Au, 4) && sub_2CDF90(v31, v32, 0x1Cu))
      {
        v37 = (v31 - *v31);
        if (*v37 >= 0x1Du && (v38 = v37[14]) != 0)
        {
          v39 = (v31 + v38 + *(v31 + v38));
        }

        else
        {
          v39 = 0;
        }

        if (sub_2DD394(v32, v39) && sub_2DAD14(v31, v32, 0x1Eu, 4))
        {
          --*(v32 + 40);
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL sub_2DD394(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (v2 & 3) != 0 && (*(a1 + 24))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 < 5 || v3 - 4 < v2)
  {
    return 0;
  }

  v5 = *a2;
  if (v5 > 0x3FFFFFFE)
  {
    return 0;
  }

  v6 = 2 * v5 + 4;
  v7 = v3 > v6;
  v8 = v3 - v6;
  return v7 && v8 >= v2;
}

uint64_t sub_2DD3FC(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    v16 = v14[2];
    if (v14[2])
    {
      if (&v3[v16] & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      if (v4 < 9 || v4 - 8 < &v3[v16])
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      v17 = v14[3];
      if (v14[3])
      {
        if (&v3[v17] & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        if (v4 < 9 || v4 - 8 < &v3[v17])
        {
          return 0;
        }
      }

      if (v15 >= 9)
      {
        v18 = v14[4];
        if (v14[4])
        {
          v19 = &v3[v18];
          if ((&v3[v18] & 3) != 0)
          {
            if (v5 < v19 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v19)
          {
            return 0;
          }

          v20 = *&v19[v2];
          if (v20 < 1 || v4 - 1 < &v19[v20])
          {
            return 0;
          }

          v21 = (a1 + v18 + *(a1 + v18));
          v22 = v21 - v2;
          if ((v22 & 3) != 0)
          {
            if (v5 < v22 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v22)
          {
            return 0;
          }

          v23 = *v21;
          if (v23 > 0xFFFFFFE)
          {
            return 0;
          }

          v24 = (8 * v23) | 4;
          v6 = v4 >= v24;
          v25 = v4 - v24;
          if (v25 == 0 || !v6 || v25 < v22)
          {
            return 0;
          }
        }

        if (v15 >= 0xB)
        {
          v26 = v14[5];
          if (v14[5])
          {
            v27 = &v3[v26];
            if ((&v3[v26] & 3) != 0)
            {
              if (v5 < v27 || (*(a2 + 24) & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v27)
            {
              return 0;
            }
          }

          if (v15 >= 0xD && v14[6] && v4 - 1 < &v3[v14[6]])
          {
            return 0;
          }
        }
      }
    }
  }

  if (sub_2CDF90(a1, a2, 0xEu))
  {
    v30 = (a1 - *a1);
    if (*v30 < 0xFu || (v31 = v30[7]) == 0 || sub_2CE100(a2, (a1 + v31 + *(a1 + v31)), 1uLL, 0))
    {
      --*(a2 + 40);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2DD718(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v17[2])
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(v2 + v19);
        if (v20 < 1 || v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = (a1 + v18);
        v22 = (a1 + v18 + *(a1 + v18));
        v23 = v22 - v2;
        if ((v23 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v29 = a1;
          v30 = 0;
          v31 = v28 + 1;
          while (1)
          {
            v32 = a2;
            if ((sub_2DDE00((v31 + *v31), a2) & 1) == 0)
            {
              return 0;
            }

            ++v30;
            ++v31;
            a2 = v32;
            if (v30 >= *v28)
            {
              a1 = v29;
              v16 = -*v29;
              break;
            }
          }
        }
      }
    }

    v33 = a1 + v16;
    if (*(a1 + v16) >= 7u)
    {
      v34 = *(v33 + 3);
      if (*(v33 + 3))
      {
        v35 = a1 + v34 - *a2;
        if (v35 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v36 = *(a2 + 8);
        if (v36 < 5 || v36 - 4 < v35)
        {
          return v13;
        }

        v37 = *(*a2 + v35);
        if (v37 < 1)
        {
          return 0;
        }

        if (v36 - 1 < v35 + v37)
        {
          return 0;
        }

        v38 = (a1 + v34);
        v39 = (v38 + *v38);
        v40 = v39 - *a2;
        if (v40 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v41 = *(a2 + 8);
        if (v41 < 5 || v41 - 4 < v40)
        {
          return v13;
        }

        v42 = *v39;
        if (v42 > 0x1FFFFFFE)
        {
          return 0;
        }

        v43 = 4 * v42 + 4;
        v6 = v41 >= v43;
        v44 = v41 - v43;
        if (v44 == 0 || !v6 || v44 < v40)
        {
          return 0;
        }

        v46 = a1;
        v47 = a2;
        if (!sub_2DDD74(a2, (v38 + *v38)))
        {
          return 0;
        }

LABEL_69:
        if (sub_2D8DE0(v46, v47, 8u, 2) && sub_2CDF90(v46, v47, 0xAu))
        {
          v48 = (v46 - *v46);
          if (*v48 < 0xBu)
          {
            v51 = 0;
            v50 = v47;
          }

          else
          {
            v49 = v48[5];
            v50 = v47;
            v51 = v49 ? (v46 + v49 + *(v46 + v49)) : 0;
          }

          if (sub_2DD394(v50, v51) && sub_2CDF90(v46, v47, 0xCu))
          {
            v52 = (v46 - *v46);
            if (*v52 < 0xDu)
            {
              v55 = 0;
              v54 = v47;
            }

            else
            {
              v53 = v52[6];
              v54 = v47;
              v55 = v53 ? (v46 + v53 + *(v46 + v53)) : 0;
            }

            if (sub_2DD394(v54, v55) && sub_2CDF90(v46, v47, 0xEu))
            {
              v56 = (v46 - *v46);
              if (*v56 >= 0xFu && (v57 = v56[7]) != 0)
              {
                v58 = (v46 + v57 + *(v46 + v57));
              }

              else
              {
                v58 = 0;
              }

              if (sub_2D986C(v47, v58))
              {
                v59 = (v46 - *v46);
                if (*v59 >= 0xFu && (v60 = v59[7]) != 0)
                {
                  v61 = (v46 + v60 + *(v46 + v60));
                }

                else
                {
                  v61 = 0;
                }

                if (sub_2D98D4(v47, v61))
                {
                  v62 = v46;
                  v63 = (v46 - *v46);
                  v64 = *v63;
                  v65 = v47;
                  if (v64 >= 0x11)
                  {
                    if (v63[8])
                    {
                      v13 = 0;
                      v66 = *(v47 + 8);
                      if (v66 < 2)
                      {
                        return v13;
                      }

                      v65 = v47;
                      v62 = v46;
                      if (v66 - 1 < v46 + v63[8] - *v47)
                      {
                        return v13;
                      }
                    }

                    if (v64 >= 0x13)
                    {
                      v67 = v63[9];
                      if (v67)
                      {
                        v13 = 0;
                        v68 = *(v65 + 8);
                        if (v68 < 2)
                        {
                          return v13;
                        }

                        v65 = v47;
                        v62 = v46;
                        if (v68 - 1 < v46 + v67 - *v47)
                        {
                          return v13;
                        }
                      }
                    }
                  }

                  if (sub_2CDF90(v62, v65, 0x14u))
                  {
                    v69 = (v46 - *v46);
                    if (*v69 >= 0x15u && (v70 = v69[10]) != 0)
                    {
                      v71 = (v46 + v70 + *(v46 + v70));
                    }

                    else
                    {
                      v71 = 0;
                    }

                    if (sub_2D986C(v47, v71) && sub_2CDF90(v46, v47, 0x16u))
                    {
                      v72 = (v46 - *v46);
                      if (*v72 >= 0x17u && (v73 = v72[11]) != 0)
                      {
                        v74 = (v46 + v73 + *(v46 + v73));
                      }

                      else
                      {
                        v74 = 0;
                      }

                      if (sub_2DD394(v47, v74) && sub_2CDF90(v46, v47, 0x18u))
                      {
                        v75 = (v46 - *v46);
                        if (*v75 >= 0x19u && (v76 = v75[12]) != 0)
                        {
                          v77 = (v46 + v76 + *(v46 + v76));
                        }

                        else
                        {
                          v77 = 0;
                        }

                        if (sub_2DD394(v47, v77))
                        {
                          --*(v47 + 40);
                          return 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        return 0;
      }
    }

    v46 = a1;
    v47 = a2;
    if (sub_2DDD74(a2, 0))
    {
      goto LABEL_69;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2DDD74(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2DDE00((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2DDE00(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    v16 = v14[2];
    if (v14[2])
    {
      v17 = &v3[v16];
      if ((&v3[v16] & 3) != 0)
      {
        if (v5 < v17 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v17)
      {
        return 0;
      }

      v18 = *&v17[v2];
      if (v18 < 1 || v4 - 1 < &v17[v18])
      {
        return 0;
      }

      v19 = (a1 + v16 + *(a1 + v16));
      v20 = v19 - v2;
      if ((v20 & 3) != 0)
      {
        if (v5 < v20 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v20)
      {
        return 0;
      }

      v21 = *v19;
      if (v21 > 0x1FFFFFFE)
      {
        return 0;
      }

      v22 = 4 * v21 + 4;
      v6 = v4 >= v22;
      v23 = v4 - v22;
      if (v23 == 0 || !v6 || v23 < v20)
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      v25 = v14[3];
      if (v14[3])
      {
        v26 = &v3[v25];
        if ((v3 + v25))
        {
          if (v4 - 2 < v26 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v4 - 2 < v26)
        {
          return 0;
        }
      }

      if (v15 < 9)
      {
        goto LABEL_62;
      }

      v27 = v14[4];
      if (v14[4])
      {
        v28 = &v3[v27];
        if ((v3 + v27))
        {
          if (v4 - 2 < v28 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v4 - 2 < v28)
        {
          return 0;
        }
      }

      if (v15 < 0xB || !v14[5])
      {
        goto LABEL_62;
      }

      v29 = &v3[v14[5]];
      if ((v29 & 1) == 0)
      {
        if (v4 - 2 < v29)
        {
          return 0;
        }

        goto LABEL_62;
      }

      if (v4 - 2 >= v29 && (*(a2 + 24) & 1) == 0)
      {
        goto LABEL_62;
      }

      return 0;
    }
  }

LABEL_62:
  if (!sub_2CDF90(a1, a2, 0xCu))
  {
    return 0;
  }

  v32 = a1;
  v33 = *a1;
  v34 = -v33;
  v35 = (a1 - v33);
  if (*v35 < 0xDu)
  {
    goto LABEL_67;
  }

  v36 = v35[6];
  v37 = a2;
  if (v36)
  {
    if (!sub_2CE100(a2, (a1 + v36 + *(a1 + v36)), 4uLL, 0))
    {
      return 0;
    }

    v32 = a1;
    v34 = -*a1;
LABEL_67:
    v37 = a2;
  }

  v38 = (v32 + v34);
  if (*v38 >= 0xDu && (v39 = v38[6]) != 0)
  {
    v40 = (v32 + v39 + *(v32 + v39));
  }

  else
  {
    v40 = 0;
  }

  if (sub_2DE264(v37, v40) && sub_2CDF90(a1, a2, 0xEu))
  {
    v41 = (a1 - *a1);
    if (*v41 < 0xFu)
    {
      v44 = 0;
      v43 = a2;
    }

    else
    {
      v42 = v41[7];
      v43 = a2;
      v44 = v42 ? (a1 + v42 + *(a1 + v42)) : 0;
    }

    if (sub_2DD394(v43, v44) && sub_2CDF90(a1, a2, 0x10u))
    {
      v45 = (a1 - *a1);
      if (*v45 < 0x11u)
      {
        v48 = 0;
        v47 = a2;
      }

      else
      {
        v46 = v45[8];
        v47 = a2;
        v48 = v46 ? (a1 + v46 + *(a1 + v46)) : 0;
      }

      if (sub_2DD394(v47, v48) && sub_2D8DE0(a1, a2, 0x12u, 2) && sub_2D8DE0(a1, a2, 0x14u, 2) && sub_2D8DE0(a1, a2, 0x16u, 2) && sub_2D8DE0(a1, a2, 0x18u, 2))
      {
        --*(a2 + 40);
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2DE264(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2DE2F0((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2DE2F0(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 < 7)
  {
    goto LABEL_53;
  }

  v17 = v15[3];
  if (v15[3])
  {
    v18 = &v3[v17];
    if ((&v3[v17] & 3) != 0)
    {
      if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v18)
    {
      return 0;
    }

    v19 = *&v18[*&v2];
    if (v19 < 1 || v4 - 1 < &v18[v19])
    {
      return 0;
    }

    v20 = (a1 + v17 + *(a1 + v17));
    v21 = v20 - *&v2;
    if ((v21 & 3) != 0)
    {
      if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }

      goto LABEL_35;
    }

    if (v5 >= v21)
    {
LABEL_35:
      v22 = *v20;
      if (v22 > 0x1FFFFFFE)
      {
        return 0;
      }

      v23 = 4 * v22 + 4;
      v6 = v4 >= v23;
      v24 = v4 - v23;
      if (v24 == 0 || !v6 || v24 < v21)
      {
        return 0;
      }

      goto LABEL_41;
    }

    return 0;
  }

LABEL_41:
  if (v16 >= 9)
  {
    if (v15[4] && v4 - 1 < &v3[v15[4]])
    {
      return 0;
    }

    if (v16 >= 0xB)
    {
      if (v15[5] && v4 - 1 < &v3[v15[5]])
      {
        return 0;
      }

      if (v16 >= 0xD && v15[6])
      {
        v26 = &v3[v15[6]];
        if (v26 & 3) != 0 && (a2[3].i8[0])
        {
          return 0;
        }

        if (v4 < 9 || v4 - 8 < v26)
        {
          return 0;
        }
      }
    }
  }

LABEL_53:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2DE4F8(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = *(a2 + 40);
  v9 = *(a2 + 44);
  v10 = v8 + 1;
  *(a2 + 40) = v8 + 1;
  *(a2 + 44) = v9 + 1;
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  if (v8 + 1 > v11 || v9 + 1 > v12)
  {
    return 0;
  }

  v15 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v15)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v15)
  {
    return 0;
  }

LABEL_19:
  v16 = *(v2 + v15);
  if ((v16 & 1) == 0)
  {
    if (v4 <= v16 || v4 - v16 < v15)
    {
      return 0;
    }

    v19 = *a1;
    v20 = -v19;
    v21 = (a1 - v19);
    if (*v21 >= 5u)
    {
      v22 = v21[2];
      if (v21[2])
      {
        v23 = &v3[v22];
        if ((&v3[v22] & 3) != 0)
        {
          v17 = 0;
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v17;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *&v23[v2];
        if (v24 < 1 || v4 - 1 < &v23[v24])
        {
          return 0;
        }

        v25 = (a1 + v22);
        v26 = (a1 + v22 + *(a1 + v22));
        v27 = v26 - v2;
        if (((v26 - v2) & 3) != 0)
        {
          v17 = 0;
          if (v5 < v27 || (*(a2 + 24) & 1) != 0)
          {
            return v17;
          }
        }

        else if (v5 < v27)
        {
          return 0;
        }

        v28 = *v26;
        if (v28 > 0x1FFFFFFE)
        {
          return 0;
        }

        v29 = 4 * v28 + 4;
        v6 = v4 >= v29;
        v30 = v4 - v29;
        if (v30 == 0 || !v6 || v30 < v27)
        {
          return 0;
        }

        v32 = *v25;
        v33 = (v25 + v32);
        v34 = *v33;
        if (v34)
        {
          v35 = *(a2 + 24);
          v36 = v8 + 2;
          if (v36 <= v11)
          {
            v38 = 0;
            v39 = v4 - 2;
            v40 = v35 ^ 1;
            v41 = v9 + 2;
            v42 = 4 * v34;
            v43 = a1 + v22 + v32;
            v44 = &v43[-v2 + 4];
            v45 = a1 + v32 + v22 + 4;
            while (1)
            {
              v17 = 0;
              v46 = *&v43[v38 + 4];
              v47 = v44 + v38 + v46;
              if (!(((v47 & 3) == 0) | v40 & 1) || v5 < v47)
              {
                break;
              }

              v48 = &v33[v38 / 4] + v46;
              v49 = *(v48 + 1);
              *(a2 + 40) = v36;
              *(a2 + 44) = v41;
              if (v41 > v12)
              {
                return 0;
              }

              v50 = v46 - v49;
              v51 = v44 + v38 + v46 - v49;
              if (v51)
              {
                v17 = 0;
                if ((v35 & 1) != 0 || v39 < v51)
                {
                  return v17;
                }
              }

              else if (v39 < v51)
              {
                return 0;
              }

              v52 = *(v45 + v50 + v38);
              if (v52)
              {
                return 0;
              }

              if (v4 <= v52 || v4 - v52 < v51)
              {
                return 0;
              }

              v54 = v46 - *(v48 + 1);
              v55 = &v43[v38 + v54];
              v56 = *(v55 + 2);
              if (v56 >= 5)
              {
                v57 = *(v55 + 4);
                if (*(v55 + 4))
                {
                  v17 = 0;
                  v58 = v44 + v38 + v46 + v57;
                  if (!(((v58 & 3) == 0) | v40 & 1) || v5 < v58)
                  {
                    return v17;
                  }
                }

                if (v56 >= 7)
                {
                  v59 = &v43[v38 + v54];
                  v60 = *(v59 + 5);
                  if (*(v59 + 5))
                  {
                    v17 = 0;
                    v61 = v44 + v38 + v46 + v60;
                    if (!(((v61 & 7) == 0) | v40 & 1) || v4 < 9 || v4 - 8 < v61)
                    {
                      return v17;
                    }
                  }
                }
              }

              *(a2 + 40) = v10;
              ++v41;
              v38 += 4;
              if (v42 == v38)
              {
                v20 = -*a1;
                goto LABEL_80;
              }
            }
          }

          else
          {
            v17 = 0;
            v37 = v33 + v33[1] - v2 + 4;
            if (((v37 & 3) == 0 || (v35 & 1) == 0) && v5 >= v37)
            {
              v17 = 0;
              *(a2 + 40) = v36;
              *(a2 + 44) = v9 + 2;
            }
          }

          return v17;
        }
      }
    }

LABEL_80:
    v62 = a1 + v20;
    if (*(a1 + v20) >= 7u)
    {
      v63 = *(v62 + 3);
      if (*(v62 + 3))
      {
        v64 = &v3[v63];
        if ((v64 & 3) != 0)
        {
          v17 = 0;
          if (v5 < v64 || (*(a2 + 24) & 1) != 0)
          {
            return v17;
          }
        }

        else if (v5 < v64)
        {
          return 0;
        }

        v65 = *(v2 + v64);
        if (v65 < 1 || v4 - 1 < v64 + v65)
        {
          return 0;
        }

        v66 = a1;
        v67 = a2;
        v68 = sub_2DEA74((a1 + v63 + *(a1 + v63)), a2);
        a2 = v67;
        v17 = v68;
        a1 = v66;
        if (!v17)
        {
          return v17;
        }
      }
    }

    v69 = a1;
    v70 = a2;
    if (sub_2CDF90(a1, a2, 8u))
    {
      v71 = v69;
      v72 = *v69;
      v73 = -v72;
      v74 = (v69 - v72);
      if (*v74 < 9u)
      {
LABEL_95:
        v76 = v70;
        goto LABEL_96;
      }

      v75 = v74[4];
      v76 = v70;
      if (!v75)
      {
LABEL_96:
        v77 = (v71 + v73);
        if (*v77 >= 9u && (v78 = v77[4]) != 0)
        {
          v79 = (v71 + v78 + *(v71 + v78));
        }

        else
        {
          v79 = 0;
        }

        if (sub_2DE9E8(v76, v79) && sub_2DAD14(v69, v70, 0xAu, 4))
        {
          --*(v70 + 40);
          return 1;
        }

        return 0;
      }

      if (sub_2CE100(v70, (v69 + v75 + *(v69 + v75)), 4uLL, 0))
      {
        v71 = v69;
        v73 = -*v69;
        goto LABEL_95;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2DE9E8(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2DEDC8((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2DEA74(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_75;
  }

  v16 = v14[2];
  if (v14[2])
  {
    v17 = &v3[v16];
    if ((&v3[v16] & 3) != 0)
    {
      if (v5 < v17 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v17)
    {
      return 0;
    }

    v18 = *&v17[v2];
    if (v18 < 1 || v4 - 1 < &v17[v18])
    {
      return 0;
    }

    v19 = (a1 + v16 + *(a1 + v16));
    v20 = v19 - v2;
    if (((v19 - v2) & 3) != 0)
    {
      if (v5 < v20 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v20)
    {
      return 0;
    }

    v21 = *v19;
    if (v21 > 0x7FFFFFFE)
    {
      return 0;
    }

    v22 = v21 + 4;
    v23 = &v20[v21 + 4];
    v24 = v4 - 1 >= v23 && v4 > v22;
    v25 = v24 && v4 - v22 >= v20;
    if (!v25 || *(v2 + v23))
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_75;
  }

  v26 = v14[3];
  if (v14[3])
  {
    v27 = &v3[v26];
    if ((&v3[v26] & 3) != 0)
    {
      if (v5 < v27 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v27)
    {
      return 0;
    }

    v28 = *&v27[v2];
    if (v28 < 1 || v4 - 1 < &v27[v28])
    {
      return 0;
    }

    v29 = (a1 + v26 + *(a1 + v26));
    v30 = v29 - v2;
    if (((v29 - v2) & 3) != 0)
    {
      if (v5 < v30 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v30)
    {
      return 0;
    }

    v31 = *v29;
    if (v31 > 0x7FFFFFFE)
    {
      return 0;
    }

    v32 = v31 + 4;
    v33 = &v30[v31 + 4];
    v34 = v4 - 1 >= v33 && v4 > v32;
    v35 = v34 && v4 - v32 >= v30;
    if (!v35 || *(v2 + v33))
    {
      return 0;
    }
  }

  if (v15 >= 9 && (v36 = v14[4]) != 0)
  {
    v37 = &v3[v36];
    if ((v37 & 3) != 0)
    {
      if (v5 < v37 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }

LABEL_78:
      v39 = *(v2 + v37);
      if (v39 < 1)
      {
        return 0;
      }

      if (v4 - 1 < v37 + v39)
      {
        return 0;
      }

      v38 = a2;
      if (!sub_2D97E8(a2, (a1 + v36 + *(a1 + v36))))
      {
        return 0;
      }

LABEL_76:
      --*(v38 + 40);
      return 1;
    }

    if (v5 >= v37)
    {
      goto LABEL_78;
    }
  }

  else
  {
LABEL_75:
    v38 = a2;
    if (sub_2D97E8(a2, 0))
    {
      goto LABEL_76;
    }
  }

  return 0;
}

uint64_t sub_2DEDC8(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = *a1;
  v15 = -v14;
  v16 = (a1 - v14);
  v17 = *(a1 - v14);
  if (v17 >= 5)
  {
    v18 = v16[2];
    if (v16[2])
    {
      v19 = &v3[v18];
      if ((&v3[v18] & 3) != 0)
      {
        if (v5 < v19 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v19)
      {
        return 0;
      }

      v20 = *&v19[*&v2];
      if (v20 < 1 || v4 - 1 < &v19[v20])
      {
        return 0;
      }

      v21 = (a1 + v18 + *(a1 + v18));
      v22 = v21 - *&v2;
      if (((v21 - *&v2) & 3) != 0)
      {
        if (v5 < v22 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v22)
      {
        return 0;
      }

      v23 = *v21;
      if (v23 > 0x7FFFFFFE)
      {
        return 0;
      }

      v24 = v23 + 4;
      v25 = &v22[v23 + 4];
      v26 = v4 - 1 >= v25 && v4 > v24;
      v27 = v26 && v4 - v24 >= v22;
      if (!v27 || *(*&v2 + v25))
      {
        return 0;
      }
    }

    if (v17 >= 7)
    {
      v28 = v16[3];
      if (v16[3])
      {
        v29 = &v3[v28];
        if ((&v3[v28] & 3) != 0)
        {
          if (v5 < v29 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v29)
        {
          return 0;
        }

        v30 = *&v29[*&v2];
        if (v30 < 1 || v4 - 1 < &v29[v30])
        {
          return 0;
        }

        v31 = (a1 + v28 + *(a1 + v28));
        v32 = v31 - *&v2;
        if (((v31 - *&v2) & 3) != 0)
        {
          if (v5 < v32 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v32)
        {
          return 0;
        }

        v33 = *v31;
        if (v33 > 0x7FFFFFFE)
        {
          return 0;
        }

        v34 = v33 + 4;
        v35 = &v32[v33 + 4];
        v36 = v4 - 1 >= v35 && v4 > v34;
        v37 = v36 && v4 - v34 >= v32;
        if (!v37 || *(*&v2 + v35))
        {
          return 0;
        }
      }

      if (v17 >= 9)
      {
        v38 = v16[4];
        if (v38)
        {
          v39 = &v3[v38];
          if ((v39 & 3) != 0)
          {
            if (v5 < v39 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v39)
          {
            return 0;
          }

          v40 = *(*&v2 + v39);
          if (v40 < 1)
          {
            return 0;
          }

          if (v4 - 1 < v39 + v40)
          {
            return 0;
          }

          v41 = a1;
          v42 = a2;
          if (!sub_2CE100(a2, (a1 + v38 + *(a1 + v38)), 4uLL, 0))
          {
            return 0;
          }

          a1 = v41;
          v15 = -*v41;
          a2 = v42;
        }
      }
    }
  }

  if (*(a1 + v15) < 9u)
  {
    v44 = a1;
    v43 = 0;
  }

  else
  {
    v43 = *(a1 + v15 + 8);
    v44 = a1;
    if (*(a1 + v15 + 8))
    {
      v43 = (v43 + a1 + *(v43 + a1));
    }
  }

  v45 = a2;
  if (sub_2DF1CC(a2, v43) && sub_2CDF90(v44, v45, 0xAu))
  {
    v46 = (v44 - *v44);
    if (*v46 < 0xBu)
    {
      v49 = 0;
      v48 = v45;
    }

    else
    {
      v47 = v46[5];
      v48 = v45;
      v49 = v47 ? (v44 + v47 + *(v44 + v47)) : 0;
    }

    if (sub_2D97E8(v48, v49))
    {
      --*(v45 + 40);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2DF1CC(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2DF258((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2DF258(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 < 5)
  {
    return 0;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    return 0;
  }

  v18 = &v3[v17];
  if ((&v3[v17] & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *&v18[*&v2];
  if (v19 < 1)
  {
    return 0;
  }

  v20 = &v18[v19];
  v21 = v4 - 1;
  if (v4 - 1 < v20)
  {
    return 0;
  }

  v22 = (a1 + v17 + *(a1 + v17));
  v23 = v22 - *&v2;
  if (((v22 - *&v2) & 3) != 0)
  {
    if (v5 < v23 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v23)
  {
    return 0;
  }

  v24 = *v22;
  if (v24 > 0x7FFFFFFE)
  {
    return 0;
  }

  v25 = v24 + 4;
  v26 = &v23[v24 + 4];
  v27 = v21 >= v26 && v4 > v25;
  v28 = v27 && v4 - v25 >= v23;
  if (!v28 || v26[*&v2])
  {
    return 0;
  }

  if (v16 >= 7)
  {
    v29 = v15[3];
    if (v29)
    {
      v30 = &v3[v29];
      if ((v30 & 3) != 0)
      {
        if (v5 < v30 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v30)
      {
        return 0;
      }

      v31 = *(*&v2 + v30);
      if (v31 < 1 || v21 < v30 + v31)
      {
        return 0;
      }

      v32 = (a1 + v29 + *(a1 + v29));
      v33 = v32 - *&v2;
      if (((v32 - *&v2) & 3) != 0)
      {
        if (v5 < v33 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v33)
      {
        return 0;
      }

      v34 = *v32;
      if (v34 <= 0x7FFFFFFE)
      {
        v35 = v34 + 4;
        v36 = &v33[v34 + 4];
        if (v21 >= v36 && v4 > v35 && v4 - v35 >= v33 && !v36[*&v2])
        {
          goto LABEL_64;
        }
      }

      return 0;
    }
  }

LABEL_64:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2DF4C4(int *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  v10 = v8 + 1;
  *(a2 + 10) = v8 + 1;
  *(a2 + 11) = v9 + 1;
  v12 = *(a2 + 4);
  v11 = *(a2 + 5);
  if (v8 + 1 > v12 || v9 + 1 > v11)
  {
    return 0;
  }

  v15 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3] & 1) != 0 || v4 - 2 < v15)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v15)
  {
    return 0;
  }

  v16 = *(v2 + v15);
  if (v16)
  {
    return 0;
  }

  if (v4 <= v16 || v4 - v16 < v15)
  {
    return 0;
  }

  v18 = (a1 - *a1);
  if (*v18 >= 5u)
  {
    v19 = v18[2];
    if (v18[2])
    {
      v20 = &v3[v19];
      if ((v20 & 3) != 0)
      {
        if (v5 < v20 || (a2[3] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v20)
      {
        return 0;
      }

      v21 = *(v2 + v20);
      if (v21 < 1 || v4 - 1 < v20 + v21)
      {
        return 0;
      }

      v22 = (a1 + v19);
      v23 = (a1 + v19 + *(a1 + v19));
      v24 = v23 - v2;
      if (((v23 - v2) & 3) != 0)
      {
        if (v5 < v24 || (a2[3] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v24)
      {
        return 0;
      }

      v25 = *v23;
      if (v25 > 0x1FFFFFFE)
      {
        return 0;
      }

      v26 = 4 * v25 + 4;
      v6 = v4 >= v26;
      v27 = v4 - v26;
      if (v27 == 0 || !v6 || v27 < v24)
      {
        return 0;
      }

      v29 = *v22;
      v30 = v22 + v29;
      v31 = *(v22 + v29);
      if (v31)
      {
        v32 = v8 + 2;
        if (v8 + 2 <= v12)
        {
          v34 = v4 - 2;
          if (a2[3])
          {
            v35 = 0;
            v36 = v9 + 2;
            v37 = 4 * v31;
            v38 = a1 + v19 + v29;
            v39 = v38 + 4;
            v40 = &v38[-v2 + 4];
            v41 = a1 + v29 + v19 + 4;
            while (1)
            {
              v42 = *&v39[v35];
              v43 = v40 + v35;
              v44 = v40 + v35 + v42;
              if ((v44 & 3) != 0 || v5 < v44)
              {
                break;
              }

              v46 = *&v39[v42 + v35];
              *(a2 + 10) = v32;
              *(a2 + 11) = v36;
              if (v36 > v11)
              {
                break;
              }

              v47 = v42 - v46;
              v48 = v43 + v47;
              if (((v43 + v47) & 1) != 0 || v34 < v48)
              {
                break;
              }

              v50 = *(v41 + v47 + v35);
              if (v50)
              {
                break;
              }

              if (v4 <= v50 || v4 - v50 < v48)
              {
                break;
              }

              *(a2 + 10) = v10;
              ++v36;
              v35 += 4;
              if (v37 == v35)
              {
                goto LABEL_82;
              }
            }
          }

          else
          {
            v52 = 0;
            v53 = v9 + 2;
            v54 = 4 * v31;
            v55 = a1 + v19 + v29;
            v56 = v55 + 4;
            v57 = &v55[-v2 + 4];
            v58 = a1 + v29 + v19 + 4;
            while (1)
            {
              v59 = *&v56[v52];
              v60 = v57 + v52;
              if (v5 < v57 + v52 + v59)
              {
                break;
              }

              v61 = *&v56[v59 + v52];
              *(a2 + 10) = v32;
              *(a2 + 11) = v53;
              if (v53 > v11)
              {
                break;
              }

              v62 = v59 - v61;
              if (v34 < v60 + v62)
              {
                break;
              }

              v63 = *(v58 + v62 + v52);
              if (v63)
              {
                break;
              }

              v6 = v4 >= v63;
              v64 = v4 - v63;
              if (v64 == 0 || !v6 || v64 < v60 + v62)
              {
                break;
              }

              *(a2 + 10) = v10;
              ++v53;
              v52 += 4;
              if (v54 == v52)
              {
                goto LABEL_82;
              }
            }
          }

          return 0;
        }

        v33 = &v30[*(v30 + 1) + 4 - v2];
        if ((((v33 & 3) != 0) & a2[3]) == 0 && v5 >= v33)
        {
          *(a2 + 10) = v32;
          *(a2 + 11) = v9 + 2;
          return 0;
        }

        return 0;
      }
    }
  }

LABEL_82:
  *(a2 + 10) = v8;
  return 1;
}

uint64_t sub_2DF7F0(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v17[2])
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(v2 + v19);
        if (v20 < 1 || v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = (a1 + v18);
        v22 = (a1 + v18 + *(a1 + v18));
        v23 = v22 - v2;
        if ((v23 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v29 = a1;
          v30 = 0;
          v31 = v28 + 1;
          while (1)
          {
            v32 = a2;
            if ((sub_2DFB80((v31 + *v31), a2) & 1) == 0)
            {
              return 0;
            }

            ++v30;
            ++v31;
            a2 = v32;
            if (v30 >= *v28)
            {
              a1 = v29;
              v16 = -*v29;
              break;
            }
          }
        }
      }
    }

    v33 = a1 + v16;
    if (*(a1 + v16) >= 0xBu)
    {
      v34 = *(v33 + 5);
      if (*(v33 + 5))
      {
        v35 = a1 + v34 - *a2;
        if (v35 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v36 = *(a2 + 8);
        if (v36 < 5 || v36 - 4 < v35)
        {
          return v13;
        }

        v37 = *(*a2 + v35);
        if (v37 < 1)
        {
          return 0;
        }

        if (v36 - 1 < v35 + v37)
        {
          return 0;
        }

        v38 = (a1 + v34 + *(a1 + v34));
        v39 = v38 - *a2;
        if (v39 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v40 = *(a2 + 8);
        if (v40 < 5 || v40 - 4 < v39)
        {
          return v13;
        }

        v41 = *v38;
        if (v41 > 0xFFFFFFE)
        {
          return 0;
        }

        v42 = (8 * v41) | 4;
        v6 = v40 >= v42;
        v43 = v40 - v42;
        if (v43 == 0 || !v6 || v43 < v39)
        {
          return 0;
        }
      }
    }

    v45 = a1;
    v46 = a2;
    if (!sub_2CDF90(a1, a2, 0xCu))
    {
      return 0;
    }

    v47 = v45;
    v48 = *v45;
    v49 = -v48;
    v50 = (v45 - v48);
    if (*v50 < 0xDu)
    {
      goto LABEL_71;
    }

    v51 = v50[6];
    v52 = v46;
    if (!v51)
    {
LABEL_72:
      v53 = (v47 + v49);
      if (*v53 >= 0xDu && (v54 = v53[6]) != 0)
      {
        v55 = (v47 + v54 + *(v47 + v54));
      }

      else
      {
        v55 = 0;
      }

      if (sub_2CE014(v52, v55))
      {
        --*(v46 + 40);
        return 1;
      }

      return 0;
    }

    if (sub_2CE100(v46, (v45 + v51 + *(v45 + v51)), 4uLL, 0))
    {
      v47 = v45;
      v49 = -*v45;
LABEL_71:
      v52 = v46;
      goto LABEL_72;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2DFB80(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = *a1;
  v15 = -v14;
  v16 = (a1 - v14);
  v17 = *(a1 - v14);
  if (v17 >= 5)
  {
    v18 = v16[2];
    if (v16[2])
    {
      v19 = &v3[v18];
      if ((&v3[v18] & 3) != 0)
      {
        if (v5 < v19 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v19)
      {
        return 0;
      }

      v20 = *&v19[v2];
      if (v20 < 1 || v4 - 1 < &v19[v20])
      {
        return 0;
      }

      v21 = (a1 + v18 + *(a1 + v18));
      v22 = v21 - v2;
      if (((v21 - v2) & 3) != 0)
      {
        if (v5 < v22 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v22)
      {
        return 0;
      }

      v23 = *v21;
      if (v23 > 0xFFFFFFE)
      {
        return 0;
      }

      v24 = (8 * v23) | 4;
      v6 = v4 >= v24;
      v25 = v4 - v24;
      if (v25 == 0 || !v6 || v25 < v22)
      {
        return 0;
      }
    }

    if (v17 >= 7)
    {
      v27 = v16[3];
      if (v16[3])
      {
        if (&v3[v27] & 7) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        if (v4 < 9 || v4 - 8 < &v3[v27])
        {
          return 0;
        }
      }

      if (v17 >= 0xB)
      {
        v28 = v16[5];
        if (v28)
        {
          v29 = &v3[v28];
          if ((v29 & 3) != 0)
          {
            if (v5 < v29 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v29)
          {
            return 0;
          }

          v30 = *(v2 + v29);
          if (v30 >= 1)
          {
            v34 = a2;
            if (v4 - 1 >= v29 + v30)
            {
              v33 = a1;
              if (sub_2CE100(a2, (a1 + v28 + *(a1 + v28)), 1uLL, 0))
              {
                a1 = v33;
                a2 = v34;
                v15 = -*v33;
                goto LABEL_58;
              }
            }
          }

          return 0;
        }
      }
    }
  }

LABEL_58:
  v31 = a1 + v15;
  if (*(a1 + v15) < 0xDu || !*(v31 + 6) || (v32 = *(a2 + 8), v32 >= 2) && v32 - 1 >= a1 + *(v31 + 6) - *a2)
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}