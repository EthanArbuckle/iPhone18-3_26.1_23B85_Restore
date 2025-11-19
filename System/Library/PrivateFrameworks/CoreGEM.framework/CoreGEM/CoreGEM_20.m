void sub_245478620(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  if (__len < 1)
  {
    return;
  }

  v5 = __len;
  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_2453A631C();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v6++;
      *v32++ = v33;
      --v5;
    }

    while (v5);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = __dst;
    v36 = *a1;
    v37 = &v30[*a1 - __dst];
    memcpy(v37, *a1, &__dst[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }

    return;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = __dst;
    v24 = v6;
    v25 = v5;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &__dst[v5];
    v20 = &v10[v17];
    if (&v18[-v5] < v10)
    {
      v21 = a4 - &v6[v5];
      v22 = a4 - v6;
      do
      {
        __dst[v22++] = __dst[v21++];
      }

      while (&__dst[v21] < v10);
      v20 = &__dst[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&__dst[v5], __dst, v18 - v19);
    }

    v23 = __dst;
    v24 = v6;
    v25 = v10 - __dst;
LABEL_27:

    memmove(v23, v24, v25);
  }
}

uint64_t sub_245478884()
{
  v5 = *MEMORY[0x277D85DE8];
  if (qword_2813CED88 != -1)
  {
    dispatch_once(&qword_2813CED88, &unk_28585A838);
  }

  result = qword_2813CED80;
  if (!qword_2813CED80)
  {
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "%s", &v3, 0xCu);
    }

    __assert_rtn("GetInstance", "LcsUtils.cpp", 63, "false && Memory allocation failure");
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24547897C()
{
  result = operator new(1uLL, MEMORY[0x277D826F0]);
  qword_2813CED80 = result;
  return result;
}

uint64_t sub_2454789A8(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = (a2 + 0xFFFF);
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_INFO, "GenerateReqIdForSessionTimer  New sessionTimerrquestID[%d] is generated", v6, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_245478A50(uint64_t *a1)
{
  v2 = *a1;
  if (*(v2 + 752))
  {
    sub_24546A610(v2, 9);
  }

  if (!*(v2 + 803))
  {
    free(*(v2 + 760));
    v2 = *a1;
  }

  free(v2);
  *a1 = 0;
  return 0;
}

uint64_t sub_245478AA4(uint64_t *a1, uint64_t *a2)
{
  if (!a2)
  {
    return 6;
  }

  v4 = malloc_type_calloc(1uLL, 0x3C0uLL, 0x10F0040998F192CuLL);
  bzero(v4 + 2, 0x3BCuLL);
  result = 0;
  *a1 = v4;
  *v4 = 0;
  v4[361] = -1;
  *(v4 + 91) = 0;
  *(*a1 + 736) = 0;
  *(*a1 + 744) = 0;
  v6 = *a1;
  *(v6 + 752) = 0;
  *(v6 + 824) = 2080;
  *(v6 + 832) = 0;
  *(v6 + 880) = 0;
  *(*a1 + 944) = 0;
  v7 = *a1;
  *(v7 + 888) = 0;
  *(v7 + 896) = 0;
  v8 = *a1;
  *(v8 + 906) = 0;
  *(v8 + 904) = 0;
  *(v8 + 928) = 0;
  *(v8 + 936) = 0;
  *(*a1 + 936) = 0;
  v9 = *a1;
  v10 = (*a1 + 760);
  v10[1] = xmmword_24548B5B8;
  v10[2] = unk_24548B5C8;
  *v10 = xmmword_24548B5A8;
  v11 = *a2;
  *(v9 + 768) = *a2 + a2[1];
  *(v9 + 760) = v11;
  *(v9 + 792) = v11;
  *(v9 + 776) = v11;
  *(v9 + 784) = v11 + a2[2];
  *(v9 + 803) = 1;
  return result;
}

char *sub_245478BC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 803))
  {
    sub_24546A610(a1, 7);
  }

  v3 = *(a1 + 768) - *(a1 + 760) + a2;
  v4 = malloc_type_calloc(1uLL, v3, 0xF10AFBA4uLL);
  bzero(v4, v3);
  if (!v4)
  {
    sub_24546A610(a1, 1);
  }

  memcpy(v4, *(a1 + 760), *(a1 + 768) - *(a1 + 760));
  v5 = *(a1 + 760);
  *(a1 + 776) = &v4[*(a1 + 776) - v5];
  *(a1 + 784) = &v4[*(a1 + 784) - v5];
  *(a1 + 792) = &v4[*(a1 + 792) - v5];
  free(v5);
  *(a1 + 760) = v4;
  *(a1 + 768) = &v4[v3];
  return v4;
}

uint64_t sub_245478CA0(uint64_t a1)
{
  if (*(a1 + 752))
  {
    sub_24546A610(a1, 8);
  }

  v1 = *(a1 + 760);
  *(a1 + 776) = v1;
  *(a1 + 784) = v1;
  *(a1 + 792) = v1;
  *(a1 + 800) = 1799;
  *(a1 + 802) = 7;
  *a1 = 0;
  *(a1 + 752) = 2;
  return 0;
}

uint64_t sub_245478CF0(uint64_t a1)
{
  if (*(a1 + 752))
  {
    sub_24546A610(a1, 8);
  }

  *(a1 + 792) = *(a1 + 776);
  *(a1 + 802) = *(a1 + 800);
  *a1 = 0;
  *(a1 + 752) = 1;
  return 0;
}

uint64_t sub_245478D30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 752) != 1)
  {
    sub_24546A610(a1, 11);
  }

  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 802) != 7)
  {
    sub_24546A610(a1, 15);
  }

  result = *(a1 + 792);
  v5 = *(a1 + 784) - result;
  if (a2 > v5)
  {
    v6 = *(a1 + 736);
    if (v6)
    {
      v6(a1, (a2 - v5));
      result = *(a1 + 792);
      v5 = *(a1 + 784) - result;
    }

    if (*(a1 + 801) != 7)
    {
      ++v5;
    }

    if (v5 < a2)
    {
      sub_24546A610(a1, 12);
    }
  }

  *(a1 + 792) = result + a2;
  return result;
}

uint64_t sub_245478E04(unsigned int *a1, void *a2)
{
  bzero(a2, 0xA28uLL);

  return sub_2454577F8(a1, byte_278E801D8, a2);
}

uint64_t sub_245478E68(unsigned int *a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  return sub_2454577F8(a1, byte_278E78008, a2);
}

uint64_t sub_245478E8C(unsigned int a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, int *a6, uint64_t a7, void **a8, uint64_t a9)
{
  if (a8)
  {
    v14 = *a8;
    if (*a8)
    {
      if (!*v14 || !v14[1] || !v14[2])
      {
        return 15;
      }
    }
  }

  v23 = 0;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a4;
  sub_245478AA4(&v23, v24);
  v15 = v23;
  *(v23 + 944) = a8;
  v24[0] = v15;
  sub_245478CF0(v15);
  if (a1 == 13)
  {
    goto LABEL_9;
  }

  *(v15 + 824) = 2064;
  if (a1 > 0x1D)
  {
    goto LABEL_21;
  }

  if (((1 << a1) & 0x24000023) == 0)
  {
    if (a1 == 4)
    {
      if (a2 > 7)
      {
        goto LABEL_9;
      }

      if (byte_27EE134B0)
      {
        v18 = 0;
        v19 = byte_28585A858;
        v16 = 15;
        while (1)
        {
          v20 = *v19;
          v19 += 16;
          if (v20 == a2)
          {
            break;
          }

          if (byte_27EE134B0 == ++v18)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        LODWORD(v18) = 0;
      }

      if (v18 == byte_27EE134B0)
      {
        goto LABEL_9;
      }

      v22 = *&byte_28585A858[16 * v18 + 8];
      if (!v22)
      {
        goto LABEL_9;
      }

      v16 = v22(v15, a5, a9);
      if (!a6)
      {
        goto LABEL_10;
      }

      v21 = *(v15 + 800) - *(v15 + 802) + 8 * (*(v15 + 792) - *(v15 + 776));
LABEL_23:
      *a6 = v21;
      goto LABEL_10;
    }

LABEL_21:
    v16 = 15;
    if (!a6)
    {
      goto LABEL_10;
    }

    v21 = 0;
    goto LABEL_23;
  }

LABEL_9:
  v16 = 15;
LABEL_10:
  if (*(v15 + 752) != 1)
  {
    sub_24546A610(v15, 10);
  }

  *(v15 + 752) = 0;
  sub_245478A50(v24);
  return v16;
}

uint64_t sub_24547903C(int a1, unsigned int a2, uint64_t *a3, _DWORD *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a6)
  {
    return 15;
  }

  *a3 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a1 != 4)
  {
    return 15;
  }

  v29 = 0;
  v30 = &unk_27EE13511;
  v31 = vdupq_n_s64(0x1000uLL);
  sub_245478AA4(&v29, &v30);
  v14 = v29;
  *(v29 + 944) = 0;
  v30 = v14;
  sub_245478CA0(v14);
  if (a2 >= 8)
  {
    if (*(v14 + 752) == 2)
    {
      v19 = (v14 + 752);
      v18 = 15;
LABEL_36:
      *v19 = 0;
LABEL_37:
      sub_245478A50(&v30);
      return v18;
    }

LABEL_39:
    sub_24546A610(v14, 10);
  }

  if (byte_27EE134B1)
  {
    v15 = 0;
    v16 = byte_28585A888;
    while (1)
    {
      v17 = *v16;
      v16 += 16;
      if (v17 == a2)
      {
        break;
      }

      if (byte_27EE134B1 == ++v15)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 != byte_27EE134B1)
  {
    v20 = *&byte_28585A888[16 * v15 + 8];
    if (v20)
    {
      v18 = v20(v14, a6, a8);
      if (!v14)
      {
        return v18;
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  v18 = 15;
  if (v14)
  {
LABEL_22:
    if (*(v14 + 752) == 2)
    {
      v19 = (v14 + 752);
      *(v14 + 752) = 0;
      if (!a5 || v18)
      {
        goto LABEL_37;
      }

      sub_245478CF0(v14);
      v21 = *(v14 + 784);
      v22 = *(v14 + 776);
      if (a4)
      {
        v23 = v21 - v22;
        v24 = *(v14 + 800);
        v25 = *(v14 + 801);
        *a4 = v24 - v25 + 8 * v23;
      }

      else
      {
        v24 = *(v14 + 800);
        v25 = *(v14 + 801);
        v23 = v21 - v22;
      }

      v26 = v24 <= v25 ? v23 : v23 + 1;
      *a5 = v26;
      v27 = sub_245478D30(v14, v26);
      if (*a5 && v27)
      {
        *a3 = v27;
      }

      if (*v19 == 1)
      {
        v18 = 0;
        goto LABEL_36;
      }
    }

    goto LABEL_39;
  }

  return v18;
}

uint64_t sub_245479234()
{
  v5 = *MEMORY[0x277D85DE8];
  if (qword_2813CED98 != -1)
  {
    dispatch_once(&qword_2813CED98, &unk_28585A898);
  }

  result = qword_2813CED90;
  if (!qword_2813CED90)
  {
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "%s", &v3, 0xCu);
    }

    __assert_rtn("GetInstance", "SimUtils.cpp", 50, "false && Memory allocation failure");
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24547932C()
{
  result = operator new(0x18uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  qword_2813CED90 = result;
  return result;
}

char *sub_245479364(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    do
    {
      ++v5;
      v6 = *(v6 + 8);
    }

    while (v6);
    if (v5 >= 3)
    {
      v7 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        v14 = 0;
        v8 = "No slots available for storing SimId";
        v9 = &v14;
LABEL_17:
        _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
        return 0;
      }

      return 0;
    }
  }

  result = operator new(0x100uLL, MEMORY[0x277D826F0]);
  if (!result)
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v8 = "NULL Data";
      v9 = &v13;
      goto LABEL_17;
    }

    return 0;
  }

  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 12) = 0u;
  *(result + 13) = 0u;
  *(result + 10) = 0u;
  *(result + 11) = 0u;
  *(result + 8) = 0u;
  *(result + 9) = 0u;
  *(result + 6) = 0u;
  *(result + 7) = 0u;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *result = 0u;
  *(result + 1) = 0u;
  *(result + 24) = 7275;
  *(result + 16) = 0;
  *(result + 18) = -1;
  *(result + 97) = 0;
  *(result + 92) = 0;
  *(result + 84) = 0;
  *(result + 76) = 0;
  *(result + 29) = 0;
  *(result + 124) = -1;
  *(result + 72) = 0;
  *(result + 74) = -1;
  *(result + 20) = 0;
  *(result + 21) = 0;
  *(result + 174) = 0;
  *(result + 19) = 0;
  *(result + 23) = 0;
  *(result + 24) = 0;
  *(result + 25) = 0;
  result[208] = 1;
  *(result + 28) = 0;
  *(result + 29) = 0;
  *(result + 112) = -1;
  *(result + 30) = 0;
  *(result + 31) = 0;
  v11 = v4;
  *result = a2;
  while (v11)
  {
    v12 = v11;
    v11 = *(v11 + 8);
    if (!v11)
    {
      *(v12 + 8) = result;
      *(result + 1) = 0;
      return result;
    }
  }

  *(result + 1) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_245479500(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 1);
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v4 = sub_245479364(a1, a2);
    if (!v4)
    {
      return -1;
    }
  }

  v4[16] = *a3;
  std::string::operator=(v4 + 1, (a3 + 8));
  v5 = 0;
  *(v4 + 24) = *(a3 + 32);
  return v5;
}

uint64_t sub_245479574(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_15:
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = 515;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v11, 8u);
    }

    v7 = -1;
    goto LABEL_18;
  }

  while (*v4 != a4)
  {
    v4 = *(v4 + 8);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  memset(&__p, 0, sizeof(__p));
  v13 = 7275;
  LOBYTE(v11[0]) = *(v4 + 16);
  std::string::operator=(&__p, (v4 + 24));
  v13 = *(v4 + 48);
  if (!LOBYTE(v11[0]) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (size = HIBYTE(__p.__r_.__value_.__r.__words[2])) : (size = __p.__r_.__value_.__l.__size_), !size))
  {
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_15;
  }

  *a2 = v11[0];
  std::string::operator=((a2 + 8), &__p);
  *(a2 + 32) = v13;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = 0;
LABEL_18:
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_2454796D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2454796F4(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = sub_245479364(a1, a2);
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  sub_245464DF4(v4 + 56, a3);
  result = mach_continuous_time();
  *(v4 + 216) = 0;
  return result;
}

BOOL sub_245479750(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  while (*v2 != a2)
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 56) == 4 && (v3 = *(v2 + 200)) != 0 && *v3 == 3;
}

BOOL sub_2454797A0(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56))
  {
    Current = CFAbsoluteTimeGetCurrent();
    LODWORD(v3) = *(a1 + 216);
    v4 = -(v3 - Current * 1000.0);
    if (v4 < 0x1389)
    {
      result = 1;
      goto LABEL_9;
    }

    v5 = qword_2813CF008;
    result = os_log_type_enabled(qword_2813CF008, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v12[0] = 67109120;
      v12[1] = v4;
      v7 = "time diff is greater than 5000 millisecs value,%d";
      v8 = v5;
      v9 = 8;
LABEL_7:
      _os_log_impl(&dword_245396000, v8, OS_LOG_TYPE_DEFAULT, v7, v12, v9);
      result = 0;
    }
  }

  else
  {
    v10 = qword_2813CF008;
    result = os_log_type_enabled(qword_2813CF008, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      LOWORD(v12[0]) = 0;
      v7 = "CellInfo";
      v8 = v10;
      v9 = 2;
      goto LABEL_7;
    }
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_2454798BC(uint64_t a1, int a2, uint64_t a3)
{
  result = *(a1 + 16);
  if (result)
  {
    while (*result != a2)
    {
      result = *(result + 1);
      if (!result)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = sub_245479364(a1, a2);
    if (!result)
    {
      return result;
    }
  }

  *(result + 112) = *a3;
  if (result + 224 != a3)
  {
    v6 = *(a3 + 8);
    v7 = *(a3 + 16);
    v8 = result + 232;

    return sub_2453ADF3C(v8, v6, v7, v7 - v6);
  }

  return result;
}

void *sub_245479944(void *result, int a2, uint64_t a3)
{
  v3 = result[2];
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        return result;
      }
    }

    *a3 = *(v3 + 224);
    if (v3 + 224 != a3)
    {
      return sub_2453ADF3C((a3 + 8), *(v3 + 232), *(v3 + 240), *(v3 + 240) - *(v3 + 232));
    }
  }

  return result;
}

void sub_245479990(uint64_t a1, char *a2)
{
  sub_2453B414C(&__p, "NULLFileName");
  if (a2)
  {
    sub_2453B414C(&__str, a2);
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    p_str = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v5 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
    do
    {
      if (!size)
      {
        goto LABEL_14;
      }

      v6 = v5[size--];
    }

    while (v6 != 92 && v6 != 47);
    if (size == -1)
    {
LABEL_14:
      std::string::operator=(&__p, &__str);
      goto LABEL_15;
    }

    std::string::basic_string(&v7, &__str, size + 1, 0xFFFFFFFFFFFFFFFFLL, &v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v7;
LABEL_15:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_245479A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245479ABC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (v2)
    {
      *(result + 16) = *(v2 + 8);
      *(v2 + 8) = 0;
    }
  }

  else
  {
    do
    {
      v4 = v2;
      v2 = *(v2 + 8);
      if (v2)
      {
        v5 = v2 == a2;
      }

      else
      {
        v5 = 1;
      }
    }

    while (!v5);
    if (v2)
    {
      *(v4 + 8) = *(v2 + 8);
    }
  }

  if (a2)
  {
    *(a2 + 8) = 0;
  }

  return result;
}

void sub_245479B0C(uint64_t a1)
{
  v2 = *(a1 + 8) - *a1;
  v3 = sub_245468268("SuplLppExecutePosReq", 33, 1, v2);
  v4 = *(a1 + 8) - *a1;
  sub_2454683F0("SuplLppExecutePosReq", 35, v3, v4, *a1, v4);
  v5 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "#supl,#posp,#lpp, Calling lpp_t_supl_pos_trigger", v6, 2u);
  }

  sub_245444EFC(v3, v2);
  sub_245448798(off_27EE134B8, *(a1 + 28), *(a1 + 32), v2, v3);
  if (v3)
  {
    MEMORY[0x245D6A0D0](v3, 0x1000C4077774924);
  }
}

void sub_245479C1C(int a1, unsigned __int16 *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v6, OS_LOG_TYPE_DEFAULT, "#gpsd,#lpp,#posp AID_RQD_MSG  ", buf, 2u);
  }

  *buf = 0x8000000080000000;
  *&buf[8] = 0xFFFF00007FFFFFFFLL;
  *v16 = 255;
  *&v16[8] = -1;
  v16[10] = -1;
  *&v16[2] = -1;
  v16[6] = -1;
  memset(&v16[11], 0, 32);
  v7 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a2[6];
    *v12 = 67109120;
    *&v12[4] = v8;
    _os_log_impl(&dword_245396000, v7, OS_LOG_TYPE_DEFAULT, "#lpp,#cplane,received aid mask,%d", v12, 8u);
  }

  sub_2454683F0("LppExecuteAidRequest", 73, buf, 0x3Cu, a2, 0x3CuLL);
  *v12 = *buf;
  v13 = *v16;
  v14[0] = *&v16[16];
  *(v14 + 12) = *&v16[28];
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  sub_245448E0C(off_27EE134B8, v12, v11, 1, (a3 << 32) | 2, a1, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_245479DC8(int a1, int a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "SuplLppExecutePosRsp");
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE3(v21) & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = *__p;
    }

    v18 = 136315138;
    v19 = v16;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", &v18, 0xCu);
  }

  if (SBYTE3(v21) < 0)
  {
    operator delete(*__p);
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 67109120;
    *&__p[4] = a2;
    _os_log_impl(&dword_245396000, v7, OS_LOG_TYPE_DEFAULT, "LPP Sub Msg Type,%u", __p, 8u);
  }

  if ((a2 & 0xFFFFFFFD) != 0)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "LPP message", __p, 2u);
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    *&v26[20] = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v9 = *(a3 + 80);
    v24 = *(a3 + 64);
    v25 = v9;
    *v26 = *(a3 + 96);
    v10 = *(a3 + 16);
    *&__p[4] = *a3;
    v21 = v10;
    v11 = *(a3 + 48);
    v22 = *(a3 + 32);
    v12 = *a3 != 0;
    v13 = *(a3 + 117);
    *__p = 1;
    *&v26[13] = *(a3 + 109);
    v23 = v11;
    v26[21] = v13;
    LOBYTE(v35) = v13;
    DWORD1(v35) = 2 * v12;
    *&v36 = -1;
    *(&v36 + 1) = 0xFFFF7FFFFFFFFFFFLL;
    *&v37 = -1;
    sub_245448F48(off_27EE134B8, __p, 0x100000002, a1);
  }

  sub_2453B414C(__p, "SuplLppExecutePosRsp");
  v14 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE3(v21) & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = *__p;
    }

    v18 = 136315138;
    v19 = v17;
    _os_log_debug_impl(&dword_245396000, v14, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", &v18, 0xCu);
  }

  if (SBYTE3(v21) < 0)
  {
    operator delete(*__p);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_24547A094(int a1, char a2, unsigned __int16 *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "SuplLppExecuteAdReq");
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v22 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    *buf = 136315138;
    v24 = v19;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = operator new(0x68uLL, MEMORY[0x277D826F0]);
  if (v7)
  {
    *v7 = 0x8000000080000000;
    *(v7 + 1) = 0xFFFF00007FFFFFFFLL;
    *(v7 + 8) = 255;
    *(v7 + 12) = -1;
    v7[26] = -1;
    *(v7 + 18) = -1;
    v7[22] = -1;
    *(v7 + 27) = 0u;
    *(v7 + 43) = 0u;
    v8 = *a3;
    v7[96] = v8;
    if (v8 == 1)
    {
      *v7 = 0uLL;
      *(v7 + 1) = 0uLL;
      *(v7 + 44) = 0uLL;
      *(v7 + 2) = 0uLL;
      *(v7 + 6) = *(a3 + 2);
      *(v7 + 7) = a3[6];
      v7[16] = *(a3 + 14);
      v9 = *(a3 + 15);
      v7[17] = v9;
      v7[18] = *(a3 + 64);
      if (v9)
      {
        v10 = *(a3 + 5);
        v11 = v7 + 43;
        v12 = *(a3 + 2);
        do
        {
          v13 = *v10++;
          *v11 = v13;
          v14 = *v12++;
          *(v11 - 16) = v14;
          ++v11;
          --v9;
        }

        while (v9);
      }
    }

    sub_24544896C(off_27EE134B8, a1, a2, 1, v7, 0, 0);
    sub_2453B414C(__p, "SuplLppExecuteAdReq");
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      if (v22 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136315138;
      v24 = v16;
LABEL_28:
      _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
    }
  }

  else
  {
    v17 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_245396000, v17, OS_LOG_TYPE_ERROR, "GNSS Aid Req", __p, 2u);
    }

    sub_2453B414C(__p, "SuplLppExecuteAdReq");
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      if (v22 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      *buf = 136315138;
      v24 = v20;
      goto LABEL_28;
    }
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_24547A384(int a1, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "SuplLppExecuteCapReq");
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315138;
    v12 = v7;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_245448BE4(off_27EE134B8, a1, a2);
  sub_2453B414C(__p, "SuplLppExecuteCapReq");
  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315138;
    v12 = v8;
    _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24547A504(int a1, int a2, uint64_t a3, int a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_245396000, v7, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp updating PLMN info,%d,%d", v10, 0xEu);
  }

  v8 = off_27EE134B8;
  *(off_27EE134B8 + 40) = a1;
  *(v8 + 41) = a2;
  *(v8 + 21) = a4;
  v9 = *MEMORY[0x277D85DE8];
}

void sub_24547A5D4()
{
  v0 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v0, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp LPP Initialization Fn", buf, 2u);
  }

  v1 = off_27EE134B8;
  sub_245448500(off_27EE134B8);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  xmmword_2813CEDE8 = v1[2];
  unk_2813CEDF8 = v4;
  xmmword_2813CEDC8 = v2;
  unk_2813CEDD8 = v3;
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  qword_2813CEE38 = *(v1 + 14);
  xmmword_2813CEE18 = v6;
  unk_2813CEE28 = v7;
  xmmword_2813CEE08 = v5;
  v8 = *(v1 + 152);
  v9 = *(v1 + 136);
  unk_2813CEE40 = *(v1 + 120);
  unk_2813CEE50 = v9;
  unk_2813CEE60 = v8;
  v10 = *(v1 + 184);
  v11 = *(v1 + 200);
  v12 = *(v1 + 216);
  unk_2813CEE70 = *(v1 + 168);
  unk_2813CEEA0 = v12;
  unk_2813CEE90 = v11;
  unk_2813CEE80 = v10;
  v13 = off_27EE134B8;
  *(off_27EE134B8 + 4) = 1537;
  v14 = 1;
  *(v13 + 1) = 1;
  *(v13 + 105) = 0;
  *(v13 + 10) = 0xFFFFFFFFLL;
  *v13 = 1;
  *(v13 + 26) = 1;
  *(v13 + 50) = 3;
  *(v13 + 48) = 0;
  *(v13 + 30) = 256;
  *(v13 + 22) = 257;
  *(v13 + 32) = 1;
  *(v13 + 66) = 0;
  *(v13 + 59) = 32;
  *(v13 + 27) = 3;
  *(v13 + 22) = 0xFFFF;
  v15 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_245396000, v15, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp LPP Initialization complete", v18, 2u);
    v13 = off_27EE134B8;
    v16 = *(off_27EE134B8 + 8);
    v17 = *(off_27EE134B8 + 44);
    v14 = *(off_27EE134B8 + 61) == 1;
  }

  else
  {
    v17 = 1;
    v16 = 1;
  }

  if (*(v13 + 120) == 1 && !*(v13 + 31))
  {
    if (v17 == 1)
    {
      *(v13 + 32) = 1;
    }

    if (v14)
    {
      *(v13 + 38) = 1;
    }

    if (v16 | v17)
    {
      *(v13 + 31) = 1;
    }

    *(v13 + 224) = 0;
  }

  sub_24547A7C8();
}

void sub_24547A7C8()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v2 = *(off_27EE134B8 + 8);
    v3 = *(off_27EE134B8 + 9);
    v4 = *(off_27EE134B8 + 105);
    v5 = *(off_27EE134B8 + 45);
    v6 = *(off_27EE134B8 + 48);
    v7 = *(off_27EE134B8 + 44);
    v8 = *(off_27EE134B8 + 61);
    v9 = *(off_27EE134B8 + 27);
    v10[0] = 67176449;
    v10[1] = v2;
    v11 = 1;
    v12 = 4;
    v13 = v3;
    v14 = 1025;
    v15 = v4;
    v16 = 1025;
    v17 = v5;
    v18 = 1025;
    v19 = v6;
    v20 = 1025;
    v21 = v7;
    v22 = 1025;
    v23 = v8;
    v24 = 1;
    v25 = 4;
    v26 = v9;
    _os_log_debug_impl(&dword_245396000, v0, OS_LOG_TYPE_DEBUG, "#gpsd,#posp,#lpp,config,gps_support,%{private}d,gps_mode,%{private}d,ecall_ongoing,%{private}d,cplane_support,%{private}d,cp_lr,%{private}d,lte_ecid_support,%{private}d,nr_ecid_support,%{private}d,active_rat,%{private}d", v10, 0x32u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void sub_24547A8DC(uint64_t a1, uint64_t *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v3 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gem,#lpp,#cplane,lpp msg received", buf, 2u);
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_2453AE4E0(&__p, *a2, a2[1], a2[1] - *a2);
  v4 = v18 - __p;
  v5 = (v18 - __p + 2);
  v6 = malloc_type_calloc(1uLL, v5, 0x57089378uLL);
  bzero(v6, v5);
  v21 = v6;
  sub_2454683F0("fill_lpp_data", 292, v6 + 1, v18 - __p, __p, (v18 - __p));
  v7 = 0;
  *v6 = bswap32(v4) >> 16;
  v20 = v4 + 2;
  v8 = 48;
  v9 = "71001123";
  v10 = MEMORY[0x277D85DE0];
  do
  {
    if ((v8 & 0x80) == 0 && (*(v10 + 4 * v8 + 60) & 0x400) != 0)
    {
      LOBYTE(v11) = v8 - 48;
    }

    else
    {
      v11 = __toupper(v8) - 55;
    }

    v12 = *(v9 - 1);
    if ((v12 & 0x80000000) == 0 && (*(v10 + 4 * v12 + 60) & 0x400) != 0)
    {
      v13 = v12 - 48;
    }

    else
    {
      v13 = __toupper(v12) - 55;
    }

    buf[v7++] = v13 + 16 * v11;
    v14 = *v9;
    v9 += 2;
    v8 = v14;
  }

  while (v7 != 5);
  v22 = 5;
  v15 = malloc_type_calloc(1uLL, 5uLL, 0x57089378uLL);
  v23 = v15;
  *v15 = *buf;
  *(v15 + 7) = *&buf[7];
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  sub_2454485A8(off_27EE134B8, &v20);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_24547AB04(unsigned int a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gem,#lpp,#cplane,sending lpp msg", buf, 2u);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_2453AE4E0(&v11, a2, a2 + a1, a1);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *buf = dispatch_queue_create("com.gnss.cplaneq", v5);
  v6 = sub_2453B4548();
  __p = 0;
  v9 = 0;
  v10 = 0;
  sub_2453AE4E0(&__p, v11, v12, v12 - v11);
  sub_2453B47B4(v6, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_24547BEE4(buf);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_24547AC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, dispatch_object_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24547BEE4(&a15);
  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_24547AC9C(int a1, int a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "CplaneLppExecutePosRsp");
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE3(v21) & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = *__p;
    }

    v18 = 136315138;
    v19 = v16;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", &v18, 0xCu);
  }

  if (SBYTE3(v21) < 0)
  {
    operator delete(*__p);
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 67109120;
    *&__p[4] = a2;
    _os_log_impl(&dword_245396000, v7, OS_LOG_TYPE_DEFAULT, "LPP Sub Msg Type,%u", __p, 8u);
  }

  if ((a2 & 0xFFFFFFFD) != 0)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "LPP message", __p, 2u);
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    *&v26[20] = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v9 = *(a3 + 80);
    v24 = *(a3 + 64);
    v25 = v9;
    *v26 = *(a3 + 96);
    v10 = *(a3 + 16);
    *&__p[4] = *a3;
    v21 = v10;
    v11 = *(a3 + 48);
    v22 = *(a3 + 32);
    v12 = *a3 != 0;
    v13 = *(a3 + 117);
    *__p = 1;
    *&v26[13] = *(a3 + 109);
    v23 = v11;
    v26[21] = v13;
    LOBYTE(v35) = v13;
    DWORD1(v35) = 2 * v12;
    *&v36 = -1;
    *(&v36 + 1) = 0xFFFF7FFFFFFFFFFFLL;
    *&v37 = -1;
    sub_245448F48(off_27EE134B8, __p, 2, a1);
  }

  sub_2453B414C(__p, "CplaneLppExecutePosRsp");
  v14 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE3(v21) & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = *__p;
    }

    v18 = 136315138;
    v19 = v17;
    _os_log_debug_impl(&dword_245396000, v14, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", &v18, 0xCu);
  }

  if (SBYTE3(v21) < 0)
  {
    operator delete(*__p);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_24547AF64()
{
  v0 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_245396000, v0, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, sending LTE Meas error, no response for ECID req", v2, 2u);
  }

  v1 = malloc_type_calloc(1uLL, 0x58uLL, 0x57089378uLL);
  v1[3] = 0u;
  v1[4] = 0u;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *(v1 + 10) = 0;
  *(v1 + 8) = 1;
  *(v1 + 18) = 1;
  *(v1 + 78) = 1;
  sub_2454518D4(off_27EE134B8, v1);
}

void sub_24547B014(int a1)
{
  if (a1 == 2)
  {
    v3 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#lpp, setting RAT to NR", v4, 2u);
    }

    v2 = 4;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v1 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v1, OS_LOG_TYPE_DEBUG, "#lpp, setting RAT to LTE", buf, 2u);
    }

    v2 = 3;
LABEL_9:
    *(off_27EE134B8 + 27) = v2;
  }

  sub_24547A7C8();
}

void sub_24547B0EC(uint64_t a1)
{
  v113 = *MEMORY[0x277D85DE8];
  v2 = &qword_2813CF000;
  v3 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v106 = 0;
    _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received meas response, cancelling timer", v106, 2u);
  }

  v4 = sub_2454616D4();
  sub_245461C8C(v4);
  v5 = off_27EE134B8;
  if (!*(off_27EE134B8 + 105) && !*(off_27EE134B8 + 48))
  {
    goto LABEL_105;
  }

  v6 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v106 = 0;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received meas response", v106, 2u);
    v5 = off_27EE134B8;
    v6 = qword_2813CF020;
  }

  v7 = *(v5 + 27);
  if (v7 != 4)
  {
    if (v7 != 3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v106 = 0;
        _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#lpp,#cplane,#ecid, Invalid RAT", v106, 2u);
      }

      goto LABEL_105;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v106 = 0;
      _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received meas response for LTE", v106, 2u);
    }

    *v94 = *a1;
    *&v94[9] = *(a1 + 9);
    v96 = 0;
    v97 = 0;
    __p = 0;
    sub_2453AADE8(&__p, *(a1 + 32), *(a1 + 40), 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 40) - *(a1 + 32)) >> 3));
    v8 = *(a1 + 61);
    v98[0] = *(a1 + 56);
    *(v98 + 5) = v8;
    memset(v99, 0, sizeof(v99));
    sub_2453AAF00(v99, *(a1 + 72), *(a1 + 80), 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    v9 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v106 = 0;
      _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received LTE meas response", v106, 2u);
    }

    if (v94[0] != 1 || v94[24] != 1 || v96 == __p)
    {
      if (v94[1] == 1)
      {
        v59 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *v106 = 0;
          _os_log_debug_impl(&dword_245396000, v59, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, LTE Meas error", v106, 2u);
        }

        sub_24547AF64();
      }

LABEL_102:
      *v106 = v99;
      sub_2453AB2A4(v106);
      v81 = __p;
      if (__p)
      {
        v96 = __p;
        goto LABEL_104;
      }

      goto LABEL_105;
    }

    v10 = qword_2813CF020;
    v11 = (-15 * ((v96 - __p) >> 3));
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v106 = 67109120;
      *&v106[4] = v11;
      _os_log_debug_impl(&dword_245396000, v10, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received LTE meas success, number of meas,%d", v106, 8u);
    }

    v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x57089378uLL);
    v12[10] = 0;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    if (v11 < 2)
    {
      if (!v11)
      {
        v85 = 0;
LABEL_101:
        *(v12 + 60) = v85;
        sub_2454518D4(off_27EE134B8, v12);
        goto LABEL_102;
      }
    }

    else
    {
      v13 = malloc_type_calloc(1uLL, 40 * v11 - 40, 0x57089378uLL);
      bzero(v13, 40 * v11 - 40);
      v12[8] = v13;
      *(v12 + 81) = 0;
      *v12 = 0;
    }

    v85 = 0;
    v64 = v11;
    v65 = 128;
    do
    {
      v66 = *(__p + v65 - 120);
      v67 = *(__p + v65 - 112);
      v68 = *(__p + v65 - 96);
      v69 = *(__p + v65 - 88);
      v71 = *(__p + v65 - 80);
      v70 = *(__p + v65 - 72);
      v72 = *(__p + v65 - 56);
      v73 = *(__p + v65 - 40);
      v75 = *(__p + v65 - 32);
      v74 = *(__p + v65 - 24);
      v76 = *(__p + v65 - 16);
      v77 = *(__p + v65);
      if (*(__p + v65 - 128))
      {
        *(v12 + 16) = 1;
        *(v12 + 26) = v71;
        *(v12 + 27) = v70;
        *(v12 + 28) = v74;
        *(v12 + 48) = v73 & 1;
        *(v12 + 25) = v75;
        *(v12 + 10) = v69;
        *(v12 + 6) = v72 & 1;
        *(v12 + 7) = v76;
        *(v12 + 8) = v77 & 1;
        *(v12 + 11) = v68;
        v84 = v66;
        *(v12 + 18) = v66;
        *(v12 + 19) = v67;
        if (v67 >= 0x64)
        {
          *(v12 + 10) = 1;
        }

        log = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *v106 = 134285313;
          *&v106[4] = v71;
          *&v106[12] = 2049;
          *&v106[14] = v70;
          *&v106[22] = 2049;
          *&v106[24] = v74;
          *v107 = 2049;
          *&v107[2] = v69;
          *&v107[10] = 2049;
          *&v107[12] = v75;
          *&v107[20] = 2049;
          *&v107[22] = v68;
          *&v107[30] = 2049;
          *v108 = v84;
          *&v108[8] = 2049;
          *&v108[10] = v67;
          _os_log_debug_impl(&dword_245396000, log, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, LTE serving cell meas,rsrp,%{private}lu,rsrq,%{private}lu,ue_tx_rx,%{private}lu,pci,%{private}lu,sfn,%{private}lu,cellId,%{private}lu,mcc,%{private}lu,mnc,%{private}lu", v106, 0x52u);
        }
      }

      else
      {
        v78 = v12[8];
        v79 = v78 + 40 * v85;
        *(v79 + 32) = v71;
        *(v79 + 34) = v70;
        *(v79 + 36) = v74;
        *(v79 + 28) = v73 & 1;
        *(v79 + 30) = v75;
        *(v79 + 4) = v72 & 1;
        *(v79 + 8) = v76;
        *(v79 + 12) = v77 & 1;
        *(v79 + 24) = v68;
        *v79 = v69;
        *(v79 + 16) = v66;
        *(v79 + 18) = v67;
        if (v67 >= 0x64)
        {
          *(v78 + 40 * v85 + 20) = 1;
        }

        v80 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *v106 = 67109120;
          *&v106[4] = v85;
          _os_log_debug_impl(&dword_245396000, v80, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, LTE neighbouring cell meas,%d", v106, 8u);
        }

        ++v85;
      }

      v65 += 136;
      --v64;
    }

    while (v64);
    goto LABEL_101;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v106 = 0;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received meas response for NR", v106, 2u);
  }

  *v86 = *a1;
  *&v86[9] = *(a1 + 9);
  v88 = 0;
  v89 = 0;
  v87 = 0;
  sub_2453AADE8(&v87, *(a1 + 32), *(a1 + 40), 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 40) - *(a1 + 32)) >> 3));
  v14 = *(a1 + 61);
  *v90 = *(a1 + 56);
  *&v90[5] = v14;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  sub_2453AAF00(&v91, *(a1 + 72), *(a1 + 80), 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  v15 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v106 = 0;
    _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, NR Meas received", v106, 2u);
  }

  if (v90[12] == 1 && v86[0] == 1 && v92 != v91)
  {
    v16 = qword_2813CF020;
    v17 = (-15 * ((v92 - v91) >> 3));
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v106 = 67109120;
      *&v106[4] = v17;
      _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, NR Meas success, no of meas,%d", v106, 8u);
    }

    v18 = malloc_type_calloc(1uLL, 0x80uLL, 0x57089378uLL);
    v19 = v18;
    v18[6] = 0u;
    v18[7] = 0u;
    v18[4] = 0u;
    v18[5] = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    *v18 = 0u;
    v18[1] = 0u;
    if (v17)
    {
      v20 = malloc_type_calloc(1uLL, 80 * v17 - 80, 0x57089378uLL);
      bzero(v20, 80 * v17 - 80);
      v21 = 0;
      v22 = 0;
      *(v19 + 104) = v20;
      *v19 = 3;
      v23 = v17;
      do
      {
        v24 = v91 + 136 * v21;
        v25 = *(v24 + 16);
        *v106 = *v24;
        *&v106[16] = v25;
        v26 = *(v24 + 32);
        v27 = *(v24 + 48);
        v28 = *(v24 + 80);
        *v108 = *(v24 + 64);
        *&v108[16] = v28;
        *v107 = v26;
        *&v107[16] = v27;
        v110 = 0;
        v111 = 0;
        v109 = 0;
        sub_2453AB104(&v109, *(v24 + 96), *(v24 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(v24 + 104) - *(v24 + 96)) >> 3));
        v112 = *(v24 + 120);
        if (v106[0] == 1)
        {
          v29 = v2[4];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_245396000, v29, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, NR Meas of serving cell", buf, 2u);
          }

          v30 = *&v106[16];
          *(v19 + 40) = *&v106[24];
          *(v19 + 28) = 1;
          *(v19 + 32) = *&v106[8];
          *(v19 + 34) = v30;
          if (v30 >= 0x64)
          {
            *(v19 + 36) = 1;
          }

          v31 = v22;
          if (!*v107)
          {
            *(v19 + 18) = 1;
            *(v19 + 20) = 0;
            *(v19 + 24) = *&v107[8];
          }

          v32 = v23;
          v33 = v2;
          if (v107[16] == 1)
          {
            *(v19 + 44) = 1;
            *(v19 + 46) = *&v107[24];
          }

          v34 = *v108;
          *(v19 + 16) = *v108;
          *(v19 + 48) = 1;
          *(v19 + 50) = 1;
          v35 = *&v108[8];
          *(v19 + 52) = *&v108[8];
          *(v19 + 54) = 1;
          v36 = *&v108[16];
          *(v19 + 56) = *&v108[16];
          v37 = v33[4];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109632;
            v101 = v34;
            v102 = 1024;
            v103 = v35;
            v104 = 1024;
            v105 = v36;
            _os_log_debug_impl(&dword_245396000, v37, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Serving cell meas, pci,%d,,rsrp,%d, rsrq,%d", buf, 0x14u);
          }

          v38 = *&v108[24];
          if (*&v108[24])
          {
            *(v19 + 69) = v108[24];
            *(v19 + 68) = 1;
            v39 = (10 * v38);
            v23 = v32;
            v22 = v31;
            v40 = malloc_type_calloc(1uLL, v39, 0x57089378uLL);
            bzero(v40, v39);
            *(v19 + 72) = v40;
            v41 = *&v108[24];
            if (*&v108[24])
            {
              v42 = (v109 + 16);
              v43 = v40 + 4;
              v2 = v33;
              do
              {
                *(v43 - 2) = *(v42 - 2);
                *(v43 - 2) = 1;
                *v43 = *(v42 - 1);
                v43[2] = 1;
                v44 = *v42;
                v42 += 3;
                *(v43 + 2) = v44;
                v43 += 10;
                --v41;
              }

              while (v41);
            }

            else
            {
              v2 = v33;
            }
          }

          else
          {
            v2 = v33;
            v23 = v32;
            v22 = v31;
          }
        }

        else
        {
          v45 = *(v19 + 104);
          *(v45 + 80 * v22 + 24) = *&v106[24];
          if (!*v107)
          {
            v46 = v45 + 80 * v22;
            *(v46 + 2) = 1;
            *(v46 + 4) = 0;
            *(v46 + 8) = *&v107[8];
            v45 = *(v19 + 104);
          }

          if (v107[16] == 1)
          {
            v47 = v45 + 80 * v22;
            *(v47 + 28) = 1;
            *(v47 + 30) = *&v107[24];
          }

          v48 = v45 + 80 * v22;
          *v48 = *v108;
          *(v48 + 32) = 1;
          *(v48 + 34) = 1;
          *(v48 + 36) = *&v108[8];
          *(v48 + 38) = 1;
          *(v48 + 40) = *&v108[16];
          v49 = *&v108[24];
          if (*&v108[24])
          {
            v50 = v2;
            v51 = v45 + 80 * v22;
            *(v51 + 53) = v108[24];
            *(v51 + 52) = 1;
            v52 = (10 * v49);
            v53 = malloc_type_calloc(1uLL, v52, 0x57089378uLL);
            bzero(v53, v52);
            *(*(v19 + 104) + 80 * v22 + 56) = v53;
            v54 = *&v108[24];
            v2 = v50;
            if (*&v108[24])
            {
              v55 = (v109 + 16);
              v56 = v53 + 4;
              do
              {
                *(v56 - 2) = *(v55 - 2);
                *(v56 - 2) = 1;
                *v56 = *(v55 - 1);
                v56[2] = 1;
                v57 = *v55;
                v55 += 3;
                *(v56 + 2) = v57;
                v56 += 10;
                --v54;
              }

              while (v54);
            }
          }

          v58 = v2[4];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            v101 = v22;
            _os_log_debug_impl(&dword_245396000, v58, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, NR neighbouring cell meas,%d", buf, 8u);
          }

          v22 = (v22 + 1);
        }

        if (v109)
        {
          v110 = v109;
          operator delete(v109);
        }

        ++v21;
      }

      while (v21 != v23);
    }

    else
    {
      LOBYTE(v22) = 0;
      *v18 = 3;
    }

    *(v19 + 96) = v22;
    goto LABEL_97;
  }

  if (v90[0] != 1)
  {
    goto LABEL_98;
  }

  v60 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v106 = 0;
    _os_log_debug_impl(&dword_245396000, v60, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, NR Meas failure", v106, 2u);
  }

  v61 = malloc_type_calloc(1uLL, 0x80uLL, 0x57089378uLL);
  v19 = v61;
  v61[6] = 0u;
  v61[7] = 0u;
  v61[4] = 0u;
  v61[5] = 0u;
  v61[2] = 0u;
  v61[3] = 0u;
  *v61 = 0u;
  v61[1] = 0u;
  *(v61 + 8) = 1;
  if ((*&v90[4] - 1) <= 2)
  {
    *(v61 + 28) = *&v90[4] - 1;
  }

  if (*&v90[8] == 1)
  {
    v63 = 0;
    goto LABEL_79;
  }

  v62 = 0;
  if (*&v90[8] == 2)
  {
    v63 = 1;
LABEL_79:
    *(v61 + 30) = v63;
    v62 = 1;
  }

  *(v61 + 116) = v62;
LABEL_97:
  sub_24545190C(off_27EE134B8, v19);
LABEL_98:
  *v106 = &v91;
  sub_2453AB2A4(v106);
  v81 = v87;
  if (v87)
  {
    v88 = v87;
LABEL_104:
    operator delete(v81);
  }

LABEL_105:
  v82 = *MEMORY[0x277D85DE8];
}

void sub_24547BE20()
{
  v0 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_245396000, v0, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, sending NR Meas error, no response for ECID req", v2, 2u);
  }

  v1 = malloc_type_calloc(1uLL, 0x80uLL, 0x57089378uLL);
  *(v1 + 4) = 0u;
  *(v1 + 100) = 0u;
  v1[7] = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 36) = 0u;
  *(v1 + 52) = 0u;
  *(v1 + 68) = 0u;
  *(v1 + 84) = 0u;
  *v1 = 3;
  *(v1 + 8) = 1;
  *(v1 + 28) = 1;
  sub_24545190C(off_27EE134B8, v1);
}

dispatch_object_t *sub_24547BEE4(dispatch_object_t *a1)
{
  v2 = (a1 + 5);
  dispatch_release(*a1);
  *a1 = 0;
  sub_2453AB6D8((a1 + 25));
  sub_2453AB658((a1 + 21));
  sub_2453AB5D8((a1 + 17));
  sub_2453AB558((a1 + 13));
  sub_2453AB4D8((a1 + 9));
  sub_2453AB458(v2);
  sub_2453AB3D8((a1 + 1));
  return a1;
}

void sub_24547BF5C(uint64_t a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 24))
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,Null parameter Leaving setSuplProtoLocationIdNeededReport", v10, 2u);
    }
  }

  sub_245481638(v10, a2);
  v5 = a1 + 32;
  if (v10 != (a1 + 32))
  {
    v6 = v11;
    v7 = *(a1 + 56);
    if (v11 == v10)
    {
      if (v7 == v5)
      {
        (*(*v11 + 24))();
        (*(*v11 + 32))(v11);
        v11 = 0;
        (*(**(a1 + 56) + 24))(*(a1 + 56), v10);
        (*(**(a1 + 56) + 32))(*(a1 + 56));
        *(a1 + 56) = 0;
        v11 = v10;
        (*(v12[0] + 24))(v12, a1 + 32);
        (*(v12[0] + 32))(v12);
      }

      else
      {
        (*(*v11 + 24))();
        (*(*v11 + 32))(v11);
        v11 = *(a1 + 56);
      }

      *(a1 + 56) = v5;
    }

    else if (v7 == v5)
    {
      (*(*v7 + 24))(*(a1 + 56), v10);
      (*(**(a1 + 56) + 32))(*(a1 + 56));
      *(a1 + 56) = v11;
      v11 = v10;
    }

    else
    {
      v11 = *(a1 + 56);
      *(a1 + 56) = v6;
    }
  }

  sub_2453ABF84(v10);
  v8 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_245396000, v8, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,Leaving setSuplProtoLocationIdNeededReport", v10, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_24547C270(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2453A3640(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24547C27C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  sub_245481638(v3, a1 + 32);
  if (!v4)
  {
    sub_2453A5EE4();
  }

  (*(*v4 + 48))(v4);
  result = sub_2453ABF84(v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24547C334()
{
  v5 = *MEMORY[0x277D85DE8];
  if (qword_2813CEDA8 != -1)
  {
    dispatch_once(&qword_2813CEDA8, &unk_28585A8B8);
  }

  result = qword_2813CEDA0;
  if (!qword_2813CEDA0)
  {
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "%s", &v3, 0xCu);
    }

    __assert_rtn("GetInstance", "SuplBridge.mm", 92, "false && Memory allocation failure");
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_24547C42C()
{
  result = operator new(0x1A8uLL, MEMORY[0x277D826F0]);
  v1 = result;
  if (result)
  {
    *(result + 152) = 0u;
    *(result + 3) = 0;
    *(result + 7) = 0;
    *(result + 8) = 0;
    *(result + 18) = 0;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 14) = -1;
    *(result + 15) = 0xFFFFFFFF7FFFFFFFLL;
    *(result + 64) = -1;
    *(result + 132) = -1;
    *(result + 140) = -1;
    *(result + 37) = -1;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 232) = 0u;
    *(result + 248) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *(result + 296) = 0u;
    *(result + 312) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    v2 = result + 156;
    *(result + 360) = 0u;
    *(result + 376) = 0u;
    v3 = 256;
    *(result + 392) = 0u;
    do
    {
      *(v2 - 2) = -1;
      *(v2 - 2) = -1;
      *v2 = -1;
      v2[8] = -1;
      v2 += 16;
      v3 -= 16;
    }

    while (v3);
    result[408] = -1;
    *(result + 103) = -1;
    *(result + 52) = -1;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    result = dispatch_queue_create("com.gnss.suplq", v4);
    *(v1 + 88) = result;
  }

  qword_2813CEDA0 = v1;
  return result;
}

void sub_24547C530(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  data = dispatch_source_get_data(*(a1 + 32));
  if (!data)
  {
    goto LABEL_22;
  }

  v3 = data;
  if ((*(**(v1 + 64) + 32))(*(v1 + 64)) == -3)
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd,#supl,readSocketData,Invalid Session while Reading", &__p, 2u);
    }

    v5 = sub_24546E30C();
    (*(*v5 + 32))(v5, *(v1 + 72), 14);
    goto LABEL_22;
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = v3;
    _os_log_impl(&dword_245396000, v6, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,readSocketData,Bytes on Sock,%llu", buf, 0xCu);
  }

  v7 = (*(**(v1 + 64) + 8))(*(v1 + 64), &__p);
  v8 = v7;
  if (v7 == -4)
  {
    v9 = 11;
  }

  else
  {
    if (v7 != -3)
    {
      v12 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v19) = v8;
        _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd,#supl,readSocketData,Byte written,%d", buf, 8u);
        v12 = qword_2813CF018;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v19) = v16 - __p;
        _os_log_impl(&dword_245396000, v12, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#in,readSocketData,Socket read buf size,%u,continue to process supl", buf, 8u);
      }

      v13 = sub_24546E30C();
      (*(*v13 + 40))(v13, *(v1 + 72), &__p);
      goto LABEL_20;
    }

    v9 = 10;
  }

  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v19) = v9;
    _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd,#supl,readSocketData,Socket read fail , disconnecting,%u", buf, 8u);
  }

  v11 = sub_24546E30C();
  (*(*v11 + 32))(v11, *(v1 + 72), v9);
LABEL_20:
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_24547C840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24547C868(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,readSocketData,cancel called,disconnecting supl", v7, 2u);
  }

  *(v2 + 72) = 0;
  v4 = (*(**(v2 + 64) + 24))(*(v2 + 64));
  if (v4 < 0xFFFFFFFB)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(&unk_245491C10 + v4 + 5);
  }

  v6 = sub_24546E30C();
  (*(*v6 + 32))(v6, *(v2 + 72), v5);
  dispatch_release(*(a1 + 32));
}

void sub_24547C960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 64) + 32))(*(a1 + 64)) == -3)
  {
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_245396000, v5, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,writeDataToSocket,Invalid Socket during Write", &v14, 2u);
    }

LABEL_11:
    v10 = sub_24546E30C();
    v11 = *(a1 + 72);
    (*(*v10 + 32))();
    goto LABEL_12;
  }

  v6 = (*(**(a1 + 64) + 16))(*(a1 + 64), a3);
  if (v6 == -3)
  {
    v8 = 12;
LABEL_9:
    v9 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = v8;
      _os_log_impl(&dword_245396000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,writeDataToSocket,Socket write,%u", &v14, 8u);
    }

    goto LABEL_11;
  }

  v7 = v6;
  if (v6 == -4)
  {
    v8 = 13;
    goto LABEL_9;
  }

  v13 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    v15 = v7;
    _os_log_impl(&dword_245396000, v13, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,writeDataToSocket,Byte written,%d", &v14, 8u);
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24547CB70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    sub_24546FD48(__p, *a2, a2[1]);
  }

  else
  {
    *__p = *a2;
    v21 = a2[2];
  }

  v9 = (**v8)(v8, __p, a3);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v11 = "FAILURE";
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 1024;
    if (v9 == -2)
    {
      v11 = "SUCCESS";
    }

    *&buf[14] = a3;
    *&buf[18] = 2080;
    *&buf[20] = v11;
    *&buf[28] = 1024;
    *&buf[30] = v9;
    _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,ConnectToServer,Connection fqdn,%s,%u,status,%s,%d", buf, 0x22u);
  }

  v12 = 0;
  if (v9 <= -4)
  {
    if (v9 == -5)
    {
      v12 = 7;
    }

    else if (v9 == -4)
    {
      v12 = 9;
    }
  }

  else
  {
    switch(v9)
    {
      case -3:
        v12 = 8;
        break;
      case -1:
        v12 = 5;
        break;
      case -2:
        *(a1 + 72) = a4;
        v13 = (*(**(a1 + 64) + 32))(*(a1 + 64));
        v14 = dispatch_source_create(MEMORY[0x277D85D28], v13, 0, *(a1 + 88));
        if (v14)
        {
          v15 = v14;
          *(a1 + 80) = v14;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = sub_24547C530;
          *&buf[24] = &unk_278E36C68;
          *&buf[32] = v14;
          v24 = a1;
          dispatch_source_set_event_handler(v14, buf);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = sub_24547C868;
          handler[3] = &unk_278E36C68;
          handler[4] = v15;
          handler[5] = a1;
          dispatch_source_set_cancel_handler(v15, handler);
          dispatch_resume(v15);
        }

        else
        {
          v16 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd,#supl,readSocketData,SUPL Socket read failed", buf, 2u);
          }
        }

        v12 = 6;
        break;
    }
  }

  v17 = sub_24546E30C();
  result = (*(*v17 + 24))(v17, a4, v12);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24547CEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24547CECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 1;
  v5 = *(v1 + 72);
  v2 = *sub_24546E30C();
  return (*v2)();
}

void sub_24547CF44(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (*(a2 + 24))
  {
    sub_2454816D0(v7, a2);
    if (v7 != a1)
    {
      v3 = v8;
      v4 = *(a1 + 24);
      if (v8 == v7)
      {
        if (v4 == a1)
        {
          (*(*v8 + 24))();
          (*(*v8 + 32))(v8);
          v8 = 0;
          (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
          (*(**(a1 + 24) + 32))(*(a1 + 24));
          *(a1 + 24) = 0;
          v8 = v7;
          (*(v9[0] + 24))(v9, a1);
          (*(v9[0] + 32))(v9);
        }

        else
        {
          (*(*v8 + 24))();
          (*(*v8 + 32))(v8);
          v8 = *(a1 + 24);
        }

        *(a1 + 24) = a1;
      }

      else if (v4 == a1)
      {
        (*(*v4 + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = v8;
        v8 = v7;
      }

      else
      {
        v8 = *(a1 + 24);
        *(a1 + 24) = v3;
      }
    }

    sub_2453ABB5C(v7);
  }

  else
  {
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_245396000, v5, OS_LOG_TYPE_DEFAULT, "StatusReport callback NULL", v7, 2u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24547D20C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2453A3640(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24547D218(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = 0;
  v11 = 0;
  v15 = 0;
  *&v18[7] = 0;
  *&v18[3] = 0;
  v2 = *(v1 + 104);
  v9[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v9[1] = xmmword_245486E00;
  __asm { FMOV            V0.2D, #-1.0 }

  v9[2] = _Q0;
  v12 = _Q0;
  v13 = 0xBFF0000000000000;
  v14 = 0;
  *&v16[14] = 0;
  *v16 = *v18;
  v17 = -1;
  result = *(v2 + 496);
  if (result)
  {
    return (*(*result + 48))(result, v9);
  }

  return result;
}

void sub_24547D2BC(uint64_t a1, unsigned int *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  *(&v51 + 1) = 0;
  v52 = xmmword_245491C00;
  v53 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  __asm { FMOV            V0.2D, #-1.0 }

  v54 = _Q0;
  *&v55 = 0xBFF0000000000000;
  WORD4(v55) = 0;
  BYTE10(v55) = 0;
  HIDWORD(v55) = 0;
  v56 = v53;
  v57 = xmmword_245486E00;
  *&v58 = 0xBFF0000000000000;
  WORD4(v58) = -1;
  LODWORD(v59) = -1;
  WORD2(v59) = -1;
  *(&v59 + 1) = 0xBFF0000000000000;
  *&v51 = *a2;
  sub_24547DC9C(a2[6], &v51 + 1);
  v9 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a2[4];
    v10 = a2[5];
    v12 = a2[7];
    *buf = 67109632;
    *&buf[4] = v10;
    *&buf[8] = 1024;
    *&buf[10] = v11;
    *&buf[14] = 1024;
    *&buf[16] = v12;
    _os_log_impl(&dword_245396000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#out,sendSuplStatusReport,SUPL Event,%u,SessionStatus,%u,SuplEndCause,%u", buf, 0x14u);
  }

  v13 = a2[5];
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      goto LABEL_16;
    }

    if (v13 == 2)
    {
      v14 = *(a1 + 96);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_24547D218;
      v63 = COERCE_DOUBLE(&unk_278E36C40);
      *v64 = a1;
      dispatch_async(v14, buf);
    }
  }

  else
  {
    switch(v13)
    {
      case 3:
        v13 = 13;
        goto LABEL_16;
      case 6:
        v13 = 30;
        goto LABEL_16;
      case 7:
        v13 = 29;
LABEL_16:
        DWORD2(v51) = v13;
        goto LABEL_17;
    }
  }

  if (!DWORD2(v51))
  {
    switch(a2[4])
    {
      case 5u:
      case 8u:
        v13 = 3;
        goto LABEL_16;
      case 6u:
        v13 = 2;
        goto LABEL_16;
      case 7u:
        v13 = 5;
        goto LABEL_16;
      case 9u:
        v13 = 4;
        goto LABEL_16;
      case 0xAu:
        v13 = 6;
        goto LABEL_16;
      case 0xBu:
        v13 = 7;
        goto LABEL_16;
      case 0xCu:
        v13 = 8;
        goto LABEL_16;
      case 0xDu:
        v13 = 9;
        goto LABEL_16;
      case 0xEu:
        v13 = 12;
        goto LABEL_16;
      case 0xFu:
        v13 = 11;
        goto LABEL_16;
      case 0x10u:
        v13 = 10;
        goto LABEL_16;
      case 0x12u:
      case 0x19u:
        v13 = 26;
        goto LABEL_16;
      case 0x13u:
      case 0x1Au:
        v13 = 20;
        goto LABEL_16;
      case 0x14u:
      case 0x1Bu:
        v13 = 27;
        goto LABEL_16;
      case 0x15u:
      case 0x1Cu:
        v13 = 21;
        goto LABEL_16;
      case 0x16u:
        v13 = 28;
        goto LABEL_16;
      case 0x17u:
        v13 = 22;
        goto LABEL_16;
      case 0x1Du:
        v13 = 17;
        goto LABEL_16;
      case 0x1Eu:
        v13 = 18;
        goto LABEL_16;
      case 0x1Fu:
        v13 = 19;
        goto LABEL_16;
      case 0x20u:
        v13 = 23;
        goto LABEL_16;
      case 0x21u:
        v13 = 24;
        goto LABEL_16;
      case 0x22u:
        v13 = 25;
        goto LABEL_16;
      case 0x23u:
        DWORD2(v51) = 14;
        BYTE9(v55) = 1;
        break;
      case 0x24u:
        DWORD2(v51) = 15;
        BYTE10(v55) = 1;
        break;
      case 0x25u:
        DWORD2(v51) = 16;
        BYTE8(v55) = 1;
        break;
      default:
        break;
    }
  }

LABEL_17:
  if (a2[7] <= 0x16)
  {
    HIDWORD(v51) = a2[7];
  }

  v15 = *(a2 + 32);
  if (v15 == 255)
  {
    v16 = -1.0;
  }

  else
  {
    v16 = (pow(1.1, v15) + -1.0) * 10.0;
  }

  *&v52 = v16;
  v17 = *(a2 + 1);
  if (v17 && *(v17 + 20) == 1)
  {
    v18 = *(v17 + 36);
    if (v18 >> 23)
    {
      v21 = 1.79769313e308;
    }

    else
    {
      v19 = 90 * v18;
      v20 = vcvtd_n_f64_u32(v19, 0x17uLL);
      v21 = -(v19 * 0.00000011920929);
      if (*(v17 + 32) != 2)
      {
        v21 = v20;
      }
    }

    *(&v52 + 1) = v21;
    v22 = *(v17 + 40);
    if ((v22 + 0x800000) >> 24)
    {
      v23 = 1.79769313e308;
    }

    else
    {
      if ((v22 & 0x800000) != 0)
      {
        v22 |= 0xFF000000;
      }

      v23 = v22 * 360.0 * 0.0000000596046448;
    }

    v24 = *(v17 + 44);
    if (*(v17 + 52) == 2)
    {
      v24 = -v24;
    }

    if (*(v17 + 44) < 0)
    {
      v24 = 1.79769313e308;
    }

    *v53.i64 = v23;
    *&v53.i64[1] = v24;
    v25 = *(v17 + 46);
    if (v25 != 255)
    {
      *&v54 = v25;
    }

    v26 = *(v17 + 47);
    if (v26 != 255)
    {
      *(&v54 + 1) = v26;
    }

    v27 = *(v17 + 56);
    if (v27 != 255)
    {
      *&v55 = v27;
    }
  }

  if (BYTE10(v55) == 1)
  {
    v28 = *(a1 + 116);
    if (v28 >> 23)
    {
      v31 = 1.79769313e308;
    }

    else
    {
      v29 = 90 * v28;
      v30 = vcvtd_n_f64_u32(v29, 0x17uLL);
      if (*(a1 + 113))
      {
        v31 = -(v29 * 0.00000011920929);
      }

      else
      {
        v31 = v30;
      }
    }

    v32 = *(a1 + 124);
    *v56.i64 = v31;
    v33 = *(a1 + 120);
    if ((v33 + 0x800000) >> 24)
    {
      v34 = 1.79769313e308;
    }

    else
    {
      if ((v33 & 0x800000) != 0)
      {
        v33 |= 0xFF000000;
      }

      v34 = v33 * 360.0 * 0.0000000596046448;
    }

    v35 = *(a1 + 114);
    if (v32)
    {
      v35 = -v35;
    }

    if (*(a1 + 114) < 0)
    {
      v36 = 1.79769313e308;
    }

    else
    {
      v36 = v35;
    }

    *&v56.i64[1] = v34;
    *&v57 = v36;
    v37 = *(a1 + 125);
    v38 = -1.0;
    v39 = -1.0;
    if (v37 != 255)
    {
      v39 = (pow(1.1, v37) + -1.0) * 10.0;
    }

    *&v58 = v39;
    v40 = *(a1 + 126);
    if (v40 != 255)
    {
      v38 = (pow(1.025, v40) + -1.0) * 45.0;
    }

    *(&v57 + 1) = v38;
    v41 = *(a1 + 129);
    if (v41 != 255)
    {
      BYTE8(v58) = *(a1 + 129);
      BYTE9(v58) = v41;
    }

    v42 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134546945;
      *&buf[4] = v31;
      *&buf[12] = 2053;
      *&buf[14] = v34;
      *&buf[22] = 2053;
      v63 = v36;
      *v64 = 2049;
      *&v64[2] = v39;
      v65 = 2049;
      v66 = v38;
      v67 = 1025;
      v68 = BYTE8(v58);
      _os_log_debug_impl(&dword_245396000, v42, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#process,sendSuplStatusReport, RefLocLat,%{sensitive}.7lf,Long,%{sensitive}.7lf,Alt,%{sensitive}.2lf,HorUnc,%{private}.f,VerUnc,%{private}.f,conf,%{private}.d", buf, 0x3Au);
    }
  }

  if (BYTE9(v55) == 1)
  {
    if (*(a1 + 148) <= 0x3FFu)
    {
      WORD2(v59) = *(a1 + 148);
    }

    v43 = *(a1 + 144);
    if (v43 <= 0x240C83FF)
    {
      LODWORD(v59) = v43 / 0x3E8;
    }

    v44 = WORD2(v59);
    if (v43 != -1 && WORD2(v59) != 0xFFFF && *(a1 + 150) != 255)
    {
      *(&v59 + 1) = 0;
    }

    v45 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v44;
      *&buf[8] = 1024;
      *&buf[10] = v59;
      *&buf[14] = 2048;
      *&buf[16] = *(&v59 + 1);
      _os_log_impl(&dword_245396000, v45, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#process,sendSuplStatusReport,Week,%u,TowSec,%u,TowUnc,%.3lf", buf, 0x18u);
    }
  }

  if (*(&v51 + 4) || HIDWORD(v51) || fabs(*&v52 + 1.0) >= 2.22044605e-16 || fabs(*(&v52 + 1) + -1.79769313e308) >= 2.22044605e-16 || fabs(*v53.i64 + -1.79769313e308) >= 2.22044605e-16 || fabs(*&v53.i64[1] + -1.79769313e308) >= 2.22044605e-16 || fabs(*&v54 + 1.0) >= 2.22044605e-16 || fabs(*(&v54 + 1) + 1.0) >= 2.22044605e-16 || fabs(*&v55 + 1.0) >= 2.22044605e-16)
  {
    sub_2454816D0(buf, a1);
    if (v63 == 0.0)
    {
      v48 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 0;
        _os_log_impl(&dword_245396000, v48, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,sendSuplStatusReport,SuplStatusReportCB is NULL", v50, 2u);
      }
    }

    else
    {
      v47 = *(a1 + 96);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3321888768;
      block[2] = sub_24547DCBC;
      block[3] = &unk_28585A8D8;
      sub_2454816D0(v61, buf);
      v61[8] = v57;
      v61[9] = v58;
      v61[10] = v59;
      v61[4] = v53;
      v61[5] = v54;
      v61[6] = v55;
      v61[7] = v56;
      v61[2] = v51;
      v61[3] = v52;
      dispatch_async(v47, block);
      sub_2453ABB5C(v61);
    }

    sub_2453ABB5C(buf);
  }

  else
  {
    v46 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v46, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#out,sendSuplStatusReport,No Status report, returning", buf, 2u);
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_24547DC10(uint64_t a1, unsigned int a2, int a3, int a4, int a5, __int128 *a6)
{
  v13 = 0;
  v14 = 0;
  v12 = a2;
  v18 = -1;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  if (a6)
  {
    v8 = sub_245468268("SendSuplMsgStatus", 416, 1, 0x78uLL);
    v13 = v8;
    if (!v8)
    {
      return;
    }

    v9 = *a6;
    v10 = a6[1];
    v11 = a6[2];
    v8[16] = *(a6 + 12);
    *(v8 + 2) = v10;
    *(v8 + 3) = v11;
    *(v8 + 1) = v9;
  }

  sub_24547D2BC(a1, &v12);
}

uint64_t sub_24547DC9C(uint64_t result, _DWORD *a2)
{
  if ((result - 1) <= 0x10)
  {
    *a2 = dword_245491C24[(result - 1)];
  }

  return result;
}

void sub_24547DCBC(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_2453A5EE4();
  }

  (*(*v2 + 48))(v2, a1 + 64);
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 96);
    v6 = *(a1 + 104);
    v7 = *(a1 + 112);
    v8 = *(a1 + 120);
    v9 = *(a1 + 128);
    v11 = *(a1 + 64);
    v10 = *(a1 + 68);
    v12 = *(a1 + 72);
    v13 = *(a1 + 76);
    v14 = *(a1 + 80);
    v15 = *(a1 + 88);
    if (*(a1 + 136))
    {
      v16 = 84;
    }

    else
    {
      v16 = 70;
    }

    if (*(a1 + 137))
    {
      v17 = 84;
    }

    else
    {
      v17 = 70;
    }

    if (*(a1 + 138))
    {
      v18 = 84;
    }

    else
    {
      v18 = 70;
    }

    v19 = 134548993;
    v20 = v15;
    v21 = 2053;
    v22 = v5;
    v23 = 2053;
    v24 = v6;
    v25 = 2049;
    v26 = v7;
    v27 = 2049;
    v28 = v8;
    v29 = 2049;
    v30 = v9;
    v31 = 1024;
    v32 = v10;
    v33 = 1024;
    v34 = v12;
    v35 = 1024;
    v36 = v11;
    v37 = 1024;
    v38 = v13;
    v39 = 2048;
    v40 = v14;
    v41 = 1024;
    v42 = v16;
    v43 = 1024;
    v44 = v17;
    v45 = 1024;
    v46 = v18;
    _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#process,sendSuplStatusReport,Lat,%{sensitive}.7f,Long,%{sensitive}.7f,Alt,%{sensitive}.2f,SemMaj,%{private}.f,SemMin,%{private}.f,UncAlt,%{private}.f,PosMethod,%u,Status,%u,SessionId,%u,endCause,%u,HACC,%f,ephProvided,%c,refTimeProvided,%c,refLocProvided,%c", &v19, 0x72u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

BOOL sub_24547DE64(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[1] - *a1;
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v2;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#process,validateSuplInit,SUPL INIT len,%zd", &v12, 0xCu);
  }

  if ((v2 - 0x10000) > 0xFFFFFFFFFFFF0004)
  {
    v9 = __rev16(**a1);
    if (v2 == v9)
    {
      result = 1;
    }

    else
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v12 = 134218240;
        v13 = v2;
        v14 = 1024;
        v15 = v9;
        v6 = "#gpsd,#supl,#in,validateSuplInit,SuplInit Len,%zd mismatches SuplInitHadrLen,%u";
        v7 = v10;
        v8 = 18;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v4 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v12 = 134217984;
      v13 = v2;
      v6 = "#gpsd,#supl,#in,validateSuplInit,Invalid SUPL INIT message length,%zd";
      v7 = v4;
      v8 = 12;
LABEL_11:
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, v6, &v12, v8);
      result = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24547DFE4(char *__s1, uint64_t a2)
{
  v3 = __s1;
  v20 = *MEMORY[0x277D85DE8];
  if (__s1 && (v4 = strnlen(__s1, 0x100uLL), (v4 & 0xFFFFFEFF) == 0))
  {
    v16 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      v19 = v4;
      _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd,#supl,convertStringIPtoVect,Wrong IP address len,%u", &v18, 8u);
    }
  }

  else
  {
    v5 = *(a2 + 8);
    do
    {
      v6 = *(a2 + 16);
      if (v5 >= v6)
      {
        v7 = *a2;
        v8 = &v5[-*a2];
        v9 = (v8 + 1);
        if ((v8 + 1) < 0)
        {
          sub_2453A631C();
        }

        v10 = v6 - v7;
        if (2 * v10 > v9)
        {
          v9 = 2 * v10;
        }

        if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          operator new();
        }

        v12 = &v5[-*a2];
        *v8 = 0;
        v5 = v8 + 1;
        memcpy(0, v7, v12);
        *a2 = 0;
        *(a2 + 8) = v8 + 1;
        *(a2 + 16) = 0;
        if (v7)
        {
          operator delete(v7);
        }
      }

      else
      {
        *v5++ = 0;
      }

      *(a2 + 8) = v5;
    }

    while (*v3++);
    v14 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v5 - *a2;
      v18 = 67109120;
      v19 = v15;
      _os_log_impl(&dword_245396000, v14, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,convertStringIPtoVect,IPVectorSize,%u", &v18, 8u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_24547E1E4(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_19;
  }

  v4 = strnlen(a1, 0x100uLL);
  if ((v4 & 0xFFFFFEFF) != 0)
  {
    v5 = *(a1 + 256);
    if (v5 == 1 || v5 == 2)
    {
      *(a2 + 4) = v5;
      sub_24547DFE4(a1, a2 + 32);
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_19;
      }

      *(a2 + 4) = 3;
      v6 = strlen(a1);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2453A59DC();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v15) = v6;
      if (v6)
      {
        memcpy(&v14, a1, v6);
      }

      *(&v14 + v7) = 0;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = v14;
      *(a2 + 24) = v15;
    }

    *a2 = 1;
LABEL_19:
    v11 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a2 + 4);
      LODWORD(v14) = 67109120;
      DWORD1(v14) = v12;
      v9 = "#gpsd,#supl,SLPType,%u";
      v10 = v11;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v8 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 67109120;
    DWORD1(v14) = v4;
    v9 = "#gpsd,#supl,length of SLP address ,%u";
    v10 = v8;
LABEL_21:
    _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, 8u);
  }

LABEL_22:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24547E3D4(uint64_t a1, char **a2, uint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  if (sub_24547DE64(a2))
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    *buf = 0;
    v38 = 0;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    memset(v54, 0, sizeof(v54));
    memset(v55, 0, 261);
    memset(v56, 0, 261);
    v60 = -1;
    v61 = -1;
    v62 = -1;
    v63 = 0;
    __p = 0;
    v27 = 0;
    v28 = 0;
    if (&__p != a2)
    {
      sub_2453ADF3C(&__p, *a2, a2[1], a2[1] - *a2);
    }

    v5 = sub_24547473C();
    v6 = sub_245476A78(v5, 0, &__p, buf);
    v7 = v6;
    if (buf[4])
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if (!v8)
    {
      v19 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v29 = 67109120;
        v30 = v7;
        _os_log_error_impl(&dword_245396000, v19, OS_LOG_TYPE_ERROR, "#gpsd,#supl,SUPL INIT Decode failed %u", v29, 8u);
      }

      goto LABEL_37;
    }

    sub_24547DC9C(v39, a3);
    if (HIBYTE(v59) == 1)
    {
      *(a3 + 4) = HIBYTE(v59);
      v10 = v60;
      *(a3 + 5) = v60;
      v11 = HIBYTE(v60);
      *(a3 + 6) = HIBYTE(v60);
      v12 = v61;
      *(a3 + 8) = v61;
      v13 = v62;
      *(a3 + 10) = v62;
      v14 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *v29 = 67109888;
      v30 = v10;
      v31 = 1024;
      v32 = v11;
      v33 = 1024;
      v34 = v12;
      v35 = 1024;
      v36 = v13;
      v15 = "#gpsd,#supl,coming from supl,HAcc,%u,VAcc,%u,LocAge,%u,Delay,%u";
      v16 = v14;
      v17 = 26;
    }

    else
    {
      v21 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *v29 = 0;
      v15 = "#gpsd,#supl,No Qop vals";
      v16 = v21;
      v17 = 2;
    }

    _os_log_impl(&dword_245396000, v16, OS_LOG_TYPE_DEFAULT, v15, v29, v17);
LABEL_22:
    if (v56[64])
    {
      sub_24547E1E4(v56, a3 + 16);
    }

    if (v57 == 1)
    {
      *(a3 + 72) = 257;
    }

    else
    {
      v22 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_245396000, v22, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,Not an emergency session", v29, 2u);
      }
    }

    if (v55[64])
    {
      sub_24547E1E4(v55, a3 + 80);
    }

    if (v63)
    {
      if (v63 == 1)
      {
        v23 = 2;
        goto LABEL_36;
      }

      if (v63 == 2)
      {
        v23 = 1;
LABEL_36:
        *(a3 + 136) = v23;
LABEL_37:
        if (__p)
        {
          v27 = __p;
          operator delete(__p);
        }

        goto LABEL_39;
      }
    }

    *(a3 + 136) = 0;
    goto LABEL_37;
  }

  v18 = qword_2813CF018;
  v9 = 0;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v18, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,validate SUPL INIT failed", buf, 2u);
    v9 = 0;
  }

LABEL_39:
  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_24547E7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24547E7DC(uint64_t a1, uint64_t *a2, __int16 *a3, _DWORD *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  *a4 = 1;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  sub_2453AE4E0(&v38, *a2, a2[1], a2[1] - *a2);
  v30 = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_24546FD48(&v31, *(a3 + 1), *(a3 + 2));
  }

  else
  {
    v31 = *(a3 + 4);
    v32 = *(a3 + 3);
  }

  v33 = *(a3 + 32);
  if (*(a3 + 63) < 0)
  {
    sub_24546FD48(&v34, *(a3 + 5), *(a3 + 6));
  }

  else
  {
    v34 = *(a3 + 20);
    v35 = *(a3 + 7);
  }

  v36 = *(a3 + 4);
  v37 = *(a3 + 10);
  v7 = HIBYTE(v32);
  v8 = *(&v31 + 1);
  if (v32 < 0)
  {
    v7 = *(&v31 + 1);
  }

  if (!v7)
  {
    *a4 = 4;
    v12 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v11 = "#gpsd,#supl,#input,SLP Address not provisioned";
    goto LABEL_22;
  }

  if (v35 >= 0)
  {
    v9 = HIBYTE(v35);
  }

  else
  {
    v9 = *(&v34 + 1);
  }

  if (!v9)
  {
    *a4 = 4;
    v12 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v11 = "#gpsd,#supl,#input,IMSI not provisioned";
    goto LABEL_22;
  }

  if (SHIBYTE(v32) < 0 && *(&v31 + 1) >= 0x100uLL)
  {
    *a4 = 4;
    v10 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 134217984;
    v42 = v8;
    v11 = "#gpsd,#supl,#input,Invalid SLP Address length,%lu";
LABEL_26:
    v13 = v10;
    v14 = 12;
    goto LABEL_27;
  }

  if (v9 >= 0x10)
  {
    *a4 = 4;
    v10 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 134217984;
    v42 = v9;
    v11 = "#gpsd,#supl,#input,Invalid IMSI Len,%lu";
    goto LABEL_26;
  }

  if (!sub_24547DE64(&v38))
  {
    *a4 = 4;
    v12 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v11 = "#gpsd,#supl,#input,Invalide SUPL INIT";
LABEL_22:
    v13 = v12;
    v14 = 2;
LABEL_27:
    _os_log_error_impl(&dword_245396000, v13, OS_LOG_TYPE_ERROR, v11, buf, v14);
    goto LABEL_43;
  }

  v15 = *(a1 + 88);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3321888768;
  v17[2] = sub_24547EC54;
  v17[3] = &unk_28585A908;
  v17[4] = a1;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_2453AE4E0(&v18, v38, v39, v39 - v38);
  v21 = v30;
  if (SHIBYTE(v32) < 0)
  {
    sub_24546FD48(v22, v31, *(&v31 + 1));
  }

  else
  {
    *v22 = v31;
    v23 = v32;
  }

  v24 = v33;
  if (SHIBYTE(v35) < 0)
  {
    sub_24546FD48(__p, v34, *(&v34 + 1));
  }

  else
  {
    *__p = v34;
    v26 = v35;
  }

  v27 = v36;
  v28 = v37;
  v29 = a4;
  dispatch_async(v15, v17);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

LABEL_43:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_24547EBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  sub_2453AB348(&a32);
  v40 = *(v38 - 120);
  if (v40)
  {
    *(v38 - 112) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void sub_24547EC54(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48) - *(a1 + 40);
    *buf = 67109120;
    *v47 = v3;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,SUPL INIT Len,%u", buf, 8u);
    v2 = qword_2813CF018;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 64);
    if (*(a1 + 96))
    {
      v6 = 84;
    }

    else
    {
      v6 = 70;
    }

    v7 = (a1 + 104);
    if (*(a1 + 127) < 0)
    {
      v7 = *v7;
    }

    if (*(a1 + 136))
    {
      v8 = 84;
    }

    else
    {
      v8 = 70;
    }

    *buf = 136381699;
    *v47 = v4;
    *&v47[8] = 1025;
    *&v47[10] = v5;
    *&v47[14] = 1025;
    *&v47[16] = v6;
    *v48 = 2081;
    *&v48[2] = v7;
    v49 = 1025;
    v50 = v8;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,SLP,%{private}.s,%{private}.u,MSA,%{private}.c,IMSI,%{private}.s,HeloEnabled,%{private}.c", buf, 0x28u);
  }

  buf[0] = 0;
  *v48 = 0;
  *&v47[4] = 0uLL;
  *&v48[8] = *(a1 + 64);
  std::string::operator=(&v47[4], (a1 + 72));
  std::string::operator=(&v47[4], (a1 + 72));
  v9 = *&v48[8];
  if (*&v48[8] - 7277 <= 0xFFFFFFFD)
  {
    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 67109120;
      v42 = v9;
      _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,Non Standard Port, %u", v41, 8u);
    }
  }

  buf[0] = 2;
  v11 = sub_245479234();
  sub_245479500(v11, 0, buf);
  v12 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *v41 = 0;
    _os_log_impl(&dword_245396000, v12, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,SetSlpInfo done", v41, 2u);
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  *v41 = 1;
  if (*(a1 + 127) < 0)
  {
    sub_24546FD48(__p, *(a1 + 104), *(a1 + 112));
    v13 = v43;
    v14 = v44;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    *__p = *(a1 + 104);
    v38 = *(a1 + 120);
  }

  if (v38 >= 0)
  {
    v15 = HIBYTE(v38);
  }

  else
  {
    v15 = __p[1];
  }

  LOBYTE(v34) = -1;
  v16 = v14 - v13;
  if (v16 > 7)
  {
    if (v16 != 8)
    {
      v44 = v13 + 8;
    }
  }

  else
  {
    sub_2454770D4(&v43, 8 - v16, &v34);
  }

  if (v15)
  {
    v17 = 0;
    v18 = 0;
    v19 = v15 - 1;
    while (1)
    {
      if (SHIBYTE(v38) < 0)
      {
        v20 = __p[0];
        v21 = *(__p[0] + v18) - 48;
        if (v21 >= 0xA)
        {
          LOBYTE(v21) = -1;
        }

        if (v19 != v18)
        {
          v22 = v18 + 1;
LABEL_42:
          v24 = *(v20 + v22);
          v25 = v24 - 48;
          v23 = 16 * v24;
          if (v25 >= 0xA)
          {
            v23 = -16;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v20 = __p;
        v21 = *(__p + v18) - 48;
        if (v21 >= 0xA)
        {
          LOBYTE(v21) = -1;
        }

        if (v19 != v18)
        {
          v22 = v18 | 1;
          goto LABEL_42;
        }
      }

      v23 = -16;
LABEL_44:
      *(v43 + v17) = v23 | v21;
      v18 += 2;
      if (v18 < v15 && v17++ < 7)
      {
        continue;
      }

      break;
    }
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  v27 = sub_24547473C();
  sub_2454748F8(v27, 0, v41);
  v28 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v34) = 0;
    _os_log_impl(&dword_245396000, v28, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#in,SetSETInfo done", &v34, 2u);
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (&v34 != (a1 + 40))
  {
    sub_2453ADF3C(&v34, *(a1 + 40), *(a1 + 48), *(a1 + 48) - *(a1 + 40));
  }

  v29 = sub_24547473C();
  v30 = sub_245474D6C(v29, 0, &v34, 1u);
  if (v30)
  {
    **(a1 + 152) = 7;
    v31 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v39 = 67109120;
      v40 = v30;
      _os_log_error_impl(&dword_245396000, v31, OS_LOG_TYPE_ERROR, "#gpsd,#supl,ProcessSuplMtlrMessage returned error %u", v39, 8u);
    }
  }

  else
  {
    v32 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&dword_245396000, v32, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,ProcessSuplMtlrMessage success", v39, 2u);
    }
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if ((v48[7] & 0x80000000) != 0)
  {
    operator delete(*&v47[4]);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_24547F13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24547F1A0(__n128 *a1, uint64_t a2)
{
  a1[2].n128_u64[1] = 0;
  a1[3].n128_u64[0] = 0;
  v4 = &a1[2].n128_i8[8];
  a1[3].n128_u64[1] = 0;
  sub_2453AE4E0(&a1[2].n128_i64[1], *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
  *(v4 + 12) = *(a2 + 64);
  if (*(a2 + 95) < 0)
  {
    sub_24546FD48(v4 + 32, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    *(v4 + 6) = *(a2 + 88);
    *(v4 + 2) = v5;
  }

  a1[6].n128_u8[0] = *(a2 + 96);
  if (*(a2 + 127) < 0)
  {
    sub_24546FD48(&a1[6].n128_u8[8], *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v6 = *(a2 + 104);
    a1[7].n128_u64[1] = *(a2 + 120);
    *(a1 + 104) = v6;
  }

  result = *(a2 + 128);
  a1[9].n128_u64[0] = *(a2 + 144);
  a1[8] = result;
  return result;
}

void sub_24547F25C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(v2[4]);
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_24547F290(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

uint64_t sub_24547F2F8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v8 = a4;
  v9 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v11 = a3 < 0x3E8 && a4 < 0x3E8 && a5 >> 28 == 0;
  v12 = v11;
  if (v11)
  {
    v15 = *(a1 + 56);
    v16 = (a1 + 56);
    v17 = *(a1 + 64) - v15;
    if (v17 > 3)
    {
      if (v17 != 4)
      {
        *(a1 + 64) = v15 + 4;
      }
    }

    else
    {
      sub_2453A6334((a1 + 56), 4 - v17);
      v15 = *v16;
    }

    v20 = 0;
    *v15 = a5 >> 20;
    *(*(a1 + 56) + 1) = a5 >> 12;
    *(*(a1 + 56) + 2) = a5 >> 4;
    *(*(a1 + 56) + 3) = 16 * a5;
    *(*(a1 + 56) + 3) >>= 4;
    do
    {
      do
      {
        v21 = v20;
        v22 = v9;
        v23 = v9;
        LOWORD(v9) = v9 / 0xAu;
        LOBYTE(v32[0]) = v22 - 10 * v9;
        sub_2454813C0(a1 + 8, *(a1 + 8), v32);
        v20 = v21 + 1;
      }

      while (v23 > 9);
    }

    while (v21 < 2);
    v24 = 0;
    do
    {
      do
      {
        v25 = v8;
        v26 = v24;
        v27 = v8;
        LOWORD(v8) = v8 / 0xAu;
        LOBYTE(v32[0]) = v25 - 10 * v8;
        sub_2454813C0(a1 + 32, *(a1 + 32), v32);
        v24 = v26 - 1;
      }

      while (v27 > 9);
    }

    while (!v26);
    *a1 = 1;
    v28 = *a2;
    v29 = *(a2 + 8) - *a2;
    if (v29 > 1)
    {
      if (v29 != 2)
      {
        *(a2 + 8) = v28 + 2;
      }
    }

    else
    {
      sub_2453A6334(a2, 2 - v29);
      v28 = *a2;
    }

    *v28 = BYTE1(a6);
    *(*a2 + 1) = a6;
  }

  else
  {
    v18 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v32[0] = 67109888;
      v32[1] = v9;
      v33 = 1024;
      v34 = v8;
      v35 = 1024;
      v36 = a5;
      v37 = 1024;
      v38 = a6;
      _os_log_error_impl(&dword_245396000, v18, OS_LOG_TYPE_ERROR, "#gpsd,#supl,Either MCC %d, MNC %d, CID %d, TAC %d is not in range", v32, 0x1Au);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_24547F568(uint64_t a1, int *a2)
{
  v3 = *(a1 + 88);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3321888768;
  v4[2] = sub_24547F6C4;
  v4[3] = &unk_28585A938;
  v5 = *a2;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_2453AAA8C(&v6, *(a2 + 1), *(a2 + 2), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 2) - *(a2 + 1)) >> 2));
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_2453AABE8(&v9, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_2453AACE8(&__p, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 5);
  dispatch_async(v3, v4);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_24547F690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24547F6C4(uint64_t a1)
{
  v122 = *MEMORY[0x277D85DE8];
  v95[0] = 0;
  v96 = 0;
  LODWORD(v97[0]) = -1;
  *(v97 + 4) = 0;
  memset(&v97[2] + 4, 0, 13);
  *(&v97[1] + 4) = 0;
  v97[5] = 0;
  v98 = 0;
  v99 = -1;
  v100 = 0;
  v101 = 0;
  v102 = -1;
  v103 = 0;
  v104 = 0;
  v105[0] = 0;
  *(v105 + 6) = 0;
  v105[2] = 0;
  v105[3] = 0;
  v106 = 0;
  v107 = 1;
  v2 = *(a1 + 32);
  if (v2 != 5)
  {
    if (v2 == 2)
    {
      v95[0] = 2;
      v11 = *(a1 + 88);
      v12 = *(a1 + 96) - v11;
      if (v12)
      {
        v13 = v12 >> 5;
        if (v13 <= 1)
        {
          v13 = 1;
        }

        while (*v11 != 1)
        {
          v11 += 32;
          if (!--v13)
          {
            goto LABEL_16;
          }
        }

        v16 = *(v11 + 2);
        LOWORD(v99) = *(v11 + 2);
        v14 = *(v11 + 4);
        WORD1(v99) = *(v11 + 4);
        v15 = *(v11 + 12);
        HIDWORD(v99) = v15;
        v79 = *(v11 + 16);
        if (v79 > 0x1FF)
        {
          v86 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v120 = v79;
            _os_log_error_impl(&dword_245396000, v86, OS_LOG_TYPE_ERROR, "#gpsd,#supl,,Invalid PSC,%u", buf, 8u);
            v16 = v99;
            v14 = WORD1(v99);
            v15 = HIDWORD(v99);
          }
        }

        else
        {
          v102 = *(v11 + 16);
        }
      }

      else
      {
LABEL_16:
        v14 = 0xFFFF;
        v15 = -1;
        v16 = 0xFFFF;
      }

      v17 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v120 = v16;
        *v121 = 1024;
        *&v121[2] = v14;
        *&v121[6] = 1024;
        *&v121[8] = v15;
        _os_log_impl(&dword_245396000, v17, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,WCDMA Serving,%u,%u,%u", buf, 0x14u);
        v16 = v99;
        v14 = WORD1(v99);
        v15 = HIDWORD(v99);
      }

      if (v16 <= 0x3E7 && v14 <= 0x3E7 && !(v15 >> 28))
      {
        goto LABEL_125;
      }

      v18 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_125;
      }

      *buf = 0;
      v19 = "#gpsd,#supl,Error in WCDMA Serving Cell Info";
    }

    else
    {
      if (v2 != 1)
      {
        goto LABEL_125;
      }

      v95[0] = 1;
      v97[0] = -1;
      v3 = *(a1 + 64);
      v4 = *(a1 + 72) - v3;
      if (v4)
      {
        v5 = v4 >> 4;
        if (v5 <= 1)
        {
          v5 = 1;
        }

        v6 = (v3 + 8);
        while (*(v6 - 8) != 1)
        {
          v6 += 4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        LOBYTE(v97[4]) = -1;
        v10 = *(v6 - 3);
        LOWORD(v97[0]) = *(v6 - 3);
        v9 = *(v6 - 2);
        WORD1(v97[0]) = *(v6 - 2);
        v8 = *v6;
        WORD2(v97[0]) = *v6;
        v80 = v6[1];
        v7 = v80;
        HIWORD(v97[0]) = v80;
      }

      else
      {
LABEL_10:
        v7 = 0xFFFF;
        v8 = 0xFFFF;
        v9 = 0xFFFF;
        v10 = 0xFFFF;
      }

      v81 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67175425;
        v120 = v10;
        *v121 = 1025;
        *&v121[2] = v9;
        *&v121[6] = 1025;
        *&v121[8] = v8;
        *&v121[12] = 1025;
        *&v121[14] = v7;
        _os_log_impl(&dword_245396000, v81, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,GSM Serving,%{private}.u,%{private}.u,%{private}.u,%{private}.u", buf, 0x1Au);
        v10 = LOWORD(v97[0]);
        v9 = WORD1(v97[0]);
      }

      if (v10 <= 0x3E7 && v9 < 0x3E8)
      {
        goto LABEL_125;
      }

      v18 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_125;
      }

      *buf = 0;
      v19 = "#gpsd,#supl,Invalid GSM Serving Cell Info";
    }

    v82 = v18;
    v83 = 2;
    goto LABEL_105;
  }

  v95[0] = 4;
  v20 = operator new(0xA8uLL, MEMORY[0x277D826F0]);
  *(v20 + 2) = 0u;
  v93 = v20 + 32;
  *(v20 + 14) = 0;
  v21 = v20 + 112;
  *(v20 + 18) = 0;
  v92 = (v20 + 144);
  *(v20 + 19) = 0;
  *(v20 + 20) = 0;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *(v20 + 6) = 0;
  *(v20 + 3) = 0u;
  *(v20 + 4) = 0u;
  *(v20 + 5) = 0u;
  *(v20 + 90) = 0u;
  *(v20 + 15) = 0;
  *(v20 + 16) = 0;
  *(v20 + 34) = 0;
  v106 = v20;
  *v20 = 3;
  v22 = *(a1 + 40);
  if (*(a1 + 48) == v22)
  {
    goto LABEL_125;
  }

  v23 = v20;
  v94 = 0;
  v24 = 0;
  while (1)
  {
    v25 = v22 + 28 * v24;
    if (*v25 != 1)
    {
      if (v94 > 7)
      {
        goto LABEL_93;
      }

      *buf = 0;
      LOWORD(v120) = 0;
      *v121 = 0;
      memset(&v121[8], 0, 106);
      if (*(v25 + 16) <= 0x1F7u)
      {
        LOWORD(v120) = *(v25 + 16);
        if (*(v25 + 18) <= 0x61u)
        {
          v121[112] = *(v25 + 18);
          *&v121[104] = 1;
        }

        if (*(v25 + 19) <= 0x22u)
        {
          v121[113] = *(v25 + 19);
          *&v121[108] = 1;
        }

        *buf = sub_24547F2F8(v121, &v121[80], *(v25 + 2), *(v25 + 4), *(v25 + 12), *(v25 + 8));
        v30 = *(v23 + 19);
        v29 = *(v23 + 20);
        if (v30 >= v29)
        {
          v54 = (v30 - *v92) >> 7;
          if ((v54 + 1) >> 57)
          {
            sub_2453A631C();
          }

          v55 = v29 - *v92;
          v56 = v55 >> 6;
          if (v55 >> 6 <= (v54 + 1))
          {
            v56 = v54 + 1;
          }

          if (v55 >= 0x7FFFFFFFFFFFFF80)
          {
            v57 = 0x1FFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v56;
          }

          *v112 = v92;
          if (v57)
          {
            sub_245465AD8(v92, v57);
          }

          v58 = v54 << 7;
          *v111 = 0;
          *&v111[8] = v58;
          *&v111[16] = v54 << 7;
          *&v111[24] = 0;
          v59 = *buf;
          *(v58 + 4) = v120;
          *v58 = v59;
          v60 = *v121;
          *((v54 << 7) + 0x10) = 0;
          *(v58 + 8) = v60;
          *(v58 + 24) = 0;
          *(v58 + 32) = 0;
          sub_2454658EC((v54 << 7) + 16, *&v121[8], *&v121[16], *&v121[16] - *&v121[8]);
          *(v58 + 40) = 0;
          *(v58 + 48) = 0;
          *(v58 + 56) = 0;
          sub_2454658EC((v54 << 7) + 40, *&v121[32], *&v121[40], *&v121[40] - *&v121[32]);
          *(v58 + 64) = 0;
          *(v58 + 72) = 0;
          *(v58 + 80) = 0;
          sub_2453AE4E0((v54 << 7) + 64, *&v121[56], *&v121[64], *&v121[64] - *&v121[56]);
          *(v58 + 88) = 0;
          *(v58 + 96) = 0;
          *(v58 + 104) = 0;
          sub_2453AE4E0((v54 << 7) + 88, *&v121[80], *&v121[88], *&v121[88] - *&v121[80]);
          v61 = *&v121[104];
          *(v58 + 120) = *&v121[112];
          *(v58 + 112) = v61;
          v34 = *&v111[16] + 128;
          *&v111[16] += 128;
          v63 = *(v23 + 18);
          v62 = *(v23 + 19);
          v64 = (*&v111[8] + v63 - v62);
          if (v63 != v62)
          {
            v65 = (*&v111[8] + v63 - v62);
            v66 = *(v23 + 18);
            do
            {
              v67 = *v66;
              *(v65 + 2) = *(v66 + 2);
              *v65 = v67;
              *(v65 + 2) = *(v66 + 2);
              *(v65 + 3) = 0;
              *(v65 + 4) = 0;
              *(v65 + 2) = 0;
              *(v65 + 1) = *(v66 + 1);
              *(v65 + 4) = *(v66 + 4);
              *(v66 + 2) = 0;
              *(v66 + 3) = 0;
              *(v66 + 4) = 0;
              *(v65 + 5) = 0;
              *(v65 + 6) = 0;
              *(v65 + 7) = 0;
              *(v65 + 40) = *(v66 + 40);
              *(v65 + 7) = *(v66 + 7);
              *(v66 + 5) = 0;
              *(v66 + 6) = 0;
              *(v66 + 7) = 0;
              *(v65 + 8) = 0;
              *(v65 + 9) = 0;
              *(v65 + 10) = 0;
              *(v65 + 4) = *(v66 + 4);
              *(v65 + 10) = *(v66 + 10);
              *(v66 + 8) = 0;
              *(v66 + 9) = 0;
              *(v66 + 10) = 0;
              *(v65 + 11) = 0;
              *(v65 + 12) = 0;
              *(v65 + 13) = 0;
              *(v65 + 88) = *(v66 + 88);
              *(v65 + 13) = *(v66 + 13);
              *(v66 + 11) = 0;
              *(v66 + 12) = 0;
              *(v66 + 13) = 0;
              v68 = *(v66 + 14);
              *(v65 + 30) = *(v66 + 30);
              *(v65 + 14) = v68;
              v66 += 128;
              v65 += 128;
            }

            while (v66 != v62);
            do
            {
              sub_245481768(v63);
              v63 += 128;
            }

            while (v63 != v62);
            v63 = *v92;
            v34 = *&v111[16];
          }

          *(v23 + 18) = v64;
          *(v23 + 19) = v34;
          v69 = *(v23 + 20);
          *(v23 + 20) = *&v111[24];
          *&v111[16] = v63;
          *&v111[24] = v69;
          *v111 = v63;
          *&v111[8] = v63;
          sub_2454817E0(v111);
        }

        else
        {
          v31 = *buf;
          *(v30 + 4) = v120;
          *v30 = v31;
          v32 = *v121;
          *(v30 + 16) = 0;
          *(v30 + 8) = v32;
          *(v30 + 24) = 0;
          *(v30 + 32) = 0;
          sub_2454658EC(v30 + 16, *&v121[8], *&v121[16], *&v121[16] - *&v121[8]);
          *(v30 + 40) = 0;
          *(v30 + 48) = 0;
          *(v30 + 56) = 0;
          sub_2454658EC(v30 + 40, *&v121[32], *&v121[40], *&v121[40] - *&v121[32]);
          *(v30 + 64) = 0;
          *(v30 + 72) = 0;
          *(v30 + 80) = 0;
          sub_2453AE4E0(v30 + 64, *&v121[56], *&v121[64], *&v121[64] - *&v121[56]);
          *(v30 + 88) = 0;
          *(v30 + 96) = 0;
          *(v30 + 104) = 0;
          sub_2453AE4E0(v30 + 88, *&v121[80], *&v121[88], *&v121[88] - *&v121[80]);
          v33 = *&v121[104];
          *(v30 + 120) = *&v121[112];
          *(v30 + 112) = v33;
          v34 = v30 + 128;
          *(v23 + 19) = v30 + 128;
        }

        *(v23 + 19) = v34;
        v70 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
        {
          v71 = *(a1 + 40) + 28 * v24;
          v72 = *(v71 + 2);
          v73 = *(v71 + 4);
          v74 = *(v71 + 16);
          v75 = *(v71 + 18);
          v76 = *(v71 + 19);
          v78 = *(v71 + 8);
          v77 = *(v71 + 12);
          LODWORD(v71) = *(v71 + 24);
          *v111 = 134285569;
          *&v111[4] = v24;
          *&v111[12] = 1025;
          *&v111[14] = v72;
          *&v111[18] = 1025;
          *&v111[20] = v73;
          *&v111[24] = 1025;
          *&v111[26] = v77;
          *&v111[30] = 1025;
          *v112 = v74;
          *&v112[4] = 1025;
          *&v112[6] = v75;
          v113 = 1025;
          v114 = v76;
          v115 = 1025;
          v116 = v78;
          v117 = 1025;
          v118 = v71;
          _os_log_impl(&dword_245396000, v70, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,LTE neighbor,%{private}.zd,MCC %{private}.u,MNC %{private}.u,CI %{private}.u,PCI %{private}.u,RSRP %{private}.u,RSRQ %{private}.u,TAC %{private}.u,DLFREQ %{private}.u", v111, 0x3Cu);
        }

        ++v94;
        if (*&v121[80])
        {
          *&v121[88] = *&v121[80];
          operator delete(*&v121[80]);
        }
      }

      if (*&v121[56])
      {
        *&v121[64] = *&v121[56];
        operator delete(*&v121[56]);
      }

      if (*&v121[32])
      {
        *&v121[40] = *&v121[32];
        operator delete(*&v121[32]);
      }

      v53 = *&v121[8];
      if (!*&v121[8])
      {
        goto LABEL_93;
      }

      *&v121[16] = *&v121[8];
      goto LABEL_92;
    }

    v26 = *(v25 + 16);
    if (v26 >= 0x1F8)
    {
      break;
    }

    *buf = 0;
    memset(v121, 0, 72);
    __p = 0;
    v109 = 0;
    v110 = 0;
    if ((sub_24547F2F8(buf, &__p, *(v25 + 2), *(v25 + 4), *(v25 + 12), *(v25 + 8)) & 1) == 0)
    {
      v84 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v111 = 0;
        v85 = "#gpsd,#supl,ConvertIntValsToASN1T_CellGlobalIdEUTRA function returned error";
LABEL_116:
        _os_log_error_impl(&dword_245396000, v84, OS_LOG_TYPE_ERROR, v85, v111, 2u);
      }

LABEL_117:
      if (__p)
      {
        v109 = __p;
        operator delete(__p);
      }

      if (*&v121[48])
      {
        *&v121[56] = *&v121[48];
        operator delete(*&v121[48]);
      }

      if (*&v121[24])
      {
        *&v121[32] = *&v121[24];
        operator delete(*&v121[24]);
      }

      if (*v121)
      {
        *&v121[8] = *v121;
        operator delete(*v121);
      }

      goto LABEL_125;
    }

    *(v23 + 52) = *(*(a1 + 40) + 28 * v24 + 16);
    *(v23 + 6) = *buf;
    sub_2453ADF3C(v93, *v121, *&v121[8], *&v121[8] - *v121);
    sub_2453ADF3C(v23 + 7, *&v121[24], *&v121[32], *&v121[32] - *&v121[24]);
    sub_2453ADF3C(v23 + 10, *&v121[48], *&v121[56], *&v121[56] - *&v121[48]);
    sub_2453ADF3C(v21, __p, v109, v109 - __p);
    v23[136] = -1;
    v27 = *(a1 + 40);
    v28 = *(v27 + 28 * v24 + 18);
    if (v28 > 0x61)
    {
      v35 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v111 = 67174657;
        *&v111[4] = v28;
        _os_log_error_impl(&dword_245396000, v35, OS_LOG_TYPE_ERROR, "#gpsd,#supl,Invalid Rsrp,%{private}.u", v111, 8u);
        v27 = *(a1 + 40);
      }
    }

    else
    {
      v23[136] = v28;
      *(v23 + 2) = 1;
    }

    v23[137] = -1;
    v36 = *(v27 + 28 * v24 + 19);
    if (v36 > 0x22)
    {
      v37 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v111 = 67174657;
        *&v111[4] = v36;
        _os_log_error_impl(&dword_245396000, v37, OS_LOG_TYPE_ERROR, "#gpsd,#supl,Invalid Rsrq,%{private}.u", v111, 8u);
        v27 = *(a1 + 40);
      }
    }

    else
    {
      v23[137] = v36;
      *(v23 + 3) = 1;
    }

    *(v23 + 69) = -1;
    v38 = *(v27 + 28 * v24 + 20);
    if (v38 > 1282)
    {
      v39 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        *v111 = 67174657;
        *&v111[4] = v38;
        _os_log_impl(&dword_245396000, v39, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,Invalid TA,%{private}.d", v111, 8u);
        v27 = *(a1 + 40);
      }
    }

    else
    {
      *(v23 + 69) = v38;
      *(v23 + 4) = 1;
    }

    v40 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v27 + 28 * v24;
      v42 = *(v41 + 2);
      v43 = *(v41 + 16);
      v45 = v41 + 8;
      LODWORD(v41) = *(v41 + 8);
      v44 = *(v45 + 4);
      *v111 = 67175425;
      *&v111[4] = v42;
      *&v111[8] = 1025;
      *&v111[10] = v44;
      *&v111[14] = 1025;
      *&v111[16] = v43;
      *&v111[20] = 1025;
      *&v111[22] = v41;
      _os_log_impl(&dword_245396000, v40, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,LTE Serving,%{private}u,%{private}u,%{private}u,%{private}u", v111, 0x1Au);
      v27 = *(a1 + 40);
    }

    v46 = *(v27 + 28 * v24 + 2);
    if (v46 >= 0x3E8)
    {
      v47 = qword_2813CF008;
      if (os_log_type_enabled(qword_2813CF008, OS_LOG_TYPE_DEFAULT))
      {
        *v111 = 67174657;
        *&v111[4] = v46;
        _os_log_impl(&dword_245396000, v47, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,LTE MCC, %{private}u", v111, 8u);
        v27 = *(a1 + 40);
      }
    }

    v48 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(v27 + 28 * v24 + 4);
      *v111 = 67174657;
      *&v111[4] = v49;
      _os_log_impl(&dword_245396000, v48, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,LTE Serving,MNC %{private}u", v111, 8u);
      v27 = *(a1 + 40);
    }

    v50 = v27 + 28 * v24;
    v51 = *(v50 + 4);
    if (v51 > 0x3E7 || (v52 = *(v50 + 12), v52 >> 28) || *(v50 + 16) > 0x1F7u || *(v50 + 8) >= 0x10000u)
    {
      v84 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v111 = 0;
        v85 = "#gpsd,#supl,invalid LTE Serving Cell Info";
        goto LABEL_116;
      }

      goto LABEL_117;
    }

    sub_24547A504(*(v50 + 2), v51, v52, v51 > 0x63);
    if (__p)
    {
      v109 = __p;
      operator delete(__p);
    }

    if (*&v121[48])
    {
      *&v121[56] = *&v121[48];
      operator delete(*&v121[48]);
    }

    if (*&v121[24])
    {
      *&v121[32] = *&v121[24];
      operator delete(*&v121[24]);
    }

    v53 = *v121;
    if (*v121)
    {
      *&v121[8] = *v121;
LABEL_92:
      operator delete(v53);
    }

LABEL_93:
    ++v24;
    v22 = *(a1 + 40);
    if (v24 >= 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 48) - v22) >> 2))
    {
      if (*(v23 + 18) != *(v23 + 19))
      {
        *(v23 + 5) = 1;
      }

      goto LABEL_125;
    }
  }

  v87 = qword_2813CF018;
  if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_125;
  }

  *buf = 67109120;
  v120 = v26;
  v19 = "#gpsd,#supl,Physical Cell Id Out of Range %d";
  v82 = v87;
  v83 = 8;
LABEL_105:
  _os_log_error_impl(&dword_245396000, v82, OS_LOG_TYPE_ERROR, v19, buf, v83);
LABEL_125:
  v88 = sub_245479234();
  sub_2454796F4(v88, 0, v95);
  v89 = sub_24547473C();
  sub_2454752CC(v89);
  result = sub_245464AB8(v95);
  v91 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454804A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, char a43)
{
  sub_2453A7C24((v44 + 8));
  *(v43 + 152) = v44;
  sub_2454815D4((v45 - 240));
  sub_245464AB8(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_245480578(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_2453AAA8C(a1 + 40, *(a2 + 40), *(a2 + 48), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 48) - *(a2 + 40)) >> 2));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_2453AABE8(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return sub_2453AACE8(a1 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 5);
}

void sub_245480620(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_245480654(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;

    operator delete(v4);
  }
}

double sub_2454806BC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  memcpy(v3, (a1 + 40), sizeof(v3));
  *&result = sub_245484D04(v1, v3).n128_u64[0];
  return result;
}

double sub_245480708(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  memcpy(__dst, (a1 + 40), sizeof(__dst));
  *&result = sub_245484F28(v1, __dst).n128_u64[0];
  return result;
}

double sub_245480754(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  *&result = sub_245485020(v1, v4).n128_u64[0];
  return result;
}

BOOL sub_245480790(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  v2 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5[0] = v2;
  *(v5 + 12) = *(a1 + 68);
  return sub_245482478(v1, &v4, 2);
}

uint64_t sub_2454807D8(uint64_t a1, _DWORD *a2)
{
  v172 = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  v3 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v7 = *(a2 + 12);
  v8 = *(a2 + 26);
  v60 = a2[8];
  v62 = a2[9];
  v64 = *(a2 + 20);
  v65 = *(a2 + 42);
  v66 = a2[16];
  v67 = a2[23];
  v69 = *(a2 + 102);
  v71 = a2[24];
  v73 = *(a2 + 103);
  v79 = *(a2 + 50);
  v81 = *(a2 + 104);
  v75 = *(a2 + 105);
  v77 = *(a2 + 106);
  v9 = a2[68];
  v56 = *(a2 + 140);
  v57 = *(a2 + 139);
  v58 = *(a2 + 141);
  v59 = *(a2 + 284);
  v51 = *(a2 + 290);
  v47 = *(a2 + 143);
  v48 = *(a2 + 146);
  v49 = *(a2 + 144);
  v50 = *(a2 + 147);
  v52 = *(a2 + 296);
  v53 = *(a2 + 138);
  v54 = *(a2 + 298);
  v55 = *(a2 + 299);
  v61 = a2[75];
  v10 = qword_2813CF018;
  v11 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = "#gpsd,#supl,#out,posReport, sessionProtocol = SUPL";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = "#gpsd,#supl,#out,posReport, sessionProtocol = CPlane";
  }

  _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
LABEL_7:
  v13 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67113729;
    v137 = v6;
    v138 = 1024;
    v139 = v3;
    v140 = 1024;
    v141 = v7;
    v142 = 1024;
    *v143 = v5;
    *&v143[4] = 1024;
    *&v143[6] = v8;
    v144 = 1024;
    v145 = v60;
    v146 = 1024;
    v147 = v62;
    v148 = 1024;
    v149 = v64;
    v150 = 1024;
    v151 = v65;
    v152 = 1025;
    v153 = v66;
    v154 = 1029;
    v155 = v67;
    v156 = 1029;
    v157 = v71;
    v158 = 1025;
    v159 = v69;
    v160 = 1025;
    v161 = v73;
    v162 = 1029;
    v163 = v79;
    v164 = 1025;
    v165 = v75;
    v166 = 1024;
    v167 = v77;
    v168 = 1025;
    v169 = v81;
    v170 = 1024;
    v171 = v61;
    _os_log_debug_impl(&dword_245396000, v13, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#out,posReport,sessionId,%u,posProtocol,%u,gpsWeek,%u,gpsTow,%u,gpsTimeUncertainty,%u,gpsTODPresent,%d,gpsTODMsec,%u,gpsTODFrac,%u,gpsTODUnc,%u,shapeType,%{private}u,latitude,%{sensitive}u,longitude,%{sensitive}u,Majoraxis,%{private}u,Minoraxis,%{private}u,altitude,%{sensitive}u,uncertainAltitude,%{private}u,confidence,%u,orientationAngle,%{private}u,technologySource,%u", buf, 0x74u);
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_21;
      }

      v16 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 67175681;
      v137 = v48;
      v138 = 1025;
      v139 = v50;
      v140 = 1024;
      v141 = v52;
      v142 = 1025;
      *v143 = v54;
      *&v143[4] = 1025;
      *&v143[6] = v55;
      v15 = "#gpsd,#supl,#out,HorizontalWithVerticalVelocityAndUncertainty,posReport,bearing,%{private}u,horizontalSpeed,%{private}u,verticalSpeed,%u,horizUncertaintySpeed,%{private}u,vertUncertaintySpeed,%{private}u";
      v17 = v16;
      v18 = 32;
      goto LABEL_53;
    }

    v14 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    *buf = 67175169;
    v137 = v47;
    v138 = 1025;
    v139 = v49;
    v140 = 1025;
    v141 = v51;
    v15 = "#gpsd,#supl,#out,HorizontalVelocityWithUncertainty,posReport,bearing,%{private}u,horizontalSpeed,%{private}u,horizUncertaintySpeed,%{private}u";
  }

  else
  {
    if (!v9)
    {
      v19 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 67174913;
      v137 = v53;
      v138 = 1025;
      v139 = v57;
      v15 = "#gpsd,#supl,#out,HorizontalWithVerticalVelocity,posReport,bearing,%{private}u,horizontalSpeed,%{private}u";
      v17 = v19;
      v18 = 14;
      goto LABEL_53;
    }

    if (v9 != 1)
    {
      goto LABEL_21;
    }

    v14 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    *buf = 67175169;
    v137 = v56;
    v138 = 1025;
    v139 = v58;
    v140 = 1025;
    v141 = v59;
    v15 = "#gpsd,#supl,#out,HorizontalWithVerticalVelocity,posReport,bearing,%{private}u,horizontalSpeed,%{private}u,verticalSpeed,%{private}u";
  }

  v17 = v14;
  v18 = 20;
LABEL_53:
  _os_log_debug_impl(&dword_245396000, v17, OS_LOG_TYPE_DEBUG, v15, buf, v18);
LABEL_21:
  if (*a2)
  {
    v20 = 5;
  }

  else
  {
    v20 = 0;
  }

  if (a2[3])
  {
    v21 = a2[5];
  }

  else
  {
    v21 = a2[5] % 0xDBBA00u;
  }

  v82 = v21;
  v80 = a2[7] == 1;
  v22 = a2[23];
  v23 = *(a2 + 50);
  if (a2[8])
  {
    LOWORD(v65) = *(a2 + 20);
    v66 = a2[9];
    LOBYTE(v64) = *(a2 + 42);
  }

  v24 = a1;
  v25 = a2[24];
  v26 = v23 & 0x7FFF;
  v27 = *(a2 + 50);
  v84 = v26;
  v76 = *(a2 + 102);
  v78 = v25;
  v72 = *(a2 + 105);
  v74 = *(a2 + 103);
  v70 = (v22 >> 23) & 1;
  if (*a2)
  {
    v28 = 0x1400000000;
    v29 = -1;
    v30 = -1.0;
    v31 = 1.79769313e308;
    v32 = -1.0;
    v33 = -1.0;
    v34 = 1.79769313e308;
    v35 = 1.79769313e308;
    goto LABEL_46;
  }

  v36 = v22 >> 23;
  if ((v22 >> 23))
  {
    if (!v36)
    {
      v35 = (90 * v22) * -0.00000011920929;
      goto LABEL_37;
    }

LABEL_36:
    v35 = 1.79769313e308;
    goto LABEL_37;
  }

  if (v36)
  {
    goto LABEL_36;
  }

  v35 = vcvtd_n_f64_u32(90 * v22, 0x17uLL);
LABEL_37:
  if ((v25 + 0x800000) >> 24)
  {
    v34 = 1.79769313e308;
  }

  else
  {
    v37 = v25 | 0xFF000000;
    if ((v25 & 0x800000) == 0)
    {
      v37 = a2[24];
    }

    v34 = v37 * 360.0 * 0.0000000596046448;
  }

  if (v23 >= 0)
  {
    v31 = v26;
  }

  else
  {
    v31 = -v26;
  }

  v29 = a2[4];
  v33 = *(a2 + 102);
  v32 = *(a2 + 103);
  v28 = 0x1200000002;
  v30 = *(a2 + 105);
LABEL_46:
  v38 = *(a2 + 26);
  v39 = a2[16];
  v40 = *(a2 + 104);
  v68 = *(a2 + 106);
  sub_2454816D0(buf, v24);
  if (*&v143[2])
  {
    v63 = v20;
    v41 = *(v24 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = sub_245481078;
    block[3] = &unk_28585A8D8;
    sub_2454816D0(v116, buf);
    v42 = v22 & 0x7FFFFF;
    v117 = v28;
    v116[8] = v29;
    v118 = 0;
    v119 = 0xBFF0000000000000;
    v120 = v35;
    v121 = v34;
    v122 = v31;
    v123 = v33;
    v124 = v32;
    v125 = v30;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v130 = xmmword_245486E00;
    v131 = 0xBFF0000000000000;
    v132 = -1;
    v133 = -1;
    v134 = -1;
    v135 = 0xBFF0000000000000;
    dispatch_async(v41, block);
    v43 = *(v24 + 88);
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = sub_245481208;
    v85[3] = &unk_278E36CF8;
    memcpy(v86, a2, sizeof(v86));
    v87 = v63;
    v88 = v82;
    v89 = v38;
    v90 = v80;
    v91 = v39;
    v92 = v70;
    v93 = v42;
    v94 = v78;
    v95 = v76;
    v96 = v74;
    v97 = v40;
    v98 = v27 < 0;
    v99 = v84;
    v100 = v72;
    v101 = v68;
    v102 = 0xFFFFFFFFLL;
    v103 = -1;
    v104 = 0xFF00000000;
    v105 = -1;
    v106 = 0;
    v107 = -1;
    v108 = v66;
    v109 = v65;
    v110 = v64;
    v111 = 1;
    v112 = 1;
    v113 = 1;
    dispatch_async(v43, v85);
    sub_2453ABB5C(v116);
  }

  else
  {
    v44 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v114 = 0;
      _os_log_impl(&dword_245396000, v44, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,SuplStatusReportCB is NULL", v114, 2u);
    }
  }

  result = sub_2453ABB5C(buf);
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245481078(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_2453A5EE4();
  }

  (*(*v2 + 48))(v2, a1 + 64);
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 104);
    v6 = *(a1 + 112);
    v7 = *(a1 + 120);
    v8 = *(a1 + 128);
    v10 = *(a1 + 64);
    v9 = *(a1 + 68);
    v11 = *(a1 + 72);
    v12 = *(a1 + 76);
    v13 = *(a1 + 80);
    v14 = *(a1 + 88);
    if (*(a1 + 136))
    {
      v15 = 84;
    }

    else
    {
      v15 = 70;
    }

    if (*(a1 + 137))
    {
      v16 = 84;
    }

    else
    {
      v16 = 70;
    }

    if (*(a1 + 138))
    {
      v17 = 84;
    }

    else
    {
      v17 = 70;
    }

    v19 = 134548993;
    v20 = v14;
    v21 = 2053;
    v22 = v4;
    v23 = 2053;
    v24 = v5;
    v25 = 2049;
    v26 = v6;
    v27 = 2049;
    v28 = v7;
    v29 = 2049;
    v30 = v8;
    v31 = 1024;
    v32 = v9;
    v33 = 1024;
    v34 = v11;
    v35 = 1024;
    v36 = v10;
    v37 = 1024;
    v38 = v12;
    v39 = 2048;
    v40 = v13;
    v41 = 1024;
    v42 = v15;
    v43 = 1024;
    v44 = v16;
    v45 = 1024;
    v46 = v17;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#out, Lat,%{sensitive}.6f,Long,%{sensitive}.6f,Alt,%{sensitive}.2f,SemMaj,%{private}.f,SemMin,%{private}.f,UncAlt,%{private}.f,PosMethod,%u,Status,%u,SessionId,%u,endCause,%u,HACC,%f,ephProvided,%c,refTimeProvided,%c,refLocProvided,%c", &v19, 0x72u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_245481208(uint64_t a1)
{
  if (*(a1 + 44) == 2)
  {
    v1 = *(a1 + 48);
    v2 = *(a1 + 424);
    v6[4] = *(a1 + 408);
    v6[5] = v2;
    v6[6] = *(a1 + 440);
    v7 = *(a1 + 456);
    v3 = *(a1 + 360);
    v6[0] = *(a1 + 344);
    v6[1] = v3;
    v4 = *(a1 + 392);
    v6[2] = *(a1 + 376);
    v6[3] = v4;
    sub_245479DC8(v1, 0, v6);
  }

  else
  {
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#out,Invalid posProtocol in Pos Response", v6, 2u);
    }
  }
}

void sub_2454812C0(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 12) == 2)
  {
    v2 = *(v1 + 56);
    v3 = *(v1 + 24);
    v4 = *(v1 + 16);
    v5 = *(v1 + 20);
    v8 = 0x8000000080000000;
    v9 = 0x7FFFFFFF;
    v10 = v5;
    v11 = v3;
    v12 = 0;
    v13 = v2;
    v14 = -1;
    v15 = -1;
    v16 = -1;
    v17 = 0u;
    v18 = 0u;
    sub_245479C1C(v4, &v8, 1);
  }

  else
  {
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#out,Invalid posProtocol in Aid request", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2454813C0(uint64_t a1, char *__src, char *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1 + 1];
    if (v11 < 0)
    {
      sub_2453A631C();
    }

    v12 = v7 - v10;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      operator new();
    }

    v14 = (__src - v10);
    if (__src == v10)
    {
      operator new();
    }

    *v14 = *a3;
    memcpy(v14 + 1, __src, *(a1 + 8) - __src);
    v17 = *a1;
    v18 = &v14[*(a1 + 8) - __src + 1];
    *(a1 + 8) = __src;
    v19 = &v14[v17 - __src];
    memcpy(v19, v17, __src - v17);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v18;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 1;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v16 = __src <= a3 && v9 > a3;
    *__src = a3[v16];
  }
}

void sub_2454815BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2454815D4(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_245481638(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_2454816D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_245481768(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;

    operator delete(v5);
  }
}

uint64_t sub_2454817E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    sub_245481768((i - 128));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_245481830(uint64_t a1)
{
  *a1 = 0xFFFFFFFF00000000;
  *(a1 + 8) = -1;
  v2 = a1 + 284;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 50) = -1;
  *(a1 + 52) = -1;
  *(a1 + 68) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = -1;
  *(a1 + 92) = -1;
  *(a1 + 100) = -1;
  *(a1 + 88) = -1;
  *(a1 + 80) = 0x7FFFFFFF;
  *(a1 + 84) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x401C000000000000;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  *(a1 + 176) = -1;
  *(a1 + 184) = 0;
  *(a1 + 186) = -1;
  *(a1 + 188) = -1;
  *(a1 + 195) = -1;
  *(a1 + 204) = 0xFFFFFFFF00000004;
  *(a1 + 212) = -1;
  *(a1 + 214) = -1;
  *(a1 + 216) = -1;
  *(a1 + 220) = 0;
  *(a1 + 224) = -NAN;
  *(a1 + 232) = 0x7FFFFFFF;
  *(a1 + 236) = -1;
  *(a1 + 240) = xmmword_245486DF0;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 263) = -1;
  *(a1 + 260) = -1;
  *(a1 + 268) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 280) = -1;
  *(a1 + 276) = -1;
  *&v3 = 0x8000000080000000;
  *(&v3 + 1) = 0x8000000080000000;
  *(a1 + 284) = v3;
  *(a1 + 300) = -1;
  *(a1 + 304) = -1;
  memset_pattern16((a1 + 308), &unk_245486E50, 0x78uLL);
  *(a1 + 428) = -1;
  *(a1 + 432) = 255;
  *(v2 + 168) = -1;
  *(a1 + 436) = -1;
  *(a1 + 443) = -1;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 496) = 0;
  *(a1 + 528) = 0;
  *(a1 + 560) = 0;
  *(a1 + 592) = 0;
  *(a1 + 624) = 0;
  *(a1 + 656) = 0;
  *(a1 + 688) = 0;
  *(a1 + 720) = 0;
  *(sub_24547C334() + 104) = a1;
  *(sub_2453B4548() + 232) = a1;
  sub_24547A5D4();
  return a1;
}

void sub_2454819CC(_Unwind_Exception *a1)
{
  sub_2453ADB7C(v1 + 696);
  sub_2453AD930(v1 + 664);
  sub_2454855F0(v1 + 632);
  sub_2453AD330(v1 + 600);
  sub_2453AB658(v1 + 568);
  sub_2453AB5D8(v1 + 536);
  sub_2453AB558(v1 + 504);
  sub_245485570(v1 + 472);
  _Unwind_Resume(a1);
}

uint64_t sub_245481A18(uint64_t a1)
{
  sub_2453ADB7C(a1 + 696);
  sub_2453AD930(a1 + 664);
  sub_2454855F0(a1 + 632);
  sub_2453AD330(a1 + 600);
  sub_2453AB658(a1 + 568);
  sub_2453AB5D8(a1 + 536);
  sub_2453AB558(a1 + 504);
  sub_245485570(a1 + 472);
  return a1;
}

void sub_245481A7C(uint64_t a1, int a2, int a3, double a4)
{
  v14 = *MEMORY[0x277D85DE8];
  *(a1 + 128) = a2;
  *(a1 + 129) = a3;
  *(a1 + 136) = a4;
  v7 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67175169;
    v9[1] = a2;
    v10 = 1025;
    v11 = a3;
    v12 = 2049;
    v13 = a4;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "SessionHandler,helo,%{private}d,earlyreturn,%{private}d,targetvunc,%{private}f.02", v9, 0x18u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_245481B5C(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  *(a1 + 120) = sub_24539D8D0() * 0.000000001;
  v2 = *(a1 + 164);
  if (v2)
  {
    v28 = *(a1 + 212);
    v29 = *(a1 + 228);
    v30 = *(a1 + 244);
    *&v26[8] = *(a1 + 180);
    v27 = *(a1 + 196);
    v3 = *(a1 + 441);
    v43 = *(a1 + 425);
    *v44 = v3;
    *&v44[15] = *(a1 + 456);
    v4 = *(a1 + 393);
    v42 = *(a1 + 409);
    v5 = *(a1 + 329);
    v38 = *(a1 + 345);
    v6 = *(a1 + 377);
    v39 = *(a1 + 361);
    v40 = v6;
    v41 = v4;
    v7 = *(a1 + 265);
    v34 = *(a1 + 281);
    v8 = *(a1 + 313);
    v35 = *(a1 + 297);
    v36 = v8;
    v9 = *(a1 + 52);
    v10 = *(a1 + 264) >> (v9 == 1);
    v11 = *a1;
    v12 = *(a1 + 56) == 2;
    *buf = *(a1 + 160);
    v25 = COERCE_DOUBLE(__PAIR64__(v12, v2));
    *v26 = v9;
    v13 = *(a1 + 260);
    *&v26[4] = v11;
    v31 = v13;
    v32 = v10;
    v37 = v5;
    v33 = v7;
    v14 = *(a1 + 80);
    v22[4] = *(a1 + 64);
    v22[5] = v14;
    v23 = *(a1 + 96);
    v15 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v15;
    v16 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v16;
    sub_245481D7C(a1, buf, v22);
  }

  else
  {
    sub_245482090(a1);
  }

  v17 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 112);
    v20 = *(a1 + 120);
    *buf = 134218496;
    v25 = v20 - v21;
    *v26 = 2048;
    *&v26[2] = v21;
    *&v26[10] = 2048;
    *&v26[12] = v20;
    _os_log_debug_impl(&dword_245396000, v17, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,TTFF,%f,starttime,%.2f,endtime,%.2f", buf, 0x20u);
  }

  buf[0] = 0;
  v18 = *(a1 + 688);
  if (!v18)
  {
    sub_2453A5EE4();
  }

  (*(*v18 + 48))(v18, buf);
  sub_245482340(a1);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245481D7C(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = memcpy(__dst, a2, 0x138uLL);
  sub_245484874(v6, __dst);
  v7 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst[0]) = 0;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,setPositionReportAndSendSummaryReport", __dst, 2u);
  }

  if (*(a2 + 8))
  {
    v8 = sub_24547C334();
    memcpy(__dst, a2, 0x138uLL);
    sub_2454807D8(v8, __dst);
  }

  else
  {
    v9 = *(a1 + 78);
    if (v9)
    {
      (*(*v9 + 48))(v9, a2);
    }
  }

  v11 = *(a2 + 92);
  v10 = *(a2 + 96);
  v12 = *(a2 + 100);
  v13 = *(a2 + 102);
  v14 = *(a2 + 105);
  v39 = *(a2 + 8);
  v40 = *(a2 + 300);
  v41 = *(a2 + 304);
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 32);
  v18 = *(a3 + 52);
  v19 = *(a3 + 64);
  v20 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst[0]) = 0;
    _os_log_debug_impl(&dword_245396000, v20, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,setSummaryReport", __dst, 2u);
  }

  v21.f64[0] = v11;
  v22 = v10 * 0.0000107288373;
  v23 = v12 & 0x7FFF;
  if (v12 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = -v23;
  }

  v25 = -1.0;
  v26 = -1.0;
  if (v13 != 255)
  {
    v27 = pow(1.1, v13);
    v22 = v10 * 0.0000107288373;
    v21.f64[0] = v11;
    v26 = (v27 + -1.0) * 10.0;
  }

  v21.f64[1] = v22;
  v28 = xmmword_245491C90;
  if (v14 != 255)
  {
    v42 = v21;
    v29 = pow(1.025, v14);
    v21 = v42;
    v25 = (v29 + -1.0) * 45.0;
    v28 = xmmword_245491C90;
  }

  v30 = vmulq_f64(v21, v28);
  v31 = *(a1 + 15) - *(a1 + 14);
  if (v39)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  if (v39)
  {
    v33 = 3;
  }

  else
  {
    v33 = 1;
  }

  if (v18 > 4)
  {
    v34 = 0;
  }

  else
  {
    v34 = dword_2454922CC[v18];
  }

  v35 = *(a1 + 128);
  v36 = *(a1 + 63);
  v37 = *a1;
  __dst[0] = v30;
  *&__dst[1] = v24;
  *(&__dst[1] + 1) = v26;
  *&__dst[2] = v25;
  *(&__dst[2] + 1) = v31;
  *&__dst[3] = v40 | 0x200000000;
  *(&__dst[3] + 1) = __PAIR64__(v34, v32);
  *&__dst[4] = v15;
  *(&__dst[4] + 1) = v16;
  *&__dst[5] = v17;
  *(&__dst[5] + 1) = v33 | 0x100000000;
  LOBYTE(__dst[6]) = v35;
  BYTE1(__dst[6]) = v36;
  *(&__dst[6] + 1) = ((v19 & 4) << 17) | (4 * (v19 & 3));
  *&__dst[7] = v41;
  DWORD2(__dst[7]) = v37;
  result = *(a1 + 62);
  if (result)
  {
    return (*(*result + 48))(result, __dst);
  }

  return result;
}

void sub_245482090(int *a1)
{
  *__src = 0;
  *&__src[8] = -1;
  *&__src[16] = -1;
  *&__src[24] = 0;
  __src[26] = -1;
  *&__src[28] = -1;
  *&__src[35] = -1;
  *&__src[44] = 0xFFFFFFFF00000004;
  *&__src[52] = -1;
  __src[54] = -1;
  *&__src[56] = -1;
  *&__src[60] = 0;
  *&__src[64] = -NAN;
  *&__src[72] = 0x7FFFFFFF;
  __src[76] = -1;
  *&__src[80] = xmmword_245486DF0;
  *&__src[96] = 0xFFFFFFFF7FFFFFFFLL;
  *&__src[103] = -1;
  *&__src[108] = 0x8000000080000000;
  *&__src[116] = -1;
  *&__src[120] = -1;
  *&v2 = 0x8000000080000000;
  *(&v2 + 1) = 0x8000000080000000;
  *&__src[124] = v2;
  *&__src[140] = -1;
  __src[144] = -1;
  memset_pattern16(&__src[148], &unk_245486E50, 0x78uLL);
  __src[268] = -1;
  *&__src[272] = 255;
  *&__src[292] = -1;
  *&__src[276] = -1;
  *&__src[283] = -1;
  *&__src[300] = 0;
  *&__src[304] = 0;
  if (*a1)
  {
    v4 = a1[13];
    v3 = a1[14];
    *&__src[16] = *a1;
    v5 = 0x8FFFFFFFCLL;
    *__src = 0x8FFFFFFFCLL;
    *&__src[8] = v3 != 1;
    *&__src[12] = v4;
    if (v3 == 1)
    {
      v8 = *(a1 + 78);
      if (!v8 || ((*(*v8 + 48))(v8, __src), !*&__src[8]))
      {
        v10 = 1;
        v9 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = sub_24547C334();
      memcpy(v25, __src, sizeof(v25));
      sub_2454807D8(v6, v25);
    }

    v9 = 2;
    v10 = 3;
LABEL_10:
    v11 = a1[13];
    if (v11 > 4)
    {
      v12 = 0;
    }

    else
    {
      v12 = dword_2454922CC[v11];
    }

    LOWORD(v5) = *(a1 + 4);
    v13 = *(a1 + 2);
    v14 = *(a1 + 4);
    v15 = *(a1 + 128);
    v16 = *(a1 + 63);
    v17 = ((a1[16] & 4) << 17) | (4 * (a1[16] & 3));
    v18 = *a1;
    *v25 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&v25[16] = xmmword_245486E00;
    __asm { FMOV            V3.2D, #-1.0 }

    *&v25[32] = _Q3;
    *&v25[48] = 0;
    *&v25[56] = v9;
    *&v25[60] = v12;
    *&v25[64] = v5;
    *&v25[72] = v13;
    *&v25[80] = v14;
    *&v25[88] = v10;
    *&v25[92] = 11;
    v25[96] = v15;
    v25[97] = v16;
    *&v25[104] = v17;
    *&v25[112] = 0;
    *&v25[120] = v18;
    v24 = *(a1 + 62);
    if (v24)
    {
      (*(*v24 + 48))(v24, v25);
    }

    return;
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    *v25 = 0;
    _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "SessionHandler,#out,sendPosMethodFailure,no active session", v25, 2u);
  }
}

void sub_245482340(void *a1)
{
  a1[14] = 0;
  a1[15] = 0;
  *__src = 0;
  *&__src[8] = -1;
  *&__src[16] = -1;
  *&__src[24] = 0;
  __src[26] = -1;
  *&__src[28] = -1;
  *&__src[35] = -1;
  *&__src[44] = 0xFFFFFFFF00000004;
  *&__src[52] = -1;
  __src[54] = -1;
  *&__src[56] = -1;
  *&__src[60] = 0;
  *&__src[64] = -NAN;
  *&__src[72] = 0x7FFFFFFF;
  __src[76] = -1;
  *&__src[80] = xmmword_245486DF0;
  *&__src[96] = 0xFFFFFFFF7FFFFFFFLL;
  *&__src[103] = -1;
  *&__src[108] = 0x8000000080000000;
  *&__src[116] = -1;
  *&__src[120] = -1;
  *&v2 = 0x8000000080000000;
  *(&v2 + 1) = 0x8000000080000000;
  *&__src[124] = v2;
  *&__src[140] = -1;
  *&__src[144] = 255;
  memset_pattern16(&__src[148], &unk_245486E50, 0x78uLL);
  __src[268] = -1;
  *&__src[272] = 255;
  *&__src[276] = -1;
  *&__src[283] = -1;
  *&__src[292] = -1;
  *&__src[300] = 0;
  *&__src[304] = 0;
  memcpy(a1 + 20, __src, 0x138uLL);
  sub_2454847A4(a1);

  sub_24548441C(a1);
}

BOOL sub_245482478(uint64_t a1, uint64_t a2, int a3)
{
  v54 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v6 = qword_2813CF008;
    if (os_log_type_enabled(qword_2813CF008, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&dword_245396000, v6, OS_LOG_TYPE_DEFAULT, "SessionHandler,#input,nilrPositionRequest,Periodic Sessions", v49, 2u);
    }
  }

  v7 = *(a2 + 4);
  if (v7 != -1)
  {
    v8 = *(a2 + 8);
    if ((v8 - 1) >= 0x80)
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v49 = 0;
        v12 = "SessionHandler,#input,nilrPositionRequest,Invalid responseTime";
        goto LABEL_28;
      }

      goto LABEL_12;
    }

    v9 = *(a2 + 28);
    if ((v9 & 1) == 0)
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v49 = 0;
        v12 = "SessionHandler,#input,nilrPositionRequest,Invalid requestedGnss,should be GPS only";
LABEL_28:
        v18 = v10;
        v19 = 2;
LABEL_29:
        _os_log_error_impl(&dword_245396000, v18, OS_LOG_TYPE_ERROR, v12, v49, v19);
        result = 0;
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v14 = *(a2 + 36);
    if (v14 == -1)
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v49 = 0;
        v12 = "SessionHandler,#input,nilrPositionRequest,Invalid pos protocol";
        goto LABEL_28;
      }

      goto LABEL_12;
    }

    v15 = *(a2 + 10);
    if (v15 < 0)
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v49 = 0;
        v12 = "SessionHandler,#input,nilrPositionRequest,Invalid HAcc";
        goto LABEL_28;
      }

      goto LABEL_12;
    }

    v16 = *(a2 + 20);
    if (v16)
    {
      if (*(a2 + 17) < 0)
      {
        v10 = qword_2813CF018;
        result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_12;
        }

        *v49 = 0;
        v12 = "SessionHandler,#input,#nilr,nilrPositionRequest,Invalid VAcc";
        goto LABEL_28;
      }

      if (*(a2 + 18) >= 0x65u)
      {
        v10 = qword_2813CF018;
        result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *v49 = 0;
          v12 = "SessionHandler,#input,#nilr,nilrPositionRequest,Invalid VConf";
          goto LABEL_28;
        }

        goto LABEL_12;
      }
    }

    v17 = *(a2 + 16);
    if (v17 >= 0x65)
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v49 = 0;
        v12 = "SessionHandler,#input,#nilr,nilrPositionRequest,Invalid HConf";
        goto LABEL_28;
      }

      goto LABEL_12;
    }

    v20 = *(a2 + 30);
    if (*(a2 + 30) && (v20 & 0xB7) == 0)
    {
      v21 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_12;
      }

      *v49 = 67109120;
      *&v49[4] = v20;
      v12 = "SessionHandler,#input,#nilr,nilrPositionRequest,ShapeType Not Supported, %u";
      v18 = v21;
      v19 = 8;
      goto LABEL_29;
    }

    v22 = *(a2 + 40);
    if (*a1 == v22)
    {
      *(a1 + 4) = v7;
      *(a1 + 8) = v8;
      v23 = pow(1.1, v15);
      v24 = -1.0;
      *(a1 + 16) = (v23 + -1.0) * 10.0;
      *(a1 + 24) = *(a2 + 12) != 0;
      *(a1 + 25) = v17;
      v25 = *(a2 + 17);
      if (v25 != 255)
      {
        v24 = (pow(1.025, v25) + -1.0) * 45.0;
      }

      *(a1 + 32) = v24;
      *(a1 + 40) = *(a2 + 18);
      *(a1 + 44) = v16;
      *(a1 + 48) = v9;
      *(a1 + 50) = *(a2 + 31);
      *(a1 + 52) = v14;
      *(a1 + 56) = a3;
      v26 = *(a1 + 80);
      v51 = *(a1 + 64);
      v52 = v26;
      v53 = *(a1 + 96);
      v27 = *(a1 + 16);
      *v49 = *a1;
      *&v49[16] = v27;
      v28 = *(a1 + 48);
      *&v49[32] = *(a1 + 32);
      v50 = v28;
      sub_245482C60(v49);
      goto LABEL_55;
    }

    if (*a1)
    {
      v29 = qword_2813CF020;
      v30 = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
      if (!v14)
      {
        if (v30)
        {
          *v49 = 0;
          _os_log_debug_impl(&dword_245396000, v29, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,#nilr,nilrPositionRequest,RRLP session. Updating only session ID", v49, 2u);
          v22 = *(a2 + 40);
        }

        *a1 = v22;
        goto LABEL_55;
      }

      if (v30)
      {
        *v49 = 0;
        _os_log_debug_impl(&dword_245396000, v29, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,#nilr,nilrPositionRequest,delete the existing active session", v49, 2u);
      }

      *a1 = 0xFFFFFFFF00000000;
      *(a1 + 8) = -1;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 44) = 0;
      *(a1 + 48) = 0;
      *(a1 + 50) = -1;
      *(a1 + 52) = -1;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 68) = 0;
      *(a1 + 72) = -1;
      *(a1 + 92) = -1;
      *(a1 + 100) = -1;
      *(a1 + 88) = -1;
      *(a1 + 80) = 0x7FFFFFFF;
      *(a1 + 84) = -1;
      v31 = *(a2 + 4);
      v32 = *(a2 + 8);
      v15 = *(a2 + 10);
      *a1 = *(a2 + 40);
      *(a1 + 4) = v31;
      *(a1 + 8) = v32;
      if (v15 == 255)
      {
        v33 = -1.0;
LABEL_48:
        *(a1 + 16) = v33;
        *(a1 + 24) = *(a2 + 12) != 0;
        *(a1 + 25) = *(a2 + 16);
        v34 = *(a2 + 17);
        if (v34 == 255)
        {
          v35 = -1.0;
        }

        else
        {
          v35 = (pow(1.025, v34) + -1.0) * 45.0;
        }

        *(a1 + 32) = v35;
        *(a1 + 40) = *(a2 + 18);
        *(a1 + 44) = *(a2 + 20);
        *(a1 + 48) = *(a2 + 28);
        *(a1 + 50) = *(a2 + 31);
        *(a1 + 52) = *(a2 + 36);
        *(a1 + 56) = a3;
LABEL_55:
        if (*(a2 + 20))
        {
          v36 = *(a2 + 17);
          if (*(a2 + 17))
          {
            v37 = qword_2813CF020;
            if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
            {
              *v49 = 0;
              _os_log_debug_impl(&dword_245396000, v37, OS_LOG_TYPE_DEBUG, "SessionHandler,#nilr,nilrPositionRequest,update target vertical uncertainty to minimum", v49, 2u);
              v36 = *(a2 + 17);
            }

            if (v36 == 255)
            {
              v38 = -1.0;
            }

            else
            {
              v38 = (pow(1.025, v36) + -1.0) * 45.0;
            }

            if (v38 >= *(a1 + 136))
            {
              v38 = *(a1 + 136);
            }

            *(a1 + 136) = v38;
          }
        }

        v39 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(a1 + 64);
          v41 = *(a2 + 24);
          *v49 = 67109376;
          *&v49[4] = v40;
          *&v49[8] = 1024;
          *&v49[10] = v41;
          _os_log_impl(&dword_245396000, v39, OS_LOG_TYPE_DEFAULT, "SessionHandler,#nilr,nilrPositionRequest,assistanceReceived,%d,assistanceAvailability,%d", v49, 0xEu);
        }

        if (*(a1 + 64) != 7 && *(a2 + 24))
        {
          v42 = qword_2813CF020;
          if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
          {
            *v49 = 0;
            _os_log_debug_impl(&dword_245396000, v42, OS_LOG_TYPE_DEBUG, "SessionHandler,#nilr,nilrPositionRequest,requesting additional assistance", v49, 2u);
          }

          sub_245482D6C(a1);
          if (!*(a2 + 36))
          {
            *(a1 + 62) = 1;
          }
        }

        v49[0] = 1;
        v43 = *(a1 + 688);
        if (!v43)
        {
          sub_2453A5EE4();
        }

        (*(*v43 + 48))(v43, v49);
        sub_2454830B0(a1, *(a2 + 8));
        v44 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a1 + 129);
          v46 = *(a1 + 16);
          v47 = *(a1 + 32);
          v48 = sub_24539D8D0();
          *v49 = 67109889;
          *&v49[4] = v45;
          *&v49[8] = 2049;
          *&v49[10] = v46;
          *&v49[18] = 2049;
          *&v49[20] = v47;
          *&v49[28] = 2048;
          *&v49[30] = v48 * 0.000000001;
          _os_log_debug_impl(&dword_245396000, v44, OS_LOG_TYPE_DEBUG, "SessionHandler,#nilr,nilrPositionRequest,config,early_return=%d,hacc=%{private}.6f,vacc=%{private}.6f,startTime=%.6f", v49, 0x26u);
        }

        result = 1;
        goto LABEL_12;
      }
    }

    else
    {
      *a1 = v22;
      *(a1 + 4) = v7;
      *(a1 + 8) = v8;
    }

    v33 = (pow(1.1, v15) + -1.0) * 10.0;
    goto LABEL_48;
  }

  v10 = qword_2813CF018;
  result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v49 = 0;
    v12 = "SessionHandler,#input,nilrPositionRequest,Invalid Methodtype";
    goto LABEL_28;
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245482C60(int *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = *(a1 + 4);
    v7 = *(a1 + 2);
    v8 = *(a1 + 4);
    v9 = a1[13];
    v10 = a1[14];
    v11 = a1[11];
    v12 = *(a1 + 24);
    v13[0] = 67176705;
    v13[1] = v4;
    v14 = 1025;
    v15 = v5;
    v16 = 1025;
    v17 = v6;
    v18 = 2049;
    v19 = v7;
    v20 = 2049;
    v21 = v8;
    v22 = 1024;
    v23 = v9;
    v24 = 1024;
    v25 = v10;
    v26 = 1025;
    v27 = v11;
    v28 = 1025;
    v29 = v12;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "SessionHandler,#logFix,session info id=%{private}u,method=%{private}u,respTime=%{private}d,hacc=%{private}.6f,vacc=%{private}.6f,posProto=%d,sesnType=%d,vertRequested=%{private}d,velRequested=%{private}d", v13, 0x40u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_245482D6C(uint64_t a1)
{
  v45[204] = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = 0;
  v36 = -1;
  v37 = -1;
  v38 = 0;
  v39 = -1;
  v40 = -1;
  memset(v41, 0, 14);
  v41[14] = -1;
  memset(&v41[15], 0, 14);
  v2 = &v44;
  v3 = v45;
  v42 = -1;
  v4 = 44;
  v43[0] = 0;
  do
  {
    v5 = &v43[v4];
    *v5 = 5;
    *(v5 + 2) = 0;
    v5[6] = -1;
    v6 = v2;
    v7 = 120;
    do
    {
      *(v6 - 4) = -1;
      *v6 = -1;
      v6 += 2;
      v7 -= 8;
    }

    while (v7);
    *(v5 + 32) = -1;
    *(v5 + 66) = -1;
    *(v5 + 134) = -256;
    *(v5 + 138) = 0;
    *(v5 + 18) = 0;
    *(v5 + 38) = -1;
    v8 = v3;
    v9 = 60;
    v5[156] = -1;
    do
    {
      *(v8 - 2) = -1;
      *v8 = -1;
      v8 += 2;
      v9 -= 4;
    }

    while (v9);
    *(v5 + 218) = -1;
    v4 += 224;
    v2 += 56;
    v3 += 28;
  }

  while (v4 != 1836);
  v10 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 52);
    v11 = *(a1 + 56);
    LODWORD(v36) = v11 != 1;
    HIDWORD(v36) = v12;
    v37 = v10;
    v34 = -8;
    v35 = 1;
    v13 = *(a1 + 64);
    v14 = ~(v13 << 6) & 0x40;
    if ((v13 & 2) == 0)
    {
      v14 |= 0x20u;
    }

    if ((v13 & 4) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 | 8;
    }

    if ((~v13 & 7) != 0)
    {
      v38 = v15;
    }

    v42 = 3;
    v39 = 0;
    v16 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v21) = 67177217;
      HIDWORD(v21) = v15;
      v22 = 0x401FFFFFFF80401;
      LODWORD(v23) = 1;
      WORD2(v23) = 1025;
      *(&v23 + 6) = v10;
      WORD5(v23) = 1025;
      HIDWORD(v23) = v12;
      LOWORD(v24) = 1025;
      *(&v24 + 2) = v11 != 1;
      HIWORD(v24) = 1024;
      v25 = 0;
      v26 = 1024;
      v27 = 0;
      v28 = 1024;
      v29 = v15;
      v30 = 1024;
      v31 = 0;
      v32 = 1024;
      v33 = 3;
      _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,requestAdditionalAssistance,%{private}d,result,%{private}d,responseType,%{private}d,sessionId,%{private}u,posProtocol,%{private}d,sessionProtocol,%{private}d.gToe,%d,gWeek,%d,aidMask,%d,numOfSats,%d,toeLimit,%d", &v21, 0x44u);
    }

    if (v11 == 1)
    {
      v19 = *(a1 + 656);
      if (v19)
      {
        (*(*v19 + 48))(v19, &v34);
      }
    }

    else
    {
      v17 = *(sub_24547C334() + 88);
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      *&v23 = sub_2454812C0;
      *(&v23 + 1) = &unk_278E36C40;
      v24 = &v34;
      dispatch_async(v17, &v21);
    }
  }

  else
  {
    v18 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&dword_245396000, v18, OS_LOG_TYPE_ERROR, "SessionHandler,#process,requestAdditionalAssistance,no active session", &v21, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2454830B0(uint64_t a1, unsigned int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_24548441C(a1);
  if (a2 <= 2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 - 2;
  }

  if (!*(a1 + 104))
  {
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 144));
    *(a1 + 104) = v5;
    v6 = qword_2813CF020;
    v7 = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        *buf = 67109120;
        v13 = v4;
        _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,created timer,starting timer for,%d,seconds", buf, 8u);
        v5 = *(a1 + 104);
      }

      v8 = dispatch_time(0, 1000000000 * v4);
      dispatch_source_set_timer(v5, v8, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      *(a1 + 112) = sub_24539D8D0() * 0.000000001;
      v9 = *(a1 + 104);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_2454844B0;
      handler[3] = &unk_278E36C40;
      handler[4] = a1;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(*(a1 + 104));
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "SessionHandler,fTimer NULL", buf, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_245483278(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24))
  {
    sub_245485670(v6, a2);
    v8 = 0;
    if (v6[3])
    {
      operator new();
    }

    if (buf != (a1 + 472))
    {
      v4 = *(a1 + 496);
      if (v4 == a1 + 472)
      {
        (*(*v4 + 24))(v4, buf);
        (*(**(a1 + 496) + 32))(*(a1 + 496));
        *(a1 + 496) = v8;
        v8 = buf;
      }

      else
      {
        v8 = *(a1 + 496);
        *(a1 + 496) = 0;
      }
    }

    sub_245485570(buf);
    sub_2453ABD0C(v6);
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "SessionHandler EmergencySessionSummaryReportCb NULL callback pointer ", buf, 2u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_24548346C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_2453A3640(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24548349C(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24))
  {
    sub_245485954(v5, a2);
    v7 = 0;
    if (v5[3])
    {
      operator new();
    }

    sub_2453B6008(buf, (a1 + 504));
    sub_2453AB558(buf);
    sub_2453AC2CC(v5);
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "SessionHandler NavModelCb NULL callback pointer", buf, 2u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_24548360C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_2453A3640(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245483638(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v4 = (a1 + 536);

    sub_2453B4AD8(v4, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "SessionHandler RefTimeCb NULL callback pointer", v6, 2u);
    }
  }
}

void sub_2454836BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v4 = (a1 + 568);

    sub_2453B4B4C(v4, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "SessionHandler RefLocationCb NULL callback pointer", v6, 2u);
    }
  }
}

void sub_245483740(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v10 = v9;
      (*(*v3 + 24))(v3, v9);
    }

    else
    {
      v10 = (*(*v3 + 16))(v3);
    }

    v5 = a1 + 600;
    if (v9 != (a1 + 600))
    {
      v6 = v10;
      v7 = *(a1 + 624);
      if (v10 == v9)
      {
        if (v7 == v5)
        {
          (*(*v10 + 24))();
          (*(*v10 + 32))(v10);
          v10 = 0;
          (*(**(a1 + 624) + 24))(*(a1 + 624), v9);
          (*(**(a1 + 624) + 32))(*(a1 + 624));
          *(a1 + 624) = 0;
          v10 = v9;
          (*(v11[0] + 24))(v11, a1 + 600);
          (*(v11[0] + 32))(v11);
        }

        else
        {
          (*(*v10 + 24))();
          (*(*v10 + 32))(v10);
          v10 = *(a1 + 624);
        }

        *(a1 + 624) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(a1 + 624), v9);
        (*(**(a1 + 624) + 32))(*(a1 + 624));
        *(a1 + 624) = v10;
        v10 = v9;
      }

      else
      {
        v10 = *(a1 + 624);
        *(a1 + 624) = v6;
      }
    }

    sub_2453AD330(v9);
  }

  else
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "SessionHandler PosResponseCb NULL callback pointer", v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_245483A70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

void sub_245483A7C(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24))
  {
    sub_245485C30(v6, a2);
    v8 = 0;
    if (v6[3])
    {
      operator new();
    }

    if (buf != (a1 + 632))
    {
      v4 = *(a1 + 656);
      if (v4 == a1 + 632)
      {
        (*(*v4 + 24))(v4, buf);
        (*(**(a1 + 656) + 32))(*(a1 + 656));
        *(a1 + 656) = v8;
        v8 = buf;
      }

      else
      {
        v8 = *(a1 + 656);
        *(a1 + 656) = 0;
      }
    }

    sub_2454855F0(buf);
    sub_2453AD69C(v6);
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "SessionHandler AssistanceNeededReportCb NULL callback pointer", buf, 2u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_245483C70(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_2453A3640(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245483CA0(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v10 = v9;
      (*(*v3 + 24))(v3, v9);
    }

    else
    {
      v10 = (*(*v3 + 16))(v3);
    }

    v5 = a1 + 664;
    if (v9 != (a1 + 664))
    {
      v6 = v10;
      v7 = *(a1 + 688);
      if (v10 == v9)
      {
        if (v7 == v5)
        {
          (*(*v10 + 24))();
          (*(*v10 + 32))(v10);
          v10 = 0;
          (*(**(a1 + 688) + 24))(*(a1 + 688), v9);
          (*(**(a1 + 688) + 32))(*(a1 + 688));
          *(a1 + 688) = 0;
          v10 = v9;
          (*(v11[0] + 24))(v11, a1 + 664);
          (*(v11[0] + 32))(v11);
        }

        else
        {
          (*(*v10 + 24))();
          (*(*v10 + 32))(v10);
          v10 = *(a1 + 688);
        }

        *(a1 + 688) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(a1 + 688), v9);
        (*(**(a1 + 688) + 32))(*(a1 + 688));
        *(a1 + 688) = v10;
        v10 = v9;
      }

      else
      {
        v10 = *(a1 + 688);
        *(a1 + 688) = v6;
      }
    }

    sub_2453AD930(v9);
  }

  else
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "SessionHandler setNilrSessionIndicationCb NULL callback pointer", v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_245483FD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

void sub_245483FDC(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v10 = v9;
      (*(*v3 + 24))(v3, v9);
    }

    else
    {
      v10 = (*(*v3 + 16))(v3);
    }

    v5 = a1 + 696;
    if (v9 != (a1 + 696))
    {
      v6 = v10;
      v7 = *(a1 + 720);
      if (v10 == v9)
      {
        if (v7 == v5)
        {
          (*(*v10 + 24))();
          (*(*v10 + 32))(v10);
          v10 = 0;
          (*(**(a1 + 720) + 24))(*(a1 + 720), v9);
          (*(**(a1 + 720) + 32))(*(a1 + 720));
          *(a1 + 720) = 0;
          v10 = v9;
          (*(v11[0] + 24))(v11, a1 + 696);
          (*(v11[0] + 32))(v11);
        }

        else
        {
          (*(*v10 + 24))();
          (*(*v10 + 32))(v10);
          v10 = *(a1 + 720);
        }

        *(a1 + 720) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(a1 + 720), v9);
        (*(**(a1 + 720) + 32))(*(a1 + 720));
        *(a1 + 720) = v10;
        v10 = v9;
      }

      else
      {
        v10 = *(a1 + 720);
        *(a1 + 720) = v6;
      }
    }

    sub_2453ADB7C(v9);
  }

  else
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "SessionHandler setBestFixHandlerCb NULL callback pointer", v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_24548430C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

void sub_245484318(int *a1, double a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[13];
    if (a1[14] == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }

    if (a1[14] == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v4 > 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = dword_2454922CC[v4];
    }

    LOWORD(a2) = *(a1 + 4);
    v8 = *(a1 + 2);
    v9 = *(a1 + 4);
    v10 = *(a1 + 128);
    v11 = *(a1 + 63);
    v12 = ((a1[16] & 4) << 17) | (4 * (a1[16] & 3));
    v19[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v19[1] = xmmword_245486E00;
    __asm { FMOV            V3.2D, #-1.0 }

    v19[2] = _Q3;
    v20 = 0;
    v21 = v6;
    v22 = v7;
    v23 = *&a2;
    v24 = v8;
    v25 = v9;
    v26 = v5;
    v27 = 3;
    v28 = v10;
    v29 = v11;
    v30 = v12;
    v31 = 0;
    v32 = v3;
    v18 = *(a1 + 62);
    if (v18)
    {
      (*(*v18 + 48))(v18, v19);
    }
  }

  sub_245482340(a1);
}

void sub_24548441C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    v3 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,cancel the ongoing timer", v4, 2u);
      v1 = *(a1 + 104);
    }

    dispatch_source_cancel(v1);

    *(a1 + 104) = 0;
  }
}

void sub_2454844B0(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 720);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    *(v1 + 120) = sub_24539D8D0() * 0.000000001;
    if (*(v1 + 62) == 1 && !*(v1 + 52))
    {
      v27 = qword_2813CF020;
      if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v28 = "SessionHandler,#out,no response for RRLP additional AD.Not sending POS response";
      v29 = v27;
      v30 = 2;
    }

    else
    {
      v3 = *(v1 + 164);
      if (v3)
      {
        v4 = *(v1 + 264);
        v5 = *(v1 + 160);
        v6 = *v1;
        v7 = *(v1 + 52);
        v8 = *(v1 + 56);
        v39 = *(v1 + 212);
        v9 = *(v1 + 228);
        v10 = *(v1 + 244);
        v11 = *(v1 + 260);
        v12 = *(v1 + 180);
        v13 = *(v1 + 196);
        *&v55[15] = *(v1 + 456);
        v14 = *(v1 + 441);
        v54 = *(v1 + 425);
        *v55 = v14;
        v40 = v9;
        v41 = v10;
        *&v37[8] = v12;
        v38 = v13;
        v15 = *(v1 + 393);
        v53 = *(v1 + 409);
        v52 = v15;
        v16 = *(v1 + 329);
        v49 = *(v1 + 345);
        v17 = *(v1 + 377);
        v50 = *(v1 + 361);
        v51 = v17;
        v18 = *(v1 + 265);
        v45 = *(v1 + 281);
        v19 = *(v1 + 313);
        v46 = *(v1 + 297);
        v47 = v19;
        *buf = v5;
        LODWORD(v36) = v3;
        HIDWORD(v36) = v8 == 2;
        *v37 = v7;
        *&v37[4] = v6;
        v42 = v11;
        v43 = v4 >> (v7 == 1);
        v48 = v16;
        v44 = v18;
        v20 = *(v1 + 80);
        v33[4] = *(v1 + 64);
        v33[5] = v20;
        v34 = *(v1 + 96);
        v21 = *(v1 + 16);
        v33[0] = *v1;
        v33[1] = v21;
        v22 = *(v1 + 48);
        v33[2] = *(v1 + 32);
        v33[3] = v22;
        sub_245481D7C(v1, buf, v33);
      }

      else
      {
        sub_245482090(v1);
      }

      v24 = qword_2813CF020;
      if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:
        buf[0] = 0;
        v25 = *(v1 + 688);
        if (!v25)
        {
          sub_2453A5EE4();
        }

        (*(*v25 + 48))(v25, buf);
        sub_245482340(v1);
        goto LABEL_13;
      }

      v32 = *(v1 + 112);
      v31 = *(v1 + 120);
      *buf = 134218496;
      v36 = v31 - v32;
      *v37 = 2048;
      *&v37[2] = v32;
      *&v37[10] = 2048;
      *&v37[12] = v31;
      v28 = "SessionHandler,#out,TTFF,%f,starttime,%.2f,endtime,%.2f";
      v29 = v24;
      v30 = 32;
    }

    _os_log_debug_impl(&dword_245396000, v29, OS_LOG_TYPE_DEBUG, v28, buf, v30);
    goto LABEL_11;
  }

  v23 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v23, OS_LOG_TYPE_DEBUG, "SessionHandler,callback NULL. Sending POS method failure", buf, 2u);
  }

  sub_245482090(v1);
LABEL_13:
  v26 = *MEMORY[0x277D85DE8];
}

double sub_2454847A4(uint64_t a1)
{
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "SessionHandler,#process,clearSessionAssistanceRecvd", v4, 2u);
  }

  *a1 = 0xFFFFFFFF00000000;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 50) = -1;
  *(a1 + 52) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = -1;
  result = NAN;
  *(a1 + 92) = -1;
  *(a1 + 100) = -1;
  *(a1 + 88) = -1;
  *(a1 + 80) = 0x7FFFFFFF;
  *(a1 + 84) = -1;
  return result;
}

void sub_245484874(uint64_t a1, int *a2)
{
  v89 = *MEMORY[0x277D85DE8];
  v3 = a2[2];
  v4 = qword_2813CF020;
  v5 = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_5;
    }

    LOWORD(v45) = 0;
    v6 = "SessionHandler,#out,posReport,sessionProtocol = SUPL";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_5;
    }

    LOWORD(v45) = 0;
    v6 = "SessionHandler,#out,posReport,sessionProtocol = CPlane";
  }

  _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, v6, &v45, 2u);
LABEL_5:
  v7 = a2[68];
  v8 = qword_2813CF020;
  if (v7 == 3)
  {
    if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v9 = *(a2 + 146);
    v10 = *(a2 + 147);
    v11 = *(a2 + 296);
    v12 = *(a2 + 298);
    v13 = *(a2 + 299);
    v45 = 67175681;
    v46 = v9;
    v47 = 1025;
    v48 = v10;
    v49 = 1025;
    v50 = v11;
    v51 = 1025;
    v52 = v12;
    v53 = 1025;
    v54 = v13;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,posReport,kVelocityTypeHorizontalWithVerticalVelocityAndUncertainty,bearing  ,%{private}u,horizontalSpeed,%{private}u,verticalSpeed,%{private}u,horizUncertaintySpeed,%{private}u,vertUncertaintySpeed,%{private}u", &v45, 0x20u);
    v7 = a2[68];
    v8 = qword_2813CF020;
  }

  if (v7 == 2)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v14 = *(a2 + 143);
    v15 = *(a2 + 144);
    v16 = *(a2 + 290);
    v45 = 67175169;
    v46 = v14;
    v47 = 1025;
    v48 = v15;
    v49 = 1025;
    v50 = v16;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,posReport,kVelocityTypeHorizontalVelocityWithUncertainty,bearing ,%{private}u,horizontalSpeed,%{private}u,horizUncertaintySpeed,%{private}u", &v45, 0x14u);
    v7 = a2[68];
    v8 = qword_2813CF020;
  }

  if (v7 == 1)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v17 = *(a2 + 140);
    v18 = *(a2 + 141);
    v19 = *(a2 + 284);
    v45 = 67175169;
    v46 = v17;
    v47 = 1025;
    v48 = v18;
    v49 = 1025;
    v50 = v19;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,posReport,kVelocityTypeHorizontalWithVerticalVelocity,bearing,%{private}u,horizontalSpeed,%{private}u,verticalSpeed,%{private}u", &v45, 0x14u);
    v7 = a2[68];
    v8 = qword_2813CF020;
  }

  if (!v7 && os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v43 = *(a2 + 138);
    v44 = *(a2 + 139);
    v45 = 67174913;
    v46 = v43;
    v47 = 1025;
    v48 = v44;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "SessionHandler,,#out,posReport,kVelocityTypeHorizontalWithVerticalVelocity,bearing,%{private}u,horizontalSpeed,%{private}u", &v45, 0xEu);
    v8 = qword_2813CF020;
  }

LABEL_17:
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v21 = *a2;
    v23 = a2[3];
    v22 = a2[4];
    v24 = *(a2 + 12);
    v25 = a2[5];
    v26 = *(a2 + 26);
    v28 = a2[8];
    v27 = a2[9];
    v29 = *(a2 + 20);
    v30 = *(a2 + 42);
    v31 = a2[16];
    v32 = a2[23];
    v33 = a2[24];
    v34 = *(a2 + 102);
    v35 = *(a2 + 103);
    v36 = *(a2 + 50);
    v37 = *(a2 + 105);
    v38 = *(a2 + 106);
    v39 = *(a2 + 104);
    v40 = a2[68];
    v41 = a2[75];
    v42 = a2[7];
    v45 = 67114497;
    v46 = v21;
    v47 = 1024;
    v48 = v22;
    v49 = 1024;
    v50 = v23;
    v51 = 1024;
    v52 = v24;
    v53 = 1024;
    v54 = v25;
    v55 = 1024;
    v56 = v26;
    v57 = 1024;
    v58 = v28;
    v59 = 1024;
    v60 = v27;
    v61 = 1024;
    v62 = v29;
    v63 = 1024;
    v64 = v30;
    v65 = 1024;
    v66 = v31;
    v67 = 1029;
    v68 = v32;
    v69 = 1029;
    v70 = v33;
    v71 = 1025;
    v72 = v34;
    v73 = 1025;
    v74 = v35;
    v75 = 1029;
    v76 = v36;
    v77 = 1025;
    v78 = v37;
    v79 = 1025;
    v80 = v38;
    v81 = 1024;
    v82 = v39;
    v83 = 1024;
    v84 = v40;
    v85 = 1024;
    v86 = v41;
    v87 = 1024;
    v88 = v42;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,posReport,result,%u,sessionId,%u,posProtocol,%u,gpsWeek,%u,gpsTow,%u,gpsTimeUncertainty,%u,gpsTODPresent,%d,gpsTODMsec,%u,gpsTODFrac,%u,gpsTODUnc,%u,shapeType,%u,latitude,%{sensitive}u,longitude,%{sensitive}u,Major axis,%{private}u,Minor axis,%{private}u,altitude,%{sensitive}u,uncertainAltitude,%{private}u,confidence,%{private}u,orientationAngle,%u,velocityType,%u,technologySource,%u,fixType,%u", &v45, 0x86u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_245484C68(uint64_t a1, int a2)
{
  if (*a1)
  {
    v4 = *(a1 + 64) | a2;
    *(a1 + 64) |= a2;
    if (v4 != 7 && !*(a1 + 52))
    {
      *(a1 + 62) = 0;
    }
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "SessionHandler,#process,#nilrPosRequest no active session", v6, 2u);
    }
  }
}

__n128 sub_245484D04(uint64_t a1, int *a2)
{
  sub_245484DFC(a1, a2[387], a2[386], a2[385]);
  if (*(a1 + 528))
  {
    sub_245484C68(a1, 4);
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,inject nav model", v10, 2u);
    }

    v5 = *(a1 + 528);
    if (!v5)
    {
      sub_2453A5EE4();
    }

    (*(*v5 + 48))(v5, a2);
  }

  v6 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v6;
  v11 = *(a1 + 96);
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v8 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v8;
  sub_245482C60(v10);
  return result;
}

void sub_245484DFC(uint64_t a1, int a2, int a3, int a4)
{
  if (*a1)
  {
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "SessionHandler,addSessionInfo,session already exists", v6, 2u);
    }
  }

  else
  {
    v22 = -1;
    v5 = 2 * (a4 == 1);
    *a1 = a2;
    *(a1 + 4) = -1;
    if (!a4)
    {
      v5 = 1;
    }

    *(a1 + 8) = -1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 50) = -1;
    *(a1 + 52) = a3;
    *(a1 + 56) = v5;
    *(a1 + 60) = 0;
    *(a1 + 68) = 0;
    *(a1 + 72) = -1;
    *(a1 + 88) = -1;
    *(a1 + 80) = 0x7FFFFFFF;
    *(a1 + 84) = -1;
    *(a1 + 92) = -1;
    *(a1 + 100) = -1;
    v6[0] = a2;
    v6[1] = -1;
    v7 = -1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = -1;
    v15 = a3;
    v16 = v5;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v20 = 0x7FFFFFFF;
    v21 = -1;
    v23 = -1;
    v24 = -1;
    sub_245482C60(v6);
  }
}

__n128 sub_245484F28(uint64_t a1, int *a2)
{
  sub_245484DFC(a1, a2[69], a2[68], a2[67]);
  if (*(a1 + 560))
  {
    sub_245484C68(a1, 1);
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,inject ref time", v10, 2u);
    }

    v5 = *(a1 + 560);
    if (!v5)
    {
      sub_2453A5EE4();
    }

    (*(*v5 + 48))(v5, a2);
  }

  v6 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v6;
  v11 = *(a1 + 96);
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v8 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v8;
  sub_245482C60(v10);
  return result;
}

__n128 sub_245485020(uint64_t a1, int *a2)
{
  sub_245484DFC(a1, a2[7], a2[6], a2[5]);
  if (*(a1 + 592))
  {
    sub_245484C68(a1, 2);
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,inject ref location", v10, 2u);
    }

    v5 = *(a1 + 592);
    if (!v5)
    {
      sub_2453A5EE4();
    }

    (*(*v5 + 48))(v5, a2);
  }

  v6 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v6;
  v11 = *(a1 + 96);
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v8 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v8;
  sub_245482C60(v10);
  return result;
}

uint64_t sub_245485114(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sub_24547C334();
  sub_245481638(v6, a2);
  sub_24547BF5C(v3, v6);
  result = sub_2453ABF84(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245485190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2453ABF84(va);
  _Unwind_Resume(a1);
}

void sub_2454851AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24547C334();
  v4 = *a2;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_2453AAA8C(&v5, *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 2));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_2453AABE8(&v8, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_2453AACE8(&__p, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 5);
  sub_24547F568(v3, &v4);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }
}

void sub_2454852D8(int *a1)
{
  if (a1[14] == 2)
  {
    v2 = sub_24547C334();
    v3 = *(v2 + 88);
    v21.i64[0] = MEMORY[0x277D85DD0];
    v21.i64[1] = 3221225472;
    *&v22 = sub_24547CECC;
    *(&v22 + 1) = &unk_278E36C40;
    *&v23 = v2;
    dispatch_async(v3, &v21);
  }

  else
  {
    sub_2453B4548();
    sub_245449800(off_27EE134B8, 3);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[13];
    if (a1[14] == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    if (a1[14] == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (v6 > 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = dword_2454922CC[v6];
    }

    LOWORD(v4) = *(a1 + 4);
    v10 = *(a1 + 2);
    v11 = *(a1 + 4);
    v12 = *(a1 + 128);
    v13 = *(a1 + 63);
    v14 = ((a1[16] & 4) << 17) | (4 * (a1[16] & 3));
    v21 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v22 = xmmword_245486E00;
    __asm { FMOV            V3.2D, #-1.0 }

    v23 = _Q3;
    v24 = 0;
    v25 = v8;
    v26 = v9;
    v27 = v4;
    v28 = v10;
    v29 = v11;
    v30 = v7;
    v31 = 2;
    v32 = v12;
    v33 = v13;
    v34 = v14;
    v35 = 0;
    v36 = v5;
    v20 = *(a1 + 62);
    if (v20)
    {
      (*(*v20 + 48))(v20, &v21);
    }
  }

  sub_245482340(a1);
}

uint64_t sub_245485464(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sub_24547C334();
  sub_2454816D0(v6, a2);
  sub_24547CF44(v3, v6);
  result = sub_2453ABB5C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454854E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2453ABB5C(va);
  _Unwind_Resume(a1);
}

double sub_2454854FC(uint64_t a1)
{
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "SessionHandler,#process,deleteGnssData", v4, 2u);
  }

  return sub_2454847A4(a1);
}

uint64_t sub_245485570(uint64_t a1)
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

uint64_t sub_2454855F0(uint64_t a1)
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

uint64_t sub_245485670(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_245485708(void *a1)
{
  *a1 = &unk_28585A978;
  sub_2453ABD0C((a1 + 1));
  return a1;
}

void sub_24548574C(void *a1)
{
  *a1 = &unk_28585A978;
  sub_2453ABD0C((a1 + 1));

  JUMPOUT(0x245D6A0D0);
}

void sub_24548585C(void *a1)
{
  sub_2453ABD0C(a1 + 8);

  operator delete(a1);
}

uint64_t sub_245485898(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[5];
  v8[4] = a2[4];
  v8[5] = v3;
  v4 = a2[7];
  v8[6] = a2[6];
  v8[7] = v4;
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  if (!v2)
  {
    sub_2453A5EE4();
  }

  return (*(*v2 + 48))(v2, v8);
}

uint64_t sub_245485908(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_28585AA20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245485954(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2454859EC(void *a1)
{
  *a1 = &unk_28585AA68;
  sub_2453AC2CC((a1 + 1));
  return a1;
}

void sub_245485A30(void *a1)
{
  *a1 = &unk_28585AA68;
  sub_2453AC2CC((a1 + 1));

  JUMPOUT(0x245D6A0D0);
}

void sub_245485B40(void *a1)
{
  sub_2453AC2CC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_245485B7C(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 32);
  memcpy(v4, a2, sizeof(v4));
  if (!v2)
  {
    sub_2453A5EE4();
  }

  return (*(*v2 + 48))(v2, v4);
}

uint64_t sub_245485BE4(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_28585AB00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245485C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_245485CC8(void *a1)
{
  *a1 = &unk_28585AB48;
  sub_2453AD69C((a1 + 1));
  return a1;
}

void sub_245485D0C(void *a1)
{
  *a1 = &unk_28585AB48;
  sub_2453AD69C((a1 + 1));

  JUMPOUT(0x245D6A0D0);
}

void sub_245485E1C(void *a1)
{
  sub_2453AD69C(a1 + 8);

  operator delete(a1);
}

uint64_t sub_245485E58(uint64_t a1, const void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  memcpy(v5, a2, sizeof(v5));
  if (!v2)
  {
    sub_2453A5EE4();
  }

  result = (*(*v2 + 48))(v2, v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245485EEC(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_28585ABF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7910]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}