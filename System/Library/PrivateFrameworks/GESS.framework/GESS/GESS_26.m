void sub_24BE93330(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BE93378(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BE929D0(result, a4);
  }

  return result;
}

void sub_24BE933DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE933F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BE9346C(result, a4);
  }

  return result;
}

void sub_24BE93450(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE9346C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_24BE93330(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BE934A8(void ***a1)
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
        v4 -= 12;
        sub_24BE92F34(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *sub_24BE93530(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_24BE939BC();
    }

    v7 = sub_24BE93A14(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_24BE93ACC(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = sub_24BE93B9C(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_BYTE *sub_24BE935D8(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1] == 94;
      sub_24BE94C78();
    }

    sub_24BE95C48();
  }

  return a2;
}

uint64_t sub_24BE936F4(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_24BE9377C(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_24BE937FC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_24BE93854(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x7800000080004F1) == 0;
    if (v4 && (v3 - 123) >= 3)
    {
      sub_24BE93E8C(a1);
    }
  }

  return a2;
}

void *sub_24BE938C4(void *a1)
{
  *a1 = &unk_285F98378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BE93930(void *a1)
{
  *a1 = &unk_285F98378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BE939BC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_24BE93A14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      sub_24BE93E8C(a1);
    }

    if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((v7 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        v5 = v7 + 10 * v5 - 48;
        ++v6;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_24BE94024(a1);
        }
      }

LABEL_13:
      sub_24BE93FCC();
    }
  }

  return a2;
}

unsigned __int8 *sub_24BE93ACC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x63)
  {
    if (v3 == 119)
    {
      goto LABEL_11;
    }

    if (v3 == 115)
    {
LABEL_12:
      sub_24BE94C78();
    }

    if (v3 != 100)
    {
      return a2;
    }

LABEL_10:
    sub_24BE94C78();
  }

  switch(v3)
  {
    case 'D':
      goto LABEL_10;
    case 'S':
      goto LABEL_12;
    case 'W':
LABEL_11:
      sub_24BE94C78();
  }

  return a2;
}

unsigned __int8 *sub_24BE93B9C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!this)
        {
          goto LABEL_67;
        }

        v8 = this;
        v9 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_62;
        }

        if (!this)
        {
          goto LABEL_67;
        }

        v8 = this;
        v9 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_69;
        }

        v10 = a2[1];
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
        {
          goto LABEL_69;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_69;
        }

        v11 = *v4;
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_69;
          }

          v12 = -87;
        }

        v6 = 16 * (v12 + v11);
LABEL_39:
        if (v4 + 1 == a3)
        {
          goto LABEL_69;
        }

        v13 = v4[1];
        v14 = -48;
        if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
        {
          v13 |= 0x20u;
          if ((v13 - 97) >= 6)
          {
            goto LABEL_69;
          }

          v14 = -87;
        }

        if (v4 + 2 != a3)
        {
          v15 = v4[2];
          v16 = -48;
          if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
          {
            goto LABEL_49;
          }

          v15 |= 0x20u;
          if ((v15 - 97) < 6)
          {
            v16 = -87;
LABEL_49:
            if (!this)
            {
              sub_24BE93E8C(a1);
            }

            std::string::operator=(this, v16 + v15 + 16 * (v14 + v6 + v13));
            v4 += 3;
            return v4;
          }
        }

LABEL_69:
        sub_24BE939BC();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_39;
        }

LABEL_62:
        if ((v5 & 0x80) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
        {
          goto LABEL_69;
        }

        v9 = *a2;
        if (this)
        {
          v8 = this;
          goto LABEL_66;
        }

LABEL_67:
        sub_24BE93E8C(a1);
      }

      if (!this)
      {
        goto LABEL_67;
      }

      v8 = this;
      v9 = 11;
    }

LABEL_66:
    std::string::operator=(v8, v9);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        goto LABEL_67;
      }

      v8 = this;
      v9 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_62;
      }

      if (!this)
      {
        goto LABEL_67;
      }

      v8 = this;
      v9 = 10;
    }

    goto LABEL_66;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      goto LABEL_67;
    }

    v8 = this;
    v9 = 0;
    goto LABEL_66;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_69;
    }

    goto LABEL_62;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_69;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_69;
  }

  if (!this)
  {
    sub_24BE93E8C(a1);
  }

  std::string::operator=(this, v7 & 0x1F);
  v4 += 2;
  return v4;
}

void sub_24BE93E8C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_24BE93FCC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_24BE94024(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_24BE94154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_285F98510;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_24BE941E0(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = &unk_285F98378;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_24BE9AE40(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_24BE94220(std::locale *a1)
{
  a1->__locale_ = &unk_285F98510;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_24BE942AC(std::locale *a1)
{
  a1->__locale_ = &unk_285F98510;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE94358(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_24BE943EC(std::locale *a1)
{
  a1->__locale_ = &unk_285F98558;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_24BE94478(std::locale *a1)
{
  a1->__locale_ = &unk_285F98558;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE94524(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_24BE9456C(void *a1)
{
  *a1 = &unk_285F98378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BE945D8(void *a1)
{
  *a1 = &unk_285F98378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE94664(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_24BE946AC(std::locale *a1)
{
  a1->__locale_ = &unk_285F985E8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_24BE94738(std::locale *a1)
{
  a1->__locale_ = &unk_285F985E8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE947E4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_24BE94900(std::locale *a1)
{
  a1->__locale_ = &unk_285F98630;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_24BE9498C(std::locale *a1)
{
  a1->__locale_ = &unk_285F98630;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE94A38(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_24BE94AC4(void *a1)
{
  *a1 = &unk_285F98378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BE94B30(void *a1)
{
  *a1 = &unk_285F98378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C2548B0);
}

unsigned int *sub_24BE94BBC(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_24BE93FCC();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_24BE94D0C(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_24BC8E768(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_24BC8E768(a1 + 40, &v7);
}

uint64_t sub_24BE94DA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_285F986C0;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_24BE94EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_24BC955F4(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_24BE8F058(&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_24BE94F84(std::locale *a1)
{
  sub_24BE957EC(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BE94FBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v35 = 0;
    v36 = *(a1 + 168);
    goto LABEL_80;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_57;
  }

  v111 = *v4;
  v6 = v4[1];
  v112 = v4[1];
  if (*(a1 + 169) == 1)
  {
    v111 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v112 = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_24BE9598C(a1 + 16, &v111, &v113, &__p);
  if ((v110 & 0x80000000) == 0)
  {
    if (v110)
    {
      goto LABEL_8;
    }

LABEL_57:
    v36 = 0;
    v35 = 1;
    goto LABEL_58;
  }

  v37 = v109;
  operator delete(__p);
  if (!v37)
  {
    goto LABEL_57;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v111 != *(v10 - 1) || v112 != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_215;
  }

LABEL_17:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    p_p = &__p;
    sub_24BE958D4(a1 + 16, &v111, &v113);
    v13 = *(a1 + 88);
    v14 = v110;
    v15 = *(a1 + 96) - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v105 = v110;
      if (v110 >= 0)
      {
        v17 = v110;
      }

      else
      {
        v17 = v109;
      }

      if (v110 < 0)
      {
        p_p = __p;
      }

      v18 = v16 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v19 = (v13 + 47);
      v20 = 1;
      v21 = 1;
      while (1)
      {
        v22 = *(v19 - 24);
        if (v22 >= 0)
        {
          v23 = *(v19 - 24);
        }

        else
        {
          v23 = *(v19 - 39);
        }

        if (v22 >= 0)
        {
          v24 = (v19 - 47);
        }

        else
        {
          v24 = *(v19 - 47);
        }

        if (v23 >= v17)
        {
          v25 = v17;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(p_p, v24, v25);
        v27 = v17 >= v23;
        if (v26)
        {
          v27 = v26 >= 0;
        }

        if (v27)
        {
          v28 = *v19;
          if (v28 >= 0)
          {
            v29 = *v19;
          }

          else
          {
            v29 = *(v19 - 15);
          }

          if (v28 >= 0)
          {
            v30 = (v19 - 23);
          }

          else
          {
            v30 = *(v19 - 23);
          }

          if (v17 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v17;
          }

          v32 = memcmp(v30, p_p, v31);
          v33 = v29 >= v17;
          if (v32)
          {
            v33 = v32 >= 0;
          }

          if (v33)
          {
            break;
          }
        }

        v21 = v20++ < v16;
        v19 += 48;
        if (!--v18)
        {
          v34 = 0;
          goto LABEL_164;
        }
      }

      v34 = 5;
LABEL_164:
      v14 = v105;
    }

    else
    {
      v21 = 0;
      v34 = 0;
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      v85 = 1;
      goto LABEL_195;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v85 = 0;
    goto LABEL_197;
  }

  sub_24BE95B38(a1 + 16, &v111, &v113, &__p);
  v86 = *(a1 + 136);
  v87 = v110;
  v88 = *(a1 + 144) - v86;
  if (v88)
  {
    v89 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    if (v110 >= 0)
    {
      v90 = v110;
    }

    else
    {
      v90 = v109;
    }

    if (v110 >= 0)
    {
      v91 = &__p;
    }

    else
    {
      v91 = __p;
    }

    if (v89 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    }

    v93 = 1;
    v94 = 1;
    while (1)
    {
      v95 = *(v86 + 23);
      v96 = v95;
      if ((v95 & 0x80u) != 0)
      {
        v95 = *(v86 + 8);
      }

      if (v90 == v95)
      {
        v97 = v96 >= 0 ? v86 : *v86;
        if (!memcmp(v91, v97, v90))
        {
          break;
        }
      }

      v94 = v93++ < v89;
      v86 += 24;
      if (!--v92)
      {
        goto LABEL_192;
      }
    }

    v85 = 1;
    v34 = 5;
    if (v87 < 0)
    {
LABEL_193:
      operator delete(__p);
    }
  }

  else
  {
    v94 = 0;
LABEL_192:
    v34 = 0;
    v85 = 0;
    if (v87 < 0)
    {
      goto LABEL_193;
    }
  }

  if (!v94)
  {
LABEL_197:
    if (v111 < 0)
    {
      v101 = *(a1 + 164);
    }

    else
    {
      v98 = *(a1 + 160);
      v99 = *(*(a1 + 24) + 16);
      v100 = *(v99 + 4 * v111);
      if (((v100 & v98) != 0 || v111 == 95 && (v98 & 0x80) != 0) && (v112 & 0x8000000000000000) == 0 && ((*(v99 + 4 * v112) & v98) != 0 || (v98 & 0x80) != 0 && v112 == 95))
      {
        goto LABEL_215;
      }

      v101 = *(a1 + 164);
      if ((v100 & v101) != 0 || v111 == 95 && (v101 & 0x80) != 0)
      {
LABEL_214:
        v36 = v85;
LABEL_216:
        v35 = 2;
        goto LABEL_80;
      }
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v112) & v101) == 0)
      {
        v36 = 1;
        if (v112 != 95 || (v101 & 0x80) == 0)
        {
          goto LABEL_216;
        }
      }

      goto LABEL_214;
    }

LABEL_215:
    v36 = 1;
    goto LABEL_216;
  }

LABEL_195:
  v35 = 2;
  v36 = v85;
  if (v34)
  {
    goto LABEL_80;
  }

LABEL_58:
  v38 = **(a2 + 16);
  v111 = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v38) = (*(**(a1 + 24) + 40))(*(a1 + 24), v38);
    v111 = v38;
  }

  v39 = *(a1 + 40);
  v40 = *(a1 + 48) - v39;
  if (v40)
  {
    if (v40 <= 1)
    {
      v40 = 1;
    }

    do
    {
      v41 = *v39++;
      if (v41 == v38)
      {
        goto LABEL_79;
      }
    }

    while (--v40);
  }

  v42 = *(a1 + 164);
  if (v42 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v38 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v38) & v42) == 0)
    {
      v43 = (v38 == 95) & (v42 >> 7);
    }

    else
    {
      LOBYTE(v43) = 1;
    }

    v44 = *(a1 + 72);
    v45 = memchr(*(a1 + 64), v38, v44 - *(a1 + 64));
    v46 = !v45 || v45 == v44;
    v47 = !v46;
    if ((v43 & 1) == 0 && !v47)
    {
LABEL_79:
      v36 = 1;
      goto LABEL_80;
    }
  }

  v50 = *(a1 + 88);
  v51 = *(a1 + 96);
  if (v50 != v51)
  {
    if (*(a1 + 170) == 1)
    {
      sub_24BE958D4(a1 + 16, &v111, &v112);
      v50 = *(a1 + 88);
      v51 = *(a1 + 96);
    }

    else
    {
      v110 = 1;
      LOWORD(__p) = v38;
    }

    v52 = v51 - v50;
    if (v52)
    {
      v103 = v110;
      v106 = v35;
      v102 = v36;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      if (v110 >= 0)
      {
        v54 = v110;
      }

      else
      {
        v54 = v109;
      }

      if (v110 >= 0)
      {
        v55 = &__p;
      }

      else
      {
        v55 = __p;
      }

      if (v53 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      }

      v57 = (v50 + 47);
      v58 = 1;
      v59 = 1;
      while (1)
      {
        v60 = *(v57 - 24);
        if (v60 >= 0)
        {
          v61 = *(v57 - 24);
        }

        else
        {
          v61 = *(v57 - 39);
        }

        if (v60 >= 0)
        {
          v62 = (v57 - 47);
        }

        else
        {
          v62 = *(v57 - 47);
        }

        if (v61 >= v54)
        {
          v63 = v54;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v55, v62, v63);
        v65 = v54 >= v61;
        if (v64)
        {
          v65 = v64 >= 0;
        }

        if (v65)
        {
          v66 = *v57;
          if (v66 >= 0)
          {
            v67 = *v57;
          }

          else
          {
            v67 = *(v57 - 15);
          }

          if (v66 >= 0)
          {
            v68 = (v57 - 23);
          }

          else
          {
            v68 = *(v57 - 23);
          }

          if (v54 >= v67)
          {
            v69 = v67;
          }

          else
          {
            v69 = v54;
          }

          v70 = memcmp(v68, v55, v69);
          v71 = v67 >= v54;
          if (v70)
          {
            v71 = v70 >= 0;
          }

          if (v71)
          {
            break;
          }
        }

        v59 = v58++ < v53;
        v57 += 48;
        if (!--v56)
        {
          v36 = v102;
          goto LABEL_128;
        }
      }

      v36 = 1;
LABEL_128:
      v35 = v106;
      if ((v103 & 0x80) == 0)
      {
LABEL_130:
        if (v59)
        {
          goto LABEL_80;
        }

        goto LABEL_131;
      }
    }

    else
    {
      v59 = 0;
      if ((v110 & 0x80) == 0)
      {
        goto LABEL_130;
      }
    }

    operator delete(__p);
    goto LABEL_130;
  }

LABEL_131:
  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_157;
  }

  v72 = &__p;
  sub_24BE95B38(a1 + 16, &v111, &v112, &__p);
  v73 = *(a1 + 136);
  v74 = *(a1 + 144) - v73;
  if (!v74)
  {
    v79 = 0;
    if ((v110 & 0x80) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  v104 = v110;
  v107 = v35;
  v75 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  if (v110 >= 0)
  {
    v76 = v110;
  }

  else
  {
    v76 = v109;
  }

  if (v110 < 0)
  {
    v72 = __p;
  }

  if (v75 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  }

  v78 = 1;
  v79 = 1;
  while (1)
  {
    v80 = *(v73 + 23);
    v81 = v80;
    if ((v80 & 0x80u) != 0)
    {
      v80 = *(v73 + 8);
    }

    if (v76 == v80)
    {
      v82 = v81 >= 0 ? v73 : *v73;
      if (!memcmp(v72, v82, v76))
      {
        break;
      }
    }

    v79 = v78++ < v75;
    v73 += 24;
    if (!--v77)
    {
      goto LABEL_154;
    }
  }

  v36 = 1;
LABEL_154:
  v35 = v107;
  if (v104 < 0)
  {
LABEL_155:
    operator delete(__p);
  }

LABEL_156:
  if (v79)
  {
    goto LABEL_80;
  }

LABEL_157:
  v83 = *(a1 + 160);
  if ((v111 & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v111) & v83) != 0)
  {
    goto LABEL_79;
  }

  v84 = (v83 >> 7) & 1;
  if (v111 != 95)
  {
    LOBYTE(v84) = 0;
  }

  v36 |= v84;
LABEL_80:
  if (*(a1 + 168) == (v36 & 1))
  {
    v48 = 0;
    v49 = -993;
  }

  else
  {
    *(a2 + 16) += v35;
    v48 = *(a1 + 8);
    v49 = -995;
  }

  *a2 = v49;
  *(a2 + 80) = v48;
}

std::locale *sub_24BE957EC(std::locale *a1)
{
  a1->__locale_ = &unk_285F986C0;
  v7 = a1 + 17;
  sub_24BC955F4(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_24BE8F058(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_24BE958D4(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_24BC927D8(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BE95970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE9598C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24BC927D8(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_24BE95B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE95B38(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24BC927D8(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BE95C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE95C48()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_24BE95CA0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = sub_24BE96210(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = sub_24BE96054(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = sub_24BE962A4(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v13 = sub_24BE964A4(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = sub_24BE9636C(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          sub_24BE96A80(v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      sub_24BE94D0C(v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = sub_24BE962A4(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = sub_24BE964A4(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = sub_24BE9636C(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  sub_24BE96680(v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_24BE95FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BE96054(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    sub_24BE95C48();
  }

  sub_24BE96BB4(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    sub_24BE96B5C();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  sub_24BE96D60(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    sub_24BC8DCA8((a4 + 136), __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      sub_24BE96A80(a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        sub_24BE96B5C();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      sub_24BE94D0C(a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_24BE961D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BE96210(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    sub_24BE95C48();
  }

  v9 = sub_24BE96EC8(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    sub_24BE96E70();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *sub_24BE962A4(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_24BE95C48();
  }

  sub_24BE96BB4(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_24BE96B5C();
  }

  return v6 + 2;
}

unsigned __int8 *sub_24BE9636C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_24BE939BC();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        sub_24BE94D0C(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_24BE96F9C(a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return sub_24BE93B9C(a1, a2, a3, this);
}

unsigned __int8 *sub_24BE964A4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_43:
    sub_24BE939BC();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        goto LABEL_40;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        goto LABEL_40;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      goto LABEL_40;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      goto LABEL_40;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v5 = 13;
          goto LABEL_31;
        }

        goto LABEL_40;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        goto LABEL_40;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

LABEL_40:
        sub_24BE93E8C(a1);
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_43;
  }

  v7 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v7 = *v9 + 8 * v7 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v9 + 8 * v7 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v7 = v8;
      }
    }
  }

  if (!this)
  {
    sub_24BE93E8C(a1);
  }

  std::string::operator=(this, v7);
  return v9;
}

void sub_24BE96680(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_24BE97198(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_24BE97198(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_24BE97038((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_24BE97250();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_24BE97038((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_24BE96A80(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_24BE97324(v6, v7);
}

void sub_24BE96B5C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_24BE96BB4(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24BC927D8(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_24BE96D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE96D60(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24BC927D8(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BE96E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE96E70()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t sub_24BE96EC8(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  sub_24BC927D8(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_24BE96F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE96F9C(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    sub_24BC8E768(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_24BC8E768(a1 + 64, &v7);
}

void **sub_24BE97038(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_24BC8E01C();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_24BE8EDE4(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = result[1] - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_24BE972A8(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 5) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = (v4 + 48);
  }

  v3[1] = v8;
  return result;
}

void sub_24BE97198(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_24BC927D8(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BE97234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE97250()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void **sub_24BE972A8(void **a1)
{
  sub_24BE972DC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BE972DC(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_24BE8F000(v4, i - 48);
  }
}

void sub_24BE97324(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      sub_24BC8E01C();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_24BC92280(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
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

void *sub_24BE973F4(void *a1)
{
  *a1 = &unk_285F98378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BE97460(void *a1)
{
  *a1 = &unk_285F98378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE974EC(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_24BE9751C(void *a1)
{
  *a1 = &unk_285F98378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BE97588(void *a1)
{
  *a1 = &unk_285F98378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE97614(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_24BE977DC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            sub_24BE97878();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void sub_24BE97878()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_24BE978D0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_24BE9792C(void *a1)
{
  sub_24BE97A80(a1);

  JUMPOUT(0x24C2548B0);
}

unsigned int *sub_24BE97964(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_24BE97B34(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_24BE97A14(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_24BE97B34(result, a3);
  }

  return result;
}

void sub_24BE97A48(void *a1)
{
  sub_24BE97A80(a1);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BE97A80(void *a1)
{
  *a1 = &unk_285F987F8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_285F98378;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_24BE97B34(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24BE97B9C(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_24BE97BB4(void *a1)
{
  sub_24BE97A80(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE97BF8(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_24BE97C34(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_24BE97C48()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_24BE97CA0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_24BE97D3C(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = (*(a1 + 28) + 1);

  return sub_24BE97E40(a1, v8, a3);
}

_BYTE *sub_24BE97D3C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_24BE98004(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      sub_24BE936F4(a1);
      v10 = *(a1 + 28);
      do
      {
        v11 = v9;
        v12 = sub_24BE97CA0(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        sub_24BE91B88();
      }

      v7 = v12 + 2;
      sub_24BE9377C(a1);
    }

    else
    {
      v13 = sub_24BE982F8(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *sub_24BE97E40(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 42)
    {
      sub_24BE9764C();
    }

    if (a2 + 1 != a3 && v4 == 92 && a2[1] == 123)
    {
      v7 = a2 + 2;
      v13 = 0;
      v8 = sub_24BE977DC(a1, a2 + 2, a3, &v13);
      if (v8 == v7)
      {
        goto LABEL_24;
      }

      if (v8 != a3)
      {
        v9 = v8 + 1;
        v10 = *v8;
        if (v10 == 44)
        {
          v12 = -1;
          v11 = sub_24BE977DC(a1, v9, a3, &v12);
          if (v11 != a3 && v11 + 1 != a3 && *v11 == 92 && v11[1] == 125)
          {
            if (v12 == -1 || v12 >= v13)
            {
              sub_24BE9764C();
            }

LABEL_24:
            sub_24BE97878();
          }
        }

        else if (v9 != a3 && v10 == 92 && *v9 == 125)
        {
          sub_24BE9764C();
        }
      }

      sub_24BE978D0();
    }
  }

  return a2;
}

_BYTE *sub_24BE98004(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
    {
      sub_24BE93E8C(a1);
    }

    v8 = sub_24BE98148(a1, a2, a3);
    v9 = v8;
    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_12;
    }

    return v9;
  }

  v9 = sub_24BE98148(a1, a2, a3);
  if (v9 != a2)
  {
    return v9;
  }

LABEL_12:

  return sub_24BE935D8(a1, a2, a3);
}

_BYTE *sub_24BE98148(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v3 = a2[1];
    if ((v3 - 36) <= 0x3A && ((1 << (v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_24BE93E8C(a1);
    }
  }

  return a2;
}

void *sub_24BE981C0(void *a1)
{
  *a1 = &unk_285F98378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BE9822C(void *a1)
{
  *a1 = &unk_285F98378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE982B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_24BE982F8(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_24BE94024(a1);
    }

    sub_24BE93FCC();
  }

  return 0;
}

unsigned __int8 *sub_24BE98358(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_24BE983B8(a1, a2, a3);
  if (v6 == a2)
  {
    sub_24BE97C48();
  }

  do
  {
    v7 = v6;
    v6 = sub_24BE983B8(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_24BE983B8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_24BE984FC(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        sub_24BE919D0();
      case '(':
        sub_24BE936F4(a1);
        v11 = *(a1 + 28);
        ++*(a1 + 36);
        v12 = sub_24BE90914(a1, v9 + 1, a3);
        if (v12 == a3 || (v13 = v12, *v12 != 41))
        {
          sub_24BE91B88();
        }

        sub_24BE9377C(a1);
        --*(a1 + 36);
        v9 = v13 + 1;
        break;
      case '^':
        sub_24BE9194C();
    }
  }

  if (v9 == a2)
  {
    return v9;
  }

  v14 = (*(a1 + 28) + 1);

  return sub_24BE91648(a1, v9, a3);
}

unsigned __int8 *sub_24BE984FC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_24BE985F0(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_24BE9867C(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_24BE935D8(a1, a2, a3);
}

unsigned __int8 *sub_24BE985F0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36);
    if (v4 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v3 - 36)) & 0x5800000080004D1) != 0)
    {
      return a2;
    }

    if (v4 == 5)
    {
      if (*(a1 + 36))
      {
        return a2;
      }
    }

    else
    {
LABEL_8:
      if ((v3 - 123) < 2)
      {
        return a2;
      }
    }

    sub_24BE93E8C(a1);
  }

  return a2;
}

unsigned __int8 *sub_24BE9867C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    sub_24BE93E8C(a1);
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = sub_24BE982F8(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return sub_24BE964A4(a1, v4, a3, 0);
}

std::string *sub_24BE98754(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  v6 = a6;
  v9 = a2;
  sub_24BE98DF0(v29, a2, a3, a4, a6);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *__p = 0u;
  memset(v20, 0, sizeof(v20));
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  if (sub_24BE98910(v29, v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (v9 != a3)
      {
        std::string::push_back(a1, *v9++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!sub_24BE98910(v29, v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v30[6];
        v15 = v30[7];
        while (v14 != v15)
        {
          std::string::push_back(a1, *v14++);
        }
      }

      a1 = sub_24BE989AC(v30, a1, a5, &a5[v11], v6);
      v13 = v30[9];
      v12 = v30[10];
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      sub_24BE98C0C(v29);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v13 != v12)
      {
        std::string::push_back(a1, *v13++);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  return a1;
}

void sub_24BE988D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BE98910(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && sub_24BE9A988(v4, v7) == 0;
  }

  return v10;
}

std::string *sub_24BE989AC(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v29 = *v6;
      if (v29 == 92)
      {
        v33 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v29 = *v33;
          v34 = v29 - 48;
          if ((v29 - 48) <= 9)
          {
            v35 = &(*a1)[3 * (v29 - 48)];
            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v34)
            {
              v35 = (a1 + 3);
            }

            v36 = *v35;
            v37 = *(v35 + 8);
            while (v36 != v37)
            {
              v38 = *v36++;
              std::string::push_back(this, v38);
            }

            goto LABEL_54;
          }

          ++v6;
        }
      }

      else if (v29 == 38)
      {
        v30 = **a1;
        v31 = (*a1)[1];
        while (v30 != v31)
        {
          v32 = *v30++;
          std::string::push_back(this, v32);
        }

        goto LABEL_53;
      }

      std::string::push_back(this, v29);
LABEL_53:
      v33 = v6;
LABEL_54:
      v6 = v33 + 1;
      if (v33 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 == 36 && v10 != a4)
      {
        v9 = *v10;
        if (v9 > 0x26)
        {
          if (v9 == 39)
          {
            v26 = a1[9];
            v27 = a1[10];
            while (v26 != v27)
            {
              v28 = *v26++;
              std::string::push_back(this, v28);
            }

            goto LABEL_10;
          }

          if (v9 == 96)
          {
            v15 = a1[6];
            v16 = a1[7];
            while (v15 != v16)
            {
              v17 = *v15++;
              std::string::push_back(this, v17);
            }

            goto LABEL_10;
          }
        }

        else
        {
          if (v9 == 36)
          {
            goto LABEL_9;
          }

          if (v9 == 38)
          {
            v12 = **a1;
            v13 = (*a1)[1];
            while (v12 != v13)
            {
              v14 = *v12++;
              std::string::push_back(this, v14);
            }

            goto LABEL_10;
          }
        }

        LODWORD(v18) = v9 - 48;
        if (v18 <= 9)
        {
          v18 = v18;
          if (v6 + 2 != a4)
          {
            v19 = v6[2];
            v20 = v19 - 48;
            v21 = v19 + 10 * v18 - 48;
            if (v20 > 9)
            {
              v10 = v6 + 1;
            }

            else
            {
              v18 = v21;
              v10 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v18)
          {
            v22 = (a1 + 3);
          }

          else
          {
            v22 = &(*a1)[3 * v18];
          }

          v23 = *v22;
          v24 = *(v22 + 8);
          while (v23 != v24)
          {
            v25 = *v23++;
            std::string::push_back(this, v25);
          }

          goto LABEL_10;
        }

        LOBYTE(v9) = 36;
      }

      v10 = v6;
LABEL_9:
      std::string::push_back(this, v9);
LABEL_10:
      v6 = v10 + 1;
    }

    while (v10 + 1 != a4);
  }

  return this;
}

uint64_t sub_24BE98C0C(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = v4 | 0x800;
  *(v3 - 8) = v4 | 0x800;
  if (*(v3 + 8) == v2)
  {
    v6 = (v3 + 24);
  }

  else
  {
    v6 = v2;
  }

  v7 = v6[1];
  if (*v6 != v7)
  {
    v8 = v6[1];
LABEL_6:
    *(a1 + 24) = v5 | 0x80;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    *__p = 0u;
    memset(v17, 0, sizeof(v17));
    v11 = sub_24BE98EF4(v9, v8, v10, __p, v5 | 0x80u);
    sub_24BE990C0(v3, v8, v10, __p, (v5 & 0x800) != 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v11)
    {
      *(a1 + 80) = v7;
      *(a1 + 96) = *(a1 + 88) != v7;
      return a1;
    }

    v2 = *v3;
    goto LABEL_16;
  }

  v12 = *(a1 + 8);
  if (v12 == v7)
  {
LABEL_16:
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    *(a1 + 128) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 25) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 136) = 0;
    return a1;
  }

  v13 = *(a1 + 16);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  v14 = sub_24BE98EF4(v13, v7, v12, __p, v4 | 0x860u);
  sub_24BE990C0(v3, v7, v12, __p, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    v5 = *(a1 + 24);
    goto LABEL_6;
  }

  return a1;
}

void sub_24BE98DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE98DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0u;
  v9 = a1 + 32;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  sub_24BE98EF4(a4, a2, a3, __p, a5);
  sub_24BE990C0(v9, a2, a3, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_24BE98EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE98EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_24BE92448(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_24BE99244(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 1;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_24BE9286C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_24BE99244(a1, v11, a3, a4, v9 | 0x80u, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_24BE9286C(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
      }

      while (++v11 != a3);
    }

    v12 = (a4 + 24);
    sub_24BE9286C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_24BE99244(a1, v11, a3, a4, v9 | 0x80u, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_24BE990C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_24BE9A7D0(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_24BE99244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_24BE924BC(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_24BE997B4(a1, a2, a3, a4, a5, a6);
  }

  return sub_24BE99264(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24BE99264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  sub_24BE99CA0(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_24BE92B8C((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      sub_24BE92BBC();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_24BE99E2C(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        sub_24BE99DA4(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            sub_24BE92F34(&v59, v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_24BE99DA4(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      sub_24BE93378(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      sub_24BE933F8(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      sub_24BE99CA0(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_24BE92C14();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  sub_24BE9A3BC(&v59);
  return v49;
}

uint64_t sub_24BE997B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  *v50 = 0;
  memset(&v50[8], 0, 32);
  v51 = 0u;
  memset(v52, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *&v48 = a3;
  *(&v48 + 1) = a3;
  v49 = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  sub_24BE92A74(&v53, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v54;
  *(v54 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_24BE92B50(v13 - 8, *(a1 + 28), &v48);
  sub_24BE92B8C(v54 - 5, *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v54;
  *(v54 - 2) = v6;
  v18 = a3 - a2;
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      sub_24BE92BBC();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          sub_24BE93378(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          sub_24BE933F8(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          sub_24BE92A74(&v53, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_24BE92C14();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v54 - 12;
        sub_24BE92F34(&v53, v54 - 12);
        v54 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = v24 - *(v17 - 11);
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v50 = *v22;
        *&v50[16] = v27;
        if (v50 != v22)
        {
          sub_24BE9A520(&v50[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          sub_24BE9A6AC(v52, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v52[3] + 5) = *(v17 - 11);
        v52[3] = v28;
        v14 = v26;
      }

      v29 = v54;
      if (v14 == v18)
      {
        v30 = v53;
        while (v29 != v30)
        {
          v29 -= 12;
          sub_24BE92F34(&v53, v29);
        }

        v54 = v30;
        v15 = 1;
        v14 = a3 - a2;
      }

      else
      {
        v34 = v54 - 12;
        sub_24BE92F34(&v53, v54 - 12);
        v54 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v54;
  }

  while (v53 != v54);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = a2 + v14;
  *(v35 + 16) = 1;
  if (v51 != *&v50[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *&v50[32]) >> 3);
    v37 = (*&v50[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (*&v50[32])
  {
    *&v51 = *&v50[32];
    operator delete(*&v50[32]);
  }

  *v50 = &v53;
  sub_24BE934A8(v50);
  return v41;
}

void sub_24BE99C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_24BE92B0C(&a11);
  sub_24BE92B0C(&a27);
  a27 = v27 - 120;
  sub_24BE934A8(&a27);
  _Unwind_Resume(a1);
}

__n128 sub_24BE99CA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_24BE99F20(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_24BE99DA4(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_24BE92F34(a1, (*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_24BE9A0F4(a1, 1);
}

int64x2_t sub_24BE99E2C(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_24BE9A16C(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_24BFEEC70);
  a1[2] = result;
  return result;
}

void *sub_24BE99F20(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
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
    sub_24BCAD8CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BD413CC(a1, &v10);
}

void sub_24BE9A0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BE9A0F4(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
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

const void **sub_24BE9A16C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_24BCAD8CC(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_24BD414D4(a1, v11);
}

void sub_24BE9A370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BE9A3BC(void *a1)
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
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_24BE92F34(a1, v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
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
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_24BCA10D8(a1);
}

_BYTE *sub_24BE9A520(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_24BE929D0(a1, v11);
    }

    sub_24BC8E01C();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_24BE9A6AC(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BE9346C(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_24BE9A7D0(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BE9A80C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_24BE9A80C(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    if (v9)
    {
      sub_24BE92A1C(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t sub_24BE9A988(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_24BC927D8(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    sub_24BC927D8(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_24BE9AAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE9AB84(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, char *a8, uint64_t *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F98948;
  sub_24BE9ACB0(&v11, (a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void sub_24BE9AC34(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

double sub_24BE9ACB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, char *a9, uint64_t *a10)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v11 = *a3;
  v12 = *(a3 + 2);
  v30 = *a4;
  v34[0] = a4[1];
  *(v34 + 7) = *(a4 + 15);
  v13 = *(a4 + 23);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v15 = *a5;
  v14 = a5[1];
  *&v33[7] = *(a5 + 15);
  v32 = 0;
  *v33 = v14;
  v16 = *(a5 + 23);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v17 = *a6;
  v18 = *(a6 + 2);
  v19 = *a7;
  v20 = *(a7 + 2);
  v21 = *a8;
  v22 = a8[1];
  v23 = v22 - *a8;
  v31 = 0uLL;
  sub_24BE902A8(&v31, v21, v22, 0xAAAAAAAAAAAAAAABLL * v23);
  v24 = *a9;
  v25 = *a10;
  *(a2 + 16) = v12;
  *a2 = &unk_285F9EC18;
  *(a2 + 8) = v11;
  v26 = *v33;
  *(a2 + 24) = v15;
  *(a2 + 32) = v26;
  *(a2 + 39) = *&v33[7];
  *(a2 + 47) = v16;
  v27 = v34[0];
  *(a2 + 48) = v30;
  *(a2 + 56) = v27;
  *(a2 + 63) = *(v34 + 7);
  *(a2 + 71) = v13;
  *(a2 + 72) = v17;
  *(a2 + 80) = v18;
  *(a2 + 84) = v19;
  *(a2 + 92) = v20;
  result = *&v31;
  *(a2 + 96) = v31;
  *(a2 + 112) = v32;
  *(a2 + 120) = v24;
  *(a2 + 124) = v25;
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BE9AE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(v11);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_24BE9AE64@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t **a8@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  v87 = a4;
  v86 = a5;
  if ((*result)[1] == **result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[fftn] Requires array with at least one dimension.");
    goto LABEL_71;
  }

  v9 = *a3;
  v10 = a3[1];
  if ((a2[1] - *a2) != (v10 - *a3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[fftn] Shape and axes have different sizes.");
LABEL_71:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v11 = result;
  if (v9 != v10)
  {
    v12 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    while (1)
    {
      v13 = *v9;
      if ((v13 & 0x80000000) != 0)
      {
        v13 += ((*v11)[1] - **v11) >> 2;
      }

      if (v12 >= v85)
      {
        v14 = v83;
        v15 = v12 - v83;
        v16 = (v12 - v83) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          sub_24BC8E01C();
        }

        v18 = v85 - v83;
        if ((v85 - v83) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_24BC91F60(&v83, v19);
        }

        v20 = v16;
        v21 = (8 * v16);
        v22 = &v21[-v20];
        *v21 = v13;
        v12 = (v21 + 1);
        memcpy(v22, v14, v15);
        v23 = v83;
        v83 = v22;
        v84 = v12;
        v85 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v12 = v13;
        v12 += 8;
      }

      v84 = v12;
      if (++v9 == v10)
      {
        sub_24BE9C01C(&v81, v83, v12);
        if (v82[1] == (a3[1] - *a3) >> 2)
        {
          if ((*(v81 + 28) & 0x80000000) == 0)
          {
            v24 = v82[0];
            if (v82[0])
            {
              do
              {
                v25 = v24;
                v24 = *(v24 + 8);
              }

              while (v24);
            }

            else
            {
              v27 = v82;
              do
              {
                v25 = v27[2];
                v28 = *v25 == v27;
                v27 = v25;
              }

              while (v28);
            }

            v29 = *(v25 + 28);
            v30 = *v11;
            if (v29 < ((*v11)[1] - **v11) >> 2)
            {
              for (i = *a2; i != a2[1]; ++i)
              {
                if (*i <= 0)
                {
                  sub_24BCE1268(&v78);
                  v59 = sub_24BC95264(&v78, "[fftn] Invalid FFT output size requested ", 41);
                  sub_24BF02DB8(v59, a2);
                  v60 = __cxa_allocate_exception(0x10uLL);
                  std::stringbuf::str();
                  std::logic_error::logic_error(v60, &v77);
                  v60->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v60, &unk_285F94708, MEMORY[0x277D82610]);
                }
              }

              v78 = 0;
              v79 = 0;
              v80 = 0;
              sub_24BCC9A1C(&v78, *v30, v30[1], (v30[1] - *v30) >> 2);
              v33 = v83;
              v32 = v84;
              if (v84 != v83)
              {
                v34 = (v84 - v83) >> 3;
                v35 = *a2;
                v36 = v78;
                if (v34 <= 1)
                {
                  v34 = 1;
                }

                do
                {
                  v38 = *v35++;
                  v37 = v38;
                  v39 = *v33;
                  v33 += 8;
                  v36[v39] = v37;
                  --v34;
                }

                while (v34);
              }

              if (v87)
              {
                v40 = v78;
                if (v86 == 1)
                {
                  *(v78 + *(v32 - 1)) = *(a2[1] - 4) / 2 + 1;
                }
              }

              else
              {
                v40 = v78;
              }

              v41 = *v11;
              if (v79 == v40)
              {
                v43 = 0;
                v42 = 0;
              }

              else
              {
                v42 = 0;
                v43 = 0;
                v44 = (v79 - v40) >> 2;
                v45 = *v41;
                if (v44 <= 1)
                {
                  v44 = 1;
                }

                do
                {
                  v47 = *v40;
                  v40 += 4;
                  v46 = v47;
                  v48 = *v45++;
                  v42 |= v46 > v48;
                  v43 |= v46 < v48;
                  --v44;
                }

                while (v44);
              }

              v49 = v11[1];
              *&v76 = *v11;
              *(&v76 + 1) = v49;
              if (v49)
              {
                atomic_fetch_add_explicit(v49 + 1, 1uLL, memory_order_relaxed);
              }

              if (v43)
              {
                v50 = (v41[1] - *v41) >> 2;
                LODWORD(v71) = 0;
                sub_24BD0E524(v75, v50);
                __p = 0;
                v73 = 0;
                v74 = 0;
                sub_24BCC9A1C(&__p, v78, v79, (v79 - v78) >> 2);
                sub_24BEA8020(&v76, v75, &__p, a6, a7, &v77);
                v51 = *&v77.__r_.__value_.__l.__data_;
                *&v77.__r_.__value_.__l.__data_ = 0uLL;
                v52 = *(&v76 + 1);
                v76 = v51;
                if (v52)
                {
                  sub_24BC9EC78(v52);
                }

                sub_24BE7F218(&v77);
                if (__p)
                {
                  v73 = __p;
                  operator delete(__p);
                }

                if (v75[0])
                {
                  v75[1] = v75[0];
                  operator delete(v75[0]);
                }
              }

              if (v42)
              {
                v53 = (*v11)[7] & 0xFFFFFFFFFFLL;
                sub_24BEA51FC(&v78);
              }

              memset(&v77, 0, sizeof(v77));
              sub_24BCC9A1C(&v77, v78, v79, (v79 - v78) >> 2);
              if (v87)
              {
                v54 = *(v84 - 1);
                v55 = v77.__r_.__value_.__r.__words[0];
                if (v86 == 1)
                {
                  *(v77.__r_.__value_.__r.__words[0] + 4 * v54) = *(a2[1] - 4);
                  v56 = &qword_24BFBF988;
                }

                else
                {
                  *(v77.__r_.__value_.__r.__words[0] + 4 * v54) = *(v77.__r_.__value_.__r.__words[0] + 4 * v54) / 2 + 1;
                  v56 = &qword_24BFF0468;
                }
              }

              else
              {
                v56 = &qword_24BFF0468;
                v55 = v77.__r_.__value_.__r.__words[0];
              }

              v57 = *v56;
              memset(v70, 0, sizeof(v70));
              sub_24BCC9A1C(v70, v55, v77.__r_.__value_.__l.__size_, (v77.__r_.__value_.__l.__size_ - v55) >> 2);
              sub_24BF02A98(a6, a7);
              sub_24BE9C154();
            }
          }

          sub_24BCE1268(&v78);
          v61 = sub_24BC95264(&v78, "[fftn] Invalid axis received for array with ", 44);
          v62 = MEMORY[0x24C2543E0](v61, ((*v11)[1] - **v11) >> 2);
          sub_24BC95264(v62, " dimensions.", 12);
          v63 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(v63, &v77);
          v63->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v63, &unk_285F94708, MEMORY[0x277D82610]);
        }

        sub_24BCE1268(&v78);
        v65 = sub_24BC95264(&v78, "[fftn] Duplicated axis received ", 32);
        sub_24BF02DB8(v65, a3);
        v66 = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(v66, &v77);
        v66->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v66, &unk_285F94708, MEMORY[0x277D82610]);
      }
    }
  }

  v26 = result[1];
  *a8 = *result;
  a8[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  v58 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BE9B764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50)
{
  if (a48 < 0)
  {
    operator delete(__p);
    if ((v51 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a49);
      sub_24BCC8A84(v52 - 192, *(v52 - 184));
      v54 = *(v52 - 168);
      if (v54)
      {
        *(v52 - 160) = v54;
        operator delete(v54);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v51)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v50);
  goto LABEL_6;
}

void sub_24BE9B940(uint64_t **a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t **a7@<X8>)
{
  __src = 0;
  v32 = 0;
  v33 = 0;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
    v13 = 0;
  }

  else
  {
    do
    {
      v11 = sub_24BD1EEAC(a1, *v9);
      v12 = v32;
      if (v32 >= v33)
      {
        v14 = __src;
        v15 = v32 - __src;
        v16 = (v32 - __src) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          sub_24BC8E01C();
        }

        v18 = v33 - __src;
        if ((v33 - __src) >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_24BC92E0C(&__src, v19);
        }

        v20 = (4 * v16);
        v21 = &v20[-((v32 - __src) >> 2)];
        *v20 = v11;
        v13 = (v20 + 1);
        memcpy(v21, v14, v15);
        v22 = __src;
        __src = v21;
        v32 = v13;
        v33 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v32 = v11;
        v13 = (v12 + 4);
      }

      v32 = v13;
      ++v9;
    }

    while (v9 != v10);
  }

  if (a3 && (a4 & 1) != 0)
  {
    *(v13 - 4) = 2 * *(v13 - 4) - 2;
  }

  __p = 0;
  v29 = 0;
  v30 = 0;
  sub_24BCC9A1C(&__p, __src, v13, (v13 - __src) >> 2);
  sub_24BE9AE64(a1, &__p, a2, a3, a4, a5, a6, a7);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v32 = __src;
    operator delete(__src);
  }
}

void sub_24BE9BAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE9BB38(uint64_t **a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  sub_24BC94F74(&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v20)
  {
    v12 = 0;
    v13 = (v20 - __p - 4) >> 2;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v16 = __p + 8;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v18, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v18, *&v14).i8[2])
      {
        *(v16 - 1) = v12 + 1;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_24BFBC5E0)))).i32[1])
      {
        *v16 = v12 + 2;
        v16[1] = v12 + 3;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v15 != v12);
  }

  sub_24BE9B940(a1, &__p, a2, a3, a4, a5, a6);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void sub_24BE9BC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE9BC9C(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_24BCC9A1C(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  sub_24BE9AE64(a1, &__p, a3, 0, 0, a4, a5, a6);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_24BE9BD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE9BD7C(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_24BCC9A1C(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  sub_24BE9AE64(a1, &__p, a3, 0, 1, a4, a5, a6);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_24BE9BE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE9BE5C(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_24BCC9A1C(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  sub_24BE9AE64(a1, &__p, a3, 1, 0, a4, a5, a6);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_24BE9BEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE9BF3C(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_24BCC9A1C(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  sub_24BE9AE64(a1, &__p, a3, 1, 1, a4, a5, a6);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_24BE9BFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE9C01C(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a2 != a3)
  {
    sub_24BE9C09C();
  }

  return result;
}

uint64_t sub_24BE9C1E0(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4, char *a5)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F989A8;
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *a4;
  v9 = *a5;
  *(a1 + 48) = 0;
  v10 = a1 + 48;
  *(v10 - 8) = v7;
  *(v10 - 24) = &unk_285F9CCB0;
  *(v10 - 16) = v6;
  *(v10 + 8) = 0u;
  sub_24BD7E680(v10, *a3, a3[1], (a3[1] - *a3) >> 3);
  *(a1 + 72) = v8;
  *(a1 + 73) = v9;
  return a1;
}

void sub_24BE9C2B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F989A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE9C334(void *a1, void **a2)
{
  __p[0] = *a2;
  v4 = sub_24BCA3BD0(a1, __p);
  if (v4)
  {
    return (v4 + 3);
  }

  if (a1[3] != -1)
  {
    operator new();
  }

  v9 = *a2;
  sub_24BE9D268(__p, 0, 0, 0, 0, 0);
  sub_24BE9D314(a1, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_24BE9C334(a1, a2);
}

void sub_24BE9C4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE9C538()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v0 = 0u;
  v1 = 0u;
  v2 = 1065353216;
  operator new();
}

void sub_24BE9C658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_24BCA3B84(&a9);
  sub_24BE9D5E4(&a14);
  _Unwind_Resume(a1);
}

void sub_24BE9C67C()
{
  v2[4] = *MEMORY[0x277D85DE8];
  memset(v1, 0, sizeof(v1));
  memset(v0, 0, sizeof(v0));
  v2[0] = &unk_285F98A88;
  v2[1] = v1;
  v2[2] = v0;
  v2[3] = v2;
  sub_24BE9C538();
}

void sub_24BE9C920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  *(v30 - 128) = v29;
  sub_24BCC961C((v30 - 128));
  sub_24BE9D1E0(&a23);
  a23 = &a29;
  sub_24BCC961C(&a23);
  a23 = (v30 - 152);
  sub_24BCC961C(&a23);
  _Unwind_Resume(a1);
}

void *sub_24BE9C9A4(void *result, void ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = result;
    do
    {
      v6 = v5[1];
      v7 = sub_24BE9C334(*v5, v2);
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = *(v7 + 8);
      }

      sub_24BC95264(v6, v9, v10);
      v11 = sub_24BC95264(v5[1], " [", 2);
      v12 = sub_24BF02DB8(v11, *v2);
      v13 = sub_24BC95264(v12, ", ", 2);
      v14 = *(*v2 + 7);
      v16 = v14;
      v17 = BYTE4(v14);
      v15 = sub_24BF031F4(v13, &v16);
      result = sub_24BC95264(v15, "]", 1);
      if (v2 != a2[1] - 2)
      {
        result = sub_24BC95264(v5[1], ", ", 2);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_24BE9CAB0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 224);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_24BE9CDA0(a2, ((*(v4 + 208) - *(v4 + 200)) >> 4) + 1);
  sub_24BE9CE30(a2, a2[1], *(*a1 + 200), (*(*a1 + 200) + 16 * v5), v5);
  sub_24BCC3A64(a2, a1);
  v6 = (16 * v5 + *(*a1 + 200));
  return sub_24BE9CE30(a2, a2[1], v6, *(*a1 + 208), (*(*a1 + 208) - v6) >> 4);
}

void sub_24BE9CB58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BE9CB78(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = sub_24BC95264(a1, "digraph {", 9);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(v12, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(v12);
  std::ostream::put();
  std::ostream::flush();
  *&v12[0].__locale_ = 0u;
  v13 = 0u;
  v14 = 1065353216;
  v5 = *a2;
  v6 = *(a2 + 8);
  while (v5 != v6)
  {
    *&v10[0] = *v5;
    sub_24BE9D664(v12, v10);
    v5 += 2;
  }

  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  v15 = 0;
  operator new();
}

void sub_24BE9CD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21)
{
  sub_24BE9E080(v21 - 88);
  sub_24BE9D1E0(&a9);
  sub_24BCA3B84(&a15);
  sub_24BCA3B84(&a21);
  _Unwind_Resume(a1);
}

void *sub_24BE9CDA0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BCB53E8(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BE9CE1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC98C0(va);
  _Unwind_Resume(a1);
}

void *sub_24BE9CE30(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v8) >> 4)
  {
    v10 = *a1;
    v11 = a5 + ((v8 - *a1) >> 4);
    if (v11 >> 60)
    {
      sub_24BC8E01C();
    }

    v12 = a2 - v10;
    v13 = v9 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v27[4] = a1;
    if (v14)
    {
      sub_24BCB53E8(a1, v14);
    }

    v24 = (16 * v15);
    v27[0] = 0;
    v27[1] = 16 * v15;
    v27[3] = 0;
    do
    {
      *v24 = *a3;
      v25 = a3[1];
      v24[1] = v25;
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      v24 += 2;
      a3 += 2;
    }

    while (v24 != (16 * v15 + 16 * a5));
    v27[2] = 16 * v15 + 16 * a5;
    v5 = sub_24BE9D078(a1, v27, v5);
    sub_24BCC98C0(v27);
    return v5;
  }

  v16 = (v8 - a2) >> 4;
  if (v16 >= a5)
  {
    sub_24BE9D014(a1, a2, v8, &a2[2 * a5]);
    v23 = &a3[2 * a5];
    v22 = a3;
    goto LABEL_20;
  }

  v17 = (a3 + v8 - a2);
  v18 = a1[1];
  if (v17 != a4)
  {
    v18 = a1[1];
    v19 = (a3 + v8 - a2);
    v20 = v18;
    do
    {
      *v20 = *v19;
      v21 = v19[1];
      v20[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      v19 += 2;
      v20 += 2;
      v18 += 2;
    }

    while (v19 != a4);
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    sub_24BE9D014(a1, a2, v8, &a2[2 * a5]);
    v22 = a3;
    v23 = v17;
LABEL_20:
    sub_24BD0D910(v27, v22, v23, v5);
  }

  return v5;
}

void sub_24BE9D000(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC98C0(va);
  _Unwind_Resume(a1);
}

void *sub_24BE9D014(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_24BE9D17C(&v11, a2, v7, v6);
}

uint64_t sub_24BE9D078(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      v9 += 16;
    }

    while (v9 != v7);
    v10 = a3;
    do
    {
      v10 = sub_24BE7F218(v10) + 16;
    }

    while (v10 != v7);
  }

  v11 = *a1;
  v12 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v13 = v12 + v11 - a3;
  if (v11 != a3)
  {
    v14 = v11;
    v15 = (v12 + v11 - a3);
    do
    {
      *v15++ = *v14;
      *v14 = 0;
      *(v14 + 8) = 0;
      v14 += 16;
    }

    while (v14 != a3);
    do
    {
      v11 = sub_24BE7F218(v11) + 16;
    }

    while (v11 != a3);
  }

  a2[1] = v13;
  v16 = *a1;
  *a1 = v13;
  a1[1] = v16;
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return v6;
}

void *sub_24BE9D17C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_24BC9EC78(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_24BE9D1E0(uint64_t a1)
{
  sub_24BE9D21C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BE9D21C(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_BYTE *sub_24BE9D268(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  v7 = result;
  if (a6 > 0x16)
  {
    operator new();
  }

  result[23] = a6;
  while (a3 != a5)
  {
    v8 = *--a3;
    *v7++ = v8;
  }

  *v7 = 0;
  return result;
}

void *sub_24BE9D314(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24BE9D580(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_24BE9D5E4(uint64_t a1)
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

void *sub_24BE9D664(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

__n128 sub_24BE9D90C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F989F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double sub_24BE9D944(uint64_t a1, unint64_t *a2)
{
  v17 = *a2;
  if (!sub_24BCA3BD0(*(a1 + 8), &v17))
  {
    sub_24BE9DAE4(*(a1 + 8), &v17);
    v5 = *a2;
    v6 = *(*a2 + 200);
    v7 = *(*a2 + 208);
    if (v6 != v7)
    {
      do
      {
        v8 = *(a1 + 8);
        v9 = *v6;
        v6 += 2;
        v16[0] = v9;
        sub_24BE9D664(v8, v16);
      }

      while (v6 != v7);
      v5 = *a2;
    }

    v10 = *(v5 + 176);
    v11 = *(v5 + 184);
    if (v10 != v11)
    {
      do
      {
        v12 = *(*(a1 + 16) + 24);
        if (!v12)
        {
          sub_24BCA1F3C();
        }

        (*(*v12 + 48))(v12, v10);
        v10 += 16;
      }

      while (v10 != v11);
      v5 = *a2;
    }

    v13 = *(a1 + 24);
    v14 = a2[1];
    v16[0] = v5;
    v16[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v13 + 24);
    if (!v15)
    {
      sub_24BCA1F3C();
    }

    (*(*v15 + 48))(v15, v16);
    *&result = sub_24BE7F218(v16).n128_u64[0];
  }

  return result;
}

void sub_24BE9DA84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE9DA98(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F98A68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BE9DAE4(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_24BE9DD10(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BE9DF68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

__n128 sub_24BE9DFE8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F98A88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE9E034(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F98AF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE9E080(uint64_t a1)
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

__n128 sub_24BE9E17C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F98B18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BE9E1B4(uint64_t a1, __int128 *a2)
{
  if (*(*a2 + 64))
  {
    sub_24BC95264(*(a1 + 16), "{ ", 2);
    MEMORY[0x24C2543E0](*(a1 + 16), *(*a2 + 64));
    sub_24BC95264(*(a1 + 16), " [label =", 10);
    (*(**(*a2 + 64) + 40))(*(*a2 + 64), *(a1 + 16));
    sub_24BC95264(*(a1 + 16), ", shape=rectangle]", 19);
    v4 = sub_24BC95264(*(a1 + 16), "; }", 3);
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v5 = std::locale::use_facet(&v46, MEMORY[0x277D82680]);
    (v5->__vftable[2].~facet_0)(v5, 10);
    std::locale::~locale(&v46);
    std::ostream::put();
    std::ostream::flush();
    v6 = *(*a2 + 176);
    v7 = *(*a2 + 184);
    if (v6 != v7)
    {
      v8 = MEMORY[0x277D82680];
      do
      {
        v9 = *(a1 + 16);
        v10 = sub_24BE9C334(*(a1 + 24), v6);
        v11 = *(v10 + 23);
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = *(v10 + 23);
        }

        else
        {
          v13 = *(v10 + 8);
        }

        v14 = sub_24BC95264(v9, v12, v13);
        v15 = sub_24BC95264(v14, " -> ", 4);
        v16 = MEMORY[0x24C2543E0](v15, *(*a2 + 64));
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(&v46, v8);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(&v46);
        std::ostream::put();
        std::ostream::flush();
        v6 += 2;
      }

      while (v6 != v7);
    }

    sub_24BE9CAB0(a2, &v46);
    locale = v46.__locale_;
    v19 = v47;
    if (v46.__locale_ != v47)
    {
      v20 = MEMORY[0x277D82680];
      do
      {
        sub_24BC95264(*(a1 + 16), "{ ", 2);
        v21 = *(a1 + 32);
        v48.__locale_ = *locale;
        if (sub_24BCA3BD0(v21, &v48))
        {
          sub_24BC95264(*(a1 + 16), "rank=sink; ", 11);
        }

        v22 = *(a1 + 16);
        v23 = sub_24BE9C334(*(a1 + 24), locale);
        v24 = *(v23 + 23);
        if (v24 >= 0)
        {
          v25 = v23;
        }

        else
        {
          v25 = *v23;
        }

        if (v24 >= 0)
        {
          v26 = *(v23 + 23);
        }

        else
        {
          v26 = *(v23 + 8);
        }

        sub_24BC95264(v22, v25, v26);
        v27 = sub_24BC95264(*(a1 + 16), "; }", 3);
        std::ios_base::getloc((v27 + *(*v27 - 24)));
        v28 = std::locale::use_facet(&v48, v20);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(&v48);
        std::ostream::put();
        std::ostream::flush();
        if (*(*a2 + 64))
        {
          v29 = MEMORY[0x24C2543E0](*(a1 + 16));
          v30 = sub_24BC95264(v29, " -> ", 4);
          v31 = sub_24BE9C334(*(a1 + 24), locale);
          v32 = *(v31 + 23);
          if (v32 >= 0)
          {
            v33 = v31;
          }

          else
          {
            v33 = *v31;
          }

          if (v32 >= 0)
          {
            v34 = *(v31 + 23);
          }

          else
          {
            v34 = *(v31 + 8);
          }

          v35 = sub_24BC95264(v30, v33, v34);
          std::ios_base::getloc((v35 + *(*v35 - 24)));
          v36 = std::locale::use_facet(&v48, v20);
          (v36->__vftable[2].~facet_0)(v36, 10);
          std::locale::~locale(&v48);
          std::ostream::put();
          std::ostream::flush();
        }

        locale += 2;
      }

      while (locale != v19);
    }

    v48.__locale_ = &v46;
    sub_24BCC961C(&v48);
  }

  else
  {
    v37 = *(a1 + 8);
    v46.__locale_ = *a2;
    sub_24BE9D664(v37, &v46);
    v38 = sub_24BC95264(*(a1 + 16), "{ rank=source; ", 15);
    v39 = sub_24BE9C334(*(a1 + 24), a2);
    v40 = *(v39 + 23);
    if (v40 >= 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = *v39;
    }

    if (v40 >= 0)
    {
      v42 = *(v39 + 23);
    }

    else
    {
      v42 = *(v39 + 8);
    }

    v43 = sub_24BC95264(v38, v41, v42);
    v44 = sub_24BC95264(v43, "; }", 3);
    std::ios_base::getloc((v44 + *(*v44 - 24)));
    v45 = std::locale::use_facet(&v46, MEMORY[0x277D82680]);
    (v45->__vftable[2].~facet_0)(v45, 10);
    std::locale::~locale(&v46);
    std::ostream::put();
    std::ostream::flush();
  }
}

uint64_t sub_24BE9E73C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F98B78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE9E788(unsigned int *a1)
{
  if (sub_24BE80D54(a1, &dword_24BFF086C))
  {
    v2 = *a1 | (*(a1 + 4) << 32);
    v3 = (*(a1 + 5) << 40) | (*(a1 + 7) << 56);
  }

  else
  {
    v2 = sub_24BE80C80(a1, &qword_24BFBF988);
    v3 = 0;
  }

  return v3 | v2 & 0xFFFFFFFFFFLL;
}

double sub_24BE9E7F4(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 8) - *a2 < 9uLL)
    {

      sub_24BE9E9BC(a1, a2, a3, a4, a5);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[linalg::norm] Received too many axes for norm.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BEA69DC(a1, a4, a5, v16);
  v10 = 0;
  v11[1] = 0;
  v12 = 0;
  v11[0] = 0;
  sub_24BCC9910(v11, &v10, v11, 1uLL);
  *__p = *v11;
  v14 = v12;
  v11[1] = 0;
  v12 = 0;
  v11[0] = 0;
  v15 = 1;
  sub_24BE9E7F4(v16, __p, a3, a4, a5);
  if (v15 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  *&result = sub_24BE7F218(v16).n128_u64[0];
  return result;
}

void sub_24BE9E9BC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*a1)[7];
  v9 = v8;
  v10 = BYTE4(v8);
  if (sub_24BE80D54(&v9, dword_24BFF0870))
  {
    sub_24BEB0080(a1, a4, a5);
  }

  sub_24BEB273C(a1, a4, a5);
}

void sub_24BE9EB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_24BE7F218(&a15);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  _Unwind_Resume(a1);
}

void sub_24BE9EB6C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (*(a2 + 24))
  {
    if (&__p == a2)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      sub_24BCA2A30(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
      v11 = __p;
      v12 = v23;
    }
  }

  else
  {
    sub_24BC8CAB0(&__p, ((*a1)[1] - **a1) >> 2);
    v11 = __p;
    v12 = v23;
    if (__p == v23)
    {
      v12 = __p;
    }

    else
    {
      v13 = 0;
      v14 = (v23 - __p - 4) >> 2;
      v15 = vdupq_n_s64(v14);
      v16 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v17 = __p + 8;
      do
      {
        v18 = vdupq_n_s64(v13);
        v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_24BFBC5B0)));
        if (vuzp1_s16(v19, *v15.i8).u8[0])
        {
          *(v17 - 2) = v13;
        }

        if (vuzp1_s16(v19, *&v15).i8[2])
        {
          *(v17 - 1) = v13 + 1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_24BFBC5E0)))).i32[1])
        {
          *v17 = v13 + 2;
          v17[1] = v13 + 3;
        }

        v13 += 4;
        v17 += 4;
      }

      while (v16 != v13);
    }
  }

  v20 = (v12 - v11) >> 2;
  if (v20 != 2)
  {
    if (v20 == 1)
    {
      sub_24BE9EDCC(a1, &__p, a3, a4, a5, a6);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[linalg::norm] Received too many axes for norm.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE9F18C(a1, &__p, a6, a3, a4, a5);
}

void sub_24BE9EDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  __cxa_free_exception(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BE9EDCC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = (*a1)[7];
  v13 = v12;
  v14 = BYTE4(v12);
  sub_24BE9E788(&v13);
  if (a6 == 0.0)
  {
    sub_24BE80CFC();
    sub_24BCD0924();
  }

  if (a6 == 1.0)
  {
    sub_24BEB0080(a1, a4, a5);
  }

  if (a6 == 2.0)
  {
    sub_24BE9E9BC(a1, a2, a3, a4, a5);
  }

  if (a6 == INFINITY)
  {
    sub_24BEB0080(a1, a4, a5);
  }

  if (a6 == -INFINITY)
  {
    sub_24BEB0080(a1, a4, a5);
  }

  sub_24BEB0080(a1, a4, a5);
}

void sub_24BE9F0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a23);
  sub_24BE7F218(&a21);
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a13);
  _Unwind_Resume(a1);
}

void sub_24BE9F18C(uint64_t **a1, unsigned int **a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*a1)[7];
  LODWORD(v20[0]) = v11;
  BYTE4(v20[0]) = BYTE4(v11);
  sub_24BE9E788(v20);
  v12 = *a2;
  v13 = **a2;
  v14 = *(v12 + 4);
  if (a3 == -1.0)
  {
    sub_24BEB0080(a1, a5, a6);
  }

  if (a3 == 1.0)
  {
    sub_24BEB0080(a1, a5, a6);
  }

  if (a3 == INFINITY)
  {
    sub_24BEB0080(a1, a5, a6);
  }

  if (a3 == -INFINITY)
  {
    sub_24BEB0080(a1, a5, a6);
  }

  if (a3 != 2.0 && a3 != -2.0)
  {
    sub_24BCE1268(v20);
    v15 = sub_24BC95264(v20, "[linalg::norm] Invalid ord ", 27);
    v16 = MEMORY[0x24C2543A0](v15, a3);
    sub_24BC95264(v16, " for matrix norm.", 17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v19);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v18 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v18, "[linalg::norm] Singular value norms are not implemented.");
  __cxa_throw(v18, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BE9F548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
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

void sub_24BE9F60C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (*(a3 + 24))
  {
    if (&v31 == a3)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      sub_24BCA2A30(&v31, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      v11 = v31;
      v12 = v32;
    }
  }

  else
  {
    sub_24BC8CAB0(&v31, ((*a1)[1] - **a1) >> 2);
    v11 = v31;
    v12 = v32;
    if (v31 == v32)
    {
      v12 = v31;
    }

    else
    {
      v13 = 0;
      v14 = (v32 - v31 - 4) >> 2;
      v15 = vdupq_n_s64(v14);
      v16 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v17 = (v31 + 8);
      do
      {
        v18 = vdupq_n_s64(v13);
        v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_24BFBC5B0)));
        if (vuzp1_s16(v19, *v15.i8).u8[0])
        {
          *(v17 - 2) = v13;
        }

        if (vuzp1_s16(v19, *&v15).i8[2])
        {
          *(v17 - 1) = v13 + 1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_24BFBC5E0)))).i32[1])
        {
          *v17 = v13 + 2;
          v17[1] = v13 + 3;
        }

        v13 += 4;
        v17 += 4;
      }

      while (v16 != v13);
    }
  }

  if (v12 - v11 == 8)
  {
    sub_24BE9F900(a1, a2, &v31, a4, a5, a6);
  }

  sub_24BCE1268(v30);
  v20 = sub_24BC95264(v30, "[linalg::norm] Norm '", 21);
  v21 = *(a2 + 23);
  if (v21 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  if (v21 >= 0)
  {
    v23 = *(a2 + 23);
  }

  else
  {
    v23 = *(a2 + 8);
  }

  v24 = sub_24BC95264(v20, v22, v23);
  v25 = sub_24BC95264(v24, "' only supported for matrices,", 30);
  v26 = sub_24BC95264(v25, " but received ", 14);
  v27 = MEMORY[0x24C2543E0](v26, (v32 - v31) >> 2);
  sub_24BC95264(v27, " axis/axes.", 11);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &v29);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BE9F89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a16);
      v20 = *(v18 - 88);
      if (v20)
      {
        *(v18 - 80) = v20;
        operator delete(v20);
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

void sub_24BE9F900(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8) == 1 && **a2 == 102)
    {
      goto LABEL_14;
    }

    if (*(a2 + 8) != 3)
    {
      goto LABEL_18;
    }

    v6 = *a2;
  }

  else
  {
    if (*(a2 + 23) == 1)
    {
      if (*a2 != 102)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v6 = a2;
    if (*(a2 + 23) != 3)
    {
      goto LABEL_18;
    }
  }

  v7 = *v6;
  v8 = v6[2];
  if (v7 != 29286 || v8 != 111)
  {
LABEL_18:
    if (sub_24BD315F0(a2, "nuc"))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[linalg::norm] Nuclear norm not yet implemented.");
      __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
    }

    sub_24BCE1268(v19);
    v12 = sub_24BC95264(v19, "[linalg::norm] Invalid ord value '", 34);
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    v16 = sub_24BC95264(v12, v14, v15);
    sub_24BC95264(v16, "' for matrix norm.", 18);
    v17 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v17, &v18);
    v17->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v17, &unk_285F94708, MEMORY[0x277D82610]);
  }

LABEL_14:

  sub_24BE9E9BC(a1, a3, a4, a5, a6);
}

void sub_24BE9FAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
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

void sub_24BE9FB28(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v30[27] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*(*a1 + 14) == 10)
  {
    v7 = *v4;
    v8 = v4[1];
    v9 = v8 - *v4;
    if (v9 > 4)
    {
      if (*(v7 + v9 - 4) == *(v7 + v9 - 8))
      {
        memset(v28, 0, sizeof(v28));
        sub_24BCC9A1C(v28, v7, v8, v9 >> 2);
        v10 = *a1;
        memset(v29, 0, sizeof(v29));
        sub_24BCC9A1C(v29, *v10, v10[1], (v10[1] - *v10) >> 2);
        memset(v22, 0, sizeof(v22));
        sub_24BCE220C(v22, v28, v30, 2uLL);
        v11 = (*a1)[7];
        v24 = v11;
        v25 = BYTE4(v11);
        v26 = v11;
        v27 = BYTE4(v11);
        memset(__p, 0, sizeof(__p));
        sub_24BCE2380(__p, &v24, v28, 2uLL);
        sub_24BF02A98(a2, a3);
        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[linalg::qr] Support for non-square matrices NYI.");
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }

    sub_24BCE1268(v28);
    v17 = sub_24BC95264(v28, "[linalg::qr] Arrays must have >= 2 dimensions. Received array with ", 67);
    v18 = MEMORY[0x24C2543E0](v17, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v18, " dimensions.", 12);
    v19 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v19, &v23);
    v19->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v19, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v28);
  v12 = sub_24BC95264(v28, "[linalg::qr] Arrays must type float32. Received array ", 54);
  v13 = sub_24BC95264(v12, "with type ", 10);
  v14 = (*a1)[7];
  LODWORD(v23.__r_.__value_.__l.__data_) = v14;
  v23.__r_.__value_.__s.__data_[4] = BYTE4(v14);
  v15 = sub_24BF031F4(v13, &v23);
  sub_24BC95264(v15, ".", 1);
  v16 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v16, &v23);
  v16->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v16, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BE9FFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a34);
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

void sub_24BEA00DC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v46[24] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*(*a1 + 14) == 10)
  {
    v7 = *v4;
    v8 = v4[1];
    v9 = (v8 - *v4) >> 2;
    v10 = v9 - 1;
    if (v9 > 1)
    {
      v11 = v9 - 2;
      v12 = *(v7 + 4 * (v9 - 2));
      v13 = *(v7 + 4 * v10);
      memset(&v36, 0, sizeof(v36));
      sub_24BCC9A1C(&v36, v7, v8, v9);
      v14 = v36.__r_.__value_.__r.__words[0];
      *(v36.__r_.__value_.__r.__words[0] + 4 * v11) = v12;
      *(v14 + 4 * v10) = v12;
      v15 = *a1;
      v34 = 0;
      v35 = 0;
      v33 = 0;
      sub_24BCC9A1C(&v33, *v15, v15[1], (v15[1] - *v15) >> 2);
      v34 -= 4;
      if (v13 >= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      *(v33 + v11) = v16;
      v17 = *a1;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      sub_24BCC9A1C(&v30, *v17, v17[1], (v17[1] - *v17) >> 2);
      v18 = v30;
      *(v30 + v11) = v13;
      v18[v10] = v13;
      memset(v43, 0, sizeof(v43));
      sub_24BCC9A1C(v43, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_, (v36.__r_.__value_.__l.__size_ - v36.__r_.__value_.__r.__words[0]) >> 2);
      memset(v44, 0, sizeof(v44));
      sub_24BCC9A1C(v44, v33, v34, (v34 - v33) >> 2);
      memset(v45, 0, sizeof(v45));
      sub_24BCC9A1C(v45, v30, v31, (v31 - v30) >> 2);
      memset(v29, 0, sizeof(v29));
      sub_24BCE220C(v29, v43, v46, 3uLL);
      v19 = (*a1)[7];
      v37 = v19;
      v38 = BYTE4(v19);
      v39 = v19;
      v40 = BYTE4(v19);
      v41 = v19;
      v42 = BYTE4(v19);
      memset(__p, 0, sizeof(__p));
      sub_24BCE2380(__p, &v37, v43, 3uLL);
      sub_24BF02A98(a2, a3);
      operator new();
    }

    sub_24BCE1268(v43);
    v25 = sub_24BC95264(v43, "[linalg::svd] Input array must have >= 2 dimensions. Received array with ", 73);
    v26 = MEMORY[0x24C2543E0](v25, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v26, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v36);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v43);
  v20 = sub_24BC95264(v43, "[linalg::svd] Input array must have type float32. Received array ", 65);
  v21 = sub_24BC95264(v20, "with type ", 10);
  v22 = (*a1)[7];
  LODWORD(v36.__r_.__value_.__l.__data_) = v22;
  v36.__r_.__value_.__s.__data_[4] = BYTE4(v22);
  v23 = sub_24BF031F4(v21, &v36);
  sub_24BC95264(v23, ".", 1);
  v24 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v24, &v36);
  v24->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v24, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEA05A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if ((v39 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a38);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v38);
  goto LABEL_6;
}

void sub_24BEA070C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[33] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*(*a1 + 14) == 10)
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = v8 - *v6;
    if (v9 > 4)
    {
      if (*(v7 + v9 - 4) == *(v7 + v9 - 8))
      {
        memset(__p, 0, sizeof(__p));
        sub_24BCC9A1C(__p, v7, v8, v9 >> 2);
        v12 = (*a1)[7];
        sub_24BF02A98(a4, a5);
        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[linalg::inv] Inverses are only defined for square matrices.");
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }

    sub_24BCE1268(v24);
    v18 = sub_24BC95264(v24, "[linalg::inv] Arrays must have >= 2 dimensions. Received array with ", 68);
    v19 = MEMORY[0x24C2543E0](v18, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v19, " dimensions.", 12);
    v20 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v20, &v23);
    v20->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v20, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v24);
  v13 = sub_24BC95264(v24, "[linalg::inv] Arrays must type float32. Received array ", 55);
  v14 = sub_24BC95264(v13, "with type ", 10);
  v15 = (*a1)[7];
  LODWORD(v23.__r_.__value_.__l.__data_) = v15;
  v23.__r_.__value_.__s.__data_[4] = BYTE4(v15);
  v16 = sub_24BF031F4(v14, &v23);
  sub_24BC95264(v16, ".", 1);
  v17 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v17, &v23);
  v17->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v17, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEA0A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_24BEA0B68(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[33] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (*(*a1 + 14) == 10)
  {
    v7 = *v5;
    v8 = v5[1];
    v9 = v8 - *v5;
    if (v9 > 4)
    {
      if (*(v7 + v9 - 4) == *(v7 + v9 - 8))
      {
        memset(__p, 0, sizeof(__p));
        sub_24BCC9A1C(__p, v7, v8, v9 >> 2);
        v11 = (*a1)[7];
        sub_24BF02A98(a3, a4);
        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[linalg::cholesky] Cholesky decomposition is only defined for square matrices.");
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }

    sub_24BCE1268(v23);
    v17 = sub_24BC95264(v23, "[linalg::cholesky] Arrays must have >= 2 dimensions. Received array with ", 73);
    v18 = MEMORY[0x24C2543E0](v17, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v18, " dimensions.", 12);
    v19 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v19, &v22);
    v19->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v19, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v23);
  v12 = sub_24BC95264(v23, "[linalg::cholesky] Arrays must type float32. Received array ", 60);
  v13 = sub_24BC95264(v12, "with type ", 10);
  v14 = (*a1)[7];
  LODWORD(v22.__r_.__value_.__l.__data_) = v14;
  v22.__r_.__value_.__s.__data_[4] = BYTE4(v14);
  v15 = sub_24BF031F4(v13, &v22);
  sub_24BC95264(v15, ".", 1);
  v16 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v16, &v22);
  v16->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v16, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEA0EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_24BEA0F94(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (*(*a1 + 14) == 10)
  {
    if (((*a1)[1] - **a1) > 4)
    {
      *((*a1)[1] - 4);
      *((*a1)[1] - 8);
      sub_24BEA00DC(a1, a2, a3);
    }

    sub_24BCE1268(v14);
    v9 = sub_24BC95264(v14, "[linalg::pinv] Arrays must have >= 2 dimensions. Received array ", 64);
    v10 = sub_24BC95264(v9, "with ", 5);
    v11 = MEMORY[0x24C2543E0](v10, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v11, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v13);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v14);
  v4 = sub_24BC95264(v14, "[linalg::pinv] Arrays must type float32. Received array ", 56);
  v5 = sub_24BC95264(v4, "with type ", 10);
  v6 = (*a1)[7];
  LODWORD(v13.__r_.__value_.__l.__data_) = v6;
  v13.__r_.__value_.__s.__data_[4] = BYTE4(v6);
  v7 = sub_24BF031F4(v5, &v13);
  sub_24BC95264(v7, ".", 1);
  v8 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v8, &v13);
  v8->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v8, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEA1498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((v42 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a41);
      _Unwind_Resume(a1);
    }
  }

  else if (!v42)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v41);
  goto LABEL_6;
}

void sub_24BEA15E8(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*a1 + 14) == 10)
  {
    if (((*a1)[1] - **a1) > 4)
    {
      if (*((*a1)[1] - 4) == *((*a1)[1] - 8))
      {
        sub_24BEA070C(a1, 1, a2, a3, a4);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[linalg::cholesky] Cholesky inverse is only defined for square matrices.");
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }

    sub_24BCE1268(v16);
    v11 = sub_24BC95264(v16, "[linalg::cholesky] Arrays must have >= 2 dimensions. Received array with ", 73);
    v12 = MEMORY[0x24C2543E0](v11, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v12, " dimensions.", 12);
    v13 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v13, &v15);
    v13->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v13, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v16);
  v5 = sub_24BC95264(v16, "[linalg::cholesky] Arrays must type float32. Received array ", 60);
  v6 = sub_24BC95264(v5, "with type ", 10);
  v7 = (*a1)[7];
  LODWORD(v15.__r_.__value_.__l.__data_) = v7;
  v15.__r_.__value_.__s.__data_[4] = BYTE4(v7);
  v8 = sub_24BF031F4(v6, &v15);
  sub_24BC95264(v8, ".", 1);
  v9 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v9, &v15);
  v9->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v9, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEA18AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
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

void sub_24BEA193C(uint64_t **a1, uint64_t **a2, int a3, uint64_t a4, uint64_t a5)
{
  v35[0] = a3;
  sub_24BEA2070(v35, a1);
  sub_24BEA2070(v35, a2);
  v10 = sub_24BD1EEAC(a1, a3);
  v11 = sub_24BD1EEAC(a2, a3);
  v12 = (*a1)[7];
  LODWORD(v34[0]) = v12;
  BYTE4(v34[0]) = BYTE4(v12);
  v13 = (*a2)[7];
  LODWORD(v33[0]) = v13;
  BYTE4(v33[0]) = BYTE4(v13);
  v14 = sub_24BE80C80(v34, v33);
  v15 = *a1;
  memset(v34, 0, sizeof(v34));
  sub_24BCC9A1C(v34, *v15, v15[1], (v15[1] - *v15) >> 2);
  v16 = *a2;
  memset(v33, 0, sizeof(v33));
  sub_24BCC9A1C(v33, *v16, v16[1], (v16[1] - *v16) >> 2);
  if (a3 < 0)
  {
    *(v34[0] + (*a1)[1] - **a1 + 4 * a3) = 3;
    v17 = (((*a2)[1] - **a2) >> 2) + a3;
  }

  else
  {
    v17 = a3;
    *(v34[0] + 4 * a3) = 3;
  }

  *(v33[0] + 4 * v17) = 3;
  sub_24BF02B58(v34, v33, v32);
  v18 = (((v32[1] - v32[0]) >> 2) & (a3 >> 31)) + a3;
  if (v10 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  *(v32[0] + 4 * v18) = v19;
  v20 = a1[1];
  v30[0] = *a1;
  v30[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v30, v14, a4, a5, v27);
  sub_24BEA4DE0(v27, v32, a4, a5, v31);
  v21 = v18;
  sub_24BE7F218(v27);
  sub_24BE7F218(v30);
  if (v11 == 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  *(v32[0] + 4 * v21) = v22;
  v23 = a2[1];
  v28[0] = *a2;
  v28[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v28, v14, a4, a5, v27);
  sub_24BEA4DE0(v27, v32, a4, a5, v29);
  sub_24BE7F218(v27);
  sub_24BE7F218(v28);
  sub_24BEA8EEC(v31, v19, v21, v24, 0, v27);
  sub_24BEA8EEC(v29, v22, v21, v25, 0, v26);
  if (v10 == 2 && v11 == 2)
  {
    sub_24BEA52D0(v27[0], a4, a5);
  }

  if (v11 != 2)
  {
    if (v10 != 2)
    {
      sub_24BEA3FE8(v27[0] + 2, (v26[0] + 32), a4, a5);
    }

    sub_24BEA3FE8(v27[0] + 2, (v26[0] + 32), a4, a5);
  }

  sub_24BEA3FE8(v27[0] + 4, (v26[0] + 16), a4, a5);
}

void sub_24BEA1F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void ****a13, uint64_t a14, void ***a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  a13 = &a15;
  sub_24BCC961C(&a13);
  a15 = &a18;
  sub_24BCC961C(&a15);
  a18 = &a21;
  sub_24BCC961C(&a18);
  sub_24BE7F218(&a26);
  sub_24BE7F218(&a30);
  v32 = *(v30 - 168);
  if (v32)
  {
    *(v30 - 160) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 144);
  if (v33)
  {
    *(v30 - 136) = v33;
    operator delete(v33);
  }

  v34 = *(v30 - 120);
  if (v34)
  {
    *(v30 - 112) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_24BEA2028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_24BE7F218(va);
  JUMPOUT(0x24BEA1FD4);
}

void sub_24BEA2044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_24BE7F218(va);
  JUMPOUT(0x24BEA1FDCLL);
}

uint64_t sub_24BEA2070(int *a1, uint64_t **a2)
{
  if (*a1 >= (((*a2)[1] - **a2) >> 2))
  {
    sub_24BCE1268(v12);
    v6 = sub_24BC95264(v12, "[linalg::cross] axis ", 21);
    v7 = MEMORY[0x24C2543C0](v6, *a1);
    v8 = sub_24BC95264(v7, " invalid for array with ", 24);
    v9 = MEMORY[0x24C2543E0](v8, ((*a2)[1] - **a2) >> 2);
    sub_24BC95264(v9, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (sub_24BD1EEAC(a2, *a1) < 2 || (result = sub_24BD1EEAC(a2, *a1), result >= 4))
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(v5, "[linalg::cross] The specified axis must have size 2 or 3.");
    __cxa_throw(v5, &unk_285F94708, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_24BEA21E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
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

uint64_t sub_24BEA223C(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(*result + 56) != 10)
  {
    sub_24BCE1268(&v24);
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (v4 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    v7 = sub_24BC95264(&v24, v5, v6);
    v8 = sub_24BC95264(v7, " Arrays must have type float32. Received array ", 47);
    v9 = sub_24BC95264(v8, "with type ", 10);
    v10 = *(*v3 + 56);
    LODWORD(v23.__r_.__value_.__l.__data_) = v10;
    v23.__r_.__value_.__s.__data_[4] = BYTE4(v10);
    v11 = sub_24BF031F4(v9, &v23);
    sub_24BC95264(v11, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v23);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (*(*result + 8) - **result <= 4uLL)
  {
    sub_24BCE1268(&v24);
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    v16 = sub_24BC95264(&v24, v14, v15);
    v17 = sub_24BC95264(v16, " Arrays must have >= 2 dimensions. Received array with ", 55);
    v18 = MEMORY[0x24C2543E0](v17, (*(*v3 + 8) - **v3) >> 2);
    sub_24BC95264(v18, " dimensions.", 12);
    v19 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v19, &v23);
    v19->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v19, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (*(*(*result + 8) - 4) != *(*(*result + 8) - 8))
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    v21 = a2;
    v22 = v20;
    sub_24BE62DF8(" Only defined for square matrices.", v21, &v24.__r_.__value_.__l.__data_);
    std::logic_error::logic_error(v22, &v24);
    v22->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v22, &unk_285F94708, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_24BEA24C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void sub_24BEA2554(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_24BC836D4(v12, "[linalg::eigvalsh]");
  sub_24BEA223C(a1, v12);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v7 = **a1;
  v8 = (*a1)[1] - 4;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  sub_24BEA2D98(v10, v7, v8, (v8 - v7) >> 2);
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  v9 = (*a1)[7];
  sub_24BF02A98(a3, a4);
  sub_24BEA2E0C();
}

void sub_24BEA2720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  *(v26 - 96) = v25;
  sub_24BCC961C((v26 - 96));
  sub_24BE7F218(v26 - 88);
  if (a19)
  {
    sub_24BC9EC78(a19);
  }

  if (a17)
  {
    sub_24BC9EC78(a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void sub_24BEA27B4(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_24BC836D4(__p, "[linalg::eigh]");
  sub_24BEA223C(a1, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a1;
  v8 = (*a1)[1] - 4;
  memset(v23, 0, sizeof(v23));
  sub_24BEA2D98(v23, v7, v8, (v8 - v7) >> 2);
  v9 = *a1;
  memset(v24, 0, sizeof(v24));
  sub_24BCC9A1C(v24, *v9, v9[1], (v9[1] - *v9) >> 2);
  memset(v16, 0, sizeof(v16));
  sub_24BCE220C(v16, v23, &v25, 2uLL);
  v10 = (*a1)[7];
  v19 = v10;
  v20 = BYTE4(v10);
  v21 = v10;
  v22 = BYTE4(v10);
  memset(v15, 0, sizeof(v15));
  sub_24BCE2380(v15, &v19, v23, 2uLL);
  v13 = sub_24BF02A98(a3, a4);
  v14 = v11;
  v12 = 1;
  sub_24BEA2E0C();
}

void sub_24BEA2A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, char *__p, char *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  *(v34 - 160) = v33;
  sub_24BCC961C((v34 - 160));
  sub_24BE7F218(v34 - 152);
  if (a18)
  {
    sub_24BC9EC78(a18);
  }

  if (a16)
  {
    sub_24BC9EC78(a16);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  __p = &a22;
  sub_24BC8EE84(&__p);
  v36 = (v34 - 88);
  v37 = -48;
  while (1)
  {
    v38 = *(v36 - 1);
    if (v38)
    {
      *v36 = v38;
      operator delete(v38);
    }

    v36 -= 3;
    v37 += 24;
    if (!v37)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_24BEA2B48(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BEA2BE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BEA2C80(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BEA2D1C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BEA2D98(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BEA2DF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BEA2E90(void *a1, uint64_t *a2, __int128 *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F98CD8;
  sub_24BEA2FA4(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void sub_24BEA2F28(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

double sub_24BEA2FA4(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, char *a5)
{
  v7 = *a3;
  v8 = *(a3 + 2);
  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(&v11, *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    v12 = *(a4 + 2);
  }

  v9 = *a5;
  *(a2 + 16) = v8;
  *a2 = &unk_285F9EAC8;
  *(a2 + 8) = v7;
  result = *&v11;
  *(a2 + 24) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v9;
  return result;
}

void sub_24BEA3040(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v18[33] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v8 = fabs(a6) == INFINITY;
    if (fabs(a5) != INFINITY && !v8)
    {
      if (fabs(a7) == INFINITY && (a5 < a6 && a7 > 0.0 || a5 > a6 && a7 < 0.0))
      {
        *v18 = a5;
        sub_24BECD3C0(a4, v18, 1, a1);
      }

      v12 = ceil((a6 - a5) / a7);
      if (v12 <= 2147483650.0)
      {
        LODWORD(v17.__r_.__value_.__l.__data_) = v12 & ~(v12 >> 31);
        memset(__p, 0, sizeof(__p));
        sub_24BCC9910(__p, &v17, v17.__r_.__value_.__r.__words + 4, 1uLL);
        sub_24BF02A98(a2, a3);
        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[arange] Maximum size exceeded.");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[arange] Cannot compute length.");
    }

    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v18);
  v13 = sub_24BF031F4(v18, &qword_24BFF09F0);
  sub_24BC95264(v13, " not supported for arange.", 26);
  v14 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v14, &v17);
  v14->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v14, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEA3368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_24BEA3408(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v11 = sub_24BF02A98(a1, a2);

  sub_24BEA3040(0x40000000ALL, v11, v10 | 0x100000000, a3, a4, a5, a6);
}

void sub_24BEA3480(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = sub_24BF02A98(a2, a3);

  sub_24BEA3040(a1, v11, v10 | 0x100000000, a4, a5, a6, 1.0);
}

void sub_24BEA34F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = sub_24BF02A98(a1, a2);

  sub_24BEA3040(0x40000000ALL, v9, v8 | 0x100000000, a3, a4, a5, 1.0);
}

void sub_24BEA3560(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = sub_24BF02A98(a2, a3);

  sub_24BEA3040(a1, v9, v8 | 0x100000000, a4, 0.0, a5, 1.0);
}

void sub_24BEA35D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = sub_24BF02A98(a1, a2);

  sub_24BEA3040(0x40000000ALL, v7, v6 | 0x100000000, a3, 0.0, a4, 1.0);
}

void sub_24BEA3638(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v11 = sub_24BF02A98(a4, a5);

  sub_24BEA3040(0x400000007, v11, v10 | 0x100000000, a6, v7, v8, v9);
}

void sub_24BEA36B8(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1;
  v7 = a2;
  v9 = sub_24BF02A98(a3, a4);

  sub_24BEA3040(0x400000007, v9, v8 | 0x100000000, a5, v6, v7, 1.0);
}

void sub_24BEA372C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v7 = sub_24BF02A98(a2, a3);

  sub_24BEA3040(0x400000007, v7, v6 | 0x100000000, a4, 0.0, v5, 1.0);
}

void sub_24BEA379C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[33] = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) == 0)
  {
    if (a1 == 1)
    {
      *v17 = a2;
      v6 = sub_24BE80D1C();
      sub_24BECD3C0(v15, v17, 1, (v6 & 0xFFFFFFFFFFLL));
    }

    v7 = a1;
    v8 = sub_24BF02A98(a4, a5);
    v10 = sub_24BF02A98(v8, v9 | 0x100000000);
    sub_24BEA3040(0x40000000ALL, v10, v11 | 0x100000000, v17, 0.0, v7, 1.0);
  }

  sub_24BCE1268(v17);
  v12 = sub_24BC95264(v17, "[linspace] number of samples, ", 30);
  v13 = MEMORY[0x24C2543C0](v12, a1);
  sub_24BC95264(v13, ", must be non-negative.", 23);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &v16);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEA3A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a26);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t **sub_24BEA3B14@<X0>(uint64_t **result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *result;
  if (a2 != *(*result + 14))
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    sub_24BCC9A1C(v13, *v6, v6[1], (v6[1] - *v6) >> 2);
    *__p = *v13;
    v12 = v14;
    v13[1] = 0;
    v14 = 0;
    v13[0] = 0;
    sub_24BF02A98(a3, a4);
    operator new();
  }

  v7 = result[1];
  *a5 = v6;
  a5[1] = v7;
  *result = 0;
  result[1] = 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BEA3CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  *(v21 - 88) = v20;
  sub_24BCC961C((v21 - 88));
  sub_24BE7F218(v21 - 80);
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_24BEA3D40(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEA3F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEA3FE8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}