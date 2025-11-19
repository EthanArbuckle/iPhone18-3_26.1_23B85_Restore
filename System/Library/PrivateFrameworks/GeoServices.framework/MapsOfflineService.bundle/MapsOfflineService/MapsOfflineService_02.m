uint64_t sub_1DF18(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_1E0F0(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_1E1B8(void *a1)
{
  *a1 = off_262DD90;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_262D910;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1E26C(void *a1)
{
  *a1 = off_262DD90;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_262D910;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

uint64_t sub_1E358(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1E36C(void *a1)
{
  *a1 = off_262DD90;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_262D910;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1E420(void *a1)
{
  *a1 = off_262DD90;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_262D910;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

uint64_t sub_1E500(uint64_t result, int a2, uint64_t a3)
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

uint64_t sub_1E53C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1E550()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_empty);
}

unsigned __int8 *sub_1E5A8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_1EA48(a1, a2, a3);
  if (result == a2 && result != a3 && result + 1 != a3 && *result == 92)
  {
    v7 = result[1];
    if (v7 == 40)
    {
      v8 = result + 2;
      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }

      while (v8 != a3)
      {
        v9 = sub_1E5A8(a1, v8, a3);
        if (v9 == v8)
        {
          break;
        }

        v10 = sub_1E7D0(a1, v9, a3);
        v11 = v10 == v8;
        v8 = v10;
        if (v11)
        {
          goto LABEL_19;
        }
      }

      v10 = v8;
LABEL_19:
      if (v10 == a3 || v10 + 1 == a3 || *v10 != 92 || v10[1] != 41)
      {
        sub_16ACC();
      }

      result = &v10[2 * (v10[1] == 41)];
      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }
    }

    else if (((v7 & 0xF8) == 0x30 || (v7 & 0xFE) == 0x38) && (v7 - 49) <= 8)
    {
      if ((v7 - 48) <= *(a1 + 28))
      {
        sub_19108(a1);
      }

      sub_190B0();
    }
  }

  return result;
}

unsigned __int8 *sub_1E7D0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 == 42)
    {
      sub_1DB50();
    }

    if (a2 + 1 != a3 && v3 == 92 && a2[1] == 123)
    {
      v5 = &a2[2 * (a2[1] == 123)];
      if (v5 == a3)
      {
        goto LABEL_41;
      }

      v6 = *v5;
      if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
      {
        goto LABEL_41;
      }

      v7 = v6 - 48;
      v8 = v5 + 1;
      if (v5 + 1 != a3)
      {
        do
        {
          v9 = *v8;
          if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
          {
            goto LABEL_17;
          }

          if (v7 >= 214748364)
          {
            goto LABEL_41;
          }

          v7 = v9 + 10 * v7 - 48;
          ++v8;
        }

        while (v8 != a3);
        v8 = a3;
      }

LABEL_17:
      if (v8 != a3)
      {
        v10 = v8 + 1;
        v11 = *v8;
        if (v11 == 44)
        {
          if (v10 != a3 && ((v12 = *v10, (v12 & 0xF8) == 0x30) || (v12 & 0xFE) == 0x38))
          {
            v13 = v12 - 48;
            v10 = v8 + 2;
            if (v8 + 2 != a3)
            {
              do
              {
                v14 = *v10;
                if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
                {
                  goto LABEL_23;
                }

                if (v13 >= 214748364)
                {
                  goto LABEL_41;
                }

                v13 = v14 + 10 * v13 - 48;
                ++v10;
              }

              while (v10 != a3);
              v10 = a3;
            }
          }

          else
          {
            v13 = -1;
          }

LABEL_23:
          if (v10 != a3 && v10 + 1 != a3 && *v10 == 92 && v10[1] == 125)
          {
            if (v13 == -1)
            {
              sub_1DB50();
            }

            if (v13 >= v7)
            {
              sub_1DB50();
            }

LABEL_41:
            sub_1DCE0();
          }
        }

        else if (v10 != a3 && v11 == 92 && *v10 == 125)
        {
          sub_1DB50();
        }
      }

      sub_1DD38();
    }
  }

  return a2;
}

_BYTE *sub_1EA48(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 1;
    v3 = *a2;
    if (a2 + 1 != a3 || v3 != 36)
    {
      if ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0)
      {
        sub_18EEC(a1);
      }

      if (v4 != a3 && v3 == 92)
      {
        v7 = *v4 - 36;
        if (v7 <= 0x3A && ((1 << v7) & 0x580000000000441) != 0)
        {
          sub_18EEC(a1);
        }
      }

      if (*a2 == 46)
      {
        operator new();
      }
    }
  }

  return sub_183C8(a1, a2, a3);
}

void *sub_1EB8C(void *result)
{
  *result = off_262D910;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1EC00(void *a1)
{
  *a1 = off_262D910;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1EC90(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

uint64_t sub_1ECD0(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_19108(a1);
    }

    sub_190B0();
  }

  return 0;
}

unsigned __int8 *sub_1ED34(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    v7 = (v6 - 36);
    if (v7 > 0x3A)
    {
      goto LABEL_21;
    }

    if (((1 << (v6 - 36)) & 0x5800000080004D1) != 0)
    {
      goto LABEL_4;
    }

    if (v7 == 5)
    {
      if (!*(a1 + 36))
      {
LABEL_22:
        sub_18EEC(a1);
      }
    }

    else
    {
LABEL_21:
      if ((v6 - 123) >= 2)
      {
        goto LABEL_22;
      }
    }

LABEL_4:
    v8 = sub_1F0BC(a1, a2, a3);
    v9 = v8;
    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = sub_1F0BC(a1, a2, a3);
  if (v9 == a2)
  {
LABEL_8:
    v9 = sub_183C8(a1, a2, a3);
  }

LABEL_9:
  if (v9 == a2 && v9 != a3)
  {
    v10 = *v9;
    switch(v10)
    {
      case '$':
        operator new();
      case '(':
        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        ++*(a1 + 36);
        v11 = sub_152F8(a1, v9 + 1, a3);
        if (v11 == a3 || *v11 != 41)
        {
          sub_16ACC();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        --*(a1 + 36);
        v9 = v11 + 1;
        break;
      case '^':
        operator new();
    }
  }

  if (v9 == a2)
  {
    return v9;
  }

  return sub_165AC(a1, v9, a3);
}

unsigned __int8 *sub_1F0BC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return a2;
  }

  v3 = a2[1];
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    sub_18EEC(a1);
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v6 = a2 + 1;

    return sub_1BFB0(a1, v6, a3, 0);
  }

  else
  {
    v8 = sub_1ECD0(a1, v3);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    return &a2[v9];
  }
}

uint64_t sub_1F1A8(uint64_t result)
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

std::string *sub_1F220(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  v6 = a6;
  v9 = a2;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v21 = a6;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  *__p = 0u;
  memset(v33, 0, sizeof(v33));
  sub_1FA94(a4, a2, a3, __p, a6);
  sub_1FDA0(v22, v9, a3, __p, (v6 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v11 = v22[0];
  if (v22[1] == v22[0])
  {
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_22;
    }

    for (; v9 != a3; ++v9)
    {
      std::string::push_back(a1, *v9);
    }
  }

  else
  {
    v12 = strlen(a5);
    if ((v6 & 0x200) != 0)
    {
      if ((v6 & 0x400) != 0)
      {
        a1 = sub_1F4E8(v22, a1, a5, &a5[v12], v6);
        goto LABEL_21;
      }

      do
      {
        a1 = sub_1F4E8(v22, a1, a5, &a5[v12], v6);
        v13 = v27;
        v14 = v28;
        sub_1F8A8(v20);
      }

      while (v22[1] != v22[0]);
    }

    else
    {
      if ((v6 & 0x400) != 0)
      {
        v18 = v24;
        for (i = v25; v18 != i; ++v18)
        {
          std::string::push_back(a1, *v18);
        }

        a1 = sub_1F4E8(v22, a1, a5, &a5[v12], v6);
        v13 = v27;
        v14 = v28;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      do
      {
        v15 = v24;
        for (j = v25; v15 != j; ++v15)
        {
          std::string::push_back(a1, *v15);
        }

        a1 = sub_1F4E8(v22, a1, a5, &a5[v12], v6);
        v13 = v27;
        v14 = v28;
        sub_1F8A8(v20);
      }

      while (v22[1] != v22[0]);
    }

    if ((v6 & 0x200) == 0)
    {
LABEL_17:
      while (v13 != v14)
      {
        std::string::push_back(a1, *v13++);
      }
    }
  }

LABEL_21:
  v11 = v22[0];
LABEL_22:
  if (v11)
  {
    v22[1] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_1F480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    v28 = a1;
    operator delete(__p);
    a1 = v28;
  }

  _Unwind_Resume(a1);
}

std::string *sub_1F4E8(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v5 = a4;
  v6 = a3;
  v8 = a1;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    v46 = (a1 + 3);
    while (1)
    {
      v10 = *v6;
      if (v10 == 92)
      {
        v9 = v6 + 1;
        if (v6 + 1 != v5)
        {
          v10 = *v9;
          v20 = v10 - 48;
          if ((v10 - 48) <= 9)
          {
            v21 = v46;
            if (0xAAAAAAAAAAAAAAABLL * (v8[1] - *v8) > v20)
            {
              v21 = &(*v8)[3 * v20];
            }

            v22 = *v21;
            v23 = *(v21 + 8);
            if (*v21 != v23)
            {
              do
              {
                v24 = *v22++;
                std::string::push_back(this, v24);
              }

              while (v22 != v23);
            }

            goto LABEL_8;
          }

          ++v6;
        }
      }

      else if (v10 == 38)
      {
        v11 = *v8;
        v13 = **v8;
        v12 = v11[1];
        while (v13 != v12)
        {
          v17 = *v13;
          v18 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          if (v18 < 0)
          {
            v19 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
            if (this->__r_.__value_.__l.__size_ == v19 - 1)
            {
              if (v19 == 0x7FFFFFFFFFFFFFF8)
              {
                sub_3244();
              }

LABEL_20:
              operator new();
            }

            v15 = this->__r_.__value_.__r.__words[0];
            size = this->__r_.__value_.__l.__size_;
            this->__r_.__value_.__l.__size_ = size + 1;
          }

          else
          {
            if (*(&this->__r_.__value_.__s + 23) == 22)
            {
              goto LABEL_20;
            }

            size = HIBYTE(this->__r_.__value_.__r.__words[2]);
            *(&this->__r_.__value_.__s + 23) = (v18 + 1) & 0x7F;
            v15 = this;
          }

          v16 = v15 + size;
          *v16 = v17;
          v16[1] = 0;
          ++v13;
        }

        v9 = v6;
        v8 = a1;
        v5 = a4;
        goto LABEL_8;
      }

      std::string::push_back(this, v10);
      v9 = v6;
LABEL_8:
      v6 = v9 + 1;
      if (v9 + 1 == v5)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v25 = *v6;
      v26 = v6 + 1;
      if (v25 == 36 && v26 != v5)
      {
        v25 = *v26;
        if (v25 > 0x26)
        {
          if (v25 == 39)
          {
            v42 = v8[9];
            v43 = v8[10];
            while (v42 != v43)
            {
              v44 = *v42++;
              std::string::push_back(this, v44);
            }

            goto LABEL_33;
          }

          if (v25 == 96)
          {
            v31 = v8[6];
            v32 = v8[7];
            while (v31 != v32)
            {
              v33 = *v31++;
              std::string::push_back(this, v33);
            }

            goto LABEL_33;
          }
        }

        else
        {
          if (v25 == 36)
          {
            goto LABEL_32;
          }

          if (v25 == 38)
          {
            v28 = **v8;
            v29 = (*v8)[1];
            while (v28 != v29)
            {
              v30 = *v28++;
              std::string::push_back(this, v30);
            }

            goto LABEL_33;
          }
        }

        LODWORD(v34) = v25 - 48;
        if (v34 <= 9)
        {
          v34 = v34;
          if (v6 + 2 != v5)
          {
            v35 = v6[2];
            v36 = v35 - 48;
            v37 = v35 + 10 * v34 - 48;
            if (v36 > 9)
            {
              v26 = v6 + 1;
            }

            else
            {
              v34 = v37;
              v26 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * (v8[1] - *v8) <= v34)
          {
            v38 = (v8 + 3);
          }

          else
          {
            v38 = &(*v8)[3 * v34];
          }

          v39 = *v38;
          v40 = *(v38 + 8);
          if (*v38 != v40)
          {
            do
            {
              v41 = *v39++;
              std::string::push_back(this, v41);
            }

            while (v39 != v40);
          }

          goto LABEL_33;
        }

        LOBYTE(v25) = 36;
      }

      v26 = v6;
LABEL_32:
      std::string::push_back(this, v25);
LABEL_33:
      v6 = v26 + 1;
    }

    while (v26 + 1 != v5);
  }

  return this;
}

uint64_t sub_1F8A8(uint64_t a1)
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
    goto LABEL_6;
  }

  v12 = *(a1 + 8);
  if (v12 == v7)
  {
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
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
  v14 = sub_1FA94(v13, v7, v12, __p, v4 | 0x860u);
  sub_1FDA0(v3, v7, v12, __p, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    v5 = *(a1 + 24);
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
    v11 = sub_1FA94(v9, v8, v10, __p, v5 | 0x80u);
    sub_1FDA0(v3, v8, v10, __p, (v5 & 0x800) != 0);
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
    if (!*v3)
    {
LABEL_17:
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

LABEL_16:
    *(a1 + 40) = v2;
    operator delete(v2);
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    goto LABEL_17;
  }

  return a1;
}

void sub_1FA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1FA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  *(a4 + 24) = a3;
  v11 = (a4 + 24);
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  sub_1788C(a4, (v10 + 1), (a4 + 24));
  *(a4 + 48) = a2;
  *(a4 + 56) = a2;
  *(a4 + 64) = 0;
  *(a4 + 72) = *v11;
  *(a4 + 88) = *(a4 + 40);
  if ((v9 & 0x800) == 0)
  {
    *(a4 + 104) = a2;
  }

  *(a4 + 96) = 1;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    if (sub_173CC(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (*(a1 + 28))
  {
    if (sub_2080C(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (a2 != a3 && (v9 & 0x40) == 0)
    {
      for (i = a2 + 1; i != a3; ++i)
      {
        sub_1788C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
        if ((*(a1 + 24) & 0x1F0) != 0)
        {
          if (*(a1 + 28))
          {
            if (sub_2080C(a1, i, a3, a4, v9 | 0x80u, 0))
            {
              goto LABEL_28;
            }
          }

          else if (sub_1FF0C(a1, i, a3, a4, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_173CC(a1, i, a3, a4, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }

        sub_1788C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      }

      sub_1788C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      if ((*(a1 + 24) & 0x1F0) != 0)
      {
        if (*(a1 + 28))
        {
          if (sub_2080C(a1, i, a3, a4, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_1FF0C(a1, i, a3, a4, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }
      }

      else if (sub_173CC(a1, i, a3, a4, v9 | 0x80u, 0))
      {
        goto LABEL_28;
      }
    }

    result = 0;
    *(a4 + 8) = *a4;
    return result;
  }

  if ((sub_1FF0C(a1, a2, a3, a4, v9, (v9 & 0x800) == 0) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (*(a4 + 8) == *a4)
  {
    v13 = v11;
  }

  else
  {
    v13 = *a4;
  }

  v14 = *v13;
  *(a4 + 56) = *v13;
  *(a4 + 64) = *(a4 + 48) != v14;
  v15 = *(v13 + 1);
  *(a4 + 72) = v15;
  *(a4 + 88) = v15 != *(a4 + 80);
  return 1;
}

void sub_1FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  v11 = a4[1] - *a4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  if (v12 <= v15)
  {
    if (v12 < v15)
    {
      v13 = v14 + v11;
      *(a1 + 8) = v14 + v11;
    }
  }

  else
  {
    sub_21FC4(a1, v12 - v15);
    v14 = *a1;
    v13 = *(a1 + 8);
  }

  if (v13 == v14)
  {
    v20 = a2 - v10;
  }

  else
  {
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
    v18 = *a4;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
    v20 = a2 - v10;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v21 = (v14 + 16);
    do
    {
      if (v19 <= v16)
      {
        v22 = a4 + 3;
      }

      else
      {
        v22 = v18;
      }

      *(v21 - 2) = v20 + *v22;
      *(v21 - 1) = v20 + v22[1];
      *v21 = *(v22 + 16);
      v21 += 24;
      ++v16;
      v18 += 3;
    }

    while (v17 != v16);
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v23 = v20 + a4[6];
  *(a1 + 48) = v23;
  *(a1 + 56) = v20 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v20 + a4[9];
  *(a1 + 80) = v20 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v23;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_1FF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_93;
  }

  *v78 = 0;
  memset(&v78[8], 0, 48);
  *__p = 0uLL;
  memset(v80, 0, 21);
  sub_20F74(&v81);
  v12 = *(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0]) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0]) % 0x2AuLL);
  v13 = *&v78[16];
  *v12 = *v78;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  memset(&v78[32], 0, 24);
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  __p[0] = 0;
  __p[1] = 0;
  v80[0] = 0;
  v14 = v80[1];
  *(v12 + 85) = *(&v80[1] + 5);
  *(v12 + 80) = v14;
  v16 = v83.i64[1];
  v15 = v83.i64[0];
  v17 = ++v83.i64[1];
  v18 = *(&v81 + 1);
  v19 = *(a1 + 32);
  v20 = *(*(&v81 + 1) + 8 * ((v16 + v83.i64[0]) / 0x2AuLL)) + 96 * ((v16 + v83.i64[0]) % 0x2AuLL);
  *v20 = 0;
  *(v20 + 8) = a2;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v20 + 56);
  v22 = (*(v20 + 64) - v21) >> 4;
  v74 = a4;
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      *(v20 + 64) = v21 + 16 * v19;
    }
  }

  else
  {
    sub_180E4(v20 + 56, v19 - v22);
    v17 = v83.i64[1];
    v15 = v83.i64[0];
    v18 = *(&v81 + 1);
  }

  v76 = 0;
  v23 = 0;
  v24 = 0;
  v25 = *(v18 + 8 * ((v17 + v15 - 1) / 0x2AuLL)) + 96 * ((v17 + v15 - 1) % 0x2AuLL);
  *(v25 + 80) = v6;
  *(v25 + 92) = a6;
  v75 = a3;
  v26 = a3 - a2;
  *(v25 + 88) = a5;
  do
  {
    if ((++v23 & 0xFFF) == 0 && (v23 >> 12) >= v26)
    {
      sub_17AB8();
    }

    v28 = *(*(&v81 + 1) + 8 * ((v17 + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v17 + v83.i64[0] - 1) % 0x2AuLL);
    v29 = *(v28 + 80);
    if (v29)
    {
      (*(*v29 + 16))(v29, v28);
    }

    v30 = *v28;
    if (*v28 <= -995)
    {
      if (v30 != -1000)
      {
        if (v30 == -999)
        {
          goto LABEL_9;
        }

        if (v30 != -995)
        {
LABEL_107:
          sub_17B10();
        }

        v31 = v83.i64[0];
        if (!v83.i64[0])
        {
          sub_21660(&v81);
          v31 = v83.i64[0];
        }

        v32 = (*(&v81 + 1) + 8 * (v31 / 0x2A));
        v33 = *v32 + 96 * (v31 % 0x2A);
        if (v82 == *(&v81 + 1))
        {
          v33 = 0;
        }

        if (v33 == *v32)
        {
          v33 = *(v32 - 1) + 4032;
        }

        v34 = *(v28 + 16);
        *(v33 - 96) = *v28;
        *(v33 - 80) = v34;
        *(v33 - 56) = 0;
        *(v33 - 48) = 0;
        *(v33 - 64) = 0;
        *(v33 - 64) = *(v28 + 32);
        *(v33 - 48) = *(v28 + 48);
        *(v28 + 32) = 0;
        *(v28 + 40) = 0;
        *(v28 + 48) = 0;
        *(v33 - 40) = 0;
        *(v33 - 32) = 0;
        *(v33 - 24) = 0;
        *(v33 - 40) = *(v28 + 56);
        *(v33 - 24) = *(v28 + 72);
        *(v28 + 56) = 0;
        *(v28 + 64) = 0;
        *(v28 + 72) = 0;
        v35 = *(v28 + 80);
        *(v33 - 11) = *(v28 + 85);
        *(v33 - 16) = v35;
        v36 = vdupq_laneq_s64(v83, 1);
        v83 = vaddq_s64(v83, xmmword_22661F0);
        v36.i64[0] = vaddq_s64(v36, v83).u64[0];
        v37 = (*(*(&v81 + 1) + 8 * (v36.i64[0] / 0x2AuLL)) + 96 * (v36.i64[0] % 0x2AuLL));
        v38 = v37[7];
        if (!v38)
        {
          goto LABEL_39;
        }

LABEL_38:
        v37[8] = v38;
        operator delete(v38);
LABEL_39:
        v40 = v37[4];
        if (v40)
        {
          v37[5] = v40;
          operator delete(v40);
        }

        v41 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
        v42 = v83;
        --v83.i64[1];
        if (v82 == *(&v81 + 1))
        {
          v41 = 0;
        }

        if ((v41 - (v42.i64[1] + v42.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v82 - 8));
          *&v82 = v82 - 8;
        }

        goto LABEL_9;
      }

      v39 = *(v28 + 16);
      if ((a5 & 0x20) != 0 && v39 == a2 || (a5 & 0x1000) != 0 && v39 != v75)
      {
        goto LABEL_37;
      }

      v49 = v39 - *(v28 + 8);
      if (v24 <= v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = v24;
      }

      if (v76)
      {
        v24 = v50;
      }

      else
      {
        v24 = v49;
      }

      if (v24 == v26)
      {
        v51 = *(&v81 + 1);
        v52 = v82;
        if (v82 == *(&v81 + 1))
        {
          v83.i64[1] = 0;
          v64 = 0;
        }

        else
        {
          v53 = (*(&v81 + 1) + 8 * (v83.i64[0] / 0x2AuLL));
          v54 = (*v53 + 96 * (v83.i64[0] % 0x2AuLL));
          v55 = *(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0]) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0]) % 0x2AuLL);
          if (v54 != v55)
          {
            do
            {
              v56 = v54[7];
              if (v56)
              {
                v54[8] = v56;
                operator delete(v56);
              }

              v57 = v54[4];
              if (v57)
              {
                v54[5] = v57;
                operator delete(v57);
              }

              v54 += 12;
              if ((v54 - *v53) == &stru_FB8.dylib.name.offset)
              {
                v58 = v53[1];
                ++v53;
                v54 = v58;
              }
            }

            while (v54 != v55);
            v51 = *(&v81 + 1);
            v52 = v82;
          }

          v83.i64[1] = 0;
          v64 = (v52 - v51) >> 3;
          if (v64 >= 3)
          {
            do
            {
              operator delete(*v51);
              v51 = (*(&v81 + 1) + 8);
              *(&v81 + 1) = v51;
              v64 = (v82 - v51) >> 3;
            }

            while (v64 > 2);
          }
        }

        if (v64 == 1)
        {
          v65 = 21;
LABEL_88:
          v83.i64[0] = v65;
        }

        else if (v64 == 2)
        {
          v65 = 42;
          goto LABEL_88;
        }

        v76 = 1;
        v24 = v26;
        goto LABEL_9;
      }

      v59 = (*(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0] - 1) % 0x2AuLL));
      v60 = v59[7];
      if (v60)
      {
        v59[8] = v60;
        operator delete(v60);
      }

      v61 = v59[4];
      if (v61)
      {
        v59[5] = v61;
        operator delete(v61);
      }

      v62 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
      v63 = v83;
      --v83.i64[1];
      if (v82 == *(&v81 + 1))
      {
        v62 = 0;
      }

      if ((v62 - (v63.i64[1] + v63.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v82 - 8));
        *&v82 = v82 - 8;
      }

      v76 = 1;
    }

    else
    {
      if (v30 <= -993)
      {
        if (v30 == -994)
        {
          goto LABEL_9;
        }

        if (v30 != -993)
        {
          goto LABEL_107;
        }

LABEL_37:
        v37 = (*(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0] - 1) % 0x2AuLL));
        v38 = v37[7];
        if (v38)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v30 == -992)
      {
        sub_18238(v78, v28);
        (*(**(v28 + 80) + 24))(*(v28 + 80), 1, v28);
        (*(*v80[1] + 24))(v80[1], 0, v78);
        v43 = *(&v81 + 1);
        if (v82 == *(&v81 + 1))
        {
          v44 = 0;
        }

        else
        {
          v44 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
        }

        v45 = v83.i64[1] + v83.i64[0];
        if (v44 == v83.i64[1] + v83.i64[0])
        {
          sub_20F74(&v81);
          v43 = *(&v81 + 1);
          v45 = v83.i64[1] + v83.i64[0];
        }

        v46 = *(v43 + 8 * (v45 / 0x2A)) + 96 * (v45 % 0x2A);
        v47 = *&v78[16];
        *v46 = *v78;
        *(v46 + 16) = v47;
        *(v46 + 40) = 0;
        *(v46 + 48) = 0;
        *(v46 + 32) = 0;
        *(v46 + 32) = *&v78[32];
        *(v46 + 48) = *&v78[48];
        memset(&v78[32], 0, 24);
        *(v46 + 56) = 0;
        *(v46 + 64) = 0;
        *(v46 + 72) = 0;
        *(v46 + 56) = *__p;
        *(v46 + 72) = v80[0];
        __p[0] = 0;
        __p[1] = 0;
        v80[0] = 0;
        v48 = v80[1];
        *(v46 + 85) = *(&v80[1] + 5);
        *(v46 + 80) = v48;
        ++v83.i64[1];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (*&v78[32])
        {
          *&v78[40] = *&v78[32];
          operator delete(*&v78[32]);
        }
      }

      else if (v30 != -991)
      {
        goto LABEL_107;
      }
    }

LABEL_9:
    v17 = v83.i64[1];
  }

  while (v83.i64[1]);
  if (v76)
  {
    v66 = *v74;
    *v66 = a2;
    *(v66 + 8) = a2 + v24;
    v67 = 1;
    *(v66 + 16) = 1;
    v68 = *(&v81 + 1);
    v69 = v82;
    v83.i64[1] = 0;
    v70 = (v82 - *(&v81 + 1)) >> 3;
    if (v70 < 3)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_93:
  v67 = 0;
  v68 = *(&v81 + 1);
  v69 = v82;
  v83.i64[1] = 0;
  v70 = (v82 - *(&v81 + 1)) >> 3;
  if (v70 < 3)
  {
    goto LABEL_95;
  }

  do
  {
LABEL_94:
    operator delete(*v68);
    v69 = v82;
    v68 = (*(&v81 + 1) + 8);
    *(&v81 + 1) = v68;
    v70 = (v82 - v68) >> 3;
  }

  while (v70 > 2);
LABEL_95:
  if (v70 == 1)
  {
    v71 = 21;
LABEL_99:
    v83.i64[0] = v71;
  }

  else if (v70 == 2)
  {
    v71 = 42;
    goto LABEL_99;
  }

  if (v68 != v69)
  {
    do
    {
      v72 = *v68++;
      operator delete(v72);
    }

    while (v68 != v69);
    if (v82 != *(&v81 + 1))
    {
      *&v82 = v82 + ((*(&v81 + 1) - v82 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v81)
  {
    operator delete(v81);
  }

  return v67;
}

void sub_2079C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_17A74(va);
  sub_21A58((v9 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_2080C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v69 = 0;
  v70 = 0;
  v71 = 0;
  *v66 = 0;
  memset(&v66[8], 0, 32);
  v67 = 0u;
  memset(v68, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_69:
    v50 = 0;
    v51 = v68[0];
    if (!v68[0])
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  *&v64 = a3;
  *(&v64 + 1) = a3;
  v65 = 0;
  *v61 = 0;
  memset(&v61[8], 0, 48);
  *__p = 0uLL;
  memset(v63, 0, 21);
  v70 = sub_17BEC(&v69, v61);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v61[32])
  {
    *&v61[40] = *&v61[32];
    operator delete(*&v61[32]);
  }

  v13 = v70;
  *(v70 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_17F18(v13 - 8, v15 - v16, &v64);
    v13 = v70;
  }

  v17 = *(v13 - 5);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 4) - v17) >> 4;
  v58 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 4) = v17 + 16 * v18;
    }
  }

  else
  {
    sub_180E4(v13 - 40, v18 - v19);
    v13 = v70;
  }

  v20 = 0;
  v60 = 0;
  v21 = 0;
  *(v13 - 2) = v6;
  v59 = a3;
  v22 = a3 - a2;
  *(v13 - 2) = a5;
  *(v13 - 4) = a6;
  do
  {
    v23 = (++v21 & 0xFFF) != 0 || (v21 >> 12) < v22;
    if (!v23)
    {
      sub_17AB8();
    }

    v25 = v13 - 1;
    v24 = *(v13 - 2);
    v26 = v13 - 6;
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v27 = *v26;
    if (*v26 <= -994)
    {
      if ((v27 + 995) < 2)
      {
        goto LABEL_16;
      }

      if (v27 != -1000)
      {
LABEL_84:
        sub_17B10();
      }

      v28 = *(v13 - 10);
      if ((a5 & 0x20) != 0 && v28 == a2 || (a5 & 0x1000) != 0 && v28 != v59)
      {
LABEL_34:
        v29 = v70;
        v30 = *(v70 - 5);
        if (v30)
        {
          *(v70 - 4) = v30;
          operator delete(v30);
        }

        v31 = *(v29 - 8);
        if (v31)
        {
          *(v29 - 7) = v31;
          operator delete(v31);
        }

        v70 = v29 - 6;
        goto LABEL_16;
      }

      v35 = v28 - *(v13 - 11);
      if ((v60 & (v20 >= v35)) == 0)
      {
        v36 = *v26;
        *&v66[16] = *(v13 - 5);
        *v66 = v36;
        if (v66 != v26)
        {
          sub_21AD0(&v66[32], *(v13 - 8), *(v13 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - *(v13 - 8)) >> 3));
          sub_21CE4(v68, *(v13 - 5), *(v13 - 4), (*(v13 - 4) - *(v13 - 5)) >> 4);
        }

        v37 = *v25;
        *(&v68[3] + 5) = *(v13 - 11);
        v68[3] = v37;
        v20 = v35;
      }

      v38 = v70;
      if (v20 == v22)
      {
        v39 = v69;
        while (v38 != v39)
        {
          v40 = *(v38 - 5);
          if (v40)
          {
            *(v38 - 4) = v40;
            operator delete(v40);
          }

          v41 = *(v38 - 8);
          if (v41)
          {
            *(v38 - 7) = v41;
            operator delete(v41);
          }

          v38 -= 6;
        }

        v70 = v39;
        v60 = 1;
        v20 = v22;
      }

      else
      {
        v42 = *(v70 - 5);
        if (v42)
        {
          *(v70 - 4) = v42;
          operator delete(v42);
        }

        v43 = *(v38 - 8);
        if (v43)
        {
          *(v38 - 7) = v43;
          operator delete(v43);
        }

        v70 = v38 - 6;
        v60 = 1;
      }
    }

    else
    {
      switch(v27)
      {
        case -993:
          goto LABEL_34;
        case -992:
          sub_18238(v61, v13 - 6);
          (*(**v25 + 24))(*v25, 1, v13 - 6);
          (*(*v63[1] + 24))(v63[1], 0, v61);
          v32 = v70;
          if (v70 >= v71)
          {
            v70 = sub_17BEC(&v69, v61);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v33 = *&v61[16];
            *v70 = *v61;
            v32[1] = v33;
            *(v32 + 6) = 0;
            *(v32 + 7) = 0;
            *(v32 + 4) = 0;
            *(v32 + 5) = 0;
            v32[2] = *&v61[32];
            *(v32 + 6) = *&v61[48];
            *&v61[32] = 0;
            *&v61[40] = 0;
            *(v32 + 8) = 0;
            *(v32 + 9) = 0;
            *(v32 + 56) = *__p;
            *(v32 + 9) = v63[0];
            *&v61[48] = 0;
            __p[0] = 0;
            __p[1] = 0;
            v63[0] = 0;
            v34 = v63[1];
            *(v32 + 85) = *(&v63[1] + 5);
            *(v32 + 10) = v34;
            v70 = v32 + 6;
          }

          if (*&v61[32])
          {
            *&v61[40] = *&v61[32];
            operator delete(*&v61[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_84;
      }
    }

LABEL_16:
    v13 = v70;
  }

  while (v69 != v70);
  if ((v60 & 1) == 0)
  {
    goto LABEL_69;
  }

  v44 = *v58;
  *v44 = a2;
  *(v44 + 8) = a2 + v20;
  *(v44 + 16) = 1;
  if (v67 != *&v66[32])
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v67 - *&v66[32]) >> 3);
    v46 = (*&v66[32] + 16);
    v47 = 1;
    do
    {
      v48 = v44 + 24 * v47;
      *v48 = *(v46 - 1);
      v49 = *v46;
      v46 += 24;
      *(v48 + 16) = v49;
      v23 = v45 > v47++;
    }

    while (v23);
  }

  v50 = 1;
  v51 = v68[0];
  if (v68[0])
  {
LABEL_70:
    v68[1] = v51;
    operator delete(v51);
  }

LABEL_71:
  if (*&v66[32])
  {
    *&v67 = *&v66[32];
    operator delete(*&v66[32]);
  }

  v52 = v69;
  if (v69)
  {
    v53 = v70;
    v54 = v69;
    if (v70 != v69)
    {
      do
      {
        v55 = *(v53 - 5);
        if (v55)
        {
          *(v53 - 4) = v55;
          operator delete(v55);
        }

        v56 = *(v53 - 8);
        if (v56)
        {
          *(v53 - 7) = v56;
          operator delete(v56);
        }

        v53 -= 6;
      }

      while (v53 != v52);
      v54 = v69;
    }

    v70 = v52;
    operator delete(v54);
  }

  return v50;
}

void sub_20DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_17A74(&a27);
  sub_17B68((v27 - 120));
  _Unwind_Resume(a1);
}

void sub_20E14(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v4 = a1[4];
  v5 = &v2[v4 / 0x2A];
  v6 = *v5 + 96 * (v4 % 0x2A);
  v7 = v2[(a1[5] + v4) / 0x2A] + 96 * ((a1[5] + v4) % 0x2A);
  if (v6 != v7)
  {
    do
    {
      v8 = *(v6 + 7);
      if (v8)
      {
        *(v6 + 8) = v8;
        operator delete(v8);
      }

      v9 = *(v6 + 4);
      if (v9)
      {
        *(v6 + 5) = v9;
        operator delete(v9);
      }

      v6 += 96;
      if (v6 - *v5 == 4032)
      {
        v10 = v5[1];
        ++v5;
        v6 = v10;
      }
    }

    while (v6 != v7);
    v2 = a1[1];
    v3 = a1[2];
  }

  a1[5] = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
LABEL_13:
      operator delete(*v2);
      v12 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

LABEL_14:
  if (v11 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 42;
  }

  a1[4] = v13;
}

void *sub_20F74(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_212E4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_2133C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_214C8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

const void **sub_21660(uint64_t a1)
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

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  *(a1 + 32) = v5 + 42;
  v11 = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_214C8(a1, &v11);
}

void sub_21A1C(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void **sub_21A58(void **a1)
{
  sub_20E14(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *sub_21AD0(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
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

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      result[16] = *(v4 + 16);
      v4 += 24;
      result += 24;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v4;
        result[16] = *(v4 + 16);
        v4 += 24;
        result += 24;
      }

      while (v4 != v13);
    }

    if (v13 == a3)
    {
      *(a1 + 8) = v12;
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
      *(a1 + 8) = v14;
    }
  }

  return result;
}

char *sub_21CE4(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  result = *a1;
  if (a4 > (v5 - result) >> 4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v7 = a4;
      operator delete(result);
      a4 = v7;
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 60))
    {
      v8 = v5 >> 3;
      if (v5 >> 3 <= a4)
      {
        v8 = a4;
      }

      v27 = v5 >= 0x7FFFFFFFFFFFFFF0;
      v9 = 0xFFFFFFFFFFFFFFFLL;
      if (!v27)
      {
        v9 = v8;
      }

      if (!(v9 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v10 = *(a1 + 8);
  if (a4 <= (v10 - result) >> 4)
  {
    if (a2 == a3)
    {
      *(a1 + 8) = result;
      return result;
    }

    v19 = a3 - a2 - 16;
    if (v19 < 0xF0 || ((v39 = v19 & 0xFFFFFFFFFFFFFFF0 | 8, v40 = &result[v39], v41 = a2 + v39, v42 = (v19 & 0xFFFFFFFFFFFFFFF0) + 16, (result + 8) < a2 + v42) ? (v43 = a2 + 8 >= &result[v42]) : (v43 = 1), v43 ? (v44 = 0) : (v44 = 1), v40 > a2 ? (v45 = result >= v41) : (v45 = 1), !v45 || (v44 & 1) != 0))
    {
      v10 = result;
      v20 = a2;
    }

    else
    {
      v46 = (v19 >> 4) + 1;
      v47 = 16 * (v46 & 0x1FFFFFFFFFFFFFFCLL);
      v10 = &result[v47];
      v20 = (a2 + v47);
      v48 = (a2 + 32);
      v49 = result + 32;
      v50 = v46 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v52 = *(v48 - 2);
        v51 = *(v48 - 1);
        v54 = *v48;
        v53 = v48[1];
        v48 += 4;
        *(v49 - 2) = v52;
        *(v49 - 1) = v51;
        *v49 = v54;
        v49[1] = v53;
        v49 += 4;
        v50 -= 4;
      }

      while (v50);
      if (v46 == (v46 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_24;
      }
    }

    do
    {
      v21 = *v20;
      v22 = v20[1];
      v20 += 2;
      *v10 = v21;
      *(v10 + 1) = v22;
      v10 += 16;
    }

    while (v20 != a3);
LABEL_24:
    *(a1 + 8) = v10;
    return result;
  }

  v11 = (a2 + v10 - result);
  if (v10 != result)
  {
    v12 = v10 - result - 16;
    if (v12 < 0xF0 || ((v23 = v12 & 0xFFFFFFFFFFFFFFF0 | 8, v24 = &result[v23], v25 = a2 + v23, v26 = (v12 & 0xFFFFFFFFFFFFFFF0) + 16, (result + 8) < a2 + v26) ? (v27 = a2 + 8 >= &result[v26]) : (v27 = 1), v27 ? (v28 = 0) : (v28 = 1), v24 > a2 ? (v29 = result >= v25) : (v29 = 1), !v29 || (v28 & 1) != 0))
    {
      v13 = result;
      v14 = a2;
    }

    else
    {
      v30 = (v12 >> 4) + 1;
      v31 = 16 * (v30 & 0x1FFFFFFFFFFFFFFCLL);
      v13 = &result[v31];
      v14 = (a2 + v31);
      v32 = (a2 + 32);
      v33 = result + 32;
      v34 = v30 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *(v32 - 2);
        v35 = *(v32 - 1);
        v38 = *v32;
        v37 = v32[1];
        v32 += 4;
        *(v33 - 2) = v36;
        *(v33 - 1) = v35;
        *v33 = v38;
        v33[1] = v37;
        v33 += 4;
        v34 -= 4;
      }

      while (v34);
      if (v30 == (v30 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_16;
      }
    }

    do
    {
      v15 = *v14;
      v16 = v14[1];
      v14 += 2;
      *v13 = v15;
      *(v13 + 1) = v16;
      v13 += 16;
    }

    while (v14 != v11);
  }

LABEL_16:
  if (v11 == a3)
  {
    goto LABEL_24;
  }

  v17 = v10;
  do
  {
    v18 = *v11++;
    *v10 = v18;
    v10 += 16;
    v17 += 16;
  }

  while (v11 != a3);
  *(a1 + 8) = v17;
  return result;
}

void sub_21FC4(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3) >= a2)
  {
    if (a2)
    {
      v8 = v2 + 24 * a2;
      v9 = 24 * a2;
      do
      {
        *v2 = 0;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        v2 += 24;
        v9 -= 24;
      }

      while (v9);
      v2 = v8;
    }

    a1[1] = v2;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v5 = v4 + a2;
    if (v4 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 24 * a2;
    v11 = 24 * v4;
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v11 += 24;
      v10 -= 24;
    }

    while (v10);
    v12 = *a1;
    v13 = a1[1];
    v14 = 24 * v4 + *a1 - v13;
    if (v13 != *a1)
    {
      v15 = 24 * v4 + *a1 - v13;
      do
      {
        v16 = *v12;
        *(v15 + 16) = v12[2];
        *v15 = v16;
        v15 += 24;
        v12 += 3;
      }

      while (v12 != v13);
      v12 = *a1;
    }

    *a1 = v14;
    a1[1] = 24 * v4 + 24 * a2;
    a1[2] = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_22174(int8x16_t *a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v61 = a1;
  v62 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (!a2)
  {
LABEL_20:
    operator new();
  }

  if (a2 < 8)
  {
    v4 = 0;
    v5 = a1;
    goto LABEL_16;
  }

  if (a2 >= 0x20)
  {
    v7 = vdupq_n_s8(a3);
    v8 = 0uLL;
    v9 = vdupq_n_s64(1uLL);
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFFFFFFFFFE0;
    v11 = 0uLL;
    v12 = a1 + 1;
    v13 = 0uLL;
    v14 = a2 & 0xFFFFFFFFFFFFFFE0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    do
    {
      v27 = vceqq_s8(v12[-1], v7);
      v28 = vmovl_u8(*v27.i8);
      v29 = vmovl_high_u8(v27);
      v30 = vmovl_high_u16(v29);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v18 = vaddq_s64(v18, vandq_s8(v31, v9));
      v32 = vmovl_high_u16(v28);
      v33 = vmovl_u16(*v29.i8);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v17 = vaddq_s64(v17, vandq_s8(v31, v9));
      v31.i64[0] = v33.u32[2];
      v31.i64[1] = v33.u32[3];
      v16 = vaddq_s64(v16, vandq_s8(v31, v9));
      v31.i64[0] = v32.u32[2];
      v31.i64[1] = v32.u32[3];
      v13 = vaddq_s64(v13, vandq_s8(v31, v9));
      v34 = vmovl_u16(*v28.i8);
      v31.i64[0] = v33.u32[0];
      v31.i64[1] = v33.u32[1];
      v15 = vaddq_s64(v15, vandq_s8(v31, v9));
      v31.i64[0] = v34.u32[0];
      v31.i64[1] = v34.u32[1];
      v35 = vandq_s8(v31, v9);
      v31.i64[0] = v34.u32[2];
      v31.i64[1] = v34.u32[3];
      v36 = vandq_s8(v31, v9);
      v31.i64[0] = v32.u32[0];
      v31.i64[1] = v32.u32[1];
      v37 = vceqq_s8(*v12, v7);
      v11 = vaddq_s64(v11, vandq_s8(v31, v9));
      v38 = vmovl_u8(*v37.i8);
      v39 = vmovl_high_u8(v37);
      v10 = vaddq_s64(v10, v36);
      v40 = vmovl_high_u16(v39);
      v8 = vaddq_s64(v8, v35);
      v31.i64[0] = v40.u32[2];
      v31.i64[1] = v40.u32[3];
      v26 = vaddq_s64(v26, vandq_s8(v31, v9));
      v41 = vmovl_high_u16(v38);
      v42 = vmovl_u16(*v39.i8);
      v31.i64[0] = v40.u32[0];
      v31.i64[1] = v40.u32[1];
      v25 = vaddq_s64(v25, vandq_s8(v31, v9));
      v31.i64[0] = v42.u32[2];
      v31.i64[1] = v42.u32[3];
      v24 = vaddq_s64(v24, vandq_s8(v31, v9));
      v31.i64[0] = v41.u32[2];
      v31.i64[1] = v41.u32[3];
      v22 = vaddq_s64(v22, vandq_s8(v31, v9));
      v31.i64[0] = v42.u32[0];
      v31.i64[1] = v42.u32[1];
      v23 = vaddq_s64(v23, vandq_s8(v31, v9));
      v43 = vmovl_u16(*v38.i8);
      v31.i64[0] = v41.u32[0];
      v31.i64[1] = v41.u32[1];
      v21 = vaddq_s64(v21, vandq_s8(v31, v9));
      v31.i64[0] = v43.u32[2];
      v31.i64[1] = v43.u32[3];
      v20 = vaddq_s64(v20, vandq_s8(v31, v9));
      v31.i64[0] = v43.u32[0];
      v31.i64[1] = v43.u32[1];
      v19 = vaddq_s64(v19, vandq_s8(v31, v9));
      v12 += 2;
      v14 -= 32;
    }

    while (v14);
    v4 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v19, v8), vaddq_s64(v23, v15)), vaddq_s64(vaddq_s64(v21, v11), vaddq_s64(v25, v17))), vaddq_s64(vaddq_s64(vaddq_s64(v20, v10), vaddq_s64(v24, v16)), vaddq_s64(vaddq_s64(v22, v13), vaddq_s64(v26, v18)))));
    if (a2 == v6)
    {
      goto LABEL_19;
    }

    if ((a2 & 0x18) == 0)
    {
      v5 = &a1->u8[v6];
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v5 = &a1->u8[a2 & 0xFFFFFFFFFFFFFFF8];
  v44 = 0uLL;
  v45 = v4;
  v46 = vdup_n_s8(a3);
  v47 = &a1->i8[v6];
  v48 = v6 - (a2 & 0xFFFFFFFFFFFFFFF8);
  v49 = vdupq_n_s64(1uLL);
  v50 = 0uLL;
  v51 = 0uLL;
  do
  {
    v52 = *v47++;
    v53 = vmovl_u8(vceq_s8(v52, v46));
    v54 = vmovl_u16(*v53.i8);
    v55.i64[0] = v54.u32[0];
    v55.i64[1] = v54.u32[1];
    v56 = vandq_s8(v55, v49);
    v55.i64[0] = v54.u32[2];
    v55.i64[1] = v54.u32[3];
    v57 = vandq_s8(v55, v49);
    v58 = vmovl_high_u16(v53);
    v55.i64[0] = v58.u32[0];
    v55.i64[1] = v58.u32[1];
    v59 = vandq_s8(v55, v49);
    v55.i64[0] = v58.u32[2];
    v55.i64[1] = v58.u32[3];
    v51 = vaddq_s64(v51, vandq_s8(v55, v49));
    v50 = vaddq_s64(v50, v59);
    v44 = vaddq_s64(v44, v57);
    v45 = vaddq_s64(v45, v56);
    v48 += 8;
  }

  while (v48);
  v4 = vaddvq_s64(vaddq_s64(vaddq_s64(v45, v50), vaddq_s64(v44, v51)));
  if (a2 == (a2 & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_19:
    if (v4 >= 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    goto LABEL_20;
  }

  do
  {
LABEL_16:
    v60 = *v5++;
    if (v60 == a3)
    {
      ++v4;
    }
  }

  while (v5 != &a1->i8[a2]);
  goto LABEL_19;
}

void sub_22748(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_22774(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_227A0(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_227CC(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

char *sub_227E4(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v13 = v5;
  v14 = v5;
  v6 = *(a2 + 8);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = *a2;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(dword_14[2 * ((*(a1 + 8) - *a1) >> 3)]) = v6;
  if (v6)
  {
    memmove(v5, v7, v6);
  }

  v5[v6] = 0;
  v8 = v5 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v5[-v9];
  memcpy(&v13[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v14 + 24;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8;
}

void sub_2297C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

char *sub_22990(uint64_t a1, const void **a2, size_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = *a3;
  if (*a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = *a2;
  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(dword_14[2 * ((*(a1 + 8) - *a1) >> 3)]) = v7;
  if (v7)
  {
    memmove(v6, v8, v7);
  }

  v6[v7] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_22B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

void sub_22B40(void *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v4 = *a1;
  v5 = (a1[1] + a2);
  v6 = *(*a1 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v4 + v6 > v5)
    {
      *(&v14.__r_.__value_.__s + 23) = 10;
      strcpy(&v14, "remaining:");
      v7 = v4 + v6;
      v8 = v4 + v6 - v5;
      if (v8 < 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_4;
      }

LABEL_18:
      sub_3244();
    }

LABEL_19:
    operator new();
  }

  if (*v4 + v4[1] <= v5)
  {
    goto LABEL_19;
  }

  *(&v14.__r_.__value_.__s + 23) = 10;
  strcpy(&v14, "remaining:");
  v7 = (*v4 + v4[1]);
  v8 = v7 - v5;
  if ((v7 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (v8 > 0x16)
  {
    operator new();
  }

  v13 = v8;
  if (v5 != v7)
  {
    memmove(__p, v5, v8);
  }

  *(__p + v8) = 0;
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v14, v9, v10);
  *a3 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if ((v13 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(v14.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }
}

void sub_22D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_22DB4(uint64_t **a1, uint64_t a2)
{
  v4 = a1[1];
  a1[1] = (v4 + 1);
  LODWORD(v4) = *v4;
  *(a2 + 44) = 0;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = 0;
  *(a2 + 24) &= 0xFFFFFFFFFFFFFF80;
  *(a2 + 32) = 0;
  *a2 = v4 == 123;
  if (v4 == 123)
  {
    v5 = 125;
  }

  else
  {
    v5 = 41;
  }

  sub_22B40(a1, 0, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  while (1)
  {
    v7 = *a1;
    v8 = *(*a1 + 23);
    if (v8 < 0)
    {
      v7 = *v7;
      v8 = (*a1)[1];
    }

    v9 = v7 + v8;
    v10 = a1[1];
    if (v10 == v9 || (v11 = *v10, v11 == 59))
    {
      sub_D7B0(__p);
      v18 = sub_4A5C(&__p[0].__r_.__value_.__r.__words[2], "closing curly/parenthesis not found?", 36);
      v19 = *(*a1 + 23);
      if (v19 >= 0)
      {
        v20 = *a1;
      }

      else
      {
        v20 = **a1;
      }

      if (v19 >= 0)
      {
        v21 = *(*a1 + 23);
      }

      else
      {
        v21 = (*a1)[1];
      }

      sub_4A5C(v18, v20, v21);
      exception = __cxa_allocate_exception(0x10uLL);
      sub_DAE4(__p, &v32);
      std::logic_error::logic_error(exception, &v32);
    }

    if (v5 == v11)
    {
      break;
    }

    if (v11 == 45)
    {
      a1[1] = ++v10;
    }

    a1[1] = (v10 + 1);
    v12 = *v10;
    if (v12 < 0)
    {
      if (!__maskrune(*v10, 0x100uLL))
      {
LABEL_47:
        sub_22B40(a1, 0, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        sub_D7B0(__p);
        v27 = sub_4A5C(&__p[0].__r_.__value_.__r.__words[2], "alpha expected, got: ", 21);
        v32.__r_.__value_.__s.__data_[0] = v12;
        v28 = sub_4A5C(v27, &v32, 1);
        sub_22B40(a1, 0, &v32);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v32;
        }

        else
        {
          v29 = v32.__r_.__value_.__r.__words[0];
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v32.__r_.__value_.__l.__size_;
        }

        sub_4A5C(v28, v29, size);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        v31 = __cxa_allocate_exception(0x10uLL);
        sub_DAE4(__p, &v32);
        std::logic_error::logic_error(v31, &v32);
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v12] & 0x100) == 0)
    {
      goto LABEL_47;
    }

    v13 = a1[1];
    if (*v13 < 0 || (v14 = *v13, (_DefaultRuneLocale.__runetype[v14] & 0x400) == 0))
    {
      sub_22B40(a1, 0, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      sub_D7B0(__p);
      v23 = sub_4A5C(&__p[0].__r_.__value_.__r.__words[2], "digit expected, got: ", 21);
      sub_22B40(a1, 0, &v32);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v32;
      }

      else
      {
        v24 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v32.__r_.__value_.__l.__size_;
      }

      sub_4A5C(v23, v24, v25);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      v26 = __cxa_allocate_exception(0x10uLL);
      sub_DAE4(__p, &v32);
      std::logic_error::logic_error(v26, &v32);
    }

    v15 = 0;
    v16 = (v13 + 1);
    do
    {
      if ((_DefaultRuneLocale.__runetype[v14] & 0x400) == 0)
      {
        break;
      }

      a1[1] = v16;
      v15 = *(v16 - 1) + 10 * v15 - 48;
      v17 = *v16;
      v14 = *v16;
      v16 = (v16 + 1);
    }

    while ((v17 & 0x80000000) == 0);
    if (v11 == 45)
    {
      v6 = -v15;
    }

    else
    {
      v6 = v15;
    }

    sub_1222C(a2, v12, v6);
  }

  a1[1] = (v10 + 1);
}

void sub_231F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v16)
  {
LABEL_6:
    sub_DBE4(&a15);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v15);
  sub_DBE4(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_232E4(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 + (((v3 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v3 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v3 + 0x388152A534) ^ 0xDEADBEEFLL;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v4 + (((v3 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v3 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v3 + 0x388152A534) ^ 0xDEADBEEFLL;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v5 == v12)
        {
          if (*(result + 4) == v3 && *(result + 5) == v4)
          {
            return result;
          }
        }

        else if ((v12 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v14 = result[1];
      if (v5 == v14)
      {
        if (*(result + 4) == v3 && *(result + 5) == v4)
        {
          return result;
        }
      }

      else
      {
        if (v14 >= *&v2)
        {
          v14 %= *&v2;
        }

        if (v14 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_233F8(void *a1, _DWORD *a2)
{
  v4 = sub_4A5C(a1, "(token_type=", 12);
  v7 = *a2;
  v5 = sub_4A5C(v4, &v7, 1);
  sub_4A5C(v5, ")", 1);
  return a1;
}

std::string *sub_2345C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_195A048(a1, __s, v4);
}

uint64_t sub_234A4(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 12 * a3;
    do
    {
      sub_23520(a1, a2);
      a2 += 3;
      v5 -= 12;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_23520(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 4) == v2 && *(v9 + 5) == v3)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_12;
  }

  return v9;
}

uint64_t sub_23898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_23914(a1, a2);
      a2 += 24;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_23914(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v24, a2, v5);
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
    operator new();
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

void sub_23D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_23D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void *sub_23D34(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_23D9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
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

__n128 sub_23E08@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t *sub_23E68(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
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
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_2419C(int8x16_t *a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (!a2)
  {
LABEL_20:
    operator new();
  }

  if (a2 < 8)
  {
    v4 = 0;
    v5 = a1;
    goto LABEL_16;
  }

  if (a2 >= 0x20)
  {
    v7 = vdupq_n_s8(a3);
    v8 = 0uLL;
    v9 = vdupq_n_s64(1uLL);
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFFFFFFFFFE0;
    v11 = 0uLL;
    v12 = a1 + 1;
    v13 = 0uLL;
    v14 = a2 & 0xFFFFFFFFFFFFFFE0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    do
    {
      v27 = vceqq_s8(v12[-1], v7);
      v28 = vmovl_u8(*v27.i8);
      v29 = vmovl_high_u8(v27);
      v30 = vmovl_high_u16(v29);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v18 = vaddq_s64(v18, vandq_s8(v31, v9));
      v32 = vmovl_high_u16(v28);
      v33 = vmovl_u16(*v29.i8);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v17 = vaddq_s64(v17, vandq_s8(v31, v9));
      v31.i64[0] = v33.u32[2];
      v31.i64[1] = v33.u32[3];
      v16 = vaddq_s64(v16, vandq_s8(v31, v9));
      v31.i64[0] = v32.u32[2];
      v31.i64[1] = v32.u32[3];
      v13 = vaddq_s64(v13, vandq_s8(v31, v9));
      v34 = vmovl_u16(*v28.i8);
      v31.i64[0] = v33.u32[0];
      v31.i64[1] = v33.u32[1];
      v15 = vaddq_s64(v15, vandq_s8(v31, v9));
      v31.i64[0] = v34.u32[0];
      v31.i64[1] = v34.u32[1];
      v35 = vandq_s8(v31, v9);
      v31.i64[0] = v34.u32[2];
      v31.i64[1] = v34.u32[3];
      v36 = vandq_s8(v31, v9);
      v31.i64[0] = v32.u32[0];
      v31.i64[1] = v32.u32[1];
      v37 = vceqq_s8(*v12, v7);
      v11 = vaddq_s64(v11, vandq_s8(v31, v9));
      v38 = vmovl_u8(*v37.i8);
      v39 = vmovl_high_u8(v37);
      v10 = vaddq_s64(v10, v36);
      v40 = vmovl_high_u16(v39);
      v8 = vaddq_s64(v8, v35);
      v31.i64[0] = v40.u32[2];
      v31.i64[1] = v40.u32[3];
      v26 = vaddq_s64(v26, vandq_s8(v31, v9));
      v41 = vmovl_high_u16(v38);
      v42 = vmovl_u16(*v39.i8);
      v31.i64[0] = v40.u32[0];
      v31.i64[1] = v40.u32[1];
      v25 = vaddq_s64(v25, vandq_s8(v31, v9));
      v31.i64[0] = v42.u32[2];
      v31.i64[1] = v42.u32[3];
      v24 = vaddq_s64(v24, vandq_s8(v31, v9));
      v31.i64[0] = v41.u32[2];
      v31.i64[1] = v41.u32[3];
      v22 = vaddq_s64(v22, vandq_s8(v31, v9));
      v31.i64[0] = v42.u32[0];
      v31.i64[1] = v42.u32[1];
      v23 = vaddq_s64(v23, vandq_s8(v31, v9));
      v43 = vmovl_u16(*v38.i8);
      v31.i64[0] = v41.u32[0];
      v31.i64[1] = v41.u32[1];
      v21 = vaddq_s64(v21, vandq_s8(v31, v9));
      v31.i64[0] = v43.u32[2];
      v31.i64[1] = v43.u32[3];
      v20 = vaddq_s64(v20, vandq_s8(v31, v9));
      v31.i64[0] = v43.u32[0];
      v31.i64[1] = v43.u32[1];
      v19 = vaddq_s64(v19, vandq_s8(v31, v9));
      v12 += 2;
      v14 -= 32;
    }

    while (v14);
    v4 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v19, v8), vaddq_s64(v23, v15)), vaddq_s64(vaddq_s64(v21, v11), vaddq_s64(v25, v17))), vaddq_s64(vaddq_s64(vaddq_s64(v20, v10), vaddq_s64(v24, v16)), vaddq_s64(vaddq_s64(v22, v13), vaddq_s64(v26, v18)))));
    if (a2 == v6)
    {
      goto LABEL_19;
    }

    if ((a2 & 0x18) == 0)
    {
      v5 = &a1->u8[v6];
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v5 = &a1->u8[a2 & 0xFFFFFFFFFFFFFFF8];
  v44 = 0uLL;
  v45 = v4;
  v46 = vdup_n_s8(a3);
  v47 = &a1->i8[v6];
  v48 = v6 - (a2 & 0xFFFFFFFFFFFFFFF8);
  v49 = vdupq_n_s64(1uLL);
  v50 = 0uLL;
  v51 = 0uLL;
  do
  {
    v52 = *v47++;
    v53 = vmovl_u8(vceq_s8(v52, v46));
    v54 = vmovl_u16(*v53.i8);
    v55.i64[0] = v54.u32[0];
    v55.i64[1] = v54.u32[1];
    v56 = vandq_s8(v55, v49);
    v55.i64[0] = v54.u32[2];
    v55.i64[1] = v54.u32[3];
    v57 = vandq_s8(v55, v49);
    v58 = vmovl_high_u16(v53);
    v55.i64[0] = v58.u32[0];
    v55.i64[1] = v58.u32[1];
    v59 = vandq_s8(v55, v49);
    v55.i64[0] = v58.u32[2];
    v55.i64[1] = v58.u32[3];
    v51 = vaddq_s64(v51, vandq_s8(v55, v49));
    v50 = vaddq_s64(v50, v59);
    v44 = vaddq_s64(v44, v57);
    v45 = vaddq_s64(v45, v56);
    v48 += 8;
  }

  while (v48);
  v4 = vaddvq_s64(vaddq_s64(vaddq_s64(v45, v50), vaddq_s64(v44, v51)));
  if (a2 == (a2 & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_19:
    if (v4 >= 0xFFFFFFFFFFFFFFFLL)
    {
      sub_1794();
    }

    goto LABEL_20;
  }

  do
  {
LABEL_16:
    v60 = *v5++;
    if (v60 == a3)
    {
      ++v4;
    }
  }

  while (v5 != &a1->i8[a2]);
  goto LABEL_19;
}

void sub_246F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    *(a10 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2472C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!(((v2 - *result) >> 4) >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_247E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_247FC(uint64_t *result, _DWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 2;
    v8 = (v6 >> 2) + 1;
    if (v8 >> 62)
    {
      sub_1794();
    }

    v9 = v3 - v5;
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
      if (!(v10 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(4 * v7) = *a2;
    v12 = 4 * v7 + 4;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

uint64_t sub_24920(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  sub_D7B0(v19);
  sub_4A5C(&v20, a1, a2);
  std::istream::operator>>();
  if ((*(&v22[0].__locale_ + *(v19[0] - 24)) & 5) != 0)
  {
    sub_D7B0(v17);
    v7 = sub_4A5C(v18, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StringAlgorithms.h", 124);
    sub_4A5C(v7, ":", 1);
    v8 = std::ostream::operator<<();
    v9 = sub_4A5C(v8, ":", 1);
    v10 = sub_4A5C(v9, "Failed parsing: ", 16);
    sub_4A5C(v10, a1, a2);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_DAE4(v17, v15);
    if ((v16 & 0x80u) == 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15[1];
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  v4 = v24;
  v20 = v5;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v4;
}

void sub_24BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a15);
  sub_DBE4(&a50);
  _Unwind_Resume(a1);
}

uint64_t *sub_24C14@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t **sub_24D4C(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
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
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_24F04(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v24, a2, v5);
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
    operator new();
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

void sub_2533C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25368(va);
  _Unwind_Resume(a1);
}

void sub_25350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25368(va);
  _Unwind_Resume(a1);
}

uint64_t sub_25368(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_253B4(v1 + 16);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_253B4(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = *(a1 + 120);
    v4 = *(a1 + 112);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 144;
      }

      while (v3 != v2);
      v4 = *(a1 + 112);
    }

    *(a1 + 120) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    do
    {
      v7 = *v6;
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v8 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

_DWORD *sub_2548C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unsigned int *a3@<X2>, _DWORD *a4@<X8>)
{
  v8 = (sub_4198(a1) - 1) * 6.28318531 / 365.0;
  v9 = __sincos_stret(v8);
  v10 = __sincos_stret(v8 + v8);
  v11 = __sincos_stret(v8 * 3.0);
  v12 = v11.__sinval * 0.00148 + v10.__sinval * 0.000907 + v9.__sinval * 0.070257 + v9.__cosval * -0.399912 + 0.006918 + v10.__cosval * -0.006758 + v11.__cosval * -0.002697;
  v13 = sub_3D34(a1);
  LODWORD(v14) = *a2;
  v29 = v14;
  LODWORD(v14) = a2[1];
  v15 = exp(3.14159265 - v14 * 6.28318531 / 4294967300.0);
  v16 = atan((v15 + -1.0 / v15) * 0.5) * 57.2957795 * 3.14159265 / 180.0;
  v17 = cos(v16);
  v18 = -0.0145380805 / (cos(v12) * v17);
  v19 = tan(v16);
  v20 = tan(v12);
  v21 = acos(v18 - v20 * v19) * 180.0 / 3.14159265 * 8.0 * 60.0 * 10.0;
  if (v21 >= 0.0)
  {
    if (v21 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v22 = (v21 + v21) + 1;
  }

  else
  {
    if (v21 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
  }

  v21 = (v22 >> 1);
LABEL_7:
  *a3 = v21;
  v23 = sub_3550(a4, a1);
  sub_3E48(v23, 0xCu);
  sub_3EC8(a4, 0);
  v24 = ((v29 * 360.0 / 4294967300.0 + -180.0) * 4.0 + (v9.__cosval * 0.001868 + 0.000075 + v9.__sinval * -0.032077 + v10.__cosval * -0.014615 + v10.__sinval * -0.040849) * 229.18 + v13 / -600.0) * 60.0 * 10.0;
  if (v24 >= 0.0)
  {
    if (v24 >= 4.50359963e15)
    {
      goto LABEL_13;
    }

    v25 = (v24 + v24) + 1;
  }

  else
  {
    if (v24 <= -4.50359963e15)
    {
      goto LABEL_13;
    }

    v25 = (v24 + v24) - 1 + (((v24 + v24) - 1) >> 63);
  }

  v24 = (v25 >> 1);
LABEL_13:
  v31 = v24;
  sub_4864(a4, &v31);
  v26 = vcvtd_n_f64_s32(*a3, 1uLL);
  if (v26 >= 0.0)
  {
    if (v26 < 4.50359963e15)
    {
      v27 = (v26 + v26) + 1;
      goto LABEL_18;
    }
  }

  else if (v26 > -4.50359963e15)
  {
    v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
LABEL_18:
    v26 = (v27 >> 1);
  }

  v30 = v26;
  return sub_4864(a4, &v30);
}

BOOL sub_25900(const char *a1, int *a2, const char *a3, int *a4)
{
  sub_25BE0(v11, a1);
  sub_25BE0(v10, a3);
  if (sub_29CA0(v11) && sub_29CA0(v10))
  {
    v7 = sub_29C60(v11, *a2);
    v8 = v7 == sub_29C60(v10, *a4);
  }

  else
  {
    v8 = 0;
  }

  sub_25F00(v10);
  sub_25F00(v11);
  return v8;
}

void sub_259A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_25F00(va);
  _Unwind_Resume(a1);
}

void sub_259BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_25F00(&a9);
  sub_25F00(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_259D8(CFTimeZoneRef *a1, int *a2, CFTimeZoneRef *a3, int *a4)
{
  result = sub_29CA0(a1);
  if (result)
  {
    result = sub_29CA0(a3);
    if (result)
    {
      v9 = sub_29C60(a1, *a2);
      return v9 == sub_29C60(a3, *a4);
    }
  }

  return result;
}

uint64_t sub_25A44(int *a1, int *a2, const char *a3)
{
  v3 = *a1 - *a2;
  if (v3 < 0)
  {
    v3 = *a2 - *a1;
  }

  if (v3 >> 6 < 0x2A3)
  {
    return 0;
  }

  sub_25BE0(v8, a3);
  v7 = sub_4254(*a1, *a2, v8);
  sub_25F00(v8);
  return v7;
}

uint64_t sub_25AE0(uint64_t a1)
{
  *a1 = CFTimeZoneCopyDefault();
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_25B10(uint64_t a1, const char *a2)
{
  *(a1 + 8) = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v4 = CFTimeZoneCreateWithName(0, v3, 1u);
  CFRelease(v3);
  *a1 = v4;
  if (!v4)
  {
    v6 = CFStringCreateWithCString(0, "UTC", 0x8000100u);
    v7 = CFTimeZoneCreateWithName(0, v6, 1u);
    CFRelease(v6);
    *a1 = v7;
    *(a1 + 8) = 1;
  }

  return a1;
}

CFTimeZoneRef sub_25BE4(uint64_t a1, uint64_t a2)
{
  Name = CFTimeZoneGetName(*a2);
  if (Name)
  {
    result = CFTimeZoneCreateWithName(0, Name, 1u);
    *a1 = result;
    *(a1 + 8) = *(a2 + 8);
    return result;
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v11);
    sub_4A5C(&v11, "Could not resolve a time zone name", 34);
    if ((v21 & 0x10) != 0)
    {
      v7 = v20;
      if (v20 < v17)
      {
        v20 = v17;
        v7 = v17;
      }

      v8 = v16;
      v6 = v7 - v16;
      if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v21 & 8) == 0)
      {
        v6 = 0;
        v10 = 0;
LABEL_16:
        *(&__p + v6) = 0;
        sub_7E854(&__p, 3u);
        if (v10 < 0)
        {
          operator delete(__p);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }

        std::locale::~locale(&v13);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v8 = v14;
      v6 = v15 - v14;
      if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v10 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_16;
  }

  return result;
}

void sub_25E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_25EBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  sub_25BE4(a1, a2);
  return a1;
}

uint64_t sub_25EE8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *a2 = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

const void **sub_25F00(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_25F34(const void **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = a2;
    CFRelease(v3);
    a2 = v4;
  }

  sub_25BE4(a1, a2);
  return a1;
}

void sub_25F74(CFTimeZoneRef *a1@<X0>, void *a2@<X8>)
{
  Name = CFTimeZoneGetName(*a1);

  sub_6348(Name, a2);
}

void sub_25FB0(CFTimeZoneRef *a1@<X0>, uint64_t a2@<X8>)
{
  Name = CFTimeZoneGetName(*a1);
  sub_6348(Name, __p);
  sub_26074();
  v4 = sub_2C5A0(qword_278EB38, __p);
  if (v4)
  {
    if (*(v4 + 63) < 0)
    {
      sub_325C(a2, v4[5], v4[6]);
    }

    else
    {
      v5 = *(v4 + 5);
      *(a2 + 16) = v4[7];
      *a2 = v5;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_26074()
{
  __chkstk_darwin();
  if ((atomic_load_explicit(&qword_278EB30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278EB30))
  {
    sub_29D4C(v3, "Africa/Abidjan", "CI");
    sub_29D4C(v4, "Africa/Algiers", "DZ");
    sub_29EB0(v5, "Africa/Asmera", "KE");
    sub_29EB0(v6, "Africa/Bissau", "GW");
    sub_2A014(v7, "Africa/Cairo", "EG");
    sub_2A178(v8, "Africa/Casablanca", "MA");
    sub_2A014(v9, "Africa/Ceuta", "ES");
    sub_2A2DC(v10, "Africa/El_Aaiun", "EH");
    sub_2A440(v11, "Africa/Johannesburg", "ZA");
    sub_2A5A4(v12, "Africa/Juba", "SS");
    sub_2A2DC(v13, "Africa/Khartoum", "SD");
    sub_2A014(v14, "Africa/Lagos", "NG");
    sub_29EB0(v15, "Africa/Maputo", "MZ");
    sub_2A2DC(v16, "Africa/Monrovia", "LR");
    sub_29D4C(v17, "Africa/Nairobi", "KE");
    sub_2A2DC(v18, "Africa/Ndjamena", "TD");
    sub_2A2DC(v19, "Africa/Sao_Tome", "ST");
    sub_2A2DC(v20, "Africa/Timbuktu", "CI");
    sub_29D4C(v21, "Africa/Tripoli", "LY");
    sub_2A014(v22, "Africa/Tunis", "TN");
    sub_2A2DC(v23, "Africa/Windhoek", "NA");
    sub_2A014(v24, "America/Adak", "US");
    sub_2A178(v25, "America/Anchorage", "US");
    sub_2A178(v26, "America/Araguaina", "BR");
    sub_2A708(v27, "America/Argentina/Buenos_Aires", "AR");
    sub_2A86C(v28, "America/Argentina/Catamarca", "AR");
    sub_2A9D0(v29, "America/Argentina/ComodRivadavia", "AR");
    sub_2AB34(v30, "America/Argentina/Cordoba", "AR");
    sub_2AC98(v31, "America/Argentina/Jujuy", "AR");
    sub_2ADFC(v32, "America/Argentina/La_Rioja", "AR");
    sub_2AB34(v33, "America/Argentina/Mendoza", "AR");
    sub_2A708(v34, "America/Argentina/Rio_Gallegos", "AR");
    sub_2AC98(v35, "America/Argentina/Salta", "AR");
    sub_2ADFC(v36, "America/Argentina/San_Juan", "AR");
    sub_2ADFC(v37, "America/Argentina/San_Luis", "AR");
    sub_2AB34(v38, "America/Argentina/Tucuman", "AR");
    sub_2AB34(v39, "America/Argentina/Ushuaia", "AR");
    sub_2AF60(v40, "America/Asuncion", "PY");
    sub_2A014(v41, "America/Atka", "US");
    sub_29EB0(v42, "America/Bahia", "BR");
    sub_2B0C4(v43, "America/Bahia_Banderas", "MX");
    sub_2AF60(v44, "America/Barbados", "BB");
    sub_29EB0(v45, "America/Belem", "BR");
    sub_29D4C(v46, "America/Belize", "BZ");
    sub_2A178(v47, "America/Boa_Vista", "BR");
    sub_29D4C(v48, "America/Bogota", "CO");
    sub_29EB0(v49, "America/Boise", "US");
    sub_2B228(v50, "America/Buenos_Aires", "AR");
    sub_2B38C(v51, "America/Cambridge_Bay", "CA");
    sub_2B228(v52, "America/Campo_Grande", "BR");
    sub_29D4C(v53, "America/Cancun", "MX");
    sub_2A2DC(v54, "America/Caracas", "VE");
    sub_2A178(v55, "America/Catamarca", "AR");
    sub_2A2DC(v56, "America/Cayenne", "GF");
    sub_2A2DC(v57, "America/Chicago", "US");
    sub_2A178(v58, "America/Chihuahua", "MX");
    sub_2B38C(v59, "America/Coral_Harbour", "PA");
    sub_2A2DC(v60, "America/Cordoba", "AR");
    sub_2B4F0(v61, "America/Costa_Rica", "CR");
    sub_29D4C(v62, "America/Cuiaba", "BR");
    sub_2B228(v63, "America/Danmarkshavn", "GL");
    sub_29D4C(v64, "America/Dawson", "CA");
    sub_2B228(v65, "America/Dawson_Creek", "CA");
    sub_29D4C(v66, "America/Denver", "US");
    sub_2A2DC(v67, "America/Detroit", "US");
    sub_2AF60(v68, "America/Edmonton", "CA");
    sub_2AF60(v69, "America/Eirunepe", "BR");
    sub_2A440(v70, "America/El_Salvador", "SV");
    sub_2AF60(v71, "America/Ensenada", "MX");
    sub_2A440(v72, "America/Fort_Nelson", "CA");
    sub_2B4F0(v73, "America/Fort_Wayne", "US");
    sub_2A178(v74, "America/Fortaleza", "BR");
    sub_2A178(v75, "America/Glace_Bay", "CA");
    sub_2A2DC(v76, "America/Godthab", "GL");
    sub_2A178(v77, "America/Goose_Bay", "CA");
    sub_2B4F0(v78, "America/Grand_Turk", "TC");
    sub_2A178(v79, "America/Guatemala", "GT");
    sub_2A178(v80, "America/Guayaquil", "EC");
    sub_29D4C(v81, "America/Guyana", "GY");
    sub_2A2DC(v82, "America/Halifax", "CA");
    sub_29D4C(v83, "America/Havana", "CU");
    sub_2B4F0(v84, "America/Hermosillo", "MX");
    sub_2B654(v85, "America/Indiana/Indianapolis", "US");
    sub_2B228(v86, "America/Indiana/Knox", "US");
    sub_2AC98(v87, "America/Indiana/Marengo", "US");
    sub_2ADFC(v88, "America/Indiana/Petersburg", "US");
    sub_2AB34(v89, "America/Indiana/Tell_City", "US");
    sub_2B38C(v90, "America/Indiana/Vevay", "US");
    sub_2AB34(v91, "America/Indiana/Vincennes", "US");
    sub_2AC98(v92, "America/Indiana/Winamac", "US");
    sub_2B228(v93, "America/Indianapolis", "US");
    sub_29D4C(v94, "America/Inuvik", "CA");
    sub_2A2DC(v95, "America/Iqaluit", "CA");
    sub_2A2DC(v96, "America/Jamaica", "JM");
    sub_29EB0(v97, "America/Jujuy", "AR");
    sub_29D4C(v98, "America/Juneau", "US");
    sub_2A86C(v99, "America/Kentucky/Louisville", "US");
    sub_2A86C(v100, "America/Kentucky/Monticello", "US");
    sub_2A2DC(v101, "America/Knox_IN", "US");
    sub_29D4C(v102, "America/La_Paz", "BO");
    sub_2A014(v103, "America/Lima", "PE");
    sub_2A440(v104, "America/Los_Angeles", "US");
    sub_2B4F0(v105, "America/Louisville", "US");
    sub_29D4C(v106, "America/Maceio", "BR");
    sub_2A2DC(v107, "America/Managua", "NI");
    sub_29D4C(v108, "America/Manaus", "BR");
    sub_2B4F0(v109, "America/Martinique", "MQ");
    sub_2A178(v110, "America/Matamoros", "MX");
    sub_2AF60(v111, "America/Mazatlan", "MX");
    sub_2A2DC(v112, "America/Mendoza", "AR");
    sub_2A178(v113, "America/Menominee", "US");
    sub_29D4C(v114, "America/Merida", "MX");
    sub_2B4F0(v115, "America/Metlakatla", "US");
    sub_2A440(v116, "America/Mexico_City", "MX");
    sub_2AF60(v117, "America/Miquelon", "PM");
    sub_2A2DC(v118, "America/Moncton", "CA");
    sub_2A178(v119, "America/Monterrey", "MX");
    sub_2B4F0(v120, "America/Montevideo", "UY");
    sub_2AF60(v121, "America/Montreal", "CA");
    sub_2AF60(v122, "America/New_York", "US");
    sub_2A2DC(v123, "America/Nipigon", "CA");
    sub_2A014(v124, "America/Nome", "US");
    sub_2A2DC(v125, "America/Noronha", "BR");
    sub_2A86C(v126, "America/North_Dakota/Beulah", "US");
    sub_2A86C(v127, "America/North_Dakota/Center", "US");
    sub_2A708(v128, "America/North_Dakota/New_Salem", "US");
    sub_2A014(v129, "America/Nuuk", "GL");
    sub_2A2DC(v130, "America/Ojinaga", "MX");
    sub_29D4C(v131, "America/Panama", "PA");
    sub_2A440(v132, "America/Pangnirtung", "CA");
    sub_2B4F0(v133, "America/Paramaribo", "SR");
    sub_2A2DC(v134, "America/Phoenix", "US");
    sub_2B0C4(v135, "America/Port-au-Prince", "HT");
    sub_2B4F0(v136, "America/Porto_Acre", "BR");
    sub_2A440(v137, "America/Porto_Velho", "BR");
    sub_2A440(v138, "America/Puerto_Rico", "PR");
    sub_2B228(v139, "America/Punta_Arenas", "CL");
    sub_2A440(v140, "America/Rainy_River", "CA");
    sub_2B228(v141, "America/Rankin_Inlet", "CA");
    sub_29D4C(v142, "America/Recife", "BR");
    sub_29D4C(v143, "America/Regina", "CA");
    sub_2AF60(v144, "America/Resolute", "CA");
    sub_2B4F0(v145, "America/Rio_Branco", "BR");
    sub_2A2DC(v146, "America/Rosario", "AR");
    sub_2B228(v147, "America/Santa_Isabel", "MX");
    sub_2AF60(v148, "America/Santarem", "BR");
    sub_2AF60(v149, "America/Santiago", "CL");
    sub_2B38C(v150, "America/Santo_Domingo", "DO");
    sub_2A178(v151, "America/Sao_Paulo", "BR");
    sub_2B228(v152, "America/Scoresbysund", "GL");
    sub_2AF60(v153, "America/Shiprock", "US");
    sub_29EB0(v154, "America/Sitka", "US");
    sub_2AF60(v155, "America/St_Johns", "CA");
    sub_2B38C(v156, "America/Swift_Current", "CA");
    sub_2A440(v157, "America/Tegucigalpa", "HN");
    sub_29EB0(v158, "America/Thule", "GL");
    sub_2A440(v159, "America/Thunder_Bay", "CA");
    sub_2A2DC(v160, "America/Tijuana", "MX");
    sub_2A2DC(v161, "America/Toronto", "CA");
    sub_2A178(v162, "America/Vancouver", "CA");
    sub_29D4C(v163, "America/Virgin", "PR");
    sub_2B4F0(v164, "America/Whitehorse", "CA");
    sub_2AF60(v165, "America/Winnipeg", "CA");
    sub_2A2DC(v166, "America/Yakutat", "US");
    sub_2A440(v167, "America/Yellowknife", "CA");
    sub_2AF60(v168, "Antarctica/Casey", "AQ");
    sub_2AF60(v169, "Antarctica/Davis", "AQ");
    sub_2B228(v170, "Antarctica/Macquarie", "AU");
    sub_2A178(v171, "Antarctica/Mawson", "AQ");
    sub_2A178(v172, "Antarctica/Palmer", "AQ");
    sub_2B4F0(v173, "Antarctica/Rothera", "AQ");
    sub_2B38C(v174, "Antarctica/South_Pole", "NZ");
    sub_2AF60(v175, "Antarctica/Troll", "AQ");
    sub_2A178(v176, "Antarctica/Vostok", "AQ");
    sub_2A5A4(v177, "Asia/Almaty", "KZ");
    sub_2B7B8(v178, "Asia/Amman", "JO");
    sub_2A5A4(v179, "Asia/Anadyr", "RU");
    sub_2B7B8(v180, "Asia/Aqtau", "KZ");
    sub_2A5A4(v181, "Asia/Aqtobe", "KZ");
    sub_29EB0(v182, "Asia/Ashgabat", "TM");
    sub_29D4C(v183, "Asia/Ashkhabad", "TM");
    sub_2A5A4(v184, "Asia/Atyrau", "KZ");
    sub_2A014(v185, "Asia/Baghdad", "IQ");
    sub_2B91C(v186, "Asia/Baku", "AZ");
    sub_2A014(v187, "Asia/Bangkok", "TH");
    sub_2A014(v188, "Asia/Barnaul", "RU");
    sub_2A5A4(v189, "Asia/Beirut", "LB");
    sub_2A014(v190, "Asia/Bishkek", "KG");
    sub_2A5A4(v191, "Asia/Brunei", "BN");
    sub_29EB0(v192, "Asia/Calcutta", "IN");
    sub_2B7B8(v193, "Asia/Chita", "RU");
    sub_2A2DC(v194, "Asia/Choibalsan", "MN");
    sub_29D4C(v195, "Asia/Chongqing", "CN");
    sub_29D4C(v196, "Asia/Chungking", "CN");
    sub_2A014(v197, "Asia/Colombo", "LK");
    sub_2B7B8(v198, "Asia/Dacca", "BD");
    sub_29EB0(v199, "Asia/Damascus", "SY");
    sub_2B7B8(v200, "Asia/Dhaka", "BD");
    sub_2B91C(v201, "Asia/Dili", "TL");
    sub_2B7B8(v202, "Asia/Dubai", "AE");
    sub_29EB0(v203, "Asia/Dushanbe", "TJ");
    sub_29D4C(v204, "Asia/Famagusta", "CY");
    sub_2B91C(v205, "Asia/Gaza", "PS");
    sub_2A5A4(v206, "Asia/Harbin", "CN");
    sub_2A5A4(v207, "Asia/Hebron", "PS");
    sub_2AF60(v208, "Asia/Ho_Chi_Minh", "VN");
    sub_29D4C(v209, "Asia/Hong_Kong", "HK");
    sub_2B91C(v210, "Asia/Hovd", "MN");
    sub_2A014(v211, "Asia/Irkutsk", "RU");
    sub_2A014(v212, "Asia/Jakarta", "ID");
    sub_29EB0(v213, "Asia/Jayapura", "ID");
    sub_29D4C(v214, "Asia/Jerusalem", "IL");
    sub_2B7B8(v215, "Asia/Kabul", "AF");
    sub_29D4C(v216, "Asia/Kamchatka", "RU");
    sub_2A014(v217, "Asia/Karachi", "PK");
    sub_2A014(v218, "Asia/Kashgar", "CN");
    sub_29D4C(v219, "Asia/Kathmandu", "NP");
    sub_29EB0(v220, "Asia/Katmandu", "NP");
    sub_29EB0(v221, "Asia/Khandyga", "RU");
    sub_2A014(v222, "Asia/Kolkata", "IN");
    sub_2AF60(v223, "Asia/Krasnoyarsk", "RU");
    sub_2A178(v224, "Asia/Kuala_Lumpur", "MY");
    sub_2A014(v225, "Asia/Kuching", "MY");
    sub_2B7B8(v226, "Asia/Macao", "MO");
    sub_2B7B8(v227, "Asia/Macau", "MO");
    sub_2A014(v228, "Asia/Magadan", "RU");
    sub_29EB0(v229, "Asia/Makassar", "ID");
    sub_2A5A4(v230, "Asia/Manila", "PH");
    sub_2A014(v231, "Asia/Nicosia", "CY");
    sub_2A178(v232, "Asia/Novokuznetsk", "RU");
    sub_2AF60(v233, "Asia/Novosibirsk", "RU");
    sub_2B91C(v234, "Asia/Omsk", "RU");
    sub_2B91C(v235, "Asia/Oral", "KZ");
    sub_29D4C(v236, "Asia/Pontianak", "ID");
    sub_29D4C(v237, "Asia/Pyongyang", "KP");
    sub_2B7B8(v238, "Asia/Qatar", "QA");
    sub_29EB0(v239, "Asia/Qostanay", "KZ");
    sub_29D4C(v240, "Asia/Qyzylorda", "KZ");
    sub_2A014(v241, "Asia/Rangoon", "MM");
    sub_2A5A4(v242, "Asia/Riyadh", "SA");
    sub_2A5A4(v243, "Asia/Saigon", "VN");
    sub_29EB0(v244, "Asia/Sakhalin", "RU");
    sub_29D4C(v245, "Asia/Samarkand", "UZ");
    sub_2B7B8(v246, "Asia/Seoul", "KR");
    sub_29EB0(v247, "Asia/Shanghai", "CN");
    sub_29D4C(v248, "Asia/Singapore", "SG");
    sub_2B4F0(v249, "Asia/Srednekolymsk", "RU");
    sub_2A5A4(v250, "Asia/Taipei", "TW");
    sub_29EB0(v251, "Asia/Tashkent", "UZ");
    sub_2A014(v252, "Asia/Tbilisi", "GE");
    sub_2A5A4(v253, "Asia/Tehran", "IR");
    sub_29EB0(v254, "Asia/Tel_Aviv", "IL");
    sub_2A5A4(v255, "Asia/Thimbu", "BT");
    sub_2A014(v256, "Asia/Thimphu", "BT");
    sub_2B7B8(v257, "Asia/Tokyo", "JP");
    sub_2B7B8(v258, "Asia/Tomsk", "RU");
    sub_2B4F0(v259, "Asia/Ujung_Pandang", "ID");
    sub_2AF60(v260, "Asia/Ulaanbaatar", "MN");
    sub_2A2DC(v261, "Asia/Ulan_Bator", "MN");
    sub_2A5A4(v262, "Asia/Urumqi", "CN");
    sub_29EB0(v263, "Asia/Ust-Nera", "RU");
    sub_2AF60(v264, "Asia/Vladivostok", "RU");
    sub_2A014(v265, "Asia/Yakutsk", "RU");
    sub_2A5A4(v266, "Asia/Yangon", "MM");
    sub_2B4F0(v267, "Asia/Yekaterinburg", "RU");
    sub_2A014(v268, "Asia/Yerevan", "AM");
    sub_2A2DC(v269, "Atlantic/Azores", "PT");
    sub_2AF60(v270, "Atlantic/Bermuda", "BM");
    sub_2A2DC(v271, "Atlantic/Canary", "ES");
    sub_2A440(v272, "Atlantic/Cape_Verde", "CV");
    sub_2A2DC(v273, "Atlantic/Faeroe", "FO");
    sub_29D4C(v274, "Atlantic/Faroe", "FO");
    sub_2B4F0(v275, "Atlantic/Jan_Mayen", "NO");
    sub_2AF60(v276, "Atlantic/Madeira", "PT");
    sub_2B4F0(v277, "Atlantic/Reykjavik", "IS");
    sub_2B0C4(v278, "Atlantic/South_Georgia", "GS");
    sub_2AF60(v279, "Atlantic/Stanley", "FK");
    sub_29EB0(v280, "Australia/ACT", "AU");
    sub_2B4F0(v281, "Australia/Adelaide", "AU");
    sub_2B4F0(v282, "Australia/Brisbane", "AU");
    sub_2B38C(v283, "Australia/Broken_Hill", "AU");
    sub_2B4F0(v284, "Australia/Canberra", "AU");
    sub_2AF60(v285, "Australia/Currie", "AU");
    sub_2AF60(v286, "Australia/Darwin", "AU");
    sub_2A2DC(v287, "Australia/Eucla", "AU");
    sub_2AF60(v288, "Australia/Hobart", "AU");
    sub_29EB0(v289, "Australia/LHI", "AU");
    sub_2B4F0(v290, "Australia/Lindeman", "AU");
    sub_2A440(v291, "Australia/Lord_Howe", "AU");
    sub_2A440(v292, "Australia/Melbourne", "AU");
    sub_29EB0(v293, "Australia/NSW", "AU");
    sub_2A2DC(v294, "Australia/North", "AU");
    sub_2A2DC(v295, "Australia/Perth", "AU");
    sub_2B228(v296, "Australia/Queensland", "AU");
    sub_2A2DC(v297, "Australia/South", "AU");
    sub_2AF60(v298, "Australia/Sydney", "AU");
    sub_2B4F0(v299, "Australia/Tasmania", "AU");
    sub_2B4F0(v300, "Australia/Victoria", "AU");
    sub_29D4C(v301, "Australia/West", "AU");
    sub_2B228(v302, "Australia/Yancowinna", "AU");
    sub_2A5A4(v303, "Brazil/Acre", "BR");
    sub_2AF60(v304, "Brazil/DeNoronha", "BR");
    sub_2A5A4(v305, "Brazil/East", "BR");
    sub_2A5A4(v306, "Brazil/West", "BR");
    sub_2A2DC(v307, "Canada/Atlantic", "CA");
    sub_29D4C(v308, "Canada/Central", "CA");
    sub_29D4C(v309, "Canada/Eastern", "CA");
    sub_2A2DC(v310, "Canada/Mountain", "CA");
    sub_2A440(v311, "Canada/Newfoundland", "CA");
    sub_29D4C(v312, "Canada/Pacific", "CA");
    sub_2A440(v313, "Canada/Saskatchewan", "CA");
    sub_2A014(v314, "Canada/Yukon", "CA");
    sub_2A178(v315, "Chile/Continental", "CL");
    sub_2B4F0(v316, "Chile/EasterIsland", "CL");
    sub_2BA80(v317, "Cuba", "CU");
    sub_2BBE4(v318, "Egypt", "EG");
    sub_2BA80(v319, "Eire", "IE");
    sub_2AF60(v320, "Europe/Amsterdam", "NL");
    sub_29D4C(v321, "Europe/Andorra", "AD");
    sub_2AF60(v322, "Europe/Astrakhan", "RU");
    sub_29EB0(v323, "Europe/Athens", "GR");
    sub_29D4C(v324, "Europe/Belfast", "GB");
    sub_2A2DC(v325, "Europe/Belgrade", "RS");
    sub_29EB0(v326, "Europe/Berlin", "DE");
    sub_2A2DC(v327, "Europe/Brussels", "BE");
    sub_2AF60(v328, "Europe/Bucharest", "RO");
    sub_2A2DC(v329, "Europe/Budapest", "HU");
    sub_2A2DC(v330, "Europe/Chisinau", "MD");
    sub_2A178(v331, "Europe/Copenhagen", "DK");
    sub_29EB0(v332, "Europe/Dublin", "IE");
    sub_2AF60(v333, "Europe/Gibraltar", "GI");
    sub_2A2DC(v334, "Europe/Helsinki", "FI");
    sub_2A2DC(v335, "Europe/Istanbul", "TR");
    sub_2B4F0(v336, "Europe/Kaliningrad", "RU");
    sub_2A5A4(v337, "Europe/Kiev", "UA");
    sub_2A014(v338, "Europe/Kirov", "RU");
    sub_29EB0(v339, "Europe/Lisbon", "PT");
    sub_29EB0(v340, "Europe/London", "GB");
    sub_2A178(v341, "Europe/Luxembourg", "LU");
    sub_29EB0(v342, "Europe/Madrid", "ES");
    sub_2A014(v343, "Europe/Malta", "MT");
    sub_2A014(v344, "Europe/Minsk", "BY");
    sub_29EB0(v345, "Europe/Monaco", "MC");
    sub_29EB0(v346, "Europe/Moscow", "RU");
    sub_2A5A4(v347, "Europe/Oslo", "NO");
    sub_2A014(v348, "Europe/Paris", "FR");
    sub_29EB0(v349, "Europe/Prague", "CZ");
    sub_2A5A4(v350, "Europe/Riga", "LV");
    sub_2A5A4(v351, "Europe/Rome", "IT");
    sub_29EB0(v352, "Europe/Samara", "RU");
    sub_29D4C(v353, "Europe/Saratov", "RU");
    sub_2A178(v354, "Europe/Simferopol", "RU");
    sub_2A014(v355, "Europe/Sofia", "BG");
    sub_2AF60(v356, "Europe/Stockholm", "SE");
    sub_29D4C(v357, "Europe/Tallinn", "EE");
    sub_29EB0(v358, "Europe/Tirane", "AL");
    sub_2A2DC(v359, "Europe/Tiraspol", "MD");
    sub_2AF60(v360, "Europe/Ulyanovsk", "RU");
    sub_2A2DC(v361, "Europe/Uzhgorod", "UA");
    sub_29EB0(v362, "Europe/Vienna", "AT");
    sub_29D4C(v363, "Europe/Vilnius", "LT");
    sub_2AF60(v364, "Europe/Volgograd", "RU");
    sub_29EB0(v365, "Europe/Warsaw", "PL");
    sub_2A178(v366, "Europe/Zaporozhye", "UA");
    sub_29EB0(v367, "Europe/Zurich", "CH");
    sub_2BD48(v368, "GB", "GB");
    sub_2BEAC(v369, "GB-Eire", "GB");
    sub_2C010(v370, "GMT", "001");
    sub_2C174(v371, "Hongkong", "HK");
    sub_2BEAC(v372, "Iceland", "IS");
    sub_29EB0(v373, "Indian/Chagos", "IO");
    sub_2AF60(v374, "Indian/Christmas", "CX");
    sub_2A014(v375, "Indian/Cocos", "CC");
    sub_2AF60(v376, "Indian/Kerguelen", "TF");
    sub_2A5A4(v377, "Indian/Mahe", "SC");
    sub_2A2DC(v378, "Indian/Maldives", "MV");
    sub_2AF60(v379, "Indian/Mauritius", "MU");
    sub_29D4C(v380, "Indian/Reunion", "RE");
    sub_2BA80(v381, "Iran", "IR");
    sub_2C2D8(v382, "Israel", "IL");
    sub_2BEAC(v383, "Jamaica", "JM");
    sub_2BBE4(v384, "Japan", "JP");
    sub_2B91C(v385, "Kwajalein", "MH");
    sub_2BBE4(v386, "Libya", "LY");
    sub_2AF60(v387, "Mexico/BajaNorte", "MX");
    sub_29D4C(v388, "Mexico/BajaSur", "MX");
    sub_29D4C(v389, "Mexico/General", "MX");
    sub_2BD48(v390, "NZ", "NZ");
    sub_2BEAC(v391, "NZ-CHAT", "NZ");
    sub_2C2D8(v392, "Navajo", "US");
    sub_2C43C(v393, "PRC", "CN");
    sub_2A014(v394, "Pacific/Apia", "WS");
    sub_2AF60(v395, "Pacific/Auckland", "NZ");
    sub_2B228(v396, "Pacific/Bougainville", "PG");
    sub_2A2DC(v397, "Pacific/Chatham", "NZ");
    sub_29EB0(v398, "Pacific/Chuuk", "FM");
    sub_29D4C(v399, "Pacific/Easter", "CL");
    sub_29EB0(v400, "Pacific/Efate", "VU");
    sub_2A178(v401, "Pacific/Enderbury", "KI");
    sub_2A2DC(v402, "Pacific/Fakaofo", "TK");
    sub_2A014(v403, "Pacific/Fiji", "FJ");
    sub_2AF60(v404, "Pacific/Funafuti", "TV");
    sub_2A178(v405, "Pacific/Galapagos", "EC");
    sub_2A2DC(v406, "Pacific/Gambier", "PF");
    sub_2A440(v407, "Pacific/Guadalcanal", "SB");
    sub_2A014(v408, "Pacific/Guam", "GU");
    sub_2AF60(v409, "Pacific/Honolulu", "US");
    sub_2AF60(v410, "Pacific/Johnston", "US");
    sub_29D4C(v411, "Pacific/Kanton", "KI");
    sub_2B4F0(v412, "Pacific/Kiritimati", "KI");
    sub_29D4C(v413, "Pacific/Kosrae", "FM");
    sub_2A178(v414, "Pacific/Kwajalein", "MH");
    sub_29D4C(v415, "Pacific/Majuro", "MH");
    sub_2A178(v416, "Pacific/Marquesas", "PF");
    sub_29EB0(v417, "Pacific/Nauru", "NR");
    sub_2A014(v418, "Pacific/Niue", "NU");
    sub_2A2DC(v419, "Pacific/Norfolk", "NF");
    sub_29D4C(v420, "Pacific/Noumea", "NC");
    sub_2A178(v421, "Pacific/Pago_Pago", "AS");
    sub_29EB0(v422, "Pacific/Palau", "PW");
    sub_2AF60(v423, "Pacific/Pitcairn", "PN");
    sub_2A2DC(v424, "Pacific/Pohnpei", "FM");
    sub_29D4C(v425, "Pacific/Ponape", "FM");
    sub_2B228(v426, "Pacific/Port_Moresby", "PG");
    sub_2A178(v427, "Pacific/Rarotonga", "CK");
    sub_29EB0(v428, "Pacific/Samoa", "AS");
    sub_29D4C(v429, "Pacific/Tahiti", "PF");
    sub_29D4C(v430, "Pacific/Tarawa", "KI");
    sub_2A178(v431, "Pacific/Tongatapu", "TO");
    sub_2A014(v432, "Pacific/Truk", "FM");
    sub_2A014(v433, "Pacific/Wake", "UM");
    sub_29D4C(v434, "Pacific/Wallis", "WF");
    sub_2A5A4(v435, "Pacific/Yap", "FM");
    sub_2C2D8(v436, "Poland", "PL");
    sub_2C174(v437, "Portugal", "PT");
    sub_2C43C(v438, "ROC", "TW");
    sub_2C43C(v439, "ROK", "KR");
    sub_2B91C(v440, "Singapore", "SG");
    sub_2C2D8(v441, "Turkey", "TR");
    sub_2B91C(v442, "US/Alaska", "US");
    sub_2A5A4(v443, "US/Aleutian", "US");
    sub_2B7B8(v444, "US/Arizona", "US");
    sub_2B7B8(v445, "US/Central", "US");
    sub_2A2DC(v446, "US/East-Indiana", "US");
    sub_2B7B8(v447, "US/Eastern", "US");
    sub_2B91C(v448, "US/Hawaii", "US");
    sub_2A178(v449, "US/Indiana-Starke", "US");
    sub_2A5A4(v450, "US/Michigan", "US");
    sub_2A5A4(v451, "US/Mountain", "US");
    sub_2B7B8(v452, "US/Pacific", "US");
    sub_2C174(v453, "US/Samoa", "AS");
    sub_2BA80(v454, "W-SU", "RU");
    sub_2C758(&unk_278EB38, v3, 452);
    v1 = v454;
    v2 = -21696;
    do
    {
      v1 = (sub_1AB28(v1) - 48);
      v2 += 48;
    }

    while (v2);
    __cxa_guard_release(&qword_278EB30);
  }

  return &unk_278EB38;
}

void sub_29BF4(_Unwind_Exception *a1)
{
  v3 = v1 + 21648;
  v4 = -21696;
  do
  {
    v3 = sub_1AB28(v3) - 48;
    v4 += 48;
  }

  while (v4);
  __cxa_guard_abort(&qword_278EB30);
  _Unwind_Resume(a1);
}

BOOL sub_29CB0(CFTimeZoneRef *a1, CFTimeZoneRef *a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 1;
  }

  Name = CFTimeZoneGetName(v3);
  v7 = CFTimeZoneGetName(*a2);
  if (!CFEqual(Name, v7))
  {
    return 1;
  }

  Data = CFTimeZoneGetData(*a1);
  v9 = CFTimeZoneGetData(*a2);
  return CFEqual(Data, v9) == 0;
}

_BYTE *sub_29D4C(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_29E94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29EB0(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_29FF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2A014(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2A15C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2A178(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2A2C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2A2DC(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2A424(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2A440(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2A588(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2A5A4(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2A6EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2A708(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2A850(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2A86C(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2A9B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2A9D0(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2AB18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2AB34(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2AC7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2AC98(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2ADE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2ADFC(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2AF44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2AF60(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2B0A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2B0C4(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2B20C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2B228(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2B370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2B38C(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2B4D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2B4F0(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2B638(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2B654(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2B79C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2B7B8(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2B900(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2B91C(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2BA64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2BA80(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2BBC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2BBE4(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2BD2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2BD48(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2BE90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2BEAC(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2BFF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2C010(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2C158(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2C174(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2C2BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2C2D8(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2C420(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2C43C(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_2C584(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_2C5A0(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
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
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_2C758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      sub_2C7D4(a1, a2);
      a2 += 48;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_2C7D4(void *a1, uint64_t a2)
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
    sub_2CBA0();
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

void sub_2CB88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

void sub_2CC5C(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
    sub_2CC94(v1);
    _Unwind_Resume(a1);
  }

  sub_2CC94(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2CC94(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 63) < 0)
      {
        operator delete(*(v2 + 40));
        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 16));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2CD04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
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

uint64_t sub_2CF24(uint64_t a1, size_t *a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 8);
  v5 = *a1;
  if (*a1 != v4)
  {
    while (*v5 != a2)
    {
      if (++v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_10:
    v11 = 0;
  }

  else
  {
    v6 = *v5;
    v8 = *(v4 - 1);
    v7 = v4 - 1;
    *v5 = v8;
    *v7 = v6;
    *(a1 + 8) = v7;
    if (a2)
    {
      for (i = a2[4]; i; i = v10)
      {
        v10 = *i;
        munmap(i, a2[2]);
      }

      for (j = a2[7]; j; j = v13)
      {
        v13 = *j;
        munmap(j, j[2]);
      }

      operator delete();
    }

    v11 = 1;
  }

  std::mutex::unlock((a1 + 24));
  return v11;
}

uint64_t sub_2D018(uint64_t a1, size_t a2, uint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 1;
  if (a4)
  {
    v5 = pthread_self();
    if ((*(a1 + 8) & 1) == 0)
    {
      *(a1 + 8) = 1;
    }

    *a1 = v5;
    a2 = *(a1 + 16);
  }

  v6 = mmap(0, a2, 3, 4162, -1, 0);
  if (v6 == -1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v21, *(a1 + 16));
    sub_23E08("Allocating memory chunk of size ", &v21, &v22);
    v10 = std::string::append(&v22, " bytes failed with error code ", 0x1EuLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __error();
    std::to_string(&v20, *v12);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v20;
    }

    else
    {
      v13 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v23, v13, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v25 = v15->__r_.__value_.__r.__words[2];
    v24 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v17 = &v24;
    }

    else
    {
      v17 = v24;
    }

    if (v25 >= 0)
    {
      v18 = HIBYTE(v25);
    }

    else
    {
      v18 = *(&v24 + 1);
    }

    v19 = sub_2D390(exception, v17, v18);
  }

  v7 = v6 + *(a1 + 16);
  v6[2] = v6 + 4;
  v6[3] = v7;
  *v6 = 0;
  v6[1] = v6 + 4;
  *(a1 + 32) = v6;
  *(a1 + 40) = v6;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  return a1;
}

void sub_2D208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void *sub_2D2E8()
{
  if ((atomic_load_explicit(&qword_278EB60, memory_order_acquire) & 1) == 0)
  {
    sub_21E0BF8();
  }

  return &unk_278EB68;
}

void sub_2D328(unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3.__cat_ = std::future_category();
  *&v3.__val_ = a1;
  std::future_error::future_error(exception, v3);
}

uint64_t sub_2D390(uint64_t a1, const void *a2, size_t __len)
{
  *a1 = off_262DEE0;
  v3 = (a1 + 8);
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = __len;
  if (__len)
  {
    memmove(v3, a2, __len);
  }

  *(v3 + __len) = 0;
  sub_2DA0C((a1 + 32));
  *(a1 + 56) = 9;
  return a1;
}

uint64_t sub_2D474(uint64_t a1, unsigned int __val)
{
  *a1 = off_262DEE0;
  std::to_string(&v7, __val);
  v4 = std::string::insert(&v7, 0, "MSL error code: ", 0x10uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a1 + 24) = *(&v4->__r_.__value_.__l + 2);
  *(a1 + 8) = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  sub_2DA0C((a1 + 32));
  *(a1 + 56) = __val;
  return a1;
}

uint64_t sub_2D51C(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_2D538(uint64_t a1)
{
  result = a1 + 32;
  if (*(a1 + 55) < 0)
  {
    return *result;
  }

  return result;
}

void sub_2D554(std::exception *this)
{
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
    if ((SHIBYTE(this[3].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(this[3].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
LABEL_3:
  std::exception::~exception(this);

  operator delete();
}

void sub_2D5C8(const char *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  status = 0;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = __cxa_demangle(a1, 0, 0, &status);
  v5 = v4;
  if (status)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = strlen(v4);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v7;
    if (v7)
    {
      memmove(a2, v5, v7);
    }

    *(a2 + v8) = 0;
    goto LABEL_19;
  }

  if (v2[23] < 0)
  {
    sub_325C(a2, *v2, *(v2 + 1));
  }

  else
  {
    *a2 = *v2;
    *(a2 + 2) = *(v2 + 2);
  }

  if (v5)
  {
LABEL_19:
    free(v5);
  }
}

void sub_2D6EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2D70C(char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v4 = a1[23];
  v5 = a1[23];
  v6 = *a1;
  v7 = *(a1 + 1);
  if (v4 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v4 >= 0)
  {
    v9 = a1[23];
  }

  else
  {
    v9 = *(a1 + 1);
  }

  v10 = &v8[v9];
  if (v9 >= 2)
  {
    v11 = v9;
    v12 = v8;
    do
    {
      v13 = memchr(v12, 32, v11 - 1);
      if (!v13)
      {
        break;
      }

      if (*v13 == 24352)
      {
        goto LABEL_13;
      }

      v12 = v13 + 1;
      v11 = v10 - v12;
    }

    while (v10 - v12 > 1);
  }

  v13 = &v8[v9];
LABEL_13:
  if (v13 == v10)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13 - v8;
  }

  if (v9)
  {
    v15 = memchr(v8, 43, v9);
    v16 = v15 ? v15 - v8 : -1;
    v17 = v14 == -1 || v16 == -1;
    if (!v17 && v16 >= v14)
    {
      if (v5 < 0)
      {
        sub_325C(a2, v6, v7);
        v5 = *(v2 + 23);
        if (v5 < 0)
        {
          v19 = v2[1];
          if (v19 > v14)
          {
            v2 = *v2;
LABEL_36:
            v20 = v16 - v14 - 2;
            v21 = v19 - (v14 + 1);
            if (v21 >= v20)
            {
              v22 = v16 - v14 - 2;
            }

            else
            {
              v22 = v21;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

            if (v22 >= 0x17)
            {
              operator new();
            }

            v26 = v22;
            if (v22)
            {
              memmove(&v25, v2 + v14 + 1, v22);
            }

            *(&v25 + v22) = 0;
            sub_2D5C8(&v25, __p);
            if ((v28 & 0x80u) == 0)
            {
              v23 = __p;
            }

            else
            {
              v23 = __p[0];
            }

            if ((v28 & 0x80u) == 0)
            {
              v24 = v28;
            }

            else
            {
              v24 = __p[1];
            }

            std::string::replace(a2, v14 + 1, v20, v23, v24);
            if (v28 < 0)
            {
              operator delete(__p[0]);
              if ((v26 & 0x80000000) == 0)
              {
                return;
              }
            }

            else if ((v26 & 0x80000000) == 0)
            {
              return;
            }

            operator delete(v25);
            return;
          }

LABEL_58:
          sub_49D4();
        }
      }

      else
      {
        *&a2->__r_.__value_.__l.__data_ = *v2;
        a2->__r_.__value_.__r.__words[2] = v2[2];
      }

      v19 = v5;
      if (v14 < v5)
      {
        goto LABEL_36;
      }

      goto LABEL_58;
    }
  }

  if (v5 < 0)
  {

    sub_325C(a2, v6, v7);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = v2[2];
  }
}

void sub_2D998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v20 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((*(v20 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v20);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2DA0C@<X0>(_BYTE *a1@<X8>)
{
  sub_D7B0(v32);
  memset(v43, 0, 512);
  v2 = backtrace(v43, 128);
  if (!v2)
  {
    operator new();
  }

  v28 = backtrace_symbols(v43, v2);
  if ((v2 & ~(v2 >> 31)) == 0)
  {
    goto LABEL_27;
  }

  if (!v28)
  {
    sub_4A5C(&v33, "", 0);
    *(&v33 + *(v33 - 24) + 8) = *(&v33 + *(v33 - 24) + 8) & 0xFFFFFFB5 | 8;
    v6 = std::ostream::operator<<();
    sub_4A5C(v6, "\n", 1);
    if (v2 != 1)
    {
      v7 = v43 + 8;
      v8 = v2 - 1;
      do
      {
        sub_4A5C(&v33, "\n", 1);
        *(&v34 + *(v33 - 24)) = *(&v34 + *(v33 - 24)) & 0xFFFFFFB5 | 8;
        v9 = std::ostream::operator<<();
        sub_4A5C(v9, "\n", 1);
        v7 += 8;
        --v8;
      }

      while (v8);
    }

    goto LABEL_27;
  }

  sub_4A5C(&v33, "", 0);
  v3 = *v28;
  v4 = strlen(*v28);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_64:
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v30 = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  *(&__dst + v5) = 0;
  sub_2D70C(&__dst, &__p);
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

  v12 = sub_4A5C(&v33, p_p, size);
  sub_4A5C(v12, "\n", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_23:
      if (v2 != 1)
      {
        goto LABEL_45;
      }

      goto LABEL_27;
    }
  }

  else if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(__dst);
  if (v2 != 1)
  {
LABEL_45:
    v20 = v28 + 1;
    for (i = v2 - 1; i; --i)
    {
      sub_4A5C(&v33, "\n", 1);
      v22 = *v20;
      v23 = strlen(*v20);
      if (v23 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_64;
      }

      v24 = v23;
      if (v23 >= 0x17)
      {
        operator new();
      }

      v30 = v23;
      if (v23)
      {
        memmove(&__dst, v22, v23);
      }

      *(&__dst + v24) = 0;
      sub_2D70C(&__dst, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &__p;
      }

      else
      {
        v25 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = __p.__r_.__value_.__l.__size_;
      }

      v27 = sub_4A5C(&v33, v25, v26);
      sub_4A5C(v27, "\n", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v30 < 0)
        {
LABEL_63:
          operator delete(__dst);
        }
      }

      else if (v30 < 0)
      {
        goto LABEL_63;
      }

      ++v20;
    }
  }

LABEL_27:
  if ((v42 & 0x10) != 0)
  {
    v15 = v41;
    if (v41 < v38)
    {
      v41 = v38;
      v15 = v38;
    }

    v16 = &v37;
  }

  else
  {
    if ((v42 & 8) == 0)
    {
      v13 = 0;
      a1[23] = 0;
      v14 = v28;
      goto LABEL_40;
    }

    v16 = v36;
    v15 = v36[2];
  }

  v14 = v28;
  v17 = *v16;
  v13 = v15 - *v16;
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a1[23] = v13;
  if (v13)
  {
    memmove(a1, v17, v13);
  }

LABEL_40:
  a1[v13] = 0;
  if (v14)
  {
    free(v14);
  }

  v33 = v18;
  if (v40 < 0)
  {
    operator delete(v39);
  }

  std::locale::~locale(&v35);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_2E088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  free(a9);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_2E138(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 5);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 32 * a2;
}

void sub_2E254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_2E334(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    sub_1794();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
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

void sub_2E458(char **a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (a4 >= 1.0)
  {
    if (&v31 != a1)
    {
      v28 = a3;
      sub_31E04(&v31, *a1, a1[1], (a1[1] - *a1) >> 5);
      a3 = v28;
    }
  }

  else
  {
    __p = 0;
    v30 = 0uLL;
    v5 = a1[1];
    v27 = a3;
    if (v5 != *a1)
    {
      if (((v5 - *a1) >> 5) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    p_p = &__p;
    sub_2F4C8(&__p, 0, v34, fmax(a3 - a4, 0.0), fmin(a3 + a4, 1.0));
    if (__p)
    {
      *&v30 = __p;
      operator delete(__p);
    }

    __p = *v34;
    v30 = *&v34[8];
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*&v34[8] - *v34) >> 2);
    if (v6 > (v33 - v31) >> 5)
    {
      if (!(v6 >> 59))
      {
        operator new();
      }

      sub_1794();
    }

    v7 = __p;
    v8 = v30;
    p_p = &v31;
    if (__p != v30)
    {
      do
      {
        v9 = v7[2];
        v35 = v9 == 0x7FFFFFFF;
        v10.i64[0] = *v7;
        v10.i64[1] = HIDWORD(*v7);
        *v34 = vcvtq_f64_u64(v10);
        v11 = v9;
        if (v9 == 0x7FFFFFFF)
        {
          v11 = 0.0;
        }

        *&v34[16] = v11;
        sub_31CD8(&p_p, v34);
        v7 += 3;
      }

      while (v7 != v8);
      v7 = __p;
    }

    if (v7)
    {
      *&v30 = v7;
      operator delete(v7);
    }

    a3 = v27;
  }

  v12 = v31;
  v13 = (v32 - v31) >> 5;
  if (v13 >= 2)
  {
    v14 = 1.0 - a3;
    v15 = v13 - 1;
    for (i = 1; i != v13; ++i)
    {
      v17 = v15 - 1;
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v18 = *v12;
      v19 = *(v12 + 2);
      v20 = v12[24];
      v21 = v12 + 32;
      do
      {
        v22 = vmulq_n_f64(v18, v14);
        v23 = v14 * v19;
        v19 = *(v21 + 2);
        v24 = v23 + v19 * a3;
        v25 = v21[24];
        v18 = *v21;
        *(v21 - 2) = vaddq_f64(v22, vmulq_n_f64(*v21, a3));
        *(v21 - 2) = v24;
        *(v21 - 8) = (v20 | v25) & 1;
        v21 += 32;
        v20 = v25;
        --v15;
      }

      while (v15);
      v15 = v17;
    }
  }

  v26 = *(v12 + 1);
  *a2 = *v12;
  a2[1] = v26;
  v32 = v12;
  operator delete(v12);
}

void sub_2E7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2E80C(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = a3 - a2;
  sub_30B70(a4, a3 - a2 + 1);
  v9 = *a4;
  **a4 = 0;
  v10 = a2 + 1;
  if (a2 + 1 <= a3)
  {
    v11 = (v9 + 1);
    v12 = (*a1 + 32 * a2 + 32);
    v13 = 0.0;
    v14 = a2 + 1;
    do
    {
      v15 = vsubq_f64(v12[-2], *v12);
      v13 = v13 + sqrt(vaddvq_f64(vmulq_f64(v15, v15)) + (v12[-1].f64[0] - v12[1].f64[0]) * (v12[-1].f64[0] - v12[1].f64[0]));
      *v11++ = v13;
      ++v14;
      v12 += 2;
    }

    while (v14 <= a3);
    v16 = (v9 + 1);
    do
    {
      v17 = *v16 / *&v9[v8];
      if (COERCE__INT64(fabs(v17)) >= 0x7FF0000000000000)
      {
        v17 = 0.0;
      }

      *v16++ = v17;
      ++v10;
    }

    while (v10 <= a3);
  }
}

void sub_2E908(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E924(char **a1, double a2)
{
  v62 = 0;
  v63 = 0;
  v64 = 0;
  __p = 0;
  v60 = 0;
  v61 = 0;
  sub_2E458(a1, &v58, a2, 1.0);
  v3 = *sub_2E138(a1, 1uLL);
  v4 = *sub_2E138(a1, 0);
  v5 = *(sub_2E138(a1, 1uLL) + 8);
  v6 = *(sub_2E138(a1, 0) + 8);
  v7 = *(sub_2E138(a1, 1uLL) + 16);
  v8 = v3 + v4 * -3.0;
  v9 = v5 + v6 * -3.0;
  v10 = v7 + *(sub_2E138(a1, 0) + 16) * -3.0;
  v11 = v63;
  if (v63 >= v64)
  {
    v13 = v62;
    v14 = v63 - v62;
    v15 = (v63 - v62) >> 5;
    v16 = v15 + 1;
    if ((v15 + 1) >> 59)
    {
      goto LABEL_41;
    }

    v17 = v64 - v62;
    if ((v64 - v62) >> 4 > v16)
    {
      v16 = v17 >> 4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 59))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v19 = 32 * v15;
    *v19 = v8;
    *(v19 + 8) = v9;
    *(v19 + 16) = v10;
    *(v19 + 24) = 0;
    v12 = 32 * v15 + 32;
    memcpy(0, v13, v14);
    v62 = 0;
    v64 = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v63 = v8;
    v11[1] = v9;
    v11[2] = v10;
    v12 = (v11 + 4);
    *(v11 + 24) = 0;
  }

  v63 = v12;
  v20 = *sub_2E138(a1, 2uLL);
  v21 = *sub_2E138(a1, 1uLL);
  v22 = *(sub_2E138(a1, 2uLL) + 8);
  v23 = *(sub_2E138(a1, 1uLL) + 8);
  v24 = *(sub_2E138(a1, 2uLL) + 16);
  v25 = v20 + v21 * -3.0;
  v26 = v22 + v23 * -3.0;
  v27 = v24 + *(sub_2E138(a1, 1uLL) + 16) * -3.0;
  v28 = v63;
  if (v63 >= v64)
  {
    v30 = v62;
    v31 = v63 - v62;
    v32 = (v63 - v62) >> 5;
    v33 = v32 + 1;
    if ((v32 + 1) >> 59)
    {
      goto LABEL_41;
    }

    v34 = v64 - v62;
    if ((v64 - v62) >> 4 > v33)
    {
      v33 = v34 >> 4;
    }

    if (v34 >= 0x7FFFFFFFFFFFFFE0)
    {
      v35 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v33;
    }

    if (v35)
    {
      if (!(v35 >> 59))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v36 = (v63 - v62) >> 5;
    v37 = 32 * v32;
    *v37 = v25;
    *(v37 + 8) = v26;
    *(v37 + 16) = v27;
    *(v37 + 24) = 0;
    v29 = 32 * v32 + 32;
    v38 = (32 * v32 - 32 * v36);
    memcpy((v37 - 32 * v36), v30, v31);
    v62 = v38;
    v64 = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v63 = v25;
    v28[1] = v26;
    v28[2] = v27;
    v29 = (v28 + 4);
    *(v28 + 24) = 0;
  }

  v63 = v29;
  v39 = *sub_2E138(a1, 3uLL);
  v40 = *sub_2E138(a1, 2uLL);
  v41 = *(sub_2E138(a1, 3uLL) + 8);
  v42 = *(sub_2E138(a1, 2uLL) + 8);
  v43 = *(sub_2E138(a1, 3uLL) + 16);
  v44 = v39 + v40 * -3.0;
  v45 = v41 + v42 * -3.0;
  v46 = v43 + *(sub_2E138(a1, 2uLL) + 16) * -3.0;
  v47 = v63;
  if (v63 < v64)
  {
    *v63 = v44;
    v47[1] = v45;
    v47[2] = v46;
    v48 = (v47 + 4);
    *(v47 + 24) = 0;
    goto LABEL_40;
  }

  v49 = v62;
  v50 = v63 - v62;
  v51 = (v63 - v62) >> 5;
  v52 = v51 + 1;
  if (!((v51 + 1) >> 59))
  {
    v53 = v64 - v62;
    if ((v64 - v62) >> 4 > v52)
    {
      v52 = v53 >> 4;
    }

    if (v53 >= 0x7FFFFFFFFFFFFFE0)
    {
      v54 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v54 = v52;
    }

    if (!v54)
    {
      v55 = (v63 - v62) >> 5;
      v56 = 32 * v51;
      *v56 = v44;
      *(v56 + 8) = v45;
      *(v56 + 16) = v46;
      *(v56 + 24) = 0;
      v48 = 32 * v51 + 32;
      v57 = (32 * v51 - 32 * v55);
      memcpy((v56 - 32 * v55), v49, v50);
      v62 = v57;
      v64 = 0;
      if (v49)
      {
        operator delete(v49);
      }

LABEL_40:
      v63 = v48;
      sub_2F0C0(&v62, 1uLL);
      sub_2F0C0(&v62, 0);
      sub_2F0C0(&v62, 1uLL);
      sub_2F0C0(&v62, 0);
      sub_2F0C0(&v62, 1uLL);
      sub_2F0C0(&v62, 0);
      operator new();
    }

    if (!(v54 >> 59))
    {
      operator new();
    }

LABEL_42:
    sub_1808();
  }

LABEL_41:
  sub_1794();
}

void sub_2F014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    v26 = a24;
    if (!a24)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v26 = a24;
    if (!a24)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2F0C0(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 5);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 32 * a2;
}

void sub_2F1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_2F2BC(unint64_t a1@<X1>, unint64_t a2@<X2>, double **a3@<X3>, char **a4@<X4>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a2 - a1 != -1)
  {
    if (!((a2 - a1 + 1) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (a2 >= a1)
  {
    sub_2E924(a4, **a3);
  }

  a5[2] = 0;
  *a5 = 0;
}

void sub_2F49C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_2F4C8(void *a1@<X0>, char a2@<W1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_3110C(a1, 1, a2, &v9, a5);
  if (a5 == 0.0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v10 != v9)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }
  }

  else
  {
    sub_31214(&v9, a2, __p, fmin(a4 / a5, 1.0));
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v13 != v12)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void sub_2F65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2F68C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (a3 - a2 != -1)
  {
    if (!((a3 - a2 + 1) >> 58))
    {
      operator new();
    }

    sub_1794();
  }

  v12 = vmuld_lane_f64(0.0, 0, 1) - vmulq_f64(0, 0).f64[0];
  v13 = v12 == 0.0;
  v14 = vdupq_lane_s64(0, 0);
  v14.f64[0] = 0.0;
  v15 = vmulq_f64(0, v14);
  v16 = vmulq_f64(0, 0);
  v17 = vsubq_f64(vdupq_laneq_s64(v16, 1), v16).f64[0] / v12;
  v18 = vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0] / v12;
  if (v13)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v17;
  }

  if (v13)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v18;
  }

  v21 = (*a1 + 32 * a3);
  v22 = (*a1 + 32 * a2);
  v23 = vsubq_f64(*v22, *v21);
  v24 = sqrt(vaddvq_f64(vmulq_f64(v23, v23)) + (v22[1].f64[0] - v21[1].f64[0]) * (v22[1].f64[0] - v21[1].f64[0]));
  v38 = v19;
  v39 = v20;
  if (v19 < v24 * 0.000001 || v20 < v24 * 0.000001)
  {
    sub_2E334(a6, v22);
    v26 = *a1;
    v27 = *a1 + 32 * a2;
    v28 = *(v27 + 16) + v24 / 3.0 * *(a4 + 16);
    v29 = (*(v27 + 24) | *(a4 + 24)) & 1;
    v43 = vaddq_f64(*v27, vmulq_n_f64(*a4, v24 / 3.0));
    v44 = v28;
    v45 = v29;
    v30 = v26 + 32 * a3;
    v31 = *(v30 + 16) + v24 / 3.0 * *(a5 + 16);
    LOBYTE(v27) = *(v30 + 24) | *(a5 + 24);
    v40 = vaddq_f64(*v30, vmulq_n_f64(*a5, v24 / 3.0));
    v41 = v31;
    v42 = v27 & 1;
  }

  else
  {
    sub_2E334(a6, v22);
    v32 = *a1;
    v33 = *a1 + 32 * a2;
    v34 = *(v33 + 16) + v38 * *(a4 + 16);
    v35 = (*(v33 + 24) | *(a4 + 24)) & 1;
    v43 = vaddq_f64(*v33, vmulq_n_f64(*a4, v38));
    v44 = v34;
    v45 = v35;
    v36 = v32 + 32 * a3;
    v37 = *(v36 + 16) + v39 * *(a5 + 16);
    LOBYTE(v33) = (*(v36 + 24) | *(a5 + 24)) & 1;
    v40 = vaddq_f64(*v36, vmulq_n_f64(*a5, v39));
    v41 = v37;
    v42 = v33;
  }

  sub_2E334(a6, &v43);
  sub_2E334(a6, &v40);
  sub_2E334(a6, (*a1 + 32 * a3));
}