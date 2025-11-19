void sub_24BC89AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  v24 = *(v22 - 160);
  if (v24)
  {
    *(v22 - 152) = v24;
    operator delete(v24);
  }

  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  __p = (v22 - 136);
  sub_24BC9569C(&__p);
  v25 = *(v22 - 112);
  if (v25)
  {
    *(v22 - 104) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BC89C58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *__s1, size_t __n)
{
  v12 = strnlen(__s1, __n);
  if (v12 == __n)
  {
    return 0;
  }

  v13 = v12;
  sub_24BC92728(&__dst, __s1, v12);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = __dst;
  *(a1 + 16) = v30;
  v14 = &__s1[v13 + 1];
  v15 = __n - (v13 + 1);
  v16 = strnlen(v14, v15);
  if (v16 == v15)
  {
    return 0;
  }

  v17 = v16;
  sub_24BC92728(&__dst, v14, v16);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v30;
  v18 = v17 + 1;
  v19 = v15 - (v17 + 1);
  v20 = v19 >= 4;
  v21 = v19 - 4;
  if (!v20)
  {
    return 0;
  }

  v22 = &v14[v18];
  v23 = *&v14[v18];
  if (!v23)
  {
    if (!std::string::compare(a2, "string"))
    {
      *a4 = v13 + v17 + 6;
      v27 = 1;
      sub_24BC8F988(a3, 1uLL);
      **a3 = 0;
      return v27;
    }

    return 0;
  }

  if (v21 < v23)
  {
    return 0;
  }

  v24 = *a3;
  v25 = *(a3 + 8);
  v26 = &v25[-*a3];
  if (v23 <= v26)
  {
    if (v23 < v26)
    {
      v25 = &v24[v23];
      *(a3 + 8) = &v24[v23];
    }
  }

  else
  {
    sub_24BC8F9B0(a3, v23 - v26);
    v24 = *a3;
    v25 = *(a3 + 8);
  }

  if (v25 == v24)
  {
    sub_24BC923C0();
  }

  memcpy(v24, v22 + 4, v23);
  *a4 = v13 + v17 + v23 + 6;
  return 1;
}

BOOL sub_24BC89E0C(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  if (a2[1] == *a2)
  {
    sub_24BC923C0();
  }

  while (1)
  {
    v5 = *v2;
    if (!*v2)
    {
      return v5 == 0;
    }

    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    v6 = a2[1] - v2;
    if (v6 >= 0)
    {
      if (v6)
      {
        if (!*v2)
        {
          v7 = 0;
          v8 = v2;
LABEL_18:
          sub_24BC927D8(&__dst, v2, v8, v7);
          if (SHIBYTE(v13) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = __dst;
          v13 = v19;
          v2 = v8 + 17;
          if (v8 + 17 >= a2[1])
          {
            v10 = 0;
            v2 = v8 + 1;
          }

          else
          {
            v14 = *(v8 + 1);
            v17 = v8[5];
            v15 = *(v8 + 9);
            v16 = *(v8 + 13);
            sub_24BC8EF30(a1, __p);
            v10 = 1;
          }

          goto LABEL_12;
        }

        v7 = 0;
        v8 = v2;
        while (++v7 < v6)
        {
          if (!*++v8)
          {
            goto LABEL_18;
          }
        }
      }

      v2 = 0;
    }

    v10 = 0;
LABEL_12:
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
      if ((v10 & 1) == 0)
      {
        return v5 == 0;
      }
    }

    else if ((v10 & 1) == 0)
    {
      return v5 == 0;
    }
  }
}

void sub_24BC89F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BC89F78(_BYTE *__dst, uint64_t *a2, void *__src, size_t __n)
{
  v7 = __dst;
  v8 = *a2;
  if (v8 == __n)
  {
    memcpy(__dst, __src, __n);
    return 1;
  }

  else
  {
    sub_24BC94EB0(&__p, v8);
    if (v24 == __p)
    {
      sub_24BC923C0();
    }

    v10 = sub_24BC818DC(__p, a2, __src, __n);
    v9 = v10 == 0;
    v11 = __p;
    if (!v10)
    {
      v13 = v24;
      if (v24 == __p)
      {
        sub_24BC923C0();
      }

      if (*a2 >= 2)
      {
        v14 = __p + *a2;
        v15 = __p + 1;
        v16 = *__p;
        do
        {
          v16 = (*v15 + v16) ^ 0xFFFFFF80;
          *v15++ = v16;
        }

        while (v15 < v14);
        v11 = __p;
        v13 = v24;
      }

      if (v13 == v11)
      {
        sub_24BC923C0();
      }

      v17 = *a2;
      if (*a2 >= 1)
      {
        v18 = &v7[v17];
        v19 = (v17 + 1) >> 1;
        v20 = v11;
        do
        {
          *v7 = *v20;
          v21 = v7 + 1;
          if (v21 >= v18)
          {
            break;
          }

          v22 = v20[v19];
          ++v20;
          *v21 = v22;
          v7 = v21 + 1;
        }

        while (v7 < v18);
      }
    }

    if (v11)
    {
      v24 = v11;
      operator delete(v11);
    }
  }

  return v9;
}

void sub_24BC8A0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC8A0E4(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

char *sub_24BC8A0F0(char *result, char *__s)
{
  if (result)
  {
    *(result + 136) = 0u;
    v3 = result + 136;
    *(result + 360) = 0u;
    *(result + 376) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 296) = 0u;
    *(result + 312) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *(result + 232) = 0u;
    *(result + 248) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 152) = 0u;
    if (__s)
    {
      result = strlen(__s);
      if (result)
      {
        if (result >= 0xFF)
        {
          v4 = 255;
        }

        else
        {
          v4 = result;
        }

        return memcpy(v3, __s, v4);
      }
    }
  }

  return result;
}

uint64_t sub_24BC8A180(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (v1)
  {
    return 1;
  }

  do
  {
    a1 = *(a1 + 8);
    v1 = (v1 + 1);
  }

  while (a1);
  return v1;
}

uint64_t sub_24BC8A1B0(void **a1, _DWORD *a2, _DWORD *a3, uint64_t a4, unint64_t a5, char **a6)
{
  if (a3 && a2 && a1 && a4)
  {
    if (a5 > 7)
    {
      v15 = (a4 + 8);
      v16 = a5 - 8;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      do
      {
        v34 = 0u;
        v35 = 0u;
        *__p = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        sub_24BC85294(__p);
        memset(&v32, 0, sizeof(v32));
        v31 = 0;
        v17 = sub_24BC85314(__p, &v31, a3, &v32, v15, v16);
        if (v17)
        {
          if (a6)
          {
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = &v32;
            }

            else
            {
              v18 = v32.__r_.__value_.__r.__words[0];
            }

            *a6 = strdup(v18);
          }

          v19 = 1;
          v6 = v17;
        }

        else if (v31 == 1)
        {
          ++v15;
          v19 = 2;
        }

        else if (v36)
        {
          v20 = v42;
          if (v42 >= v43)
          {
            v21 = sub_24BC958E8(&v41, __p);
          }

          else
          {
            sub_24BC95A30(v42, __p);
            v21 = v20 + 184;
          }

          v19 = 0;
          v42 = v21;
          v15 += v37;
        }

        else
        {
          v22 = v30;
          if (a6)
          {
            if (v30 >= 0)
            {
              v23 = v29;
            }

            else
            {
              v23 = v29[0];
            }

            *a6 = strdup(v23);
          }

          if (v22 < 0)
          {
            operator delete(v29[0]);
          }

          v6 = 4294967292;
          v19 = 1;
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(*(&v39 + 1));
        }

        if (SBYTE7(v39) < 0)
        {
          operator delete(v38);
        }

        if (*(&v34 + 1))
        {
          *&v35 = *(&v34 + 1);
          operator delete(*(&v34 + 1));
        }

        v32.__r_.__value_.__r.__words[0] = __p;
        sub_24BC9569C(&v32);
      }

      while (!v19);
      if (v19 == 2)
      {
        *a1 = malloc_type_malloc(0x9BD37A6F4DE9BD38 * ((v42 - v41) >> 3), 0x2004093837F09uLL);
        if (v42 == v41)
        {
          LODWORD(v27) = 0;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          do
          {
            v26 = malloc_type_malloc(0x188uLL, 0x10300407F37539EuLL);
            v26[48] = 0;
            *(v26 + 22) = 0u;
            *(v26 + 23) = 0u;
            *(v26 + 20) = 0u;
            *(v26 + 21) = 0u;
            *(v26 + 18) = 0u;
            *(v26 + 19) = 0u;
            *(v26 + 16) = 0u;
            *(v26 + 17) = 0u;
            *(v26 + 14) = 0u;
            *(v26 + 15) = 0u;
            *(v26 + 12) = 0u;
            *(v26 + 13) = 0u;
            *(v26 + 10) = 0u;
            *(v26 + 11) = 0u;
            *(v26 + 8) = 0u;
            *(v26 + 9) = 0u;
            *(v26 + 6) = 0u;
            *(v26 + 7) = 0u;
            *(v26 + 4) = 0u;
            *(v26 + 5) = 0u;
            *(v26 + 2) = 0u;
            *(v26 + 3) = 0u;
            *v26 = 0u;
            *(v26 + 1) = 0u;
            sub_24BC862F0(v26, (v41 + v24));
            *(v26 + 21) = a3[4] != 0;
            *(*a1 + v25++) = v26;
            v27 = 0xD37A6F4DE9BD37A7 * ((v42 - v41) >> 3);
            v24 += 184;
          }

          while (v25 < v27);
        }

        v6 = 0;
        *a2 = v27;
      }

      __p[0] = &v41;
      sub_24BC957DC(__p);
    }

    else
    {
      sub_24BC836D4(__p, "Data size too short");
      v10 = SBYTE7(v34);
      if (a6)
      {
        if ((SBYTE7(v34) & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *a6 = strdup(v11);
      }

      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      return 4294967292;
    }
  }

  else
  {
    sub_24BC836D4(__p, "Invalid argument for ParseEXRMultipartHeaderFromMemory");
    v12 = SBYTE7(v34);
    if (a6)
    {
      if ((SBYTE7(v34) & 0x80u) == 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *a6 = strdup(v13);
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    return 4294967293;
  }

  return v6;
}

void sub_24BC8A550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  a20 = v20 - 112;
  sub_24BC957DC(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC8A5A0(void **a1, _DWORD *a2, _DWORD *a3, char *__filename, char **a5)
{
  if (a1 && a2 && a3 && __filename)
  {
    v10 = fopen(__filename, "rb");
    if (v10)
    {
      v11 = v10;
      fseek(v10, 0, 2);
      v12 = MEMORY[0x24C254C50](v11);
      fseek(v11, 0, 0);
      sub_24BC94EB0(&__ptr, v12);
      v13 = fread(__ptr.__r_.__value_.__l.__data_, 1uLL, v12, v11);
      fclose(v11);
      if (v13 == v12)
      {
        if (__ptr.__r_.__value_.__l.__size_ == __ptr.__r_.__value_.__r.__words[0])
        {
          sub_24BC923C0();
        }

        v14 = sub_24BC8A1B0(a1, a2, a3, __ptr.__r_.__value_.__l.__data_, v12, a5);
      }

      else
      {
        v20 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
        if (a5)
        {
          if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &v23;
          }

          else
          {
            v21 = v23.__r_.__value_.__r.__words[0];
          }

          *a5 = strdup(v21);
        }

        if (v20 < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        v14 = 4294967291;
      }

      if (__ptr.__r_.__value_.__r.__words[0])
      {
        __ptr.__r_.__value_.__l.__size_ = __ptr.__r_.__value_.__r.__words[0];
        operator delete(__ptr.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_24BC836D4(&v23, __filename);
      v17 = std::string::insert(&v23, 0, "Cannot read file ");
      __ptr = *v17;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v18 = SHIBYTE(__ptr.__r_.__value_.__r.__words[2]);
      if (a5)
      {
        if ((__ptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_ptr = &__ptr;
        }

        else
        {
          p_ptr = __ptr.__r_.__value_.__r.__words[0];
        }

        *a5 = strdup(p_ptr);
      }

      if (v18 < 0)
      {
        operator delete(__ptr.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      return 4294967289;
    }
  }

  else
  {
    sub_24BC836D4(&__ptr, "Invalid argument for ParseEXRMultipartHeaderFromFile()");
    v15 = SHIBYTE(__ptr.__r_.__value_.__r.__words[2]);
    if (a5)
    {
      if ((__ptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &__ptr;
      }

      else
      {
        v16 = __ptr.__r_.__value_.__r.__words[0];
      }

      *a5 = strdup(v16);
    }

    if (v15 < 0)
    {
      operator delete(__ptr.__r_.__value_.__l.__data_);
    }

    return 4294967293;
  }

  return v14;
}

void sub_24BC8A7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BC8A7F0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, char **a6)
{
  if (!a1 || !a2 || !a3 || !a4 || a5 < 9)
  {
    v46 = "Invalid argument for LoadEXRMultipartImageFromMemory()";
LABEL_46:
    sub_24BC836D4(&v86, v46);
    v47 = SHIBYTE(v88);
    if (a6)
    {
      if (v88 >= 0)
      {
        v48 = &v86;
      }

      else
      {
        v48 = v86;
      }

      *a6 = strdup(v48);
    }

    if (v47 < 0)
    {
      operator delete(v86);
    }

    return 4294967293;
  }

  v10 = 0;
  v11 = a3;
  v12 = a2;
  do
  {
    v13 = *(*v12 + 88);
    if (!v13)
    {
      v46 = "EXRHeader variable is not initialized.";
      goto LABEL_46;
    }

    v10 += v13;
    v12 += 8;
    --v11;
  }

  while (v11);
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v79 = a3;
  sub_24BC8AD7C(&v86, a3);
  v14 = 0;
  v78 = a4;
  v15 = (a4 + v10 + 9);
  v16 = 4294967293;
  v17 = 1;
  while (1)
  {
    sub_24BC8AE38(&v86, ((v87 - v86) >> 5) + 1);
    v18 = v87;
    v19 = (v87 - 32);
    v20 = *(a2 + 8 * v14);
    if (!v20[14] || !v20[17])
    {
      break;
    }

    memset(&v85, 0, sizeof(v85));
    v82 = 0;
    v83 = 0;
    v84 = 0;
    sub_24BC8AF24(&v85, &v82, v20);
    v21 = sub_24BC8B1D4(v19, *(a2 + 8 * v14), &v85, &v82);
    v22 = *(*(a2 + 8 * v14) + 52);
    if (v21 != v22)
    {
      sub_24BC836D4(__p, "Invalid offset table size.");
      v23 = v81;
      if (a6)
      {
        if (v81 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        *a6 = strdup(v24);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = 4294967292;
    }

    if (v82)
    {
      v83 = v82;
      operator delete(v82);
    }

    if (v85.__r_.__value_.__r.__words[0])
    {
      v85.__r_.__value_.__l.__size_ = v85.__r_.__value_.__r.__words[0];
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (v21 != v22)
    {
      goto LABEL_96;
    }

    v25 = *(v18 - 32);
    v26 = *(v18 - 24) - v25;
    if (v26)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 3);
      while (1)
      {
        v31 = (v25 + 24 * v27);
        v30 = *v31;
        v32 = v31[1] - *v31;
        if (v32)
        {
          break;
        }

LABEL_35:
        v27 = ++v28;
        if (v29 <= v28)
        {
          goto LABEL_42;
        }
      }

      v33 = 0;
      v34 = 0;
      v35 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 3);
      while (1)
      {
        v37 = (v30 + 24 * v33);
        v36 = *v37;
        v38 = v37[1] - *v37;
        if (v38)
        {
          break;
        }

LABEL_34:
        v33 = ++v34;
        if (v35 <= v34)
        {
          goto LABEL_35;
        }
      }

      v39 = 0;
      v40 = v38 >> 3;
      v41 = 1;
      while (*v15 < a5)
      {
        *(v36 + 8 * v39) = *v15++ + 4;
        v39 = v41;
        v42 = v40 > v41++;
        if (!v42)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_54;
    }

LABEL_42:
    v17 = ++v14 < v79;
    if (v14 == v79)
    {
      goto LABEL_62;
    }
  }

  sub_24BC8AED4((v87 - 32), v20[13]);
  v43 = ***v19;
  v44 = (**v19)[1] - v43;
  if (!v44)
  {
    goto LABEL_42;
  }

  v45 = v44 >> 3;
  if (v45 <= 1)
  {
    v45 = 1;
  }

  while (*v15 < a5)
  {
    *v43++ = *v15++ + 4;
    if (!--v45)
    {
      goto LABEL_42;
    }
  }

LABEL_54:
  sub_24BC836D4(&v85, "Invalid offset size in EXR header chunks.");
  v49 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
  if (a6)
  {
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v85;
    }

    else
    {
      v50 = v85.__r_.__value_.__r.__words[0];
    }

    *a6 = strdup(v50);
  }

  if (v49 < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  v16 = 4294967292;
  if (v17)
  {
    goto LABEL_96;
  }

LABEL_62:
  v51 = 0;
  v52 = v16;
  while (1)
  {
    v53 = v86 + 32 * v51;
    v54 = v53[1] - *v53;
    if (v54)
    {
      break;
    }

LABEL_73:
    memset(&v85, 0, sizeof(v85));
    v70 = sub_24BC8B410(a1 + 48 * v51, *(a2 + 8 * v51), v53, v78, a5, &v85);
    v16 = v70;
    v71 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if (v70)
    {
      v72 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v85.__r_.__value_.__r.__words[2]) : v85.__r_.__value_.__l.__size_;
      v52 = v70;
      if (a6)
      {
        v52 = v70;
        if (v72)
        {
          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &v85;
          }

          else
          {
            v73 = v85.__r_.__value_.__r.__words[0];
          }

          *a6 = strdup(v73);
          v52 = v16;
        }
      }
    }

    if (v71 < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (v16)
    {
      v16 = v52;
      goto LABEL_96;
    }

    if (++v51 == v79)
    {
      goto LABEL_96;
    }
  }

  v55 = 0;
  v56 = 0;
  v57 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 3);
  while (1)
  {
    v59 = (*v53 + 24 * v55);
    v58 = *v59;
    v60 = v59[1] - *v59;
    if (v60)
    {
      break;
    }

LABEL_72:
    v55 = ++v56;
    if (v57 <= v56)
    {
      goto LABEL_73;
    }
  }

  v61 = 0;
  v62 = 0;
  v63 = 0xAAAAAAAAAAAAAAABLL * (v60 >> 3);
  while (1)
  {
    v65 = (v58 + 24 * v61);
    v64 = *v65;
    v66 = v65[1] - *v65;
    if (v66)
    {
      break;
    }

LABEL_71:
    v61 = ++v62;
    if (v63 <= v62)
    {
      goto LABEL_72;
    }
  }

  v67 = 0;
  v68 = v66 >> 3;
  v69 = 1;
  while (v51 == *(v78 - 4 + *(v64 + 8 * v67)))
  {
    v67 = v69;
    v42 = v68 > v69++;
    if (!v42)
    {
      goto LABEL_71;
    }
  }

  v74 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
  if (a6)
  {
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v85;
    }

    else
    {
      v75 = v85.__r_.__value_.__r.__words[0];
    }

    *a6 = strdup(v75);
  }

  if (v74 < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  v16 = 4294967292;
LABEL_96:
  v85.__r_.__value_.__r.__words[0] = &v86;
  sub_24BC8F364(&v85);
  return v16;
}

void sub_24BC8AD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  __p = &a25;
  sub_24BC8F364(&__p);
  _Unwind_Resume(a1);
}

void *sub_24BC8AD7C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BC8F31C(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BC8AE24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC961D8(va);
  _Unwind_Resume(a1);
}

void sub_24BC8AE38(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        v3 -= 4;
        v7 = v3;
        sub_24BC8EE10(&v7);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_24BC96260(a1, v5);
  }
}

double sub_24BC8AED4(void **a1, unint64_t a2)
{
  sub_24BC92888(a1, 1uLL);
  sub_24BC901C0(*a1, 1uLL);
  sub_24BC92930(**a1, a2);
  *&result = 0x100000001;
  a1[3] = 0x100000001;
  return result;
}

uint64_t *sub_24BC8AF24(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v7 = a3[2];
  v6 = a3[3];
  v9 = a3[4];
  v8 = a3[5];
  v10 = a3[17];
  if (!v10)
  {
    v17 = 1;
    v18 = 1;
    goto LABEL_61;
  }

  if (v10 == 2)
  {
    v15 = v9 - v7 + 1;
    if (a3[18])
    {
      if (v15 >= 2)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          if (v15)
          {
            v12 = 1;
          }

          ++v13;
          v14 = v15 > 3;
          v15 >>= 1;
        }

        while (v14);
        goto LABEL_19;
      }
    }

    else if (v15 >= 2)
    {
      v16 = 0;
      do
      {
        ++v16;
        v14 = v15 > 3;
        v15 >>= 1;
      }

      while (v14);
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v10 != 1)
  {
    v17 = 0;
    goto LABEL_32;
  }

  v11 = v9 - v7 + 1;
  if (v11 <= v8 - v6 + 1)
  {
    v11 = v8 - v6 + 1;
  }

  if (!a3[18])
  {
    if (v11 >= 2)
    {
      v16 = 0;
      do
      {
        ++v16;
        v14 = v11 > 3;
        v11 >>= 1;
      }

      while (v14);
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v11 < 2)
  {
LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  v12 = 0;
  v13 = 0;
  do
  {
    if (v11)
    {
      v12 = 1;
    }

    ++v13;
    v14 = v11 > 3;
    v11 >>= 1;
  }

  while (v14);
LABEL_19:
  v16 = v12 + v13;
LABEL_31:
  v17 = v16 + 1;
LABEL_32:
  if (v10 == 2)
  {
    v22 = v8 - v6 + 1;
    if (a3[18])
    {
      if (v22 >= 2)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          if (v22)
          {
            v20 = 1;
          }

          ++v21;
          v14 = v22 > 3;
          v22 >>= 1;
        }

        while (v14);
        goto LABEL_50;
      }
    }

    else if (v22 >= 2)
    {
      v23 = 0;
      do
      {
        ++v23;
        v14 = v22 > 3;
        v22 >>= 1;
      }

      while (v14);
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v10 != 1)
  {
    v18 = 0;
    goto LABEL_61;
  }

  v19 = v9 - v7 + 1;
  if (v19 <= v8 - v6 + 1)
  {
    v19 = v8 - v6 + 1;
  }

  if (!a3[18])
  {
    if (v19 >= 2)
    {
      v23 = 0;
      do
      {
        ++v23;
        v14 = v19 > 3;
        v19 >>= 1;
      }

      while (v14);
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v19 < 2)
  {
LABEL_59:
    v23 = 0;
    goto LABEL_60;
  }

  v20 = 0;
  v21 = 0;
  do
  {
    if (v19)
    {
      v20 = 1;
    }

    ++v21;
    v14 = v19 > 3;
    v19 >>= 1;
  }

  while (v14);
LABEL_50:
  v23 = v20 + v21;
LABEL_60:
  v18 = v23 + 1;
LABEL_61:
  sub_24BC8CAB0(a1, v17);
  sub_24BC8CAB0(a2, v18);
  sub_24BC92C84(a1, v9 - v7 + 1, a3[15], a3[18]);
  v24 = a3[16];
  v25 = a3[18];

  return sub_24BC92C84(a2, v8 - v6 + 1, v24, v25);
}

uint64_t sub_24BC8B1D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3[1] - *a3;
  v7 = (a4[1] - *a4) >> 2;
  *(a1 + 24) = v6 >> 2;
  *(a1 + 28) = v7;
  v8 = *(a2 + 68);
  if (v8 < 2)
  {
    sub_24BC92888(a1, (v6 >> 2));
    v9 = *a1;
    if (*(a1 + 8) != *a1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        sub_24BC901C0((v9 + 24 * v10), *(*a4 + 4 * v10));
        v9 = *a1;
        v13 = (*a1 + 24 * v10);
        v14 = *v13;
        if (v13[1] != *v13)
        {
          v15 = 0;
          v16 = *(*a3 + 4 * v10);
          v17 = 1;
          do
          {
            sub_24BC92930((v14 + 24 * v15), v16);
            v16 = *(*a3 + 4 * v10);
            v11 = (v16 + v11);
            v15 = v17;
            v9 = *a1;
            v14 = *(*a1 + 24 * v10);
          }

          while (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 24 * v10 + 8) - v14) >> 3) > v17++);
        }

        v10 = ++v12;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - v9) >> 3) > v12);
      return v11;
    }

    return 0;
  }

  if (v8 != 2)
  {
    return 0;
  }

  sub_24BC92888(a1, v7 * (v6 >> 2));
  v19 = *(a1 + 28);
  if (v19 < 1)
  {
    return 0;
  }

  v20 = 0;
  v11 = 0;
  LODWORD(v21) = *(a1 + 24);
  do
  {
    if (v21 >= 1)
    {
      v22 = 0;
      v23 = *a1;
      do
      {
        v24 = v22 + v21 * v20;
        sub_24BC901C0((v23 + 24 * v24), *(*a4 + 4 * v20));
        v23 = *a1;
        v25 = *(*a1 + 24 * v24);
        if (*(*a1 + 24 * v24 + 8) != v25)
        {
          v26 = 0;
          v27 = 0;
          v28 = *(*a3 + 4 * v22);
          do
          {
            sub_24BC92930((v25 + v26), v28);
            v28 = *(*a3 + 4 * v22);
            v11 = (v28 + v11);
            ++v27;
            v23 = *a1;
            v25 = *(*a1 + 24 * v24);
            v26 += 24;
          }

          while (v27 < 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 24 * v24 + 8) - v25) >> 3));
        }

        ++v22;
        v21 = *(a1 + 24);
      }

      while (v22 < v21);
      v19 = *(a1 + 28);
    }

    ++v20;
  }

  while (v20 < v19);
  return v11;
}

uint64_t sub_24BC8B410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, std::string *this)
{
  v7 = *(a2 + 124);
  if (v7 == 4)
  {
    v8 = 32;
  }

  else
  {
    v8 = 1;
  }

  if (v7 == 128)
  {
    v8 = 16;
  }

  if (v7 == 3)
  {
    v9 = 16;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + 16);
  v11 = *(a2 + 8);
  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v13 < 0 != v12 || (v15 = *(a2 + 20), v16 = *(a2 + 12), v12 = __OFSUB__(v15, v16), v17 = v15 - v16, (v17 < 0) ^ v12))
  {
    if (this)
    {
      std::string::append(this, "Invalid data window.\n");
    }

    return 4294967292;
  }

  v20 = (v13 + 1);
  v21 = (v17 + 1);
  if (v13 >= 0x800000 || v17 >= 0x800000)
  {
    if (this)
    {
      sub_24BC848F0(v128);
      v36 = sub_24BC95264(&v129, "data_with or data_height too large. data_width: ", 48);
      v37 = MEMORY[0x24C2543C0](v36, v20);
      v38 = sub_24BC95264(v37, ", ", 2);
      v39 = sub_24BC95264(v38, "data_height = ", 14);
      v40 = MEMORY[0x24C2543C0](v39, v21);
      std::ios_base::getloc((v40 + *(*v40 - 24)));
      v41 = std::locale::use_facet(&v125, MEMORY[0x277D82680]);
      (v41->__vftable[2].~facet_0)(v41, 10);
      std::locale::~locale(&v125);
      std::ostream::put();
      std::ostream::flush();
      std::stringbuf::str();
      if (v127 >= 0)
      {
        locale = &v125;
      }

      else
      {
        locale = v125.__locale_;
      }

      if (v127 >= 0)
      {
        v43 = HIBYTE(v127);
      }

      else
      {
        v43 = v126;
      }

      std::string::append(this, locale, v43);
      if (SHIBYTE(v127) < 0)
      {
        operator delete(v125.__locale_);
      }

      v128[0] = *MEMORY[0x277D82818];
      v44 = *(MEMORY[0x277D82818] + 72);
      *(v128 + *(v128[0] - 24)) = *(MEMORY[0x277D82818] + 64);
      v129 = v44;
      v130 = MEMORY[0x277D82878] + 16;
      if (v133 < 0)
      {
        operator delete(__p);
      }

      v35 = MEMORY[0x277D82868] + 16;
      goto LABEL_45;
    }

    return 4294967292;
  }

  v25 = *(a2 + 120);
  if (*(a2 + 56) && (*(a2 + 60) > 0x800000 || *(a2 + 64) > 0x800000))
  {
    if (this)
    {
      sub_24BC848F0(v128);
      v26 = sub_24BC95264(&v129, "tile with or tile height too large. tile width: ", 48);
      v27 = MEMORY[0x24C2543C0](v26, *(a2 + 60));
      v28 = sub_24BC95264(v27, ", ", 2);
      v29 = sub_24BC95264(v28, "tile height = ", 14);
      v30 = MEMORY[0x24C2543C0](v29, *(a2 + 64));
      std::ios_base::getloc((v30 + *(*v30 - 24)));
      v31 = std::locale::use_facet(&v125, MEMORY[0x277D82680]);
      (v31->__vftable[2].~facet_0)(v31, 10);
      std::locale::~locale(&v125);
      std::ostream::put();
      std::ostream::flush();
      std::stringbuf::str();
      if (v127 >= 0)
      {
        v32 = &v125;
      }

      else
      {
        v32 = v125.__locale_;
      }

      if (v127 >= 0)
      {
        v33 = HIBYTE(v127);
      }

      else
      {
        v33 = v126;
      }

      std::string::append(this, v32, v33);
      if (SHIBYTE(v127) < 0)
      {
        operator delete(v125.__locale_);
      }

      v128[0] = *MEMORY[0x277D82818];
      v34 = *(MEMORY[0x277D82818] + 72);
      *(v128 + *(v128[0] - 24)) = *(MEMORY[0x277D82818] + 64);
      v129 = v34;
      v130 = MEMORY[0x277D82878] + 16;
      if (v133 < 0)
      {
        operator delete(__p);
      }

      v35 = MEMORY[0x277D82868] + 16;
LABEL_45:
      v130 = v35;
      std::locale::~locale(&v131);
      std::iostream::~basic_iostream();
      MEMORY[0x24C2547D0](&v134);
      return 4294967292;
    }

    return 4294967292;
  }

  v118 = v13 + 1;
  v45 = *(a2 + 120);
  v46 = **a3;
  v115 = v46[1];
  v116 = v46;
  v114 = *v46;
  v125.__locale_ = 0;
  v126 = 0;
  v127 = 0;
  v47 = *(a2 + 104);
  sub_24BC92930(&v125, v25);
  v119 = v21;
  v117 = v25;
  v121 = a1;
  if (v25)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = v125.__locale_;
    v52 = (v47 + 256);
    v53 = 1;
    v54 = v25;
    v55 = a4;
    v56 = a5;
    do
    {
      *v51 = v48;
      v57 = *v52;
      if (v57 > 2)
      {
        break;
      }

      v52 += 68;
      v49 += dword_24BFBD110[v57];
      v48 += qword_24BFBD120[v57];
      v50 = v53++ >= v25;
      v51 = (v51 + 8);
      --v54;
    }

    while (v54);
    if (!v50)
    {
      if (this)
      {
        std::string::append(this, "Failed to compute channel layout.\n");
      }

      goto LABEL_116;
    }
  }

  else
  {
    v49 = 0;
    v55 = a4;
    v56 = a5;
  }

  if (!*(a2 + 56))
  {
    if ((v25 * v118 * v119 - 0x4000000000) > 0xFFFFFFC000000000)
    {
      *(v121 + 24) = sub_24BC9312C(v25, *(a2 + 104), *(a2 + 128), v118, v119);
      if (((v115 - v114) >> 3) < 1)
      {
        goto LABEL_144;
      }

      v84 = 0;
      v85 = 0;
      v86 = v116;
      do
      {
        v87 = *(*v86 + 8 * v84);
        v88 = v56 - (v87 + 8);
        if (v56 < v87 + 8)
        {
          goto LABEL_110;
        }

        v89 = (v55 + v87);
        v90 = *(v89 + 1);
        if (v88 < v90)
        {
          goto LABEL_110;
        }

        v91 = *v89;
        if ((v91 - 2097153) < 0xFFBFFFFF || v90 == 0)
        {
          goto LABEL_110;
        }

        v93 = v91 + v9;
        v94 = *(a2 + 20);
        if (v94 + 1 < v91 + v9)
        {
          v93 = v94 + 1;
        }

        v95 = v93 - v91;
        if (v95 < 1 || (v96 = *(a2 + 12), (v91 - v96 - 0x80000000) < 0xFFFFFFFF00000001) || (v97 = v91 - v96, v97 < 0))
        {
LABEL_110:
          v85 = 1;
        }

        else
        {
          v85 |= sub_24BC93234(*(v121 + 24), *(a2 + 128), v89 + 8, v90, *(a2 + 124), *(a2 + 4), v118, v119, v118, v84, v97, v95, v49, *(a2 + 120), *(a2 + 104), &v125) ^ 1;
          v86 = v116;
        }

        ++v84;
      }

      while ((((v115 - v114) >> 3) & 0x7FFFFFFF) != v84);
      if ((v85 & 1) == 0)
      {
LABEL_144:
        if (*(a2 + 120) >= 1)
        {
          v111 = 0;
          v112 = *(a2 + 128);
          v113 = *(a2 + 112);
          do
          {
            *(v113 + 4 * v111) = *(v112 + 4 * v111);
            ++v111;
          }

          while (v111 < *(a2 + 120));
        }

        v18 = 0;
        *(v121 + 32) = v118;
        *(v121 + 36) = v119;
        *(v121 + 40) = v117;
        goto LABEL_148;
      }

      if (this)
      {
        sub_24BC848F0(v128);
        std::string::append(this, "Invalid data found when decoding pixels.\n");
LABEL_115:
        sub_24BC84B94(v128);
      }
    }

    else if (this)
    {
      sub_24BC848F0(v128);
      v72 = sub_24BC95264(&v129, "Image data size is zero or too large: width = ", 46);
      v73 = MEMORY[0x24C2543C0](v72, v118);
      v74 = sub_24BC95264(v73, ", height = ", 11);
      v75 = MEMORY[0x24C2543C0](v74, v119);
      v76 = sub_24BC95264(v75, ", channels = ", 13);
      v77 = MEMORY[0x24C2543C0](v76, v25);
      sub_24BC8C9F8(v77);
      std::stringbuf::str();
      if ((v124 & 0x80u) == 0)
      {
        v78 = &v122;
      }

      else
      {
        v78 = v122;
      }

      if ((v124 & 0x80u) == 0)
      {
        v79 = v124;
      }

      else
      {
        v79 = v123;
      }

      std::string::append(this, v78, v79);
      if (v124 < 0)
      {
        operator delete(v122);
      }

      goto LABEL_115;
    }

LABEL_116:
    v18 = 4294967292;
    goto LABEL_148;
  }

  if ((*(a2 + 60) & 0x80000000) != 0)
  {
    if (this)
    {
      sub_24BC848F0(v128);
      v80 = sub_24BC95264(&v129, "Invalid tile size x : ", 22);
      v81 = MEMORY[0x24C2543C0](v80, *(a2 + 60));
      sub_24BC95264(v81, "\n", 1);
      std::stringbuf::str();
      if ((v124 & 0x80u) == 0)
      {
        v82 = &v122;
      }

      else
      {
        v82 = v122;
      }

      if ((v124 & 0x80u) == 0)
      {
        v83 = v124;
      }

      else
      {
        v83 = v123;
      }

      goto LABEL_124;
    }
  }

  else
  {
    if ((*(a2 + 64) & 0x80000000) == 0)
    {
      if (*(a2 + 68) == 2)
      {
        v58 = *(a3 + 28);
        if (v58 >= 1)
        {
          v59 = 0;
          v60 = 0;
          v61 = *(a3 + 24);
          while (v61 < 1)
          {
LABEL_77:
            if (++v59 >= v58)
            {
              goto LABEL_144;
            }
          }

          v62 = 0;
          while (1)
          {
            if (v60)
            {
              operator new();
            }

            v63 = *(a2 + 16) - *(a2 + 8);
            v64 = (v63 + 1) / (1 << v62);
            v65 = *(a2 + 72) == 1;
            v66 = v64 << v62 <= v63 && *(a2 + 72) == 1;
            v67 = v64 + v66;
            if (v67 <= 1)
            {
              v67 = 1;
            }

            *(v121 + 32) = v67;
            v68 = *(a2 + 20) - *(a2 + 12);
            v69 = (v68 + 1) / (1 << v59);
            v70 = v69 << v59 <= v68 && v65;
            v71 = v69 + v70;
            if (v71 <= 1)
            {
              v71 = 1;
            }

            *(v121 + 36) = v71;
            *(v121 + 16) = v62;
            *(v121 + 20) = v59;
            v18 = sub_24BC92E54(v121, a2, a3, &v125, v49, v55, v56, this);
            if (v18)
            {
              goto LABEL_148;
            }

            ++v62;
            v61 = *(a3 + 24);
            v60 = v121;
            if (v62 >= v61)
            {
              v58 = *(a3 + 28);
              v60 = v121;
              goto LABEL_77;
            }
          }
        }
      }

      else if (*(a3 + 24) >= 1)
      {
        v100 = 0;
        v101 = 0;
        while (1)
        {
          if (v100)
          {
            operator new();
          }

          v102 = *(a2 + 16) - *(a2 + 8);
          v103 = (v102 + 1) / (1 << v101);
          v104 = *(a2 + 72) == 1;
          v105 = v103 << v101 <= v102 && *(a2 + 72) == 1;
          v106 = v103 + v105;
          if (v106 <= 1)
          {
            v106 = 1;
          }

          *(v121 + 32) = v106;
          v107 = *(a2 + 20) - *(a2 + 12);
          v108 = (v107 + 1) / (1 << v101);
          v109 = v108 << v101 <= v107 && v104;
          v110 = v108 + v109;
          if (v110 <= 1)
          {
            v110 = 1;
          }

          *(v121 + 36) = v110;
          *(v121 + 16) = v101;
          *(v121 + 20) = v101;
          v18 = sub_24BC92E54(v121, a2, a3, &v125, v49, v55, v56, this);
          if (v18)
          {
            goto LABEL_148;
          }

          ++v101;
          v100 = v121;
          if (v101 >= *(a3 + 24))
          {
            goto LABEL_144;
          }
        }
      }

      goto LABEL_144;
    }

    if (this)
    {
      sub_24BC848F0(v128);
      v98 = sub_24BC95264(&v129, "Invalid tile size y : ", 22);
      v99 = MEMORY[0x24C2543C0](v98, *(a2 + 64));
      sub_24BC95264(v99, "\n", 1);
      std::stringbuf::str();
      if ((v124 & 0x80u) == 0)
      {
        v82 = &v122;
      }

      else
      {
        v82 = v122;
      }

      if ((v124 & 0x80u) == 0)
      {
        v83 = v124;
      }

      else
      {
        v83 = v123;
      }

LABEL_124:
      std::string::append(this, v82, v83);
      if (v124 < 0)
      {
        operator delete(v122);
      }

      sub_24BC84B94(v128);
    }
  }

  v18 = 4294967287;
LABEL_148:
  if (v125.__locale_)
  {
    v126 = v125.__locale_;
    operator delete(v125.__locale_);
  }

  return v18;
}

void sub_24BC8C054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  sub_24BC84B94(&a35);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BC8C12C(uint64_t a1, uint64_t a2, unsigned int a3, char *__filename, char **a5)
{
  if (a1 && a2 && a3)
  {
    v10 = fopen(__filename, "rb");
    if (v10)
    {
      v11 = v10;
      fseek(v10, 0, 2);
      v12 = MEMORY[0x24C254C50](v11);
      fseek(v11, 0, 0);
      sub_24BC94EB0(&__ptr, v12);
      fread(__ptr.__r_.__value_.__l.__data_, 1uLL, v12, v11);
      fclose(v11);
      if (__ptr.__r_.__value_.__l.__size_ == __ptr.__r_.__value_.__r.__words[0])
      {
        sub_24BC923C0();
      }

      v13 = sub_24BC8A7F0(a1, a2, a3, __ptr.__r_.__value_.__l.__data_, v12, a5);
      if (__ptr.__r_.__value_.__r.__words[0])
      {
        __ptr.__r_.__value_.__l.__size_ = __ptr.__r_.__value_.__r.__words[0];
        operator delete(__ptr.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_24BC836D4(&v20, __filename);
      v16 = std::string::insert(&v20, 0, "Cannot read file ");
      __ptr = *v16;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v17 = SHIBYTE(__ptr.__r_.__value_.__r.__words[2]);
      if (a5)
      {
        if ((__ptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_ptr = &__ptr;
        }

        else
        {
          p_ptr = __ptr.__r_.__value_.__r.__words[0];
        }

        *a5 = strdup(p_ptr);
      }

      if (v17 < 0)
      {
        operator delete(__ptr.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      return 4294967289;
    }
  }

  else
  {
    sub_24BC836D4(&__ptr, "Invalid argument for LoadEXRMultipartImageFromFile");
    v14 = SHIBYTE(__ptr.__r_.__value_.__r.__words[2]);
    if (a5)
    {
      if ((__ptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &__ptr;
      }

      else
      {
        v15 = __ptr.__r_.__value_.__r.__words[0];
      }

      *a5 = strdup(v15);
    }

    if (v14 < 0)
    {
      operator delete(__ptr.__r_.__value_.__l.__data_);
    }

    return 4294967293;
  }

  return v13;
}

void sub_24BC8C2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BC8C31C(_DWORD *a1, int a2, int a3, uint64_t a4, int a5, char *a6, char **a7)
{
  v75 = *MEMORY[0x277D85DE8];
  if (a4 <= 4 && ((1 << a4) & 0x1A) != 0)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *v58 = 0u;
    v59 = 0u;
    *v56 = 0u;
    *v57 = 0u;
    *__p = 0u;
    memset(v54, 0, sizeof(v54));
    v52 = 0u;
    v53 = 0u;
    if (a3 < 16 && a2 < 16)
    {
      v15 = 0;
    }

    else
    {
      v15 = 3;
    }

    HIDWORD(v57[1]) = v15;
    v42 = 0uLL;
    v43 = 0uLL;
    v41 = 0uLL;
    DWORD2(v43) = a4;
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v16 = a3 * a2;
    v17 = a3 * a2;
    *__dst = 0uLL;
    v47 = 0uLL;
    if (a4 == 1)
    {
      sub_24BC8CAB0(__dst, v16);
      memcpy(__dst[0], a1, 4 * v17);
      *(&v44 + 1) = 0;
      v45 = 0uLL;
      if (__dst[1] != __dst[0])
      {
        *&v44 = __dst[0];
LABEL_38:
        *(&v42 + 1) = &v44;
        *&v43 = __PAIR64__(a3, a2);
        LODWORD(v57[1]) = a4;
        v30 = malloc_type_malloc((272 * a4), 0x1000040881B329AuLL);
        v31 = v30;
        v56[1] = v30;
        if (a4 == 4)
        {
          strncpy(v30, "A", 0xFFuLL);
          strncpy(v31 + 272, "B", 0xFFuLL);
          strncpy(v31 + 544, "G", 0xFFuLL);
          strncpy(v31 + 816, "R", 0xFFuLL);
          v31[1] = 0;
          v31[273] = 0;
          v32 = 817;
          v31[545] = 0;
        }

        else if (a4 == 3)
        {
          strncpy(v30, "B", 0xFFuLL);
          strncpy(v31 + 272, "G", 0xFFuLL);
          strncpy(v31 + 544, "R", 0xFFuLL);
          v31[1] = 0;
          v31[273] = 0;
          v32 = 545;
        }

        else
        {
          strncpy(v30, "A", 0xFFuLL);
          v32 = 1;
        }

        v31[v32] = 0;
        v33 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
        v57[0] = v33;
        v34 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
        v58[0] = v34;
        if (a4 >= 1)
        {
          v35 = a4;
          if (a5 >= 1)
          {
            v36 = 1;
          }

          else
          {
            v36 = 2;
          }

          do
          {
            *v33++ = 2;
            *v34++ = v36;
            --v35;
          }

          while (v35);
        }

        v29 = sub_24BC88A8C(&v41, &v52, a6, a7);
        if (!v29)
        {
          free(v56[1]);
          free(v57[0]);
          free(v58[0]);
        }

        for (i = 0; i != -96; i -= 24)
        {
          v38 = *(&v50 + i + 8);
          if (v38)
          {
            *(&v51 + i) = v38;
            operator delete(v38);
          }
        }

        goto LABEL_54;
      }
    }

    else
    {
      sub_24BC8CAB0(__dst, v16);
      sub_24BC8CAB0(&v47 + 1, v17);
      sub_24BC8CAB0(&v49, v17);
      sub_24BC8CAB0(&v50 + 1, v17);
      if (v17)
      {
        v18 = __dst[0];
        v19 = *(&v47 + 1);
        v20 = v49;
        v21 = *(&v50 + 1);
        v22 = a1 + 2;
        do
        {
          *v18 = *(v22 - 2);
          *v19 = *(v22 - 1);
          *v20 = *v22;
          if (a4 == 4)
          {
            *v21 = v22[1];
          }

          ++v21;
          ++v20;
          ++v19;
          v22 += a4;
          ++v18;
          --v17;
        }

        while (v17);
      }

      v44 = 0u;
      v45 = 0u;
      if (a4 == 4)
      {
        if (v51 != *(&v50 + 1))
        {
          *&v44 = *(&v50 + 1);
          if (*(&v49 + 1) != v49)
          {
            *(&v44 + 1) = v49;
            if (v48 != *(&v47 + 1))
            {
              *&v45 = *(&v47 + 1);
              if (__dst[1] != __dst[0])
              {
                *(&v45 + 1) = __dst[0];
                goto LABEL_38;
              }
            }
          }
        }
      }

      else
      {
        if (a4 != 3)
        {
          goto LABEL_38;
        }

        if (*(&v49 + 1) != v49)
        {
          *&v44 = v49;
          if (v48 != *(&v47 + 1))
          {
            *(&v44 + 1) = *(&v47 + 1);
            if (__dst[1] != __dst[0])
            {
              *&v45 = __dst[0];
              goto LABEL_38;
            }
          }
        }
      }
    }

    sub_24BC923C0();
  }

  sub_24BC848F0(&v52);
  v23 = sub_24BC95264(&v53, "Unsupported component value : ", 30);
  v24 = MEMORY[0x24C2543C0](v23, a4);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(__dst, MEMORY[0x277D82680]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(__dst);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v26 = SBYTE7(v47);
  if (a7)
  {
    if ((SBYTE7(v47) & 0x80u) == 0)
    {
      v27 = __dst;
    }

    else
    {
      v27 = __dst[0];
    }

    *a7 = strdup(v27);
  }

  if (v26 < 0)
  {
    operator delete(__dst[0]);
  }

  *&v52 = *MEMORY[0x277D82818];
  v28 = *(MEMORY[0x277D82818] + 72);
  *(&v52 + *(v52 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v53 = v28;
  *(&v53 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v56[1]) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v53 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v54);
  std::iostream::~basic_iostream();
  MEMORY[0x24C2547D0](v58);
  v29 = 4294967293;
LABEL_54:
  v39 = *MEMORY[0x277D85DE8];
  return v29;
}

void *sub_24BC8C9F8(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_24BC8CAB0(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_24BC92CDC(a1, a2 - v2);
  }
}

BOOL sub_24BC8CAE0(uint64_t a1, int a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = a1 + 33738;
  if (a2)
  {
    *&v4 = 0x808080808080808;
    *(&v4 + 1) = 0x808080808080808;
    *(a1 + 36794) = v4;
    *(a1 + 36810) = v4;
    *(a1 + 36762) = v4;
    *(a1 + 36778) = v4;
    *(a1 + 36730) = v4;
    *(a1 + 36746) = v4;
    *(a1 + 36698) = v4;
    *(a1 + 36714) = v4;
    *(a1 + 36682) = v4;
    *&v4 = 0x909090909090909;
    *(&v4 + 1) = 0x909090909090909;
    *(a1 + 36826) = v4;
    *(a1 + 36842) = v4;
    *(a1 + 36858) = v4;
    *(a1 + 36874) = v4;
    *(a1 + 36890) = v4;
    *(a1 + 36906) = v4;
    *(a1 + 36922) = v4;
    memset((a1 + 36938), 7, 24);
    *(a1 + 36962) = 0x808080808080808;
    *&v4 = 0x505050505050505;
    *(&v4 + 1) = 0x505050505050505;
    *(a1 + 36970) = v4;
    *(a1 + 36986) = v4;
    sub_24BC8D5B4();
    sub_24BC8D5B4();
    v5 = *(a1 + 92);
    v6 = *(a1 + 96) | (1 << v5);
    v7 = v5 + 2;
    *(a1 + 92) = v7;
    *(a1 + 96) = v6;
    if (v7 >= 8)
    {
      do
      {
        v8 = *(a1 + 64);
        if (v8 < *(a1 + 72))
        {
          *(a1 + 64) = v8 + 1;
          *v8 = v6;
          v7 = *(a1 + 92);
          v6 = *(a1 + 96);
        }

        v6 >>= 8;
        v7 -= 8;
        *(a1 + 92) = v7;
        *(a1 + 96) = v6;
      }

      while (v7 > 7);
    }

    goto LABEL_114;
  }

  *v3 = 1;
  sub_24BC8D5B4();
  sub_24BC8D5B4();
  v9 = 287;
  v10 = 286;
  v11 = 36967;
  while (v10 >= 0x102)
  {
    --v10;
    v12 = *(a1 + v11);
    --v9;
    --v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  v9 = 257;
LABEL_12:
  v13 = 31;
  v14 = 30;
  v15 = 36999;
  while (v14 >= 2)
  {
    --v14;
    v16 = *(a1 + v15);
    --v13;
    --v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  v13 = 1;
LABEL_17:
  memcpy(__dst, (a1 + 36682), v9);
  memcpy(&__dst[v9], (a1 + 36970), v13);
  v17 = (v3 + 640);
  *(v3 + 640) = 0u;
  *(v3 + 656) = 0u;
  *(v3 + 670) = 0;
  if (!(v13 + v9))
  {
    v30 = 0;
    goto LABEL_74;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = (v3 + 676);
  v23 = 255;
  do
  {
    v24 = v23;
    v23 = __dst[v18];
    if (__dst[v18])
    {
      if (v20)
      {
        if (v20 > 2)
        {
          v25 = (v19 + 2);
          if (v20 >= 0xB)
          {
            v26 = (v3 + 676);
          }

          else
          {
            v26 = (v3 + 674);
          }

          if (v20 < 0xB)
          {
            v27 = 17;
          }

          else
          {
            v27 = 18;
          }

          if (v20 >= 0xB)
          {
            v28 = -11;
          }

          else
          {
            v28 = -3;
          }

          ++*v26;
          v90[v19] = v27;
          v90[(v19 + 1)] = v28 + v20;
        }

        else
        {
          *v17 += v20;
          do
          {
            v25 = (v19 + 1);
            v90[v19] = 0;
            LODWORD(v19) = v19 + 1;
            --v20;
          }

          while (v20);
        }
      }

      else
      {
        v25 = v19;
      }

      if (v23 == v24)
      {
        if (++v21 != 6)
        {
          v20 = 0;
LABEL_53:
          v19 = v25;
          goto LABEL_59;
        }

        v21 = 0;
        v20 = 0;
        ++*(v3 + 672);
        v90[v25] = 16;
        v90[(v25 + 1)] = 3;
        v19 = (v25 + 2);
      }

      else
      {
        if (v21)
        {
          if (v21 > 2)
          {
            ++*(v3 + 672);
            v90[v25] = 16;
            v29 = v25 + 2;
            v90[(v25 + 1)] = v21 - 3;
          }

          else
          {
            v17[v24] += v21;
            do
            {
              v29 = v25 + 1;
              v90[v25] = v24;
              LODWORD(v25) = v25 + 1;
              --v21;
            }

            while (v21);
          }
        }

        else
        {
          v29 = v25;
        }

        v21 = 0;
        v20 = 0;
        ++v17[v23];
        v19 = (v29 + 1);
        v90[v29] = v23;
      }
    }

    else
    {
      if (v21)
      {
        if (v21 > 2)
        {
          ++*(v3 + 672);
          v90[v19] = 16;
          v25 = (v19 + 2);
          v90[(v19 + 1)] = v21 - 3;
        }

        else
        {
          v17[v24] += v21;
          do
          {
            v25 = (v19 + 1);
            v90[v19] = v24;
            LODWORD(v19) = v19 + 1;
            --v21;
          }

          while (v21);
        }
      }

      else
      {
        v25 = v19;
      }

      if (++v20 != 138)
      {
        v21 = 0;
        goto LABEL_53;
      }

      v21 = 0;
      v20 = 0;
      ++*v22;
      v90[v25] = 18;
      v19 = (v25 + 2);
      v90[(v25 + 1)] = 127;
    }

LABEL_59:
    ++v18;
  }

  while (v18 != v13 + v9);
  if (v21)
  {
    if (v21 <= 2)
    {
      v17[v23] += v21;
      do
      {
        v30 = v19 + 1;
        v90[v19] = v23;
        LODWORD(v19) = v19 + 1;
        --v21;
      }

      while (v21);
      goto LABEL_74;
    }

    ++*(v3 + 672);
    v31 = v19 + 1;
    v90[v19] = 16;
    v32 = v21 - 3;
    v30 = v19 + 2;
LABEL_72:
    v90[v31] = v32;
    goto LABEL_74;
  }

  if (!v20)
  {
    v30 = v19;
    goto LABEL_74;
  }

  if (v20 > 2)
  {
    v31 = v19 + 1;
    v30 = v19 + 2;
    if (v20 > 0xA)
    {
      ++*v22;
      v90[v19] = 18;
      v32 = v20 - 11;
    }

    else
    {
      ++*(v3 + 674);
      v90[v19] = 17;
      v32 = v20 - 3;
    }

    goto LABEL_72;
  }

  *v17 += v20;
  do
  {
    v30 = v19 + 1;
    v90[v19] = 0;
    LODWORD(v19) = v19 + 1;
    --v20;
  }

  while (v20);
LABEL_74:
  sub_24BC8D5B4();
  v33 = *(a1 + 92);
  v34 = *(a1 + 96) | (2 << v33);
  v35 = v33 + 2;
  *(a1 + 92) = v35;
  *(a1 + 96) = v34;
  if (v35 >= 8)
  {
    do
    {
      v36 = *(a1 + 64);
      if (v36 < *(a1 + 72))
      {
        *(a1 + 64) = v36 + 1;
        *v36 = v34;
        v35 = *(a1 + 92);
        v34 = *(a1 + 96);
      }

      v34 >>= 8;
      v35 -= 8;
      *(a1 + 92) = v35;
      *(a1 + 96) = v34;
    }

    while (v35 > 7);
  }

  v37 = ((v9 - 257) << v35) | v34;
  v38 = v35 + 5;
  *(a1 + 92) = v35 + 5;
  *(a1 + 96) = v37;
  if (v35 >= 3)
  {
    do
    {
      v39 = *(a1 + 64);
      if (v39 < *(a1 + 72))
      {
        *(a1 + 64) = v39 + 1;
        *v39 = v37;
        v38 = *(a1 + 92);
        v37 = *(a1 + 96);
      }

      v37 >>= 8;
      v38 -= 8;
      *(a1 + 92) = v38;
      *(a1 + 96) = v37;
    }

    while (v38 > 7);
  }

  v40 = ((v13 - 1) << v38) | v37;
  v41 = v38 + 5;
  *(a1 + 92) = v38 + 5;
  *(a1 + 96) = v40;
  if (v38 >= 3)
  {
    do
    {
      v42 = *(a1 + 64);
      if (v42 < *(a1 + 72))
      {
        *(a1 + 64) = v42 + 1;
        *v42 = v40;
        v41 = *(a1 + 92);
        v40 = *(a1 + 96);
      }

      v40 >>= 8;
      v41 -= 8;
      *(a1 + 92) = v41;
      *(a1 + 96) = v40;
    }

    while (v41 > 7);
  }

  v43 = a1 + 37258;
  v44 = 0x12u;
  do
  {
    if (*(v43 + byte_24BFBCD1E[v44]))
    {
      break;
    }

    --v44;
  }

  while (v44 != -1);
  if (v44 <= 3)
  {
    v45 = 3;
  }

  else
  {
    v45 = v44;
  }

  v6 = ((v45 - 3) << v41) | v40;
  v7 = v41 + 4;
  *(a1 + 92) = v41 + 4;
  *(a1 + 96) = v6;
  if (v41 >= 4)
  {
    do
    {
      v46 = *(a1 + 64);
      if (v46 < *(a1 + 72))
      {
        *(a1 + 64) = v46 + 1;
        *v46 = v6;
        v7 = *(a1 + 92);
        v6 = *(a1 + 96);
      }

      v6 >>= 8;
      v7 -= 8;
      *(a1 + 92) = v7;
      *(a1 + 96) = v6;
    }

    while (v7 > 7);
  }

  v47 = 0;
  v48 = (v45 + 1);
  do
  {
    v49 = v7;
    v6 |= *(v43 + byte_24BFBCD1E[v47]) << v7;
    v7 += 3;
    *(a1 + 92) = v7;
    *(a1 + 96) = v6;
    if (v49 >= 5)
    {
      do
      {
        v50 = *(a1 + 64);
        if (v50 < *(a1 + 72))
        {
          *(a1 + 64) = v50 + 1;
          *v50 = v6;
          v7 = *(a1 + 92);
          v6 = *(a1 + 96);
        }

        v6 >>= 8;
        v7 -= 8;
        *(a1 + 92) = v7;
        *(a1 + 96) = v6;
      }

      while (v7 > 7);
    }

    ++v47;
  }

  while (v47 != v48);
  if (v30)
  {
    v51 = 0;
    do
    {
      v52 = v90[v51];
      v6 |= *(a1 + 36106 + 2 * v52) << v7;
      v7 += *(v43 + v52);
      *(a1 + 92) = v7;
      *(a1 + 96) = v6;
      if (v7 >= 8)
      {
        do
        {
          v53 = *(a1 + 64);
          if (v53 < *(a1 + 72))
          {
            *(a1 + 64) = v53 + 1;
            *v53 = v6;
            v7 = *(a1 + 92);
            v6 = *(a1 + 96);
          }

          v6 >>= 8;
          v7 -= 8;
          *(a1 + 92) = v7;
          *(a1 + 96) = v6;
        }

        while (v7 > 7);
      }

      v54 = v51 + 1;
      if (v52 >= 0x10)
      {
        v55 = v90[v54];
        LODWORD(v54) = v51 + 2;
        v6 |= v55 << v7;
        v7 += asc_24C043628[(v52 - 16)];
        *(a1 + 92) = v7;
        *(a1 + 96) = v6;
        if (v7 >= 8)
        {
          do
          {
            v56 = *(a1 + 64);
            if (v56 < *(a1 + 72))
            {
              *(a1 + 64) = v56 + 1;
              *v56 = v6;
              v7 = *(a1 + 92);
              v6 = *(a1 + 96);
            }

            v6 >>= 8;
            v7 -= 8;
            *(a1 + 92) = v7;
            *(a1 + 96) = v6;
          }

          while (v7 > 7);
        }
      }

      v51 = v54;
    }

    while (v54 < v30);
  }

LABEL_114:
  v57 = (v3 + 3808);
  if ((v3 + 3808) < *(a1 + 48))
  {
    v58 = a1 + 34954;
    v59 = a1 + 36682;
    v60 = 1;
    do
    {
      if (v60 == 1)
      {
        v61 = *v57++;
        v60 = v61 | 0x100;
      }

      if (v60)
      {
        v64 = *v57;
        v65 = v57[1];
        v66 = v57[2];
        v67 = word_24BFBCB1E[v64];
        v68 = v6 | (*(v58 + 2 * v67) << v7);
        v69 = v7 + *(v59 + v67);
        *(a1 + 92) = v69;
        *(a1 + 96) = v68;
        if (v69 >= 8)
        {
          do
          {
            v70 = *(a1 + 64);
            if (v70 < *(a1 + 72))
            {
              *(a1 + 64) = v70 + 1;
              *v70 = v68;
              v69 = *(a1 + 92);
              v68 = *(a1 + 96);
            }

            v68 >>= 8;
            v69 -= 8;
            *(a1 + 92) = v69;
            *(a1 + 96) = v68;
          }

          while (v69 > 7);
        }

        v71 = ((dword_24BFBCD34[byte_24BFBCD78[v64]] & v64) << v69) | v68;
        v72 = v69 + byte_24BFBCD78[v64];
        *(a1 + 92) = v72;
        *(a1 + 96) = v71;
        if (v72 >= 8)
        {
          do
          {
            v73 = *(a1 + 64);
            if (v73 < *(a1 + 72))
            {
              *(a1 + 64) = v73 + 1;
              *v73 = v71;
              v72 = *(a1 + 92);
              v71 = *(a1 + 96);
            }

            v71 >>= 8;
            v72 -= 8;
            *(a1 + 92) = v72;
            *(a1 + 96) = v71;
          }

          while (v72 > 7);
        }

        v74 = v65 | (v66 << 8);
        v75 = &unk_24BFBC89E + v74;
        v76 = &unk_24BFBCA9E + v66;
        v77 = v66 >= 2;
        if (v66 >= 2)
        {
          v78 = &unk_24BFBD078 + v66;
        }

        else
        {
          v78 = &unk_24BFBCE78 + v74;
        }

        if (v77)
        {
          v75 = v76;
        }

        v79 = *v75;
        v80 = *v78;
        v81 = (*(a1 + 35530 + 2 * v79) << v72) | v71;
        v82 = v72 + *(a1 + 36970 + v79);
        *(a1 + 92) = v82;
        *(a1 + 96) = v81;
        if (v82 >= 8)
        {
          do
          {
            v83 = *(a1 + 64);
            if (v83 < *(a1 + 72))
            {
              *(a1 + 64) = v83 + 1;
              *v83 = v81;
              v82 = *(a1 + 92);
              v81 = *(a1 + 96);
            }

            v81 >>= 8;
            v82 -= 8;
            *(a1 + 92) = v82;
            *(a1 + 96) = v81;
          }

          while (v82 > 7);
        }

        v57 += 3;
        v6 = ((dword_24BFBCD34[v80] & v74) << v82) | v81;
        v7 = v82 + v80;
        *(a1 + 92) = v82 + v80;
        *(a1 + 96) = v6;
        if (v82 + v80 >= 8)
        {
          do
          {
            v84 = *(a1 + 64);
            if (v84 < *(a1 + 72))
            {
              *(a1 + 64) = v84 + 1;
              *v84 = v6;
              v7 = *(a1 + 92);
              v6 = *(a1 + 96);
            }

            v6 >>= 8;
            v7 -= 8;
            *(a1 + 92) = v7;
            *(a1 + 96) = v6;
          }

          while (v7 > 7);
        }
      }

      else
      {
        v62 = *v57++;
        v6 |= *(v58 + 2 * v62) << v7;
        v7 += *(v59 + v62);
        *(a1 + 92) = v7;
        *(a1 + 96) = v6;
        if (v7 >= 8)
        {
          do
          {
            v63 = *(a1 + 64);
            if (v63 < *(a1 + 72))
            {
              *(a1 + 64) = v63 + 1;
              *v63 = v6;
              v7 = *(a1 + 92);
              v6 = *(a1 + 96);
            }

            v6 >>= 8;
            v7 -= 8;
            *(a1 + 92) = v7;
            *(a1 + 96) = v6;
          }

          while (v7 > 7);
        }
      }

      v60 >>= 1;
    }

    while (v57 < *(a1 + 48));
  }

  v85 = (*(v3 + 1728) << v7) | v6;
  v86 = v7 + *(v3 + 3200);
  *(a1 + 92) = v86;
  *(a1 + 96) = v85;
  if (v86 >= 8)
  {
    do
    {
      v87 = *(a1 + 64);
      if (v87 < *(a1 + 72))
      {
        *(a1 + 64) = v87 + 1;
        *v87 = v85;
        v86 = *(a1 + 92);
        v85 = *(a1 + 96);
      }

      v85 >>= 8;
      v86 -= 8;
      *(a1 + 92) = v86;
      *(a1 + 96) = v85;
    }

    while (v86 > 7);
  }

  result = *(a1 + 64) < *(a1 + 72);
  v89 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BC8D5B4()
{
  v0 = MEMORY[0x28223BE20]();
  v4 = v3;
  v5 = v2;
  v6 = v0;
  v98 = *MEMORY[0x277D85DE8];
  memset(v91, 0, sizeof(v91));
  v92 = 0;
  v7 = v1;
  if (v8)
  {
    if (v2 >= 1)
    {
      v9 = v2;
      v10 = (v0 + 288 * v1 + 36682);
      do
      {
        v11 = *v10++;
        ++*(v91 + v11);
        --v9;
      }

      while (v9);
    }

    goto LABEL_81;
  }

  if (v2 <= 0)
  {
    bzero(v94, 0x800uLL);
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = v0 + 576 * v1 + 33226;
    do
    {
      if (*(v14 + 2 * v12))
      {
        v15 = &v90[v13];
        *v15 = *(v14 + 2 * v12);
        ++v13;
        v15[1] = v12;
      }

      ++v12;
    }

    while (v2 != v12);
    bzero(v94, 0x800uLL);
    if (v13)
    {
      v16 = v13;
      v17 = v90;
      do
      {
        v18 = *v17;
        v17 += 2;
        ++v94[v18];
        ++*(v97 + ((v18 >> 6) & 0x3FC));
        --v16;
      }

      while (v16);
      v19 = 0;
      v20 = v97[0];
      goto LABEL_17;
    }
  }

  v20 = 0;
  v19 = 1;
LABEL_17:
  v21 = v20 == v13;
  v22 = 2;
  do
  {
    v23 = v22;
    v24 = v21;
    v22 = 1;
    v21 = 0;
  }

  while (v24);
  v25 = 0;
  v26 = 0;
  v27 = v90;
  v28 = &v89;
  v29 = v94;
  v30 = v13;
  do
  {
    v31 = 0;
    v32 = 0;
    v33 = v27;
    v27 = v28;
    do
    {
      v93[v31] = v32;
      v32 += *&v29[v31 * 4];
      ++v31;
    }

    while (v31 != 256);
    v34 = v33;
    v35 = v13;
    if ((v19 & 1) == 0)
    {
      do
      {
        v36 = v93[(*v34 >> v26)];
        v93[(*v34 >> v26)] = v36 + 1;
        v37 = *v34;
        v34 += 2;
        *&v28[2 * v36] = v37;
        --v35;
      }

      while (v35);
    }

    ++v25;
    v26 += 8;
    v29 += 1024;
    v28 = v33;
  }

  while (v25 != v23);
  if (v13)
  {
    v38 = (v13 - 1);
    if (v13 == 1)
    {
      *v27 = 1;
LABEL_60:
      v56 = v27;
      do
      {
        v57 = *v56;
        v56 += 2;
        ++*(v91 + v57);
        --v30;
      }

      while (v30);
      if (v13 > 1)
      {
        if (v4 > 31)
        {
          goto LABEL_67;
        }

        v58 = *(v91 + v4);
        v59 = v4;
        do
        {
          v58 += *(v91 + v59 + 1);
          *(v91 + v4) = v58;
          ++v59;
        }

        while (v59 != 32);
        if (v4 < 1)
        {
          LODWORD(v61) = 0;
        }

        else
        {
LABEL_67:
          v60 = 0;
          LODWORD(v61) = 0;
          v62 = v4 + 1;
          v63 = v91 + v4;
          do
          {
            v64 = *v63--;
            LODWORD(v61) = (v64 << v60) + v61;
            --v62;
            ++v60;
          }

          while (v62 > 1);
        }

        if (1 << v4 != v61)
        {
          do
          {
            --*(v91 + v4);
            v65 = v91 + v4;
            v66 = v4 + 1;
            while (--v66 >= 2)
            {
              v68 = *--v65;
              v67 = v68;
              if (v68)
              {
                *v65 = v67 - 1;
                *(v91 + (v66 & 0x7FFFFFFF)) += 2;
                break;
              }
            }

            v61 = (v61 - 1);
          }

          while (1 << v4 != v61);
        }
      }

      goto LABEL_75;
    }

    *v27 += v27[2];
    if (v13 <= 2)
    {
      v49 = v13 - 2;
      v27[2 * v49] = 0;
LABEL_47:
      v51 = 0;
      v52 = 1;
      do
      {
        if ((v49 & 0x80000000) != 0)
        {
          v54 = 0;
        }

        else
        {
          v53 = 0;
          v54 = v49 + 1;
          while (v51 == v27[2 * v49])
          {
            ++v53;
            LODWORD(v49) = v49 - 1;
            if (v54 == v53)
            {
              LODWORD(v49) = -1;
              goto LABEL_55;
            }
          }

          v54 = v53;
        }

LABEL_55:
        if (v52 > v54)
        {
          v55 = &v27[2 * v38];
          LODWORD(v38) = v38 + v54 - v52;
          do
          {
            *v55 = v51;
            v55 -= 2;
            --v52;
          }

          while (v52 > v54);
        }

        v52 = 2 * v54;
        ++v51;
      }

      while (v54);
      if (v13 < 1)
      {
        goto LABEL_75;
      }

      goto LABEL_60;
    }

    v39 = 0;
    v40 = v27 + 2;
    v41 = 2;
    v42 = 1;
    while (1)
    {
      v43 = &v27[2 * v39];
      v44 = *v43;
      if (v41 < v13 && (v45 = v27[2 * v41], v44 >= v45))
      {
        v46 = v39;
        ++v41;
        *v40 = v45;
      }

      else
      {
        *v40 = v44;
        ++v39;
        *v43 = v42;
        v46 = v39;
      }

      v47 = 2 * v46;
      if (v41 >= v13)
      {
        LOWORD(v46) = v27[2 * v46];
      }

      else
      {
        if (v42 <= v46)
        {
          LOWORD(v48) = v27[2 * v41];
LABEL_41:
          ++v41;
          *v40 += v48;
          goto LABEL_42;
        }

        LODWORD(v46) = v27[2 * v46];
        v48 = v27[2 * v41];
        if (v46 >= v48)
        {
          goto LABEL_41;
        }
      }

      *v40 += v46;
      ++v39;
      v27[v47] = v42;
LABEL_42:
      ++v42;
      v40 += 2;
      if (v38 == v42)
      {
        v49 = v13 - 2;
        v27[2 * v49] = 0;
        v50 = 2 * (v13 - 3);
        do
        {
          v27[v50] = v27[2 * v27[v50]] + 1;
          v50 -= 2;
        }

        while (v50 != -2);
        goto LABEL_47;
      }
    }
  }

LABEL_75:
  v69 = (v6 + 36682 + 288 * v7);
  v69[16] = 0u;
  v69[17] = 0u;
  v69[14] = 0u;
  v69[15] = 0u;
  v69[12] = 0u;
  v69[13] = 0u;
  v69[10] = 0u;
  v69[11] = 0u;
  v69[8] = 0u;
  v69[9] = 0u;
  v69[6] = 0u;
  v69[7] = 0u;
  v69[4] = 0u;
  v69[5] = 0u;
  v69[2] = 0u;
  v69[3] = 0u;
  *v69 = 0u;
  v69[1] = 0u;
  bzero((v6 + 576 * v7 + 34954), 0x240uLL);
  if (v4 >= 1)
  {
    v70 = 1;
    do
    {
      v71 = *(v91 + v70);
      if (v71 >= 1)
      {
        v72 = &v27[2 * v13 - 1];
        v73 = v71 + 1;
        v13 -= v71;
        do
        {
          v74 = *v72;
          v72 -= 2;
          *(v6 + 36682 + 288 * v7 + v74) = v70;
          --v73;
        }

        while (v73 > 1);
      }

      ++v70;
    }

    while (v70 != v4 + 1);
  }

LABEL_81:
  v95 = 0;
  if (v4 > 1)
  {
    v75 = 0;
    v76 = v91 + 1;
    v77 = &v96;
    v78 = (v4 + 1) - 2;
    do
    {
      v79 = *v76++;
      v75 = 2 * (v79 + v75);
      *v77++ = v75;
      --v78;
    }

    while (v78);
  }

  if (v5 >= 1)
  {
    v80 = 0;
    v81 = v6 + 36682 + 288 * v7;
    do
    {
      v82 = *(v81 + v80);
      if (*(v81 + v80))
      {
        v83 = 0;
        v84 = v94[*(v81 + v80)];
        v94[*(v81 + v80)] = v84 + 1;
        v85 = v82 + 1;
        do
        {
          v86 = v83;
          v87 = v84;
          v84 >>= 1;
          v83 = v87 & 1 | (2 * v86);
          --v85;
        }

        while (v85 > 1);
        *(v6 + 34954 + 576 * v7 + 2 * v80) = v83;
      }

      ++v80;
    }

    while (v80 != v5);
  }

  v88 = *MEMORY[0x277D85DE8];
}

void sub_24BC8DC58(void ***a1)
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

uint64_t sub_24BC8DCA8(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BC8DD5C(a1, a2);
  }

  else
  {
    sub_24BC8DCFC(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_24BC8DCFC(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_24BC8DE9C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_24BC8DD5C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_24BC8E034(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_24BC8E08C(&v17);
  return v11;
}

void sub_24BC8DE88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC8E08C(va);
  _Unwind_Resume(a1);
}

void *sub_24BC8DE9C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_24BC8DF40();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_24BC8DF58(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BC8DFB4(exception, a1);
  __cxa_throw(exception, &unk_285F927B8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_24BC8DFB4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_24BC8DFE8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_285F927E8, MEMORY[0x277D82620]);
}

void sub_24BC8E034(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BC8E08C(uint64_t a1)
{
  sub_24BC8E0C4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BC8E0C4(uint64_t a1, void **a2)
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

void sub_24BC8E120(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t sub_24BC8E170@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = sub_24BC8E2D4(a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

uint64_t sub_24BC8E204(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BC8E3C8(a1, a2);
  }

  else
  {
    sub_24BC8E360(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void sub_24BC8E244(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BC8E2A0(exception, a1);
  __cxa_throw(exception, &unk_285F92800, MEMORY[0x277D825F8]);
}

std::logic_error *sub_24BC8E2A0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t sub_24BC8E2D4(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

_BYTE *sub_24BC8E360(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  result = v3 + 1;
  if (*(a2 + 31) < 0)
  {
    result = sub_24BC8DE9C(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v3[3] = *(a2 + 24);
    *result = v5;
  }

  *(a1 + 8) = v3 + 4;
  return result;
}

uint64_t sub_24BC8E3C8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_24BC8E01C();
  }

  v6 = a1[2] - *a1;
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

  v20 = a1;
  if (v7)
  {
    sub_24BC8E500(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = 32 * v2;
  v19 = (32 * v2);
  *(32 * v2) = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_24BC8DE9C((32 * v2 + 8), *(a2 + 8), *(a2 + 16));
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 8);
    *(32 * v2 + 0x18) = *(a2 + 24);
    *(32 * v2 + 8) = v9;
    v10 = 32 * v2;
  }

  *&v19 = v10 + 32;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  sub_24BC8E548(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_24BC8E684(&v17);
  return v16;
}

void sub_24BC8E4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC8E684(va);
  _Unwind_Resume(a1);
}

void sub_24BC8E500(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BC8E548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }

  return sub_24BC8E604(v9);
}

uint64_t sub_24BC8E604(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BC8E63C(a1);
  }

  return a1;
}

void sub_24BC8E63C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

uint64_t sub_24BC8E684(uint64_t a1)
{
  sub_24BC8E6BC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BC8E6BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_24BC8E718(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_24BC8E768(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_24BC8E01C();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_24BC8E858(uint64_t a1, void *__src)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = 0xF83E0F83E0F83E1 * ((v5 - *a1) >> 4);
    if ((v7 + 1) > 0x7C1F07C1F07C1FLL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xF83E0F83E0F83E1 * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x3E0F83E0F83E0FLL)
    {
      v10 = 0x7C1F07C1F07C1FLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_24BC8E984(a1, v10);
    }

    v11 = 528 * v7;
    memcpy(v11, __src, 0x210uLL);
    v6 = v11 + 528;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy((v11 - v12), *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11 + 528;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    memcpy(*(a1 + 8), __src, 0x210uLL);
    v6 = v5 + 528;
  }

  *(a1 + 8) = v6;
  return v6 - 528;
}

void sub_24BC8E984(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x7C1F07C1F07C20)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BC8E9E0(uint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4, char **a5)
{
  v7 = *a1;
  v8 = a1[1];
  if (v8 == *a1)
  {
    return 0;
  }

  v29 = v5;
  v30 = v6;
  v10 = 0;
  v11 = 0;
  v12 = a2 + a4;
  while (1)
  {
    v13 = (v7 + 24 * v10);
    v14 = *v13;
    if (v13[1] != *v13)
    {
      break;
    }

LABEL_12:
    v10 = ++v11;
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) <= v11)
    {
      return 0;
    }
  }

  v15 = 0;
  v16 = 0;
  while (*(v14 + 24 * v15 + 8) == *(v14 + 24 * v15))
  {
LABEL_10:
    v15 = ++v16;
    if (0xAAAAAAAAAAAAAAABLL * ((*(v7 + 24 * v10 + 8) - v14) >> 3) <= v16)
    {
      v8 = a1[1];
      goto LABEL_12;
    }
  }

  v17 = 0;
  v18 = *a3 + 8;
  v19 = 1;
  while (1)
  {
    if (v18 >= v12)
    {
      v24 = "Insufficient data size in offset table.";
      goto LABEL_17;
    }

    v20 = *(v18 - 8);
    if (v20 >= a4)
    {
      break;
    }

    *a3 = v18;
    v7 = *a1;
    v14 = *(*a1 + 24 * v10);
    v21 = (v14 + 24 * v15);
    v22 = *v21;
    *(*v21 + 8 * v17) = v20;
    v17 = v19;
    v18 += 8;
    ++v19;
    if (v17 >= (v21[1] - v22) >> 3)
    {
      goto LABEL_10;
    }
  }

  v24 = "Invalid offset value in DecodeEXRImage.";
LABEL_17:
  sub_24BC836D4(__p, v24);
  v25 = v28;
  if (a5)
  {
    if (v28 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    *a5 = strdup(v26);
  }

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  return 4294967292;
}

uint64_t sub_24BC8EB5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v6 = (v1 + 24 * v3);
    v5 = *v6;
    v7 = v6[1] - *v6;
    if (v7)
    {
      break;
    }

LABEL_10:
    v3 = ++v4;
    if (0xAAAAAAAAAAAAAAABLL * (v2 >> 3) <= v4)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  while (1)
  {
    v12 = (v5 + 24 * v8);
    v11 = *v12;
    v13 = v12[1] - *v12;
    if (v13)
    {
      break;
    }

LABEL_9:
    v8 = ++v9;
    if (v10 <= v9)
    {
      goto LABEL_10;
    }
  }

  v14 = 0;
  v15 = v13 >> 3;
  v16 = 1;
  while (*(v11 + 8 * v14) >= 1)
  {
    v14 = v16;
    if (v15 <= v16++)
    {
      goto LABEL_9;
    }
  }

  return 1;
}

uint64_t sub_24BC8EC0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *result;
  v7 = *(result + 8);
  v8 = v7 - *result;
  if (v7 != *result)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(result + 24);
    v12 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v13 = 4;
    if (!a5)
    {
      v13 = 0;
    }

    while (1)
    {
      v15 = &v6[3 * v9];
      v14 = *v15;
      v16 = v15[1] - *v15;
      if (v16)
      {
        break;
      }

LABEL_38:
      v9 = ++v10;
      if (v12 <= v10)
      {
        return result;
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
    while (1)
    {
      v20 = *(v14 + 24 * v17 + 8) - *(v14 + 24 * v17);
      if (v20)
      {
        break;
      }

LABEL_37:
      v17 = ++v18;
      if (v19 <= v18)
      {
        goto LABEL_38;
      }
    }

    v21 = v20 >> 3;
    v22 = *(result + 28);
    v23 = 1;
    while (1)
    {
      v24 = a4;
      v25 = (a4 + v13);
      a4 = a6 ? v25 + *(v25 + 2) + *(v25 + 3) + 40 : v25 + v25[4] + 20;
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      if (((v27 | v26 | v29 | v28) & 0x80000000) != 0)
      {
        break;
      }

      v30 = *(a2 + 68);
      if (v30 == 2)
      {
        v32 = v28 + v29 * v11;
        v33 = v11 <= v28 || v22 <= v29;
        if (v33 || v12 <= v32)
        {
          return result;
        }

        v36 = &v6[3 * v32];
        v35 = *v36;
        if (0xAAAAAAAAAAAAAAABLL * ((v36[1] - *v36) >> 3) <= v27 || v26 >= (*(v35 + 24 * v27 + 8) - *(v35 + 24 * v27)) >> 3)
        {
          return result;
        }

        LODWORD(v28) = v28 + v29 * v11;
      }

      else if (v30 == 1)
      {
        if (v11 <= v28)
        {
          return result;
        }

        if (v22 <= v29)
        {
          return result;
        }

        if (v12 <= v28)
        {
          return result;
        }

        v31 = v6[3 * v28];
        if (0xAAAAAAAAAAAAAAABLL * ((v6[3 * v28 + 1] - v31) >> 3) <= v27 || v26 >= (*(v31 + 24 * v27 + 8) - *(v31 + 24 * v27)) >> 3)
        {
          return result;
        }
      }

      else
      {
        if (v30 || v29 | v28 || 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3) <= v27 || v26 >= (*(*v6 + 24 * v27 + 8) - *(*v6 + 24 * v27)) >> 3)
        {
          return result;
        }

        LODWORD(v28) = 0;
      }

      *(*(v6[3 * v28] + 24 * v27) + 8 * v26) = v24 - a3;
      v33 = v21 > v23++;
      if (!v33)
      {
        goto LABEL_37;
      }
    }
  }

  return result;
}

void sub_24BC8EE10(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_24BC8EE84(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_24BC8EE84(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BC8EED8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24BC8EED8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
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

  a1[1] = v3;
}

uint64_t sub_24BC8EF30(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_24BC8F604(a1, a2);
  }

  else
  {
    sub_24BC8F594(a1, a2);
    result = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

char *sub_24BC8EF70(uint64_t a1, char *__s, char *a3, _BYTE *a4, int a5)
{
  v10 = *(a1 + 8);
  v11 = strlen(__s);
  sub_24BC8F038(a1, v10, __s, &__s[v11 + 1], v11 + 1);
  v12 = strlen(a3);
  sub_24BC8F038(a1, *(a1 + 8), a3, &a3[v12 + 1], v12 + 1);
  __src = a5;
  sub_24BC8FAE8(a1, *(a1 + 8), &__src, &v15, 4);
  return sub_24BC8F038(a1, *(a1 + 8), a4, &a4[a5], a5);
}

char *sub_24BC8F038(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_24BC8E01C();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

void *sub_24BC8F260(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F2E0(result, a2);
  }

  return result;
}

void sub_24BC8F2E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_24BC8F31C(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BC8F31C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BC8F364(void ***a1)
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
        v4 -= 4;
        v6 = v4;
        sub_24BC8EE10(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *sub_24BC8F3D8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(result, a2);
  }

  return result;
}

void sub_24BC8F47C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24BC8F4C8(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BC8F4C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BC8F520(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_24BC9569C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

__n128 sub_24BC8F594(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 40;
  return result;
}

uint64_t sub_24BC8F604(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_24BC8E01C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_24BC8F760(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(v7, *a2, *(a2 + 1));
    v9 = v18;
    v10 = v19;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  *(v7 + 24) = *(a2 + 24);
  *&v19 = v10 + 40;
  v11 = *(a1 + 8);
  v12 = v9 + *a1 - v11;
  sub_24BC8F7B8(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_24BC8F8F4(&v17);
  return v16;
}

void sub_24BC8F74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC8F8F4(va);
  _Unwind_Resume(a1);
}

void sub_24BC8F760(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BC8F7B8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return sub_24BC8F874(v9);
}

uint64_t sub_24BC8F874(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BC8F8AC(a1);
  }

  return a1;
}

void sub_24BC8F8AC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_24BC8F8F4(uint64_t a1)
{
  sub_24BC8F92C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BC8F92C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_24BC8F988(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BC8F9B0(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

void sub_24BC8F9B0(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_24BC8E01C();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

char *sub_24BC8FAE8(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_24BC8E01C();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - v5;
    memcpy(v32, v5, v10 - v5);
    *(a1 + 8) = v5;
    v34 = &v13[v11 - v5];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = v5;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &v5[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = v5 - &__src[__len];
      v23 = v5 - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[__len], v5, v19 - v20);
    }

    v24 = v5;
    v25 = __src;
    v26 = v10 - v5;
LABEL_27:
    memmove(v24, v25, v26);
  }

  return v5;
}

uint64_t sub_24BC8FD18(uint64_t a1, const void **a2)
{
  v2 = *sub_24BC8FDBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_24BC8FDBC(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t *sub_24BC8FEC4(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_24BC8FF1C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_24BC8FF1C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_24BC900B8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_24BC900B8(a1, *a2);
    sub_24BC900B8(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *sub_24BC9011C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(result, a2);
  }

  return result;
}

void sub_24BC901C0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_24BC91C50(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t sub_24BC90268(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  v11 = a8;
  sub_24BC94EB0(&__p, a8 * a5 * a9);
  v16 = *a10;
  v344 = v11;
  if (a10[1] != *a10)
  {
    v17 = 0;
    v18 = v11;
    v19 = a7 * a6;
    v20 = 4 * a6;
    v338 = 2 * v19;
    v340 = 4 * v19;
    v21 = 2 * a6;
    do
    {
      v22 = *(v16 + 40 * v17 + 24);
      if (v22 == 2)
      {
        v40 = *(a3 + 4 * v17);
        if (v40 == 1)
        {
          if (v11 >= 1)
          {
            v62 = 0;
            v63 = 0;
            v64 = v340;
            do
            {
              v65 = *(*a11 + 8 * v17);
              if (v348 - __p <= ((v65 + v63 * a9) * a5))
              {
                sub_24BC923C0();
              }

              if (a5 >= 1)
              {
                v66 = __p + a5 * (v65 + v62) + 1;
                v67 = a5;
                v68 = v64;
                do
                {
                  v69 = *(*(a2 + 8 * v17) + v68);
                  v70 = (v69 >> 23);
                  if ((v69 >> 23))
                  {
                    if (v70 == 255)
                    {
                      if ((v69 & 0x7FFFFF) != 0)
                      {
                        LOWORD(v70) = 32256;
                      }

                      else
                      {
                        LOWORD(v70) = 31744;
                      }
                    }

                    else
                    {
                      if (v70 <= 0x8E)
                      {
                        if (v70 > 0x70)
                        {
                          v70 = (((v69 >> 13) & 0x3FF | (((v69 >> 23) & 0x1F) << 10)) ^ 0x4000) + ((v69 >> 12) & 1);
                        }

                        else if (v70 >= 0x66)
                        {
                          LOWORD(v70) = (((v69 & 0x7FFFFF | 0x800000) >> (125 - v70)) & 1) + ((v69 & 0x7FFFFF | 0x800000) >> (126 - v70));
                        }

                        else
                        {
                          LOWORD(v70) = 0;
                        }
                      }

                      else
                      {
                        LOWORD(v70) = 31744;
                      }

                      LOWORD(v70) = v70 & 0x7FFF;
                    }
                  }

                  *(v66 - 1) = v70;
                  *v66 = (v70 | (v69 >> 31 << 15)) >> 8;
                  v66 += 2;
                  v68 += 4;
                  --v67;
                }

                while (v67);
              }

              ++v63;
              v62 += a9;
              v64 += v20;
            }

            while (v63 != v18);
          }
        }

        else if (v40 == 2 && v11 >= 1)
        {
          v42 = 0;
          v43 = 0;
          v44 = v340;
          do
          {
            v45 = *(*a11 + 8 * v17);
            if (v348 - __p <= ((v45 + v43 * a9) * a5))
            {
              sub_24BC923C0();
            }

            if (a5 >= 1)
            {
              v46 = __p + a5 * (v45 + v42) + 3;
              v47 = v44;
              v48 = a5;
              do
              {
                *(v46 - 3) = *(*(a2 + 8 * v17) + v47);
                v47 += 4;
                v46 += 4;
                --v48;
              }

              while (v48);
            }

            ++v43;
            v44 += v20;
            v42 += a9;
          }

          while (v43 != v18);
        }
      }

      else if (v22 == 1)
      {
        v31 = *(a3 + 4 * v17);
        if (v31 == 2)
        {
          if (v11 >= 1)
          {
            v49 = 0;
            v50 = 0;
            v51 = v338;
            do
            {
              v52 = *(*a11 + 8 * v17);
              if (v348 - __p <= ((v52 + v50 * a9) * a5))
              {
                sub_24BC923C0();
              }

              if (a5 >= 1)
              {
                v53 = __p + a5 * (v52 + v49) + 3;
                v54 = v51;
                v55 = a5;
                do
                {
                  v56 = *(*(a2 + 8 * v17) + v54);
                  v57 = v56;
                  v58 = v56 << 13;
                  v59 = v58 & 0xF800000;
                  v60 = COERCE_FLOAT(v58 | 0x38800000) + -0.000061035;
                  if ((v58 & 0xF800000) != 0)
                  {
                    LODWORD(v60) = (v58 & 0xFFFE000) + 939524096;
                  }

                  v61 = v58 | 0x70000000;
                  if (v59 != 260046848)
                  {
                    v61 = LODWORD(v60);
                  }

                  *(v53 - 3) = v61;
                  *(v53 - 1) = BYTE2(v61);
                  *v53 = (v61 | v57 & 0x80000000) >> 24;
                  v53 += 4;
                  v54 += 2;
                  --v55;
                }

                while (v55);
              }

              ++v50;
              v51 += v21;
              v49 += a9;
            }

            while (v50 != v18);
          }
        }

        else if (v31 == 1 && v11 >= 1)
        {
          v33 = 0;
          v34 = 0;
          v35 = v338;
          do
          {
            v36 = *(*a11 + 8 * v17);
            if (v348 - __p <= ((v36 + v34 * a9) * a5))
            {
              sub_24BC923C0();
            }

            if (a5 >= 1)
            {
              v37 = __p + a5 * (v36 + v33) + 1;
              v38 = a5;
              v39 = v35;
              do
              {
                *(v37 - 1) = *(*(a2 + 8 * v17) + v39);
                v37 += 2;
                v39 += 2;
                --v38;
              }

              while (v38);
            }

            ++v34;
            v33 += a9;
            v35 += v21;
          }

          while (v34 != v18);
        }
      }

      else
      {
        if (v22)
        {
          v23 = 1;
        }

        else
        {
          v23 = v11 < 1;
        }

        if (!v23)
        {
          v24 = 0;
          v25 = 0;
          v26 = v340;
          do
          {
            v27 = *(*a11 + 8 * v17);
            if (v348 - __p <= ((v27 + v25 * a9) * a5))
            {
              sub_24BC923C0();
            }

            if (a5 >= 1)
            {
              v28 = __p + a5 * (v27 + v24) + 3;
              v29 = v26;
              v30 = a5;
              do
              {
                *(v28 - 3) = *(*(a2 + 8 * v17) + v29);
                v29 += 4;
                v28 += 4;
                --v30;
              }

              while (v30);
            }

            ++v25;
            v26 += v20;
            v24 += a9;
          }

          while (v25 != v18);
        }
      }

      ++v17;
      v16 = *a10;
      v11 = v344;
    }

    while (v17 < 0xCCCCCCCCCCCCCCCDLL * ((a10[1] - *a10) >> 3));
  }

  if (!a4)
  {
    sub_24BC91FA8(a1, *(a1 + 8), __p, v348, v348 - __p);
    goto LABEL_182;
  }

  if ((a4 & 0xFFFFFFFE) == 2)
  {
    v71 = 5 * ((((v348 - __p) >> 10) * 0x842108421084211uLL) >> 64);
    if (110 * (v348 - __p) / 0x64uLL + 128 <= v348 - __p + v71 + 133)
    {
      v72 = v348 - __p + v71 + 133;
    }

    else
    {
      v72 = 110 * (v348 - __p) / 0x64uLL + 128;
    }

    sub_24BC94EB0(&v357, v72);
    v73 = v357;
    if (v358 == v357 || (v74 = __p, v75 = v348, v76 = v348 - __p, v348 == __p))
    {
      sub_24BC923C0();
    }

    sub_24BC94EB0(&v359, v348 - __p);
    v77 = v359;
    v78 = v360;
    if (v360 == v359)
    {
      sub_24BC923C0();
    }

    if (v76 >= 1)
    {
      v79 = v74;
      do
      {
        v81 = *v79;
        v80 = v79 + 1;
        *v77 = v81;
        if (v80 >= v75)
        {
          break;
        }

        v82 = *v80;
        v79 = v80 + 1;
        v77[(v76 + 1) >> 1] = v82;
        ++v77;
      }

      while (v79 < v75);
      v77 = v359;
      v78 = v360;
    }

    if (v78 == v77)
    {
      sub_24BC923C0();
    }

    if (v76 >= 2)
    {
      v83 = &v77[v76];
      v86 = *v77;
      v84 = v77 + 1;
      v85 = v86;
      do
      {
        v87 = *v84;
        *v84 = (*v84 - v85) ^ 0x80;
        ++v84;
        v85 = v87;
      }

      while (v84 < v83);
      v77 = v359;
      v78 = v360;
    }

    v88 = (110 * v76 / 0x64uLL + 128);
    if (v88 <= (v76 + 5 * (((v76 >> 10) * 0x842108421084211uLL) >> 64) + 133))
    {
      v88 = (v76 + 5 * (((v76 >> 10) * 0x842108421084211uLL) >> 64) + 133);
    }

    v356[0] = v88;
    if (v78 == v77)
    {
      sub_24BC923C0();
    }

    sub_24BC7F998(v73, v356, v77, v76, -1);
    LODWORD(v89) = v356[0];
    if (v356[0] >= v76)
    {
      memcpy(v73, v74, v76);
      LODWORD(v89) = v76;
    }

    if (v359)
    {
      v360 = v359;
      operator delete(v359);
    }

    goto LABEL_179;
  }

  if (a4 == 128)
  {
    goto LABEL_182;
  }

  if (a4 == 4)
  {
    sub_24BC94EB0(&v345, (2 * (v348 - __p) + 0x2000));
    v123 = v345;
    if (v346 == v345 || (__src = __p, v124 = v348 - __p, v348 == __p))
    {
      sub_24BC923C0();
    }

    sub_24BC94EB0(v354, 0x2000);
    sub_24BC921D0(&v352, v124 >> 1);
    __dst = v123;
    sub_24BC922C4(&v350, 0xCCCCCCCCCCCCCCCDLL * ((a10[1] - *a10) >> 3));
    v126 = v352;
    v125 = v353;
    if (v353 == v352)
    {
      sub_24BC923C0();
    }

    v127 = v350;
    v128 = v351;
    if (v351 != v350)
    {
      v129 = (v351 - v350) >> 5;
      if (v129 <= 1)
      {
        v129 = 1;
      }

      v130 = (*a10 + 24);
      v131 = (v350 + 16);
      v132 = v352;
      do
      {
        *(v131 - 2) = v132;
        *(v131 - 1) = v132;
        *v131 = a5;
        v131[1] = v11;
        v133 = *v130;
        v130 += 10;
        v134 = v133 != 1;
        if (v133 == 1)
        {
          v135 = 1;
        }

        else
        {
          v135 = 2;
        }

        v131[3] = v135;
        v132 += 2 * ((v11 * a5) << v134);
        v131 += 8;
        --v129;
      }

      while (v129);
    }

    __n = v124;
    if (v11 >= 1)
    {
      v136 = 0;
      v137 = __src;
      do
      {
        if (v128 == v127)
        {
          v128 = v127;
        }

        else
        {
          v138 = 0;
          v139 = 0;
          do
          {
            v140 = &v127[v138];
            v141 = *&v127[v138 + 28] * *&v127[v138 + 16];
            memcpy(*&v127[v138 + 8], v137, 2 * v141);
            v137 += 2 * v141;
            *(v140 + 1) += 2 * v141;
            ++v139;
            v127 = v350;
            v128 = v351;
            v138 += 32;
          }

          while (v139 < (v351 - v350) >> 5);
          v11 = v344;
        }

        ++v136;
      }

      while (v136 != v11);
      v126 = v352;
      v125 = v353;
    }

    v142 = v125 - v126;
    if (v125 == v126)
    {
      sub_24BC923C0();
    }

    v143 = v354[0];
    bzero(v354[0], 0x2000uLL);
    if ((v142 >> 1) < 1)
    {
      v146 = 0;
    }

    else
    {
      v144 = v142 >> 1;
      do
      {
        v145 = *v126++;
        v143[v145 >> 3] |= 1 << (v145 & 7);
        --v144;
      }

      while (v144);
      v146 = *v143 & 0xFE;
    }

    v150 = 0;
    v151 = 0;
    v152 = 0;
    *v143 = v146;
    v153 = 0x1FFF;
    do
    {
      if (v152 >= v153)
      {
        v154 = v153;
      }

      else
      {
        v154 = v152;
      }

      if (v152 >= v153)
      {
        v155 = v151;
      }

      else
      {
        v155 = v150;
      }

      v156 = v143[v152];
      if (v152 <= v155)
      {
        v157 = v150;
      }

      else
      {
        v157 = v152;
      }

      if (v152 > v155)
      {
        v155 = v152;
      }

      if (v143[v152])
      {
        v153 = v154;
        v150 = v157;
        v151 = v155;
      }

      ++v152;
    }

    while (v152 != 0x2000);
    sub_24BC921D0(v349, 0x10000);
    v158 = 0;
    v159 = 0;
    v160 = v354[0];
    v161 = v349[0];
    do
    {
      if (v158 && ((v160[v158 >> 3] >> (v158 & 7)) & 1) == 0)
      {
        v162 = 0;
      }

      else
      {
        v162 = v159++;
      }

      v161[v158++] = v162;
    }

    while (v158 != 0x10000);
    v163 = v352;
    v164 = v353 - v352;
    if (v353 == v352)
    {
      sub_24BC923C0();
    }

    v165 = v164 >> 1;
    v327 = v164 >> 1;
    if ((v164 >> 1) >= 1)
    {
      v166 = v352;
      v167 = v165;
      do
      {
        *v166 = v161[*v166];
        ++v166;
        --v167;
      }

      while (v167);
    }

    *__dst = v153;
    __dst[1] = v150;
    v168 = __dst + 2;
    v324 = v165;
    v325 = v163;
    if (v153 <= v150)
    {
      memcpy(__dst + 2, &v160[v153], v150 - v153 + 1);
      v168 = (v168 + v150 - v153 + 1);
    }

    v329 = v168;
    v331 = v350;
    if (v351 != v350)
    {
      v169 = 0;
      v337 = v159 - 1;
      v170 = (v351 - v350) >> 5;
      if (v170 <= 1)
      {
        v170 = 1;
      }

      v330 = v170;
      do
      {
        v333 = v169;
        v171 = &v331[32 * v169];
        v172 = *(v171 + 7);
        if (v172 >= 1)
        {
          v334 = 0;
          v335 = 0;
          v173 = *v171;
          v174 = *(v171 + 4);
          v175 = *(v171 + 5);
          v343 = v174 * v172;
          v341 = v174;
          if (v174 >= v175)
          {
            v176 = *(v171 + 5);
          }

          else
          {
            v176 = *(v171 + 4);
          }

          v339 = v176;
          do
          {
            if (v339 >= 2)
            {
              v177 = 2;
              v178 = 1;
              do
              {
                v179 = v175;
                v180 = (v175 - v177) * v343;
                v181 = v178 * v172;
                v182 = v337 >> 14;
                v183 = (v173 + 2 * v334);
                v184 = v177 * v172;
                if ((v180 & 0x80000000) == 0)
                {
                  v183 = (v173 + 2 * v334);
                  v185 = &v183[v180];
                  v186 = (v341 - v177) * v172;
                  v187 = v177 * v343;
                  v188 = v178 * v343;
                  v189 = v173 + 2 * v178 * v343;
                  v190 = v173 + 2 * v178 * v343 + 2 * v181;
                  v191 = v173 + 2 * v181;
                  v192 = v335;
                  do
                  {
                    v193 = v183;
                    if ((v186 & 0x80000000) == 0)
                    {
                      v194 = v192;
                      do
                      {
                        v195 = *(v173 + v194);
                        v196 = *(v191 + v194);
                        if (v182)
                        {
                          v206 = *(v191 + v194);
                          v207 = *(v173 + v194) ^ 0x8000;
                          v208 = (v207 + v206) >> 1;
                          v209 = v207 - v206;
                          v210 = *(v190 + v194);
                          v211 = *(v189 + v194) ^ 0x8000;
                          v212 = v211 + v210;
                          v213 = v211 - v210;
                          v214 = HIWORD(v213) & 0x8000 ^ (v212 >> 1);
                          v215 = v208 ^ (v209 >> 31 << 15) ^ 0x8000;
                          LOWORD(v203) = v215 - v214;
                          v202 = ((v215 - v214) >> 16) & 0x8000 ^ ((v214 + v215) >> 1);
                          v216 = v209 ^ 0x8000;
                          v217 = v216 + v213;
                          v205 = v216 - v213;
                          v204 = HIWORD(v205) & 0x8000 ^ (v217 >> 1);
                        }

                        else
                        {
                          v197 = v195 - v196;
                          v198 = *(v189 + v194);
                          v199 = *(v190 + v194);
                          v205 = v196 + v195;
                          v200 = v198 - v199;
                          v201 = v199 + v198;
                          v202 = ((v201 >> 1) + (v205 >> 1)) >> 1;
                          v203 = (v205 >> 1) - (v201 >> 1);
                          v204 = (v200 + v197) >> 1;
                          LOWORD(v205) = v197 - v200;
                        }

                        *(v173 + v194) = v202;
                        *(v189 + v194) = v203;
                        *(v191 + v194) = v204;
                        *(v190 + v194) = v205;
                        v194 += 2 * v184;
                        v193 = (v173 + v194);
                      }

                      while (v173 + v194 <= &v183[v186]);
                    }

                    if ((v178 & v341) != 0)
                    {
                      v218 = *v193;
                      v219 = v193[v188];
                      if (v182)
                      {
                        v221 = *v193 ^ 0x8000;
                        v222 = v221 + v193[v188];
                        v218 = v221 - v193[v188];
                        v220 = HIWORD(v218) & 0x8000 ^ (v222 >> 1);
                      }

                      else
                      {
                        v220 = (v219 + v218) >> 1;
                        LOWORD(v218) = v218 - v219;
                      }

                      v193[v188] = v218;
                      *v193 = v220;
                    }

                    v183 += v187;
                    v192 += 2 * v187;
                  }

                  while (v183 <= v185);
                }

                v175 = v179;
                if ((v178 & v179) != 0)
                {
                  v223 = (v341 - v177) * v172;
                  if ((v223 & 0x80000000) == 0)
                  {
                    v224 = &v183[v223];
                    do
                    {
                      v225 = *v183;
                      v226 = v183[v181];
                      if (v182)
                      {
                        v228 = *v183 ^ 0x8000;
                        v229 = v228 + v183[v181];
                        v225 = v228 - v183[v181];
                        v227 = HIWORD(v225) & 0x8000 ^ (v229 >> 1);
                      }

                      else
                      {
                        v227 = (v226 + v225) >> 1;
                        LOWORD(v225) = v225 - v226;
                      }

                      v183[v181] = v225;
                      *v183 = v227;
                      v183 += v184;
                    }

                    while (v183 <= v224);
                  }
                }

                v178 = v177;
                v177 *= 2;
              }

              while (v177 <= v339);
            }

            ++v334;
            v335 += 2;
          }

          while (v334 != v172);
        }

        v169 = v333 + 1;
      }

      while (v333 + 1 != v330);
    }

    v230 = v329;
    *v329 = 0;
    v231 = v329 + 4;
    v232 = v327;
    if (!v327)
    {
      v244 = __n;
      goto LABEL_377;
    }

    sub_24BC95028(v355, 0x10001uLL);
    v233 = v355[0];
    bzero(v355[0], 0x80008uLL);
    if (v327 >= 1)
    {
      v235 = v324;
      v234 = v325;
      do
      {
        v236 = *v234++;
        ++v233[v236];
        --v235;
      }

      while (v235);
    }

    sub_24BC94F74(&v359, 0x10001uLL);
    sub_24BC924EC(&v357, 0x10001uLL);
    v237 = v233 - 1;
    v238 = 65538;
    v239 = -1;
    do
    {
      v240 = v237[1];
      ++v237;
      --v238;
      ++v239;
    }

    while (!v240);
    if (v239 >= 0x10001)
    {
      v241 = 0;
      v242 = 0;
    }

    else
    {
      v241 = 0;
      v242 = 0;
      v243 = v239;
      do
      {
        *&v359[4 * v243] = v243;
        if (*v237)
        {
          v357[v242++] = v237;
          v241 = v243;
        }

        ++v243;
        ++v237;
        --v238;
      }

      while (v238);
    }

    v245 = v241 + 1;
    v233[v241 + 1] = 1;
    v357[v242] = &v233[v241 + 1];
    v246 = v242 + 1;
    if (v242 >= 1)
    {
      v247 = v357;
      v248 = (v242 + 1 - 2) >> 1;
      v249 = v248 + 1;
      v250 = &v357[v248];
      do
      {
        sub_24BC925E8(v247, v356, v246, v250--);
        --v249;
      }

      while (v249);
    }

    sub_24BC95028(v356, 0x10001uLL);
    v251 = v356[0];
    bzero(v356[0], 0x80008uLL);
    if (v242 >= 1)
    {
      v246 = v246;
      do
      {
        v252 = 0;
        v253 = v246;
        v254 = v357;
        v255 = *v357;
        v256 = v357;
        do
        {
          v257 = &v256[v252];
          v258 = v257 + 1;
          v259 = v257[1];
          v260 = (2 * v252) | 1;
          v252 = 2 * v252 + 2;
          if (v252 >= v246)
          {
            v252 = v260;
          }

          else
          {
            v263 = v257[2];
            v261 = v257 + 2;
            v262 = v263;
            if (*v259 <= *v263)
            {
              v252 = v260;
            }

            else
            {
              v259 = v262;
              v258 = v261;
            }
          }

          *v256 = v259;
          v256 = v258;
        }

        while (v252 <= ((v246 - 2) >> 1));
        v264 = &v254[v246 - 1];
        if (v258 == v264)
        {
          *v258 = v255;
        }

        else
        {
          *v258 = *v264;
          *v264 = v255;
          sub_24BC926CC(v254, (v258 + 1), v361, v258 + 1 - v254);
        }

        --v246;
        v265 = v357;
        v266 = *v357;
        if ((v253 - 1) >= 2)
        {
          v267 = 0;
          v268 = v357;
          do
          {
            v269 = &v268[v267];
            v270 = v269 + 1;
            v271 = v269[1];
            v272 = (2 * v267) | 1;
            v267 = 2 * v267 + 2;
            if (v267 >= v246)
            {
              v267 = v272;
            }

            else
            {
              v275 = v269[2];
              v273 = v269 + 2;
              v274 = v275;
              if (*v271 <= *v275)
              {
                v267 = v272;
              }

              else
              {
                v271 = v274;
                v270 = v273;
              }
            }

            *v268 = v271;
            v268 = v270;
          }

          while (v267 <= ((v253 - 3) >> 1));
          v276 = &v265[v246 - 1];
          if (v270 == v276)
          {
            *v270 = v266;
          }

          else
          {
            *v270 = *v276;
            *v276 = v266;
            sub_24BC926CC(v265, (v270 + 1), v361, v270 + 1 - v265);
          }
        }

        v277 = (v255 - v233) >> 3;
        v278 = (v266 - v233) >> 3;
        v233[v278] += v233[v277];
        sub_24BC926CC(v357, &v357[v246], v361, v253 - 1);
        v251 = v356[0];
        v279 = v359;
        do
        {
          v280 = v278;
          ++v251[v278];
          LODWORD(v278) = *&v279[4 * v278];
        }

        while (v278 != v280);
        *&v279[4 * v280] = v277;
        do
        {
          ++v251[v277];
          v281 = *&v279[4 * v277] == v277;
          LODWORD(v277) = *&v279[4 * v277];
        }

        while (!v281);
      }

      while (v253 >= 3);
    }

    sub_24BC923D8(v251);
    v282 = v356[0];
    memcpy(v233, v356[0], 0x80008uLL);
    v356[1] = v282;
    operator delete(v282);
    if (v357)
    {
      v358 = v357;
      operator delete(v357);
    }

    if (v359)
    {
      v360 = v359;
      operator delete(v359);
    }

    if (v245 < v239)
    {
      v283 = v329 + 6;
      v244 = __n;
      goto LABEL_331;
    }

    LODWORD(v284) = 0;
    v285 = 0;
    v286 = v355[0];
    LODWORD(v287) = v239;
    v283 = v329 + 6;
    while (1)
    {
      v288 = v286[v287] & 0x3FLL;
      if (v287 > v241 || v288)
      {
        goto LABEL_312;
      }

      v287 = v287;
      v289 = 1;
      while ((v286[v287 + 1] & 0x3FLL) == 0)
      {
        ++v287;
        v290 = v289 + 1;
        if (v287 < v245)
        {
          v119 = v289++ >= 0x104;
          if (!v119)
          {
            continue;
          }
        }

        goto LABEL_311;
      }

      v290 = v289;
LABEL_311:
      if (v290 < 2)
      {
LABEL_312:
        v291 = (v284 + 6);
        v285 = v288 | (v285 << 6);
        if (v284 >= 2)
        {
          do
          {
            v291 -= 8;
            *v283++ = v285 >> v291;
          }

          while (v291 > 7);
        }

        LODWORD(v284) = v291;
        goto LABEL_315;
      }

      v292 = v290 - 6;
      if (v290 < 6)
      {
        v295 = (v284 + 6);
        v285 = (v290 + 57) | (v285 << 6);
        if (v284 >= 2)
        {
          do
          {
            v295 -= 8;
            *v283++ = v285 >> v295;
          }

          while (v295 > 7);
        }

        LODWORD(v284) = v295;
        goto LABEL_315;
      }

      v293 = (v284 + 6);
      v294 = (v285 << 6) | 0x3F;
      if (v284 >= 2)
      {
        break;
      }

      LODWORD(v284) = v284 + 14;
      v285 = v292 | (v294 << 8);
      if ((v293 & 0x80000000) == 0)
      {
        goto LABEL_326;
      }

LABEL_315:
      v23 = v287 <= v241;
      LODWORD(v287) = v287 + 1;
      if (!v23)
      {
        v244 = __n;
        if (v284 >= 1)
        {
          *v283++ = v285 << (8 - v284);
        }

LABEL_331:
        v296 = v355[0];
        v297 = *v325;
        if (v327 > 1)
        {
          v298 = 0;
          LODWORD(v299) = 0;
          v300 = 0;
          v301 = 1;
          v302 = v283;
          while (1)
          {
            if (v297 == v325[v301] && v298 <= 254)
            {
              ++v298;
            }

            else
            {
              v303 = v296[v297];
              v304 = v296[v245];
              v305 = v303 & 0x3F;
              if ((v303 & 0x3F) + (v304 & 0x3F) + 8 >= (v303 & 0x3F) * v298)
              {
                if ((v298 & 0x80000000) == 0)
                {
                  do
                  {
                    v299 = v299 + (v303 & 0x3F);
                    v300 = (v300 << v305) | (v303 >> 6);
                    if (v299 >= 8)
                    {
                      do
                      {
                        v299 -= 8;
                        *v302++ = v300 >> v299;
                      }

                      while (v299 > 7);
                    }

                    v23 = v298-- <= 0;
                  }

                  while (!v23);
                }
              }

              else
              {
                v306 = v300 << v305;
                v307 = (v303 & 0x3F) + v299;
                v299 = v306 | (v303 >> 6);
                if (v307 >= 8)
                {
                  do
                  {
                    v307 -= 8;
                    *v302++ = v299 >> v307;
                  }

                  while (v307 > 7);
                }

                v308 = v298;
                v309 = v307 + (v304 & 0x3F);
                v310 = (v299 << (v304 & 0x3F)) | (v304 >> 6);
                v300 = v308 | (v310 << 8);
                LODWORD(v299) = v309 + 8;
                if (v309 >= 8)
                {
                  do
                  {
                    v309 -= 8;
                    *v302++ = v310 >> v309;
                    LODWORD(v299) = v299 - 8;
                  }

                  while (v309 > 7);
LABEL_349:
                  v299 = v299;
                  do
                  {
                    v299 -= 8;
                    *v302++ = v300 >> v299;
                  }

                  while (v299 > 7);
                  v298 = 0;
                  goto LABEL_353;
                }

                if ((v309 & 0x80000000) == 0)
                {
                  goto LABEL_349;
                }
              }

              v298 = 0;
            }

LABEL_353:
            v297 = v325[v301++];
            if (v301 == v324)
            {
              goto LABEL_356;
            }
          }
        }

        v300 = 0;
        LODWORD(v299) = 0;
        v298 = 0;
        v302 = v283;
LABEL_356:
        v311 = v296[v297];
        v312 = v296[v245];
        v313 = v311 & 0x3F;
        if ((v311 & 0x3F) + (v312 & 0x3F) + 8 >= (v311 & 0x3F) * v298)
        {
          if ((v298 & 0x80000000) == 0)
          {
            do
            {
              v299 = v299 + (v311 & 0x3F);
              v300 = (v300 << v313) | (v311 >> 6);
              if (v299 >= 8)
              {
                do
                {
                  v299 -= 8;
                  *v302++ = v300 >> v299;
                }

                while (v299 > 7);
              }

              v23 = v298-- <= 0;
            }

            while (!v23);
          }
        }

        else
        {
          v314 = v300 << v313;
          v315 = (v311 & 0x3F) + v299;
          v316 = v314 | (v311 >> 6);
          if (v315 >= 8)
          {
            do
            {
              v315 -= 8;
              *v302++ = v316 >> v315;
            }

            while (v315 > 7);
          }

          v317 = v316 << (v312 & 0x3F);
          v318 = v315 + (v312 & 0x3F);
          v319 = v317 | (v312 >> 6);
          v300 = v298 | (v319 << 8);
          LODWORD(v299) = v318 + 8;
          if (v318 < 8)
          {
            if ((v318 & 0x80000000) == 0)
            {
              goto LABEL_369;
            }
          }

          else
          {
            do
            {
              v318 -= 8;
              *v302++ = v319 >> v318;
              LODWORD(v299) = v299 - 8;
            }

            while (v318 > 7);
LABEL_369:
            v299 = v299;
            do
            {
              v299 -= 8;
              *v302++ = v300 >> v299;
            }

            while (v299 > 7);
          }
        }

        if (v299)
        {
          *v302 = v300 << (8 - v299);
        }

        v329[1] = v239;
        v230 = v329;
        v329[2] = v245;
        v320 = v299 + 8 * (v302 - v283);
        v321 = v320 + 7;
        if (v320 < -7)
        {
          v321 = v320 + 14;
        }

        v329[3] = v283 - (v329 + 24);
        v329[4] = v320;
        v232 = v283 + (v321 >> 3) - v231;
        v329[5] = 0;
        if (v355[0])
        {
          v355[1] = v355[0];
          operator delete(v355[0]);
        }

LABEL_377:
        *v230 = v232;
        v322 = (v232 + v231 - __dst);
        if (v244 <= v322)
        {
          memcpy(__dst, __src, v244);
          LODWORD(v322) = v244;
        }

        if (v349[0])
        {
          v349[1] = v349[0];
          operator delete(v349[0]);
        }

        if (v350)
        {
          v351 = v350;
          operator delete(v350);
        }

        if (v352)
        {
          v353 = v352;
          operator delete(v352);
        }

        if (v354[0])
        {
          v354[1] = v354[0];
          operator delete(v354[0]);
        }

        sub_24BC91FA8(a1, *(a1 + 8), v345, v345 + v322, v322);
        v148 = v345;
        if (!v345)
        {
          goto LABEL_182;
        }

        v346 = v345;
        goto LABEL_181;
      }
    }

    LODWORD(v284) = v284 + 14;
    do
    {
      v293 -= 8;
      *v283++ = v294 >> v293;
      LODWORD(v284) = v284 - 8;
    }

    while (v293 > 7);
    v285 = v292 | (v294 << 8);
LABEL_326:
    v284 = v284;
    do
    {
      v284 -= 8;
      *v283++ = v285 >> v284;
    }

    while (v284 > 7);
    goto LABEL_315;
  }

  if (a4 != 1)
  {
    v147 = 0;
    goto LABEL_183;
  }

  sub_24BC94EB0(&v357, (3 * (v348 - __p)) >> 1);
  v90 = v357;
  if (v358 == v357 || (v92 = __p, v91 = v348, v93 = v348 - __p, v348 == __p))
  {
    sub_24BC923C0();
  }

  sub_24BC94EB0(&v359, v348 - __p);
  v94 = v359;
  v95 = v360;
  if (v360 == v359)
  {
    sub_24BC923C0();
  }

  if (v93 >= 1)
  {
    v96 = v92;
    do
    {
      v98 = *v96;
      v97 = v96 + 1;
      *v94 = v98;
      if (v97 >= v91)
      {
        break;
      }

      v99 = *v97;
      v96 = v97 + 1;
      *(v94 + ((v93 + 1) >> 1)) = v99;
      ++v94;
    }

    while (v96 < v91);
    v94 = v359;
    v95 = v360;
  }

  if (v95 == v94)
  {
    sub_24BC923C0();
  }

  if (v93 >= 2)
  {
    v100 = (v94 + v93);
    v103 = *v94;
    v101 = (v94 + 1);
    v102 = v103;
    do
    {
      v104 = *v101;
      *v101 = (*v101 - v102) ^ 0x80;
      ++v101;
      v102 = v104;
    }

    while (v101 < v100);
    v94 = v359;
    v95 = v360;
  }

  if (v95 == v94)
  {
    sub_24BC923C0();
  }

  if (v93 < 1)
  {
    LODWORD(v106) = v90;
  }

  else
  {
    v105 = v94 + v93;
    v106 = v90;
    v107 = v94;
    do
    {
      v108 = 0;
      v109 = &v107[~v94];
      v110 = 1;
      while (1)
      {
        v111 = v108;
        v112 = (v94 + v108 + 1);
        if (v112 >= v105)
        {
          break;
        }

        v113 = v110;
        v114 = *v112;
        v108 = v111 + 1;
        if (v109 >= -127)
        {
          --v109;
          ++v110;
          if (*v107 == v114)
          {
            continue;
          }
        }

        v115 = v94 - v107;
        v116 = v94 - v107 + v108;
        if (v116 <= 2)
        {
          v117 = v94 + v108 + 1;
          v112 = v105;
          if (v117 < v105)
          {
            v112 = (v105 - 1);
            do
            {
              v118 = *(v94 + v113 + 1);
              v119 = v114 != v118 || v94 + v113 + 2 >= v105;
              if (v119)
              {
                if ((v115 + v113) >= 127)
                {
                  goto LABEL_147;
                }
              }

              else if ((v115 + v113) > 126 || v114 == *(v94 + v113 + 2))
              {
LABEL_147:
                v112 = (v94 + v113);
                v94 += v113;
                goto LABEL_142;
              }

              ++v113;
              v114 = v118;
            }

            while (v94 + v113 + 1 < v105);
            if ((v105 - 1 - v107) <= 126)
            {
              v112 = v105;
            }
          }

          goto LABEL_141;
        }

LABEL_140:
        *v106 = v116 - 1;
        *(v106 + 1) = *v107;
        v106 = (v106 + 2);
        v107 = (v94 + v111 + 1);
        v94 = v107;
        goto LABEL_145;
      }

      v120 = v94 - v107 + v111;
      LOBYTE(v116) = v120 + 1;
      if (v120 + 1 > 2)
      {
        goto LABEL_140;
      }

LABEL_141:
      v94 = v112;
LABEL_142:
      *v106 = v107 - v112;
      v106 = (v106 + 1);
      if (v107 < v94)
      {
        v121 = v112 - v107;
        do
        {
          v122 = *v107++;
          *v106 = v122;
          v106 = (v106 + 1);
          --v121;
        }

        while (v121);
      }

LABEL_145:
      ;
    }

    while (v107 < v105);
  }

  v89 = v106 - v90;
  if (v89 >= v93)
  {
    memcpy(v90, v92, v93);
    LODWORD(v89) = v93;
  }

  if (v359)
  {
    v360 = v359;
    operator delete(v359);
  }

LABEL_179:
  sub_24BC91FA8(a1, *(a1 + 8), v357, v357 + v89, v89);
  v148 = v357;
  if (v357)
  {
    v358 = v357;
LABEL_181:
    operator delete(v148);
  }

LABEL_182:
  v147 = 1;
LABEL_183:
  if (__p)
  {
    v348 = __p;
    operator delete(__p);
  }

  return v147;
}

void sub_24BC91AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  v42 = *(v40 - 144);
  if (v42)
  {
    *(v40 - 136) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 120);
  if (v43)
  {
    *(v40 - 112) = v43;
    operator delete(v43);
  }

  v44 = *(v40 - 192);
  if (v44)
  {
    *(v40 - 184) = v44;
    operator delete(v44);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a39)
  {
    operator delete(a39);
  }

  v45 = *(v40 - 216);
  if (v45)
  {
    *(v40 - 208) = v45;
    operator delete(v45);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC91C50(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      sub_24BC91DBC(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_24BC91E14(v18);
  }
}

void sub_24BC91DBC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BC91E14(uint64_t a1)
{
  sub_24BC91E4C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BC91E4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *sub_24BC91EAC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BC91F08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC91F24(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_24BC91F60(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BC91F60(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

char *sub_24BC91FA8(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_24BC8E01C();
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
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
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

    v23 = v5;
    v24 = v7;
    v25 = v6;
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
    v19 = &v5[v6];
    v20 = &v10[v17];
    if (&v18[-v6] < v10)
    {
      v21 = a4 - &v7[v6];
      v22 = a4 - v7;
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

void *sub_24BC921D0(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC92248(result, a2);
  }

  return result;
}

void sub_24BC9222C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC92248(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_24BC92280(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BC92280(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void *sub_24BC922C4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC9233C(result, a2);
  }

  return result;
}

void sub_24BC92320(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC9233C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_24BC92378(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BC92378(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t *sub_24BC923D8(uint64_t *result)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = 65537;
  v13 = 0;
  v2 = 65537;
  v3 = result;
  memset(v12, 0, sizeof(v12));
  do
  {
    v4 = *v3++;
    ++*(v12 + v4);
    --v2;
  }

  while (v2);
  v5 = 0;
  v6 = 58;
  do
  {
    v7 = *(v12 + v6) + v5;
    *(v12 + v6) = v5;
    v5 = v7 >> 1;
  }

  while (v6-- > 1);
  do
  {
    if (*result >= 1)
    {
      v9 = *result & 0x7FFFFFFF;
      v10 = *(v12 + v9);
      *(v12 + v9) = v10 + 1;
      *result = v9 | (v10 << 6);
    }

    ++result;
    --v1;
  }

  while (v1);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24BC924EC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC92564(result, a2);
  }

  return result;
}

void sub_24BC92548(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC92564(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_24BC925A0(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BC925A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BC925E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      v10 = *v8;
      if (v9 >= a3)
      {
        v12 = *v10;
      }

      else
      {
        v11 = v8[1];
        v12 = *v10;
        v13 = *v10 <= *v11;
        if (*v10 >= *v11)
        {
          v12 = *v11;
        }

        if (*v10 > *v11)
        {
          v10 = v8[1];
          ++v8;
        }

        if (!v13)
        {
          v7 = v9;
        }
      }

      v14 = *a4;
      v15 = **a4;
      if (v12 <= v15)
      {
        do
        {
          v16 = v8;
          *a4 = v10;
          if (v5 < v7)
          {
            break;
          }

          v17 = (2 * v7) | 1;
          v8 = (result + 8 * v17);
          v7 = 2 * v7 + 2;
          v10 = *v8;
          if (v7 >= a3)
          {
            v19 = *v10;
            v7 = v17;
          }

          else
          {
            v18 = v8[1];
            v19 = *v10;
            v20 = *v10 <= *v18;
            if (*v10 >= *v18)
            {
              v19 = *v18;
            }

            if (*v10 > *v18)
            {
              v10 = v8[1];
              ++v8;
            }

            if (v20)
            {
              v7 = v17;
            }
          }

          a4 = v16;
        }

        while (v19 <= v15);
        *v16 = v14;
      }
    }
  }

  return result;
}

uint64_t sub_24BC926CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *v9;
    if (**v5 > *v9)
    {
      do
      {
        v11 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v11;
      }

      while (**v5 > v10);
      *v11 = v8;
    }
  }

  return result;
}

_BYTE *sub_24BC92728(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

_BYTE *sub_24BC927D8(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void sub_24BC92888(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_24BC92960(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      sub_24BC8EE84(&v8);
    }

    *(a1 + 8) = v7;
  }
}

void sub_24BC92930(void *a1, unint64_t a2)
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
    sub_24BC92B54(a1, a2 - v2);
  }
}

void sub_24BC92960(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      sub_24BC8F4C8(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_24BC92ACC(v18);
  }
}

void **sub_24BC92ACC(void **a1)
{
  sub_24BC92B00(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BC92B00(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_24BC8EE84(&v5);
  }
}

void sub_24BC92B54(uint64_t a1, unint64_t a2)
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
      sub_24BC8E01C();
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
      sub_24BC91F60(a1, v10);
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

uint64_t *sub_24BC92C84(uint64_t *result, int a2, int a3, int a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = v5 - *result;
  if (v5 != *result)
  {
    v7 = 0;
    v8 = v6 >> 2;
    do
    {
      v9 = a2 / (1 << v7);
      if (a4 == 1 && v9 << v7 < a2)
      {
        ++v9;
      }

      if (v9 <= 1)
      {
        v9 = 1;
      }

      *(v4 + 4 * v7++) = (a3 - 1 + v9) / a3;
    }

    while (v8 > v7);
  }

  return result;
}

void sub_24BC92CDC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_24BC8E01C();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_24BC92E0C(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_24BC92E0C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BC92E54(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, uint64_t a6, unint64_t a7, std::string *a8)
{
  v12 = *(a2 + 68);
  if (v12 == 2)
  {
    v13 = a1[2].i32[0] + a1[2].i32[1] * *(a3 + 24);
  }

  else if (v12 == 1)
  {
    v13 = a1[2].i32[0];
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 120);
  v15 = *(*a3 + 24 * v13);
  v16 = (v15[1] - *v15) >> 3;
  v17 = -1431655765 * ((*(*a3 + 24 * v13 + 8) - v15) >> 3) * v16;
  *a1 = malloc_type_calloc(0x20uLL, v17, 0x108004019856BD9uLL);
  v45 = v17;
  if (v17 >= 1)
  {
    v44 = a4;
    v18 = 0;
    v19 = a5;
    v20 = 0;
    v21 = 0;
    v43 = v19;
    v22 = 32 * v17;
    while (1)
    {
      v23 = sub_24BC9312C(v14, *(a2 + 104), *(a2 + 128), *(a2 + 60), *(a2 + 64));
      v24 = *a1;
      *(*a1 + v20 + 24) = v23;
      v25 = *(*(*(*a3 + 24 * v13) + 24 * (v18 / v16)) + 8 * (v18 % v16));
      v26 = a7 - (v25 + 20);
      if (a7 >= v25 + 20)
      {
        v27 = (a6 + v25);
        v28 = *v27;
        if (__PAIR64__(HIDWORD(*v27), *(v27 + 1)) != *&a1[2])
        {
          v21 |= 1u;
          goto LABEL_22;
        }

        v29 = *(v27 + 4);
        if (v29 >= 2 && v26 >= v29)
        {
          v31 = *(a2 + 60);
          v32 = v31.i32[1] * DWORD1(v28);
          if (v31.i32[0] * v28 <= *&a1[4] && v32 <= HIDWORD(*&a1[4]))
          {
            v34 = *(a2 + 128);
            v35 = *(a2 + 4);
            v36 = *(a2 + 124);
            v37 = *(a2 + 120);
            v38 = *(a2 + 104);
            v42 = *v27;
            v39 = vbsl_s8(vcgt_s32(a1[4], vmul_s32(v31, vadd_s32(*&v28, 0x100000001))), v31, vsub_s32(a1[4], __PAIR64__(v32, v31.i32[0] * v28)));
            *(*&v24 + v20 + 16) = v39;
            v40 = sub_24BC93234(v23, v34, v27 + 20, v29, v36, v35, v39.i32[0], v31.i32[1], v31.i32[0], 0, 0, v39.i32[1], v43, v37, v38, v44);
            v28 = v42;
            if (!v40)
            {
              v21 |= 4u;
            }

            v24 = *a1;
          }

          else
          {
            v21 |= 4u;
          }

          *(*&v24 + v20) = v28;
          goto LABEL_22;
        }
      }

      v21 |= 2u;
LABEL_22:
      v20 += 32;
      ++v18;
      if (v22 == v20)
      {
        goto LABEL_29;
      }
    }
  }

  v21 = 0;
LABEL_29:
  a1[5].i32[0] = v14;
  a1[5].i32[1] = v45;
  if (a8)
  {
    if ((v21 & 2) != 0)
    {
      std::string::append(a8, "Insufficient data length.\n");
    }

    if ((v21 & 4) != 0)
    {
      std::string::append(a8, "Failed to decode tile data.\n");
    }
  }

  if (v21)
  {
    return 4294967292;
  }

  else
  {
    return 0;
  }
}

void *sub_24BC9312C(int a1, uint64_t a2, _DWORD *a3, int a4, int a5)
{
  v10 = malloc_type_malloc(8 * a1, 0x80040B8603338uLL);
  v11 = v10;
  if (a1)
  {
    v12 = a1;
    v13 = a5 * a4;
    v14 = 4 * v13;
    v15 = 2 * v13;
    v16 = (a2 + 256);
    for (i = v10; ; ++i)
    {
      v18 = *v16;
      if (!*v16 || v18 == 2)
      {
        break;
      }

      if (v18 == 1)
      {
        if (*a3 == 2)
        {
          break;
        }

        if (*a3 == 1)
        {
          v19 = v15;
          v20 = 0x1000040BDFB0063;
LABEL_10:
          *i = malloc_type_malloc(v19, v20);
        }
      }

      v16 += 68;
      ++a3;
      if (!--v12)
      {
        return v11;
      }
    }

    v19 = v14;
    v20 = 0x100004052888210;
    goto LABEL_10;
  }

  return v11;
}

uint64_t sub_24BC93234(uint64_t a1, uint64_t a2, unsigned __int8 *a3, size_t a4, int a5, uint64_t a6, int a7, int a8, int a9, int a10, unsigned int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v16 = a7;
  v17 = a6;
  v18 = a3;
  v19 = a1;
  v20 = a12;
  if (a5 == 4)
  {
    result = 0;
    if (!a7)
    {
      return result;
    }

    v22 = !a12 || a13 == 0;
    if (v22)
    {
      return result;
    }

    v23 = a12 * a7;
    sub_24BC94EB0(&__p, a12 * a7 * a13);
    v24 = __p;
    if (v372 == __p)
    {
      sub_24BC923C0();
    }

    v342 = v372 - __p;
    if (v372 - __p == a4)
    {
      memcpy(__p, v18, a4);
LABEL_10:
      if (a14)
      {
        v25 = 0;
        v26 = __p;
        v27 = v372 - __p;
        v28 = v16;
        v29 = a13 * v16;
        v30 = __p + 1;
        v31 = *a16;
        do
        {
          v32 = *(a15 + 272 * v25 + 256);
          if (v32)
          {
            if (v32 == 1)
            {
              v41 = 0;
              v42 = *(v31 + 8 * v25);
              v43 = &v30[v28 * v42];
              do
              {
                if (v27 <= (v42 + v41 * a13) * v28)
                {
                  sub_24BC923C0();
                }

                v44 = *(a2 + 4 * v25);
                v45 = (~(v41 + a11) + a8);
                v46 = v17;
                if (!v17)
                {
                  v45 = v41 + a11;
                }

                v47 = v45 * a9;
                v48 = v43;
                v49 = v28;
                do
                {
                  v50 = *(v48 - 1);
                  v51 = *v48;
                  if (v44 == 1)
                  {
                    *(*(v19 + 8 * v25) + 2 * v47) = v50 | (v51 << 8);
                  }

                  else
                  {
                    v52 = (v51 << 21) | (v50 << 13);
                    v53 = (v51 << 21) & 0xF800000;
                    LODWORD(v54) = (v52 & 0xFFFE000) + 939524096;
                    if (!v53)
                    {
                      v54 = COERCE_FLOAT(v52 | 0x38800000) + -0.000061035;
                    }

                    v55 = v52 | 0x70000000;
                    if (v53 != 260046848)
                    {
                      v55 = LODWORD(v54);
                    }

                    v19 = a1;
                    *(*(a1 + 8 * v25) + 4 * v47) = v55 | (v51 >> 7 << 31);
                  }

                  v48 += 2;
                  ++v47;
                  --v49;
                }

                while (v49);
                ++v41;
                v43 += v29;
                v17 = v46;
              }

              while (v41 != v20);
            }

            else if (v32 == 2)
            {
              v33 = 0;
              v34 = *(v31 + 8 * v25);
              v35 = &v26[a9 * v34];
              do
              {
                if (v27 <= (v34 + v33 * a13) * a9)
                {
                  sub_24BC923C0();
                }

                v36 = (~(v33 + a11) + a8);
                if (!v17)
                {
                  v36 = v33 + a11;
                }

                v37 = (*(v19 + 8 * v25) + 4 * v36 * a9);
                v38 = v35;
                v39 = v28;
                do
                {
                  v40 = *v38;
                  v38 += 4;
                  *v37++ = v40;
                  --v39;
                }

                while (v39);
                ++v33;
                v35 += a13 * a9;
              }

              while (v33 != v20);
            }
          }

          else
          {
            v56 = 0;
            v57 = *(v31 + 8 * v25);
            v58 = &v26[v28 * v57];
            do
            {
              if (v27 <= (v57 + v56 * a13) * v28)
              {
                sub_24BC923C0();
              }

              v59 = (~(v56 + a11) + a8);
              if (!v17)
              {
                v59 = v56 + a11;
              }

              v60 = (*(v19 + 8 * v25) + 4 * v59 * a9);
              v61 = v58;
              v62 = v28;
              do
              {
                v63 = *v61;
                v61 += 4;
                *v60++ = v63;
                --v62;
              }

              while (v62);
              ++v56;
              v58 += v29;
            }

            while (v56 != v20);
          }

          ++v25;
        }

        while (v25 != a14);
      }

      LOBYTE(v64) = 1;
      goto LABEL_396;
    }

    sub_24BC94EB0(&v376, 0x2000);
    v138 = v376;
    bzero(v376, 0x2000uLL);
    v139 = v18[3];
    if (v139 >= 0x20)
    {
      v377 = v138;
      operator delete(v138);
      goto LABEL_395;
    }

    v181 = (v18 + 4);
    v182 = v18[2] | (v139 << 8);
    v183 = *v18;
    __dst = v24;
    if (v183 <= v182)
    {
      v184 = v182 - v183 + 1;
      memcpy(&v138[v183], v18 + 4, v184);
      v181 = (v181 + v184);
      v20 = a12;
    }

    v185 = v18;
    sub_24BC921D0(v375, 0x10000);
    v186 = v375[0];
    bzero(v375[0], 0x20000uLL);
    v187 = 0;
    v188 = 0;
    v189 = v376;
    do
    {
      if (!v188 || ((v189[v188 >> 3] >> (v188 & 7)) & 1) != 0)
      {
        v186[v187++] = v188;
      }

      ++v188;
    }

    while (v188 != 0x10000);
    if (v187 < 0x10000)
    {
      bzero(&v186[v187], 2 * (0xFFFF - v187) + 2);
    }

    v191 = v181 + 1;
    v190 = *v181;
    v341 = ((v181 + 1) - v185 + v190);
    if (v341 > a4)
    {
LABEL_390:
      if (v186)
      {
        v375[1] = v186;
        operator delete(v186);
      }

      if (v376)
      {
        v377 = v376;
        operator delete(v376);
      }

      v19 = a1;
      if (v341 <= a4)
      {
        goto LABEL_10;
      }

LABEL_395:
      LOBYTE(v64) = 0;
LABEL_396:
      v137 = __p;
      if (!__p)
      {
        return (v64 & 1) != 0;
      }

      v372 = __p;
      goto LABEL_398;
    }

    v192 = v181;
    sub_24BC921D0(&v373, v342);
    v352 = v17;
    v348 = v20;
    if (!v190 || (v193 = v181[1], v193 > 0x10000) || (v365 = v192[2], v365 > 0x10000))
    {
LABEL_330:
      v271 = a14;
      sub_24BC922C4(&v384, a14);
      v272 = v373;
      if (v374 == v373)
      {
        sub_24BC923C0();
      }

      v273 = v384;
      if (a14)
      {
        v274 = (v384 + 16);
        v275 = (a15 + 256);
        v276 = v373;
        do
        {
          v22 = *v275 == 1;
          v277 = *v275 != 1;
          *(v274 - 2) = v276;
          *(v274 - 1) = v276;
          *v274 = v16;
          v274[1] = v20;
          if (v22)
          {
            v278 = 1;
          }

          else
          {
            v278 = 2;
          }

          v274[3] = v278;
          v276 += 2 * (v23 << v277);
          v274 += 8;
          v275 += 68;
          --v271;
        }

        while (v271);
      }

      v339 = v385;
      v340 = v272;
      if (v385 != v273)
      {
        v279 = 0;
        v361 = v187 - 1;
        v280 = (v385 - v273) >> 5;
        if (v280 <= 1)
        {
          v280 = 1;
        }

        v343 = v280;
        v344 = v273;
        do
        {
          v346 = v279;
          v281 = &v273[32 * v279];
          v282 = *(v281 + 7);
          if (v282 >= 1)
          {
            v359 = 0;
            v354 = 0;
            v283 = *v281;
            v284 = *(v281 + 4);
            v285 = *(v281 + 5);
            v366 = v284 * v282;
            v364 = v284;
            if (v284 >= v285)
            {
              v286 = *(v281 + 5);
            }

            else
            {
              v286 = *(v281 + 4);
            }

            v350 = v286;
            do
            {
              v287 = 1;
              do
              {
                v288 = v287;
                v287 *= 2;
              }

              while (v288 <= v286);
              v289 = v288 >> 2;
              if (v288 >> 2 >= 1)
              {
                v290 = v288 >> 1;
                do
                {
                  v291 = v290;
                  v290 = v289;
                  v292 = v285;
                  v293 = (v285 - v291) * v366;
                  v294 = v290 * v282;
                  v295 = v291 * v282;
                  v296 = v361 >> 14;
                  v297 = (v283 + 2 * v354);
                  if ((v293 & 0x80000000) == 0)
                  {
                    v297 = (v283 + 2 * v354);
                    v298 = &v297[v293];
                    v299 = ((v364 - v291) * v282);
                    v300 = (v291 * v366);
                    v301 = v290 * v366;
                    v302 = v283 + 2 * (v290 * v366);
                    v303 = v283 + 2 * (v290 * v366) + 2 * v294;
                    v304 = v283 + 2 * v294;
                    v305 = v359;
                    do
                    {
                      v306 = v297;
                      if ((v299 & 0x80000000) == 0)
                      {
                        v307 = v305;
                        do
                        {
                          v308 = *(v283 + v307);
                          v309 = *(v302 + v307);
                          if (v296)
                          {
                            v316 = v308 - (v309 >> 1);
                            v317 = *(v303 + v307);
                            v318 = *(v304 + v307) - (v317 >> 1);
                            LOWORD(v317) = (v318 + v317) ^ 0x8000;
                            v319 = ((v316 + v309) ^ 0xFFFF8000) - ((v317 & 0xFFFE) >> 1);
                            *(v304 + v307) = v319;
                            *(v283 + v307) = (v319 + v317) ^ 0x8000;
                            v320 = v316 - ((v318 & 0xFFFE) >> 1);
                            *(v303 + v307) = v320;
                            *(v302 + v307) = (v320 + v318) ^ 0x8000;
                          }

                          else
                          {
                            v310 = (v309 & 1) + v308 + (v309 >> 1);
                            v311 = v310 - v309;
                            v312 = *(v303 + v307);
                            v313 = (v312 & 1) + *(v304 + v307) + (v312 >> 1);
                            LOWORD(v312) = v313 - v312;
                            v314 = (v313 & 1) + v310 + (v313 >> 1);
                            *(v283 + v307) = v314;
                            *(v304 + v307) = v314 - v313;
                            v315 = v311 + (v312 & 1) + (v312 >> 1);
                            *(v302 + v307) = v315;
                            *(v303 + v307) = v315 - v312;
                          }

                          v307 += 2 * v295;
                          v306 = (v283 + v307);
                        }

                        while (v283 + v307 <= &v297[v299]);
                      }

                      if ((v290 & v364) != 0)
                      {
                        v321 = *v306;
                        v322 = v306[v301];
                        if (v296)
                        {
                          v321 -= v322 >> 1;
                          LOWORD(v323) = (v321 + v322) ^ 0x8000;
                        }

                        else
                        {
                          v323 = (v322 & 1) + v321 + (v322 >> 1);
                          LOWORD(v321) = v323 - v322;
                        }

                        v306[v301] = v321;
                        *v306 = v323;
                      }

                      v297 += v300;
                      v305 += 2 * v300;
                    }

                    while (v297 <= v298);
                  }

                  v285 = v292;
                  if ((v290 & v292) != 0)
                  {
                    v324 = (v364 - v291) * v282;
                    if ((v324 & 0x80000000) == 0)
                    {
                      v325 = &v297[v324];
                      do
                      {
                        v326 = *v297;
                        v327 = v297[v294];
                        if (v296)
                        {
                          v326 -= v327 >> 1;
                          LOWORD(v328) = (v326 + v327) ^ 0x8000;
                        }

                        else
                        {
                          v328 = (v327 & 1) + v326 + (v327 >> 1);
                          LOWORD(v326) = v328 - v327;
                        }

                        v297[v294] = v326;
                        *v297 = v328;
                        v297 += v295;
                      }

                      while (v297 <= v325);
                    }
                  }

                  v289 = v290 >> 1;
                }

                while (v290 > 1);
              }

              v359 += 2;
              ++v354;
              v286 = v350;
            }

            while (v354 != v282);
          }

          v279 = v346 + 1;
          v273 = v344;
        }

        while (v346 + 1 != v343);
      }

      v329 = v340;
      if (v342 >= 1)
      {
        v330 = v375[0];
        v331 = v342 & 0x7FFFFFFF;
        do
        {
          *v329 = v330[*v329];
          ++v329;
          --v331;
        }

        while (v331);
      }

      v20 = v348;
      v17 = v352;
      v16 = a7;
      if (v348 >= 1)
      {
        v332 = 0;
        v333 = v339;
        do
        {
          if (v333 == v273)
          {
            v333 = v273;
          }

          else
          {
            v334 = 0;
            v335 = 0;
            v336 = __dst;
            do
            {
              v337 = &v273[v334];
              v338 = *&v273[v334 + 28] * *&v273[v334 + 16];
              memcpy(v336, *&v273[v334 + 8], 2 * v338);
              v336 += 2 * v338;
              *(v337 + 1) += 2 * v338;
              ++v335;
              v273 = v384;
              v333 = v385;
              v334 += 32;
            }

            while (v335 < (v385 - v384) >> 5);
            __dst = v336;
            v16 = a7;
          }

          ++v332;
        }

        while (v332 != v348);
      }

      if (v273)
      {
        v385 = v273;
        operator delete(v273);
      }

      if (v373)
      {
        v374 = v373;
        operator delete(v373);
      }

      v186 = v375[0];
      goto LABEL_390;
    }

    v358 = v192[4];
    sub_24BC95028(&v384, 0x10001uLL);
    sub_24BC94D00(&v378, 0x4000uLL);
    if (v379 != v378)
    {
      v194 = (v192 + 6);
      v195 = v378 + 8;
      v196 = 0x4000;
      do
      {
        *(v195 - 2) = 0;
        *v195 = 0;
        v195 += 2;
        --v196;
      }

      while (v196);
      if (v385 == v384)
      {
        goto LABEL_416;
      }

      v367 = v384;
      bzero(v384, 0x80008uLL);
      if (v193 <= v365)
      {
        v207 = v190;
        v208 = 0;
        v209 = 0;
        v349 = v207;
        v210 = v207 - 20;
        v362 = v365 + 1;
        v353 = v193;
        v211 = v193;
        v197 = v194;
        v212 = v194;
        v198 = v367;
        v360 = v210;
        while (&v197[-v194] < v210)
        {
          if (v208 > 5)
          {
            v214 = v208;
          }

          else
          {
            do
            {
              v213 = *v197++;
              v209 = v213 | (v209 << 8);
              v214 = v208 + 8;
              v267 = v208 < -2;
              v208 += 8;
            }

            while (v267);
          }

          v208 = v214 - 6;
          v215 = (v209 >> (v214 - 6)) & 0x3F;
          v216 = v211;
          v198[v211] = v215;
          if (v215 == 63)
          {
            if (&v197[-v212] > v210)
            {
              goto LABEL_262;
            }

            if (v208 <= 7)
            {
              v208 = v214 + 2;
              v217 = *v197++;
              v209 = v217 | (v209 << 8);
            }

            v208 -= 8;
            if (v211 + (v209 >> v208) + 6 > v362)
            {
LABEL_262:
              v194 = v212;
              v219 = v212;
              v16 = a7;
              goto LABEL_264;
            }

            bzero(&v367[v211], 8 * (v209 >> v208) + 48);
            v210 = v360;
            v198 = v367;
            v211 = v216 + (v209 >> v208) + 5;
          }

          else if (v215 >= 0x3B)
          {
            if (v215 - 57 + v211 > v362)
            {
              goto LABEL_262;
            }

            v218 = v211;
            bzero(&v367[v211], 8 * (v215 - 57));
            v210 = v360;
            v198 = v367;
            v211 = v218 + v215 - 58;
          }

          v267 = v211++ < v365;
          v16 = a7;
          v194 = v212;
          if (!v267)
          {
            v194 = v197;
            v20 = v348;
            v193 = v353;
            v190 = v349;
            goto LABEL_238;
          }
        }

        v219 = v194;
LABEL_264:
        v20 = v348;
        v193 = v353;
        v190 = v349;
      }

      else
      {
        v197 = v194;
        v198 = v367;
LABEL_238:
        sub_24BC923D8(v198);
        v219 = v194;
        v194 = v197;
      }

      if (v358 > 8 * (v191 + v190 - v219))
      {
        goto LABEL_326;
      }

      v228 = v384;
      if (v385 == v384)
      {
        goto LABEL_416;
      }

      v229 = v378;
      if (v379 == v378)
      {
        goto LABEL_415;
      }

      v363 = v194;
      if (v193 <= v365)
      {
        do
        {
          v255 = *&v228[8 * v193];
          v256 = v255 >> 6;
          if (v255 >> 6 >> v255)
          {
            break;
          }

          v257 = *&v228[8 * v193] & 0x3FLL;
          if (v257 >= 0xF)
          {
            v258 = &v229[16 * (v256 >> (v257 - 14))];
            if (!*v258)
            {
              *v258 += 256;
              if (*(v258 + 1))
              {
                operator new[]();
              }

              operator new[]();
            }

            break;
          }

          if (v257)
          {
            v259 = 1 << (14 - v257);
            v260 = &v229[16 * (v256 << (14 - v257))];
            v261 = v257 | (v193 << 8);
            v262 = v259 + 1;
            while (!*v260 && !*(v260 + 1))
            {
              *v260 = v261;
              v260 += 16;
              if (--v262 <= 1)
              {
                goto LABEL_309;
              }
            }

            break;
          }

LABEL_309:
          v263 = v193++;
        }

        while (v365 > v263);
      }

      v230 = v384;
      v231 = v363;
      if (v385 == v384)
      {
LABEL_416:
        sub_24BC923C0();
      }

      if (v379 != v378)
      {
        v382 = v373;
        v383 = v363;
        v381 = 0;
        v380 = 0;
        v232 = v373;
        v369 = &v373[2 * ((v374 - v373) >> 1)];
        v233 = v358 + 7;
        if (v358 < -7)
        {
          v233 = v358 + 14;
        }

        v234 = v363 + (v233 >> 3);
        if (v358 < 1)
        {
          v235 = 0;
          v254 = 0;
          v236 = v365;
          v237 = v378;
        }

        else
        {
          v235 = 0;
          v236 = v365;
          v237 = v378;
          do
          {
            v238 = v231;
            v239 = v235;
            v383 = ++v231;
            v381 = *v238 | (v381 << 8);
            v235 += 8;
            v380 = v235;
            if (v239 >= 6)
            {
              do
              {
                v240 = v381;
                v241 = &v237[16 * ((v381 >> (v235 - 14)) & 0x3FFF)];
                v242 = *v241;
                if (*v241)
                {
                  v380 = v235 - *v241;
                  LODWORD(v243) = v242 >> 8;
                }

                else
                {
                  v244 = *(v241 + 1);
                  if (v242)
                  {
                    v245 = v244 == 0;
                  }

                  else
                  {
                    v245 = 1;
                  }

                  if (v245)
                  {
                    goto LABEL_321;
                  }

                  v246 = 0;
                  v247 = v383;
                  v248 = v242 >> 8;
                  while (1)
                  {
                    v243 = *(v244 + 4 * v246);
                    v249 = *&v230[8 * v243];
                    v250 = v249 & 0x3F;
                    for (i = v235 < v250; v235 < v250 && v247 < v234; i = v235 < v250)
                    {
                      v253 = *v247++;
                      v240 = v253 | (v240 << 8);
                      v235 += 8;
                    }

                    if (!i && ((v240 >> (v235 - v250)) & ~(-1 << v250)) == v249 >> 6)
                    {
                      break;
                    }

                    if (++v246 == v248)
                    {
                      goto LABEL_321;
                    }
                  }

                  v383 = v247;
                  v381 = v240;
                  v380 = v235 - v250;
                }

                if ((sub_24BC94DFC(v243, v365, &v381, &v380, &v383, v234, &v382, v232, v369) & 1) == 0)
                {
                  goto LABEL_321;
                }

                v235 = v380;
              }

              while (v380 > 13);
              v231 = v383;
            }
          }

          while (v231 < v234);
          v254 = v381;
        }

        v381 = v254 >> (-v358 & 7);
        v264 = v235 - (-v358 & 7);
        if (v264 >= 1)
        {
          do
          {
            v265 = *&v237[16 * ((v381 << (14 - v264)) & 0x3FFF)];
            if (!v265)
            {
              break;
            }

            v380 = v264 - *&v237[16 * ((v381 << (14 - v264)) & 0x3FFF)];
            v266 = sub_24BC94DFC(v265 >> 8, v236, &v381, &v380, &v383, v234, &v382, v232, v369);
            v264 = v380;
            v267 = !v266 || v380 <= 0;
          }

          while (!v267);
        }

LABEL_321:
        v20 = v348;
        if (v379 != v378)
        {
          v268 = 0;
          v269 = v378 + 8;
          do
          {
            v270 = *&v269[v268];
            if (v270)
            {
              MEMORY[0x24C254890](v270, 0x1000C8052888210);
              *&v269[v268] = 0;
            }

            v268 += 16;
          }

          while (v268 != 0x40000);
LABEL_326:
          if (v378)
          {
            v379 = v378;
            operator delete(v378);
          }

          if (v384)
          {
            v385 = v384;
            operator delete(v384);
          }

          goto LABEL_330;
        }
      }
    }

LABEL_415:
    sub_24BC923C0();
  }

  v351 = a6;
  if ((a5 & 0xFFFFFFFE) == 2)
  {
    sub_24BC94EB0(&v384, a12 * a7 * a13);
    v378 = (v385 - v384);
    if (v385 == v384)
    {
      sub_24BC923C0();
    }

    if (sub_24BC89F78(v384, &v378, v18, a4))
    {
      if (a14)
      {
        v65 = 0;
        v66 = v16;
        v67 = *a16;
        v68 = v384;
        v69 = v385 - v384;
        v70 = a13 * v16;
        do
        {
          v71 = *(a15 + 272 * v65 + 256);
          if (v71)
          {
            if (v71 == 1)
            {
              if (a12)
              {
                v80 = 0;
                v81 = *(v67 + 8 * v65);
                v82 = &v68[v66 * v81 + 1];
                do
                {
                  if (v69 <= (v81 + v80 * a13) * v66)
                  {
                    sub_24BC923C0();
                  }

                  if (v16)
                  {
                    v83 = *(a2 + 4 * v65);
                    v84 = v80 + a11;
                    if (v351)
                    {
                      v84 = ~(v80 + a11) + a8;
                    }

                    v85 = v84 * a9;
                    v86 = v82;
                    v87 = v66;
                    do
                    {
                      v88 = *(v86 - 1);
                      v89 = *v86;
                      if (v83 == 1)
                      {
                        *(*(v19 + 8 * v65) + 2 * v85) = v88 | (v89 << 8);
                      }

                      else
                      {
                        v90 = (v89 << 21) | (v88 << 13);
                        v91 = (v89 << 21) & 0xF800000;
                        LODWORD(v92) = (v90 & 0xFFFE000) + 939524096;
                        if (!v91)
                        {
                          v92 = COERCE_FLOAT(v90 | 0x38800000) + -0.000061035;
                        }

                        v93 = v90 | 0x70000000;
                        if (v91 != 260046848)
                        {
                          v93 = LODWORD(v92);
                        }

                        v19 = a1;
                        *(*(a1 + 8 * v65) + 4 * v85) = v93 | (v89 >> 7 << 31);
                      }

                      v86 += 2;
                      ++v85;
                      --v87;
                    }

                    while (v87);
                  }

                  ++v80;
                  v82 += v70;
                  v16 = a7;
                  LODWORD(v17) = v351;
                }

                while (v80 != a12);
              }
            }

            else
            {
              if (v71 != 2)
              {
                goto LABEL_139;
              }

              if (a12)
              {
                v72 = 0;
                v73 = *(v67 + 8 * v65);
                v74 = &v68[v66 * v73];
                do
                {
                  if (v69 <= (v73 + v72 * a13) * v66)
                  {
                    sub_24BC923C0();
                  }

                  if (v16)
                  {
                    v75 = v72 + a11;
                    if (v17)
                    {
                      v75 = ~(v72 + a11) + a8;
                    }

                    v76 = (*(v19 + 8 * v65) + 4 * v75 * a9);
                    v77 = v74;
                    v78 = v66;
                    do
                    {
                      v79 = *v77;
                      v77 += 4;
                      *v76++ = v79;
                      --v78;
                    }

                    while (v78);
                  }

                  ++v72;
                  v74 += v70;
                  v16 = a7;
                }

                while (v72 != a12);
              }
            }
          }

          else if (a12)
          {
            v94 = 0;
            v95 = *(v67 + 8 * v65);
            v96 = &v68[v66 * v95];
            do
            {
              if (v69 <= (v95 + v94 * a13) * v66)
              {
                sub_24BC923C0();
              }

              if (v16)
              {
                v97 = v94 + a11;
                if (v17)
                {
                  v97 = ~(v94 + a11) + a8;
                }

                v98 = (*(v19 + 8 * v65) + 4 * v97 * a9);
                v99 = v96;
                v100 = v66;
                do
                {
                  v101 = *v99;
                  v99 += 4;
                  *v98++ = v101;
                  --v100;
                }

                while (v100);
              }

              ++v94;
              v96 += v70;
              v16 = a7;
            }

            while (v94 != a12);
          }

          ++v65;
        }

        while (v65 != a14);
      }

      LOBYTE(v64) = 1;
    }

    else
    {
LABEL_139:
      LOBYTE(v64) = 0;
    }

    v137 = v384;
    if (!v384)
    {
      return (v64 & 1) != 0;
    }

    v385 = v384;
LABEL_398:
    operator delete(v137);
    return (v64 & 1) != 0;
  }

  if (a5 == 128)
  {
    return 0;
  }

  if (a5 == 1)
  {
    sub_24BC94EB0(&v378, a12 * a7 * a13);
    v141 = v378;
    v140 = v379;
    v64 = v379 - v378;
    if (v379 == v378)
    {
LABEL_260:
      if (!v141)
      {
        return (v64 & 1) != 0;
      }

      v379 = v141;
      v137 = v141;
      goto LABEL_398;
    }

    if (v64 == a4)
    {
      memcpy(v378, v18, a4);
      v142 = a1;
    }

    else
    {
      if (a4 < 3)
      {
        goto LABEL_258;
      }

      v199 = a4;
      sub_24BC94EB0(&v384, v379 - v378);
      v200 = v384;
      if (v385 == v384)
      {
        sub_24BC923C0();
      }

      v368 = v140;
      if (a4 >= 1)
      {
        v201 = v140 - v141;
        v202 = v140 - v141;
        v203 = v384;
        while (1)
        {
          v204 = *v18;
          if (v204 < 0)
          {
            v206 = 0;
            v202 += v204;
            if (v202 < 0)
            {
              goto LABEL_242;
            }

            v199 = v199 + v204 - 1;
            if (v199 < 0)
            {
              goto LABEL_242;
            }

            v205 = -v204;
            memcpy(v203, v18 + 1, v205);
            v18 += v205 + 1;
          }

          else
          {
            v205 = (v204 + 1);
            v202 -= v205;
            if (v202 < 0)
            {
              v206 = 0;
              goto LABEL_242;
            }

            v199 -= 2;
            memset(v203, v18[1], (v204 + 1));
            v18 += 2;
          }

          v203 += v205;
          if (v199 <= 0)
          {
            goto LABEL_240;
          }
        }
      }

      v201 = v140 - v141;
      LODWORD(v203) = v384;
LABEL_240:
      v206 = v203 - v200;
LABEL_242:
      v220 = v384;
      if (v206 == v201)
      {
        v221 = v385;
        v20 = a12;
        if (v385 == v384)
        {
          sub_24BC923C0();
        }

        v16 = a7;
        if (v201 >= 2)
        {
          v222 = &v384[v201];
          v223 = (v384 + 1);
          v224 = *v384;
          do
          {
            v224 = (*v223 + v224) ^ 0xFFFFFF80;
            *v223++ = v224;
          }

          while (v223 < v222);
          v220 = v384;
          v221 = v385;
        }

        if (v221 == v220)
        {
          sub_24BC923C0();
        }

        if (v201 >= 1)
        {
          v225 = v220;
          do
          {
            *v141 = *v225;
            v226 = (v141 + 1);
            if (v226 >= v368)
            {
              break;
            }

            v227 = v225[(v201 + 1) >> 1];
            ++v225;
            *v226 = v227;
            v141 = (v226 + 1);
          }

          while (v141 < v368);
        }
      }

      else
      {
        v16 = a7;
        v20 = a12;
      }

      v142 = a1;
      if (v220)
      {
        v385 = v220;
        operator delete(v220);
      }

      if (v206 != v201)
      {
LABEL_258:
        LOBYTE(v64) = 0;
LABEL_259:
        v141 = v378;
        goto LABEL_260;
      }
    }

    if (a14)
    {
      v143 = 0;
      v144 = v16;
      v145 = *a16;
      v146 = v378;
      v147 = v379 - v378;
      v148 = a13 * v16;
      v149 = v351;
      do
      {
        v150 = *(a15 + 272 * v143 + 256);
        if (v150)
        {
          if (v150 == 1)
          {
            if (v20)
            {
              v159 = 0;
              v160 = *(v145 + 8 * v143);
              v161 = &v146[v144 * v160 + 1];
              do
              {
                if (v147 <= (v160 + v159 * a13) * v144)
                {
                  sub_24BC923C0();
                }

                if (v16)
                {
                  v162 = *(a2 + 4 * v143);
                  v163 = v159 + a11;
                  if (v351)
                  {
                    v163 = ~(v159 + a11) + a8;
                  }

                  v164 = v163 * a9;
                  v165 = v161;
                  v166 = v144;
                  do
                  {
                    v167 = *(v165 - 1);
                    v168 = *v165;
                    if (v162 == 1)
                    {
                      *(*(v142 + 8 * v143) + 2 * v164) = v167 | (v168 << 8);
                    }

                    else
                    {
                      v169 = (v168 << 21) | (v167 << 13);
                      v170 = (v168 << 21) & 0xF800000;
                      LODWORD(v171) = (v169 & 0xFFFE000) + 939524096;
                      if (!v170)
                      {
                        v171 = COERCE_FLOAT(v169 | 0x38800000) + -0.000061035;
                      }

                      v172 = v169 | 0x70000000;
                      if (v170 != 260046848)
                      {
                        v172 = LODWORD(v171);
                      }

                      v142 = a1;
                      *(*(a1 + 8 * v143) + 4 * v164) = v172 | (v168 >> 7 << 31);
                    }

                    v165 += 2;
                    ++v164;
                    --v166;
                  }

                  while (v166);
                }

                ++v159;
                v161 += v148;
                v16 = a7;
                v149 = v351;
              }

              while (v159 != v20);
            }
          }

          else
          {
            if (v150 != 2)
            {
              goto LABEL_258;
            }

            if (v20)
            {
              v151 = 0;
              v152 = *(v145 + 8 * v143);
              v153 = &v146[v144 * v152];
              do
              {
                if (v147 <= (v152 + v151 * a13) * v144)
                {
                  sub_24BC923C0();
                }

                if (v16)
                {
                  v154 = v151 + a11;
                  if (v149)
                  {
                    v154 = ~(v151 + a11) + a8;
                  }

                  v155 = (*(v142 + 8 * v143) + 4 * v154 * a9);
                  v156 = v153;
                  v157 = v144;
                  do
                  {
                    v158 = *v156;
                    v156 += 4;
                    *v155++ = v158;
                    --v157;
                  }

                  while (v157);
                }

                ++v151;
                v153 += v148;
                v16 = a7;
              }

              while (v151 != v20);
            }
          }
        }

        else if (v20)
        {
          v173 = 0;
          v174 = *(v145 + 8 * v143);
          v175 = &v146[v144 * v174];
          do
          {
            if (v147 <= (v174 + v173 * a13) * v144)
            {
              sub_24BC923C0();
            }

            if (v16)
            {
              v176 = v173 + a11;
              if (v149)
              {
                v176 = ~(v173 + a11) + a8;
              }

              v177 = (*(v142 + 8 * v143) + 4 * v176 * a9);
              v178 = v175;
              v179 = v144;
              do
              {
                v180 = *v178;
                v178 += 4;
                *v177++ = v180;
                --v179;
              }

              while (v179);
            }

            ++v173;
            v175 += v148;
            v16 = a7;
          }

          while (v173 != v20);
        }

        ++v143;
      }

      while (v143 != a14);
    }

    LOBYTE(v64) = 1;
    goto LABEL_259;
  }

  if (a5 || !a14)
  {
    return 1;
  }

  v102 = 0;
  v103 = a7;
  v104 = a7 * a13;
  v105 = a7;
  v106 = &a3[a4];
  while (!a12)
  {
LABEL_137:
    if (++v102 == a14)
    {
      return 1;
    }
  }

  v107 = 0;
  v108 = (a15 + 272 * v102 + 256);
  v109 = *a16;
  v110 = a3;
  while (1)
  {
    v111 = *v108;
    if (!*v108)
    {
      break;
    }

    if (v111 == 2)
    {
      v117 = *(v109 + 8 * v102) * v103;
      v118 = v107 + a10;
      if (v17)
      {
        v118 = ~(v107 + a10) + a8;
      }

      if (&a3[4 * v103 + v104 * v107 + v117] > v106)
      {
        return 0;
      }

      if (a7 >= 1)
      {
        v119 = (*(v19 + 8 * v102) + 4 * v118 * a9);
        v120 = v105;
        do
        {
          *v119++ = *&v110[v117];
          v117 += 4;
          --v120;
        }

        while (v120);
      }
    }

    else if (v111 == 1)
    {
      v112 = *(v109 + 8 * v102) * v103;
      v113 = *(a2 + 4 * v102);
      if (v113 == 2)
      {
        v126 = v107 + a10;
        if (v17)
        {
          v126 = ~(v107 + a10) + a8;
        }

        if (&a3[2 * v103 + v104 * v107 + v112] > v106)
        {
          return 0;
        }

        if (a7 >= 1)
        {
          v127 = (*(v19 + 8 * v102) + 4 * v126 * a9);
          v128 = v105;
          do
          {
            v129 = v110[v112 + 1];
            v130 = v129;
            v129 <<= 21;
            v131 = v129 | (v110[v112] << 13);
            v132 = v129 & 0xF800000;
            LODWORD(v133) = (v131 & 0xFFFE000) + 939524096;
            if (!v132)
            {
              v133 = COERCE_FLOAT(v131 | 0x38800000) + -0.000061035;
            }

            v19 = a1;
            v134 = v131 | 0x70000000;
            if (v132 == 260046848)
            {
              v135 = *&v134;
            }

            else
            {
              v135 = v133;
            }

            v136 = v130 & 0x80000000;
            LODWORD(v17) = v351;
            *v127++ = LODWORD(v135) | v136;
            v112 += 2;
            --v128;
          }

          while (v128);
        }
      }

      else
      {
        if (v113 != 1)
        {
          return 0;
        }

        v114 = v107 + a10;
        if (v17)
        {
          v114 = ~(v107 + a10) + a8;
        }

        if (a7 >= 1)
        {
          v115 = (*(v19 + 8 * v102) + 2 * v114 * a9);
          v116 = v105;
          do
          {
            *v115++ = *&v110[v112];
            v112 += 2;
            --v116;
          }

          while (v116);
        }
      }
    }

LABEL_136:
    ++v107;
    v110 += v104;
    v16 = a7;
    if (v107 == a12)
    {
      goto LABEL_137;
    }
  }

  v121 = v107 + a10;
  if (v17)
  {
    v121 = ~(v107 + a10) + a8;
  }

  if (v16 < 1)
  {
    goto LABEL_136;
  }

  v122 = (*(v19 + 8 * v102) + 4 * v121 * a9);
  v123 = &v110[*(v109 + 8 * v102) * v103];
  v124 = v105;
  while (v123 < v106)
  {
    v125 = *v123;
    v123 += 4;
    *v122++ = v125;
    if (!--v124)
    {
      goto LABEL_136;
    }
  }

  return 0;
}