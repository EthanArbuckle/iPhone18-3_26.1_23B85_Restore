void sub_183915A44(uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1836D58DC();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

void *sub_183915B5C(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*sub_1836DD38C(a1, v3, &v11, &v10, v5 + 4))
      {
        operator new();
      }

      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t sub_183915C9C(unsigned __int8 *a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 2);
  if (a1[1] == 1 && v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = (*(a1 + 3) + 24);
    v12 = 2;
    while (*(v11 - 1) != a3 || *v11 != a2)
    {
      ++v12;
      v11 += 2;
      if (v12 - v3 == 2)
      {
        goto LABEL_6;
      }
    }

    if (v12)
    {
      return 0;
    }
  }

LABEL_6:
  if (v3 != *(a1 + 1))
  {
    v6 = *(a1 + 3);
    *(a1 + 2) = ++v3;
    v13 = v6 + 16 * v3;
    *v13 = a3;
    *(v13 + 8) = a2;
    v5 = *a1;
    v14 = 2147483650.0;
    if (*a1)
    {
      v14 = -2147483650.0;
    }

    *v6 = v14;
    *(v6 + 8) = a2;
    v15 = *(v6 + ((8 * v3) & 0xFFFFFFFFFFFFFFF0));
    if (v5 == 1)
    {
      v7 = v3;
      if (v15 >= a3)
      {
        v16 = v3;
        do
        {
          v7 = v16 >> 1;
          if (v16)
          {
            v18 = (v6 + 16 * v7);
            v19 = (v6 + 16 * v16);
            *v19 = *v18;
            v19[1] = v18[1];
          }

          v17 = *(v6 + ((4 * v16) & 0xFFFFFFFFFFFFFFF0));
          v16 >>= 1;
        }

        while (v17 >= a3);
      }
    }

    else
    {
      v7 = v3;
      if (v15 <= a3)
      {
        v26 = v3;
        do
        {
          v7 = v26 >> 1;
          if (v26)
          {
            v28 = (v6 + 16 * v7);
            v29 = (v6 + 16 * v26);
            *v29 = *v28;
            v29[1] = v28[1];
          }

          v27 = *(v6 + ((4 * v26) & 0xFFFFFFFFFFFFFFF0));
          v26 >>= 1;
        }

        while (v27 <= a3);
      }
    }

LABEL_38:
    v30 = v6 + 16 * v7;
    *v30 = a3;
    *(v30 + 8) = a2;
    *(a1 + 4) = v3;
    if (v3)
    {
      goto LABEL_39;
    }

    return 1;
  }

  v5 = *a1;
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = v6 + 16 * v7;
  v9 = *v8;
  if (v5 == 1)
  {
    if (v9 > a3)
    {
      v10 = 0xC1E0000000000000;
      goto LABEL_25;
    }

    return 0;
  }

  if (v9 >= a3)
  {
    return 0;
  }

  v10 = 0x41DFFFFFFFC00000;
LABEL_25:
  *v8 = a3;
  *(v8 + 8) = a2;
  *v6 = v10;
  *(v6 + 8) = a2;
  v20 = *(v6 + ((8 * v7) & 0xFFFFFFFFFFFFFFF0));
  if (v5)
  {
    if (v20 < a3)
    {
      goto LABEL_38;
    }

    do
    {
      v22 = v7 >> 1;
      if (v7)
      {
        v23 = (v6 + 16 * v22);
        v24 = (v6 + 16 * v7);
        *v24 = *v23;
        v24[1] = v23[1];
      }

      v21 = *(v6 + ((4 * v7) & 0xFFFFFFFFFFFFFFF0));
      v7 >>= 1;
    }

    while (v21 >= a3);
  }

  else
  {
    if (v20 < a3)
    {
      goto LABEL_38;
    }

    do
    {
      v22 = v7 >> 1;
      if (v7)
      {
        v35 = (v6 + 16 * v22);
        v36 = (v6 + 16 * v7);
        *v36 = *v35;
        v36[1] = v35[1];
      }

      v34 = *(v6 + ((4 * v7) & 0xFFFFFFFFFFFFFFF0));
      v7 >>= 1;
    }

    while (v34 <= a3);
  }

  v37 = v6 + 16 * v22;
  *v37 = a3;
  *(v37 + 8) = a2;
  *(a1 + 4) = v3;
  if (v3)
  {
LABEL_39:
    v31 = v3 >> 1;
    v32 = v3 - 1;
    if (v3 - 1 > v3 >> 1)
    {
      if (v5)
      {
        v33 = (v6 + 16 * v3 - 16);
        do
        {
          if (*v33 > *(v6 + 16 * v3))
          {
            *(a1 + 4) = v32;
            v3 = v32;
          }

          --v32;
          v33 -= 2;
        }

        while (v32 > v31);
      }

      else
      {
        v38 = (v6 + 16 * v3 - 16);
        do
        {
          if (*v38 < *(v6 + 16 * v3))
          {
            *(a1 + 4) = v32;
            v3 = v32;
          }

          --v32;
          v38 -= 2;
        }

        while (v32 > v31);
      }
    }
  }

  return 1;
}

void *sub_183915FA4(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_183916144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

uint64_t sub_183916158(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
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

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1839161C0(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v5++);
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v8)
    {
      v18 = *(v13 - 1);
      v13 -= 3;
      if (v18 < 0)
      {
        operator delete(*v13);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v15 = (__str + v14);
    if (v13 != v8)
    {
      do
      {
        std::string::operator=(v8++, v5++);
        v14 -= 24;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v22 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        while ((SHIBYTE(v15->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v17 = *&v15->__r_.__value_.__l.__data_;
          v16[2] = v15->__r_.__value_.__r.__words[2];
          *v16 = v17;
          v16 += 3;
          ++v15;
          v22 = v16;
          if (v15 == a3)
          {
            goto LABEL_17;
          }
        }

        sub_183688F34(v16, v15->__r_.__value_.__l.__data_, v15->__r_.__value_.__l.__size_);
        ++v15;
        v16 = v22 + 3;
        v22 += 3;
      }

      while (v15 != a3);
    }

LABEL_17:
    *(a1 + 8) = v16;
  }
}

void sub_183916490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_183689664(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1839164A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_183689664(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1839164C0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_64;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = v6[1] ? v6[1] : v6;
  v38 = v9;
  if (!v9)
  {
    goto LABEL_64;
  }

  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v35 = *(v10 + 1);
        if (!v35)
        {
          break;
        }

        do
        {
          v10 = v35;
          v35 = *v35;
        }

        while (v35);
      }
    }

    else
    {
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v37 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_18368922C(a1, v9);
    if (v10)
    {
      goto LABEL_61;
    }

    goto LABEL_64;
  }

  v13 = a2;
  do
  {
    std::string::operator=((v9 + 32), (v13 + 4));
    *(v9 + 7) = v13[7];
    v14 = *v8;
    v15 = (a1 + 8);
    v16 = (a1 + 8);
    if (!*v8)
    {
LABEL_36:
      *v38 = 0;
      v38[1] = 0;
      v38[2] = v15;
      *v16 = v38;
      v29 = **a1;
      if (!v29)
      {
        goto LABEL_38;
      }

LABEL_37:
      *a1 = v29;
      goto LABEL_38;
    }

    v17 = *(v38 + 55);
    if (v17 >= 0)
    {
      v18 = *(v38 + 55);
    }

    else
    {
      v18 = v38[5];
    }

    if (v17 >= 0)
    {
      v19 = v38 + 4;
    }

    else
    {
      v19 = v38[4];
    }

    do
    {
      while (1)
      {
        v15 = v14;
        v22 = v14[4];
        v20 = v14 + 4;
        v21 = v22;
        v23 = *(v20 + 23);
        if (v23 >= 0)
        {
          v24 = *(v20 + 23);
        }

        else
        {
          v24 = v20[1];
        }

        if (v23 >= 0)
        {
          v25 = v20;
        }

        else
        {
          v25 = v21;
        }

        if (v24 >= v18)
        {
          v26 = v18;
        }

        else
        {
          v26 = v24;
        }

        v27 = memcmp(v19, v25, v26);
        v28 = v18 < v24;
        if (v27)
        {
          v28 = v27 < 0;
        }

        if (!v28)
        {
          break;
        }

        v14 = *v15;
        v16 = v15;
        if (!*v15)
        {
          goto LABEL_36;
        }
      }

      v14 = v15[1];
    }

    while (v14);
    *v38 = 0;
    v38[1] = 0;
    v38[2] = v15;
    v15[1] = v38;
    v29 = **a1;
    if (v29)
    {
      goto LABEL_37;
    }

LABEL_38:
    sub_1836894A0(*(a1 + 8), v38);
    ++*(a1 + 16);
    v9 = v37;
    v38 = v37;
    if (v37)
    {
      v10 = *(v37 + 2);
      if (v10)
      {
        v30 = *v10;
        if (*v10 == v37)
        {
          *v10 = 0;
          while (1)
          {
            v33 = *(v10 + 1);
            if (!v33)
            {
              break;
            }

            do
            {
              v10 = v33;
              v33 = *v33;
            }

            while (v33);
          }
        }

        else
        {
          for (*(v10 + 1) = 0; v30; v30 = *(v10 + 1))
          {
            do
            {
              v10 = v30;
              v30 = *v30;
            }

            while (v30);
          }
        }
      }

      v37 = v10;
      v31 = v13[1];
      if (!v31)
      {
        do
        {
LABEL_49:
          v4 = v13[2];
          v32 = *v4 == v13;
          v13 = v4;
        }

        while (!v32);
        goto LABEL_51;
      }
    }

    else
    {
      v10 = 0;
      v31 = v13[1];
      if (!v31)
      {
        goto LABEL_49;
      }
    }

    do
    {
      v4 = v31;
      v31 = *v31;
    }

    while (v31);
LABEL_51:
    if (!v9)
    {
      break;
    }

    v13 = v4;
  }

  while (v4 != a3);
  v12 = a1;
  sub_18368922C(a1, v9);
  if (v10)
  {
LABEL_61:
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    sub_18368922C(v12, v10);
  }

LABEL_64:
  if (v4 != a3)
  {
    operator new();
  }
}

void sub_183916928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18384BA74(va);
  _Unwind_Resume(a1);
}

void sub_18391693C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

uint64_t sub_183916950(uint64_t result, unint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = (a2 - 72);
    v111 = a2;
    v113 = (a2 - 144);
    v109 = (a2 - 216);
    v11 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v11;
          v12 = a2 - v11;
          v13 = 0x8E38E38E38E38E39 * ((a2 - v11) >> 3);
          if (v13 > 2)
          {
            switch(v13)
            {
              case 3uLL:

                return sub_1839175A4(v11, (v11 + 72), v10, a3);
              case 4uLL:

                return sub_1839177AC(v11, v11 + 72, v11 + 144, v10, a3);
              case 5uLL:

                return sub_1839178F0(v11, v11 + 72, v11 + 144, v11 + 216, v10, a3);
            }
          }

          else
          {
            if (v13 < 2)
            {
              return result;
            }

            if (v13 == 2)
            {
              result = (*a3)(v10, v11);
              if (result)
              {
                v49 = *v11;
                v48 = *(v11 + 16);
                v51 = *(v11 + 32);
                v50 = *(v11 + 48);
                v52 = *(v11 + 64);
                if (v11 != v10)
                {
                  *v11 = *(a2 - 72);
                  *(v11 + 32) = *(a2 - 40);
                  *(v11 + 16) = *(a2 - 56);
                  *(v11 + 48) = *(a2 - 24);
                  *(v11 + 64) = *(a2 - 8);
                }

                *(a2 - 72) = v49;
                *(a2 - 40) = v51;
                *(a2 - 56) = v48;
                *(a2 - 24) = v50;
                *(a2 - 8) = v52;
              }

              return result;
            }
          }

          if (v12 <= 1727)
          {
            if (a5)
            {
              if (v11 != a2)
              {
                v53 = (v11 + 72);
                if (v11 + 72 != a2)
                {
                  v54 = 0;
                  v55 = v11;
                  do
                  {
                    v56 = v53;
                    result = (*a3)(v53, v55);
                    if (result)
                    {
                      v57 = *(v55 + 88);
                      v116 = *v56;
                      v117 = v57;
                      v58 = *(v55 + 120);
                      v118 = *(v55 + 104);
                      v119 = v58;
                      v120 = *(v55 + 17);
                      v59 = v54;
                      while (1)
                      {
                        v60 = v11 + v59;
                        v61 = *(v11 + v59 + 16);
                        *(v60 + 72) = *(v11 + v59);
                        v62 = *(v11 + v59 + 48);
                        *(v60 + 104) = *(v11 + v59 + 32);
                        *(v60 + 88) = v61;
                        *(v60 + 120) = v62;
                        *(v60 + 136) = *(v11 + v59 + 64);
                        if (!v59)
                        {
                          break;
                        }

                        v59 -= 72;
                        result = (*a3)(&v116, (v59 + v11));
                        if ((result & 1) == 0)
                        {
                          v63 = v11 + v59 + 72;
                          if (v63 == &v116)
                          {
                            goto LABEL_78;
                          }

                          goto LABEL_86;
                        }
                      }

                      v63 = v11;
                      if (v11 == &v116)
                      {
                        goto LABEL_78;
                      }

LABEL_86:
                      *v63 = v116;
                      v64 = v118;
                      *(v63 + 16) = v117;
                      *(v63 + 32) = v64;
                      *(v63 + 48) = v119;
                      *(v63 + 64) = v120;
                    }

LABEL_78:
                    v53 = (v56 + 72);
                    v54 += 72;
                    v55 = v56;
                  }

                  while ((v56 + 72) != a2);
                }
              }
            }

            else if (v11 != a2)
            {
              v93 = (v11 + 72);
              if (v11 + 72 != a2)
              {
                v94 = (v11 + 136);
                do
                {
                  v95 = v93;
                  result = (*a3)(v93, v9);
                  if (result)
                  {
                    v96 = *(v9 + 88);
                    v116 = *v95;
                    v117 = v96;
                    v97 = *(v9 + 120);
                    v118 = *(v9 + 104);
                    v119 = v97;
                    v120 = *(v9 + 136);
                    v98 = v94;
                    do
                    {
                      v99 = v98;
                      v100 = *(v98 - 104);
                      v101 = *(v98 - 120);
                      *(v98 - 4) = *(v98 - 136);
                      *(v98 - 3) = v101;
                      v102 = *(v98 - 88);
                      *(v98 - 2) = v100;
                      *(v98 - 1) = v102;
                      v103 = *(v98 - 9);
                      v98 = (v98 - 72);
                      *v99 = v103;
                      result = (*a3)(&v116, v99 - 13);
                    }

                    while ((result & 1) != 0);
                    if (v98 - 4 != &v116)
                    {
                      *(v98 - 4) = v116;
                      *(v98 - 2) = v118;
                      *(v98 - 3) = v117;
                      *(v98 - 1) = v119;
                      *v98 = v120;
                    }
                  }

                  v93 = (v95 + 72);
                  v94 = (v94 + 72);
                  v9 = v95;
                }

                while ((v95 + 72) != a2);
              }
            }

            return result;
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v65 = (v13 - 2) >> 1;
              v114 = v65;
              do
              {
                v66 = v65;
                if (v114 >= v65)
                {
                  v67 = (2 * v65) | 1;
                  v68 = v9 + 72 * v67;
                  if (2 * v65 + 2 < v13 && (*a3)((v9 + 72 * v67), (v68 + 72)))
                  {
                    v68 += 72;
                    v67 = 2 * v66 + 2;
                  }

                  v69 = v9 + 72 * v66;
                  result = (*a3)(v68, v69);
                  if ((result & 1) == 0)
                  {
                    v116 = *v69;
                    v117 = *(v69 + 16);
                    v118 = *(v69 + 32);
                    v119 = *(v69 + 48);
                    v120 = *(v69 + 64);
                    do
                    {
                      v70 = v68;
                      if (v69 != v68)
                      {
                        *v69 = *v68;
                        *(v69 + 32) = *(v68 + 32);
                        *(v69 + 16) = *(v68 + 16);
                        *(v69 + 48) = *(v68 + 48);
                        *(v69 + 64) = *(v68 + 64);
                      }

                      if (v114 < v67)
                      {
                        break;
                      }

                      v71 = (2 * v67) | 1;
                      v68 = v9 + 72 * v71;
                      v72 = 2 * v67 + 2;
                      if (v72 < v13 && (*a3)((v9 + 72 * v71), (v68 + 72)))
                      {
                        v68 += 72;
                        v71 = v72;
                      }

                      result = (*a3)(v68, &v116);
                      v69 = v70;
                      v67 = v71;
                    }

                    while (!result);
                    if (v70 != &v116)
                    {
                      *v70 = v116;
                      v73 = v118;
                      *(v70 + 16) = v117;
                      *(v70 + 32) = v73;
                      *(v70 + 48) = v119;
                      *(v70 + 64) = v120;
                    }
                  }
                }

                v65 = v66 - 1;
              }

              while (v66);
              v74 = 0x8E38E38E38E38E39 * (v12 >> 3);
              v75 = v111;
              do
              {
                v112 = v75;
                if (v74 >= 2)
                {
                  v77 = 0;
                  v105 = *(v9 + 8);
                  v106 = *v9;
                  v115 = *(v9 + 16);
                  v79 = *(v9 + 32);
                  v78 = *(v9 + 40);
                  v108 = *(v9 + 48);
                  v110 = *(v9 + 24);
                  v107 = *(v9 + 56);
                  v80 = v9;
                  v104 = *(v9 + 64);
                  do
                  {
                    v81 = v80 + 72 * v77;
                    v82 = v81 + 72;
                    v83 = 2 * v77;
                    v77 = (2 * v77) | 1;
                    v84 = v83 + 2;
                    if (v83 + 2 < v74)
                    {
                      v85 = v81 + 144;
                      result = (*a3)((v81 + 72), (v81 + 144));
                      if (result)
                      {
                        v82 = v85;
                        v77 = v84;
                      }
                    }

                    if (v80 != v82)
                    {
                      *v80 = *v82;
                      *(v80 + 32) = *(v82 + 32);
                      *(v80 + 16) = *(v82 + 16);
                      *(v80 + 48) = *(v82 + 48);
                      *(v80 + 64) = *(v82 + 64);
                    }

                    v80 = v82;
                  }

                  while (v77 <= ((v74 - 2) >> 1));
                  if (v82 == v112 - 72)
                  {
                    *v82 = v106;
                    *(v82 + 8) = v105;
                    *(v82 + 32) = v79;
                    *(v82 + 40) = v78;
                    *(v82 + 16) = v115;
                    *(v82 + 24) = v110;
                    *(v82 + 48) = v108;
                    *(v82 + 56) = v107;
                    *(v82 + 64) = v104;
                  }

                  else
                  {
                    *v82 = *(v112 - 72);
                    *(v82 + 32) = *(v112 - 40);
                    *(v82 + 16) = *(v112 - 56);
                    *(v82 + 48) = *(v112 - 24);
                    *(v82 + 64) = *(v112 - 8);
                    *(v112 - 72) = v106;
                    *(v112 - 64) = v105;
                    *(v112 - 40) = v79;
                    *(v112 - 32) = v78;
                    *(v112 - 56) = v115;
                    *(v112 - 48) = v110;
                    *(v112 - 24) = v108;
                    *(v112 - 16) = v107;
                    *(v112 - 8) = v104;
                    v86 = v82 - v9 + 72;
                    if (v86 >= 73)
                    {
                      v87 = (-2 - 0x71C71C71C71C71C7 * (v86 >> 3)) >> 1;
                      v88 = v9 + 72 * v87;
                      result = (*a3)(v88, v82);
                      if (result)
                      {
                        v89 = *(v82 + 16);
                        v116 = *v82;
                        v117 = v89;
                        v90 = *(v82 + 48);
                        v118 = *(v82 + 32);
                        v119 = v90;
                        v120 = *(v82 + 64);
                        do
                        {
                          v91 = v88;
                          if (v82 != v88)
                          {
                            *v82 = *v88;
                            *(v82 + 32) = *(v88 + 32);
                            *(v82 + 16) = *(v88 + 16);
                            *(v82 + 48) = *(v88 + 48);
                            *(v82 + 64) = *(v88 + 64);
                          }

                          if (!v87)
                          {
                            break;
                          }

                          v87 = (v87 - 1) >> 1;
                          v88 = v9 + 72 * v87;
                          result = (*a3)(v88, &v116);
                          v82 = v91;
                        }

                        while ((result & 1) != 0);
                        if (v91 != &v116)
                        {
                          *v91 = v116;
                          v92 = v118;
                          *(v91 + 16) = v117;
                          *(v91 + 32) = v92;
                          *(v91 + 48) = v119;
                          *(v91 + 64) = v120;
                        }
                      }
                    }
                  }
                }

                v75 = v112 - 72;
              }

              while (v74-- > 2);
            }

            return result;
          }

          v14 = v11 + 72 * (v13 >> 1);
          if (v12 < 0x2401)
          {
            break;
          }

          sub_1839175A4(v9, (v9 + 72 * (v13 >> 1)), v10, a3);
          v15 = 72 * (v13 >> 1);
          sub_1839175A4((v9 + 72), (v15 + v9 - 72), v113, a3);
          sub_1839175A4((v9 + 144), (v9 + 72 + v15), v109, a3);
          sub_1839175A4((v15 + v9 - 72), (v9 + v15), (v9 + 72 + v15), a3);
          v17 = *v9;
          v16 = *(v9 + 16);
          v18 = *(v9 + 32);
          v19 = *(v9 + 48);
          v20 = *(v9 + 64);
          v21 = *(v14 + 16);
          *v9 = *v14;
          *(v9 + 16) = v21;
          v22 = *(v14 + 48);
          *(v9 + 32) = *(v14 + 32);
          *(v9 + 48) = v22;
          *(v9 + 64) = *(v14 + 64);
          *v14 = v17;
          *(v14 + 16) = v16;
          *(v14 + 32) = v18;
          *(v14 + 48) = v19;
          *(v14 + 64) = v20;
          a2 = v111;
          --a4;
          if (a5)
          {
            goto LABEL_17;
          }

LABEL_16:
          if ((*a3)((v9 - 72), v9))
          {
            goto LABEL_17;
          }

          v37 = *(v9 + 16);
          v116 = *v9;
          v117 = v37;
          v38 = *(v9 + 48);
          v118 = *(v9 + 32);
          v119 = v38;
          v120 = *(v9 + 64);
          result = (*a3)(&v116, v10);
          if (result)
          {
            v11 = v9;
            do
            {
              v11 += 72;
              result = (*a3)(&v116, v11);
            }

            while ((result & 1) == 0);
          }

          else
          {
            v39 = (v9 + 72);
            do
            {
              v11 = v39;
              if (v39 >= a2)
              {
                break;
              }

              result = (*a3)(&v116, v39);
              v39 = (v11 + 72);
            }

            while (!result);
          }

          v40 = a2;
          if (v11 < a2)
          {
            v40 = a2;
            do
            {
              v40 -= 72;
              result = (*a3)(&v116, v40);
            }

            while ((result & 1) != 0);
          }

          while (v11 < v40)
          {
            v41 = *(v11 + 64);
            v42 = *(v40 + 32);
            v43 = *v11;
            *v11 = *v40;
            v44 = *(v40 + 16);
            v45 = *(v11 + 32);
            *(v11 + 32) = v42;
            *(v40 + 32) = v45;
            v46 = *(v11 + 16);
            *(v11 + 16) = v44;
            v47 = *(v11 + 48);
            *(v11 + 48) = *(v40 + 48);
            *(v11 + 64) = *(v40 + 64);
            *v40 = v43;
            *(v40 + 16) = v46;
            *(v40 + 48) = v47;
            *(v40 + 64) = v41;
            do
            {
              v11 += 72;
            }

            while (!(*a3)(&v116, v11));
            do
            {
              v40 -= 72;
              result = (*a3)(&v116, v40);
            }

            while ((result & 1) != 0);
          }

          if (v11 - 72 != v9)
          {
            *v9 = *(v11 - 72);
            *(v9 + 32) = *(v11 - 40);
            *(v9 + 16) = *(v11 - 56);
            *(v9 + 48) = *(v11 - 24);
            *(v9 + 64) = *(v11 - 8);
          }

          if ((v11 - 72) != &v116)
          {
            *(v11 - 72) = v116;
            *(v11 - 40) = v118;
            *(v11 - 56) = v117;
            *(v11 - 24) = v119;
            *(v11 - 8) = v120;
          }

          a5 = 0;
        }

        sub_1839175A4((v9 + 72 * (v13 >> 1)), v9, v10, a3);
        a2 = v111;
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_17:
        v23 = 0;
        v24 = *(v9 + 16);
        v116 = *v9;
        v117 = v24;
        v25 = *(v9 + 48);
        v118 = *(v9 + 32);
        v119 = v25;
        v120 = *(v9 + 64);
        do
        {
          v23 += 72;
        }

        while (((*a3)((v23 + v9), &v116) & 1) != 0);
        v26 = v9 + v23;
        v27 = a2;
        if (v23 == 72)
        {
          v27 = a2;
          do
          {
            if (v26 >= v27)
            {
              break;
            }

            v27 = (v27 - 72);
          }

          while (((*a3)(v27, &v116) & 1) == 0);
        }

        else
        {
          do
          {
            v27 = (v27 - 72);
          }

          while (!(*a3)(v27, &v116));
        }

        v11 = v9 + v23;
        if (v26 < v27)
        {
          v28 = v27;
          do
          {
            v29 = *(v11 + 64);
            v30 = *(v28 + 32);
            v31 = *v11;
            *v11 = *v28;
            v32 = *(v28 + 16);
            v33 = *(v11 + 32);
            *(v11 + 32) = v30;
            *(v28 + 32) = v33;
            v34 = *(v11 + 16);
            *(v11 + 16) = v32;
            v35 = *(v11 + 48);
            *(v11 + 48) = *(v28 + 48);
            *(v11 + 64) = *(v28 + 64);
            *v28 = v31;
            *(v28 + 16) = v34;
            *(v28 + 48) = v35;
            *(v28 + 64) = v29;
            do
            {
              v11 += 72;
            }

            while (((*a3)(v11, &v116) & 1) != 0);
            do
            {
              v28 -= 72;
            }

            while (!(*a3)(v28, &v116));
          }

          while (v11 < v28);
        }

        if (v11 - 72 != v9)
        {
          *v9 = *(v11 - 72);
          *(v9 + 32) = *(v11 - 40);
          *(v9 + 16) = *(v11 - 56);
          *(v9 + 48) = *(v11 - 24);
          *(v9 + 64) = *(v11 - 8);
        }

        if ((v11 - 72) != &v116)
        {
          *(v11 - 72) = v116;
          *(v11 - 40) = v118;
          *(v11 - 56) = v117;
          *(v11 - 24) = v119;
          *(v11 - 8) = v120;
        }

        if (v26 >= v27)
        {
          break;
        }

LABEL_38:
        result = sub_183916950(v9, v11 - 72, a3, a4, a5 & 1);
        a5 = 0;
      }

      v36 = sub_183917A8C(v9, v11 - 72, a3);
      result = sub_183917A8C(v11, a2, a3);
      if (result)
      {
        break;
      }

      if (!v36)
      {
        goto LABEL_38;
      }
    }

    a2 = v11 - 72;
    if (!v36)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1839175A4(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t (**a4)(__int128 *, __int128 *))
{
  v8 = (*a4)(a2, a1);
  result = (*a4)(a3, a2);
  if (v8)
  {
    v11 = *a1;
    v10 = *(a1 + 1);
    v13 = *(a1 + 2);
    v12 = *(a1 + 3);
    v15 = *(a1 + 4);
    v14 = *(a1 + 5);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 8);
    if (result)
    {
      if (a1 != a3)
      {
        *a1 = *a3;
        v19 = a3[2];
        a1[1] = a3[1];
        a1[2] = v19;
        a1[3] = a3[3];
        *(a1 + 8) = *(a3 + 8);
      }

      *a3 = v11;
      *(a3 + 1) = v10;
      *(a3 + 4) = v15;
      *(a3 + 5) = v14;
      *(a3 + 2) = v13;
      *(a3 + 3) = v12;
      *(a3 + 6) = v17;
      *(a3 + 7) = v16;
      *(a3 + 8) = v18;
    }

    else
    {
      if (a1 != a2)
      {
        *a1 = *a2;
        v32 = a2[2];
        a1[1] = a2[1];
        a1[2] = v32;
        a1[3] = a2[3];
        *(a1 + 8) = *(a2 + 8);
      }

      *a2 = v11;
      *(a2 + 1) = v10;
      *(a2 + 4) = v15;
      *(a2 + 5) = v14;
      *(a2 + 2) = v13;
      *(a2 + 3) = v12;
      *(a2 + 6) = v17;
      *(a2 + 7) = v16;
      *(a2 + 8) = v18;
      result = (*a4)(a3, a2);
      if (result)
      {
        v34 = *a2;
        v33 = a2[1];
        v35 = a2[2];
        v36 = a2[3];
        v37 = *(a2 + 8);
        if (a2 != a3)
        {
          *a2 = *a3;
          v38 = a3[2];
          a2[1] = a3[1];
          a2[2] = v38;
          a2[3] = a3[3];
          *(a2 + 8) = *(a3 + 8);
        }

        *a3 = v34;
        a3[1] = v33;
        a3[2] = v35;
        a3[3] = v36;
        *(a3 + 8) = v37;
      }
    }
  }

  else if (result)
  {
    v21 = *a2;
    v20 = a2[1];
    v22 = a2[2];
    v23 = a2[3];
    v24 = *(a2 + 8);
    if (a2 != a3)
    {
      *a2 = *a3;
      v25 = a3[2];
      a2[1] = a3[1];
      a2[2] = v25;
      a2[3] = a3[3];
      *(a2 + 8) = *(a3 + 8);
    }

    *a3 = v21;
    a3[1] = v20;
    a3[2] = v22;
    a3[3] = v23;
    *(a3 + 8) = v24;
    result = (*a4)(a2, a1);
    if (result)
    {
      v27 = *a1;
      v26 = a1[1];
      v28 = a1[2];
      v29 = a1[3];
      v30 = *(a1 + 8);
      if (a1 != a2)
      {
        *a1 = *a2;
        v31 = a2[2];
        a1[1] = a2[1];
        a1[2] = v31;
        a1[3] = a2[3];
        *(a1 + 8) = *(a2 + 8);
      }

      *a2 = v27;
      a2[1] = v26;
      a2[2] = v28;
      a2[3] = v29;
      *(a2 + 8) = v30;
    }
  }

  return result;
}

uint64_t sub_1839177AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(__int128 *, __int128 *))
{
  sub_1839175A4(a1, a2, a3, a5);
  result = (*a5)(a4, a3);
  if (result)
  {
    v12 = *a3;
    v11 = *(a3 + 16);
    v13 = *(a3 + 32);
    v14 = *(a3 + 48);
    v15 = *(a3 + 64);
    if (a3 != a4)
    {
      *a3 = *a4;
      v16 = *(a4 + 32);
      *(a3 + 16) = *(a4 + 16);
      *(a3 + 32) = v16;
      *(a3 + 48) = *(a4 + 48);
      *(a3 + 64) = *(a4 + 64);
    }

    *a4 = v12;
    *(a4 + 16) = v11;
    *(a4 + 32) = v13;
    *(a4 + 48) = v14;
    *(a4 + 64) = v15;
    result = (*a5)(a3, a2);
    if (result)
    {
      v18 = *a2;
      v17 = *(a2 + 16);
      v19 = *(a2 + 32);
      v20 = *(a2 + 48);
      v21 = *(a2 + 64);
      if (a2 != a3)
      {
        *a2 = *a3;
        v22 = *(a3 + 32);
        *(a2 + 16) = *(a3 + 16);
        *(a2 + 32) = v22;
        *(a2 + 48) = *(a3 + 48);
        *(a2 + 64) = *(a3 + 64);
      }

      *a3 = v18;
      *(a3 + 16) = v17;
      *(a3 + 32) = v19;
      *(a3 + 48) = v20;
      *(a3 + 64) = v21;
      result = (*a5)(a2, a1);
      if (result)
      {
        v24 = *a1;
        v23 = *(a1 + 16);
        v25 = *(a1 + 32);
        v26 = *(a1 + 48);
        v27 = *(a1 + 64);
        if (a1 != a2)
        {
          *a1 = *a2;
          v28 = *(a2 + 32);
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 32) = v28;
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
        }

        *a2 = v24;
        *(a2 + 16) = v23;
        *(a2 + 32) = v25;
        *(a2 + 48) = v26;
        *(a2 + 64) = v27;
      }
    }
  }

  return result;
}

uint64_t sub_1839178F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(__int128 *, __int128 *))
{
  sub_1839177AC(a1, a2, a3, a4, a6);
  result = (*a6)(a5, a4);
  if (result)
  {
    v14 = *a4;
    v13 = *(a4 + 16);
    v15 = *(a4 + 32);
    v16 = *(a4 + 48);
    v17 = *(a4 + 64);
    if (a4 != a5)
    {
      *a4 = *a5;
      v18 = *(a5 + 32);
      *(a4 + 16) = *(a5 + 16);
      *(a4 + 32) = v18;
      *(a4 + 48) = *(a5 + 48);
      *(a4 + 64) = *(a5 + 64);
    }

    *a5 = v14;
    *(a5 + 16) = v13;
    *(a5 + 32) = v15;
    *(a5 + 48) = v16;
    *(a5 + 64) = v17;
    result = (*a6)(a4, a3);
    if (result)
    {
      v20 = *a3;
      v19 = *(a3 + 16);
      v21 = *(a3 + 32);
      v22 = *(a3 + 48);
      v23 = *(a3 + 64);
      if (a3 != a4)
      {
        *a3 = *a4;
        v24 = *(a4 + 32);
        *(a3 + 16) = *(a4 + 16);
        *(a3 + 32) = v24;
        *(a3 + 48) = *(a4 + 48);
        *(a3 + 64) = *(a4 + 64);
      }

      *a4 = v20;
      *(a4 + 16) = v19;
      *(a4 + 32) = v21;
      *(a4 + 48) = v22;
      *(a4 + 64) = v23;
      result = (*a6)(a3, a2);
      if (result)
      {
        v26 = *a2;
        v25 = *(a2 + 16);
        v27 = *(a2 + 32);
        v28 = *(a2 + 48);
        v29 = *(a2 + 64);
        if (a2 != a3)
        {
          *a2 = *a3;
          v30 = *(a3 + 32);
          *(a2 + 16) = *(a3 + 16);
          *(a2 + 32) = v30;
          *(a2 + 48) = *(a3 + 48);
          *(a2 + 64) = *(a3 + 64);
        }

        *a3 = v26;
        *(a3 + 16) = v25;
        *(a3 + 32) = v27;
        *(a3 + 48) = v28;
        *(a3 + 64) = v29;
        result = (*a6)(a2, a1);
        if (result)
        {
          v32 = *a1;
          v31 = *(a1 + 16);
          v33 = *(a1 + 32);
          v34 = *(a1 + 48);
          v35 = *(a1 + 64);
          if (a1 != a2)
          {
            *a1 = *a2;
            v36 = *(a2 + 32);
            *(a1 + 16) = *(a2 + 16);
            *(a1 + 32) = v36;
            *(a1 + 48) = *(a2 + 48);
            *(a1 + 64) = *(a2 + 64);
          }

          *a2 = v32;
          *(a2 + 16) = v31;
          *(a2 + 32) = v33;
          *(a2 + 48) = v34;
          *(a2 + 64) = v35;
        }
      }
    }
  }

  return result;
}

BOOL sub_183917A8C(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_1839175A4(a1, (a1 + 72), (a2 - 72), a3);
        return 1;
      case 4:
        sub_1839177AC(a1, a1 + 72, a1 + 144, a2 - 72, a3);
        return 1;
      case 5:
        sub_1839178F0(a1, a1 + 72, a1 + 144, a1 + 216, a2 - 72, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = a2 - 72;
      if ((*a3)((a2 - 72), a1))
      {
        v9 = *a1;
        v8 = *(a1 + 16);
        v11 = *(a1 + 32);
        v10 = *(a1 + 48);
        v12 = *(a1 + 64);
        if (v7 != a1)
        {
          *a1 = *(a2 - 72);
          v13 = *(a2 - 40);
          *(a1 + 16) = *(a2 - 56);
          *(a1 + 32) = v13;
          *(a1 + 48) = *(a2 - 24);
          *(a1 + 64) = *(a2 - 8);
        }

        *(a2 - 72) = v9;
        *(a2 - 40) = v11;
        *(a2 - 56) = v8;
        *(a2 - 24) = v10;
        result = 1;
        *(a2 - 8) = v12;
        return result;
      }

      return 1;
    }
  }

  sub_1839175A4(a1, (a1 + 72), (a1 + 144), a3);
  v15 = a1 + 216;
  if (a1 + 216 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v18 = (a1 + 144);
  while (1)
  {
    if ((*a3)(v15, v18))
    {
      v19 = *(v15 + 16);
      v28 = *v15;
      v29 = v19;
      v20 = *(v15 + 48);
      v30 = *(v15 + 32);
      v31 = v20;
      v32 = *(v15 + 64);
      v21 = v16;
      while (1)
      {
        v22 = a1 + v21;
        v23 = *(a1 + v21 + 160);
        *(v22 + 216) = *(a1 + v21 + 144);
        v24 = *(a1 + v21 + 192);
        *(v22 + 248) = *(a1 + v21 + 176);
        *(v22 + 232) = v23;
        *(a1 + v21 + 264) = v24;
        *(v22 + 280) = *(a1 + v21 + 208);
        if (v21 == -144)
        {
          break;
        }

        v21 -= 72;
        if (((*a3)(&v28, (v22 + 72)) & 1) == 0)
        {
          v25 = a1 + v21 + 216;
          if (v25 == &v28)
          {
            goto LABEL_15;
          }

          goto LABEL_24;
        }
      }

      v25 = a1;
      if (a1 == &v28)
      {
        goto LABEL_15;
      }

LABEL_24:
      v26 = v29;
      *v25 = v28;
      *(v25 + 16) = v26;
      v27 = v31;
      *(v25 + 32) = v30;
      *(v25 + 48) = v27;
      *(v25 + 64) = v32;
LABEL_15:
      if (++v17 == 8)
      {
        return v15 + 72 == a2;
      }
    }

    v18 = v15;
    v16 += 72;
    v15 += 72;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_183917CF8(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_44:
    operator new();
  }

  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *a2;
  v7 = a2[1];
  while (1)
  {
    while (1)
    {
      v8 = v2;
      v9 = v2[7];
      v10 = v6 < v9 ? -1 : v6 > v9;
      v11 = v2[9];
      v12 = v2[10];
      result = v3 < v11 ? 0xFFFFFFFFLL : v3 > v11;
      v14 = v4 < v12 ? -1 : v4 > v12;
      if (v10 != -1)
      {
        v15 = v2[11];
        if (v10)
        {
          break;
        }

        v16 = v8[8];
        v17 = v7 >= v16;
        v18 = v7 > v16;
        if (!v17)
        {
          v18 = -1;
        }

        if (v18 != -1 && (v18 || result != -1 && (result || v14 != -1 && (v14 || v5 >= v15))))
        {
          break;
        }
      }

      v2 = *v8;
      if (!*v8)
      {
        goto LABEL_44;
      }
    }

    v19 = v6 > v9;
    v20 = v6 < v9;
    if (v19)
    {
      v21 = -1;
    }

    else
    {
      v21 = v20;
    }

    if (v3 > v11)
    {
      v22 = -1;
    }

    else
    {
      v22 = v3 < v11;
    }

    v23 = v4 < v12;
    if (v4 > v12)
    {
      v23 = -1;
    }

    if (v21 != -1)
    {
      if (v21)
      {
        return result;
      }

      v24 = v8[8];
      v17 = v24 >= v7;
      v25 = v24 > v7;
      if (!v17)
      {
        v25 = -1;
      }

      if (v25 != -1 && (v25 || v22 != -1 && (v22 || v23 != -1 && (v23 || v15 >= v5))))
      {
        return result;
      }
    }

    v2 = *(v8 + 1);
    if (!v2)
    {
      goto LABEL_44;
    }
  }
}

void ***sub_183917EA4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = v4 - 24;
          sub_1836E1928(*(v4 - 2));
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void **sub_183917F20(void **a1)
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
        v5 = v3 - 24;
        sub_1836E1928(*(v3 - 2));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_183917F88(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v122 = a2 - 3;
  v11 = v8;
  v124 = a2;
  while (1)
  {
    v8 = v11;
    v12 = a2 - v11;
    v13 = v12 - 2;
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v59 = v11 + 1;
        v68 = (*a3)(v11 + 1, v11);
        result = (*a3)(v9, v11 + 1);
        if (v68)
        {
          v67 = *v11;
          if (result)
          {
LABEL_130:
            if (v11 == v9)
            {
              goto LABEL_236;
            }
          }

          else
          {
            *v11 = v11[1];
            v11[1] = v67;
            result = (*a3)(v9, v11 + 1);
            if (!result)
            {
              return result;
            }

            v67 = *v59;
            v8 = v11 + 1;
            if (v59 == v9)
            {
              goto LABEL_236;
            }
          }

LABEL_235:
          *v8 = *v9;
LABEL_236:
          *v9 = v67;
          return result;
        }

        if (!result)
        {
          return result;
        }

        v106 = *v59;
        if (v59 != v9)
        {
          *v59 = *v9;
        }

        *v9 = v106;
LABEL_233:
        result = (*a3)(v59, v11);
        if ((result & 1) == 0)
        {
          return result;
        }

        v67 = *v11;
        v9 = v59;
        goto LABEL_235;
      }

      if (v12 != 4)
      {
        if (v12 != 5)
        {
          goto LABEL_10;
        }

        v59 = v11 + 1;
        v60 = v11 + 2;
        v61 = v11 + 3;
        v62 = (*a3)(v11 + 1, v11);
        v63 = (*a3)(v11 + 2, v11 + 1);
        if (v62)
        {
          v64 = *v11;
          if (v63)
          {
            v65 = v11 + 2;
            v66 = v11;
LABEL_211:
            *v66 = *v65;
            *v65 = v64;
LABEL_212:
            if ((*a3)(v11 + 3, v11 + 2))
            {
              v114 = *v60;
              *v60 = *v61;
              *v61 = v114;
              if ((*a3)(v11 + 2, v11 + 1))
              {
                v115 = v11[1];
                v11[1] = v11[2];
                v11[2] = v115;
                if ((*a3)(v11 + 1, v11))
                {
                  v116 = *v11;
                  *v11 = v11[1];
                  v11[1] = v116;
                }
              }
            }

            result = (*a3)(v9, v11 + 3);
            if (!result)
            {
              return result;
            }

            v117 = *v61;
            if (v61 != v9)
            {
              *v61 = *v9;
            }

            *v9 = v117;
            result = (*a3)(v11 + 3, v11 + 2);
            if (!result)
            {
              return result;
            }

            v118 = *v60;
            *v60 = *v61;
            *v61 = v118;
            goto LABEL_231;
          }

          *v11 = v11[1];
          v11[1] = v64;
          v113 = (*a3)(v11 + 2, v11 + 1);
          v66 = v11 + 1;
          v65 = v11 + 2;
          if (!v113)
          {
            goto LABEL_212;
          }
        }

        else
        {
          if (!v63)
          {
            goto LABEL_212;
          }

          v104 = v11[1];
          v11[1] = v11[2];
          v11[2] = v104;
          v105 = (*a3)(v11 + 1, v11);
          v66 = v11;
          v65 = v11 + 1;
          if ((v105 & 1) == 0)
          {
            goto LABEL_212;
          }
        }

        v64 = *v66;
        goto LABEL_211;
      }

      v59 = v11 + 1;
      v60 = v11 + 2;
      v69 = (*a3)(v11 + 1, v11);
      v70 = (*a3)(v11 + 2, v11 + 1);
      if (v69)
      {
        v71 = *v11;
        if (v70)
        {
          v72 = v11 + 2;
          v73 = v11;
LABEL_226:
          *v73 = *v72;
          *v72 = v71;
          goto LABEL_227;
        }

        *v11 = v11[1];
        v11[1] = v71;
        v119 = (*a3)(v11 + 2, v11 + 1);
        v73 = v11 + 1;
        v72 = v11 + 2;
        if (!v119)
        {
LABEL_227:
          result = (*a3)(v9, v11 + 2);
          if (!result)
          {
            return result;
          }

          v120 = *v60;
          if (v60 != v9)
          {
            *v60 = *v9;
          }

          *v9 = v120;
LABEL_231:
          result = (*a3)(v60, v59);
          if (!result)
          {
            return result;
          }

          v121 = v11[1];
          v11[1] = v11[2];
          v11[2] = v121;
          goto LABEL_233;
        }
      }

      else
      {
        if (!v70)
        {
          goto LABEL_227;
        }

        v107 = v11[1];
        v11[1] = v11[2];
        v11[2] = v107;
        v108 = (*a3)(v11 + 1, v11);
        v73 = v11;
        v72 = v11 + 1;
        if ((v108 & 1) == 0)
        {
          goto LABEL_227;
        }
      }

      v71 = *v73;
      goto LABEL_226;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      break;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v74 = v11 + 1;
      v75 = v11 == a2 || v74 == a2;
      v76 = v75;
      if (a5)
      {
        if ((v76 & 1) == 0)
        {
          v77 = 0;
          v78 = v11;
          do
          {
            v79 = v78;
            v78 = v74;
            result = (*a3)(v74, v79);
            if (result)
            {
              v126 = *v78;
              v80 = v77;
              while (1)
              {
                *(v11 + v80 + 8) = *(v11 + v80);
                if (!v80)
                {
                  break;
                }

                v80 -= 8;
                result = (*a3)(&v126, (v11 + v80));
                if ((result & 1) == 0)
                {
                  v81 = (v11 + v80 + 8);
                  if (v81 == &v126)
                  {
                    goto LABEL_144;
                  }

                  goto LABEL_152;
                }
              }

              v81 = v11;
              if (v11 == &v126)
              {
                goto LABEL_144;
              }

LABEL_152:
              *v81 = v126;
            }

LABEL_144:
            v74 = v78 + 1;
            v77 += 8;
          }

          while (v78 + 1 != a2);
        }
      }

      else if ((v76 & 1) == 0)
      {
        do
        {
          v109 = v8;
          v8 = v74;
          result = (*a3)(v74, v109);
          if (result)
          {
            v126 = *v8;
            v110 = v8;
            do
            {
              v111 = v110;
              v112 = *--v110;
              *v111 = v112;
              result = (*a3)(&v126, v111 - 2);
            }

            while ((result & 1) != 0);
            if (v110 != &v126)
            {
              *v110 = v126;
            }
          }

          v74 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v82 = v13 >> 1;
        v83 = v13 >> 1;
        do
        {
          if (v82 >= v83)
          {
            v85 = (2 * (v83 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v86 = &v8[v85];
            if (2 * (v83 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v12 && (*a3)(&v8[v85], v86 + 1))
            {
              ++v86;
              v85 = 2 * (v83 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }

            v87 = &v8[v83];
            result = (*a3)(v86, v87);
            if ((result & 1) == 0)
            {
              v126 = *v87;
              do
              {
                v88 = v86;
                if (v87 != v86)
                {
                  *v87 = *v86;
                }

                if (v82 < v85)
                {
                  break;
                }

                v89 = (2 * (v85 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v86 = &v8[v89];
                v90 = 2 * v85 + 2;
                if (v90 < v12 && (*a3)(&v8[v89], v86 + 1))
                {
                  ++v86;
                  v89 = v90;
                }

                result = (*a3)(v86, &v126);
                v87 = v88;
                v85 = v89;
                a2 = v124;
              }

              while (!result);
              if (v88 != &v126)
              {
                *v88 = v126;
              }
            }
          }

          v84 = v83-- <= 0;
        }

        while (!v84);
        do
        {
          v91 = a2;
          v92 = 0;
          v125 = *v8;
          v93 = v8;
          do
          {
            v94 = &v93[v92];
            v95 = v94 + 1;
            v96 = 2 * v92;
            v92 = (2 * v92) | 1;
            v97 = v96 + 2;
            if (v96 + 2 < v12)
            {
              v98 = v94 + 2;
              result = (*a3)(v94 + 1, v94 + 2);
              if (result)
              {
                v95 = v98;
                v92 = v97;
              }
            }

            if (v93 != v95)
            {
              *v93 = *v95;
            }

            v93 = v95;
          }

          while (v92 <= ((v12 - 2) >> 1));
          a2 = v91 - 1;
          if (v95 == v91 - 1)
          {
            *v95 = v125;
          }

          else
          {
            *v95 = *a2;
            *a2 = v125;
            v99 = (v95 - v8 + 8) >> 3;
            v84 = v99 < 2;
            v100 = v99 - 2;
            if (!v84)
            {
              v101 = v100 >> 1;
              v102 = &v8[v100 >> 1];
              result = (*a3)(v102, v95);
              if (result)
              {
                v126 = *v95;
                do
                {
                  v103 = v102;
                  if (v95 != v102)
                  {
                    *v95 = *v102;
                  }

                  if (!v101)
                  {
                    break;
                  }

                  v101 = (v101 - 1) >> 1;
                  v102 = &v8[v101];
                  result = (*a3)(v102, &v126);
                  v95 = v103;
                }

                while ((result & 1) != 0);
                if (v103 != &v126)
                {
                  *v103 = v126;
                }
              }
            }
          }

          v84 = v12-- <= 2;
        }

        while (!v84);
      }

      return result;
    }

    v14 = v12 >> 1;
    if (v12 >= 0x81)
    {
      v15 = v14;
      v16 = &v11[v14];
      v17 = (*a3)(v16, v11);
      v18 = (*a3)(v9, v16);
      if (v17)
      {
        v19 = *v11;
        if (v18)
        {
          v20 = v9;
          v21 = v11;
          if (v11 == v9)
          {
LABEL_34:
            *v20 = v19;
            goto LABEL_35;
          }
        }

        else
        {
          *v11 = *v16;
          *v16 = v19;
          if (!(*a3)(v9, v16))
          {
            goto LABEL_35;
          }

          v19 = *v16;
          v20 = v9;
          v21 = v16;
          if (v16 == v9)
          {
            goto LABEL_34;
          }
        }

LABEL_33:
        *v21 = *v20;
        goto LABEL_34;
      }

      if (v18)
      {
        v26 = *v16;
        if (v16 != v9)
        {
          *v16 = *v9;
        }

        *v9 = v26;
        if ((*a3)(v16, v11))
        {
          v19 = *v11;
          v20 = v16;
          v21 = v11;
          goto LABEL_33;
        }
      }

LABEL_35:
      v28 = v11 + 1;
      v29 = &v8[v15 - 1];
      v30 = (*a3)(v29, v8 + 1);
      v31 = (*a3)(v10, v29);
      if (v30)
      {
        v32 = *v28;
        if (v31)
        {
          v33 = v10;
          if (v28 == v10)
          {
LABEL_50:
            *v33 = v32;
            goto LABEL_51;
          }
        }

        else
        {
          *v28 = *v29;
          *v29 = v32;
          if (!(*a3)(v10, &v8[v15 - 1]))
          {
            goto LABEL_51;
          }

          v32 = *v29;
          v33 = v10;
          v28 = &v8[v15 - 1];
          if (v29 == v10)
          {
            goto LABEL_50;
          }
        }

LABEL_49:
        *v28 = *v33;
        goto LABEL_50;
      }

      if (v31)
      {
        v34 = *v29;
        if (v29 != v10)
        {
          *v29 = *v10;
        }

        *v10 = v34;
        if ((*a3)(&v8[v15 - 1], v8 + 1))
        {
          v32 = *v28;
          v33 = &v8[v15 - 1];
          goto LABEL_49;
        }
      }

LABEL_51:
      v35 = v8 + 2;
      v36 = &v8[v15 + 1];
      v37 = (*a3)(v36, v8 + 2);
      v38 = (*a3)(v122, v36);
      if (v37)
      {
        v39 = *v35;
        if (v38)
        {
          v40 = v122;
          if (v35 == v122)
          {
LABEL_63:
            *v40 = v39;
            goto LABEL_64;
          }
        }

        else
        {
          *v35 = *v36;
          *v36 = v39;
          if (!(*a3)(v122, v36))
          {
            goto LABEL_64;
          }

          v39 = *v36;
          v40 = v122;
          v35 = v36;
          if (v36 == v122)
          {
            goto LABEL_63;
          }
        }

LABEL_62:
        *v35 = *v40;
        goto LABEL_63;
      }

      if (v38)
      {
        v41 = *v36;
        if (v36 != v122)
        {
          *v36 = *v122;
        }

        *v122 = v41;
        if ((*a3)(v36, v8 + 2))
        {
          v39 = *v35;
          v40 = v36;
          goto LABEL_62;
        }
      }

LABEL_64:
      v42 = (*a3)(v16, v29);
      v43 = (*a3)(v36, v16);
      if (v42)
      {
        v44 = *v29;
        if ((v43 & 1) == 0)
        {
          *v29 = *v16;
          *v16 = v44;
          v29 = v16;
          if (!(*a3)(v36, v16))
          {
            goto LABEL_72;
          }

LABEL_70:
          v44 = *v29;
        }

        *v29 = *v36;
        *v36 = v44;
        goto LABEL_72;
      }

      if (v43)
      {
        v45 = *v16;
        *v16 = *v36;
        *v36 = v45;
        v36 = v16;
        if ((*a3)(v16, v29))
        {
          goto LABEL_70;
        }
      }

LABEL_72:
      v22 = v8;
      a2 = v124;
      v25 = *v8;
LABEL_73:
      *v22 = *v16;
      goto LABEL_74;
    }

    v22 = &v11[v14];
    v23 = (*a3)(v8, v22);
    v24 = (*a3)(v9, v8);
    if ((v23 & 1) == 0)
    {
      if (!v24)
      {
        goto LABEL_75;
      }

      v27 = *v8;
      if (v8 != v9)
      {
        *v8 = *v9;
      }

      *v9 = v27;
      v16 = v8;
      if (((*a3)(v8, v22) & 1) == 0)
      {
        goto LABEL_75;
      }

      v25 = *v22;
      goto LABEL_73;
    }

    v25 = *v22;
    if (v24)
    {
      v16 = v9;
      if (v22 == v9)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    *v22 = *v8;
    *v8 = v25;
    if (!(*a3)(v9, v8))
    {
      goto LABEL_75;
    }

    v25 = *v8;
    v16 = v9;
    v22 = v8;
    if (v8 != v9)
    {
      goto LABEL_73;
    }

LABEL_74:
    *v16 = v25;
LABEL_75:
    --a4;
    if (a5 & 1) != 0 || ((*a3)(v8 - 1, v8))
    {
      v46 = v10;
      v47 = 0;
      v126 = *v8;
      do
      {
        ++v47;
      }

      while (((*a3)(&v8[v47], &v126) & 1) != 0);
      v48 = &v8[v47];
      v49 = a2;
      v75 = v47 == 1;
      v10 = v46;
      if (v75)
      {
        v49 = a2;
        do
        {
          if (v48 >= v49)
          {
            break;
          }

          --v49;
        }

        while (((*a3)(v49, &v126) & 1) == 0);
      }

      else
      {
        do
        {
          --v49;
        }

        while (!(*a3)(v49, &v126));
      }

      if (v48 >= v49)
      {
        v53 = v48 - 1;
        if (v48 - 1 == v8)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v50 = v48;
        v51 = v49;
        do
        {
          v52 = *v50;
          *v50 = *v51;
          *v51 = v52;
          do
          {
            ++v50;
          }

          while (((*a3)(v50, &v126) & 1) != 0);
          do
          {
            --v51;
          }

          while (!(*a3)(v51, &v126));
        }

        while (v50 < v51);
        v53 = v50 - 1;
        if (v53 == v8)
        {
          goto LABEL_95;
        }
      }

      *v8 = *v53;
LABEL_95:
      if (v53 != &v126)
      {
        *v53 = v126;
      }

      if (v48 < v49)
      {
        goto LABEL_100;
      }

      v54 = sub_183918D58(v8, v53, a3);
      v11 = v53 + 1;
      result = sub_183918D58(v53 + 1, a2, a3);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_100:
        result = sub_183917F88(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v53 + 1;
      }
    }

    else
    {
      v126 = *v8;
      result = (*a3)(&v126, v9);
      if (result)
      {
        v11 = v8;
        do
        {
          result = (*a3)(&v126, ++v11);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v55 = v8 + 1;
        do
        {
          v11 = v55;
          if (v55 >= a2)
          {
            break;
          }

          result = (*a3)(&v126, v55);
          v55 = v11 + 1;
        }

        while (!result);
      }

      v56 = a2;
      if (v11 < a2)
      {
        v56 = a2;
        do
        {
          result = (*a3)(&v126, --v56);
        }

        while ((result & 1) != 0);
      }

      while (v11 < v56)
      {
        v57 = *v11;
        *v11 = *v56;
        *v56 = v57;
        do
        {
          ++v11;
        }

        while (!(*a3)(&v126, v11));
        do
        {
          result = (*a3)(&v126, --v56);
        }

        while ((result & 1) != 0);
      }

      v58 = v11 - 1;
      if (v11 - 1 != v8)
      {
        *v8 = *v58;
      }

      if (v58 != &v126)
      {
        *v58 = v126;
      }

      a5 = 0;
    }
  }

  result = (*a3)(v9, v11);
  if (result)
  {
    v67 = *v11;
    goto LABEL_130;
  }

  return result;
}

BOOL sub_183918D58(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v5 = a1;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        if (v6 != 5)
        {
          goto LABEL_20;
        }

        v8 = a1 + 1;
        v9 = a1 + 2;
        v10 = a1 + 3;
        v11 = a2 - 1;
        v12 = (*a3)(a1 + 1, a1);
        v13 = (*a3)(v5 + 2, v5 + 1);
        if (v12)
        {
          v14 = *v5;
          if (v13)
          {
            v15 = v5 + 2;
            v16 = v5;
LABEL_61:
            *v16 = *v15;
            *v15 = v14;
LABEL_62:
            if ((*a3)(v5 + 3, v5 + 2))
            {
              v51 = *v9;
              *v9 = *v10;
              *v10 = v51;
              if ((*a3)(v5 + 2, v5 + 1))
              {
                v52 = v5[1];
                v5[1] = v5[2];
                v5[2] = v52;
                if ((*a3)(v5 + 1, v5))
                {
                  v53 = *v5;
                  *v5 = v5[1];
                  v5[1] = v53;
                }
              }
            }

            if (!(*a3)(v11, v5 + 3))
            {
              return 1;
            }

            v54 = *v10;
            if (v10 != v11)
            {
              *v10 = *v11;
            }

            *v11 = v54;
            if (!(*a3)(v5 + 3, v5 + 2))
            {
              return 1;
            }

            v55 = *v9;
            *v9 = *v10;
            *v10 = v55;
            goto LABEL_78;
          }

          *v5 = v5[1];
          v5[1] = v14;
          v50 = (*a3)(v5 + 2, v5 + 1);
          v16 = v5 + 1;
          v15 = v5 + 2;
          if (!v50)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_62;
          }

          v39 = v5[1];
          v5[1] = v5[2];
          v5[2] = v39;
          v40 = (*a3)(v5 + 1, v5);
          v16 = v5;
          v15 = v5 + 1;
          if ((v40 & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        v14 = *v16;
        goto LABEL_61;
      }

      v8 = a1 + 1;
      v9 = a1 + 2;
      v30 = a2 - 1;
      v31 = (*a3)(a1 + 1, a1);
      v32 = (*a3)(v5 + 2, v5 + 1);
      if (v31)
      {
        v33 = *v5;
        if (v32)
        {
          v34 = v5 + 2;
          v35 = v5;
LABEL_73:
          *v35 = *v34;
          *v34 = v33;
          goto LABEL_74;
        }

        *v5 = v5[1];
        v5[1] = v33;
        v56 = (*a3)(v5 + 2, v5 + 1);
        v35 = v5 + 1;
        v34 = v5 + 2;
        if (!v56)
        {
LABEL_74:
          if (!(*a3)(v30, v5 + 2))
          {
            return 1;
          }

          v57 = *v9;
          if (v9 != v30)
          {
            *v9 = *v30;
          }

          *v30 = v57;
LABEL_78:
          if ((*a3)(v9, v8))
          {
            v58 = v5[1];
            v5[1] = v5[2];
            v5[2] = v58;
            if ((*a3)(v8, v5))
            {
              v59 = *v5;
              *v5 = v5[1];
              v5[1] = v59;
            }
          }

          return 1;
        }
      }

      else
      {
        if (!v32)
        {
          goto LABEL_74;
        }

        v41 = v5[1];
        v5[1] = v5[2];
        v5[2] = v41;
        v42 = (*a3)(v5 + 1, v5);
        v35 = v5;
        v34 = v5 + 1;
        if ((v42 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      v33 = *v35;
      goto LABEL_73;
    }

    v19 = a1 + 1;
    v20 = a2 - 1;
    v21 = (*a3)(a1 + 1, a1);
    v22 = (*a3)(v20, v5 + 1);
    if (v21)
    {
      v23 = *v5;
      if (v22)
      {
        if (v20 == v5)
        {
          goto LABEL_43;
        }
      }

      else
      {
        *v5 = v5[1];
        v5[1] = v23;
        if (!(*a3)(v20, v5 + 1))
        {
          return 1;
        }

        v23 = *v19;
        ++v5;
        if (v19 == v20)
        {
LABEL_43:
          *v20 = v23;
          return 1;
        }
      }
    }

    else
    {
      if (!v22)
      {
        return 1;
      }

      v36 = *v19;
      if (v19 != v20)
      {
        *v19 = *v20;
      }

      *v20 = v36;
      if (!(*a3)(v5 + 1, v5))
      {
        return 1;
      }

      v23 = *v5;
      v20 = v5 + 1;
    }

    *v5 = *v20;
    goto LABEL_43;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v17 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v18 = *v5;
      if (v17 != v5)
      {
        *v5 = *v17;
      }

      *v17 = v18;
    }

    return 1;
  }

LABEL_20:
  v24 = a1 + 1;
  v25 = (*a3)(a1 + 1, a1);
  v26 = (*a3)(v5 + 2, v5 + 1);
  if (v25)
  {
    v27 = *v5;
    if (v26)
    {
      v28 = v5 + 2;
      v24 = v5 + 2;
      v29 = v5;
LABEL_46:
      *v29 = *v24;
      *v24 = v27;
      goto LABEL_47;
    }

    *v5 = v5[1];
    v5[1] = v27;
    v43 = (*a3)(v5 + 2, v5 + 1);
    v28 = v5 + 2;
    v29 = v5 + 1;
    v24 = v5 + 2;
    if (!v43)
    {
      goto LABEL_47;
    }

LABEL_45:
    v27 = *v29;
    goto LABEL_46;
  }

  v28 = v5 + 2;
  if (v26)
  {
    v37 = v5[1];
    v5[1] = v5[2];
    v5[2] = v37;
    v38 = (*a3)(v5 + 1, v5);
    v28 = v5 + 2;
    v29 = v5;
    if (v38)
    {
      goto LABEL_45;
    }
  }

LABEL_47:
  v44 = v5 + 3;
  if (v5 + 3 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (1)
  {
    if ((*a3)(v44, v28))
    {
      v60 = *v44;
      v47 = v45;
      while (1)
      {
        v48 = v5 + v47;
        *(v5 + v47 + 24) = *(v5 + v47 + 16);
        if (v47 == -16)
        {
          break;
        }

        v47 -= 8;
        if (((*a3)(&v60, v48 + 1) & 1) == 0)
        {
          v49 = (v5 + v47 + 24);
          if (v49 == &v60)
          {
            goto LABEL_49;
          }

          goto LABEL_58;
        }
      }

      v49 = v5;
      if (v5 == &v60)
      {
        goto LABEL_49;
      }

LABEL_58:
      *v49 = v60;
LABEL_49:
      if (++v46 == 8)
      {
        return v44 + 1 == a2;
      }
    }

    v28 = v44;
    v45 += 8;
    if (++v44 == a2)
    {
      return 1;
    }
  }
}

void *sub_1839192AC(void *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  if (v3)
  {
    result[1] = 0;
    v4 = v2[2];
    *result = v4;
    if (v2 + 2 != result)
    {
      result[1] = v2[3];
    }

    v5 = v3 - 1;
    *(a2 + 16) = v3 - 1;
    if (v3 == 1)
    {
      v2[2] = v4;
      if (*(a2 + 32) == 1)
      {
        *(a2 + 32) = v5;
      }

      return result;
    }

    v6 = &v2[2 * v3];
    v7 = *v6;
    v2[2] = *v6;
    v8 = *(v6 + 1);
    v2[3] = v8;
    v9 = v5 >> 1;
    if (v3 < 3)
    {
      v10 = (a2 + 32);
      if (*(a2 + 32) != 2)
      {
        return result;
      }

      goto LABEL_31;
    }

    if (*a2)
    {
      v11 = 1;
      while (1)
      {
        v12 = 2 * v11;
        if (2 * v11 < v5)
        {
          result = (16 * (v12 | 1));
          if (*(result + v2) < *&v2[4 * v11])
          {
            v12 |= 1uLL;
          }
        }

        v13 = &v2[2 * v12];
        if (*v13 >= v7)
        {
          break;
        }

        if (v11 != v12)
        {
          v14 = &v2[2 * v11];
          *v14 = *v13;
          v14[1] = *(v13 + 1);
        }

        v11 = v12;
        if (v12 > v9)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v11 = 1;
      while (1)
      {
        v12 = 2 * v11;
        if (2 * v11 < v5)
        {
          result = (16 * (v12 | 1));
          if (*(result + v2) > *&v2[4 * v11])
          {
            v12 |= 1uLL;
          }
        }

        v15 = &v2[2 * v12];
        if (*v15 <= v7)
        {
          break;
        }

        if (v11 != v12)
        {
          v16 = &v2[2 * v11];
          *v16 = *v15;
          v16[1] = *(v15 + 1);
        }

        v11 = v12;
        if (v12 > v9)
        {
          goto LABEL_30;
        }
      }
    }

    v12 = v11;
LABEL_30:
    v17 = &v2[2 * v12];
    *v17 = v7;
    *(v17 + 1) = v8;
    v10 = (a2 + 32);
    if (*(a2 + 32) == v3)
    {
LABEL_31:
      *v10 = v5;
      v18 = v3 - 2;
      if (v18 > v9)
      {
        if (*a2)
        {
          v19 = v6 - 4;
          do
          {
            if (*v19 > *&v2[2 * v5])
            {
              *v10 = v18;
              v5 = v18;
            }

            --v18;
            v19 -= 2;
          }

          while (v18 > v9);
        }

        else
        {
          v20 = v6 - 4;
          do
          {
            if (*v20 < *&v2[2 * v5])
            {
              *v10 = v18;
              v5 = v18;
            }

            --v18;
            v20 -= 2;
          }

          while (v18 > v9);
        }
      }
    }
  }

  else
  {
    result[1] = 0;
    *result = *v2;
    if (v2 != result)
    {
      result[1] = v2[1];
    }
  }

  return result;
}

uint64_t sub_1839194D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 416;
    sub_183915960(i - 416);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_183919B34(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v4.n128_f32[0] = sub_1836A4100(v3, &v20, v19, 1, 20.0);
  *(a1 + 16) = v4.n128_u32[0];
  v16 = 0;
  v17 = 0;
  __p = 0;
  if (v21 != v20)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v21 - v20) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_18369761C();
  }

  sub_183696ECC(&__p, v18, v4);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((v18[1] - v18[0]) >> 3) <= 2)
  {
    objc_msgSend_bounds(v3, v5, v6, v7, v8, v9);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    CGRectGetMidX(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    CGRectGetMidY(v24);
    operator new();
  }

  if (v21 != v20)
  {
    if (!((0xCCCCCCCCCCCCCCCDLL * ((v21 - v20) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v14[0] = v14;
  v14[1] = v14;
  v14[2] = 0;
  operator new();
}

void sub_18391A7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  sub_183824E44(&a18);
  if (a14)
  {
    operator delete(a14);
    v33 = __p;
    if (!__p)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v33 = __p;
    if (!__p)
    {
LABEL_6:
      if (a31)
      {
        a32 = a31;
        operator delete(a31);
        v34 = a10[6];
        if (!v34)
        {
LABEL_8:
          v35 = *a9;
          if (!*a9)
          {
            goto LABEL_9;
          }

          goto LABEL_12;
        }
      }

      else
      {
        v34 = a10[6];
        if (!v34)
        {
          goto LABEL_8;
        }
      }

      a10[7] = v34;
      operator delete(v34);
      v35 = *a9;
      if (!*a9)
      {
LABEL_9:

        _Unwind_Resume(a1);
      }

LABEL_12:
      a10[4] = v35;
      operator delete(v35);

      _Unwind_Resume(a1);
    }
  }

  a25 = v33;
  operator delete(v33);
  goto LABEL_6;
}

void sub_18391AC04(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC88;
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CHReflowQuery", "", &v26, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_DEFAULT, "END CHReflowQuery", &v26, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v11 = qword_1EA84DC60;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_count(v5, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_count(*(a1 + 32), v18, v19, v20, v21, v22);
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
    v26 = 134218752;
    v27 = v17;
    v28 = 2048;
    v29 = v23;
    v30 = 2048;
    v31 = v24;
    v32 = 2048;
    v33 = v25;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEFAULT, "CHReflowQuery found %ld reflowable lines from %ld intial strokes and location = (%.2f,%.2f)", &v26, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_18391B13C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v11 = objc_msgSend_ancestorIdentifier(v4, v6, v7, v8, v9, v10);
  if (v11 <= objc_msgSend_ancestorIdentifier(v5, v12, v13, v14, v15, v16))
  {
    v23 = objc_msgSend_ancestorIdentifier(v4, v17, v18, v19, v20, v21);
    if (v23 >= objc_msgSend_ancestorIdentifier(v5, v24, v25, v26, v27, v28))
    {
      v22 = 0;
    }

    else
    {
      v22 = -1;
    }
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

void sub_18391B1C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = (*(*a1 + 24))(a1, a2);
  v7 = (*(*a1 + 32))(a1, a2);
  if (v6)
  {
    v13 = v7;
    v24 = 0;
    v25 = &v24;
    v26 = 0x4812000000;
    v27 = sub_18391B460;
    v28 = sub_18391B484;
    v29 = &unk_183A5AC72;
    v31 = 0;
    v32 = 0;
    __p = 0;
    v14 = objc_msgSend_length(v6, v8, v9, v10, v11, v12);
    if (v14 > (v32 - __p) >> 3)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      sub_1836D58DC();
    }

    v20 = objc_msgSend_length(v6, v15, v16, v17, v18, v19);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_18391B49C;
    v23[3] = &unk_1E6DDDFE0;
    v23[4] = &v24;
    v23[5] = v13;
    objc_msgSend_enumerateCodepointsInRange_usingBlock_(v6, v21, 0, v20, v23, v22);
    (*(*a1 + 40))(a1, a2, v25 + 6);
    _Block_object_dispose(&v24, 8);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }
}

void sub_18391B430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_18391B460(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_18391B484(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_18391B49C(uint64_t a1, unsigned int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v6 = *(v3 + 8);
  v4 = v3 + 8;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 != v4 && *(v7 + 32) <= a2)
  {
    v12 = *(*(a1 + 32) + 8);
    v14 = v12[7];
    v13 = v12[8];
    if (v14 >= v13)
    {
      v15 = v12[6];
      v16 = v14 - v15;
      v17 = (v14 - v15) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        sub_1836D58DC();
      }

      v19 = v13 - v15;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        sub_183688F00();
      }

      v21 = v17;
      v22 = (8 * v17);
      v23 = *(v7 + 40);
      v24 = &v22[-v21];
      *v22 = v23;
      v25 = v22 + 1;
      memcpy(v24, v15, v16);
      v12[6] = v24;
      v12[7] = v25;
      v12[8] = 0;
      if (v15)
      {
        operator delete(v15);
      }

      v12[7] = v25;
    }

    else
    {
      *v14 = *(v7 + 40);
      v12[7] = v14 + 8;
    }
  }

  else
  {
LABEL_9:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC98;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v26[0] = 67109120;
      v26[1] = a2;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "Model: Got unknown codepoint %u", v26, 8u);
    }
  }
}

__CFString *sub_18391BF68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = &stru_1EF1C0318;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_13;
      }

      v7 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4, a5, a6);
      v10 = objc_msgSend_localizedStringForKey_value_table_(v7, v11, @"Initial", &stru_1EF1C0318, 0, v12);
    }

    else
    {
      v7 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4, a5, a6);
      v10 = objc_msgSend_localizedStringForKey_value_table_(v7, v17, @"Unknown", &stru_1EF1C0318, 0, v18);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v7 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4, a5, a6);
        v10 = objc_msgSend_localizedStringForKey_value_table_(v7, v13, @"Accumulating", &stru_1EF1C0318, 0, v14);
        break;
      case 3:
        v7 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4, a5, a6);
        v10 = objc_msgSend_localizedStringForKey_value_table_(v7, v15, @"Processing", &stru_1EF1C0318, 0, v16);
        break;
      case 4:
        v7 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4, a5, a6);
        v10 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"Finished", &stru_1EF1C0318, 0, v9);
        break;
      default:
        goto LABEL_13;
    }
  }

  v6 = v10;

LABEL_13:

  return v6;
}

void sub_18391CD30(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_msgSend_visibleStrokeEncodedIdentifiers(*(a1 + 24), v3, v4, v5, v6, v7);
      v10 = *(a1 + 32);
      v9 = (a1 + 32);
      if (v8 == v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
      v11 = *(a1 + 32);
      v9 = (a1 + 32);
      if (!v11)
      {
LABEL_11:

        objc_autoreleasePoolPop(v2);
        return;
      }
    }

    objc_storeStrong(v9, v8);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC60;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_msgSend_count(*v9, v13, v14, v15, v16, v17);
      v19 = 134217984;
      v20 = v18;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_DEBUG, "stroke provider visible strokes %lu", &v19, 0xCu);
    }

    goto LABEL_11;
  }
}

void sub_18391CE90(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_USER_INITIATED, 0);

  v3 = dispatch_queue_create_with_target_V2("com.apple.CoreHandwriting.RecognitionSessionCanvasTaskHighResponsiveness", attr, qword_1EA84D1D0);
  v4 = qword_1EA84D1C8;
  qword_1EA84D1C8 = v3;

  v5 = dispatch_workloop_create("com.apple.CoreHandwriting.RecognitionSessionCanvasTaskSharedWorkloop");
  v6 = qword_1EA84D1D0;
  qword_1EA84D1D0 = v5;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, *(*(a1 + 32) + 152), 0);

  v9 = dispatch_queue_create_with_target_V2("com.apple.CoreHandwriting.RecognitionSessionCanvasTaskForeground", v8, qword_1EA84D1D0);
  v10 = qword_1EA84D1B8;
  qword_1EA84D1B8 = v9;

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_attr_make_with_qos_class(v11, *(*(a1 + 32) + 152), -15);

  v13 = dispatch_queue_create_with_target_V2("com.apple.CoreHandwriting.RecognitionSessionCanvasTaskBackground", v12, qword_1EA84D1D0);
  v14 = qword_1EA84D1C0;
  qword_1EA84D1C0 = v13;
}

void sub_18391CFE8(uint64_t a1)
{
  v1 = dispatch_queue_create("com.apple.CoreHandwriting.RecognitionSessionTextInputTaskSharedTarget", *(a1 + 32));
  v2 = qword_1EA84D1E0;
  qword_1EA84D1E0 = v1;
}

void sub_18391D028(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    label = dispatch_queue_get_label(0);
    if (strcmp(label, "com.apple.CoreHandwriting.RecognitionSession"))
    {
      v5 = *(a1 + 312);
      if (v5)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_18391D114;
        block[3] = &unk_1E6DDC908;
        v7 = v3;
        dispatch_sync(v5, block);

        return;
      }
    }

    v3[2](v3);
  }
}

void sub_18391D1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  v11 = v10;

  a10.super_class = CHRecognitionSession;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_18391D218(uint64_t a1, int a2, int a3)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v6 = qword_1EA84D1F0;
      objc_sync_enter(v6);
      if (qword_1EA84D1F0)
      {
        v11 = objc_msgSend_indexesOfObjectsPassingTest_(qword_1EA84D1F0, v7, &unk_1EF1BF378, v8, v9, v10);
        objc_msgSend_removeObjectsAtIndexes_(qword_1EA84D1F0, v12, v11, v13, v14, v15);
      }

      objc_sync_exit(v6);
    }

    if (a3)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v16 = *(a1 + 336);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v46, v60, 16, v18);
      if (v24)
      {
        v25 = *v47;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v47 != v25)
            {
              objc_enumerationMutation(v16);
            }

            objc_msgSend_cancel(*(*(&v46 + 1) + 8 * i), v19, v20, v21, v22, v23, v46);
          }

          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v46, v60, 16, v23);
        }

        while (v24);
      }

      objc_msgSend_removeAllObjects(*(a1 + 336), v27, v28, v29, v30, v31);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v32 = qword_1EA84DC60;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 336);
      v39 = objc_msgSend_count(v33, v34, v35, v36, v37, v38);
      v45 = objc_msgSend_count(qword_1EA84D1F0, v40, v41, v42, v43, v44);
      *buf = 134219008;
      v51 = a1;
      v52 = 1024;
      v53 = a3;
      v54 = 1024;
      v55 = a2;
      v56 = 2048;
      v57 = v39;
      v58 = 2048;
      v59 = v45;
      _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_DEFAULT, "Cancelled tasks on session %p: foreground ? %d, background ? %d. Remaining activeTasks: %ld, sharedBackgroundTasks: %ld", buf, 0x2Cu);
    }
  }
}

void sub_18391D440(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18391D45C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18391D5E4(void **a1, void *a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (a3)
  {
    if (qword_1EA84D1F8 != -1)
    {
      dispatch_once(&qword_1EA84D1F8, &unk_1EF1BF358);
    }

    v10 = qword_1EA84D1F0;
    objc_sync_enter(v10);
    objc_msgSend_addObject_(qword_1EA84D1F0, v11, v9, v12, v13, v14);
    objc_sync_exit(v10);
  }

  else
  {
    objc_msgSend_addObject_(a1[42], v5, v9, v6, v7, v8);
    objc_msgSend_setActive(a1, v15, v16, v17, v18, v19);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v20 = qword_1EA84DC60;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = a1[42];
    v32 = 134219008;
    v33 = v9;
    v34 = 1024;
    v35 = a3;
    v36 = 2048;
    v37 = a1;
    v38 = 2048;
    v39 = objc_msgSend_count(v21, v22, v23, v24, v25, v26);
    v40 = 2048;
    v41 = objc_msgSend_count(qword_1EA84D1F0, v27, v28, v29, v30, v31);
    _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_DEFAULT, "Registered a new task %p (isBackground=%d) on session %p, activeTasks: %ld, sharedBackgroundTasks: %ld", &v32, 0x30u);
  }
}

void sub_18391D7B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_18391D7E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4, a5, a6);
  v7 = qword_1EA84D1F0;
  qword_1EA84D1F0 = v6;
}

void sub_18391D828(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (a1)
  {
    v9 = objc_msgSend_count(*(a1 + 336), v3, v4, v5, v6, v7);
    v15 = objc_msgSend_count(qword_1EA84D1F0, v10, v11, v12, v13, v14);
    v16 = qword_1EA84D1F0;
    objc_sync_enter(v16);
    objc_msgSend_removeObject_(qword_1EA84D1F0, v17, v8, v18, v19, v20);
    objc_sync_exit(v16);

    objc_msgSend_removeObject_(*(a1 + 336), v21, v8, v22, v23, v24);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DC60;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 336);
      v37 = 134219264;
      v38 = v8;
      v39 = 2048;
      v40 = a1;
      v41 = 2048;
      v42 = v9;
      v43 = 2048;
      v44 = objc_msgSend_count(v26, v27, v28, v29, v30, v31);
      v45 = 2048;
      v46 = v15;
      v47 = 2048;
      v48 = objc_msgSend_count(qword_1EA84D1F0, v32, v33, v34, v35, v36);
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_DEFAULT, "Removed a task %p on session %p, activeTasks: %ld -> %ld, sharedBackgroundTasks: %ld -> %ld", &v37, 0x3Eu);
    }
  }
}

void sub_18391D9D4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

uint64_t sub_18391DA14(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  shouldCancelTaskGivenNewTask = objc_msgSend_shouldCancelTaskGivenNewTask_(v3, v4, *(a1 + 32), v5, v6, v7);
  if (shouldCancelTaskGivenNewTask)
  {
    objc_msgSend_cancel(v3, v8, v9, v10, v11, v12);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC60;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_msgSend_status(v3, v15, v16, v17, v18, v19);
      v21 = *(a1 + 32);
      v23 = 134218496;
      v24 = v3;
      v25 = 2048;
      v26 = v20;
      v27 = 2048;
      v28 = v21;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "Canceling task %p (status = %ld) from the background shared queue given new task %p", &v23, 0x20u);
    }
  }

  return shouldCancelTaskGivenNewTask;
}

BOOL sub_18391DB5C(uint64_t a1, void *a2)
{
  v2 = a2;
  v13 = objc_msgSend_status(v2, v3, v4, v5, v6, v7);
  if (v13 == 1)
  {
    objc_msgSend_cancel(v2, v8, v9, v10, v11, v12);
  }

  return v13 == 1;
}

void sub_18391DBB8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v17 = a5;
  if (a1)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v12, v13, v14, v15, v16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_18391DCE8;
    block[3] = &unk_1E6DDFEE8;
    v24 = v18;
    v20 = v11;
    v21 = a1;
    v22 = v10;
    v23 = v17;
    dispatch_async(v9, block);
  }
}

void sub_18391DCE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], a2, a3, a4, a5, a6);
  objc_msgSend_floatForKey_(v7, v8, @"CHRecognitionTaskQueuingOverhead", v9, v10, v11);
  v13 = v12;

  if (v13 > 0.0)
  {
    if (qword_1EA84DC48 == -1)
    {
      v19 = qword_1EA84DC60;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
LABEL_5:

        sleep(v13);
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v19 = qword_1EA84DC60;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }
    }

    v20 = *(a1 + 32);
    v39 = 138412546;
    v40 = v20;
    v41 = 2048;
    v42 = v13;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_DEFAULT, "Dispatch task %@ about to get started, waiting for explicit overhead of %0.1fs before starting.", &v39, 0x16u);
    goto LABEL_5;
  }

LABEL_6:
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v14, v15, v16, v17, v18);
  v22 = v21;
  v23 = *(a1 + 64);
  if (qword_1EA84DC48 == -1)
  {
    v24 = qword_1EA84DC60;
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v24 = qword_1EA84DC60;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
LABEL_8:
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v39 = 138413058;
    v40 = v25;
    v41 = 2048;
    v42 = v26;
    v43 = 2112;
    v44 = v27;
    v45 = 2048;
    v46 = v22 - v23;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_DEFAULT, "Starting task %@ for session %p on queue %@ after queuing time = %.3f seconds", &v39, 0x2Au);
  }

LABEL_9:

  (*(*(a1 + 56) + 16))();
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v28, v29, v30, v31, v32);
  v34 = v33;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v35 = qword_1EA84DC60;
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v35 = qword_1EA84DC60;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
LABEL_11:
    v36 = *(a1 + 32);
    v37 = *(a1 + 40);
    v38 = *(a1 + 48);
    v39 = 138413058;
    v40 = v36;
    v41 = 2048;
    v42 = v37;
    v43 = 2112;
    v44 = v38;
    v45 = 2048;
    v46 = v34 - v22;
    _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_DEFAULT, "Ending task %@ for session %p on queue %@ after running time = %.3f seconds", &v39, 0x2Au);
  }

LABEL_12:
}

void sub_18391E130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18391E158(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v128 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 168);
  if (v7 != v8 && (objc_msgSend_isEqualToArray_(v7, a2, v8, a4, a5, a6) & 1) == 0)
  {
    v14 = objc_msgSend_copy(*(a1 + 32), v9, v10, v11, v12, v13);
    v15 = a1;
    v17 = *(a1 + 40);
    v16 = a1 + 40;
    v18 = *(v17 + 168);
    *(v17 + 168) = v14;

    v24 = objc_msgSend_count(*(*v16 + 200), v19, v20, v21, v22, v23);
    v25 = objc_opt_class();
    v111 = v15;
    newValue = objc_msgSend_effectiveLocalesFromLocales_(v25, v26, *(v15 + 32), v27, v28, v29);
    if (*v16)
    {
      v34 = *(*v16 + 200);
    }

    else
    {
      v34 = 0;
    }

    if ((objc_msgSend_isEqualToArray_(newValue, v30, v34, v31, v32, v33) & 1) == 0)
    {
      objc_setProperty_nonatomic_copy(*(v15 + 40), v35, newValue, 200);
      objc_msgSend_setObject_forKeyedSubscript_(*(*(v15 + 40) + 120), v36, *(*(v15 + 40) + 200), CHRecognitionOptionModelInputLocales, v37, v38);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v39 = qword_1EA84DC60;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(v15 + 40);
        v44 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(*(v15 + 32), v40, @", ", &unk_1EF1BF398, v41, v42);
        v48 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(newValue, v45, @", ", &unk_1EF1BF3B8, v46, v47);
        *buf = 134218498;
        v123 = v43;
        v124 = 2112;
        v125 = v44;
        v126 = 2112;
        v127 = v48;
        _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_DEFAULT, "Configuring RecognitionSession %p with preferred locales: %@. Effective locales: %@.", buf, 0x20u);
      }

      v54 = *(v15 + 40);
      if (v24 && v54)
      {
        v55 = *(v54 + 200);
        if (v55)
        {
          v56 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v49, v55, v51, v52, v53);
        }

        else
        {
          v56 = 0;
        }

        objc_msgSend_allKeys(*(v54 + 208), v49, v55, v51, v52, v53);
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v58 = v118 = 0u;
        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v117, buf, 16, v60);
        if (v65)
        {
          v66 = *v118;
          do
          {
            for (i = 0; i != v65; ++i)
            {
              if (*v118 != v66)
              {
                objc_enumerationMutation(v58);
              }

              v68 = *(*(&v117 + 1) + 8 * i);
              if ((objc_msgSend_containsObject_(v56, v61, v68, v62, v63, v64) & 1) == 0)
              {
                v69 = *(v54 + 208);
                objc_msgSend_removeObjectForKey_(v69, v70, v68, v71, v72, v73);
              }
            }

            v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v117, buf, 16, v64);
          }

          while (v65);
        }

        v74 = *(v54 + 200);
        objc_opt_self();
        v78 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v74, v75, @".", &unk_1EF1BF3F8, v76, v77);

        v79 = v78;
        objc_msgSend_allKeys(*(v54 + 224), v80, v81, v82, v83, v84);
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v85 = v114 = 0u;
        v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v113, v121, 16, v87);
        if (v92)
        {
          v93 = *v114;
          if (v79)
          {
            do
            {
              for (j = 0; j != v92; ++j)
              {
                if (*v114 != v93)
                {
                  objc_enumerationMutation(v85);
                }

                v95 = *(*(&v113 + 1) + 8 * j);
                if ((objc_msgSend_isEqualToString_(v95, v88, v79, v89, v90, v91) & 1) == 0)
                {
                  v96 = *(v54 + 224);
                  objc_msgSend_removeObjectForKey_(v96, v97, v95, v98, v99, v100);
                }
              }

              v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v88, &v113, v121, 16, v91);
            }

            while (v92);
          }

          else
          {
            do
            {
              for (k = 0; k != v92; ++k)
              {
                if (*v114 != v93)
                {
                  objc_enumerationMutation(v85);
                }

                v102 = *(*(&v113 + 1) + 8 * k);
                v103 = *(v54 + 224);
                objc_msgSend_removeObjectForKey_(v103, v104, v102, v105, v106, v107);
              }

              v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v108, &v113, v121, 16, v109);
            }

            while (v92);
          }
        }

        v57 = v111;
        v54 = *(v111 + 40);
      }

      else
      {
        v57 = v15;
      }

      if (v54)
      {
        v110 = *(v54 + 176);
        if (v110)
        {
          LOBYTE(v110) = objc_msgSend_count(*(v54 + 168), v49, v50, v51, v52, v53) != 0;
        }
      }

      else
      {
        LOBYTE(v110) = 0;
      }

      *(*(*(v57 + 48) + 8) + 24) = v110;
    }
  }
}

id sub_18391E6D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a2, a2, a3, a4, a5, a6);

  return v6;
}

id sub_18391E704(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a2, a2, a3, a4, a5, a6);

  return v6;
}

void sub_18391E81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18391E844(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 32);
  v7 = *(result + 40);
  if (v6 != *(v7 + 176))
  {
    v8 = result;
    *(v7 + 176) = v6;
    v9 = *(result + 40);
    if (v9)
    {
      if (*(v9 + 176))
      {
        result = objc_msgSend_count(*(v9 + 168), a2, a3, a4, a5, a6);
        LOBYTE(v9) = result != 0;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    *(*(*(v8 + 48) + 8) + 24) = v9;
  }

  return result;
}

void sub_18391E998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_18391E9B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18391EAAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_18391F564;
    v5[3] = &unk_1E6DDCE50;
    v5[4] = a1;
    v6 = v3;
    sub_18391D028(a1, v5);
  }
}

void sub_18391EC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18391EDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18391F0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18391F364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18391F4F0(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_recognitionSessionDidChangeStatus_(v7, v3, *(a1 + 32), v4, v5, v6);
  }
}

void sub_18391F564(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[35];
  }

  v3 = v2;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v21, v25, 16, v5);
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        if (v11)
        {
          v12 = v11;
          v14 = *(a1 + 32);
          v13 = *(a1 + 40);
          v15 = *(v14 + 320);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = sub_18391F724;
          v18[3] = &unk_1E6DDFF38;
          v18[4] = v14;
          v18[5] = v12;
          v16 = v13;
          v19 = v12;
          v20 = v16;
          v17 = v12;
          dispatch_async(v15, v18);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v21, v25, 16, v7);
    }

    while (v8);
  }
}

void sub_18391F724(void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 312);
  }

  else
  {
    v3 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18391F814;
  block[3] = &unk_1E6DDC378;
  block[6] = &v6;
  v4 = a1[5];
  block[4] = v2;
  block[5] = v4;
  dispatch_sync(v3, block);
  if (*(v7 + 24) == 1)
  {
    (*(a1[7] + 16))();
  }

  _Block_object_dispose(&v6, 8);
}

void sub_18391F814(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[35];
  }

  v7 = v2;
  *(*(a1[6] + 8) + 24) = objc_msgSend_containsObject_(v7, v3, a1[5], v4, v5, v6);
}

uint64_t sub_18391F88C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  *a4 = objc_msgSend_isNonRecognitionTask(v5, v6, v7, v8, v9, v10) ^ 1;
  LODWORD(a4) = objc_msgSend_isNonRecognitionTask(v5, v11, v12, v13, v14, v15);

  return a4 ^ 1;
}

void sub_18391FB64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = objc_msgSend_q_needsForegroundRecognition(a1, a2, a3, a4, a5, a6);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v8 = qword_1EA84DC60;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 336);
      v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);
      v16 = *(a1 + 144);
      v22 = objc_msgSend_strokeProviderVersion(*(a1 + 8), v17, v18, v19, v20, v21);
      v23 = v22;
      v24 = "N";
      v26 = 134219010;
      v27 = a1;
      if (v7)
      {
        v24 = "Y";
      }

      v25 = @"N";
      v28 = 2048;
      v29 = v15;
      v30 = 2080;
      v31 = v24;
      v32 = 2112;
      if (v16)
      {
        v25 = @"Y";
      }

      v33 = v25;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p cancelOngoingRequests. Cancelling %ld pending tasks. Foreground: %s. hasUnprocessedChanges %@->N. Last saved result for version: %@", &v26, 0x34u);
    }

    sub_18391D218(a1, v7 ^ 1, 1);
    ++*(a1 + 272);
    *(a1 + 144) = 0;
  }
}

void sub_18391FF90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v192 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  if (v7 && *(v7 + 176) && objc_msgSend_count(*(v7 + 168), a2, a3, a4, a5, a6))
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      goto LABEL_14;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "dataSource %@ returned a nil strokeProviderSnapshot.", buf, 0xCu);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      goto LABEL_14;
    }

    if (qword_1EA84DC48 == -1)
    {
      v15 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
LABEL_13:

        v12 = *(a1 + 40);
LABEL_14:
        objc_msgSend__setLatestStrokeProvider_(*(a1 + 32), v8, v12, v9, v10, v11);
        objc_msgSend__setLatestCalculateDocumentProvider_(*(a1 + 32), v17, *(a1 + 56), v18, v19, v20);
        v26 = *(a1 + 32);
        if (v26)
        {
          objc_setProperty_atomic(v26, v21, *(a1 + 64), 216);
          v26 = *(a1 + 32);
        }

        if (!objc_msgSend_mode(v26, v21, v22, v23, v24, v25))
        {
          sub_18391CD30(*(a1 + 32));
          v27 = *(a1 + 32);
          if (v27)
          {
            v28 = *(v27 + 72);
            if (v28)
            {
              *(v27 + 72) = 0;
            }

            v29 = *(v27 + 80);
            if (v29)
            {
              *(v27 + 80) = 0;
            }
          }
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v30 = qword_1EA84DC60;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 32);
          v37 = objc_msgSend_strokeProviderVersion(*(a1 + 40), v31, v32, v33, v34, v35);
          *buf = 134218242;
          *&buf[4] = v36;
          *&buf[12] = 2112;
          *&buf[14] = v37;
          _os_log_impl(&dword_18366B000, v30, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p received request to rebuild recognition results. Stroke provider version: %@", buf, 0x16u);
        }

        sub_18391FB64(*(a1 + 32), v38, v39, v40, v41, v42);
        if (*(*(a1 + 32) + 8))
        {
          v47 = objc_alloc_init(CHStrokeClutterFilter);
          v53 = objc_msgSend_strokeGroupingResult(*(*(a1 + 32) + 8), v48, v49, v50, v51, v52);
          v188 = objc_msgSend_strokeGroups(v53, v54, v55, v56, v57, v58);

          v59 = [CHStrokeGroupingResult alloc];
          v65 = objc_msgSend_set(MEMORY[0x1E695DFD8], v60, v61, v62, v63, v64);
          v187 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v59, v66, v65, 0, v188, v67);

          v68 = [CHStrokeClassificationResult alloc];
          v74 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v69, v70, v71, v72, v73);
          v80 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v75, v76, v77, v78, v79);
          v86 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v81, v82, v83, v84, v85);
          v92 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v87, v88, v89, v90, v91);
          v98 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v93, v94, v95, v96, v97);
          v104 = objc_msgSend_set(MEMORY[0x1E695DFD8], v99, v100, v101, v102, v103);
          v186 = objc_msgSend_initWithStrokeClassificationsByStrokeIdentifier_scriptClassificationsByStrokeIdentifier_scriptClassificationRawResultsByStrokeIdentifier_substrokesByStrokeIdentifier_midYPositionByStrokeIdentifier_nontextCandidates_(v68, v105, v74, v80, v86, v92, v98, v104);

          v106 = [CHRecognitionSessionResult alloc];
          v112 = objc_msgSend_strokeProviderVersion(*(*(a1 + 32) + 8), v107, v108, v109, v110, v111);
          v118 = objc_msgSend_encodedStrokeProviderVersion(*(*(a1 + 32) + 8), v113, v114, v115, v116, v117);
          v124 = objc_msgSend_orderedStrokeIdentifiers(*(*(a1 + 32) + 8), v119, v120, v121, v122, v123);
          v130 = objc_msgSend_sessionMode(*(*(a1 + 32) + 8), v125, v126, v127, v128, v129);
          v136 = objc_msgSend_locales(*(*(a1 + 32) + 8), v131, v132, v133, v134, v135);
          v142 = objc_msgSend_preferredLocales(*(*(a1 + 32) + 8), v137, v138, v139, v140, v141);
          v148 = objc_msgSend_declaredVariables(*(a1 + 56), v143, v144, v145, v146, v147);
          v191 = 0;
          v190 = 0u;
          memset(buf, 0, sizeof(buf));
          v154 = objc_msgSend_recognitionEnvironment(*(a1 + 32), v149, v150, v151, v152, v153);
          AutoRefineResult_generationDuration_recognitionEnvironment = objc_msgSend_initWithStrokeProviderVersion_encodedStrokeProviderVersion_orderedStrokeIdentifiers_sessionMode_locales_preferredLocales_declaredVariables_clutterFilter_strokeClassificationResult_strokeGroupingResult_unprocessedStrokeGroupingResult_tilingResult_documentLayoutAnalysisResult_recognitionResults_rawRecognitionResults_inlineContinuousModeResults_autoRefineResults_lastAutoRefineResult_generationDuration_recognitionEnvironment_(v106, v155, v112, v118, v124, v130, v136, v142, v148, v47, v186, v187, v187, 0, 0, 0, 0, 0, 0, 0, buf, v154);

          v157 = AutoRefineResult_generationDuration_recognitionEnvironment;
          objc_msgSend__setLastRecognitionResult_(*(a1 + 32), v158, AutoRefineResult_generationDuration_recognitionEnvironment, v159, v160, v161);
        }

        else
        {
          v157 = 0;
          objc_msgSend__setLastRecognitionResult_(*(a1 + 32), v43, 0, v44, v45, v46);
        }

        objc_msgSend__setLastRecognitionResult_(*(a1 + 32), v162, 0, v163, v164, v165);
        v170 = *(a1 + 32);
        if (v170)
        {
          v171 = *(v170 + 72);
          if (!v171 || (*(v170 + 72) = 0, v171, (v170 = *(a1 + 32)) != 0))
          {
            v172 = *(v170 + 80);
            if (v172)
            {
              *(v170 + 80) = 0;
            }
          }
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v173 = qword_1EA84DC60;
        if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
        {
          v174 = *(a1 + 32);
          *buf = 134217984;
          *&buf[4] = v174;
          _os_log_impl(&dword_18366B000, v173, OS_LOG_TYPE_DEBUG, "RecognitionSession %p rebuilding recognition results. Cleared previous results. Will trigger processing soon.", buf, 0xCu);
        }

        v175 = *(a1 + 32);
        if (v175)
        {
          *(v175 + 144) = 1;
          v176 = *(a1 + 32);
        }

        else
        {
          v176 = 0;
        }

        sub_1839207AC(v176, 0);
        v181 = *(a1 + 32);
        if (v181)
        {
          if (objc_msgSend_indexOfObjectPassingTest_(*(v181 + 336), v177, &unk_1EF1BF3D8, v178, v179, v180) == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (*(v181 + 144))
            {
              objc_msgSend__setStatus_(v181, v182, 2, v183, v184, v185);
            }

            else if (*(v181 + 8))
            {
              objc_msgSend__setStatus_(v181, v182, 4, v183, v184, v185);
            }

            else
            {
              objc_msgSend__setStatus_(v181, v182, 1, v183, v184, v185);
            }
          }

          else
          {
            objc_msgSend__setStatus_(v181, v182, 3, v183, v184, v185);
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v15 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_13;
      }
    }

    v16 = *(a1 + 48);
    *buf = 138412290;
    *&buf[4] = v16;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_FAULT, "dataSource %@ returned a nil strokeProviderSnapshot.", buf, 0xCu);
    goto LABEL_13;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v157 = qword_1EA84DC60;
  if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
  {
    v166 = *(a1 + 32);
    v167 = *(a1 + 48);
    v168 = *(v166 + 200);
    v169 = *(v166 + 168);
    *buf = 134218754;
    *&buf[4] = v166;
    *&buf[12] = 2112;
    *&buf[14] = v167;
    *&buf[22] = 2112;
    *&buf[24] = v168;
    LOWORD(v190) = 2112;
    *(&v190 + 2) = v169;
    _os_log_impl(&dword_18366B000, v157, OS_LOG_TYPE_ERROR, "RecognitionSession %p cannot process rebuildRecognitionResults request. dataSource: %@, text recognition locales: %@, preferred locales: %@.", buf, 0x2Au);
  }

LABEL_52:
}

void sub_1839207AC(void *a1, int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  label = dispatch_queue_get_label(0);
  if (strcmp(label, "com.apple.CoreHandwriting.RecognitionSession"))
  {
    if (qword_1EA84DC48 == -1)
    {
      v5 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v5 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    *buf = 136315650;
    v37 = "[CHRecognitionSession q_scheduleProcessStrokeProviderChangesImmediately:]";
    v38 = 2080;
    v39 = "com.apple.CoreHandwriting.RecognitionSession";
    v40 = 2080;
    v41 = dispatch_queue_get_label(0);
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_ERROR, "Method %s should be running on queue %s, found %s.", buf, 0x20u);
    goto LABEL_6;
  }

LABEL_7:
  v6 = dispatch_queue_get_label(0);
  if (!strcmp(v6, "com.apple.CoreHandwriting.RecognitionSession"))
  {
    goto LABEL_12;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v7 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
LABEL_10:
    v8 = dispatch_queue_get_label(0);
    *buf = 136315650;
    v37 = "[CHRecognitionSession q_scheduleProcessStrokeProviderChangesImmediately:]";
    v38 = 2080;
    v39 = "com.apple.CoreHandwriting.RecognitionSession";
    v40 = 2080;
    v41 = v8;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_FAULT, "Method %s should be running on queue %s, found %s.", buf, 0x20u);
  }

LABEL_11:

LABEL_12:
  if (a1[3])
  {
    goto LABEL_21;
  }

  if (qword_1EA84DC48 == -1)
  {
    v9 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v9 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
LABEL_15:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_ERROR, "latestStrokeProvider cannot be nil when scheduling change processing.", buf, 2u);
  }

LABEL_16:

  if (a1[3])
  {
    goto LABEL_21;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v10 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v10 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
LABEL_19:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_FAULT, "latestStrokeProvider cannot be nil when scheduling change processing.", buf, 2u);
  }

LABEL_20:

LABEL_21:
  v11 = a1[34] + 1;
  a1[34] = v11;
  if (a2)
  {
    sub_18392132C(a1);
  }

  else
  {
    v12 = a1[35];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v12;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v32, buf, 16, v15);
    if (v16)
    {
      v17 = 0;
      v18 = *v33;
      v19 = 1.79769313e308;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_preferredRecognitionResultUpdatesInterval(v21, v22, v23, v24, v25, v26);
            if (v19 >= v27)
            {
              v19 = v27;
            }

            v17 = 1;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v22, &v32, buf, 16, v26);
      }

      while (v16);

      if (v17)
      {
        v28 = (v19 * 1000000000.0);
      }

      else
      {
        v28 = 2000000000;
      }
    }

    else
    {

      v28 = 2000000000;
    }

    v29 = dispatch_time(0, v28);
    v30 = a1[39];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_183921BD8;
    v31[3] = &unk_1E6DDC3A0;
    v31[4] = a1;
    v31[5] = v11;
    dispatch_after(v29, v30, v31);
  }
}

void sub_183920C70(uint64_t a1)
{
  v119 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC88;
  v3 = os_signpost_id_generate(v2);

  if (qword_1EA84DC48 == -1)
  {
    v4 = qword_1EA84DC88;
    v5 = v3 - 1;
    if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v4 = qword_1EA84DC88;
    v5 = v3 - 1;
    if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CHRecognitionSessionPrincipalLinesTask", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognitionSessionPrincipalLinesTask", buf, 2u);
  }

  objc_msgSend_main(*(a1 + 32), v7, v8, v9, v10, v11);
  if (qword_1EA84DC48 == -1)
  {
    v12 = qword_1EA84DC88;
    if (v5 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v12 = qword_1EA84DC88;
    if (v5 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_15;
    }
  }

  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v12, OS_SIGNPOST_INTERVAL_END, v3, "CHRecognitionSessionPrincipalLinesTask", "", buf, 2u);
  }

LABEL_15:

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
LABEL_17:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "END CHRecognitionSessionPrincipalLinesTask", buf, 2u);
  }

LABEL_18:

  v19 = objc_msgSend_outputResult(*(a1 + 32), v14, v15, v16, v17, v18);
  v25 = objc_msgSend_cancelled(*(a1 + 32), v20, v21, v22, v23, v24);
  if (v19)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v27 = qword_1EA84DC60;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 40);
      v34 = objc_msgSend_strokeProvider(*(a1 + 32), v28, v29, v30, v31, v32);
      v45 = objc_msgSend_strokeProviderVersion(v34, v35, v36, v37, v38, v39);
      if (*(a1 + 48))
      {
        v46 = "Y";
      }

      else
      {
        v46 = "N";
      }

      v47 = objc_msgSend_cancelled(*(a1 + 32), v40, v41, v42, v43, v44);
      v53 = objc_msgSend_completeness(v19, v48, v49, v50, v51, v52);
      if (v19)
      {
        v54 = "Y";
      }

      else
      {
        v54 = "N";
      }

      *buf = 134219266;
      if (v47)
      {
        v55 = "Y";
      }

      else
      {
        v55 = "N";
      }

      v108 = v33;
      v109 = 2112;
      v110 = v45;
      v111 = 2080;
      v112 = v46;
      v113 = 2080;
      v114 = v55;
      v115 = 2080;
      v116 = v54;
      v117 = 2048;
      v118 = v53;
      _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p finished principal lines task for version: %@. Foreground: %s. Cancelled: %s. Produced result: %s. Completeness level: %ld.", buf, 0x3Eu);
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v27 = qword_1EA84DC60;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v61 = *(a1 + 40);
      v100 = objc_msgSend_strokeProvider(*(a1 + 32), v56, v57, v58, v59, v60);
      v101 = objc_msgSend_strokeProviderVersion(v100, v62, v63, v64, v65, v66);
      if (*(a1 + 48))
      {
        v72 = "Y";
      }

      else
      {
        v72 = "N";
      }

      objc_msgSend_generationDuration(v19, v67, v68, v69, v70, v71);
      v78 = objc_msgSend_strokeGroupingResult(v19, v73, v74, v75, v76, v77);
      v84 = objc_msgSend_strokeGroups(v78, v79, v80, v81, v82, v83);
      v90 = objc_msgSend_count(v84, v85, v86, v87, v88, v89);
      v96 = objc_msgSend_completeness(v19, v91, v92, v93, v94, v95);
      *buf = 134219266;
      v108 = v61;
      v109 = 2112;
      v110 = v101;
      v111 = 2080;
      v112 = v72;
      v113 = 2048;
      v114 = v106;
      v115 = 2048;
      v116 = v90;
      v117 = 2048;
      v118 = v96;
      _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p finished principal lines task for version: %@. Foreground: %s. Duration: %0.3fs. Groups: %ld. Completeness level: %ld.", buf, 0x3Eu);
    }
  }

  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = sub_1839212CC;
  v102[3] = &unk_1E6DDC890;
  v97 = *(a1 + 40);
  v103 = *(a1 + 32);
  v98 = v19;
  v99 = *(a1 + 40);
  v104 = v98;
  v105 = v99;
  sub_18391D028(v97, v102);
}

void sub_1839212CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((objc_msgSend_cancelled(*(a1 + 32), a2, a3, a4, a5, a6) & 1) == 0)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      objc_msgSend__setLastRecognitionResult_(*(a1 + 48), v7, v11, v8, v9, v10);
    }
  }

  objc_msgSend_setDelegate_(*(a1 + 32), v7, 0, v8, v9, v10);
  v12 = *(a1 + 48);
  v13 = *(a1 + 32);

  sub_18391D828(v12, v13);
}

void sub_18392132C(uint64_t a1)
{
  v127 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  label = dispatch_queue_get_label(0);
  if (strcmp(label, "com.apple.CoreHandwriting.RecognitionSession"))
  {
    if (qword_1EA84DC48 == -1)
    {
      v2 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v2 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    *buf = 136315650;
    *&buf[4] = "[CHRecognitionSession q_processPendingStrokeChangesIfAvailable]";
    *&buf[12] = 2080;
    *&buf[14] = "com.apple.CoreHandwriting.RecognitionSession";
    *&buf[22] = 2080;
    v125 = dispatch_queue_get_label(0);
    _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_ERROR, "Method %s should be running on queue %s, found %s.", buf, 0x20u);
    goto LABEL_6;
  }

LABEL_7:
  v3 = dispatch_queue_get_label(0);
  if (!strcmp(v3, "com.apple.CoreHandwriting.RecognitionSession"))
  {
    goto LABEL_12;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v4 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
LABEL_10:
    v5 = dispatch_queue_get_label(0);
    *buf = 136315650;
    *&buf[4] = "[CHRecognitionSession q_processPendingStrokeChangesIfAvailable]";
    *&buf[12] = 2080;
    *&buf[14] = "com.apple.CoreHandwriting.RecognitionSession";
    *&buf[22] = 2080;
    v125 = v5;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_FAULT, "Method %s should be running on queue %s, found %s.", buf, 0x20u);
  }

LABEL_11:

LABEL_12:
  if (*(a1 + 144) == 1)
  {
    *(a1 + 144) = 0;
    v108 = *(a1 + 24);
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v6 = *(a1 + 336);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v115, v119, 16, v8);
    if (v14)
    {
      v15 = *v116;
      v106 = 134218498;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v116 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = *(*(&v115 + 1) + 8 * i);
          if (!objc_msgSend_status(v17, v9, v10, v11, v12, v13, v106))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v18 = qword_1EA84DC60;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v24 = objc_msgSend_strokeProvider(v17, v19, v20, v21, v22, v23);
              v30 = objc_msgSend_strokeProviderVersion(v24, v25, v26, v27, v28, v29);
              v36 = objc_msgSend_strokeProviderVersion(v108, v31, v32, v33, v34, v35);
              *buf = v106;
              *&buf[4] = a1;
              *&buf[12] = 2112;
              *&buf[14] = v30;
              *&buf[22] = 2112;
              v125 = v36;
              _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEBUG, "RecognitionSession %p canceling pending task for version %@, superseded by request for version %@.", buf, 0x20u);
            }

            objc_msgSend_cancel(v17, v37, v38, v39, v40, v41);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v115, v119, 16, v13);
      }

      while (v14);
    }

    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = sub_183921C0C;
    v114[3] = &unk_1E6DDFFB0;
    v114[4] = a1;
    v107 = MEMORY[0x1865E6810](v114);
    v47 = objc_msgSend_q_needsForegroundRecognition(a1, v42, v43, v44, v45, v46);
    v53 = objc_msgSend_q_wantsAutoRefine(a1, v48, v49, v50, v51, v52);
    v54 = *(a1 + 24);
    v60 = objc_msgSend_strokeGroupingOnly(a1, v55, v56, v57, v58, v59);
    v61 = sub_183921D1C(a1, v54, 0, 0, v60, 0, v107, v53);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v62 = qword_1EA84DC60;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v68 = objc_msgSend_strokeProviderVersion(v108, v63, v64, v65, v66, v67);
      *buf = 134218498;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v61;
      *&buf[22] = 2112;
      v125 = v68;
      _os_log_impl(&dword_18366B000, v62, OS_LOG_TYPE_DEBUG, "RecognitionSession %p preparing recognition task %p for version %@.", buf, 0x20u);
    }

    v69 = 304;
    if (v47)
    {
      v69 = 296;
    }

    v70 = *(a1 + v69);
    if (v47)
    {
      v71 = @"ForegroundQueue";
    }

    else
    {
      v71 = @"BackgroundQueue";
    }

    v72 = v70;
    v73 = v71;
    v74 = v72;
    objc_sync_enter(v74);
    if (v47)
    {
      sub_18391D218(a1, 1, 0);
      v75 = a1;
    }

    else
    {
      v76 = v61;
      v77 = qword_1EA84D1F0;
      objc_sync_enter(v77);
      v78 = qword_1EA84D1F0;
      if (qword_1EA84D1F0)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_18391DA14;
        v125 = &unk_1E6DDFEA0;
        v79 = v76;
        v126 = v79;
        v84 = objc_msgSend_indexesOfObjectsPassingTest_(v78, v80, buf, v81, v82, v83);
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v85 = qword_1EA84DC60;
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v91 = objc_msgSend_count(v84, v86, v87, v88, v89, v90);
          *v120 = 134218240;
          v121 = v91;
          v122 = 2048;
          v123 = v79;
          _os_log_impl(&dword_18366B000, v85, OS_LOG_TYPE_DEFAULT, "Canceling %ld tasks from the background shared queue given new task %p", v120, 0x16u);
        }

        objc_msgSend_removeObjectsAtIndexes_(qword_1EA84D1F0, v92, v84, v93, v94, v95);
      }

      objc_sync_exit(v77);

      v75 = a1;
    }

    sub_18391D5E4(v75, v61, v47 ^ 1);
    if (objc_msgSend_indexOfObjectPassingTest_(*(v75 + 336), v96, &unk_1EF1BF3D8, v97, v98, v99) == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*(v75 + 144))
      {
        objc_msgSend__setStatus_(v75, v100, 2, v101, v102, v103);
      }

      else if (*(v75 + 8))
      {
        objc_msgSend__setStatus_(v75, v100, 4, v101, v102, v103);
      }

      else
      {
        objc_msgSend__setStatus_(v75, v100, 1, v101, v102, v103);
      }
    }

    else
    {
      objc_msgSend__setStatus_(v75, v100, 3, v101, v102, v103);
    }

    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = sub_183921FA0;
    v110[3] = &unk_1E6DDFFD8;
    v110[4] = v75;
    v104 = v108;
    v111 = v104;
    v113 = v47;
    v105 = v61;
    v112 = v105;
    sub_18391DBB8(v75, v74, v73, @"FullSessionTask", v110);

    objc_sync_exit(v74);
  }
}

void sub_183921AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  objc_sync_exit(v17);

  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_183921BD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 272) != *(a1 + 40))
    {
      return;
    }

    goto LABEL_3;
  }

  if (!*(a1 + 40))
  {
LABEL_3:
    sub_18392132C(v2);
  }
}

void sub_183921C0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_183921CBC;
  v6[3] = &unk_1E6DDC818;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  sub_18391D028(v4, v6);
}

void sub_183921CBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = v1;
  if (v2)
  {
    v5 = *(v2 + 80);
    v4 = (v2 + 80);
    if (v5 != v3)
    {
      v6 = v3;
      objc_storeStrong(v4, v1);
      v3 = v6;
    }
  }
}

void *sub_183921D1C(uint64_t a1, void *a2, uint64_t a3, char a4, unsigned int a5, void *a6, void *a7, char a8)
{
  v103 = a2;
  v101 = a6;
  v100 = a7;
  v102 = *(a1 + 40);
  v19 = objc_msgSend_mode(a1, v14, v15, v16, v17, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      v24 = *(a1 + 216);
      if (!v24)
      {
        v24 = MEMORY[0x1E695E0F0];
      }

      v25 = v24;
      v26 = [CHRecognitionSessionTextInputTask alloc];
      v27 = *(a1 + 200);
      v28 = *(a1 + 8);
      v34 = objc_msgSend_recognitionEnvironment(a1, v29, v30, v31, v32, v33);
      v36 = objc_msgSend_initWithLocales_strokeProvider_initialTextInputTargets_inputResult_recognitionEnvironment_calculateDocumentProvider_(v26, v35, v27, v103, v25, v28, v34, v102);
      v42 = objc_msgSend_activeTextInputQuery(a1, v37, v38, v39, v40, v41);
      objc_msgSend_setActiveTextInputQuery_(v36, v43, v42, v44, v45, v46);

      v47 = v36;
      objc_msgSend_setDelegate_(v36, v48, a1, v49, v50, v51);
    }

    else
    {
      v47 = 0;
      objc_msgSend_setDelegate_(0, v20, a1, v21, v22, v23);
    }
  }

  else
  {
    v98 = [CHRecognitionSessionTask alloc];
    v61 = objc_msgSend_mode(a1, v56, v57, v58, v59, v60);
    v62 = *(a1 + 200);
    v63 = *(a1 + 168);
    v64 = *(a1 + 8);
    v65 = *(a1 + 152);
    v71 = objc_msgSend_recognitionEnvironment(a1, v66, v67, v68, v69, v70);
    isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine = objc_msgSend_initWithSessionMode_locales_preferredLocales_strokeProvider_calculateDocumentProvider_inputResult_recognitionQOSClass_recognitionEnvironment_isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine_(v98, v72, v61, v62, v63, v103, v102, v64, v65, v71, a4, 0, a3, v101, *(a1 + 120), v100, a8);
    objc_msgSend_setDisableMathTextSwapping_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v74, *(a1 + 128), v75, v76, v77);
    v47 = isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine;
    objc_msgSend_setLeverageAllProvidedVariables_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v78, *(a1 + 129), v79, v80, v81);
    objc_msgSend_setDelegate_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v82, a1, v83, v84, v85);
  }

  objc_msgSend_setStrokeGroupingOnly_(v47, v52, a5, v53, v54, v55);
  v86 = *(a1 + 288);
  v92 = objc_msgSend_count(v86, v87, v88, v89, v90, v91) != 0;
  objc_msgSend_setSaveInputDrawings_(v47, v93, v92, v94, v95, v96);

  return v47;
}

void sub_183921FA0(uint64_t a1)
{
  v238 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC60;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_msgSend_strokeProviderVersion(*(a1 + 40), v3, v4, v5, v6, v7);
    v10 = v9;
    v11 = *(a1 + 56);
    *buf = 134218498;
    if (v11)
    {
      v12 = "Y";
    }

    else
    {
      v12 = "N";
    }

    v219 = v8;
    v220 = 2112;
    v221 = v9;
    v222 = 2080;
    v223 = v12;
    _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p starting task for version: %@. Foreground: %s.", buf, 0x20u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC88;
  v14 = os_signpost_id_generate(v13);

  if (qword_1EA84DC48 == -1)
  {
    v15 = qword_1EA84DC88;
    v16 = v14 - 1;
    if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v15 = qword_1EA84DC88;
    v16 = v14 - 1;
    if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_14;
    }
  }

  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CHRecognitionSessionFullTask", "", buf, 2u);
  }

LABEL_14:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v17 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognitionSessionFullTask", buf, 2u);
  }

  objc_msgSend_main(*(a1 + 48), v18, v19, v20, v21, v22);
  if (qword_1EA84DC48 == -1)
  {
    v23 = qword_1EA84DC88;
    if (v16 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_22;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v23 = qword_1EA84DC88;
    if (v16 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_22;
    }
  }

  if (os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v23, OS_SIGNPOST_INTERVAL_END, v14, "CHRecognitionSessionFullTask", "", buf, 2u);
  }

LABEL_22:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v24 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v24 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
LABEL_24:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_DEFAULT, "END CHRecognitionSessionFullTask", buf, 2u);
  }

LABEL_25:

  v30 = objc_msgSend_outputResult(*(a1 + 48), v25, v26, v27, v28, v29);
  if ((objc_msgSend_cancelled(*(a1 + 48), v31, v32, v33, v34, v35) & 1) != 0 || !v30)
  {
    if (qword_1EA84DC48 == -1)
    {
      v36 = qword_1EA84DC60;
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v36 = qword_1EA84DC60;
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }
    }

    v126 = *(a1 + 32);
    v127 = objc_msgSend_strokeProviderVersion(*(a1 + 40), v121, v122, v123, v124, v125);
    v128 = *(a1 + 56);
    v134 = objc_msgSend_cancelled(*(a1 + 48), v129, v130, v131, v132, v133);
    v135 = "N";
    *buf = 134219010;
    v219 = v126;
    if (v128)
    {
      v136 = "Y";
    }

    else
    {
      v136 = "N";
    }

    v220 = 2112;
    v221 = v127;
    if (v134)
    {
      v137 = "Y";
    }

    else
    {
      v137 = "N";
    }

    v222 = 2080;
    if (v30)
    {
      v135 = "Y";
    }

    v223 = v136;
    v224 = 2080;
    v225 = v137;
    v226 = 2080;
    v227 = v135;
    _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p finished task for version: %@. Foreground: %s. Cancelled: %s. Produced result: %s.", buf, 0x34u);
  }

  else if (qword_1EA84DC48 == -1)
  {
    v36 = qword_1EA84DC60;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
LABEL_29:
      v208 = *(a1 + 32);
      v209 = objc_msgSend_strokeProviderVersion(*(a1 + 40), v37, v38, v39, v40, v41);
      if (*(a1 + 56))
      {
        v47 = "Y";
      }

      else
      {
        v47 = "N";
      }

      v207 = v47;
      objc_msgSend_generationDuration(v30, v42, v43, v44, v45, v46);
      objc_msgSend_generationDuration(v30, v48, v49, v50, v51, v52);
      objc_msgSend_generationDuration(v30, v53, v54, v55, v56, v57);
      v205 = objc_msgSend_strokeGroupingResult(v30, v58, v59, v60, v61, v62);
      v206 = objc_msgSend_strokeGroups(v205, v63, v64, v65, v66, v67);
      v73 = objc_msgSend_count(v206, v68, v69, v70, v71, v72);
      v204 = objc_msgSend_strokeGroupingResult(v30, v74, v75, v76, v77, v78);
      v84 = objc_msgSend_createdStrokeGroups(v204, v79, v80, v81, v82, v83);
      v90 = objc_msgSend_count(v84, v85, v86, v87, v88, v89);
      v96 = objc_msgSend_strokeGroupingResult(v30, v91, v92, v93, v94, v95);
      v102 = objc_msgSend_deletedStrokeGroups(v96, v97, v98, v99, v100, v101);
      v108 = objc_msgSend_count(v102, v103, v104, v105, v106, v107);
      v114 = objc_msgSend_orderedStrokeIdentifiers(v30, v109, v110, v111, v112, v113);
      v120 = objc_msgSend_count(v114, v115, v116, v117, v118, v119);
      *buf = 134220290;
      v219 = v208;
      v220 = 2112;
      v221 = v209;
      v222 = 2080;
      v223 = v207;
      v224 = 2048;
      v225 = v217;
      v226 = 2048;
      v227 = v216;
      v228 = 2048;
      v229 = v215;
      v230 = 2048;
      v231 = v73;
      v232 = 2048;
      v233 = v90;
      v234 = 2048;
      v235 = v108;
      v236 = 2048;
      v237 = v120;
      _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p finished task for version: %@. Foreground: %s. Duration: %0.3fs (%0.3fs G, %0.3fs R). Groups: %ld, created: %ld, deleted: %ld. Total strokes = %ld.", buf, 0x66u);
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v36 = qword_1EA84DC60;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }
  }

LABEL_44:

  v138 = *(a1 + 32);
  v212[0] = MEMORY[0x1E69E9820];
  v212[1] = 3221225472;
  v212[2] = sub_18392293C;
  v212[3] = &unk_1E6DDC818;
  v139 = *(a1 + 48);
  v140 = *(a1 + 32);
  v213 = v139;
  v214 = v140;
  sub_18391D028(v138, v212);
  if ((objc_msgSend_cancelled(*(a1 + 48), v141, v142, v143, v144, v145) & 1) == 0 && v30 && (objc_msgSend_skipPrincipalLines(*(a1 + 32), v146, v147, v148, v149, v150) & 1) == 0 && (objc_msgSend_strokeGroupingOnly(*(a1 + 32), v151, v152, v153, v154, v155) & 1) == 0 && !objc_msgSend_mode(*(a1 + 32), v156, v157, v158, v159, v160))
  {
    v161 = [CHRecognitionSessionTask alloc];
    v167 = objc_msgSend_mode(*(a1 + 32), v162, v163, v164, v165, v166);
    v168 = *(a1 + 32);
    v169 = *(a1 + 40);
    v170 = *(v168 + 200);
    v171 = *(v168 + 168);
    v172 = *(v168 + 40);
    v173 = *(v168 + 152);
    v179 = objc_msgSend_recognitionEnvironment(v168, v174, v175, v176, v177, v178);
    isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine = objc_msgSend_initWithSessionMode_locales_preferredLocales_strokeProvider_calculateDocumentProvider_inputResult_recognitionQOSClass_recognitionEnvironment_isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine_(v161, v180, v167, v170, v171, v169, v172, v30, v173, v179, 0, 0, 3, 0, *(*(a1 + 32) + 120), 0, 0);
    objc_msgSend_setDisableMathTextSwapping_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v182, *(*(a1 + 32) + 128), v183, v184, v185);
    objc_msgSend_setLeverageAllProvidedVariables_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v186, *(*(a1 + 32) + 129), v187, v188, v189);
    objc_msgSend_setDelegate_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v190, *(a1 + 32), v191, v192, v193);
    objc_msgSend_setStrokeGroupingOnly_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v194, 0, v195, v196, v197);
    objc_msgSend_setSaveInputDrawings_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v198, 0, v199, v200, v201);
    v202 = *(a1 + 32);
    v210[0] = MEMORY[0x1E69E9820];
    v210[1] = 3221225472;
    v210[2] = sub_183922A50;
    v210[3] = &unk_1E6DDC818;
    v210[4] = v202;
    v203 = isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine;
    v211 = v203;
    sub_18391D028(v202, v210);
  }
}

void sub_18392293C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((objc_msgSend_cancelled(*(a1 + 32), a2, a3, a4, a5, a6) & 1) == 0)
  {
    v12 = objc_msgSend_outputResult(*(a1 + 32), v7, v8, v9, v10, v11);
    objc_msgSend__setLastRecognitionResult_(*(a1 + 40), v13, v12, v14, v15, v16);
  }

  objc_msgSend_setDelegate_(*(a1 + 32), v7, 0, v9, v10, v11);
  sub_18391D828(*(a1 + 40), *(a1 + 32));
  v21 = *(a1 + 40);
  if (v21)
  {
    if (objc_msgSend_indexOfObjectPassingTest_(*(v21 + 336), v17, &unk_1EF1BF3D8, v18, v19, v20) == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*(v21 + 144))
      {
        v26 = 2;
        v27 = v21;
      }

      else
      {
        if (*(v21 + 8))
        {
          v26 = 4;
        }

        else
        {
          v26 = 1;
        }

        v27 = v21;
      }
    }

    else
    {
      v26 = 3;
      v27 = v21;
    }

    objc_msgSend__setStatus_(v27, v22, v26, v23, v24, v25);
  }
}

void sub_183922A50(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!v1)
  {
    goto LABEL_18;
  }

  label = dispatch_queue_get_label(0);
  if (strcmp(label, "com.apple.CoreHandwriting.RecognitionSession"))
  {
    if (qword_1EA84DC48 == -1)
    {
      v4 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v4 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    *v18 = 136315650;
    *&v18[4] = "[CHRecognitionSession q_runPrincipalLineTask:]";
    *&v18[12] = 2080;
    *&v18[14] = "com.apple.CoreHandwriting.RecognitionSession";
    *&v18[22] = 2080;
    v19 = dispatch_queue_get_label(0);
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "Method %s should be running on queue %s, found %s.", v18, 0x20u);
    goto LABEL_6;
  }

LABEL_7:
  v5 = dispatch_queue_get_label(0);
  if (strcmp(v5, "com.apple.CoreHandwriting.RecognitionSession"))
  {
    if (qword_1EA84DC48 == -1)
    {
      v11 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v11 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }
    }

    v12 = dispatch_queue_get_label(0);
    *v18 = 136315650;
    *&v18[4] = "[CHRecognitionSession q_runPrincipalLineTask:]";
    *&v18[12] = 2080;
    *&v18[14] = "com.apple.CoreHandwriting.RecognitionSession";
    *&v18[22] = 2080;
    v19 = v12;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "Method %s should be running on queue %s, found %s.", v18, 0x20u);
    goto LABEL_11;
  }

LABEL_12:
  v13 = objc_msgSend_q_needsForegroundRecognition(v1, v6, v7, v8, v9, v10);
  sub_18391D5E4(v1, v2, v13 ^ 1);
  v14 = 304;
  if (v13)
  {
    v14 = 296;
  }

  v15 = *&v1[v14];
  if (v13)
  {
    v16 = @"ForegroundQueue";
  }

  else
  {
    v16 = @"BackgroundQueue";
  }

  *v18 = MEMORY[0x1E69E9820];
  *&v18[8] = 3221225472;
  *&v18[16] = sub_183920C70;
  v19 = &unk_1E6DDFF88;
  v20 = v2;
  v21 = v1;
  v22 = v13;
  v17 = v15;
  sub_18391DBB8(v1, v17, v16, @"PrincipalLinesTask", v18);

LABEL_18:
}

id sub_183922D4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a2, a2, a3, a4, a5, a6);

  return v6;
}

void sub_183922E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_183922E84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_data(MEMORY[0x1E695DEF0], a2, a3, a4, a5, a6);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "Unimplemented", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v11 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v12 = 0;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "Unimplemented", v12, 2u);
  }

LABEL_8:
}

void sub_183922FEC()
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v0 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_ERROR, "Unimplemented", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v1 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v1 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v2 = 0;
    _os_log_impl(&dword_18366B000, v1, OS_LOG_TYPE_FAULT, "Unimplemented", v2, 2u);
  }

LABEL_8:
}

void sub_183923344(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_encodedStrokeIdentifier(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

id sub_183923938(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a2, a2, a3, a4, a5, a6);

  return v6;
}

id sub_183924080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a2, a2, a3, a4, a5, a6);

  return v6;
}

void sub_183924404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_183924424(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 264);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  v4 = *(a1 + 40);
  if (*(*(v4 + 8) + 40))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = *(a1 + 40);
    if (isKindOfClass)
    {
      v6 = *(v4 + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;

      v4 = *(a1 + 40);
    }
  }

  if (!*(*(v4 + 8) + 40))
  {
    v8 = objc_alloc_init(CHLineWrapper);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DCA8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v14 = 134217984;
      v15 = v12;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p instantiated a local line wrapper.", &v14, 0xCu);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      objc_storeStrong((v13 + 264), *(*(*(a1 + 40) + 8) + 40));
    }
  }
}

void sub_18392502C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  _Block_object_dispose((v22 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_1839250A0(uint64_t a1)
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC88;
  v3 = os_signpost_id_generate(v2);

  if (qword_1EA84DC48 == -1)
  {
    v4 = qword_1EA84DC88;
    v5 = v3 - 1;
    if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v4 = qword_1EA84DC88;
    v5 = v3 - 1;
    if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CHRecognitionSessionTaskInsights", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v41 = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognitionSessionTaskInsights", v41, 2u);
  }

  objc_msgSend_main(*(a1 + 32), v7, v8, v9, v10, v11);
  if (qword_1EA84DC48 == -1)
  {
    v12 = qword_1EA84DC88;
    if (v5 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v12 = qword_1EA84DC88;
    if (v5 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_15;
    }
  }

  if (os_signpost_enabled(v12))
  {
    *v40 = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v12, OS_SIGNPOST_INTERVAL_END, v3, "CHRecognitionSessionTaskInsights", "", v40, 2u);
  }

LABEL_15:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v13 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
LABEL_17:
    *v39 = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "END CHRecognitionSessionTaskInsights", v39, 2u);
  }

LABEL_18:

  v19 = objc_msgSend_outputResult(*(a1 + 32), v14, v15, v16, v17, v18);
  v25 = objc_msgSend_integerValue(*(a1 + 40), v20, v21, v22, v23, v24);
  v30 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v19, v26, v25, v27, v28, v29);
  v36 = objc_msgSend_inputDrawing(v30, v31, v32, v33, v34, v35);
  v37 = *(*(a1 + 48) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v36;
}

void sub_18392560C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18392562C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 256);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = objc_alloc_init(CHRemoteTextSynthesizer);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);

      objc_storeStrong((v7 + 256), v8);
    }
  }
}

void sub_1839257BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1839257DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 248);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  shouldRunRecognitionLocallyWithEnvironment = objc_msgSend_shouldRunRecognitionLocallyWithEnvironment_(CHRecognitionSession, v4, *(*(a1 + 32) + 184), v5, v6, v7);
  v14 = *(a1 + 40);
  if (*(*(v14 + 8) + 40))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = *(a1 + 40);
    if (((shouldRunRecognitionLocallyWithEnvironment ^ isKindOfClass) & 1) == 0)
    {
      v16 = *(v14 + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = 0;

      v14 = *(a1 + 40);
    }
  }

  if (!*(*(v14 + 8) + 40))
  {
    if (shouldRunRecognitionLocallyWithEnvironment)
    {
      v18 = objc_alloc_init(CHMultiScriptTextSynthesizer);
    }

    else
    {
      v18 = objc_msgSend_remoteTextSynthesizer(*(a1 + 32), v8, v9, v10, v11, v12);
    }

    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = *(*(*(a1 + 40) + 8) + 40);

      objc_storeStrong((v21 + 248), v22);
    }
  }
}

void sub_183925A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_183925A3C(uint64_t *a1)
{
  if (a1[4])
  {
    v2 = [CHTextSynthesizerWithLocaleFallback alloc];
    v6 = objc_msgSend_initWithLocales_baseSynthesizer_(v2, v3, *(a1[5] + 168), a1[4], v4, v5);
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_183925E28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  if (v7 && *(v7 + 176) && objc_msgSend_count(*(v7 + 168), a2, a3, a4, a5, a6))
  {
    v12 = *(a1 + 32);
    if (!v12 || (*(v12 + 144) & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v13 = qword_1EA84DC60;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 32);
        v53 = 134217984;
        v54 = v14;
        _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEBUG, "RecognitionSession %p received needsRecognitionUpdate request. Will trigger processing soon.", &v53, 0xCu);
      }
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      goto LABEL_21;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v16 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      v53 = 138412290;
      v54 = v17;
      _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_ERROR, "dataSource %@ returned a nil strokeProviderSnapshot.", &v53, 0xCu);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
LABEL_21:
      objc_msgSend__setLatestStrokeProvider_(*(a1 + 32), v8, v15, v9, v10, v11);
      objc_msgSend__setLatestCalculateDocumentProvider_(*(a1 + 32), v20, *(a1 + 56), v21, v22, v23);
      objc_msgSend__setLatestCanvasAttachmentProvider_(*(a1 + 32), v24, *(a1 + 64), v25, v26, v27);
      v33 = *(a1 + 32);
      if (v33)
      {
        objc_setProperty_atomic(v33, v28, *(a1 + 72), 216);
        v33 = *(a1 + 32);
      }

      if (!objc_msgSend_mode(v33, v28, v29, v30, v31, v32))
      {
        sub_18391CD30(*(a1 + 32));
        v34 = *(a1 + 32);
        if (!v34)
        {
          goto LABEL_47;
        }

        v35 = *(v34 + 72);
        if (v35)
        {
          *(v34 + 72) = 0;
        }

        v36 = *(v34 + 80);
        if (v36)
        {
          *(v34 + 80) = 0;
        }
      }

      v37 = *(a1 + 32);
      if (v37)
      {
        *(v37 + 144) = 1;
        v38 = *(a1 + 32);
        goto LABEL_31;
      }

LABEL_47:
      v38 = 0;
LABEL_31:
      sub_1839207AC(v38, *(a1 + 80));
      v43 = *(a1 + 32);
      if (v43)
      {
        if (objc_msgSend_indexOfObjectPassingTest_(*(v43 + 336), v39, &unk_1EF1BF3D8, v40, v41, v42) == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (*(v43 + 144))
          {
            objc_msgSend__setStatus_(v43, v44, 2, v45, v46, v47);
          }

          else if (*(v43 + 8))
          {
            objc_msgSend__setStatus_(v43, v44, 4, v45, v46, v47);
          }

          else
          {
            objc_msgSend__setStatus_(v43, v44, 1, v45, v46, v47);
          }
        }

        else
        {
          objc_msgSend__setStatus_(v43, v44, 3, v45, v46, v47);
        }
      }

      return;
    }

    if (qword_1EA84DC48 == -1)
    {
      v18 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
LABEL_20:

        v15 = *(a1 + 40);
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v18 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_20;
      }
    }

    v19 = *(a1 + 48);
    v53 = 138412290;
    v54 = v19;
    _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_FAULT, "dataSource %@ returned a nil strokeProviderSnapshot.", &v53, 0xCu);
    goto LABEL_20;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v48 = qword_1EA84DC60;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = *(a1 + 32);
    v50 = *(a1 + 48);
    v51 = *(v49 + 200);
    v52 = *(v49 + 168);
    v53 = 134218754;
    v54 = v49;
    v55 = 2112;
    v56 = v50;
    v57 = 2112;
    v58 = v51;
    v59 = 2112;
    v60 = v52;
    _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_ERROR, "RecognitionSession %p cannot process needsRecognitionUpdate request. dataSource: %@, text recognition locales: %@.,  preferred locales: %@.", &v53, 0x2Au);
  }
}

uint64_t sub_183926720(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_languageCode(a2, a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32), v9, v10, v11);

  return isEqualToString;
}

void sub_1839268F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  if (v7 && *(v7 + 144) == 1)
  {
    sub_1839207AC(v7, 1);
    v7 = *(a1 + 32);
  }

  v8 = objc_msgSend_q_needsForegroundRecognition(v7, a2, a3, a4, a5, a6);
  v9 = *(a1 + 32);
  v10 = 304;
  if (v8)
  {
    v10 = 296;
    v11 = @"ForegroundQueue";
  }

  else
  {
    v11 = @"BackgroundQueue";
  }

  v12 = *(v9 + v10);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_183926A0C;
  v14[3] = &unk_1E6DDC818;
  v14[4] = v9;
  v15 = *(a1 + 40);
  v13 = v12;
  sub_18391DBB8(v9, v13, v11, @"WaitingPendingRecognitionTasks", v14);
}

void sub_183926A0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 312);
  }

  else
  {
    v2 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_183926AA8;
  block[3] = &unk_1E6DDBE10;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_183926BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183926BEC(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[36];
  }

  v24 = v2;
  v7 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x1E696B098], v3, a1[5], v4, v5, v6);
  objc_msgSend_addObject_(v24, v8, v7, v9, v10, v11);

  v12 = a1[4];
  if (v12)
  {
    v12 = v12[36];
  }

  v25 = v12;
  if (objc_msgSend_count(v25, v13, v14, v15, v16, v17) == 1)
  {
    v22 = a1[4];
    if (*(v22 + 8))
    {
    }

    else
    {
      v23 = objc_msgSend_indexOfObjectPassingTest_(*(v22 + 336), v18, &unk_1EF1BF3D8, v19, v20, v21);

      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
  }
}

void sub_183926E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183926E30(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[36];
  }

  v3 = v2;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_183926FAC;
  v27[3] = &unk_1E6DE0050;
  v28 = *(a1 + 40);
  v8 = objc_msgSend_indexOfObjectPassingTest_(v3, v4, v27, v5, v6, v7);

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      objc_msgSend_removeObjectAtIndex_(*(v13 + 288), v9, v8, v10, v11, v12);
    }

    else
    {
      objc_msgSend_removeObjectAtIndex_(0, v9, v8, v10, v11, v12);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v14 = v14[36];
    }

    v15 = v14;
    if (!objc_msgSend_count(v15, v16, v17, v18, v19, v20))
    {
      v25 = *(a1 + 32);
      if (*(v25 + 8))
      {
      }

      else
      {
        v26 = objc_msgSend_indexOfObjectPassingTest_(*(v25 + 336), v21, &unk_1EF1BF3D8, v22, v23, v24);

        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_14;
        }
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_14;
    }
  }

LABEL_14:
}

uint64_t sub_183926FAC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_msgSend_nonretainedObjectValue(a2, a2, a3, a4, a5, a6);
  v9 = *(a1 + 32);

  if (v8 != v9)
  {
    return 0;
  }

  *a4 = 1;
  return 1;
}

id sub_183927020(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, double a7, double a8)
{
  v307 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v15 = a4;
  v240 = v15;
  v241 = a6;
  v239 = v14;
  if (a1)
  {
    v295 = 0;
    v296 = &v295;
    v297 = 0x2020000000;
    v298 = 0;
    v289 = 0;
    v290 = &v289;
    v291 = 0x3032000000;
    v292 = sub_18391E9B8;
    v293 = sub_18391E9C8;
    v294 = 0;
    v283 = 0;
    v284 = &v283;
    v285 = 0x3032000000;
    v286 = sub_18391E9B8;
    v287 = sub_18391E9C8;
    v288 = 0;
    v277 = 0;
    v278 = &v277;
    v279 = 0x3032000000;
    v280 = sub_18391E9B8;
    v281 = sub_18391E9C8;
    v282 = 0;
    v271 = 0;
    v272 = &v271;
    v273 = 0x3032000000;
    v274 = sub_18391E9B8;
    v275 = sub_18391E9C8;
    v276 = 0;
    v265 = 0;
    v266 = &v265;
    v267 = 0x3032000000;
    v268 = sub_18391E9B8;
    v269 = sub_18391E9C8;
    v270 = 0;
    v16 = *(a1 + 312);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_183928070;
    block[3] = &unk_1E6DE0078;
    v256 = &v277;
    v257 = &v283;
    block[4] = a1;
    v17 = v15;
    v254 = v17;
    v236 = v14;
    v255 = v236;
    v258 = &v289;
    v259 = &v295;
    v263 = a7;
    v264 = a8;
    v260 = &v271;
    v261 = &v265;
    v238 = a3;
    v262 = a3;
    dispatch_sync(v16, block);
    if ((objc_msgSend_shouldForceFastGrouping(a1, v18, v19, v20, v21, v22) & 1) == 0 && v290[5])
    {
LABEL_85:
      if (a5)
      {
        *a5 = v296[3];
      }

      goto LABEL_87;
    }

    if (v241 && v241[2]())
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v23 = qword_1EA84DC60;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_DEFAULT, "Canceling tokenStrokeIdentifiersForContextStrokes request", &buf, 2u);
      }

LABEL_87:
      v228 = v290[5];
LABEL_88:

      _Block_object_dispose(&v265, 8);
      _Block_object_dispose(&v271, 8);

      _Block_object_dispose(&v277, 8);
      _Block_object_dispose(&v283, 8);

      _Block_object_dispose(&v289, 8);
      _Block_object_dispose(&v295, 8);
      goto LABEL_89;
    }

    v24 = v278[5];
    if (objc_msgSend_count(v24, v25, v26, v27, v28, v29))
    {
      v35 = MEMORY[0x1E695DF70];
      v36 = objc_msgSend_count(v24, v30, v31, v32, v33, v34);
      v41 = objc_msgSend_arrayWithCapacity_(v35, v37, v36, v38, v39, v40);
      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v249 = 0u;
      v42 = v24;
      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v249, v306, 16, v44);
      if (v49)
      {
        v50 = *v250;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v250 != v50)
            {
              objc_enumerationMutation(v42);
            }

            v52 = objc_msgSend_strokeIdentifierFromData_(v17, v45, *(*(&v249 + 1) + 8 * i), v46, v47, v48);
            v61 = objc_msgSend_strokeForIdentifier_(v17, v53, v52, v54, v55, v56);
            if (v61)
            {
              objc_msgSend_addObject_(v41, v57, v61, v58, v59, v60);
            }
          }

          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v249, v306, 16, v48);
        }

        while (v49);
      }

      v62 = v42;
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v63 = qword_1EA84DC60;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_DEFAULT, "Visible strokes not available in the stroke provider for fast grouping. Falling back on the ordered strokes.", &buf, 2u);
      }

      v69 = objc_msgSend_orderedStrokes(v17, v64, v65, v66, v67, v68);
      v70 = MEMORY[0x1E695DF70];
      v76 = objc_msgSend_count(v69, v71, v72, v73, v74, v75);
      v62 = objc_msgSend_arrayWithCapacity_(v70, v77, v76, v78, v79, v80);
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      v41 = v69;
      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v81, &v245, v305, 16, v82);
      if (v88)
      {
        v89 = *v246;
        do
        {
          for (j = 0; j != v88; ++j)
          {
            if (*v246 != v89)
            {
              objc_enumerationMutation(v41);
            }

            v91 = objc_msgSend_encodedStrokeIdentifier(*(*(&v245 + 1) + 8 * j), v83, v84, v85, v86, v87);
            objc_msgSend_addObject_(v62, v92, v91, v93, v94, v95);
          }

          v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v83, &v245, v305, 16, v87);
        }

        while (v88);
      }

      v100 = objc_msgSend_orderedSetWithArray_(MEMORY[0x1E695DFB8], v96, v62, v97, v98, v99);

      v42 = v100;
    }

    if (!v284[5])
    {
      v106 = MEMORY[0x1E696ACC8];
      v107 = objc_msgSend_strokeProviderVersion(v17, v101, v102, v103, v104, v105);
      v244 = 0;
      v110 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v106, v108, v107, 1, &v244, v109);
      v111 = v244;
      v112 = v284[5];
      v284[5] = v110;
    }

    v113 = v272[5];
    if (v238 && !v113)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v114 = qword_1EA84DC60;
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        v120 = objc_msgSend_count(v41, v115, v116, v117, v118, v119);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v120;
        _os_log_impl(&dword_18366B000, v114, OS_LOG_TYPE_DEFAULT, "Cached fast grouping line clusters not available. Computing line clusters on %lu strokes", &buf, 0xCu);
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v121, v122, v123, v124, v125);
      v127 = v126;
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v128, v129, v130, v131, v132);
      v134 = v133;
      if (v266[5])
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v135 = qword_1EA84DC60;
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_18366B000, v135, OS_LOG_TYPE_DEFAULT, "Using cached clutter filter for grouping query", &buf, 2u);
        }
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v145 = qword_1EA84DC60;
        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_18366B000, v145, OS_LOG_TYPE_DEFAULT, "Cached clutter filter not available. Creating new clutter filter", &buf, 2u);
        }

        v146 = objc_alloc_init(CHStrokeClutterFilter);
        v147 = v266[5];
        v266[5] = v146;

        v150 = objc_msgSend_clutterFilterByAddingStrokes_removingStrokeIdentifiers_affectedStrokeIdentifiers_(v266[5], v148, v41, 0, 0, v149);
        v135 = v266[5];
        v266[5] = v150;
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v151, v152, v153, v154, v155);
      v157 = v156;
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v158, v159, v160, v161, v162);
      v164 = v163;
      v165 = [CHFastStrokeGroupingStrategy alloc];
      v168 = objc_msgSend_initWithStrokeProvider_locales_clutterFilter_(v165, v166, v17, 0, v266[5], v167);
      v172 = objc_msgSend_lineGroupingResultUsingStrokes_shouldCancel_(v168, v169, v41, v241, v170, v171);
      v233 = v168;
      v173 = v272[5];
      v272[5] = v172;

      v174 = a7;
      v175 = a8;
      v176 = v127;
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v177, v178, v179, v180, v181);
      v183 = v182;
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v184, v185, v186, v187, v188);
      v190 = v189;
      v191 = [CHRecognitionSessionResult alloc];
      v235 = objc_msgSend_strokeProviderVersion(v17, v192, v193, v194, v195, v196);
      v197 = v284[5];
      v234 = objc_msgSend_array(v42, v198, v199, v200, v201, v202);
      v203 = a1;
      v232 = *(a1 + 200);
      v204 = *(a1 + 168);
      v210 = objc_msgSend_declaredVariables(*(a1 + 40), v205, v206, v207, v208, v209);
      *&v211 = v157 - v134;
      v212 = v190 - v176;
      v213 = v266[5];
      v214 = v272[5];
      buf = v211;
      v300 = v183 - v164;
      v303 = 0;
      v301 = 0;
      v302 = 0;
      v304 = v190 - v176;
      v220 = objc_msgSend_recognitionEnvironment(v203, v215, v216, v217, v218, v219);
      v222 = objc_msgSend_initWithStrokeProviderVersion_encodedStrokeProviderVersion_orderedStrokeIdentifiers_sessionMode_locales_preferredLocales_declaredVariables_clutterFilter_strokeClassificationResult_strokeGroupingResult_unprocessedStrokeGroupingResult_tilingResult_documentLayoutAnalysisResult_recognitionResults_rawRecognitionResults_inlineContinuousModeResults_autoRefineResults_lastAutoRefineResult_generationDuration_recognitionEnvironment_(v191, v221, v235, v197, v234, 0, v232, v204, v210, v213, 0, v214, v214, 0, 0, 0, 0, 0, 0, 0, &buf, v220);

      a8 = v175;
      a7 = v174;

      v223 = v203[39];
      v242[0] = MEMORY[0x1E69E9820];
      v242[1] = 3221225472;
      v242[2] = sub_1839299A0;
      v242[3] = &unk_1E6DDC818;
      v242[4] = v203;
      v243 = v222;
      v224 = v222;
      dispatch_async(v223, v242);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v225 = qword_1EA84DC60;
      if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v212;
        _os_log_impl(&dword_18366B000, v225, OS_LOG_TYPE_DEFAULT, "Fast grouping duration: %2.2f seconds", &buf, 0xCu);
      }

      v144 = v233;
      if (v241)
      {
LABEL_78:
        if (v241[2]())
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v226 = v144;
          v227 = qword_1EA84DC60;
          if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_18366B000, v227, OS_LOG_TYPE_DEFAULT, "Canceling tokenStrokeIdentifiersForContextStrokes request", &buf, 2u);
          }

          v228 = v290[5];
          goto LABEL_88;
        }
      }

LABEL_84:
      v229 = objc_msgSend_groupingResultForContextStrokes_clusteredStrokes_fastGroupingResult_point_tokenizationLevel_(v144, v143, v236, v41, v272[5], v238, a7, a8);
      v230 = v290[5];
      v290[5] = v229;

      v296[3] = 1;
      goto LABEL_85;
    }

    if (v113)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v136 = qword_1EA84DC60;
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v137 = "Using cached fast grouping line clusters for grouping query";
LABEL_65:
        _os_log_impl(&dword_18366B000, v136, OS_LOG_TYPE_DEFAULT, v137, &buf, 2u);
        goto LABEL_66;
      }

      goto LABEL_66;
    }

    if (!v238)
    {
LABEL_61:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v136 = qword_1EA84DC60;
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v137 = "CHStrokeTokenizationLevelStroke requested, so avoiding any clustering or grouping";
        goto LABEL_65;
      }

LABEL_66:

      v140 = [CHFastStrokeGroupingStrategy alloc];
      v144 = objc_msgSend_initWithStrokeProvider_locales_clutterFilter_(v140, v141, v17, 0, 0, v142);
      if (v241)
      {
        goto LABEL_78;
      }

      goto LABEL_84;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v138 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_18366B000, v138, OS_LOG_TYPE_ERROR, "The tokenization level must be CHStrokeTokenizationLevelStroke to be compatible with fastGroupingResult=nil", &buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v139 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
      {
LABEL_60:

        goto LABEL_61;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v139 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }
    }

    LOWORD(buf) = 0;
    _os_log_impl(&dword_18366B000, v139, OS_LOG_TYPE_FAULT, "The tokenization level must be CHStrokeTokenizationLevelStroke to be compatible with fastGroupingResult=nil", &buf, 2u);
    goto LABEL_60;
  }

  v228 = 0;
LABEL_89:

  return v228;
}

void sub_183927E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x210], 8);

  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x270], 8);

  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);

  _Block_object_dispose(&STACK[0x300], 8);
  _Unwind_Resume(a1);
}

void sub_183928070(uint64_t a1)
{
  v664 = *MEMORY[0x1E69E9840];
  v1 = a1 + 32;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 32));
  v7 = *(*v1 + 8);
  if (v7 && objc_msgSend_completeness(v7, v2, v3, v4, v5, v6) >= 1)
  {
    v13 = a1;
    v14 = *(a1 + 32);
    if (*(v14 + 16) == 4)
    {
LABEL_4:
      isValidForStrokes = objc_msgSend_isValidForStrokes_(*(v14 + 8), v8, *(v13 + 48), v10, v11, v12);
      goto LABEL_14;
    }

    v16 = MEMORY[0x1E696ACC8];
    v17 = objc_msgSend_strokeProviderVersion(*(a1 + 40), v8, v9, v10, v11, v12);
    v632 = 0;
    v20 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v16, v18, v17, 1, &v632, v19);
    v21 = v632;
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v20;

    v24 = *(a1 + 32);
    v25 = *(*(*(a1 + 56) + 8) + 40);
    v26 = *(*(*(a1 + 64) + 8) + 40);
    v32 = v25;
    if (!v24)
    {
      goto LABEL_12;
    }

    v33 = *(v24 + 8);
    if (!v33)
    {
      goto LABEL_12;
    }

    v34 = objc_msgSend_encodedStrokeProviderVersion(v33, v27, v28, v29, v30, v31);
    isEqualToData = objc_msgSend_isEqualToData_(v34, v35, v26, v36, v37, v38);

    if (!isEqualToData)
    {
      goto LABEL_12;
    }

    if (!objc_msgSend_count(v32, v40, v41, v42, v43, v44))
    {

LABEL_151:
      v13 = a1;
      v14 = *(a1 + 32);
      goto LABEL_4;
    }

    v50 = objc_msgSend_orderedStrokeIdentifiers(*(v24 + 8), v45, v46, v47, v48, v49);
    v56 = objc_msgSend_count(v50, v51, v52, v53, v54, v55);
    LODWORD(v56) = v56 == objc_msgSend_count(v32, v57, v58, v59, v60, v61);

    if (v56)
    {
      v67 = objc_msgSend_array(v32, v62, v63, v64, v65, v66);
      v73 = objc_msgSend_orderedStrokeIdentifiers(*(v24 + 8), v68, v69, v70, v71, v72);
      isEqualToArray = objc_msgSend_isEqualToArray_(v73, v74, v67, v75, v76, v77);

      if (isEqualToArray)
      {
        goto LABEL_151;
      }
    }

    else
    {
LABEL_12:
    }
  }

  isValidForStrokes = 0;
LABEL_14:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v79 = qword_1EA84DC60;
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    v85 = objc_msgSend_count(*(*(*(a1 + 56) + 8) + 40), v80, v81, v82, v83, v84);
    v91 = objc_msgSend_orderedStrokes(*(a1 + 40), v86, v87, v88, v89, v90);
    v97 = objc_msgSend_count(v91, v92, v93, v94, v95, v96);
    v98 = *(*(a1 + 32) + 8);
    *buf = 134218752;
    *&buf[4] = v85;
    *&buf[12] = 2048;
    *&buf[14] = v97;
    *&buf[22] = 1024;
    LODWORD(v659) = isValidForStrokes;
    WORD2(v659) = 2048;
    *(&v659 + 6) = v98;
    _os_log_impl(&dword_18366B000, v79, OS_LOG_TYPE_DEFAULT, "Visible stroke count: %lu, Ordered stroke count: %lu lastRecognitionResultIsValid: %d, _lastRecognitionResult: %p", buf, 0x26u);
  }

  if (qword_1EA84DC48 == -1)
  {
    v99 = qword_1EA84DC60;
    v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
    if (isValidForStrokes)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v99 = qword_1EA84DC60;
    v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
    if (isValidForStrokes)
    {
LABEL_20:
      if (v100)
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v99, OS_LOG_TYPE_DEFAULT, "Using last accurate results for tokenStrokeIdentifiersForContextStrokes results", buf, 2u);
      }

      v106 = objc_msgSend_count(*(a1 + 48), v101, v102, v103, v104, v105);
      v107 = a1;
      v108 = *(a1 + 32);
      v626 = v108;
      if (v106)
      {
        v109 = *(a1 + 104);
        v620 = *(a1 + 48);
        if (!v108)
        {
          v627 = 0;
LABEL_145:
          v117 = v620;
          goto LABEL_147;
        }

        v114 = *(v108 + 8);
        if (v114)
        {
          goto LABEL_34;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v115 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v115, OS_LOG_TYPE_ERROR, "A cached result must exist when calling _strokeIdentifiersFromCachedResultUsingContextStrokes:tokenizationLevel:", buf, 2u);
        }

        v114 = *(v626 + 8);
        if (v114)
        {
LABEL_34:
          v117 = v620;
          v122 = v626;
          if (objc_msgSend_isValidForStrokes_(v114, v110, v620, v111, v112, v113))
          {
            v627 = 0;
            if (v109 > 1)
            {
              if (v109 == 2)
              {
                v630 = v620;
                v627 = objc_msgSend_set(MEMORY[0x1E695DFA8], v444, v445, v446, v447, v448);
                v656 = 0u;
                v657 = 0u;
                v654 = 0u;
                v655 = 0u;
                v449 = v630;
                v452 = objc_msgSend_countByEnumeratingWithState_objects_count_(v449, v450, &v654, buf, 16, v451);
                if (v452)
                {
                  v453 = *v655;
                  do
                  {
                    for (i = 0; i != v452; ++i)
                    {
                      if (*v655 != v453)
                      {
                        objc_enumerationMutation(v449);
                      }

                      v455 = *(*(&v654 + 1) + 8 * i);
                      v456 = objc_opt_class();
                      v462 = objc_msgSend_strokeGroupingResult(v122[1], v457, v458, v459, v460, v461);
                      v468 = objc_msgSend_strokeGroupOrdering(v122, v463, v464, v465, v466, v467);
                      v472 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v462, v469, v468, 0, v470, v471);
                      v476 = objc_msgSend_strokeGroupContainingStrokeIdentifier_strokeGroups_(v456, v473, v455, v472, v474, v475);

                      if (v476)
                      {
                        v482 = objc_msgSend_strokeIdentifiers(v476, v477, v478, v479, v480, v481);
                        v488 = objc_msgSend_allObjects(v482, v483, v484, v485, v486, v487);
                        objc_msgSend_addObjectsFromArray_(v627, v489, v488, v490, v491, v492);
                      }

                      v122 = v626;
                    }

                    v452 = objc_msgSend_countByEnumeratingWithState_objects_count_(v449, v493, &v654, buf, 16, v494);
                  }

                  while (v452);
                }
              }

              else
              {
                if (v109 != 3)
                {
                  if (v109 == 4)
                  {
                    v627 = sub_18392D398(v626, v620);
                  }

                  goto LABEL_147;
                }

                v622 = v620;
                v495 = objc_opt_class();
                v501 = objc_msgSend_strokeGroupingResult(*(v626 + 8), v496, v497, v498, v499, v500);
                v507 = objc_msgSend_strokeGroupOrdering(v626, v502, v503, v504, v505, v506);
                v511 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v501, v508, v507, 1, v509, v510);
                v517 = objc_msgSend_strokeGroupingResult(*(v626 + 8), v512, v513, v514, v515, v516);
                v523 = objc_msgSend_textStrokeGroupClusters(v517, v518, v519, v520, v521, v522);
                v653[0] = 0;
                v624 = objc_msgSend_strokeIdentifiersInProximalGroupsForStrokeIdentifiers_sortedStrokeGroups_clusteredStrokeGroups_unusedStrokeIdentifiers_(v495, v524, v622, v511, v523, v653);
                v631 = v653[0];

                v627 = objc_msgSend_setWithSet_(MEMORY[0x1E695DFA8], v525, v624, v526, v527, v528);
                v534 = v626;
                if (objc_msgSend_count(v631, v529, v530, v531, v532, v533))
                {
                  v656 = 0u;
                  v657 = 0u;
                  v654 = 0u;
                  v655 = 0u;
                  v535 = v631;
                  v538 = objc_msgSend_countByEnumeratingWithState_objects_count_(v535, v536, &v654, buf, 16, v537);
                  if (v538)
                  {
                    v539 = *v655;
                    do
                    {
                      for (j = 0; j != v538; ++j)
                      {
                        if (*v655 != v539)
                        {
                          objc_enumerationMutation(v535);
                        }

                        v541 = *(*(&v654 + 1) + 8 * j);
                        v542 = objc_opt_class();
                        v548 = objc_msgSend_strokeGroupingResult(v534[1], v543, v544, v545, v546, v547);
                        v554 = objc_msgSend_strokeGroupOrdering(v534, v549, v550, v551, v552, v553);
                        v558 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v548, v555, v554, 0, v556, v557);
                        v562 = objc_msgSend_strokeGroupContainingStrokeIdentifier_strokeGroups_(v542, v559, v541, v558, v560, v561);

                        if (v562)
                        {
                          v568 = objc_msgSend_strokeIdentifiers(v562, v563, v564, v565, v566, v567);
                          v574 = objc_msgSend_allObjects(v568, v569, v570, v571, v572, v573);
                          objc_msgSend_addObjectsFromArray_(v627, v575, v574, v576, v577, v578);
                        }

                        v534 = v626;
                      }

                      v538 = objc_msgSend_countByEnumeratingWithState_objects_count_(v535, v579, &v654, buf, 16, v580);
                    }

                    while (v538);
                  }
                }
              }

              goto LABEL_145;
            }

            if (!v109)
            {
              v627 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v118, v620, v119, v120, v121);
              goto LABEL_147;
            }

            if (v109 == 1)
            {
              v147 = v620;
              v627 = objc_msgSend_set(MEMORY[0x1E695DFA8], v148, v149, v150, v151, v152, v147);
              v153 = v147;
              v628 = objc_msgSend_set(MEMORY[0x1E695DFA8], v154, v155, v156, v157, v158);
              v656 = 0u;
              v657 = 0u;
              v654 = 0u;
              v655 = 0u;
              v159 = v153;
              v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v160, &v654, buf, 16, v161);
              if (v162)
              {
                v163 = *v655;
                do
                {
                  for (k = 0; k != v162; ++k)
                  {
                    if (*v655 != v163)
                    {
                      objc_enumerationMutation(v159);
                    }

                    v165 = *(*(&v654 + 1) + 8 * k);
                    v166 = objc_opt_class();
                    v172 = objc_msgSend_strokeGroupingResult(v122[1], v167, v168, v169, v170, v171);
                    v178 = objc_msgSend_strokeGroupOrdering(v122, v173, v174, v175, v176, v177);
                    v182 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v172, v179, v178, 0, v180, v181);
                    v186 = objc_msgSend_strokeGroupContainingStrokeIdentifier_strokeGroups_(v166, v183, v165, v182, v184, v185);

                    if (v186)
                    {
                      objc_msgSend_addObject_(v628, v187, v186, v188, v189, v190);
                    }

                    v122 = v626;
                  }

                  v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v191, &v654, buf, 16, v192);
                }

                while (v162);
              }

              v648 = 0u;
              v649 = 0u;
              v650 = 0u;
              v651 = 0u;
              obj = v628;
              v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v193, &v648, buf, 16, v194);
              v201 = v626;
              if (v200)
              {
                v616 = *v649;
                do
                {
                  v202 = 0;
                  v614 = v200;
                  do
                  {
                    if (*v649 != v616)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v617 = v202;
                    v203 = *(*(&v648 + 1) + 8 * v202);
                    v204 = *(v201 + 8);
                    v205 = objc_msgSend_uniqueIdentifier(v203, v195, v196, v197, v198, v199);
                    v629 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v204, v206, v205, v207, v208, v209);
                    v215 = objc_msgSend_locales(*(v201 + 8), v210, v211, v212, v213, v214);
                    v618 = objc_msgSend_localesSortedByCombinedLanguageFitness_(v629, v216, v215, v217, v218, v219);

                    v619 = objc_msgSend_firstObject(v618, v220, v221, v222, v223, v224);
                    v230 = objc_msgSend_recognitionResultsByLocale(v629, v225, v226, v227, v228, v229);
                    v621 = objc_msgSend_objectForKey_(v230, v231, v619, v232, v233, v234);

                    if (v621)
                    {
                      for (m = 0; ; ++m)
                      {
                        v241 = v621;
                        if (m >= objc_msgSend_tokenColumnCount(v621, v235, v236, v237, v238, v239))
                        {
                          break;
                        }

                        v623 = objc_msgSend_tokenRowsAtColumnIndex_(v621, v242, m, v243, v244, v245);
                        v251 = objc_msgSend_transcriptionPaths(v621, v246, v247, v248, v249, v250);
                        v257 = objc_msgSend_firstObject(v251, v252, v253, v254, v255, v256);
                        v262 = objc_msgSend_indexAtPosition_(v257, v258, m, v259, v260, v261);

                        v267 = objc_msgSend_objectAtIndexedSubscript_(v623, v263, v262, v264, v265, v266);
                        v646 = 0u;
                        v647 = 0u;
                        v644 = 0u;
                        v645 = 0u;
                        v268 = v267;
                        v276 = objc_msgSend_countByEnumeratingWithState_objects_count_(v268, v269, &v644, &v654, 16, v270);
                        if (v276)
                        {
                          v277 = *v645;
                          do
                          {
                            for (n = 0; n != v276; ++n)
                            {
                              if (*v645 != v277)
                              {
                                objc_enumerationMutation(v268);
                              }

                              v279 = *(*(&v644 + 1) + 8 * n);
                              v280 = objc_msgSend_inputStrokeIdentifiers(v629, v271, v272, v273, v274, v275);
                              v286 = objc_msgSend_strokeIndexes(v279, v281, v282, v283, v284, v285);
                              v291 = objc_msgSend_objectsAtIndexes_(v280, v287, v286, v288, v289, v290);

                              v642 = 0u;
                              v643 = 0u;
                              v640 = 0u;
                              v641 = 0u;
                              v292 = v291;
                              v299 = objc_msgSend_countByEnumeratingWithState_objects_count_(v292, v293, &v640, v653, 16, v294);
                              if (v299)
                              {
                                v300 = *v641;
                                while (2)
                                {
                                  for (ii = 0; ii != v299; ++ii)
                                  {
                                    if (*v641 != v300)
                                    {
                                      objc_enumerationMutation(v292);
                                    }

                                    if (objc_msgSend_containsObject_(v159, v295, *(*(&v640 + 1) + 8 * ii), v296, v297, v298))
                                    {
                                      objc_msgSend_addObjectsFromArray_(v627, v295, v292, v296, v297, v298);
                                      goto LABEL_93;
                                    }
                                  }

                                  v299 = objc_msgSend_countByEnumeratingWithState_objects_count_(v292, v295, &v640, v653, 16, v298);
                                  if (v299)
                                  {
                                    continue;
                                  }

                                  break;
                                }
                              }

LABEL_93:
                            }

                            v276 = objc_msgSend_countByEnumeratingWithState_objects_count_(v268, v271, &v644, &v654, 16, v275);
                          }

                          while (v276);
                        }
                      }
                    }

                    else
                    {
                      v302 = objc_opt_class();
                      v308 = objc_msgSend_classification(v203, v303, v304, v305, v306, v307);
                      if (objc_msgSend_isStrokeClassificationTextOrMath_(v302, v309, v308, v310, v311, v312))
                      {
                        v318 = MEMORY[0x1E695DF70];
                        v319 = objc_msgSend_inputStrokeIdentifiers(v629, v313, v314, v315, v316, v317);
                        v325 = objc_msgSend_count(v319, v320, v321, v322, v323, v324);
                        v330 = objc_msgSend_arrayWithCapacity_(v318, v326, v325, v327, v328, v329);

                        v638 = 0u;
                        v639 = 0u;
                        v636 = 0u;
                        v637 = 0u;
                        v336 = objc_msgSend_inputStrokeIdentifiers(v629, v331, v332, v333, v334, v335);
                        v339 = v626;
                        v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v336, v337, &v636, v652, 16, v338);
                        if (v344)
                        {
                          v345 = *v637;
                          do
                          {
                            for (jj = 0; jj != v344; ++jj)
                            {
                              if (*v637 != v345)
                              {
                                objc_enumerationMutation(v336);
                              }

                              v347 = objc_msgSend_strokeIdentifierFromData_(*(v339 + 24), v340, *(*(&v636 + 1) + 8 * jj), v341, v342, v343);
                              v356 = objc_msgSend_strokeForIdentifier_(*(v339 + 24), v348, v347, v349, v350, v351);
                              if (v356)
                              {
                                objc_msgSend_addObject_(v330, v352, v356, v353, v354, v355);
                              }

                              v339 = v626;
                            }

                            v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v336, v340, &v636, v652, 16, v343);
                          }

                          while (v344);
                        }

                        v357 = [CHFastStrokeGroupingStrategy alloc];
                        v360 = objc_msgSend_initWithStrokeProvider_locales_clutterFilter_(v357, v358, *(v626 + 24), 0, 0, v359);
                        v364 = v360;
                        if (v360)
                        {
                          objc_msgSend_clustersForStrokes_shouldMakeSingleCluster_anchorPoints_(v360, v361, v330, 1, 1, v363);
                        }

                        else
                        {
                          __p = 0;
                          v634 = 0;
                          v635 = 0;
                        }

                        v374 = objc_msgSend_fastGroupingResultWithFastGroupingClusters_clusteredStrokes_(v364, v361, &__p, v330, v362, v363);
                        v376 = objc_msgSend_groupingResultForContextStrokes_clusteredStrokes_fastGroupingResult_point_tokenizationLevel_(v364, v375, v159, v330, v374, 1, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));

                        v377 = __p;
                        if (__p)
                        {
                          v378 = __p;
                          if (v634 != __p)
                          {
                            v379 = v634 - 32;
                            do
                            {
                              v380 = (v379 - 40);
                              sub_18368D56C(v379, *(v379 + 8));
                              sub_18368A374(v379 - 40, *(v379 - 32));
                              v379 -= 72;
                            }

                            while (v380 != v377);
                            v378 = __p;
                          }

                          v634 = v377;
                          operator delete(v378);
                        }

                        v627 = v376;
                      }

                      else
                      {
                        v330 = objc_msgSend_strokeIdentifiers(v203, v313, v314, v315, v316, v317);
                        v364 = objc_msgSend_allObjects(v330, v365, v366, v367, v368, v369);
                        objc_msgSend_addObjectsFromArray_(v627, v370, v364, v371, v372, v373);
                      }

                      v241 = 0;
                    }

                    v202 = v617 + 1;
                    v201 = v626;
                  }

                  while (v617 + 1 != v614);
                  v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v195, &v648, buf, 16, v199);
                }

                while (v200);
              }

              goto LABEL_145;
            }
          }

          else
          {
            v627 = 0;
          }

LABEL_147:

          goto LABEL_148;
        }

        if (qword_1EA84DC48 == -1)
        {
          v116 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
          {
LABEL_33:

            v114 = *(v626 + 8);
            goto LABEL_34;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v116 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_33;
          }
        }

        *buf = 0;
        _os_log_impl(&dword_18366B000, v116, OS_LOG_TYPE_FAULT, "A cached result must exist when calling _strokeIdentifiersFromCachedResultUsingContextStrokes:tokenizationLevel:", buf, 2u);
        goto LABEL_33;
      }

      if (!v108)
      {
        v627 = 0;
        goto LABEL_149;
      }

      v124 = *(a1 + 112);
      v123 = *(a1 + 120);
      v125 = *(a1 + 104);
      if (*(v108 + 8))
      {
        goto LABEL_51;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v126 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v126, OS_LOG_TYPE_ERROR, "A cached result must exist when calling _strokeIdentifiersFromCachedResultUsingPoint:tokenizationLevel:textOnly:", buf, 2u);
      }

      v107 = a1;
      if (*(v626 + 8))
      {
LABEL_51:
        v627 = 0;
        if (v125 > 2)
        {
          if (v125 == 3)
          {
            v401 = sub_18392DEC8(v626, v124, v123);
            v407 = objc_msgSend_strokeIdentifiers(v401, v402, v403, v404, v405, v406);

            v408 = objc_opt_class();
            v414 = objc_msgSend_allObjects(v407, v409, v410, v411, v412, v413);
            v420 = objc_msgSend_strokeGroupingResult(*(v626 + 8), v415, v416, v417, v418, v419);
            v426 = objc_msgSend_strokeGroupOrdering(v626, v421, v422, v423, v424, v425);
            v430 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v420, v427, v426, 0, v428, v429);
            v436 = objc_msgSend_strokeGroupingResult(*(v626 + 8), v431, v432, v433, v434, v435);
            v442 = objc_msgSend_textStrokeGroupClusters(v436, v437, v438, v439, v440, v441);
            v627 = objc_msgSend_strokeIdentifiersInProximalGroupsForStrokeIdentifiers_sortedStrokeGroups_clusteredStrokeGroups_unusedStrokeIdentifiers_(v408, v443, v414, v430, v442, 0);

            goto LABEL_148;
          }

          if (v125 == 4)
          {
            v134 = sub_18392DEC8(v626, v124, v123);
            v140 = objc_msgSend_strokeIdentifiers(v134, v135, v136, v137, v138, v139);

            v146 = objc_msgSend_allObjects(v140, v141, v142, v143, v144, v145);
            v627 = sub_18392D398(v626, v146);

            goto LABEL_148;
          }
        }

        else
        {
          if (v125 == 1)
          {
            *&v654 = 0;
            *(&v654 + 1) = &v654;
            *&v655 = 0x3032000000;
            *(&v655 + 1) = sub_18391E9B8;
            *&v656 = sub_18391E9C8;
            *(&v656 + 1) = 0;
            v653[0] = 0;
            v653[1] = v653;
            v653[2] = 0x2020000000;
            v653[3] = 0x7FEFFFFFFFFFFFFFLL;
            v381 = objc_opt_class();
            v387 = objc_msgSend_strokeGroupingResult(*(v626 + 8), v382, v383, v384, v385, v386);
            v393 = objc_msgSend_strokeGroupOrdering(v626, v388, v389, v390, v391, v392);
            v397 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v387, v394, v393, 0, v395, v396);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = sub_18392E1C0;
            *&v659 = &unk_1E6DE0118;
            v662 = v124;
            v663 = v123;
            *(&v659 + 1) = v626;
            v660 = v653;
            v661 = &v654;
            objc_msgSend_strokeGroupsContainingPoint_strokeGroups_groupProcessingBlock_(v381, v398, v397, buf, v399, v400, v124, v123);

            v627 = *(*(&v654 + 1) + 40);
            _Block_object_dispose(v653, 8);
            _Block_object_dispose(&v654, 8);

            goto LABEL_148;
          }

          if (v125 == 2)
          {
            v128 = sub_18392DEC8(v626, v124, v123);
            v627 = objc_msgSend_strokeIdentifiers(v128, v129, v130, v131, v132, v133);

LABEL_148:
            v107 = a1;
          }
        }

LABEL_149:
        v581 = *(*(v107 + 72) + 8);
        v582 = *(v581 + 40);
        *(v581 + 40) = v627;

        v588 = a1;
        *(*(*(a1 + 80) + 8) + 24) = 0;
        goto LABEL_156;
      }

      if (qword_1EA84DC48 == -1)
      {
        v127 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v127, OS_LOG_TYPE_FAULT))
        {
LABEL_50:

          v107 = a1;
          goto LABEL_51;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v127 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v127, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_50;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_18366B000, v127, OS_LOG_TYPE_FAULT, "A cached result must exist when calling _strokeIdentifiersFromCachedResultUsingPoint:tokenizationLevel:textOnly:", buf, 2u);
      goto LABEL_50;
    }
  }

  if (v100)
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v99, OS_LOG_TYPE_DEFAULT, "Last accurate results for tokenStrokeIdentifiersForContextStrokes don't match visible strokes", buf, 2u);
  }

  v588 = a1;
LABEL_156:
  if ((objc_msgSend_shouldForceFastGrouping(*(v588 + 32), v583, v584, v585, v586, v587) & 1) != 0 || !*(*(*(a1 + 72) + 8) + 40))
  {
    v594 = *(a1 + 32);
    if (v594 && (objc_msgSend_strokeGroupingResult(*(v594 + 72), v589, v590, v591, v592, v593), v595 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v595, (isKindOfClass & 1) != 0))
    {
      v602 = objc_msgSend_strokeGroupingResult(*(v594 + 72), v597, v598, v599, v600, v601);
    }

    else
    {
      v602 = 0;
    }

    v603 = *(*(a1 + 88) + 8);
    v604 = *(v603 + 40);
    *(v603 + 40) = v602;

    v610 = *(a1 + 32);
    if (v610)
    {
      v611 = objc_msgSend_clutterFilter(*(v610 + 80), v605, v606, v607, v608, v609);
    }

    else
    {
      v611 = 0;
    }

    v612 = *(*(a1 + 96) + 8);
    v613 = *(v612 + 40);
    *(v612 + 40) = v611;
  }
}

void sub_1839299A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = v1;
  if (v2)
  {
    v5 = *(v2 + 72);
    v4 = (v2 + 72);
    if (v5 != v3)
    {
      v6 = v3;
      objc_storeStrong(v4, v1);
      v3 = v6;
    }
  }
}

void sub_183929AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_183929B08(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 232);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  shouldRunRecognitionLocallyWithEnvironment = objc_msgSend_shouldRunRecognitionLocallyWithEnvironment_(CHRecognitionSession, v4, *(*(a1 + 32) + 184), v5, v6, v7);
  v9 = *(a1 + 40);
  if (*(*(v9 + 8) + 40))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = *(a1 + 40);
    if (((shouldRunRecognitionLocallyWithEnvironment ^ isKindOfClass) & 1) == 0)
    {
      v11 = *(v9 + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;

      v9 = *(a1 + 40);
    }
  }

  if (!*(*(v9 + 8) + 40))
  {
    if (shouldRunRecognitionLocallyWithEnvironment)
    {
      v13 = objc_alloc_init(CHDocumentLayoutAnalyzer);
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_32;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v16 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_ERROR, "Failed to initialize CHDocumentLayoutAnalyzer", buf, 2u);
      }

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_32;
      }

      if (qword_1EA84DC48 == -1)
      {
        v17 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
LABEL_31:

LABEL_32:
          v37 = *(a1 + 32);
          if (v37)
          {
            objc_storeStrong((v37 + 232), *(*(*(a1 + 40) + 8) + 40));
          }

          return;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v17 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_31;
        }
      }

      *v40 = 0;
      _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_FAULT, "Failed to initialize CHDocumentLayoutAnalyzer", v40, 2u);
      goto LABEL_31;
    }

    v23 = objc_alloc_init(CHRemoteDocumentLayoutAnalyzer);
    if (v23)
    {
LABEL_27:
      if (objc_msgSend_q_needsForegroundRecognition(*(a1 + 32), v18, v19, v20, v21, v22))
      {
        objc_msgSend_setPriority_(v23, v26, 1, v28, v29, v30);
      }

      else
      {
        v31 = objc_msgSend_priority(*(a1 + 32), v26, v27, v28, v29, v30);
        objc_msgSend_setPriority_(v23, v32, v31, v33, v34, v35);
      }

      v36 = *(*(a1 + 40) + 8);
      v17 = *(v36 + 40);
      *(v36 + 40) = v23;
      goto LABEL_31;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v24 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v39 = 0;
      _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_ERROR, "Failed to initialize CHRemoteDocumentLayoutAnalyzer", v39, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v25 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v25 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }
    }

    *v38 = 0;
    _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_FAULT, "Failed to initialize CHRemoteDocumentLayoutAnalyzer", v38, 2u);
    goto LABEL_26;
  }
}

void sub_183929F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_183929FC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[26];
  }

  v3 = v2;
  v9 = objc_msgSend_localeIdentifier(*(a1 + 40), v4, v5, v6, v7, v8);
  v14 = objc_msgSend_objectForKeyedSubscript_(v3, v10, v9, v11, v12, v13);
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  shouldRunRecognitionLocallyWithEnvironment = objc_msgSend_shouldRunRecognitionLocallyWithEnvironment_(CHRecognitionSession, v17, *(*(a1 + 32) + 184), v18, v19, v20);
  v26 = *(a1 + 48);
  if (*(*(v26 + 8) + 40))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v26 = *(a1 + 48);
    if (((shouldRunRecognitionLocallyWithEnvironment ^ isKindOfClass) & 1) == 0)
    {
      v28 = *(v26 + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = 0;

      v26 = *(a1 + 48);
    }
  }

  if (!*(*(v26 + 8) + 40) && objc_msgSend_containsObject_(*(*(a1 + 32) + 200), v21, *(a1 + 40), v22, v23, v24))
  {
    v30 = objc_opt_class();
    v31 = *(a1 + 40);
    v37 = objc_msgSend_mode(*(a1 + 32), v32, v33, v34, v35, v36);
    v43 = objc_msgSend_priority(*(a1 + 32), v38, v39, v40, v41, v42);
    RecognizerForLocale_sessionMode_remote_priority = objc_msgSend_createRecognizerForLocale_sessionMode_remote_priority_(v30, v44, v31, v37, shouldRunRecognitionLocallyWithEnvironment ^ 1u, v43);
    v46 = *(*(a1 + 48) + 8);
    v47 = *(v46 + 40);
    *(v46 + 40) = RecognizerForLocale_sessionMode_remote_priority;

    if (objc_msgSend_autoCapitalizationMode(*(a1 + 32), v48, v49, v50, v51, v52) != 1)
    {
      v58 = objc_msgSend_autoCapitalizationMode(*(a1 + 32), v53, v54, v55, v56, v57);
      objc_msgSend_setAutoCapitalizationMode_(*(*(*(a1 + 48) + 8) + 40), v59, v58, v60, v61, v62);
    }

    if (objc_msgSend_autoCorrectionMode(*(a1 + 32), v53, v54, v55, v56, v57))
    {
      v68 = objc_msgSend_autoCorrectionMode(*(a1 + 32), v63, v64, v65, v66, v67);
      objc_msgSend_setAutoCorrectionMode_(*(*(*(a1 + 48) + 8) + 40), v69, v68, v70, v71, v72);
    }

    v73 = objc_msgSend_baseWritingDirection(*(a1 + 32), v63, v64, v65, v66, v67);
    objc_msgSend_setBaseWritingDirection_(*(*(*(a1 + 48) + 8) + 40), v74, v73, v75, v76, v77);
    if ((shouldRunRecognitionLocallyWithEnvironment & 1) == 0)
    {
      v78 = *(*(*(a1 + 48) + 8) + 40);
      objc_msgSend_setShouldUseTextReplacements_(v78, v79, 0, v80, v81, v82);
      v83 = *(*(a1 + 48) + 8);
      v84 = *(v83 + 40);
      *(v83 + 40) = v78;
    }

    v85 = *(*(*(a1 + 48) + 8) + 40);
    if (v85)
    {
      v86 = *(a1 + 32);
      if (v86)
      {
        v86 = v86[26];
      }

      v87 = v86;
      v93 = objc_msgSend_localeIdentifier(*(a1 + 40), v88, v89, v90, v91, v92);
      objc_msgSend_setObject_forKeyedSubscript_(v87, v94, v85, v93, v95, v96);
    }
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    if (objc_msgSend_q_needsForegroundRecognition(*(a1 + 32), v98, v99, v100, v101, v102))
    {
      v108 = 1;
    }

    else
    {
      v108 = objc_msgSend_priority(*(a1 + 32), v103, v104, v105, v106, v107);
    }

    v109 = *(*(*(a1 + 48) + 8) + 40);

    return objc_msgSend_setPriority_(v109, v103, v108, v105, v106, v107);
  }

  return result;
}

void sub_18392A42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_18392A48C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[28];
  }

  v3 = v2;
  v8 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *(a1 + 40), v5, v6, v7);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  shouldRunRecognitionLocallyWithEnvironment = objc_msgSend_shouldRunRecognitionLocallyWithEnvironment_(CHRecognitionSession, v11, *(*(a1 + 32) + 184), v12, v13, v14);
  v21 = *(a1 + 56);
  v22 = *(*(v21 + 8) + 40);
  if (v22)
  {
    isRemoteRecognition = objc_msgSend_isRemoteRecognition(v22, v15, v16, v17, v18, v19);
    v21 = *(a1 + 56);
    if (shouldRunRecognitionLocallyWithEnvironment == isRemoteRecognition)
    {
      v24 = *(v21 + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;

      v21 = *(a1 + 56);
    }
  }

  if (!*(*(v21 + 8) + 40))
  {
    v26 = [CHTextCorrectionRecognizer alloc];
    v27 = *(a1 + 48);
    v33 = objc_msgSend_priority(*(a1 + 32), v28, v29, v30, v31, v32);
    v36 = objc_msgSend_initWithLocales_remoteRecognition_priority_(v26, v34, v27, shouldRunRecognitionLocallyWithEnvironment ^ 1u, v33, v35);
    v37 = *(*(a1 + 56) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    v42 = *(*(*(a1 + 56) + 8) + 40);
    if (v42)
    {
      v43 = *(a1 + 32);
      if (v43)
      {
        v44 = *(v43 + 224);
        v45 = *(a1 + 40);
      }

      else
      {
        v44 = 0;
        v45 = *(a1 + 40);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v44, v39, v42, v45, v40, v41);
    }
  }
}

void sub_18392A6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_18392A708(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 240);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  shouldRunRecognitionLocallyWithEnvironment = objc_msgSend_shouldRunRecognitionLocallyWithEnvironment_(CHRecognitionSession, v4, *(*(a1 + 32) + 184), v5, v6, v7);
  v9 = *(a1 + 40);
  if (*(*(v9 + 8) + 40))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = *(a1 + 40);
    if (((shouldRunRecognitionLocallyWithEnvironment ^ isKindOfClass) & 1) == 0)
    {
      v11 = *(v9 + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;

      v9 = *(a1 + 40);
    }
  }

  if (!*(*(v9 + 8) + 40))
  {
    v13 = objc_opt_class();
    v19 = objc_msgSend_priority(*(a1 + 32), v14, v15, v16, v17, v18);
    MathRecognizerRunningRemote_priority = objc_msgSend_createMathRecognizerRunningRemote_priority_(v13, v20, shouldRunRecognitionLocallyWithEnvironment ^ 1u, v19, v21, v22);
    v24 = *(*(a1 + 40) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = MathRecognizerRunningRemote_priority;

    v26 = *(a1 + 32);
    if (v26)
    {
      objc_storeStrong((v26 + 240), *(*(*(a1 + 40) + 8) + 40));
    }
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    if (objc_msgSend_q_needsForegroundRecognition(*(a1 + 32), v28, v29, v30, v31, v32))
    {
      v38 = 1;
    }

    else
    {
      v38 = objc_msgSend_priority(*(a1 + 32), v33, v34, v35, v36, v37);
    }

    v39 = *(*(*(a1 + 40) + 8) + 40);

    return objc_msgSend_setPriority_(v39, v33, v38, v35, v36, v37);
  }

  return result;
}

void sub_18392B178(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v51 = 0;
  v3 = sub_183927020(*(a1 + 32), *(a1 + 40), *(a1 + 88), v2, &v51, *(a1 + 56), *(a1 + 72), *(a1 + 80));
  v9 = v3;
  if (v3)
  {
    v10 = MEMORY[0x1E695DFA8];
    v11 = objc_msgSend_count(v3, v4, v5, v6, v7, v8);
    v16 = objc_msgSend_setWithCapacity_(v10, v12, v11, v13, v14, v15);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = v9;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v47, v52, 16, v19);
    if (v24)
    {
      v25 = *v48;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(v17);
          }

          v27 = objc_msgSend_strokeIdentifierFromData_(v2, v20, *(*(&v47 + 1) + 8 * i), v21, v22, v23);
          objc_msgSend_addObject_(v16, v28, v27, v29, v30, v31);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v47, v52, 16, v23);
      }

      while (v24);
    }

    v32 = [CHTokenizedStrokeResult alloc];
    v36 = objc_msgSend_initWithStrokeIdentifiers_resultLevel_(v32, v33, v16, v51, v34, v35);
    objc_msgSend_setCompletedUnitCount_(*(a1 + 48), v37, 1, v38, v39, v40);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v41 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      *v46 = 0;
      _os_log_impl(&dword_18366B000, v41, OS_LOG_TYPE_FAULT, "foundStrokeIdentifiers is nil", v46, 2u);
    }

    objc_msgSend_setCompletedUnitCount_(*(a1 + 48), v42, 1, v43, v44, v45);
    (*(*(a1 + 64) + 16))();
  }
}

void sub_18392B6A4(uint64_t a1)
{
  v381 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v371 = 0;
  v347 = v2;
  v3 = sub_183927020(*(a1 + 32), *(a1 + 40), 4, v2, &v371, *(a1 + 56), *(a1 + 72), *(a1 + 80));
  v349 = a1;
  if (objc_msgSend_count(v3, v4, v5, v6, v7, v8))
  {
    v14 = *(a1 + 32);
    v355 = v3;
    v15 = objc_msgSend_allObjects(v3, v9, v10, v11, v12, v13);
    v369 = 0;
    v370 = 0;
    v346 = sub_18392C888(v14, v15, 2, 1, 1, &v370, &v369, *(a1 + 56));
    v344 = v370;
    v345 = v369;

    v354 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v17, v18, v19, v20);
    v367 = 0u;
    v368 = 0u;
    v365 = 0u;
    v366 = 0u;
    v26 = objc_msgSend_nontextCandidates(v345, v21, v22, v23, v24, v25);
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v365, v380, 16, v28);
    if (v33)
    {
      v34 = *v366;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v366 != v34)
          {
            objc_enumerationMutation(v26);
          }

          v36 = *(*(&v365 + 1) + 8 * i);
          if (v36)
          {
            v37 = *(v36 + 40);
            v38 = 0.7;
            if (v37 != 6)
            {
              v38 = 0.22;
            }

            if (*(v36 + 24) < v38)
            {
              v37 = *(v36 + 32);
            }

            objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v29, v37, v30, v31, v32);
          }

          else
          {
            objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v29, 0, v30, v31, v32);
          }
          v39 = ;
          v44 = objc_msgSend_containsObject_(&unk_1EF1EC700, v40, v39, v41, v42, v43);

          if (v44)
          {
            v46 = MEMORY[0x1E695DFD8];
            if (v36)
            {
              v47 = objc_msgSend_allKeys(*(v36 + 8), v29, v45, v30, v31, v32);
              objc_msgSend_setWithArray_(v46, v48, v47, v49, v50, v51);
            }

            else
            {
              v47 = 0;
              objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v29, 0, v30, v31, v32);
            }
            v52 = ;

            if (objc_msgSend_intersectsSet_(v52, v53, v355, v54, v55, v56))
            {
              objc_msgSend_addObject_(v354, v57, v36, v58, v59, v60);
            }
          }
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v365, v380, 16, v32);
      }

      while (v33);
    }

    if (!v346)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v61 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_ERROR, "Context results must be non-nil", buf, 2u);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v62 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v62, OS_LOG_TYPE_FAULT, "Context results must be non-nil", buf, 2u);
      }
    }

    v63 = [CHContextualTextResults alloc];
    v343 = objc_msgSend_initWithTextResults_(v63, v64, v346, v65, v66, v67);
    v68 = objc_opt_class();
    v69 = *(v349 + 48);
    v75 = objc_msgSend_allObjects(v355, v70, v71, v72, v73, v74);
    v77 = objc_msgSend_reflowableTextLinesWithProgress_contextResults_strokeGroupingResult_contextStrokes_initialStrokes_strokeProvider_relatedNonTextStrokes_shouldCancel_(v68, v76, v69, v343, v344, v75, *(v349 + 40), v347, v354, *(v349 + 56));

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v78 = qword_1EA84DC60;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v84 = objc_msgSend_localizedDescription(*(v349 + 48), v79, v80, v81, v82, v83);
      *buf = 138412290;
      v373 = v84;
      _os_log_impl(&dword_18366B000, v78, OS_LOG_TYPE_DEFAULT, "CHReflowQuery query progress: %@", buf, 0xCu);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v85 = qword_1EA84DC88;
    v86 = os_signpost_id_generate(v85);

    if (qword_1EA84DC48 == -1)
    {
      v87 = qword_1EA84DC88;
      v88 = v86 - 1;
      if (v86 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_43;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v87 = qword_1EA84DC88;
      v88 = v86 - 1;
      if (v86 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_43;
      }
    }

    if (os_signpost_enabled(v87))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v87, OS_SIGNPOST_INTERVAL_BEGIN, v86, "CHLineWrapperReflowableLines", "", buf, 2u);
    }

LABEL_43:

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v89 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v89, OS_LOG_TYPE_DEFAULT, "BEGIN CHLineWrapperReflowableLines", buf, 2u);
    }

    v95 = objc_msgSend_lineWrapper(*(v349 + 32), v90, v91, v92, v93, v94);
    v99 = objc_msgSend_reflowableLines_withLineWrapper_(CHReflowableTextLine, v96, v77, v95, v97, v98);

    if (qword_1EA84DC48 == -1)
    {
      v100 = qword_1EA84DC88;
      if (v88 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_51;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v100 = qword_1EA84DC88;
      if (v88 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_51;
      }
    }

    if (os_signpost_enabled(v100))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v100, OS_SIGNPOST_INTERVAL_END, v86, "CHLineWrapperReflowableLines", "", buf, 2u);
    }

LABEL_51:

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v101 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v101, OS_LOG_TYPE_DEFAULT, "END CHLineWrapperReflowableLines", buf, 2u);
    }

    v102 = objc_opt_class();
    v107 = objc_msgSend_alignShortReflowableLines_(v102, v103, v99, v104, v105, v106);

    v108 = objc_opt_class();
    v348 = objc_msgSend_adjustLeadingForReflowableLines_(v108, v109, v107, v110, v111, v112);

    v118 = v349;
    if (*(v349 + 72) == *MEMORY[0x1E695EFF8] && *(v349 + 80) == *(MEMORY[0x1E695EFF8] + 8) || !objc_msgSend_count(v348, v113, v114, v115, v116, v117))
    {
      v342 = 0;
      goto LABEL_112;
    }

    v119 = *(v349 + 32);
    v120 = *(v349 + 72);
    v121 = *(v349 + 80);
    v356 = v348;
    if (!v119)
    {
      goto LABEL_89;
    }

    v127 = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v131 = 1.79769313e308;
LABEL_60:
    if (v127 < objc_msgSend_count(v356, v122, v123, v124, v125, v126))
    {
      v137 = objc_msgSend_objectAtIndexedSubscript_(v356, v132, v127, v134, v135, v136);
      v148 = objc_msgSend_tokens(v137, v138, v139, v140, v141, v142);
      for (j = 0; ; ++j)
      {
        if (j >= objc_msgSend_count(v148, v143, v144, v145, v146, v147))
        {

          ++v127;
          goto LABEL_60;
        }

        v154 = objc_msgSend_objectAtIndexedSubscript_(v148, v150, j, v151, v152, v153);
        objc_msgSend_bounds(v154, v155, v156, v157, v158, v159);
        v382.x = v120;
        v382.y = v121;
        v160 = CGRectContainsPoint(v383, v382);
        v166 = v160;
        if (v160 || (v128 & 1) == 0)
        {
          break;
        }

LABEL_80:
      }

      if (v160)
      {
        objc_msgSend_bounds(v154, v161, v162, v163, v164, v165);
        v167 = vabdd_f64(CGRectGetMidY(v384), v121);
        if ((v128 & 1) == 0)
        {
          v128 = 1;
          v131 = v167;
LABEL_79:
          v129 = j;
          v130 = v127;
          goto LABEL_80;
        }

LABEL_77:
        if (v167 >= v131)
        {
          goto LABEL_80;
        }

        v131 = v167;
        v128 = v166;
        goto LABEL_79;
      }

      objc_msgSend_bounds(v154, v161, v162, v163, v164, v165);
      if (v121 >= CGRectGetMinY(v385))
      {
        objc_msgSend_bounds(v154, v168, v169, v170, v171, v172);
        v167 = 0.0;
        if (v121 <= CGRectGetMaxY(v387))
        {
          goto LABEL_72;
        }

        objc_msgSend_bounds(v154, v173, v174, v175, v176, v177);
        v178 = v121 - CGRectGetMaxY(v388);
      }

      else
      {
        objc_msgSend_bounds(v154, v168, v169, v170, v171, v172);
        v178 = CGRectGetMinY(v386) - v121;
      }

      v167 = v178 + 0.0;
LABEL_72:
      objc_msgSend_bounds(v154, v173, v174, v175, v176, v177);
      if (v120 >= CGRectGetMinX(v389))
      {
        objc_msgSend_bounds(v154, v179, v180, v181, v182, v183);
        if (v120 <= CGRectGetMaxX(v391))
        {
          goto LABEL_77;
        }

        objc_msgSend_bounds(v154, v185, v186, v187, v188, v189);
        v184 = v120 - CGRectGetMaxX(v392);
      }

      else
      {
        objc_msgSend_bounds(v154, v179, v180, v181, v182, v183);
        v184 = CGRectGetMinX(v390) - v120;
      }

      v167 = v167 + v184;
      goto LABEL_77;
    }

    if (v131 == 1.79769313e308)
    {
LABEL_89:
      v342 = 0;
LABEL_111:

      v118 = v349;
LABEL_112:
      objc_msgSend_setCompletedUnitCount_(*(v118 + 48), v113, 100, v115, v116, v117);
      if (objc_msgSend_count(v348, v282, v283, v284, v285, v286) && ((*(*(v118 + 56) + 16))() & 1) == 0)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v287 = qword_1EA84DC60;
        if (os_log_type_enabled(v287, OS_LOG_TYPE_DEFAULT))
        {
          v293 = objc_msgSend_count(v348, v288, v289, v290, v291, v292);
          *buf = 134217984;
          v373 = v293;
          _os_log_impl(&dword_18366B000, v287, OS_LOG_TYPE_DEFAULT, "reflowable text lines returned for query with %ld lines", buf, 0xCu);
        }

        v363 = 0u;
        v364 = 0u;
        v361 = 0u;
        v362 = 0u;
        obj = v348;
        v352 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v294, &v361, v379, 16, v295);
        if (v352)
        {
          v351 = *v362;
          do
          {
            for (k = 0; k != v352; ++k)
            {
              if (*v362 != v351)
              {
                objc_enumerationMutation(obj);
              }

              v301 = *(*(&v361 + 1) + 8 * k);
              v357 = 0u;
              v358 = 0u;
              v359 = 0u;
              v360 = 0u;
              v302 = objc_msgSend_tokens(v301, v296, v297, v298, v299, v300);
              v305 = objc_msgSend_countByEnumeratingWithState_objects_count_(v302, v303, &v357, v378, 16, v304);
              if (v305)
              {
                v306 = *v358;
                do
                {
                  v307 = 0;
                  do
                  {
                    if (*v358 != v306)
                    {
                      objc_enumerationMutation(v302);
                    }

                    v308 = *(*(&v357 + 1) + 8 * v307);
                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v309 = qword_1EA84DC60;
                    if (os_log_type_enabled(v309, OS_LOG_TYPE_DEBUG))
                    {
                      v315 = objc_msgSend_string(v308, v310, v311, v312, v313, v314);
                      v321 = objc_msgSend_strokeIdentifiers(v308, v316, v317, v318, v319, v320);
                      v327 = objc_msgSend_count(v321, v322, v323, v324, v325, v326);
                      v333 = objc_msgSend_nonTextStrokeIdentifiers(v308, v328, v329, v330, v331, v332);
                      v339 = objc_msgSend_count(v333, v334, v335, v336, v337, v338);
                      *buf = 138740483;
                      v373 = v315;
                      v374 = 2048;
                      v375 = v327;
                      v376 = 2048;
                      v377 = v339;
                      _os_log_impl(&dword_18366B000, v309, OS_LOG_TYPE_DEBUG, "reflowable token result with string = %{sensitive}@, text-strokes: %ld, non-text-strokes: %ld ", buf, 0x20u);
                    }

                    ++v307;
                  }

                  while (v305 != v307);
                  v305 = objc_msgSend_countByEnumeratingWithState_objects_count_(v302, v340, &v357, v378, 16, v341);
                }

                while (v305);
              }
            }

            v352 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v296, &v361, v379, 16, v300);
          }

          while (v352);
        }

        v118 = v349;
      }

      (*(*(v118 + 64) + 16))();

      v192 = v355;
      goto LABEL_115;
    }

    if (v130 >= objc_msgSend_count(v356, v132, v133, v134, v135, v136) || (objc_msgSend_objectAtIndexedSubscript_(v356, v197, v130, v198, v199, v200), v201 = objc_claimAutoreleasedReturnValue(), objc_msgSend_tokens(v201, v202, v203, v204, v205, v206), v207 = objc_claimAutoreleasedReturnValue(), v213 = v129 < objc_msgSend_count(v207, v208, v209, v210, v211, v212), v207, v201, !v213))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v219 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v219, OS_LOG_TYPE_ERROR, "Index path for the nearest token should point to a valid token", buf, 2u);
      }
    }

    if (v130 >= objc_msgSend_count(v356, v214, v215, v216, v217, v218) || (objc_msgSend_objectAtIndexedSubscript_(v356, v220, v130, v221, v222, v223), v224 = objc_claimAutoreleasedReturnValue(), objc_msgSend_tokens(v224, v225, v226, v227, v228, v229), v230 = objc_claimAutoreleasedReturnValue(), v236 = v129 < objc_msgSend_count(v230, v231, v232, v233, v234, v235), v230, v224, !v236))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v241 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v241, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v241, OS_LOG_TYPE_FAULT, "Index path for the nearest token should point to a valid token", buf, 2u);
      }
    }

    v242 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v237, v130, v238, v239, v240);
    v247 = objc_msgSend_objectAtIndexedSubscript_(v356, v243, v130, v244, v245, v246);
    v253 = objc_msgSend_tokens(v247, v248, v249, v250, v251, v252);
    v258 = objc_msgSend_objectAtIndexedSubscript_(v253, v254, v129, v255, v256, v257);

    v263 = objc_msgSend_objectAtIndexedSubscript_(v356, v259, v130, v260, v261, v262);
    v269 = objc_msgSend_writingDirection(v263, v264, v265, v266, v267, v268) == 2;

    if (v269)
    {
      objc_msgSend_bounds(v258, v270, v271, v272, v273, v274);
      if (v120 <= v279)
      {
        objc_msgSend_indexPathByAddingIndex_(v242, v275, v129 - 1, v276, v277, v278);
        v281 = LABEL_110:;

        v342 = v281;
        goto LABEL_111;
      }
    }

    else
    {
      objc_msgSend_bounds(v258, v270, v271, v272, v273, v274);
      if (v120 >= v280)
      {
        ++v129;
      }
    }

    objc_msgSend_indexPathByAddingIndex_(v242, v275, v129, v276, v277, v278);
    goto LABEL_110;
  }

  v190 = v3;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v191 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v191, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v191, OS_LOG_TYPE_FAULT, "foundStrokeIdentifiers is nil", buf, 2u);
  }

  v192 = v190;
  objc_msgSend_setCompletedUnitCount_(*(v349 + 48), v193, 100, v194, v195, v196);
  (*(*(v349 + 64) + 16))();
LABEL_115:
}