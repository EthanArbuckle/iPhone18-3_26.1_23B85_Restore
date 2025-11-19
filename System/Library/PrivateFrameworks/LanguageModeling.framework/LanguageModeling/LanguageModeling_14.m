void *sub_1AE6C784C(void *a1)
{
  *a1 = &unk_1F242CFB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C791C(void *a1)
{
  *a1 = &unk_1F242CF70;
  a1[1] = &unk_1F242CFB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C7A24(void *a1)
{
  *a1 = &unk_1F242CF70;
  a1[1] = &unk_1F242CFB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void *sub_1AE6C7B0C(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_1AE6C82E0(*a1);
    result = v2[7];
    if (result)
    {
      v4 = result[2];
      goto LABEL_13;
    }

    v6 = v2[2];
    if (v6 <= 0x5F)
    {
      operator new[]();
    }

    v9 = v2[3];
    if (v9 + 24 > v6)
    {
      operator new[]();
    }

    result = (*(v2[5] + 16) + v9);
    v2[3] = v9 + 24;
    result[2] = 0;
  }

  else if (a2 == 1)
  {
    v2 = sub_1AE6C817C(*a1);
    result = v2[7];
    if (result)
    {
      v4 = result[1];
LABEL_13:
      v2[7] = v4;
      return result;
    }

    v5 = v2[2];
    if (v5 <= 0x3F)
    {
      operator new[]();
    }

    v8 = v2[3];
    if (v8 + 16 > v5)
    {
      operator new[]();
    }

    result = (*(v2[5] + 16) + v8);
    v2[3] = v8 + 16;
    result[1] = 0;
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 61))
            {

              operator new();
            }

            sub_1AE5CB09C();
          }

          v14 = sub_1AE6C89E8(*a1);
          result = *(v14 + 56);
          if (result)
          {
            *(v14 + 56) = result[64];
          }

          else
          {
            result = sub_1AE6CA740((v14 + 8));
            result[64] = 0;
          }
        }

        else
        {
          v11 = sub_1AE6C8880(*a1);
          result = *(v11 + 56);
          if (result)
          {
            *(v11 + 56) = result[32];
          }

          else
          {
            result = sub_1AE6CA630((v11 + 8));
            result[32] = 0;
          }
        }
      }

      else
      {
        v7 = sub_1AE6C8718(*a1);
        result = *(v7 + 56);
        if (result)
        {
          *(v7 + 56) = result[16];
        }

        else
        {
          result = sub_1AE6CA520((v7 + 8));
          result[16] = 0;
        }
      }
    }

    else
    {
      v2 = sub_1AE6C85B0(*a1);
      result = v2[7];
      if (result)
      {
        v4 = result[8];
        goto LABEL_13;
      }

      v12 = v2[2];
      if (v12 <= 0x11F)
      {
        operator new[]();
      }

      v15 = v2[3];
      if (v15 + 72 > v12)
      {
        operator new[]();
      }

      result = (*(v2[5] + 16) + v15);
      v2[3] = v15 + 72;
      result[8] = 0;
    }
  }

  else
  {
    v2 = sub_1AE6C8448(*a1);
    result = v2[7];
    if (result)
    {
      v4 = result[4];
      goto LABEL_13;
    }

    v10 = v2[2];
    if (v10 <= 0x9F)
    {
      operator new[]();
    }

    v13 = v2[3];
    if (v13 + 40 > v10)
    {
      operator new[]();
    }

    result = (*(v2[5] + 16) + v13);
    v2[3] = v13 + 40;
    result[4] = 0;
  }

  return result;
}

void sub_1AE6C8078(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = sub_1AE6C82E0(*a1);
    __p[2] = *(v4 + 56);
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v4 = sub_1AE6C817C(*a1);
    __p[1] = *(v4 + 56);
LABEL_15:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = sub_1AE6C8448(*a1);
    __p[4] = *(v4 + 56);
    goto LABEL_15;
  }

  if (a3 <= 8)
  {
    v4 = sub_1AE6C85B0(*a1);
    __p[8] = *(v4 + 56);
    goto LABEL_15;
  }

  if (a3 <= 0x10)
  {
    v4 = sub_1AE6C8718(*a1);
    __p[16] = *(v4 + 56);
    goto LABEL_15;
  }

  if (a3 <= 0x20)
  {
    v4 = sub_1AE6C8880(*a1);
    __p[32] = *(v4 + 56);
    goto LABEL_15;
  }

  if (a3 <= 0x40)
  {
    v4 = sub_1AE6C89E8(*a1);
    __p[64] = *(v4 + 56);
    goto LABEL_15;
  }

  operator delete(__p);
}

uint64_t sub_1AE6C817C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 8)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 9 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 64);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6C82C0(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6C82E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x10)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 17 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 128);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6C8428(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6C8448(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x20)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 33 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6C8590(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6C85B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x40)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 65 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 512);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6C86F8(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6C8718(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x80)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 129 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 1024);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6C8860(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6C8880(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x100)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 257 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 2048);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6C89C8(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6C89E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x200)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 513 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 4096);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6C8B30(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

void sub_1AE6C8B58(void *a1)
{
  *a1 = &unk_1F242CF30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C8C40(void *a1)
{
  *a1 = &unk_1F242CF30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C8D10(void *a1)
{
  *a1 = &unk_1F242CEF0;
  a1[1] = &unk_1F242CF30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C8E18(void *a1)
{
  *a1 = &unk_1F242CEF0;
  a1[1] = &unk_1F242CF30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C8F08(void *a1)
{
  *a1 = &unk_1F242CEB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C8FF0(void *a1)
{
  *a1 = &unk_1F242CEB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C90C0(void *a1)
{
  *a1 = &unk_1F242CE70;
  a1[1] = &unk_1F242CEB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C91C8(void *a1)
{
  *a1 = &unk_1F242CE70;
  a1[1] = &unk_1F242CEB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C92B8(void *a1)
{
  *a1 = &unk_1F242CE30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C93A0(void *a1)
{
  *a1 = &unk_1F242CE30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C9470(void *a1)
{
  *a1 = &unk_1F242CDF0;
  a1[1] = &unk_1F242CE30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C9578(void *a1)
{
  *a1 = &unk_1F242CDF0;
  a1[1] = &unk_1F242CE30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C9668(void *a1)
{
  *a1 = &unk_1F242CDB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C9750(void *a1)
{
  *a1 = &unk_1F242CDB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C9820(void *a1)
{
  *a1 = &unk_1F242CD70;
  a1[1] = &unk_1F242CDB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C9928(void *a1)
{
  *a1 = &unk_1F242CD70;
  a1[1] = &unk_1F242CDB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C9A18(void *a1)
{
  *a1 = &unk_1F242CD30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C9B00(void *a1)
{
  *a1 = &unk_1F242CD30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C9BD0(void *a1)
{
  *a1 = &unk_1F242CCF0;
  a1[1] = &unk_1F242CD30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C9CD8(void *a1)
{
  *a1 = &unk_1F242CCF0;
  a1[1] = &unk_1F242CD30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C9DC8(void *a1)
{
  *a1 = &unk_1F242CCB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C9EB0(void *a1)
{
  *a1 = &unk_1F242CCB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6C9F80(void *a1)
{
  *a1 = &unk_1F242CC70;
  a1[1] = &unk_1F242CCB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CA088(void *a1)
{
  *a1 = &unk_1F242CC70;
  a1[1] = &unk_1F242CCB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6CA178(void *a1)
{
  *a1 = &unk_1F242CC30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CA260(void *a1)
{
  *a1 = &unk_1F242CC30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6CA330(void *a1)
{
  *a1 = &unk_1F242CBF0;
  a1[1] = &unk_1F242CC30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CA438(void *a1)
{
  *a1 = &unk_1F242CBF0;
  a1[1] = &unk_1F242CC30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

uint64_t sub_1AE6CA520(void *a1)
{
  v2 = a1[1];
  if (v2 <= 0x21F)
  {
    operator new[]();
  }

  v3 = a1[2];
  if (v3 + 136 > v2)
  {
    operator new[]();
  }

  result = *(a1[4] + 16) + v3;
  a1[2] = v3 + 136;
  return result;
}

uint64_t sub_1AE6CA630(void *a1)
{
  v2 = a1[1];
  if (v2 <= 0x41F)
  {
    operator new[]();
  }

  v3 = a1[2];
  if (v3 + 264 > v2)
  {
    operator new[]();
  }

  result = *(a1[4] + 16) + v3;
  a1[2] = v3 + 264;
  return result;
}

uint64_t sub_1AE6CA740(void *a1)
{
  v2 = a1[1];
  if (v2 <= 0x81F)
  {
    operator new[]();
  }

  v3 = a1[2];
  if (v3 + 520 > v2)
  {
    operator new[]();
  }

  result = *(a1[4] + 16) + v3;
  a1[2] = v3 + 520;
  return result;
}

void sub_1AE6CA850(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F242D1E0;
  *(a1 + 8) = (*(*a2 + 72))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = 0xFFFFFFFF00000001;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 64) = 0xFFFFFFFF00000000;
  *(a1 + 74) = 0;
  *(a1 + 80) = &unk_1F242D288;
  *(a1 + 88) = &unk_1F242D2C8;
  *(a1 + 96) = xmmword_1AE79A690;
  *(a1 + 112) = a1 + 112;
  *(a1 + 120) = a1 + 112;
  *(a1 + 128) = 0;
  operator new[]();
}

void sub_1AE6CAA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1AE6CAA98(v15);
  _Unwind_Resume(a1);
}

void *sub_1AE6CAA98(void *a1)
{
  *a1 = &unk_1F242D288;
  a1[1] = &unk_1F242D2C8;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6CAB88(void *a1)
{
  *a1 = &unk_1F242D2C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CAC70(void *a1)
{
  *a1 = &unk_1F242D2C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6CAD40(void *a1)
{
  *a1 = &unk_1F242D288;
  a1[1] = &unk_1F242D2C8;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CAE48(void *a1)
{
  *a1 = &unk_1F242D288;
  a1[1] = &unk_1F242D2C8;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

uint64_t sub_1AE6CAF80(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    *(result + 72) = 0;
  }

  else
  {
    v1 = *(result + 24);
    result = *v1;
    if (*v1)
    {
      return (*(*result + 32))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

uint64_t sub_1AE6CAFD4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return a1 + 56;
  }

  v2 = *(a1 + 24);
  if (!*v2)
  {
    return v2[1] + 16 * v2[4];
  }

  (*(**v2 + 72))(*v2, 15, 15);
  v2 = *(a1 + 24);
  if (!*v2)
  {
    return v2[1] + 16 * v2[4];
  }

  v4 = *(**v2 + 24);

  return v4();
}

BOOL sub_1AE6CB098(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*v3)
  {
    if ((*(**v3 + 16))(*v3))
    {
      return 1;
    }
  }

  else if (v3[4] >= v3[2])
  {
    return 1;
  }

  if (*(a1 + 73) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *v4;
  if (*v4)
  {
    if (v5)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    (*(*v6 + 72))(v6, v7, 15);
    v5 = *(a1 + 32);
    v4 = *(a1 + 24);
    v6 = *v4;
  }

  if (v5)
  {
    if (v6)
    {
      v8 = (*(*v6 + 24))(v6);
    }

    else
    {
      v8 = v4[1] + 16 * v4[4];
    }

    v9 = (v8 + 4);
  }

  else if (v6)
  {
    v9 = (*(*v6 + 24))(v6);
  }

  else
  {
    v9 = (v4[1] + 16 * v4[4]);
  }

  return *v9 != *(a1 + 40);
}

uint64_t sub_1AE6CB208(uint64_t a1, unsigned int a2)
{
  *(a1 + 73) = 1;
  if (*(a1 + 74) == 1)
  {
    LOBYTE(v3) = 0;
    *(a1 + 72) = 0;
    *(a1 + 40) = -1;
    return v3 & 1;
  }

  *(a1 + 72) = a2 == 0;
  if (a2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(a1 + 40) = v4;
  v5 = **(a1 + 24);
  if (v5)
  {
    if (*(a1 + 32))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    (*(*v5 + 72))(v5, v6, 15);
    v4 = *(a1 + 40);
  }

  if (v4 >= *(a1 + 36))
  {
    v8 = *(a1 + 48);
    if (!v8)
    {
      v9 = 0;
      goto LABEL_68;
    }

    v9 = 0;
    while (1)
    {
      v10 = (v9 + v8) >> 1;
      v11 = *(a1 + 24);
      v12 = *v11;
      if (*v11)
      {
        (*(*v12 + 56))(v12, (v9 + v8) >> 1);
        v11 = *(a1 + 24);
        v12 = *v11;
        if (*(a1 + 32))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v11[4] = v10;
        if (*(a1 + 32))
        {
LABEL_19:
          if (v12)
          {
            v13 = (*(*v12 + 24))(v12);
          }

          else
          {
            v13 = v11[1] + 16 * v11[4];
          }

          v14 = (v13 + 4);
          goto LABEL_26;
        }
      }

      if (v12)
      {
        v14 = (*(*v12 + 24))(v12);
      }

      else
      {
        v14 = (v11[1] + 16 * v11[4]);
      }

LABEL_26:
      v15 = *(a1 + 40);
      if (*v14 > v15)
      {
        v8 = (v9 + v8) >> 1;
        if (v9 >= v10)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (*v14 >= v15)
        {
          while (1)
          {
            if (v10 <= v9)
            {
              LOBYTE(v3) = 1;
              return v3 & 1;
            }

            v18 = *(a1 + 24);
            --v10;
            v19 = *v18;
            if (*v18)
            {
              (*(*v19 + 56))(v19, v10);
              v18 = *(a1 + 24);
              v19 = *v18;
              if (*(a1 + 32))
              {
                goto LABEL_37;
              }
            }

            else
            {
              v18[4] = v10;
              if (*(a1 + 32))
              {
LABEL_37:
                if (v19)
                {
                  v16 = (*(*v19 + 24))(v19);
                }

                else
                {
                  v16 = v18[1] + 16 * v18[4];
                }

                v17 = (v16 + 4);
                goto LABEL_33;
              }
            }

            if (v19)
            {
              v17 = (*(*v19 + 24))(v19);
            }

            else
            {
              v17 = (v18[1] + 16 * v18[4]);
            }

LABEL_33:
            if (*v17 != *(a1 + 40))
            {
              v28 = v10 + 1;
              v29 = *(a1 + 24);
              if (*v29)
              {
                (*(**v29 + 56))(*v29, v28);
              }

              else
              {
                v29[4] = v28;
              }

              LOBYTE(v3) = 1;
              return v3 & 1;
            }
          }
        }

        v9 = v10 + 1;
        if (v10 + 1 >= v8)
        {
LABEL_68:
          v26 = *(a1 + 24);
          if (*v26)
          {
            (*(**v26 + 56))(*v26, v9);
          }

          else
          {
            v26[4] = v9;
          }

          goto LABEL_71;
        }
      }
    }
  }

  v7 = *(a1 + 24);
  if (*v7)
  {
    (*(**v7 + 48))(*v7);
  }

  else
  {
    v7[4] = 0;
  }

  while (1)
  {
    v20 = *(a1 + 24);
    if (*v20)
    {
      if ((*(**v20 + 16))(*v20))
      {
        goto LABEL_71;
      }

      v20 = *(a1 + 24);
      v21 = *v20;
      if (!*(a1 + 32))
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v20[4] >= v20[2])
      {
        goto LABEL_71;
      }

      v21 = 0;
      if (!*(a1 + 32))
      {
LABEL_52:
        if (v21)
        {
          v23 = (*(*v21 + 24))(v21);
        }

        else
        {
          v23 = (v20[1] + 16 * v20[4]);
        }

        goto LABEL_56;
      }
    }

    v22 = v21 ? (*(*v21 + 24))(v21) : v20[1] + 16 * v20[4];
    v23 = (v22 + 4);
LABEL_56:
    v24 = *(a1 + 40);
    v3 = *v23 <= v24 ? 0 : 7;
    if (*v23 == v24)
    {
      v3 = 1;
    }

    if (v3)
    {
      break;
    }

    v25 = *(a1 + 24);
    if (*v25)
    {
      (*(**v25 + 32))(*v25);
    }

    else
    {
      ++v25[4];
    }
  }

  if (v3 == 1)
  {
    return v3 & 1;
  }

LABEL_71:
  LOBYTE(v3) = *(a1 + 72);
  return v3 & 1;
}

uint64_t sub_1AE6CB6CC(uint64_t result, uint64_t a2)
{
  if (*(result + 16) == a2)
  {
    return result;
  }

  v3 = result;
  *(result + 16) = a2;
  if (*(result + 32) == 3)
  {
    v12 = 5;
    strcpy(__p, "FATAL");
    v4 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
    sub_1AE5DB608(v4, ": ", 2);
    sub_1AE5DB608(MEMORY[0x1E69E5300], "SortedMatcher: bad match type", 29);
    sub_1AE696D18();
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    *(v3 + 74) = 1;
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    else
    {
      v7 = v5[3];
      if (v7)
      {
        --*v7;
      }
    }

    v6 = *(v3 + 136);
    v5[5] = v6;
    *(v3 + 136) = v5;
  }

  else
  {
    v5 = *(v3 + 136);
    if (!v5)
    {
      v9 = *(v3 + 96);
      if (v9 <= 0xBF)
      {
        operator new[]();
      }

      v10 = *(v3 + 104);
      if (v10 + 48 > v9)
      {
        operator new[]();
      }

      v5 = (*(*(v3 + 120) + 16) + v10);
      *(v3 + 104) = v10 + 48;
      v5[5] = 0;
      goto LABEL_15;
    }

    v6 = v5[5];
  }

  *(v3 + 136) = v6;
LABEL_15:
  v8 = *(v3 + 8);
  v5[4] = 0;
  (*(*v8 + 120))(v8, a2, v5);
  *(v3 + 24) = v5;
  if (*v5)
  {
    (*(**v5 + 72))(*v5, 16, 16);
  }

  result = (*(**(v3 + 8) + 32))(*(v3 + 8), a2);
  *(v3 + 48) = result;
  *(v3 + 68) = a2;
  return result;
}

void sub_1AE6CB988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6CB9B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 74))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_1AE6CB9D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    return 3;
  }

  if (v2)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0x10000000;
  }

  v7 = *(a1 + 8);
  if (v2)
  {
    v8 = 3221225472;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = (*(*v7 + 56))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 32);
  }

  v10 = 0x80000000;
  if (!v2)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

void sub_1AE6CBC28(void *a1)
{
  *a1 = &unk_1F242D1E0;
  v2 = a1[3];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    else
    {
      v3 = v2[3];
      if (v3)
      {
        --*v3;
      }
    }

    v2[5] = a1[17];
    a1[17] = v2;
  }

  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[10] = &unk_1F242D288;
  a1[11] = &unk_1F242D2C8;
  v5 = a1 + 14;
  v6 = a1[15];
  if (v6 != a1 + 14)
  {
    do
    {
      v7 = v6[2];
      if (v7)
      {
        MEMORY[0x1B27063D0](v7, 0x1000C8077774924);
      }

      v6 = v6[1];
    }

    while (v6 != v5);
  }

  if (a1[16])
  {
    v8 = a1[15];
    v9 = *(a1[14] + 8);
    v10 = *v8;
    *(v10 + 8) = v9;
    *v9 = v10;
    a1[16] = 0;
    if (v8 != v5)
    {
      do
      {
        v11 = v8[1];
        operator delete(v8);
        v8 = v11;
      }

      while (v11 != v5);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CBDD4(void *a1)
{
  *a1 = &unk_1F242D1E0;
  v2 = a1[3];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    else
    {
      v3 = v2[3];
      if (v3)
      {
        --*v3;
      }
    }

    v2[5] = a1[17];
    a1[17] = v2;
  }

  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[10] = &unk_1F242D288;
  a1[11] = &unk_1F242D2C8;
  v5 = a1 + 14;
  v6 = a1[15];
  if (v6 != a1 + 14)
  {
    do
    {
      v7 = v6[2];
      if (v7)
      {
        MEMORY[0x1B27063D0](v7, 0x1000C8077774924);
      }

      v6 = v6[1];
    }

    while (v6 != v5);
  }

  if (a1[16])
  {
    v8 = a1[15];
    v9 = *(a1[14] + 8);
    v10 = *v8;
    *(v10 + 8) = v9;
    *v9 = v10;
    a1[16] = 0;
    if (v8 != v5)
    {
      do
      {
        v11 = v8[1];
        operator delete(v8);
        v8 = v11;
      }

      while (v11 != v5);
    }
  }

  return a1;
}

float sub_1AE6CBF60@<S0>(uint64_t a1@<X0>, int a2@<W1>, float *a3@<X8>)
{
  v5 = (*(*(a1 + 176) + 104) + 12 * a2);
  v6 = *v5;
  (*(***(a1 + 144) + 96))(&v14 + 4);
  result = *(&v14 + 1);
  v16 = HIDWORD(v14);
  v15 = 2139095039;
  if (*(&v14 + 1) == 3.4028e38)
  {
    goto LABEL_3;
  }

  v8 = v5[1];
  (*(***(a1 + 152) + 96))(&v14);
  result = *&v14;
  v16 = v14;
  v15 = 2139095039;
  if (*&v14 == 3.4028e38)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 136);
  LOBYTE(v16) = *(v5 + 8);
  sub_1AE6CC14C(v9, v6, v8, &v16);
  result = *(&v14 + 1);
  if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
  {
    v12 = result;
    v10 = __cxa_guard_acquire(&qword_1ED9AC728);
    result = v12;
    if (v10)
    {
      dword_1ED9AC720 = -8388609;
      __cxa_guard_release(&qword_1ED9AC728);
      result = v12;
    }
  }

  if (result != *&dword_1ED9AC720)
  {
    result = *&v14;
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
    {
      v13 = result;
      v11 = __cxa_guard_acquire(&qword_1ED9AC728);
      result = v13;
      if (v11)
      {
        dword_1ED9AC720 = -8388609;
        __cxa_guard_release(&qword_1ED9AC728);
        result = v13;
      }
    }

    if (result != *&dword_1ED9AC720)
    {
      result = *&v14 + *(&v14 + 1);
      if (*(&v14 + 1) == 3.4028e38 || *&v14 == 3.4028e38)
      {
        result = 3.4028e38;
      }

LABEL_3:
      *a3 = result;
    }
  }

  return result;
}

void *sub_1AE6CC14C(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = result;
  if (*(result + 8) != a2 || *(result + 9) != a3 || *a4 != *(result + 40))
  {
    *(result + 8) = a2;
    *(result + 9) = a3;
    *(result + 40) = *a4;
    v7 = (*(*result[2] + 32))(result[2]);
    v8 = (*(*v5[2] + 48))(v5[2], a2);
    (*(*v5[2] + 24))(&v12);
    v13 = v12;
    HIDWORD(v12) = 2139095039;
    v9.n128_u32[0] = v12;
    *(v5 + 41) = v7 == v8 && *&v12 == 3.4028e38;
    *(v5 + 43) = v8 == 0;
    v10 = (*(*v5[3] + 32))(v5[3], a3, v9);
    v11 = (*(*v5[3] + 40))(v5[3], a3);
    result = (*(*v5[3] + 24))(&v12);
    *(v5 + 42) = v10 == v11 && *&v12 == 3.4028e38;
    *(v5 + 44) = v11 == 0;
  }

  return result;
}

uint64_t sub_1AE6CC350(uint64_t a1)
{
  result = (*(**(a1 + 160) + 16))(*(a1 + 160));
  if (result != -1)
  {
    v3 = result;
    result = (*(**(a1 + 168) + 16))(*(a1 + 168));
    if (result != -1)
    {
      v8 = __PAIR64__(result, v3);
      v9 = 0;
      v4 = *(a1 + 176);
      v4[16] = &v8;
      v5 = sub_1AE6CC440(v4 + 4);
      if (v5)
      {
        return *(v5 + 4);
      }

      else
      {
        v6 = (v4[14] - v4[13]) >> 2;
        v7 = (-1431655765 * v6);
        v10 = -1431655765 * v6;
        sub_1AE6CC56C((v4 + 13), &v8);
        sub_1AE6CC6BC((v4 + 4), v7, &v10);
        return v7;
      }
    }
  }

  return result;
}

uint64_t *sub_1AE6CC440(void *a1)
{
  v1 = a1[1];
  if (!*&v1)
  {
    return 0;
  }

  v2 = **(a1[6] + 128) + 7853 * *(*(a1[6] + 128) + 4) + 7867 * *(*(a1[6] + 128) + 8);
  v3 = vcnt_s8(v1);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = **(a1[6] + 128) + 7853 * *(*(a1[6] + 128) + 4) + 7867 * *(*(a1[6] + 128) + 8);
    if (v2 >= *&v1)
    {
      v4 = v2 % *&v1;
    }
  }

  else
  {
    v4 = (*&v1 - 1) & v2;
  }

  i = *(*a1 + 8 * v4);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v6 = i[1];
      if (v6 == v2)
      {
        v7 = *(i + 4);
        if (v7 >= -1)
        {
          v8 = a1[8];
          if (v7 == -1)
          {
            v10 = *(v8 + 128);
            v9 = v10;
          }

          else
          {
            v9 = *(v8 + 104) + 12 * v7;
            v10 = *(v8 + 128);
          }

          if (v9 == v10)
          {
            return i;
          }

          v11 = *v9 == *v10 && *(v9 + 4) == *(v10 + 4);
          if (v11 && *(v9 + 8) == *(v10 + 8))
          {
            return i;
          }
        }
      }

      else
      {
        if (v3.u32[0] <= 1uLL)
        {
          v6 &= *&v1 - 1;
        }

        else if (v6 >= *&v1)
        {
          v6 %= *&v1;
        }

        if (v6 != v4)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void sub_1AE6CC56C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      sub_1AE5CBB70();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = v12 + 12;
    v13 = v12 - v8;
    if (v7 != v3)
    {
      v14 = v13;
      do
      {
        v15 = *v7;
        *(v14 + 8) = v7[2];
        *v14 = v15;
        v14 += 12;
        v7 += 3;
      }

      while (v7 != v3);
      v7 = *a1;
    }

    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v5;
    v6 = (v3 + 3);
  }

  *(a1 + 8) = v6;
}

void sub_1AE6CC6BC(uint64_t a1, int a2, _DWORD *a3)
{
  if (a2 < -1)
  {
    v8 = 0;
    v9 = *(a1 + 8);
    if (!v9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v6 = *(a1 + 48);
    if (a2 == -1)
    {
      v7 = *(v6 + 128);
    }

    else
    {
      v7 = (*(v6 + 104) + 12 * a2);
    }

    v8 = *v7 + 7853 * v7[1] + 7867 * *(v7 + 8);
    v9 = *(a1 + 8);
    if (!v9)
    {
      goto LABEL_38;
    }
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v3 = v8;
    if (v8 >= v9)
    {
      v3 = v8 % v9;
    }
  }

  else
  {
    v3 = (v9 - 1) & v8;
  }

  v11 = *(*a1 + 8 * v3);
  if (v11)
  {
    v12 = *v11;
    if (v12)
    {
      v13 = v9 - 1;
      if (a2 < -1)
      {
        if (v10.u32[0] < 2uLL)
        {
          while (1)
          {
            v32 = v12[1];
            if (v32 == v8)
            {
              if (*(v12 + 4) == a2)
              {
                return;
              }
            }

            else if ((v32 & v13) != v3)
            {
              goto LABEL_38;
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_38;
            }
          }
        }

        while (1)
        {
          v33 = v12[1];
          if (v33 == v8)
          {
            if (*(v12 + 4) == a2)
            {
              return;
            }
          }

          else
          {
            if (v33 >= v9)
            {
              v33 %= v9;
            }

            if (v33 != v3)
            {
              goto LABEL_38;
            }
          }

          v12 = *v12;
          if (!v12)
          {
            goto LABEL_38;
          }
        }
      }

      while (1)
      {
        v14 = v12[1];
        if (v14 == v8)
        {
          break;
        }

        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= v9)
          {
            v14 %= v9;
          }
        }

        else
        {
          v14 &= v13;
        }

        if (v14 != v3)
        {
          goto LABEL_38;
        }

LABEL_14:
        v12 = *v12;
        if (!v12)
        {
          goto LABEL_38;
        }
      }

      v15 = *(v12 + 4);
      if (v15 < -1)
      {
        if (v15 == a2)
        {
          return;
        }

        goto LABEL_14;
      }

      v16 = *(a1 + 64);
      if (v15 == -1)
      {
        v17 = *(v16 + 128);
        if (a2 != -1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v17 = *(v16 + 104) + 12 * v15;
        if (a2 != -1)
        {
LABEL_19:
          v18 = *(v16 + 104) + 12 * a2;
LABEL_28:
          if (v17 == v18)
          {
            return;
          }

          v19 = *v17 == *v18 && *(v17 + 4) == *(v18 + 4);
          if (v19 && *(v17 + 8) == *(v18 + 8))
          {
            return;
          }

          goto LABEL_14;
        }
      }

      v18 = *(v16 + 128);
      goto LABEL_28;
    }
  }

LABEL_38:
  v20 = sub_1AE6C742C(*(a1 + 32));
  v21 = *(v20 + 56);
  if (v21)
  {
    *(v20 + 56) = *(v21 + 24);
  }

  else
  {
    v21 = sub_1AE6CCAEC((v20 + 8));
    *(v21 + 24) = 0;
  }

  *v21 = 0;
  *(v21 + 8) = v8;
  *(v21 + 16) = *a3;
  v22 = (*(a1 + 40) + 1);
  v23 = *(a1 + 56);
  if (!v9 || (v23 * v9) < v22)
  {
    v24 = 1;
    if (v9 >= 3)
    {
      v24 = (v9 & (v9 - 1)) != 0;
    }

    v25 = v24 | (2 * v9);
    v26 = vcvtps_u32_f32(v22 / v23);
    if (v25 <= v26)
    {
      prime = v26;
    }

    else
    {
      prime = v25;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v28 = *(a1 + 8);
    if (prime > *&v28)
    {
      goto LABEL_53;
    }

    if (prime < *&v28)
    {
      v29 = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 56));
      if (*&v28 < 3uLL || (v30 = vcnt_s8(v28), v30.i16[0] = vaddlv_u8(v30), v30.u32[0] > 1uLL))
      {
        v29 = std::__next_prime(v29);
      }

      else
      {
        v31 = 1 << -__clz(v29 - 1);
        if (v29 >= 2)
        {
          v29 = v31;
        }
      }

      if (prime <= v29)
      {
        prime = v29;
      }

      if (prime < *&v28)
      {
LABEL_53:
        sub_1AE6C71A8(a1, prime);
      }
    }

    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v34 = *a1;
  v35 = *(*a1 + 8 * v3);
  if (v35)
  {
    *v21 = *v35;
  }

  else
  {
    *v21 = *(a1 + 24);
    *(a1 + 24) = v21;
    *(v34 + 8 * v3) = a1 + 24;
    if (!*v21)
    {
      goto LABEL_86;
    }

    v36 = *(*v21 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v36 >= v9)
      {
        v36 %= v9;
      }

      v35 = (v34 + 8 * v36);
    }

    else
    {
      v35 = (v34 + 8 * (v36 & (v9 - 1)));
    }
  }

  *v35 = v21;
LABEL_86:
  ++*(a1 + 40);
}

void sub_1AE6CCAD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6CCBFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6CCAEC(void *a1)
{
  v2 = a1[1];
  if (v2 <= 0x7F)
  {
    operator new[]();
  }

  v3 = a1[2];
  if (v3 + 32 > v2)
  {
    operator new[]();
  }

  result = *(a1[4] + 16) + v3;
  a1[2] = v3 + 32;
  return result;
}

uint64_t *sub_1AE6CCBFC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = sub_1AE6C742C(*result[1]);
    *(v1 + 24) = *(v3 + 56);
    *(v3 + 56) = v1;
    return v2;
  }

  return result;
}

uint64_t sub_1AE6CCC48(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

void sub_1AE6CCE14(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  MEMORY[0x1B2706400](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6CCE78(uint64_t a1)
{
  v1 = *(*(*(*a1 + 32))(a1) + 24);

  return v1();
}

uint64_t sub_1AE6CCEF8(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return sub_1AE6CCF24(result, v1, v2);
  }

  return result;
}

uint64_t sub_1AE6CCF24(uint64_t a1, uint64_t a2, void *a3)
{
LABEL_1:
  if (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if ((*(**a3 + 72))())
            {
              goto LABEL_1;
            }

            v9 = (*(**a2 + 80))();
            v10 = (*(**a3 + 80))();
            (*(**a3 + 88))();
            v11 = *(a1 + 28);
            v12 = v11 == 0;
            v13 = v11 ? v10 : v9;
            v14 = *v13;
            v15 = *(v13 + 8);
            v16 = *(v13 + 12);
            v17 = v12 ? v10 : v9;
            v18 = *v17;
            v19 = *(v17 + 8);
            v20 = *(v17 + 12);
            v21 = *(*(a1 + 16) + 136);
            if (v18 != -1)
            {
              break;
            }

            v8 = v21[40];
            if (v21[40])
            {
              if (v8 == 1)
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v21[44])
              {
                goto LABEL_31;
              }

              if ((v21[42] & 1) == 0)
              {
                LOBYTE(v8) = 1;
                goto LABEL_32;
              }
            }
          }

          if (HIDWORD(v14))
          {
            break;
          }

          LOBYTE(v8) = v21[40];
          if (!v8)
          {
            goto LABEL_32;
          }
        }

        if (HIDWORD(v14) != -1)
        {
          goto LABEL_31;
        }

        v8 = v21[40];
        if (!v21[40])
        {
          break;
        }

        if (v8 == 2)
        {
          goto LABEL_32;
        }
      }

      if (v21[43])
      {
        break;
      }

      if ((v21[41] & 1) == 0)
      {
        LOBYTE(v8) = 2;
        goto LABEL_32;
      }
    }

LABEL_31:
    LOBYTE(v8) = 0;
LABEL_32:
    v33 = __PAIR64__(v20, v16);
    v34 = v8;
    *(a1 + 68) = v14;
    *(a1 + 72) = HIDWORD(v18);
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
    {
      v29 = v19;
      v31 = v15;
      v27 = __cxa_guard_acquire(&qword_1ED9AC728);
      v19 = v29;
      v15 = v31;
      if (v27)
      {
        dword_1ED9AC720 = -8388609;
        __cxa_guard_release(&qword_1ED9AC728);
        v19 = v29;
        v15 = v31;
      }
    }

    if (v15 != *&dword_1ED9AC720)
    {
      if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
      {
        v30 = v19;
        v32 = v15;
        v28 = __cxa_guard_acquire(&qword_1ED9AC728);
        v19 = v30;
        v15 = v32;
        if (v28)
        {
          dword_1ED9AC720 = -8388609;
          __cxa_guard_release(&qword_1ED9AC728);
          v19 = v30;
          v15 = v32;
        }
      }

      if (v19 != *&dword_1ED9AC720)
      {
        v22 = v15 == 3.4028e38;
        v15 = v19 + v15;
        if (v22 || v19 == 3.4028e38)
        {
          v15 = 3.4028e38;
        }
      }
    }

    *(a1 + 76) = v15;
    v23 = *(*(a1 + 16) + 176);
    v23[16] = &v33;
    v24 = sub_1AE6CC440(v23 + 4);
    if (v24)
    {
      v25 = *(v24 + 4);
    }

    else
    {
      v35 = -1431655765 * ((v23[14] - v23[13]) >> 2);
      v25 = v35;
      sub_1AE6CC56C((v23 + 13), &v33);
      sub_1AE6CC6BC((v23 + 4), v25, &v35);
    }

    *(a1 + 80) = v25;
    return 1;
  }

  return 0;
}

uint64_t sub_1AE6CD39C(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t sub_1AE6CD3B8(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t sub_1AE6CD458(uint64_t a1, int a2)
{
  *(a1 + 48) = a2 == 0;
  if (*(a1 + 28))
  {
    if (a2)
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      goto LABEL_6;
    }

    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
LABEL_6:
  result = (*(**v3 + 64))();
  if (result)
  {
    v6 = *(a1 + 28) == 0;
    v7 = (*(**v3 + 80))();
    (*(**v4 + 64))(*v4, *(v7 + 4 * v6));

    return sub_1AE6CCF24(a1, v3, v4);
  }

  return result;
}

uint64_t sub_1AE6CD564(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    *(result + 24) = a2;
    v2 = (*(*(*(result + 16) + 176) + 104) + 12 * a2);
    v3 = v2[1];
    v4 = result;
    (*(***(result + 32) + 56))(**(result + 32), *v2);
    result = (*(***(v4 + 40) + 56))(**(v4 + 40), v3);
    *(v4 + 64) = *(v4 + 24);
  }

  return result;
}

uint64_t sub_1AE6CD618(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_1AE6CD634(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

void sub_1AE6CDA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B2706400](v15, v16);
  _Unwind_Resume(a1);
}

void sub_1AE6CDAE4(void *a1)
{
  *a1 = &unk_1F242D928;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CDBDC(void *a1)
{
  *a1 = &unk_1F242D928;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t sub_1AE6CDCB4(uint64_t a1, int a2)
{
  v4 = (*(*(a1 + 176) + 104) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(a1 + 136);
  LOBYTE(__p[0]) = *(v4 + 8);
  sub_1AE6CC14C(v7, v5, v6, __p);
  v8 = *(a1 + 184);
  if (!v8)
  {
    return sub_1AE6CDEBC(a1, a2, v6, *(a1 + 160), v5, *(a1 + 152), 1);
  }

  if (v8 != 1)
  {
    v12 = (*(***(a1 + 144) + 104))(**(a1 + 144), v5);
    v13 = (*(***(a1 + 152) + 104))(**(a1 + 152), v6);
    if (v12 == -1 && v13 == -1)
    {
      v20 = 5;
      strcpy(__p, "FATAL");
      v18 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
      sub_1AE5DB608(v18, ": ", 2);
      sub_1AE5DB608(MEMORY[0x1E69E5300], "ComposeFst: both sides can't require match", 42);
      sub_1AE696D18();
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 8) |= 4uLL;
    }

    else
    {
      v16 = v13 == -1 || v12 <= v13;
      if (v12 == -1 || !v16)
      {
        goto LABEL_3;
      }
    }

    return sub_1AE6CDEBC(a1, a2, v6, *(a1 + 160), v5, *(a1 + 152), 1);
  }

LABEL_3:
  v9 = *(a1 + 168);
  v10 = *(a1 + 144);

  return sub_1AE6CDEBC(a1, a2, v5, v9, v6, v10, 0);
}

void sub_1AE6CDE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6CDEBC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  (*(**a6 + 56))(*a6, a3);
  LODWORD(v19) = a7 - 1;
  HIDWORD(v19) = a7 << 31 >> 31;
  v20 = 0;
  v21 = a5;
  sub_1AE6CE10C(a1, a2, a6, &v19, a7);
  v18 = 0;
  (*(*a4 + 120))(a4, a5, v16);
  while (1)
  {
    if (!v16[0])
    {
      v14 = v18;
      if (v18 >= v16[2])
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if ((*(*v16[0] + 16))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      v14 = v18;
LABEL_10:
      v13 = (v16[1] + 16 * v14);
      goto LABEL_11;
    }

    v13 = (*(*v16[0] + 24))();
LABEL_11:
    sub_1AE6CE10C(a1, a2, a6, v13, a7);
    if (v16[0])
    {
      (*(*v16[0] + 32))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return sub_1AE6CE468(a1, a2);
  }

LABEL_15:
  if (v17)
  {
    --*v17;
  }

  return sub_1AE6CE468(a1, a2);
}

void sub_1AE6CE0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (!a10)
  {
    if (a13)
    {
      --*a13;
    }

    _Unwind_Resume(exception_object);
  }

  (*(*a10 + 8))(a10);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6CE10C(uint64_t a1, int a2, void *a3, unint64_t *a4, int a5)
{
  v5 = a5;
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      if (v5)
      {
        while (1)
        {
          v20 = (*(**a3 + 80))();
          v30 = *v20;
          v31 = *(v20 + 8);
          v32 = *(v20 + 12);
          v21 = *a4;
          v27 = *a4;
          v28 = *(a4 + 2);
          v29 = *(a4 + 3);
          v22 = *(a1 + 136);
          if (v30 == -1)
          {
            v19 = v22[40];
            if (v19 == 1)
            {
              goto LABEL_31;
            }

            if (v22[40])
            {
              goto LABEL_33;
            }

            if ((v22[44] & 1) == 0)
            {
              if (v22[42])
              {
                goto LABEL_33;
              }

              LOBYTE(v19) = 1;
              goto LABEL_31;
            }
          }

          else
          {
            v23 = HIDWORD(v21);
            if (v23 == -1)
            {
              v19 = v22[40];
              if (v19 == 2)
              {
                goto LABEL_31;
              }

              if (v22[40])
              {
                goto LABEL_33;
              }

              if ((v22[43] & 1) == 0)
              {
                if (v22[41])
                {
                  goto LABEL_33;
                }

                LOBYTE(v19) = 2;
                goto LABEL_31;
              }
            }

            else if (!v23)
            {
              v24 = v22[40];
              if (v24)
              {
                v25 = -1;
              }

              else
              {
                v25 = 0;
              }

              v26 = v25;
              if (v24)
              {
                goto LABEL_33;
              }

              goto LABEL_32;
            }
          }

          LOBYTE(v19) = 0;
LABEL_31:
          v26 = v19;
LABEL_32:
          sub_1AE6D7BAC(a1, a2, &v27, &v30, &v26);
LABEL_33:
          (*(**a3 + 88))();
          result = (*(**a3 + 72))();
          if (result)
          {
            return result;
          }
        }
      }

      do
      {
        v12 = (*(**a3 + 80))();
        v13 = *v12;
        v30 = *v12;
        v31 = *(v12 + 8);
        v32 = *(v12 + 12);
        v27 = *a4;
        v28 = *(a4 + 2);
        v29 = *(a4 + 3);
        v14 = *(a1 + 136);
        if (v27 == -1)
        {
          v15 = v14[40];
          if (v15 != 1)
          {
            if (v14[40])
            {
              goto LABEL_10;
            }

            if (v14[44])
            {
              goto LABEL_22;
            }

            if (v14[42])
            {
              goto LABEL_10;
            }

            LOBYTE(v15) = 1;
          }
        }

        else
        {
          v16 = HIDWORD(v13);
          if (!v16)
          {
            v17 = v14[40];
            if (v17)
            {
              v18 = -1;
            }

            else
            {
              v18 = 0;
            }

            v26 = v18;
            if (v17)
            {
              goto LABEL_10;
            }

            goto LABEL_9;
          }

          if (v16 != -1)
          {
LABEL_22:
            v26 = 0;
            goto LABEL_9;
          }

          v15 = v14[40];
          if (v15 != 2)
          {
            if (v14[40])
            {
              goto LABEL_10;
            }

            if (v14[43])
            {
              goto LABEL_22;
            }

            if (v14[41])
            {
              goto LABEL_10;
            }

            LOBYTE(v15) = 2;
          }
        }

        v26 = v15;
LABEL_9:
        sub_1AE6D7BAC(a1, a2, &v30, &v27, &v26);
LABEL_10:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

uint64_t sub_1AE6CE468(uint64_t a1, int a2)
{
  v4 = sub_1AE6CE5A0(*(a1 + 120), a2);
  v5 = v4;
  v6 = *(a1 + 120);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = v8 - v7;
  if (v8 != v7)
  {
    v10 = v9 >> 4;
    if ((v9 >> 4) <= 1)
    {
      v10 = 1;
    }

    v11 = (v7 + 4);
    do
    {
      if (*(v11 - 1))
      {
        if (!*v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        ++*(v4 + 8);
        if (!*v11)
        {
LABEL_10:
          ++*(v4 + 16);
        }
      }

      v11 += 4;
      --v10;
    }

    while (v10);
  }

  if (*(v6 + 120) == 1 && (*(v4 + 56) & 4) != 0)
  {
    v12 = *(v6 + 128) + v9;
    *(v6 + 128) = v12;
    if (v12 > *(v6 + 112))
    {
      sub_1AE6CE6CC(v6, v4);
      v7 = *(v5 + 24);
      v8 = *(v5 + 32);
    }
  }

  if (v8 != v7)
  {
    v13 = (v8 - v7) >> 4;
    v14 = *(a1 + 68);
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v15 = (v7 + 12);
    do
    {
      v17 = *v15;
      v15 += 4;
      v16 = v17;
      if (v17 >= v14)
      {
        v14 = v16 + 1;
        *(a1 + 68) = v16 + 1;
      }

      --v13;
    }

    while (v13);
  }

  result = sub_1AE6CEAB0(a1, a2);
  *(v5 + 56) |= 0xAu;
  return result;
}

uint64_t sub_1AE6CE5A0(uint64_t a1, int a2)
{
  v3 = *(a1 + 92);
  if (v3 == a2)
  {
    result = *(a1 + 96);
  }

  else
  {
    if (*(a1 + 88) == 1)
    {
      if (v3 == -1)
      {
        *(a1 + 92) = a2;
        v6 = sub_1AE6CEBCC(a1, 0);
        *(a1 + 96) = v6;
        *(v6 + 56) |= 4u;
        sub_1AE6CEE34((v6 + 24));
        result = *(a1 + 96);
        goto LABEL_10;
      }

      v5 = *(a1 + 96);
      if (!*(v5 + 60))
      {
        *(a1 + 92) = a2;
        *v5 = 2139095039;
        *(v5 + 56) = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(v5 + 32) = *(v5 + 24);
        result = *(a1 + 96);
        *(result + 56) |= 4u;
        goto LABEL_10;
      }

      *(v5 + 56) &= ~4u;
      *(a1 + 88) = 0;
    }

    result = sub_1AE6CEBCC(a1, a2 + 1);
  }

LABEL_10:
  if (*(a1 + 104) == 1)
  {
    v7 = *(result + 56);
    if ((v7 & 4) == 0)
    {
      *(result + 56) = v7 | 4;
      v8 = *(result + 32) - *(result + 24) + *(a1 + 128) + 64;
      *(a1 + 128) = v8;
      *(a1 + 120) = 1;
      if (v8 > *(a1 + 112))
      {
        v9 = result;
        sub_1AE6CE6CC(a1, result);
        return v9;
      }
    }
  }

  return result;
}

void sub_1AE6CE6CC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 32;
  v6 = MEMORY[0x1E69E5300];
  while (2)
  {
    if (*(a1 + 120) == 1)
    {
      v9 = (*(a1 + 112) * 0.666);
      v10 = *(a1 + 40);
LABEL_6:
      *(a1 + 64) = v10;
      if (v10 == v5)
      {
LABEL_2:
        v7 = *(a1 + 128);
        v8 = v4 | (v7 <= v9);
        v4 = 1;
        if ((v8 & 1) == 0)
        {
          continue;
        }

        if (v9)
        {
          if (v7 > v9)
          {
            v33 = *(a1 + 112);
            do
            {
              v33 *= 2;
              v9 *= 2;
            }

            while (v7 > v9);
            *(a1 + 112) = v33;
          }
        }

        else if (v7)
        {
          v36 = 5;
          strcpy(__p, "FATAL");
          v34 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
          sub_1AE5DB608(v34, ": ", 2);
          sub_1AE5DB608(MEMORY[0x1E69E5300], "GCCacheStore:GC: Unable to free all cached states", 49);
          sub_1AE696D18();
          if (v36 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return;
      }

      while (1)
      {
        v11 = *(v10 + 16);
        if (v11 && (v12 = v11 - 1, v13 = *(a1 + 92), v13 != v11 - 1))
        {
          if (*(a1 + 88) == 1)
          {
            if (v13 == -1)
            {
              *(a1 + 92) = v12;
              v16 = sub_1AE6CEBCC(a1, 0);
              *(a1 + 96) = v16;
              *(v16 + 56) |= 4u;
              sub_1AE6CEE34((v16 + 24));
              v14 = *(a1 + 96);
              goto LABEL_17;
            }

            v15 = *(a1 + 96);
            if (!*(v15 + 60))
            {
              *(a1 + 92) = v12;
              *v15 = 2139095039;
              *(v15 + 56) = 0;
              *(v15 + 8) = 0;
              *(v15 + 16) = 0;
              *(v15 + 32) = *(v15 + 24);
              v14 = *(a1 + 96);
              *(v14 + 56) |= 4u;
              goto LABEL_17;
            }

            *(v15 + 56) &= ~4u;
            *(a1 + 88) = 0;
          }

          v14 = sub_1AE6CEBCC(a1, v11);
        }

        else
        {
          v14 = *(a1 + 96);
        }

LABEL_17:
        v17 = *(a1 + 128);
        if (v17 <= v9 || *(v14 + 60))
        {
LABEL_5:
          *(v14 + 56) &= ~8u;
          v10 = *(*(a1 + 64) + 8);
          goto LABEL_6;
        }

        if (v4)
        {
          if (v14 == a2)
          {
            goto LABEL_5;
          }

          v18 = *(v14 + 56);
        }

        else
        {
          v18 = *(v14 + 56);
          if ((v18 & 8) != 0 || v14 == a2)
          {
            goto LABEL_5;
          }
        }

        if ((v18 & 4) != 0)
        {
          v19 = *(v14 + 32) - *(v14 + 24) + 64;
          if (v19 > v17)
          {
            v36 = 5;
            strcpy(__p, "FATAL");
            v20 = sub_1AE5DB608(v6, __p, 5);
            sub_1AE5DB608(v20, ": ", 2);
            v21 = sub_1AE5DB608(v6, "Check failed: ", 15);
            v22 = sub_1AE5DB608(v21, "(size) <= (cache_size_)", 23);
            v23 = sub_1AE5DB608(v22, " file: ", 8);
            v24 = sub_1AE5DB608(v23, "/Library/Caches/com.apple.xbs/Sources/LanguageModeling/Source/fst/cache.h", 73);
            v25 = sub_1AE5DB608(v24, " line: ", 7);
            MEMORY[0x1B2706100](v25, 798);
            sub_1AE696D18();
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }

            v17 = *(a1 + 128);
          }

          *(a1 + 128) = v17 - v19;
        }

        v26 = *(a1 + 64);
        v27 = *(v26 + 16);
        if (!v27 || v27 - 1 == *(a1 + 92))
        {
          *(a1 + 92) = -1;
          *(a1 + 96) = 0;
          v27 = *(v26 + 16);
        }

        sub_1AE6CEEF4(*(*(a1 + 8) + 8 * v27), (a1 + 72));
        v28 = *(a1 + 64);
        *(*(a1 + 8) + 8 * *(v28 + 4)) = 0;
        v29 = v28[1];
        *(a1 + 64) = v29;
        v30 = *v28;
        *(v30 + 8) = v29;
        *v29 = v30;
        v31 = *(a1 + 56);
        --*(a1 + 48);
        v32 = sub_1AE6CEFF0(v31);
        v28[3] = *(v32 + 56);
        *(v32 + 56) = v28;
        v10 = *(a1 + 64);
        if (v10 == v5)
        {
          goto LABEL_2;
        }
      }
    }

    break;
  }
}

void sub_1AE6CEA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6CEAB0(uint64_t result, int a2)
{
  v2 = result;
  if (*(result + 100) < a2)
  {
    *(result + 100) = a2;
  }

  v3 = *(result + 96);
  if (v3 <= a2)
  {
    if (v3 == a2)
    {
      *(result + 96) = a2 + 1;
    }

    if ((*(result + 104) & 1) != 0 || !*(result + 112))
    {
      v4 = a2;
      v5 = *(result + 80);
      if (v5 <= a2)
      {
        do
        {
          v7 = v2[11];
          if (v5 == v7 << 6)
          {
            if ((v5 + 1) < 0)
            {
              sub_1AE5CBB70();
            }

            v8 = v7 << 7;
            if (v8 <= (v5 & 0x3FFFFFFFFFFFFFC0) + 64)
            {
              v8 = (v5 & 0x3FFFFFFFFFFFFFC0) + 64;
            }

            if (v5 <= 0x3FFFFFFFFFFFFFFELL)
            {
              v9 = v8;
            }

            else
            {
              v9 = 0x7FFFFFFFFFFFFFFFLL;
            }

            result = sub_1AE6BDFB8((v2 + 9), v9);
            v5 = v2[10];
          }

          v2[10] = v5 + 1;
          v6 = v2[9];
          *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v5);
          v5 = v2[10];
        }

        while (v5 <= v4);
      }

      else
      {
        v6 = *(result + 72);
      }

      *(v6 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
    }
  }

  return result;
}

uint64_t sub_1AE6CEBCC(uint64_t a1, int a2)
{
  v25 = a2;
  v3 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = (v4 - v5) >> 3;
  if (v6 > a2)
  {
    result = *(v5 + 8 * a2);
    if (result)
    {
      return result;
    }

    goto LABEL_23;
  }

  v8 = a2 + 1;
  v9 = v8 - v6;
  if (v8 <= v6)
  {
    if (a2 + 1 < v6)
    {
      *(a1 + 16) = v5 + 8 * v8;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 24);
  if (v9 > (v10 - v4) >> 3)
  {
    if (a2 > -2)
    {
      v11 = v10 - v5;
      v12 = (v10 - v5) >> 2;
      if (v12 <= v8)
      {
        v12 = a2 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    sub_1AE5CBB70();
  }

  v14 = &v4[v9];
  v15 = (v9 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v15 >= 3)
  {
    v16 = v15 + 1;
    v17 = *(a1 + 16);
    v18 = v16 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      *v17 = 0uLL;
      v17[1] = 0uLL;
      v17 += 2;
      v18 -= 4;
    }

    while (v18);
    if (v16 == (v16 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_22;
    }

    v4 += v16 & 0x3FFFFFFFFFFFFFFCLL;
  }

  do
  {
    *v4++ = 0;
  }

  while (v4 != v14);
LABEL_22:
  *(a1 + 16) = v14;
LABEL_23:
  v19 = sub_1AE6CF608(*(a1 + 72));
  result = *(v19 + 56);
  if (result)
  {
    *(v19 + 56) = *(result + 64);
  }

  else
  {
    result = sub_1AE6D2548((v19 + 8));
    *(result + 64) = 0;
  }

  *result = 2139095039;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0;
  v20 = *(a1 + 80);
  *(result + 48) = v20;
  ++*(v20 + 8);
  *(result + 56) = 0;
  *(*(a1 + 8) + 8 * v3) = result;
  if (*a1 == 1)
  {
    v21 = result;
    v22 = sub_1AE6D2658(*(a1 + 56), &v25);
    result = v21;
    v24 = *(a1 + 32);
    v23 = (a1 + 32);
    *v22 = v24;
    v22[1] = v23;
    *(v24 + 8) = v22;
    *v23 = v22;
    ++v23[2];
  }

  return result;
}

void *sub_1AE6CEE34(void *result)
{
  if (result[2] - *result <= 0x7FFuLL)
  {
    operator new();
  }

  return result;
}

void *sub_1AE6CEEF4(void *result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[3];
    if (v4)
    {
      result[4] = v4;
      sub_1AE6CF504(result + 6, v4, (result[5] - v4) >> 4);
    }

    v5 = v3[6];
    v6 = v5[1] - 1;
    v5[1] = v6;
    if (!v6)
    {
      v7 = v5[2];
      v8 = v5[3];
      if (v8 != v7)
      {
        v9 = 0;
        do
        {
          v10 = v7[v9];
          if (v10)
          {
            (*(*v10 + 8))(v7[v9]);
            v7 = v5[2];
            v8 = v5[3];
          }

          ++v9;
        }

        while (v9 < (v8 - v7) >> 3);
      }

      if (v7)
      {
        v5[3] = v7;
        operator delete(v7);
      }

      MEMORY[0x1B2706400](v5, 0x1080C40B69A5871);
    }

    result = sub_1AE6CF608(*a2);
    v3[8] = result[7];
    result[7] = v3;
  }

  return result;
}

uint64_t sub_1AE6CEFF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x18)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 25 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 192);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6CF134(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

void sub_1AE6CF15C(void *a1)
{
  *a1 = &unk_1F242CBB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CF244(void *a1)
{
  *a1 = &unk_1F242CBB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6CF314(void *a1)
{
  *a1 = &unk_1F242CB70;
  a1[1] = &unk_1F242CBB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CF41C(void *a1)
{
  *a1 = &unk_1F242CB70;
  a1[1] = &unk_1F242CBB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6CF504(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = sub_1AE6CFC88(*a1);
    __p[4] = *(v4 + 56);
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v4 = sub_1AE6CFB20(*a1);
    __p[2] = *(v4 + 56);
LABEL_15:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = sub_1AE6CFDF0(*a1);
    __p[8] = *(v4 + 56);
    goto LABEL_15;
  }

  if (a3 <= 8)
  {
    v4 = sub_1AE6CFF58(*a1);
    __p[16] = *(v4 + 56);
    goto LABEL_15;
  }

  if (a3 <= 0x10)
  {
    v4 = sub_1AE6D00C0(*a1);
    __p[32] = *(v4 + 56);
    goto LABEL_15;
  }

  if (a3 <= 0x20)
  {
    v4 = sub_1AE6D0228(*a1);
    __p[64] = *(v4 + 56);
    goto LABEL_15;
  }

  if (a3 <= 0x40)
  {
    v4 = sub_1AE6D0390(*a1);
    __p[128] = *(v4 + 56);
    goto LABEL_15;
  }

  operator delete(__p);
}

uint64_t sub_1AE6CF608(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x40)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 65 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 512);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6CF750(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

void sub_1AE6CF778(void *a1)
{
  *a1 = &unk_1F242CB30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CF860(void *a1)
{
  *a1 = &unk_1F242CB30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6CF930(void *a1)
{
  *a1 = &unk_1F242CAF0;
  a1[1] = &unk_1F242CB30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6CFA38(void *a1)
{
  *a1 = &unk_1F242CAF0;
  a1[1] = &unk_1F242CB30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

uint64_t sub_1AE6CFB20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x10)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 17 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 128);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6CFC68(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6CFC88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x20)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 33 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6CFDD0(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6CFDF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x40)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 65 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 512);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6CFF38(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6CFF58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x80)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 129 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 1024);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6D00A0(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D00C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x100)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 257 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 2048);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6D0208(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D0228(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x200)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 513 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 4096);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6D0370(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D0390(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x400)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 1025 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 0x2000);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6D04D8(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

void sub_1AE6D0500(void *a1)
{
  *a1 = &unk_1F242CAB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D05E8(void *a1)
{
  *a1 = &unk_1F242CAB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D06B8(void *a1)
{
  *a1 = &unk_1F242CA70;
  a1[1] = &unk_1F242CAB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D07C0(void *a1)
{
  *a1 = &unk_1F242CA70;
  a1[1] = &unk_1F242CAB0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D08B0(void *a1)
{
  *a1 = &unk_1F242CA30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D0998(void *a1)
{
  *a1 = &unk_1F242CA30;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D0A68(void *a1)
{
  *a1 = &unk_1F242C9F0;
  a1[1] = &unk_1F242CA30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D0B70(void *a1)
{
  *a1 = &unk_1F242C9F0;
  a1[1] = &unk_1F242CA30;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D0C60(void *a1)
{
  *a1 = &unk_1F242C9B0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D0D48(void *a1)
{
  *a1 = &unk_1F242C9B0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D0E18(void *a1)
{
  *a1 = &unk_1F242C970;
  a1[1] = &unk_1F242C9B0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D0F20(void *a1)
{
  *a1 = &unk_1F242C970;
  a1[1] = &unk_1F242C9B0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D1010(void *a1)
{
  *a1 = &unk_1F242C930;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D10F8(void *a1)
{
  *a1 = &unk_1F242C930;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D11C8(void *a1)
{
  *a1 = &unk_1F242C8F0;
  a1[1] = &unk_1F242C930;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D12D0(void *a1)
{
  *a1 = &unk_1F242C8F0;
  a1[1] = &unk_1F242C930;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D13C0(void *a1)
{
  *a1 = &unk_1F242C8B0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D14A8(void *a1)
{
  *a1 = &unk_1F242C8B0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D1578(void *a1)
{
  *a1 = &unk_1F242C870;
  a1[1] = &unk_1F242C8B0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D1680(void *a1)
{
  *a1 = &unk_1F242C870;
  a1[1] = &unk_1F242C8B0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D1770(void *a1)
{
  *a1 = &unk_1F242C830;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D1858(void *a1)
{
  *a1 = &unk_1F242C830;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D1928(void *a1)
{
  *a1 = &unk_1F242C7F0;
  a1[1] = &unk_1F242C830;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D1A30(void *a1)
{
  *a1 = &unk_1F242C7F0;
  a1[1] = &unk_1F242C830;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D1B20(void *a1)
{
  *a1 = &unk_1F242C7B0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D1C08(void *a1)
{
  *a1 = &unk_1F242C7B0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6D1CD8(void *a1)
{
  *a1 = &unk_1F242C770;
  a1[1] = &unk_1F242C7B0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D1DE0(void *a1)
{
  *a1 = &unk_1F242C770;
  a1[1] = &unk_1F242C7B0;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void *sub_1AE6D1EC8(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_1AE6CFC88(*a1);
    result = v2[7];
    if (result)
    {
      v4 = result[4];
      goto LABEL_13;
    }

    v6 = v2[2];
    if (v6 <= 0x9F)
    {
      operator new[]();
    }

    v9 = v2[3];
    if (v9 + 40 > v6)
    {
      operator new[]();
    }

    result = (*(v2[5] + 16) + v9);
    v2[3] = v9 + 40;
    result[4] = 0;
  }

  else if (a2 == 1)
  {
    v2 = sub_1AE6CFB20(*a1);
    result = v2[7];
    if (result)
    {
      v4 = result[2];
LABEL_13:
      v2[7] = v4;
      return result;
    }

    v5 = v2[2];
    if (v5 <= 0x5F)
    {
      operator new[]();
    }

    v8 = v2[3];
    if (v8 + 24 > v5)
    {
      operator new[]();
    }

    result = (*(v2[5] + 16) + v8);
    v2[3] = v8 + 24;
    result[2] = 0;
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 60))
            {

              operator new();
            }

            sub_1AE5CB09C();
          }

          v14 = sub_1AE6D0390(*a1);
          result = *(v14 + 56);
          if (result)
          {
            *(v14 + 56) = result[128];
          }

          else
          {
            result = sub_1AE6D2434((v14 + 8));
            result[128] = 0;
          }
        }

        else
        {
          v11 = sub_1AE6D0228(*a1);
          result = *(v11 + 56);
          if (result)
          {
            *(v11 + 56) = result[64];
          }

          else
          {
            result = sub_1AE6CA740((v11 + 8));
            result[64] = 0;
          }
        }
      }

      else
      {
        v7 = sub_1AE6D00C0(*a1);
        result = *(v7 + 56);
        if (result)
        {
          *(v7 + 56) = result[32];
        }

        else
        {
          result = sub_1AE6CA630((v7 + 8));
          result[32] = 0;
        }
      }
    }

    else
    {
      v2 = sub_1AE6CFF58(*a1);
      result = v2[7];
      if (result)
      {
        v4 = result[16];
        goto LABEL_13;
      }

      v12 = v2[2];
      if (v12 <= 0x21F)
      {
        operator new[]();
      }

      v15 = v2[3];
      if (v15 + 136 > v12)
      {
        operator new[]();
      }

      result = (*(v2[5] + 16) + v15);
      v2[3] = v15 + 136;
      result[16] = 0;
    }
  }

  else
  {
    v2 = sub_1AE6CFDF0(*a1);
    result = v2[7];
    if (result)
    {
      v4 = result[8];
      goto LABEL_13;
    }

    v10 = v2[2];
    if (v10 <= 0x11F)
    {
      operator new[]();
    }

    v13 = v2[3];
    if (v13 + 72 > v10)
    {
      operator new[]();
    }

    result = (*(v2[5] + 16) + v13);
    v2[3] = v13 + 72;
    result[8] = 0;
  }

  return result;
}

uint64_t sub_1AE6D2434(void *a1)
{
  v2 = a1[1];
  if (v2 >> 5 <= 0x80)
  {
    operator new[]();
  }

  v3 = a1[2];
  if (v3 + 1032 > v2)
  {
    operator new[]();
  }

  result = *(a1[4] + 16) + v3;
  a1[2] = v3 + 1032;
  return result;
}

uint64_t sub_1AE6D2548(void *a1)
{
  v2 = a1[1];
  if (v2 <= 0x11F)
  {
    operator new[]();
  }

  v3 = a1[2];
  if (v3 + 72 > v2)
  {
    operator new[]();
  }

  result = *(a1[4] + 16) + v3;
  a1[2] = v3 + 72;
  return result;
}

uint64_t sub_1AE6D2658(void *a1, _DWORD *a2)
{
  a1[1] += 2;
  v4 = sub_1AE6CEFF0(a1);
  v5 = v4;
  v6 = *(v4 + 56);
  if (v6)
  {
    *(v4 + 56) = *(v6 + 24);
  }

  else
  {
    v7 = *(v4 + 16);
    if (v7 <= 0x7F)
    {
      operator new[]();
    }

    v8 = *(v5 + 24);
    if (v8 + 32 > v7)
    {
      operator new[]();
    }

    v6 = *(*(v5 + 40) + 16) + v8;
    *(v5 + 24) = v8 + 32;
    *(v6 + 24) = 0;
  }

  v9 = a1[1] - 1;
  a1[1] = v9;
  if (!v9)
  {
    v10 = a1[2];
    v11 = a1[3];
    if (v11 != v10)
    {
      v12 = 0;
      do
      {
        v13 = v10[v12];
        if (v13)
        {
          (*(*v13 + 8))(v10[v12]);
          v10 = a1[2];
          v11 = a1[3];
        }

        ++v12;
      }

      while (v12 < (v11 - v10) >> 3);
    }

    if (v10)
    {
      a1[3] = v10;
      operator delete(v10);
    }

    MEMORY[0x1B2706400](a1, 0x1080C40B69A5871);
    v9 = a1[1];
  }

  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = *a2;
  v14 = v9 - 1;
  a1[1] = v14;
  if (!v14)
  {
    v15 = a1[2];
    v16 = a1[3];
    if (v16 != v15)
    {
      v17 = 0;
      do
      {
        v18 = v15[v17];
        if (v18)
        {
          (*(*v18 + 8))(v15[v17]);
          v15 = a1[2];
          v16 = a1[3];
        }

        ++v17;
      }

      while (v17 < (v16 - v15) >> 3);
    }

    if (v15)
    {
      a1[3] = v15;
      operator delete(v15);
    }

    MEMORY[0x1B2706400](a1, 0x1080C40B69A5871);
  }

  return v6;
}

void sub_1AE6D28D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1AE6D3980(&a10);
  sub_1AE6D3980(&a9);
  _Unwind_Resume(a1);
}

void *sub_1AE6D28F0(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1AE5CBB70();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    v8 = sub_1AE6D1EC8(a1 + 3, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[2 * v2];
  *v9 = *a2;
  *(v9 + 2) = *(a2 + 8);
  *(v9 + 3) = *(a2 + 12);
  v10 = v9 + 2;
  v11 = *a1;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = v13;
    do
    {
      *v14 = *v11;
      *(v14 + 2) = *(v11 + 8);
      *(v14 + 3) = *(v11 + 12);
      v11 += 16;
      v14 += 16;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  v15 = a1[2];
  a1[2] = &v8[2 * v7];
  if (v11)
  {
    sub_1AE6CF504(a1 + 3, v11, (v15 - v11) >> 4);
  }

  return v10;
}

void sub_1AE6D2C4C(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x10E0C401DE81863);
  sub_1AE6C6C70(v2);
  MEMORY[0x1B2706400](v2, v1);
  _Unwind_Resume(a1);
}

void sub_1AE6D2CD0(uint64_t a1, uint64_t a2)
{
  strcpy((a1 + 16), "null");
  *(a1 + 39) = 4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F242C740;
  *(a1 + 8) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1AE6D33D4(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v2, 0x10A0C40690396FALL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  sub_1AE6D3884(v1);
  _Unwind_Resume(a1);
}

void sub_1AE6D3450(void *a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a1 = 0;
  if (a2[1])
  {
    operator new();
  }

  a1[1] = 0;
  a1[2] = a1;
  a1[3] = a1;
  sub_1AE6C6F3C();
}

void sub_1AE6D35AC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 112) = v4;
    operator delete(v4);
  }

  sub_1AE6D35D4(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D35D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = sub_1AE6C742C(*(a1 + 32));
      v2[3] = *(v4 + 56);
      *(v4 + 56) = v2;
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 32);
  v6 = v5[1] - 1;
  v5[1] = v6;
  if (!v6)
  {
    v7 = v5[2];
    v8 = v5[3];
    if (v8 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v7[v9];
        if (v10)
        {
          (*(*v10 + 8))(v7[v9]);
          v7 = v5[2];
          v8 = v5[3];
        }

        ++v9;
      }

      while (v9 < (v8 - v7) >> 3);
    }

    if (v7)
    {
      v5[3] = v7;
      operator delete(v7);
    }

    MEMORY[0x1B2706400](v5, 0x1080C40B69A5871);
  }

  return sub_1AE6C70CC(a1);
}

void sub_1AE6D36D0(uint64_t a1, char a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  operator new();
}

void sub_1AE6D3834(_Unwind_Exception *a1)
{
  sub_1AE6D3980((v1 + 72));
  sub_1AE6D3A40(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D3884(uint64_t a1)
{
  *a1 = &unk_1F242C4E0;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t **sub_1AE6D392C(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = result;
      sub_1AE6CF504(v1 + 3, v2, (v1[2] - v2) >> 4);
      return v3;
    }
  }

  return result;
}

uint64_t *sub_1AE6D3980(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8) - 1;
  *(*a1 + 8) = v3;
  if (!v3)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    if (v5 != v4)
    {
      v6 = 0;
      do
      {
        v7 = v4[v6];
        if (v7)
        {
          (*(*v7 + 8))(v4[v6]);
          v4 = *(v2 + 16);
          v5 = *(v2 + 24);
        }

        ++v6;
      }

      while (v6 < (v5 - v4) >> 3);
    }

    if (v4)
    {
      *(v2 + 24) = v4;
      operator delete(v4);
    }

    MEMORY[0x1B2706400](v2, 0x1080C40B69A5871);
  }

  return a1;
}

uint64_t *sub_1AE6D3A40(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = sub_1AE6CEFF0(a1[3]);
        v2[3] = *(v6 + 56);
        *(v6 + 56) = v2;
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  v7 = a1[3];
  v8 = v7[1] - 1;
  v7[1] = v8;
  if (!v8)
  {
    v9 = v7[2];
    v10 = v7[3];
    if (v10 != v9)
    {
      v11 = 0;
      do
      {
        v12 = v9[v11];
        if (v12)
        {
          (*(*v12 + 8))(v9[v11]);
          v9 = v7[2];
          v10 = v7[3];
        }

        ++v11;
      }

      while (v11 < (v10 - v9) >> 3);
    }

    if (v9)
    {
      v7[3] = v9;
      operator delete(v9);
    }

    MEMORY[0x1B2706400](v7, 0x1080C40B69A5871);
  }

  return a1;
}

void sub_1AE6D3B50(uint64_t a1)
{
  sub_1AE6C6C70(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6D3B8C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 56))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 56))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void sub_1AE6D3CC4(void *a1)
{
  sub_1AE6D3CFC(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6D3CFC(void *a1)
{
  *a1 = &unk_1F242D8B8;
  v2 = a1[17];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      MEMORY[0x1B2706400](v3, 0x20C4093837F09);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      MEMORY[0x1B2706400](v4, 0x20C4093837F09);
    }

    MEMORY[0x1B2706400](v2, 0x1060C4035244DBALL);
  }

  v5 = a1[22];
  if (v5)
  {
    v6 = sub_1AE6D3E24(v5);
    MEMORY[0x1B2706400](v6, 0x10E0C401DE81863);
  }

  return sub_1AE6C6C70(a1);
}

uint64_t *sub_1AE6D3E24(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    MEMORY[0x1B2706400](v2, 0xC400A2AC0F1);
  }

  v3 = a1[1];
  if (v3)
  {
    MEMORY[0x1B2706400](v3, 0xC400A2AC0F1);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    do
    {
      v6 = *v5;
      v7 = sub_1AE6C742C(a1[8]);
      v5[3] = *(v7 + 56);
      *(v7 + 56) = v5;
      v5 = v6;
    }

    while (v6);
  }

  v8 = a1[8];
  v9 = v8[1] - 1;
  v8[1] = v9;
  if (!v9)
  {
    v10 = v8[2];
    v11 = v8[3];
    if (v11 != v10)
    {
      v12 = 0;
      do
      {
        v13 = v10[v12];
        if (v13)
        {
          (*(*v13 + 8))(v10[v12]);
          v10 = v8[2];
          v11 = v8[3];
        }

        ++v12;
      }

      while (v12 < (v11 - v10) >> 3);
    }

    if (v10)
    {
      v8[3] = v10;
      operator delete(v10);
    }

    MEMORY[0x1B2706400](v8, 0x1080C40B69A5871);
  }

  sub_1AE6C70CC((a1 + 4));
  return a1;
}

float sub_1AE6D3F68@<S0>(uint64_t a1@<X0>, int a2@<W1>, float *a3@<X8>)
{
  v5 = *(*(a1 + 176) + 104) + 12 * a2;
  v6 = *v5;
  (*(***(a1 + 144) + 96))(&v17 + 4);
  result = *(&v17 + 1);
  v19 = HIDWORD(v17);
  HIDWORD(v18) = 2139095039;
  if (*(&v17 + 1) == 3.4028e38)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 4);
  (*(***(a1 + 152) + 96))(&v17);
  result = *&v17;
  v19 = v17;
  HIDWORD(v18) = 2139095039;
  if (*&v17 == 3.4028e38)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 136);
  v10 = *(v5 + 8);
  if (*(v9 + 24) != v6 || *(v9 + 28) != v8 || v10 != *(v9 + 32))
  {
    *(v9 + 24) = v6;
    *(v9 + 28) = v8;
    *(v9 + 32) = v10;
    v11 = (*(**(v9 + 16) + 32))(*(v9 + 16), v8);
    v12 = (*(**(v9 + 16) + 40))(*(v9 + 16), v8);
    (*(**(v9 + 16) + 24))(&v18);
    v19 = v18;
    HIDWORD(v18) = 2139095039;
    *(v9 + 33) = v11 == v12 && *&v18 == 3.4028e38;
    *(v9 + 34) = v12 == 0;
  }

  result = *(&v17 + 1);
  if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
  {
    v15 = result;
    v13 = __cxa_guard_acquire(&qword_1ED9AC728);
    result = v15;
    if (v13)
    {
      dword_1ED9AC720 = -8388609;
      __cxa_guard_release(&qword_1ED9AC728);
      result = v15;
    }
  }

  if (result != *&dword_1ED9AC720)
  {
    result = *&v17;
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
    {
      v16 = result;
      v14 = __cxa_guard_acquire(&qword_1ED9AC728);
      result = v16;
      if (v14)
      {
        dword_1ED9AC720 = -8388609;
        __cxa_guard_release(&qword_1ED9AC728);
        result = v16;
      }
    }

    if (result != *&dword_1ED9AC720)
    {
      result = *&v17 + *(&v17 + 1);
      if (*(&v17 + 1) == 3.4028e38 || *&v17 == 3.4028e38)
      {
        result = 3.4028e38;
      }

LABEL_3:
      *a3 = result;
    }
  }

  return result;
}

uint64_t sub_1AE6D4238(uint64_t a1)
{
  result = (*(**(a1 + 160) + 16))(*(a1 + 160));
  if (result != -1)
  {
    v3 = result;
    result = (*(**(a1 + 168) + 16))(*(a1 + 168));
    if (result != -1)
    {
      v8 = __PAIR64__(result, v3);
      v9 = 0;
      v4 = *(a1 + 176);
      v4[16] = &v8;
      v5 = sub_1AE6CC440(v4 + 4);
      if (v5)
      {
        return *(v5 + 4);
      }

      else
      {
        v6 = (v4[14] - v4[13]) >> 2;
        v7 = (-1431655765 * v6);
        v10 = -1431655765 * v6;
        sub_1AE6CC56C((v4 + 13), &v8);
        sub_1AE6CC6BC((v4 + 4), v7, &v10);
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_1AE6D4328(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

void sub_1AE6D44F4(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  MEMORY[0x1B2706400](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D4558(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return sub_1AE6D4584(result, v1, v2);
  }

  return result;
}

uint64_t sub_1AE6D4584(uint64_t a1, uint64_t a2, void *a3)
{
LABEL_1:
  if (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (1)
    {
      while (1)
      {
        if ((*(**a3 + 72))())
        {
          goto LABEL_1;
        }

        v8 = (*(**a2 + 80))();
        v9 = (*(**a3 + 80))();
        (*(**a3 + 88))();
        v10 = *(a1 + 28);
        v11 = v10 == 0;
        v12 = v10 ? v9 : v8;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 12);
        v16 = v11 ? v9 : v8;
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 12);
        v20 = *(*(a1 + 16) + 136);
        if (v17 == -1)
        {
          break;
        }

        if (HIDWORD(v13) && (HIDWORD(v13) != -1 || v20[32] != 1))
        {
          v21 = 0;
          goto LABEL_22;
        }
      }

      if ((v20[33] & 1) == 0)
      {
        v21 = (v20[34] & 1) == 0;
LABEL_22:
        v33 = __PAIR64__(v19, v15);
        v34 = v21;
        *(a1 + 68) = v13;
        *(a1 + 72) = HIDWORD(v17);
        if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
        {
          v29 = v18;
          v31 = v14;
          v27 = __cxa_guard_acquire(&qword_1ED9AC728);
          v18 = v29;
          v14 = v31;
          if (v27)
          {
            dword_1ED9AC720 = -8388609;
            __cxa_guard_release(&qword_1ED9AC728);
            v18 = v29;
            v14 = v31;
          }
        }

        if (v14 != *&dword_1ED9AC720)
        {
          if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
          {
            v30 = v18;
            v32 = v14;
            v28 = __cxa_guard_acquire(&qword_1ED9AC728);
            v18 = v30;
            v14 = v32;
            if (v28)
            {
              dword_1ED9AC720 = -8388609;
              __cxa_guard_release(&qword_1ED9AC728);
              v18 = v30;
              v14 = v32;
            }
          }

          if (v18 != *&dword_1ED9AC720)
          {
            v22 = v14 == 3.4028e38;
            v14 = v18 + v14;
            if (v22 || v18 == 3.4028e38)
            {
              v14 = 3.4028e38;
            }
          }
        }

        *(a1 + 76) = v14;
        v23 = *(*(a1 + 16) + 176);
        v23[16] = &v33;
        v24 = sub_1AE6CC440(v23 + 4);
        if (v24)
        {
          v25 = *(v24 + 4);
        }

        else
        {
          v35 = -1431655765 * ((v23[14] - v23[13]) >> 2);
          v25 = v35;
          sub_1AE6CC56C((v23 + 13), &v33);
          sub_1AE6CC6BC((v23 + 4), v25, &v35);
        }

        *(a1 + 80) = v25;
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AE6D49BC(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t sub_1AE6D49D8(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t sub_1AE6D4A78(uint64_t a1, int a2)
{
  *(a1 + 48) = a2 == 0;
  if (*(a1 + 28))
  {
    if (a2)
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      goto LABEL_6;
    }

    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
LABEL_6:
  result = (*(**v3 + 64))();
  if (result)
  {
    v6 = *(a1 + 28) == 0;
    v7 = (*(**v3 + 80))();
    (*(**v4 + 64))(*v4, *(v7 + 4 * v6));

    return sub_1AE6D4584(a1, v3, v4);
  }

  return result;
}

uint64_t sub_1AE6D4B84(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    *(result + 24) = a2;
    v2 = (*(*(*(result + 16) + 176) + 104) + 12 * a2);
    v3 = v2[1];
    v4 = result;
    (*(***(result + 32) + 56))(**(result + 32), *v2);
    result = (*(***(v4 + 40) + 56))(**(v4 + 40), v3);
    *(v4 + 64) = *(v4 + 24);
  }

  return result;
}

uint64_t sub_1AE6D4C38(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_1AE6D4C54(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

void sub_1AE6D50A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B2706400](v15, v16);
  _Unwind_Resume(a1);
}

void sub_1AE6D5104(void *a1)
{
  *a1 = &unk_1F242D820;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D51FC(void *a1)
{
  *a1 = &unk_1F242D820;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t sub_1AE6D52D4(uint64_t a1, int a2, __n128 a3)
{
  v5 = (*(*(a1 + 176) + 104) + 12 * a2);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + 136);
  v9 = *(v5 + 8);
  if (*(v8 + 24) != __PAIR64__(v7, v6) || v9 != *(v8 + 32))
  {
    *(v8 + 24) = v6;
    *(v8 + 28) = v7;
    *(v8 + 32) = v9;
    v10 = (*(**(v8 + 16) + 32))(*(v8 + 16), v7);
    v11 = (*(**(v8 + 16) + 40))(*(v8 + 16), v7);
    (*(**(v8 + 16) + 24))(&v28);
    LODWORD(__p[0]) = v28;
    HIDWORD(v28) = 2139095039;
    a3.n128_u32[0] = v28;
    *(v8 + 33) = v10 == v11 && *&v28 == 3.4028e38;
    *(v8 + 34) = v11 == 0;
  }

  v12 = *(a1 + 184);
  if (!v12)
  {
    goto LABEL_25;
  }

  if (v12 != 1)
  {
    v20 = (*(***(a1 + 144) + 104))(**(a1 + 144), v6, a3);
    v21 = (*(***(a1 + 152) + 104))(**(a1 + 152), v7);
    if (v20 == -1 && v21 == -1)
    {
      v30 = 5;
      strcpy(__p, "FATAL");
      v26 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
      sub_1AE5DB608(v26, ": ", 2);
      sub_1AE5DB608(MEMORY[0x1E69E5300], "ComposeFst: both sides can't require match", 42);
      sub_1AE696D18();
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 8) |= 4uLL;
    }

    else
    {
      v24 = v21 == -1 || v20 <= v21;
      if (v20 == -1 || !v24)
      {
        goto LABEL_6;
      }
    }

LABEL_25:
    v14 = *(a1 + 152);
    v13 = *(a1 + 160);
    v15 = a1;
    v16 = a2;
    v17 = v7;
    v18 = v6;
    v19 = 1;
    return sub_1AE6D55A4(v15, v16, v17, v13, v18, v14, v19);
  }

LABEL_6:
  v13 = *(a1 + 168);
  v14 = *(a1 + 144);
  v15 = a1;
  v16 = a2;
  v17 = v6;
  v18 = v7;
  v19 = 0;
  return sub_1AE6D55A4(v15, v16, v17, v13, v18, v14, v19);
}

void sub_1AE6D557C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D55A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  (*(**a6 + 56))(*a6, a3);
  LODWORD(v19) = a7 - 1;
  HIDWORD(v19) = a7 << 31 >> 31;
  v20 = 0;
  v21 = a5;
  sub_1AE6D57F4(a1, a2, a6, &v19, a7);
  v18 = 0;
  (*(*a4 + 120))(a4, a5, v16);
  while (1)
  {
    if (!v16[0])
    {
      v14 = v18;
      if (v18 >= v16[2])
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if ((*(*v16[0] + 16))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      v14 = v18;
LABEL_10:
      v13 = (v16[1] + 16 * v14);
      goto LABEL_11;
    }

    v13 = (*(*v16[0] + 24))();
LABEL_11:
    sub_1AE6D57F4(a1, a2, a6, v13, a7);
    if (v16[0])
    {
      (*(*v16[0] + 32))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return sub_1AE6CE468(a1, a2);
  }

LABEL_15:
  if (v17)
  {
    --*v17;
  }

  return sub_1AE6CE468(a1, a2);
}

void sub_1AE6D57A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (!a10)
  {
    if (a13)
    {
      --*a13;
    }

    _Unwind_Resume(exception_object);
  }

  (*(*a10 + 8))(a10);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6D57F4(uint64_t a1, int a2, void *a3, unint64_t *a4, int a5)
{
  v5 = a5;
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      if (v5)
      {
        while (1)
        {
          v13 = (*(**a3 + 80))();
          v31 = *v13;
          v32 = *(v13 + 8);
          v33 = *(v13 + 12);
          v14 = *a4;
          v28 = *a4;
          v29 = *(a4 + 2);
          v30 = *(a4 + 3);
          v15 = *(a1 + 136);
          if (v31 == -1)
          {
            if (v15[33])
            {
              goto LABEL_11;
            }

            v12 = (v15[34] & 1) == 0;
          }

          else
          {
            v16 = HIDWORD(v14);
            if (!v16)
            {
              goto LABEL_11;
            }

            if (v16 == -1)
            {
              v17 = v15[32];
              v18 = v17 == 1;
              if (v17 == 1)
              {
                v19 = -1;
              }

              else
              {
                v19 = 0;
              }

              v27 = v19;
              if (v18)
              {
                goto LABEL_11;
              }

              goto LABEL_10;
            }

            v12 = 0;
          }

          v27 = v12;
LABEL_10:
          sub_1AE6D7BAC(a1, a2, &v28, &v31, &v27);
LABEL_11:
          (*(**a3 + 88))();
          result = (*(**a3 + 72))();
          if (result)
          {
            return result;
          }
        }
      }

      do
      {
        v20 = (*(**a3 + 80))();
        v21 = *v20;
        v31 = *v20;
        v32 = *(v20 + 8);
        v33 = *(v20 + 12);
        v28 = *a4;
        v29 = *(a4 + 2);
        v30 = *(a4 + 3);
        v22 = *(a1 + 136);
        if (v28 == -1)
        {
          if (v22[33])
          {
            goto LABEL_25;
          }

          v27 = (v22[34] & 1) == 0;
        }

        else
        {
          v23 = HIDWORD(v21);
          if (v23 == -1)
          {
            v24 = v22[32];
            v25 = v24 == 1;
            if (v24 == 1)
            {
              v26 = -1;
            }

            else
            {
              v26 = 0;
            }

            v27 = v26;
            if (v25)
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (!v23)
            {
              goto LABEL_25;
            }

            v27 = 0;
          }
        }

        sub_1AE6D7BAC(a1, a2, &v31, &v28, &v27);
LABEL_25:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void sub_1AE6D5CF8(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x10E0C401DE81863);
  sub_1AE6C6C70(v2);
  MEMORY[0x1B2706400](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D5D7C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 56))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 56))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void sub_1AE6D5EB4(void *a1)
{
  sub_1AE6D5EEC(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6D5EEC(void *a1)
{
  *a1 = &unk_1F242D7B0;
  v2 = a1[17];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      MEMORY[0x1B2706400](v3, 0x20C4093837F09);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      MEMORY[0x1B2706400](v4, 0x20C4093837F09);
    }

    MEMORY[0x1B2706400](v2, 0x1060C40AD892F49);
  }

  v5 = a1[22];
  if (v5)
  {
    v6 = sub_1AE6D3E24(v5);
    MEMORY[0x1B2706400](v6, 0x10E0C401DE81863);
  }

  return sub_1AE6C6C70(a1);
}

float sub_1AE6D6018@<S0>(uint64_t a1@<X0>, int a2@<W1>, float *a3@<X8>)
{
  v5 = (*(*(a1 + 176) + 104) + 12 * a2);
  v6 = *v5;
  (*(***(a1 + 144) + 96))(&v17 + 4);
  result = *(&v17 + 1);
  v19 = HIDWORD(v17);
  HIDWORD(v18) = 2139095039;
  if (*(&v17 + 1) == 3.4028e38)
  {
    goto LABEL_3;
  }

  v8 = v5[1];
  (*(***(a1 + 152) + 96))(&v17);
  result = *&v17;
  v19 = v17;
  HIDWORD(v18) = 2139095039;
  if (*&v17 == 3.4028e38)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 136);
  v10 = *(v5 + 8);
  if (*(v9 + 24) != v6 || *(v9 + 28) != v8 || v10 != *(v9 + 32))
  {
    *(v9 + 24) = v6;
    *(v9 + 28) = v8;
    *(v9 + 32) = v10;
    v11 = (*(**(v9 + 16) + 32))(*(v9 + 16), v6);
    v12 = (*(**(v9 + 16) + 48))(*(v9 + 16), v6);
    (*(**(v9 + 16) + 24))(&v18);
    v19 = v18;
    HIDWORD(v18) = 2139095039;
    *(v9 + 33) = v11 == v12 && *&v18 == 3.4028e38;
    *(v9 + 34) = v12 == 0;
  }

  result = *(&v17 + 1);
  if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
  {
    v15 = result;
    v13 = __cxa_guard_acquire(&qword_1ED9AC728);
    result = v15;
    if (v13)
    {
      dword_1ED9AC720 = -8388609;
      __cxa_guard_release(&qword_1ED9AC728);
      result = v15;
    }
  }

  if (result != *&dword_1ED9AC720)
  {
    result = *&v17;
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
    {
      v16 = result;
      v14 = __cxa_guard_acquire(&qword_1ED9AC728);
      result = v16;
      if (v14)
      {
        dword_1ED9AC720 = -8388609;
        __cxa_guard_release(&qword_1ED9AC728);
        result = v16;
      }
    }

    if (result != *&dword_1ED9AC720)
    {
      result = *&v17 + *(&v17 + 1);
      if (*(&v17 + 1) == 3.4028e38 || *&v17 == 3.4028e38)
      {
        result = 3.4028e38;
      }

LABEL_3:
      *a3 = result;
    }
  }

  return result;
}

uint64_t sub_1AE6D62E8(uint64_t a1)
{
  result = (*(**(a1 + 160) + 16))(*(a1 + 160));
  if (result != -1)
  {
    v3 = result;
    result = (*(**(a1 + 168) + 16))(*(a1 + 168));
    if (result != -1)
    {
      v8 = __PAIR64__(result, v3);
      v9 = 0;
      v4 = *(a1 + 176);
      v4[16] = &v8;
      v5 = sub_1AE6CC440(v4 + 4);
      if (v5)
      {
        return *(v5 + 4);
      }

      else
      {
        v6 = (v4[14] - v4[13]) >> 2;
        v7 = (-1431655765 * v6);
        v10 = -1431655765 * v6;
        sub_1AE6CC56C((v4 + 13), &v8);
        sub_1AE6CC6BC((v4 + 4), v7, &v10);
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_1AE6D63D8(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

void sub_1AE6D65A4(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  MEMORY[0x1B2706400](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D6608(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return sub_1AE6D6634(result, v1, v2);
  }

  return result;
}

uint64_t sub_1AE6D6634(uint64_t a1, uint64_t a2, void *a3)
{
LABEL_1:
  if (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (1)
    {
      while (1)
      {
        if ((*(**a3 + 72))())
        {
          goto LABEL_1;
        }

        v8 = (*(**a2 + 80))();
        v9 = (*(**a3 + 80))();
        (*(**a3 + 88))();
        v10 = *(a1 + 28);
        v11 = v10 == 0;
        v12 = v10 ? v9 : v8;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 12);
        v16 = v11 ? v9 : v8;
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 12);
        v20 = *(*(a1 + 16) + 136);
        if (v13 >= 0xFFFFFFFF00000000)
        {
          break;
        }

        if (v17 == -1)
        {
          LODWORD(v20) = v20[32];
          if (!v20)
          {
            goto LABEL_23;
          }
        }

        else if (HIDWORD(v13))
        {
          LOBYTE(v20) = 0;
          goto LABEL_23;
        }
      }

      if ((v20[33] & 1) == 0)
      {
        LOBYTE(v20) = (v20[34] & 1) == 0;
LABEL_23:
        v32 = __PAIR64__(v19, v15);
        v33 = v20;
        *(a1 + 68) = v13;
        *(a1 + 72) = HIDWORD(v17);
        if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
        {
          v28 = v18;
          v30 = v14;
          v26 = __cxa_guard_acquire(&qword_1ED9AC728);
          v18 = v28;
          v14 = v30;
          if (v26)
          {
            dword_1ED9AC720 = -8388609;
            __cxa_guard_release(&qword_1ED9AC728);
            v18 = v28;
            v14 = v30;
          }
        }

        if (v14 != *&dword_1ED9AC720)
        {
          if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
          {
            v29 = v18;
            v31 = v14;
            v27 = __cxa_guard_acquire(&qword_1ED9AC728);
            v18 = v29;
            v14 = v31;
            if (v27)
            {
              dword_1ED9AC720 = -8388609;
              __cxa_guard_release(&qword_1ED9AC728);
              v18 = v29;
              v14 = v31;
            }
          }

          if (v18 != *&dword_1ED9AC720)
          {
            v21 = v14 == 3.4028e38;
            v14 = v18 + v14;
            if (v21 || v18 == 3.4028e38)
            {
              v14 = 3.4028e38;
            }
          }
        }

        *(a1 + 76) = v14;
        v22 = *(*(a1 + 16) + 176);
        v22[16] = &v32;
        v23 = sub_1AE6CC440(v22 + 4);
        if (v23)
        {
          v24 = *(v23 + 4);
        }

        else
        {
          v34 = -1431655765 * ((v22[14] - v22[13]) >> 2);
          v24 = v34;
          sub_1AE6CC56C((v22 + 13), &v32);
          sub_1AE6CC6BC((v22 + 4), v24, &v34);
        }

        *(a1 + 80) = v24;
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AE6D6A70(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t sub_1AE6D6A8C(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t sub_1AE6D6B2C(uint64_t a1, int a2)
{
  *(a1 + 48) = a2 == 0;
  if (*(a1 + 28))
  {
    if (a2)
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      goto LABEL_6;
    }

    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
LABEL_6:
  result = (*(**v3 + 64))();
  if (result)
  {
    v6 = *(a1 + 28) == 0;
    v7 = (*(**v3 + 80))();
    (*(**v4 + 64))(*v4, *(v7 + 4 * v6));

    return sub_1AE6D6634(a1, v3, v4);
  }

  return result;
}

uint64_t sub_1AE6D6C38(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    *(result + 24) = a2;
    v2 = (*(*(*(result + 16) + 176) + 104) + 12 * a2);
    v3 = v2[1];
    v4 = result;
    (*(***(result + 32) + 56))(**(result + 32), *v2);
    result = (*(***(v4 + 40) + 56))(**(v4 + 40), v3);
    *(v4 + 64) = *(v4 + 24);
  }

  return result;
}

uint64_t sub_1AE6D6CEC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_1AE6D6D08(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

void sub_1AE6D7158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B2706400](v15, v16);
  _Unwind_Resume(a1);
}

void sub_1AE6D71B8(void *a1)
{
  *a1 = &unk_1F242D3E8;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D72B0(void *a1)
{
  *a1 = &unk_1F242D3E8;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t sub_1AE6D7388(uint64_t a1, int a2, __n128 a3)
{
  v5 = (*(*(a1 + 176) + 104) + 12 * a2);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + 136);
  v9 = *(v5 + 8);
  if (*(v8 + 24) != __PAIR64__(v7, v6) || v9 != *(v8 + 32))
  {
    *(v8 + 24) = v6;
    *(v8 + 28) = v7;
    *(v8 + 32) = v9;
    v10 = (*(**(v8 + 16) + 32))(*(v8 + 16), v6);
    v11 = (*(**(v8 + 16) + 48))(*(v8 + 16), v6);
    (*(**(v8 + 16) + 24))(&v28);
    LODWORD(__p[0]) = v28;
    HIDWORD(v28) = 2139095039;
    a3.n128_u32[0] = v28;
    *(v8 + 33) = v10 == v11 && *&v28 == 3.4028e38;
    *(v8 + 34) = v11 == 0;
  }

  v12 = *(a1 + 184);
  if (!v12)
  {
    goto LABEL_25;
  }

  if (v12 != 1)
  {
    v20 = (*(***(a1 + 144) + 104))(**(a1 + 144), v6, a3);
    v21 = (*(***(a1 + 152) + 104))(**(a1 + 152), v7);
    if (v20 == -1 && v21 == -1)
    {
      v30 = 5;
      strcpy(__p, "FATAL");
      v26 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
      sub_1AE5DB608(v26, ": ", 2);
      sub_1AE5DB608(MEMORY[0x1E69E5300], "ComposeFst: both sides can't require match", 42);
      sub_1AE696D18();
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 8) |= 4uLL;
    }

    else
    {
      v24 = v21 == -1 || v20 <= v21;
      if (v20 == -1 || !v24)
      {
        goto LABEL_6;
      }
    }

LABEL_25:
    v14 = *(a1 + 152);
    v13 = *(a1 + 160);
    v15 = a1;
    v16 = a2;
    v17 = v7;
    v18 = v6;
    v19 = 1;
    return sub_1AE6D7658(v15, v16, v17, v13, v18, v14, v19);
  }

LABEL_6:
  v13 = *(a1 + 168);
  v14 = *(a1 + 144);
  v15 = a1;
  v16 = a2;
  v17 = v6;
  v18 = v7;
  v19 = 0;
  return sub_1AE6D7658(v15, v16, v17, v13, v18, v14, v19);
}

void sub_1AE6D7630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D7658(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  (*(**a6 + 56))(*a6, a3);
  v19[0] = a7 - 1;
  v19[1] = a7 << 31 >> 31;
  v19[2] = 0;
  v19[3] = a5;
  sub_1AE6D78A8(a1, a2, a6, v19, a7);
  v18 = 0;
  (*(*a4 + 120))(a4, a5, v16);
  while (1)
  {
    if (!v16[0])
    {
      v14 = v18;
      if (v18 >= v16[2])
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if ((*(*v16[0] + 16))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      v14 = v18;
LABEL_10:
      v13 = v16[1] + 16 * v14;
      goto LABEL_11;
    }

    v13 = (*(*v16[0] + 24))();
LABEL_11:
    sub_1AE6D78A8(a1, a2, a6, v13, a7);
    if (v16[0])
    {
      (*(*v16[0] + 32))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return sub_1AE6CE468(a1, a2);
  }

LABEL_15:
  if (v17)
  {
    --*v17;
  }

  return sub_1AE6CE468(a1, a2);
}

void sub_1AE6D7854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (!a10)
  {
    if (a13)
    {
      --*a13;
    }

    _Unwind_Resume(exception_object);
  }

  (*(*a10 + 8))(a10);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6D78A8(uint64_t a1, int a2, void *a3, uint64_t a4, int a5)
{
  v5 = a5;
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      if (v5)
      {
        while (1)
        {
          v12 = (*(**a3 + 80))();
          v13 = *v12;
          v32 = *v12;
          v33 = *(v12 + 8);
          v34 = *(v12 + 12);
          v14 = *a4;
          v29 = v14;
          v30 = *(a4 + 8);
          v31 = *(a4 + 12);
          v15 = *(a1 + 136);
          if (v14 <= 0xFFFFFFFEFFFFFFFFLL)
          {
            if (v13 == -1)
            {
              v16 = v15[32];
              if (v15[32])
              {
                v17 = -1;
              }

              else
              {
                v17 = 0;
              }

              v28 = v17;
              if (v16)
              {
                goto LABEL_9;
              }
            }

            else
            {
              v18 = HIDWORD(v14);
              if (HIDWORD(v14))
              {
                v19 = 0;
              }

              else
              {
                v19 = -1;
              }

              v28 = v19;
              if (!v18)
              {
                goto LABEL_9;
              }
            }
          }

          else
          {
            if (v15[33])
            {
              goto LABEL_9;
            }

            v28 = v15[34] ^ 1;
          }

          sub_1AE6D7BAC(a1, a2, &v29, &v32, &v28);
LABEL_9:
          (*(**a3 + 88))();
          result = (*(**a3 + 72))();
          if (result)
          {
            return result;
          }
        }
      }

      do
      {
        v20 = (*(**a3 + 80))();
        v21 = *v20;
        v32 = v21;
        v33 = *(v20 + 8);
        v34 = *(v20 + 12);
        v22 = *a4;
        v29 = *a4;
        v30 = *(a4 + 8);
        v31 = *(a4 + 12);
        v23 = *(a1 + 136);
        if (v21 < 0xFFFFFFFF00000000)
        {
          if (v22 == -1)
          {
            v24 = v23[32];
            if (v23[32])
            {
              v25 = -1;
            }

            else
            {
              v25 = 0;
            }

            v28 = v25;
            if (v24)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v26 = HIDWORD(v21);
            if (v26)
            {
              v27 = 0;
            }

            else
            {
              v27 = -1;
            }

            v28 = v27;
            if (!v26)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          if (v23[33])
          {
            goto LABEL_26;
          }

          v28 = v23[34] ^ 1;
        }

        sub_1AE6D7BAC(a1, a2, &v32, &v29, &v28);
LABEL_26:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void *sub_1AE6D7BAC(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, char *a5)
{
  v7 = *(a4 + 12);
  LODWORD(v31) = a3[3];
  HIDWORD(v31) = v7;
  v32 = *a5;
  v8 = *a3;
  v9 = *(a4 + 4);
  v10 = *(a3 + 2);
  if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
  {
    v25 = a3;
    v26 = a4;
    v22 = __cxa_guard_acquire(&qword_1ED9AC728);
    a3 = v25;
    a4 = v26;
    if (v22)
    {
      dword_1ED9AC720 = -8388609;
      __cxa_guard_release(&qword_1ED9AC728);
      a3 = v25;
      a4 = v26;
    }
  }

  if (v10 != *&dword_1ED9AC720)
  {
    v10 = *(a4 + 8);
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
    {
      v27 = a4;
      v23 = a3;
      v24 = __cxa_guard_acquire(&qword_1ED9AC728);
      a3 = v23;
      a4 = v27;
      if (v24)
      {
        dword_1ED9AC720 = -8388609;
        __cxa_guard_release(&qword_1ED9AC728);
        a3 = v23;
        a4 = v27;
      }
    }

    if (v10 != *&dword_1ED9AC720)
    {
      v11 = *(a3 + 2);
      v12 = *(a4 + 8);
      v13 = v11 == 3.4028e38;
      v14 = v12 + v11;
      if (v13 || v12 == 3.4028e38)
      {
        v10 = 3.4028e38;
      }

      else
      {
        v10 = v14;
      }
    }
  }

  v15 = *(a1 + 176);
  v15[16] = &v31;
  v16 = sub_1AE6CC440(v15 + 4);
  if (v16)
  {
    v17 = *(v16 + 4);
  }

  else
  {
    LODWORD(v28) = -1431655765 * ((v15[14] - v15[13]) >> 2);
    v17 = v28;
    sub_1AE6CC56C((v15 + 13), &v31);
    sub_1AE6CC6BC((v15 + 4), v28, &v28);
  }

  v28 = __PAIR64__(v9, v8);
  v29 = v10;
  v30 = v17;
  v18 = sub_1AE6CE5A0(*(a1 + 120), a2);
  v19 = v18;
  v20 = v18[4];
  if (v20 >= v18[5])
  {
    result = sub_1AE6D28F0(v18 + 3, &v28);
  }

  else
  {
    *v20 = v28;
    *(v20 + 8) = v10;
    *(v20 + 12) = v17;
    result = (v20 + 16);
  }

  v19[4] = result;
  return result;
}

void sub_1AE6D7FB4(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x10E0C401DE81863);
  sub_1AE6C6C70(v2);
  MEMORY[0x1B2706400](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D8038(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 56))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 56))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void sub_1AE6D8170(void *a1)
{
  sub_1AE6D81A8(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6D81A8(void *a1)
{
  *a1 = &unk_1F242D308;
  v2 = a1[17];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      MEMORY[0x1B2706400](v3, 0x20C4093837F09);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      MEMORY[0x1B2706400](v4, 0x20C4093837F09);
    }

    MEMORY[0x1B2706400](v2, 0x1060C40AD892F49);
  }

  v5 = a1[22];
  if (v5)
  {
    v6 = sub_1AE6D3E24(v5);
    MEMORY[0x1B2706400](v6, 0x10E0C401DE81863);
  }

  return sub_1AE6C6C70(a1);
}

float sub_1AE6D82D4@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  (*(***(a1 + 144) + 96))(&v9 + 4);
  result = *(&v9 + 1);
  v11 = HIDWORD(v9);
  v10 = 2139095039;
  if (*(&v9 + 1) == 3.4028e38)
  {
    goto LABEL_3;
  }

  (*(***(a1 + 152) + 96))(&v9);
  result = *&v9;
  v11 = v9;
  v10 = 2139095039;
  if (*&v9 == 3.4028e38)
  {
    goto LABEL_3;
  }

  result = *(&v9 + 1);
  if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
  {
    v7 = result;
    v5 = __cxa_guard_acquire(&qword_1ED9AC728);
    result = v7;
    if (v5)
    {
      dword_1ED9AC720 = -8388609;
      __cxa_guard_release(&qword_1ED9AC728);
      result = v7;
    }
  }

  if (result != *&dword_1ED9AC720)
  {
    result = *&v9;
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
    {
      v8 = result;
      v6 = __cxa_guard_acquire(&qword_1ED9AC728);
      result = v8;
      if (v6)
      {
        dword_1ED9AC720 = -8388609;
        __cxa_guard_release(&qword_1ED9AC728);
        result = v8;
      }
    }

    if (result != *&dword_1ED9AC720)
    {
      result = *&v9 + *(&v9 + 1);
      if (*(&v9 + 1) == 3.4028e38 || *&v9 == 3.4028e38)
      {
        result = 3.4028e38;
      }

LABEL_3:
      *a2 = result;
    }
  }

  return result;
}