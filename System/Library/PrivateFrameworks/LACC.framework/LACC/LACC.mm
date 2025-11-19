uint64_t lacc::ELFLoader::arch_version(lacc::ELFLoader *this)
{
  result = *(*(*this + 32) + 36);
  if ((result - 1) >= 2)
  {
    v2 = sub_255A1BB5C();
    v3 = v2[4];
    if (v2[3] - v3 > 0x60uLL)
    {
      qmemcpy(v3, "Warning: running old, un-versioned binary on new simulator. Defaulting to simulator LACC V1 ISA.\n", 97);
      v2[4] += 97;
    }

    else
    {
      sub_255A1AEE4(v2, "Warning: running old, un-versioned binary on new simulator. Defaulting to simulator LACC V1 ISA.\n", 0x61uLL);
    }

    return 1;
  }

  return result;
}

void sub_255A0C274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255A11528(va);
  _Unwind_Resume(a1);
}

void sub_255A0C288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a8)
  {
    sub_255A1C438(a8);
  }

  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  sub_255A11528(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255A0C2D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v12 = "only one call to .open() supported";
    v13 = 259;
    operator new();
  }

  v13 = 260;
  v12 = MEMORY[0x259C46900]();
  sub_255A176D0(&v12, 1, 0, 0, &v16);
  if (v17)
  {
    result = sub_255A16060(v16, a2);
  }

  else
  {
    v5 = v16;
    v16 = 0;
    v6 = *(a1 + 24);
    *(a1 + 24) = v5;
    if (v6)
    {
      (*(*v6 + 8))(v6);
      v5 = *(a1 + 24);
    }

    v7 = *(v5 + 8);
    v8 = *(v5 + 16) - v7;
    if (v8 < 0x10 || (*(v7 + 4) == 1 ? (v9 = *(v7 + 5) == 1) : (v9 = 0), !v9))
    {
      operator new();
    }

    result = sub_255A0D7E0(v7, v8, &v14);
    if (v15)
    {
      *a2 = v14;
    }

    else
    {
      v11 = *(a1 + 48);
      *(a1 + 32) = v14;
      if ((v11 & 1) == 0)
      {
        *(a1 + 48) = 1;
      }

      if (**(a1 + 32) != 1179403647)
      {
        operator new();
      }

      *a2 = 0;
    }
  }

  if ((v17 & 1) == 0)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A0C638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  MEMORY[0x259C46B00](v22, 0x10F3C401C2224D9);
  if ((a22 & 1) != 0 && a20)
  {
    (*(*a20 + 8))(a20);
  }

  if ((*(v23 - 48) & 1) == 0)
  {
    v25 = *(v23 - 64);
    *(v23 - 64) = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

BOOL lacc::ELFLoader::load(const void ***a1, uint64_t a2)
{
  sub_255A0C818(*a1, a2, &v8);
  v2 = v8;
  if (v8)
  {
    v7 = v8;
    v8 = 0;
    v3 = sub_255A1BB5C();
    v6 = 257;
    sub_255A15C70(&v7, v3, v5);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  return v2 == 0;
}

void sub_255A0C7F8(_Unwind_Exception *a1)
{
  v3 = *(v1 - 32);
  if (v3)
  {
    sub_255A1C438(v3);
  }

  sub_255A1C46C((v1 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_255A0C818@<X0>(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  if ((a1[6] & 1) == 0)
  {
    __dst = "call .open() before trying to .load()";
    v40 = 259;
    operator new();
  }

  (**a2)(a2);
  result = sub_255A0D924(a1 + 4, &v50);
  if (v52)
  {
    v7 = 0;
    v8 = v50;
    v50 = 0;
    *a3 = v8;
    if (v52)
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  if (!v51)
  {
LABEL_77:
    v7 = 1;
    if (v52)
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v9 = v50;
  v10 = v50 + 40 * v51;
  v33 = a3;
  while (1)
  {
    __dst = sub_255A0DCF8;
    result = sub_255A0DB20(a1 + 4, v9, sub_255A0FE38, &__dst, &__src);
    if (v49)
    {
      v24 = __src;
      __src = 0;
LABEL_80:
      *a3 = v24;
      goto LABEL_81;
    }

    if ((*(v9 + 8) & 2) != 0)
    {
      v11 = *(v9 + 4);
      if (v11 == 8)
      {
        if (__src)
        {
          v12 = __len;
          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
            sub_255A0FD90();
          }

          if (__len >= 0x17)
          {
            operator new();
          }

          HIBYTE(v38) = __len;
          if (__len)
          {
            memmove(&__dst, __src, __len);
          }

          *(&__dst + v12) = 0;
          if (SHIBYTE(v38) >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }
        }

        else
        {
          __dst = 0;
          v37 = 0;
          p_dst = &__dst;
          v38 = 0;
        }

        result = (*(*a2 + 24))(a2, p_dst, *(v9 + 12), *(v9 + 20));
        if (SHIBYTE(v38) < 0)
        {
          v14 = result;
          operator delete(__dst);
          result = v14;
        }

        if ((result & 1) == 0)
        {
          if (*(a1 + 23) >= 0)
          {
            v29 = *(a1 + 23);
          }

          else
          {
            v29 = a1[1];
          }

          if (v29 + 24 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v29 + 24 > 0x16)
            {
              operator new();
            }

            v45 = 0;
            v46 = 0;
            __p = 0;
            HIBYTE(v46) = v29 + 24;
            if (*(a1 + 23) >= 0)
            {
              v31 = a1;
            }

            else
            {
              v31 = *a1;
            }

            memmove(&__p, v31, v29);
            strcpy(&__p + v29, ": error loading section ");
            __dst = &__p;
            v38 = __src;
            v39 = __len;
            v40 = 1284;
            operator new();
          }

          sub_255A0FD90();
        }

        v11 = *(v9 + 4);
      }

      if (v11 == 1)
      {
        break;
      }
    }

LABEL_74:
    if (v49)
    {
      result = __src;
      __src = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    v9 += 40;
    if (v9 == v10)
    {
      goto LABEL_77;
    }
  }

  result = sub_255A0FE44(a1 + 4, v9, &__p);
  if (v46)
  {
    v24 = __p;
    goto LABEL_80;
  }

  result = sub_255A0DD7C(a1 + 4, &v41);
  if ((v43 & 1) == 0)
  {
    v15 = *(v9 + 12);
    if (v42)
    {
      v16 = 0;
      while (1)
      {
        if (*(v41 + v16) == 1 && *(v41 + v16 + 4) == *(v9 + 16))
        {
          v17 = *(v41 + v16 + 8);
          if (v15 >= v17 && *(v41 + v16 + 20) + v17 > v15)
          {
            break;
          }
        }

        v16 += 32;
        if (32 * v42 == v16)
        {
          goto LABEL_38;
        }
      }

      v15 = v15 - v17 + *(v41 + v16 + 12);
    }

LABEL_38:
    v18 = v15;
    if ((*(v9 + 8) & 4) != 0)
    {
      if (__src)
      {
        v20 = __len;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          sub_255A0FD90();
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        HIBYTE(v38) = __len;
        if (__len)
        {
          memmove(&__dst, __src, __len);
        }

        *(&__dst + v20) = 0;
        if (SHIBYTE(v38) >= 0)
        {
          v22 = &__dst;
        }

        else
        {
          v22 = __dst;
        }

        a3 = v33;
      }

      else
      {
        __dst = 0;
        v37 = 0;
        v22 = &__dst;
        v38 = 0;
      }

      result = (*(*a2 + 16))(a2, v22, *(v9 + 12), v45, __p, v18);
    }

    else
    {
      if (__src)
      {
        v19 = __len;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          sub_255A0FD90();
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        HIBYTE(v38) = __len;
        if (__len)
        {
          memmove(&__dst, __src, __len);
        }

        *(&__dst + v19) = 0;
        if (SHIBYTE(v38) >= 0)
        {
          v21 = &__dst;
        }

        else
        {
          v21 = __dst;
        }

        a3 = v33;
      }

      else
      {
        __dst = 0;
        v37 = 0;
        v21 = &__dst;
        v38 = 0;
      }

      result = (*(*a2 + 8))(a2, v21, *(v9 + 12), v45, __p, v18);
    }

    if (SHIBYTE(v38) < 0)
    {
      v23 = result;
      operator delete(__dst);
      result = v23;
    }

    if ((result & 1) == 0)
    {
      if (*(a1 + 23) >= 0)
      {
        v30 = *(a1 + 23);
      }

      else
      {
        v30 = a1[1];
      }

      if (v30 + 24 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v30 + 24 > 0x16)
        {
          operator new();
        }

        v34[1] = 0;
        v35 = 0;
        v34[0] = 0;
        HIBYTE(v35) = v30 + 24;
        if (*(a1 + 23) >= 0)
        {
          v32 = a1;
        }

        else
        {
          v32 = *a1;
        }

        memmove(v34, v32, v30);
        strcpy(v34 + v30, ": error loading section ");
        __dst = v34;
        v38 = __src;
        v39 = __len;
        v40 = 1284;
        operator new();
      }

      sub_255A0FD90();
    }

    if (v43)
    {
      result = v41;
      v41 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    if (v46)
    {
      result = __p;
      __p = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    goto LABEL_74;
  }

  *a3 = v41;
  if (v46)
  {
    result = __p;
    __p = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_81:
  if (v49)
  {
    result = __src;
    __src = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v7 = 0;
  if (v52)
  {
LABEL_85:
    result = v50;
    v50 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_87:
  if (v7)
  {
    v25 = *(a1[4] + 9);
    if ((v25 - 1) >= 2)
    {
      v26 = sub_255A1BB5C();
      v27 = v26[4];
      if (v26[3] - v27 > 0x60uLL)
      {
        qmemcpy(v27, "Warning: running old, un-versioned binary on new simulator. Defaulting to simulator LACC V1 ISA.\n", 97);
        v26[4] += 97;
      }

      else
      {
        sub_255A1AEE4(v26, "Warning: running old, un-versioned binary on new simulator. Defaulting to simulator LACC V1 ISA.\n", 0x61uLL);
      }

      v25 = 1;
    }

    result = (*(*a2 + 56))(a2, v25);
    *a3 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A0D218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, char a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  MEMORY[0x259C46B00](v35, 0x10F3C401C2224D9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((a27 & 1) != 0 && a25)
  {
    (*(*a25 + 8))(a25);
  }

  if ((a30 & 1) != 0 && a28)
  {
    (*(*a28 + 8))(a28);
  }

  if ((a34 & 1) != 0 && a32)
  {
    (*(*a32 + 8))(a32);
  }

  if (*(v36 - 104))
  {
    v38 = *(v36 - 120);
    *(v36 - 120) = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t lacc::ELFLoader::get_text_segment_size(lacc::ELFLoader *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*this + 48) != 1)
  {
    goto LABEL_11;
  }

  sub_255A0DD7C((*this + 32), &v6);
  v1 = v6;
  if (v8)
  {
    v6 = 0;
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }

    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  result = 0;
  v3 = (v6 + 24);
  v4 = 32 * v7;
  do
  {
    if (*(v3 - 6) == 1 && (*v3 & 1) != 0)
    {
      result += *(v3 - 1);
    }

    v3 += 32;
    v4 -= 32;
  }

  while (v4);
LABEL_12:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t lacc::ELFLoader::lookup_size(const void ***a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v9[0] = a2;
  v9[1] = a3;
  sub_255A102D4(v3, v9, &v10);
  if (v11)
  {
    v8 = v10;
    v4 = sub_255A1BB5C();
    v12 = 257;
    sub_255A15C70(&v8, v4, &v10);
    result = v8;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      result = 0;
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    result = DWORD2(v10);
    v7 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_255A0D634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_255A1C438(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lacc::ELFLoader::lookup(const void ***a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v9[0] = a2;
  v9[1] = a3;
  sub_255A102D4(v3, v9, &v10);
  if (v11)
  {
    v8 = v10;
    v4 = sub_255A1BB5C();
    v12 = 257;
    sub_255A15C70(&v8, v4, &v10);
    result = v8;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      result = 0;
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    result = DWORD1(v10);
    v7 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_255A0D758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_255A1C438(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A0D7E0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 0x33)
  {
    v4 = a2;
    v5[0] = "invalid buffer: the size (";
    v5[2] = &v4;
    v6 = 2563;
    v7[0] = v5;
    v7[2] = ") is smaller than an ELF header (";
    v8 = 770;
    v3 = 52;
    v9[0] = v7;
    v9[2] = &v3;
    v10 = 2562;
    v11 = v9;
    v12 = ")";
    v13 = 770;
    operator new();
  }

  *(a3 + 16) &= ~1u;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

void *sub_255A0D924@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 32);
  if (v4)
  {
    v5 = *(v3 + 46);
    if (v5 != 40)
    {
      v11 = "invalid e_shentsize in ELF header: ";
      v12 = v5;
      v13 = 2307;
      operator new();
    }

    v6 = result[1];
    if (v4 > 0xFFFFFFD7 || v4 + 40 > v6)
    {
      v10 = *(*result + 32);
      v11 = "section header table goes past the end of the file: e_shoff = 0x";
      v12 = &v10;
      v13 = 3587;
      operator new();
    }

    v8 = v3 + v4;
    v9 = *(v3 + 48);
    if (v9)
    {
      if (v4 + 40 * v9 > v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = *(v8 + 20);
      if (v4 + 40 * v9 > v6)
      {
LABEL_13:
        v11 = "section table goes past the end of file";
        v13 = 259;
        operator new();
      }
    }

    *(a2 + 16) &= ~1u;
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) &= ~1u;
  }

  return result;
}

void *sub_255A0DB20@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, void ***)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_255A0D924(a1, v16);
  if ((v17 & 1) == 0)
  {
    sub_255A0DF70(a1, v16[0], v16[1], a3, a4, v14);
    if (v15)
    {
      v11 = v14[0];
      v14[0] = 0;
      *(a5 + 16) |= 1u;
      *a5 = v11;
    }

    else
    {
      result = sub_255A0E118(a1, a2, v14[0], v14[1], a5);
      if ((v15 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = v14[0];
    v14[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

LABEL_8:
    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v10 = v16[0];
  v16[0] = 0;
  *(a5 + 16) |= 1u;
  *a5 = v10;
LABEL_9:
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A0DC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14)
  {
    sub_255A1C4AC(&a12);
    exception_object = a10;
  }

  if (a17)
  {
    v18 = a15;
    a15 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_255A0DD7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 44);
  if (*(*result + 44))
  {
    v5 = *(v3 + 42);
    if (v5 != 32)
    {
      v22 = "invalid e_phentsize: ";
      v23 = v5;
      v24 = 2307;
      operator new();
    }
  }

  else
  {
    v5 = *(v3 + 42);
  }

  v6 = *(v3 + 28);
  v7 = result[1];
  if (v6 + v5 * *(*result + 44) > v7)
  {
    v8 = *(v3 + 28);
    v9 = v7;
    v10[0] = "program headers are longer than binary of size ";
    v10[2] = &v9;
    v11 = 2563;
    v12[0] = v10;
    v12[2] = ": e_phoff = 0x";
    v13 = 770;
    v14[0] = v12;
    v14[2] = &v8;
    v15 = 3586;
    v16[0] = v14;
    v16[2] = ", e_phnum = ";
    v17 = 770;
    v18[0] = v16;
    v18[2] = v4;
    v19 = 2306;
    v20[0] = v18;
    v20[2] = ", e_phentsize = ";
    v21 = 770;
    v22 = v20;
    v23 = v5;
    v24 = 2306;
    operator new();
  }

  *(a2 + 16) &= ~1u;
  *a2 = v3 + v6;
  *(a2 + 8) = v4;
  return result;
}

void sub_255A0DF70(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, void ***)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(*a1 + 50);
  if (v7 == 0xFFFF)
  {
    if (!a3)
    {
      v11 = "e_shstrndx == SHN_XINDEX, but the section header table is empty";
      v13 = 259;
      operator new();
    }

    v7 = *(a2 + 24);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    *(a6 + 16) &= ~1u;
    *a6 = "";
    *(a6 + 8) = 0;
    return;
  }

  if (!*(*a1 + 50))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a3 <= v7)
  {
    v9[0] = "section header string table index ";
    v9[2] = v7;
    v10 = 2051;
    v11 = v9;
    v12 = " does not exist";
    v13 = 770;
    operator new();
  }

  v8 = a2 + 40 * v7;

  sub_255A0E350(a1, v8, a4, a5, a6);
}

void *sub_255A0E118@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  if (v6)
  {
    if (a4 <= v6)
    {
      sub_255A0E920(result, a2, &v13);
      v8 = std::string::insert(&v13, 0, "a section ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v14, " has an invalid sh_name (0x");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v16 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = v6;
      v17[0] = __p;
      v17[2] = &v12;
      v18 = 3588;
      v19 = v17;
      v20 = ") offset which goes past the end of the section name string table";
      v21 = 770;
      operator new();
    }

    v7 = (a3 + v6);
    result = strlen(v7);
    *(a5 + 16) &= ~1u;
    *a5 = v7;
    *(a5 + 8) = result;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) &= ~1u;
  }

  return result;
}

void sub_255A0E2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  MEMORY[0x259C46B00](v28, 0x10F3C401C2224D9);
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_255A0E350(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, void ***)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a2 + 4) == 3)
  {
    goto LABEL_20;
  }

  sub_255A0E920(a1, a2, &v33);
  v10 = std::string::insert(&v33, 0, "invalid sh_type for string table section ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v34, ": expected SHT_STRTAB, but got ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v36 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v45 = 260;
  v42 = __p;
  v14 = sub_255A1501C(*(*a1 + 18), *(a2 + 4));
  v16 = v45;
  if (v45)
  {
    if (v45 == 1)
    {
      v17 = v38;
      v37 = v14;
      v18 = 1;
      v16 = 5;
    }

    else
    {
      v17 = &v39;
      if (HIBYTE(v45) != 1)
      {
        v16 = 2;
      }

      v19 = &v42;
      if (HIBYTE(v45) == 1)
      {
        v19 = v42;
      }

      v37 = v19;
      v38[0] = v43;
      v38[1] = v14;
      v18 = 5;
    }

    *v17 = v15;
  }

  else
  {
    v18 = 1;
  }

  LOBYTE(v40) = v16;
  HIBYTE(v40) = v18;
  a3(&v41, a4, &v37);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_19:
      operator delete(v33.__r_.__value_.__l.__data_);
      v20 = v41;
      if (v41)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v20 = v41;
  if (v41)
  {
LABEL_16:
    *(a5 + 16) |= 1u;
    *a5 = v20;
    goto LABEL_29;
  }

LABEL_20:
  sub_255A0EB74(a1, a2, &v42);
  v21 = v42;
  if (v44)
  {
    v42 = 0;
    *(a5 + 16) |= 1u;
    *a5 = v21;
    if ((v44 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v22 = v43;
  if (!v43)
  {
    sub_255A0E920(a1, a2, &v33);
    v27 = std::string::insert(&v33, 0, "SHT_STRTAB string table section ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v34, " is empty");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v36 = v29->__r_.__value_.__r.__words[2];
    *__p = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v40 = 260;
    v37 = __p;
    operator new();
  }

  if (*(v42 + v43 - 1))
  {
    sub_255A0E920(a1, a2, &v33);
    v23 = std::string::insert(&v33, 0, "SHT_STRTAB string table section ");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v34, " is non-null terminated");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v36 = v25->__r_.__value_.__r.__words[2];
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v40 = 260;
    v37 = __p;
    operator new();
  }

  *(a5 + 16) &= ~1u;
  *a5 = v21;
  *(a5 + 8) = v22;
  if (v44)
  {
LABEL_27:
    v31 = v42;
    v42 = 0;
    if (v31)
    {
      (*(*v31 + 1))(v31);
    }
  }

LABEL_29:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_255A0E784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  MEMORY[0x259C46B00](v28, 0x10F3C401C2224D9);
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v29 - 80) & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a10);
  if ((*(v29 - 80) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v31 = *(v29 - 96);
  *(v29 - 96) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

void sub_255A0E920(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_255A0D924(a1, v13);
  if ((v14 & 1) == 0)
  {
    std::to_string(&v11, 0xCCCCCCCCCCCCCCCDLL * ((a2 - v13[0]) >> 3));
    v6 = std::string::insert(&v11, 0, "[index ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v12, "]");
    *a3 = *v8;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_8:
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }
    }

    else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(v11.__r_.__value_.__l.__data_);
    if ((v14 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v5 = v13[0];
  v13[0] = 0;
  v11.__r_.__value_.__r.__words[0] = v5;
  sub_255A0F004(&v11, &v12);
  if (v11.__r_.__value_.__r.__words[0])
  {
    (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
  }

  a3[23] = 15;
  strcpy(a3, "[unknown index]");
  if (v14)
  {
LABEL_9:
    v9 = v13[0];
    v13[0] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_255A0EAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 - 32))
  {
    v23 = *(v21 - 48);
    *(v21 - 48) = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_255A0EB74@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  if (__CFADD__(v5, v4))
  {
    sub_255A0E920(result, a2, &v26);
    v6 = std::string::insert(&v26, 0, "section ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v21, " has a sh_offset (0x");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v24 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v20.__r_.__value_.__r.__words[0] = v5;
    v27[0] = __p;
    v28 = &v20;
    v29 = 3588;
    v30[0] = v27;
    v31 = ") + sh_size (0x";
    v32 = 770;
    v19.__r_.__value_.__r.__words[0] = v4;
    v33[0] = v30;
    v34 = &v19;
    v35 = 3586;
    v36 = v33;
    v37 = ") that cannot be represented";
    v38 = 770;
    operator new();
  }

  if (result[1] < (v4 + v5))
  {
    v10 = result;
    sub_255A0E920(result, a2, &v19);
    v11 = std::string::insert(&v19, 0, "section ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v20, " has a sh_offset (0x");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v17 = v4;
    v18 = v5;
    v21.__r_.__value_.__r.__words[0] = &v26;
    v21.__r_.__value_.__r.__words[2] = &v18;
    v22 = 3588;
    __p[0] = &v21;
    v24 = ") + sh_size (0x";
    v25 = 770;
    v27[0] = __p;
    v28 = &v17;
    v29 = 3586;
    v30[0] = v27;
    v31 = ") that is greater than the file size (0x";
    v32 = 770;
    v16 = v10[1];
    v33[0] = v30;
    v34 = &v16;
    v35 = 3586;
    v36 = v33;
    v37 = ")";
    v38 = 770;
    operator new();
  }

  v15 = *result + v5;
  *(a3 + 16) &= ~1u;
  *a3 = v15;
  *(a3 + 8) = v4;
  return result;
}

void sub_255A0EEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  MEMORY[0x259C46B00](v48, 0x10F3C401C2224D9);
  if (a48 < 0)
  {
    operator delete(__p);
    if (a23 < 0)
    {
LABEL_5:
      operator delete(a18);
      if ((a17 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a12);
      goto LABEL_9;
    }
  }

  else if (a23 < 0)
  {
    goto LABEL_5;
  }

  if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void **sub_255A0F004@<X0>(void **result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 48))(v3, &unk_27F7DB089))
    {
      v4 = v3[1];
      v5 = v3[2];
      if (v4 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v10 = v6;
          v7 = *v4;
          *v4 = 0;
          if ((*(*v7 + 48))(v7, &unk_27F7DB088))
          {
            (*(*v7 + 8))(v7);
            v7 = 0;
          }

          v9 = v7;
          sub_255A0F308(&v10, &v9, &v11);
          v6 = v11;
          v11 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      *a2 = v6;
      return (*(*v3 + 8))(v3);
    }

    else
    {
      result = (*(*v3 + 48))(v3, &unk_27F7DB088);
      if (result)
      {
        *a2 = 0;
        v8 = *(*v3 + 8);

        return v8(v3);
      }

      else
      {
        *a2 = v3;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_255A0F308(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (!v6)
  {
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return;
  }

  if (!v7)
  {
    *a3 = v6;
    *a1 = 0;
    return;
  }

  if (!(*(*v6 + 48))(v6, &unk_27F7DB089))
  {
    if (!*a2 || !(*(**a2 + 48))(*a2, &unk_27F7DB089))
    {
      operator new();
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v17 = *a1;
    *a1 = 0;
    sub_255A0F7BC(v13, v14, &v17);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v7 = *a2;
    goto LABEL_16;
  }

  v8 = *a1;
  if (!*a2)
  {
    v10 = 0;
LABEL_19:
    v17 = v10;
    *a2 = 0;
    sub_255A0F69C(v8 + 8, &v17);
    v16 = v17;
    v17 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    goto LABEL_21;
  }

  v9 = (*(**a2 + 48))(*a2, &unk_27F7DB089);
  v10 = *a2;
  if (!v9)
  {
    goto LABEL_19;
  }

  *a2 = 0;
  v11 = v10[1];
  v12 = v10[2];
  if (v11 == v12)
  {
    goto LABEL_9;
  }

  do
  {
    sub_255A0F69C(v8 + 8, v11++);
  }

  while (v11 != v12);
  if (v10)
  {
LABEL_9:
    (*(*v10 + 8))(v10);
  }

LABEL_21:
  *a3 = *a1;
  *a1 = 0;
}

void sub_255A0F61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t *a12)
{
  if (a12)
  {
    sub_255A1C438(a12);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A0F684(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_255A1C568(v1);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255A0F67CLL);
}

void sub_255A0F69C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_255A0FA7C();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_255A0FB24();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

char *sub_255A0F7BC(void *a1, char *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (a2 == v6)
    {
      v15 = *a3;
      *a3 = 0;
      *v6 = v15;
      a1[1] = v6 + 8;
      return v4;
    }

    v8 = a2 + 8;
    v9 = v6 - 8;
    if (v6 < 8)
    {
      a1[1] = v6;
      if (v6 == v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *v9;
      *v9 = 0;
      *v6 = v10;
      a1[1] = v6 + 8;
      if (v6 == v8)
      {
LABEL_24:
        v27 = *a3;
        *a3 = 0;
        v28 = *v4;
        *v4 = v27;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        return v4;
      }
    }

    v23 = a2 - v6 + 8;
    v24 = v6 - 16;
    do
    {
      v25 = *v24;
      *v24 = 0;
      v26 = *v9;
      *v9 = v25;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      v9 -= 8;
      v24 -= 8;
      v23 += 8;
    }

    while (v23);
    goto LABEL_24;
  }

  v11 = *a1;
  v12 = (&v6[-*a1] >> 3) + 1;
  if (v12 >> 61)
  {
    sub_255A0FA7C();
  }

  v13 = v7 - v11;
  if (v13 >> 2 > v12)
  {
    v12 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  v33 = a1;
  if (v14)
  {
    if (!(v14 >> 61))
    {
      operator new();
    }

    sub_255A0FB24();
  }

  v30 = 0;
  v31 = 8 * ((a2 - v11) >> 3);
  v32 = v31;
  sub_255A0FB58(&v30, a3);
  v16 = v31;
  memcpy(v32, v4, a1[1] - v4);
  v17 = *a1;
  v18 = v31;
  *&v32 = v32 + a1[1] - v4;
  a1[1] = v4;
  v19 = v4 - v17;
  v20 = (v18 - (v4 - v17));
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  *(a1 + 1) = v32;
  *&v32 = v21;
  *(&v32 + 1) = v22;
  v30 = v21;
  v31 = v21;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

void sub_255A0F9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A0FA04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255A0FA04(uint64_t a1)
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

void sub_255A0FA94(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_255A0FAF0(exception, a1);
  __cxa_throw(exception, off_279806B98, MEMORY[0x277D825F0]);
}

std::logic_error *sub_255A0FAF0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_255A0FB24()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_255A0FB58(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = v4;
  if (v4 == result[3])
  {
    v6 = result[1];
    v7 = v6 - *result;
    if (v6 <= *result)
    {
      v10 = (v4 - *result) >> 2;
      if (v4 == *result)
      {
        v10 = 1;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_255A0FB24();
    }

    v8 = ((v7 >> 3) + 1) / -2;
    v5 = &v6[-(((v7 >> 3) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6 = 0;
        result = *v5;
        *v5 = v9;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        ++v6;
        ++v5;
      }

      while (v6 != v4);
      v6 = v3[1];
    }

    v3[1] = &v6[v8];
  }

  v11 = *a2;
  *a2 = 0;
  *v5 = v11;
  v3[2] = v5 + 1;
  return result;
}

void *sub_255A0FDA8(void *a1)
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
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_255A0FE44@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  if (__CFADD__(v5, v4))
  {
    sub_255A0E920(result, a2, &v26);
    v6 = std::string::insert(&v26, 0, "section ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v21, " has a sh_offset (0x");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v24 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v20.__r_.__value_.__r.__words[0] = v5;
    v27[0] = __p;
    v28 = &v20;
    v29 = 3588;
    v30[0] = v27;
    v31 = ") + sh_size (0x";
    v32 = 770;
    v19.__r_.__value_.__r.__words[0] = v4;
    v33[0] = v30;
    v34 = &v19;
    v35 = 3586;
    v36 = v33;
    v37 = ") that cannot be represented";
    v38 = 770;
    operator new();
  }

  if (result[1] < (v4 + v5))
  {
    v10 = result;
    sub_255A0E920(result, a2, &v19);
    v11 = std::string::insert(&v19, 0, "section ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v20, " has a sh_offset (0x");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v17 = v4;
    v18 = v5;
    v21.__r_.__value_.__r.__words[0] = &v26;
    v21.__r_.__value_.__r.__words[2] = &v18;
    v22 = 3588;
    __p[0] = &v21;
    v24 = ") + sh_size (0x";
    v25 = 770;
    v27[0] = __p;
    v28 = &v17;
    v29 = 3586;
    v30[0] = v27;
    v31 = ") that is greater than the file size (0x";
    v32 = 770;
    v16 = v10[1];
    v33[0] = v30;
    v34 = &v16;
    v35 = 3586;
    v36 = v33;
    v37 = ")";
    v38 = 770;
    operator new();
  }

  v15 = *result + v5;
  *(a3 + 16) &= ~1u;
  *a3 = v15;
  *(a3 + 8) = v4;
  return result;
}

void sub_255A101B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  MEMORY[0x259C46B00](v48, 0x10F3C401C2224D9);
  if (a48 < 0)
  {
    operator delete(__p);
    if (a23 < 0)
    {
LABEL_5:
      operator delete(a18);
      if ((a17 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a12);
      goto LABEL_9;
    }
  }

  else if (a23 < 0)
  {
    goto LABEL_5;
  }

  if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

uint64_t sub_255A102D4@<X0>(const void **a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  result = sub_255A0D924(a1 + 4, &v30);
  v7 = v30;
  if (v32)
  {
    v8 = 0;
    v30 = 0;
    *(a3 + 16) |= 1u;
    *a3 = v7;
    goto LABEL_3;
  }

  if (!v31)
  {
    goto LABEL_40;
  }

  v27 = a2;
  v9 = &v30[10 * v31];
  v10 = *(a3 + 16);
  v25 = a3;
  while (1)
  {
    if (v7[1] != 2)
    {
      goto LABEL_9;
    }

    sub_255A10858(a1 + 4, v7, &v38);
    if (v40)
    {
      v11 = 0;
      v12 = v38;
      v38 = 0;
      v10 |= 1u;
      *a3 = v12;
      goto LABEL_34;
    }

    result = sub_255A10AB8(a1 + 4, v7, &v35);
    v13 = v35;
    if (v37)
    {
      v11 = 0;
      v35 = 0;
      v10 |= 1u;
      *a3 = v13;
      if ((v37 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v36)
    {
      v26 = v10;
      v14 = v38;
      v15 = v39;
      v16 = 16 * v36;
      v18 = *v27;
      v17 = v27[1];
      do
      {
        v29[0] = *v13;
        if (v15 <= v29[0])
        {
          v19 = sub_255A1569C();
          v28 = v15;
          sub_255A11258(3, v19, "st_name (0x%x) is past the end of the string table of size 0x%zx", v29, &v28);
        }

        if (v14)
        {
          result = strlen((v14 + v29[0]));
          if (result == v17)
          {
            if (!result || (result = memcmp((v14 + v29[0]), v18, result), !result))
            {
LABEL_25:
              v11 = 0;
              v10 = v26 & 0xFFFFFFFE;
              a3 = v25;
              *v25 = *v13;
              if (v37)
              {
                goto LABEL_31;
              }

              goto LABEL_33;
            }
          }
        }

        else if (!v17)
        {
          goto LABEL_25;
        }

        v13 += 4;
        v16 -= 16;
      }

      while (v16);
      v11 = 1;
      a3 = v25;
      v10 = v26;
      if ((v37 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v11 = 1;
      if ((v37 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_31:
    result = v35;
    v35 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

LABEL_33:
    if ((v40 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_34:
    result = v38;
    v38 = 0;
    if (!result)
    {
LABEL_8:
      if ((v11 & 1) == 0)
      {
        break;
      }

      goto LABEL_9;
    }

    result = (*(*result + 8))(result);
    if ((v11 & 1) == 0)
    {
      break;
    }

LABEL_9:
    v7 += 10;
    if (v7 == v9)
    {
      v8 = 1;
      *(a3 + 16) = v10;
      a2 = v27;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_39;
    }
  }

  v8 = 0;
  *(a3 + 16) = v10;
  a2 = v27;
  if (v32)
  {
LABEL_3:
    result = v30;
    v30 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
      if ((v8 & 1) == 0)
      {
        goto LABEL_52;
      }

LABEL_40:
      if (*(a1 + 23) >= 0)
      {
        v20 = *(a1 + 23);
      }

      else
      {
        v20 = a1[1];
      }

      if (v20 + 22 < 0x7FFFFFFFFFFFFFF8)
      {
        if (v20 + 22 >= 0x17)
        {
          operator new();
        }

        v39 = 0;
        v40 = 0;
        v38 = 0;
        HIBYTE(v40) = v20 + 22;
        if (v20)
        {
          if (*(a1 + 23) >= 0)
          {
            v21 = a1;
          }

          else
          {
            v21 = *a1;
          }

          memmove(&v38, v21, v20);
        }

        strcpy(&v38 + v20, ": function not found: ");
        v22 = *a2;
        v23 = a2[1];
        v30 = &v38;
        v32 = v22;
        v33 = v23;
        v34 = 1284;
        operator new();
      }

      sub_255A0FD90();
    }
  }

LABEL_39:
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_52:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A10724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _Unwind_Exception *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(a10 + 16) = a12;
  if (a26)
  {
    sub_255A1C4AC(&a24);
    exception_object = a17;
  }

  if (*(v26 - 104))
  {
    v28 = *(v26 - 120);
    *(v26 - 120) = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }
  }

  if (a21)
  {
    if (a19)
    {
      (*(*a19 + 8))(a19);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_255A10858(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255A0D924(a1, v9);
  if (v10)
  {
    v6 = v9[0];
    v9[0] = 0;
    *(a3 + 16) |= 1u;
    *a3 = v6;
  }

  else
  {
    sub_255A10958(a1, a2, v9[0], v9[1], a3);
    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v7 = v9[0];
  v9[0] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255A10934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
    sub_255A1C598(&a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A10958(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 4);
  if (v6 != 2 && v6 != 11)
  {
    v9[0] = "invalid sh_type for symbol table, expected SHT_SYMTAB or SHT_DYNSYM";
    v10 = 259;
    operator new();
  }

  v8 = *(a2 + 24);
  if (a4 <= v8)
  {
    v9[0] = "invalid section index: ";
    v9[2] = v8;
    v10 = 2051;
    operator new();
  }

  v9[0] = sub_255A0DCF8;
  sub_255A0E350(a1, a3 + 40 * v8, sub_255A0FE38, v9, a5);
}

void *sub_255A10AB8@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[9] != 16)
  {
    sub_255A0E920(result, a2, &v32);
    v11 = std::string::insert(&v32, 0, "section ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v34, " has invalid sh_entsize: expected ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v38 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v36.__r_.__value_.__r.__words[0] = 16;
    v40[0] = __p;
    v41 = &v36;
    v42 = 2564;
    v43[0] = v40;
    v44 = ", but got ";
    v45 = 770;
    v15 = a2[9];
    v46 = v43;
    v47 = v15;
    v48 = 2050;
    operator new();
  }

  v5 = a2[5];
  if ((v5 & 0xF) != 0)
  {
    sub_255A0E920(result, a2, &v36);
    v6 = std::string::insert(&v36, 0, "section ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v32, " has an invalid sh_size (");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v34;
    v38 = v5;
    v39 = 2052;
    v40[0] = __p;
    v41 = ") which is not a multiple of its sh_entsize (";
    v42 = 770;
    v10 = a2[9];
    v43[0] = v40;
    v44 = v10;
    v45 = 2050;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    operator new();
  }

  v16 = a2[4];
  if (__CFADD__(v16, v5))
  {
    sub_255A0E920(result, a2, &v36);
    v17 = std::string::insert(&v36, 0, "section ");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v32, " has a sh_offset (0x");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v31.__r_.__value_.__r.__words[0] = v16;
    __p[0] = &v34;
    v38 = &v31;
    v39 = 3588;
    v40[0] = __p;
    v41 = ") + sh_size (0x";
    v42 = 770;
    v30.__r_.__value_.__r.__words[0] = v5;
    v43[0] = v40;
    v44 = &v30;
    v45 = 3586;
    v46 = v43;
    v47 = ") that cannot be represented";
    v48 = 770;
    operator new();
  }

  if (result[1] < (v5 + v16))
  {
    v21 = result;
    sub_255A0E920(result, a2, &v30);
    v22 = std::string::insert(&v30, 0, "section ");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v31, " has a sh_offset (0x");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v28 = v5;
    v29 = v16;
    v32.__r_.__value_.__r.__words[0] = &v36;
    v32.__r_.__value_.__r.__words[2] = &v29;
    v33 = 3588;
    v34.__r_.__value_.__r.__words[0] = &v32;
    v34.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v35 = 770;
    __p[0] = &v34;
    v38 = &v28;
    v39 = 3586;
    v40[0] = __p;
    v41 = ") that is greater than the file size (0x";
    v42 = 770;
    v27 = v21[1];
    v43[0] = v40;
    v44 = &v27;
    v45 = 3586;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    operator new();
  }

  v26 = *result + v16;
  *(a3 + 16) &= ~1u;
  *a3 = v26;
  *(a3 + 8) = v5 >> 4;
  return result;
}

void sub_255A11080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  MEMORY[0x259C46B00](v55, 0x10F3C401C2224D9);
  if (a48 < 0)
  {
    operator delete(__p);
    if (a23 < 0)
    {
LABEL_5:
      operator delete(a18);
      if ((a17 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a12);
      goto LABEL_9;
    }
  }

  else if (a23 < 0)
  {
    goto LABEL_5;
  }

  if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_255A11258(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t *a5)
{
  memset(__p, 0, sizeof(__p));
  v11 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v10 = &unk_2867BF0E8;
  v18 = __p;
  sub_255A1AA88(&v10, 0, 0, 0);
  v8 = *a4;
  v9 = *a5;
  v20[0] = &unk_2867BEA20;
  v20[1] = a3;
  v21 = v8;
  v22 = v9;
  sub_255A1ABA4(&v10, v20);
  operator new();
}

void sub_255A113B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  MEMORY[0x259C46B00](v24, 0x10F3C401C2224D9);
  sub_255A1A8E4(&a10);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255A11458(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867BEA58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C46B00);
}

void sub_255A114AC(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

uint64_t sub_255A11528(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255A115AC(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

uint64_t lacc::LaccABI::allocate_return(lacc::LaccABI *this, int a2)
{
  *(this + 5) -= a2;
  v2 = *(this + 3);
  ++*(this + 2);
  return (**v2)(v2);
}

int *lacc::LaccABI::reserve(int *this)
{
  v1 = *this;
  if (*this >= 11)
  {
    v2 = this[5] - 4;
    this[4] = v2;
    this[5] = v2;
  }

  *this = v1 + 1;
  return this;
}

{
  v1 = *this;
  if (*this >= 11)
  {
    v2 = this[5] - 8;
    this[4] = v2;
    this[5] = v2;
  }

  *this = v1 + 2;
  return this;
}

_DWORD *lacc::LaccABI::reserve(_DWORD *result)
{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 8;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 16;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 32;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 32;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 4;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 8;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 16;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 16;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 32;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 32;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 32;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

{
  v1 = result[1];
  if (v1 >= 2)
  {
    v2 = result[5] - 32;
    result[4] = v2;
    result[5] = v2;
  }

  result[1] = v1 + 1;
  return result;
}

_DWORD *lacc::LaccABI::release(_DWORD *this)
{
  v1 = (*this)--;
  if (v1 >= 12)
  {
    this[5] += 4;
  }

  return this;
}

int *lacc::LaccABI::release(int *this)
{
  v1 = *this;
  *this -= 2;
  if (v1 >= 13)
  {
    this[5] += 8;
  }

  return this;
}

uint64_t lacc::LaccABI::release(uint64_t result)
{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 8;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 16;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 32;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 32;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 4;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 8;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 16;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 16;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 32;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 32;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 32;
  }

  return result;
}

{
  v1 = *(result + 4);
  *(result + 4) = v1 - 1;
  if (v1 >= 3)
  {
    *(result + 20) += 32;
  }

  return result;
}

uint64_t lacc::LaccABI::push(lacc::LaccABI *this, int a2)
{
  v7 = a2;
  v2 = *(this + 2);
  if (v2 > 10)
  {
    result = (*(**(this + 3) + 104))(*(this + 3), *(this + 4), 4, &v7);
    *(this + 4) += 4;
    ++*(this + 2);
  }

  else
  {
    v3 = *(this + 3);
    *(this + 2) = v2 + 1;
    v4 = **v3;

    return v4(v3);
  }

  return result;
}

uint64_t lacc::LaccABI::pop(uint64_t this)
{
  --*(this + 8);
  return this;
}

{
  *(this + 8) -= 2;
  return this;
}

uint64_t lacc::LaccABI::push(lacc::LaccABI *this, uint64_t a2)
{
  v8 = a2;
  v3 = *(this + 2);
  if (v3 > 10)
  {
    result = (*(**(this + 3) + 104))(*(this + 3), *(this + 4), 8, &v8);
    *(this + 4) += 8;
    *(this + 2) += 2;
  }

  else
  {
    v4 = *(this + 3);
    *(this + 2) = v3 + 1;
    (**v4)(v4);
    v5 = *(this + 3);
    ++*(this + 2);
    v6 = **v5;

    return v6();
  }

  return result;
}

uint64_t lacc::LaccABI::push(uint64_t a1, double a2)
{
  v7 = a2;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 8, &v7);
    *(a1 + 16) += 8;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = *&a2;
    result = (*(**(a1 + 24) + 56))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

uint64_t lacc::LaccABI::push(uint64_t a1, __n128 a2)
{
  v7 = a2;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 16, &v7);
    *(a1 + 16) += 16;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = a2;
    result = (*(**(a1 + 24) + 56))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

{
  v7 = a2.n128_u64[0];
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 8, &v7);
    *(a1 + 16) += 8;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = a2;
    result = (*(**(a1 + 24) + 24))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

{
  v6 = a2;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 16, &v6);
    *(a1 + 16) += 16;
  }

  else
  {
    a2.n128_u32[3] = 0;
    v4 = a2;
    v5 = 0u;
    result = (*(**(a1 + 24) + 24))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

{
  v7 = a2;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 16, &v7);
    *(a1 + 16) += 16;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = a2;
    result = (*(**(a1 + 24) + 24))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

uint64_t lacc::LaccABI::push(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 32, v8);
    *(a1 + 16) += 32;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    result = (*(**(a1 + 24) + 56))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

{
  v3 = *a2;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 32, v8);
    *(a1 + 16) += 32;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    result = (*(**(a1 + 24) + 56))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

{
  v3 = *a2;
  v4 = *(a2 + 4);
  v9 = v4;
  v8 = v3;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 32, &v8);
    *(a1 + 16) += 32;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    result = (*(**(a1 + 24) + 24))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

{
  v3 = *a2;
  v4 = a2[1];
  v11 = *(a2 + 3);
  v10 = v4;
  v9 = v3;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 32, &v9);
    *(a1 + 16) += 32;
  }

  else
  {
    *&v5 = v4;
    *(&v5 + 1) = DWORD2(v4);
    v7 = v3;
    v8 = v5;
    result = (*(**(a1 + 24) + 24))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

{
  v3 = *a2;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 32, v8);
    *(a1 + 16) += 32;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    result = (*(**(a1 + 24) + 24))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

uint64_t lacc::LaccABI::push(uint64_t a1, int a2)
{
  v4 = a2;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 4, &v4);
    *(a1 + 16) += 4;
  }

  else
  {
    result = (*(**(a1 + 24) + 24))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

uint64_t lacc::LaccABI::push(uint64_t a1, _OWORD *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v9 = *(a2 + 2);
  v8 = v3;
  if (*(a1 + 12) > 1)
  {
    result = (*(**(a1 + 24) + 104))(*(a1 + 24), *(a1 + 16), 32, &v8);
    *(a1 + 16) += 32;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    result = (*(**(a1 + 24) + 24))(*(a1 + 24));
  }

  ++*(a1 + 12);
  return result;
}

uint64_t lacc::LaccABI::pop(uint64_t result)
{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

{
  --*(result + 12);
  return result;
}

uint64_t lacc::LaccABI::insert(lacc::LaccABI *this, void *a2, unsigned int a3)
{
  v4 = *(this + 5) - a3;
  *(this + 5) = v4;
  *&v6 = __PAIR64__(a3, v4);
  *(&v6 + 1) = a2;
  sub_255A126E8(this + 40, &v6);
  return *(this + 5);
}

void sub_255A126E8(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_255A0FA7C();
  }

  v10 = v3 - v6;
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

    sub_255A0FB24();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t lacc::LaccABI::extract(lacc::LaccABI *this, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(this + 5);
  (*(**(this + 3) + 112))(*(this + 3), v5, a3, a2);
  *(this + 5) += v3;
  return v5;
}

uint64_t lacc::LaccABI::insert(lacc::LaccABI *this, const void *a2, unsigned int a3)
{
  v4 = *(this + 5) - a3;
  *(this + 5) = v4;
  *&v6 = __PAIR64__(a3, v4);
  *(&v6 + 1) = a2;
  sub_255A126E8(this + 40, &v6);
  return *(this + 5);
}

uint64_t lacc::LaccABI::extract(lacc::LaccABI *this, const void *a2, int a3)
{
  v3 = *(this + 5);
  *(this + 5) = v3 + a3;
  return v3;
}

uint64_t lacc::LaccABI::write_stack_items(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  v3 = *(this + 48);
  if (v2 != v3)
  {
    do
    {
      this = (*(**(v1 + 24) + 104))(*(v1 + 24), *v2, v2[1], *(v2 + 1));
      v2 += 4;
    }

    while (v2 != v3);
    v2 = *(v1 + 40);
  }

  *(v1 + 48) = v2;
  return this;
}

uint64_t lacc::LaccABI::get_return(lacc::LaccABI *this, void *a2)
{
  v3 = *(this + 3);
  --*(this + 2);
  (*(*v3 + 8))(v3);
  v4 = *(**(this + 3) + 112);

  return v4();
}

void lacc::LaccABI::~LaccABI(lacc::LaccABI *this)
{
  v2 = *(this + 9);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }
}

{
  v2 = *(this + 9);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }
}

void lacc::LaccABI::LaccABI(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v3 = (*(*a2 + 80))(a2);
  *(a1 + 32) = v3 - 64;
  *(a1 + 16) = v3 - 64;
  *(a1 + 20) = v3 - 64;
  operator new();
}

void sub_255A12C9C(_Unwind_Exception *a1)
{
  MEMORY[0x259C46B00](v2, 0xC400A2AC0F1);
  sub_255A11528(v1 + 64);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t lacc::LaccABI::allocate_stack(lacc::LaccABI *this)
{
  (*(**(this + 3) + 96))(*(this + 3), *(this + 8), (*(this + 8) - *(this + 5)));
  v2 = *(this + 5);
  v3 = ***(this + 3);

  return v3();
}

uint64_t lacc::LaccABI::call(lacc::LaccABI *this)
{
  result = (*(**(this + 3) + 120))(*(this + 3));
  if ((result & 1) == 0)
  {
    *this = 0;
    *(this + 1) = 0;
  }

  return result;
}

uint64_t lacc::LaccABI::call(lacc::LaccABI *this, const char *a2)
{
  result = (*(**(this + 3) + 128))(*(this + 3), a2, 0);
  if ((result & 1) == 0)
  {
    *this = 0;
    *(this + 1) = 0;
  }

  return result;
}

uint64_t lacc::LaccABI::dump_registers(uint64_t a1)
{
  sub_255A13858(v51);
  v50 = 0;
  v2 = (*(*a1 + 168))(a1, 2000, &v50 + 4, &v50);
  if (v50 == 4)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 == 1)
  {
    v4 = sub_255A13DC0(&v52, " ", 1);
    v5 = *v4;
    *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFF4F | 0x20;
    *(v4 + *(v5 - 24) + 24) = 6;
    v6 = sub_255A13DC0(v4, "PC", 2);
    v7 = sub_255A13DC0(v6, ": ", 2);
    v8 = *v7;
    *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v7 + *(v8 - 24) + 24) = 8;
    MEMORY[0x259C46960]();
  }

  v9 = (*(*a1 + 168))(a1, 2004, &v50 + 4, &v50);
  if (v50 == 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v11 = sub_255A13DC0(&v52, " ", 1);
    v12 = *v11;
    *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFF4F | 0x20;
    *(v11 + *(v12 - 24) + 24) = 6;
    v13 = sub_255A13DC0(v11, "RET", 3);
    v14 = sub_255A13DC0(v13, ": ", 2);
    v15 = *v14;
    *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v14 + *(v15 - 24) + 8) = *(v14 + *(v15 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v14 + *(v15 - 24) + 24) = 8;
    MEMORY[0x259C46960]();
  }

  v16 = (*(*a1 + 168))(a1, 2008, &v50 + 4, &v50);
  if (v50 == 4)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    v18 = sub_255A13DC0(&v52, " ", 1);
    v19 = *v18;
    *(v18 + *(*v18 - 24) + 8) = *(v18 + *(*v18 - 24) + 8) & 0xFFFFFF4F | 0x20;
    *(v18 + *(v19 - 24) + 24) = 6;
    v20 = sub_255A13DC0(v18, "STAT0", 5);
    v21 = sub_255A13DC0(v20, ": ", 2);
    v22 = *v21;
    *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v21 + *(v22 - 24) + 8) = *(v21 + *(v22 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v21 + *(v22 - 24) + 24) = 8;
    MEMORY[0x259C46960]();
  }

  v23 = (*(*a1 + 168))(a1, 10000, &v50 + 4, &v50);
  if (v50 == 4)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 == 1)
  {
    v25 = sub_255A13DC0(&v52, " ", 1);
    v26 = *v25;
    *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFF4F | 0x20;
    *(v25 + *(v26 - 24) + 24) = 6;
    v27 = sub_255A13DC0(v25, "PKTS", 4);
    v28 = sub_255A13DC0(v27, ": ", 2);
    v29 = *v28;
    *(v28 + *(*v28 - 24) + 8) = *(v28 + *(*v28 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v28 + *(v29 - 24) + 8) = *(v28 + *(v29 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v28 + *(v29 - 24) + 24) = 8;
    MEMORY[0x259C46960]();
  }

  sub_255A13DC0(&v52, "\n", 1);
  v30 = 0;
  for (i = 0; i != 32; ++i)
  {
    v32 = (*(*a1 + 168))(a1, v30, &v50 + 4, &v50);
    if (v50 == 4)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v33 == 1)
    {
      v34 = sub_255A13DC0(&v52, " ", 1);
      v35 = *v34;
      *(v34 + *(*v34 - 24) + 8) = *(v34 + *(*v34 - 24) + 8) & 0xFFFFFF4F | 0x20;
      *(v34 + *(v35 - 24) + 24) = 6;
      std::to_string(&v47, i);
      v36 = std::string::insert(&v47, 0, "R");
      v37 = *&v36->__r_.__value_.__l.__data_;
      v49 = v36->__r_.__value_.__r.__words[2];
      *__p = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      if (v49 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      if (v49 >= 0)
      {
        v39 = HIBYTE(v49);
      }

      else
      {
        v39 = __p[1];
      }

      v40 = sub_255A13DC0(v34, v38, v39);
      v41 = sub_255A13DC0(v40, ": ", 2);
      v42 = *v41;
      *(v41 + *(*v41 - 24) + 8) = *(v41 + *(*v41 - 24) + 8) & 0xFFFFFF4F | 0x80;
      *(v41 + *(v42 - 24) + 8) = *(v41 + *(v42 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v41 + *(v42 - 24) + 24) = 8;
      v43 = MEMORY[0x259C46960]();
      if ((i & 3) == 3)
      {
        v44 = "\n";
      }

      else
      {
        v44 = "";
      }

      sub_255A13DC0(v43, v44, (i & 3) == 3);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      operator delete(v47.__r_.__value_.__l.__data_);
    }

LABEL_22:
    v30 = (v30 + 4);
  }

  std::stringbuf::str();
  v51[0] = *MEMORY[0x277D82818];
  v45 = *(MEMORY[0x277D82818] + 72);
  *(v51 + *(v51[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v52 = v45;
  v53 = MEMORY[0x277D82878] + 16;
  if (v55 < 0)
  {
    operator delete(v54[7].__locale_);
  }

  v53 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v54);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C46A80](&v56);
}

void sub_255A137E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  sub_255A13BB8(&a18, MEMORY[0x277D82818]);
  MEMORY[0x259C46A80](va);
  _Unwind_Resume(a1);
}

uint64_t sub_255A13858(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  *(a1 + 16) = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  *(a1 + 128) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C46A30](a1 + 32);
  *(a1 + 88) = 0;
  v13 = a1 + 88;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  *(a1 + 112) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v14 = *(a1 + 111);
  if (v14 < 0)
  {
    v14 = *(a1 + 96);
  }

  *(a1 + 64) = v13;
  *(a1 + 72) = v13;
  *(a1 + 80) = v13 + v14;
  return a1;
}

void sub_255A13B68(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 24) = v4;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x259C46A80](v2);
  _Unwind_Resume(a1);
}

uint64_t sub_255A13BB8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_255A13D0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C46B00);
}

uint64_t sub_255A13D44(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x259C46B00);
  }

  return result;
}

uint64_t sub_255A13D60(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4lacc13CaptureReplayEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4lacc13CaptureReplayEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4lacc13CaptureReplayEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4lacc13CaptureReplayEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255A13DC0(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C46940](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_255A13F6C(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C46950](v14);
  return a1;
}

void sub_255A13F04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C46950](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x255A13EE4);
}

uint64_t sub_255A13F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_255A0FD90();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_255A14148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lacc::Counts::read_from@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  lacc::LaccABI::read_register(a1);
  lacc::LaccABI::read_register(a1);
  lacc::LaccABI::read_register(a1);
  lacc::LaccABI::read_register(a1);
  lacc::LaccABI::read_register(a1);
  return lacc::LaccABI::read_register(a1);
}

void lacc_hardware::LaccHardware::LaccHardware(lacc_hardware::LaccHardware *this)
{
  operator new();
}

{
  operator new();
}

void sub_255A1434C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_255A143CC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_255A14428(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867BEAF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C46B00);
}

void *sub_255A144A4(void *a1)
{
  *a1 = &unk_2867BEB48;
  a1[1] = &unk_2867BEC28;
  a1[3] = 0;
  v2 = a1 + 3;
  a1[2] = 0;
  v3 = CVHWAGeneralProcessingCreate();
  if (v3)
  {
    if (v3 != 3)
    {
      if (v3 != 2)
      {
        return a1;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Nullpointer exception in CVHWAGeneralProcessingCreate");
LABEL_12:
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279806BA0, MEMORY[0x277D82610]);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C468C0](v9, "Could not allocate context for AppleCVHWA");
    goto LABEL_14;
  }

  v5 = CVHWAGeneralProcessingConfigCreate();
  if (v5)
  {
    if (v5 != 3)
    {
      if (v5 != 2)
      {
        return a1;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Nullpointer exception in CVHWAGeneralProcessingConfigCreate");
      goto LABEL_12;
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C468C0](v9, "Could not allocate configuration context for AppleCVHWA");
LABEL_14:
    __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = *MEMORY[0x277CECFB0];
  v8 = *v2;
  CVHWAGeneralProcessingConfigSetAccelInstance();
  return a1;
}

void *sub_255A14680(void *a1)
{
  *a1 = &unk_2867BEB48;
  a1[1] = &unk_2867BEC28;
  if (a1[2])
  {
    CVHWAGeneralProcessingRelease();
    a1[2] = 0;
  }

  if (a1[3])
  {
    CVHWAGeneralProcessingConfigRelease();
    a1[3] = 0;
  }

  return a1;
}

uint64_t sub_255A14704(void *a1)
{
  *(a1 - 1) = &unk_2867BEB48;
  *a1 = &unk_2867BEC28;
  if (a1[1])
  {
    CVHWAGeneralProcessingRelease();
    a1[1] = 0;
  }

  result = a1[2];
  if (result)
  {
    result = CVHWAGeneralProcessingConfigRelease();
    a1[2] = 0;
  }

  return result;
}

void sub_255A14784(void *a1)
{
  *a1 = &unk_2867BEB48;
  a1[1] = &unk_2867BEC28;
  if (a1[2])
  {
    CVHWAGeneralProcessingRelease();
    a1[2] = 0;
  }

  if (a1[3])
  {
    CVHWAGeneralProcessingConfigRelease();
    a1[3] = 0;
  }

  JUMPOUT(0x259C46B00);
}

void sub_255A14828(void *a1)
{
  *(a1 - 1) = &unk_2867BEB48;
  *a1 = &unk_2867BEC28;
  if (a1[1])
  {
    CVHWAGeneralProcessingRelease();
    a1[1] = 0;
  }

  if (a1[2])
  {
    CVHWAGeneralProcessingConfigRelease();
    a1[2] = 0;
  }

  JUMPOUT(0x259C46B00);
}

BOOL sub_255A148CC(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 16);
  v3 = CVHWAGeneralProcessingSetupDMASourceBuffer();
  kdebug_trace();
  return v3 == 0;
}

BOOL sub_255A14964(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 16);
  v3 = CVHWAGeneralProcessingSetupDMADestinationBuffer();
  kdebug_trace();
  return v3 == 0;
}

BOOL sub_255A149FC(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  return CVHWAGeneralProcessingConfigSetAccelInstance() == 0;
}

BOOL sub_255A14A24(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  return CVHWAGeneralProcessingConfigSetAccelInstance() == 0;
}

BOOL sub_255A14A4C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  if (CVHWAGeneralProcessingConfigSetBinaryPath())
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return CVHWAGeneralProcessingInit() == 0;
}

BOOL sub_255A14AA8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  if (CVHWAGeneralProcessingConfigSetBinaryPath())
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  return CVHWAGeneralProcessingInit() == 0;
}

uint64_t sub_255A14B04()
{
  if (CVHWAGeneralProcessingAllocateBuffer())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255A14B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  CVHWAGeneralProcessingGetUint32Register();
  return 0;
}

uint64_t sub_255A14B84(uint64_t result, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 <= 0x1F && (a4 - 1) <= 7)
  {
    v4 = *(result + 16);
    return CVHWAGeneralProcessingSetVecFloatRegister();
  }

  return result;
}

uint64_t sub_255A14BAC(uint64_t result, unsigned int a2, __int128 *a3, int a4)
{
  v11 = 0u;
  v12 = 0u;
  if (a2 <= 0x1F && (a4 - 1) <= 7)
  {
    v6 = result;
    v7 = *(result + 16);
    CVHWAGeneralProcessingGetVecFloatRegister();
    v9 = *a3;
    v8 = a3[1];
    LODWORD(v11) = *a3;
    if (a4 != 1)
    {
      DWORD1(v11) = DWORD1(v9);
      if (a4 != 2)
      {
        DWORD2(v11) = DWORD2(v9);
        if (a4 != 3)
        {
          *(&v11 | 0xC) = HIDWORD(v9);
          if (a4 != 4)
          {
            LODWORD(v12) = v8;
            if (a4 != 5)
            {
              DWORD1(v12) = DWORD1(v8);
              if (a4 != 6)
              {
                DWORD2(v12) = DWORD2(v8);
                if (a4 != 7)
                {
                  HIDWORD(v12) = HIDWORD(v8);
                }
              }
            }
          }
        }
      }
    }

    v10 = *(v6 + 16);
    return CVHWAGeneralProcessingSetVecFloatRegister();
  }

  return result;
}

uint64_t sub_255A14CB8(uint64_t result, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 <= 0x1F && (a4 - 1) <= 7)
  {
    v4 = *(result + 16);
    return CVHWAGeneralProcessingGetVecFloatRegister();
  }

  return result;
}

uint64_t sub_255A14CE0@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = 0uLL;
  v5 = 0uLL;
  if (a2 <= 0x1F)
  {
    v6 = *(result + 16);
    result = CVHWAGeneralProcessingGetVecFloatRegister();
    v4 = 0u;
    v5 = 0u;
  }

  *a3 = v4;
  a3[1] = v5;
  return result;
}

uint64_t sub_255A14D38(uint64_t result, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 <= 0x1F && (a4 - 1) <= 3)
  {
    v4 = *(result + 16);
    return CVHWAGeneralProcessingSetVecDoubleRegister();
  }

  return result;
}

uint64_t sub_255A14D60(uint64_t result, unsigned int a2, __int128 *a3, int a4)
{
  if (a2 <= 0x1F && (a4 - 1) <= 3)
  {
    v5 = result;
    v6 = *(result + 16);
    CVHWAGeneralProcessingGetVecDoubleRegister();
    v8 = *a3;
    v7 = a3[1];
    v9 = *(v5 + 16);
    return CVHWAGeneralProcessingSetVecDoubleRegister();
  }

  return result;
}

uint64_t sub_255A14E24(uint64_t result, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 <= 0x1F && (a4 - 1) <= 3)
  {
    v4 = *(result + 16);
    return CVHWAGeneralProcessingGetVecDoubleRegister();
  }

  return result;
}

uint64_t sub_255A14E4C@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = 0uLL;
  v5 = 0uLL;
  if (a2 <= 0x1F)
  {
    v6 = *(result + 16);
    result = CVHWAGeneralProcessingGetVecDoubleRegister();
    v4 = 0u;
    v5 = 0u;
  }

  *a3 = v4;
  a3[1] = v5;
  return result;
}

uint64_t sub_255A14EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  CVHWAGeneralProcessingClearStackData();
  v7 = *(a1 + 16);

  return MEMORY[0x28213EA58](v7, a2, a3);
}

BOOL sub_255A14F80(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  SpecialRegister = CVHWAGeneralProcessingReadSpecialRegister();
  v8 = SpecialRegister;
  if (a3 && !SpecialRegister)
  {
    memcpy(a3, __src, *a4);
  }

  result = v8 == 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

const char *sub_255A1501C(int a1, int a2)
{
  if (a1 <= 61)
  {
    if (a1 == 8 || a1 == 10)
    {
      if (a2 > 1879048221)
      {
        if (a2 == 1879048222)
        {
          return "SHT_MIPS_DWARF";
        }

        if (a2 == 1879048234)
        {
          return "SHT_MIPS_ABIFLAGS";
        }
      }

      else
      {
        if (a2 == 1879048198)
        {
          return "SHT_MIPS_REGINFO";
        }

        if (a2 == 1879048205)
        {
          return "SHT_MIPS_OPTIONS";
        }
      }
    }

    else if (a1 == 40)
    {
      v3 = a2 - 1879048193;
      if ((a2 - 1879048193) < 5)
      {
        v4 = *&asc_255A1E8A0[8 * v3];
        return (&off_279806BA8)[v3];
      }
    }
  }

  else if (a1 > 163)
  {
    if (a1 == 164)
    {
      if (a2 == 1879048192)
      {
        return "SHT_HEX_ORDERED";
      }
    }

    else if (a1 == 243 && a2 == 1879048195)
    {
      return "SHT_RISCV_ATTRIBUTES";
    }
  }

  else if (a1 == 62)
  {
    if (a2 == 1879048193)
    {
      return "SHT_X86_64_UNWIND";
    }
  }

  else if (a1 == 105 && a2 == 1879048195)
  {
    return "SHT_MSP430_ATTRIBUTES";
  }

  if (a2 <= 1610612736)
  {
    return "SHT_NOBITS";
  }

  if (a2 > 1879002118)
  {
    if (a2 > 1879048180)
    {
      if (a2 <= 1879048188)
      {
        if (a2 == 1879048181)
        {
          return "SHT_GNU_ATTRIBUTES";
        }

        if (a2 == 1879048182)
        {
          return "SHT_GNU_HASH";
        }
      }

      else
      {
        switch(a2)
        {
          case 1879048189:
            return "SHT_GNU_verdef";
          case 1879048190:
            return "SHT_GNU_verneed";
          case 1879048191:
            return "SHT_GNU_versym";
        }
      }

      return "Unknown";
    }

    if (a2 <= 1879002120)
    {
      if (a2 == 1879002119)
      {
        return "SHT_LLVM_PART_PHDR";
      }

      else
      {
        return "SHT_LLVM_BB_ADDR_MAP";
      }
    }

    if (a2 == 1879002121)
    {
      return "SHT_LLVM_CALL_GRAPH_PROFILE";
    }

    if (a2 == 1879047936)
    {
      return "SHT_ANDROID_RELR";
    }

    return "Unknown";
  }

  if (a2 <= 1879002114)
  {
    if (a2 > 1879002111)
    {
      if (a2 == 1879002112)
      {
        return "SHT_LLVM_ODRTAB";
      }

      if (a2 == 1879002113)
      {
        return "SHT_LLVM_LINKER_OPTIONS";
      }
    }

    else
    {
      if (a2 == 1610612737)
      {
        return "SHT_ANDROID_REL";
      }

      if (a2 == 1610612738)
      {
        return "SHT_ANDROID_RELA";
      }
    }

    return "Unknown";
  }

  if (a2 > 1879002116)
  {
    if (a2 == 1879002117)
    {
      return "SHT_LLVM_SYMPART";
    }

    else
    {
      return "SHT_LLVM_PART_EHDR";
    }
  }

  else if (a2 == 1879002115)
  {
    return "SHT_LLVM_ADDRSIG";
  }

  else
  {
    return "SHT_LLVM_DEPENDENT_LIBRARIES";
  }
}

void *sub_255A155E0(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_255A0FD90();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t sub_255A1569C()
{
  if (!atomic_load_explicit(qword_27F7DAEB0, memory_order_acquire))
  {
    sub_255A17424(qword_27F7DAEB0, sub_255A158D8, sub_255A15920);
  }

  return qword_27F7DAEB0[0];
}

void sub_255A15704(uint64_t a1, uint64_t a2)
{
  std::error_code::message(&v5, (a1 + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  sub_255A1AEE4(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_255A1577C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A15798(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2867BF0E8;
  v13 = v14;
  sub_255A1AA88(&v5, 0, 0, 0);
  (*(*a1 + 16))(a1, &v5);
  if (*(v13 + 23) < 0)
  {
    sub_255A155E0(a2, *v13, v13[1]);
  }

  else
  {
    v4 = *v13;
    *(a2 + 16) = v13[2];
    *a2 = v4;
  }

  sub_255A1A8E4(&v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_255A158A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A1A8E4(&a9);
  if (*(v9 - 17) < 0)
  {
    operator delete(*(v9 - 40));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255A15920(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_255A15950(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x259C46B00);
}

double sub_255A15994@<D0>(int a1@<W1>, char *a2@<X8>)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        operator new();
      }

      operator new();
    }

    if (a1 == 3)
    {
      operator new();
    }

    operator new();
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      operator new();
    }

    a2[23] = 20;
    result = *"Invalid symbol index";
    strcpy(a2, "Invalid symbol index");
  }

  else
  {
    if (a1 == 5)
    {
      operator new();
    }

    a2[23] = 21;
    result = *"Invalid section index";
    strcpy(a2, "Invalid section index");
  }

  return result;
}

void *sub_255A15C70(void *result, void *a2, uint64_t a3)
{
  if (*result)
  {
    v4 = result;
    result = sub_255A1A43C(a3, a2);
    v5 = *v4;
    *v4 = 0;
    if (v5)
    {
      if ((*(*v5 + 48))(v5, &unk_27F7DB089))
      {
        v6 = v5[1];
        v7 = v5[2];
        if (v6 != v7)
        {
          v8 = 0;
          do
          {
            v13 = v8;
            v9 = *v6;
            *v6 = 0;
            if ((*(*v9 + 48))(v9, &unk_27F7DB088))
            {
              (*(*v9 + 16))(v9, a2);
              v10 = a2[4];
              if (a2[3] == v10)
              {
                sub_255A1AEE4(a2, "\n", 1uLL);
              }

              else
              {
                *v10 = 10;
                ++a2[4];
              }

              v12 = 0;
              (*(*v9 + 8))(v9);
            }

            else
            {
              v12 = v9;
            }

            sub_255A0F308(&v13, &v12, &v14);
            v8 = v14;
            v14 = 0;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }

            if (v13)
            {
              (*(*v13 + 8))(v13);
            }

            ++v6;
          }

          while (v6 != v7);
        }
      }

      else
      {
        (*(*v5 + 48))(v5, &unk_27F7DB088);
        (*(*v5 + 16))(v5, a2);
        v11 = a2[4];
        if (a2[3] == v11)
        {
          sub_255A1AEE4(a2, "\n", 1uLL);
        }

        else
        {
          *v11 = 10;
          ++a2[4];
        }
      }

      return (*(*v5 + 8))(v5);
    }
  }

  return result;
}

uint64_t sub_255A15FF0()
{
  if (!atomic_load_explicit(&qword_27F7DAEC8, memory_order_acquire))
  {
    sub_255A17424(&qword_27F7DAEC8, sub_255A16A54, sub_255A16A9C);
  }

  return 1;
}

uint64_t sub_255A16060@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_255A1610C(void **a1)
{
  v14.__val_ = 0;
  v14.__cat_ = std::system_category();
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if ((*(*v2 + 48))(v2, &unk_27F7DB089))
    {
      v3 = v2[1];
      v4 = v2[2];
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v11.__r_.__value_.__r.__words[0] = v5;
          v6 = *v3;
          *v3 = 0;
          if ((*(*v6 + 48))(v6, &unk_27F7DB088))
          {
            *&v14.__val_ = (*(*v6 + 32))(v6);
            v14.__cat_ = v7;
            v15 = 0;
            (*(*v6 + 8))(v6);
          }

          else
          {
            v15 = v6;
          }

          sub_255A0F308(&v11, &v15, &v12);
          v5 = v12;
          v12 = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          if (v11.__r_.__value_.__r.__words[0])
          {
            (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
          }

          ++v3;
        }

        while (v3 != v4);
      }
    }

    else
    {
      (*(*v2 + 48))(v2, &unk_27F7DB088);
      *&v14.__val_ = (*(*v2 + 32))(v2);
      v14.__cat_ = v8;
    }

    (*(*v2 + 8))(v2);
  }

  if (!atomic_load_explicit(&qword_27F7DAEC8, memory_order_acquire))
  {
    sub_255A17424(&qword_27F7DAEC8, sub_255A16A54, sub_255A16A9C);
  }

  if (v14.__cat_ == qword_27F7DAEC8 && v14.__val_ == 3)
  {
    std::error_code::message(&v11, &v14);
    v13 = 260;
    v12 = &v11;
    sub_255A15C58();
  }

  return *&v14.__val_;
}

uint64_t sub_255A164A4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2867BED10;
  sub_255A19FE8(a2, a1 + 8);
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 1;
  return a1;
}

void sub_255A1650C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 31);
    if (v4 >= 0)
    {
      v5 = (a1 + 8);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 31);
    }

    else
    {
      v6 = *(a1 + 16);
    }

    sub_255A1AEE4(a2, v5, v6);
    return;
  }

  std::error_code::message(&v12, (a1 + 32));
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  sub_255A1AEE4(a2, v7, size);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v9 = *(a1 + 31);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (!*(a1 + 16))
    {
      return;
    }

    goto LABEL_23;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  v9 = *(a1 + 31);
  if (v9 < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (!v9)
  {
    return;
  }

LABEL_23:
  std::operator+<char>();
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v12.__r_.__value_.__l.__size_;
  }

  sub_255A1AEE4(a2, v10, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_255A16648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A16674(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_255A16704(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x259C46B00);
}

uint64_t sub_255A167B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if ((*(a2 + 24) - v4) > 0x10)
  {
    *(v4 + 16) = 10;
    *v4 = *"Multiple errors:\n";
    *(a2 + 32) += 17;
    v5 = *(result + 8);
    for (i = *(result + 16); v5 != i; ++v5)
    {
LABEL_7:
      while (1)
      {
        result = (*(**v5 + 16))(*v5, a2);
        v7 = *(a2 + 32);
        if (*(a2 + 24) == v7)
        {
          break;
        }

        *v7 = 10;
        ++*(a2 + 32);
        if (++v5 == i)
        {
          return result;
        }
      }

      result = sub_255A1AEE4(a2, "\n", 1uLL);
    }
  }

  else
  {
    result = sub_255A1AEE4(a2, "Multiple errors:\n", 0x11uLL);
    v5 = *(v3 + 8);
    i = *(v3 + 16);
    if (v5 != i)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_255A16938(uint64_t result)
{
  *result = &unk_2867BED10;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_255A16994(uint64_t a1)
{
  *a1 = &unk_2867BED10;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C46B00);
}

uint64_t sub_255A16A9C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_255A16ACC(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x259C46B00);
}

void sub_255A16B10(int a1@<W1>, char *a2@<X8>)
{
  if (a1 == 3)
  {
    operator new();
  }

  if (a1 == 2)
  {
    a2[23] = 22;
    strcpy(a2, "A file error occurred.");
  }

  else
  {
    a2[23] = 15;
    strcpy(a2, "Multiple errors");
  }
}

uint64_t sub_255A16C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  *&v50 = a1;
  *(&v50 + 1) = a2;
  v4 = sub_255A19CD0(&v50, "{}", 2, 0);
  if (v4 >= *(&v50 + 1))
  {
    v5 = *(&v50 + 1);
  }

  else
  {
    v5 = v4;
  }

  v6 = *(&v50 + 1) - v5;
  *&v52[0] = v50 + v5;
  *(&v52[0] + 1) = *(&v50 + 1) - v5;
  v7 = sub_255A19D50(v52, "{}", 2, 0xFFFFFFFFFFFFFFFFLL);
  if ((v7 + 1) < *(&v52[0] + 1))
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = *(&v52[0] + 1);
  }

  v9 = *(&v52[0] + 1) - v6 + v8;
  if (*(&v52[0] + 1) < v9)
  {
    v9 = *(&v52[0] + 1);
  }

  v48 = *&v52[0];
  v49 = v9;
  v10 = sub_255A19CD0(&v48, " \t\n\v\f\r", 6, 0);
  if (v10 >= v49)
  {
    v11 = v49;
  }

  else
  {
    v11 = v10;
  }

  v12 = v49 - v11;
  *&v52[0] = &v48[v11];
  *(&v52[0] + 1) = v49 - v11;
  v13 = sub_255A19D50(v52, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  if ((v13 + 1) < *(&v52[0] + 1))
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = *(&v52[0] + 1);
  }

  v15 = *(&v52[0] + 1) - v12 + v14;
  if (*(&v52[0] + 1) < v15)
  {
    v15 = *(&v52[0] + 1);
  }

  v48 = *&v52[0];
  v49 = v15;
  *&v52[0] = 0;
  result = sub_255A19DE0(&v48, 0, v52);
  if (result)
  {
    memset(v52, 0, sizeof(v52));
    *(a3 + 8) = 0u;
    memset(v51, 0, sizeof(v51));
    *a3 = 0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 2;
    *(a3 + 44) = 0;
    *(a3 + 60) = 0;
    *(a3 + 45) = *v51;
    goto LABEL_68;
  }

  v17 = *&v52[0];
  v18 = sub_255A19CD0(&v48, " \t\n\v\f\r", 6, 0);
  if (v18 >= v49)
  {
    v19 = v49;
  }

  else
  {
    v19 = v18;
  }

  v20 = v49 - v19;
  *&v52[0] = &v48[v19];
  *(&v52[0] + 1) = v49 - v19;
  v21 = sub_255A19D50(v52, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  if ((v21 + 1) < *(&v52[0] + 1))
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = *(&v52[0] + 1);
  }

  v23 = *(&v52[0] + 1) - v20 + v22;
  if (*(&v52[0] + 1) < v23)
  {
    v23 = *(&v52[0] + 1);
  }

  v48 = *&v52[0];
  v49 = v23;
  if (!v23 || **&v52[0] != 44)
  {
    v28 = 0;
    v24 = 32;
    v25 = 2;
    goto LABEL_43;
  }

  v24 = 32;
  v25 = 2;
  v48 = (*&v52[0] + 1);
  v49 = v23 - 1;
  if (v23 == 1)
  {
    v28 = 0;
    goto LABEL_43;
  }

  if (v23 != 2)
  {
    v26 = (*&v52[0] + 2);
    v27 = *(*&v52[0] + 2);
    switch(v27)
    {
      case '+':
LABEL_38:
        v24 = *(*&v52[0] + 1);
        v26 = (*&v52[0] + 3);
        v29 = -3;
LABEL_39:
        v48 = v26;
        v49 = v23 + v29;
        goto LABEL_40;
      case '-':
        v25 = 0;
        goto LABEL_38;
      case '=':
        v25 = 1;
        goto LABEL_38;
    }

    v47 = *(*&v52[0] + 1);
    switch(v47)
    {
      case '+':
LABEL_74:
        v29 = -2;
        goto LABEL_39;
      case '-':
        v25 = 0;
        goto LABEL_74;
      case '=':
        v25 = 1;
        goto LABEL_74;
    }
  }

LABEL_40:
  *&v52[0] = 0;
  if (sub_255A19DE0(&v48, 0, v52))
  {
    v28 = 0;
  }

  else
  {
    v28 = *&v52[0];
  }

LABEL_43:
  v30 = sub_255A19CD0(&v48, " \t\n\v\f\r", 6, 0);
  if (v30 >= v49)
  {
    v31 = v49;
  }

  else
  {
    v31 = v30;
  }

  v32 = v49 - v31;
  *&v52[0] = &v48[v31];
  *(&v52[0] + 1) = v49 - v31;
  v33 = sub_255A19D50(v52, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  if ((v33 + 1) < *(&v52[0] + 1))
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = *(&v52[0] + 1);
  }

  v35 = *(&v52[0] + 1) - v32 + v34;
  if (*(&v52[0] + 1) < v35)
  {
    v35 = *(&v52[0] + 1);
  }

  v48 = *&v52[0];
  v49 = v35;
  if (v35 && **&v52[0] == 58)
  {
    *v51 = *&v52[0] + 1;
    *&v51[8] = v35 - 1;
    v36 = sub_255A19CD0(v51, " \t\n\v\f\r", 6, 0);
    if (v36 >= *&v51[8])
    {
      v37 = *&v51[8];
    }

    else
    {
      v37 = v36;
    }

    v38 = *&v51[8] - v37;
    *&v52[0] = *v51 + v37;
    *(&v52[0] + 1) = *&v51[8] - v37;
    v39 = sub_255A19D50(v52, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    v40 = *&v52[0];
    if ((v39 + 1) < *(&v52[0] + 1))
    {
      v41 = v39 + 1;
    }

    else
    {
      v41 = *(&v52[0] + 1);
    }

    v42 = *(&v52[0] + 1) - v38 + v41;
    if (*(&v52[0] + 1) >= v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = *(&v52[0] + 1);
    }

    v48 = 0;
    v49 = 0;
  }

  else
  {
    v43 = 0;
    v40 = 0;
  }

  v44 = sub_255A19CD0(&v48, " \t\n\v\f\r", 6, 0);
  if (v44 >= v49)
  {
    v45 = v49;
  }

  else
  {
    v45 = v44;
  }

  *&v52[0] = &v48[v45];
  *(&v52[0] + 1) = v49 - v45;
  result = sub_255A19D50(v52, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  *a3 = 1;
  *(a3 + 8) = v50;
  *(a3 + 24) = v17;
  *(a3 + 32) = v28;
  *(a3 + 40) = v25;
  *(a3 + 44) = v24;
  *(a3 + 48) = v40;
  *(a3 + 56) = v43;
LABEL_68:
  *(a3 + 64) = 1;
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_255A17040@<X0>(_BYTE *__s@<X0>, size_t __n@<X1>, uint64_t a3@<X8>)
{
  v3 = __s;
  v24 = *MEMORY[0x277D85DE8];
  if (__n)
  {
    v5 = __n;
    while (2)
    {
      if (*v3 == 123)
      {
        v6 = 1;
        do
        {
          if (v5 == v6)
          {
            v8 = -1;
            if (v5 != -1)
            {
              v8 = v5;
            }

            if (v8 >= 2)
            {
              goto LABEL_39;
            }

            goto LABEL_14;
          }

          v7 = v3[v6++];
        }

        while (v7 == 123);
        v8 = v6 - 1;
        if (v5 < v8)
        {
          v8 = v5;
        }

        if (v8 >= 2)
        {
LABEL_39:
          v16 = v8 >> 1;
          if (v5 < v8 >> 1)
          {
            v16 = v5;
          }

          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
          v17 = v8 & 0xFFFFFFFFFFFFFFFELL;
          *&v20[11] = 0;
          if (v5 < v17)
          {
            v17 = v5;
          }

          *&v20[3] = 0;
          *a3 = 2;
          *(a3 + 8) = v3;
          *(a3 + 16) = v16;
          *(a3 + 40) = 2;
          *(a3 + 44) = 0;
          *(a3 + 45) = *v20;
          *(a3 + 60) = 0;
          *(a3 + 64) = &v3[v17];
          *(a3 + 72) = v5 - v17;
          goto LABEL_33;
        }

LABEL_14:
        __s = memchr(v3, 125, v5);
        if (!__s || (v9 = __s - v3, __s - v3 == -1))
        {
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
          *&v20[11] = 0;
          *&v20[3] = 0;
          *(a3 + 64) = 0;
          *(a3 + 72) = 0;
          *a3 = 2;
          *(a3 + 8) = v3;
          *(a3 + 16) = v5;
          goto LABEL_32;
        }

        if (v5 == 1 || (__s = memchr(v3 + 1, 123, v5 - 1)) == 0 || (v10 = __s - v3, __s - v3 >= v9))
        {
          if (v9 <= 1)
          {
            v11 = 1;
          }

          else
          {
            v11 = v9;
          }

          if (v5 < v9)
          {
            v11 = v5;
          }

          v12 = v11 - 1;
          if (v5 >= v9 + 1)
          {
            v13 = v9 + 1;
          }

          else
          {
            v13 = v5;
          }

          v14 = &v3[v13];
          v5 -= v13;
          __s = sub_255A16C00((v3 + 1), v12, v20);
          if (v23 == 1)
          {
            v18 = *&v20[16];
            *a3 = *v20;
            *(a3 + 16) = v18;
            v19 = v22;
            *(a3 + 32) = v21;
            *(a3 + 48) = v19;
            *(a3 + 64) = v14;
            *(a3 + 72) = v5;
            goto LABEL_33;
          }

          v3 = v14;
          if (v5)
          {
            continue;
          }

          v3 = v14;
          goto LABEL_30;
        }

        if (v5 < v10)
        {
          v10 = v5;
        }

        *(a3 + 24) = 0;
        *(a3 + 32) = 0;
        *&v20[11] = 0;
      }

      else
      {
        __s = memchr(v3, 123, v5);
        v10 = __s - v3;
        *(a3 + 24) = 0;
        *(a3 + 32) = 0;
        if (!__s)
        {
          v10 = -1;
        }

        *&v20[11] = 0;
        if (v5 < v10)
        {
          v10 = v5;
        }
      }

      break;
    }

    *&v20[3] = 0;
    *a3 = 2;
    *(a3 + 8) = v3;
    *(a3 + 16) = v10;
    *(a3 + 40) = 2;
    *(a3 + 44) = 0;
    *(a3 + 45) = *v20;
    *(a3 + 60) = *&v20[15];
    *(a3 + 64) = &v3[v10];
    *(a3 + 72) = v5 - v10;
    goto LABEL_33;
  }

LABEL_30:
  *&v20[11] = 0;
  *&v20[3] = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *a3 = 2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
LABEL_32:
  *(a3 + 40) = 2;
  *(a3 + 44) = 0;
  *(a3 + 45) = *v20;
  *(a3 + 60) = *&v20[15];
LABEL_33:
  v15 = *MEMORY[0x277D85DE8];
  return __s;
}

double sub_255A172C8@<D0>(_BYTE *__s@<X0>, size_t __n@<X1>, uint64_t a3@<X8>)
{
  v4 = a3 + 16;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x200000000;
  *v21 = 0;
  *&v5 = 0;
  memset(&v21[8], 0, 32);
  *&v21[40] = 2;
  v21[44] = 0;
  v22 = 0uLL;
  if (__n)
  {
    v6 = __n;
    do
    {
      sub_255A17040(__s, v6, v16);
      *v21 = v16[0];
      *&v21[16] = v16[1];
      *&v5 = v17;
      *&v21[32] = v17;
      v22 = v18;
      __s = v19;
      v6 = v20;
      if (!LODWORD(v16[0]))
      {
        continue;
      }

      v13 = *(a3 + 8);
      v8 = *a3;
      if (v13 >= *(a3 + 12))
      {
        if (v8 <= v21 && v8 + (v13 << 6) > v21)
        {
          sub_255A19720(a3, v4, v13 + 1, 64);
          v14 = &v21[-v8];
          v8 = *a3;
          v9 = &v14[*a3];
          goto LABEL_5;
        }

        sub_255A19720(a3, v4, v13 + 1, 64);
        v8 = *a3;
      }

      v9 = v21;
LABEL_5:
      v10 = (v8 + (*(a3 + 8) << 6));
      v5 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v10[2] = v9[2];
      v10[3] = v12;
      *v10 = v5;
      v10[1] = v11;
      ++*(a3 + 8);
    }

    while (v6);
  }

  return *&v5;
}

void sub_255A17404(_Unwind_Exception *exception_object)
{
  if (*v2 != v1)
  {
    free(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A17424(unint64_t *a1, uint64_t (*a2)(void), unint64_t a3)
{
  if (sub_255A19FE0())
  {
    if ((atomic_load_explicit(&qword_27F7DAEE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DAEE8))
    {
      MEMORY[0x259C469B0](&stru_27F7DAEF0);
      __cxa_atexit(MEMORY[0x277D82658], &stru_27F7DAEF0, &dword_255A0A000);
      __cxa_guard_release(&qword_27F7DAEE8);
    }

    std::recursive_mutex::lock(&stru_27F7DAEF0);
    if (!*a1)
    {
      atomic_store(a2(), a1);
      v6 = qword_27F7DAEE0;
      a1[1] = a3;
      a1[2] = v6;
      qword_27F7DAEE0 = a1;
    }

    std::recursive_mutex::unlock(&stru_27F7DAEF0);
  }

  else
  {
    atomic_store(a2(), a1);
    v7 = qword_27F7DAEE0;
    a1[1] = a3;
    a1[2] = v7;
    qword_27F7DAEE0 = a1;
  }
}

char *sub_255A17554(uint64_t a1, uint64_t a2)
{
  v14[32] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_255A1E960;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 32);
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      v4 = *a2;
      if (*a2)
      {
        v5 = strlen(*a2);
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_11;
    }

LABEL_10:
    sub_255A1A370(a2, &v12);
    v4 = v12;
    v5 = v13;
    goto LABEL_11;
  }

  if (v3 != 4)
  {
    if (v3 == 5)
    {
      v4 = *a2;
      v5 = *(a2 + 8);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = *a2;
  v11 = *(*a2 + 23);
  if (v11 >= 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = *v10;
  }

  if (v11 >= 0)
  {
    v5 = v10[23];
  }

  else
  {
    v5 = *(v10 + 1);
  }

LABEL_11:
  v6 = operator new(a1 + v5 + 1);
  v7 = &v6[a1];
  if (v5)
  {
    memcpy(v7, v4, v5);
  }

  v7[v5] = 0;
  if (v12 != v14)
  {
    free(v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_255A176B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9 != v9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255A176F0(uint64_t a1, uint64_t a2, size_t a3, off_t a4, int a5, int a6, char a7)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  sub_255A19080(a2, v13, 0, &v21);
  if (v22)
  {
    v14 = v21;
    v21 = 0;
    v20 = v14;
    v15 = sub_255A1610C(&v20);
    *(a1 + 16) |= 1u;
    *a1 = v15;
    *(a1 + 8) = v16;
    result = v20;
    if (v20)
    {
      result = (*(*v20 + 8))(v20);
    }
  }

  else
  {
    v19 = v21;
    sub_255A17AB0(a1, v21, a2, 0xFFFFFFFFFFFFFFFFLL, a3, a4, a6, a7);
    result = sub_255A191C4(&v19);
  }

  if (v22)
  {
    result = v21;
    v21 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A17848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *a12, uint64_t a13, uint64_t a14, char a15)
{
  if ((*(v15 + 16) & 1) == 0)
  {
    sub_255A1C5E0(v15);
    exception_object = a12;
  }

  if (a15)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_255A178D4(size_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19[32] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = xmmword_255A1E960;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_10;
  }

  v5 = *(a2 + 32);
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v7 = 0;
      v6 = 0;
      goto LABEL_11;
    }

    if (v5 == 3)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = strlen(*a2);
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_11;
    }

LABEL_10:
    sub_255A1A370(a2, &v17);
    v6 = v17;
    v7 = v18;
    goto LABEL_11;
  }

  if (v5 != 4)
  {
    if (v5 == 5)
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v15 = *a2;
  v16 = *(*a2 + 23);
  if (v16 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = *v15;
  }

  if (v16 >= 0)
  {
    v7 = *(*a2 + 23);
  }

  else
  {
    v7 = *(v15 + 1);
  }

LABEL_11:
  v8 = (v7 + 40) & 0xFFFFFFFFFFFFFFF0;
  v9 = a1 + v8 + 1;
  if (v9 <= a1)
  {
    v11 = 0;
  }

  else
  {
    v10 = operator new(v9, MEMORY[0x277D826F0]);
    v11 = v10;
    if (v10)
    {
      v12 = (v10 + 3);
      if (v7)
      {
        memcpy(v10 + 3, v6, v7);
      }

      v12[v7] = 0;
      v13 = v11 + v8 + a1;
      *v13 = 0;
      *v11 = &unk_2867BEF28;
      v11[1] = v11 + v8;
      v11[2] = v13;
    }
  }

  *a3 = v11;
  if (v17 != v19)
  {
    free(v17);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_255A17A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9 != v9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A17AB0(uint64_t a1, int a2, uint64_t a3, size_t a4, size_t a5, off_t a6, int a7, char a8)
{
  v47 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DAF40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DAF40))
  {
    dword_27F7DAF34 = sub_255A1823C();
    __cxa_guard_release(&qword_27F7DAF40);
  }

  if (a5 == -1 && (a5 = a4, a4 == -1))
  {
    v42 = 0u;
    memset(v43, 0, sizeof(v43));
    v44 = 0xFFFFLL;
    v45 = 0;
    v46 = 0;
    v25 = sub_255A18DB0(a2, &v42);
    if (v25)
    {
      *(a1 + 16) |= 1u;
      *a1 = v25;
      *(a1 + 8) = v26;
      goto LABEL_50;
    }

    if (*&v43[24] != 2 && *&v43[24] != 5)
    {
      sub_255A18018();
      v36 = *(a1 + 16);
      if (v41)
      {
        v37 = v36 | 1;
        v38 = v40[0];
        *(a1 + 8) = v40[1];
      }

      else
      {
        v37 = v36 & 0xFE;
        v38 = v40[0];
      }

      *(a1 + 16) = v37;
      *a1 = v38;
      goto LABEL_50;
    }

    a5 = *&v43[16];
    a4 = *&v43[16];
    v16 = dword_27F7DAF34;
    if (a7)
    {
LABEL_5:
      if (a8)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v16 = dword_27F7DAF34;
    if (a7)
    {
      goto LABEL_5;
    }
  }

  v18 = (a5 & 0xFFFFFFFFFFFFC000) != 0 && a5 >= v16;
  if (!v18 || a7 == 0)
  {
    if (v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a4 == -1)
    {
      v42 = 0u;
      memset(v43, 0, sizeof(v43));
      v44 = 0xFFFFLL;
      v45 = 0;
      v46 = 0;
      if (sub_255A18DB0(a2, &v42))
      {
        goto LABEL_29;
      }

      a4 = *&v43[16];
      if (a5 + a6 != *&v43[16])
      {
        goto LABEL_29;
      }
    }

    else if (a5 + a6 != a4)
    {
      goto LABEL_29;
    }

    if ((a4 & (v16 - 1)) != 0)
    {
LABEL_22:
      LODWORD(v42) = 0;
      *(&v42 + 1) = std::system_category();
      v20 = sub_255A17554(48, a3);
      *v20 = &unk_2867BEF78;
      v21 = sub_255A18ED4();
      v22 = sub_255A18ED4();
      sub_255A18DEC((v20 + 24), a2, 0, ((v21 - 1) & a6) + a5, -v22 & a6, &v42);
      if (!v42)
      {
        v23 = sub_255A18B60((v20 + 24));
        v24 = v23 + ((sub_255A18ED4() - 1) & a6);
        *(v20 + 1) = v24;
        *(v20 + 2) = v24 + a5;
        if (!v42)
        {
          *(a1 + 16) &= ~1u;
          *a1 = v20;
          goto LABEL_50;
        }
      }

      (*(*v20 + 8))(v20);
    }
  }

LABEL_29:
  sub_255A178D4(a5, a3, v40);
  if (!v40[0])
  {
    v34 = std::generic_category();
    *(a1 + 16) |= 1u;
    *a1 = 12;
    *(a1 + 8) = v34;
    goto LABEL_50;
  }

  v27 = *(v40[0] + 8);
  v28 = *(v40[0] + 16) - v27;
  do
  {
    if (!v28)
    {
      goto LABEL_46;
    }

    sub_255A19100(a2, v27, v28, a6, &v42);
    if (BYTE8(v42))
    {
      v29 = v42;
      *&v42 = 0;
      v39 = v29;
      v30 = sub_255A1610C(&v39);
      *(a1 + 16) |= 1u;
      *a1 = v30;
      *(a1 + 8) = v31;
      if (v39)
      {
        (*(*v39 + 8))(v39);
        v32 = 1;
        if ((BYTE8(v42) & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v32 = 1;
        if ((BYTE8(v42) & 1) == 0)
        {
          continue;
        }
      }
    }

    else if (v42)
    {
      v32 = 0;
      v28 -= v42;
      v27 += v42;
      a6 += v42;
      if ((BYTE8(v42) & 1) == 0)
      {
        continue;
      }
    }

    else
    {
      bzero(v27, v28);
      v32 = 3;
      if ((BYTE8(v42) & 1) == 0)
      {
        continue;
      }
    }

    v33 = v42;
    *&v42 = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }
  }

  while (!v32);
  if (v32 == 3)
  {
LABEL_46:
    *(a1 + 16) &= ~1u;
    *a1 = v40[0];
    goto LABEL_50;
  }

  if (v40[0])
  {
    (*(*v40[0] + 8))(v40[0]);
  }

LABEL_50:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_255A18018()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v17[2048] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = xmmword_255A1EAA0;
  sub_255A18B68(v4, &v15, 0x4000uLL, &v14);
  if (v14)
  {
    v13 = v14;
    v14 = 0;
    v5 = sub_255A1610C(&v13);
    *(v3 + 16) |= 1u;
    *v3 = v5;
    *(v3 + 8) = v6;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    if (v14)
    {
      (*(*v14 + 8))(v14);
      v7 = v15;
      if (v15 == v17)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v8 = v15;
    v9 = v16;
    sub_255A178D4(v16, v2, &v14);
    v10 = v14;
    if (!v14)
    {
      v12 = std::generic_category();
      *(v3 + 16) |= 1u;
      *v3 = 12;
      *(v3 + 8) = v12;
      v7 = v15;
      if (v15 == v17)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    memcpy(*(v14 + 8), v8, v9);
    *(v3 + 16) &= ~1u;
    *v3 = v10;
  }

  v7 = v15;
  if (v15 != v17)
  {
LABEL_10:
    free(v7);
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255A181CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11 == v11)
  {
    _Unwind_Resume(exception_object);
  }

  free(a11);
  _Unwind_Resume(exception_object);
}

uint64_t sub_255A1823C()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255A191D8(&v6);
  if (v7)
  {
    v0 = v6;
    v6 = 0;
    v4 = v0;
    sub_255A0F004(&v4, &v5);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (v7)
    {
      v1 = v6;
      v6 = 0;
      if (v1)
      {
        (*(*v1 + 8))(v1);
      }
    }

    result = 4096;
  }

  else
  {
    result = v6;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A18328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t *a13, uint64_t a14, uint64_t *a15, char a16)
{
  if (a13)
  {
    sub_255A1C438(a13);
  }

  sub_255A1C634(&a12, &a16, &a15);
  _Unwind_Resume(a1);
}

void *sub_255A1839C(void *a1)
{
  *a1 = &unk_2867BEF78;
  sub_255A18EA0(a1 + 3);
  return a1;
}

void sub_255A183E4(size_t *a1)
{
  *a1 = &unk_2867BEF78;
  sub_255A18EA0(a1 + 3);

  operator delete(a1);
}

uint64_t sub_255A18484(void *a1, unint64_t a2, size_t a3, int a4, int a5)
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (!HIDWORD(a2))
  {
    v8 = *MEMORY[0x277D85DE8];

    return sub_255A1881C(a1, a2, a3, a4, a5);
  }

  v10 = 0;
  v11 = 0;
  *&v12 = 0x3030303030303030;
  *(&v12 + 1) = 0x3030303030303030;
  v27[6] = v12;
  v27[7] = v12;
  v27[4] = v12;
  v27[5] = v12;
  v27[2] = v12;
  v27[3] = v12;
  v27[0] = v12;
  v27[1] = v12;
  do
  {
    *(&v27[7] + v11-- + 15) = (a2 % 0xA) | 0x30;
    v10 += 0x100000000;
    v13 = a2 > 9;
    a2 /= 0xAuLL;
  }

  while (v13);
  v14 = v10 >> 32;
  if (!a5)
  {
LABEL_10:
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v15 = a1[4];
  if (v15 < a1[3])
  {
    a1[4] = v15 + 1;
    *v15 = 45;
    goto LABEL_10;
  }

  sub_255A1AE14(a1, 45);
  if (a4 != 1)
  {
LABEL_11:
    if (v14 < a3)
    {
      v16 = v14;
      do
      {
        while (1)
        {
          v17 = a1[4];
          if (v17 >= a1[3])
          {
            break;
          }

          a1[4] = v17 + 1;
          *v17 = 48;
          if (++v16 >= a3)
          {
            goto LABEL_16;
          }
        }

        sub_255A1AE14(a1, 48);
        ++v16;
      }

      while (v16 < a3);
    }
  }

LABEL_16:
  v18 = v28 - v14;
  if (a4 == 1)
  {
    v19 = (v14 - 1) % 3;
    v20 = v19 + 1;
    v21 = v14 - (v19 + 1);
    if (v14 >= v19 + 1)
    {
      v22 = v19 + 1;
    }

    else
    {
      v22 = v14;
    }

    result = sub_255A1AEE4(a1, v18, v22);
    if (v21)
    {
      v23 = &v18[v20];
      v24 = -3 * ((-v11 - 1) / 3uLL);
      do
      {
        v25 = a1[4];
        if (v25 < a1[3])
        {
          a1[4] = v25 + 1;
          *v25 = 44;
        }

        else
        {
          sub_255A1AE14(a1, 44);
        }

        result = sub_255A1AEE4(a1, v23, 3uLL);
        v23 += 3;
        v24 += 3;
      }

      while (v24);
    }
  }

  else
  {
    result = sub_255A1AEE4(a1, v28 - v14, v14);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255A18700(void *a1, unint64_t a2, size_t a3, int a4)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_255A18484(a1, a2, a3, a4, v4);
}

uint64_t sub_255A18718(uint64_t a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (a4 > 0x7F)
    {
      LODWORD(a4) = 128;
    }
  }

  else
  {
    LODWORD(a4) = 0;
  }

  v5 = (67 - __clz(a2)) >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  v12[6] = v6;
  v12[7] = v6;
  v12[4] = v6;
  v12[5] = v6;
  LODWORD(v7) = v5 + 2 * ((a3 & 0xFFFFFFFE) == 2);
  v12[2] = v6;
  v12[3] = v6;
  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a4;
  }

  v12[0] = v6;
  v12[1] = v6;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v12[0]) = 120;
  }

  if (a2)
  {
    v8 = &v12[-1] + v7 + 15;
    do
    {
      *v8-- = a0123456789abcd[a2 & 0xF] | (32 * ((a3 & 0xFFFFFFFD) != 0));
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  result = sub_255A1AEE4(a1, v12, v7);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_255A1881C(void *a1, unsigned int a2, size_t a3, int a4, int a5)
{
  v8 = 0;
  v9 = 0;
  v27[1] = *MEMORY[0x277D85DE8];
  *&v10 = 0x3030303030303030;
  *(&v10 + 1) = 0x3030303030303030;
  v26[6] = v10;
  v26[7] = v10;
  v26[4] = v10;
  v26[5] = v10;
  v26[2] = v10;
  v26[3] = v10;
  v26[0] = v10;
  v26[1] = v10;
  do
  {
    *(&v26[7] + v9-- + 15) = (a2 % 0xA) | 0x30;
    v8 += 0x100000000;
    v11 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v11);
  v12 = v8 >> 32;
  if (a5)
  {
    v13 = a1[4];
    if (v13 >= a1[3])
    {
      sub_255A1AE14(a1, 45);
      if (a4 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    a1[4] = v13 + 1;
    *v13 = 45;
  }

  if (a4 == 1)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v12 < a3)
  {
    v14 = v12;
    do
    {
      while (1)
      {
        v15 = a1[4];
        if (v15 >= a1[3])
        {
          break;
        }

        a1[4] = v15 + 1;
        *v15 = 48;
        if (++v14 >= a3)
        {
          goto LABEL_12;
        }
      }

      sub_255A1AE14(a1, 48);
      ++v14;
    }

    while (v14 < a3);
  }

LABEL_12:
  v16 = v27 - v12;
  if (a4 == 1)
  {
    v17 = (v12 - 1) % 3;
    v18 = v17 + 1;
    v19 = v12 - (v17 + 1);
    if (v12 >= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v12;
    }

    result = sub_255A1AEE4(a1, v16, v20);
    if (v19)
    {
      v22 = &v16[v18];
      v23 = -3 * ((-v9 - 1) / 3uLL);
      do
      {
        v24 = a1[4];
        if (v24 < a1[3])
        {
          a1[4] = v24 + 1;
          *v24 = 44;
        }

        else
        {
          sub_255A1AE14(a1, 44);
        }

        result = sub_255A1AEE4(a1, v22, 3uLL);
        v22 += 3;
        v23 += 3;
      }

      while (v23);
    }
  }

  else
  {
    result = sub_255A1AEE4(a1, v27 - v12, v12);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_255A18A40(uint64_t a1, int *a2, int a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = sub_255A18ED8(a1, a2, 2, 1, a3, 438);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (a4)
    {
      a4[1] = 0;
      if (fcntl(*a2, 50, __s) != -1)
      {
        v11 = strlen(__s);
        v12 = a4[1];
        if (a4[2] < v12 + v11)
        {
          sub_255A1983C(a4, a4 + 3, v12 + v11, 1);
          v12 = a4[1];
        }

        if (v11)
        {
          memcpy((*a4 + v12), __s, v11);
          v12 = a4[1];
        }

        a4[1] = v12 + v11;
      }
    }

    std::system_category();
    v8 = 0;
    v13 = *MEMORY[0x277D85DE8];
  }

  return v8 | v7;
}

ssize_t sub_255A18B68@<X0>(int a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[1];
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = a2[1];
  v11 = v8 + a3;
  v12 = v8 > v8 + a3;
  if (v8 != v8 + a3)
  {
LABEL_5:
    if (!v12 && a2[2] < v11)
    {
      sub_255A1983C(a2, a2 + 3, v11, 1);
    }

    a2[1] = v11;
  }

  while (1)
  {
    v13 = *a2;
    while (1)
    {
      *__error() = 0;
      result = read(a1, (v13 + v10), v9);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v16 = *__error();
        std::generic_category();
        result = sub_255A16060(v16, &v18);
        v17 = v18;
        goto LABEL_16;
      }
    }

    if (!result)
    {
      break;
    }

    v10 += result;
    v15 = a2[1];
    v11 = v10 + a3;
    v12 = v15 > v10 + a3;
    if (v15 != v10 + a3)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_16:
  *a4 = v17;
  a2[1] = v10;
  return result;
}

uint64_t sub_255A18C98(int a1, int *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *__error();
    std::generic_category();
    result = v4;
    if (v4 == 2)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 0xFFFF00000001;
      *(a3 + 48) = 0;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
      return 2;
    }

    else
    {
      *(a3 + 28) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 44) = 0xFFFFLL;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    v6 = a2[10];
    v7 = a2[14];
    v8 = *(a2 + 2);
    v9 = v8 & 0xFFF;
    v10 = v8 >> 12;
    if (v10 == 7)
    {
      v11 = 9;
    }

    else
    {
      v11 = dword_255A1EB88[v10 ^ 8];
    }

    v12 = *a2;
    v13 = *(a2 + 3);
    v14 = *(a2 + 1);
    v15 = *(a2 + 6);
    v16 = *(a2 + 12);
    v17 = *(a2 + 2);
    *a3 = *(a2 + 4);
    *(a3 + 8) = v15;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 24) = v17;
    *(a3 + 32) = v16;
    *(a3 + 40) = v11;
    *(a3 + 44) = v9;
    *(a3 + 48) = v12;
    *(a3 + 52) = v13;
    *(a3 + 56) = v14;
    std::system_category();
    return 0;
  }

  return result;
}

uint64_t sub_255A18DEC(uint64_t a1, int a2, int a3, size_t a4, off_t a5, void *a6)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  if (a3 == 1)
  {
    v9 = 65;
  }

  else
  {
    v9 = 66;
  }

  v10 = a3 == 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v12 = 24642;
  }

  else
  {
    v12 = v9;
  }

  v13 = mmap(0, a4, v11, v12, a2, a5);
  *(a1 + 8) = v13;
  if (v13 != -1)
  {
    v14 = std::system_category();
    *a6 = 0;
    a6[1] = v14;
    return a1;
  }

  v16 = *__error();
  v17 = std::generic_category();
  *a6 = v16;
  a6[1] = v17;
  if (!v16)
  {
    return a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void *sub_255A18EA0(size_t *a1)
{
  result = a1[1];
  if (result)
  {
    return munmap(result, *a1);
  }

  return result;
}

void *sub_255A18EB8(size_t *a1)
{
  result = a1[1];
  if (result)
  {
    return posix_madvise(result, *a1, 4);
  }

  return result;
}

uint64_t sub_255A18ED8(uint64_t a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v24[16] = *MEMORY[0x277D85DE8];
  v9 = 2 * (a4 == 3);
  if (a4 == 2)
  {
    v9 = 1;
  }

  if (a4 == 1)
  {
    v9 = 0;
  }

  v10 = a5 & 4;
  if ((a5 & 4) != 0)
  {
    a3 = 3;
  }

  v12 = v9 | 0x600;
  v13 = v9 | 0x200;
  if (a3 == 1)
  {
    v9 |= 0xA00u;
  }

  if (a3 == 3)
  {
    v9 = v13;
  }

  if (a3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v12;
  }

  v22 = v24;
  v23 = xmmword_255A1EB70;
  v15 = sub_255A1A488(a1, &v22);
  v16 = ((a5 << 20) & 0x1000000 | (2 * v10)) ^ 0x1000000;
  while (1)
  {
    *__error() = 0;
    v17 = open(v15, v14 | v16, a6);
    if (v17 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      *a2 = -1;
      goto LABEL_22;
    }
  }

  *a2 = v17;
  if ((v17 & 0x80000000) == 0)
  {
    std::system_category();
    v18 = 0;
    v19 = v22;
    if (v22 == v24)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_22:
  v18 = *__error();
  std::generic_category();
  v19 = v22;
  if (v22 == v24)
  {
    goto LABEL_24;
  }

LABEL_23:
  free(v19);
LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_255A1905C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11 != v11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_255A19080@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  result = sub_255A18A40(a1, &v7, a2, a3);
  if (result)
  {
    result = sub_255A16060(result, &v6);
    *(a4 + 8) |= 1u;
    *a4 = v6;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    *a4 = v7;
  }

  return result;
}

ssize_t sub_255A19100@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, off_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = pread(a1, a2, v9, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v11 = *__error();
      std::generic_category();
      sub_255A16060(v11, &v12);
      *(a5 + 8) |= 1u;
      result = v12;
      goto LABEL_8;
    }
  }

  *(a5 + 8) &= ~1u;
LABEL_8:
  *a5 = result;
  return result;
}

uint64_t sub_255A191C4(int *a1)
{
  v1 = *a1;
  *a1 = -1;
  return sub_255A19284(v1);
}

void sub_255A191D8(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(qword_27F7DAF68, memory_order_acquire))
  {
    v2 = dword_27F7DAF60;
    if (dword_27F7DAF60 != -1)
    {
LABEL_3:
      *(a1 + 8) &= ~1u;
      *a1 = v2;
      return;
    }
  }

  else
  {
    sub_255A1C680();
    v2 = dword_27F7DAF60;
    if (dword_27F7DAF60 != -1)
    {
      goto LABEL_3;
    }
  }

  v3 = *__error();
  std::generic_category();
  sub_255A16060(v3, &v4);
  *(a1 + 8) |= 1u;
  *a1 = v4;
}

uint64_t sub_255A19284(int a1)
{
  v5 = -1;
  v6 = -1;
  v2 = pthread_sigmask(3, &v6, &v5);
  if (!v2)
  {
    if (close(a1) < 0)
    {
      v2 = *__error();
      v3 = pthread_sigmask(3, &v5, 0);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = pthread_sigmask(3, &v5, 0);
    }

    v2 = v3;
  }

LABEL_6:
  std::generic_category();
  return v2;
}

BOOL sub_255A19338()
{
  v0 = getenv("TERM");
  v1 = v0;
  if (!v0)
  {
    return 0;
  }

  v2 = strlen(v0);
  if (v2 == 6)
  {
    if (*v1 == 2003269987 && *(v1 + 2) == 28265)
    {
      return v1 != 0;
    }

LABEL_22:
    if (*v1 == 1701995379 && *(v1 + 2) == 28261)
    {
      return v1 != 0;
    }

LABEL_26:
    if (*v1 == 1919251576 && v1[4] == 109)
    {
      return v1 != 0;
    }

    v8 = *v1 == 808547446 && v1[4] == 48;
    if (v8 || *v1 == 1953921138)
    {
      return v1 != 0;
    }

    if (*&v1[v2 - 5] == 1869377379 && v1[v2 - 1] == 114)
    {
      return v1 != 0;
    }

    return 0;
  }

  if (v2 == 5)
  {
    if (*v1 == 1970170220 && v1[4] == 120)
    {
      return v1 != 0;
    }

    goto LABEL_26;
  }

  if (v2 != 4)
  {
    if (v2 < 6)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (*v1 != 1769172577 && *v1 != 1953921138)
  {
    return 0;
  }

  return v1 != 0;
}

BOOL sub_255A194E8(int a1)
{
  if (!isatty(a1))
  {
    return 0;
  }

  if (!atomic_load_explicit(&qword_27F7DAF48, memory_order_acquire))
  {
    sub_255A17424(&qword_27F7DAF48, sub_255A19694, sub_255A196E0);
  }

  v2 = qword_27F7DAF48;
  std::mutex::lock(qword_27F7DAF48);
  v3 = set_curterm(0);
  v8 = 0;
  if (setupterm(0, a1, &v8))
  {
    v4 = 0;
  }

  else
  {
    v6 = tigetnum("colors");
    if (v6 < 0)
    {
      v4 = sub_255A19338();
    }

    else
    {
      v4 = v6 != 0;
    }

    v7 = set_curterm(v3);
    del_curterm(v7);
  }

  std::mutex::unlock(v2);
  return v4;
}

std::mutex *sub_255A196E0(std::mutex *result)
{
  if (result)
  {
    std::mutex::~mutex(result);

    JUMPOUT(0x259C46B00);
  }

  return result;
}

void *sub_255A19720(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    sub_255A19938(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    sub_255A19BD0(0xFFFFFFFFuLL);
  }

  if (((2 * *(a1 + 12)) | 1uLL) > a3)
  {
    v6 = 2 * v5 + 1;
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 0xFFFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v8 = *a1;
  v9 = v7 * a4;
  if (*a1 == a2)
  {
    v12 = malloc_type_malloc(v7 * a4, 0x3C0F72FBuLL);
    if (!v12 && (v9 || (v12 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
    {
LABEL_18:
      sub_255A15C58();
    }

    v13 = v12;
    result = memcpy(v12, *a1, *(a1 + 8) * a4);
    *a1 = v13;
    *(a1 + 12) = v7;
  }

  else
  {
    result = malloc_type_realloc(v8, v7 * a4, 0xF4063A16uLL);
    if (!result)
    {
      if (v9)
      {
        goto LABEL_18;
      }

      result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
      if (!result)
      {
        goto LABEL_18;
      }
    }

    *a1 = result;
    *(a1 + 12) = v7;
  }

  return result;
}

void *sub_255A1983C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    sub_255A19BD0(0xFFFFFFFFFFFFFFFFLL);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v6 = 2 * v4 + 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = *a1;
  v8 = v6 * a4;
  if (v7 == a2)
  {
    v11 = malloc_type_malloc(v6 * a4, 0x3C0F72FBuLL);
    if (!v11 && (v8 || (v11 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
    {
LABEL_14:
      sub_255A15C58();
    }

    v12 = v11;
    result = memcpy(v11, *a1, *(a1 + 8) * a4);
    *a1 = v12;
    *(a1 + 16) = v6;
  }

  else
  {
    result = malloc_type_realloc(v7, v6 * a4, 0xF4063A16uLL);
    if (!result)
    {
      if (v8)
      {
        goto LABEL_14;
      }

      result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
      if (!result)
      {
        goto LABEL_14;
      }
    }

    *a1 = result;
    *(a1 + 16) = v6;
  }

  return result;
}

void sub_255A19938(unint64_t a1)
{
  std::to_string(&v13, a1);
  v1 = std::string::insert(&v13, 0, "SmallVector unable to grow. Requested capacity (");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v14, ") is larger than maximum value for size type (");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, 0xFFFFFFFFuLL);
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

  v7 = std::string::append(&v15, p_p, size);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v16, ")");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, &v17);
    exception->__vftable = (MEMORY[0x277D828E0] + 16);
    __cxa_throw(exception, off_279806B98, MEMORY[0x277D825F0]);
  }

LABEL_12:
  operator delete(v13.__r_.__value_.__l.__data_);
  goto LABEL_13;
}

void sub_255A19AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A19B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x255A19B60);
  }

  JUMPOUT(0x255A19B20);
}

void sub_255A19B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x255A19B80);
  }

  JUMPOUT(0x255A19B28);
}

void sub_255A19B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    JUMPOUT(0x255A19BA0);
  }

  JUMPOUT(0x255A19B30);
}

void sub_255A19BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    JUMPOUT(0x255A19BC0);
  }

  JUMPOUT(0x255A19B38);
}

void sub_255A19BD0(unint64_t a1)
{
  std::to_string(&v4, a1);
  v1 = std::string::insert(&v4, 0, "SmallVector capacity unable to grow. Already at maximum size ");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v5.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v5.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, &v5);
  exception->__vftable = (MEMORY[0x277D828E0] + 16);
  __cxa_throw(exception, off_279806B98, MEMORY[0x277D825F0]);
}

void sub_255A19C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A19CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255A19CACLL);
}

uint64_t sub_255A19CD0(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t sub_255A19D50(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

uint64_t sub_255A19DE0(unsigned __int8 **a1, unsigned int a2, unint64_t *a3)
{
  if (a2)
  {
    v5 = a1[1];
    if (!v5)
    {
      return 1;
    }
  }

  else
  {
    a2 = sub_255A19EF0(a1);
    v5 = a1[1];
    if (!v5)
    {
      return 1;
    }
  }

  v6 = 0;
  v7 = *a1;
  *a3 = 0;
  v8 = v5;
  do
  {
    if (*v7 < 48)
    {
      break;
    }

    v9 = *v7;
    if (v9 >= 0x3A)
    {
      if (v9 < 0x61)
      {
        if (v9 - 65 > 0x19)
        {
          break;
        }

        v10 = v9 - 55;
        if (v10 >= a2)
        {
          break;
        }
      }

      else
      {
        if (v9 >= 0x7B)
        {
          break;
        }

        v10 = v9 - 87;
        if (v10 >= a2)
        {
          break;
        }
      }
    }

    else
    {
      v10 = v9 - 48;
      if (v10 >= a2)
      {
        break;
      }
    }

    v11 = v6 * a2 + v10;
    *a3 = v11;
    if (v11 / a2 < v6)
    {
      return 1;
    }

    ++v7;
    v6 = v11;
    --v8;
  }

  while (v8);
  if (v5 == v8)
  {
    return 1;
  }

  result = 0;
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_255A19EF0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 2)
  {
    return 10;
  }

  v3 = *a1;
  if (**a1 == 30768 || *v3 == 22576)
  {
    *a1 = v3 + 2;
    *(a1 + 8) = v1 - 2;
    return 16;
  }

  else if (*v3 == 25136 || *v3 == 16944)
  {
    *a1 = v3 + 2;
    *(a1 + 8) = v1 - 2;
    return 2;
  }

  else if (*v3 == 28464)
  {
    *a1 = v3 + 2;
    *(a1 + 8) = v1 - 2;
    return 8;
  }

  else
  {
    if (*v3 != 48)
    {
      return 10;
    }

    v5 = v3[1];
    v4 = v3 + 1;
    if ((v5 - 48) > 9)
    {
      return 10;
    }

    *a1 = v4;
    *(a1 + 8) = v1 - 1;
    return 8;
  }
}

void sub_255A19FE8(void **a1@<X0>, uint64_t a2@<X8>)
{
  v20[32] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  if (v3 == 6)
  {
    if (v4 == 1)
    {
      v7 = *a1;
      v8 = *MEMORY[0x277D85DE8];

      sub_255A1A294(v7, a2);
      return;
    }

    goto LABEL_10;
  }

  if (v3 != 4)
  {
    v18 = v20;
    v19 = xmmword_255A1E960;
    if (v4 == 1)
    {
      if (v3 > 3)
      {
        if (v3 == 5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v3 == 1)
        {
          goto LABEL_25;
        }

        if (v3 == 3)
        {
          v9 = *a1;
          if (v9)
          {
            v10 = v9;
            v11 = strlen(v9);
            v12 = v10;
            goto LABEL_21;
          }

LABEL_25:
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          v13 = v18;
          if (v18 == v20)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }
    }

LABEL_18:
    sub_255A1A370(a1, &v18);
    a1 = &v18;
LABEL_19:
    if (*a1)
    {
      v11 = a1[1];
      v12 = *a1;
LABEL_21:
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_255A0FD90();
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      *(a2 + 23) = v11;
      if (v11)
      {
        memmove(a2, v12, v11);
      }

      *(a2 + v11) = 0;
      v13 = v18;
      if (v18 == v20)
      {
        goto LABEL_31;
      }

LABEL_30:
      free(v13);
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (v4 != 1)
  {
LABEL_10:
    v18 = v20;
    v19 = xmmword_255A1E960;
    goto LABEL_18;
  }

  v5 = *a1;
  if ((*(*a1 + 23) & 0x80000000) == 0)
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
LABEL_31:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = *v5;
  v16 = v5[1];
  v17 = *MEMORY[0x277D85DE8];

  sub_255A155E0(a2, v15, v16);
}

void sub_255A1A278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9 != v9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A1A294@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v4 = &unk_2867BF0E8;
  v12 = a2;
  sub_255A1AA88(&v4, 0, 0, 0);
  sub_255A1B18C(&v4, a1);
  if (v8 != v6)
  {
    sub_255A1AD68(&v4);
  }

  return sub_255A1A8E4(&v4);
}

void sub_255A1A348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A1A8E4(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255A1A370(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v6 = &unk_2867BF178;
  v14 = a2;
  v3 = sub_255A1AA88(&v6, 0, 0, 0);
  v4 = sub_255A1A570(v3, &v6, *a1, *(a1 + 8), *(a1 + 32));
  sub_255A1A570(v4, &v6, *(a1 + 16), *(a1 + 24), *(a1 + 33));
  return sub_255A1A8E4(&v6);
}

void sub_255A1A414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A1A8E4(va);
  _Unwind_Resume(a1);
}

void sub_255A1A428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A1A8E4(va);
  _Unwind_Resume(a1);
}

void *sub_255A1A43C(uint64_t a1, void *a2)
{
  v4 = sub_255A1A570(a1, a2, *a1, *(a1 + 8), *(a1 + 32));
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 33);

  return sub_255A1A570(v4, a2, v5, v6, v7);
}

const char *sub_255A1A488(uint64_t a1, const char **a2)
{
  if (*(a1 + 33) != 1 || (v3 = *(a1 + 32), v3 < 2))
  {
LABEL_8:
    sub_255A1A370(a1, a2);
    v6 = a2[1];
    if (v6 + 1 > a2[2])
    {
      sub_255A1983C(a2, a2 + 3, (v6 + 1), 1);
      a2[1][*a2] = 0;
    }

    else
    {
      v6[*a2] = 0;
    }

    result = *a2;
    v7 = a2[1];
    return result;
  }

  if (v3 != 4)
  {
    if (v3 == 3)
    {
      v4 = *a1;
      if (!*a1)
      {
        return 0;
      }

      strlen(*a1);
      return v4;
    }

    goto LABEL_8;
  }

  result = *a1;
  if ((result[23] & 0x8000000000000000) != 0)
  {
    v9 = result;
    result = *result;
    v8 = *(v9 + 1);
  }

  return result;
}

void *sub_255A1A570(void *result, void *a2, uint64_t a3, size_t a4, unsigned __int8 a5)
{
  v7 = a5;
  if (a5 == 2)
  {
    do
    {
      result = sub_255A1A570(result, a2, *a3, *(a3 + 8), *(a3 + 32));
      v8 = *(a3 + 33);
      v9 = a3 + 16;
      a3 = *(a3 + 16);
      a4 = *(v9 + 8);
      v7 = v8;
    }

    while (v8 == 2);
  }

  if (v7 > 8)
  {
    if (v7 > 11)
    {
      if (v7 == 12)
      {
        v15 = *a3;
        v16 = a2;

        return sub_255A1AB10(v16, v15);
      }

      if (v7 != 13)
      {
        if (v7 == 14)
        {
          v17 = *a3;

          return sub_255A1AB70(a2, v17);
        }

        return result;
      }

      v13 = *a3;
      v14 = a2;
    }

    else if (v7 == 9)
    {
      v13 = a3;
      v14 = a2;
    }

    else
    {
      if (v7 == 10)
      {
        v15 = *a3;
        v16 = a2;

        return sub_255A1AB10(v16, v15);
      }

      v13 = *a3;
      v14 = a2;
    }

    return sub_255A1AB40(v14, v13);
  }

  if (v7 > 5)
  {
    if (v7 == 6)
    {

      return sub_255A1B18C(a2, a3);
    }

    if (v7 == 7)
    {
      v19 = a2[4];
      if (v19 >= a2[3])
      {

        return sub_255A1AE14(a2, a3);
      }

      else
      {
        a2[4] = v19 + 1;
        *v19 = a3;
      }

      return result;
    }

    v15 = a3;
    v16 = a2;

    return sub_255A1AB10(v16, v15);
  }

  switch(v7)
  {
    case 3:
      if (a3)
      {
        v20 = strlen(a3);
        result = a2[4];
        if (v20 > a2[3] - result)
        {
          v10 = a2;
          v11 = a3;
          v12 = v20;

          return sub_255A1AEE4(v10, v11, v12);
        }

        if (v20)
        {
          result = memcpy(result, a3, v20);
          a2[4] += v20;
        }
      }

      break;
    case 4:
      v18 = *(a3 + 23);
      if (v18 >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      if (v18 >= 0)
      {
        v12 = *(a3 + 23);
      }

      else
      {
        v12 = *(a3 + 8);
      }

      v10 = a2;

      return sub_255A1AEE4(v10, v11, v12);
    case 5:
      result = a2[4];
      if (a4 > a2[3] - result)
      {
        v10 = a2;
        v11 = a3;
        v12 = a4;

        return sub_255A1AEE4(v10, v11, v12);
      }

      if (a4)
      {
        v21 = a3;
        v22 = a4;
        result = memcpy(result, v21, a4);
        a2[4] += v22;
      }

      break;
  }

  return result;
}

uint64_t sub_255A1A8E4(uint64_t result)
{
  *result = &unk_2867BEFC8;
  if (*(result + 56) == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = result;
      MEMORY[0x259C46AE0](v1, 0x1000C8077774924);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255A1A964(uint64_t *a1)
{
  result = (*(*a1 + 88))(a1);
  v4 = a1 + 2;
  v3 = a1[2];
  v5 = a1[4];
  if (result)
  {
    if (v5 != v3)
    {
      a1[4] = v3;
      sub_255A1AD7C(a1);
    }

    operator new[]();
  }

  v6 = v5 - v3;
  if (v5 != v3)
  {
    a1[4] = v3;
    result = sub_255A1AD7C(a1);
  }

  if (*(a1 + 14) == 1)
  {
    result = *v4;
    if (*v4)
    {
      result = MEMORY[0x259C46AE0](result, 0x1000C8077774924, v6);
    }
  }

  *(a1 + 14) = 0;
  a1[3] = 0;
  a1[4] = 0;
  *v4 = 0;
  return result;
}

uint64_t sub_255A1AA88(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 56) == 1)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      v8 = a3;
      MEMORY[0x259C46AE0](v4, 0x1000C8077774924);
      a3 = v8;
      a2 = v6;
      result = v5;
      a4 = v7;
    }
  }

  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  *(result + 32) = a2;
  *(result + 56) = a4;
  return result;
}

uint64_t sub_255A1ABA4(uint64_t a1, uint64_t a2)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24) - *(a1 + 32);
  if (v4 <= 3)
  {
    v7 = 127;
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 < v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = (2 * v4);
    }

    if (v4 >= v7)
    {
      *(a1 + 32) += v7;
      goto LABEL_29;
    }
  }

  v15 = v17;
  v16 = xmmword_255A1EB70;
  do
  {
    v8 = v16;
    if (v16 != v7)
    {
      if (v16 <= v7)
      {
        if (*(&v16 + 1) < v7)
        {
          sub_255A1983C(&v15, v17, v7, 1);
          v8 = v16;
        }

        if (v7 != v8)
        {
          bzero(v15 + v8, v7 - v8);
        }
      }

      *&v16 = v7;
    }

    v9 = (*(*a2 + 8))(a2, v15, v7);
    if (v9 < v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = (2 * v7);
    }

    v12 = v7 >= v11;
    v7 = v11;
  }

  while (!v12);
  sub_255A1AEE4(a1, v15, v11);
  if (v15 != v17)
  {
    free(v15);
  }

LABEL_29:
  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255A1AD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9 != v9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A1AD68(void *a1)
{
  v1 = a1[2];
  v2 = a1[4] - v1;
  a1[4] = v1;
  return sub_255A1AD7C(a1);
}

uint64_t sub_255A1AD7C(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 32) - v2;
    if (v3)
    {
      *(v1 + 32) = v2;
      v4 = a1;
      sub_255A1AD7C(v1, v2, v3);
      a1 = v4;
    }
  }

  v5 = *(*a1 + 72);

  return v5();
}

void *sub_255A1AE14(void *result, char a2)
{
  v2 = result[4];
  if (v2 < result[3])
  {
LABEL_2:
    result[4] = v2 + 1;
    *v2 = a2;
    return result;
  }

  v3 = a2;
  v4 = result[2];
  if (v4)
  {
LABEL_4:
    result[4] = v4;
    v5 = result;
    sub_255A1AD7C(result);
    result = v5;
    v2 = v5[4];
LABEL_5:
    a2 = v3;
    goto LABEL_2;
  }

  while (1)
  {
    v6 = result;
    if (!*(result + 14))
    {
      break;
    }

    sub_255A1A964(result);
    v2 = v6[4];
    if (v2 < v6[3])
    {
      result = v6;
      goto LABEL_5;
    }

    result = v6;
    v4 = v6[2];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  sub_255A1AD7C(result);
  return v6;
}

uint64_t sub_255A1AEE4(uint64_t result, _BYTE *a2, size_t a3)
{
  v3 = *(result + 32);
  v4 = *(result + 24) - v3;
  if (v4 < a3)
  {
    while (1)
    {
      v6 = *(result + 16);
      if (!v6)
      {
        break;
      }

LABEL_16:
      v11 = a3;
      if (v3 == v6)
      {
        v4 *= a3 / v4;
        v7 = a3 - v4;
        v8 = result;
        v9 = a2;
        sub_255A1AD7C(result);
        v3 = *(v8 + 32);
        result = v8;
        v10 = *(v8 + 24) - v3;
        a3 = v7;
        if (v7 <= v10)
        {
          sub_255A1B0D4(v8, &v9[v4], v7);
          return v8;
        }
      }

      else
      {
        v12 = result;
        v9 = a2;
        sub_255A1B0D4(result, a2, v4);
        v13 = v12[4];
        v12[4] = v12[2];
        sub_255A1AD7C(v12);
        result = v12;
        a3 = v11 - v4;
        v3 = v12[4];
        v10 = v12[3] - v3;
      }

      a2 = &v9[v4];
      v4 = v10;
      if (v10 >= a3)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v16 = a2;
      v17 = a3;
      v5 = result;
      if (!*(result + 56))
      {
        sub_255A1AD7C(result);
        return v5;
      }

      sub_255A1A964(result);
      v3 = v5[4];
      v4 = v5[3] - v3;
      if (v4 >= v17)
      {
        break;
      }

      result = v5;
      v6 = v5[2];
      a2 = v16;
      a3 = v17;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    result = v5;
    a2 = v16;
    a3 = v17;
    if (v17 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_2:
    if (a3 > 1)
    {
LABEL_3:
      switch(a3)
      {
        case 2uLL:
LABEL_8:
          v3[1] = a2[1];
          v3 = *(result + 32);
LABEL_23:
          *v3 = *a2;
          goto LABEL_24;
        case 3uLL:
LABEL_7:
          v3[2] = a2[2];
          v3 = *(result + 32);
          goto LABEL_8;
        case 4uLL:
          v3[3] = a2[3];
          v3 = *(result + 32);
          goto LABEL_7;
      }

LABEL_25:
      v14 = result;
      v15 = a3;
      memcpy(v3, a2, a3);
      a3 = v15;
      result = v14;
      goto LABEL_24;
    }
  }

  if (a3)
  {
    if (a3 == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 32) += a3;
  return result;
}

uint64_t sub_255A1B0D4(uint64_t result, _BYTE *a2, int64_t a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
LABEL_11:
      *(result + 32) += a3;
      return result;
    }

    if (a3 == 1)
    {
LABEL_10:
      **(result + 32) = *a2;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
LABEL_7:
        *(*(result + 32) + 1) = a2[1];
        goto LABEL_10;
      case 3:
LABEL_6:
        *(*(result + 32) + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(*(result + 32) + 3) = a2[3];
        goto LABEL_6;
    }
  }

  v3 = result;
  memcpy(*(result + 32), a2, a3);
  result = v3;
  *(v3 + 32) += a3;
  return result;
}

void sub_255A1B1BC(uint64_t a1, uint64_t a2)
{
  v25[16] = *MEMORY[0x277D85DE8];
  sub_255A172C8(*a1, *(a1 + 8), &v23);
  v4 = v23;
  if (v24)
  {
    v5 = v23 + 32;
    v6 = v24 << 6;
    do
    {
      v7 = *(v5 - 8);
      if (v7)
      {
        if (v7 == 2 || (v8 = *(v5 - 1), v8 >= *(a1 + 24)))
        {
          v14 = *(v5 - 3);
          v15 = *(v5 - 2);
          v16 = *(a2 + 32);
          if (v15 > *(a2 + 24) - v16)
          {
            sub_255A1AEE4(a2, v14, v15);
          }

          else if (v15)
          {
            v17 = *(v5 - 2);
            memcpy(v16, v14, v15);
            *(a2 + 32) += v17;
          }
        }

        else
        {
          v9 = *(v5 + 2);
          v10 = *v5;
          v11 = v5[12];
          v19 = *(*(a1 + 16) + 8 * v8);
          v20 = v9;
          v21 = v10;
          v22 = v11;
          v12 = *(v5 + 2);
          v13 = *(v5 + 3);
          sub_255A1BF44(&v19, a2);
        }
      }

      v5 += 64;
      v6 -= 64;
    }

    while (v6);
    v4 = v23;
  }

  if (v4 != v25)
  {
    free(v4);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_255A1B304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16)
{
  if (a14 == &a16)
  {
    _Unwind_Resume(exception_object);
  }

  free(a14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_255A1B334(uint64_t result)
{
  *result = &unk_2867BEFC8;
  if (*(result + 56) == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = result;
      MEMORY[0x259C46AE0](v1, 0x1000C8077774924);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255A1B3A4(uint64_t a1, int a2, int a3, int a4)
{
  if (*(a1 + 40) == 1 && (!sub_255A19640() || (*(*a1 + 48))(a1)))
  {
    if (sub_255A19640())
    {
      v8 = *(a1 + 16);
      if (*(a1 + 32) != v8)
      {
        *(a1 + 32) = v8;
        sub_255A1AD7C(a1);
      }
    }

    if (a2 == 8)
    {
      v9 = sub_255A19670();
      if (!v9)
      {
        return a1;
      }

      goto LABEL_11;
    }

    v9 = sub_255A19648(a2, a3, a4);
    if (v9)
    {
LABEL_11:
      v10 = v9;
      v11 = strlen(v9);
      sub_255A1AEE4(a1, v10, v11);
    }
  }

  return a1;
}

uint64_t sub_255A1B484(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (!sub_255A19640() || (*(*a1 + 48))(a1)))
  {
    if (sub_255A19640())
    {
      v2 = *(a1 + 16);
      if (*(a1 + 32) != v2)
      {
        *(a1 + 32) = v2;
        sub_255A1AD7C(a1);
      }
    }

    v3 = sub_255A19688();
    if (v3)
    {
      v4 = v3;
      v5 = strlen(v3);
      sub_255A1AEE4(a1, v4, v5);
    }
  }

  return a1;
}

uint64_t sub_255A1B52C(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (!sub_255A19640() || (*(*a1 + 48))(a1)))
  {
    if (sub_255A19640())
    {
      v2 = *(a1 + 16);
      if (*(a1 + 32) != v2)
      {
        *(a1 + 32) = v2;
        sub_255A1AD7C(a1);
      }
    }

    v3 = sub_255A1967C();
    if (v3)
    {
      v4 = v3;
      v5 = strlen(v3);
      sub_255A1AEE4(a1, v4, v5);
    }
  }

  return a1;
}

uint64_t sub_255A1B5DC(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4 ^ 1;
  *(a1 + 60) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2867BF040;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 65) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 64) = 0;
    return a1;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 64) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v12, 0, sizeof(v12));
    v13 = 0xFFFFLL;
    v14 = 0;
    v15 = 0;
    v9 = sub_255A18DB0(*(a1 + 60), v12);
    *(a1 + 66) = *&v12[40] == 2;
    *(a1 + 65) = v9 == 0 && v8 != -1;
    if (v9 == 0 && v8 != -1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 88) = v10;
    return a1;
  }
}

uint64_t sub_255A1B71C(uint64_t a1)
{
  *a1 = &unk_2867BF040;
  if ((*(a1 + 60) & 0x80000000) == 0)
  {
    v2 = *(a1 + 16);
    if (*(a1 + 32) != v2)
    {
      *(a1 + 32) = v2;
      sub_255A1AD7C(a1);
    }

    if (*(a1 + 64) == 1)
    {
      v3 = sub_255A19284(*(a1 + 60));
      if (v3)
      {
        *(a1 + 72) = v3;
        *(a1 + 80) = v4;
      }
    }
  }

  if (*(a1 + 72))
  {
    v11 = "IO failure on output stream: ";
    v12 = 259;
    v7 = *(a1 + 72);
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    sub_255A1C3A0(&v11, &v9, v13);
    sub_255A15C58();
  }

  *a1 = &unk_2867BEFC8;
  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      MEMORY[0x259C46AE0](v5, 0x1000C8077774924);
    }
  }

  return a1;
}

void sub_255A1B850(uint64_t a1)
{
  sub_255A1B71C(a1);

  JUMPOUT(0x259C46B00);
}

uint64_t sub_255A1B888(uint64_t a1, char *__buf, unint64_t a3)
{
  v3 = a3;
  *(a1 + 88) += a3;
  while (1)
  {
    v6 = v3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v3;
    result = write(*(a1 + 60), __buf, v6);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    v3 -= result;
LABEL_3:
    if (!v3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_3;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_3;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_3;
  }

  v8 = *__error();
  result = std::generic_category();
  *(a1 + 72) = v8;
  *(a1 + 80) = result;
  return result;
}

off_t sub_255A1B930(int *a1, _BYTE *a2, size_t a3, off_t a4)
{
  v8 = (*(*a1 + 80))(a1);
  v9 = *(a1 + 4);
  v10 = *(a1 + 2);
  v11 = v8 + v9;
  if (v9 != v10)
  {
    *(a1 + 4) = v10;
    sub_255A1AD7C(a1);
  }

  v12 = v11 - v10;
  v13 = lseek(a1[15], a4, 0);
  *(a1 + 11) = v13;
  if (v13 == -1)
  {
    v14 = *__error();
    v15 = std::generic_category();
    *(a1 + 9) = v14;
    *(a1 + 10) = v15;
  }

  sub_255A1AEE4(a1, a2, a3);
  v16 = *(a1 + 2);
  if (*(a1 + 4) != v16)
  {
    *(a1 + 4) = v16;
    sub_255A1AD7C(a1);
  }

  result = lseek(a1[15], v12, 0);
  *(a1 + 11) = result;
  if (result == -1)
  {
    v18 = *__error();
    result = std::generic_category();
    *(a1 + 9) = v18;
    *(a1 + 10) = result;
  }

  return result;
}

uint64_t sub_255A1BA50(int *a1)
{
  if (fstat(a1[15], &v3))
  {
    return 0;
  }

  if (v3.st_mode & 0xF000) == 0x2000 && ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  return v3.st_blksize;
}

BOOL sub_255A1BAF8(uint64_t a1)
{
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 67) & 1;
  }

  v3 = sub_255A194E8(*(a1 + 60));
  if ((*(a1 + 68) & 1) == 0)
  {
    *(a1 + 68) = 1;
  }

  *(a1 + 67) = v3;
  return v3;
}

void *sub_255A1BB5C()
{
  if ((atomic_load_explicit(qword_27F7DAF78, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(qword_27F7DAF78))
  {
    return &unk_27F7DB028;
  }

  sub_255A1B5DC(&unk_27F7DB028, 2u, 0, 1, 0);
  __cxa_atexit(sub_255A1B84C, &unk_27F7DB028, &dword_255A0A000);
  __cxa_guard_release(qword_27F7DAF78);
  return &unk_27F7DB028;
}

void *sub_255A1BC28(void *result, const void *a2, size_t __n)
{
  v4 = result[8];
  v5 = v4[1];
  v6 = v5 + __n;
  if (v4[2] < v6)
  {
    v7 = a2;
    result = sub_255A1983C(result[8], v4 + 3, v6, 1);
    a2 = v7;
    v5 = v4[1];
  }

  if (__n)
  {
    result = memcpy((*v4 + v5), a2, __n);
    v5 = v4[1];
  }

  v4[1] = v5 + __n;
  return result;
}

void sub_255A1BCF0(uint64_t a1)
{
  *a1 = &unk_2867BEFC8;
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      MEMORY[0x259C46AE0](v2, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x259C46B00);
}

void sub_255A1BD7C(void *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = (*(*a1 + 80))(a1) + a2 + a1[4] - a1[2];

  std::string::reserve(v2, v3);
}

uint64_t sub_255A1BDF8(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}