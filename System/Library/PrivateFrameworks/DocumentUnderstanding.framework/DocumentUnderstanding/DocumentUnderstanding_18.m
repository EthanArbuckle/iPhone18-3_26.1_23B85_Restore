uint64_t *sub_232C86C58(uint64_t *result, uint64_t *a2)
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

uint64_t sub_232C86DF4(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
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

uint64_t sub_232C86E80(uint64_t a1, uint64_t a2)
{
  v2 = *sub_232C86B18(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_232C86F14@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *result;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = (64 - v3);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = (64 - v3);
  }

  if (((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4) != 0)
  {
    v7 = __rbit64((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4);
LABEL_17:
    *a3 = v4;
    *(a3 + 8) = __clz(v7);
    return result;
  }

  if (v5 < a2)
  {
    a2 -= v6;
    *result = ++v4;
LABEL_9:
    if (a2 < 0x40)
    {
LABEL_12:
      if (!a2 || (v8 = (0xFFFFFFFFFFFFFFFFLL >> -a2) & ~*v4) == 0)
      {
        *a3 = v4;
        *(a3 + 8) = a2;
        return result;
      }
    }

    else
    {
      while (*v4 == -1)
      {
        *result = ++v4;
        a2 -= 64;
        if (a2 <= 0x3F)
        {
          goto LABEL_12;
        }
      }

      v8 = ~*v4;
    }

    v7 = __rbit64(v8);
    goto LABEL_17;
  }

  *a3 = &v4[(v3 + a2) >> 6];
  *(a3 + 8) = (v3 + a2) & 0x3F;
  return result;
}

void sub_232C86FF4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_232C849B0();
}

const void **sub_232C8703C(void *a1, const void **a2)
{
  v4 = sub_232C8508C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_232C85538(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_232C87138(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_232C849B0();
}

void sub_232C87180(void (**a1)(unint64_t, uint64_t), unint64_t *a2)
{
  if (a2[3])
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    sub_232C87740(a1, a2, v2);
  }

  sub_232C87B6C(a1, a2);
}

uint64_t *sub_232C87274(uint64_t *a1)
{
  sub_232C872C0(a1);
  if (*a1)
  {
    MEMORY[0x238392BE0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_232C872C0(uint64_t *a1)
{
  sub_232C8730C(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_232C8730C(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > a2)
  {
    *(result + 8) = a2;
    v2 = a2;
  }

  if (*(result + 16) < a2)
  {
    sub_232C8736C(result, a2);
  }

  if (v2 < a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_232C8736C(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void sub_232C874AC(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x238392C10);
}

const char *sub_232C874E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 8);
  }

  else
  {
    return "";
  }
}

uint64_t *sub_232C874FC(uint64_t *a1)
{
  sub_232C87548(a1);
  if (*a1)
  {
    MEMORY[0x238392BE0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_232C87548(uint64_t *a1)
{
  sub_232C87594(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_232C87594(void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    sub_232C87604(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void sub_232C87604(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void sub_232C87740(void (**a1)(unint64_t, uint64_t), unint64_t *a2, uint64_t *a3)
{
  sub_232C885B8(a3);
  if (*a2)
  {
    v6 = 0;
    do
    {
      v7 = a2[2];
      v8 = *(a2[1] + 8 * v6);
      if (v7)
      {
        v9 = *(v7 + 8 * v6);
      }

      else
      {
          ;
        }

        v9 = v7 - 1;
      }

      v11 = a2[3];
      if (v11)
      {
        v12 = *(v11 + 4 * v6);
      }

      else
      {
        v12 = v6;
      }

      sub_232C8868C(a3, v8, v9, v12);
      ++v6;
      if (*a1)
      {
        (*a1)(v6, *a2 + 1);
      }
    }

    while (v6 < *a2);
  }

  sub_232C88B38(a3, 0);
  v13 = *a3;
  v14 = *(*a3 + 8);
  v15 = **a3;
  if (v14)
  {
    if (*(v13 + 9))
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | (4 * v15);
  }

  else
  {
    v17 = 2 * v15;
  }

  *a3[3] = v17 | *(v13 + 10);
  *a3[6] = v14;
  sub_232C88398(a3);
  sub_232C87E34(a3 + 15);
  sub_232C87E34(a3 + 18);
  sub_232C87E34(a3 + 21);

  sub_232C88F68((a3 + 9));
}

void sub_232C87870(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = 1;
  do
  {
    v5 = v4;
    v4 *= 2;
  }

  while (v5 < v3);
  if (*(a1 + 24) < v5)
  {
    sub_232C87604(a1 + 8, v5);
  }

  v6 = 4 * *(a2 + 104);
  operator new[]();
}

void sub_232C87B6C(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 < v2);
  if (*(a1 + 24) < v4)
  {
    sub_232C87604(a1 + 8, v4);
  }

  operator new[]();
}

uint64_t *sub_232C87DF8(uint64_t *a1)
{
  sub_232C87E34(a1);

  return sub_232C8801C(a1);
}

uint64_t sub_232C87E34(uint64_t *a1)
{
  sub_232C87E80(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_232C87E80(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > a2)
  {
    *(result + 8) = a2;
    v2 = a2;
  }

  if (*(result + 16) < a2)
  {
    sub_232C87EE0(result, a2);
  }

  if (v2 < a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_232C87EE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *sub_232C8801C(uint64_t *a1)
{
  sub_232C87E34(a1);
  if (*a1)
  {
    MEMORY[0x238392BE0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t *sub_232C88068(uint64_t *a1)
{
  sub_232C880C4(a1);
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x238392BE0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return sub_232C8801C(a1);
}

uint64_t sub_232C880C4(uint64_t *a1)
{
  sub_232C87E34(a1);
  result = a1[3];
  if (result)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8052888210);
    a1[3] = 0;
  }

  return result;
}

uint64_t *sub_232C88108(uint64_t *a1)
{
  sub_232C88154(a1);
  if (*a1)
  {
    MEMORY[0x238392BE0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_232C88154(uint64_t *a1)
{
  sub_232C881A0(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_232C881A0(void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    sub_232C88210(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void sub_232C88210(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *sub_232C8834C(uint64_t *a1)
{
  sub_232C88398(a1);
  if (*a1)
  {
    MEMORY[0x238392BE0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_232C88398(uint64_t *a1)
{
  sub_232C883E4(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void *sub_232C883E4(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 > a2)
  {
    result[1] = a2;
    v2 = a2;
  }

  if (result[2] < a2)
  {
    sub_232C88468(result, a2);
  }

  for (; v2 < a2; v2 = result[1])
  {
    result[1] = v2 + 1;
    v3 = *result + 12 * v2;
    *(v3 + 7) = 0;
    *v3 = 0;
  }

  return result;
}

void sub_232C88468(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void *sub_232C885B8(void *a1)
{
  v7 = 0;
  sub_232C888E4(a1 + 15, 0x400uLL, &v7);
  v2 = a1[22];
  if (v2)
  {
    v3 = *a1 + 12 * *(a1[21] + 4 * v2 - 4);
    *(v3 + 7) = 0;
    *v3 = 0;
    --a1[22];
  }

  else
  {
    sub_232C889F0(a1);
  }

  sub_232C88A48(a1 + 9);
  sub_232C88A98(a1 + 3);
  v4 = a1[7];
  if (v4 == a1[8])
  {
    sub_232C8736C((a1 + 6), v4 + 1);
  }

  a1[7] = v4 + 1;
  a1[24] = 1;
  *(*a1 + 8) = -1;
  v6 = 0;
  return sub_232C88AE4(a1 + 18, &v6);
}

void *sub_232C8868C(void *result, uint64_t a2, unint64_t a3, int a4)
{
  if (a4 < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1106: exception: failed to insert key: negative value";
    goto LABEL_25;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1108: exception: failed to insert key: zero-length key";
LABEL_25:
    *exception = &unk_2848148F8;
    exception[1] = v24;
    __cxa_throw(exception, &unk_2848148D0, std::exception::~exception);
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = *result;
  while (1)
  {
    v11 = *(v10 + 12 * v8);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = *(a2 + v9);
    if (v9 < a3 && !*(a2 + v9))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1122: exception: failed to insert key: invalid null character";
      goto LABEL_25;
    }

    v13 = v10 + 12 * v11;
    v14 = *(v13 + 8);
    if (v12 < v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1127: exception: failed to insert key: wrong key order";
      goto LABEL_25;
    }

    if (v12 > v14)
    {
      break;
    }

    ++v9;
    v8 = *(v10 + 12 * v8);
    if (v9 > a3)
    {
      return result;
    }
  }

  *(v13 + 10) = 1;
  result = sub_232C88B38(result, v11);
LABEL_12:
  while (v9 <= a3)
  {
    if (v9 >= a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + v9);
    }

    v16 = v7[22];
    if (v16)
    {
      v17 = *(v7[21] + 4 * v16 - 4);
      v18 = *v7 + 12 * v17;
      *(v18 + 7) = 0;
      *v18 = 0;
      --v7[22];
    }

    else
    {
      v17 = *(v7 + 2);
      sub_232C889F0(v7);
    }

    v25 = v17;
    v19 = *v7;
    v20 = (*v7 + 12 * v8);
    v21 = *v20;
    if (!*v20)
    {
      *(v19 + 12 * v17 + 9) = 1;
    }

    *(v19 + 12 * v17 + 4) = v21;
    v22 = v25;
    *(v19 + 12 * v25 + 8) = v15;
    *v20 = v22;
    result = sub_232C88AE4(v7 + 18, &v25);
    v8 = v25;
    ++v9;
  }

  *(*v7 + 12 * v8) = a4;
  return result;
}

void *sub_232C888E4(void *result, unint64_t a2, int *a3)
{
  v3 = result[1];
  if (v3 > a2)
  {
    result[1] = a2;
    v3 = a2;
  }

  if (result[2] < a2)
  {
    sub_232C87EE0(result, a2);
  }

  v4 = a2 - v3;
  if (a2 > v3)
  {
    v5 = 0;
    v6 = *a3;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (*result + 4 * v3 + 8);
    do
    {
      v9 = vdupq_n_s64(v5);
      v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_232CFE360)));
      if (vuzp1_s16(v10, *v7.i8).u8[0])
      {
        *(v8 - 2) = v6;
      }

      if (vuzp1_s16(v10, *&v7).i8[2])
      {
        *(v8 - 1) = v6;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_232D00680)))).i32[1])
      {
        *v8 = v6;
        v8[1] = v6;
      }

      v5 += 4;
      v8 += 4;
    }

    while (((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v5);
    result[1] = a2;
  }

  return result;
}

void *sub_232C889F0(void *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    sub_232C88468(result, v1 + 1);
  }

  result[1] = v1 + 1;
  v2 = *result + 12 * v1;
  *(v2 + 7) = 0;
  *v2 = 0;
  return result;
}

void *sub_232C88A48(void *result)
{
  v1 = result;
  v2 = result[5];
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    result = sub_232C88AE4(result, &v3);
    v2 = v1[5];
  }

  v1[5] = v2 + 1;
  return result;
}

void *sub_232C88A98(void *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    sub_232C88210(result, v1 + 1);
  }

  result[1] = v1 + 1;
  *(*result + 4 * v1) = 0;
  return result;
}

void *sub_232C88AE4(void *result, _DWORD *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    sub_232C87EE0(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + 4 * v2) = *a2;
  return result;
}

uint64_t sub_232C88B38(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 152);
  v4 = *(*(result + 144) + 4 * v3 - 4);
  if (v4 != a2)
  {
    while (1)
    {
      *(v2 + 152) = v3 - 1;
      v6 = *(v2 + 128);
      if (*(v2 + 192) >= v6 - (v6 >> 2))
      {
        v7 = 2 * v6;
        sub_232C87E34((v2 + 120));
        v34 = 0;
        sub_232C888E4((v2 + 120), v7, &v34);
        v8 = *(v2 + 32);
        if (v8 >= 2)
        {
          v9 = *(v2 + 48);
          for (i = 1; i != v8; ++i)
          {
            if (!*(v9 + i) || (*(*(v2 + 24) + 4 * i) & 2) != 0)
            {
              v11 = 0;
              if (i)
              {
                v12 = i;
                do
                {
                  v13 = *(*(v2 + 24) + 4 * v12);
                  v14 = (v13 ^ ~(*(v9 + v12) << 24)) + (v13 << 15);
                  v15 = 2057 * ((5 * (v14 ^ (v14 >> 12))) ^ ((5 * (v14 ^ (v14 >> 12))) >> 4));
                  v11 ^= HIWORD(v15) ^ v15;
                  v16 = __CFADD__(v12++, 1);
                }

                while (!v16 && (v13 & 1) != 0);
              }

              v17 = *(v2 + 120);
              do
              {
                v18 = v11 % *(v2 + 128);
                v11 = v18 + 1;
              }

              while (*(v17 + 4 * v18));
              *(v17 + 4 * v18) = i;
            }
          }
        }
      }

      v19 = 0;
      if (v4)
      {
        v20 = v4;
        do
        {
          ++v19;
          v20 = *(*v2 + 12 * v20 + 4);
        }

        while (v20);
      }

      v33 = 0;
      result = sub_232C88E08(v2, v4, &v33);
      if (result)
      {
        v21 = result;
        *(*(v2 + 72) + 4 * (result >> 5)) |= 1 << result;
        if (v4)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      if (!v19)
      {
        break;
      }

      do
      {
        sub_232C88A48((v2 + 72));
        result = sub_232C88A98((v2 + 24));
        v24 = *(v2 + 56);
        if (v24 == *(v2 + 64))
        {
          sub_232C8736C(v2 + 48, v24 + 1);
        }

        *(v2 + 56) = v24 + 1;
        --v19;
      }

      while (v19);
      v25 = *(v2 + 112) - 1;
      if (v4)
      {
        goto LABEL_31;
      }

LABEL_39:
      v21 = v25 + 1;
      *(*(v2 + 120) + 4 * v33) = v25 + 1;
      ++*(v2 + 192);
      if (v4)
      {
        do
        {
LABEL_21:
          v22 = *(*v2 + 12 * v4 + 4);
          v35 = v4;
          result = sub_232C88AE4((v2 + 168), &v35);
          v4 = v22;
        }

        while (v22);
      }

LABEL_22:
      v3 = *(v2 + 152);
      v23 = *(v2 + 144) + 4 * v3;
      *(*v2 + 12 * *(v23 - 4)) = v21;
      v4 = *(v23 - 4);
      if (v4 == a2)
      {
        goto LABEL_2;
      }
    }

    v25 = 0;
    if (!v4)
    {
      goto LABEL_39;
    }

LABEL_31:
    v26 = *v2;
    v27 = v4;
    do
    {
      v28 = v26 + 12 * v27;
      v29 = *(v28 + 8);
      v30 = *v28;
      if (v29)
      {
        if (*(v28 + 9))
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        v32 = v31 | (4 * v30);
      }

      else
      {
        v32 = 2 * v30;
      }

      *(*(v2 + 24) + 4 * v25) = v32 | *(v28 + 10);
      *(*(v2 + 48) + v25--) = v29;
      v26 = *v2;
      v27 = *(*v2 + 12 * v27 + 4);
    }

    while (v27);
    goto LABEL_39;
  }

LABEL_2:
  *(v2 + 152) = v3 - 1;
  return result;
}

uint64_t sub_232C88E08(uint64_t *a1, unsigned int a2, _DWORD *a3)
{
  v3 = a2;
  if (a2)
  {
    LODWORD(v4) = 0;
    v5 = a2;
    do
    {
      v6 = *a1 + 12 * v5;
      v7 = *v6;
      if (*(v6 + 8))
      {
        if (*(v6 + 9))
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8 | (4 * v7);
      }

      else
      {
        v9 = 2 * v7;
      }

      v10 = ((v9 | *(v6 + 10)) ^ ~(*(v6 + 8) << 24)) + ((v9 | *(v6 + 10)) << 15);
      v11 = 2057 * ((5 * (v10 ^ (v10 >> 12))) ^ ((5 * (v10 ^ (v10 >> 12))) >> 4));
      v4 = v4 ^ HIWORD(v11) ^ v11;
      v5 = *(v6 + 4);
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  v13 = a1[15];
  v12 = a1[16];
  v14 = v4 % v12;
  *a3 = v4 % v12;
  v15 = *(v13 + 4 * (v4 % v12));
  if (v15)
  {
    v16 = *a1;
    v17 = *a1 + 12 * a2;
    v18 = a1[3];
    do
    {
      v19 = *(v17 + 4);
      v20 = v15;
      if (v19)
      {
        v20 = v15;
        while ((*(v18 + 4 * v20) & 1) != 0)
        {
          ++v20;
          LODWORD(v19) = *(v16 + 12 * v19 + 4);
          if (!v19)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        if ((*(v18 + 4 * v20) & 1) == 0)
        {
          if (!v3)
          {
            return v15;
          }

          v21 = v3;
          while (1)
          {
            v22 = (v16 + 12 * v21);
            v23 = *v22;
            if (*(v22 + 8))
            {
              v24 = *(v22 + 9) ? 2 : 0;
              v25 = v24 | (4 * v23);
            }

            else
            {
              v25 = 2 * v23;
            }

            if ((v25 | *(v22 + 10)) != *(v18 + 4 * v20) || *(v22 + 8) != *(a1[6] + v20))
            {
              break;
            }

            v21 = v22[1];
            --v20;
            if (!v21)
            {
              return v15;
            }
          }
        }
      }

      v14 = (v14 + 1) % v12;
      *a3 = v14;
      v15 = *(v13 + 4 * v14);
    }

    while (v15);
  }

  return v15;
}

unsigned int *sub_232C890AC(unsigned int *result, unsigned int a2)
{
  if (a2 >> 29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_2848148F8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1339: exception: failed to modify unit: too large offset";
    __cxa_throw(exception, &unk_2848148D0, std::exception::~exception);
  }

  v2 = (4 * a2) | 0x200;
  if (a2 < 0x200000)
  {
    v2 = a2 << 10;
  }

  *result = *result & 0x800001FF | v2;
  return result;
}

unsigned int *sub_232C89130(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = a2 + 9;
  v9 = *(a2[3] + 4 * a3);
  v10 = v9 >> 2;
  v11 = v9 >> 7;
  v12 = 1 << (v9 >> 2);
  if ((v12 & *(a2[9] + 4 * (v9 >> 7))) != 0 && (v13 = *(*(a1 + 64) + 4 * (sub_232C89730(a2 + 9, v10) - 1))) != 0 && ((v14 = v13 ^ a4, ((v13 ^ a4) & 0x1FE00000) != 0) ? (v15 = (v13 ^ a4) == 0) : (v15 = 1), v15))
  {
    if (*(a2[6] + v10))
    {
      v16 = *(a1 + 8);
      v17 = a4;
    }

    else
    {
      v17 = a4;
      v16 = *(a1 + 8);
      *(v16 + 4 * a4) |= 0x100u;
    }

    return sub_232C890AC((v16 + 4 * v17), v14);
  }

  else
  {
    result = sub_232C894B4(a1, a2, a3, a4);
    v19 = result;
    if ((*(a2[9] + 4 * v11) & v12) != 0)
    {
      result = sub_232C89730(v8, v10);
      *(*(a1 + 64) + 4 * (result - 1)) = v19;
    }

    do
    {
      if (*(a2[6] + v10))
      {
        result = sub_232C89130(a1, a2, v10, v19 ^ *(a2[6] + v10));
      }

      if (v10 == -1)
      {
        break;
      }

      v20 = *(a2[3] + 4 * v10);
      LODWORD(v10) = v10 + 1;
    }

    while ((v20 & 1) != 0);
  }

  return result;
}

void sub_232C892A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (v2 + 256);
  v4 = (v2 >> 8) - 16;
  if (v4 >= 0xFFFFFFEF)
  {
    sub_232C87594((a1 + 8), (v2 + 256));
  }

  else
  {
    v5 = 0;
    v6 = v4 << 8;
    v7 = *(a1 + 32);
    v8 = (3072 * ((v2 >> 8) & 0xF)) | 9;
    while (*(v7 + v8) == 1)
    {
      --v5;
      v8 += 12;
      if (v5 == -256)
      {
        v9 = 0;
        goto LABEL_8;
      }
    }

    v9 = v6 - v5;
LABEL_8:
    v10 = 3072 * ((v2 >> 8) & 0xF);
    v11 = 256;
    do
    {
      if ((*(v7 + v10 + 8) & 1) == 0)
      {
        if (*(a1 + 16) <= v6)
        {
          sub_232C892A8(a1);
          v7 = *(a1 + 32);
        }

        v12 = (v7 + v10);
        v13 = *(v7 + v10 + 4);
        if (v6 == *(a1 + 72))
        {
          *(a1 + 72) = v13;
          if (v6 == v13)
          {
            *(a1 + 72) = *(a1 + 16);
          }
        }

        v14 = *v12;
        *(v7 + 12 * (*v12 & 0xFFF) + 4) = v13;
        *(v7 + 12 * (v12[1] & 0xFFF)) = v14;
        *(v12 + 8) = 1;
        *(*(a1 + 8) + 4 * v6) = v9 ^ v6;
      }

      ++v6;
      v10 += 12;
      --v11;
    }

    while (v11);
    sub_232C87594((a1 + 8), (v2 + 256));
    v15 = v2;
    if (v2 < v3)
    {
      v16 = *(a1 + 32);
      do
      {
        *(v16 + 12 * (v15++ & 0xFFF) + 8) = 0;
      }

      while (v3 != v15);
    }
  }

  v17 = *(a1 + 32);
  if (v2 + 1 < v3)
  {
    v18 = 255;
    v19 = v2;
    do
    {
      *(v17 + 12 * (v19 & 0xFFF) + 4) = v19 + 1;
      *(v17 + 12 * ((v19 + 1) & 0xFFF)) = v19;
      ++v19;
      --v18;
    }

    while (v18);
  }

  v20 = 12 * (v2 & 0xFFF);
  *(v17 + v20) = v2 + 255;
  v21 = *(a1 + 72);
  v22 = 12 * (v21 & 0xFFF);
  v23 = *(v17 + v22);
  *(v17 + v20) = v23;
  *(v17 + 12 * ((v2 + 255) & 0xFFF) + 4) = v21;
  *(v17 + 12 * (v23 & 0xFFF) + 4) = v2;
  *(v17 + v22) = v2 + 255;
}

uint64_t sub_232C894B4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  sub_232C8730C(a1 + 40, 0);
  v8 = *(*(a2 + 24) + 4 * a3);
  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    do
    {
      v38 = *(*(a2 + 48) + v9);
      sub_232C89794((a1 + 40), &v38);
      v10 = *(*(a2 + 24) + 4 * v9);
      v12 = __CFADD__(v9++, 1);
    }

    while ((v10 & 1) != 0 && !v12);
  }

  v13 = *(a1 + 72);
  v14 = *(a1 + 16);
  if (v14 > v13)
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v19 = *v15;
    v17 = v15 + 1;
    v18 = v19;
    v20 = *(a1 + 72);
    do
    {
      v21 = v20 ^ v18;
      if ((*(v16 + 12 * ((v20 ^ v18) & 0xFFF) + 9) & 1) == 0 && (!((v20 ^ v18) ^ a4) || ((v21 ^ a4) & 0x1FE00000) == 0))
      {
        v22 = *(a1 + 48);
        if (v22 < 2)
        {
          goto LABEL_21;
        }

        v23 = v22 - 1;
        v24 = v17;
        while (1)
        {
          v25 = *v24++;
          if (*(v16 + 12 * ((v20 ^ v18) & 0xFFF ^ v25) + 8) == 1)
          {
            break;
          }

          if (!--v23)
          {
            goto LABEL_21;
          }
        }
      }

      v20 = *(v16 + 12 * (v20 & 0xFFF) + 4);
    }

    while (v20 != v13);
  }

  v21 = a4 | v14;
LABEL_21:
  sub_232C890AC((*(a1 + 8) + 4 * a4), v21 ^ a4);
  if (*(a1 + 48))
  {
    v26 = 0;
    v27 = *(*(a2 + 24) + 4 * a3) >> 2;
    do
    {
      v28 = v21 ^ *(*(a1 + 40) + v26);
      if (*(a1 + 16) <= v28)
      {
        sub_232C892A8(a1);
      }

      if (*(a1 + 72) == v28)
      {
        v29 = v28 & 0xFFF;
        v30 = *(a1 + 32);
        v31 = *(v30 + 12 * (v28 & 0xFFF) + 4);
        *(a1 + 72) = v31;
        if (v31 == v28)
        {
          *(a1 + 72) = *(a1 + 16);
        }
      }

      else
      {
        v30 = *(a1 + 32);
        v29 = v28 & 0xFFF;
      }

      v32 = v30 + 12 * v29;
      v33 = *(v32 + 4);
      v34 = v30 + 12 * (*v32 & 0xFFF);
      *(v30 + 12 * (v33 & 0xFFF)) = *v32;
      *(v34 + 4) = v33;
      *(v32 + 8) = 1;
      v35 = *(a1 + 8);
      if (*(*(a2 + 48) + v27))
      {
        *(v35 + 4 * v28) = *(*(a1 + 40) + v26);
        v36 = *(*(a2 + 24) + 4 * v27);
      }

      else
      {
        *(v35 + 4 * a4) |= 0x100u;
        v36 = *(*(a2 + 24) + 4 * v27);
        *(v35 + 4 * v28) = (v36 >> 1) | 0x80000000;
      }

      v27 = ((v36 << 31) >> 31) & (v27 + 1);
      ++v26;
    }

    while (v26 < *(a1 + 48));
  }

  else
  {
    v30 = *(a1 + 32);
  }

  *(v30 + 12 * (v21 & 0xFFF) + 9) = 1;
  return v21;
}

uint64_t sub_232C89730(void *a1, unint64_t a2)
{
  v2 = (a2 >> 3) & 0x1FFFFFFFFFFFFFFCLL;
  v3 = *(a1[3] + v2);
  LODWORD(v2) = *(*a1 + v2) & (0xFFFFFFFF >> ~a2);
  LODWORD(v2) = ((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333) + (((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333)) >> 4)) & 0xF0F0F0F;
  return ((v2 + BYTE1(v2) + ((v2 + (v2 >> 8)) >> 16)) & 0x3Fu) + v3;
}

void *sub_232C89794(void *result, _BYTE *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    sub_232C8736C(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + v2) = *a2;
  return result;
}

uint64_t *sub_232C897E8(uint64_t *a1)
{
  sub_232C88398(a1);
  sub_232C88154(a1 + 3);
  sub_232C872C0(a1 + 6);
  sub_232C880C4(a1 + 9);
  sub_232C87E34(a1 + 15);
  sub_232C87E34(a1 + 18);
  sub_232C87E34(a1 + 21);
  a1[24] = 0;
  sub_232C87DF8(a1 + 21);
  sub_232C87DF8(a1 + 18);
  sub_232C8801C(a1 + 15);
  sub_232C88068(a1 + 9);
  sub_232C87274(a1 + 6);
  sub_232C88108(a1 + 3);

  return sub_232C8834C(a1);
}

uint64_t sub_232C89888(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  while (1)
  {
    result = sub_232C899F0(a1, a2, a3, a4, a5, a6);
    v12 = result;
    if (a3 < a4)
    {
      v13 = a2[2];
      while (v13 && *(v13 + 8 * a3) <= a5 || !*(*(a2[1] + 8 * a3) + a5))
      {
        if (a4 == ++a3)
        {
          return result;
        }
      }
    }

    if (a3 == a4)
    {
      break;
    }

    v14 = a2[2];
    if (v14 && *(v14 + 8 * a3) <= a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(*(a2[1] + 8 * a3) + a5);
    }

    v16 = a3 + 1;
    if (a3 + 1 < a4)
    {
      do
      {
        if (v14 && *(v14 + 8 * v16) <= a5)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(*(a2[1] + 8 * v16) + a5);
        }

        if (v17 != v15)
        {
          sub_232C89888(a1, a2, a3, v16, a5 + 1, v12 ^ v15);
          v14 = a2[2];
          if (v14 && *(v14 + 8 * v16) <= a5)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(*(a2[1] + 8 * v16) + a5);
          }

          a3 = v16;
        }

        ++v16;
      }

      while (a4 != v16);
    }

    a6 = v12 ^ v15;
    ++a5;
  }

  return result;
}

uint64_t sub_232C899F0(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  sub_232C8730C(a1 + 40, 0);
  if (a3 < a4)
  {
    v12 = -1;
    while (1)
    {
      v13 = a2[2];
      if (v13)
      {
        if (*(v13 + 8 * a3) > a5)
        {
          v44 = *(*(a2[1] + 8 * a3) + a5);
          if (!v44)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1675: exception: failed to build double-array: invalid null character";
            goto LABEL_57;
          }

          goto LABEL_20;
        }

        v44 = 0;
      }

      else
      {
        v44 = *(*(a2[1] + 8 * a3) + a5);
        if (v44)
        {
          goto LABEL_20;
        }
      }

      v14 = a2[3];
      if (v14)
      {
        if ((*(v14 + 4 * a3) & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      else if ((a3 & 0x80000000) != 0)
      {
LABEL_56:
        exception = __cxa_allocate_exception(0x10uLL);
        v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1677: exception: failed to build double-array: negative value";
LABEL_57:
        *exception = &unk_2848148F8;
        exception[1] = v43;
        __cxa_throw(exception, &unk_2848148D0, std::exception::~exception);
      }

      if (v12 == -1)
      {
        if (v14)
        {
          v12 = *(v14 + 4 * a3);
        }

        else
        {
          v12 = a3;
        }
      }

      if (*a1)
      {
        (*a1)(a3 + 1, *a2 + 1);
      }

LABEL_20:
      v15 = *(a1 + 48);
      if (!v15)
      {
        goto LABEL_24;
      }

      v16 = *(*(a1 + 40) + v15 - 1);
      if (v44 != v16)
      {
        if (v44 < v16)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1692: exception: failed to build double-array: wrong key order";
          goto LABEL_57;
        }

LABEL_24:
        sub_232C89794((a1 + 40), &v44);
      }

      if (a4 == ++a3)
      {
        v17 = v12 | 0x80000000;
        goto LABEL_28;
      }
    }
  }

  v17 = -1;
LABEL_28:
  v18 = *(a1 + 72);
  v19 = *(a1 + 16);
  if (v19 > v18)
  {
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v24 = *v20;
    v22 = v20 + 1;
    v23 = v24;
    v25 = *(a1 + 72);
    do
    {
      v26 = v25 ^ v23;
      if ((*(v21 + 12 * ((v25 ^ v23) & 0xFFF) + 9) & 1) == 0 && (!((v25 ^ v23) ^ a6) || ((v26 ^ a6) & 0x1FE00000) == 0))
      {
        v27 = *(a1 + 48);
        if (v27 < 2)
        {
          goto LABEL_41;
        }

        v28 = v27 - 1;
        v29 = v22;
        while (1)
        {
          v30 = *v29++;
          if (*(v21 + 12 * ((v25 ^ v23) & 0xFFF ^ v30) + 8) == 1)
          {
            break;
          }

          if (!--v28)
          {
            goto LABEL_41;
          }
        }
      }

      v25 = *(v21 + 12 * (v25 & 0xFFF) + 4);
    }

    while (v25 != v18);
  }

  v26 = a6 | v19;
LABEL_41:
  sub_232C890AC((*(a1 + 8) + 4 * a6), v26 ^ a6);
  if (*(a1 + 48))
  {
    v31 = 0;
    v32 = *(a1 + 40);
    do
    {
      v33 = v26 ^ *(v32 + v31);
      if (*(a1 + 16) <= v33)
      {
        sub_232C892A8(a1);
      }

      if (*(a1 + 72) == v33)
      {
        v34 = v33 & 0xFFF;
        v35 = *(a1 + 32);
        v36 = *(v35 + 12 * (v33 & 0xFFF) + 4);
        *(a1 + 72) = v36;
        if (v36 == v33)
        {
          *(a1 + 72) = *(a1 + 16);
        }
      }

      else
      {
        v35 = *(a1 + 32);
        v34 = v33 & 0xFFF;
      }

      v37 = v35 + 12 * v34;
      v38 = *(v37 + 4);
      v39 = v35 + 12 * (*v37 & 0xFFF);
      *(v35 + 12 * (v38 & 0xFFF)) = *v37;
      *(v39 + 4) = v38;
      *(v37 + 8) = 1;
      v32 = *(a1 + 40);
      v40 = *(a1 + 8);
      if (*(v32 + v31))
      {
        *(v40 + 4 * v33) = *(v32 + v31);
      }

      else
      {
        *(v40 + 4 * a6) |= 0x100u;
        *(v40 + 4 * v33) = v17;
      }

      ++v31;
    }

    while (v31 < *(a1 + 48));
  }

  else
  {
    v35 = *(a1 + 32);
  }

  *(v35 + 12 * (v26 & 0xFFF) + 9) = 1;
  return v26;
}

uint64_t sub_232C89D78(uint64_t a1)
{
  sub_232C87548((a1 + 8));
  v2 = *(a1 + 32);
  if (v2)
  {
    MEMORY[0x238392BE0](v2, 0x1000C80CBA68D63);
    *(a1 + 32) = 0;
  }

  sub_232C872C0((a1 + 40));
  v3 = *(a1 + 64);
  if (v3)
  {
    MEMORY[0x238392BE0](v3, 0x1000C8052888210);
    *(a1 + 64) = 0;
  }

  *(a1 + 72) = 0;
  sub_232C87274((a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    MEMORY[0x238392BE0](v4, 0x1000C80CBA68D63);
    *(a1 + 32) = 0;
  }

  sub_232C874FC((a1 + 8));
  return a1;
}

uint64_t sub_232C89E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_284814920;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a3 + 245);
  sub_232CB32B4((a1 + 56));
  v5 = *(a2 + 64);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v6 = *v6;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_232C89EF4(a1, v6, v7);
  return a1;
}

void sub_232C89EA8(_Unwind_Exception *a1)
{
  sub_232CB32BC((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_232C89EF4(uint64_t *result, unsigned int *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = result;
    v6[0] = 0;
    v6[1] = 0;
    v5 = 0uLL;
    sub_232C8A360(a2, a3, v6, &v5, &v4);
    sub_232CB34D4(v3 + 7, &v4);
    result = sub_232CB32BC(&v4);
    if (!v3[7])
    {
      operator new();
    }
  }

  return result;
}

void sub_232C8A050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232CB32BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232C8A06C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284814920;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_232CB32B4((a1 + 56));
  v4 = *(a2 + 64);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
  v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *v5;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_232C89EF4(a1, v5, v6);
  return a1;
}

void sub_232C8A0F4(_Unwind_Exception *a1)
{
  sub_232CB32BC((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_232C8A144(uint64_t *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  a1[1] = 0;
  *a1 = &unk_284814920;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a2;
  a1[5] = 0;
  *(a1 + 48) = 0;
  sub_232CB32B4(a1 + 7);
  v10 = 0;
  sub_232C80728(a3, a4, &v10, &v9);
  sub_232CB34D4(a1 + 7, &v9);
  sub_232CB32BC(&v9);
  (*(*a1 + 24))(&v9, a1);
  v7 = v9;
  sub_232CB32BC(&v9);
  if (!v7)
  {
    *(a1 + 48) = v10 != 0;
    sub_232C89EF4(a1, a3 + 1, a4 - 4);
  }

  return a1;
}

void sub_232C8A248(_Unwind_Exception *a1)
{
  sub_232CB32BC((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_232C8A2B0(void *a1)
{
  *a1 = &unk_284814920;
  sub_232CB32BC(a1 + 7);
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_232C8A328(void *a1)
{
  sub_232C8A2B0(a1);

  JUMPOUT(0x238392C10);
}

void *sub_232C8A360@<X0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, unsigned int **a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  if (a2 < 5 || (v7 = *a1, a2 <= v7))
  {
    v10 = "Blob for normalization rule is broken.";
    v11 = 38;
  }

  else
  {
    if ((v7 + 1) < a2)
    {
      v8 = a1 + 1;
      *a3 = v8;
      a3[1] = v7;
      *a4 = v7 + v8;
      a4[1] = a2 - v7 - 4;
      return sub_232CB32B4(a5);
    }

    v10 = "Trie data size exceeds the input blob size.";
    v11 = 43;
  }

  return sub_232CB3420(a5, 13, v10, v11);
}

void *sub_232C8A3C8@<X0>(size_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X3>, const void **a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = a3;
  a5[1] = *a5;
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    *a4->__r_.__value_.__l.__data_ = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    if (!a3)
    {
LABEL_11:

      return sub_232CB32B4(a6);
    }
  }

  else
  {
    a4->__r_.__value_.__s.__data_[0] = 0;
    *(&a4->__r_.__value_.__s + 23) = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  result = (*(*a1 + 24))(a1);
  if (*a6)
  {
    return result;
  }

  sub_232CB32BC(a6);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v13 = 0;
    while (1)
    {
      sub_232C8ABD0(a1, a2, v8, &v39);
      if (v40 != 1 || *v39 != 32)
      {
        break;
      }

      a2 += v41;
      v13 += v41;
      v8 -= v41;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    v37 = a6;
  }

  else
  {
    v37 = a6;
    v13 = 0;
  }

  std::string::reserve(a4, 3 * v8);
  sub_232C8ADC4(a5, 3 * v8);
  if ((*(a1 + 48) & 1) == 0 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v14 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v39 = v13;
        sub_232C8AE64(a5, &v39);
        --v14;
      }

      while (v14);
    }

    else
    {
      std::string::append(a4, " ");
      v39 = v13;
      sub_232C8AE64(a5, &v39);
    }
  }

  v15 = (*(**(a1 + 32) + 24))(*(a1 + 32));
  do
  {
    sub_232C8ABD0(a1, a2, v8, &v39);
    v17 = v39;
    v16 = v40;
    if (v15)
    {
      if (!v40)
      {
        goto LABEL_40;
      }

      while (*v17 == 32)
      {
        ++v17;
        if (!--v16)
        {
          goto LABEL_40;
        }
      }
    }

    else if (!v40)
    {
      v15 = 0;
      goto LABEL_40;
    }

    v18 = 0;
    v38 = v13;
    v19 = v13;
    do
    {
      v20 = (*(**(a1 + 32) + 32))(*(a1 + 32));
      v21 = v17[v18];
      if (v20 && v21 == 32)
      {
        std::string::append(a4, "▁", 3uLL);
        v22 = 3;
        do
        {
          v45[0] = v19;
          sub_232C8AE64(a5, v45);
          --v22;
        }

        while (v22);
      }

      else
      {
        std::string::push_back(a4, v21);
        v45[0] = v19;
        sub_232C8AE64(a5, v45);
      }

      ++v18;
    }

    while (v18 != v16);
    v15 = v17[v16 - 1] == 32;
    v13 = v38;
LABEL_40:
    v13 += v41;
    a2 += v41;
    v8 -= v41;
    v15 &= (*(**(a1 + 32) + 24))(*(a1 + 32));
  }

  while (v8);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v23 = (*(**(a1 + 32) + 32))(*(a1 + 32));
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 1;
    }

    LODWORD(v25) = v13;
    if (v23)
    {
      v26 = "▁";
    }

    else
    {
      v26 = " ";
    }

    while (1)
    {
      v27 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v27 & 0x8000000000000000) != 0)
      {
        v28 = a4->__r_.__value_.__r.__words[0];
        size = a4->__r_.__value_.__l.__size_;
      }

      else
      {
        v28 = a4;
        size = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      v30 = size >= v24;
      v31 = size - v24;
      if (!v30 || memcmp(v28 + v31, v26, v24))
      {
        break;
      }

      if ((v27 & 0x80000000) != 0)
      {
        v27 = a4->__r_.__value_.__l.__size_;
      }

      if (v27 - v24 < 0)
      {
        LODWORD(v39) = 13;
        v34 = sub_232C83BBC(&v40);
        sub_232C85DAC(v34, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
        sub_232C85DAC(&v40, "(", 1);
        MEMORY[0x238392A80](&v40, 186);
        sub_232C85DAC(&v40, ") [", 3);
        sub_232C85DAC(&v40, "(length) >= (0)", 15);
        sub_232C85DAC(&v40, "] ", 2);
        sub_232C809A4(&v39, v37);
        goto LABEL_72;
      }

      v32 = (v27 - v24) & 0x7FFFFFFF;
      v25 = *(*a5 + v32);
      std::string::resize(a4, v32, 0);
      sub_232C8AF44(a5, v32);
    }
  }

  else
  {
    LODWORD(v25) = v13;
  }

  if (*(a1 + 48) == 1 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v33 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v39 = v25;
        sub_232C8AE64(a5, &v39);
        --v33;
      }

      while (v33);
    }

    else
    {
      std::string::append(a4, " ");
      v39 = v25;
      sub_232C8AE64(a5, &v39);
    }
  }

  v39 = v25;
  sub_232C8AE64(a5, &v39);
  v35 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v35 & 0x8000000000000000) != 0)
  {
    v35 = a4->__r_.__value_.__l.__size_;
  }

  if ((a5[1] - *a5) >> 3 == v35 + 1)
  {
    return sub_232CB32B4(v37);
  }

  LODWORD(v39) = 13;
  v36 = sub_232C83BBC(&v40);
  sub_232C85DAC(v36, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
  sub_232C85DAC(&v40, "(", 1);
  MEMORY[0x238392A80](&v40, 198);
  sub_232C85DAC(&v40, ") [", 3);
  sub_232C85DAC(&v40, "(norm_to_orig->size()) == (normalized->size() + 1)", 50);
  sub_232C85DAC(&v40, "] ", 2);
  sub_232C809A4(&v39, v37);
LABEL_72:
  v40 = *MEMORY[0x277D82828];
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x277D82828] + 24);
  v41 = MEMORY[0x277D82878] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v42);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v44);
}

void sub_232C8ABB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

size_t sub_232C8ABD0@<X0>(size_t result@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[63] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a2;
    v7 = result;
    v8 = *(result + 40);
    if (v8 && (LOBYTE(v28) = 0, result = sub_232C8B038(v8, a2, a3, &v28), v28 == 1))
    {
      v9 = result;
      if (a3 < result)
      {
        v9 = a3;
      }

      *a4 = v6;
      *(a4 + 8) = v9;
      *(a4 + 16) = result;
    }

    else
    {
      v10 = *(v7 + 8);
      if (!v10)
      {
        goto LABEL_24;
      }

      v11 = 0;
      v12 = 0;
      v13 = *(v10 + 16);
      v14 = (*v13 >> 10 << ((*v13 >> 6) & 8));
      do
      {
        v15 = v6[v11];
        v16 = v14 ^ v15;
        v17 = v13[v16];
        if ((v17 & 0x800000FF) != v15)
        {
          break;
        }

        v14 = v16 ^ (v17 >> 10 << ((v17 >> 6) & 8));
        if ((v17 & 0x100) != 0)
        {
          if (v12 <= 0x1F)
          {
            v18 = &v29[2 * v12 - 1];
            *v18 = v13[v14] & 0x7FFFFFFF;
            v18[1] = v11 + 1;
          }

          ++v12;
        }

        ++v11;
      }

      while (a3 != v11);
      if (!v12)
      {
        goto LABEL_24;
      }

      v19 = 0;
      v20 = 0;
      v21 = v29;
      v22 = v29;
      do
      {
        v24 = *v22;
        v22 += 2;
        v23 = v24;
        if (!v19 || v23 > v19)
        {
          v20 = *(v21 - 2);
          v19 = v23;
        }

        v21 = v22;
        --v12;
      }

      while (v12);
      if (v19)
      {
        v6 = (*(v7 + 16) + v20);
        result = strlen(v6);
      }

      else
      {
LABEL_24:
        v28 = 0;
        v25 = sub_232CB1340(v6, &v6[a3], &v28);
        v26 = v25 != 65533;
        if (v25 == 65533)
        {
          result = 3;
        }

        else
        {
          result = v28;
        }

        if (v28 == 3)
        {
          v26 = 1;
        }

        if (v26)
        {
          LODWORD(v19) = v28;
        }

        else
        {
          LODWORD(v19) = 1;
        }

        if (!v26)
        {
          v6 = &unk_232D006B4;
        }
      }

      *a4 = v6;
      *(a4 + 8) = result;
      *(a4 + 16) = v19;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_232C8ADC4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_232C868D0(result, a2);
    }

    sub_232C84C3C();
  }

  return result;
}

void sub_232C8AE64(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_232C84C3C();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_232C868D0(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_232C8AF44(void *a1, unint64_t a2)
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
    sub_232C8B878(a1, a2 - v2);
  }
}

void sub_232C8AF74(uint64_t a1@<X0>, void *a2@<X8>)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  (*(*a1 + 32))(&v3);
  nullsub_1(&v3, v2);
  sub_232CB32BC(&v3);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_232C8AFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_232CB32BC(&a9);
  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_232C8B038(uint64_t a1, _BYTE *a2, uint64_t a3, BOOL *a4)
{
  v25[127] = *MEMORY[0x277D85DE8];
  if (!*a1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_33;
  }

  v4 = *(*a1 + 16);
  v5 = (*v4 >> 10 << ((*v4 >> 6) & 8));
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a2[v6];
      v9 = v5 ^ v8;
      v10 = v4[v9];
      if ((v10 & 0x800000FF) != v8)
      {
        break;
      }

      v5 = v9 ^ (v10 >> 10 << ((v10 >> 6) & 8));
      if ((v10 & 0x100) != 0)
      {
        if (v7 <= 0x3F)
        {
          v11 = &v24[16 * v7];
          *v11 = v4[v5] & 0x7FFFFFFF;
          *(v11 + 1) = v6 + 1;
        }

        ++v7;
      }

      ++v6;
    }

    while (a3 != v6);
  }

  else
  {
    v12 = *a2;
    if (*a2)
    {
      v7 = 0;
      v13 = 1;
      do
      {
        v14 = v5 ^ v12;
        v15 = v4[v14];
        if ((v15 & 0x800000FF) != v12)
        {
          break;
        }

        v5 = v14 ^ (v15 >> 10 << ((v15 >> 6) & 8));
        if ((v15 & 0x100) != 0)
        {
          if (v7 <= 0x3F)
          {
            v16 = &v24[16 * v7];
            *v16 = v4[v5] & 0x7FFFFFFF;
            *(v16 + 1) = v13;
          }

          ++v7;
        }

        v12 = a2[v13++];
      }

      while (v12);
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  if (a4)
  {
    *a4 = v7 > 0;
  }

  if (!v7)
  {
LABEL_33:
    v22 = asc_232D0C525[*a2 >> 4];
    if (v22 >= a3)
    {
      result = a3;
    }

    else
    {
      result = v22;
    }

    goto LABEL_36;
  }

  if (v7 < 1)
  {
    result = 0;
  }

  else
  {
    LODWORD(result) = 0;
    v18 = v7 & 0x7FFFFFFF;
    v19 = v25;
    do
    {
      v21 = *v19;
      v19 += 4;
      v20 = v21;
      if (result <= v21)
      {
        result = v20;
      }

      else
      {
        result = result;
      }

      --v18;
    }

    while (v18);
  }

LABEL_36:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232C8B208(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::string::resize(a2, 4uLL, 0);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *v5 = v4;
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    memset(&v13, 0, sizeof(v13));
    std::string::resize(&v13, 4uLL, 0);
    v9 = 4 * v8;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13.__r_.__value_.__r.__words[0];
    }

    LODWORD(v10->__r_.__value_.__l.__data_) = v9;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v13;
    }

    else
    {
      v11 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v11, size);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    std::string::append(a2, v7, v9);
    std::string::append(a2, *(a1 + 16), *(a1 + 24));
  }
}

void sub_232C8B300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_232C8B33C(void *result, void *a2)
{
  *result = 0;
  v3 = a2[2];
  if (v3)
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_232C8B608(&__p, v3);
    v6 = *a2;
    v4 = a2 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      v7 = v19;
      do
      {
        v8 = v5[4];
        if (v7 >= v20)
        {
          v9 = (v7 - __p) >> 3;
          if ((v9 + 1) >> 61)
          {
            sub_232C84C3C();
          }

          v10 = (v20 - __p) >> 2;
          if (v10 <= v9 + 1)
          {
            v10 = v9 + 1;
          }

          if (v20 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v11 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            sub_232C87138(&__p, v11);
          }

          v12 = (8 * v9);
          *v12 = v8;
          v7 = (8 * v9 + 8);
          v13 = v12 - (v19 - __p);
          memcpy(v13, __p, v19 - __p);
          v14 = __p;
          __p = v13;
          v19 = v7;
          v20 = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v7 = v8;
          v7 += 8;
        }

        v19 = v7;
        v15 = v5[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v5[2];
            v17 = *v16 == v5;
            v5 = v16;
          }

          while (!v17);
        }

        v5 = v16;
      }

      while (v16 != v4);
    }

    operator new();
  }

  return result;
}

void sub_232C8B5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *v14;
  *v14 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_232C8B608(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_232C87138(result, a2);
    }

    sub_232C84C3C();
  }

  return result;
}

void *sub_232C8B6AC(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void sub_232C8B78C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_232C8B9A8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C8B7AC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = 4 * *(v3 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_232C85C94();
    }

    v5 = *(v3 + 16);
    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      result = memmove(a2, v5, v4);
    }

    a2 += v4;
  }

  else
  {
    a2[23] = 0;
  }

  *a2 = 0;
  return result;
}

void sub_232C8B878(uint64_t a1, unint64_t a2)
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
      sub_232C84C3C();
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
      sub_232C868D0(a1, v10);
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

uint64_t sub_232C8B9CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 80))
  {
    v3 = *(a1 + 80);
  }

  else
  {
    v3 = &unk_27DDD5398;
  }

  v4 = v3[68];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      sub_232C8BC04();
    }

    if (v4 == 4)
    {
      sub_232C8BC74();
    }
  }

  else
  {
    if (v4 == 1)
    {
      sub_232C8BB24();
    }

    if (v4 == 2)
    {
      sub_232C8BB94();
    }
  }

  result = sub_232CB1330();
  if (result <= 2)
  {
    LOBYTE(v14) = 0;
    v6 = sub_232C85DAC(MEMORY[0x277D82670], "model_factory.cc", 16);
    v7 = sub_232C85DAC(v6, "(", 1);
    v8 = MEMORY[0x238392A80](v7, 43);
    v9 = sub_232C85DAC(v8, ") ", 2);
    v10 = sub_232C85DAC(v9, "LOG(", 4);
    v11 = sub_232C85DAC(v10, "ERROR", 5);
    v12 = sub_232C85DAC(v11, ") ", 2);
    v13 = sub_232C85DAC(v12, "Unknown model_type: ", 20);
    MEMORY[0x238392A80](v13, v3[68]);
    result = sub_232C83EEC(&v14);
  }

  *a2 = 0;
  return result;
}

void sub_232C8BB10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C83EEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232C8BCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v17[1] = a2;
  v17[2] = a3;
  v6 = (*(*a1 + 80))(a1);
  if (v6 == 1)
  {
    sub_232C8BEE8();
  }

  if (!v6)
  {
    sub_232C8BE68();
  }

  result = sub_232CB1330();
  if (result <= 2)
  {
    LOBYTE(v17[0]) = 0;
    v8 = sub_232C85DAC(MEMORY[0x277D82670], "model_factory.cc", 16);
    v9 = sub_232C85DAC(v8, "(", 1);
    v10 = MEMORY[0x238392A80](v9, 61);
    v11 = sub_232C85DAC(v10, ") ", 2);
    v12 = sub_232C85DAC(v11, "LOG(", 4);
    v13 = sub_232C85DAC(v12, "ERROR", 5);
    v14 = sub_232C85DAC(v13, ") ", 2);
    v15 = sub_232C85DAC(v14, "Unknown model_type: ", 20);
    v16 = (*(*a1 + 80))(a1);
    MEMORY[0x238392A90](v15, v16);
    result = sub_232C83EEC(v17);
  }

  *a4 = 0;
  return result;
}

void sub_232C8BE50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C83EEC(va);
  _Unwind_Resume(a1);
}

void *sub_232C8BF68(void *a1)
{
  *a1 = &unk_284814978;
  v2 = sub_232CA6C5C();
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = v2;
  return a1;
}

void *sub_232C8BFB4(void *a1)
{
  *a1 = &unk_284814978;
  v2 = a1[3];
  if (v2)
  {
    sub_232C9C8DC(v2);
  }

  return a1;
}

void sub_232C8C000(void *a1)
{
  *a1 = &unk_284814978;
  v1 = a1[3];
  if (v1)
  {
    sub_232C9C8DC(v1);
  }

  JUMPOUT(0x238392C10);
}

uint64_t sub_232C8C090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_232C9CA28(a2, *(*(a1 + 8) + 56));
  v5 = *(a1 + 8);
  if (*(v5 + 56) >= 1)
  {
    v6 = 0;
    do
    {
      result = sub_232C9BA60(v5 + 48, v6);
      *(*a2 + 8 * v6++) = result;
      v5 = *(a1 + 8);
    }

    while (v6 < *(v5 + 56));
  }

  return result;
}

void sub_232C8C108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232C8C130(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    sub_232C9CB38();
  }

  return result;
}

void *sub_232C8C198(void *a1)
{
  *a1 = &unk_284814998;
  v2 = a1[2];
  if (v2)
  {
    sub_232C9C8DC(v2);
  }

  return a1;
}

void sub_232C8C1E4(void *a1)
{
  *a1 = &unk_284814998;
  v1 = a1[2];
  if (v1)
  {
    sub_232C9C8DC(v1);
  }

  JUMPOUT(0x238392C10);
}

uint64_t sub_232C8C250(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    sub_232C9CC74();
  }

  return result;
}

_BYTE *sub_232C8C2B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return sub_232CC137C(v2, a2);
  }

  else
  {
    return sub_232C8C2D0(a2, "");
  }
}

_BYTE *sub_232C8C2D0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

double sub_232C8C388(uint64_t a1)
{
  *a1 = &unk_2848149B8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

uint64_t sub_232C8C3C8(uint64_t a1)
{
  *a1 = &unk_2848149B8;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

void sub_232C8C52C(uint64_t a1)
{
  sub_232C8C3C8(a1);

  JUMPOUT(0x238392C10);
}

uint64_t sub_232C8C564()
{
  v4[19] = *MEMORY[0x277D85DE8];
  sub_232C8C704(v2);
  if ((v3[*(v2[0] - 24) + 16] & 5) == 0)
  {
    std::istream::read();
  }

  v2[0] = *MEMORY[0x277D82808];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x2383929B0](v3);
  std::istream::~istream();
  MEMORY[0x238392BA0](v4);
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_232C8C6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_232C9BC5C(&a10, MEMORY[0x277D82808]);
  MEMORY[0x238392BA0](&a63);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C8C704(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x2383929A0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_232C8C890(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x238392BA0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_232C8C8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_232C8C564())
  {
    sub_232C8CA00();
  }

  v6 = *(*a1 + 64);

  return v6(a1, a2, a3);
}

void sub_232C8C9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232C8CE78(&a9);
  sub_232C8CE78(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_232C8CA6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_232CB0744();
  }

  return sub_232CB3420(a2, 5, "model file path should not be empty.", 36);
}

void sub_232C8CE00(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C8CE78(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_232CADC9C();
    MEMORY[0x238392C10](v3, 0x10A1C4047CE62CFLL);
  }

  return a1;
}

uint64_t *sub_232C8CEC0(uint64_t a1)
{
  (*(*a1 + 16))(&v13);
  if (v13.__r_.__value_.__r.__words[0])
  {
    v12 = 1;
    v1 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v2 = sub_232C85DAC(v1, "(", 1);
    v3 = MEMORY[0x238392A80](v2, 239);
    v4 = sub_232C85DAC(v3, ") [", 3);
    v5 = sub_232C85DAC(v4, "_status.ok()", 12);
    v6 = sub_232C85DAC(v5, "] ", 2);
    sub_232CB35E0(&v13, __p);
    if ((v11 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = __p[1];
    }

    sub_232C85DAC(v6, v7, v8);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    sub_232C83EEC(&v12);
  }

  return sub_232CB32BC(&v13);
}

void sub_232C8CFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_232C83EEC((v15 - 25));
  sub_232CB32BC((v15 - 24));
  _Unwind_Resume(a1);
}

void sub_232C8D09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232C8CE78(&a9);
  sub_232C8CE78(&a10);
  _Unwind_Resume(a1);
}

void sub_232C8D33C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  if (!v5)
  {
    v5 = &unk_27DDD54E0;
  }

  if (v5[80] == 1)
  {
    if (sub_232CB1330() <= 0)
    {
      LOBYTE(v24) = 0;
      v6 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
      v7 = sub_232C85DAC(v6, "(", 1);
      v8 = MEMORY[0x238392A80](v7, 260);
      v9 = sub_232C85DAC(v8, ") ", 2);
      v10 = sub_232C85DAC(v9, "LOG(", 4);
      v11 = sub_232C85DAC(v10, "INFO", 4);
      v12 = sub_232C85DAC(v11, ") ", 2);
      sub_232C85DAC(v12, "Enable Apple addition for backward compatibility", 48);
      sub_232C83EEC(&v24);
    }

    v4 = *a2;
    *(v4 + 48) = *(*a2 + 48) | 1;
    v13 = *(v4 + 80);
    if (!v13)
    {
      v14 = *(v4 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = sub_232CAED34(v14);
      *(v4 + 80) = v13;
      v4 = *a2;
    }

    *(v13 + 40) |= 0x4000u;
    *(v13 + 245) = 1;
    *(v4 + 48) |= 2u;
    v15 = *(v4 + 88);
    if (!v15)
    {
      v16 = *(v4 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_232CAEE04(v16);
      *(v4 + 88) = v15;
      v4 = *a2;
    }

    *(v15 + 48) |= 0x10u;
    *(v15 + 81) = 1;
  }

  *a2 = 0;
  if (v4)
  {
    v17 = v4 + 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 32);
  *(a1 + 32) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v17 = *(a1 + 32);
  }

  sub_232C8B9CC(v17 - 16, &v24);
  v19 = v24;
  v24 = 0;
  v20 = *(a1 + 8);
  *(a1 + 8) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
    v21 = v24;
    v24 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  if (*(v17 + 72))
  {
    v22 = *(v17 + 72);
  }

  if (*(v17 + 64))
  {
    v23 = *(v17 + 64);
  }

  sub_232C8DD4C();
}

void sub_232C8DE3C(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, char *a5@<X4>, void **a6@<X5>, std::string *a7@<X8>)
{
  sub_232C9C334(&__dst, __src, __len);
  v12 = strlen(a3);
  sub_232C9CDB0(a3, v12, a4, a5, a6, &__p);
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

  v15 = std::string::append(&__dst, p_p, size);
  *a7 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_232C8DF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C8DF50(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v45[19] = *MEMORY[0x277D85DE8];
  a4[1] = *a4;
  if (a3)
  {
    (*(*a1 + 88))(a1);
    if (!*a5)
    {
      sub_232CB32BC(a5);
      if ((atomic_load_explicit(&qword_27DDD4D78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DDD4D78))
      {
        v41[3] = xmmword_2789A7AC8;
        *__p = unk_2789A7AD8;
        v43 = xmmword_2789A7AE8;
        v44 = 3;
        v40 = xmmword_2789A7A88;
        v41[0] = unk_2789A7A98;
        v41[1] = xmmword_2789A7AA8;
        v41[2] = *&off_2789A7AB8;
        sub_232C9EB34(&qword_27DDD4D60, &v40, 5);
        __cxa_atexit(sub_232C98D88, &qword_27DDD4D60, &dword_232B02000);
        __cxa_guard_release(&qword_27DDD4D78);
      }

      sub_232C9BF20(&v38, a2, a3, ":", 1, 0);
      v10 = v38;
      v11 = v39;
      if (v38 == v39)
      {
LABEL_24:
        if (v10)
        {
          v39 = v10;
          operator delete(v10);
        }

        sub_232CB32B4(a5);
      }

      else
      {
        while (1)
        {
          v12 = sub_232C9D354(&qword_27DDD4D60, v10);
          v13 = v12;
          if (v12 == &unk_27DDD4D68)
          {
            break;
          }

          v15 = a4[1];
          v14 = a4[2];
          if (v15 >= v14)
          {
            v17 = *a4;
            v18 = v15 - *a4;
            v19 = v18 >> 2;
            v20 = (v18 >> 2) + 1;
            if (v20 >> 62)
            {
              sub_232C84C3C();
            }

            v21 = v14 - v17;
            if (v21 >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
            v23 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              sub_232C86538(a4, v23);
            }

            *(4 * v19) = *(v12 + 48);
            v16 = 4 * v19 + 4;
            memcpy(0, v17, v18);
            v24 = *a4;
            *a4 = 0;
            a4[1] = v16;
            a4[2] = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v15 = *(v12 + 48);
            v16 = (v15 + 1);
          }

          a4[1] = v16;
          v25 = *(v13 + 48);
          if (v25 == 1)
          {
            v26 = sub_232C80DB4(a1[1]);
            v27 = strlen(v26);
            v28 = (*(*a1 + 504))(a1, v26, v27);
            if ((*(*a1 + 528))(a1, v28))
            {
              LODWORD(v40) = 13;
              sub_232C83BBC(&v40 + 1);
              sub_232C85DAC(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              sub_232C85DAC(&v40 + 1, "(", 1);
              MEMORY[0x238392A80](&v40 + 8, 1135);
              sub_232C85DAC(&v40 + 1, ") [", 3);
              sub_232C85DAC(&v40 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->bos_piece().data())))", 68);
              sub_232C85DAC(&v40 + 1, "] ", 2);
              v33 = sub_232C80DB4(a1[1]);
              sub_232C85DAC(&v40 + 1, v33, v34);
              sub_232C809A4(&v40, a5);
              goto LABEL_35;
            }

            v25 = *(v13 + 48);
          }

          if (v25 == 2)
          {
            v29 = sub_232C80E38(a1[1]);
            v30 = strlen(v29);
            v31 = (*(*a1 + 504))(a1, v29, v30);
            if ((*(*a1 + 528))(a1, v31))
            {
              LODWORD(v40) = 13;
              sub_232C83BBC(&v40 + 1);
              sub_232C85DAC(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              sub_232C85DAC(&v40 + 1, "(", 1);
              MEMORY[0x238392A80](&v40 + 8, 1140);
              sub_232C85DAC(&v40 + 1, ") [", 3);
              sub_232C85DAC(&v40 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->eos_piece().data())))", 68);
              sub_232C85DAC(&v40 + 1, "] ", 2);
              v35 = sub_232C80E38(a1[1]);
              sub_232C85DAC(&v40 + 1, v35, v36);
              sub_232C809A4(&v40, a5);
LABEL_35:
              *(&v40 + 1) = *MEMORY[0x277D82828];
              *(&v40 + *(*(&v40 + 1) - 24) + 8) = *(MEMORY[0x277D82828] + 24);
              *&v41[0] = MEMORY[0x277D82878] + 16;
              if (SBYTE7(v43) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_37;
            }
          }

          v10 += 2;
          if (v10 == v11)
          {
            v10 = v38;
            goto LABEL_24;
          }
        }

        LODWORD(v40) = 13;
        sub_232C83BBC(&v40 + 1);
        sub_232C85DAC(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&v40 + 1, "(", 1);
        MEMORY[0x238392A80](&v40 + 8, 1129);
        sub_232C85DAC(&v40 + 1, ") [", 3);
        sub_232C85DAC(&v40 + 1, "it != extra_option_map.end()", 28);
        sub_232C85DAC(&v40 + 1, "] ", 2);
        sub_232C85DAC(&v40 + 1, "option ", 8);
        sub_232C85DAC(&v40 + 1, *v10, v10[1]);
        sub_232C85DAC(&v40 + 1, " is not available.", 19);
        sub_232C809A4(&v40, a5);
        *(&v40 + 1) = *MEMORY[0x277D82828];
        *(&v40 + *(*(&v40 + 1) - 24) + 8) = *(MEMORY[0x277D82828] + 24);
        *&v41[0] = MEMORY[0x277D82878] + 16;
        if (SBYTE7(v43) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_37:
        *&v41[0] = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v41 + 1);
        std::ostream::~ostream();
        MEMORY[0x238392BA0](v45);
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }
      }
    }

    v37 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v32 = *MEMORY[0x277D85DE8];

    sub_232CB32B4(a5);
  }
}

void *sub_232C8E86C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a1 + 16))
    {
      result = (*(*v4 + 16))(v4);
      if (!*a2)
      {
        sub_232CB32BC(a2);
        result = (*(**(a1 + 16) + 24))(*(a1 + 16));
        if (!*a2)
        {
          v6 = sub_232CB32BC(a2);

          return sub_232CB32B4(v6);
        }
      }

      return result;
    }

    v9 = 13;
    v8 = sub_232C83BBC(&v10);
    sub_232C85DAC(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v10, "(", 1);
    MEMORY[0x238392A80](&v10, 320);
    sub_232C85DAC(&v10, ") [", 3);
    sub_232C85DAC(&v10, "normalizer_", 11);
    sub_232C85DAC(&v10, "] ", 2);
    sub_232C85DAC(&v10, "Normalizer is not initialized.", 30);
    sub_232C809A4(&v9, a2);
  }

  else
  {
    v9 = 13;
    v7 = sub_232C83BBC(&v10);
    sub_232C85DAC(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v10, "(", 1);
    MEMORY[0x238392A80](&v10, 319);
    sub_232C85DAC(&v10, ") [", 3);
    sub_232C85DAC(&v10, "model_", 6);
    sub_232C85DAC(&v10, "] ", 2);
    sub_232C85DAC(&v10, "Model is not initialized.", 25);
    sub_232C809A4(&v9, a2);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v14);
}

void sub_232C8EBB4(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*a1 + 88))(a1);
  if (*a3)
  {
    return;
  }

  sub_232CB32BC(a3);
  v6 = a1[4];
  if (!v6 || (v7 = **v6, (v8 = __dynamic_cast(v6, &unk_284814880, &unk_284815860, 16)) == 0))
  {
    LODWORD(v23) = 13;
    v20 = sub_232C83BBC(&v24);
    sub_232C85DAC(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v24, "(", 1);
    MEMORY[0x238392A80](&v24, 331);
    sub_232C85DAC(&v24, ") [", 3);
    sub_232C85DAC(&v24, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
    sub_232C85DAC(&v24, "] ", 2);
    sub_232C85DAC(&v24, "SetVocabulary is not supported when mmap-based model is loaded.", 63);
    sub_232C809A4(&v23, a3);
LABEL_26:
    v24 = *MEMORY[0x277D82828];
    *(&v24 + *(v24 - 3)) = *(MEMORY[0x277D82828] + 24);
    v25 = MEMORY[0x277D82878] + 16;
    if (v27 < 0)
    {
      operator delete(v26[7].__locale_);
    }

    v25 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v26);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](&v28);
    return;
  }

  v9 = v8;
  v10 = &unk_27DDD5398;
  if (v8[10])
  {
    v10 = v8[10];
  }

  if ((v10[68] - 1) >= 2)
  {
    LODWORD(v23) = 13;
    v21 = sub_232C83BBC(&v24);
    sub_232C85DAC(v21, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v24, "(", 1);
    MEMORY[0x238392A80](&v24, 336);
    sub_232C85DAC(&v24, ") [", 3);
    sub_232C85DAC(&v24, "type == TrainerSpec::UNIGRAM || type == TrainerSpec::BPE", 56);
    sub_232C85DAC(&v24, "] ", 2);
    sub_232C85DAC(&v24, "Vocabulary constraint is only enabled in subword units.", 55);
    sub_232C809A4(&v23, a3);
    goto LABEL_26;
  }

  sub_232C9D094(&v23, *a2, a2[1]);
  if (*(v9 + 16) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_232C9BE40((v9 + 7), v11);
      v13 = v12;
      if ((*(v12 + 60) - 2) >= 3)
      {
        v14 = *(v12 + 48) & 0xFFFFFFFFFFFFFFFELL;
        v15 = *(v14 + 23);
        if (v15 < 0)
        {
          v14 = *v14;
          v15 = *((*(v12 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        v22[0] = v14;
        v22[1] = v15;
        if (&v24 == sub_232C9D354(&v23, v22) && ((v16 = *(v13 + 48) & 0xFFFFFFFFFFFFFFFELL, v17 = *(v16 + 23), v17 < 0) ? (v18 = *v16, v17 = *(v16 + 8)) : (v18 = (*(v13 + 48) & 0xFFFFFFFFFFFFFFFELL)), v17 != asc_232D0C525[*v18 >> 4]))
        {
          if (!sub_232CA8C78(5))
          {
LABEL_31:
            __assert_rtn("_internal_set_type", "sentencepiece_model.pb.h", 4686, "::sentencepiece::ModelProto_SentencePiece_Type_IsValid(value)");
          }

          v19 = 5;
        }

        else
        {
          if (!sub_232CA8C78(1))
          {
            goto LABEL_31;
          }

          v19 = 1;
        }

        *(v13 + 40) |= 4u;
        *(v13 + 60) = v19;
      }

      ++v11;
    }

    while (v11 < *(v9 + 16));
  }

  sub_232CB32B4(a3);
  sub_232C86764(&v23, v24);
}

void *sub_232C8F060@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a2)
  {
    sub_232CB32BC(a2);
    v5 = a1[4];
    if (v5 && (v6 = **v5, (v7 = __dynamic_cast(v5, &unk_284814880, &unk_284815860, 16)) != 0))
    {
      v8 = *(v7 + 9);
      if (v8)
      {
        v9 = (v8 + 8);
      }

      else
      {
        v9 = 0;
      }

      v10 = v7[16];
      if (v10)
      {
        v11 = 8 * v10;
        do
        {
          v12 = *v9;
          if (*(*v9 + 60) == 5)
          {
            if (!sub_232CA8C78(1))
            {
              sub_232C9F240();
            }

            *(v12 + 40) |= 4u;
            *(v12 + 60) = 1;
          }

          ++v9;
          v11 -= 8;
        }

        while (v11);
      }

      return sub_232CB32B4(a2);
    }

    else
    {
      v14 = 13;
      v13 = sub_232C83BBC(&v15);
      sub_232C85DAC(v13, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v15, "(", 1);
      MEMORY[0x238392A80](&v15, 365);
      sub_232C85DAC(&v15, ") [", 3);
      sub_232C85DAC(&v15, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
      sub_232C85DAC(&v15, "] ", 2);
      sub_232C85DAC(&v15, "ResetVocabulary is not supported when mmap-based model is loaded.", 65);
      sub_232C809A4(&v14, a2);
      v15 = *MEMORY[0x277D82828];
      *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
      v16 = MEMORY[0x277D82878] + 16;
      if (v18 < 0)
      {
        operator delete(v17[7].__locale_);
      }

      v16 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v17);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v19);
    }
  }

  return result;
}

void sub_232C8F940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  __p = (v10 - 176);
  sub_232C9C22C(&__p);
  __p = (v10 - 152);
  sub_232C9C22C(&__p);
  if (*(v10 - 105) < 0)
  {
    operator delete(*(v10 - 128));
  }

  v12 = *(v10 - 104);
  *(v10 - 104) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_232C8FA34(const char *a1, uint64_t a2, uint64_t a3)
{
  sub_232C9D3E4(v11);
  v5 = strlen(a1);
  v6 = sub_232C85DAC(&v12, a1, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x2383929F0](v11, a3);
    v7 = (*(v8 + *(*v8 - 24) + 32) & 5) == 0;
  }

  v11[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v9;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x238392BA0](&v16);
  return v7;
}

void sub_232C8FC28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C9D688(va, MEMORY[0x277D82818]);
  MEMORY[0x238392BA0](v2 + 128);
  _Unwind_Resume(a1);
}

void *sub_232C8FC4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_232C9C280(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v4 + v5);
      v9 = *(v4 + v5 + 23);
      if (v9 < 0)
      {
        v10 = *v8;
        v9 = v8[1];
      }

      else
      {
        v10 = v8;
      }

      v11 = (*result + v6);
      *v11 = v10;
      v11[1] = v9;
      ++v7;
      v4 = *a1;
      v6 += 16;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v7);
  }

  return result;
}

uint64_t sub_232C8FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sub_232CB32BC(a5);
    if (a4)
    {
      sub_232C90010(a4);
      sub_232CA6AF8(&v16, 0);
      (*(*a1 + 232))(a1, a2, a3, &v16);
      if (!*a5)
      {
        sub_232CB32BC(a5);
        if (v21)
        {
          v11 = v21 + 8;
        }

        else
        {
          v11 = 0;
        }

        if (v20)
        {
          v12 = *(a4 + 8);
          v13 = 8 * v20;
          do
          {
            v14 = *(*v11 + 48);
            if (v12 >= *(a4 + 16))
            {
              v12 = sub_232C86580(a4, (v14 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              sub_232C9D7D8(a4, (v14 & 0xFFFFFFFFFFFFFFFELL));
              v12 += 24;
            }

            *(a4 + 8) = v12;
            v11 += 8;
            v13 -= 8;
          }

          while (v13);
        }

        sub_232CB32B4(a5);
      }

      return sub_232CA6C20(&v16);
    }

    else
    {
      v16 = 13;
      v15 = sub_232C83BBC(&v17);
      sub_232C85DAC(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v17, "(", 1);
      MEMORY[0x238392A80](&v17, 415);
      sub_232C85DAC(&v17, ") [", 3);
      sub_232C85DAC(&v17, "pieces", 6);
      sub_232C85DAC(&v17, "] ", 2);
      sub_232C85DAC(&v17, "output container is null", 24);
      sub_232C809A4(&v16, a5);
      v17 = *MEMORY[0x277D82828];
      *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
      v18 = MEMORY[0x277D82878] + 16;
      if (v23 < 0)
      {
        operator delete(__p);
      }

      v18 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v19);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v24);
    }
  }

  return result;
}

void sub_232C90010(void ***a1)
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

uint64_t sub_232C90060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sub_232CB32BC(a5);
    if (a4)
    {
      a4[1] = *a4;
      sub_232CA6AF8(&v24, 0);
      (*(*a1 + 232))(a1, a2, a3, &v24);
      if (!*a5)
      {
        sub_232CB32BC(a5);
        if (v29)
        {
          v11 = v29 + 8;
        }

        else
        {
          v11 = 0;
        }

        if (v28)
        {
          v12 = a4[1];
          v13 = 8 * v28;
          do
          {
            v14 = *(*v11 + 64);
            v15 = a4[2];
            if (v12 >= v15)
            {
              v16 = *a4;
              v17 = v12 - *a4;
              v18 = v17 >> 2;
              v19 = (v17 >> 2) + 1;
              if (v19 >> 62)
              {
                sub_232C84C3C();
              }

              v20 = v15 - v16;
              if (v20 >> 1 > v19)
              {
                v19 = v20 >> 1;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v21 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              if (v21)
              {
                sub_232C86538(a4, v21);
              }

              *(4 * v18) = v14;
              v12 = (4 * v18 + 4);
              memcpy(0, v16, v17);
              v22 = *a4;
              *a4 = 0;
              a4[1] = v12;
              a4[2] = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            else
            {
              *v12++ = v14;
            }

            a4[1] = v12;
            v11 += 8;
            v13 -= 8;
          }

          while (v13);
        }

        sub_232CB32B4(a5);
      }

      return sub_232CA6C20(&v24);
    }

    else
    {
      v24 = 13;
      v23 = sub_232C83BBC(&v25);
      sub_232C85DAC(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v25, "(", 1);
      MEMORY[0x238392A80](&v25, 428);
      sub_232C85DAC(&v25, ") [", 3);
      sub_232C85DAC(&v25, "ids", 3);
      sub_232C85DAC(&v25, "] ", 2);
      sub_232C85DAC(&v25, "output container is null", 24);
      sub_232C809A4(&v24, a5);
      v25 = *MEMORY[0x277D82828];
      *(&v25 + *(v25 - 24)) = *(MEMORY[0x277D82828] + 24);
      v26 = MEMORY[0x277D82878] + 16;
      if (v31 < 0)
      {
        operator delete(__p);
      }

      v26 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v27);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v32);
    }
  }

  return result;
}

void sub_232C903E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

void sub_232C90414(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_232C8FC4C(a2, __p);
  (*(*a1 + 160))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_232C9049C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232C904B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sub_232CA6AF8(&v10, 0);
      (*(*a1 + 272))(a1, a2, &v10);
      if (!*a4)
      {
        sub_232CB32BC(a4);
        std::string::operator=(a3, (v13[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sub_232CB32B4(a4);
      }

      return sub_232CA6C20(&v10);
    }

    else
    {
      v10 = 13;
      v9 = sub_232C83BBC(&v11);
      sub_232C85DAC(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v11, "(", 1);
      MEMORY[0x238392A80](&v11, 447);
      sub_232C85DAC(&v11, ") [", 3);
      sub_232C85DAC(&v11, "detokenized", 11);
      sub_232C85DAC(&v11, "] ", 2);
      sub_232C85DAC(&v11, "output container is null", 24);
      sub_232C809A4(&v10, a4);
      v11 = *MEMORY[0x277D82828];
      *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
      v12 = MEMORY[0x277D82878] + 16;
      if (v14 < 0)
      {
        operator delete(v13[7].__locale_);
      }

      v12 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v13);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v15);
    }
  }

  return result;
}

uint64_t sub_232C90798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sub_232CA6AF8(&v10, 0);
      (*(*a1 + 280))(a1, a2, &v10);
      if (!*a4)
      {
        sub_232CB32BC(a4);
        std::string::operator=(a3, (v13[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sub_232CB32B4(a4);
      }

      return sub_232CA6C20(&v10);
    }

    else
    {
      v10 = 13;
      v9 = sub_232C83BBC(&v11);
      sub_232C85DAC(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v11, "(", 1);
      MEMORY[0x238392A80](&v11, 458);
      sub_232C85DAC(&v11, ") [", 3);
      sub_232C85DAC(&v11, "detokenized", 11);
      sub_232C85DAC(&v11, "] ", 2);
      sub_232C85DAC(&v11, "output container is null", 24);
      sub_232C809A4(&v10, a4);
      v11 = *MEMORY[0x277D82828];
      *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
      v12 = MEMORY[0x277D82878] + 16;
      if (v14 < 0)
      {
        operator delete(v13[7].__locale_);
      }

      v12 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v13);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v15);
    }
  }

  return result;
}

uint64_t sub_232C90A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void ***a5@<X4>, uint64_t *a6@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_232CB32BC(a6);
    if (a5)
    {
      v13 = *a5;
      v14 = a5[1];
      while (v14 != v13)
      {
        v14 -= 3;
        v31 = v14;
        sub_232C9C22C(&v31);
      }

      a5[1] = v13;
      sub_232CA75C0(&v31, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v31);
      if (!*a6)
      {
        sub_232CB32BC(a6);
        if (v35)
        {
          v15 = (v35 + 8);
        }

        else
        {
          v15 = 0;
        }

        if (LODWORD(v34.__locale_))
        {
          v16 = &v15[SLODWORD(v34.__locale_)];
          do
          {
            v17 = *v15;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v18 = *(v17 + 64);
            if (v18)
            {
              v19 = v18 + 8;
            }

            else
            {
              v19 = 0;
            }

            v20 = *(v17 + 56);
            if (v20)
            {
              v21 = 0;
              v22 = 8 * v20;
              do
              {
                v23 = *(*v19 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (v21 >= v30)
                {
                  v21 = sub_232C86580(&v28, v23);
                }

                else
                {
                  if (*(v23 + 23) < 0)
                  {
                    sub_232C866C0(v21, *v23, *(v23 + 8));
                  }

                  else
                  {
                    v24 = *v23;
                    *(v21 + 16) = *(v23 + 16);
                    *v21 = v24;
                  }

                  v21 += 24;
                }

                v29 = v21;
                v19 += 8;
                v22 -= 8;
              }

              while (v22);
            }

            v25 = a5[1];
            if (v25 >= a5[2])
            {
              v26 = sub_232C9D898(a5, &v28);
            }

            else
            {
              sub_232C9D838(a5, &v28);
              v26 = (v25 + 3);
            }

            a5[1] = v26;
            v39 = &v28;
            sub_232C9C22C(&v39);
            ++v15;
          }

          while (v15 != v16);
        }

        sub_232CB32B4(a6);
      }

      return sub_232CA767C(&v31);
    }

    else
    {
      LODWORD(v31) = 13;
      v27 = sub_232C83BBC(&v32);
      sub_232C85DAC(v27, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v32, "(", 1);
      MEMORY[0x238392A80](&v32, 470);
      sub_232C85DAC(&v32, ") [", 3);
      sub_232C85DAC(&v32, "pieces", 6);
      sub_232C85DAC(&v32, "] ", 2);
      sub_232C85DAC(&v32, "output container is null", 24);
      sub_232C809A4(&v31, a6);
      v32 = *MEMORY[0x277D82828];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
      v33 = MEMORY[0x277D82878] + 16;
      if (v37 < 0)
      {
        operator delete(__p);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v34);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v38);
    }
  }

  return result;
}

void sub_232C90E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232C90E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_232CB32BC(a6);
    if (a5)
    {
      sub_232C912DC(a5);
      sub_232CA75C0(&v38, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v38);
      if (!*a6)
      {
        sub_232CB32BC(a6);
        if (v42)
        {
          v13 = (v42 + 8);
        }

        else
        {
          v13 = 0;
        }

        if (LODWORD(v41.__locale_))
        {
          v34 = &v13[SLODWORD(v41.__locale_)];
          do
          {
            v14 = *v13;
            __src = 0;
            v36 = 0;
            v37 = 0;
            v15 = *(v14 + 64);
            if (v15)
            {
              v16 = v15 + 8;
            }

            else
            {
              v16 = 0;
            }

            v17 = *(v14 + 56);
            if (v17)
            {
              v18 = 0;
              v19 = 8 * v17;
              do
              {
                v20 = *(*v16 + 64);
                if (v18 >= v37)
                {
                  v21 = __src;
                  v22 = v18 - __src;
                  v23 = (v18 - __src) >> 2;
                  v24 = v23 + 1;
                  if ((v23 + 1) >> 62)
                  {
                    sub_232C84C3C();
                  }

                  v25 = v37 - __src;
                  if ((v37 - __src) >> 1 > v24)
                  {
                    v24 = v25 >> 1;
                  }

                  if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v26 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v26 = v24;
                  }

                  if (v26)
                  {
                    sub_232C86538(&__src, v26);
                  }

                  v27 = (v18 - __src) >> 2;
                  v28 = (4 * v23);
                  v29 = (4 * v23 - 4 * v27);
                  *v28 = v20;
                  v18 = (v28 + 1);
                  memcpy(v29, v21, v22);
                  v30 = __src;
                  __src = v29;
                  v36 = v18;
                  v37 = 0;
                  if (v30)
                  {
                    operator delete(v30);
                  }
                }

                else
                {
                  *v18 = v20;
                  v18 += 4;
                }

                v36 = v18;
                v16 += 8;
                v19 -= 8;
              }

              while (v19);
            }

            v31 = a5[1];
            if (v31 >= a5[2])
            {
              v32 = sub_232C9DCD0(a5, &__src);
            }

            else
            {
              sub_232C9DC7C(a5, &__src);
              v32 = v31 + 24;
            }

            a5[1] = v32;
            if (__src)
            {
              v36 = __src;
              operator delete(__src);
            }

            ++v13;
          }

          while (v13 != v34);
        }

        sub_232CB32B4(a6);
      }

      return sub_232CA767C(&v38);
    }

    else
    {
      v38 = 13;
      v33 = sub_232C83BBC(&v39);
      sub_232C85DAC(v33, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v39, "(", 1);
      MEMORY[0x238392A80](&v39, 488);
      sub_232C85DAC(&v39, ") [", 3);
      sub_232C85DAC(&v39, "ids", 3);
      sub_232C85DAC(&v39, "] ", 2);
      sub_232C85DAC(&v39, "output container is null", 24);
      sub_232C809A4(&v38, a6);
      v39 = *MEMORY[0x277D82828];
      *(&v39 + *(v39 - 24)) = *(MEMORY[0x277D82828] + 24);
      v40 = MEMORY[0x277D82878] + 16;
      if (v44 < 0)
      {
        operator delete(__p);
      }

      v40 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v41);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v45);
    }
  }

  return result;
}

void sub_232C912DC(uint64_t *a1)
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

uint64_t sub_232C91334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_232CB32BC(a6);
    if (a5)
    {
      sub_232C90010(a5);
      sub_232CA6AF8(&v20, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v20, a7);
      if (!*a6)
      {
        sub_232CB32BC(a6);
        if (v25)
        {
          v15 = v25 + 8;
        }

        else
        {
          v15 = 0;
        }

        if (v24)
        {
          v16 = *(a5 + 8);
          v17 = 8 * v24;
          do
          {
            v18 = *(*v15 + 48);
            if (v16 >= *(a5 + 16))
            {
              v16 = sub_232C86580(a5, (v18 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              sub_232C9D7D8(a5, (v18 & 0xFFFFFFFFFFFFFFFELL));
              v16 += 24;
            }

            *(a5 + 8) = v16;
            v15 += 8;
            v17 -= 8;
          }

          while (v17);
        }

        sub_232CB32B4(a6);
      }

      return sub_232CA6C20(&v20);
    }

    else
    {
      v20 = 13;
      v19 = sub_232C83BBC(&v21);
      sub_232C85DAC(v19, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v21, "(", 1);
      MEMORY[0x238392A80](&v21, 506);
      sub_232C85DAC(&v21, ") [", 3);
      sub_232C85DAC(&v21, "pieces", 6);
      sub_232C85DAC(&v21, "] ", 2);
      sub_232C85DAC(&v21, "output container is null", 24);
      sub_232C809A4(&v20, a6);
      v21 = *MEMORY[0x277D82828];
      *(&v21 + *(v21 - 24)) = *(MEMORY[0x277D82828] + 24);
      v22 = MEMORY[0x277D82878] + 16;
      if (v27 < 0)
      {
        operator delete(__p);
      }

      v22 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v23);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v28);
    }
  }

  return result;
}

uint64_t sub_232C91678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_232CB32BC(a6);
    if (a5)
    {
      a5[1] = *a5;
      sub_232CA6AF8(&v28, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v28, a7);
      if (!*a6)
      {
        sub_232CB32BC(a6);
        if (v33)
        {
          v15 = v33 + 8;
        }

        else
        {
          v15 = 0;
        }

        if (v32)
        {
          v16 = a5[1];
          v17 = 8 * v32;
          do
          {
            v18 = *(*v15 + 64);
            v19 = a5[2];
            if (v16 >= v19)
            {
              v20 = *a5;
              v21 = v16 - *a5;
              v22 = v21 >> 2;
              v23 = (v21 >> 2) + 1;
              if (v23 >> 62)
              {
                sub_232C84C3C();
              }

              v24 = v19 - v20;
              if (v24 >> 1 > v23)
              {
                v23 = v24 >> 1;
              }

              if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v25 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v23;
              }

              if (v25)
              {
                sub_232C86538(a5, v25);
              }

              *(4 * v22) = v18;
              v16 = (4 * v22 + 4);
              memcpy(0, v20, v21);
              v26 = *a5;
              *a5 = 0;
              a5[1] = v16;
              a5[2] = 0;
              if (v26)
              {
                operator delete(v26);
              }
            }

            else
            {
              *v16++ = v18;
            }

            a5[1] = v16;
            v15 += 8;
            v17 -= 8;
          }

          while (v17);
        }

        sub_232CB32B4(a6);
      }

      return sub_232CA6C20(&v28);
    }

    else
    {
      v28 = 13;
      v27 = sub_232C83BBC(&v29);
      sub_232C85DAC(v27, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v29, "(", 1);
      MEMORY[0x238392A80](&v29, 520);
      sub_232C85DAC(&v29, ") [", 3);
      sub_232C85DAC(&v29, "ids", 3);
      sub_232C85DAC(&v29, "] ", 2);
      sub_232C85DAC(&v29, "output container is null", 24);
      sub_232C809A4(&v28, a6);
      v29 = *MEMORY[0x277D82828];
      *(&v29 + *(v29 - 24)) = *(MEMORY[0x277D82828] + 24);
      v30 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(__p);
      }

      v30 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v31);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v36);
    }
  }

  return result;
}

void sub_232C91A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232C91A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void ***a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sub_232CB32BC(a8);
    if (a7)
    {
      v19 = *a7;
      v20 = a7[1];
      while (v20 != v19)
      {
        v20 -= 4;
        v39 = v20;
        sub_232C9C22C(&v39);
      }

      a7[1] = v19;
      sub_232CA75C0(&v39, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v39, a9);
      if (!*a8)
      {
        sub_232CB32BC(a8);
        v21 = *a7;
        v22 = a7[1];
        while (v22 != v21)
        {
          v22 -= 4;
          v36 = v22;
          sub_232C9C22C(&v36);
        }

        a7[1] = v21;
        sub_232C91ED8(a7, SLODWORD(v42.__locale_));
        if (v43)
        {
          v24 = (v43 + 8);
        }

        else
        {
          v24 = 0;
        }

        if (LODWORD(v42.__locale_))
        {
          v25 = &v24[SLODWORD(v42.__locale_)];
          do
          {
            v26 = *v24;
            v36 = 0;
            __dst = 0;
            v38 = 0;
            sub_232C91F74(&v36, *(v26 + 56));
            v27 = *(v26 + 64);
            if (v27)
            {
              v28 = v27 + 8;
            }

            else
            {
              v28 = 0;
            }

            v29 = *(v26 + 56);
            if (v29)
            {
              v30 = __dst;
              v31 = 8 * v29;
              do
              {
                v32 = *(*v28 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (v30 >= v38)
                {
                  v30 = sub_232C86580(&v36, v32);
                }

                else
                {
                  if (*(v32 + 23) < 0)
                  {
                    sub_232C866C0(v30, *v32, *(v32 + 8));
                  }

                  else
                  {
                    v33 = *v32;
                    *(v30 + 16) = *(v32 + 16);
                    *v30 = v33;
                  }

                  v30 += 24;
                }

                __dst = v30;
                v28 += 8;
                v31 -= 8;
              }

              while (v31);
            }

            LODWORD(v47[0]) = *(v26 + 80);
            v34 = a7[1];
            if (v34 >= a7[2])
            {
              v35 = sub_232C9E068(a7, &v36, v47);
            }

            else
            {
              sub_232C9DFF4(a7, &v36, v47);
              v35 = (v34 + 4);
            }

            a7[1] = v35;
            v47[0] = &v36;
            sub_232C9C22C(v47);
            ++v24;
          }

          while (v24 != v25);
        }

        sub_232CB32B4(a8);
      }

      return sub_232CA767C(&v39);
    }

    else
    {
      LODWORD(v39) = 13;
      v23 = sub_232C83BBC(&v40);
      sub_232C85DAC(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v40, "(", 1);
      MEMORY[0x238392A80](&v40, 535);
      sub_232C85DAC(&v40, ") [", 3);
      sub_232C85DAC(&v40, "pieces", 6);
      sub_232C85DAC(&v40, "] ", 2);
      sub_232C85DAC(&v40, "output container is null", 24);
      sub_232C809A4(&v39, a8);
      v40 = *MEMORY[0x277D82828];
      *(&v40 + *(v40 - 24)) = *(MEMORY[0x277D82828] + 24);
      v41 = MEMORY[0x277D82878] + 16;
      if (v45 < 0)
      {
        operator delete(__p);
      }

      v41 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v42);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v46);
    }
  }

  return result;
}

void sub_232C91E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

void *sub_232C91ED8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_232C8592C(result, a2);
    }

    sub_232C84C3C();
  }

  return result;
}

void *sub_232C91F74(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_232C8644C(result, a2);
    }

    sub_232C84C3C();
  }

  return result;
}

uint64_t sub_232C92030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sub_232CB32BC(a8);
    if (a7)
    {
      sub_232C85C3C(a7);
      sub_232CA75C0(&v46, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v46, a9);
      if (!*a8)
      {
        v40 = a8;
        sub_232CB32BC(a8);
        sub_232C85C3C(a7);
        sub_232C924F4(a7, SLODWORD(v49.__locale_));
        if (v50)
        {
          v19 = (v50 + 8);
        }

        else
        {
          v19 = 0;
        }

        if (LODWORD(v49.__locale_))
        {
          v41 = &v19[SLODWORD(v49.__locale_)];
          do
          {
            v20 = *v19;
            __src = 0;
            v44 = 0;
            v45 = 0;
            sub_232C92590(&__src, *(v20 + 56));
            v21 = *(v20 + 64);
            if (v21)
            {
              v22 = v21 + 8;
            }

            else
            {
              v22 = 0;
            }

            v23 = *(v20 + 56);
            if (v23)
            {
              v24 = v44;
              v25 = 8 * v23;
              do
              {
                v26 = *(*v22 + 64);
                if (v24 >= v45)
                {
                  v27 = __src;
                  v28 = v24 - __src;
                  v29 = (v24 - __src) >> 2;
                  v30 = v29 + 1;
                  if ((v29 + 1) >> 62)
                  {
                    sub_232C84C3C();
                  }

                  v31 = v45 - __src;
                  if ((v45 - __src) >> 1 > v30)
                  {
                    v30 = v31 >> 1;
                  }

                  if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v32 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v32 = v30;
                  }

                  if (v32)
                  {
                    sub_232C86538(&__src, v32);
                  }

                  v33 = v29;
                  v34 = (4 * v29);
                  v35 = &v34[-v33];
                  *v34 = v26;
                  v24 = (v34 + 1);
                  memcpy(v35, v27, v28);
                  v36 = __src;
                  __src = v35;
                  v44 = v24;
                  v45 = 0;
                  if (v36)
                  {
                    operator delete(v36);
                  }
                }

                else
                {
                  *v24 = v26;
                  v24 += 4;
                }

                v44 = v24;
                v22 += 8;
                v25 -= 8;
              }

              while (v25);
            }

            v42 = *(v20 + 80);
            v37 = a7[1];
            if (v37 >= a7[2])
            {
              v38 = sub_232C9E2D8(a7, &__src, &v42);
            }

            else
            {
              sub_232C9E270(a7, &__src, &v42);
              v38 = (v37 + 32);
            }

            a7[1] = v38;
            if (__src)
            {
              v44 = __src;
              operator delete(__src);
            }

            ++v19;
          }

          while (v19 != v41);
        }

        sub_232CB32B4(v40);
      }

      return sub_232CA767C(&v46);
    }

    else
    {
      v46 = 13;
      v39 = sub_232C83BBC(&v47);
      sub_232C85DAC(v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v47, "(", 1);
      MEMORY[0x238392A80](&v47, 560);
      sub_232C85DAC(&v47, ") [", 3);
      sub_232C85DAC(&v47, "ids", 3);
      sub_232C85DAC(&v47, "] ", 2);
      sub_232C85DAC(&v47, "output container is null", 24);
      sub_232C809A4(&v46, a8);
      v47 = *MEMORY[0x277D82828];
      *(&v47 + *(v47 - 24)) = *(MEMORY[0x277D82828] + 24);
      v48 = MEMORY[0x277D82878] + 16;
      if (v52 < 0)
      {
        operator delete(__p);
      }

      v48 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v49);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v53);
    }
  }

  return result;
}

void *sub_232C924F4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_232C9E190(result, a2);
    }

    sub_232C84C3C();
  }

  return result;
}

void *sub_232C92590(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_232C86538(result, a2);
    }

    sub_232C84C3C();
  }

  return result;
}

void *sub_232C92630@<X0>(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v10 = *a6;
  v91 = a6[1];
  if (*a6 != v91)
  {
    v11 = a5;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(v10 + 8);
      if (!v14)
      {
        LODWORD(__p[0]) = 13;
        v79 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v79, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 591);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "!w.empty()", 10);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C85DAC(&__p[1], "Empty piece is not allowed.", 27);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      v15 = *v10;
      v16 = *(v10 + 16);
      v93 = ((*a1)[66])(a1, v16);
      if (((*a1)[67])(a1, v16))
      {
        v17 = *(a7 + 64);
        if (v17)
        {
          v18 = *(a7 + 56);
          v19 = *v17;
          if (v18 < *v17)
          {
            *(a7 + 56) = v18 + 1;
            v20 = *&v17[2 * v18 + 2];
LABEL_55:
            *(v20 + 40) |= 1u;
            sub_232C9C334(__p, v15, v14);
            v48 = *(v20 + 8);
            if (v48)
            {
              v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
            }

            sub_232CB44A4((v20 + 48), __p, v48);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v49 = *(v20 + 40);
            *(v20 + 64) = v16;
            v50 = *(*v11 + 8 * v12);
            *(v20 + 68) = v50;
            *(v20 + 40) = v49 | 0x1C;
            goto LABEL_80;
          }

          if (v19 != *(a7 + 60))
          {
LABEL_54:
            *v17 = v19 + 1;
            v20 = sub_232CA7CD4(*(a7 + 48));
            v46 = *(a7 + 56);
            v47 = *(a7 + 64) + 8 * v46;
            *(a7 + 56) = v46 + 1;
            *(v47 + 8) = v20;
            goto LABEL_55;
          }
        }

        else
        {
          v19 = *(a7 + 60);
        }

        sub_232CC74E8(a7 + 48, v19 + 1);
        v17 = *(a7 + 64);
        v19 = *v17;
        goto LABEL_54;
      }

      v21 = *v11;
      v22 = v11[1] - *v11;
      if (v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v80 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v80, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 605);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "(begin) < (norm_to_orig.size())", 31);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      v23 = v14 + v12;
      if (v14 + v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v81 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v81, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 606);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "(end) < (norm_to_orig.size())", 29);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      v24 = *(v21 + 8 * v12);
      if (a3 < v24)
      {
        LODWORD(__p[0]) = 13;
        v82 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v82, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 609);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "(orig_begin) <= (input.size())", 30);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      v25 = *(v21 + 8 * v23);
      if (v25 > a3)
      {
        LODWORD(__p[0]) = 13;
        v83 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v83, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 610);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "(orig_end) <= (input.size())", 28);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      v26 = v25 - v24;
      if (v25 < v24)
      {
        LODWORD(__p[0]) = 13;
        v84 = sub_232C83BBC(&__p[1]);
        sub_232C85DAC(v84, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&__p[1], "(", 1);
        MEMORY[0x238392A80](&__p[1], 611);
        sub_232C85DAC(&__p[1], ") [", 3);
        sub_232C85DAC(&__p[1], "(orig_begin) <= (orig_end)", 26);
        sub_232C85DAC(&__p[1], "] ", 2);
        sub_232C809A4(__p, a8);
        goto LABEL_130;
      }

      if (a3 - v24 < v26)
      {
        v26 = a3 - v24;
      }

      __len = v26;
      if (v93)
      {
        if ((*(*a1[1] + 184))(a1[1]))
        {
          while (1)
          {
            v28 = *v15++;
            v27 = v28;
            v29 = *(a7 + 64);
            if (!v29)
            {
              break;
            }

            v30 = *(a7 + 56);
            v31 = *v29;
            if (v30 >= *v29)
            {
              if (v31 == *(a7 + 60))
              {
LABEL_22:
                sub_232CC74E8(a7 + 48, v31 + 1);
                v29 = *(a7 + 64);
                v31 = *v29;
              }

              *v29 = v31 + 1;
              v32 = sub_232CA7CD4(*(a7 + 48));
              v33 = *(a7 + 56);
              v34 = *(a7 + 64) + 8 * v33;
              *(a7 + 56) = v33 + 1;
              *(v34 + 8) = v32;
              goto LABEL_24;
            }

            *(a7 + 56) = v30 + 1;
            v32 = *&v29[2 * v30 + 2];
LABEL_24:
            sub_232C819C8(v27, &__dst);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            v37 = (*(*a1[1] + 112))(a1[1], p_dst, size);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__dst;
            }

            else
            {
              v38 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = __dst.__r_.__value_.__l.__size_;
            }

            *(v32 + 40) |= 1u;
            sub_232C9C334(__p, v38, v39);
            v40 = *(v32 + 8);
            if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
            }

            sub_232CB44A4((v32 + 48), __p, v40);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v41 = *(v32 + 40);
            *(v32 + 40) = v41 | 4;
            *(v32 + 64) = v37;
            if (v14 == 1)
            {
              *(v32 + 40) = v41 | 6;
              sub_232C9C334(__p, &a2[v24], __len);
              v42 = *(v32 + 8);
              if (v42)
              {
                v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
              }

              sub_232CB44A4((v32 + 56), __p, v42);
              if (SHIBYTE(v97) < 0)
              {
                operator delete(__p[0]);
              }

              v43 = *(v32 + 40);
              *(v32 + 68) = v24;
              v44 = v43 | 0x18;
              v45 = v25;
            }

            else
            {
              *(v32 + 68) = v24;
              v44 = v41 | 0x1C;
              v45 = v24;
            }

            *(v32 + 40) = v44;
            *(v32 + 72) = v45;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (!--v14)
            {
              v12 = v23;
              v11 = a5;
              goto LABEL_81;
            }
          }

          v31 = *(a7 + 60);
          goto LABEL_22;
        }

        if (v13)
        {
          v51 = sub_232C9C948(a7 + 48, *(a7 + 56) - 1);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_134;
          }

          v20 = v51;
          v52 = *(v51 + 48);
          v85 = (v51 + 48);
          if (v14 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v14;
          v62 = v52 & 0xFFFFFFFFFFFFFFFELL;
          memmove(&__dst, v15, v14);
          __dst.__r_.__value_.__s.__data_[v14] = 0;
          v63 = *(v62 + 23);
          if (v63 >= 0)
          {
            v64 = v62;
          }

          else
          {
            v64 = *v62;
          }

          if (v63 >= 0)
          {
            v65 = *(v62 + 23);
          }

          else
          {
            v65 = *(v62 + 8);
          }

          v66 = std::string::insert(&__dst, 0, v64, v65);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v97 = v66->__r_.__value_.__r.__words[2];
          *__p = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 1u;
          v68 = *(v20 + 8);
          if (v68)
          {
            v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_232CB44A4(v85, __p, v68);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_134:
            sub_232C85C94();
          }

          v86 = *(v20 + 56);
          if (__len >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = __len;
          if (__len)
          {
            memmove(&__dst, &a2[v24], __len);
          }

          v11 = a5;
          v69 = v86 & 0xFFFFFFFFFFFFFFFELL;
          __dst.__r_.__value_.__s.__data_[__len] = 0;
          v70 = *((v86 & 0xFFFFFFFFFFFFFFFELL) + 23);
          if (v70 >= 0)
          {
            v71 = (v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v71 = *v69;
          }

          if (v70 >= 0)
          {
            v72 = *(v69 + 23);
          }

          else
          {
            v72 = *(v69 + 8);
          }

          v73 = std::string::insert(&__dst, 0, v71, v72);
          v74 = *&v73->__r_.__value_.__l.__data_;
          v97 = v73->__r_.__value_.__r.__words[2];
          *__p = v74;
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 2u;
          v75 = *(v20 + 8);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_232CB44A4((v20 + 56), __p, v75);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          *(v20 + 40) |= 0x10u;
          LODWORD(v50) = v25;
          v12 = v23;
          goto LABEL_80;
        }
      }

      v53 = *(a7 + 64);
      if (!v53)
      {
        break;
      }

      v54 = *(a7 + 56);
      v55 = *v53;
      if (v54 >= *v53)
      {
        if (v55 == *(a7 + 60))
        {
LABEL_69:
          sub_232CC74E8(a7 + 48, v55 + 1);
          v53 = *(a7 + 64);
          v55 = *v53;
        }

        *v53 = v55 + 1;
        v20 = sub_232CA7CD4(*(a7 + 48));
        v56 = *(a7 + 56);
        v57 = *(a7 + 64) + 8 * v56;
        *(a7 + 56) = v56 + 1;
        *(v57 + 8) = v20;
        goto LABEL_71;
      }

      *(a7 + 56) = v54 + 1;
      v20 = *&v53[2 * v54 + 2];
LABEL_71:
      *(v20 + 40) |= 1u;
      sub_232C9C334(__p, v15, v14);
      v58 = *(v20 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_232CB44A4((v20 + 48), __p, v58);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = *(v20 + 40);
      *(v20 + 64) = v16;
      *(v20 + 40) = v59 | 6;
      sub_232C9C334(__p, &a2[v24], __len);
      v60 = *(v20 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_232CB44A4((v20 + 56), __p, v60);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v61 = *(v20 + 40);
      *(v20 + 68) = v24;
      *(v20 + 40) = v61 | 0x18;
      LODWORD(v50) = v25;
      v12 = v23;
      v11 = a5;
LABEL_80:
      *(v20 + 72) = v50;
      v23 = v12;
LABEL_81:
      v10 += 24;
      v13 = v93;
      if (v10 == v91)
      {
        goto LABEL_116;
      }
    }

    v55 = *(a7 + 60);
    goto LABEL_69;
  }

  v23 = 0;
LABEL_116:
  if (v23 == a4)
  {
    result = sub_232C934E4(a1, a1 + 5, a7, a8);
    if (!*a8)
    {
      sub_232CB32BC(a8);
      *(a7 + 40) |= 1u;
      sub_232C9C334(__p, a2, a3);
      v77 = *(a7 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_232CB44A4((a7 + 72), __p, v77);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      return sub_232CB32B4(a8);
    }

    return result;
  }

  LODWORD(__p[0]) = 13;
  v78 = sub_232C83BBC(&__p[1]);
  sub_232C85DAC(v78, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
  sub_232C85DAC(&__p[1], "(", 1);
  MEMORY[0x238392A80](&__p[1], 662);
  sub_232C85DAC(&__p[1], ") [", 3);
  sub_232C85DAC(&__p[1], "(consumed) == (normalized.size())", 33);
  sub_232C85DAC(&__p[1], "] ", 2);
  sub_232C85DAC(&__p[1], "all normalized characters are not consumed.", 43);
  sub_232C809A4(__p, a8);
LABEL_130:
  __p[1] = *MEMORY[0x277D82828];
  *(&__p[1] + *(__p[1] - 3)) = *(MEMORY[0x277D82828] + 24);
  v97 = MEMORY[0x277D82878] + 16;
  if (v99 < 0)
  {
    operator delete(v98[7].__locale_);
  }

  v97 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v98);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v100);
}

void sub_232C93438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_232C934E4@<X0>(uint64_t *a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return sub_232CB32B4(a4);
  }

  while (1)
  {
    v9 = *v5;
    if (*v5 > 1)
    {
      break;
    }

    if (!v9)
    {
      v19 = *(a3 + 64);
      if (v19)
      {
        v20 = v19 + 8;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(a3 + 56);
      v22 = (v20 + 8 * v21 - 8);
      if (v21)
      {
        v23 = v22 > v20;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        v24 = v20 + 8;
        do
        {
          v25 = *(v24 - 8);
          v26 = *v22;
          if (*v22 != v25)
          {
            v27 = *(v25 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = *(v26 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            if (v27 == v28)
            {
              sub_232CA6858(v25, v26);
            }

            else
            {
              sub_232CC0994(v25, v26);
            }
          }

          v29 = v24 >= --v22;
          v24 += 8;
        }

        while (!v29);
      }

      goto LABEL_63;
    }

    if (v9 != 1)
    {
      return sub_232CB3420(a4, 13, "unknown extra_option type.", 26);
    }

    v10 = *(a3 + 64);
    if (!v10)
    {
      v12 = *(a3 + 60);
      goto LABEL_51;
    }

    v11 = *(a3 + 56);
    v12 = *v10;
    if (v11 >= *v10)
    {
      if (v12 == *(a3 + 60))
      {
LABEL_51:
        sub_232CC74E8(a3 + 48, v12 + 1);
        v10 = *(a3 + 64);
        v12 = *v10;
      }

      *v10 = v12 + 1;
      v42 = sub_232CA7CD4(*(a3 + 48));
      v43 = *(a3 + 56);
      v44 = *(a3 + 64) + 8 * v43;
      v13 = v43 + 1;
      *(a3 + 56) = v43 + 1;
      *(v44 + 8) = v42;
      goto LABEL_53;
    }

    v13 = v11 + 1;
    *(a3 + 56) = v11 + 1;
LABEL_53:
    if (v13 > 1)
    {
      v45 = v13 + 1;
      v46 = 8 * v13 - 8;
      do
      {
        *(*(a3 + 64) + v46) = vextq_s8(*(*(a3 + 64) + v46), *(*(a3 + 64) + v46), 8uLL);
        --v45;
        v46 -= 8;
      }

      while (v45 > 2);
    }

    if (v13 < 1)
    {
      sub_232CB5704(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
      v47 = sub_232CB571C(__p, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v56, &v47->__r_.__value_.__l.__data_);
      sub_232CB5860(__p);
    }

    v48 = *(*(a3 + 64) + 8);
    v49 = sub_232C80DB4(a1[1]);
    v50 = strlen(v49);
    v51 = (*(*a1 + 504))(a1, v49, v50);
    *(v48 + 40) |= 4u;
    *(v48 + 64) = v51;
    v52 = sub_232C80DB4(a1[1]);
    sub_232C80DB4(a1[1]);
    *(v48 + 40) |= 1u;
    sub_232C9C334(__p, v52, v53);
    v54 = *(v48 + 8);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_232CB44A4((v48 + 48), __p, v54);
LABEL_61:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

LABEL_63:
    if (++v5 == v6)
    {
      return sub_232CB32B4(a4);
    }
  }

  if (v9 == 2)
  {
    v30 = *(a3 + 64);
    if (v30)
    {
      v31 = *(a3 + 56);
      v32 = *v30;
      if (v31 < *v30)
      {
        *(a3 + 56) = v31 + 1;
        v33 = *&v30[2 * v31 + 2];
LABEL_47:
        v36 = sub_232C80E38(a1[1]);
        v37 = strlen(v36);
        v38 = (*(*a1 + 504))(a1, v36, v37);
        *(v33 + 40) |= 4u;
        *(v33 + 64) = v38;
        v39 = sub_232C80E38(a1[1]);
        sub_232C80E38(a1[1]);
        *(v33 + 40) |= 1u;
        sub_232C9C334(__p, v39, v40);
        v41 = *(v33 + 8);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        sub_232CB44A4((v33 + 48), __p, v41);
        goto LABEL_61;
      }

      if (v32 != *(a3 + 60))
      {
LABEL_46:
        *v30 = v32 + 1;
        v33 = sub_232CA7CD4(*(a3 + 48));
        v34 = *(a3 + 56);
        v35 = *(a3 + 64) + 8 * v34;
        *(a3 + 56) = v34 + 1;
        *(v35 + 8) = v33;
        goto LABEL_47;
      }
    }

    else
    {
      v32 = *(a3 + 60);
    }

    sub_232CC74E8(a3 + 48, v32 + 1);
    v30 = *(a3 + 64);
    v32 = *v30;
    goto LABEL_46;
  }

  if (v9 == 3)
  {
    if (*(a3 + 56) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = sub_232C9C948(a3 + 48, v14);
        if ((*(*a1 + 528))(a1, *(v15 + 64)))
        {
          v16 = sub_232C80D30(a1[1]);
          sub_232C80D30(a1[1]);
          *(v15 + 40) |= 1u;
          sub_232C9C334(__p, v16, v17);
          v18 = *(v15 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_232CB44A4((v15 + 48), __p, v18);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        ++v14;
      }

      while (v14 < *(a3 + 56));
    }

    goto LABEL_63;
  }

  return sub_232CB3420(a4, 13, "unknown extra_option type.", 26);
}

void sub_232C93A2C(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (!*a5)
  {
    sub_232CB32BC(a5);
    if (a4)
    {
      sub_232CA6C9C(a4);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v17, &v14);
      if (!*a5)
      {
        sub_232CB32BC(a5);
        (*(*a1[1] + 40))(__p);
        if (v19 >= 0)
        {
          v10 = HIBYTE(v19);
        }

        else
        {
          v10 = v18;
        }

        sub_232C92630(a1, a2, a3, v10, &v14, __p, a4, a5);
        if (!*a5)
        {
          v11 = sub_232CB32BC(a5);
          sub_232CB32B4(v11);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v17);
      }
    }

    else
    {
      LODWORD(v17) = 13;
      v12 = sub_232C83BBC(&v18);
      sub_232C85DAC(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v18, "(", 1);
      MEMORY[0x238392A80](&v18, 674);
      sub_232C85DAC(&v18, ") [", 3);
      sub_232C85DAC(&v18, "spt", 3);
      sub_232C85DAC(&v18, "] ", 2);
      sub_232C85DAC(&v18, "output proto is null", 20);
      sub_232C809A4(&v17, a5);
      v18 = *MEMORY[0x277D82828];
      *(&v18 + *(v18 - 24)) = *(MEMORY[0x277D82828] + 24);
      v19 = MEMORY[0x277D82878] + 16;
      if (v21 < 0)
      {
        operator delete(v20[7].__locale_);
      }

      v19 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v20);
      std::ostream::~ostream();
      MEMORY[0x238392BA0](&v22);
    }
  }
}

void sub_232C93D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C93DE0(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (*a5)
  {
    return;
  }

  sub_232CB32BC(a5);
  if (a4)
  {
    sub_232CA76B8(a4);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v26, &v23);
    if (!*a5)
    {
      sub_232CB32BC(a5);
      if ((*(*a1[1] + 88))(a1[1]))
      {
        (*(*a1[1] + 48))(&v21);
        v10 = v21;
        v11 = v22;
        if (v21 != v22)
        {
          while (1)
          {
            v12 = *(a4 + 32);
            if (!v12)
            {
              break;
            }

            v13 = *(a4 + 24);
            v14 = *v12;
            if (v13 >= *v12)
            {
              if (v14 == *(a4 + 28))
              {
LABEL_12:
                sub_232CC74E8(a4 + 16, v14 + 1);
                v12 = *(a4 + 32);
                v14 = *v12;
              }

              *v12 = v14 + 1;
              v15 = sub_232CA7DA4(*(a4 + 16));
              v16 = *(a4 + 24);
              v17 = *(a4 + 32) + 8 * v16;
              *(a4 + 24) = v16 + 1;
              *(v17 + 8) = v15;
              goto LABEL_14;
            }

            *(a4 + 24) = v13 + 1;
            v15 = *&v12[2 * v13 + 2];
LABEL_14:
            v18 = *(v10 + 24);
            *(v15 + 40) |= 2u;
            *(v15 + 80) = v18;
            if (v28 >= 0)
            {
              v19 = HIBYTE(v28);
            }

            else
            {
              v19 = v27;
            }

            sub_232C92630(a1, a2, a3, v19, &v23, v10, v15, a5);
            if (*a5)
            {
              goto LABEL_29;
            }

            sub_232CB32BC(a5);
            v10 += 32;
            if (v10 == v11)
            {
              sub_232CB32B4(a5);
              goto LABEL_29;
            }
          }

          v14 = *(a4 + 28);
          goto LABEL_12;
        }

        LODWORD(v29) = 13;
        sub_232C83BBC(&v30);
        sub_232C85DAC(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&v30, "(", 1);
        MEMORY[0x238392A80](&v30, 700);
        sub_232C85DAC(&v30, ") [", 3);
        sub_232C85DAC(&v30, "!nbests.empty()", 15);
        sub_232C85DAC(&v30, "] ", 2);
        sub_232C85DAC(&v30, "NBestEncode returns empty result.", 33);
        sub_232C809A4(&v29, a5);
        v30 = *MEMORY[0x277D82828];
        *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
        v31 = MEMORY[0x277D82878] + 16;
        if (v34 < 0)
        {
          operator delete(__p);
        }

        v31 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x238392BA0](v35);
LABEL_29:
        v29 = &v21;
        sub_232C85BE8(&v29);
      }

      else
      {
        LODWORD(v29) = 13;
        sub_232C83BBC(&v30);
        sub_232C85DAC(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&v30, "(", 1);
        MEMORY[0x238392A80](&v30, 696);
        sub_232C85DAC(&v30, ") [", 3);
        sub_232C85DAC(&v30, "model_->IsNBestEncodeAvailable()", 32);
        sub_232C85DAC(&v30, "] ", 2);
        sub_232C85DAC(&v30, "NBestEncode is not available for the current model.", 51);
        sub_232C809A4(&v29, a5);
        v30 = *MEMORY[0x277D82828];
        *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
        v31 = MEMORY[0x277D82878] + 16;
        if (v34 < 0)
        {
          operator delete(__p);
        }

        v31 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x238392BA0](v35);
      }
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    LODWORD(v29) = 13;
    v20 = sub_232C83BBC(&v30);
    sub_232C85DAC(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v30, "(", 1);
    MEMORY[0x238392A80](&v30, 690);
    sub_232C85DAC(&v30, ") [", 3);
    sub_232C85DAC(&v30, "nbest_spt", 9);
    sub_232C85DAC(&v30, "] ", 2);
    sub_232C85DAC(&v30, "output proto is null", 20);
    sub_232C809A4(&v29, a5);
    v30 = *MEMORY[0x277D82828];
    *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
    v31 = MEMORY[0x277D82878] + 16;
    if (v34 < 0)
    {
      operator delete(__p);
    }

    v31 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v32);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](v35);
  }
}

void sub_232C94574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  sub_232C85BE8(&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_232C94604(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  ((*a1)[11])(a1);
  if (*a6)
  {
    return;
  }

  sub_232CB32BC(a6);
  if (a5)
  {
    sub_232CA6C9C(a5);
    if (a4 < 513)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      __p = 0;
      v33 = 0;
      v34 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v35, &__p);
      if (*a6)
      {
LABEL_5:
        if (__p)
        {
          v33 = __p;
          operator delete(__p);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(v35);
        }

        return;
      }

      sub_232CB32BC(a6);
      v16 = (*(*a1[1] + 88))(a1[1]);
      if (a4 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        if (a4 > 1)
        {
          (*(*a1[1] + 48))(&v30);
          if (v30 == v31)
          {
            LODWORD(v38) = 13;
            sub_232C83BBC(&v39);
            sub_232C85DAC(&v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            sub_232C85DAC(&v39, "(", 1);
            MEMORY[0x238392A80](&v39, 735);
            sub_232C85DAC(&v39, ") [", 3);
            sub_232C85DAC(&v39, "!nbests.empty()", 15);
            sub_232C85DAC(&v39, "] ", 2);
            sub_232C85DAC(&v39, "NBestEncode returns empty result.", 33);
            sub_232C809A4(&v38, a6);
            sub_232C80A34(&v38);
          }

          else
          {
            LODWORD(v28) = 0;
            sub_232C9E3F4(&v38, (v31 - v30) >> 5);
            if (v31 != v30)
            {
              v19 = v38;
              if (((v31 - v30) >> 5) <= 1)
              {
                v20 = 1;
              }

              else
              {
                v20 = (v31 - v30) >> 5;
              }

              v21 = (v30 + 24);
              do
              {
                v22 = *v21;
                v21 += 8;
                *v19++ = expf(v22 * a7);
                --v20;
              }

              while (v20);
            }

            v23 = sub_232CB1490();
            sub_232C9E508(&v28, v38, v39);
            v24 = HIBYTE(v37);
            v25 = v36;
            v26 = sub_232C9E870(&v28, v23, &v28);
            if ((v24 & 0x80u) == 0)
            {
              v27 = v24;
            }

            else
            {
              v27 = v25;
            }

            sub_232C92630(a1, a2, a3, v27, &__p, (v30 + 32 * v26), a5, a6);
            if (!*a6)
            {
              sub_232CB32BC(a6);
              if (v28)
              {
                v29 = v28;
                operator delete(v28);
              }

              if (v38)
              {
                v39 = v38;
                operator delete(v38);
              }

              v38 = &v30;
              sub_232C85BE8(&v38);
LABEL_55:
              sub_232CB32B4(a6);
              goto LABEL_5;
            }

            if (v28)
            {
              v29 = v28;
              operator delete(v28);
            }

            if (v38)
            {
              v39 = v38;
              operator delete(v38);
            }
          }

          v38 = &v30;
          sub_232C85BE8(&v38);
          goto LABEL_5;
        }

        (*(*a1[1] + 40))(&v38);
        if (v37 >= 0)
        {
          v18 = HIBYTE(v37);
        }

        else
        {
          v18 = v36;
        }
      }

      else
      {
        if (((*(*a1[1] + 80))(a1[1]) & 1) == 0)
        {
          LODWORD(v38) = 13;
          sub_232C83BBC(&v39);
          sub_232C85DAC(&v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
          sub_232C85DAC(&v39, "(", 1);
          MEMORY[0x238392A80](&v39, 724);
          sub_232C85DAC(&v39, ") [", 3);
          sub_232C85DAC(&v39, "model_->IsSampleEncodeAvailable()", 33);
          sub_232C85DAC(&v39, "] ", 2);
          sub_232C85DAC(&v39, "SampleEncode is not available for the current model.", 52);
          sub_232C809A4(&v38, a6);
          sub_232C80A34(&v38);
          goto LABEL_5;
        }

        (*(*a1[1] + 56))(&v38, a7);
        if (v37 >= 0)
        {
          v18 = HIBYTE(v37);
        }

        else
        {
          v18 = v36;
        }
      }

      sub_232C92630(a1, a2, a3, v18, &__p, &v38, a5, a6);
      if (*a6)
      {
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        goto LABEL_5;
      }

      sub_232CB32BC(a6);
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      goto LABEL_55;
    }

    LODWORD(v38) = 13;
    v15 = sub_232C83BBC(&v39);
    sub_232C85DAC(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v39, "(", 1);
    MEMORY[0x238392A80](&v39, 717);
    sub_232C85DAC(&v39, ") [", 3);
    sub_232C85DAC(&v39, "(nbest_size) <= (512)", 21);
    sub_232C85DAC(&v39, "] ", 2);
    sub_232C85DAC(&v39, "nbest_size must be nbest_size <= 512", 36);
    sub_232C809A4(&v38, a6);
  }

  else
  {
    LODWORD(v38) = 13;
    v14 = sub_232C83BBC(&v39);
    sub_232C85DAC(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v39, "(", 1);
    MEMORY[0x238392A80](&v39, 715);
    sub_232C85DAC(&v39, ") [", 3);
    sub_232C85DAC(&v39, "spt", 3);
    sub_232C85DAC(&v39, "] ", 2);
    sub_232C85DAC(&v39, "output proto is null", 20);
    sub_232C809A4(&v38, a6);
  }

  v39 = *MEMORY[0x277D82828];
  *(&v39 + *(v39 - 3)) = *(MEMORY[0x277D82828] + 24);
  v40 = MEMORY[0x277D82878] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v41);
  std::ostream::~ostream();
  MEMORY[0x238392BA0](&v43);
}

void sub_232C94E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char *a24, uint64_t a25)
{
  a24 = &a12;
  sub_232C85BE8(&a24);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_232C94F04(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X6>, uint64_t *a5@<X8>, float a6@<S0>)
{
  if ((*(*a1[1] + 96))(a1[1]))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v28, &v25);
    if (!*a5)
    {
      sub_232CB32BC(a5);
      (*(*a1[1] + 64))(&v23, a6);
      v12 = v23;
      v13 = v24;
      if (v23 != v24)
      {
        while (1)
        {
          v14 = *(a4 + 32);
          if (!v14)
          {
            break;
          }

          v15 = *(a4 + 24);
          v16 = *v14;
          if (v15 >= *v14)
          {
            if (v16 == *(a4 + 28))
            {
LABEL_9:
              sub_232CC74E8(a4 + 16, v16 + 1);
              v14 = *(a4 + 32);
              v16 = *v14;
            }

            *v14 = v16 + 1;
            v17 = sub_232CA7DA4(*(a4 + 16));
            v18 = *(a4 + 24);
            v19 = *(a4 + 32) + 8 * v18;
            *(a4 + 24) = v18 + 1;
            *(v19 + 8) = v17;
            goto LABEL_11;
          }

          *(a4 + 24) = v15 + 1;
          v17 = *&v14[2 * v15 + 2];
LABEL_11:
          v20 = *(v12 + 24);
          *(v17 + 40) |= 2u;
          *(v17 + 80) = v20;
          if (v30 >= 0)
          {
            v21 = HIBYTE(v30);
          }

          else
          {
            v21 = v29;
          }

          sub_232C92630(a1, a2, a3, v21, &v25, v12, v17, a5);
          if (*a5)
          {
            goto LABEL_23;
          }

          sub_232CB32BC(a5);
          v12 += 32;
          if (v12 == v13)
          {
            sub_232CB32B4(a5);
            goto LABEL_23;
          }
        }

        v16 = *(a4 + 28);
        goto LABEL_9;
      }

      LODWORD(v31) = 13;
      sub_232C83BBC(&v32);
      sub_232C85DAC(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v32, "(", 1);
      MEMORY[0x238392A80](&v32, 762);
      sub_232C85DAC(&v32, ") [", 3);
      sub_232C85DAC(&v32, "!results.empty()", 16);
      sub_232C85DAC(&v32, "] ", 2);
      sub_232C85DAC(&v32, "SampleEncodeAndScore returns empty result.", 42);
      sub_232C809A4(&v31, a5);
      v32 = *MEMORY[0x277D82828];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
      v33 = MEMORY[0x277D82878] + 16;
      if (v36 < 0)
      {
        operator delete(__p);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v34);
      std::ostream::~ostream();
      MEMORY[0x238392BA0](v37);
LABEL_23:
      v31 = &v23;
      sub_232C85BE8(&v31);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }
  }

  else
  {
    LODWORD(v31) = 13;
    v22 = sub_232C83BBC(&v32);
    sub_232C85DAC(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v32, "(", 1);
    MEMORY[0x238392A80](&v32, 754);
    sub_232C85DAC(&v32, ") [", 3);
    sub_232C85DAC(&v32, "model_->IsSampleEncodeAndScoreAvailable()", 41);
    sub_232C85DAC(&v32, "] ", 2);
    sub_232C85DAC(&v32, "SampleEncodeAndScore is not available for the current model.", 60);
    sub_232C809A4(&v31, a5);
    v32 = *MEMORY[0x277D82828];
    *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
    v33 = MEMORY[0x277D82878] + 16;
    if (v36 < 0)
    {
      operator delete(__p);
    }

    v33 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v34);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](v37);
  }
}

void sub_232C954CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  sub_232C85BE8(&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_232C95544(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float *a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>)
{
  if ((*(**(a1 + 8) + 104))(*(a1 + 8)))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    __p = 0;
    v16 = 0;
    v17 = 0;
    (*(**(a1 + 16) + 32))(*(a1 + 16), a2, a3, &v18, &__p);
    if (!*a5)
    {
      sub_232CB32BC(a5);
      if (v20 >= 0)
      {
        v12 = &v18;
      }

      else
      {
        v12 = v18;
      }

      if (v20 >= 0)
      {
        v13 = HIBYTE(v20);
      }

      else
      {
        v13 = v19;
      }

      *a4 = (*(**(a1 + 8) + 72))(*(a1 + 8), v12, v13, a6);
      sub_232CB32B4(a5);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v18);
    }
  }

  else
  {
    LODWORD(v18) = 13;
    v14 = sub_232C83BBC(&v19);
    sub_232C85DAC(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v19, "(", 1);
    MEMORY[0x238392A80](&v19, 778);
    sub_232C85DAC(&v19, ") [", 3);
    sub_232C85DAC(&v19, "model_->IsCalculateEntropyAvailable()", 37);
    sub_232C85DAC(&v19, "] ", 2);
    sub_232C85DAC(&v19, "CalculateEntropy is not available for the current model.", 56);
    sub_232C809A4(&v18, a5);
    v19 = *MEMORY[0x277D82828];
    *(&v19 + *(v19 - 24)) = *(MEMORY[0x277D82828] + 24);
    v20 = MEMORY[0x277D82878] + 16;
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    v20 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v21);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](&v23);
  }
}

void sub_232C95838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C95878(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_232C8FC4C(a2, __p);
  (*(*a1 + 272))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_232C95908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C95924(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v74[19] = *MEMORY[0x277D85DE8];
  v62 = a3;
  (*(*a1 + 88))(a4);
  if (*a4)
  {
    goto LABEL_2;
  }

  sub_232CB32BC(a4);
  if (!v4)
  {
    LODWORD(__dst) = 13;
    sub_232C83BBC(&__dst + 1);
    sub_232C85DAC(&__dst + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&__dst + 1, "(", 1);
    MEMORY[0x238392A80](&__dst + 8, 796);
    sub_232C85DAC(&__dst + 1, ") [", 3);
    sub_232C85DAC(&__dst + 1, "spt", 3);
    sub_232C85DAC(&__dst + 1, "] ", 2);
    sub_232C85DAC(&__dst + 1, "output proto is null", 20);
    sub_232C809A4(&__dst, a4);
    *(&__dst + 1) = *MEMORY[0x277D82828];
    *(&__dst + *(*(&__dst + 1) - 24) + 8) = *(MEMORY[0x277D82828] + 24);
    v69 = (MEMORY[0x277D82878] + 16);
    if (v73 < 0)
    {
      operator delete(__p);
    }

    v69 = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(&v70);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](v74);
    goto LABEL_2;
  }

  sub_232CA6C9C(v4);
  v9 = a1[4];
  if (v9 && (*(*v9 + 72))(v9))
  {
    v10 = (*(*a1[4] + 24))(a1[4]);
  }

  else
  {
    v10 = &unk_232D0071D;
  }

  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    while (1)
    {
      v13 = *v11;
      v14 = v11[1];
      v15 = v62;
      v16 = *(v62 + 64);
      if (!v16)
      {
        break;
      }

      v17 = *(v62 + 56);
      v18 = *v16;
      if (v17 >= *v16)
      {
        if (v18 == *(v62 + 60))
        {
LABEL_18:
          sub_232CC74E8(v62 + 48, v18 + 1);
          v16 = *(v62 + 64);
          v18 = *v16;
        }

        *v16 = v18 + 1;
        v19 = sub_232CA7CD4(*(v15 + 48));
        v20 = *(v15 + 56);
        v21 = *(v15 + 64) + 8 * v20;
        *(v15 + 56) = v20 + 1;
        *(v21 + 8) = v19;
        goto LABEL_20;
      }

      *(v62 + 56) = v17 + 1;
      v19 = *&v16[2 * v17 + 2];
LABEL_20:
      *(v19 + 40) |= 1u;
      v22 = *(v19 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = sub_232CB44C8((v19 + 48), v22);
      MEMORY[0x238392920](v23, v13, v14);
      v24 = (*(*a1 + 504))(a1, v13, v14);
      *(v19 + 40) |= 4u;
      *(v19 + 64) = v24;
      v11 += 2;
      if (v11 == v12)
      {
        v4 = v62;
        goto LABEL_24;
      }
    }

    v18 = *(v62 + 60);
    goto LABEL_18;
  }

LABEL_24:
  sub_232C934E4(a1, a1 + 8, v4, a4);
  if (*a4)
  {
    goto LABEL_2;
  }

  sub_232CB32BC(a4);
  *(v4 + 40) |= 1u;
  v25 = *(v4 + 8);
  if (v25)
  {
    v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
  }

  v60[1] = &v61;
  v61 = sub_232CB44C8((v4 + 72), v25);
  v58 = 0;
  v59[0] = &v62;
  v59[1] = v60;
  v60[0] = &v62;
  v57[0] = 0;
  v57[1] = 0;
  v26 = *(v4 + 56);
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    while (1)
    {
      v31 = sub_232C9BA60(v4 + 48, v29);
      if (!(*(*a1 + 552))(a1, *(v31 + 64)))
      {
        break;
      }

      ++v29;
LABEL_69:
      v4 = v62;
      v26 = *(v62 + 56);
      if (v29 >= v26)
      {
        goto LABEL_87;
      }
    }

    sub_232C96310(v59, v28, v29, a4);
    if (*a4)
    {
      goto LABEL_95;
    }

    sub_232CB32BC(a4);
    if (v27)
    {
      goto LABEL_36;
    }

    v32 = *(v61 + 23);
    if (v32 < 0)
    {
      v32 = v61[1];
    }

    if (v32)
    {
LABEL_36:
      v30 = 0;
    }

    v33 = *(v31 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    if ((v34 & 0x8000000000000000) != 0)
    {
      v35 = *v33;
      v34 = *(v33 + 8);
    }

    else
    {
      v35 = (*(v31 + 48) & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = *(v31 + 64);
    if ((*(*a1 + 536))(a1, v36))
    {
      sub_232C8C2D0(&v54, "");
    }

    else
    {
      if (!(*(*a1 + 528))(a1, v36))
      {
        if (v30 & 1) != 0 && ((v39 = a1[4]) == 0 || (v40 = (*(*v39 + 152))(v39), ((*(*v40 + 16))(v40)) || (v41 = (*(*a1[4] + 152))(a1[4]), (*(*v41 + 24))(v41))))
        {
          if (v34 >= 3)
          {
            v46 = *v35 != 38626 || v35[2] != 129;
            if (!v46)
            {
              v35 += 3;
              v34 -= 3;
            }

            v42 = !v46;
          }

          else
          {
            v42 = 0;
          }

          v47 = a1[4];
          if (v47)
          {
            v48 = (*(*v47 + 152))(v47);
            if ((*(*v48 + 24))(v48))
            {
              v42 = 0;
            }
          }
        }

        else
        {
          v42 = 0;
        }

        *&__dst = &unk_232D007B2;
        *(&__dst + 1) = 3;
        v69 = " ";
        v70.__locale_ = 1;
        v64 = 0;
        v65 = 0;
        v63 = 0;
        sub_232C9C618(&v63, &__dst, &v71, 1uLL);
        sub_232C9C3E4(v35, v34, &v63, &v66);
        v54 = v66;
        v55 = v67;
        v67 = 0;
        v66 = 0uLL;
        v56 = v42;
        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        goto LABEL_60;
      }

      v37 = (*(*a1 + 512))(a1, v36);
      if (v38 == v34 && !memcmp(v37, v35, v34))
      {
        sub_232C8C2D0(&v54, v10);
      }

      else
      {
        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_232C85C94();
        }

        if (v34 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v69) = v34;
        if (v34)
        {
          memmove(&__dst, v35, v34);
        }

        *(&__dst + v34) = 0;
        v54 = __dst;
        v55 = v69;
      }
    }

    v56 = 0;
LABEL_60:
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    v58 = v55;
    *v57 = v54;
    v27 = v56;
    if (SHIBYTE(v55) >= 0)
    {
      v43 = v57;
    }

    else
    {
      v43 = v54;
    }

    if (SHIBYTE(v55) >= 0)
    {
      v44 = v55 >> 56;
    }

    else
    {
      v44 = *(&v54 + 1);
    }

    sub_232C968BC(v60, v29++, v43, v44);
    v28 = v29;
    goto LABEL_69;
  }

  v28 = 0;
LABEL_87:
  sub_232C96310(v59, v28, v26, a4);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    v49 = a1[3];
    if (v49)
    {
      if ((*(v61 + 23) & 0x8000000000000000) != 0)
      {
        v50 = *v61;
        v51 = v61[1];
      }

      (*(*v49 + 40))(&__dst);
      v52 = v61;
      if (*(v61 + 23) < 0)
      {
        operator delete(*v61);
      }

      v53 = __dst;
      v52[2] = v69;
      *v52 = v53;
    }

    sub_232CB32B4(a4);
  }

LABEL_95:
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }

LABEL_2:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_232C962B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C96310(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a2 >= a3)
  {

    sub_232CB32B4(a4);
  }

  else
  {
    memset(&v37, 0, sizeof(v37));
    v8 = a2;
    do
    {
      v9 = *(sub_232C9BA60(**a1 + 48, v8) + 48);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFELL);
      v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v10 = *v10;
        v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v12 = sub_232C8250C(v10, v11);
      if (v12 < 0)
      {
        v31 = 13;
        sub_232C83BBC(&v32);
        sub_232C85DAC(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_232C85DAC(&v32, "(", 1);
        MEMORY[0x238392A80](&v32, 868);
        sub_232C85DAC(&v32, ") [", 3);
        sub_232C85DAC(&v32, "(0) <= (byte)", 13);
        sub_232C85DAC(&v32, "] ", 2);
        sub_232C809A4(&v31, a4);
        goto LABEL_51;
      }

      std::string::append(&v37, 1uLL, v12);
      ++v8;
    }

    while (a3 != v8);
    v29 = a4;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v37.__r_.__value_.__r.__words[1];
    }

    if (v13 >= 1)
    {
      v14 = 0;
      while (1)
      {
        v30 = 0;
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v37.__r_.__value_.__l.__size_;
        }

        if (size < v14)
        {
          sub_232C9C710("string_view::substr");
        }

        v16 = v14;
        v17 = v37.__r_.__value_.__r.__words[0];
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v37;
        }

        if (sub_232CB1340(v17 + v16, v17 + size, &v30) != 65533)
        {
          break;
        }

        v18 = v16 + a2;
        if (v30 != 1)
        {
          if (v30 != 3)
          {
            v31 = 13;
            sub_232C83BBC(&v32);
            sub_232C85DAC(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            sub_232C85DAC(&v32, "(", 1);
            MEMORY[0x238392A80](&v32, 887);
            sub_232C85DAC(&v32, ") [", 3);
            sub_232C85DAC(&v32, "(consumed) == (1)", 17);
            sub_232C85DAC(&v32, "] ", 2);
            sub_232C809A4(&v31, v29);
            goto LABEL_51;
          }

          goto LABEL_22;
        }

        sub_232C968BC(*(a1 + 8), v16 + a2, &unk_232D007AE, 3uLL);
        LODWORD(v21) = v30;
LABEL_41:
        v14 = v16 + v21;
        if (v14 >= v13)
        {
          goto LABEL_48;
        }
      }

      v18 = v16 + a2;
LABEL_22:
      v19 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v37.__r_.__value_.__l.__size_;
      }

      v20 = v19 - v16;
      if (v19 < v16)
      {
        sub_232C9C710("string_view::substr");
      }

      v21 = v30;
      v22 = &v37;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v37.__r_.__value_.__r.__words[0];
      }

      if (v20 >= v30)
      {
        v23 = v30;
      }

      else
      {
        v23 = v20;
      }

      if (v30)
      {
        v24 = 0;
        v25 = v22 + v16;
        do
        {
          v26 = v21 - 1;
          if (v24 == v26)
          {
            v27 = v25;
          }

          else
          {
            v27 = "";
          }

          if (v24 == v26)
          {
            v28 = v23;
          }

          else
          {
            v28 = 0;
          }

          sub_232C968BC(*(a1 + 8), v18, v27, v28);
          ++v24;
          v21 = v30;
          ++v18;
        }

        while (v30 > v24);
      }

      goto LABEL_41;
    }

    v14 = 0;
LABEL_48:
    if (v14 + a2 == a3)
    {
      sub_232CB32B4(v29);
      goto LABEL_54;
    }

    v31 = 13;
    sub_232C83BBC(&v32);
    sub_232C85DAC(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v32, "(", 1);
    MEMORY[0x238392A80](&v32, 905);
    sub_232C85DAC(&v32, ") [", 3);
    sub_232C85DAC(&v32, "(token_index_begin + offset) == (token_index_end)", 49);
    sub_232C85DAC(&v32, "] ", 2);
    sub_232C809A4(&v31, v29);
LABEL_51:
    v32 = *MEMORY[0x277D82828];
    *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
    v33 = MEMORY[0x277D82878] + 16;
    if (v35 < 0)
    {
      operator delete(v34[7].__locale_);
    }

    v33 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v34);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](&v36);
LABEL_54:
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }
}

void sub_232C96854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 89) < 0)
  {
    operator delete(*(v11 - 112));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_232C968BC(uint64_t a1, int a2, const void *a3, size_t a4)
{
  v7 = sub_232C9C948(**a1 + 48, a2);
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  v8 = v7;
  if (a4 >= 0x17)
  {
    operator new();
  }

  v17 = a4;
  if (a4)
  {
    memmove(&__dst, a3, a4);
  }

  *(&__dst + a4) = 0;
  *(v8 + 40) |= 2u;
  v9 = *(v8 + 8);
  if (v9)
  {
    v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_232CB44A4((v8 + 56), &__dst, v9);
  if (v17 < 0)
  {
    operator delete(__dst);
  }

  v10 = *(a1 + 8);
  v11 = *v10;
  v12 = *(*v10 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  v13 = *(v8 + 40);
  *(v8 + 40) = v13 | 8;
  *(v8 + 68) = v12;
  v14 = *(v11 + 23);
  if (v14 < 0)
  {
    v14 = *(v11 + 8);
  }

  *(v8 + 40) = v13 | 0x18;
  *(v8 + 72) = v14 + a4;
  return std::string::append(v11, a3, a4);
}

void sub_232C96A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C96A28(uint64_t a1@<X0>, signed int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = (*(*a1 + 496))(a1);
  sub_232C91F74(&v19, a2[1] - *a2);
  v10 = *a2;
  v9 = a2[1];
  while (1)
  {
    if (v10 == v9)
    {
      (*(*a1 + 264))(a1, &v19, a3);
      goto LABEL_18;
    }

    v11 = *v10;
    v18 = v11;
    if (v11 < 0 || v11 >= v8)
    {
      break;
    }

    __p.__r_.__value_.__r.__words[0] = (*(*a1 + 512))(a1);
    __p.__r_.__value_.__l.__size_ = v12;
    v13 = v20;
    if (v20 >= v21)
    {
      v14 = sub_232C862B4(&v19, &__p);
    }

    else
    {
      sub_232C861F0(&v19, &__p);
      v14 = v13 + 24;
    }

    v20 = v14;
    ++v10;
  }

  sub_232C96C28("Invalid id: ", 0xCuLL, &v18, &__p);
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

  sub_232CB3420(a4, 11, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  __p.__r_.__value_.__r.__words[0] = &v19;
  sub_232C9C22C(&__p);
}

void sub_232C96BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  sub_232C9C22C(&__p);
  _Unwind_Resume(a1);
}

void sub_232C96C28(void *__src@<X0>, size_t __len@<X1>, unsigned int *a3@<X2>, std::string *a4@<X8>)
{
  sub_232C9C334(&__dst, __src, __len);
  sub_232C9E9C0(*a3);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&__dst, v6, v7);
  *a4 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_232C96CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232C96D00(void **a1)
{
  ((*a1)[11])(&v16);
  v2 = v16;
  sub_232CB32BC(&v16);
  if (!v2)
  {
    return (*(*a1[1] + 128))(a1[1]);
  }

  if (sub_232CB1330() <= 2)
  {
    v15 = 0;
    v3 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v4 = sub_232C85DAC(v3, "(", 1);
    v5 = MEMORY[0x238392A80](v4, 961);
    v6 = sub_232C85DAC(v5, ") ", 2);
    v7 = sub_232C85DAC(v6, "LOG(", 4);
    v8 = sub_232C85DAC(v7, "ERROR", 5);
    v9 = sub_232C85DAC(v8, ") ", 2);
    ((*a1)[11])(&v16, a1);
    v10 = sub_232CB35B4(&v16);
    v11 = strlen(v10);
    v12 = sub_232C85DAC(v9, v10, v11);
    v13 = sub_232C85DAC(v12, "\nReturns default value ", 23);
    MEMORY[0x238392A80](v13, 0);
    sub_232CB32BC(&v16);
    sub_232C83EEC(&v15);
  }

  return 0;
}

uint64_t sub_232C96EB0(void **a1, uint64_t a2, uint64_t a3)
{
  ((*a1)[11])(&v20);
  v6 = v20;
  sub_232CB32BC(&v20);
  if (!v6)
  {
    return (*(*a1[1] + 112))(a1[1], a2, a3);
  }

  if (sub_232CB1330() <= 2)
  {
    v19 = 0;
    v7 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v8 = sub_232C85DAC(v7, "(", 1);
    v9 = MEMORY[0x238392A80](v8, 966);
    v10 = sub_232C85DAC(v9, ") ", 2);
    v11 = sub_232C85DAC(v10, "LOG(", 4);
    v12 = sub_232C85DAC(v11, "ERROR", 5);
    v13 = sub_232C85DAC(v12, ") ", 2);
    ((*a1)[11])(&v20, a1);
    v14 = sub_232CB35B4(&v20);
    v15 = strlen(v14);
    v16 = sub_232C85DAC(v13, v14, v15);
    v17 = sub_232C85DAC(v16, "\nReturns default value ", 23);
    MEMORY[0x238392A80](v17, 0);
    sub_232CB32BC(&v20);
    sub_232C83EEC(&v19);
  }

  return 0;
}

const char *sub_232C97078(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_232CB32BC(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 120))(a1[1], a2);
  }

  if (sub_232CB1330() <= 2)
  {
    v17 = 0;
    v5 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v6 = sub_232C85DAC(v5, "(", 1);
    v7 = MEMORY[0x238392A80](v6, 971);
    v8 = sub_232C85DAC(v7, ") ", 2);
    v9 = sub_232C85DAC(v8, "LOG(", 4);
    v10 = sub_232C85DAC(v9, "ERROR", 5);
    v11 = sub_232C85DAC(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_232CB35B4(&v18);
    v13 = strlen(v12);
    v14 = sub_232C85DAC(v11, v12, v13);
    v15 = sub_232C85DAC(v14, "\nReturns default value ", 23);
    sub_232C85DAC(v15, "", 0);
    sub_232CB32BC(&v18);
    sub_232C83EEC(&v17);
  }

  return "";
}

float sub_232C97248(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v19);
  v4 = v19;
  sub_232CB32BC(&v19);
  if (!v4)
  {
    return (*(*a1[1] + 136))(a1[1], a2);
  }

  v5 = 0.0;
  if (sub_232CB1330() <= 2)
  {
    v18 = 0;
    v6 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v7 = sub_232C85DAC(v6, "(", 1);
    v8 = MEMORY[0x238392A80](v7, 976);
    v9 = sub_232C85DAC(v8, ") ", 2);
    v10 = sub_232C85DAC(v9, "LOG(", 4);
    v11 = sub_232C85DAC(v10, "ERROR", 5);
    v12 = sub_232C85DAC(v11, ") ", 2);
    ((*a1)[11])(&v19, a1);
    v13 = sub_232CB35B4(&v19);
    v14 = strlen(v13);
    v15 = sub_232C85DAC(v12, v13, v14);
    v16 = sub_232C85DAC(v15, "\nReturns default value ", 23);
    MEMORY[0x238392A60](v16, 0.0);
    sub_232CB32BC(&v19);
    sub_232C83EEC(&v18);
  }

  return v5;
}

uint64_t sub_232C97418(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_232CB32BC(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 152))(a1[1], a2);
  }

  if (sub_232CB1330() <= 2)
  {
    v17 = 0;
    v5 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v6 = sub_232C85DAC(v5, "(", 1);
    v7 = MEMORY[0x238392A80](v6, 981);
    v8 = sub_232C85DAC(v7, ") ", 2);
    v9 = sub_232C85DAC(v8, "LOG(", 4);
    v10 = sub_232C85DAC(v9, "ERROR", 5);
    v11 = sub_232C85DAC(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_232CB35B4(&v18);
    v13 = strlen(v12);
    v14 = sub_232C85DAC(v11, v12, v13);
    v15 = sub_232C85DAC(v14, "\nReturns default value ", 23);
    MEMORY[0x238392A80](v15, 0);
    sub_232CB32BC(&v18);
    sub_232C83EEC(&v17);
  }

  return 0;
}

uint64_t sub_232C975D8(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_232CB32BC(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 144))(a1[1], a2);
  }

  if (sub_232CB1330() <= 2)
  {
    v17 = 0;
    v5 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v6 = sub_232C85DAC(v5, "(", 1);
    v7 = MEMORY[0x238392A80](v6, 986);
    v8 = sub_232C85DAC(v7, ") ", 2);
    v9 = sub_232C85DAC(v8, "LOG(", 4);
    v10 = sub_232C85DAC(v9, "ERROR", 5);
    v11 = sub_232C85DAC(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_232CB35B4(&v18);
    v13 = strlen(v12);
    v14 = sub_232C85DAC(v11, v12, v13);
    v15 = sub_232C85DAC(v14, "\nReturns default value ", 23);
    MEMORY[0x238392A80](v15, 0);
    sub_232CB32BC(&v18);
    sub_232C83EEC(&v17);
  }

  return 0;
}

uint64_t sub_232C97798(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_232CB32BC(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 160))(a1[1], a2);
  }

  if (sub_232CB1330() <= 2)
  {
    v17 = 0;
    v5 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v6 = sub_232C85DAC(v5, "(", 1);
    v7 = MEMORY[0x238392A80](v6, 991);
    v8 = sub_232C85DAC(v7, ") ", 2);
    v9 = sub_232C85DAC(v8, "LOG(", 4);
    v10 = sub_232C85DAC(v9, "ERROR", 5);
    v11 = sub_232C85DAC(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_232CB35B4(&v18);
    v13 = strlen(v12);
    v14 = sub_232C85DAC(v11, v12, v13);
    v15 = sub_232C85DAC(v14, "\nReturns default value ", 23);
    MEMORY[0x238392A50](v15, 0);
    sub_232CB32BC(&v18);
    sub_232C83EEC(&v17);
  }

  return 0;
}

uint64_t sub_232C97958(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_232CB32BC(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 176))(a1[1], a2);
  }

  if (sub_232CB1330() <= 2)
  {
    v17 = 0;
    v5 = sub_232C85DAC(MEMORY[0x277D82670], "sentencepiece_processor.cc", 26);
    v6 = sub_232C85DAC(v5, "(", 1);
    v7 = MEMORY[0x238392A80](v6, 996);
    v8 = sub_232C85DAC(v7, ") ", 2);
    v9 = sub_232C85DAC(v8, "LOG(", 4);
    v10 = sub_232C85DAC(v9, "ERROR", 5);
    v11 = sub_232C85DAC(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_232CB35B4(&v18);
    v13 = strlen(v12);
    v14 = sub_232C85DAC(v11, v12, v13);
    v15 = sub_232C85DAC(v14, "\nReturns default value ", 23);
    MEMORY[0x238392A50](v15, 0);
    sub_232CB32BC(&v18);
    sub_232C83EEC(&v17);
  }

  return 0;
}

uint64_t sub_232C97B18(uint64_t *a1)
{
  v2 = sub_232C80D30(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 528))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_232C97BD8(uint64_t *a1)
{
  v2 = sub_232C80DB4(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_232C97C98(uint64_t *a1)
{
  v2 = sub_232C80E38(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_232C97D58(uint64_t *a1)
{
  v2 = sub_232C80EBC(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_232C97E18@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void ***a3@<X3>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    if (a3)
    {
      sub_232C90010(a3);
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 200);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_232C83BBC(&v14);
      sub_232C85DAC(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v14, "(", 1);
      MEMORY[0x238392A80](&v14, 1027);
      sub_232C85DAC(&v14, ") [", 3);
      sub_232C85DAC(&v14, "pieces", 6);
      sub_232C85DAC(&v14, "] ", 2);
      sub_232C85DAC(&v14, "output container is null", 24);
      sub_232C809A4(&v13, a4);
      v14 = *MEMORY[0x277D82828];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
      v15 = MEMORY[0x277D82878] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v18);
    }
  }

  return result;
}

uint64_t sub_232C980CC@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    if (a3)
    {
      a3[1] = *a3;
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 208);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_232C83BBC(&v14);
      sub_232C85DAC(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v14, "(", 1);
      MEMORY[0x238392A80](&v14, 1033);
      sub_232C85DAC(&v14, ") [", 3);
      sub_232C85DAC(&v14, "ids", 3);
      sub_232C85DAC(&v14, "] ", 2);
      sub_232C85DAC(&v14, "output container is null", 24);
      sub_232C809A4(&v13, a4);
      v14 = *MEMORY[0x277D82828];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
      v15 = MEMORY[0x277D82878] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v18);
    }
  }

  return result;
}

uint64_t sub_232C98380@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void ***a3@<X2>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    if (a3)
    {
      sub_232C90010(a3);
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 216);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_232C83BBC(&v14);
      sub_232C85DAC(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v14, "(", 1);
      MEMORY[0x238392A80](&v14, 1039);
      sub_232C85DAC(&v14, ") [", 3);
      sub_232C85DAC(&v14, "pieces", 6);
      sub_232C85DAC(&v14, "] ", 2);
      sub_232C85DAC(&v14, "output container is null", 24);
      sub_232C809A4(&v13, a4);
      v14 = *MEMORY[0x277D82828];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
      v15 = MEMORY[0x277D82878] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v18);
    }
  }

  return result;
}

uint64_t sub_232C9862C@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    if (a3)
    {
      a3[1] = *a3;
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 224);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_232C83BBC(&v14);
      sub_232C85DAC(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_232C85DAC(&v14, "(", 1);
      MEMORY[0x238392A80](&v14, 1045);
      sub_232C85DAC(&v14, ") [", 3);
      sub_232C85DAC(&v14, "ids", 3);
      sub_232C85DAC(&v14, "] ", 2);
      sub_232C85DAC(&v14, "output container is null", 24);
      sub_232C809A4(&v13, a4);
      v14 = *MEMORY[0x277D82828];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
      v15 = MEMORY[0x277D82878] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x238392BA0](&v18);
    }
  }

  return result;
}

uint64_t sub_232C988D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 16);

    return v2();
  }

  return result;
}

uint64_t sub_232C9894C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 24);

    return v2();
  }

  return result;
}

uint64_t sub_232C989C0@<X0>(void **a1@<X0>, uint64_t a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (*a4)
  {
    return result;
  }

  sub_232CB32BC(a4);
  if (a2)
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

    result = ((*a1)[11])(a1);
    if (*a4)
    {
      return result;
    }

    sub_232CB32BC(a4);
    if (a3)
    {
      a3[1] = *a3;
      v10 = *(*a1[2] + 32);

      return v10();
    }

    v12 = 13;
    v11 = sub_232C83BBC(&v13);
    sub_232C85DAC(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v13, "(", 1);
    MEMORY[0x238392A80](&v13, 1062);
    sub_232C85DAC(&v13, ") [", 3);
    sub_232C85DAC(&v13, "norm_to_orig", 12);
    sub_232C85DAC(&v13, "] ", 2);
    sub_232C85DAC(&v13, "output container is null", 24);
    sub_232C809A4(&v12, a4);
  }

  else
  {
    v12 = 13;
    v9 = sub_232C83BBC(&v13);
    sub_232C85DAC(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v13, "(", 1);
    MEMORY[0x238392A80](&v13, 1061);
    sub_232C85DAC(&v13, ") [", 3);
    sub_232C85DAC(&v13, "normalized", 10);
    sub_232C85DAC(&v13, "] ", 2);
    sub_232C85DAC(&v13, "output container is null", 24);
    sub_232C809A4(&v12, a4);
  }

  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v17);
}

void *sub_232C98DB4@<X0>(_DWORD *a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v15 = a1;
  v16 = a2;
  if (a2 <= 0x13)
  {
    LODWORD(v9) = 13;
    v6 = sub_232C83BBC(&v10);
    sub_232C85DAC(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v10, "(", 1);
    MEMORY[0x238392A80](&v10, 1230);
    sub_232C85DAC(&v10, ") [", 3);
    sub_232C85DAC(&v10, "(size) >= (sizeof(MMapHeader))", 30);
    sub_232C85DAC(&v10, "] ", 2);
    sub_232C809A4(&v9, a3);
  }

  else if (*a1)
  {
    LODWORD(v9) = 13;
    v5 = sub_232C83BBC(&v10);
    sub_232C85DAC(v5, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v10, "(", 1);
    MEMORY[0x238392A80](&v10, 1233);
    sub_232C85DAC(&v10, ") [", 3);
    sub_232C85DAC(&v10, "header->sentinel == 0", 21);
    sub_232C85DAC(&v10, "] ", 2);
    sub_232C85DAC(&v10, "This file format is not for mmap-based loading.", 47);
    sub_232C809A4(&v9, a3);
  }

  else
  {
    result = sub_232CB1748(&v15, 0x14uLL, a3);
    if (*a3)
    {
      return result;
    }

    sub_232CB32BC(a3);
    if (v16 >= a1[1])
    {
      operator new();
    }

    LODWORD(v9) = 13;
    v8 = sub_232C83BBC(&v10);
    sub_232C85DAC(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_232C85DAC(&v10, "(", 1);
    MEMORY[0x238392A80](&v10, 1238);
    sub_232C85DAC(&v10, ") [", 3);
    sub_232C85DAC(&v10, "(blob.size()) >= (header->model_proto_size)", 43);
    sub_232C85DAC(&v10, "] ", 2);
    sub_232C809A4(&v9, a3);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x238392BA0](&v14);
}

void sub_232C99930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232C99A1C(uint64_t a1)
{
  v2 = a1 + 96;
  MEMORY[0x238392920](a1 + 96);
  v3 = *(a1 + 119);
  if (v3 < 0)
  {
    v2 = *(a1 + 96);
    v3 = *(a1 + 104);
  }

  v4 = *(*a1 + 48);

  return v4(a1, v2, v3);
}

void sub_232C99BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C99BE0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  sub_232C9ECDC(a1);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      sub_232C866C0(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__pn_.__r_.__value_.__r.__words[0];
    }

    v9 = open(p_p, 0, __p.__pn_.__r_.__value_.__r.__words[0], __p.__pn_.__r_.__value_.__l.__size_, __p.__pn_.__r_.__value_.__r.__words[2]);
    v10 = v9;
    *(a1 + 24) = v9;
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
    v11 = sub_232C83BBC(&__p.__pn_.__r_.__value_.__l.__size_);
    sub_232C85DAC(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x238392A80](&__p.__pn_.__r_.__value_.__r.__words[1], 66);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(fd = ::open(filename.string().data(), mode)) >= 0", 50);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

LABEL_66:
    sub_232C9EEB4(&__p.__pn_.__r_.__value_.__l.__size_, v13, &v13[v12], 0x22u, 0x5Cu);
    sub_232C809A4(&__p, a4);
    __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
    *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v27);
    std::ostream::~ostream();
    MEMORY[0x238392BA0](v30);
    return;
  }

  sub_232C9ED24(a2, &v32);
  sub_232C9EDEC(a2, &v31);
  std::__fs::filesystem::__status(&v32, 0);
  if (__p.__pn_.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_30;
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_232C866C0(&__p, v32.__pn_.__r_.__value_.__l.__data_, v32.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v32;
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  v15 = open(v14, 0, __p.__pn_.__r_.__value_.__r.__words[0], __p.__pn_.__r_.__value_.__l.__size_, __p.__pn_.__r_.__value_.__r.__words[2]);
  v16 = v15;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
    sub_232C83BBC(&__p.__pn_.__r_.__value_.__l.__size_);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x238392A80](&__p.__pn_.__r_.__value_.__r.__words[1], 59);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "std::filesystem::is_directory(dir) && (dirfd = ::open(dir.string().data(), mode)) >= 0", 86);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
    sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
    size = HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]);
    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v32;
    }

    else
    {
      v18 = v32.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__pn_.__r_.__value_.__l.__size_;
    }

    sub_232C9EEB4(&__p.__pn_.__r_.__value_.__l.__size_, v18, v18 + size, 0x22u, 0x5Cu);
    sub_232C809A4(&__p, a4);
    __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
    *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    goto LABEL_37;
  }

  if (v15 < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_232C866C0(&__p, v31.__pn_.__r_.__value_.__l.__data_, v31.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v31;
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  *(a1 + 24) = openat_authenticated_np(v16, v19, 0, -1);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  close(v16);
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_52:
    if (fstat(*(a1 + 24), &v33) < 0)
    {
      LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
      v22 = sub_232C83BBC(&__p.__pn_.__r_.__value_.__l.__size_);
      sub_232C85DAC(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x238392A80](&__p.__pn_.__r_.__value_.__r.__words[1], 70);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "::fstat(fd, &st) >= 0", 21);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "failed to get file size: ", 25);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    else
    {
      st_size = v33.st_size;
      *(a1 + 16) = v33.st_size;
      v21 = mmap(0, st_size, 1, 1, *(a1 + 24), 0);
      if (v21 != -1)
      {
        *(a1 + 8) = v21;
        close(*(a1 + 24));
        *(a1 + 24) = -1;
        sub_232CB32B4(a4);
        return;
      }

      LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
      v23 = sub_232C83BBC(&__p.__pn_.__r_.__value_.__l.__size_);
      sub_232C85DAC(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x238392A80](&__p.__pn_.__r_.__value_.__r.__words[1], 78);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(p = reinterpret_cast<char*>( ::mmap(0, length, PROT_READ, MAP_SHARED, fd, 0))) != MAP_FAILED", 93);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
      sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "mmap() failed: ", 15);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    goto LABEL_66;
  }

  LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
  sub_232C83BBC(&__p.__pn_.__r_.__value_.__l.__size_);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
  MEMORY[0x238392A80](&__p.__pn_.__r_.__value_.__r.__words[1], 64);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "fd >= 0", 7);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
  sub_232C85DAC(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  sub_232C9EEB4(&__p.__pn_.__r_.__value_.__l.__size_, v25, &v25[v24], 0x22u, 0x5Cu);
  sub_232C809A4(&__p, a4);
  __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x277D82828];
  *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x277D82828] + 24);
  __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(v28);
  }

LABEL_37:
  __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  MEMORY[0x238392BA0](v30);
  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_232C9A554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 217) < 0)
  {
    operator delete(*(v14 - 240));
  }

  if (*(v14 - 193) < 0)
  {
    operator delete(*(v14 - 216));
  }

  _Unwind_Resume(exception_object);
}

void sub_232C9A730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9A74C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 136))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9A7B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C9C22C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9A7C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 144))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9A82C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9A848@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 176))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9A8AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C9C7A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9A8C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 184))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9A928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C9C814(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9A940@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 192))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9A9A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C9C22C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9A9BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 200))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AA20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9AA3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 208))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AAA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C9C868(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9AAB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 216))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C85BE8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232C9AB34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 152))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AB98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9ABB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AC18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C9AC34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 168))(&v3);
  return sub_232CB32BC(&v3);
}

void sub_232C9AC98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_232C9ACB4(uint64_t a1)
{
  v4 = 0.0;
  (*(*a1 + 224))(&v3);
  v1 = v4;
  sub_232CB32BC(&v3);
  return v1;
}

void sub_232C9AD18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = &unk_284814978;
  v12 = 0;
  v13 = 0;
  v11 = sub_232CA6C5C();
  v8 = sub_232C8C130(&v10);
  (*(*a1 + 232))(&v9, a1, a2, a3, v8);
  sub_232CC137C(v11, a4);
  sub_232CB32BC(&v9);
  v10 = &unk_284814978;
  if (v13)
  {
    sub_232C9C8DC(v13);
  }
}

void sub_232C9ADF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_232CB32BC(&a10);
  if (a14)
  {
    sub_232C9C8DC(a14);
  }

  _Unwind_Resume(a1);
}

void sub_232C9AE1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v14 = &unk_284814978;
  v16 = 0;
  v17 = 0;
  v15 = sub_232CA6C5C();
  v12 = sub_232C8C130(&v14);
  (*(*a1 + 248))(&v13, a1, a2, a3, a4, v12, a6);
  sub_232CC137C(v15, a5);
  sub_232CB32BC(&v13);
  v14 = &unk_284814978;
  if (v17)
  {
    sub_232C9C8DC(v17);
  }
}

void sub_232C9AF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_232CB32BC(&a10);
  if (a14)
  {
    sub_232C9C8DC(a14);
  }

  _Unwind_Resume(a1);
}

void sub_232C9AF38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v12[1] = 0;
  v13 = 0;
  v12[0] = &unk_284814998;
  v10 = sub_232C8C250(v12);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v10);
  sub_232C8C2B4(v12, a5);
  sub_232CB32BC(&v11);
  v12[0] = &unk_284814998;
  if (v13)
  {
    sub_232C9C8DC(v13);
  }
}