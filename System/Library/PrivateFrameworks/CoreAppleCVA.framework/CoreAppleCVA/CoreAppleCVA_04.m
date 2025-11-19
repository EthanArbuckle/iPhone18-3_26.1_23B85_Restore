void sub_2450627F8(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD2E8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245D61480);
}

std::locale *sub_2450628A4(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD2E8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *sub_245062930(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = a2 + 1;
    v7 = *a2;
    if (a2 + 1 != a3 || v7 != 36)
    {
      v11 = (v7 - 46) > 0x2E || ((1 << (v7 - 46)) & 0x600000000001) == 0;
      if (v11)
      {
        sub_24505E184(a1);
      }

      if (v6 == a3 || v7 != 92)
      {
        if (v7 == 46)
        {
          operator new();
        }
      }

      else
      {
        v12 = *v6 - 36;
        if (v12 <= 0x3A && ((1 << v12) & 0x580000000000441) != 0)
        {
          sub_24505E184(a1);
        }
      }
    }
  }

  result = sub_24505D2AC(a1, a2, a3);
  if (result == a2 && result != a3 && result + 1 != a3 && *result == 92)
  {
    v9 = result[1];
    if (v9 == 40)
    {
      v10 = result + 2;
      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }

      v13 = *(a1 + 28);
      while (v10 != a3)
      {
        v14 = *(a1 + 56);
        v15 = *(a1 + 28);
        v16 = sub_245062930(a1, v10, a3);
        if (v16 == v10)
        {
          break;
        }

        v17 = *(a1 + 28);
        v18 = sub_245062C4C(a1, v16, a3);
        v11 = v18 == v10;
        v10 = v18;
        if (v11)
        {
          goto LABEL_35;
        }
      }

      v18 = v10;
LABEL_35:
      if (v18 != a3 && v18 + 1 != a3 && *v18 == 92 && v18[1] == 41)
      {
        result = &v18[2 * (v18[1] == 41)];
        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        return result;
      }

      sub_24505A11C();
LABEL_43:
      v19 = sub_24505A11C();
      return sub_245062C4C(v19, v20, v21);
    }

    if (((v9 & 0xF8) == 0x30 || (v9 & 0xFE) == 0x38) && (v9 - 49) <= 8)
    {
      if ((v9 - 48) <= *(a1 + 28))
      {
        sub_245062224(a1);
      }

      goto LABEL_43;
    }
  }

  return result;
}

uint64_t sub_245062C4C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 == 42)
  {
    operator new();
  }

  if (a2 + 1 == a3 || v3 != 92 || a2[1] != 123)
  {
    return a2;
  }

  v5 = &a2[2 * (a2[1] == 123)];
  if (v5 != a3)
  {
    v6 = *v5;
    if ((v6 & 0xF8) == 0x30 || (v6 & 0xFE) == 0x38)
    {
      v7 = v6 - 48;
      v8 = v5 + 1;
      if (v5 + 1 != a3)
      {
        while (1)
        {
          v9 = *v8;
          if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
          {
            break;
          }

          if (v7 >= 214748364)
          {
            goto LABEL_41;
          }

          v7 = v9 + 10 * v7 - 48;
          if (++v8 == a3)
          {
            v8 = a3;
            break;
          }
        }
      }

      if (v8 == a3)
      {
        goto LABEL_42;
      }

      v10 = v8 + 1;
      v11 = *v8;
      if (v11 != 44)
      {
        if (v10 != a3 && v11 == 92 && *v10 == 125)
        {
          operator new();
        }

        goto LABEL_42;
      }

      if (v10 != a3 && ((v12 = *v10, (v12 & 0xF8) == 0x30) || (v12 & 0xFE) == 0x38))
      {
        v13 = v12 - 48;
        v10 = v8 + 2;
        if (v8 + 2 != a3)
        {
          while (1)
          {
            v14 = *v10;
            if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
            {
              break;
            }

            if (v13 >= 214748364)
            {
              goto LABEL_41;
            }

            v13 = v14 + 10 * v13 - 48;
            if (++v10 == a3)
            {
              v10 = a3;
              break;
            }
          }
        }
      }

      else
      {
        v13 = -1;
      }

      if (v10 == a3 || v10 + 1 == a3 || *v10 != 92 || v10[1] != 125)
      {
        goto LABEL_42;
      }

      if (v13 == -1)
      {
        operator new();
      }

      if (v13 >= v7)
      {
        operator new();
      }
    }
  }

LABEL_41:
  sub_24505A11C();
LABEL_42:
  v15 = sub_24505A11C();
  return sub_245063184(v15, v16);
}

uint64_t sub_245063184(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t sub_2450631B0(uint64_t result, int a2, uint64_t a3)
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

void sub_2450631E0(void *a1)
{
  *a1 = &unk_2857FD288;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2857FD2B8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x245D61480);
}

void *sub_2450632B4(void *a1)
{
  *a1 = &unk_2857FD288;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2857FD2B8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned __int8 *sub_245063368(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 > 0x5B)
    {
      if (v3 == 92)
      {
        if (a2 + 1 != a3)
        {
          v10 = a2[1];
          if (v10 == 66)
          {
            operator new();
          }

          if (v10 == 98)
          {
            operator new();
          }
        }
      }

      else if (v3 == 94)
      {
        operator new();
      }
    }

    else
    {
      if (v3 == 36)
      {
        operator new();
      }

      v5 = v3 == 40;
      v4 = a2 + 1;
      v5 = !v5 || v4 == a3;
      if (!v5)
      {
        v5 = *v4 == 63;
        v6 = a2 + 2;
        if (v5 && v6 != a3)
        {
          v8 = *v6;
          if (v8 == 33 || v8 == 61)
          {
            sub_245064034(v15);
            v15[6] = *(a1 + 24);
            sub_245059938(v15, a2 + 3, a3);
            v14 = *(a1 + 28);
            sub_245064090();
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_245063690(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 <= 0x3E)
  {
    if (*a2 <= 0x28u)
    {
      if (v3 != 36)
      {
        if (v3 == 40)
        {
          v7 = a2 + 1;
          if (a2 + 1 != a3)
          {
            if (a2 + 2 != a3 && *v7 == 63 && a2[2] == 58)
            {
              v8 = (a1 + 36);
              ++*(a1 + 36);
              v10 = sub_245063C60(a1, a2 + 3, a3);
              if (v10 == a3)
              {
                goto LABEL_65;
              }

              v11 = v10;
              if (*v10 != 41)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if ((*(a1 + 24) & 2) == 0)
              {
                operator new();
              }

              v13 = *(a1 + 28);
              v8 = (a1 + 36);
              ++*(a1 + 36);
              v16 = sub_245063C60(a1, v7, a3);
              if (v16 == a3)
              {
                goto LABEL_65;
              }

              v11 = v16;
              if (*v16 != 41)
              {
                goto LABEL_65;
              }

              if ((*(a1 + 24) & 2) == 0)
              {
                operator new();
              }
            }

            --*v8;
            return v11 + 1;
          }

LABEL_65:
          sub_24505A11C();
LABEL_66:
          sub_24505A11C();
          goto LABEL_67;
        }

        goto LABEL_45;
      }
    }

    else if (v3 != 41)
    {
      if (v3 == 46)
      {
        operator new();
      }

      if (v3 - 42 < 2)
      {
        goto LABEL_64;
      }

LABEL_45:
      sub_24505E184(a1);
    }

    return a2;
  }

  v4 = v3 - 92;
  if (v4 > 0x21)
  {
LABEL_40:
    if (v3 == 91)
    {

      return sub_24505D2AC(a1, a2, a3);
    }

    if (v3 != 63)
    {
      goto LABEL_45;
    }

LABEL_64:
    sub_24505A11C();
    goto LABEL_65;
  }

  if (((1 << (v3 - 92)) & 0x300000006) != 0)
  {
    return a2;
  }

  if (v3 != 92)
  {
    if (v4 == 31)
    {
      goto LABEL_64;
    }

    goto LABEL_40;
  }

  v5 = a2 + 1;
  if (a2 + 1 == a3)
  {
LABEL_67:
    v21 = sub_24505A11C();
    return sub_245063C60(v21, v22, v23);
  }

  v6 = *v5;
  if (v6 == 48)
  {
    sub_24505E184(a1);
  }

  if ((v6 - 49) <= 8)
  {
    v17 = (v6 - 48);
    v18 = a2 + 2;
    if (a2 + 2 == a3)
    {
      goto LABEL_46;
    }

    do
    {
      v19 = *v18;
      if ((v19 - 48) > 9)
      {
        break;
      }

      if (v17 >= 0x19999999)
      {
        goto LABEL_66;
      }

      v17 = v19 + 10 * v17 - 48;
      ++v18;
    }

    while (v18 != a3);
    if (v17)
    {
LABEL_46:
      if (v17 <= *(a1 + 28))
      {
        sub_245062224(a1);
      }
    }

    goto LABEL_66;
  }

  if (*v5 > 0x63u)
  {
    switch(v6)
    {
      case 'w':
        operator new();
      case 's':
        operator new();
      case 'd':
        operator new();
    }
  }

  else
  {
    switch(v6)
    {
      case 'D':
        operator new();
      case 'S':
        operator new();
      case 'W':
        operator new();
    }
  }

  result = sub_245060E04(a1, v5, a3, 0);
  if (result == v5)
  {
    return a2;
  }

  return result;
}

unsigned __int8 *sub_245063C60(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = a2;
  while (1)
  {
    v8 = result;
    result = sub_245063368(a1, result, a3);
    if (result == v8)
    {
      break;
    }

LABEL_2:
    if (result == v8)
    {
      goto LABEL_7;
    }
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 28);
  v11 = sub_245063690(a1);
  if (v11 != v8)
  {
    v12 = *(a1 + 28);
    result = sub_24505E2EC(a1, v11, a3);
    goto LABEL_2;
  }

  result = v8;
LABEL_7:
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *result == 124)
  {
    v13 = *(a1 + 56);
    v14 = result + 1;
    v15 = result + 1;
    while (1)
    {
      v16 = v15;
      v15 = sub_245063368(a1, v15, a3);
      if (v15 == v16)
      {
        v17 = *(a1 + 56);
        v18 = *(a1 + 28);
        v19 = sub_245063690(a1);
        if (v19 == v16)
        {
LABEL_18:
          if (v16 == v14)
          {
            operator new();
          }

          operator new();
        }

        v20 = *(a1 + 28);
        v15 = sub_24505E2EC(a1, v19, a3);
      }

      if (v15 == v16)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_245063F30(void *a1)
{
  *a1 = &unk_2857FD2B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

void *sub_245063FC0(void *result)
{
  *result = &unk_2857FD2B8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_245064034(uint64_t a1)
{
  v2 = MEMORY[0x245D61420]();
  *(a1 + 8) = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void sub_245064158(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

void sub_2450641D4(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v19 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v20 = 0;
  *&v21 = v5;
  *(&v21 + 1) = v5;
  v22 = 0;
  sub_24505A204(&__p, v4, &v21);
  v23 = v6;
  v24 = v6;
  v25 = 0;
  v26 = v21;
  v27 = v22;
  v29 = v6;
  v28 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_24505A3DC(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  for (i = 1; i < v11; i = v14++)
  {
    v16 = &v10[24 * i];
    v17 = v13 + 24 * (v12 + v14 - 2);
    *v17 = *v16;
    *(v17 + 16) = v16[16];
  }

LABEL_11:

  operator delete(v10);
}

void sub_24506435C(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD3D8;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x245D61480);
}

std::locale *sub_245064454(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD3D8;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_24506452C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_18;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      if (v6 != 95)
      {
LABEL_15:
        if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

LABEL_17:
      v10 = 1;
      goto LABEL_25;
    }

LABEL_18:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
        if (v6 != 95)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
  {
    v9 = 1;
    if (v8 == 95)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = 0;
    if (v8 == 95)
    {
      goto LABEL_22;
    }
  }

  if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
  {
    v11 = 0;
    goto LABEL_24;
  }

LABEL_22:
  v11 = 1;
LABEL_24:
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

void sub_245064650(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD318;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245D61480);
}

std::locale *sub_2450646FC(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD318;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_24506478C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2450647BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D61480);
}

uint64_t sub_2450647F8(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_24506480C(void *a1)
{
  *a1 = &unk_2857FD2B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

void *sub_24506489C(void *result)
{
  *result = &unk_2857FD2B8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

BOOL cva::utils::string::ignoreWhitespace(void *a1)
{
  LOBYTE(v2) = 0;
  v3 = a1 + 4;
  while (1)
  {
    v4 = std::istream::get();
    v5 = v4 == -1 ? v2 : v4;
    v6 = *(v3 + *(*a1 - 24));
    if (v6)
    {
      break;
    }

    v2 = v5;
    v7 = (1 << v5) & 0x100002600;
    if (v2 > 0x20 || v7 == 0)
    {
      std::istream::putback();
      return v6 == 0;
    }
  }

  return v6 == 0;
}

void cva::utils::string::ignoreComments(void *a1)
{
  if (!*(a1 + *(*a1 - 24) + 32))
  {
    LOBYTE(v2) = 0;
    v3 = a1 + 4;
    while (1)
    {
      v4 = std::istream::get();
      v5 = v4 == -1 ? v2 : v4;
      if (*(v3 + *(*a1 - 24)))
      {
        break;
      }

      v2 = v5;
      v6 = (1 << v5) & 0x100002600;
      if (v2 > 0x20 || v6 == 0)
      {
        std::istream::putback();
        break;
      }
    }

    if (std::istream::peek() == 35)
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v8 = std::locale::use_facet(&v13, MEMORY[0x277D82680]);
      v9 = (v8->__vftable[2].~facet_0)(v8, 10);
      std::locale::~locale(&v13);
      v10 = sub_245064B38(a1, __p, v9);
      cva::utils::string::ignoreComments(v10);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void *sub_245064B38(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x245D61280](&v11, a1, 1);
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

    ++v6;
    std::string::push_back(a2, v7);
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

void *cva::utils::string::getline(void *a1, uint64_t a2)
{
  cva::utils::string::ignoreComments(a1);
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v7, MEMORY[0x277D82680]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v7);
  return sub_245064B38(a1, a2, v5);
}

unint64_t cva::utils::string::trimmed@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 23);
  v5 = *(result + 23) < 0;
  v6 = *(result + 8);
  if (*(result + 23) >= 0)
  {
    v6 = *(result + 23);
  }

  v7 = MEMORY[0x277D85DE0];
  v8 = 0;
  if (v6)
  {
    do
    {
      if (v5)
      {
        v9 = *v2;
      }

      else
      {
        v9 = v2;
      }

      v10 = *(v9 + v8);
      if ((v10 & 0x80000000) != 0)
      {
        result = __maskrune(v10, 0x4000uLL);
        v4 = *(v2 + 23);
        if (!result)
        {
          break;
        }
      }

      else
      {
        result = *(v7 + 4 * v10 + 60) & 0x4000;
        if (!result)
        {
          break;
        }
      }

      ++v8;
      v5 = (v4 & 0x80u) != 0;
      v11 = *(v2 + 8);
      if ((v4 & 0x80u) == 0)
      {
        v11 = v4;
      }
    }

    while (v8 < v11);
  }

  if ((v4 & 0x80) != 0)
  {
    v4 = *(v2 + 8);
    if (v8 == v4)
    {
      goto LABEL_16;
    }
  }

  else if (v8 == v4)
  {
LABEL_16:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v12 = v4 - 1;
  do
  {
    while (1)
    {
      v13 = v12;
      LODWORD(v14) = *(v2 + 23);
      if (v12 <= v8)
      {
        v17 = v12 + 1;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_29;
        }

LABEL_26:
        v14 = *(v2 + 8);
        if (v14 >= v8)
        {
          v2 = *v2;
          goto LABEL_30;
        }

LABEL_40:
        sub_24504FAF4();
      }

      v15 = *v2;
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v2;
      }

      v16 = *(v15 + v13);
      if ((v16 & 0x80000000) != 0)
      {
        break;
      }

      result = *(v7 + 4 * v16 + 60) & 0x4000;
      v12 = v13 - 1;
      if (!result)
      {
        goto LABEL_25;
      }
    }

    result = __maskrune(v16, 0x4000uLL);
    v12 = v13 - 1;
  }

  while (result);
LABEL_25:
  v17 = v13 + 1;
  LOBYTE(v14) = *(v2 + 23);
  if ((v14 & 0x80) != 0)
  {
    goto LABEL_26;
  }

LABEL_29:
  v14 = v14;
  if (v8 > v14)
  {
    goto LABEL_40;
  }

LABEL_30:
  v18 = v17 - v8;
  v19 = v14 - v8;
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24504FAF4();
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v20;
  if (v20)
  {
    result = memmove(a2, (v2 + v8), v20);
  }

  *(a2 + v20) = 0;
  return result;
}

void cva::utils::string::replace_whitespace(char *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (a1[23] >= 0)
  {
    v4 = a1[23];
  }

  else
  {
    v4 = *(a1 + 1);
  }

  std::string::reserve(a2, v4);
  v5 = a1[23];
  v6 = *a1;
  if ((v5 & 0x80u) == 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = MEMORY[0x277D85DE0];
LABEL_9:
  while (1)
  {
    v9 = v5;
    v10 = *(a1 + 1);
    while (1)
    {
      v11 = v9 < 0;
      v12 = v9 >= 0 ? a1 : v6;
      v13 = v11 ? v10 : v5;
      if (v7 == &v12[v13])
      {
        break;
      }

      v14 = *v7;
      if ((v14 & 0x80000000) != 0)
      {
        v15 = __maskrune(v14, 0x4000uLL);
        v5 = a1[23];
        v6 = *a1;
        v10 = *(a1 + 1);
        if (!v15)
        {
          break;
        }
      }

      else if ((*(v8 + 4 * v14 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v7;
      v9 = v5;
    }

    v16 = (v5 & 0x80u) == 0 ? a1 : v6;
    v17 = (v5 & 0x80u) == 0 ? v5 : v10;
    if (v7 == &v16[v17])
    {
      break;
    }

    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::push_back(a2, 95);
      v5 = a1[23];
      v6 = *a1;
      v10 = *(a1 + 1);
    }

    if ((v5 & 0x80u) == 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = v6;
    }

    if ((v5 & 0x80u) == 0)
    {
      v10 = v5;
    }

    for (i = &v19[v10]; v7 != i; i = &v25[v24])
    {
      v26 = *v7;
      if ((v26 & 0x80000000) != 0)
      {
        if (__maskrune(v26, 0x4000uLL))
        {
LABEL_8:
          v5 = a1[23];
          v6 = *a1;
          goto LABEL_9;
        }
      }

      else if ((*(v8 + 4 * v26 + 60) & 0x4000) != 0)
      {
        goto LABEL_8;
      }

      v27 = *v7;
      v28 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if (v28 < 0)
      {
        v29 = a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
        if (a2->__r_.__value_.__l.__size_ == v29 - 1)
        {
          if (v29 == 0x7FFFFFFFFFFFFFF8)
          {
            sub_24504FAF4();
          }

          v30 = a2->__r_.__value_.__r.__words[0];
LABEL_57:
          operator new();
        }

        v22 = a2->__r_.__value_.__r.__words[0];
        v21 = a2->__r_.__value_.__l.__size_;
        a2->__r_.__value_.__l.__size_ = v21 + 1;
      }

      else
      {
        if (*(&a2->__r_.__value_.__s + 23) == 22)
        {
          goto LABEL_57;
        }

        v21 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
        *(&a2->__r_.__value_.__s + 23) = (v28 + 1) & 0x7F;
        v22 = a2;
      }

      v23 = v22 + v21;
      *v23 = v27;
      v23[1] = 0;
      ++v7;
      v5 = a1[23];
      v6 = *a1;
      v24 = *(a1 + 1);
      if ((v5 & 0x80u) == 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = *a1;
      }

      if ((v5 & 0x80u) == 0)
      {
        v24 = a1[23];
      }
    }
  }
}

uint64_t cva::utils::string::get_block(void *a1, uint64_t a2)
{
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

  LOBYTE(v4) = 0;
  v5 = a1 + 4;
  while (1)
  {
    v6 = std::istream::get();
    v7 = v6 == -1 ? v4 : v6;
    if (*(v5 + *(*a1 - 24)))
    {
      break;
    }

    v4 = v7;
    v8 = (1 << v7) & 0x100002600;
    if (v4 > 0x20 || v8 == 0)
    {
      std::istream::putback();
      break;
    }
  }

  v10 = std::istream::get();
  if (v10 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
  {
    if (v11 == 123)
    {
      v12 = 123;
      while (1)
      {
        v13 = std::istream::get();
        if (v13 != -1)
        {
          v12 = v13;
        }

        if ((*(v5 + *(*a1 - 24)) & 5) != 0)
        {
          break;
        }

        if (v12 == 125)
        {
          v19 = *(a2 + 23);
          if (v19 >= 0)
          {
            v20 = *(a2 + 23);
          }

          else
          {
            v20 = *(a2 + 8);
          }

          if (v20 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_55:
            sub_24504FAF4();
          }

          if (v20 + 1 >= 0x17)
          {
            operator new();
          }

          v23 = 0;
          v22 = 0uLL;
          HIBYTE(v23) = v20 + 1;
          if (v20)
          {
            if ((v19 & 0x80u) == 0)
            {
              v21 = a2;
            }

            else
            {
              v21 = *a2;
            }

            memmove(&v22, v21, v20);
          }

          *(&v22 + v20) = 10;
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = v22;
          *(a2 + 16) = v23;
          return 1;
        }

        v14 = *(a2 + 23);
        if (v14 >= 0)
        {
          v15 = *(a2 + 23);
        }

        else
        {
          v15 = *(a2 + 8);
        }

        if (v15 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_55;
        }

        if (v15 + 1 >= 0x17)
        {
          operator new();
        }

        v23 = 0;
        v22 = 0uLL;
        HIBYTE(v23) = v15 + 1;
        if (v15)
        {
          if ((v14 & 0x80u) == 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = *a2;
          }

          memmove(&v22, v16, v15);
        }

        v17 = &v22 + v15;
        *v17 = v12;
        v17[1] = 0;
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = v22;
        *(a2 + 16) = v23;
      }
    }

    else
    {
      std::istream::putback();
    }
  }

  return 0;
}

void *cva::utils::string::common_suffix@<X0>(void *result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = result;
  v5 = *(result + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(result + 1);
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = a2[1];
  }

  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *(v3 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v3;
      }

      else
      {
        v13 = *v3;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = v3[1];
      }

      v14 = __toupper(*(v13 + v12 + v10 - 1));
      v15 = *(a2 + 23);
      if ((v15 & 0x80u) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      if ((v15 & 0x80u) != 0)
      {
        v15 = a2[1];
      }

      result = __toupper(*(v16 + v15 + v10 - 1));
      if (v14 != result)
      {
        break;
      }

      ++v11;
      --v10;
      if (v8 == v11)
      {
        v11 = v8;
        break;
      }
    }

    v6 = *(v3 + 23);
    if ((v6 & 0x80) == 0)
    {
LABEL_24:
      v17 = v6 >= v11;
      v18 = v6 - v11;
      if (!v17)
      {
        goto LABEL_37;
      }

      v19 = v3 + v18;
      if (v11 < 0x17)
      {
        goto LABEL_27;
      }

LABEL_34:
      operator new();
    }
  }

  else
  {
    v11 = 0;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  v20 = v3[1];
  v17 = v20 >= v11;
  v21 = v20 - v11;
  if (!v17)
  {
LABEL_37:
    sub_24504FAF4();
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24504FAF4();
  }

  v19 = (*v3 + v21);
  if (v11 >= 0x17)
  {
    goto LABEL_34;
  }

LABEL_27:
  a3[23] = v11;
  if (v11)
  {
    result = memmove(a3, v19, v11);
  }

  a3[v11] = 0;
  return result;
}

double cva::utils::string::common_suffix@<D0>(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 == *a1)
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else
  {
    if (*(v4 + 23) < 0)
    {
      sub_24505989C(a2, *v4, *(v4 + 1));
      v4 = *a1;
      v3 = a1[1];
    }

    else
    {
      v6 = *v4;
      *(a2 + 16) = *(v4 + 2);
      *a2 = v6;
    }

    if ((-1431655765 * ((v3 - v4) >> 3)) >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        cva::utils::string::common_suffix(a2, (v4 + v7), &v10);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *&v6 = v10;
        *a2 = v10;
        *(a2 + 16) = v11;
        ++v8;
        v4 = *a1;
        v7 += 24;
      }

      while (v8 < (-1431655765 * ((a1[1] - *a1) >> 3)));
    }
  }

  return *&v6;
}

void cva::utils::string::split(uint64_t a1, uint64_t *a2, char *__s, int a4)
{
  v41 = a4;
  v7 = strlen(__s);
  v8 = *a1;
  v9 = *(a1 + 8);
  while (v9 != v8)
  {
    v10 = *(v9 - 1);
    v9 -= 3;
    if (v10 < 0)
    {
      operator delete(*v9);
    }
  }

  *(a1 + 8) = v8;
  if (!v7)
  {
    v12 = *(a2 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v11 = 0;
      goto LABEL_77;
    }

    v11 = 0;
    if (*(a2 + 23))
    {
      goto LABEL_79;
    }

LABEL_74:
    v12 = v12;
    if (v11 <= v12)
    {
      goto LABEL_79;
    }

LABEL_90:
    sub_24504FAF4();
  }

  v11 = 0;
  while (1)
  {
    v12 = *(a2 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v14 = a2[1];
      if (v11 >= v14)
      {
        goto LABEL_77;
      }

      v13 = *a2;
    }

    else
    {
      v13 = a2;
      v14 = *(a2 + 23);
      if (v11 >= v12)
      {
        goto LABEL_74;
      }
    }

    v15 = v13 + v11;
    v16 = v13 + v14;
    v17 = -v11;
LABEL_14:
    v18 = 0;
    while (*v15 != __s[v18])
    {
      if (v7 == ++v18)
      {
        ++v15;
        --v17;
        if (v15 == v16)
        {
          goto LABEL_70;
        }

        goto LABEL_14;
      }
    }

    if (v15 == v16)
    {
      break;
    }

    v19 = v15 - v13;
    if (v15 - v13 == -1)
    {
      break;
    }

    if ((v12 & 0x80000000) != 0)
    {
      v12 = a2[1];
      if (v12 < v11)
      {
        goto LABEL_90;
      }

      v20 = *a2;
    }

    else
    {
      v20 = a2;
      if (v11 > v12)
      {
        goto LABEL_90;
      }
    }

    v21 = v12 - v11;
    if (v21 >= v19 - v11)
    {
      v22 = v19 - v11;
    }

    else
    {
      v22 = v21;
    }

    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_89;
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v43 = v22;
    if (v22)
    {
      memmove(&__dst, v20 + v11, v22);
    }

    *(&__dst + v22) = 0;
    sub_245065C58(a1, &__dst);
    if (v43 < 0)
    {
      operator delete(__dst);
    }

    v23 = *(a2 + 23);
    if (v23 >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    if (v23 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    if (v11 <= v19)
    {
LABEL_47:
      v27 = -1;
    }

    else
    {
      v25 = v24 + v19;
      v26 = v11 + v17;
      while (memchr(__s, *v25, v7))
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_47;
        }
      }

      v27 = v25 - v24;
    }

    if (v11 >= v27)
    {
      v11 = v27;
    }

    if ((v41 & 1) == 0)
    {
      v28 = *a1;
      v29 = *(a1 + 8);
      v30 = v29 - *a1;
      v31 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
      v32 = v11 + ~v19;
      v33 = v32 - 0x5555555555555555 * (v30 >> 3);
      if (v31 >= v33)
      {
        if (v31 > v33)
        {
          v37 = &v28[3 * v33];
          while (v29 != v37)
          {
            v38 = *(v29 - 1);
            v29 -= 3;
            if (v38 < 0)
            {
              operator delete(*v29);
            }
          }

          *(a1 + 8) = v37;
        }
      }

      else
      {
        v34 = *(a1 + 16);
        if (0xAAAAAAAAAAAAAAABLL * ((v34 - v29) >> 3) < v32)
        {
          if (v33 <= 0xAAAAAAAAAAAAAAALL)
          {
            v35 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v28) >> 3);
            if (2 * v35 > v33)
            {
              v33 = 2 * v35;
            }

            if (v35 >= 0x555555555555555)
            {
              v36 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v36 = v33;
            }

            if (v36 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_24504FAF4();
          }

          sub_24504FAF4();
        }

        if (v32)
        {
          bzero(*(a1 + 8), 24 * ((24 * v32 - 24) / 0x18) + 24);
          v29 += 3 * ((24 * v32 - 24) / 0x18) + 3;
        }

        *(a1 + 8) = v29;
      }
    }
  }

LABEL_70:
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_77:
  v12 = a2[1];
  if (v12 < v11)
  {
    goto LABEL_90;
  }

  a2 = *a2;
LABEL_79:
  v39 = v12 - v11;
  if (v12 - v11 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_89:
    sub_24504FAF4();
  }

  if (v39 >= 0x17)
  {
    operator new();
  }

  v43 = v12 - v11;
  if (v12 != v11)
  {
    memmove(&__dst, a2 + v11, v39);
  }

  *(&__dst + v39) = 0;
  sub_245065C58(a1, &__dst);
  if (v43 < 0)
  {
    v40 = __dst;

    operator delete(v40);
  }
}

void sub_245065C58(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24504FAF4();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_24504FAF4();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

__int128 **cva::utils::string::join@<X0>(__int128 **result@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v4 = result;
  v6 = *result;
  v7 = result[1];
  if (*result == v7)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    v7 = v6;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  else if (*(v6 + 23) < 0)
  {
    result = sub_24505989C(a3, *v6, *(v6 + 1));
    v6 = *v4;
    v7 = v4[1];
  }

  else
  {
    v8 = *v6;
    a3->__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&a3->__r_.__value_.__l.__data_ = v8;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) >= 2)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = *(a2 + 23);
      if (v11 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v11 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 8);
      }

      std::string::append(a3, v12, v13);
      v14 = *v4 + v9;
      v17 = *(v14 + 24);
      v15 = v14 + 24;
      v16 = v17;
      v18 = *(v15 + 23);
      if (v18 >= 0)
      {
        v19 = v15;
      }

      else
      {
        v19 = v16;
      }

      if (v18 >= 0)
      {
        v20 = *(v15 + 23);
      }

      else
      {
        v20 = *(v15 + 8);
      }

      result = std::string::append(a3, v19, v20);
      ++v10;
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3));
  }

  return result;
}

uint64_t cva::utils::string::to_upper(uint64_t result)
{
  v1 = *(result + 23);
  v2 = v1;
  v3 = (result + v1);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = (*result + *(result + 8));
  }

  if (v2 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  for (; v5 != v4; ++v5)
  {
    result = __toupper(*v5);
    *v5 = result;
  }

  return result;
}

uint64_t cva::utils::string::to_lower(uint64_t result)
{
  v1 = *(result + 23);
  v2 = v1;
  v3 = (result + v1);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = (*result + *(result + 8));
  }

  if (v2 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  for (; v5 != v4; ++v5)
  {
    result = __tolower(*v5);
    *v5 = result;
  }

  return result;
}

uint64_t cva::utils::string::iequals(char *a1, char *a2)
{
  v2 = a1[23];
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 1);
  }

  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v2 != v4)
  {
    return 0;
  }

  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (!v2)
  {
    return 1;
  }

  if (v3 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v2 - 1;
  do
  {
    v10 = *v6++;
    v9 = v10;
    v11 = *v7++;
    v12 = __toupper(v9);
    v14 = v12 == __toupper(v11);
    result = v14;
    v14 = !v14 || v8-- == 0;
  }

  while (!v14);
  return result;
}

uint64_t cva::utils::string::istarts_with(char *a1, char *a2)
{
  v2 = a2[23];
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  v4 = a1[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 1);
  }

  if (v2 > v4)
  {
    return 0;
  }

  if (v3 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (!v2)
  {
    return 1;
  }

  if (v5 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = v2 - 1;
  do
  {
    v11 = *v7++;
    v10 = v11;
    v12 = *v8++;
    v13 = __toupper(v10);
    v14 = v13 == __toupper(v12);
    result = v14;
    v14 = !v14 || v9-- == 0;
  }

  while (!v14);
  return result;
}

uint64_t cva::utils::string::iends_with(uint64_t *a1, char *a2)
{
  v2 = a2[23];
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  if (v2 > v4)
  {
    return 0;
  }

  if (v3 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (!v2)
  {
    return 1;
  }

  v8 = *a1;
  if (v5 >= 0)
  {
    v8 = a1;
  }

  v9 = v8 + v4 - v2;
  v10 = v2 - 1;
  do
  {
    v12 = *v7++;
    v11 = v12;
    v13 = *v9++;
    v14 = __toupper(v11);
    v15 = v14 == __toupper(v13);
    result = v15;
    v15 = !v15 || v10-- == 0;
  }

  while (!v15);
  return result;
}

BOOL cva::utils::string::icontains(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_24505989C(__p, *a1, *(a1 + 8));
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *__p = *a1;
    v27 = *(a1 + 16);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v24 = *a2;
      v25 = *(a2 + 2);
      goto LABEL_6;
    }
  }

  sub_24505989C(&v24, *a2, *(a2 + 1));
LABEL_6:
  if (v27 >= 0)
  {
    v3 = (__p + HIBYTE(v27));
  }

  else
  {
    v3 = (__p[0] + __p[1]);
  }

  if (v27 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  for (; v4 != v3; v4 = (v4 + 1))
  {
    *v4 = __toupper(*v4);
  }

  v5 = HIBYTE(v25);
  v6 = HIBYTE(v25);
  v7 = *(&v24 + 1);
  v8 = v24;
  v9 = &v24;
  if (v25 >= 0)
  {
    v10 = &v24 + HIBYTE(v25);
  }

  else
  {
    v10 = (v24 + *(&v24 + 1));
  }

  if (v25 >= 0)
  {
    v11 = &v24;
  }

  else
  {
    v11 = v24;
  }

  if (v11 != v10)
  {
    do
    {
      *v11 = __toupper(*v11);
      ++v11;
    }

    while (v11 != v10);
    v5 = HIBYTE(v25);
    v7 = *(&v24 + 1);
    v8 = v24;
    v6 = HIBYTE(v25);
  }

  v12 = HIBYTE(v27);
  v13 = HIBYTE(v27);
  if (v27 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v27 < 0)
  {
    v12 = __p[1];
  }

  if (v6 >= 0)
  {
    v15 = v5;
  }

  else
  {
    v9 = v8;
    v15 = v7;
  }

  if (v15)
  {
    v16 = v14 + v12;
    if (v12 >= v15)
    {
      v21 = *v9;
      v22 = v14;
      do
      {
        if (v12 - v15 == -1)
        {
          break;
        }

        v23 = memchr(v22, v21, v12 - v15 + 1);
        if (!v23)
        {
          break;
        }

        v17 = v23;
        if (!memcmp(v23, v9, v15))
        {
          goto LABEL_34;
        }

        v22 = (v17 + 1);
        v12 = v16 - (v17 + 1);
      }

      while (v12 >= v15);
    }

    v17 = v16;
LABEL_34:
    v19 = v17 != v16 && v17 - v14 != -1;
    if (v6 < 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v19 = 1;
    if (v6 < 0)
    {
LABEL_41:
      operator delete(v8);
      v13 = HIBYTE(v27);
    }
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v19;
}

void cva::VecLibSparse<float>::multiply(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v9 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *a3;
  v5 = *(a3 + 2);
  sub_2450663E8(v8, &v6, &v4, 1.0);
}

void sub_2450663E8(uint64_t a1, int *a2, uint64_t a3, float a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = 4;
  if (*(a1 + 24))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 24))
  {
    v4 = 0;
  }

  v6 = *(a3 + 8);
  v7 = *a3;
  if (v6 < *a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315906;
      *&buf.structure.columnCount = "Y";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v6;
      WORD1(buf.structure.rowIndices) = 2080;
      *(&buf.structure.rowIndices + 4) = "Y";
      *(&buf.structure.blockSize + 1) = 1024;
      *(&buf.structure.blockSize + 1) = v7;
      v8 = MEMORY[0x277D86220];
LABEL_12:
      _os_log_error_impl(&dword_245028000, v8, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &buf, 0x22u);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  v9 = a2[2];
  v10 = *a2;
  if (v9 < *a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315906;
      *&buf.structure.columnCount = "X";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v9;
      WORD1(buf.structure.rowIndices) = 2080;
      *(&buf.structure.rowIndices + 4) = "X";
      *(&buf.structure.blockSize + 1) = 1024;
      *(&buf.structure.blockSize + 1) = v10;
      v8 = MEMORY[0x277D86220];
      goto LABEL_12;
    }

LABEL_36:
    _SparseTrap();
    goto LABEL_37;
  }

  if (*(a3 + 12))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
    v7 = *(a3 + 4);
  }

  v12 = (a2[3] & 1) == 0;
  v13 = a2[v12];
  v14 = *(a3 + v11);
  v15 = (a2[3] & 1) != 0;
  v16 = a2[v15];
  if (v7 != v13)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "Y";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v14;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "X";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v16;
    v27 = 1024;
    v28 = v13;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_35:
    _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, v22, &buf, 0x2Eu);
    goto LABEL_36;
  }

  if (v7 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315650;
      *&buf.structure.columnCount = "Y";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v14;
      WORD1(buf.structure.rowIndices) = 1024;
      HIDWORD(buf.structure.rowIndices) = v7;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &buf, 0x18u);
    }

    goto LABEL_36;
  }

  v17 = *(a1 + 28);
  v18 = *(a1 + v5) * v17;
  v19 = *(a1 + v4) * v17;
  if (v14 != v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "Y";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v14;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "matrix A";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v19;
    v27 = 1024;
    v28 = v18;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_35;
  }

  if (v16 != v19)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "X";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v16;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "matrix A";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v19;
    v27 = 1024;
    v28 = v18;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_35;
  }

  v20 = *(a1 + 16);
  *&buf.structure.rowCount = *a1;
  *&buf.structure.rowIndices = v20;
  buf.data = *(a1 + 32);
  x = *a2;
  v24 = *a3;
  _SparseSpMV_Float(a4, &buf, &x, 0, &v24);
LABEL_37:
  v23 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::multiply(uint64_t a1, __int128 *a2, __int128 *a3, float a4)
{
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 2);
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_2450663E8(v9, &v7, &v5, a4);
}

void cva::VecLibSparse<float>::multiply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v3;
  v5 = *(a1 + 32);
  sub_2450668B0(v4, *a2, *(a2 + 8), *a3, *(a3 + 8), 1.0);
}

void sub_2450668B0(uint64_t a1, int a2, float *a3, int a4, float *a5, float a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 28);
  v8 = 4;
  if (*(a1 + 24))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + v9) * v7;
  if (*(a1 + 24))
  {
    v8 = 0;
  }

  v11 = *(a1 + v8) * v7;
  if (v11 != a2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      _SparseTrap();
      goto LABEL_13;
    }

    A.structure.rowCount = 67109888;
    A.structure.columnCount = v10;
    LOWORD(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 2) = v11;
    HIWORD(A.structure.columnStarts) = 1024;
    LODWORD(A.structure.rowIndices) = a2;
    WORD2(A.structure.rowIndices) = 1024;
    *(&A.structure.rowIndices + 6) = 1;
    v13 = MEMORY[0x277D86220];
    v14 = "Matrix dimensions (%dx%d) do not match x vector dimensions %dx%d\n";
LABEL_15:
    _os_log_error_impl(&dword_245028000, v13, OS_LOG_TYPE_ERROR, v14, &A, 0x1Au);
    goto LABEL_12;
  }

  if (v10 != a4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    A.structure.rowCount = 67109888;
    A.structure.columnCount = v10;
    LOWORD(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 2) = a2;
    HIWORD(A.structure.columnStarts) = 1024;
    LODWORD(A.structure.rowIndices) = a4;
    WORD2(A.structure.rowIndices) = 1024;
    *(&A.structure.rowIndices + 6) = 1;
    v13 = MEMORY[0x277D86220];
    v14 = "Matrix dimensions (%dx%d) do not match y vector dimensions %dx%d\n";
    goto LABEL_15;
  }

  v12 = *(a1 + 16);
  *&A.structure.rowCount = *a1;
  *&A.structure.rowIndices = v12;
  A.data = *(a1 + 32);
  x.rowCount = a2;
  x.columnCount = 1;
  x.columnStride = a2;
  x.attributes = 0;
  x.data = a3;
  v17.rowCount = a4;
  v17.columnCount = 1;
  v17.columnStride = a4;
  v17.attributes = 0;
  v17.data = a5;
  _SparseSpMV_Float(a6, &A, &x, 0, &v17);
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::multiply(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v4;
  v6 = *(a1 + 32);
  sub_2450668B0(v5, *a2, *(a2 + 8), *a3, *(a3 + 8), a4);
}

void cva::VecLibSparse<float>::multiplyAdd(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v9 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *a3;
  v5 = *(a3 + 2);
  sub_245066B04(v8, &v6, &v4, 1.0);
}

void sub_245066B04(uint64_t a1, int *a2, uint64_t a3, float a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = 4;
  if (*(a1 + 24))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 24))
  {
    v4 = 0;
  }

  v6 = *(a3 + 8);
  v7 = *a3;
  if (v6 < *a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315906;
      *&buf.structure.columnCount = "Y";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v6;
      WORD1(buf.structure.rowIndices) = 2080;
      *(&buf.structure.rowIndices + 4) = "Y";
      *(&buf.structure.blockSize + 1) = 1024;
      *(&buf.structure.blockSize + 1) = v7;
      v8 = MEMORY[0x277D86220];
LABEL_12:
      _os_log_error_impl(&dword_245028000, v8, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &buf, 0x22u);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  v9 = a2[2];
  v10 = *a2;
  if (v9 < *a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315906;
      *&buf.structure.columnCount = "X";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v9;
      WORD1(buf.structure.rowIndices) = 2080;
      *(&buf.structure.rowIndices + 4) = "X";
      *(&buf.structure.blockSize + 1) = 1024;
      *(&buf.structure.blockSize + 1) = v10;
      v8 = MEMORY[0x277D86220];
      goto LABEL_12;
    }

LABEL_36:
    _SparseTrap();
    goto LABEL_37;
  }

  if (*(a3 + 12))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
    v7 = *(a3 + 4);
  }

  v12 = (a2[3] & 1) == 0;
  v13 = a2[v12];
  v14 = *(a3 + v11);
  v15 = (a2[3] & 1) != 0;
  v16 = a2[v15];
  if (v7 != v13)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "Y";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v14;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "X";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v16;
    v27 = 1024;
    v28 = v13;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_35:
    _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, v22, &buf, 0x2Eu);
    goto LABEL_36;
  }

  if (v7 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315650;
      *&buf.structure.columnCount = "Y";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v14;
      WORD1(buf.structure.rowIndices) = 1024;
      HIDWORD(buf.structure.rowIndices) = v7;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &buf, 0x18u);
    }

    goto LABEL_36;
  }

  v17 = *(a1 + 28);
  v18 = *(a1 + v5) * v17;
  v19 = *(a1 + v4) * v17;
  if (v14 != v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "Y";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v14;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "matrix A";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v19;
    v27 = 1024;
    v28 = v18;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_35;
  }

  if (v16 != v19)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "X";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v16;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "matrix A";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v19;
    v27 = 1024;
    v28 = v18;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_35;
  }

  v20 = *(a1 + 16);
  *&buf.structure.rowCount = *a1;
  *&buf.structure.rowIndices = v20;
  buf.data = *(a1 + 32);
  x = *a2;
  v24 = *a3;
  _SparseSpMV_Float(a4, &buf, &x, 1, &v24);
LABEL_37:
  v23 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::multiplyAdd(uint64_t a1, __int128 *a2, __int128 *a3, float a4)
{
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 2);
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_245066B04(v9, &v7, &v5, a4);
}

void cva::VecLibSparse<float>::multiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v3;
  v5 = *(a1 + 32);
  sub_245066FCC(v4, *a2, *(a2 + 8), *a3, *(a3 + 8), 1.0);
}

void sub_245066FCC(uint64_t a1, int a2, float *a3, int a4, float *a5, float a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 28);
  v8 = 4;
  if (*(a1 + 24))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + v9) * v7;
  if (*(a1 + 24))
  {
    v8 = 0;
  }

  v11 = *(a1 + v8) * v7;
  if (v11 != a2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      _SparseTrap();
      goto LABEL_13;
    }

    A.structure.rowCount = 67109888;
    A.structure.columnCount = v10;
    LOWORD(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 2) = v11;
    HIWORD(A.structure.columnStarts) = 1024;
    LODWORD(A.structure.rowIndices) = a2;
    WORD2(A.structure.rowIndices) = 1024;
    *(&A.structure.rowIndices + 6) = 1;
    v13 = MEMORY[0x277D86220];
    v14 = "Matrix dimensions (%dx%d) do not match x vector dimensions %dx%d\n";
LABEL_15:
    _os_log_error_impl(&dword_245028000, v13, OS_LOG_TYPE_ERROR, v14, &A, 0x1Au);
    goto LABEL_12;
  }

  if (v10 != a4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    A.structure.rowCount = 67109888;
    A.structure.columnCount = v10;
    LOWORD(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 2) = a2;
    HIWORD(A.structure.columnStarts) = 1024;
    LODWORD(A.structure.rowIndices) = a4;
    WORD2(A.structure.rowIndices) = 1024;
    *(&A.structure.rowIndices + 6) = 1;
    v13 = MEMORY[0x277D86220];
    v14 = "Matrix dimensions (%dx%d) do not match y vector dimensions %dx%d\n";
    goto LABEL_15;
  }

  v12 = *(a1 + 16);
  *&A.structure.rowCount = *a1;
  *&A.structure.rowIndices = v12;
  A.data = *(a1 + 32);
  x.rowCount = a2;
  x.columnCount = 1;
  x.columnStride = a2;
  x.attributes = 0;
  x.data = a3;
  v17.rowCount = a4;
  v17.columnCount = 1;
  v17.columnStride = a4;
  v17.attributes = 0;
  v17.data = a5;
  _SparseSpMV_Float(a6, &A, &x, 1, &v17);
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::multiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v4;
  v6 = *(a1 + 32);
  sub_245066FCC(v5, *a2, *(a2 + 8), *a3, *(a3 + 8), a4);
}

double cva::VecLibSparse<float>::transpose@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v16 = a1[4];
  v17 = v3;
  v4 = a1[7];
  v18 = a1[6];
  v19 = v4;
  v5 = a1[1];
  v12 = *a1;
  v13 = v5;
  v6 = a1[3];
  v14 = a1[2];
  v15 = v6;
  LOWORD(v12) = v12 & 0xFFFE | ((v12 & 1) == 0);
  _SparseRetainNumeric_Float((&v12 + 8));
  v7 = v17;
  a2[4] = v16;
  a2[5] = v7;
  v8 = v19;
  a2[6] = v18;
  a2[7] = v8;
  v9 = v13;
  *a2 = v12;
  a2[1] = v9;
  result = *&v14;
  v11 = v15;
  a2[2] = v14;
  a2[3] = v11;
  return result;
}

__n128 cva::VecLibSparse<float>::transpose@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *&v9.userFactorStorage = *(a1 + 64);
  *&v9.solveWorkspaceRequiredStatic = v3;
  v10 = *(a1 + 96);
  v4 = *(a1 + 16);
  *&v9.status = *a1;
  *&v9.symbolicFactorization.columnCount = v4;
  v5 = *(a1 + 48);
  *&v9.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&v9.symbolicFactorization.factorSize_Float = v5;
  v9.attributes = (*&v9.attributes & 0xFFFE | ((*&v9.attributes & 1) == 0));
  _SparseRetainNumeric_Float(&v9);
  v6 = *&v9.solveWorkspaceRequiredStatic;
  *(a2 + 64) = *&v9.userFactorStorage;
  *(a2 + 80) = v6;
  *(a2 + 96) = v10;
  v7 = *&v9.symbolicFactorization.columnCount;
  *a2 = *&v9.status;
  *(a2 + 16) = v7;
  result = *&v9.symbolicFactorization.factorSize_Float;
  *(a2 + 32) = *&v9.symbolicFactorization.workspaceSize_Float;
  *(a2 + 48) = result;
  return result;
}

{
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  *(a2 + 26) = *(a1 + 26);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 24) = v3 & 0xFFFE | ((v3 & 1) == 0);
  return result;
}

void cva::VecLibSparse<float>::release(_OWORD *a1)
{
  v1 = a1[5];
  v5[4] = a1[4];
  v5[5] = v1;
  v2 = a1[7];
  v5[6] = a1[6];
  v5[7] = v2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v4 = a1[3];
  v5[2] = a1[2];
  v5[3] = v4;
  _SparseDestroyOpaqueNumeric_Float((v5 + 8));
}

__n128 cva::VecLibSparse<float>::release(uint64_t a1)
{
  v1 = *(a1 + 80);
  *&v5.userFactorStorage = *(a1 + 64);
  *&v5.solveWorkspaceRequiredStatic = v1;
  v6 = *(a1 + 96);
  v2 = *(a1 + 16);
  *&v5.status = *a1;
  *&v5.symbolicFactorization.columnCount = v2;
  v3 = *(a1 + 48);
  *&v5.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&v5.symbolicFactorization.factorSize_Float = v3;
  _SparseDestroyOpaqueNumeric_Float(&v5);
  return result;
}

void cva::VecLibSparse<float>::retain(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  *&v7.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&v7.symbolicFactorization.factorSize_Float = v1;
  v2 = *(a1 + 80);
  *&v7.userFactorStorage = *(a1 + 64);
  *&v7.solveWorkspaceRequiredStatic = v2;
  v8 = *(a1 + 96);
  v3 = *(a1 + 16);
  *&v7.status = *a1;
  *&v7.symbolicFactorization.columnCount = v3;
  if (v7.symbolicFactorization.status || !v7.symbolicFactorization.workspaceSize_Float)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      _SparseTrap();
      goto LABEL_10;
    }

    *v9 = 0;
    v6 = MEMORY[0x277D86220];
LABEL_14:
    _os_log_error_impl(&dword_245028000, v6, OS_LOG_TYPE_ERROR, "Can only retain valid numeric factorizations.\n", v9, 2u);
    goto LABEL_7;
  }

  _SparseGetOptionsFromSymbolicFactor(v9, &v7.symbolicFactorization);
  v4 = *&v9[40];
  if (v7.status || !v7.solveWorkspaceRequiredStatic)
  {
    if (*&v9[40])
    {
      v22 = 0;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
      v18 = 0u;
      v17 = 0u;
      v16 = 0u;
      v15 = 0u;
      v14 = 0u;
      v13 = 0u;
      v12 = 0u;
      v11 = 0u;
      v10 = 0u;
      *&v9[47] = 0u;
      strcpy(v9, "Can only retain valid numeric factorizations.\n");
      v4(v9);
      goto LABEL_10;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v9 = 0;
    v6 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  _SparseRetainNumeric_Float(&v7);
LABEL_10:
  v5 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::retain(__int128 *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  v12 = a1[4];
  v13 = v1;
  v2 = a1[7];
  v14 = a1[6];
  v15 = v2;
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  if (v3 || !*(&v10 + 1))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      _SparseTrap();
      goto LABEL_10;
    }

    LOWORD(v16.control) = 0;
    v7 = MEMORY[0x277D86220];
LABEL_14:
    _os_log_error_impl(&dword_245028000, v7, OS_LOG_TYPE_ERROR, "Can only retain valid objects.\n", &v16, 2u);
    goto LABEL_7;
  }

  _SparseGetOptionsFromSymbolicFactor(&v16, &v9);
  reportError = v16.reportError;
  if (DWORD2(v8) || !*(&v13 + 1))
  {
    if (v16.reportError)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      *&v16.free = 0u;
      v17 = 0u;
      strcpy(&v16, "Can only retain valid objects.\n");
      (reportError)(&v16);
      goto LABEL_10;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v16.control) = 0;
    v7 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  _SparseRetainNumeric_Float((&v8 + 8));
LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::factor(int factorType@<W1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  *&Matrix.structure.rowCount = *a2;
  *&Matrix.structure.rowIndices = v4;
  Matrix.data = *(a2 + 32);
  sfoptions = *byte_2857FDB18;
  v10 = *ymmword_24508ABA0;
  if (Matrix.structure.rowCount <= 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    v14 = "Matrix.structure";
    v15 = 1024;
    LODWORD(v16) = Matrix.structure.rowCount;
    v6 = MEMORY[0x277D86220];
    v7 = "%s.rowCount must be > 0, but is %d.\n";
LABEL_14:
    v8 = 18;
    goto LABEL_15;
  }

  if (Matrix.structure.columnCount <= 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    v14 = "Matrix.structure";
    v15 = 1024;
    LODWORD(v16) = Matrix.structure.rowCount;
    v6 = MEMORY[0x277D86220];
    v7 = "%s.columnCount must be > 0, but is %d.\n";
    goto LABEL_14;
  }

  if (!*(&Matrix.structure.blockSize + 2))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    v14 = "Matrix.structure";
    v15 = 1024;
    LODWORD(v16) = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "%s.blockSize must be > 0, but is %d.]n";
    goto LABEL_14;
  }

  v5 = *&Matrix.structure.attributes & 0xC;
  if (Matrix.structure.rowCount == Matrix.structure.columnCount || v5 != 12)
  {
    if ((factorType - 80) < 4)
    {
      _SparseFactorLU_Float();
      goto LABEL_17;
    }

    if ((factorType - 40) <= 1)
    {
      _SparseFactorQR_Float(a3, factorType, &Matrix, &sfoptions, &v10);
      goto LABEL_17;
    }

    if (v5 == 12)
    {
      _SparseFactorSymmetric_Float(a3, factorType, &Matrix, &sfoptions, &v10);
      goto LABEL_17;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = MEMORY[0x277D86220];
      v7 = "Cannot perform symmetric matrix factorization of non-symmetric matrix.\n";
      v8 = 2;
      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v14 = "Matrix.structure";
    v15 = 2080;
    v16 = "Matrix.structure";
    v17 = 1024;
    rowCount = Matrix.structure.rowCount;
    v19 = 2080;
    v20 = "Matrix.structure";
    v21 = 1024;
    columnCount = Matrix.structure.columnCount;
    v6 = MEMORY[0x277D86220];
    v7 = "%s.attributes.kind=SparseSymmetric, but %s.rowCount (%d) != %s.columnCount (%d).\n";
    v8 = 44;
LABEL_15:
    _os_log_error_impl(&dword_245028000, v6, OS_LOG_TYPE_ERROR, v7, buf, v8);
  }

LABEL_16:
  _SparseTrap();
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = -4;
  *(a3 + 8) = -4;
LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::refactor(__int128 *a1, SparseOpaqueFactorization_Float *factor)
{
  v37 = *MEMORY[0x277D85DE8];
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a1 + 4);
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19.control) = 0;
      v10 = MEMORY[0x277D86220];
      v11 = "Factorization does not hold a completed matrix factorization.\n";
      goto LABEL_22;
    }

LABEL_3:
    _SparseTrap();
    goto LABEL_4;
  }

  memset(&v17, 0, sizeof(v17));
  _SparseGetOptionsFromNumericFactor_Float(&v17, factor);
  v16 = v17;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19.control) = 0;
      v10 = MEMORY[0x277D86220];
      v11 = "Factorization does not hold a valid symbolic matrix factorization.\n";
LABEL_22:
      _os_log_error_impl(&dword_245028000, v10, OS_LOG_TYPE_ERROR, v11, &v19, 2u);
      goto LABEL_3;
    }

    goto LABEL_3;
  }

  _SparseGetOptionsFromSymbolicFactor(&v19, p_symbolicFactorization);
  free = v19.free;
  reportError = v19.reportError;
  v7 = (v19.malloc)(factor->symbolicFactorization.workspaceSize_Double);
  if (!v7)
  {
    factor->status = SparseInternalError;
    if (reportError)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      memset(&v19, 0, sizeof(v19));
      snprintf(&v19, 0x100uLL, "Failed to allocate workspace of size %ld.", factor->symbolicFactorization.workspaceSize_Double);
      (reportError)(&v19);
      goto LABEL_4;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      workspaceSize_Double = factor->symbolicFactorization.workspaceSize_Double;
      v19.control = 134217984;
      *&v19.orderMethod = workspaceSize_Double;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.", &v19, 0xCu);
    }

    goto LABEL_3;
  }

  v8 = v7;
  *&v19.control = v13;
  *&v19.ignoreRowsAndColumns = v14;
  v19.free = v15;
  nfoptions = v16;
  if (v13 == factor->symbolicFactorization.rowCount && *&v19.orderMethod == factor->symbolicFactorization.columnCount && BYTE4(v19.malloc) == LOBYTE(factor->symbolicFactorization.factorization) && ((*&factor->symbolicFactorization.attributes ^ LOWORD(v19.malloc)) & 1) == 0)
  {
    v9 = BYTE1(factor->symbolicFactorization.factorization);
    if ((v9 - 80) >= 4)
    {
      if ((v9 - 40) > 1)
      {
        _SparseRefactorSymmetric_Float(&v19, factor, &nfoptions, v7);
      }

      else
      {
        _SparseRefactorQR_Float(&v19, factor, &nfoptions, v7);
      }
    }

    else
    {
      _SparseRefactorLU_Float();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "Matrix";
      v35 = 2080;
      v36 = "Factored->symbolicFactorization";
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s does not match that used for symbolic factorization stored in %s.\n", buf, 0x16u);
    }

    _SparseTrap();
  }

  (free)(v8);
LABEL_4:
  v3 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::solve(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v8 = *(a1 + 80);
    *&Factored.userFactorStorage = *(a1 + 64);
    *&Factored.solveWorkspaceRequiredStatic = v8;
    v37 = *(a1 + 96);
    v9 = *(a1 + 16);
    *&Factored.status = *a1;
    *&Factored.symbolicFactorization.columnCount = v9;
    v10 = *(a1 + 48);
    *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
    *&Factored.symbolicFactorization.factorSize_Float = v10;
    if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      LOWORD(v40.control) = 0;
      v7 = MEMORY[0x277D86220];
      goto LABEL_58;
    }

    v21 = *a3;
    v22 = *(a3 + 8);
    v23 = *a2;
    v24 = *(a2 + 8);
    _SparseGetOptionsFromSymbolicFactor(&v40, &Factored.symbolicFactorization);
    reportError = v40.reportError;
    if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float && Factored.status == SparseStatusOK && Factored.solveWorkspaceRequiredStatic)
    {
      if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
      {
        v26 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      else
      {
        v26 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
      {
        v27 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      else
      {
        v27 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
      {
        v28 = v26;
      }

      else
      {
        v28 = v27;
      }

      if (v27 == v23)
      {
        if (v28 == v21)
        {
          free = v40.free;
          Soln.rowCount = v21;
          Soln.columnCount = 1;
          *&Soln.attributes = 0;
          Soln.data = v22;
          Soln.columnStride = v21;
          *&v38.attributes = 0;
          v38.data = v24;
          v38.rowCount = v23;
          v38.columnCount = 1;
          v38.columnStride = v23;
          v30 = v37 + Factored.solveWorkspaceRequiredPerRHS;
          v31 = (v40.malloc)(v37 + Factored.solveWorkspaceRequiredPerRHS);
          if (v31)
          {
            v32 = v31;
            _SparseSolveOpaque_Float(&Factored, &Soln, &v38, v31);
            (free)(v32);
            goto LABEL_8;
          }

          if (!reportError)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }

            v40.control = 134217984;
            *&v40.orderMethod = v30;
            v33 = MEMORY[0x277D86220];
            v34 = "Failed to allocate workspace of size %ld for SparseSolve().\n";
            goto LABEL_61;
          }

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          memset(&v40, 0, sizeof(v40));
          snprintf(&v40, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
          goto LABEL_66;
        }

        if (!v40.reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v40.control = 136316162;
            *&v40.orderMethod = "b";
            *(&v40.order + 6) = v21;
            WORD1(v40.ignoreRowsAndColumns) = 2080;
            WORD2(v40.order) = 1024;
            *(&v40.ignoreRowsAndColumns + 4) = "Factored";
            WORD2(v40.malloc) = 1024;
            *(&v40.malloc + 6) = v28;
            WORD1(v40.free) = 1024;
            HIDWORD(v40.free) = v23;
            v35 = MEMORY[0x277D86220];
            goto LABEL_75;
          }

          goto LABEL_7;
        }
      }

      else if (!v40.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v40.control = 136316162;
        *&v40.orderMethod = "x";
        *(&v40.order + 6) = v23;
        WORD1(v40.ignoreRowsAndColumns) = 2080;
        WORD2(v40.order) = 1024;
        *(&v40.ignoreRowsAndColumns + 4) = "Factored";
        WORD2(v40.malloc) = 1024;
        *(&v40.malloc + 6) = v28;
        WORD1(v40.free) = 1024;
        HIDWORD(v40.free) = v27;
        v35 = MEMORY[0x277D86220];
        goto LABEL_75;
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      memset(&v40, 0, sizeof(v40));
      snprintf(&v40, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
      goto LABEL_66;
    }

    if (!v40.reportError)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v40.control = 136315138;
      *&v40.orderMethod = "Factored";
      v33 = MEMORY[0x277D86220];
      v34 = "%s does not hold a completed matrix factorization.\n";
      goto LABEL_61;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(&v40, 0, sizeof(v40));
    snprintf(&v40, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_66:
    (reportError)(&v40);
    goto LABEL_8;
  }

  v4 = *(a1 + 80);
  *&Factored.userFactorStorage = *(a1 + 64);
  *&Factored.solveWorkspaceRequiredStatic = v4;
  v37 = *(a1 + 96);
  v5 = *(a1 + 16);
  *&Factored.status = *a1;
  *&Factored.symbolicFactorization.columnCount = v5;
  v6 = *(a1 + 48);
  *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&Factored.symbolicFactorization.factorSize_Float = v6;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v40.control) = 0;
    v7 = MEMORY[0x277D86220];
LABEL_58:
    _os_log_error_impl(&dword_245028000, v7, OS_LOG_TYPE_ERROR, "Factored does not hold a completed matrix factorization.\n", &v40, 2u);
    goto LABEL_7;
  }

  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *a2;
  v16 = *(a2 + 8);
  _SparseGetOptionsFromSymbolicFactor(&v40, &Factored.symbolicFactorization);
  v17 = v40.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (v40.reportError)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      memset(&v40, 0, sizeof(v40));
      snprintf(&v40, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_56:
      (v17)(&v40);
      goto LABEL_8;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v40.control = 136315138;
    *&v40.orderMethod = "Factored";
    v33 = MEMORY[0x277D86220];
    v34 = "%s does not hold a completed matrix factorization.\n";
LABEL_61:
    _os_log_error_impl(&dword_245028000, v33, OS_LOG_TYPE_ERROR, v34, &v40, 0xCu);
    goto LABEL_7;
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v18 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v18 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v19 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v19 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (v19 != v15)
  {
    if (v40.reportError)
    {
LABEL_55:
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      memset(&v40, 0, sizeof(v40));
      snprintf(&v40, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
      goto LABEL_56;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v40.control = 136316162;
    *&v40.orderMethod = "x";
    *(&v40.order + 6) = v15;
    WORD1(v40.ignoreRowsAndColumns) = 2080;
    WORD2(v40.order) = 1024;
    *(&v40.ignoreRowsAndColumns + 4) = "Factored";
    WORD2(v40.malloc) = 1024;
    *(&v40.malloc + 6) = v20;
    WORD1(v40.free) = 1024;
    HIDWORD(v40.free) = v19;
    v35 = MEMORY[0x277D86220];
LABEL_75:
    _os_log_error_impl(&dword_245028000, v35, OS_LOG_TYPE_ERROR, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n", &v40, 0x28u);
    goto LABEL_7;
  }

  if (v20 == v13)
  {
    v40.control = v13;
    *&v40.orderMethod = 1;
    v40.ignoreRowsAndColumns = v14;
    v40.order = v13;
    Soln.rowCount = v15;
    Soln.columnCount = 1;
    *&Soln.attributes = 0;
    Soln.data = v16;
    Soln.columnStride = v15;
    _SparseSolveOpaque_Float(&Factored, &v40, &Soln, a4);
    goto LABEL_8;
  }

  if (v40.reportError)
  {
    goto LABEL_55;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v40.control = 136316162;
    *&v40.orderMethod = "b";
    *(&v40.order + 6) = v13;
    WORD1(v40.ignoreRowsAndColumns) = 2080;
    WORD2(v40.order) = 1024;
    *(&v40.ignoreRowsAndColumns + 4) = "Factored";
    WORD2(v40.malloc) = 1024;
    *(&v40.malloc + 6) = v20;
    WORD1(v40.free) = 1024;
    HIDWORD(v40.free) = v15;
    v35 = MEMORY[0x277D86220];
    goto LABEL_75;
  }

LABEL_7:
  _SparseTrap();
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::solve(uint64_t a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3, void *a4)
{
  v59 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v4 = *(a1 + 80);
    *&Factored.userFactorStorage = *(a1 + 64);
    *&Factored.solveWorkspaceRequiredStatic = v4;
    v44 = *(a1 + 96);
    v5 = *(a1 + 16);
    *&Factored.status = *a1;
    *&Factored.symbolicFactorization.columnCount = v5;
    v6 = *(a1 + 48);
    *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
    *&Factored.symbolicFactorization.factorSize_Float = v6;
    RHS = *a3;
    Soln = *a2;
    if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float)
    {
      _SparseGetOptionsFromSymbolicFactor(&v45, &Factored.symbolicFactorization);
      reportError = v45.reportError;
      if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float && Factored.status == SparseStatusOK && Factored.solveWorkspaceRequiredStatic)
      {
        if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
        {
          v14 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        else
        {
          v14 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
        {
          v15 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        else
        {
          v15 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        if (RHS.columnStride < RHS.rowCount)
        {
          if (v45.reportError)
          {
            goto LABEL_49;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_80;
          }

          goto LABEL_7;
        }

        if (Soln.columnStride < Soln.rowCount)
        {
          if (v45.reportError)
          {
LABEL_49:
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
            memset(&v45, 0, sizeof(v45));
            snprintf(&v45, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
            goto LABEL_50;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

LABEL_108:
          v45.control = 136315906;
          *&v45.orderMethod = "X";
          WORD2(v45.order) = 1024;
          *(&v45.order + 6) = Soln.columnStride;
          WORD1(v45.ignoreRowsAndColumns) = 2080;
          *(&v45.ignoreRowsAndColumns + 4) = "X";
          WORD2(v45.malloc) = 1024;
          *(&v45.malloc + 6) = Soln.rowCount;
          v27 = MEMORY[0x277D86220];
          goto LABEL_109;
        }

        if (*&RHS.attributes)
        {
          rowCount = RHS.rowCount;
        }

        else
        {
          rowCount = RHS.columnCount;
        }

        if (*&RHS.attributes)
        {
          columnCount = RHS.columnCount;
        }

        else
        {
          columnCount = RHS.rowCount;
        }

        if (*&Soln.attributes)
        {
          v25 = Soln.rowCount;
        }

        else
        {
          v25 = Soln.columnCount;
        }

        if (*&Soln.attributes)
        {
          v26 = Soln.columnCount;
        }

        else
        {
          v26 = Soln.rowCount;
        }

        if (rowCount != v25)
        {
          if (v45.reportError)
          {
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
            memset(&v45, 0, sizeof(v45));
            snprintf(&v45, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
            goto LABEL_50;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          v45.control = 136316418;
          *&v45.orderMethod = "B";
          WORD2(v45.order) = 1024;
          *(&v45.order + 6) = columnCount;
          WORD1(v45.ignoreRowsAndColumns) = 1024;
          HIDWORD(v45.ignoreRowsAndColumns) = rowCount;
          LOWORD(v45.malloc) = 2080;
          *(&v45.malloc + 2) = "X";
          WORD1(v45.free) = 1024;
          HIDWORD(v45.free) = v26;
          LOWORD(v45.reportError) = 1024;
          *(&v45.reportError + 2) = v25;
          v36 = MEMORY[0x277D86220];
          v37 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
          goto LABEL_143;
        }

        if (rowCount > 0)
        {
          if (columnCount == v16)
          {
            if (v26 == v15)
            {
              _SparseSolveOpaque_Float(&Factored, &RHS, &Soln, a4);
              goto LABEL_8;
            }

            if (v45.reportError)
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v46 = 0u;
              memset(&v45, 0, sizeof(v45));
              v38 = "X";
              goto LABEL_124;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }

            v45.control = 136316418;
            *&v45.orderMethod = "X";
            WORD2(v45.order) = 1024;
            *(&v45.order + 6) = v26;
            WORD1(v45.ignoreRowsAndColumns) = 1024;
            HIDWORD(v45.ignoreRowsAndColumns) = rowCount;
            LOWORD(v45.malloc) = 2080;
            *(&v45.malloc + 2) = "matrix factorization Factored";
            WORD1(v45.free) = 1024;
            HIDWORD(v45.free) = v15;
            LOWORD(v45.reportError) = 1024;
            *(&v45.reportError + 2) = v16;
            v36 = MEMORY[0x277D86220];
            v37 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
          }

          else
          {
            if (v45.reportError)
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v46 = 0u;
              memset(&v45, 0, sizeof(v45));
              v38 = "B";
LABEL_124:
              snprintf(&v45, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v38);
              goto LABEL_50;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }

            v45.control = 136316418;
            *&v45.orderMethod = "B";
            WORD2(v45.order) = 1024;
            *(&v45.order + 6) = columnCount;
            WORD1(v45.ignoreRowsAndColumns) = 1024;
            HIDWORD(v45.ignoreRowsAndColumns) = rowCount;
            LOWORD(v45.malloc) = 2080;
            *(&v45.malloc + 2) = "matrix factorization Factored";
            WORD1(v45.free) = 1024;
            HIDWORD(v45.free) = v15;
            LOWORD(v45.reportError) = 1024;
            *(&v45.reportError + 2) = v16;
            v36 = MEMORY[0x277D86220];
            v37 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
          }

LABEL_143:
          _os_log_error_impl(&dword_245028000, v36, OS_LOG_TYPE_ERROR, v37, &v45, 0x2Eu);
          goto LABEL_7;
        }

        if (v45.reportError)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          memset(&v45, 0, sizeof(v45));
          snprintf(&v45, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_50;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v45.control = 136315650;
        *&v45.orderMethod = "B";
        WORD2(v45.order) = 1024;
        *(&v45.order + 6) = columnCount;
        WORD1(v45.ignoreRowsAndColumns) = 1024;
        HIDWORD(v45.ignoreRowsAndColumns) = rowCount;
        v40 = MEMORY[0x277D86220];
LABEL_134:
        _os_log_error_impl(&dword_245028000, v40, OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v45, 0x18u);
        goto LABEL_7;
      }

      if (v45.reportError)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        memset(&v45, 0, sizeof(v45));
        snprintf(&v45, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_50:
        (reportError)(&v45);
        goto LABEL_8;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v45.control = 136315138;
      *&v45.orderMethod = "Factored";
      v21 = MEMORY[0x277D86220];
      v22 = "%s does not hold a completed matrix factorization.\n";
LABEL_78:
      _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, v22, &v45, 0xCu);
      goto LABEL_7;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v45.control) = 0;
    v7 = MEMORY[0x277D86220];
LABEL_75:
    _os_log_error_impl(&dword_245028000, v7, OS_LOG_TYPE_ERROR, "Factored does not hold a completed matrix factorization.\n", &v45, 2u);
    goto LABEL_7;
  }

  v8 = *(a1 + 80);
  *&Factored.userFactorStorage = *(a1 + 64);
  *&Factored.solveWorkspaceRequiredStatic = v8;
  v44 = *(a1 + 96);
  v9 = *(a1 + 16);
  *&Factored.status = *a1;
  *&Factored.symbolicFactorization.columnCount = v9;
  v10 = *(a1 + 48);
  *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&Factored.symbolicFactorization.factorSize_Float = v10;
  RHS = *a3;
  Soln = *a2;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v45.control) = 0;
    v7 = MEMORY[0x277D86220];
    goto LABEL_75;
  }

  _SparseGetOptionsFromSymbolicFactor(&v45, &Factored.symbolicFactorization);
  v17 = v45.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (!v45.reportError)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v45.control = 136315138;
      *&v45.orderMethod = "Factored";
      v21 = MEMORY[0x277D86220];
      v22 = "%s does not hold a completed matrix factorization.\n";
      goto LABEL_78;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    memset(&v45, 0, sizeof(v45));
    snprintf(&v45, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_56:
    (v17)(&v45);
    goto LABEL_8;
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v18 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v18 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v19 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v19 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (RHS.columnStride >= RHS.rowCount)
  {
    if (Soln.columnStride < Soln.rowCount)
    {
      if (!v45.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        goto LABEL_108;
      }

      goto LABEL_55;
    }

    if (*&RHS.attributes)
    {
      v28 = RHS.rowCount;
    }

    else
    {
      v28 = RHS.columnCount;
    }

    if (*&RHS.attributes)
    {
      v29 = RHS.columnCount;
    }

    else
    {
      v29 = RHS.rowCount;
    }

    if (*&Soln.attributes)
    {
      v30 = Soln.rowCount;
    }

    else
    {
      v30 = Soln.columnCount;
    }

    if (*&Soln.attributes)
    {
      v31 = Soln.columnCount;
    }

    else
    {
      v31 = Soln.rowCount;
    }

    if (v28 != v30)
    {
      if (!v45.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v45.control = 136316418;
        *&v45.orderMethod = "B";
        WORD2(v45.order) = 1024;
        *(&v45.order + 6) = v29;
        WORD1(v45.ignoreRowsAndColumns) = 1024;
        HIDWORD(v45.ignoreRowsAndColumns) = v28;
        LOWORD(v45.malloc) = 2080;
        *(&v45.malloc + 2) = "X";
        WORD1(v45.free) = 1024;
        HIDWORD(v45.free) = v31;
        LOWORD(v45.reportError) = 1024;
        *(&v45.reportError + 2) = v30;
        v36 = MEMORY[0x277D86220];
        v37 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
        goto LABEL_143;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      memset(&v45, 0, sizeof(v45));
      snprintf(&v45, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
      goto LABEL_56;
    }

    if (v28 <= 0)
    {
      if (!v45.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v45.control = 136315650;
        *&v45.orderMethod = "B";
        WORD2(v45.order) = 1024;
        *(&v45.order + 6) = v29;
        WORD1(v45.ignoreRowsAndColumns) = 1024;
        HIDWORD(v45.ignoreRowsAndColumns) = v28;
        v40 = MEMORY[0x277D86220];
        goto LABEL_134;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      memset(&v45, 0, sizeof(v45));
      snprintf(&v45, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      goto LABEL_56;
    }

    if (v29 == v20)
    {
      if (v31 == v19)
      {
        free = v45.free;
        v33 = Factored.solveWorkspaceRequiredPerRHS + v44 * v28;
        v34 = (v45.malloc)(v33);
        if (v34)
        {
          v35 = v34;
          _SparseSolveOpaque_Float(&Factored, &RHS, &Soln, v34);
          (free)(v35);
          goto LABEL_8;
        }

        if (!v17)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          v45.control = 134217984;
          *&v45.orderMethod = v33;
          v21 = MEMORY[0x277D86220];
          v22 = "Failed to allocate workspace of size %ld for SparseSolve().\n";
          goto LABEL_78;
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        memset(&v45, 0, sizeof(v45));
        snprintf(&v45, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
        goto LABEL_56;
      }

      if (!v45.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v45.control = 136316418;
        *&v45.orderMethod = "X";
        WORD2(v45.order) = 1024;
        *(&v45.order + 6) = v31;
        WORD1(v45.ignoreRowsAndColumns) = 1024;
        HIDWORD(v45.ignoreRowsAndColumns) = v28;
        LOWORD(v45.malloc) = 2080;
        *(&v45.malloc + 2) = "matrix factorization Factored";
        WORD1(v45.free) = 1024;
        HIDWORD(v45.free) = v19;
        LOWORD(v45.reportError) = 1024;
        *(&v45.reportError + 2) = v20;
        v36 = MEMORY[0x277D86220];
        v37 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
        goto LABEL_143;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      memset(&v45, 0, sizeof(v45));
      v39 = "X";
    }

    else
    {
      if (!v45.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v45.control = 136316418;
        *&v45.orderMethod = "B";
        WORD2(v45.order) = 1024;
        *(&v45.order + 6) = v29;
        WORD1(v45.ignoreRowsAndColumns) = 1024;
        HIDWORD(v45.ignoreRowsAndColumns) = v28;
        LOWORD(v45.malloc) = 2080;
        *(&v45.malloc + 2) = "matrix factorization Factored";
        WORD1(v45.free) = 1024;
        HIDWORD(v45.free) = v19;
        LOWORD(v45.reportError) = 1024;
        *(&v45.reportError + 2) = v20;
        v36 = MEMORY[0x277D86220];
        v37 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
        goto LABEL_143;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      memset(&v45, 0, sizeof(v45));
      v39 = "B";
    }

    snprintf(&v45, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v39);
    goto LABEL_56;
  }

  if (v45.reportError)
  {
LABEL_55:
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    memset(&v45, 0, sizeof(v45));
    snprintf(&v45, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
    goto LABEL_56;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_80:
    v45.control = 136315906;
    *&v45.orderMethod = "B";
    WORD2(v45.order) = 1024;
    *(&v45.order + 6) = RHS.columnStride;
    WORD1(v45.ignoreRowsAndColumns) = 2080;
    *(&v45.ignoreRowsAndColumns + 4) = "B";
    WORD2(v45.malloc) = 1024;
    *(&v45.malloc + 6) = RHS.rowCount;
    v27 = MEMORY[0x277D86220];
LABEL_109:
    _os_log_error_impl(&dword_245028000, v27, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v45, 0x22u);
  }

LABEL_7:
  _SparseTrap();
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::solve(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = *(a1 + 80);
    *&Factored.userFactorStorage = *(a1 + 64);
    *&Factored.solveWorkspaceRequiredStatic = v3;
    v28 = *(a1 + 96);
    v4 = *(a1 + 16);
    *&Factored.status = *a1;
    *&Factored.symbolicFactorization.columnCount = v4;
    v5 = *(a1 + 48);
    *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
    *&Factored.symbolicFactorization.factorSize_Float = v5;
    if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float)
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      _SparseGetOptionsFromSymbolicFactor(&v30, &Factored.symbolicFactorization);
      reportError = v30.reportError;
      if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float && Factored.status == SparseStatusOK && Factored.solveWorkspaceRequiredStatic)
      {
        v15 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
        if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) > v15)
        {
          v15 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        if (v15 == v12)
        {
          v30.control = v12;
          *&v30.orderMethod = 1;
          v30.ignoreRowsAndColumns = v13;
          v30.order = v12;
          _SparseSolveOpaque_Float(&Factored, 0, &v30, a3);
          goto LABEL_8;
        }

        if (v30.reportError)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = 0u;
          memset(&v30, 0, sizeof(v30));
          snprintf(&v30, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
          goto LABEL_34;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v30.control = 136315650;
          *&v30.orderMethod = "xb";
          WORD2(v30.order) = 1024;
          *(&v30.order + 6) = v12;
          WORD1(v30.ignoreRowsAndColumns) = 2080;
          *(&v30.ignoreRowsAndColumns + 4) = "Factored";
          v26 = MEMORY[0x277D86220];
LABEL_51:
          _os_log_error_impl(&dword_245028000, v26, OS_LOG_TYPE_ERROR, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n", &v30, 0x1Cu);
          goto LABEL_7;
        }

        goto LABEL_7;
      }

      if (v30.reportError)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        memset(&v30, 0, sizeof(v30));
        snprintf(&v30, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_34:
        (reportError)(&v30);
        goto LABEL_8;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v30.control = 136315138;
      *&v30.orderMethod = "Factored";
      v24 = MEMORY[0x277D86220];
      v25 = "%s does not hold a completed matrix factorization.\n";
LABEL_43:
      _os_log_error_impl(&dword_245028000, v24, OS_LOG_TYPE_ERROR, v25, &v30, 0xCu);
      goto LABEL_7;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v30.control) = 0;
    v6 = MEMORY[0x277D86220];
LABEL_40:
    _os_log_error_impl(&dword_245028000, v6, OS_LOG_TYPE_ERROR, "Factored does not hold a completed matrix factorization.\n", &v30, 2u);
    goto LABEL_7;
  }

  v7 = *(a1 + 80);
  *&Factored.userFactorStorage = *(a1 + 64);
  *&Factored.solveWorkspaceRequiredStatic = v7;
  v28 = *(a1 + 96);
  v8 = *(a1 + 16);
  *&Factored.status = *a1;
  *&Factored.symbolicFactorization.columnCount = v8;
  v9 = *(a1 + 48);
  *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&Factored.symbolicFactorization.factorSize_Float = v9;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v30.control) = 0;
    v6 = MEMORY[0x277D86220];
    goto LABEL_40;
  }

  v16 = *a2;
  v17 = *(a2 + 8);
  _SparseGetOptionsFromSymbolicFactor(&v30, &Factored.symbolicFactorization);
  v18 = v30.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (!v30.reportError)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v30.control = 136315138;
      *&v30.orderMethod = "Factored";
      v24 = MEMORY[0x277D86220];
      v25 = "%s does not hold a completed matrix factorization.\n";
      goto LABEL_43;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(&v30, 0, sizeof(v30));
    snprintf(&v30, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_48:
    (v18)(&v30);
    goto LABEL_8;
  }

  v19 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) > v19)
  {
    v19 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if (v19 == v16)
  {
    free = v30.free;
    Soln.rowCount = v16;
    Soln.columnCount = 1;
    *&Soln.attributes = 0;
    Soln.data = v17;
    Soln.columnStride = v16;
    v21 = v28 + Factored.solveWorkspaceRequiredPerRHS;
    v22 = (v30.malloc)(v28 + Factored.solveWorkspaceRequiredPerRHS);
    if (v22)
    {
      v23 = v22;
      _SparseSolveOpaque_Float(&Factored, 0, &Soln, v22);
      (free)(v23);
      goto LABEL_8;
    }

    if (!v18)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v30.control = 134217984;
      *&v30.orderMethod = v21;
      v24 = MEMORY[0x277D86220];
      v25 = "Failed to allocate workspace of size %ld for SparseSolve().\n";
      goto LABEL_43;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(&v30, 0, sizeof(v30));
    snprintf(&v30, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
    goto LABEL_48;
  }

  if (v30.reportError)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(&v30, 0, sizeof(v30));
    snprintf(&v30, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v30.control = 136315650;
    *&v30.orderMethod = "xb";
    WORD2(v30.order) = 1024;
    *(&v30.order + 6) = v16;
    WORD1(v30.ignoreRowsAndColumns) = 2080;
    *(&v30.ignoreRowsAndColumns + 4) = "Factored";
    v26 = MEMORY[0x277D86220];
    goto LABEL_51;
  }

LABEL_7:
  _SparseTrap();
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::solve(uint64_t a1, DenseMatrix_Float *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = *(a1 + 80);
    *&Factored.userFactorStorage = *(a1 + 64);
    *&Factored.solveWorkspaceRequiredStatic = v3;
    v30 = *(a1 + 96);
    v4 = *(a1 + 16);
    *&Factored.status = *a1;
    *&Factored.symbolicFactorization.columnCount = v4;
    v5 = *(a1 + 48);
    *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
    *&Factored.symbolicFactorization.factorSize_Float = v5;
    Soln = *a2;
    if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float)
    {
      _SparseGetOptionsFromSymbolicFactor(&v31, &Factored.symbolicFactorization);
      reportError = v31.reportError;
      if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float && Factored.status == SparseStatusOK && Factored.solveWorkspaceRequiredStatic)
      {
        if (Soln.columnStride < Soln.rowCount)
        {
          if (v31.reportError)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            memset(&v31, 0, sizeof(v31));
            snprintf(&v31, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
            (reportError)(&v31);
            goto LABEL_8;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_70;
          }

          goto LABEL_7;
        }

        if (*&Soln.attributes)
        {
          columnCount = Soln.columnCount;
        }

        else
        {
          columnCount = Soln.rowCount;
        }

        if (*&Soln.attributes)
        {
          rowCount = Soln.rowCount;
        }

        else
        {
          rowCount = Soln.columnCount;
        }

        if (rowCount > 0)
        {
          if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) <= Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization))
          {
            v16 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
          }

          else
          {
            v16 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
          }

          if (columnCount == v16)
          {
            _SparseSolveOpaque_Float(&Factored, 0, &Soln, a3);
            goto LABEL_8;
          }

          if (v31.reportError)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            memset(&v31, 0, sizeof(v31));
            snprintf(&v31, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
            goto LABEL_27;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          v31.control = 136316162;
          *&v31.orderMethod = "XB";
          WORD2(v31.order) = 1024;
          *(&v31.order + 6) = columnCount;
          WORD1(v31.ignoreRowsAndColumns) = 1024;
          HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
          LOWORD(v31.malloc) = 2080;
          *(&v31.malloc + 2) = "Factored";
          WORD1(v31.free) = 1024;
          HIDWORD(v31.free) = v16;
          v27 = MEMORY[0x277D86220];
LABEL_86:
          _os_log_error_impl(&dword_245028000, v27, OS_LOG_TYPE_ERROR, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n", &v31, 0x28u);
          goto LABEL_7;
        }

        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          snprintf(&v31, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v31.control = 136315650;
        *&v31.orderMethod = "XB";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = columnCount;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
        v26 = MEMORY[0x277D86220];
LABEL_81:
        _os_log_error_impl(&dword_245028000, v26, OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v31, 0x18u);
        goto LABEL_7;
      }

      if (v31.reportError)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(&v31, 0, sizeof(v31));
        snprintf(&v31, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
        goto LABEL_27;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v31.control = 136315138;
      *&v31.orderMethod = "Factored";
      v17 = MEMORY[0x277D86220];
      v18 = "%s does not hold a completed matrix factorization.\n";
LABEL_62:
      _os_log_error_impl(&dword_245028000, v17, OS_LOG_TYPE_ERROR, v18, &v31, 0xCu);
      goto LABEL_7;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v31.control) = 0;
    v6 = MEMORY[0x277D86220];
LABEL_59:
    _os_log_error_impl(&dword_245028000, v6, OS_LOG_TYPE_ERROR, "Factored does not hold a completed matrix factorization.\n", &v31, 2u);
    goto LABEL_7;
  }

  v7 = *(a1 + 80);
  *&Factored.userFactorStorage = *(a1 + 64);
  *&Factored.solveWorkspaceRequiredStatic = v7;
  v30 = *(a1 + 96);
  v8 = *(a1 + 16);
  *&Factored.status = *a1;
  *&Factored.symbolicFactorization.columnCount = v8;
  v9 = *(a1 + 48);
  *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&Factored.symbolicFactorization.factorSize_Float = v9;
  Soln = *a2;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v31.control) = 0;
    v6 = MEMORY[0x277D86220];
    goto LABEL_59;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, &Factored.symbolicFactorization);
  v13 = v31.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (!v31.reportError)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v31.control = 136315138;
      *&v31.orderMethod = "Factored";
      v17 = MEMORY[0x277D86220];
      v18 = "%s does not hold a completed matrix factorization.\n";
      goto LABEL_62;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(&v31, 0, sizeof(v31));
    snprintf(&v31, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_30:
    (v13)(&v31);
    goto LABEL_8;
  }

  if (Soln.columnStride >= Soln.rowCount)
  {
    if (*&Soln.attributes)
    {
      v19 = Soln.columnCount;
    }

    else
    {
      v19 = Soln.rowCount;
    }

    if (*&Soln.attributes)
    {
      v20 = Soln.rowCount;
    }

    else
    {
      v20 = Soln.columnCount;
    }

    if (v20 <= 0)
    {
      if (!v31.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v31.control = 136315650;
        *&v31.orderMethod = "XB";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = v19;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = v20;
        v26 = MEMORY[0x277D86220];
        goto LABEL_81;
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      memset(&v31, 0, sizeof(v31));
      snprintf(&v31, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
    }

    else
    {
      if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) <= Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization))
      {
        v21 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      else
      {
        v21 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      if (v19 == v21)
      {
        free = v31.free;
        v23 = Factored.solveWorkspaceRequiredPerRHS + v30 * v20;
        v24 = (v31.malloc)(v23);
        if (v24)
        {
          v25 = v24;
          _SparseSolveOpaque_Float(&Factored, 0, &Soln, v24);
          (free)(v25);
          goto LABEL_8;
        }

        if (!v13)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          v31.control = 134217984;
          *&v31.orderMethod = v23;
          v17 = MEMORY[0x277D86220];
          v18 = "Failed to allocate workspace of size %ld for SparseSolve().\n";
          goto LABEL_62;
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(&v31, 0, sizeof(v31));
        snprintf(&v31, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      }

      else
      {
        if (!v31.reportError)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          v31.control = 136316162;
          *&v31.orderMethod = "XB";
          WORD2(v31.order) = 1024;
          *(&v31.order + 6) = v19;
          WORD1(v31.ignoreRowsAndColumns) = 1024;
          HIDWORD(v31.ignoreRowsAndColumns) = v20;
          LOWORD(v31.malloc) = 2080;
          *(&v31.malloc + 2) = "Factored";
          WORD1(v31.free) = 1024;
          HIDWORD(v31.free) = v21;
          v27 = MEMORY[0x277D86220];
          goto LABEL_86;
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(&v31, 0, sizeof(v31));
        snprintf(&v31, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
      }
    }

    goto LABEL_30;
  }

  if (v31.reportError)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(&v31, 0, sizeof(v31));
    snprintf(&v31, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_70:
    v31.control = 136315906;
    *&v31.orderMethod = "XB";
    WORD2(v31.order) = 1024;
    *(&v31.order + 6) = Soln.columnStride;
    WORD1(v31.ignoreRowsAndColumns) = 2080;
    *(&v31.ignoreRowsAndColumns + 4) = "XB";
    WORD2(v31.malloc) = 1024;
    *(&v31.malloc + 6) = Soln.rowCount;
    _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v31, 0x22u);
  }

LABEL_7:
  _SparseTrap();
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::subfactor(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  *&v24.symbolicFactorization.workspaceSize_Float = *(a2 + 32);
  *&v24.symbolicFactorization.factorSize_Float = v4;
  v5 = *(a2 + 80);
  *&v24.userFactorStorage = *(a2 + 64);
  *&v24.solveWorkspaceRequiredStatic = v5;
  v25 = *(a2 + 96);
  v6 = *(a2 + 16);
  *&v24.status = *a2;
  *&v24.symbolicFactorization.columnCount = v6;
  if (v24.symbolicFactorization.status || !v24.symbolicFactorization.workspaceSize_Float || v24.status || !v24.solveWorkspaceRequiredStatic)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "Bad factor.\n";
      goto LABEL_51;
    }

LABEL_15:
    _SparseTrap();
LABEL_48:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 8) = -3;
    *(a3 + 16) = -3;
    goto LABEL_49;
  }

  _SparseGetOptionsFromSymbolicFactor(v28, &v24.symbolicFactorization);
  v8 = *&v28[40];
  if (a1 > 5)
  {
    if ((a1 - 7) < 2)
    {
      if ((BYTE1(v24.symbolicFactorization.factorization) & 0xFE) != 0x28)
      {
        if (!*&v28[40])
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_15;
          }

          *v28 = 0;
          v9 = MEMORY[0x277D86220];
          v10 = "Subfactor Type only valid for QR and CholeskyAtA factorizations.\n";
          goto LABEL_51;
        }

        memset(&v28[66], 0, 190);
        strcpy(&v28[64], "\n");
        v20 = "Subfactor Type only valid for QR and CholeskyAtA factorizations.\n";
        goto LABEL_46;
      }

      v13 = 4;
      goto LABEL_39;
    }

    if ((a1 - 9) < 2)
    {
      if (BYTE1(v24.symbolicFactorization.factorization) - 81 < 3)
      {
        goto LABEL_38;
      }

      if (!*&v28[40])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        *v28 = 0;
        v9 = MEMORY[0x277D86220];
        v10 = "Subfactor Type only valid for LU factorization.\n";
        goto LABEL_51;
      }

      memset(&v28[48], 0, 208);
      v11 = "Subfactor Type only valid for LU factorization.\n";
      goto LABEL_26;
    }

    if (a1 == 6)
    {
      v14 = BYTE1(v24.symbolicFactorization.factorization) - 40;
      if (v14 <= 0x2B && ((1 << v14) & 0xE0000000001) != 0)
      {
        goto LABEL_38;
      }

      if (!*&v28[40])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        *v28 = 0;
        v9 = MEMORY[0x277D86220];
        v10 = "SparseSubfactorQ only valid for QR or LU factorizations.\n";
        goto LABEL_51;
      }

      memset(&v28[58], 0, 198);
      strcpy(v28, "SparseSubfactorQ only valid for QR or LU factorizations.\n");
      goto LABEL_47;
    }

LABEL_42:
    if (!*&v28[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *v28 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "Invalid subfactor type.";
      goto LABEL_51;
    }

    memset(&v28[24], 0, 232);
    strcpy(v28, "Invalid subfactor type.");
    goto LABEL_47;
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      goto LABEL_38;
    }

    if (a1 == 2)
    {
      if (BYTE1(v24.symbolicFactorization.factorization) - 2 < 3)
      {
        goto LABEL_38;
      }

      if (!*&v28[40])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        *v28 = 0;
        v9 = MEMORY[0x277D86220];
        v10 = "Subfactor Type only valid for LDL^T factorization.\n";
        goto LABEL_51;
      }

      memset(&v28[52], 0, 204);
      strcpy(&v28[48], "n.\n");
      v11 = "Subfactor Type only valid for LDL^T factorization.\n";
LABEL_26:
      v12 = *(v11 + 1);
      *v28 = *v11;
      *&v28[16] = v12;
      *&v28[32] = *(v11 + 2);
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      if (BYTE1(v24.symbolicFactorization.factorization) >= 5u || ((0x1Du >> SBYTE1(v24.symbolicFactorization.factorization)) & 1) == 0)
      {
        if (!*&v28[40])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *v28 = 0;
            v9 = MEMORY[0x277D86220];
            v10 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
LABEL_51:
            _os_log_error_impl(&dword_245028000, v9, OS_LOG_TYPE_ERROR, v10, v28, 2u);
            goto LABEL_15;
          }

          goto LABEL_15;
        }

        goto LABEL_45;
      }

      goto LABEL_38;
    }

    if (BYTE1(v24.symbolicFactorization.factorization) - 2 < 3)
    {
LABEL_38:
      v13 = 2;
      goto LABEL_39;
    }

    if (!*&v28[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *v28 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "Subfactor Type only valid for LDL^T factorizations.\n";
      goto LABEL_51;
    }

    memset(&v28[53], 0, 203);
    strcpy(v28, "Subfactor Type only valid for LDL^T factorizations.\n");
LABEL_47:
    v8(v28);
    goto LABEL_48;
  }

  if (BYTE1(v24.symbolicFactorization.factorization) >= 5u || ((0x1Du >> SBYTE1(v24.symbolicFactorization.factorization)) & 1) == 0)
  {
    if (!*&v28[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *v28 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
      goto LABEL_51;
    }

LABEL_45:
    memset(&v28[66], 0, 190);
    strcpy(&v28[64], "\n");
    v20 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
LABEL_46:
    v21 = *(v20 + 1);
    *v28 = *v20;
    *&v28[16] = v21;
    v22 = *(v20 + 3);
    *&v28[32] = *(v20 + 2);
    *&v28[48] = v22;
    goto LABEL_47;
  }

  v13 = 6;
LABEL_39:
  _SparseRetainNumeric_Float(&v24);
  workPerRHS = 0;
  workStatic = 0;
  *v28 = v24;
  *&v28[96] = v25;
  _SparseGetWorkspaceRequired_Float(a1, v28, &workStatic, &workPerRHS);
  v15 = *&v24.symbolicFactorization.workspaceSize_Float;
  *(a3 + 56) = *&v24.symbolicFactorization.factorSize_Float;
  v16 = *&v24.solveWorkspaceRequiredStatic;
  *(a3 + 72) = *&v24.userFactorStorage;
  *(a3 + 88) = v16;
  v17 = *&v24.symbolicFactorization.columnCount;
  *(a3 + 8) = *&v24.status;
  *(a3 + 24) = v17;
  *a3 = v13;
  *(a3 + 2) = 0;
  *(a3 + 4) = a1;
  v18 = v25;
  *(a3 + 40) = v15;
  v19 = workStatic;
  *(a3 + 104) = v18;
  *(a3 + 112) = v19;
  *(a3 + 120) = workPerRHS;
LABEL_49:
  v23 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::solve(_OWORD *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a1[5];
  v14[4] = a1[4];
  v14[5] = v4;
  v5 = a1[7];
  v14[6] = a1[6];
  v14[7] = v5;
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = a1[3];
  v14[2] = a1[2];
  v14[3] = v7;
  v8 = *(a3 + 8);
  v9 = *a2;
  v10 = *(a2 + 8);
  v12[0] = *a3;
  v12[1] = 1;
  v12[2] = v12[0];
  v12[3] = 0;
  v13 = v8;
  v11.rowCount = v9;
  v11.columnCount = 1;
  v11.columnStride = v9;
  *&v11.attributes = 0;
  v11.data = v10;
  if (a4)
  {
    sub_24506A8F8(v14, v12, &v11, a4);
  }

  else
  {
    sub_24506AF5C(v14, v12, &v11);
  }
}

void sub_24506A8F8(const SparseOpaqueSubfactor_Float *a1, uint64_t a2, const DenseMatrix_Float *a3, char *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36.control) = 0;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Subfactor does not hold a valid factor subobject.\n", &v36, 2u);
    }

    goto LABEL_65;
  }

  _SparseGetOptionsFromSymbolicFactor(&v36, &a1->factor.symbolicFactorization);
  reportError = v36.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v12 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v11 >= v12)
  {
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v13 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (*&attributes)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (*&attributes)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = *(a2 + 8);
  v19 = *a2;
  if (v18 < *a2)
  {
    if (v36.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v36.control = 136315906;
      *&v36.orderMethod = "B";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = v18;
      WORD1(v36.ignoreRowsAndColumns) = 2080;
      *(&v36.ignoreRowsAndColumns + 4) = "B";
      WORD2(v36.malloc) = 1024;
      *(&v36.malloc + 6) = v19;
      v23 = MEMORY[0x277D86220];
LABEL_48:
      _os_log_error_impl(&dword_245028000, v23, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v36, 0x22u);
      goto LABEL_65;
    }

    goto LABEL_65;
  }

  columnStride = a3->columnStride;
  rowCount = a3->rowCount;
  if (columnStride >= a3->rowCount)
  {
    if (*(a2 + 12))
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
      v19 = *(a2 + 4);
    }

    if (*&a3->attributes)
    {
      v24 = 0;
    }

    else
    {
      v24 = 4;
    }

    v25 = *(&a3->rowCount + v24);
    v26 = *(a2 + v22);
    if (*&a3->attributes)
    {
      v27 = 4;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(&a3->rowCount + v27);
    if (v19 == v25)
    {
      if (v19 <= 0)
      {
        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          snprintf(&v36, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        v33 = v26;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v36.control = 136315650;
          *&v36.orderMethod = "B";
          WORD2(v36.order) = 1024;
          *(&v36.order + 6) = v33;
          WORD1(v36.ignoreRowsAndColumns) = 1024;
          HIDWORD(v36.ignoreRowsAndColumns) = v19;
          _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v36, 0x18u);
        }

        goto LABEL_65;
      }

      if (v26 == v17)
      {
        if (v28 == v16)
        {
          _SparseSolveSubfactor_Float(a1, a2, a3, a4);
          goto LABEL_66;
        }

        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          v32 = "X";
          goto LABEL_57;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        v36.control = 136316418;
        *&v36.orderMethod = "X";
        WORD2(v36.order) = 1024;
        *(&v36.order + 6) = v28;
        WORD1(v36.ignoreRowsAndColumns) = 1024;
        HIDWORD(v36.ignoreRowsAndColumns) = v19;
        LOWORD(v36.malloc) = 2080;
        *(&v36.malloc + 2) = "subfactor dimension";
        WORD1(v36.free) = 1024;
        HIDWORD(v36.free) = v16;
        LOWORD(v36.reportError) = 1024;
        *(&v36.reportError + 2) = v17;
        v30 = MEMORY[0x277D86220];
        v31 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          v32 = "B";
LABEL_57:
          snprintf(&v36, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v32);
          goto LABEL_27;
        }

        v34 = v26;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        v36.control = 136316418;
        *&v36.orderMethod = "B";
        WORD2(v36.order) = 1024;
        *(&v36.order + 6) = v34;
        WORD1(v36.ignoreRowsAndColumns) = 1024;
        HIDWORD(v36.ignoreRowsAndColumns) = v19;
        LOWORD(v36.malloc) = 2080;
        *(&v36.malloc + 2) = "subfactor dimension";
        WORD1(v36.free) = 1024;
        HIDWORD(v36.free) = v16;
        LOWORD(v36.reportError) = 1024;
        *(&v36.reportError + 2) = v17;
        v30 = MEMORY[0x277D86220];
        v31 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v36.reportError)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        memset(&v36, 0, sizeof(v36));
        snprintf(&v36, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_27;
      }

      v29 = v26;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      v36.control = 136316418;
      *&v36.orderMethod = "B";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = v29;
      WORD1(v36.ignoreRowsAndColumns) = 1024;
      HIDWORD(v36.ignoreRowsAndColumns) = v19;
      LOWORD(v36.malloc) = 2080;
      *(&v36.malloc + 2) = "X";
      WORD1(v36.free) = 1024;
      HIDWORD(v36.free) = v28;
      LOWORD(v36.reportError) = 1024;
      *(&v36.reportError + 2) = v25;
      v30 = MEMORY[0x277D86220];
      v31 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_245028000, v30, OS_LOG_TYPE_ERROR, v31, &v36, 0x2Eu);
    goto LABEL_65;
  }

  if (!v36.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v36.control = 136315906;
      *&v36.orderMethod = "X";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = columnStride;
      WORD1(v36.ignoreRowsAndColumns) = 2080;
      *(&v36.ignoreRowsAndColumns + 4) = "X";
      WORD2(v36.malloc) = 1024;
      *(&v36.malloc + 6) = rowCount;
      v23 = MEMORY[0x277D86220];
      goto LABEL_48;
    }

LABEL_65:
    _SparseTrap();
    goto LABEL_66;
  }

LABEL_26:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  memset(&v36, 0, sizeof(v36));
  snprintf(&v36, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  (reportError)(&v36);
LABEL_66:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_24506AF5C(const SparseOpaqueSubfactor_Float *a1, uint64_t a2, const DenseMatrix_Float *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v35.control) = 0;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Subfactor does not hold a valid factorization.\n", &v35, 2u);
    }

    goto LABEL_70;
  }

  _SparseGetOptionsFromSymbolicFactor(&v35, &a1->factor.symbolicFactorization);
  reportError = v35.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v9 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v10 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v9 >= v10)
  {
    v11 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (*&attributes)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (*&attributes)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = *(a2 + 8);
  v17 = *a2;
  if (v16 < *a2)
  {
    if (v35.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35.control = 136315906;
      *&v35.orderMethod = "B";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = v16;
      WORD1(v35.ignoreRowsAndColumns) = 2080;
      *(&v35.ignoreRowsAndColumns + 4) = "B";
      WORD2(v35.malloc) = 1024;
      *(&v35.malloc + 6) = v17;
      v21 = MEMORY[0x277D86220];
LABEL_49:
      _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v35, 0x22u);
      goto LABEL_70;
    }

    goto LABEL_70;
  }

  columnStride = a3->columnStride;
  rowCount = a3->rowCount;
  if (columnStride >= a3->rowCount)
  {
    if (*(a2 + 12))
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
      v17 = *(a2 + 4);
    }

    if (*&a3->attributes)
    {
      v22 = 0;
    }

    else
    {
      v22 = 4;
    }

    v23 = *(&a3->rowCount + v22);
    v24 = *(a2 + v20);
    if (*&a3->attributes)
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(&a3->rowCount + v25);
    if (v17 == v23)
    {
      if (v17 <= 0)
      {
        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          snprintf(&v35, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v35.control = 136315650;
          *&v35.orderMethod = "B";
          WORD2(v35.order) = 1024;
          *(&v35.order + 6) = v24;
          WORD1(v35.ignoreRowsAndColumns) = 1024;
          HIDWORD(v35.ignoreRowsAndColumns) = v17;
          _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v35, 0x18u);
        }

        goto LABEL_70;
      }

      if (v24 == v15)
      {
        if (v26 == v14)
        {
          free = v35.free;
          v28 = a1->workspaceRequiredPerRHS + *&a1[1].attributes * v17;
          v29 = (v35.malloc)(v28);
          if (v29)
          {
            v30 = v29;
            _SparseSolveSubfactor_Float(a1, a2, a3, v29);
            (free)(v30);
            goto LABEL_71;
          }

          if (reportError)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v36 = 0u;
            memset(&v35, 0, sizeof(v35));
            snprintf(&v35, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
            goto LABEL_27;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v35.control = 134217984;
            *&v35.orderMethod = v28;
            _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.\n", &v35, 0xCu);
          }

          goto LABEL_70;
        }

        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          v33 = "X";
          goto LABEL_58;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        v35.control = 136316418;
        *&v35.orderMethod = "X";
        WORD2(v35.order) = 1024;
        *(&v35.order + 6) = v26;
        WORD1(v35.ignoreRowsAndColumns) = 1024;
        HIDWORD(v35.ignoreRowsAndColumns) = v17;
        LOWORD(v35.malloc) = 2080;
        *(&v35.malloc + 2) = "subfactor dimension";
        WORD1(v35.free) = 1024;
        HIDWORD(v35.free) = v14;
        LOWORD(v35.reportError) = 1024;
        *(&v35.reportError + 2) = v15;
        v31 = MEMORY[0x277D86220];
        v32 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          v33 = "B";
LABEL_58:
          snprintf(&v35, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v33);
          goto LABEL_27;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        v35.control = 136316418;
        *&v35.orderMethod = "B";
        WORD2(v35.order) = 1024;
        *(&v35.order + 6) = v24;
        WORD1(v35.ignoreRowsAndColumns) = 1024;
        HIDWORD(v35.ignoreRowsAndColumns) = v17;
        LOWORD(v35.malloc) = 2080;
        *(&v35.malloc + 2) = "subfactor dimension";
        WORD1(v35.free) = 1024;
        HIDWORD(v35.free) = v14;
        LOWORD(v35.reportError) = 1024;
        *(&v35.reportError + 2) = v15;
        v31 = MEMORY[0x277D86220];
        v32 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v35.reportError)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        memset(&v35, 0, sizeof(v35));
        snprintf(&v35, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_27;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v35.control = 136316418;
      *&v35.orderMethod = "B";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = v24;
      WORD1(v35.ignoreRowsAndColumns) = 1024;
      HIDWORD(v35.ignoreRowsAndColumns) = v17;
      LOWORD(v35.malloc) = 2080;
      *(&v35.malloc + 2) = "X";
      WORD1(v35.free) = 1024;
      HIDWORD(v35.free) = v26;
      LOWORD(v35.reportError) = 1024;
      *(&v35.reportError + 2) = v23;
      v31 = MEMORY[0x277D86220];
      v32 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_245028000, v31, OS_LOG_TYPE_ERROR, v32, &v35, 0x2Eu);
    goto LABEL_70;
  }

  if (!v35.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35.control = 136315906;
      *&v35.orderMethod = "X";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = columnStride;
      WORD1(v35.ignoreRowsAndColumns) = 2080;
      *(&v35.ignoreRowsAndColumns + 4) = "X";
      WORD2(v35.malloc) = 1024;
      *(&v35.malloc + 6) = rowCount;
      v21 = MEMORY[0x277D86220];
      goto LABEL_49;
    }

LABEL_70:
    _SparseTrap();
    goto LABEL_71;
  }

LABEL_26:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(&v35, 0, sizeof(v35));
  snprintf(&v35, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  (reportError)(&v35);
LABEL_71:
  v34 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::solve(_OWORD *a1, DenseMatrix_Float *a2, __int128 *a3, char *a4)
{
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[7];
  v11[6] = a1[6];
  v11[7] = v5;
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v7 = a1[3];
  v11[2] = a1[2];
  v11[3] = v7;
  v9 = *a3;
  v10 = *(a3 + 2);
  v8 = *a2;
  if (a4)
  {
    sub_24506A8F8(v11, &v9, &v8, a4);
  }

  else
  {
    sub_24506AF5C(v11, &v9, &v8);
  }
}

void cva::VecLibSparse<float>::solve(_OWORD *a1, uint64_t a2, char *a3)
{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v7 = *(a2 + 8);
  v8[0] = *a2;
  v8[1] = 1;
  v8[2] = v8[0];
  v8[3] = 0;
  v9 = v7;
  if (a3)
  {
    sub_24506B7E0(v10, v8, a3);
  }

  else
  {
    sub_24506BA6C(v10, v8);
  }
}

void sub_24506B7E0(uint64_t a1, uint64_t a2, char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *v20 = 0;
    v18 = MEMORY[0x277D86220];
    v19 = "Subfactor does not hold a valid factor subobject.\n";
    goto LABEL_34;
  }

  _SparseGetOptionsFromSymbolicFactor(v20, (a1 + 16));
  v6 = *&v20[40];
  v7 = 4;
  if (*(a2 + 12))
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if ((*(a2 + 12) & 1) == 0)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (*&v20[40])
    {
      memset(&v20[34], 0, 222);
      strcpy(v20, "XB must have non-zero dimension.\n");
LABEL_27:
      v6(v20);
      goto LABEL_28;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_22:
      _SparseTrap();
      goto LABEL_28;
    }

    *v20 = 0;
    v18 = MEMORY[0x277D86220];
    v19 = "XB must have non-zero dimension.\n";
LABEL_34:
    _os_log_error_impl(&dword_245028000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_22;
  }

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v12 > v13)
  {
    v13 = v12;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  if (v10 != v16)
  {
    if (*&v20[40])
    {
      memset(v20, 0, sizeof(v20));
      snprintf(v20, 0x100uLL, "XB dimension (%d) must match maximum subfactor dimension (%d).\n", v10, v16);
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v20 = 67109376;
      *&v20[4] = v10;
      *&v20[8] = 1024;
      *&v20[10] = v16;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "XB dimension (%d) must match maximum subfactor dimension (%d).\n", v20, 0xEu);
    }

    goto LABEL_22;
  }

  _SparseSolveSubfactor_Float(a1, 0, a2, a3);
LABEL_28:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_24506BA6C(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v24 = 0;
    v21 = MEMORY[0x277D86220];
    v22 = "Subfactor does not hold a valid factorization.\n";
    goto LABEL_40;
  }

  _SparseGetOptionsFromSymbolicFactor(v24, (a1 + 16));
  v4 = *&v24[40];
  v5 = *(a2 + 12);
  v6 = (v5 & 1) == 0;
  v7 = 4;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if (v6)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (*&v24[40])
    {
      memset(&v24[34], 0, 222);
      strcpy(v24, "XB must have non-zero dimension.\n");
      goto LABEL_33;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v24 = 0;
    v21 = MEMORY[0x277D86220];
    v22 = "XB must have non-zero dimension.\n";
LABEL_40:
    _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, v22, v24, 2u);
    goto LABEL_24;
  }

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v12 > v13)
  {
    v13 = v12;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  if (v10 != v16)
  {
    if (!*&v24[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v24 = 67109376;
        *&v24[4] = v10;
        *&v24[8] = 1024;
        *&v24[10] = v16;
        _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "XB dimension (%d) must match maximum subfactor dimension (%d).\n", v24, 0xEu);
      }

      goto LABEL_24;
    }

    memset(v24, 0, sizeof(v24));
    snprintf(v24, 0x100uLL, "XB dimension (%d) must match maximum subfactor dimension (%d).\n");
LABEL_33:
    v4(v24);
    goto LABEL_34;
  }

  v17 = *&v24[32];
  v18 = *(a1 + 112) + *(a1 + 120) * v9;
  v19 = (*&v24[24])(v18);
  if (!v19)
  {
    if (v4)
    {
      memset(v24, 0, sizeof(v24));
      snprintf(v24, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
      goto LABEL_33;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v24 = 134217984;
      *&v24[4] = v18;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.\n", v24, 0xCu);
    }

LABEL_24:
    _SparseTrap();
    goto LABEL_34;
  }

  v20 = v19;
  _SparseSolveSubfactor_Float(a1, 0, a2, v19);
  v17(v20);
LABEL_34:
  v23 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::solve(_OWORD *a1, __int128 *a2, char *a3)
{
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[7];
  v9[6] = a1[6];
  v9[7] = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  v7 = *a2;
  v8 = *(a2 + 2);
  if (a3)
  {
    sub_24506B7E0(v9, &v7, a3);
  }

  else
  {
    sub_24506BA6C(v9, &v7);
  }
}

void cva::VecLibSparse<float>::multiply(_OWORD *a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3, char *a4)
{
  v4 = a1[5];
  v10[4] = a1[4];
  v10[5] = v4;
  v5 = a1[7];
  v10[6] = a1[6];
  v10[7] = v5;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v9 = *a2;
  v8 = *a3;
  if (a4)
  {
    sub_24506BF00(v10, &v9, &v8, a4);
  }

  else
  {
    sub_24506C564(v10, &v9, &v8);
  }
}

void sub_24506BF00(const SparseOpaqueSubfactor_Float *a1, const DenseMatrix_Float *a2, uint64_t a3, char *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36.control) = 0;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Subfactor does not hold a valid factor subobject.\n", &v36, 2u);
    }

    goto LABEL_65;
  }

  _SparseGetOptionsFromSymbolicFactor(&v36, &a1->factor.symbolicFactorization);
  reportError = v36.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v12 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v11 >= v12)
  {
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v13 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (*&attributes)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (*&attributes)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = *(a3 + 8);
  v19 = *a3;
  if (v18 < *a3)
  {
    if (v36.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v36.control = 136315906;
      *&v36.orderMethod = "Y";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = v18;
      WORD1(v36.ignoreRowsAndColumns) = 2080;
      *(&v36.ignoreRowsAndColumns + 4) = "Y";
      WORD2(v36.malloc) = 1024;
      *(&v36.malloc + 6) = v19;
      v23 = MEMORY[0x277D86220];
LABEL_48:
      _os_log_error_impl(&dword_245028000, v23, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v36, 0x22u);
      goto LABEL_65;
    }

    goto LABEL_65;
  }

  columnStride = a2->columnStride;
  rowCount = a2->rowCount;
  if (columnStride >= a2->rowCount)
  {
    if (*(a3 + 12))
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
      v19 = *(a3 + 4);
    }

    if (*&a2->attributes)
    {
      v24 = 0;
    }

    else
    {
      v24 = 4;
    }

    v25 = *(&a2->rowCount + v24);
    v26 = *(a3 + v22);
    if (*&a2->attributes)
    {
      v27 = 4;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(&a2->rowCount + v27);
    if (v19 == v25)
    {
      if (v19 <= 0)
      {
        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          snprintf(&v36, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        v33 = v26;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v36.control = 136315650;
          *&v36.orderMethod = "Y";
          WORD2(v36.order) = 1024;
          *(&v36.order + 6) = v33;
          WORD1(v36.ignoreRowsAndColumns) = 1024;
          HIDWORD(v36.ignoreRowsAndColumns) = v19;
          _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v36, 0x18u);
        }

        goto LABEL_65;
      }

      if (v26 == v17)
      {
        if (v28 == v16)
        {
          _SparseMultiplySubfactor_Float(a1, a2, a3, a4);
          goto LABEL_66;
        }

        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          v32 = "X";
          goto LABEL_57;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        v36.control = 136316418;
        *&v36.orderMethod = "X";
        WORD2(v36.order) = 1024;
        *(&v36.order + 6) = v28;
        WORD1(v36.ignoreRowsAndColumns) = 1024;
        HIDWORD(v36.ignoreRowsAndColumns) = v19;
        LOWORD(v36.malloc) = 2080;
        *(&v36.malloc + 2) = "subfactor dimension";
        WORD1(v36.free) = 1024;
        HIDWORD(v36.free) = v16;
        LOWORD(v36.reportError) = 1024;
        *(&v36.reportError + 2) = v17;
        v30 = MEMORY[0x277D86220];
        v31 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v36.reportError)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          v32 = "Y";
LABEL_57:
          snprintf(&v36, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v32);
          goto LABEL_27;
        }

        v34 = v26;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        v36.control = 136316418;
        *&v36.orderMethod = "Y";
        WORD2(v36.order) = 1024;
        *(&v36.order + 6) = v34;
        WORD1(v36.ignoreRowsAndColumns) = 1024;
        HIDWORD(v36.ignoreRowsAndColumns) = v19;
        LOWORD(v36.malloc) = 2080;
        *(&v36.malloc + 2) = "subfactor dimension";
        WORD1(v36.free) = 1024;
        HIDWORD(v36.free) = v16;
        LOWORD(v36.reportError) = 1024;
        *(&v36.reportError + 2) = v17;
        v30 = MEMORY[0x277D86220];
        v31 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v36.reportError)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        memset(&v36, 0, sizeof(v36));
        snprintf(&v36, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "Y");
        goto LABEL_27;
      }

      v29 = v26;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      v36.control = 136316418;
      *&v36.orderMethod = "Y";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = v29;
      WORD1(v36.ignoreRowsAndColumns) = 1024;
      HIDWORD(v36.ignoreRowsAndColumns) = v19;
      LOWORD(v36.malloc) = 2080;
      *(&v36.malloc + 2) = "X";
      WORD1(v36.free) = 1024;
      HIDWORD(v36.free) = v28;
      LOWORD(v36.reportError) = 1024;
      *(&v36.reportError + 2) = v25;
      v30 = MEMORY[0x277D86220];
      v31 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_245028000, v30, OS_LOG_TYPE_ERROR, v31, &v36, 0x2Eu);
    goto LABEL_65;
  }

  if (!v36.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v36.control = 136315906;
      *&v36.orderMethod = "X";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = columnStride;
      WORD1(v36.ignoreRowsAndColumns) = 2080;
      *(&v36.ignoreRowsAndColumns + 4) = "X";
      WORD2(v36.malloc) = 1024;
      *(&v36.malloc + 6) = rowCount;
      v23 = MEMORY[0x277D86220];
      goto LABEL_48;
    }

LABEL_65:
    _SparseTrap();
    goto LABEL_66;
  }

LABEL_26:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  memset(&v36, 0, sizeof(v36));
  snprintf(&v36, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  (reportError)(&v36);
LABEL_66:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_24506C564(const SparseOpaqueSubfactor_Float *a1, uint64_t a2, const DenseMatrix_Float *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v35.control) = 0;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Subfactor does not hold a valid factor subobject.\n", &v35, 2u);
    }

    goto LABEL_70;
  }

  _SparseGetOptionsFromSymbolicFactor(&v35, &a1->factor.symbolicFactorization);
  reportError = v35.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v9 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v10 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v9 >= v10)
  {
    v11 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (*&attributes)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (*&attributes)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = *(a2 + 8);
  v17 = *a2;
  if (v16 < *a2)
  {
    if (v35.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35.control = 136315906;
      *&v35.orderMethod = "X";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = v16;
      WORD1(v35.ignoreRowsAndColumns) = 2080;
      *(&v35.ignoreRowsAndColumns + 4) = "X";
      WORD2(v35.malloc) = 1024;
      *(&v35.malloc + 6) = v17;
      v21 = MEMORY[0x277D86220];
LABEL_49:
      _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v35, 0x22u);
      goto LABEL_70;
    }

    goto LABEL_70;
  }

  columnStride = a3->columnStride;
  rowCount = a3->rowCount;
  if (columnStride >= a3->rowCount)
  {
    if (*(a2 + 12))
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
      v17 = *(a2 + 4);
    }

    if (*&a3->attributes)
    {
      v22 = 0;
    }

    else
    {
      v22 = 4;
    }

    v23 = *(&a3->rowCount + v22);
    v24 = *(a2 + v20);
    if (*&a3->attributes)
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(&a3->rowCount + v25);
    if (v17 == v23)
    {
      if (v17 <= 0)
      {
        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          snprintf(&v35, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v35.control = 136315650;
          *&v35.orderMethod = "X";
          WORD2(v35.order) = 1024;
          *(&v35.order + 6) = v24;
          WORD1(v35.ignoreRowsAndColumns) = 1024;
          HIDWORD(v35.ignoreRowsAndColumns) = v17;
          _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v35, 0x18u);
        }

        goto LABEL_70;
      }

      if (v24 == v14)
      {
        if (v26 == v15)
        {
          free = v35.free;
          v28 = a1->workspaceRequiredPerRHS + *&a1[1].attributes * v17;
          v29 = (v35.malloc)(v28);
          if (v29)
          {
            v30 = v29;
            _SparseMultiplySubfactor_Float(a1, a2, a3, v29);
            (free)(v30);
            goto LABEL_71;
          }

          if (reportError)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v36 = 0u;
            memset(&v35, 0, sizeof(v35));
            snprintf(&v35, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
            goto LABEL_27;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v35.control = 134217984;
            *&v35.orderMethod = v28;
            _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.\n", &v35, 0xCu);
          }

          goto LABEL_70;
        }

        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          v33 = "Y";
          goto LABEL_58;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        v35.control = 136316418;
        *&v35.orderMethod = "Y";
        WORD2(v35.order) = 1024;
        *(&v35.order + 6) = v26;
        WORD1(v35.ignoreRowsAndColumns) = 1024;
        HIDWORD(v35.ignoreRowsAndColumns) = v17;
        LOWORD(v35.malloc) = 2080;
        *(&v35.malloc + 2) = "subfactor dimension";
        WORD1(v35.free) = 1024;
        HIDWORD(v35.free) = v15;
        LOWORD(v35.reportError) = 1024;
        *(&v35.reportError + 2) = v14;
        v31 = MEMORY[0x277D86220];
        v32 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v35.reportError)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          memset(&v35, 0, sizeof(v35));
          v33 = "X";
LABEL_58:
          snprintf(&v35, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v33);
          goto LABEL_27;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        v35.control = 136316418;
        *&v35.orderMethod = "X";
        WORD2(v35.order) = 1024;
        *(&v35.order + 6) = v24;
        WORD1(v35.ignoreRowsAndColumns) = 1024;
        HIDWORD(v35.ignoreRowsAndColumns) = v17;
        LOWORD(v35.malloc) = 2080;
        *(&v35.malloc + 2) = "subfactor dimension";
        WORD1(v35.free) = 1024;
        HIDWORD(v35.free) = v15;
        LOWORD(v35.reportError) = 1024;
        *(&v35.reportError + 2) = v14;
        v31 = MEMORY[0x277D86220];
        v32 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v35.reportError)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        memset(&v35, 0, sizeof(v35));
        snprintf(&v35, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "X");
        goto LABEL_27;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v35.control = 136316418;
      *&v35.orderMethod = "X";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = v24;
      WORD1(v35.ignoreRowsAndColumns) = 1024;
      HIDWORD(v35.ignoreRowsAndColumns) = v17;
      LOWORD(v35.malloc) = 2080;
      *(&v35.malloc + 2) = "Y";
      WORD1(v35.free) = 1024;
      HIDWORD(v35.free) = v26;
      LOWORD(v35.reportError) = 1024;
      *(&v35.reportError + 2) = v23;
      v31 = MEMORY[0x277D86220];
      v32 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_245028000, v31, OS_LOG_TYPE_ERROR, v32, &v35, 0x2Eu);
    goto LABEL_70;
  }

  if (!v35.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35.control = 136315906;
      *&v35.orderMethod = "Y";
      WORD2(v35.order) = 1024;
      *(&v35.order + 6) = columnStride;
      WORD1(v35.ignoreRowsAndColumns) = 2080;
      *(&v35.ignoreRowsAndColumns + 4) = "Y";
      WORD2(v35.malloc) = 1024;
      *(&v35.malloc + 6) = rowCount;
      v21 = MEMORY[0x277D86220];
      goto LABEL_49;
    }

LABEL_70:
    _SparseTrap();
    goto LABEL_71;
  }

LABEL_26:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(&v35, 0, sizeof(v35));
  snprintf(&v35, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  (reportError)(&v35);
LABEL_71:
  v34 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<float>::multiply(_OWORD *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  v8 = *(a2 + 8);
  v9 = *a3;
  v10 = *(a3 + 8);
  v12.rowCount = *a2;
  v12.columnCount = 1;
  v12.columnStride = v12.rowCount;
  *&v12.attributes = 0;
  v12.data = v8;
  v11.rowCount = v9;
  v11.columnCount = 1;
  v11.columnStride = v9;
  *&v11.attributes = 0;
  v11.data = v10;
  if (a4)
  {
    sub_24506BF00(v13, &v12, &v11, a4);
  }

  else
  {
    sub_24506C564(v13, &v12, &v11);
  }
}

void cva::VecLibSparse<double>::multiply(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v9 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *a3;
  v5 = *(a3 + 2);
  sub_24506CDA8(v8, &v6, &v4, 1.0);
}

void sub_24506CDA8(uint64_t a1, int *a2, uint64_t a3, double a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = 4;
  if (*(a1 + 24))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 24))
  {
    v4 = 0;
  }

  v6 = *(a3 + 8);
  v7 = *a3;
  if (v6 < *a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315906;
      *&buf.structure.columnCount = "Y";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v6;
      WORD1(buf.structure.rowIndices) = 2080;
      *(&buf.structure.rowIndices + 4) = "Y";
      *(&buf.structure.blockSize + 1) = 1024;
      *(&buf.structure.blockSize + 1) = v7;
      v8 = MEMORY[0x277D86220];
LABEL_12:
      _os_log_error_impl(&dword_245028000, v8, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &buf, 0x22u);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  v9 = a2[2];
  v10 = *a2;
  if (v9 < *a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315906;
      *&buf.structure.columnCount = "X";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v9;
      WORD1(buf.structure.rowIndices) = 2080;
      *(&buf.structure.rowIndices + 4) = "X";
      *(&buf.structure.blockSize + 1) = 1024;
      *(&buf.structure.blockSize + 1) = v10;
      v8 = MEMORY[0x277D86220];
      goto LABEL_12;
    }

LABEL_36:
    _SparseTrap();
    goto LABEL_37;
  }

  if (*(a3 + 12))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
    v7 = *(a3 + 4);
  }

  v12 = (a2[3] & 1) == 0;
  v13 = a2[v12];
  v14 = *(a3 + v11);
  v15 = (a2[3] & 1) != 0;
  v16 = a2[v15];
  if (v7 != v13)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "Y";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v14;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "X";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v16;
    v27 = 1024;
    v28 = v13;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_35:
    _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, v22, &buf, 0x2Eu);
    goto LABEL_36;
  }

  if (v7 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315650;
      *&buf.structure.columnCount = "Y";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v14;
      WORD1(buf.structure.rowIndices) = 1024;
      HIDWORD(buf.structure.rowIndices) = v7;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &buf, 0x18u);
    }

    goto LABEL_36;
  }

  v17 = *(a1 + 28);
  v18 = *(a1 + v5) * v17;
  v19 = *(a1 + v4) * v17;
  if (v14 != v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "Y";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v14;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "matrix A";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v19;
    v27 = 1024;
    v28 = v18;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_35;
  }

  if (v16 != v19)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "X";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v16;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "matrix A";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v19;
    v27 = 1024;
    v28 = v18;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_35;
  }

  v20 = *(a1 + 16);
  *&buf.structure.rowCount = *a1;
  *&buf.structure.rowIndices = v20;
  buf.data = *(a1 + 32);
  x = *a2;
  v24 = *a3;
  _SparseSpMV_Double(a4, &buf, &x, 0, &v24);
LABEL_37:
  v23 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::multiply(uint64_t a1, __int128 *a2, __int128 *a3, double a4)
{
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 2);
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_24506CDA8(v9, &v7, &v5, a4);
}

void cva::VecLibSparse<double>::multiply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v3;
  v5 = *(a1 + 32);
  sub_24506D270(v4, *a2, *(a2 + 8), *a3, *(a3 + 8), 1.0);
}

void sub_24506D270(uint64_t a1, int a2, double *a3, int a4, double *a5, double a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 28);
  v8 = 4;
  if (*(a1 + 24))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + v9) * v7;
  if (*(a1 + 24))
  {
    v8 = 0;
  }

  v11 = *(a1 + v8) * v7;
  if (v11 != a2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      _SparseTrap();
      goto LABEL_13;
    }

    A.structure.rowCount = 67109888;
    A.structure.columnCount = v10;
    LOWORD(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 2) = v11;
    HIWORD(A.structure.columnStarts) = 1024;
    LODWORD(A.structure.rowIndices) = a2;
    WORD2(A.structure.rowIndices) = 1024;
    *(&A.structure.rowIndices + 6) = 1;
    v13 = MEMORY[0x277D86220];
    v14 = "Matrix dimensions (%dx%d) do not match x vector dimensions %dx%d\n";
LABEL_15:
    _os_log_error_impl(&dword_245028000, v13, OS_LOG_TYPE_ERROR, v14, &A, 0x1Au);
    goto LABEL_12;
  }

  if (v10 != a4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    A.structure.rowCount = 67109888;
    A.structure.columnCount = v10;
    LOWORD(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 2) = a2;
    HIWORD(A.structure.columnStarts) = 1024;
    LODWORD(A.structure.rowIndices) = a4;
    WORD2(A.structure.rowIndices) = 1024;
    *(&A.structure.rowIndices + 6) = 1;
    v13 = MEMORY[0x277D86220];
    v14 = "Matrix dimensions (%dx%d) do not match y vector dimensions %dx%d\n";
    goto LABEL_15;
  }

  v12 = *(a1 + 16);
  *&A.structure.rowCount = *a1;
  *&A.structure.rowIndices = v12;
  A.data = *(a1 + 32);
  x.rowCount = a2;
  x.columnCount = 1;
  x.columnStride = a2;
  x.attributes = 0;
  x.data = a3;
  v17.rowCount = a4;
  v17.columnCount = 1;
  v17.columnStride = a4;
  v17.attributes = 0;
  v17.data = a5;
  _SparseSpMV_Double(a6, &A, &x, 0, &v17);
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::multiply(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v4;
  v6 = *(a1 + 32);
  sub_24506D270(v5, *a2, *(a2 + 8), *a3, *(a3 + 8), a4);
}

void cva::VecLibSparse<double>::multiplyAdd(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v9 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *a3;
  v5 = *(a3 + 2);
  sub_24506D4C4(v8, &v6, &v4, 1.0);
}

void sub_24506D4C4(uint64_t a1, int *a2, uint64_t a3, double a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = 4;
  if (*(a1 + 24))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 24))
  {
    v4 = 0;
  }

  v6 = *(a3 + 8);
  v7 = *a3;
  if (v6 < *a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315906;
      *&buf.structure.columnCount = "Y";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v6;
      WORD1(buf.structure.rowIndices) = 2080;
      *(&buf.structure.rowIndices + 4) = "Y";
      *(&buf.structure.blockSize + 1) = 1024;
      *(&buf.structure.blockSize + 1) = v7;
      v8 = MEMORY[0x277D86220];
LABEL_12:
      _os_log_error_impl(&dword_245028000, v8, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &buf, 0x22u);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  v9 = a2[2];
  v10 = *a2;
  if (v9 < *a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315906;
      *&buf.structure.columnCount = "X";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v9;
      WORD1(buf.structure.rowIndices) = 2080;
      *(&buf.structure.rowIndices + 4) = "X";
      *(&buf.structure.blockSize + 1) = 1024;
      *(&buf.structure.blockSize + 1) = v10;
      v8 = MEMORY[0x277D86220];
      goto LABEL_12;
    }

LABEL_36:
    _SparseTrap();
    goto LABEL_37;
  }

  if (*(a3 + 12))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
    v7 = *(a3 + 4);
  }

  v12 = (a2[3] & 1) == 0;
  v13 = a2[v12];
  v14 = *(a3 + v11);
  v15 = (a2[3] & 1) != 0;
  v16 = a2[v15];
  if (v7 != v13)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "Y";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v14;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "X";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v16;
    v27 = 1024;
    v28 = v13;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_35:
    _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, v22, &buf, 0x2Eu);
    goto LABEL_36;
  }

  if (v7 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.structure.rowCount = 136315650;
      *&buf.structure.columnCount = "Y";
      WORD2(buf.structure.columnStarts) = 1024;
      *(&buf.structure.columnStarts + 6) = v14;
      WORD1(buf.structure.rowIndices) = 1024;
      HIDWORD(buf.structure.rowIndices) = v7;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &buf, 0x18u);
    }

    goto LABEL_36;
  }

  v17 = *(a1 + 28);
  v18 = *(a1 + v5) * v17;
  v19 = *(a1 + v4) * v17;
  if (v14 != v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "Y";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v14;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "matrix A";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v19;
    v27 = 1024;
    v28 = v18;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_35;
  }

  if (v16 != v19)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    buf.structure.rowCount = 136316418;
    *&buf.structure.columnCount = "X";
    WORD2(buf.structure.columnStarts) = 1024;
    *(&buf.structure.columnStarts + 6) = v16;
    WORD1(buf.structure.rowIndices) = 1024;
    HIDWORD(buf.structure.rowIndices) = v7;
    buf.structure.attributes = 2080;
    *&buf.structure.blockSize = "matrix A";
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v19;
    v27 = 1024;
    v28 = v18;
    v21 = MEMORY[0x277D86220];
    v22 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_35;
  }

  v20 = *(a1 + 16);
  *&buf.structure.rowCount = *a1;
  *&buf.structure.rowIndices = v20;
  buf.data = *(a1 + 32);
  x = *a2;
  v24 = *a3;
  _SparseSpMV_Double(a4, &buf, &x, 1, &v24);
LABEL_37:
  v23 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::multiplyAdd(uint64_t a1, __int128 *a2, __int128 *a3, double a4)
{
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 2);
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_24506D4C4(v9, &v7, &v5, a4);
}

void cva::VecLibSparse<double>::multiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v3;
  v5 = *(a1 + 32);
  sub_24506D98C(v4, *a2, *(a2 + 8), *a3, *(a3 + 8), 1.0);
}

void sub_24506D98C(uint64_t a1, int a2, double *a3, int a4, double *a5, double a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 28);
  v8 = 4;
  if (*(a1 + 24))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + v9) * v7;
  if (*(a1 + 24))
  {
    v8 = 0;
  }

  v11 = *(a1 + v8) * v7;
  if (v11 != a2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      _SparseTrap();
      goto LABEL_13;
    }

    A.structure.rowCount = 67109888;
    A.structure.columnCount = v10;
    LOWORD(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 2) = v11;
    HIWORD(A.structure.columnStarts) = 1024;
    LODWORD(A.structure.rowIndices) = a2;
    WORD2(A.structure.rowIndices) = 1024;
    *(&A.structure.rowIndices + 6) = 1;
    v13 = MEMORY[0x277D86220];
    v14 = "Matrix dimensions (%dx%d) do not match x vector dimensions %dx%d\n";
LABEL_15:
    _os_log_error_impl(&dword_245028000, v13, OS_LOG_TYPE_ERROR, v14, &A, 0x1Au);
    goto LABEL_12;
  }

  if (v10 != a4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    A.structure.rowCount = 67109888;
    A.structure.columnCount = v10;
    LOWORD(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 2) = a2;
    HIWORD(A.structure.columnStarts) = 1024;
    LODWORD(A.structure.rowIndices) = a4;
    WORD2(A.structure.rowIndices) = 1024;
    *(&A.structure.rowIndices + 6) = 1;
    v13 = MEMORY[0x277D86220];
    v14 = "Matrix dimensions (%dx%d) do not match y vector dimensions %dx%d\n";
    goto LABEL_15;
  }

  v12 = *(a1 + 16);
  *&A.structure.rowCount = *a1;
  *&A.structure.rowIndices = v12;
  A.data = *(a1 + 32);
  x.rowCount = a2;
  x.columnCount = 1;
  x.columnStride = a2;
  x.attributes = 0;
  x.data = a3;
  v17.rowCount = a4;
  v17.columnCount = 1;
  v17.columnStride = a4;
  v17.attributes = 0;
  v17.data = a5;
  _SparseSpMV_Double(a6, &A, &x, 1, &v17);
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::multiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v4;
  v6 = *(a1 + 32);
  sub_24506D98C(v5, *a2, *(a2 + 8), *a3, *(a3 + 8), a4);
}

double cva::VecLibSparse<double>::transpose@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v16 = a1[4];
  v17 = v3;
  v4 = a1[7];
  v18 = a1[6];
  v19 = v4;
  v5 = a1[1];
  v12 = *a1;
  v13 = v5;
  v6 = a1[3];
  v14 = a1[2];
  v15 = v6;
  LOWORD(v12) = v12 & 0xFFFE | ((v12 & 1) == 0);
  _SparseRetainNumeric_Double((&v12 + 8));
  v7 = v17;
  a2[4] = v16;
  a2[5] = v7;
  v8 = v19;
  a2[6] = v18;
  a2[7] = v8;
  v9 = v13;
  *a2 = v12;
  a2[1] = v9;
  result = *&v14;
  v11 = v15;
  a2[2] = v14;
  a2[3] = v11;
  return result;
}

__n128 cva::VecLibSparse<double>::transpose@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *&v9.userFactorStorage = *(a1 + 64);
  *&v9.solveWorkspaceRequiredStatic = v3;
  v10 = *(a1 + 96);
  v4 = *(a1 + 16);
  *&v9.status = *a1;
  *&v9.symbolicFactorization.columnCount = v4;
  v5 = *(a1 + 48);
  *&v9.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&v9.symbolicFactorization.factorSize_Float = v5;
  v9.attributes = (*&v9.attributes & 0xFFFE | ((*&v9.attributes & 1) == 0));
  _SparseRetainNumeric_Double(&v9);
  v6 = *&v9.solveWorkspaceRequiredStatic;
  *(a2 + 64) = *&v9.userFactorStorage;
  *(a2 + 80) = v6;
  *(a2 + 96) = v10;
  v7 = *&v9.symbolicFactorization.columnCount;
  *a2 = *&v9.status;
  *(a2 + 16) = v7;
  result = *&v9.symbolicFactorization.factorSize_Float;
  *(a2 + 32) = *&v9.symbolicFactorization.workspaceSize_Float;
  *(a2 + 48) = result;
  return result;
}

{
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  *(a2 + 26) = *(a1 + 26);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 24) = v3 & 0xFFFE | ((v3 & 1) == 0);
  return result;
}

void cva::VecLibSparse<double>::release(_OWORD *a1)
{
  v1 = a1[5];
  v5[4] = a1[4];
  v5[5] = v1;
  v2 = a1[7];
  v5[6] = a1[6];
  v5[7] = v2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v4 = a1[3];
  v5[2] = a1[2];
  v5[3] = v4;
  _SparseDestroyOpaqueNumeric_Double((v5 + 8));
}

__n128 cva::VecLibSparse<double>::release(uint64_t a1)
{
  v1 = *(a1 + 80);
  *&v5.userFactorStorage = *(a1 + 64);
  *&v5.solveWorkspaceRequiredStatic = v1;
  v6 = *(a1 + 96);
  v2 = *(a1 + 16);
  *&v5.status = *a1;
  *&v5.symbolicFactorization.columnCount = v2;
  v3 = *(a1 + 48);
  *&v5.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&v5.symbolicFactorization.factorSize_Float = v3;
  _SparseDestroyOpaqueNumeric_Double(&v5);
  return result;
}

void cva::VecLibSparse<double>::retain(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  *&v7.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&v7.symbolicFactorization.factorSize_Float = v1;
  v2 = *(a1 + 80);
  *&v7.userFactorStorage = *(a1 + 64);
  *&v7.solveWorkspaceRequiredStatic = v2;
  v8 = *(a1 + 96);
  v3 = *(a1 + 16);
  *&v7.status = *a1;
  *&v7.symbolicFactorization.columnCount = v3;
  if (v7.symbolicFactorization.status || !v7.symbolicFactorization.workspaceSize_Float)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      _SparseTrap();
      goto LABEL_10;
    }

    *v9 = 0;
    v6 = MEMORY[0x277D86220];
LABEL_14:
    _os_log_error_impl(&dword_245028000, v6, OS_LOG_TYPE_ERROR, "Can only retain valid numeric factorizations.\n", v9, 2u);
    goto LABEL_7;
  }

  _SparseGetOptionsFromSymbolicFactor(v9, &v7.symbolicFactorization);
  v4 = *&v9[40];
  if (v7.status || !v7.solveWorkspaceRequiredStatic)
  {
    if (*&v9[40])
    {
      v22 = 0;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
      v18 = 0u;
      v17 = 0u;
      v16 = 0u;
      v15 = 0u;
      v14 = 0u;
      v13 = 0u;
      v12 = 0u;
      v11 = 0u;
      v10 = 0u;
      *&v9[47] = 0u;
      strcpy(v9, "Can only retain valid numeric factorizations.\n");
      v4(v9);
      goto LABEL_10;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v9 = 0;
    v6 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  _SparseRetainNumeric_Double(&v7);
LABEL_10:
  v5 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::retain(__int128 *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  v12 = a1[4];
  v13 = v1;
  v2 = a1[7];
  v14 = a1[6];
  v15 = v2;
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  if (v3 || !*(&v10 + 1))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      _SparseTrap();
      goto LABEL_10;
    }

    LOWORD(v16.control) = 0;
    v7 = MEMORY[0x277D86220];
LABEL_14:
    _os_log_error_impl(&dword_245028000, v7, OS_LOG_TYPE_ERROR, "Can only retain valid objects.\n", &v16, 2u);
    goto LABEL_7;
  }

  _SparseGetOptionsFromSymbolicFactor(&v16, &v9);
  reportError = v16.reportError;
  if (DWORD2(v8) || !*(&v13 + 1))
  {
    if (v16.reportError)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      *&v16.free = 0u;
      v17 = 0u;
      strcpy(&v16, "Can only retain valid objects.\n");
      (reportError)(&v16);
      goto LABEL_10;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v16.control) = 0;
    v7 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  _SparseRetainNumeric_Double((&v8 + 8));
LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::factor(int factorType@<W1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  *&Matrix.structure.rowCount = *a2;
  *&Matrix.structure.rowIndices = v4;
  Matrix.data = *(a2 + 32);
  sfoptions = *byte_2857FDB18;
  v10 = *ymmword_24508ABC0;
  if (Matrix.structure.rowCount <= 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    v14 = "Matrix.structure";
    v15 = 1024;
    LODWORD(v16) = Matrix.structure.rowCount;
    v6 = MEMORY[0x277D86220];
    v7 = "%s.rowCount must be > 0, but is %d.\n";
LABEL_14:
    v8 = 18;
    goto LABEL_15;
  }

  if (Matrix.structure.columnCount <= 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    v14 = "Matrix.structure";
    v15 = 1024;
    LODWORD(v16) = Matrix.structure.rowCount;
    v6 = MEMORY[0x277D86220];
    v7 = "%s.columnCount must be > 0, but is %d.\n";
    goto LABEL_14;
  }

  if (!*(&Matrix.structure.blockSize + 2))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    v14 = "Matrix.structure";
    v15 = 1024;
    LODWORD(v16) = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "%s.blockSize must be > 0, but is %d.]n";
    goto LABEL_14;
  }

  v5 = *&Matrix.structure.attributes & 0xC;
  if (Matrix.structure.rowCount == Matrix.structure.columnCount || v5 != 12)
  {
    if ((factorType - 80) < 4)
    {
      _SparseFactorLU_Double();
      goto LABEL_17;
    }

    if ((factorType - 40) <= 1)
    {
      _SparseFactorQR_Double(a3, factorType, &Matrix, &sfoptions, &v10);
      goto LABEL_17;
    }

    if (v5 == 12)
    {
      _SparseFactorSymmetric_Double(a3, factorType, &Matrix, &sfoptions, &v10);
      goto LABEL_17;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = MEMORY[0x277D86220];
      v7 = "Cannot perform symmetric matrix factorization of non-symmetric matrix.\n";
      v8 = 2;
      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v14 = "Matrix.structure";
    v15 = 2080;
    v16 = "Matrix.structure";
    v17 = 1024;
    rowCount = Matrix.structure.rowCount;
    v19 = 2080;
    v20 = "Matrix.structure";
    v21 = 1024;
    columnCount = Matrix.structure.columnCount;
    v6 = MEMORY[0x277D86220];
    v7 = "%s.attributes.kind=SparseSymmetric, but %s.rowCount (%d) != %s.columnCount (%d).\n";
    v8 = 44;
LABEL_15:
    _os_log_error_impl(&dword_245028000, v6, OS_LOG_TYPE_ERROR, v7, buf, v8);
  }

LABEL_16:
  _SparseTrap();
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = -4;
  *(a3 + 8) = -4;
LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::refactor(__int128 *a1, SparseOpaqueFactorization_Double *factor)
{
  v37 = *MEMORY[0x277D85DE8];
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a1 + 4);
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19.control) = 0;
      v10 = MEMORY[0x277D86220];
      v11 = "Factorization does not hold a completed matrix factorization.\n";
      goto LABEL_22;
    }

LABEL_3:
    _SparseTrap();
    goto LABEL_4;
  }

  memset(&v17, 0, sizeof(v17));
  _SparseGetOptionsFromNumericFactor_Double(&v17, factor);
  v16 = v17;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19.control) = 0;
      v10 = MEMORY[0x277D86220];
      v11 = "Factorization does not hold a valid symbolic matrix factorization.\n";
LABEL_22:
      _os_log_error_impl(&dword_245028000, v10, OS_LOG_TYPE_ERROR, v11, &v19, 2u);
      goto LABEL_3;
    }

    goto LABEL_3;
  }

  _SparseGetOptionsFromSymbolicFactor(&v19, p_symbolicFactorization);
  free = v19.free;
  reportError = v19.reportError;
  v7 = (v19.malloc)(factor->symbolicFactorization.factorSize_Float);
  if (!v7)
  {
    factor->status = SparseInternalError;
    if (reportError)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      memset(&v19, 0, sizeof(v19));
      snprintf(&v19, 0x100uLL, "Failed to allocate workspace of size %ld.", factor->symbolicFactorization.factorSize_Float);
      (reportError)(&v19);
      goto LABEL_4;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      factorSize_Float = factor->symbolicFactorization.factorSize_Float;
      v19.control = 134217984;
      *&v19.orderMethod = factorSize_Float;
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.", &v19, 0xCu);
    }

    goto LABEL_3;
  }

  v8 = v7;
  *&v19.control = v13;
  *&v19.ignoreRowsAndColumns = v14;
  v19.free = v15;
  nfoptions = v16;
  if (v13 == factor->symbolicFactorization.rowCount && *&v19.orderMethod == factor->symbolicFactorization.columnCount && BYTE4(v19.malloc) == LOBYTE(factor->symbolicFactorization.factorization) && ((*&factor->symbolicFactorization.attributes ^ LOWORD(v19.malloc)) & 1) == 0)
  {
    v9 = BYTE1(factor->symbolicFactorization.factorization);
    if ((v9 - 80) >= 4)
    {
      if ((v9 - 40) > 1)
      {
        _SparseRefactorSymmetric_Double(&v19, factor, &nfoptions, v7);
      }

      else
      {
        _SparseRefactorQR_Double(&v19, factor, &nfoptions, v7);
      }
    }

    else
    {
      _SparseRefactorLU_Double();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "Matrix";
      v35 = 2080;
      v36 = "Factored->symbolicFactorization";
      _os_log_error_impl(&dword_245028000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s does not match that used for symbolic factorization stored in %s.\n", buf, 0x16u);
    }

    _SparseTrap();
  }

  (free)(v8);
LABEL_4:
  v3 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::solve(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v8 = *(a1 + 80);
    *&Factored.userFactorStorage = *(a1 + 64);
    *&Factored.solveWorkspaceRequiredStatic = v8;
    v37 = *(a1 + 96);
    v9 = *(a1 + 16);
    *&Factored.status = *a1;
    *&Factored.symbolicFactorization.columnCount = v9;
    v10 = *(a1 + 48);
    *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
    *&Factored.symbolicFactorization.factorSize_Float = v10;
    if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      LOWORD(v40.control) = 0;
      v7 = MEMORY[0x277D86220];
      goto LABEL_58;
    }

    v21 = *a3;
    v22 = *(a3 + 8);
    v23 = *a2;
    v24 = *(a2 + 8);
    _SparseGetOptionsFromSymbolicFactor(&v40, &Factored.symbolicFactorization);
    reportError = v40.reportError;
    if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float && Factored.status == SparseStatusOK && Factored.solveWorkspaceRequiredStatic)
    {
      if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
      {
        v26 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      else
      {
        v26 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
      {
        v27 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      else
      {
        v27 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
      {
        v28 = v26;
      }

      else
      {
        v28 = v27;
      }

      if (v27 == v23)
      {
        if (v28 == v21)
        {
          free = v40.free;
          Soln.rowCount = v21;
          Soln.columnCount = 1;
          *&Soln.attributes = 0;
          Soln.data = v22;
          Soln.columnStride = v21;
          *&v38.attributes = 0;
          v38.data = v24;
          v38.rowCount = v23;
          v38.columnCount = 1;
          v38.columnStride = v23;
          v30 = v37 + Factored.solveWorkspaceRequiredPerRHS;
          v31 = (v40.malloc)(v37 + Factored.solveWorkspaceRequiredPerRHS);
          if (v31)
          {
            v32 = v31;
            _SparseSolveOpaque_Double(&Factored, &Soln, &v38, v31);
            (free)(v32);
            goto LABEL_8;
          }

          if (!reportError)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }

            v40.control = 134217984;
            *&v40.orderMethod = v30;
            v33 = MEMORY[0x277D86220];
            v34 = "Failed to allocate workspace of size %ld for SparseSolve().\n";
            goto LABEL_61;
          }

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          memset(&v40, 0, sizeof(v40));
          snprintf(&v40, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
          goto LABEL_66;
        }

        if (!v40.reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v40.control = 136316162;
            *&v40.orderMethod = "b";
            *(&v40.order + 6) = v21;
            WORD1(v40.ignoreRowsAndColumns) = 2080;
            WORD2(v40.order) = 1024;
            *(&v40.ignoreRowsAndColumns + 4) = "Factored";
            WORD2(v40.malloc) = 1024;
            *(&v40.malloc + 6) = v28;
            WORD1(v40.free) = 1024;
            HIDWORD(v40.free) = v23;
            v35 = MEMORY[0x277D86220];
            goto LABEL_75;
          }

          goto LABEL_7;
        }
      }

      else if (!v40.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v40.control = 136316162;
        *&v40.orderMethod = "x";
        *(&v40.order + 6) = v23;
        WORD1(v40.ignoreRowsAndColumns) = 2080;
        WORD2(v40.order) = 1024;
        *(&v40.ignoreRowsAndColumns + 4) = "Factored";
        WORD2(v40.malloc) = 1024;
        *(&v40.malloc + 6) = v28;
        WORD1(v40.free) = 1024;
        HIDWORD(v40.free) = v27;
        v35 = MEMORY[0x277D86220];
        goto LABEL_75;
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      memset(&v40, 0, sizeof(v40));
      snprintf(&v40, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
      goto LABEL_66;
    }

    if (!v40.reportError)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v40.control = 136315138;
      *&v40.orderMethod = "Factored";
      v33 = MEMORY[0x277D86220];
      v34 = "%s does not hold a completed matrix factorization.\n";
      goto LABEL_61;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(&v40, 0, sizeof(v40));
    snprintf(&v40, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_66:
    (reportError)(&v40);
    goto LABEL_8;
  }

  v4 = *(a1 + 80);
  *&Factored.userFactorStorage = *(a1 + 64);
  *&Factored.solveWorkspaceRequiredStatic = v4;
  v37 = *(a1 + 96);
  v5 = *(a1 + 16);
  *&Factored.status = *a1;
  *&Factored.symbolicFactorization.columnCount = v5;
  v6 = *(a1 + 48);
  *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&Factored.symbolicFactorization.factorSize_Float = v6;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v40.control) = 0;
    v7 = MEMORY[0x277D86220];
LABEL_58:
    _os_log_error_impl(&dword_245028000, v7, OS_LOG_TYPE_ERROR, "Factored does not hold a completed matrix factorization.\n", &v40, 2u);
    goto LABEL_7;
  }

  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *a2;
  v16 = *(a2 + 8);
  _SparseGetOptionsFromSymbolicFactor(&v40, &Factored.symbolicFactorization);
  v17 = v40.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (v40.reportError)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      memset(&v40, 0, sizeof(v40));
      snprintf(&v40, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_56:
      (v17)(&v40);
      goto LABEL_8;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v40.control = 136315138;
    *&v40.orderMethod = "Factored";
    v33 = MEMORY[0x277D86220];
    v34 = "%s does not hold a completed matrix factorization.\n";
LABEL_61:
    _os_log_error_impl(&dword_245028000, v33, OS_LOG_TYPE_ERROR, v34, &v40, 0xCu);
    goto LABEL_7;
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v18 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v18 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v19 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v19 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (v19 != v15)
  {
    if (v40.reportError)
    {
LABEL_55:
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      memset(&v40, 0, sizeof(v40));
      snprintf(&v40, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
      goto LABEL_56;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v40.control = 136316162;
    *&v40.orderMethod = "x";
    *(&v40.order + 6) = v15;
    WORD1(v40.ignoreRowsAndColumns) = 2080;
    WORD2(v40.order) = 1024;
    *(&v40.ignoreRowsAndColumns + 4) = "Factored";
    WORD2(v40.malloc) = 1024;
    *(&v40.malloc + 6) = v20;
    WORD1(v40.free) = 1024;
    HIDWORD(v40.free) = v19;
    v35 = MEMORY[0x277D86220];
LABEL_75:
    _os_log_error_impl(&dword_245028000, v35, OS_LOG_TYPE_ERROR, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n", &v40, 0x28u);
    goto LABEL_7;
  }

  if (v20 == v13)
  {
    v40.control = v13;
    *&v40.orderMethod = 1;
    v40.ignoreRowsAndColumns = v14;
    v40.order = v13;
    Soln.rowCount = v15;
    Soln.columnCount = 1;
    *&Soln.attributes = 0;
    Soln.data = v16;
    Soln.columnStride = v15;
    _SparseSolveOpaque_Double(&Factored, &v40, &Soln, a4);
    goto LABEL_8;
  }

  if (v40.reportError)
  {
    goto LABEL_55;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v40.control = 136316162;
    *&v40.orderMethod = "b";
    *(&v40.order + 6) = v13;
    WORD1(v40.ignoreRowsAndColumns) = 2080;
    WORD2(v40.order) = 1024;
    *(&v40.ignoreRowsAndColumns + 4) = "Factored";
    WORD2(v40.malloc) = 1024;
    *(&v40.malloc + 6) = v20;
    WORD1(v40.free) = 1024;
    HIDWORD(v40.free) = v15;
    v35 = MEMORY[0x277D86220];
    goto LABEL_75;
  }

LABEL_7:
  _SparseTrap();
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
}

void cva::VecLibSparse<double>::solve(uint64_t a1, DenseMatrix_Double *a2, DenseMatrix_Double *a3, void *a4)
{
  v59 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v4 = *(a1 + 80);
    *&Factored.userFactorStorage = *(a1 + 64);
    *&Factored.solveWorkspaceRequiredStatic = v4;
    v44 = *(a1 + 96);
    v5 = *(a1 + 16);
    *&Factored.status = *a1;
    *&Factored.symbolicFactorization.columnCount = v5;
    v6 = *(a1 + 48);
    *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
    *&Factored.symbolicFactorization.factorSize_Float = v6;
    RHS = *a3;
    Soln = *a2;
    if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float)
    {
      _SparseGetOptionsFromSymbolicFactor(&v45, &Factored.symbolicFactorization);
      reportError = v45.reportError;
      if (Factored.symbolicFactorization.status == SparseStatusOK && Factored.symbolicFactorization.workspaceSize_Float && Factored.status == SparseStatusOK && Factored.solveWorkspaceRequiredStatic)
      {
        if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
        {
          v14 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        else
        {
          v14 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
        {
          v15 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        else
        {
          v15 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        if (RHS.columnStride < RHS.rowCount)
        {
          if (v45.reportError)
          {
            goto LABEL_49;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_80;
          }

          goto LABEL_7;
        }

        if (Soln.columnStride < Soln.rowCount)
        {
          if (v45.reportError)
          {
LABEL_49:
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
            memset(&v45, 0, sizeof(v45));
            snprintf(&v45, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
            goto LABEL_50;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

LABEL_108:
          v45.control = 136315906;
          *&v45.orderMethod = "X";
          WORD2(v45.order) = 1024;
          *(&v45.order + 6) = Soln.columnStride;
          WORD1(v45.ignoreRowsAndColumns) = 2080;
          *(&v45.ignoreRowsAndColumns + 4) = "X";
          WORD2(v45.malloc) = 1024;
          *(&v45.malloc + 6) = Soln.rowCount;
          v27 = MEMORY[0x277D86220];
          goto LABEL_109;
        }

        if (*&RHS.attributes)
        {
          rowCount = RHS.rowCount;
        }

        else
        {
          rowCount = RHS.columnCount;
        }

        if (*&RHS.attributes)
        {
          columnCount = RHS.columnCount;
        }

        else
        {
          columnCount = RHS.rowCount;
        }

        if (*&Soln.attributes)
        {
          v25 = Soln.rowCount;
        }

        else
        {
          v25 = Soln.columnCount;
        }

        if (*&Soln.attributes)
        {
          v26 = Soln.columnCount;
        }

        else
        {
          v26 = Soln.rowCount;
        }

        if (rowCount != v25)
        {
          if (v45.reportError)
          {
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
            memset(&v45, 0, sizeof(v45));
            snprintf(&v45, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
            goto LABEL_50;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          v45.control = 136316418;
          *&v45.orderMethod = "B";
          WORD2(v45.order) = 1024;
          *(&v45.order + 6) = columnCount;
          WORD1(v45.ignoreRowsAndColumns) = 1024;
          HIDWORD(v45.ignoreRowsAndColumns) = rowCount;
          LOWORD(v45.malloc) = 2080;
          *(&v45.malloc + 2) = "X";
          WORD1(v45.free) = 1024;
          HIDWORD(v45.free) = v26;
          LOWORD(v45.reportError) = 1024;
          *(&v45.reportError + 2) = v25;
          v36 = MEMORY[0x277D86220];
          v37 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
          goto LABEL_143;
        }

        if (rowCount > 0)
        {
          if (columnCount == v16)
          {
            if (v26 == v15)
            {
              _SparseSolveOpaque_Double(&Factored, &RHS, &Soln, a4);
              goto LABEL_8;
            }

            if (v45.reportError)
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v46 = 0u;
              memset(&v45, 0, sizeof(v45));
              v38 = "X";
              goto LABEL_124;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }

            v45.control = 136316418;
            *&v45.orderMethod = "X";
            WORD2(v45.order) = 1024;
            *(&v45.order + 6) = v26;
            WORD1(v45.ignoreRowsAndColumns) = 1024;
            HIDWORD(v45.ignoreRowsAndColumns) = rowCount;
            LOWORD(v45.malloc) = 2080;
            *(&v45.malloc + 2) = "matrix factorization Factored";
            WORD1(v45.free) = 1024;
            HIDWORD(v45.free) = v15;
            LOWORD(v45.reportError) = 1024;
            *(&v45.reportError + 2) = v16;
            v36 = MEMORY[0x277D86220];
            v37 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
          }

          else
          {
            if (v45.reportError)
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v46 = 0u;
              memset(&v45, 0, sizeof(v45));
              v38 = "B";
LABEL_124:
              snprintf(&v45, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v38);
              goto LABEL_50;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }

            v45.control = 136316418;
            *&v45.orderMethod = "B";
            WORD2(v45.order) = 1024;
            *(&v45.order + 6) = columnCount;
            WORD1(v45.ignoreRowsAndColumns) = 1024;
            HIDWORD(v45.ignoreRowsAndColumns) = rowCount;
            LOWORD(v45.malloc) = 2080;
            *(&v45.malloc + 2) = "matrix factorization Factored";
            WORD1(v45.free) = 1024;
            HIDWORD(v45.free) = v15;
            LOWORD(v45.reportError) = 1024;
            *(&v45.reportError + 2) = v16;
            v36 = MEMORY[0x277D86220];
            v37 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
          }

LABEL_143:
          _os_log_error_impl(&dword_245028000, v36, OS_LOG_TYPE_ERROR, v37, &v45, 0x2Eu);
          goto LABEL_7;
        }

        if (v45.reportError)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          memset(&v45, 0, sizeof(v45));
          snprintf(&v45, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_50;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v45.control = 136315650;
        *&v45.orderMethod = "B";
        WORD2(v45.order) = 1024;
        *(&v45.order + 6) = columnCount;
        WORD1(v45.ignoreRowsAndColumns) = 1024;
        HIDWORD(v45.ignoreRowsAndColumns) = rowCount;
        v40 = MEMORY[0x277D86220];
LABEL_134:
        _os_log_error_impl(&dword_245028000, v40, OS_LOG_TYPE_ERROR, "%s (%dx%d) must represent at least one right-hand side.\n", &v45, 0x18u);
        goto LABEL_7;
      }

      if (v45.reportError)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        memset(&v45, 0, sizeof(v45));
        snprintf(&v45, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_50:
        (reportError)(&v45);
        goto LABEL_8;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v45.control = 136315138;
      *&v45.orderMethod = "Factored";
      v21 = MEMORY[0x277D86220];
      v22 = "%s does not hold a completed matrix factorization.\n";
LABEL_78:
      _os_log_error_impl(&dword_245028000, v21, OS_LOG_TYPE_ERROR, v22, &v45, 0xCu);
      goto LABEL_7;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v45.control) = 0;
    v7 = MEMORY[0x277D86220];
LABEL_75:
    _os_log_error_impl(&dword_245028000, v7, OS_LOG_TYPE_ERROR, "Factored does not hold a completed matrix factorization.\n", &v45, 2u);
    goto LABEL_7;
  }

  v8 = *(a1 + 80);
  *&Factored.userFactorStorage = *(a1 + 64);
  *&Factored.solveWorkspaceRequiredStatic = v8;
  v44 = *(a1 + 96);
  v9 = *(a1 + 16);
  *&Factored.status = *a1;
  *&Factored.symbolicFactorization.columnCount = v9;
  v10 = *(a1 + 48);
  *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&Factored.symbolicFactorization.factorSize_Float = v10;
  RHS = *a3;
  Soln = *a2;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v45.control) = 0;
    v7 = MEMORY[0x277D86220];
    goto LABEL_75;
  }

  _SparseGetOptionsFromSymbolicFactor(&v45, &Factored.symbolicFactorization);
  v17 = v45.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (!v45.reportError)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v45.control = 136315138;
      *&v45.orderMethod = "Factored";
      v21 = MEMORY[0x277D86220];
      v22 = "%s does not hold a completed matrix factorization.\n";
      goto LABEL_78;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    memset(&v45, 0, sizeof(v45));
    snprintf(&v45, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_56:
    (v17)(&v45);
    goto LABEL_8;
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v18 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v18 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v19 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v19 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (RHS.columnStride >= RHS.rowCount)
  {
    if (Soln.columnStride < Soln.rowCount)
    {
      if (!v45.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        goto LABEL_108;
      }

      goto LABEL_55;
    }

    if (*&RHS.attributes)
    {
      v28 = RHS.rowCount;
    }

    else
    {
      v28 = RHS.columnCount;
    }

    if (*&RHS.attributes)
    {
      v29 = RHS.columnCount;
    }

    else
    {
      v29 = RHS.rowCount;
    }

    if (*&Soln.attributes)
    {
      v30 = Soln.rowCount;
    }

    else
    {
      v30 = Soln.columnCount;
    }

    if (*&Soln.attributes)
    {
      v31 = Soln.columnCount;
    }

    else
    {
      v31 = Soln.rowCount;
    }

    if (v28 != v30)
    {
      if (!v45.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v45.control = 136316418;
        *&v45.orderMethod = "B";
        WORD2(v45.order) = 1024;
        *(&v45.order + 6) = v29;
        WORD1(v45.ignoreRowsAndColumns) = 1024;
        HIDWORD(v45.ignoreRowsAndColumns) = v28;
        LOWORD(v45.malloc) = 2080;
        *(&v45.malloc + 2) = "X";
        WORD1(v45.free) = 1024;
        HIDWORD(v45.free) = v31;
        LOWORD(v45.reportError) = 1024;
        *(&v45.reportError + 2) = v30;
        v36 = MEMORY[0x277D86220];
        v37 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
        goto LABEL_143;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      memset(&v45, 0, sizeof(v45));
      snprintf(&v45, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
      goto LABEL_56;
    }

    if (v28 <= 0)
    {
      if (!v45.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v45.control = 136315650;
        *&v45.orderMethod = "B";
        WORD2(v45.order) = 1024;
        *(&v45.order + 6) = v29;
        WORD1(v45.ignoreRowsAndColumns) = 1024;
        HIDWORD(v45.ignoreRowsAndColumns) = v28;
        v40 = MEMORY[0x277D86220];
        goto LABEL_134;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      memset(&v45, 0, sizeof(v45));
      snprintf(&v45, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      goto LABEL_56;
    }

    if (v29 == v20)
    {
      if (v31 == v19)
      {
        free = v45.free;
        v33 = Factored.solveWorkspaceRequiredPerRHS + v44 * v28;
        v34 = (v45.malloc)(v33);
        if (v34)
        {
          v35 = v34;
          _SparseSolveOpaque_Double(&Factored, &RHS, &Soln, v34);
          (free)(v35);
          goto LABEL_8;
        }

        if (!v17)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          v45.control = 134217984;
          *&v45.orderMethod = v33;
          v21 = MEMORY[0x277D86220];
          v22 = "Failed to allocate workspace of size %ld for SparseSolve().\n";
          goto LABEL_78;
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        memset(&v45, 0, sizeof(v45));
        snprintf(&v45, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
        goto LABEL_56;
      }

      if (!v45.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v45.control = 136316418;
        *&v45.orderMethod = "X";
        WORD2(v45.order) = 1024;
        *(&v45.order + 6) = v31;
        WORD1(v45.ignoreRowsAndColumns) = 1024;
        HIDWORD(v45.ignoreRowsAndColumns) = v28;
        LOWORD(v45.malloc) = 2080;
        *(&v45.malloc + 2) = "matrix factorization Factored";
        WORD1(v45.free) = 1024;
        HIDWORD(v45.free) = v19;
        LOWORD(v45.reportError) = 1024;
        *(&v45.reportError + 2) = v20;
        v36 = MEMORY[0x277D86220];
        v37 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
        goto LABEL_143;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      memset(&v45, 0, sizeof(v45));
      v39 = "X";
    }

    else
    {
      if (!v45.reportError)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v45.control = 136316418;
        *&v45.orderMethod = "B";
        WORD2(v45.order) = 1024;
        *(&v45.order + 6) = v29;
        WORD1(v45.ignoreRowsAndColumns) = 1024;
        HIDWORD(v45.ignoreRowsAndColumns) = v28;
        LOWORD(v45.malloc) = 2080;
        *(&v45.malloc + 2) = "matrix factorization Factored";
        WORD1(v45.free) = 1024;
        HIDWORD(v45.free) = v19;
        LOWORD(v45.reportError) = 1024;
        *(&v45.reportError + 2) = v20;
        v36 = MEMORY[0x277D86220];
        v37 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
        goto LABEL_143;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      memset(&v45, 0, sizeof(v45));
      v39 = "B";
    }

    snprintf(&v45, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v39);
    goto LABEL_56;
  }

  if (v45.reportError)
  {
LABEL_55:
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    memset(&v45, 0, sizeof(v45));
    snprintf(&v45, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
    goto LABEL_56;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_80:
    v45.control = 136315906;
    *&v45.orderMethod = "B";
    WORD2(v45.order) = 1024;
    *(&v45.order + 6) = RHS.columnStride;
    WORD1(v45.ignoreRowsAndColumns) = 2080;
    *(&v45.ignoreRowsAndColumns + 4) = "B";
    WORD2(v45.malloc) = 1024;
    *(&v45.malloc + 6) = RHS.rowCount;
    v27 = MEMORY[0x277D86220];
LABEL_109:
    _os_log_error_impl(&dword_245028000, v27, OS_LOG_TYPE_ERROR, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n", &v45, 0x22u);
  }

LABEL_7:
  _SparseTrap();
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
}