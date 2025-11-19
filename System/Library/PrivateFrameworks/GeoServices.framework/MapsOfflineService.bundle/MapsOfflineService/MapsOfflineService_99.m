void sub_64E028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    v17 = a1;
    operator delete(__p);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

__int128 *sub_64E090(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5 < *v4)
    {
      *(a1 + 32) = v5 + 1;
      result = *&v4[2 * v5 + 2];
      if (result == a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    operator new();
  }

  *v9 = v8;
  v9[1] = sub_195A650;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_19593CC(a1 + 24, v8);
  if (result != a2)
  {
LABEL_9:
    v10 = *(a2 + 23);
    if (*(result + 23) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 1);
      }

      return sub_13B38(result, v12, v13);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v14 = *a2;
      v15 = *(a2 + 1);

      return sub_13A68(result, v14, v15);
    }

    else
    {
      v11 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v11;
    }
  }

  return result;
}

uint64_t sub_64E1C8(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) |= 2u;
  v4 = *(a2 + 32);
  if (!v4)
  {
    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v4 = sub_14BAF28(*v8);
      *(a2 + 32) = v4;
      v5 = *(a1 + 160);
      if (v5)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v4 = sub_14BAF28(v8);
      *(a2 + 32) = v4;
      v5 = *(a1 + 160);
      if (v5)
      {
        goto LABEL_3;
      }
    }

LABEL_7:
    v6 = 4;
    goto LABEL_8;
  }

  v5 = *(a1 + 160);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = 5;
LABEL_8:
  v4[4] |= 1u;
  v4[12] = v6;
LABEL_9:
  v9 = *(a1 + 164);
  if (v9 == 0x7FFFFFFF)
  {
    *(a2 + 16) |= 1u;
    if (*(a2 + 24))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4[4] |= 2u;
    v4[13] = v9 - 978307200;
    *(a2 + 16) |= 1u;
    if (*(a2 + 24))
    {
LABEL_11:
      v10 = a1;

      return sub_64D110(v10);
    }
  }

  v12 = *(a2 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_14BAE64(v13);
  *(a2 + 24) = v14;
  v10 = a1;

  return sub_64D110(v10);
}

uint64_t sub_64E308(uint64_t *a1, __int128 *a2, _DWORD *a3, uint64_t a4, char a5)
{
  v9 = a5;
  v8 = 2;
  v6 = a1[4];
  if (v6 >= a1[5])
  {
    result = sub_65118C(a1 + 3, a2, &v8, a3, a4, &v9);
    a1[4] = result;
  }

  else
  {
    sub_649CFC(a1[4], a2, 2, a3, a4, a5);
    result = v6 + 144;
    a1[4] = v6 + 144;
    a1[4] = v6 + 144;
  }

  return result;
}

uint64_t sub_64E398(uint64_t *a1, __int128 *a2, void *a3, uint64_t a4, char a5)
{
  v9 = a5;
  v8 = 8;
  v6 = a1[4];
  if (v6 >= a1[5])
  {
    result = sub_651320(a1 + 3, a2, &v8, a3, a4, &v9);
    a1[4] = result;
  }

  else
  {
    sub_649EC8(a1[4], a2, 8, a3, a4, a5);
    result = v6 + 144;
    a1[4] = v6 + 144;
    a1[4] = v6 + 144;
  }

  return result;
}

uint64_t sub_64E428(uint64_t *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v5 = a1[4];
  if (v5 >= a1[5])
  {
    result = sub_6514B4(a1 + 3, a2, a3, a4);
    a1[4] = result;
  }

  else
  {
    v6 = *a3;
    if (*(a2 + 23) < 0)
    {
      v9 = a4;
      sub_325C(a1[4], *a2, *(a2 + 8));
      a4 = v9;
    }

    else
    {
      v7 = *a2;
      *(v5 + 16) = *(a2 + 16);
      *v5 = v7;
    }

    *(v5 + 24) = 1;
    if (v6 < 0)
    {
      v10 = -50;
    }

    else
    {
      v10 = 50;
    }

    *(v5 + 28) = v6 / 100 + ((5243 * (v10 + v6 % 100)) >> 19) + ((5243 * (v10 + v6 % 100)) >> 31);
    *(v5 + 32) = -1;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 84) = 0u;
    *(v5 + 100) = *a4;
    *(v5 + 120) = 0u;
    *(v5 + 104) = 0u;
    *(v5 + 136) = 0x7FFFFFFF;
    result = v5 + 144;
    a1[4] = v5 + 144;
    a1[4] = v5 + 144;
  }

  return result;
}

uint64_t sub_64E558(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    v6 = result;
    v7 = *(a2 + 23);
    v22 = v7;
    v20 = *(a2 + 8);
    v21 = *a2;
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if (v9)
    {
      do
      {
        v13 = *(v3 + 23);
        if ((v13 & 0x80u) == 0)
        {
          v14 = v3;
        }

        else
        {
          v14 = *v3;
        }

        if ((v13 & 0x80u) != 0)
        {
          v13 = *(v3 + 8);
        }

        if (v13 >= v9)
        {
          v15 = v14 + v13;
          v16 = *v8;
          result = v14;
          do
          {
            v17 = v13 - v9;
            if (v17 == -1)
            {
              break;
            }

            result = memchr(result, v16, v17 + 1);
            if (!result)
            {
              break;
            }

            v18 = result;
            result = memcmp(result, v8, v9);
            if (!result)
            {
              if (v18 == v15 || v18 - v14 == -1)
              {
                break;
              }

              goto LABEL_9;
            }

            result = v18 + 1;
            v13 = v15 - (v18 + 1);
          }

          while (v13 >= v9);
        }

        v3 += 24;
      }

      while (v3 != v4);
    }

    else
    {
LABEL_9:
      v24 = 1;
      v10 = v6[4];
      if (v10 >= v6[5])
      {
        result = sub_6514B4(v6 + 3, a2, a3, &v24);
      }

      else
      {
        v11 = *a3;
        if (v22 < 0)
        {
          sub_325C(v6[4], v21, v20);
        }

        else
        {
          v12 = *a2;
          *(v10 + 16) = *(a2 + 16);
          *v10 = v12;
        }

        *(v10 + 24) = 1;
        if (v11 < 0)
        {
          v19 = -50;
        }

        else
        {
          v19 = 50;
        }

        *(v10 + 28) = v11 / 100 + ((5243 * (v19 + v11 % 100)) >> 19) + ((5243 * (v19 + v11 % 100)) >> 31);
        *(v10 + 32) = -1;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 84) = 0u;
        *(v10 + 100) = 1;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0x7FFFFFFF;
        result = v10 + 144;
        v6[4] = v10 + 144;
      }

      v6[4] = result;
    }
  }

  return result;
}

uint64_t sub_64E768(uint64_t result, uint64_t a2, int a3)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    v6 = result;
    v7 = *(a2 + 23);
    v20 = v7;
    v18 = *(a2 + 8);
    v19 = *a2;
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if (v9)
    {
      do
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
          v12 = *(v3 + 8);
        }

        if (v12 >= v9)
        {
          v14 = v13 + v12;
          v15 = *v8;
          result = v13;
          do
          {
            v16 = v12 - v9;
            if (v16 == -1)
            {
              break;
            }

            result = memchr(result, v15, v16 + 1);
            if (!result)
            {
              break;
            }

            v17 = result;
            result = memcmp(result, v8, v9);
            if (!result)
            {
              if (v17 == v14 || v17 - v13 == -1)
              {
                break;
              }

              goto LABEL_9;
            }

            result = v17 + 1;
            v12 = v14 - (v17 + 1);
          }

          while (v12 >= v9);
        }

        v3 += 24;
      }

      while (v3 != v4);
    }

    else
    {
LABEL_9:
      v22 = a3;
      v10 = v6[4];
      if (v10 >= v6[5])
      {
        result = sub_6516E0(v6 + 3, a2, &v22);
      }

      else
      {
        if (v20 < 0)
        {
          sub_325C(v6[4], v19, v18);
        }

        else
        {
          v11 = *a2;
          *(v10 + 16) = *(a2 + 16);
          *v10 = v11;
        }

        *(v10 + 24) = 0;
        *(v10 + 28) = a3;
        *(v10 + 32) = -1;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 84) = 0u;
        *(v10 + 100) = 1;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0x7FFFFFFF;
        result = v10 + 144;
        v6[4] = v10 + 144;
      }

      v6[4] = result;
    }
  }

  return result;
}

uint64_t sub_64E914(uint64_t *a1, uint64_t a2, int a3)
{
  v10 = a3;
  v9 = 3;
  v4 = a1[4];
  if (v4 >= a1[5])
  {
    result = sub_6518AC(a1 + 3, a2, &v9, &v10);
    a1[4] = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v7 = a3;
      sub_325C(a1[4], *a2, *(a2 + 8));
      a3 = v7;
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 16);
      *v4 = v5;
    }

    *(v4 + 24) = 3;
    if (a3 < 0)
    {
      v8 = -5;
    }

    else
    {
      v8 = 5;
    }

    *(v4 + 28) = a3 / 10 + (((103 * (v8 + a3 % 10)) >> 15) & 1) + ((103 * (v8 + a3 % 10)) >> 10);
    *(v4 + 32) = -1;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 84) = 0u;
    *(v4 + 100) = 1;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0x7FFFFFFF;
    result = v4 + 144;
    a1[4] = v4 + 144;
    a1[4] = v4 + 144;
  }

  return result;
}

uint64_t sub_64EA58(uint64_t *a1, uint64_t a2, int a3)
{
  v10 = a3;
  v9 = 4;
  v4 = a1[4];
  if (v4 >= a1[5])
  {
    result = sub_6518AC(a1 + 3, a2, &v9, &v10);
    a1[4] = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v7 = a3;
      sub_325C(a1[4], *a2, *(a2 + 8));
      a3 = v7;
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 16);
      *v4 = v5;
    }

    *(v4 + 24) = 4;
    if (a3 < 0)
    {
      v8 = -5;
    }

    else
    {
      v8 = 5;
    }

    *(v4 + 28) = a3 / 10 + (((103 * (v8 + a3 % 10)) >> 15) & 1) + ((103 * (v8 + a3 % 10)) >> 10);
    *(v4 + 32) = -1;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 84) = 0u;
    *(v4 + 100) = 1;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0x7FFFFFFF;
    result = v4 + 144;
    a1[4] = v4 + 144;
    a1[4] = v4 + 144;
  }

  return result;
}

uint64_t sub_64EB9C(uint64_t result, uint64_t a2, int a3)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    v6 = result;
    v7 = *(a2 + 23);
    v21 = v7;
    v19 = *(a2 + 8);
    v20 = *a2;
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if (v9)
    {
      do
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
          v12 = *(v3 + 8);
        }

        if (v12 >= v9)
        {
          v14 = v13 + v12;
          v15 = *v8;
          result = v13;
          do
          {
            v16 = v12 - v9;
            if (v16 == -1)
            {
              break;
            }

            result = memchr(result, v15, v16 + 1);
            if (!result)
            {
              break;
            }

            v17 = result;
            result = memcmp(result, v8, v9);
            if (!result)
            {
              if (v17 == v14 || v17 - v13 == -1)
              {
                break;
              }

              goto LABEL_9;
            }

            result = v17 + 1;
            v12 = v14 - (v17 + 1);
          }

          while (v12 >= v9);
        }

        v3 += 24;
      }

      while (v3 != v4);
    }

    else
    {
LABEL_9:
      v24 = a3;
      v23 = 3;
      v10 = v6[4];
      if (v10 >= v6[5])
      {
        result = sub_6518AC(v6 + 3, a2, &v23, &v24);
      }

      else
      {
        if (v21 < 0)
        {
          sub_325C(v6[4], v20, v19);
        }

        else
        {
          v11 = *a2;
          *(v10 + 16) = *(a2 + 16);
          *v10 = v11;
        }

        *(v10 + 24) = 3;
        if (a3 < 0)
        {
          v18 = -5;
        }

        else
        {
          v18 = 5;
        }

        *(v10 + 28) = a3 / 10 + (((103 * (v18 + a3 % 10)) >> 15) & 1) + ((103 * (v18 + a3 % 10)) >> 10);
        *(v10 + 32) = -1;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 84) = 0u;
        *(v10 + 100) = 1;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0x7FFFFFFF;
        result = v10 + 144;
        v6[4] = v10 + 144;
      }

      v6[4] = result;
    }
  }

  return result;
}

uint64_t sub_64EDA4(uint64_t result, uint64_t a2, int a3)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    v6 = result;
    v7 = *(a2 + 23);
    v21 = v7;
    v19 = *(a2 + 8);
    v20 = *a2;
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if (v9)
    {
      do
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
          v12 = *(v3 + 8);
        }

        if (v12 >= v9)
        {
          v14 = v13 + v12;
          v15 = *v8;
          result = v13;
          do
          {
            v16 = v12 - v9;
            if (v16 == -1)
            {
              break;
            }

            result = memchr(result, v15, v16 + 1);
            if (!result)
            {
              break;
            }

            v17 = result;
            result = memcmp(result, v8, v9);
            if (!result)
            {
              if (v17 == v14 || v17 - v13 == -1)
              {
                break;
              }

              goto LABEL_9;
            }

            result = v17 + 1;
            v12 = v14 - (v17 + 1);
          }

          while (v12 >= v9);
        }

        v3 += 24;
      }

      while (v3 != v4);
    }

    else
    {
LABEL_9:
      v24 = a3;
      v23 = 4;
      v10 = v6[4];
      if (v10 >= v6[5])
      {
        result = sub_6518AC(v6 + 3, a2, &v23, &v24);
      }

      else
      {
        if (v21 < 0)
        {
          sub_325C(v6[4], v20, v19);
        }

        else
        {
          v11 = *a2;
          *(v10 + 16) = *(a2 + 16);
          *v10 = v11;
        }

        *(v10 + 24) = 4;
        if (a3 < 0)
        {
          v18 = -5;
        }

        else
        {
          v18 = 5;
        }

        *(v10 + 28) = a3 / 10 + (((103 * (v18 + a3 % 10)) >> 15) & 1) + ((103 * (v18 + a3 % 10)) >> 10);
        *(v10 + 32) = -1;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 84) = 0u;
        *(v10 + 100) = 1;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0x7FFFFFFF;
        result = v10 + 144;
        v6[4] = v10 + 144;
      }

      v6[4] = result;
    }
  }

  return result;
}

void sub_64EFAC(void *a1, __int128 *a2)
{
  if (a1[4] < a1[5])
  {
    sub_64A7E4(a1[4], a2);
  }

  sub_651ACC(a1 + 3, a2);
}

uint64_t sub_64F00C(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 24);
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_4:
    v3 = *a1;
    if (*a1)
    {
      goto LABEL_5;
    }

    return a1;
  }

LABEL_9:
  v5 = *(a1 + 32);
  if (v5 == v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
    v3 = *a1;
    if (!*a1)
    {
      return a1;
    }

    goto LABEL_5;
  }

  do
  {
    v6 = *(v5 - 9);
    v5 -= 4;
    if (v6 < 0)
    {
      operator delete(*v5);
    }
  }

  while (v5 != v2);
  v7 = *(a1 + 24);
  *(a1 + 32) = v2;
  operator delete(v7);
  v3 = *a1;
  if (*a1)
  {
LABEL_5:
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_64F0DC(uint64_t a1, uint64_t a2, void *a3, void *a4, __int128 *a5, __int128 *a6, int a7, const void **a8)
{
  LOBYTE(__p) = 0;
  sub_64C770(a1, a2, a8, a7, &__p);
  sub_64AB44(&__p, a3, a4, a5, a6);
  v14 = *(a1 + 32);
  if (v14 < *(a1 + 40))
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 32), *a2, *(a2 + 8));
    }

    else
    {
      v15 = *a2;
      *(v14 + 16) = *(a2 + 16);
      *v14 = v15;
    }

    *(v14 + 24) = 11;
    *(v14 + 28) = -1;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    operator new();
  }

  sub_651C40((a1 + 24), a2);
}

void sub_64F2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 32) = v10;
  sub_64F00C(&a9);
  _Unwind_Resume(a1);
}

void sub_64F2E8(uint64_t a1, uint64_t a2, int a3)
{
  sub_55BD50(v4, a2);
  v5 = 0;
  v6 = a3;
  sub_64F334();
}

void sub_64F438(uint64_t a1, uint64_t a2)
{
  sub_55BD50(v2, a2);
  v3 = 0x7FFFFFFF00000001;
  sub_64F334();
}

void sub_64F488(uint64_t a1, uint64_t a2)
{
  v5 = -16711169;
  sub_64BB54(v2, a2, &v5);
  sub_55BD50(v3, v2);
  v4 = 0x7FFFFFFF00000001;
  sub_64F334();
}

uint64_t sub_64F510(uint64_t *a1, uint64_t a2, float a3)
{
  v9 = 12;
  v8 = a3;
  v4 = a1[4];
  if (v4 >= a1[5])
  {
    result = sub_5C3E64(a1 + 3, a2, &v9, &v8);
    a1[4] = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v7 = a3;
      sub_325C(a1[4], *a2, *(a2 + 8));
      a3 = v7;
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 16);
      *v4 = v5;
    }

    *(v4 + 24) = 12;
    *(v4 + 28) = -1;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0;
    *(v4 + 96) = a3;
    *(v4 + 100) = 1;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0x7FFFFFFF;
    result = v4 + 144;
    a1[4] = v4 + 144;
    a1[4] = v4 + 144;
  }

  return result;
}

uint64_t sub_64F608(uint64_t *a1, uint64_t a2, float a3)
{
  v9 = 15;
  v8 = a3;
  v4 = a1[4];
  if (v4 >= a1[5])
  {
    result = sub_5C3E64(a1 + 3, a2, &v9, &v8);
    a1[4] = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v7 = a3;
      sub_325C(a1[4], *a2, *(a2 + 8));
      a3 = v7;
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 16);
      *v4 = v5;
    }

    *(v4 + 24) = 15;
    *(v4 + 28) = -1;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0;
    *(v4 + 96) = a3;
    *(v4 + 100) = 1;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0x7FFFFFFF;
    result = v4 + 144;
    a1[4] = v4 + 144;
    a1[4] = v4 + 144;
  }

  return result;
}

void sub_64F700(void *a1, __int128 *a2)
{
  if (a1[4] < a1[5])
  {
    sub_64A8E0(a1[4], a2);
  }

  sub_651E34(a1 + 3, a2);
}

void sub_64F760(void *a1, __int128 *a2)
{
  if (a1[4] < a1[5])
  {
    sub_64AA10(a1[4], a2);
  }

  sub_651FA8(a1 + 3, a2);
}

uint64_t sub_64F7C0(uint64_t a1, const void **__s2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    return 0;
  }

  if (*(__s2 + 23) >= 0)
  {
    v5 = *(__s2 + 23);
  }

  else
  {
    v5 = __s2[1];
  }

  if ((*(__s2 + 23) & 0x80) != 0)
  {
    v6 = *__s2;
    while (1)
    {
      v11 = *(v2 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v2 + 8);
      }

      if (v11 == v5)
      {
        v13 = v12 >= 0 ? v2 : *v2;
        if (!memcmp(v13, v6, v5))
        {
          break;
        }
      }

      v2 += 144;
      if (v2 == v3)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 == v5)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(v9, __s2, v5))
        {
          break;
        }
      }

      v2 += 144;
      if (v2 == v3)
      {
        return 0;
      }
    }

    return 1;
  }
}

uint64_t sub_64F8CC(uint64_t a1, const void **__s2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v2 == v3)
  {
    return 0;
  }

  if (*(__s2 + 23) >= 0)
  {
    v5 = *(__s2 + 23);
  }

  else
  {
    v5 = __s2[1];
  }

  if ((*(__s2 + 23) & 0x80) != 0)
  {
    v11 = *__s2;
    v12 = *(__s2 + 24);
    while (1)
    {
      v13 = *(v2 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v2 + 8);
      }

      if (v13 == v5)
      {
        v15 = v14 >= 0 ? v2 : *v2;
        if (!memcmp(v15, v11, v5) && *(v2 + 24) == v12)
        {
          break;
        }
      }

      v2 += 32;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  else
  {
    v6 = *(__s2 + 24);
    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 == v5)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(v9, __s2, v5) && *(v2 + 24) == v6)
        {
          break;
        }
      }

      v2 += 32;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_64FA0C(char ***a1, char *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = a2[23];
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
      v6 = a2[23];
    }

    else
    {
      v6 = *(a2 + 1);
    }

    if (!v6)
    {
      return 1;
    }

    do
    {
      v8 = *(v2 + 23);
      if (v8 >= 0)
      {
        v9 = v2;
      }

      else
      {
        v9 = *v2;
      }

      if (v8 < 0)
      {
        v8 = v2[1];
      }

      if (v8 >= v6)
      {
        v10 = &v8[v9];
        v11 = *v5;
        v12 = v9;
        do
        {
          v13 = &v8[-v6];
          if (v13 == -1)
          {
            break;
          }

          v14 = memchr(v12, v11, (v13 + 1));
          if (!v14)
          {
            break;
          }

          v15 = v14;
          if (!memcmp(v14, v5, v6))
          {
            if (v15 == v10 || v15 - v9 == -1)
            {
              break;
            }

            return 1;
          }

          v12 = v15 + 1;
          v8 = (v10 - (v15 + 1));
        }

        while (v8 >= v6);
      }

      v2 += 3;
    }

    while (v2 != v3);
  }

  return 0;
}

_BYTE *sub_64FB18(char *a1, void *a2, const void **a3)
{
  v5 = (a1 + 112);
  if (v5 == a2)
  {
    goto LABEL_10;
  }

  if (a1[135] < 0)
  {
    v8 = a2[1];
    if (*(a2 + 23) >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v9 = v8;
    }

    sub_13B38(v5, a2, v9);
LABEL_10:
    result = a1 + 136;
    if (a1 + 136 == a3)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    sub_13A68(v5, *a2, a2[1]);
    result = a1 + 136;
    if (a1 + 136 == a3)
    {
      return result;
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = a2[2];
    *v5 = v6;
    result = a1 + 136;
    if (a1 + 136 == a3)
    {
      return result;
    }
  }

LABEL_11:
  v10 = *(a3 + 23);
  if (a1[159] < 0)
  {
    if (v10 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (v10 >= 0)
    {
      v13 = *(a3 + 23);
    }

    else
    {
      v13 = a3[1];
    }

    return sub_13B38(result, v12, v13);
  }

  else if ((*(a3 + 23) & 0x80) != 0)
  {
    v14 = *a3;
    v15 = a3[1];

    return sub_13A68(result, v14, v15);
  }

  else
  {
    v11 = *a3;
    *(result + 2) = a3[2];
    *result = v11;
  }

  return result;
}

void sub_64FC28(uint64_t a1, char *a2, const void **a3, char a4, _BYTE *a5)
{
  if (*(a1 + 108) != 1)
  {
    return;
  }

  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v7 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v10 = *(a1 + 8);
  if (v7 + 3 >= 0x17)
  {
    operator new();
  }

  v64.__r_.__value_.__r.__words[2] = 0;
  *&v64.__r_.__value_.__l.__data_ = 0x3A737BuLL;
  *(&v64.__r_.__value_.__s + 23) = v7 + 3;
  if (v7)
  {
    if ((v6 & 0x80u) == 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    memmove(v64.__r_.__value_.__r.__words + 3, v11, v7);
  }

  *(v64.__r_.__value_.__r.__words + v7 + 3) = 0;
  size = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v64.__r_.__value_.__l.__size_;
    v14 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v14 == v64.__r_.__value_.__l.__size_)
    {
      if ((v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

LABEL_18:
      operator new();
    }

    v13 = v64.__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = &v64;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) == 22)
    {
      goto LABEL_18;
    }
  }

  v13->__r_.__value_.__s.__data_[size] = 125;
  v15 = size + 1;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    v64.__r_.__value_.__l.__size_ = v15;
  }

  else
  {
    *(&v64.__r_.__value_.__s + 23) = v15 & 0x7F;
  }

  v13->__r_.__value_.__s.__data_[v15] = 0;
  v65 = v64;
  memset(&v64, 0, sizeof(v64));
  v16 = a2[23];
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = a2[23];
  }

  else
  {
    v18 = *(a2 + 1);
  }

  v19 = std::string::append(&v65, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v22 = __p.__r_.__value_.__l.__size_;
    v23 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v23 - __p.__r_.__value_.__l.__size_ < 4)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 4 - v23)
      {
        sub_3244();
      }

LABEL_34:
      operator new();
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_) = 980627323;
    v25 = v22 + 4;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 19) < 4)
    {
      goto LABEL_34;
    }

    p_p = &__p;
    *(&__p.__r_.__value_.__l.__data_ + SHIBYTE(__p.__r_.__value_.__r.__words[2])) = 980627323;
    v25 = v21 + 4;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_36:
      *(&__p.__r_.__value_.__s + 23) = v25 & 0x7F;
      goto LABEL_39;
    }
  }

  __p.__r_.__value_.__l.__size_ = v25;
LABEL_39:
  p_p->__r_.__value_.__s.__data_[v25] = 0;
  v67 = __p;
  memset(&__p, 0, sizeof(__p));
  v26 = *(a3 + 23);
  if (v26 >= 0)
  {
    v27 = a3;
  }

  else
  {
    v27 = *a3;
  }

  if (v26 >= 0)
  {
    v28 = *(a3 + 23);
  }

  else
  {
    v28 = a3[1];
  }

  v29 = std::string::append(&v67, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v60 = v29->__r_.__value_.__r.__words[2];
  *__s2 = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = SHIBYTE(v60);
  if ((SHIBYTE(v60) & 0x8000000000000000) != 0)
  {
    v31 = __s2[1];
    v33 = ((v60 & 0x7FFFFFFFFFFFFFFFLL) - 1);
    if (v33 == __s2[1])
    {
      if ((v60 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

LABEL_50:
      operator new();
    }

    v32 = __s2[0];
  }

  else
  {
    v32 = __s2;
    if (SHIBYTE(v60) == 22)
    {
      goto LABEL_50;
    }
  }

  *(v31 + v32) = 125;
  v34 = v31 + 1;
  if (SHIBYTE(v60) < 0)
  {
    __s2[1] = v34;
  }

  else
  {
    HIBYTE(v60) = v34 & 0x7F;
  }

  *(v34 + v32) = 0;
  *v62 = *__s2;
  v63 = v60;
  __s2[1] = 0;
  v60 = 0;
  __s2[0] = 0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_75:
      operator delete(v65.__r_.__value_.__l.__data_);
      v35 = (v10 - 24);
      if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

LABEL_76:
      operator delete(v64.__r_.__value_.__l.__data_);
      goto LABEL_59;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_75;
  }

LABEL_58:
  v35 = (v10 - 24);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_76;
  }

LABEL_59:
  v36 = *(v10 - 1);
  v37 = *(v10 - 16);
  if ((v36 & 0x80u) == 0)
  {
    v38 = v35;
  }

  else
  {
    v38 = *(v10 - 24);
  }

  if ((v36 & 0x80u) != 0)
  {
    v36 = v37;
  }

  v39 = a2[23];
  if (v39 >= 0)
  {
    v40 = a2;
  }

  else
  {
    v40 = *a2;
  }

  if (v39 >= 0)
  {
    v41 = a2[23];
  }

  else
  {
    v41 = *(a2 + 1);
  }

  if (v41)
  {
    if (v36 >= v41)
    {
      v47 = v38 + v36;
      v48 = *v40;
      v49 = v38;
      do
      {
        v50 = v36 - v41;
        if (v50 == -1)
        {
          break;
        }

        v51 = memchr(v49, v48, v50 + 1);
        if (!v51)
        {
          break;
        }

        v52 = v51;
        if (!memcmp(v51, v40, v41))
        {
          v42 = 0;
          if (v52 == v47)
          {
            v43 = a5;
            goto LABEL_85;
          }

          v44 = v52 - v38;
          v56 = v52 - v38 == -1;
          v43 = a5;
          if (v56)
          {
            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v49 = (v52 + 1);
        v36 = v47 - (v52 + 1);
      }

      while (v36 >= v41);
    }

    v42 = 0;
    v43 = a5;
  }

  else
  {
    v44 = 0;
    v43 = a5;
LABEL_78:
    if (v63 >= 0)
    {
      v45 = v62;
    }

    else
    {
      v45 = v62[0];
    }

    if (v63 >= 0)
    {
      v46 = HIBYTE(v63);
    }

    else
    {
      v46 = v62[1];
    }

    std::string::replace(v35, v44, v41, v45, v46);
    v42 = 1;
  }

LABEL_85:
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  else if ((v42 & 1) == 0)
  {
    return;
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C(__s2, *a3, a3[1]);
  }

  else
  {
    *__s2 = *a3;
    v60 = a3[2];
  }

  LOBYTE(v61) = a4;
  HIBYTE(v61) = *v43;
  if ((sub_64F8CC(a1, __s2) & 1) == 0)
  {
    v53 = *(a1 + 80);
    if (v53 >= *(a1 + 88))
    {
      v55 = sub_65211C((a1 + 72), __s2);
    }

    else
    {
      if (SHIBYTE(v60) < 0)
      {
        sub_325C(*(a1 + 80), __s2[0], __s2[1]);
      }

      else
      {
        v54 = *__s2;
        *(v53 + 16) = v60;
        *v53 = v54;
      }

      *(v53 + 24) = v61;
      v55 = v53 + 32;
      *(a1 + 80) = v53 + 32;
    }

    *(a1 + 80) = v55;
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(__s2[0]);
  }
}

void sub_6503C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  *(v42 + 80) = v43;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6504AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    JUMPOUT(0x65043CLL);
  }

  JUMPOUT(0x650494);
}

uint64_t sub_6504BC(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_55BD50(a1, a2);
  *(result + 160) = a3;
  return result;
}

uint64_t sub_6504E4(uint64_t *a1, _DWORD *a2, uint64_t a3, char *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v4 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * ((a1[1] - *a1) >> 3);
  v19 = v7;
  v8 = *a4;
  *v7 = *a2;
  v9 = (v7 + 8);
  if (*(a3 + 23) < 0)
  {
    sub_325C(v9, *a3, *(a3 + 8));
    *(v7 + 32) = v8;
    v11 = v7 + 40;
    v12 = *a1;
    v13 = a1[1];
    v14 = v19 + *a1 - v13;
    if (*a1 == v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v9 = *a3;
    *(v7 + 24) = *(a3 + 16);
    v10 = v7;
    *(v7 + 32) = v8;
    v11 = v7 + 40;
    v12 = *a1;
    v13 = a1[1];
    v14 = v10 + *a1 - v13;
    if (*a1 == v13)
    {
      goto LABEL_21;
    }
  }

  v15 = v12;
  v16 = v14;
  do
  {
    *v16 = *v15;
    v17 = *(v15 + 8);
    *(v16 + 24) = *(v15 + 24);
    *(v16 + 8) = v17;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 8) = 0;
    *(v16 + 32) = *(v15 + 32);
    v15 += 40;
    v16 += 40;
  }

  while (v15 != v13);
  do
  {
    if (*(v12 + 31) < 0)
    {
      operator delete(*(v12 + 8));
    }

    v12 += 40;
  }

  while (v12 != v13);
  v12 = *a1;
LABEL_21:
  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_6506C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C5440(va);
  _Unwind_Resume(a1);
}

void sub_6506D8(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

uint64_t sub_650710(uint64_t *a1, uint64_t a2, char *a3, int *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v7 = 0x1C71C71C71C71C7;
  }

  else
  {
    v7 = v5;
  }

  v20 = a1;
  if (v7)
  {
    if (v7 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 144 * v4;
  __p = 0;
  v17 = v8;
  v18 = v8;
  v19 = 0;
  v9 = *a3;
  v10 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
    v11 = v18;
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
    v11 = v8;
  }

  *(v8 + 24) = v9;
  *(v8 + 28) = v10;
  *(v8 + 32) = -1;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 84) = 0u;
  *(v8 + 100) = 1;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0x7FFFFFFF;
  v18 = v11 + 144;
  sub_5C3FE0(a1, &__p);
  v12 = a1[1];
  v14 = v17;
  for (i = v18; v18 != v14; i = v18)
  {
    v18 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_6508D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6508E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_53F320(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_650938(uint64_t *a1, uint64_t a2, char *a3, int *a4, int *a5)
{
  v5 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v8 = 0x1C71C71C71C71C7;
  }

  else
  {
    v8 = v6;
  }

  v22 = a1;
  if (v8)
  {
    if (v8 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = 144 * v5;
  __p = 0;
  v19 = v9;
  v20 = v9;
  v21 = 0;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v9, *a2, *(a2 + 8));
    v13 = v20;
  }

  else
  {
    *v9 = *a2;
    *(v9 + 16) = *(a2 + 16);
    v13 = v9;
  }

  *(v9 + 24) = v10;
  *(v9 + 28) = v11;
  *(v9 + 32) = v12;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 1;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0x7FFFFFFF;
  v20 = v13 + 144;
  sub_5C3FE0(a1, &__p);
  v14 = a1[1];
  v16 = v19;
  for (i = v20; v20 != v16; i = v20)
  {
    v20 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_650B04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_650B18(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 144 * v2;
  v13 = 0;
  sub_55C01C(144 * v2, a2);
  v12 = 144 * v2 + 144;
  sub_5C3FE0(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_650C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_650C7C(void *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
    {
      v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v4 = 0x1C71C71C71C71C7;
    }

    else
    {
      v4 = v3;
    }

    v7 = a1;
    if (v4)
    {
      if (v4 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v5 = 144 * v2;
    v6 = 0;
    sub_64A0C8(144 * v2, a2);
  }

  sub_1794();
}

void sub_650DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_650DF0(void *a1, __int128 *a2, unsigned int *a3, __int128 *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v4 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v4)
    {
      v4 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v5 = 0x1C71C71C71C71C7;
    }

    else
    {
      v5 = v4;
    }

    if (v5)
    {
      if (v5 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    sub_64A368(16 * ((a1[1] - *a1) >> 4), a2, *a3, a4);
  }

  sub_1794();
}

void sub_650F68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_650F7C(void *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v2)
    {
      v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v3 = 0x1C71C71C71C71C7;
    }

    else
    {
      v3 = v2;
    }

    if (v3)
    {
      if (v3 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v4 = 16 * ((a1[1] - *a1) >> 4);
    if (*(a2 + 23) < 0)
    {
      sub_325C(v4, *a2, *(a2 + 8));
    }

    else
    {
      *v4 = *a2;
      *(v4 + 16) = *(a2 + 16);
    }

    *(v4 + 24) = 9;
    *(v4 + 28) = -1;
    operator new();
  }

  sub_1794();
}

void sub_651174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_65118C(uint64_t *a1, __int128 *a2, char *a3, _DWORD *a4, uint64_t a5, char *a6)
{
  v6 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v7)
  {
    v7 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v9 = 0x1C71C71C71C71C7;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 144 * v6;
  v16 = 144 * v6;
  v17 = 0;
  sub_649CFC(144 * v6, a2, *a3, a4, a5, *a6);
  v16 = 144 * v6 + 144;
  sub_5C3FE0(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_65130C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_651320(uint64_t *a1, __int128 *a2, char *a3, void *a4, uint64_t a5, char *a6)
{
  v6 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v7)
  {
    v7 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v9 = 0x1C71C71C71C71C7;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 144 * v6;
  v16 = 144 * v6;
  v17 = 0;
  sub_649EC8(144 * v6, a2, *a3, a4, a5, *a6);
  v16 = 144 * v6 + 144;
  sub_5C3FE0(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_6514A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6514B4(uint64_t *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v8 = 0x1C71C71C71C71C7;
  }

  else
  {
    v8 = v5;
  }

  v21 = a1;
  if (v8)
  {
    if (v8 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = 144 * v4;
  __p = 0;
  v18 = v9;
  v19 = v9;
  v20 = 0;
  v10 = *a3;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v9, *a2, *(a2 + 8));
    v11 = v19;
  }

  else
  {
    *v9 = *a2;
    *(v9 + 16) = *(a2 + 16);
    v11 = v9;
  }

  *(v9 + 24) = 1;
  if (v10 < 0)
  {
    v12 = -50;
  }

  else
  {
    v12 = 50;
  }

  *(v9 + 28) = v10 / 100 + ((5243 * (v12 + v10 % 100)) >> 19) + ((5243 * (v12 + v10 % 100)) >> 31);
  *(v9 + 32) = -1;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = *a4;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0x7FFFFFFF;
  v19 = v11 + 144;
  sub_5C3FE0(a1, &__p);
  v13 = a1[1];
  v15 = v18;
  for (i = v19; v19 != v15; i = v19)
  {
    v19 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v13;
}

void sub_6516CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6516E0(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v4;
  }

  v18 = a1;
  if (v6)
  {
    if (v6 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 144 * v3;
  __p = 0;
  v15 = v7;
  v16 = v7;
  v17 = 0;
  v8 = *a3;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
    v9 = v16;
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
    v9 = v7;
  }

  *(v7 + 24) = 0;
  *(v7 + 28) = v8;
  *(v7 + 32) = -1;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 84) = 0u;
  *(v7 + 100) = 1;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0x7FFFFFFF;
  v16 = v9 + 144;
  sub_5C3FE0(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_651898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6518AC(uint64_t *a1, uint64_t a2, char *a3, int *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v7 = 0x1C71C71C71C71C7;
  }

  else
  {
    v7 = v5;
  }

  v21 = a1;
  if (v7)
  {
    if (v7 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 144 * v4;
  __p = 0;
  v18 = v8;
  v19 = v8;
  v20 = 0;
  v9 = *a3;
  v10 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
    v11 = v19;
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
    v11 = v8;
  }

  *(v8 + 24) = v9;
  if (v10 < 0)
  {
    v12 = -5;
  }

  else
  {
    v12 = 5;
  }

  *(v8 + 28) = v10 / 10 + (((103 * (v12 + v10 % 10)) >> 15) & 1) + ((103 * (v12 + v10 % 10)) >> 10);
  *(v8 + 32) = -1;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 84) = 0u;
  *(v8 + 100) = 1;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0x7FFFFFFF;
  v19 = v11 + 144;
  sub_5C3FE0(a1, &__p);
  v13 = a1[1];
  v15 = v18;
  for (i = v19; v19 != v15; i = v19)
  {
    v19 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v13;
}

void sub_651AB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_651ACC(void *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
    {
      v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v4 = 0x1C71C71C71C71C7;
    }

    else
    {
      v4 = v3;
    }

    v7 = a1;
    if (v4)
    {
      if (v4 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v5 = 144 * v2;
    v6 = 0;
    sub_64A7E4(144 * v2, a2);
  }

  sub_1794();
}

void sub_651C2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_651C40(void *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v2)
    {
      v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v3 = 0x1C71C71C71C71C7;
    }

    else
    {
      v3 = v2;
    }

    if (v3)
    {
      if (v3 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v4 = 16 * ((a1[1] - *a1) >> 4);
    if (*(a2 + 23) < 0)
    {
      sub_325C(v4, *a2, *(a2 + 8));
    }

    else
    {
      *v4 = *a2;
      *(v4 + 16) = *(a2 + 16);
    }

    *(v4 + 24) = 11;
    *(v4 + 28) = -1;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    operator new();
  }

  sub_1794();
}

void sub_651E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_651E34(void *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
    {
      v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v4 = 0x1C71C71C71C71C7;
    }

    else
    {
      v4 = v3;
    }

    v7 = a1;
    if (v4)
    {
      if (v4 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v5 = 144 * v2;
    v6 = 0;
    sub_64A8E0(144 * v2, a2);
  }

  sub_1794();
}

void sub_651F94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_651FA8(void *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
    {
      v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v4 = 0x1C71C71C71C71C7;
    }

    else
    {
      v4 = v3;
    }

    v7 = a1;
    if (v4)
    {
      if (v4 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v5 = 144 * v2;
    v6 = 0;
    sub_64AA10(144 * v2, a2);
  }

  sub_1794();
}

void sub_652108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_65211C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
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

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 32 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  v9 = v8;
  *(v8 + 24) = *(a2 + 24);
  v10 = v8 + 32;
  v11 = *a1;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      *(v15 + 24) = *(v14 + 12);
      v14 += 2;
      v15 += 32;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v11 += 32;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_6522BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4BB0B8(va);
  _Unwind_Resume(a1);
}

void sub_65533C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_36:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_37:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_38:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_39:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_40:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_41:
                if (a72 < 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_44;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
LABEL_42:
                operator delete(a69);
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_43;
                }

                goto LABEL_45;
              }

LABEL_44:
              if ((a68 & 0x80000000) == 0)
              {
LABEL_43:
                _Unwind_Resume(a1);
              }

LABEL_45:
              operator delete(a63);
              _Unwind_Resume(a1);
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_36;
  }

  goto LABEL_29;
}

void sub_6555D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = nullsub_1(a3);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 != v7)
  {
    do
    {
      sub_655638(a1, a2, v6);
      v6 += 1582;
    }

    while (v6 != v7);
  }
}

void sub_655638(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[942];
  v7 = a3[943];
  while (v6 != v7)
  {
    v8 = sub_681D38(v6);
    sub_65576C(a1, a2, v8, &__p);
    sub_681CEC(v6, &__p);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    v6 += 448;
  }

  v9 = a3[138];
  v10 = a3[139];
  while (v9 != v10)
  {
    v11 = *(v9 + 1912);
    v12 = *(v9 + 1920);
    while (v11 != v12)
    {
      v13 = sub_681D38(v11);
      sub_65576C(a1, a2, v13, &__p);
      sub_681CEC(v11, &__p);
      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      v11 += 448;
    }

    v9 += 2616;
  }
}

void sub_655738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_65576C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 < 0x4B)
  {
    goto LABEL_2;
  }

  if (a3 > 85)
  {
    if ((a3 - 86) <= 3)
    {
LABEL_2:
      v7 = 0;
      sub_DD38(a4, &v7);
    }
  }

  else
  {
    if ((a3 - 77) < 9)
    {
      v7 = 1;
      sub_DD38(a4, &v7);
      v7 = 0;
      sub_DD38(a4, &v7);
      return;
    }

    if (a3 == 75)
    {
      if (*(a2 + 2422) == 1)
      {
        v5 = a1;
        v6 = a2;
        v7 = 0;
        sub_DD38(a4, &v7);
        a2 = v6;
        a1 = v5;
      }

      if (*(*a1 + 1527) == 1 && *(a2 + 2421) == 1)
      {
        goto LABEL_11;
      }
    }

    else if (a3 == 76)
    {
LABEL_11:
      v7 = 1;
      sub_DD38(a4, &v7);
    }
  }
}

void sub_65588C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_6558BC()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_279D748 = 0u;
  unk_279D758 = 0u;
  dword_279D768 = 1065353216;
  sub_3A9A34(&xmmword_279D748, v0);
  sub_3A9A34(&xmmword_279D748, v3);
  sub_3A9A34(&xmmword_279D748, __p);
  sub_3A9A34(&xmmword_279D748, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_279D720 = 0;
    qword_279D728 = 0;
    qword_279D718 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_655B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_279D730)
  {
    qword_279D738 = qword_279D730;
    operator delete(qword_279D730);
  }

  _Unwind_Resume(exception_object);
}

void sub_655BB0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = (**a1 + 704 * *(a1 + 8));
  sub_737E50(v7 + 72, a3 + 968, &v41);
  sub_737E50(v7 + 65, a3 + 968, &v39);
  sub_737E50(v7 + 68, a3 + 968, &v37);
  if (SHIBYTE(v40) < 0)
  {
    sub_325C(v15, v39, *(&v39 + 1));
  }

  else
  {
    *v15 = v39;
    v16 = v40;
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v18 = v38;
  }

  sub_6585C0(a4, (v7 + 64), &v41, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v15[0]);
LABEL_9:
  v36 = a3;
  sub_655F94(&v36, a2, v15);
  v8 = a4[43];
  if (v8 >= a4[44])
  {
    sub_659C58(a4 + 42, v15);
    v13 = SHIBYTE(v35);
    a4[43] = v14;
    if (v13 < 0)
    {
      operator delete(v34[0]);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_22;
      }
    }

    else if (SHIBYTE(v33) < 0)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (SHIBYTE(v31) < 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    sub_33D5A0(v15);
    if (SHIBYTE(v38) < 0)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (SHIBYTE(v40) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *v8 = *v15;
  *(v8 + 16) = v16;
  v15[0] = 0;
  v15[1] = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = *__p;
  *(v8 + 40) = v18;
  *(v8 + 48) = 0;
  v16 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = v19;
  v19 = 0uLL;
  *(v8 + 64) = v20;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 72) = v21;
  *(v8 + 88) = v22;
  *(v8 + 96) = 0;
  v20 = 0;
  v21 = 0uLL;
  v22 = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = v23;
  *(v8 + 112) = v24;
  v23 = 0uLL;
  v9 = v26;
  *(v8 + 120) = v25;
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 144) = v27;
  *(v8 + 160) = v28;
  v24 = 0;
  v27 = 0uLL;
  v28 = 0;
  *(v8 + 168) = v29;
  v10 = *v30;
  *(v8 + 192) = v31;
  *(v8 + 176) = v10;
  v30[0] = 0;
  v30[1] = 0;
  v11 = *v32;
  *(v8 + 216) = v33;
  *(v8 + 200) = v11;
  v32[1] = 0;
  v33 = 0;
  v31 = 0;
  v32[0] = 0;
  v12 = *v34;
  *(v8 + 240) = v35;
  *(v8 + 224) = v12;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  a4[43] = v8 + 248;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  operator delete(v32[0]);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  operator delete(v30[0]);
  sub_33D5A0(v15);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
LABEL_25:
    operator delete(v39);
    if (v42 < 0)
    {
      goto LABEL_26;
    }

    return;
  }

LABEL_17:
  if (v42 < 0)
  {
LABEL_26:
    operator delete(v41);
  }
}

void sub_655EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v14 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v14 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v14 - 120));
  if ((*(v14 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v14 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v14 - 96));
  if ((*(v14 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v14 - 72));
  _Unwind_Resume(exception_object);
}

void sub_655F94(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_737E50(a2 + 6, *a1 + 968, &v14);
  sub_737E50(a2 + 9, *a1 + 968, v12);
  sub_737E50(a2 + 12, *a1 + 968, v10);
  if (SHIBYTE(v13) < 0)
  {
    sub_325C(v6, v12[0], v12[1]);
  }

  else
  {
    *v6 = *v12;
    v7 = v13;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_325C(__p, v10[0], v10[1]);
  }

  else
  {
    *__p = *v10;
    v9 = v11;
  }

  sub_65833C(a3, a2, &v14, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v6[0]);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v10[0]);
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v14);
    return;
  }

LABEL_16:
  operator delete(v12[0]);
  if (v15 < 0)
  {
    goto LABEL_17;
  }
}

void sub_6560F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v30 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a25);
  if ((*(v30 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v30 - 56));
  _Unwind_Resume(exception_object);
}

uint64_t sub_6561A8(uint64_t a1)
{
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
    if ((*(a1 + 223) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 199) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 223) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 200));
  if ((*(a1 + 199) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = a1;

    return sub_33D5A0(v2);
  }

LABEL_9:
  operator delete(*(a1 + 176));
  v2 = a1;

  return sub_33D5A0(v2);
}

void sub_65623C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = (**a1 + 704 * *(a1 + 8));
  sub_73B5F8(v7 + 72, a3 + 968, &v41);
  sub_73B5F8(v7 + 65, a3 + 968, &v39);
  sub_73B5F8(v7 + 68, a3 + 968, &v37);
  if (SHIBYTE(v40) < 0)
  {
    sub_325C(v15, v39, *(&v39 + 1));
  }

  else
  {
    *v15 = v39;
    v16 = v40;
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v18 = v38;
  }

  sub_6585C0(a4, (v7 + 64), &v41, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v15[0]);
LABEL_9:
  v36 = a3;
  sub_656620(&v36, a2, v15);
  v8 = a4[43];
  if (v8 >= a4[44])
  {
    sub_659C58(a4 + 42, v15);
    v13 = SHIBYTE(v35);
    a4[43] = v14;
    if (v13 < 0)
    {
      operator delete(v34[0]);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_22;
      }
    }

    else if (SHIBYTE(v33) < 0)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (SHIBYTE(v31) < 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    sub_33D5A0(v15);
    if (SHIBYTE(v38) < 0)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (SHIBYTE(v40) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *v8 = *v15;
  *(v8 + 16) = v16;
  v15[0] = 0;
  v15[1] = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = *__p;
  *(v8 + 40) = v18;
  *(v8 + 48) = 0;
  v16 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = v19;
  v19 = 0uLL;
  *(v8 + 64) = v20;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 72) = v21;
  *(v8 + 88) = v22;
  *(v8 + 96) = 0;
  v20 = 0;
  v21 = 0uLL;
  v22 = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = v23;
  *(v8 + 112) = v24;
  v23 = 0uLL;
  v9 = v26;
  *(v8 + 120) = v25;
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 144) = v27;
  *(v8 + 160) = v28;
  v24 = 0;
  v27 = 0uLL;
  v28 = 0;
  *(v8 + 168) = v29;
  v10 = *v30;
  *(v8 + 192) = v31;
  *(v8 + 176) = v10;
  v30[0] = 0;
  v30[1] = 0;
  v11 = *v32;
  *(v8 + 216) = v33;
  *(v8 + 200) = v11;
  v32[1] = 0;
  v33 = 0;
  v31 = 0;
  v32[0] = 0;
  v12 = *v34;
  *(v8 + 240) = v35;
  *(v8 + 224) = v12;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  a4[43] = v8 + 248;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  operator delete(v32[0]);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  operator delete(v30[0]);
  sub_33D5A0(v15);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
LABEL_25:
    operator delete(v39);
    if (v42 < 0)
    {
      goto LABEL_26;
    }

    return;
  }

LABEL_17:
  if (v42 < 0)
  {
LABEL_26:
    operator delete(v41);
  }
}

void sub_656544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v14 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v14 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v14 - 120));
  if ((*(v14 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v14 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v14 - 96));
  if ((*(v14 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v14 - 72));
  _Unwind_Resume(exception_object);
}

void sub_656620(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_73B5F8(a2 + 6, *a1 + 968, &v14);
  sub_73B5F8(a2 + 9, *a1 + 968, v12);
  sub_73B5F8(a2 + 12, *a1 + 968, v10);
  if (SHIBYTE(v13) < 0)
  {
    sub_325C(v6, v12[0], v12[1]);
  }

  else
  {
    *v6 = *v12;
    v7 = v13;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_325C(__p, v10[0], v10[1]);
  }

  else
  {
    *__p = *v10;
    v9 = v11;
  }

  sub_65833C(a3, a2, &v14, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v6[0]);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v10[0]);
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v14);
    return;
  }

LABEL_16:
  operator delete(v12[0]);
  if (v15 < 0)
  {
    goto LABEL_17;
  }
}

void sub_656780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v30 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a25);
  if ((*(v30 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v30 - 56));
  _Unwind_Resume(exception_object);
}

void sub_656834(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = (**a1 + 704 * *(a1 + 8));
  sub_73B5F8(v7 + 72, a3, &v41);
  sub_73B5F8(v7 + 65, a3, &v39);
  sub_73B5F8(v7 + 68, a3, &v37);
  if (SHIBYTE(v40) < 0)
  {
    sub_325C(v15, v39, *(&v39 + 1));
  }

  else
  {
    *v15 = v39;
    v16 = v40;
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v18 = v38;
  }

  sub_6585C0(a4, (v7 + 64), &v41, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v15[0]);
LABEL_9:
  v36 = a3;
  sub_656C18(&v36, a2, v15);
  v8 = a4[43];
  if (v8 >= a4[44])
  {
    sub_659C58(a4 + 42, v15);
    v13 = SHIBYTE(v35);
    a4[43] = v14;
    if (v13 < 0)
    {
      operator delete(v34[0]);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_22;
      }
    }

    else if (SHIBYTE(v33) < 0)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (SHIBYTE(v31) < 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    sub_33D5A0(v15);
    if (SHIBYTE(v38) < 0)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (SHIBYTE(v40) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *v8 = *v15;
  *(v8 + 16) = v16;
  v15[0] = 0;
  v15[1] = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = *__p;
  *(v8 + 40) = v18;
  *(v8 + 48) = 0;
  v16 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = v19;
  v19 = 0uLL;
  *(v8 + 64) = v20;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 72) = v21;
  *(v8 + 88) = v22;
  *(v8 + 96) = 0;
  v20 = 0;
  v21 = 0uLL;
  v22 = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = v23;
  *(v8 + 112) = v24;
  v23 = 0uLL;
  v9 = v26;
  *(v8 + 120) = v25;
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 144) = v27;
  *(v8 + 160) = v28;
  v24 = 0;
  v27 = 0uLL;
  v28 = 0;
  *(v8 + 168) = v29;
  v10 = *v30;
  *(v8 + 192) = v31;
  *(v8 + 176) = v10;
  v30[0] = 0;
  v30[1] = 0;
  v11 = *v32;
  *(v8 + 216) = v33;
  *(v8 + 200) = v11;
  v32[1] = 0;
  v33 = 0;
  v31 = 0;
  v32[0] = 0;
  v12 = *v34;
  *(v8 + 240) = v35;
  *(v8 + 224) = v12;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  a4[43] = v8 + 248;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  operator delete(v32[0]);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  operator delete(v30[0]);
  sub_33D5A0(v15);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
LABEL_25:
    operator delete(v39);
    if (v42 < 0)
    {
      goto LABEL_26;
    }

    return;
  }

LABEL_17:
  if (v42 < 0)
  {
LABEL_26:
    operator delete(v41);
  }
}

void sub_656B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v14 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v14 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v14 - 120));
  if ((*(v14 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v14 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v14 - 96));
  if ((*(v14 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v14 - 72));
  _Unwind_Resume(exception_object);
}

void sub_656C18(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_73B5F8(a2 + 6, *a1, &v14);
  sub_73B5F8(a2 + 9, *a1, v12);
  sub_73B5F8(a2 + 12, *a1, v10);
  if (SHIBYTE(v13) < 0)
  {
    sub_325C(v6, v12[0], v12[1]);
  }

  else
  {
    *v6 = *v12;
    v7 = v13;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_325C(__p, v10[0], v10[1]);
  }

  else
  {
    *__p = *v10;
    v9 = v11;
  }

  sub_65833C(a3, a2, &v14, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v6[0]);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v10[0]);
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v14);
    return;
  }

LABEL_16:
  operator delete(v12[0]);
  if (v15 < 0)
  {
    goto LABEL_17;
  }
}

void sub_656D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v30 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a25);
  if ((*(v30 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v30 - 56));
  _Unwind_Resume(exception_object);
}

void sub_656E20(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = (**a1 + 704 * *(a1 + 8));
  sub_73E85C(v7 + 72, a3 + 968, &v41);
  sub_73E85C(v7 + 65, a3 + 968, &v39);
  sub_73E85C(v7 + 68, a3 + 968, &v37);
  if (SHIBYTE(v40) < 0)
  {
    sub_325C(v15, v39, *(&v39 + 1));
  }

  else
  {
    *v15 = v39;
    v16 = v40;
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v18 = v38;
  }

  sub_6585C0(a4, (v7 + 64), &v41, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v15[0]);
LABEL_9:
  v36 = a3;
  sub_657204(&v36, a2, v15);
  v8 = a4[43];
  if (v8 >= a4[44])
  {
    sub_659C58(a4 + 42, v15);
    v13 = SHIBYTE(v35);
    a4[43] = v14;
    if (v13 < 0)
    {
      operator delete(v34[0]);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_22;
      }
    }

    else if (SHIBYTE(v33) < 0)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (SHIBYTE(v31) < 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    sub_33D5A0(v15);
    if (SHIBYTE(v38) < 0)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (SHIBYTE(v40) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *v8 = *v15;
  *(v8 + 16) = v16;
  v15[0] = 0;
  v15[1] = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = *__p;
  *(v8 + 40) = v18;
  *(v8 + 48) = 0;
  v16 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = v19;
  v19 = 0uLL;
  *(v8 + 64) = v20;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 72) = v21;
  *(v8 + 88) = v22;
  *(v8 + 96) = 0;
  v20 = 0;
  v21 = 0uLL;
  v22 = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = v23;
  *(v8 + 112) = v24;
  v23 = 0uLL;
  v9 = v26;
  *(v8 + 120) = v25;
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 144) = v27;
  *(v8 + 160) = v28;
  v24 = 0;
  v27 = 0uLL;
  v28 = 0;
  *(v8 + 168) = v29;
  v10 = *v30;
  *(v8 + 192) = v31;
  *(v8 + 176) = v10;
  v30[0] = 0;
  v30[1] = 0;
  v11 = *v32;
  *(v8 + 216) = v33;
  *(v8 + 200) = v11;
  v32[1] = 0;
  v33 = 0;
  v31 = 0;
  v32[0] = 0;
  v12 = *v34;
  *(v8 + 240) = v35;
  *(v8 + 224) = v12;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  a4[43] = v8 + 248;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  operator delete(v32[0]);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  operator delete(v30[0]);
  sub_33D5A0(v15);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
LABEL_25:
    operator delete(v39);
    if (v42 < 0)
    {
      goto LABEL_26;
    }

    return;
  }

LABEL_17:
  if (v42 < 0)
  {
LABEL_26:
    operator delete(v41);
  }
}

void sub_657128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v14 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v14 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v14 - 120));
  if ((*(v14 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v14 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v14 - 96));
  if ((*(v14 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v14 - 72));
  _Unwind_Resume(exception_object);
}

void sub_657204(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_73E85C(a2 + 6, *a1 + 968, &v14);
  sub_73E85C(a2 + 9, *a1 + 968, v12);
  sub_73E85C(a2 + 12, *a1 + 968, v10);
  if (SHIBYTE(v13) < 0)
  {
    sub_325C(v6, v12[0], v12[1]);
  }

  else
  {
    *v6 = *v12;
    v7 = v13;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_325C(__p, v10[0], v10[1]);
  }

  else
  {
    *__p = *v10;
    v9 = v11;
  }

  sub_65833C(a3, a2, &v14, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v6[0]);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v10[0]);
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v14);
    return;
  }

LABEL_16:
  operator delete(v12[0]);
  if (v15 < 0)
  {
    goto LABEL_17;
  }
}

void sub_657364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v30 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a25);
  if ((*(v30 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v30 - 56));
  _Unwind_Resume(exception_object);
}

void sub_657418(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 88);
  if (v4 == v3)
  {
    return;
  }

  v7 = v4 + 1;
  while (*(v7 - 8) != 6)
  {
    v8 = v7 + 3;
    v7 += 4;
    if (v8 == v3)
    {
      goto LABEL_13;
    }
  }

  if (v7 - 1 != v3)
  {
    if (*v7 == v7[1])
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v9 = a3;
      sub_737E50(v7, a3 + 968, v41);
      v10 = *v41;
      *v36 = *&v41[8];
      *&v36[7] = *&v41[15];
      v11 = v42;
      a3 = v9;
    }

    *v41 = *v36;
    *&v41[7] = *&v36[7];
    *(a1 + 296) = 6;
    if (*(a1 + 327) < 0)
    {
      v12 = a3;
      operator delete(*(a1 + 304));
      a3 = v12;
    }

    v13 = *v41;
    *(a1 + 304) = v10;
    *(a1 + 312) = v13;
    *(a1 + 319) = *&v41[7];
    *(a1 + 327) = v11;
  }

LABEL_13:
  if (*(a1 + 329) == 1)
  {
    v14 = *(a1 + 328);
    if (*(a1 + 331) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (*(a1 + 331) != 1)
    {
LABEL_15:
      v15 = 0;
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      v18 = v16;
      if (v16 == v17)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  v15 = *(a1 + 330);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = v16;
  if (v16 == v17)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = v16;
  while (*v18 != 5)
  {
    v18 += 4;
    if (v18 == v17)
    {
      goto LABEL_24;
    }
  }

LABEL_23:
  if (!((v18 == v17) | (v14 | v15) & 1))
  {
    v21 = *v18;
    if (v18[1] == v18[2])
    {
      v23 = 0;
      v22 = 0;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_737E50(v18 + 1, a3 + 968, v41);
      v22 = *v41;
      *v37 = *&v41[8];
      *&v37[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_38:
        v24 = a1 + 280;
        *(a1 + 272) = v22;
        *(a1 + 280) = *v37;
        v25 = *&v37[7];
LABEL_70:
        *(v24 + 7) = v25;
        *(a1 + 295) = v23;
        return;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_38;
  }

LABEL_24:
  v19 = v16;
  if (v16 != v17)
  {
    v19 = v16;
    while (*v19 != 3)
    {
      v19 += 4;
      if (v19 == v17)
      {
        goto LABEL_30;
      }
    }
  }

  if (!((v19 == v17 || (v14 & 1) == 0) | v15 & 1))
  {
    v29 = *v19;
    if (v19[1] == v19[2])
    {
      v23 = 0;
      v30 = 0;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_737E50(v19 + 1, a3 + 968, v41);
      v30 = *v41;
      *v38 = *&v41[8];
      *&v38[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_52:
        v24 = a1 + 280;
        *(a1 + 272) = v30;
        *(a1 + 280) = *v38;
        v25 = *&v38[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_52;
  }

LABEL_30:
  v20 = v16;
  if (v16 != v17)
  {
    v20 = v16;
    while (*v20 != 2)
    {
      v20 += 4;
      if (v20 == v17)
      {
        goto LABEL_44;
      }
    }
  }

  if (((v20 != v17) & (v14 ^ 1) & v15) == 1)
  {
    v26 = *v20;
    if (v20[1] == v20[2])
    {
      v23 = 0;
      v27 = 0;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_737E50(v20 + 1, a3 + 968, v41);
      v27 = *v41;
      *v39 = *&v41[8];
      *&v39[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_43:
        v24 = a1 + 280;
        *(a1 + 272) = v27;
        *(a1 + 280) = *v39;
        v25 = *&v39[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_43;
  }

LABEL_44:
  v28 = v16;
  if (v16 != v17)
  {
    v28 = v16;
    while (*v28 != 4)
    {
      v28 += 4;
      if (v28 == v17)
      {
        goto LABEL_59;
      }
    }
  }

  if (v28 != v17 && a2)
  {
    v31 = *v28;
    if (v28[1] == v28[2])
    {
      v23 = 0;
      v32 = 0;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_737E50(v28 + 1, a3 + 968, v41);
      v32 = *v41;
      *v40 = *&v41[8];
      *&v40[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_58:
        v24 = a1 + 280;
        *(a1 + 272) = v32;
        *(a1 + 280) = *v40;
        v25 = *&v40[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_58;
  }

LABEL_59:
  if (v16 != v17)
  {
    while (*v16 != 1)
    {
      v16 += 4;
      if (v16 == v17)
      {
        return;
      }
    }
  }

  if (v16 != v17)
  {
    v33 = *v16;
    if (v16[1] == v16[2])
    {
      v23 = 0;
      v34 = 0;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      sub_737E50(v16 + 1, a3 + 968, v41);
      v34 = *v41;
      v43[0] = *&v41[8];
      *(v43 + 7) = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_69:
        v24 = a1 + 280;
        v35 = v43[0];
        *(a1 + 272) = v34;
        *(a1 + 280) = v35;
        v25 = *(v43 + 7);
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_69;
  }
}

void sub_657924(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 88);
  if (v4 == v3)
  {
    return;
  }

  v7 = v4 + 1;
  while (*(v7 - 8) != 6)
  {
    v8 = v7 + 3;
    v7 += 4;
    if (v8 == v3)
    {
      goto LABEL_13;
    }
  }

  if (v7 - 1 != v3)
  {
    if (*v7 == v7[1])
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v9 = a3;
      sub_73B5F8(v7, a3 + 968, v41);
      v10 = *v41;
      *v36 = *&v41[8];
      *&v36[7] = *&v41[15];
      v11 = v42;
      a3 = v9;
    }

    *v41 = *v36;
    *&v41[7] = *&v36[7];
    *(a1 + 296) = 6;
    if (*(a1 + 327) < 0)
    {
      v12 = a3;
      operator delete(*(a1 + 304));
      a3 = v12;
    }

    v13 = *v41;
    *(a1 + 304) = v10;
    *(a1 + 312) = v13;
    *(a1 + 319) = *&v41[7];
    *(a1 + 327) = v11;
  }

LABEL_13:
  if (*(a1 + 329) == 1)
  {
    v14 = *(a1 + 328);
    if (*(a1 + 331) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (*(a1 + 331) != 1)
    {
LABEL_15:
      v15 = 0;
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      v18 = v16;
      if (v16 == v17)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  v15 = *(a1 + 330);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = v16;
  if (v16 == v17)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = v16;
  while (*v18 != 5)
  {
    v18 += 4;
    if (v18 == v17)
    {
      goto LABEL_24;
    }
  }

LABEL_23:
  if (!((v18 == v17) | (v14 | v15) & 1))
  {
    v21 = *v18;
    if (v18[1] == v18[2])
    {
      v23 = 0;
      v22 = 0;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_73B5F8(v18 + 1, a3 + 968, v41);
      v22 = *v41;
      *v37 = *&v41[8];
      *&v37[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_38:
        v24 = a1 + 280;
        *(a1 + 272) = v22;
        *(a1 + 280) = *v37;
        v25 = *&v37[7];
LABEL_70:
        *(v24 + 7) = v25;
        *(a1 + 295) = v23;
        return;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_38;
  }

LABEL_24:
  v19 = v16;
  if (v16 != v17)
  {
    v19 = v16;
    while (*v19 != 3)
    {
      v19 += 4;
      if (v19 == v17)
      {
        goto LABEL_30;
      }
    }
  }

  if (!((v19 == v17 || (v14 & 1) == 0) | v15 & 1))
  {
    v29 = *v19;
    if (v19[1] == v19[2])
    {
      v23 = 0;
      v30 = 0;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_73B5F8(v19 + 1, a3 + 968, v41);
      v30 = *v41;
      *v38 = *&v41[8];
      *&v38[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_52:
        v24 = a1 + 280;
        *(a1 + 272) = v30;
        *(a1 + 280) = *v38;
        v25 = *&v38[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_52;
  }

LABEL_30:
  v20 = v16;
  if (v16 != v17)
  {
    v20 = v16;
    while (*v20 != 2)
    {
      v20 += 4;
      if (v20 == v17)
      {
        goto LABEL_44;
      }
    }
  }

  if (((v20 != v17) & (v14 ^ 1) & v15) == 1)
  {
    v26 = *v20;
    if (v20[1] == v20[2])
    {
      v23 = 0;
      v27 = 0;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_73B5F8(v20 + 1, a3 + 968, v41);
      v27 = *v41;
      *v39 = *&v41[8];
      *&v39[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_43:
        v24 = a1 + 280;
        *(a1 + 272) = v27;
        *(a1 + 280) = *v39;
        v25 = *&v39[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_43;
  }

LABEL_44:
  v28 = v16;
  if (v16 != v17)
  {
    v28 = v16;
    while (*v28 != 4)
    {
      v28 += 4;
      if (v28 == v17)
      {
        goto LABEL_59;
      }
    }
  }

  if (v28 != v17 && a2)
  {
    v31 = *v28;
    if (v28[1] == v28[2])
    {
      v23 = 0;
      v32 = 0;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_73B5F8(v28 + 1, a3 + 968, v41);
      v32 = *v41;
      *v40 = *&v41[8];
      *&v40[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_58:
        v24 = a1 + 280;
        *(a1 + 272) = v32;
        *(a1 + 280) = *v40;
        v25 = *&v40[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_58;
  }

LABEL_59:
  if (v16 != v17)
  {
    while (*v16 != 1)
    {
      v16 += 4;
      if (v16 == v17)
      {
        return;
      }
    }
  }

  if (v16 != v17)
  {
    v33 = *v16;
    if (v16[1] == v16[2])
    {
      v23 = 0;
      v34 = 0;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      sub_73B5F8(v16 + 1, a3 + 968, v41);
      v34 = *v41;
      v43[0] = *&v41[8];
      *(v43 + 7) = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_69:
        v24 = a1 + 280;
        v35 = v43[0];
        *(a1 + 272) = v34;
        *(a1 + 280) = v35;
        v25 = *(v43 + 7);
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_69;
  }
}

void sub_657E30(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 88);
  if (v4 == v3)
  {
    return;
  }

  v7 = v4 + 1;
  while (*(v7 - 8) != 6)
  {
    v8 = v7 + 3;
    v7 += 4;
    if (v8 == v3)
    {
      goto LABEL_13;
    }
  }

  if (v7 - 1 != v3)
  {
    if (*v7 == v7[1])
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v9 = a3;
      sub_73E85C(v7, a3 + 968, v41);
      v10 = *v41;
      *v36 = *&v41[8];
      *&v36[7] = *&v41[15];
      v11 = v42;
      a3 = v9;
    }

    *v41 = *v36;
    *&v41[7] = *&v36[7];
    *(a1 + 296) = 6;
    if (*(a1 + 327) < 0)
    {
      v12 = a3;
      operator delete(*(a1 + 304));
      a3 = v12;
    }

    v13 = *v41;
    *(a1 + 304) = v10;
    *(a1 + 312) = v13;
    *(a1 + 319) = *&v41[7];
    *(a1 + 327) = v11;
  }

LABEL_13:
  if (*(a1 + 329) == 1)
  {
    v14 = *(a1 + 328);
    if (*(a1 + 331) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (*(a1 + 331) != 1)
    {
LABEL_15:
      v15 = 0;
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      v18 = v16;
      if (v16 == v17)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  v15 = *(a1 + 330);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = v16;
  if (v16 == v17)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = v16;
  while (*v18 != 5)
  {
    v18 += 4;
    if (v18 == v17)
    {
      goto LABEL_24;
    }
  }

LABEL_23:
  if (!((v18 == v17) | (v14 | v15) & 1))
  {
    v21 = *v18;
    if (v18[1] == v18[2])
    {
      v23 = 0;
      v22 = 0;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_73E85C(v18 + 1, a3 + 968, v41);
      v22 = *v41;
      *v37 = *&v41[8];
      *&v37[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_38:
        v24 = a1 + 280;
        *(a1 + 272) = v22;
        *(a1 + 280) = *v37;
        v25 = *&v37[7];
LABEL_70:
        *(v24 + 7) = v25;
        *(a1 + 295) = v23;
        return;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_38;
  }

LABEL_24:
  v19 = v16;
  if (v16 != v17)
  {
    v19 = v16;
    while (*v19 != 3)
    {
      v19 += 4;
      if (v19 == v17)
      {
        goto LABEL_30;
      }
    }
  }

  if (!((v19 == v17 || (v14 & 1) == 0) | v15 & 1))
  {
    v29 = *v19;
    if (v19[1] == v19[2])
    {
      v23 = 0;
      v30 = 0;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_73E85C(v19 + 1, a3 + 968, v41);
      v30 = *v41;
      *v38 = *&v41[8];
      *&v38[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_52:
        v24 = a1 + 280;
        *(a1 + 272) = v30;
        *(a1 + 280) = *v38;
        v25 = *&v38[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_52;
  }

LABEL_30:
  v20 = v16;
  if (v16 != v17)
  {
    v20 = v16;
    while (*v20 != 2)
    {
      v20 += 4;
      if (v20 == v17)
      {
        goto LABEL_44;
      }
    }
  }

  if (((v20 != v17) & (v14 ^ 1) & v15) == 1)
  {
    v26 = *v20;
    if (v20[1] == v20[2])
    {
      v23 = 0;
      v27 = 0;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_73E85C(v20 + 1, a3 + 968, v41);
      v27 = *v41;
      *v39 = *&v41[8];
      *&v39[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_43:
        v24 = a1 + 280;
        *(a1 + 272) = v27;
        *(a1 + 280) = *v39;
        v25 = *&v39[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_43;
  }

LABEL_44:
  v28 = v16;
  if (v16 != v17)
  {
    v28 = v16;
    while (*v28 != 4)
    {
      v28 += 4;
      if (v28 == v17)
      {
        goto LABEL_59;
      }
    }
  }

  if (v28 != v17 && a2)
  {
    v31 = *v28;
    if (v28[1] == v28[2])
    {
      v23 = 0;
      v32 = 0;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_73E85C(v28 + 1, a3 + 968, v41);
      v32 = *v41;
      *v40 = *&v41[8];
      *&v40[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_58:
        v24 = a1 + 280;
        *(a1 + 272) = v32;
        *(a1 + 280) = *v40;
        v25 = *&v40[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_58;
  }

LABEL_59:
  if (v16 != v17)
  {
    while (*v16 != 1)
    {
      v16 += 4;
      if (v16 == v17)
      {
        return;
      }
    }
  }

  if (v16 != v17)
  {
    v33 = *v16;
    if (v16[1] == v16[2])
    {
      v23 = 0;
      v34 = 0;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      sub_73E85C(v16 + 1, a3 + 968, v41);
      v34 = *v41;
      v43[0] = *&v41[8];
      *(v43 + 7) = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_69:
        v24 = a1 + 280;
        v35 = v43[0];
        *(a1 + 272) = v34;
        *(a1 + 280) = v35;
        v25 = *(v43 + 7);
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_69;
  }
}

uint64_t sub_65833C(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  sub_382844(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 176), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 192) = *(a3 + 2);
    *(a1 + 176) = v7;
  }

  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 200), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 216) = *(a4 + 2);
    *(a1 + 200) = v8;
  }

  if (*(a4 + 47) < 0)
  {
    sub_325C((a1 + 224), *(a4 + 3), *(a4 + 4));
  }

  else
  {
    v9 = *(a4 + 24);
    *(a1 + 240) = *(a4 + 5);
    *(a1 + 224) = v9;
  }

  return a1;
}

void sub_6583FC(_Unwind_Exception *a1)
{
  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
    if ((*(v1 + 199) & 0x80000000) == 0)
    {
LABEL_3:
      sub_33D5A0(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 199) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 176));
  sub_33D5A0(v1);
  _Unwind_Resume(a1);
}

BOOL sub_65846C(uint64_t a1, uint64_t a2)
{
  result = sub_38FD30(a1, a1);
  if (result)
  {
    v5 = *(a1 + 199);
    if (v5 >= 0)
    {
      v6 = *(a1 + 199);
    }

    else
    {
      v6 = *(a1 + 184);
    }

    v7 = *(a2 + 199);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 184);
    }

    if (v6 != v7)
    {
      return 0;
    }

    if (v5 >= 0)
    {
      v9 = (a1 + 176);
    }

    else
    {
      v9 = *(a1 + 176);
    }

    if (v8 >= 0)
    {
      v10 = (a2 + 176);
    }

    else
    {
      v10 = *(a2 + 176);
    }

    if (memcmp(v9, v10, v6))
    {
      return 0;
    }

    v11 = *(a1 + 223);
    if (v11 >= 0)
    {
      v12 = *(a1 + 223);
    }

    else
    {
      v12 = *(a1 + 208);
    }

    v13 = *(a2 + 223);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a2 + 208);
    }

    if (v12 != v13)
    {
      return 0;
    }

    v15 = v11 >= 0 ? (a1 + 200) : *(a1 + 200);
    v16 = v14 >= 0 ? (a2 + 200) : *(a2 + 200);
    if (memcmp(v15, v16, v12))
    {
      return 0;
    }

    v17 = *(a1 + 247);
    if (v17 >= 0)
    {
      v18 = *(a1 + 247);
    }

    else
    {
      v18 = *(a1 + 232);
    }

    v19 = *(a2 + 247);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(a2 + 232);
    }

    if (v18 != v19)
    {
      return 0;
    }

    v23 = *(a1 + 224);
    v22 = (a1 + 224);
    v21 = v23;
    if (v17 >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    v27 = *(a2 + 224);
    v26 = (a2 + 224);
    v25 = v27;
    if (v20 >= 0)
    {
      v28 = v26;
    }

    else
    {
      v28 = v25;
    }

    return memcmp(v24, v28, v18) == 0;
  }

  return result;
}

uint64_t sub_6585C0(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  sub_382D1C(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 192), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 208) = *(a3 + 2);
    *(a1 + 192) = v7;
  }

  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 216), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 232) = *(a4 + 2);
    *(a1 + 216) = v8;
  }

  if (*(a4 + 47) < 0)
  {
    sub_325C((a1 + 240), *(a4 + 3), *(a4 + 4));
  }

  else
  {
    v9 = *(a4 + 24);
    *(a1 + 256) = *(a4 + 5);
    *(a1 + 240) = v9;
  }

  *(a1 + 264) = 0;
  *(a1 + 295) = 0;
  *(a1 + 272) = 0;
  *(a1 + 304) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  *(a1 + 331) = 0;
  *(a1 + 327) = 0;
  return a1;
}

void sub_658698(_Unwind_Exception *a1)
{
  if (*(v1 + 239) < 0)
  {
    operator delete(*(v1 + 216));
    if ((*(v1 + 215) & 0x80000000) == 0)
    {
LABEL_3:
      sub_33D080(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 215) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 192));
  sub_33D080(v1);
  _Unwind_Resume(a1);
}

BOOL sub_658708(uint64_t a1, uint64_t a2)
{
  if (!sub_39018C(a1, a2))
  {
    return 0;
  }

  v4 = *(a1 + 215);
  if (v4 >= 0)
  {
    v5 = *(a1 + 215);
  }

  else
  {
    v5 = *(a1 + 200);
  }

  v6 = *(a2 + 215);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 200);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 192) : *(a1 + 192);
  v9 = v7 >= 0 ? (a2 + 192) : *(a2 + 192);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 239);
  if (v10 >= 0)
  {
    v11 = *(a1 + 239);
  }

  else
  {
    v11 = *(a1 + 224);
  }

  v12 = *(a2 + 239);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 224);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? (a1 + 216) : *(a1 + 216);
  v15 = v13 >= 0 ? (a2 + 216) : *(a2 + 216);
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = *(a1 + 263);
  if (v16 >= 0)
  {
    v17 = *(a1 + 263);
  }

  else
  {
    v17 = *(a1 + 248);
  }

  v18 = *(a2 + 263);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 248);
  }

  if (v17 != v18)
  {
    return 0;
  }

  v20 = v16 >= 0 ? (a1 + 240) : *(a1 + 240);
  v21 = v19 >= 0 ? (a2 + 240) : *(a2 + 240);
  if (memcmp(v20, v21, v17) || *(a1 + 264) != *(a2 + 264))
  {
    return 0;
  }

  v22 = *(a1 + 295);
  if (v22 >= 0)
  {
    v23 = *(a1 + 295);
  }

  else
  {
    v23 = *(a1 + 280);
  }

  v24 = *(a2 + 295);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 280);
  }

  if (v23 != v24)
  {
    return 0;
  }

  v26 = v22 >= 0 ? (a1 + 272) : *(a1 + 272);
  v27 = v25 >= 0 ? (a2 + 272) : *(a2 + 272);
  if (memcmp(v26, v27, v23) || *(a1 + 296) != *(a2 + 296))
  {
    return 0;
  }

  v28 = *(a1 + 327);
  if (v28 >= 0)
  {
    v29 = *(a1 + 327);
  }

  else
  {
    v29 = *(a1 + 312);
  }

  v30 = *(a2 + 327);
  v31 = v30;
  if ((v30 & 0x80u) != 0)
  {
    v30 = *(a2 + 312);
  }

  if (v29 != v30)
  {
    return 0;
  }

  v32 = v28 >= 0 ? (a1 + 304) : *(a1 + 304);
  v33 = v31 >= 0 ? (a2 + 304) : *(a2 + 304);
  if (memcmp(v32, v33, v29))
  {
    return 0;
  }

  v34 = *(a1 + 329);
  v35 = *(a2 + 329);
  if (v34 == v35 && *(a1 + 329))
  {
    v34 = *(a1 + 328);
    v35 = *(a2 + 328);
  }

  if (v34 != v35)
  {
    return 0;
  }

  v36 = *(a1 + 331);
  v37 = *(a2 + 331);
  if (v36 == v37 && *(a1 + 331))
  {
    v36 = *(a1 + 330);
    v37 = *(a2 + 330);
  }

  if (v36 != v37)
  {
    return 0;
  }

  return sub_65897C((a1 + 336), (a2 + 336));
}

BOOL sub_65897C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_65846C(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 248;
    v4 += 248;
  }

  while (v2 != v3);
  return result;
}

BOOL sub_658A08(uint64_t a1, int a2)
{
  v2 = 264;
  if (a2)
  {
    v2 = 296;
  }

  return *(a1 + v2) != 0;
}

BOOL sub_658A28(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 327);
    if ((v2 & 0x8000000000000000) == 0)
    {
      return v2 != 0;
    }

    return *(a1 + 312) != 0;
  }

  else
  {
    v2 = *(a1 + 295);
    if ((v2 & 0x8000000000000000) == 0)
    {
      return v2 != 0;
    }

    return *(a1 + 280) != 0;
  }
}

char *sub_658A68@<X0>(char *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = 272;
  if (a2)
  {
    v3 = 304;
  }

  v4 = &result[v3];
  if (v4[23] < 0)
  {
    return sub_325C(a3, *v4, *(v4 + 1));
  }

  *a3 = *v4;
  *(a3 + 16) = *(v4 + 2);
  return result;
}

uint64_t sub_658AAC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x101010103040200uLL >> (8 * v1);
  }

  return v2 & 7;
}

uint64_t sub_658AD4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = sub_382108(a1, a3);
  *(v5 + 464) = *a2;
  *(v5 + 503) = 0;
  *(v5 + 480) = 0;
  sub_734CE0(v5 + 504);
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 700) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = off_266B180;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  return a1;
}

void sub_658B70(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_658B94(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4)
{
  *(sub_382108(a1, a3) + 464) = *a2;
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 480), *a4, *(a4 + 1));
  }

  else
  {
    v6 = *a4;
    *(a1 + 496) = *(a4 + 2);
    *(a1 + 480) = v6;
  }

  sub_734CE0(a1 + 504);
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 700) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = off_266B180;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  return a1;
}

void sub_658C70(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_658C98(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v7 = sub_382108(a1, a2);
  *(v7 + 464) = 0;
  *(v7 + 472) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 480), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 496) = *(a3 + 2);
    *(a1 + 480) = v8;
  }

  sub_734CE0(a1 + 504);
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 700) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = off_266B180;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = a4;
  return a1;
}

void sub_658D70(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_658D98(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *(sub_382108(a1, a3) + 464) = *a2;
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 480), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 496) = *(a4 + 2);
    *(a1 + 480) = v8;
  }

  sub_734CE0(a1 + 504);
  *(a1 + 656) = a5;
  *(a1 + 664) = 1;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 700) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = off_266B180;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  return a1;
}

void sub_658E7C(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_658EA4(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, _OWORD *a7)
{
  *(sub_382108(a1, a3) + 464) = *a2;
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 480), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    *(a1 + 496) = *(a4 + 2);
    *(a1 + 480) = v12;
  }

  sub_5139E8(a1 + 504, a5);
  *(a1 + 656) = a6;
  *(a1 + 664) = 1;
  *(a1 + 672) = *a7;
  *(a1 + 688) = 0;
  *(a1 + 700) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = off_266B180;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  return a1;
}

void sub_658F9C(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_658FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 472);
  result = *(a2 + 472);
  if (v3 == result && v3 != 0)
  {
    if (*(a1 + 464) != *(a2 + 464))
    {
      goto LABEL_9;
    }

    return sub_38ECE8(a1, a2);
  }

  if (v3 == result)
  {
    return sub_38ECE8(a1, a2);
  }

LABEL_9:
  if (v3)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return *(a1 + 464) < *(a2 + 464);
  }

  return result;
}

BOOL sub_65901C(uint64_t a1, uint64_t a2)
{
  result = sub_38E9BC(a1, a2);
  if (result)
  {
    v5 = *(a1 + 472);
    v6 = *(a2 + 472);
    if (v5 != v6 || v5 == 0)
    {
      if (v5 != v6)
      {
        return 0;
      }
    }

    else if (*(a1 + 464) != *(a2 + 464))
    {
      return 0;
    }

    v8 = *(a1 + 503);
    if (v8 >= 0)
    {
      v9 = *(a1 + 503);
    }

    else
    {
      v9 = *(a1 + 488);
    }

    v10 = *(a2 + 503);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 488);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = v8 >= 0 ? (a1 + 480) : *(a1 + 480);
    v13 = v11 >= 0 ? (a2 + 480) : *(a2 + 480);
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }

    v14 = *(a1 + 1104);
    v15 = *(a2 + 1104);
    if (v14 == v15 && *(a1 + 1104))
    {
      if (!sub_658708(a1 + 744, a2 + 744))
      {
        return 0;
      }
    }

    else if (v14 != v15)
    {
      return 0;
    }

    v16 = *(a1 + 664);
    v17 = *(a2 + 664);
    if (v16 == v17 && *(a1 + 664))
    {
      if (*(a1 + 656) != *(a2 + 656))
      {
        return 0;
      }
    }

    else if (v16 != v17)
    {
      return 0;
    }

    v18 = *(a1 + 680);
    v19 = *(a2 + 680);
    if (v18 == v19 && *(a1 + 680))
    {
      if (*(a1 + 672) != *(a2 + 672))
      {
        return 0;
      }
    }

    else if (v18 != v19)
    {
      return 0;
    }

    v20 = *(a2 + 700);
    v21 = *(a1 + 700);
    result = v21 == v20;
    if (v21 == v20 && *(a1 + 700))
    {
      if (*(a1 + 688) == *(a2 + 688) && *(a1 + 692) == *(a2 + 692))
      {
        return *(a1 + 696) == *(a2 + 696);
      }

      return 0;
    }
  }

  return result;
}

void sub_6591E0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 71) < 0)
  {
    sub_325C(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  v3 = std::string::insert(&__p, 0, "IncidentsCausingDelay_", 0x16uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_659280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_65929C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  result = sub_734C10(a1 + 504);
  if (result && a3)
  {
    if (a2)
    {

      return sub_734D90(a4, a1 + 504);
    }

    if ((*(a1 + 655) & 0x80000000) == 0)
    {
      *a4 = *(a1 + 632);
      v13 = *(a1 + 648);
LABEL_29:
      a4[2] = v13;
      return result;
    }

    v14 = *(a1 + 632);
    v15 = *(a1 + 640);
    goto LABEL_31;
  }

  v9 = *(a1 + 127);
  if (v9 >= 0)
  {
    v10 = (a1 + 104);
  }

  else
  {
    v10 = *(a1 + 104);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 127);
  }

  else
  {
    v11 = *(a1 + 112);
  }

  if (!v11)
  {
LABEL_19:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  while (1)
  {
    v12 = *v10;
    if (v12 < 0)
    {
      break;
    }

    result = _DefaultRuneLocale.__runetype[v12] & 0x4000;
    if (!result)
    {
      goto LABEL_22;
    }

LABEL_18:
    ++v10;
    if (!--v11)
    {
      goto LABEL_19;
    }
  }

  result = __maskrune(v12, 0x4000uLL);
  if (result)
  {
    goto LABEL_18;
  }

LABEL_22:
  if (!a2)
  {
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
      *a4 = *(a1 + 104);
      v13 = *(a1 + 120);
      goto LABEL_29;
    }

    v14 = *(a1 + 104);
    v15 = *(a1 + 112);
LABEL_31:

    return sub_325C(a4, v14, v15);
  }

  return sub_749C3C((a1 + 104), a4);
}

char *sub_659448(uint64_t a1, int a2)
{
  if (sub_734C10(a1 + 504) && a2)
  {

    return nullsub_1(a1 + 504);
  }

  else
  {
    v7 = *(a1 + 104);
    v6 = (a1 + 104);
    v5 = v7;
    v8 = v6[23];
    if (v8 >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }

    if (v8 >= 0)
    {
      v10 = v6[23];
    }

    else
    {
      v10 = *(v6 + 1);
    }

    if (v10)
    {
      do
      {
        v11 = *v9;
        if (v11 < 0)
        {
          if (!__maskrune(v11, 0x4000uLL))
          {
            return v6;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v11] & 0x4000) == 0)
        {
          return v6;
        }

        ++v9;
        --v10;
      }

      while (v10);
      return &unk_229C7B0;
    }

    else
    {
      return &unk_229C7B0;
    }
  }
}

BOOL sub_659640(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 919);
  if (v2 < 0)
  {
    if (!*(a1 + 904))
    {
      return 0;
    }
  }

  else if (!*(a1 + 919))
  {
    return 0;
  }

  v3 = *(a2 + 919);
  if (v3 >= 0)
  {
    v4 = *(a2 + 919);
  }

  else
  {
    v4 = *(a2 + 904);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 904);
  if (v2 >= 0)
  {
    v5 = *(a1 + 919);
  }

  if (v5 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v6 = (a1 + 896);
  }

  else
  {
    v6 = *(a1 + 896);
  }

  if (v3 >= 0)
  {
    v7 = (a2 + 896);
  }

  else
  {
    v7 = *(a2 + 896);
  }

  return memcmp(v6, v7, v4) == 0;
}

uint64_t sub_6596D0(uint64_t a1, _DWORD *a2, double a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 1080);
  v7 = *(a1 + 1088);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = a2[1];
  LODWORD(a4) = *a2;
  v9 = *&a4;
LABEL_4:
  for (i = *v6; ; i += 24)
  {
    if (i == v6[1])
    {
      v6 += 31;
      if (v6 == v7)
      {
        return 0;
      }

      goto LABEL_4;
    }

    v11 = *i;
    v12 = *(i + 8);
    if (*i != v12)
    {
      v13 = 0;
      do
      {
        v14 = v11[1];
        v15 = (*v11 + 12);
        if (*v11 != v14 && v15 != v14)
        {
          do
          {
            v17 = *(v15 - 2);
            v18 = v15[1];
            if (v17 < v8 != v18 < v8)
            {
              LODWORD(a5) = *v15;
              LODWORD(a6) = *(v15 - 3);
              a6 = *&a6;
              a5 = (v8 - v17) / (v18 - v17) * (*&a5 - a6) + a6;
              if (a5 < v9)
              {
                v13 ^= 1u;
              }
            }

            v15 += 3;
          }

          while (v15 != v14);
        }

        v11 += 3;
      }

      while (v11 != v12);
      if (v13)
      {
        break;
      }
    }
  }

  return 1;
}

uint64_t sub_6597CC(uint64_t a1)
{
  if (*(a1 + 1104) == 1 && *(a1 + 1080) != *(a1 + 1088))
  {
    return 0;
  }

  if (sub_38F744(a1))
  {
    return *(a1 + 737) & 1;
  }

  return 1;
}

uint64_t sub_659844(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (a1[736] != 1 || (a2[1462] & 1) == 0)
  {
    return v2 & ~a2[1227] & 1;
  }

  if (a1[224] - 3 > 1)
  {
    goto LABEL_8;
  }

  v3 = 96;
  if (a1[232])
  {
    v3 = 228;
  }

  v4 = *&a1[v3];
  if (v4 > 0xF)
  {
    goto LABEL_8;
  }

  v2 = 1;
  if (((1 << v4) & 0xFEEC) != 0)
  {
    goto LABEL_8;
  }

  if (((1 << v4) & 0x11) != 0)
  {
    return v2 & ~a2[1227] & 1;
  }

  if (v4 != 1)
  {
LABEL_8:
    v2 = 0;
    return v2 & ~a2[1227] & 1;
  }

  return a2[1527] & ~a2[1227] & 1;
}

BOOL sub_6598E4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = 0;
  v3 = 96;
  if (a1[232])
  {
    v3 = 228;
  }

  v4 = *&a1[v3];
  if (v4 > 0xF)
  {
    return v2;
  }

  if (((1 << v4) & 0xA031) == 0)
  {
    if (v4 != 1)
    {
      return v2;
    }

    if (a2[1527] != 1)
    {
      return 0;
    }
  }

  v5 = a1[224];
  if ((v5 - 3) <= 1 && ((a2[1227] & 1) != 0 || a2[1462] != 1 || (a1[736] & 1) == 0))
  {
    if (v4)
    {
      v6 = v4 == 4;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 1;
    }

    if (v4 == 1 && (a2[1527] & 1) != 0)
    {
      return 1;
    }
  }

  return v5 == 2;
}

uint64_t sub_6599A0(uint64_t a1)
{
  v1 = 96;
  if (*(a1 + 232))
  {
    v1 = 228;
  }

  return (*(a1 + v1) < 0x10u) & (3u >> *(a1 + v1));
}

uint64_t sub_6599D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 1080);
  v3 = *(a2 + 1088);
  if (v2 != v3)
  {
    v4 = result;
    v5 = (result + 1080);
    v6 = *(result + 1088);
    do
    {
      v7 = *v5;
      if (*v5 != v6)
      {
        do
        {
          result = sub_38FD30(v7, v7);
          if (result)
          {
            v8 = *(v7 + 199);
            if (v8 >= 0)
            {
              v9 = *(v7 + 199);
            }

            else
            {
              v9 = *(v7 + 184);
            }

            v10 = *(v2 + 199);
            v11 = v10;
            if ((v10 & 0x80u) != 0)
            {
              v10 = *(v2 + 184);
            }

            if (v9 == v10)
            {
              v12 = v8 >= 0 ? (v7 + 176) : *(v7 + 176);
              v13 = v11 >= 0 ? (v2 + 176) : *(v2 + 176);
              result = memcmp(v12, v13, v9);
              if (!result)
              {
                v14 = *(v7 + 223);
                if (v14 >= 0)
                {
                  v15 = *(v7 + 223);
                }

                else
                {
                  v15 = *(v7 + 208);
                }

                v16 = *(v2 + 223);
                v17 = v16;
                if ((v16 & 0x80u) != 0)
                {
                  v16 = *(v2 + 208);
                }

                if (v15 == v16)
                {
                  v18 = v14 >= 0 ? (v7 + 200) : *(v7 + 200);
                  v19 = v17 >= 0 ? (v2 + 200) : *(v2 + 200);
                  result = memcmp(v18, v19, v15);
                  if (!result)
                  {
                    v20 = *(v7 + 247);
                    if (v20 >= 0)
                    {
                      v21 = *(v7 + 247);
                    }

                    else
                    {
                      v21 = *(v7 + 232);
                    }

                    v22 = *(v2 + 247);
                    v23 = v22;
                    if ((v22 & 0x80u) != 0)
                    {
                      v22 = *(v2 + 232);
                    }

                    if (v21 == v22)
                    {
                      v24 = v20 >= 0 ? (v7 + 224) : *(v7 + 224);
                      v25 = v23 >= 0 ? (v2 + 224) : *(v2 + 224);
                      result = memcmp(v24, v25, v21);
                      if (!result)
                      {
                        v6 = *(v4 + 1088);
                        if (v7 != v6)
                        {
                          goto LABEL_5;
                        }

                        goto LABEL_52;
                      }
                    }
                  }
                }
              }
            }
          }

          v7 += 248;
        }

        while (v7 != v6);
        v26 = v6;
        v6 = *(v4 + 1088);
        if (v26 != v6)
        {
          goto LABEL_5;
        }
      }

LABEL_52:
      if (v6 >= *(v4 + 1096))
      {
        result = sub_65A140(v5, v2);
        v6 = result;
      }

      else
      {
        result = sub_52BC98(v6, v2);
        v6 += 248;
        *(v4 + 1088) = v6;
      }

      *(v4 + 1088) = v6;
LABEL_5:
      v2 += 248;
    }

    while (v2 != v3);
  }

  return result;
}

BOOL sub_659BD0(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    sub_325C(&v4, *(a1 + 48), *(a1 + 56));
    v1 = SHIBYTE(v5);
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      return v1 != 0;
    }
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    v1 = SHIBYTE(v5);
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      return v1 != 0;
    }
  }

  v3 = *(&v4 + 1) != 0;
  operator delete(v4);
  return v3;
}

double sub_659C58(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
  {
    v5 = 0x108421084210842;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x108421084210842)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  *v15 = *a2;
  *(v15 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v15 + 24) = *(a2 + 24);
  *(v15 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v15 + 48) = *(a2 + 48);
  *(v15 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v15 + 72) = *(a2 + 72);
  *(v15 + 88) = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v15 + 96) = *(a2 + 96);
  *(v15 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v6 = *(a2 + 120);
  *(v15 + 136) = *(a2 + 136);
  *(v15 + 120) = v6;
  *(v15 + 144) = *(a2 + 144);
  *(v15 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(v15 + 168) = *(a2 + 168);
  v7 = *(a2 + 176);
  *(v15 + 192) = *(a2 + 192);
  *(v15 + 176) = v7;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v8 = *(a2 + 200);
  *(v15 + 216) = *(a2 + 216);
  *(v15 + 200) = v8;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v9 = *(a2 + 224);
  *(v15 + 240) = *(a2 + 240);
  *(v15 + 224) = v9;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  v10 = a1[1];
  v11 = 248 * v2 + *a1 - v10;
  sub_65A048(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = 248 * v2 + 248;
  *(a1 + 1) = v13;
  if (v12)
  {
    operator delete(v12);
    *&v13 = 248 * v2 + 248;
  }

  return *&v13;
}

void sub_659E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_659FA4(va);
  _Unwind_Resume(a1);
}

__n128 sub_659E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = *a3;
  *(a2 + 16) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = *(a3 + 96);
  *(a2 + 112) = *(a3 + 112);
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  v3 = *(a3 + 136);
  *(a2 + 120) = *(a3 + 120);
  *(a2 + 136) = v3;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 160) = *(a3 + 160);
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a2 + 168) = *(a3 + 168);
  v4 = *(a3 + 176);
  *(a2 + 192) = *(a3 + 192);
  *(a2 + 176) = v4;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 176) = 0;
  v5 = *(a3 + 200);
  *(a2 + 216) = *(a3 + 216);
  *(a2 + 200) = v5;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 200) = 0;
  result = *(a3 + 224);
  *(a2 + 240) = *(a3 + 240);
  *(a2 + 224) = result;
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 224) = 0;
  return result;
}

uint64_t sub_659FA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if (*(i - 25) < 0)
      {
LABEL_9:
        operator delete(*(i - 48));
        if ((*(i - 49) & 0x80000000) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_10;
      }
    }

    else if (*(i - 25) < 0)
    {
      goto LABEL_9;
    }

    if ((*(i - 49) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

LABEL_10:
    operator delete(*(i - 72));
LABEL_2:
    sub_33D5A0(i - 248);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_65A048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_659E84(a1, a4, v7);
      v7 += 248;
      a4 = v8 + 248;
      v8 += 248;
    }

    while (v7 != a3);
    while (1)
    {
      if (v5 == a3)
      {
        return;
      }

      if (*(v5 + 247) < 0)
      {
        operator delete(*(v5 + 224));
        if (*(v5 + 223) < 0)
        {
LABEL_12:
          operator delete(*(v5 + 200));
          if ((*(v5 + 199) & 0x80000000) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_13;
        }
      }

      else if (*(v5 + 223) < 0)
      {
        goto LABEL_12;
      }

      if ((*(v5 + 199) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_13:
      operator delete(*(v5 + 176));
LABEL_5:
      sub_33D5A0(v5);
      v5 += 248;
    }
  }
}

uint64_t sub_65A140(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
  {
    v5 = 0x108421084210842;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x108421084210842)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_52BC98(v11, a2);
  v6 = 248 * v2 + 248;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_65A048(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_65A280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_659FA4(va);
  _Unwind_Resume(a1);
}

void sub_65A294()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  LODWORD(v2) = 0;
  HIBYTE(v4[0]) = 14;
  strcpy(v3, "ROUTES_THROUGH");
  LODWORD(v4[1]) = 1;
  v6 = 9;
  strcpy(v5, "ROUTES_TO");
  LODWORD(v7) = 3;
  v9 = 11;
  strcpy(__p, "ROUTES_FROM");
  LODWORD(v10) = 2;
  xmmword_279E7A8 = 0u;
  unk_279E7B8 = 0u;
  dword_279E7C8 = 1065353216;
  sub_3A9A34(&xmmword_279E7A8, v0);
  sub_3A9A34(&xmmword_279E7A8, v3);
  sub_3A9A34(&xmmword_279E7A8, v5);
  sub_3A9A34(&xmmword_279E7A8, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v5[0]);
  if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_65D43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_36:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_37:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_38:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_39:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_40:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_41:
                if (a72 < 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_44;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
LABEL_42:
                operator delete(a69);
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_43;
                }

                goto LABEL_45;
              }

LABEL_44:
              if ((a68 & 0x80000000) == 0)
              {
LABEL_43:
                _Unwind_Resume(a1);
              }

LABEL_45:
              operator delete(a63);
              _Unwind_Resume(a1);
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_36;
  }

  goto LABEL_29;
}

uint64_t sub_65D6B4(uint64_t a1, void *a2, void *a3, char *__src, int *a5, char a6)
{
  v10 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 32), __src, 0x92CuLL);
  if (__src[2375] < 0)
  {
    sub_325C((a1 + 2384), *(__src + 294), *(__src + 295));
  }

  else
  {
    v12 = *(__src + 147);
    *(a1 + 2400) = *(__src + 296);
    *(a1 + 2384) = v12;
  }

  v13 = *(__src + 2376);
  v14 = *(__src + 2392);
  v15 = *(__src + 2424);
  *(a1 + 2440) = *(__src + 2408);
  *(a1 + 2456) = v15;
  *(a1 + 2408) = v13;
  *(a1 + 2424) = v14;
  v16 = *(__src + 2440);
  v17 = *(__src + 2456);
  v18 = *(__src + 2488);
  *(a1 + 2504) = *(__src + 2472);
  *(a1 + 2520) = v18;
  *(a1 + 2472) = v16;
  *(a1 + 2488) = v17;
  v19 = *(__src + 2504);
  v20 = *(__src + 2520);
  v21 = *(__src + 2552);
  *(a1 + 2568) = *(__src + 2536);
  *(a1 + 2584) = v21;
  *(a1 + 2536) = v19;
  *(a1 + 2552) = v20;
  sub_528460(a1 + 2600, a5);
  *(a1 + 2696) = a6;
  return a1;
}

void sub_65D7B4(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_65D7D0(_Unwind_Exception *a1)
{
  if (*(v1 + 2407) < 0)
  {
    operator delete(*v3);
  }

  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_65D7FC(uint64_t a1, uint64_t *a2, void *a3, char *a4, uint64_t a5)
{
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_65D6B4(a1, &v11, v10, a4, (a5 + 968), *(a5 + 1528));
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_65D910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1F1A8(&a9);
  sub_1F1A8(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_65D92C(uint64_t a1, uint64_t *a2, void *a3, char *a4, uint64_t a5)
{
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_65D6B4(a1, &v11, v10, a4, (a5 + 64), *(a5 + 166));
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_65DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1F1A8(&a9);
  sub_1F1A8(&a11);
  _Unwind_Resume(a1);
}

void sub_65DA5C(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  if (v2 == 15)
  {
    if (v3 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (*v9 == 0x53647261776F547BLL && *(v9 + 7) == 0x7D31646C65696853)
    {
      strcpy(a2, "{TowardDirection1}");
      *(a2 + 19) = unk_229CFBB;
      *(a2 + 20) = unk_229CFBC;
      return;
    }

    v11 = *v9;
    v12 = *(v9 + 7);
    if (v11 == 0x53647261776F547BLL && v12 == 0x7D32646C65696853)
    {
      strcpy(a2, "{TowardDirection2}");
      *(a2 + 19) = unk_229CFD3;
      *(a2 + 20) = unk_229CFD4;
      return;
    }

LABEL_29:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return;
  }

  if (v2 != 9)
  {
    goto LABEL_29;
  }

  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (*v4 != 0x31646C656968537BLL || *(v4 + 8) != 125)
  {
    v6 = *v4;
    v7 = *(v4 + 8);
    if (v6 == 0x32646C656968537BLL && v7 == 125)
    {
      *(a2 + 16) = 0xC00000000000000;
      *a2 = *"{Direction2}";
      return;
    }

    goto LABEL_29;
  }

  *(a2 + 16) = 0xC00000000000000;
  *a2 = *"{Direction1}";
}

void sub_65DBB8(int a1, uint64_t a2, std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    for (i = *(a2 + 16); i; i = *i)
    {
      v6 = (i + 2);
      v7 = *(i + 39);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = i[3];
      }

      if (v7 == 15)
      {
        v14 = *v6;
        if (v8 >= 0)
        {
          v14 = i + 2;
        }

        if (*v14 != 0x53647261776F547BLL || *(v14 + 7) != 0x7D31646C65696853)
        {
          v16 = *v14;
          v17 = *(v14 + 7);
          if (v16 != 0x53647261776F547BLL || v17 != 0x7D32646C65696853)
          {
LABEL_33:
            if (v8 < 0)
            {
              sub_325C(__p, *v6, i[3]);
            }

            else
            {
              *__p = *v6;
              v21 = i[4];
            }

            v19 = nullsub_1(i + 5);
            goto LABEL_38;
          }
        }
      }

      else
      {
        if (v7 != 9)
        {
          goto LABEL_33;
        }

        v9 = *v6;
        if (v8 >= 0)
        {
          v9 = (i + 2);
        }

        if (*v9 != 0x31646C656968537BLL || v9[8] != 125)
        {
          v11 = *v9;
          v12 = v9[8];
          if (v11 != 0x32646C656968537BLL || v12 != 125)
          {
            goto LABEL_33;
          }
        }
      }

      sub_65DA5C(v6, __p);
      v19 = (i + 17);
LABEL_38:
      sub_61BA64(this, __p, v19);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_61BA64(this, "{nonBrkSpace}", &unk_229CFF0);
    sub_61BA64(this, "{newLine}", &unk_229D020);
  }
}

void sub_65DD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_65DDB8(uint64_t a1, uint64_t a2, std::string *a3)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      sub_325C(v9, i[2], i[3]);
    }

    else
    {
      *v9 = *(i + 1);
      v10 = i[4];
    }

    sub_734D90(__p, i + 5);
    sub_61BA64(a3, v9, __p);
    v5 = sub_6A5CEC(v9);
    v6 = a3[1].__r_.__value_.__s.__data_[0];
    if (v6 <= v5)
    {
      LOBYTE(v6) = v5;
    }

    a3[1].__r_.__value_.__s.__data_[0] = v6;
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v10) < 0)
      {
LABEL_13:
        operator delete(v9[0]);
      }
    }

    else if (SHIBYTE(v10) < 0)
    {
      goto LABEL_13;
    }
  }
}

void sub_65DE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_65DED0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  if (!v7)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    return;
  }

  v10 = sub_9274F4(v7, a2);
  if (*(v10 + 23) < 0)
  {
    LODWORD(v10) = sub_325C(a5, *v10, v10[1]);
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_25:
    sub_65DBB8(v10, a3, a5);
    return;
  }

  v11 = *v10;
  *(a5 + 16) = v10[2];
  *a5 = v11;
  if (!a4)
  {
    goto LABEL_25;
  }

LABEL_4:
  sub_6EDEC(*(a1 + 2600), v22);
  sub_2E30(a5, v22, v19);
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = *v19;
  *(a5 + 16) = v20;
  *v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  v13 = *(a5 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a5 + 8);
  }

  if (v13)
  {
    if (v19 != a3)
    {
      v21 = *(a3 + 32);
      sub_5FA69C(v19, *(a3 + 16), 0);
    }

    for (i = *(a3 + 16); i; i = *i)
    {
      sub_2E30(i + 2, v22, __p);
      v26 = __p;
      v15 = sub_666FBC(v19, __p);
      v12 = sub_52CB8C(v15 + 5, i + 5);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_65DBB8(v12, v19, a5);
  v16 = v20;
  if (v20)
  {
    do
    {
      v17 = *v16;
      sub_55F7FC((v16 + 2));
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = v19[0];
  v19[0] = 0;
  if (v18)
  {
    operator delete(v18);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_65E0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_540798(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
    if ((*(v26 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v26 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v26);
  _Unwind_Resume(a1);
}

void sub_65E138(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (sub_68047C(a2))
  {
    if (*a1)
    {
      v8 = nullsub_1(a2);
      v9 = *v8;
      v10 = v8[1];
      while (1)
      {
        if (v9 == v10)
        {
          return;
        }

        if ((sub_928074(*a1, v9, 0) & 1) == 0)
        {
          if ((*(v9 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v9 + 8))
            {
              goto LABEL_4;
            }
          }

          else if (*(v9 + 23))
          {
            goto LABEL_4;
          }
        }

        v11 = sub_58BBC(a2);
        sub_65DED0(a1, v9, v11, a3, __p);
        v12 = a4[1];
        if (v12 >= a4[2])
        {
          break;
        }

        if ((SHIBYTE(v16) & 0x80000000) == 0)
        {
          v13 = *__p;
          *(v12 + 16) = v16;
          *v12 = v13;
          a4[1] = v12 + 24;
          if ((SHIBYTE(v16) & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_16:
          operator delete(__p[0]);
          goto LABEL_4;
        }

        sub_325C(a4[1], __p[0], __p[1]);
        a4[1] = v12 + 24;
        if (SHIBYTE(v16) < 0)
        {
          goto LABEL_16;
        }

LABEL_4:
        v9 += 24;
      }

      a4[1] = sub_1CEE8(a4, __p);
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v14 = nullsub_1(a2);
    if (v14 != a4)
    {
      sub_74300(a4, *v14, v14[1], 0xAAAAAAAAAAAAAAABLL * (v14[1] - *v14));
    }
  }
}

void sub_65E304(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = (v4 >> 3) + 1;
    if (v6 >> 61)
    {
      sub_1794();
    }

    if (v4 >> 3 != -1)
    {
      if (!(v6 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v7 = (8 * (v4 >> 3));
    *v7 = a2;
    v4 = (v7 + 1);
    memcpy(0, 0, v5);
    v8 = a1;
    sub_681038(a2, __p);
    a2 = __p[0];
    v9 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  while (a2);
  v10 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  if (v4)
  {
    while (1)
    {
      v13 = *(v4 - 8);
      v12 = v4 - 8;
      v83 = v13;
      v14 = nullsub_1(v13);
      sub_65E138(v8, v14, 0, &v113);
      sub_65F30C(v13, &v106);
      v15 = v107;
      if ((v107 & 0x80u) != 0)
      {
        v15 = *(&v106 + 1);
      }

      v82 = v12;
      if (v15)
      {
        break;
      }

      v16 = v109;
      if ((v109 & 0x80u) != 0)
      {
        v16 = v108[1];
      }

      if (v16)
      {
        break;
      }

      v17 = v112;
      if ((v112 & 0x80u) != 0)
      {
        v17 = v111;
      }

      if (v17)
      {
        break;
      }

      if (&v113 != v10)
      {
        sub_74300(v10, v113, v114, 0xAAAAAAAAAAAAAAABLL * (v114 - v113));
      }

      sub_681008(v83, __p);
      sub_65F704(v8, __p, &v115);
      v75 = __p[0];
      if (__p[0])
      {
        v76 = __p[1];
        v70 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v77 = *(v76 - 1);
            v76 -= 3;
            if (v77 < 0)
            {
              operator delete(*v76);
            }
          }

          while (v76 != v75);
          v70 = __p[0];
        }

        __p[1] = v75;
        goto LABEL_183;
      }

LABEL_184:
      if (v112 < 0)
      {
        operator delete(v110);
        if ((v109 & 0x80000000) == 0)
        {
LABEL_186:
          if ((v107 & 0x80000000) == 0)
          {
            goto LABEL_187;
          }

          goto LABEL_191;
        }
      }

      else if ((v109 & 0x80000000) == 0)
      {
        goto LABEL_186;
      }

      operator delete(v108[0]);
      if ((v107 & 0x80000000) == 0)
      {
LABEL_187:
        v72 = v113;
        if (!v113)
        {
          goto LABEL_14;
        }

LABEL_192:
        v73 = v114;
        v11 = v72;
        if (v114 != v72)
        {
          do
          {
            v74 = *(v73 - 1);
            v73 -= 3;
            if (v74 < 0)
            {
              operator delete(*v73);
            }
          }

          while (v73 != v72);
          v11 = v113;
        }

        v114 = v72;
        operator delete(v11);
        goto LABEL_14;
      }

LABEL_191:
      operator delete(v106);
      v72 = v113;
      if (v113)
      {
        goto LABEL_192;
      }

LABEL_14:
      v4 = v82;
      if (!v82)
      {
        v78 = v115;
        if (v115)
        {
          v79 = v116;
          v80 = v115;
          if (v116 != v115)
          {
            do
            {
              v81 = *(v79 - 1);
              v79 -= 3;
              if (v81 < 0)
              {
                operator delete(*v79);
              }
            }

            while (v79 != v78);
            v80 = v115;
          }

          v116 = v78;
          operator delete(v80);
        }

        return;
      }
    }

    *__p = 0u;
    v93 = 0u;
    LODWORD(v94) = 1065353216;
    sub_67E4F8(&v102, &v106, __p);
    v18 = v93;
    if (!v93)
    {
LABEL_40:
      v20 = __p[0];
      __p[0] = 0;
      if (v20)
      {
        operator delete(v20);
      }

      v21 = v113;
      v84 = v114;
      if (v113 != v114)
      {
        v22 = 0;
        v23 = 0;
        while (1)
        {
          sub_734C34(__p, v21);
          sub_67F2AC(&v102, v108, __p, 0);
          if (v101 < 0)
          {
            operator delete(v100);
            if ((v99 & 0x80000000) == 0)
            {
LABEL_47:
              if ((v97 & 0x80000000) == 0)
              {
                goto LABEL_48;
              }

              goto LABEL_118;
            }
          }

          else if ((v99 & 0x80000000) == 0)
          {
            goto LABEL_47;
          }

          operator delete(v98);
          if ((v97 & 0x80000000) == 0)
          {
LABEL_48:
            if (v95 < 0)
            {
              goto LABEL_119;
            }

            goto LABEL_49;
          }

LABEL_118:
          operator delete(v96);
          if (v95 < 0)
          {
LABEL_119:
            operator delete(v94);
            if ((SBYTE7(v93) & 0x80000000) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_120;
          }

LABEL_49:
          if ((SBYTE7(v93) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

LABEL_120:
          operator delete(__p[0]);
LABEL_50:
          v24 = v112;
          if ((v112 & 0x80u) != 0)
          {
            v24 = v111;
          }

          v87 = v21;
          if (v24)
          {
            v25 = sub_68128C(v83);
            v26 = v10[1] - *v10;
            if (v26)
            {
              v27 = v25;
              v28 = 0;
              v89 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 3);
              v86 = v25;
              do
              {
                v29 = *v10;
                if (v10[1] - *v10 != v116 - v115)
                {
                  goto LABEL_65;
                }

                v30 = sub_53A634(&v115, v28);
                if (!*v8 || !sub_928074(*v8, v30, 0))
                {
                  goto LABEL_65;
                }

                v31 = *(v30 + 23);
                if ((v31 & 0x80u) != 0)
                {
                  v31 = *(v30 + 8);
                }

                if (v31)
                {
                  v32 = sub_9274F4(*v8, v30);
                  if (*(v32 + 23) < 0)
                  {
                    sub_325C(__p, *v32, v32[1]);
                  }

                  else
                  {
                    v33 = *v32;
                    *&v93 = v32[2];
                    *__p = v33;
                  }

                  v36 = qword_279EEC0;
                  v37 = unk_279EEC8;
                  v38 = BYTE7(v93);
                  if (qword_279EEC0 != unk_279EEC8)
                  {
                    if ((SBYTE7(v93) & 0x80u) == 0)
                    {
                      v39 = BYTE7(v93);
                    }

                    else
                    {
                      v39 = __p[1];
                    }

                    if ((SBYTE7(v93) & 0x80u) == 0)
                    {
                      v40 = __p;
                    }

                    else
                    {
                      v40 = __p[0];
                    }

                    while (1)
                    {
                      v41 = *(v36 + 23);
                      v42 = v41;
                      if ((v41 & 0x80u) != 0)
                      {
                        v41 = *(v36 + 8);
                      }

                      if (v41 == v39)
                      {
                        v43 = v42 >= 0 ? v36 : *v36;
                        if (!memcmp(v43, v40, v39))
                        {
                          break;
                        }
                      }

                      v36 += 24;
                      if (v36 == v37)
                      {
                        v44 = 0;
                        if ((v38 & 0x80) == 0)
                        {
                          goto LABEL_86;
                        }

                        goto LABEL_115;
                      }
                    }
                  }

                  v44 = v36 != v37;
                  if (v38 < 0)
                  {
LABEL_115:
                    operator delete(__p[0]);
                  }

LABEL_86:
                  v8 = a1;
                  v27 = v86;
                  v34 = v29 + 24 * v28;
                  if ((v86 | v44) == 1)
                  {
LABEL_66:
                    v10 = a3;
                    if (*(v34 + 23) < 0)
                    {
                      sub_325C(v90, *v34, *(v34 + 8));
                    }

                    else
                    {
                      v35 = *v34;
                      v91 = *(v34 + 16);
                      *v90 = v35;
                    }

                    goto LABEL_89;
                  }
                }

                else
                {
LABEL_65:
                  v34 = v29 + 24 * v28;
                  if (v27 == 1)
                  {
                    goto LABEL_66;
                  }
                }

                v10 = a3;
                sub_6EDEC(*(v8 + 2600), __p);
                sub_2E30(v34, __p, v90);
                if (SBYTE7(v93) < 0)
                {
                  operator delete(__p[0]);
                }

LABEL_89:
                sub_734C34(__p, v90);
                sub_67F2AC(&v102, &v110, __p, 0);
                if (v101 < 0)
                {
                  operator delete(v100);
                  if ((v99 & 0x80000000) == 0)
                  {
LABEL_91:
                    if ((v97 & 0x80000000) == 0)
                    {
                      goto LABEL_92;
                    }

                    goto LABEL_105;
                  }
                }

                else if ((v99 & 0x80000000) == 0)
                {
                  goto LABEL_91;
                }

                operator delete(v98);
                if ((v97 & 0x80000000) == 0)
                {
LABEL_92:
                  if (v95 < 0)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_93;
                }

LABEL_105:
                operator delete(v96);
                if (v95 < 0)
                {
LABEL_106:
                  operator delete(v94);
                  if ((SBYTE7(v93) & 0x80000000) == 0)
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_107;
                }

LABEL_93:
                if ((SBYTE7(v93) & 0x80000000) == 0)
                {
                  goto LABEL_94;
                }

LABEL_107:
                operator delete(__p[0]);
LABEL_94:
                v45 = sub_58BBC(&v102);
                sub_65DED0(v8, &v106, v45, 1, __p);
                v46 = v22 - v23;
                v47 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3) + 1;
                if (v47 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1794();
                }

                if (0x5555555555555556 * (-v23 >> 3) > v47)
                {
                  v47 = 0x5555555555555556 * (-v23 >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * (-v23 >> 3) >= 0x555555555555555)
                {
                  v48 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v48 = v47;
                }

                if (v48)
                {
                  if (v48 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v49 = 8 * ((v22 - v23) >> 3);
                *v49 = *__p;
                *(v49 + 16) = v93;
                __p[1] = 0;
                *&v93 = 0;
                __p[0] = 0;
                memcpy((v49 - v46), v23, v46);
                if (v23 && (operator delete(v23), SBYTE7(v93) < 0))
                {
                  operator delete(__p[0]);
                  v23 = v49 - v46;
                  if ((SHIBYTE(v91) & 0x80000000) == 0)
                  {
                    goto LABEL_56;
                  }
                }

                else
                {
                  v23 = v49 - v46;
                  if ((SHIBYTE(v91) & 0x80000000) == 0)
                  {
                    goto LABEL_56;
                  }
                }

                operator delete(v90[0]);
LABEL_56:
                v22 = v49 + 24;
                ++v28;
              }

              while (v28 != v89);
            }
          }

          else
          {
            v50 = sub_58BBC(&v102);
            if (*v8)
            {
              v51 = sub_9274F4(*v8, &v106);
              if (*(v51 + 23) < 0)
              {
                LODWORD(v51) = sub_325C(__p, *v51, v51[1]);
              }

              else
              {
                v52 = *v51;
                *&v93 = v51[2];
                *__p = v52;
              }

              sub_65DBB8(v51, v50, __p);
            }

            else
            {
              __p[0] = 0;
              __p[1] = 0;
              *&v93 = 0;
            }

            v53 = v22 - v23;
            v54 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3) + 1;
            if (v54 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            if (0x5555555555555556 * (-v23 >> 3) > v54)
            {
              v54 = 0x5555555555555556 * (-v23 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v23 >> 3) >= 0x555555555555555)
            {
              v55 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v55 = v54;
            }

            if (v55)
            {
              if (v55 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v56 = 8 * ((v22 - v23) >> 3);
            *v56 = *__p;
            *(v56 + 16) = v93;
            __p[1] = 0;
            *&v93 = 0;
            __p[0] = 0;
            memcpy((v56 - v53), v23, v53);
            if (v23)
            {
              operator delete(v23);
              if (SBYTE7(v93) < 0)
              {
                operator delete(__p[0]);
              }
            }

            v23 = v56 - v53;
            v22 = v56 + 24;
          }

          v21 = (v87 + 24);
          if ((v87 + 24) == v84)
          {
            goto LABEL_141;
          }
        }
      }

      v23 = 0;
      v22 = 0;
LABEL_141:
      v57 = *v10;
      if (*v10)
      {
        v58 = v10[1];
        v59 = *v10;
        if (v58 != v57)
        {
          do
          {
            v60 = *(v58 - 1);
            v58 -= 3;
            if (v60 < 0)
            {
              operator delete(*v58);
            }
          }

          while (v58 != v57);
          v59 = *v10;
        }

        v10[1] = v57;
        operator delete(v59);
      }

      *v10 = v23;
      v10[1] = v22;
      v10[2] = 0;
      sub_681008(v83, __p);
      sub_65F704(v8, __p, &v115);
      v61 = __p[0];
      if (__p[0])
      {
        v62 = __p[1];
        v63 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v64 = *(v62 - 1);
            v62 -= 3;
            if (v64 < 0)
            {
              operator delete(*v62);
            }
          }

          while (v62 != v61);
          v63 = __p[0];
        }

        __p[1] = v61;
        operator delete(v63);
      }

      v65 = v105;
      if (!v105)
      {
LABEL_173:
        v67 = v104;
        v104 = 0;
        if (v67)
        {
          operator delete(v67);
        }

        v68 = v102;
        if (v102)
        {
          v69 = v103;
          v70 = v102;
          if (v103 != v102)
          {
            do
            {
              v71 = *(v69 - 1);
              v69 -= 3;
              if (v71 < 0)
              {
                operator delete(*v69);
              }
            }

            while (v69 != v68);
            v70 = v102;
          }

          v103 = v68;
LABEL_183:
          operator delete(v70);
          goto LABEL_184;
        }

        goto LABEL_184;
      }

      while (1)
      {
        v66 = *v65;
        if (*(v65 + 191) < 0)
        {
          operator delete(v65[21]);
          if (*(v65 + 159) < 0)
          {
            goto LABEL_168;
          }

LABEL_163:
          if ((*(v65 + 135) & 0x80000000) == 0)
          {
            goto LABEL_164;
          }

LABEL_169:
          operator delete(v65[14]);
          if (*(v65 + 95) < 0)
          {
            goto LABEL_170;
          }

LABEL_165:
          if ((*(v65 + 63) & 0x80000000) == 0)
          {
            goto LABEL_171;
          }

LABEL_159:
          operator delete(v65[5]);
          if (*(v65 + 39) < 0)
          {
            goto LABEL_172;
          }

LABEL_160:
          operator delete(v65);
          v65 = v66;
          if (!v66)
          {
            goto LABEL_173;
          }
        }

        else
        {
          if ((*(v65 + 159) & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

LABEL_168:
          operator delete(v65[17]);
          if (*(v65 + 135) < 0)
          {
            goto LABEL_169;
          }

LABEL_164:
          if ((*(v65 + 95) & 0x80000000) == 0)
          {
            goto LABEL_165;
          }

LABEL_170:
          operator delete(v65[9]);
          if (*(v65 + 63) < 0)
          {
            goto LABEL_159;
          }

LABEL_171:
          if ((*(v65 + 39) & 0x80000000) == 0)
          {
            goto LABEL_160;
          }

LABEL_172:
          operator delete(v65[2]);
          operator delete(v65);
          v65 = v66;
          if (!v66)
          {
            goto LABEL_173;
          }
        }
      }
    }

    while (1)
    {
      v19 = *v18;
      if (*(v18 + 191) < 0)
      {
        operator delete(v18[21]);
        if (*(v18 + 159) < 0)
        {
          goto LABEL_35;
        }

LABEL_30:
        if ((*(v18 + 135) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_36:
        operator delete(v18[14]);
        if (*(v18 + 95) < 0)
        {
          goto LABEL_37;
        }

LABEL_32:
        if ((*(v18 + 63) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_26:
        operator delete(v18[5]);
        if (*(v18 + 39) < 0)
        {
          goto LABEL_39;
        }

LABEL_27:
        operator delete(v18);
        v18 = v19;
        if (!v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if ((*(v18 + 159) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_35:
        operator delete(v18[17]);
        if (*(v18 + 135) < 0)
        {
          goto LABEL_36;
        }

LABEL_31:
        if ((*(v18 + 95) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

LABEL_37:
        operator delete(v18[9]);
        if (*(v18 + 63) < 0)
        {
          goto LABEL_26;
        }

LABEL_38:
        if ((*(v18 + 39) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_39:
        operator delete(v18[2]);
        operator delete(v18);
        v18 = v19;
        if (!v19)
        {
          goto LABEL_40;
        }
      }
    }
  }
}