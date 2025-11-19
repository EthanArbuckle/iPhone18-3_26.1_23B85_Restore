uint64_t sub_1B5CED2E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*a1 + a4);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(*a2 + a4);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*a3 + a4);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5CED35C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1 + 24;
  if (a1 + 24 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v15 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 24;
        v10 = sub_1B5CED440(v8 - 24, v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 24);
        v12 = *(v8 - 8);
        *(v8 - 24) = *v8;
        v13 = *(v8 + 8);
        *(v8 - 8) = *(v8 + 16);
        *v8 = v11;
        v14 = *(v8 - 16);
        *(v8 - 16) = v13;
        *(v8 + 8) = v14;
        *(v8 + 16) = v12;
        v8 -= 24;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v15 = v10 != 0;
    }

    v7 += v15;
    v3 += 24;
  }

  while (v3 < a2);
  return v7;
}

uint64_t sub_1B5CED440(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a1 + a3);
    v8 = (*a2 + a3);
    while (v6)
    {
      v9 = *v7;
      v10 = *v8;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      ++v7;
      ++v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

_BYTE *sub_1B5CED4AC(uint64_t *a1, size_t __sz)
{
  result = operator new[](__sz, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = __sz;
  if (v9)
  {

    JUMPOUT(0x1B8C880C0);
  }

  return result;
}

void *sub_1B5CED544(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = 341 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_1B5CED604(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  v9 = *(v6 + 8 * (v8 / 0x155)) + 12 * (v8 % 0x155);
  v10 = *a2;
  *(v9 + 8) = *(a2 + 2);
  *v9 = v10;
  ++v3[5];
  return result;
}

void *sub_1B5CED604(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
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
    sub_1B5CEDC00(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1B5CED7D8(a1, &v10);
}

void sub_1B5CED78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1B5CED7D8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1B5CEDC00(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1B5CED8E0(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1B5CEDC00(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_1B5CED9EC(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1B5CEDC00(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1B5CEDAF4(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1B5CEDC00(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1B5CEDC00(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1B5CE5968();
}

_OWORD *sub_1B5CEDC48(uint64_t *a1, uint64_t a2)
{
  result = operator new[](16 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B8C880C0);
  }

  return result;
}

void sub_1B5CEDCE0(__n128 *a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  v7 = a2 - a1;
  if (v7 < 129)
  {
    v13 = 0;
    v9 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E69E5398];
    v9 = a2 - a1;
    while (1)
    {
      v10 = operator new(16 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        v13 = 0;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v13 = v10;
  }

LABEL_8:
  sub_1B5CEDDDC(a1, a2, a3, v7, v13, v9, a4);
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_1B5CEDDC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5CEDDDC(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      a7.n128_u32[0] = a2[-1].n128_u32[3];
      if (a7.n128_f32[0] > a1->n128_f32[3])
      {
        a7 = *a1;
        *a1 = a2[-1];
        a2[-1] = a7;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = &a1[a4 >> 1];
      v15 = a4 >> 1;
      if (a4 <= a6)
      {
        v17.n128_f64[0] = sub_1B5CEE050(a1, v14, a3, v15, a5, a7);
        v18.n128_f64[0] = sub_1B5CEE050(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v13], v17);

        a7.n128_f64[0] = sub_1B5CEE1AC(a5, &a5[v13], &a5[v13], &a5[a4], a1, v18);
      }

      else
      {
        sub_1B5CEDDDC(a1, v14, a3, v15, a5, a6);
        sub_1B5CEDDDC(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        a7.n128_u64[0] = sub_1B5CEE20C(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6, v16).n128_u64[0];
      }
    }

    else
    {

      sub_1B5CEDFAC(a1, a2);
    }
  }

  return a7.n128_f64[0];
}

uint64_t sub_1B5CEDFAC(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    if (result + 16 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 28);
        v6 = *(v4 + 12);
        v4 = v2;
        if (v5 > v6)
        {
          v10 = *v2;
          v11 = *(v2 + 8);
          v7 = v3;
          while (1)
          {
            *(result + v7 + 16) = *(result + v7);
            if (!v7)
            {
              break;
            }

            v8 = *(result + v7 - 4);
            v7 -= 16;
            if (v5 <= v8)
            {
              v9 = result + v7 + 16;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v10;
          *(v9 + 8) = v11;
          *(v9 + 12) = v5;
        }

        v2 = v4 + 16;
        v3 += 16;
      }

      while (v4 + 16 != a2);
    }
  }

  return result;
}

double sub_1B5CEE050(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v10 = a2 - 1;
      if (a2[-1].n128_f32[3] <= a1->n128_f32[3])
      {
        *a5 = *a1;
        a6 = *v10;
      }

      else
      {
        *a5 = *v10;
        a6 = *a1;
      }

      a5[1] = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      sub_1B5CEDDDC(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      sub_1B5CEDDDC(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      a6.n128_f64[0] = sub_1B5CEE1AC(a1, &a1[a4 >> 1], &a1[a4 >> 1], a2, a5, v12);
    }

    else
    {

      a6.n128_u64[0] = sub_1B5CEE490(a1, a2, a5).n128_u64[0];
    }
  }

  return a6.n128_f64[0];
}

double sub_1B5CEE1AC(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  while (a1 != a2)
  {
    if (a3 == a4)
    {
      while (a1 != a2)
      {
        v9 = *a1++;
        a6.n128_u64[0] = v9.n128_u64[0];
        *a5++ = v9;
      }

      return a6.n128_f64[0];
    }

    if (a3->n128_f32[3] <= a1->n128_f32[3])
    {
      v7 = *a1++;
      a6 = v7;
    }

    else
    {
      v6 = *a3++;
      a6 = v6;
    }

    *a5++ = a6;
  }

  while (a3 != a4)
  {
    v8 = *a3++;
    a6.n128_u64[0] = v8.n128_u64[0];
    *a5++ = v8;
  }

  return a6.n128_f64[0];
}

__n128 sub_1B5CEE20C(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 result)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = 0;
      result.n128_u32[0] = a2->n128_u32[3];
      v13 = -a5;
      while (1)
      {
        v14 = &a1[v12];
        if (result.n128_f32[0] > a1[v12].n128_f32[3])
        {
          break;
        }

        ++v12;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v39 = a3;
      v40 = a8;
      if (-v13 >= v10)
      {
        if (v13 == -1)
        {
          v43 = a1[v12];
          a1[v12] = *a2;
          result = v43;
          *a2 = v43;
          return result;
        }

        v26 = v16 / 2;
        v20 = &a1[v16 / 2 + v12];
        if (a3 == a2)
        {
          v18 = a2;
        }

        else
        {
          v27 = a3 - a2;
          v18 = a2;
          do
          {
            v28 = v27 >> 1;
            v29 = &v18[v27 >> 1];
            v30 = v29->n128_f32[3];
            v31 = v29 + 1;
            v27 += ~(v27 >> 1);
            if (v30 > v20->n128_f32[3])
            {
              v18 = v31;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        v17 = v18 - a2;
      }

      else
      {
        v17 = v10 / 2;
        v18 = &a2[v10 / 2];
        if (v14 == a2)
        {
          v25 = &a1[v12];
          v20 = &a1[v12];
        }

        else
        {
          v19 = (a2 - a1 - v12 * 16) >> 4;
          v20 = &a1[v12];
          do
          {
            v21 = v19 >> 1;
            v22 = &v20[v19 >> 1];
            v23 = v22->n128_f32[3];
            v24 = v22 + 1;
            v19 += ~(v19 >> 1);
            if (v18->n128_f32[3] > v23)
            {
              v19 = v21;
            }

            else
            {
              v20 = v24;
            }
          }

          while (v19);
          v25 = v20;
        }

        v26 = (v25 - a1 - v12 * 16) >> 4;
      }

      a5 = -(v26 + v13);
      v32 = v10 - v17;
      v33 = v17;
      v34 = sub_1B5CEE640(v20, a2, v18);
      v35 = v33;
      v36 = v34;
      if (v26 + v35 >= v10 - (v26 + v35) - v13)
      {
        v38 = v35;
        sub_1B5CEE20C(v34, v18, v39, a4, a5, v32, a7, v40);
        v18 = v20;
        v32 = v38;
        a5 = v26;
        a8 = v40;
        a3 = v36;
      }

      else
      {
        v37 = v26;
        a8 = v40;
        sub_1B5CEE20C(v14, v20, v34, a4, v37, v35, a7, v40);
        v14 = v36;
        a3 = v39;
      }

      v10 = v32;
      a1 = v14;
      a2 = v18;
      if (!v32)
      {
        return result;
      }
    }

    result.n128_u64[0] = sub_1B5CEE534(a1, a2, a3, a4, a5, v10, a7, result).n128_u64[0];
  }

  return result;
}

__n128 sub_1B5CEE490(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1 != a2)
  {
    result = *a1;
    *a3 = *a1;
    v4 = a1 + 1;
    if (&a1[1] != a2)
    {
      v5 = 0;
      v6 = a3;
      do
      {
        v7 = a1;
        v8 = v6;
        a1 = v4;
        v9 = ++v6;
        if (v7[1].n128_f32[3] > v8->n128_f32[3])
        {
          *v6 = *v8;
          v9 = a3;
          if (v8 != a3)
          {
            v10 = v5;
            while (1)
            {
              v9 = (a3 + v10);
              if (v7[1].n128_f32[3] <= *(&a3->n128_f32[-1] + v10))
              {
                break;
              }

              *v9 = v9[-1];
              v10 -= 16;
              if (!v10)
              {
                v9 = a3;
                break;
              }
            }
          }
        }

        result = *a1;
        *v9 = *a1;
        v4 = a1 + 1;
        v5 += 16;
      }

      while (&a1[1] != a2);
    }
  }

  return result;
}

__n128 sub_1B5CEE534(__n128 *a1, __n128 *a2, __n128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t __src, __n128 result)
{
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v14 = -__src;
      v15 = __src;
      v16 = a1;
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 4;
        v14 -= 16;
      }

      while (v16 != a2);
      while (a2 != a3)
      {
        if (a2->n128_f32[3] <= *(__src + 12))
        {
          v19 = *__src;
          __src += 16;
          result = v19;
        }

        else
        {
          v18 = *a2++;
          result = v18;
        }

        *a1++ = result;
        if (v15 == __src)
        {
          return result;
        }
      }

      memmove(a1, __src, -(__src + v14));
    }
  }

  else if (a2 != a3)
  {
    v8 = 0;
    do
    {
      result = a2[v8];
      *(__src + v8 * 16) = result;
      ++v8;
    }

    while (&a2[v8] != a3);
    v9 = (__src + v8 * 16);
    while (a2 != a1)
    {
      v10 = v9[-1].n128_f32[3];
      v11 = a2[-1].n128_f32[3];
      v12 = v10 <= v11;
      if (v10 <= v11)
      {
        v13 = v9 - 1;
      }

      else
      {
        v13 = a2 - 1;
      }

      result = *v13;
      a3[-1] = *v13;
      --a3;
      if (v12)
      {
        --v9;
      }

      else
      {
        --a2;
      }

      if (v9 == __src)
      {
        return result;
      }
    }

    if (v9 != __src)
    {
      v20 = 0xFFFFFFFFFFFFFFFLL;
      do
      {
        result = v9[-1];
        a3[v20--] = result;
        --v9;
      }

      while (v9 != __src);
    }
  }

  return result;
}

char *sub_1B5CEE640(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 16 == a2)
    {
      v9 = *__src;
      v6 = a3 - a2;
      memmove(__src, __src + 16, a3 - a2);
      v4 = &__src[v6];
      *v4 = v9;
    }

    else if (a2 + 16 == a3)
    {
      v4 = __src + 16;
      v10 = *(a3 - 1);
      v7 = a3 - 16 - __src;
      if (a3 - 16 != __src)
      {
        memmove(__src + 16, __src, v7);
      }

      *__src = v10;
    }

    else
    {
      return sub_1B5CEE720(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_1B5CEE720(char *a1, char *a2, char *a3)
{
  v3 = a2 - a1;
  v4 = (a2 - a1) >> 4;
  v5 = a3 - a2;
  if (v4 == (a3 - a2) >> 4)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = a2 + 16;
      v7 = a1 + 16;
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *(v6 - 1);
        *(v6 - 1) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 += 16;
        v9 = v6 == a3;
        v6 += 16;
      }

      while (!v9);
    }
  }

  else
  {
    v10 = v5 >> 4;
    v11 = (a2 - a1) >> 4;
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12 % v10;
    }

    while (v10);
    v13 = &a1[16 * v11];
    do
    {
      v14 = *(v13 - 1);
      v13 -= 16;
      v15 = &v13[v3];
      v16 = v13;
      do
      {
        v17 = v16;
        v16 = v15;
        *v17 = *v15;
        v18 = __OFSUB__(v4, (a3 - v15) >> 4);
        v20 = v4 - ((a3 - v15) >> 4);
        v19 = (v20 < 0) ^ v18;
        v15 = &a1[16 * v20];
        if (v19)
        {
          v15 = v16 + v3;
        }
      }

      while (v15 != v13);
      *v16 = v14;
    }

    while (v13 != a1);
    return &a1[v5];
  }

  return a2;
}

uint64_t sub_1B5CEE800(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 170;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 341;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1B5CEE8AC(a1);
}

uint64_t sub_1B5CEE8AC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1B5CEE8FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    do
    {
      v9 = *v6++;
      v8 = v9;
      if (v9 > v5)
      {
        v5 = v8;
      }

      --v7;
    }

    while (v7);
    v10 = 32 - __clz(v5);
    if (v5)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 != 0;
  v13 = (v11 * v4 + 63) >> 6;
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  result = sub_1B5CEBA88(a1, v14);
  if (v14)
  {
    *(*(a1 + 8) + 8 * *(a1 + 24) - 8) = 0;
  }

  *(a1 + 48) = v11;
  if (v11)
  {
    *(a1 + 56) = 0xFFFFFFFF >> -v11;
  }

  v16 = *(a2 + 24);
  *(a1 + 64) = v16;
  if (v16)
  {
    v17 = 0;
    do
    {
      result = sub_1B5CEE9F4(a1, v17, *(*(a2 + 16) + 4 * v17));
      ++v17;
    }

    while (v17 < *(a2 + 24));
  }

  return result;
}

uint64_t sub_1B5CEE9F4(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 48);
  v4 = (v3 * a2) & 0x3F;
  v5 = *(result + 56);
  v6 = (*(result + 8) + 8 * ((v3 * a2) >> 6));
  v7 = v5 & a3;
  *v6 = *v6 & ~(v5 << (v3 * a2)) | (v7 << (v3 * a2));
  if ((v4 + v3) >= 0x41)
  {
    v6[1] = v6[1] & ~(v5 >> -v4) | (v7 >> -v4);
  }

  return result;
}

unsigned int *sub_1B5CEEA58(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= *v10 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v110 = v10[3];
      }

      v111 = v10[1];
      v10[3] = v111;
      *v10 = v91;
      v10[1] = v110;
      v10[2] = v92;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return sub_1B5CEF590(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_1B5CEF798(v10, a2);
      }

      else
      {

        return sub_1B5CEF86C(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return sub_1B5CF0078(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]))
        {
          goto LABEL_45;
        }

        *v14 = v24;
        *(a2 - 2) = v16;
        v25 = v14 + 1;
        v26 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v26;
        v27 = *v14;
        v28 = *v10;
        if (*v14 >= *v10 && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)))
            {
              goto LABEL_67;
            }

            *v39 = v44;
            *(a2 - 4) = v40;
            v45 = v14 - 1;
            v46 = *(v14 - 1);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 3) = v46;
            v47 = *v39;
            v48 = v10[2];
            if (*v39 >= v48 && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]))
                {
                  goto LABEL_85;
                }

                *v55 = v61;
                *(a2 - 6) = v56;
                v62 = v55 + 1;
                v63 = v55[1];
                v55[1] = *(a2 - 5);
                *(a2 - 5) = v63;
                v64 = *v55;
                v65 = v10[4];
                if (*v55 >= v65 && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    v15[1] = v77;
                    v78 = (v15 + 1);
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = (v39 + 1);
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
LABEL_104:
                    v82 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v82;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (*v55 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v79 = v15[1];
                    if (v55[1] < v79)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = (v39 + 1);
                      *v55 = v71;
                      v74 = (v55 + 1);
LABEL_102:
                      v78 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v79 = v15[1];
                  }

                  *v15 = v71;
                  v80 = v39[1];
                  v15[1] = v80;
                  *v39 = v70;
                  v39[1] = v79;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                  {
                    v70 = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = (v55 + 1);
                  v73 = (v15 + 1);
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                v66 = v55[1];
              }

              v67 = v10[5];
              v10[4] = v56;
              v10[5] = v66;
              *v55 = v58;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            v49 = *(v14 - 1);
          }

          v52 = v10[3];
          v10[2] = v40;
          v10[3] = v49;
          *v39 = v41;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        v34 = v14[1];
      }

      v36 = v10[1];
      *v10 = v16;
      v10[1] = v34;
      *v14 = v17;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = sub_1B5CEF904(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = sub_1B5CEFA38(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = sub_1B5CEFB74(v10, v85);
    v10 = v85 + 2;
    result = sub_1B5CEFB74(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = sub_1B5CEEA58(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = sub_1B5CEF590(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

unsigned int *sub_1B5CEF590(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned int *sub_1B5CEF798(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        v7 = *v5;
        if (v6 < *v5 || v7 >= v6 && v5[3] < v5[1])
        {
          v9 = v5[2];
          v8 = v5[3];
          v10 = v5[1];
          v5[2] = v7;
          v4[1] = v10;
          v11 = result;
          if (v5 != result)
          {
            v12 = v3;
            do
            {
              v13 = *(result + v12 - 8);
              if (v13 <= v9)
              {
                if (v13 < v9)
                {
                  v11 = v5;
                  goto LABEL_17;
                }

                v11 = (result + v12);
                v14 = *(result + v12 - 4);
                if (v14 <= v8)
                {
                  goto LABEL_17;
                }
              }

              else
              {
                v14 = *(result + v12 - 4);
              }

              v5 -= 2;
              v15 = (result + v12);
              *v15 = v13;
              v15[1] = v14;
              v12 -= 8;
            }

            while (v12);
            v11 = result;
          }

LABEL_17:
          *v11 = v9;
          v11[1] = v8;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unsigned int *sub_1B5CEF86C(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = result[1];
          for (i = v3; ; i -= 2)
          {
            v10 = *i;
            i[1] = v6;
            i[2] = v10;
            v6 = *(i - 3);
            if (v6 <= v7 && (v6 < v7 || *(i - 2) <= v8))
            {
              break;
            }
          }

          *(i - 1) = v7;
          *i = v8;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

unsigned int *sub_1B5CEF904(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v3;
        }

        while (v13 > v3);
      }

      while (v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

unsigned int *sub_1B5CEFA38(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL sub_1B5CEFB74(unsigned int *a1, unsigned int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        sub_1B5CEF590(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      sub_1B5CEF590(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v25;
    if (*v45 >= *v25 && (v48 < *v45 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v49 = *v45;
    v50 = v45[1];
    *v45 = v48;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 8);
      if (v53 <= v49)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_74:
      *(v52 + 4) = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v55 = a1;
        goto LABEL_80;
      }
    }

    if (v53 >= v49)
    {
      v54 = *(a1 + v51 + 12);
      if (v54 > v50)
      {
        goto LABEL_74;
      }
    }

    v55 = (a1 + v51 + 16);
LABEL_80:
    *v55 = v49;
    v55[1] = v50;
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

unsigned int *sub_1B5CF0078(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_1B5CF01EC(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*v12 < *a1 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          sub_1B5CF01EC(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = sub_1B5CF0330(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          *v19 = *v16;
          v19[1] = v16[1];
          *v16 = v18;
          v16[1] = v17;
          sub_1B5CF03BC(a1, (v19 + 2), a4, ((v19 + 2) - a1) >> 3);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1B5CF01EC(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
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
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

_DWORD *sub_1B5CF0330(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_1B5CF03BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    if (*v6 < v8 || v8 >= v7 && v6[1] < *(a2 - 4))
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      *(a2 - 8) = v7;
      *(a2 - 4) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 8 * v5);
          v13 = *v11;
          if (*v11 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            v14 = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 8 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

void sub_1B5CF0460(uint64_t a1, unint64_t a2)
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
      sub_1B5D04FA0();
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
      sub_1B5CE1E28(a1, v10);
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

char *sub_1B5CF0590(uint64_t *a1, uint64_t a2)
{
  result = operator new[](16 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = (a1[1] + 8);
    v7 = result + 8;
    do
    {
      *(v7 - 1) = *(v6 - 1);
      v8 = *v6;
      v6 += 2;
      *v7 = v8;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B8C880C0);
  }

  return result;
}

uint64_t sub_1B5CF0634(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_1B5DC2640;
    v13 = xmmword_1B5DC2630;
    v14 = (v9 + 64);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 12) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 6) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v10 + 2;
        v14[6] = v10 + 3;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 24;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  v17 = sub_1B5CF0E94(v9, v9 + 24 * v8, 0);
  v18 = 256;
  if (a5 != 1)
  {
    v18 = 1;
  }

  do
  {
    v19 = v18;
    v18 *= 2;
  }

  while (v19 < v17 / *(a4 + 8));
  sub_1B5CE9DB8(a1 + 126, v19);
  a1[132] = v19 - 1;
  sub_1B5CE94C8(a1, 1);
  sub_1B5CE94C8(a1, 0);
  LOBYTE(v71[0]) = 0;
  sub_1B5CECBD8(a1 + 78, v71);
  sub_1B5CE94C8(a1 + 52, 0);
  memset(v71, 0, 41);
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  memset(v68, 0, 25);
  v65.n128_u64[0] = *(a2 + 24) << 32;
  v65.n128_u32[2] = 0;
  sub_1B5CED544(v69, &v65);
  v20 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v62 = a4;
    do
    {
      v21 = a1[58];
      v22 = (*(*(&v69[0] + 1) + 8 * (v70 / 0x155)) + 12 * (v70 % 0x155));
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      *&v70 = v70 + 1;
      *(&v70 + 1) = v20 - 1;
      if (v70 >= 0x2AA)
      {
        operator delete(**(&v69[0] + 1));
        *(&v69[0] + 1) += 8;
        *&v70 = v70 - 341;
      }

      v64 = v21;
      v26 = v21 - v20;
      if (v23 < v24)
      {
        while (1)
        {
          v27 = *(a2 + 8) + 24 * v23;
          if (*(v27 + 8) != v25)
          {
            break;
          }

          *(v27 + 12) = v26;
          v23 = (v23 + 1);
          if (v24 == v23)
          {
            goto LABEL_51;
          }
        }
      }

      if (v23 != v24)
      {
        v28 = v67;
        v67 = 0u;
        memset(v68, 0, 25);
        if (v28)
        {
          MEMORY[0x1B8C880C0](v28, 0x1000C8077774924);
        }

        v29 = *(a2 + 8);
        v30 = *(v29 + 24 * v23 + 12);
        v31 = v23 + 1;
        if (v23 + 1 < v24)
        {
          v63 = v20;
          v32 = v30;
          v33 = 24 * v23;
          v34 = (v23 << 32) + 0x100000000;
          do
          {
            if (*(*(v29 + v33) - v25 - 1) != *(*(v29 + v33 + 24) - v25 - 1))
            {
              *&v35 = v32;
              v65.n128_u64[0] = v34 + v23;
              v65.n128_u64[1] = v25 | (v35 << 32);
              sub_1B5CECC44(&v67, &v65);
              v29 = *(a2 + 8);
              v32 = 0.0;
              LODWORD(v23) = v31;
            }

            v32 = v32 + *(v29 + v33 + 36);
            ++v31;
            v33 += 24;
            v34 += 0x100000000;
          }

          while (v24 != v31);
          v30 = v32;
          a4 = v62;
          v20 = v63;
        }

        v65.n128_u32[0] = v23;
        v65.n128_u32[1] = v24;
        v65.n128_u64[1] = v25 | (LODWORD(v30) << 32);
        v36 = sub_1B5CECC44(&v67, &v65);
        if (*(a4 + 16) == 0x20000)
        {
          sub_1B5CEDCE0(*(&v67 + 1), (*(&v67 + 1) + 16 * v68[1]), &v65, v36);
        }

        v37 = v68[1];
        if (v64 == v20)
        {
          a1[133] = v68[1];
        }

        if (v37)
        {
          v38 = 0;
          do
          {
            v39 = (*(&v67 + 1) + 16 * v38);
            v40 = *(v39 + 2);
            v41 = *(a2 + 8);
            v42 = *(v41 + 24 * *v39 + 8);
            v43 = v40 + 1;
            if (v40 + 1 >= v42)
            {
              v44 = *(v39 + 2);
              LODWORD(v42) = v40 + 1;
            }

            else
            {
              v44 = v42 - 1;
              v45 = (v41 + 24 * *v39);
              v46 = *(v39 + 2);
              do
              {
                v47 = v46;
                v46 = v43;
                v48 = v45;
                v49 = *v39;
                while (++v49 < *(v39 + 1))
                {
                  v50 = *v48;
                  v51 = v48[3];
                  v48 += 3;
                  if (*(v50 + ~v47 - 1) != *(v51 + ~v47 - 1))
                  {
                    v44 = v47;
                    LODWORD(v42) = v43;
                    goto LABEL_45;
                  }
                }

                ++v43;
              }

              while (v46 + 1 != v42);
            }

LABEL_45:
            v52 = a1[81];
            v53 = v39[3];
            v54 = a1[127] + 12 * (a1[132] & v52);
            if (*(v54 + 8) < v53)
            {
              *v54 = v26;
              *(v54 + 4) = v52;
              *(v54 + 8) = v53;
              v40 = *(v39 + 2);
            }

            if (v44 == v40)
            {
              v65.n128_u8[0] = *(~v44 + *(*(a2 + 8) + 24 * *v39));
              sub_1B5CECBD8(a1 + 78, &v65);
              sub_1B5CE94C8(a1 + 52, 0);
            }

            else
            {
              v65.n128_u8[0] = 0;
              sub_1B5CECBD8(a1 + 78, &v65);
              sub_1B5CE94C8(a1 + 52, 1);
              v65 = 0uLL;
              v66 = 0;
              v55 = *(v39 + 2);
              v65.n128_u64[0] = *(*(a2 + 8) + 24 * *v39) - v55;
              v65.n128_u64[1] = (v42 - v55);
              v65.n128_f32[3] = v39[3];
              sub_1B5CECCB8(v71, &v65);
            }

            *(v39 + 2) = v42;
            sub_1B5CED544(v69, v39);
            sub_1B5CE94C8(a1, 1);
            ++v38;
          }

          while (v38 < v68[1]);
        }
      }

LABEL_51:
      sub_1B5CE94C8(a1, 0);
      v20 = *(&v70 + 1);
    }

    while (*(&v70 + 1));
  }

  sub_1B5CE94C8(a1, 0);
  sub_1B5CE95C0(a1, a5 == 1, 1);
  sub_1B5CECD54(a1 + 624);
  sub_1B5CF0D9C(a1, a2, a3);
  v56 = *a2;
  *a2 = v71[0];
  v71[0] = v56;
  v57 = *(a2 + 16);
  *(a2 + 16) = *&v71[1];
  *&v71[1] = v57;
  v58 = *(a2 + 24);
  *(a2 + 24) = *(&v71[1] + 8);
  *(&v71[1] + 8) = v58;
  LOBYTE(v57) = *(a2 + 40);
  *(a2 + 40) = BYTE8(v71[2]);
  BYTE8(v71[2]) = v57;
  if (v67)
  {
    MEMORY[0x1B8C880C0](v67, 0x1000C8077774924);
  }

  sub_1B5CEE800(v69);
  result = *&v71[0];
  if (*&v71[0])
  {
    return MEMORY[0x1B8C880C0](*&v71[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CF0C94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    MEMORY[0x1B8C880C0](a11, 0x1000C8077774924);
  }

  sub_1B5CEE800(va);
  v19 = *(v16 - 144);
  if (v19)
  {
    MEMORY[0x1B8C880C0](v19, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x8000001D3;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:467: MARISA_MEMORY_ERROR: std::bad_alloc";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5CF0D9C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v13, 0, 41);
  sub_1B5CEBC0C(v13, *(a2 + 24));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(&v13[0] + 1);
    v7 = (*(a2 + 16) + 16);
    do
    {
      *(v6 + 4 * *v7) = *(v7 - 1);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(&v13[0] + 1);
  }

  v8 = *a3;
  v9 = *&v13[1];
  *a3 = *&v13[0];
  *(a3 + 1) = v6;
  v13[0] = v8;
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;
  *&v13[1] = v10;
  v11 = *(a3 + 24);
  *(a3 + 24) = *(&v13[1] + 8);
  *(&v13[1] + 8) = v11;
  LOBYTE(v10) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v13[2]);
  result = v8;
  BYTE8(v13[2]) = v10;
  if (v8)
  {
    return MEMORY[0x1B8C880C0](v8, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CF0E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CF0E94(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  if ((a2 - a1) < 241)
  {
    v7 = 0;
    goto LABEL_64;
  }

  v7 = 0;
  v8 = a1;
  v9 = a1;
  do
  {
    v10 = sub_1B5CF12A4(v9, v9 + 24 * (v6 / 0x30uLL), v4 - 24, a3);
    v11 = v10;
    v12 = v9;
    v5 = v4;
    v13 = v9;
    v14 = v4;
    while (v12 < v5)
    {
      v15 = *(v12 + 8);
      v16 = a3 >= v15 ? -1 : *(*v12 - a3 - 1);
      if (v16 > v10)
      {
        break;
      }

      if (v16 == v10)
      {
        v17 = *v12;
        *v12 = *v13;
        *(v12 + 8) = *(v13 + 8);
        v18 = *(v12 + 12);
        *(v12 + 12) = *(v13 + 12);
        *(v12 + 16) = *(v13 + 16);
        *v13 = v17;
        *(v13 + 8) = v15;
        *(v13 + 12) = v18;
        v13 += 24;
      }

LABEL_11:
      v12 += 24;
    }

    if (v12 < v5)
    {
      v19 = v5 - 24;
      do
      {
        v5 = v19;
        v20 = *(v19 + 8);
        if (a3 >= v20)
        {
          v21 = -1;
        }

        else
        {
          v21 = *(*v5 - a3 - 1);
        }

        if (v21 < v10)
        {
          break;
        }

        if (v21 == v10)
        {
          v22 = *(v14 - 24);
          v14 -= 24;
          v23 = *v5;
          *v5 = v22;
          *(v5 + 8) = *(v14 + 8);
          v24 = *(v5 + 12);
          *(v5 + 12) = *(v14 + 12);
          *(v5 + 16) = *(v14 + 16);
          *v14 = v23;
          *(v14 + 8) = v20;
          *(v14 + 12) = v24;
        }

        v19 = v5 - 24;
      }

      while (v12 < v5);
    }

    if (v12 < v5)
    {
      v25 = *v12;
      v26 = *(v12 + 16);
      *v12 = *v5;
      v27 = *(v12 + 8);
      *(v12 + 8) = *(v5 + 8);
      *(v12 + 12) = *(v5 + 12);
      *(v12 + 16) = *(v5 + 16);
      *v5 = v25;
      *(v5 + 8) = v27;
      *(v5 + 16) = v26;
      goto LABEL_11;
    }

    if (v13 > v9)
    {
      v28 = 0;
      do
      {
        v29 = v13 + v28;
        v30 = v12 + v28;
        v31 = *(v13 + v28 - 24);
        v32 = *(v13 + v28 - 8);
        *(v29 - 24) = *(v12 + v28 - 24);
        v33 = *(v13 + v28 - 16);
        *(v29 - 16) = *(v12 + v28 - 16);
        *(v29 - 12) = *(v12 + v28 - 12);
        *(v29 - 8) = *(v12 + v28 - 8);
        *(v30 - 24) = v31;
        *(v30 - 16) = v33;
        *(v30 - 8) = v32;
        v28 -= 24;
      }

      while (v13 + v28 > v9);
      v12 += v28;
    }

    while (v14 < v4)
    {
      v34 = *v14;
      v35 = *(v14 + 16);
      *v14 = *v5;
      v36 = *(v14 + 8);
      *(v14 + 8) = *(v5 + 8);
      *(v14 + 12) = *(v5 + 12);
      *(v14 + 16) = *(v5 + 16);
      *v5 = v34;
      *(v5 + 8) = v36;
      *(v5 + 16) = v35;
      v14 += 24;
      v5 += 24;
    }

    v37 = v12 - v8;
    v38 = v5 - v12;
    if (v37 <= (v5 - v12))
    {
      v39 = v4 - v5;
      if ((v4 - v5) <= v38)
      {
        if (v37 == 24)
        {
          ++v7;
        }

        else if (v37 >= 25)
        {
          v7 += sub_1B5CF0E94(v9, v12, a3);
        }

        if (v39 == 24)
        {
          ++v7;
        }

        else if (v39 >= 25)
        {
          v7 += sub_1B5CF0E94(v5, v4, a3);
        }

        if (v38 == 24)
        {
          ++v7;
        }

        else if (v38 >= 25)
        {
          if (v11 == -1)
          {
            ++v7;
            v4 = v5;
            goto LABEL_60;
          }

          ++a3;
        }

        v4 = v5;
        v5 = v12;
        goto LABEL_60;
      }
    }

    if (v38 == 24)
    {
      goto LABEL_32;
    }

    if (v38 >= 25)
    {
      if (v10 == -1)
      {
LABEL_32:
        ++v7;
      }

      else
      {
        v7 += sub_1B5CF0E94(v12, v5, a3 + 1);
      }
    }

    v40 = v4 - v5;
    if (v37 >= (v4 - v5))
    {
      if (v40 == 24)
      {
        ++v7;
      }

      else if (v40 >= 25)
      {
        v7 += sub_1B5CF0E94(v5, v4, a3);
      }

      v4 = v12;
      v5 = v9;
    }

    else if (v37 == 24)
    {
      ++v7;
    }

    else if (v37 >= 25)
    {
      v7 += sub_1B5CF0E94(v9, v12, a3);
    }

LABEL_60:
    v6 = v4 - v5;
    v8 = v5;
    v9 = v5;
  }

  while ((v4 - v5) > 240);
LABEL_64:
  if (v6 >= 25)
  {
    v7 += sub_1B5CF1324(v5, v4, a3);
  }

  return v7;
}

uint64_t sub_1B5CF12A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(~a4 + *a1);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(~a4 + *a2);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(~a4 + *a3);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5CF1324(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1 + 24;
  if (a1 + 24 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v15 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 24;
        v10 = sub_1B5CF1408(v8 - 24, v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 24);
        v12 = *(v8 - 8);
        *(v8 - 24) = *v8;
        v13 = *(v8 + 8);
        *(v8 - 8) = *(v8 + 16);
        *v8 = v11;
        v14 = *(v8 - 16);
        *(v8 - 16) = v13;
        *(v8 + 8) = v14;
        *(v8 + 16) = v12;
        v8 -= 24;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v15 = v10 != 0;
    }

    v7 += v15;
    v3 += 24;
  }

  while (v3 < a2);
  return v7;
}

uint64_t sub_1B5CF1408(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a2 + ~a3);
    v8 = (*a1 + ~a3);
    while (v6)
    {
      v9 = *v8;
      v10 = *v7;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      --v7;
      --v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

char *sub_1B5CF1478(uint64_t *a1, uint64_t a2)
{
  result = operator new[](12 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = (a1[1] + 8);
    v7 = result + 8;
    do
    {
      *(v7 - 1) = *(v6 - 1);
      v8 = *v6;
      v6 += 3;
      *v7 = v8;
      v7 += 3;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B8C880C0);
  }

  return result;
}

uint64_t sub_1B5CF1520(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_1B5CE7194(a2, 8uLL);
  *(a1 + 16) = sub_1B5CE7194(a2, v4);
  sub_1B5CE70B8(a2, -v4 & 7);
  *(a1 + 24) = v4;

  return sub_1B5CEB598(a1);
}

uint64_t sub_1B5CF1594(uint64_t a1, uint64_t a2)
{
  __buf = *(a1 + 24);
  sub_1B5CE6C50(a2, &__buf, 8uLL);
  sub_1B5CF15F8(a2, *(a1 + 16), *(a1 + 24));
  return sub_1B5CE6B14(a2, -*(a1 + 24) & 7);
}

uint64_t sub_1B5CF15F8(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  return sub_1B5CE6C50(a1, a2, a3);
}

double sub_1B5CF167C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  *(a1 + 73) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  *(a1 + 185) = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  *(a1 + 233) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  *(a1 + 137) = 0u;
  return result;
}

uint64_t sub_1B5CF16B0(__int128 *a1, uint64_t a2, __int128 *a3, int a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x200000011;
    v17 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:17: MARISA_NULL_ERROR: offsets == NULL";
    goto LABEL_28;
  }

  if (a4 == 0x2000)
  {
    goto LABEL_15;
  }

  if (a4 != 4096)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x500000028;
    v17 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:40: MARISA_CODE_ERROR: undefined tail mode";
LABEL_28:
    exception[3] = v17;
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = 0;
    a4 = 4096;
    while (1)
    {
      v7 = *(a2 + 8) + 16 * v6;
      v8 = *(v7 + 8);
      if (v8)
      {
        break;
      }

LABEL_11:
      if (++v6 == v5)
      {
        goto LABEL_15;
      }
    }

    v9 = *v7;
    v10 = -v8;
    while (*(v9 + 1 + v10))
    {
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_11;
      }
    }

    a4 = 0x2000;
  }

  else
  {
    a4 = 4096;
  }

LABEL_15:
  memset(v18, 0, 41);
  memset(v19, 0, 41);
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v19[3] = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_1B5CF18F0(v18, a2, a3, a4);
  v12 = *a1;
  *a1 = v18[0];
  v18[0] = v12;
  v13 = *(a1 + 2);
  *(a1 + 2) = *&v18[1];
  *&v18[1] = v13;
  v14 = *(a1 + 24);
  *(a1 + 24) = *(&v18[1] + 8);
  *(&v18[1] + 8) = v14;
  LOBYTE(v13) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v18[2]);
  BYTE8(v18[2]) = v13;
  sub_1B5CE9114(a1 + 6, v19);
  if (v24)
  {
    MEMORY[0x1B8C880C0](v24, 0x1000C8077774924);
  }

  if (v22)
  {
    MEMORY[0x1B8C880C0](v22, 0x1000C8077774924);
  }

  if (v20)
  {
    MEMORY[0x1B8C880C0](v20, 0x1000C8077774924);
  }

  if (*&v19[0])
  {
    MEMORY[0x1B8C880C0](*&v19[0], 0x1000C8077774924);
  }

  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x1B8C880C0](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_1B5CF18F0(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_1B5DC2640;
    v13 = xmmword_1B5DC2630;
    v14 = (v9 + 44);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 8) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 4) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v10 + 2;
        v14[4] = v10 + 3;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 16;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  sub_1B5CF22E8(v9, v9 + 16 * v8, 0);
  memset(v37, 0, 41);
  v17 = *(a2 + 24);
  LODWORD(v36[0]) = 0;
  sub_1B5CF2118(v37, v17, v36);
  v36[0] = 0;
  v36[1] = 0;
  v18 = *(a2 + 24);
  if (v18)
  {
    v19 = v36;
    do
    {
      --v18;
      v20 = *(a2 + 8) + 16 * v18;
      v21 = *(v20 + 8);
      if (!v21)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F2D575A0;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
        exception[2] = 0x4000000ACLL;
        exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:172: MARISA_RANGE_ERROR: current.length() == 0";
        __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
      }

      v22 = 0;
      v23 = 0;
      v24 = *(v19 + 2);
      while (v24 != v23)
      {
        if (*(*v19 + v22) != *(*v20 + v22))
        {
          goto LABEL_19;
        }

        ++v23;
        --v22;
        if (v21 == v23)
        {
          goto LABEL_20;
        }
      }

      v23 = *(v19 + 2);
LABEL_19:
      if (v23 != v21)
      {
        v25 = *(&v37[0] + 1);
        goto LABEL_23;
      }

LABEL_20:
      v25 = *(&v37[0] + 1);
      if (v24)
      {
        *(*(&v37[0] + 1) + 4 * *(v20 + 12)) = v24 - v21 + *(*(&v37[0] + 1) + 4 * *(v19 + 3));
        goto LABEL_35;
      }

LABEL_23:
      *(v25 + 4 * *(v20 + 12)) = *(a1 + 24);
      v26 = *(v20 + 8);
      if (v26)
      {
        for (i = 0; i < v26; ++i)
        {
          v35 = *(*v20 - v26 + i + 1);
          sub_1B5CECBD8(a1, &v35);
          v26 = *(v20 + 8);
        }

        if (a4 != 4096)
        {
          if (v26 >= 2)
          {
            v28 = 1;
            do
            {
              sub_1B5CE94C8((a1 + 48), 0);
              ++v28;
            }

            while (v28 < *(v20 + 8));
          }

LABEL_33:
          sub_1B5CE94C8((a1 + 48), 1);
          goto LABEL_34;
        }
      }

      else if (a4 != 4096)
      {
        goto LABEL_33;
      }

      v35 = 0;
      sub_1B5CECBD8(a1, &v35);
LABEL_34:
      if (*(a1 + 28))
      {
        v34 = __cxa_allocate_exception(0x20uLL);
        *v34 = &unk_1F2D575A0;
        v34[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
        v34[2] = 0x7000000C2;
        v34[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:194: MARISA_SIZE_ERROR: buf_.size() > MARISA_UINT32_MAX";
        __cxa_throw(v34, &unk_1F2D57578, std::exception::~exception);
      }

LABEL_35:
      v19 = v20;
    }

    while (v18);
  }

  sub_1B5CECD54(a1);
  v29 = *a3;
  *a3 = v37[0];
  v37[0] = v29;
  v30 = *(a3 + 2);
  *(a3 + 2) = *&v37[1];
  *&v37[1] = v30;
  v31 = *(a3 + 24);
  *(a3 + 24) = *(&v37[1] + 8);
  *(&v37[1] + 8) = v31;
  LOBYTE(v30) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v37[2]);
  result = v29;
  BYTE8(v37[2]) = v30;
  if (v29)
  {
    return MEMORY[0x1B8C880C0](v29, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CF1C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x1B8C880C0](a13, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1B5CF1CD4(uint64_t *a1, uint64_t *a2)
{
  sub_1B5CE918C(a1, a2);

  return sub_1B5CE9114(a1 + 6, a2 + 6);
}

uint64_t sub_1B5CF1D14(uint64_t a1, uint64_t *a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_1B5CF2228(v8, a2);
  sub_1B5CE9F54(v9, a2);
  v4 = *a1;
  *a1 = v8[0];
  v8[0] = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(a1 + 24);
  *(a1 + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  sub_1B5CE9114((a1 + 48), v9);
  if (v14)
  {
    MEMORY[0x1B8C880C0](v14, 0x1000C8077774924);
  }

  if (v12)
  {
    MEMORY[0x1B8C880C0](v12, 0x1000C8077774924);
  }

  if (v10)
  {
    MEMORY[0x1B8C880C0](v10, 0x1000C8077774924);
  }

  if (*&v9[0])
  {
    MEMORY[0x1B8C880C0](*&v9[0], 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x1B8C880C0](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_1B5CF1E50(uint64_t a1, uint64_t a2)
{
  sub_1B5CF1594(a1, a2);

  return sub_1B5CEBCFC(a1 + 48, a2);
}

void sub_1B5CF1E90(void *a1, std::string *this, unint64_t a3)
{
  v3 = a3;
  if (a1[12])
  {
    do
    {
      std::string::push_back(this, *(a1[2] + v3));
      v6 = *(a1[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
      ++v3;
    }

    while ((v6 & 1) == 0);
  }

  else
  {
    v7 = a1[2];
    v8 = *(v7 + a3);
    if (v8)
    {
      v9 = (a3 + v7 + 1);
      do
      {
        std::string::push_back(this, v8);
        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }
  }
}

uint64_t sub_1B5CF1F20(void *a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  v5 = a1[2];
  if (a1[12])
  {
    v6 = *a4;
    do
    {
      if (*(v5 + a5) != *(a2 + v6))
      {
        break;
      }

      *a4 = ++v6;
      if ((*(a1[8] + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5))
      {
        return 1;
      }

      ++a5;
    }

    while (v6 < a3);
  }

  else
  {
    v7 = (v5 + a5);
    v8 = *a4;
    v11 = *v7;
    v9 = v7 + 1;
    v10 = v11;
    while (v10 == *(a2 + v8))
    {
      *a4 = ++v8;
      v10 = *v9;
      if (!*v9)
      {
        return 1;
      }

      ++v9;
      if (v8 >= a3)
      {
        return 0;
      }
    }
  }

  return 0;
}

BOOL sub_1B5CF1FB4(void *a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5, std::string *this)
{
  v7 = a5;
  if (a1[12])
  {
    v12 = *a4;
    while (1)
    {
      v13 = *(a1[2] + v7);
      v14 = *(a2 + v12);
      v15 = v13 == v14;
      if (v13 != v14)
      {
        break;
      }

      std::string::push_back(this, v13);
      v12 = *a4 + 1;
      *a4 = v12;
      if ((*(a1[8] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
      {
        break;
      }

      ++v7;
      if (v12 >= a3)
      {
        do
        {
          std::string::push_back(this, *(a1[2] + v7));
          v16 = *(a1[8] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7;
          ++v7;
        }

        while ((v16 & 1) == 0);
        return 1;
      }
    }
  }

  else
  {
    v17 = a1[2];
    v18 = *a4;
    v19 = v17 + a5 - *a4;
    v20 = *(v17 + a5);
    v21 = *a4;
    while (1)
    {
      v22 = *(a2 + v21);
      v15 = v20 == v22;
      if (v20 != v22)
      {
        break;
      }

      std::string::push_back(this, v20);
      v23 = *a4;
      v21 = *a4 + 1;
      *a4 = v21;
      v20 = *(v19 + v21);
      if (!v20)
      {
        break;
      }

      if (v21 >= a3)
      {
        v24 = (v7 - v18 + v17 + v23 + 2);
        do
        {
          std::string::push_back(this, v20);
          v25 = *v24++;
          v20 = v25;
        }

        while (v25);
        return 1;
      }
    }
  }

  return v15;
}

uint64_t *sub_1B5CF2118(uint64_t *result, unint64_t a2, int *a3)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (v6 < a2)
  {
    v7 = 2 * v6;
    if (v6 >> 61)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v6 > a2 >> 1)
    {
      a2 = v7;
    }

    result = sub_1B5CEBC64(result, a2);
  }

  v8 = v5[3];
  v9 = v4 - v8;
  if (v4 > v8)
  {
    v10 = 0;
    v11 = *a3;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = (v5[1] + 4 * v8 + 8);
    do
    {
      v14 = vdupq_n_s64(v10);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1B5DC2630)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        *(v13 - 2) = v11;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        *(v13 - 1) = v11;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1B5DC2640)))).i32[1])
      {
        *v13 = v11;
        v13[1] = v11;
      }

      v10 += 4;
      v13 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  v5[3] = v4;
  return result;
}

uint64_t sub_1B5CF2228(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_1B5CF1520(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B5CF22C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CF22E8(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = (a2 - a1) >> 4;
  if (v6 < 11)
  {
    v53 = 0;
    goto LABEL_77;
  }

  v53 = 0;
  v7 = a1;
  v8 = a1;
  do
  {
    v9 = sub_1B5CF26C4(v8, v8 + 16 * (v6 >> 1), v4 - 16, a3);
    v10 = v9;
    v11 = v8;
    v5 = v4;
    v12 = v8;
    v13 = v4;
    while (v11 < v5)
    {
      v14 = *(v11 + 8);
      v15 = a3 >= v14 ? -1 : *(*v11 - a3);
      if (v15 > v9)
      {
        break;
      }

      if (v15 == v9)
      {
        v16 = *v11;
        v17 = *(v11 + 12);
        *v11 = *v12;
        *(v11 + 8) = *(v12 + 8);
        *v12 = v16;
        *(v12 + 8) = v14;
        *(v12 + 12) = v17;
        v12 += 16;
      }

LABEL_11:
      v11 += 16;
    }

    if (v11 < v5)
    {
      v18 = v5 - 16;
      do
      {
        v5 = v18;
        v19 = *(v18 + 8);
        if (a3 >= v19)
        {
          v20 = -1;
        }

        else
        {
          v20 = *(*v5 - a3);
        }

        if (v20 < v9)
        {
          break;
        }

        if (v20 == v9)
        {
          v21 = *(v13 - 16);
          v13 -= 16;
          v22 = *v5;
          v23 = *(v5 + 12);
          *v5 = v21;
          *(v5 + 8) = *(v13 + 8);
          *v13 = v22;
          *(v13 + 8) = v19;
          *(v13 + 12) = v23;
        }

        v18 = v5 - 16;
      }

      while (v11 < v5);
    }

    if (v11 < v5)
    {
      v24 = *v11;
      *v11 = *v5;
      v25 = *(v5 + 8);
      *v5 = v24;
      v26 = *(v11 + 8);
      *(v11 + 8) = v25;
      *(v5 + 8) = v26;
      goto LABEL_11;
    }

    while (v12 > v8)
    {
      v28 = *(v12 - 16);
      v12 -= 16;
      v27 = v28;
      v29 = *(v11 - 16);
      v11 -= 16;
      *v12 = v29;
      v30 = *(v11 + 8);
      *v11 = v27;
      v31 = *(v12 + 8);
      *(v12 + 8) = v30;
      *(v11 + 8) = v31;
    }

    while (v13 < v4)
    {
      v32 = *v13;
      *v13 = *v5;
      v33 = *(v5 + 8);
      *v5 = v32;
      v34 = *(v13 + 8);
      *(v13 + 8) = v33;
      *(v5 + 8) = v34;
      v13 += 16;
      v5 += 16;
    }

    v35 = v11 - v7;
    v36 = (v11 - v7) >> 4;
    v37 = v5 - v11;
    v38 = (v5 - v11) >> 4;
    if (v36 <= v38)
    {
      v39 = (v4 - v5) >> 4;
      if (v39 <= v38)
      {
        if (v35 == 16)
        {
          v42 = v53 + 1;
        }

        else
        {
          if (v36 < 2)
          {
LABEL_52:
            if (v4 - v5 == 16)
            {
              v44 = v53 + 1;
            }

            else
            {
              v44 = v53;
              if (v39 >= 2)
              {
                v45 = v4;
                v46 = v38;
                v47 = sub_1B5CF22E8(v5, v45, a3);
                v38 = v46;
                v44 = v47 + v53;
              }
            }

            if (v37 == 16)
            {
              v53 = v44 + 1;
              v4 = v5;
              v5 = v11;
            }

            else
            {
              if (v10 == -1)
              {
                v48 = v44 + 1;
              }

              else
              {
                v48 = v44;
              }

              if (v10 == -1)
              {
                v49 = a3;
              }

              else
              {
                v49 = a3 + 1;
              }

              if (v10 == -1)
              {
                v50 = v5;
              }

              else
              {
                v50 = v11;
              }

              if (v38 >= 2)
              {
                v44 = v48;
              }

              v53 = v44;
              if (v38 >= 2)
              {
                a3 = v49;
              }

              v4 = v5;
              if (v38 >= 2)
              {
                v5 = v50;
              }

              else
              {
                v5 = v11;
              }
            }

            goto LABEL_74;
          }

          v43 = sub_1B5CF22E8(v8, v11, a3);
          v39 = (v4 - v5) >> 4;
          v38 = (v5 - v11) >> 4;
          v42 = v43 + v53;
        }

        v53 = v42;
        goto LABEL_52;
      }
    }

    if (v37 == 16)
    {
      v40 = v53;
      goto LABEL_32;
    }

    v40 = v53;
    if (v38 >= 2)
    {
      if (v9 == -1)
      {
LABEL_32:
        ++v40;
      }

      else
      {
        v40 = sub_1B5CF22E8(v11, v5, a3 + 1) + v53;
      }
    }

    v41 = v4 - v5;
    if (v36 >= (v4 - v5) >> 4)
    {
      if (v41 == 16)
      {
        ++v40;
      }

      else if (v41 >> 4 >= 2)
      {
        v40 += sub_1B5CF22E8(v5, v4, a3);
      }

      v53 = v40;
      v4 = v11;
      v5 = v8;
    }

    else
    {
      if (v35 == 16)
      {
        ++v40;
      }

      else if (v36 >= 2)
      {
        v40 += sub_1B5CF22E8(v8, v11, a3);
      }

      v53 = v40;
    }

LABEL_74:
    v6 = (v4 - v5) >> 4;
    v7 = v5;
    v8 = v5;
  }

  while (v6 > 10);
LABEL_77:
  if (v6 < 2)
  {
    return v53;
  }

  else
  {
    return sub_1B5CF2744(v5, v4, a3) + v53;
  }
}

uint64_t sub_1B5CF26C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*a1 - a4);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(*a2 - a4);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*a3 - a4);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5CF2744(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = (a1 + 16);
  if (a1 + 16 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v14 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 2;
        v10 = sub_1B5CF2818((v8 - 2), v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 2);
        *(v8 - 2) = *v8;
        v12 = v8[1];
        *v8 = v11;
        v13 = *(v8 - 1);
        *(v8 - 1) = v12;
        v8[1] = v13;
        v8 -= 2;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v14 = v10 != 0;
    }

    v7 += v14;
    v3 += 2;
  }

  while (v3 < a2);
  return v7;
}

uint64_t sub_1B5CF2818(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a2 - a3);
    v8 = (*a1 - a3);
    while (v6)
    {
      v9 = *v8;
      v10 = *v7;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      --v7;
      --v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

uint64_t sub_1B5CF2884(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 80) + 12 * (a2 >> 9));
  v3 = *v2;
  v4 = (a2 >> 6) & 7;
  if (v4 > 3)
  {
    if (((a2 >> 6) & 7) > 5)
    {
      if (v4 == 6)
      {
        v5 = (v2[2] >> 9) & 0x1FF;
      }

      else
      {
        v5 = (v2[2] >> 18) & 0x1FF;
      }

      goto LABEL_16;
    }

    if (v4 != 4)
    {
      v5 = v2[2] & 0x1FF;
      goto LABEL_16;
    }

    v3 += v2[1] >> 23;
  }

  else if (((a2 >> 6) & 7) > 1)
  {
    if (v4 == 2)
    {
      v6 = v2[1] >> 7;
    }

    else
    {
      v6 = v2[1] >> 15;
    }

    v3 += v6;
  }

  else if (v4)
  {
    v5 = v2[1] & 0x7F;
LABEL_16:
    v3 += v5;
  }

  v7 = *(*(a1 + 16) + 8 * (a2 >> 6)) & ~(-1 << a2);
  v8 = (((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) & 0x3333333333333333);
  return v3 + ((0x101010101010101 * (((v8 >> 4) & 0x707070707070707) + (v8 & 0x707070707070707))) >> 56);
}

unint64_t sub_1B5CF2980(void *a1, unint64_t a2)
{
  v2 = (a1[16] + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = a1[10];
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = a2 - (v3 << 9) + *v11;
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = v13 + v19 - 448;
      }

      else
      {
        v14 |= 6uLL;
        v13 = v13 + v17 - 384;
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = v13 + (v16 & 0x1FF) - 320;
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v12 >> 23) + v13 - 256;
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = v13 + v18 - 192;
    }

    else
    {
      v14 |= 2uLL;
      v13 = v13 + (v12 >> 7) - 128;
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = v15 + v13 - 64;
    }
  }

  return sub_1B5CF2B5C(v13, v14 << 6, ~*(a1[2] + 8 * v14));
}

unint64_t sub_1B5CF2B5C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * a1 - 0x101010101010101) >> 7) & 0x101010101010101));
  return v5 + a2 + byte_1B5DC2680[256 * (a1 - ((0x101010101010100 * v4) >> v5)) + (a3 >> v5)];
}

unint64_t sub_1B5CF2BE4(void *a1, unint64_t a2)
{
  v2 = (a1[22] + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = a1[10];
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = v12 - v25;
    }

    else
    {
      v29 = v12 - v26;
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = v12 - v23;
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = v12 - v30;
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = v12 - (v11 >> 7);
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = v12 - v15;
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = v12 - v18;
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }

  return sub_1B5CF2B5C(v21, v22 << 6, *(a1[2] + 8 * v22));
}

void sub_1B5CF2D50(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = a2[6];
  v9 = v8 >> 9;
  if ((v8 & 0x1FF) != 0)
  {
    ++v9;
  }

  sub_1B5CEBAE0(a1 + 8, v9 + 1);
  v10 = v6[3];
  if (!v10)
  {
    LODWORD(v13) = 0;
    if ((v8 & 0x1FF) == 0)
    {
      goto LABEL_55;
    }

LABEL_35:
    v35 = (v8 - 1) >> 9;
    v36 = ((v8 - 1) >> 6) & 7;
    if (v36 > 3)
    {
      if ((((v8 - 1) >> 6) & 7) > 5)
      {
        if (v36 == 7)
        {
          goto LABEL_55;
        }

        v37 = a1[9];
        v43 = (v37 + 12 * v35);
        v44 = v43[2];
        v39 = v13 - *v43;
        goto LABEL_54;
      }

      if (v36 != 4)
      {
        v37 = a1[9];
        v47 = (v37 + 12 * v35);
        v48 = v47[2];
        v39 = v13 - *v47;
LABEL_53:
        v44 = v48 & 0xFFFC01FF | ((v39 & 0x1FF) << 9);
        *(v37 + 12 * v35 + 8) = v44;
LABEL_54:
        *(v37 + 12 * v35 + 8) = v44 & 0xF803FFFF | ((v39 & 0x1FF) << 18);
        goto LABEL_55;
      }

      v37 = a1[9];
      v39 = v13 - *(v37 + 12 * v35);
LABEL_52:
      v50 = v37 + 12 * v35;
      v48 = *(v50 + 8) & 0xFFFFFE00 | v39 & 0x1FF;
      *(v50 + 8) = v48;
      goto LABEL_53;
    }

    if ((((v8 - 1) >> 6) & 7) > 1)
    {
      if (v36 != 2)
      {
        v37 = a1[9];
        v49 = (v37 + 12 * v35);
        v46 = v49[1];
        v39 = v13 - *v49;
        goto LABEL_51;
      }

      v37 = a1[9];
      v41 = (v37 + 12 * v35);
      v42 = v41[1];
      v39 = v13 - *v41;
    }

    else
    {
      if (v36)
      {
        v37 = a1[9];
        v45 = (v37 + 12 * v35);
        v40 = v45[1];
        v39 = v13 - *v45;
      }

      else
      {
        v37 = a1[9];
        v38 = (v37 + 12 * v35);
        v39 = v13 - *v38;
        v40 = v38[1] & 0xFFFFFF80 | v39 & 0x7F;
        v38[1] = v40;
      }

      v42 = v40 & 0xFFFF807F | (v39 << 7);
      *(v37 + 12 * v35 + 4) = v42;
    }

    v46 = v42 & 0xFF807FFF | (v39 << 15);
    *(v37 + 12 * v35 + 4) = v46;
LABEL_51:
    *(v37 + 12 * v35 + 4) = v46 & 0x7FFFFF | (v39 << 23);
    goto LABEL_52;
  }

  v51 = v8 & 0x1FF;
  v52 = v8;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v55 = v6[3];
  do
  {
    v15 = v14 & 7;
    v16 = (a1[9] + 12 * (v11 >> 9));
    if (v15 <= 3)
    {
      if ((v14 & 7u) > 1uLL)
      {
        if (v15 == 2)
        {
          v19 = (v13 - *v16);
          v18 = v16[1] & 0xFFFF807F | ((v13 - *v16) << 7);
        }

        else
        {
          v21 = (v13 - *v16);
          v18 = v16[1] & 0xFF807FFF | ((v13 - *v16) << 15);
        }
      }

      else
      {
        if ((v14 & 7) == 0)
        {
          *v16 = v13;
          goto LABEL_22;
        }

        v18 = v16[1] & 0xFFFFFF80 | (v13 - *v16) & 0x7F;
      }

      goto LABEL_19;
    }

    if ((v14 & 7u) > 5uLL)
    {
      if (v15 == 6)
      {
        v20 = v16[2] & 0xFFFC01FF | (((v13 - *v16) & 0x1FF) << 9);
      }

      else
      {
        v20 = v16[2] & 0xF803FFFF | (((v13 - *v16) & 0x1FF) << 18);
      }
    }

    else
    {
      if (v15 == 4)
      {
        v17 = (v13 - *v16);
        v18 = v16[1] & 0x7FFFFF | ((v13 - *v16) << 23);
LABEL_19:
        v16[1] = v18;
        goto LABEL_22;
      }

      v20 = v16[2] & 0xFFFFFE00 | (v13 - *v16) & 0x1FF;
    }

    v16[2] = v20;
LABEL_22:
    v22 = *(v6[2] + 8 * v14);
    v23 = (((((v22 >> 1) & 0x5555555555555555) + (v22 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v22 >> 1) & 0x5555555555555555) + (v22 & 0x5555555555555555)) & 0x3333333333333333);
    v24 = (0x101010101010101 * (((v23 >> 4) & 0x707070707070707) + (v23 & 0x707070707070707))) >> 56;
    if (a3)
    {
      v25 = v6;
      v26 = a3;
      v27 = a4;
      v28 = 64;
      if (v8 < 0x40)
      {
        v28 = v8;
      }

      v29 = v28 - v24;
      v30 = -v12 & 0x1FFLL;
      if (v28 - v24 > v30)
      {
        v53 = v12;
        v54 = v13;
        v56 = sub_1B5CF2B5C(v30, v11, ~v22);
        sub_1B5CF318C(a1 + 14, &v56);
        v12 = v53;
        v13 = v54;
        v10 = v55;
      }

      v12 += v29;
      a4 = v27;
      a3 = v26;
      v6 = v25;
    }

    if (a4)
    {
      v31 = -v13 & 0x1FFLL;
      if (v24 > v31)
      {
        v32 = v22;
        v33 = v13;
        v34 = v12;
        v56 = sub_1B5CF2B5C(v31, v11, v32);
        sub_1B5CF318C(a1 + 20, &v56);
        v12 = v34;
        v10 = v55;
        v13 = v33;
      }
    }

    v13 += v24;
    ++v14;
    v11 += 64;
    v8 -= 64;
  }

  while (v10 != v14);
  v8 = v52;
  if (v51)
  {
    goto LABEL_35;
  }

LABEL_55:
  a1[6] = v8;
  a1[7] = v6[7];
  *(a1[9] + 12 * a1[11] - 12) = v13;
  if (a3)
  {
    v56 = v8;
    sub_1B5CF318C(a1 + 14, &v56);
    sub_1B5CF31FC(a1 + 28);
  }

  if (a4)
  {
    v56 = v8;
    sub_1B5CF318C(a1 + 20, &v56);
    sub_1B5CF31FC(a1 + 40);
  }
}

uint64_t *sub_1B5CF318C(uint64_t *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 >> 61)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = sub_1B5CEBC64(result, v8);
    v4 = v3[3];
    v6 = v4 + 1;
  }

  *(v3[1] + 4 * v4) = *a2;
  v3[3] = v6;
  return result;
}

_DWORD *sub_1B5CF31FC(_DWORD *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D575A0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_1F2D57578, std::exception::~exception);
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return sub_1B5CEBC64(result, v2);
  }

  return result;
}

uint64_t sub_1B5CF3294(unsigned int *a1)
{
  v2 = sub_1B5CF3300();
  v3 = sub_1B5CF46C8(a1);
  v4 = *(v2 + 8 * (v3 & 3));
  return (*(*v4 + 40))(v4, a1, v3);
}

uint64_t sub_1B5CF3300()
{
  if ((atomic_load_explicit(&qword_1EB90C880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90C880))
  {
    operator new();
  }

  return qword_1EB90C878;
}

void sub_1B5CF3378(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C880F0](v1, 0x20C40DC1BFBCFLL);
  __cxa_guard_abort(&qword_1EB90C880);
  _Unwind_Resume(a1);
}

void sub_1B5CF33B0(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  operator new();
}

uint64_t sub_1B5CF352C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return (*(**(a1 + 8 * (*(a3 + 12) & 3)) + 48))();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5CF3590(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(**(sub_1B5CF3300() + 8 * (*(*(a2 + 8) + (*(a3 + 12) & 0xFFFFFFFFFFFFFFFCLL) + 4 * a4 + 4) & 3)) + 40);

  return v4();
}

void sub_1B5CF3618(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(a2 + 8) + (*(a3 + 12) & 0xFFFFFFFFFFFFFFFCLL));
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27[0] = 0;
  v13 = *v12;
  if (v13)
  {
    (*(a7 + 16))(a7, v13, a4, v27);
    v14 = *(v25 + 24);
  }

  else
  {
    v14 = 0;
  }

  if (a5 - 1 >= a4 && (v14 & 1) == 0)
  {
    v15 = sub_1B5CF3300();
    if ((v25[3] & 1) == 0)
    {
      v16 = v15;
      v17 = 0;
      v18 = v12 + 1;
      do
      {
        v19 = *(v16 + 8 * (v18[v17] & 3));
        v23[0] = (*(*v19 + 40))(v19, a2);
        v23[1] = v20;
        if (a6)
        {
          *(a6 + a4) = v17;
        }

        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 0x40000000;
        v22[2] = sub_1B5CF3814;
        v22[3] = &unk_1E7C204A0;
        v22[4] = a7;
        v22[5] = &v24;
        v21 = *(v16 + 8 * (HIDWORD(v20) & 3));
        (*(*v21 + 24))(v21, a2, v23, a4 + 1, a5, a6, v22);
        if (v17 > 0xFE)
        {
          break;
        }

        ++v17;
      }

      while ((v25[3] & 1) == 0);
    }
  }

  _Block_object_dispose(&v24, 8);
}

void sub_1B5CF37F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CF3814(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_1B5CF3878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8) + (*(a3 + 12) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = sub_1B5CF3300();
  v8 = 0;
  v15 = 0;
  v9 = v6 + 4;
  do
  {
    v10 = *(v7 + 8 * (*(v9 + 4 * v8) & 3));
    result = (*(*v10 + 40))(v10, a2);
    v14[0] = result;
    v14[1] = v12;
    v13 = v12 > 0xFFFFFFFEFFFFFFFFLL || (v12 & 0x300000000) == 0;
    if (!v13)
    {
      result = (*(a4 + 16))(a4, v8, v14, &v15);
    }

    if (v15)
    {
      break;
    }

    v13 = v8++ == 255;
  }

  while (!v13);
  return result;
}

uint64_t sub_1B5CF3960(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 8) + (*(a3 + 12) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = a4 >> 5;
  if (((*(v4 + 4 + 4 * v5) >> a4) & 1) == 0)
  {
    return 0;
  }

  v7 = a4 & 0x1F;
  v8 = sub_1B5CF3300();
  if (a4 >= 0x20)
  {
    v10 = 0;
    v12 = (v4 + 4);
    v13 = v5;
    do
    {
      v14 = *v12++;
      v9 = vcnt_s8(v14);
      v9.i16[0] = vaddlv_u8(v9);
      v10 += v9.i32[0];
      --v13;
    }

    while (v13);
  }

  else
  {
    v10 = 0;
  }

  v9.i32[0] = *(v4 + 4 + 4 * v5) & ~(-1 << v7);
  v15 = vcnt_s8(v9);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = *(**(v8 + 8 * (*(v4 + 40 + 4 * (v15.i32[0] + v10)) & 3)) + 40);

  return v16();
}

void sub_1B5CF3A80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(a2 + 8) + (*(a3 + 12) & 0xFFFFFFFFFFFFFFFCLL));
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36[0] = 0;
  v13 = *v12;
  if (v13)
  {
    (*(a7 + 16))(a7, v13, a4, v36);
    v14 = *(v34 + 24);
  }

  else
  {
    v14 = 0;
  }

  if (a5 - 1 >= a4 && (v14 & 1) == 0)
  {
    v15 = sub_1B5CF3300();
    v17 = v34;
    if ((v34[3] & 1) == 0)
    {
      v18 = v15;
      v19 = 0;
      v20 = v12 + 1;
      v21 = v12 + 10;
      do
      {
        v22 = v20[v19 >> 5];
        if ((v22 >> v19))
        {
          if (v19 >= 0x20)
          {
            v23 = 0;
            v24 = v19 >> 5;
            v25 = v20;
            do
            {
              v26 = *v25++;
              v16 = vcnt_s8(v26);
              v16.i16[0] = vaddlv_u8(v16);
              v23 += v16.i32[0];
              --v24;
            }

            while (v24);
          }

          else
          {
            v23 = 0;
          }

          v16.i32[0] = v22 & ~(-1 << (v19 & 0x1F));
          v27 = vcnt_s8(v16);
          v27.i16[0] = vaddlv_u8(v27);
          v28 = *(v18 + 8 * (v21[v27.i32[0] + v23] & 3));
          v32[0] = (*(*v28 + 40))(v28, a2);
          v32[1] = v29;
          if (a6)
          {
            *(a6 + a4) = v19;
          }

          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 0x40000000;
          v31[2] = sub_1B5CF3CF0;
          v31[3] = &unk_1E7C204C8;
          v31[4] = a7;
          v31[5] = &v33;
          v30 = *(v18 + 8 * (HIDWORD(v29) & 3));
          (*(*v30 + 24))(v30, a2, v32, a4 + 1, a5, a6, v31);
          v17 = v34;
        }

        if (v19 > 0xFE)
        {
          break;
        }

        ++v19;
      }

      while ((v17[3] & 1) == 0);
    }
  }

  _Block_object_dispose(&v33, 8);
}

void sub_1B5CF3CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CF3CF0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_1B5CF3D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8) + (*(a3 + 12) & 0xFFFFFFFFFFFFFFFCLL);
  result = sub_1B5CF3300();
  v9 = result;
  v10 = 0;
  v23 = 0;
  v11 = (v6 + 4);
  v12 = v6 + 40;
  while (1)
  {
    v13 = v11[v10 >> 5];
    if ((v13 >> v10))
    {
      break;
    }

    if (v10 > 0xFE)
    {
      return result;
    }

LABEL_16:
    ++v10;
  }

  if (v10 >= 0x20)
  {
    v14 = 0;
    v15 = v10 >> 5;
    v16 = v11;
    do
    {
      v17 = *v16++;
      v8 = vcnt_s8(v17);
      v8.i16[0] = vaddlv_u8(v8);
      v14 += v8.i32[0];
      --v15;
    }

    while (v15);
  }

  else
  {
    v14 = 0;
  }

  v8.i32[0] = v13 & ~(-1 << (v10 & 0x1F));
  v18 = vcnt_s8(v8);
  v18.i16[0] = vaddlv_u8(v18);
  v19 = *(v9 + 8 * (*(v12 + 4 * (v18.i32[0] + v14)) & 3));
  result = (*(*v19 + 40))(v19, a2);
  v22[0] = result;
  v22[1] = v20;
  if (v20 <= 0xFFFFFFFEFFFFFFFFLL && (v20 & 0x300000000) != 0)
  {
    result = (*(a4 + 16))(a4, v10, v22, &v23);
  }

  if (v10 <= 0xFE && (v23 & 1) == 0)
  {
    goto LABEL_16;
  }

  return result;
}

unsigned __int8 *sub_1B5CF3EC4(int a1, uint64_t a2, unsigned __int8 **a3, char a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (*a3)
  {
    v6 = (*(a2 + 16) + (*(a3 + 3) & 0xFFFFFFFFFFFFFFFCLL));
    memset(v13, 0, sizeof(v13));
    if (v4 <= v6 + 4)
    {
      if (v4 != v6 + 4)
      {
        sub_1B5CF4580();
      }

      v10 = (v6 + 8);
      LOBYTE(v13[0]) = a4;
      v9 = 1;
    }

    else
    {
      v7 = *v4;
      v8 = *(a3 + 8);
      a1 = memcpy(v13, v4 + 1, v8);
      v9 = v8 + 1;
      *(v13 + v8) = a4;
      if (v8 >= v7)
      {
        v10 = &v4[v7 + 5];
      }

      else
      {
        v10 = v4;
      }
    }

    result = sub_1B5CF3FF0(a1, v10, &v6[*v6 + 4], v13, v9);
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *sub_1B5CF3FF0(int a1, unint64_t __s1, unint64_t a3, void *__s2, size_t __n)
{
  if (__s1 >= a3)
  {
    return 0;
  }

  v8 = __s1;
  v9 = __n;
  while (1)
  {
    v10 = *v8;
    if (v10 >= __n)
    {
      v11 = memcmp(v8 + 1, __s2, v9);
      if (v11 > 0)
      {
        return 0;
      }

      if (!v11)
      {
        break;
      }
    }

    v8 += v10 + 5;
    if (v8 >= a3)
    {
      return 0;
    }
  }

  return v8;
}

void sub_1B5CF409C(uint64_t a1, uint64_t a2, unsigned __int8 **a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if (*a3)
  {
    v28 = 0;
    v13 = (*(a2 + 16) + (*(a3 + 3) & 0xFFFFFFFFFFFFFFFCLL));
    v14 = (v13 + 1);
    if (v7 != v13 + 1 || (v17 = *v14, !v17) || ((*(a7 + 16))(a7, v17, a4, &v28), (v28 & 1) == 0))
    {
      if (a5 - 1 >= a4)
      {
        memset(__dst, 0, sizeof(__dst));
        v15 = *a3;
        v27 = a6;
        if (*a3 > v14)
        {
          v16 = *v15;
          v18 = *(a3 + 8);
          memcpy(__dst, v15 + 1, v18);
          v19 = v18 <= v16 ? v15 : &v15[v16 + 5];
        }

        else
        {
          v18 = 0;
          v19 = (v13 + 2);
        }

        for (; v19 < &v14[*v13]; v19 = &v21[v20 + 4])
        {
          v22 = *v19;
          v21 = (v19 + 1);
          v20 = v22;
          v23 = v22 - v18;
          if (v22 >= v18 && (!a5 || v23 <= a5 - a4))
          {
            v24 = memcmp(v21, __dst, v18);
            if (v24 > 0)
            {
              break;
            }

            if (!v24)
            {
              v25 = *&v21[v20];
              if (v25)
              {
                if (v27)
                {
                  memcpy((v27 + a4), &v21[v18], v23);
                  v25 = *&v21[v20];
                }

                (*(a7 + 16))(a7, v25, a4 - v18 + v20, &v28);
                if (v28)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B5CF42B8(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v3 = *a3;
  v4 = (*(a2 + 16) + (*(a3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  if (*a3 == v4)
  {
    return *v4;
  }

  v5 = *v3;
  if (v5 == *(a3 + 8))
  {
    v4 = (v3 + v5 + 1);
    return *v4;
  }

  return 0;
}

void sub_1B5CF4310(uint64_t a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (*a3)
  {
    v7 = (*(a2 + 16) + (*(a3 + 3) & 0xFFFFFFFFFFFFFFFCLL));
    v8 = 0uLL;
    v9 = (v7 + 4);
    memset(__dst, 0, 256);
    if (v4 <= v7 + 4)
    {
      v11 = 0;
      v4 = v7 + 8;
    }

    else
    {
      v10 = *v4;
      v11 = *(a3 + 8);
      memcpy(__dst, v4 + 1, v11);
      v8 = 0uLL;
      if (v11 >= v10)
      {
        v4 += v10 + 5;
      }
    }

    v25[14] = v8;
    v25[15] = v8;
    v25[12] = v8;
    v25[13] = v8;
    v25[10] = v8;
    v25[11] = v8;
    v25[8] = v8;
    v25[9] = v8;
    v25[7] = v8;
    v25[5] = v8;
    v25[6] = v8;
    v25[3] = v8;
    v25[4] = v8;
    v25[1] = v8;
    v25[2] = v8;
    v25[0] = v8;
    v12 = v9 + *v7;
    v24 = 0;
    if (v4 < v12)
    {
      do
      {
        v13 = v4 + 1;
        v14 = *v4;
        if (v11 <= v14)
        {
          v15 = v13[v11];
          if ((*(v25 + v15) & 1) == 0)
          {
            v16 = memcmp(v4 + 1, __dst, v11);
            if (v16 > 0)
            {
              break;
            }

            if (v16)
            {
              *(v25 + v15) = 1;
            }

            else
            {
              v17 = *(a3 + 3);
              v20 = v4;
              v21 = v11 + 1;
              v22 = 0;
              v23 = v17;
              (*(a4 + 16))(a4, v15, &v20, &v24);
              v18 = v24;
              *(v25 + v15) = 1;
              if (v18)
              {
                break;
              }
            }
          }
        }

        v4 = &v13[v14 + 4];
      }

      while (v4 < v9 + *v7);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

float sub_1B5CF45AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = malloc_type_malloc(0x48uLL, 0x108004094C1867FuLL);
  if (v8)
  {
    LODWORD(v9) = 0;
    v8[1] = 0u;
    v8[2] = 0u;
    *v8 = 0u;
    *(v8 + 7) = a1;
    *(v8 + 8) = a2;
    *(v8 + 1) = a3;
    *(v8 + 5) = a4;
    *(v8 + 6) = 0;
    if (a3)
    {
      if (a4 >= 0x18)
      {
        *v8 = *(a3 + 4);
        *(v8 + 2) = a3 + *(a3 + 12);
        v9 = *(a3 + 16);
        *&v10 = v9;
        *(&v10 + 1) = HIDWORD(v9);
        *(v8 + 24) = v10;
      }
    }
  }

  return *&v9;
}

void sub_1B5CF4640(void **a1)
{
  if (a1)
  {
    if (*(a1 + 12))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

uint64_t sub_1B5CF468C(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = a1[1];
      *a2 = a1[2] - result + a1[3];
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    result = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return result;
}

BOOL sub_1B5CF46D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    a2 = *(a2 + 8);
    v3 = *(v2 + 16);
    v4 = *(v2 + 4);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_1B5CF46F4(a1, a2, v3, v4);
}

BOOL sub_1B5CF46F4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 2080))
  {
    return 0;
  }

  v25[11] = v4;
  v25[12] = v5;
  if (*(a1 + 2064))
  {
    return 0;
  }

  v8 = 0;
  v24 = 0;
  if ((a3 - 1) <= 0x3FE && a4)
  {
    v11 = 0;
    v12 = 1;
    v13 = a1;
    while (1)
    {
      v14 = v13 + 1;
      v15 = *&v13[2 * *(a2 + v11) + 1];
      if ((v15 & 3) != 1)
      {
        break;
      }

      v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      ++v11;
      ++v12;
      if (a3 == v11)
      {
        v16 = *v13;
        *v13 = a4;
        if (!v16)
        {
          goto LABEL_18;
        }

LABEL_19:
        v8 = 1;
        return v8 != 0;
      }
    }

    if ((v15 & 3) != 2)
    {
      v20 = a3 - v12;
      v21 = (a3 - v12);
      v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
      memcpy((v22 + 14), (a2 + v12), v21);
      *(v22 + 14 + v20) = 0;
      *(v22 + 12) = v20;
      *(v22 + 8) = a4;
      *v22 = 0;
      *&v14[2 * *(a2 + v11)] = v22 | 2;
      goto LABEL_18;
    }

    v25[0] = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    v17 = sub_1B5CF8078(a1, v25, a2, a3, v12, a4, &v24);
    v18 = v25[0];
    if (v17 >= *(a1 + 2088))
    {
      v18 = sub_1B5CF826C(a1, v25[0], &v24);
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    v23 = v19 | v18;
    v8 = v24;
    *&v14[2 * *(a2 + v11)] = v23;
    if (v8 == 2)
    {
LABEL_18:
      ++*(a1 + 2060);
      goto LABEL_19;
    }
  }

  return v8 != 0;
}

uint64_t sub_1B5CF48B0(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_1B5CF48BC(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_1B5CF48C8(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t sub_1B5CF48D4(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2;
    a2 = *(a2 + 8);
    v3 = *(v2 + 4);
    v4 = *(v2 + 1);
    v5 = *v2;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v5 = 0.0;
  }

  v9 = 0;
  sub_1B5CF4978(a1, a2, v3, v4, 0, v8, v5);
  result = sub_1B5CFBE5C(v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CF4964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CFBE5C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1B5CF4978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 2080) && (*(a1 + 2064) & 1) != 0)
  {
    result = 0;
    v17 = 0;
    if ((a3 - 1) <= 0x3FE && a4)
    {
      v16 = 0;
      sub_1B5CFC058(v18, a6);
      sub_1B5CF4FB0(a1, a1, a2, a3, 0, a4, &v16, &v17, a7, a5, v18);
      sub_1B5CFBE5C(v18);
      v15 = v17;
      if (v17 == 2)
      {
        ++*(a1 + 2060);
      }

      result = v15 != 0;
    }
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CF4A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5CFBE5C(va);
  _Unwind_Resume(a1);
}

double sub_1B5CF4AAC(int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
  if (v4)
  {
    result = 0.0;
    *(v4 + 2060) = 0u;
    *(v4 + 519) = 1;
    *(v4 + 260) = 0;
    *(v4 + 2092) = 0x200000000;
    *(v4 + 516) = a2;
    *(v4 + 522) = a1;
  }

  return result;
}

char *sub_1B5CF4B24(char *result, int a2)
{
  if (result)
  {
    v2 = result;
    if (*result == 12648430 || *result == -900339842)
    {
      result = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
      *(result + 260) = v2;
      v5 = v2[3];
      *(result + 2068) = v2[2];
      *(result + 515) = v5;
      v6 = v2[4];
      *(result + 516) = v6;
      if (*v2 == -900339842)
      {
        *(result + 516) = v6 | 1;
      }

      *(result + 522) = v2[5];
      *(result + 523) = a2;
      *(result + 524) = 2;
      *(result + 519) = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1B5CF4BE8(char *a1)
{
  if (a1)
  {
    v2 = *(a1 + 519) - 1;
    *(a1 + 519) = v2;
    if (!v2)
    {
      v3 = *(a1 + 260);
      if (v3)
      {
        if (*(a1 + 523))
        {
          munmap(v3, *(a1 + 2068));
        }
      }

      else if (a1[2064])
      {
        sub_1B5CF7F80(a1);
      }

      else
      {
        sub_1B5CF7FFC(a1);
      }

      free(a1);
    }
  }
}

char *sub_1B5CF4C78(char *a1)
{
  result = sub_1B5CF4B24(a1, 0);
  if (result)
  {
    v2 = result;
    v3 = sub_1B5CF4CB8(result);
    sub_1B5CF4BE8(v2);
    return v3;
  }

  return result;
}

uint64_t sub_1B5CF4CB8(uint64_t a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    sub_1B5CF4AAC(*(a1 + 2088), *(a1 + 2064));
    v3 = v2;
    if (*(a1 + 2064))
    {
      v4 = v8;
      v8[0] = &unk_1F2D556E8;
      v8[1] = sub_1B5CF48D4;
      v8[3] = v8;
      sub_1B5CF4E08(a1, 0, 0, v2, v8, -1);
    }

    else
    {
      v4 = v7;
      v7[0] = &unk_1F2D556E8;
      v7[1] = sub_1B5CF46D0;
      v7[3] = v7;
      sub_1B5CF4E08(a1, 0, 0, v2, v7, -1);
    }

    sub_1B5CFBFD8(v4);
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B5CF4DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1B5CFBFD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CF4E08(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (a6 < 0)
  {
    __p = 0xFFFFFFFF00000003;
    v13 = 0;
    v14 = a4;
    sub_1B5CFCC18(v15, a5);
    sub_1B5CF5D2C(a1, a2, a3, 0, &__p);
    result = sub_1B5CFBFD8(v15);
  }

  else
  {
    result = sub_1B5CF5F80(a1, a2, a3);
    if (result)
    {
      sub_1B5D5EC18(&__p, a2, a3);
      v11 = 0;
      operator new();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5CF4FB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v13 = a9;
  v35 = *MEMORY[0x1E69E9840];
  if (a5 >= a4)
  {
    *a8 = 2;
    if (*(a2 + 8))
    {
      *a8 = 1;
      if (*(a11 + 24))
      {
        result = sub_1B5CF887C(a11, a10, *(a2 + 4), a9);
        v13 = v21;
      }
    }

    *(a2 + 4) = v13;
    *(a2 + 8) = a6;
    *a7 = v13;
  }

  else
  {
    v19 = result;
    v31 = (a3 + a5);
    v20 = *(a2 + 12 + 8 * *v31);
    if ((v20 & 3) == 2)
    {
      v30 = a2 + 12;
      v32 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      sub_1B5CFC058(v33, a11);
      v22 = sub_1B5CF8418(v19, &v32, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v33);
      result = sub_1B5CFBE5C(v33);
      v23 = v32;
      if (v22 >= *(v19 + 2088))
      {
        result = sub_1B5CF8654(v19, v32, a7, a8);
        v23 = result;
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v28 = v24 | v23;
      v27 = v31;
    }

    else
    {
      if ((v20 & 3) == 1)
      {
        sub_1B5CFC058(v34, a11);
        sub_1B5CF4FB0(v19, v20 & 0xFFFFFFFFFFFFFFFCLL, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v34);
        result = sub_1B5CFBE5C(v34);
        goto LABEL_15;
      }

      v30 = a2 + 12;
      *a7 = a9;
      v25 = ~a5 + a4;
      v26 = malloc_type_calloc(1uLL, v25 + 23, 0x10200402E77EEF7uLL);
      v27 = v31;
      result = memcpy((v26 + 22), v31 + 1, v25);
      *(v26 + 22 + v25) = 0;
      *(v26 + 20) = v25;
      *(v26 + 16) = a6;
      *(v26 + 8) = v13;
      *(v26 + 12) = v13;
      *v26 = 0;
      v28 = v26 | 2;
      *a8 = 2;
    }

    *(v30 + 8 * *v27) = v28;
  }

LABEL_15:
  if (*a7 > *a2)
  {
    *a2 = *a7;
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CF5220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1B5CFBE5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CF5248(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  result = 0;
  v105 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    v6 = a3;
    if ((a1[516] & 1) == 0)
    {
      v102 = a1;
      v90 = 0;
      v91 = 0;
      __p = 0;
      sub_1B5CFC7B4(&__p, &v102, v103, 1uLL);
      v7 = (a2 + 1);
      v8 = a1;
      while (1)
      {
        v9 = v8 + 1;
        v10 = *(v7 - 1);
        v11 = *&v9[2 * v10];
        if ((v11 & 3) == 0)
        {
          goto LABEL_47;
        }

        if ((*&v9[2 * v10] & 3) == 2)
        {
          break;
        }

        v8 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        v12 = v90;
        if (v90 >= v91)
        {
          v14 = (v90 - __p) >> 3;
          if ((v14 + 1) >> 61)
          {
            sub_1B5D04FA0();
          }

          v15 = (v91 - __p) >> 2;
          if (v15 <= v14 + 1)
          {
            v15 = v14 + 1;
          }

          if (v91 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            sub_1B5CEDC00(&__p, v16);
          }

          *(8 * v14) = v8;
          v13 = 8 * v14 + 8;
          v17 = (8 * v14 - (v90 - __p));
          memcpy(v17, __p, v90 - __p);
          v18 = __p;
          __p = v17;
          v90 = v13;
          v91 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v90 = v8;
          v13 = (v12 + 8);
        }

        v90 = v13;
        ++v7;
        if (!--v6)
        {
          if (*v8)
          {
            *v8 = 0;
            goto LABEL_62;
          }

LABEL_47:
          v36 = 0;
LABEL_100:
          if (__p)
          {
            v90 = __p;
            operator delete(__p);
          }

          if (!v36)
          {
LABEL_103:
            result = 0;
            goto LABEL_131;
          }

LABEL_130:
          --a1[515];
          result = 1;
          goto LABEL_131;
        }
      }

      v31 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      v32 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 12);
      if (v32 + 1 == v6 && !memcmp(v7, v31 + 14, v32))
      {
        v43 = *v31;
        free(v31);
        v44 = v43 | 2;
        if (!v43)
        {
          v44 = 0;
        }

        *&v9[2 * v10] = v44;
        goto LABEL_62;
      }

      v33 = *v31;
      if (!*v31)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v34 = v33;
        v35 = *(v33 + 12);
        if (v35 + 1 == v6 && !memcmp(v7, (v33 + 14), v35))
        {
          break;
        }

        v33 = *v34;
        v31 = v34;
        if (!*v34)
        {
          goto LABEL_47;
        }
      }

      *v31 = *v34;
      free(v34);
LABEL_62:
      v47 = (v90 - __p) >> 3;
      if (v47 >= 2)
      {
        v95 = 0;
        v48 = v47 - 1;
        LOBYTE(v49) = 0;
        v50 = a1[522];
        while (1)
        {
          v51 = sub_1B5CFC828(a1, *(__p + v48));
          v95 = 0;
          v102 = &unk_1F2D55530;
          v103[0] = &v95;
          v104 = &v102;
          sub_1B5CF5FFC(v51, 0, &v102, -1);
          sub_1B5CFCE8C(&v102);
          if (v51)
          {
            free(v51);
          }

          if (v95 >= v50)
          {
            break;
          }

          v49 = 1;
          if (!--v48)
          {
            goto LABEL_79;
          }
        }

        if (v49)
        {
          v49 = v48 + 1;
LABEL_79:
          v92 = 0;
          v93 = 0;
          v94 = 0;
          sub_1B5CFC244(&v92, v50);
          v57 = *(__p + v49);
          v58 = sub_1B5CFC828(a1, v57);
          v99 = &unk_1F2D55588;
          v100 = &v92;
          v101 = &v99;
          sub_1B5CF5FFC(v58, 0, &v99, -1);
          sub_1B5CFCE8C(&v99);
          if (v50 <= (v93 - v92) >> 5)
          {
            __assert_rtn("reverseBurst", "BurstTrie.cpp", 1003, "items.size() < sizeThreshold");
          }

          if (v58)
          {
            free(v58);
          }

          sub_1B5CF7FFC(v57);
          a1[515] -= (v93 - v92) >> 5;
          v59 = __p;
          *(*(__p + v48) + 8 * *(a2 + v48) + 4) = 0;
          if (a3 + 1 < ((v90 - v59) >> 3))
          {
            __assert_rtn("reverseBurst", "BurstTrie.cpp", 1012, "levels.size() <= keyLen + 1");
          }

          v60 = sub_1B5CF717C();
          v61 = v60;
          v62 = 0;
          if (v49 <= 1)
          {
            v63 = 1;
          }

          else
          {
            v63 = v49;
          }

          do
          {
            v60[v62] = *(a2 + v62);
            ++v62;
          }

          while (v63 != v62);
          v64 = v92;
          v65 = v93;
          if (v92 != v93)
          {
            v66 = a1[516];
            do
            {
              v67 = *(v64 + 23);
              if ((v67 & 0x8000000000000000) != 0)
              {
                v68 = *v64;
                v67 = *(v64 + 8);
              }

              else
              {
                v68 = v64;
              }

              v69 = *(v64 + 24);
              v70 = *(v64 + 28);
              memcpy((v61 + v49), v68, v67);
              v71 = *(v64 + 23);
              if (v71 < 0)
              {
                v71 = *(v64 + 8);
                if (v66)
                {
LABEL_96:
                  v98 = 0;
                  sub_1B5CF4978(a1, v61, (v71 + v49), v69, 0, v97, v70);
                  sub_1B5CFBE5C(v97);
                  goto LABEL_97;
                }
              }

              else if (v66)
              {
                goto LABEL_96;
              }

              sub_1B5CF46F4(a1, v61, v71 + v49, v69);
LABEL_97:
              v64 += 32;
            }

            while (v64 != v65);
          }

          v96 = &v92;
          sub_1B5CFC710(&v96);
        }
      }

      v36 = 1;
      goto LABEL_100;
    }

    v102 = a1;
    v90 = 0;
    v91 = 0;
    __p = 0;
    sub_1B5CFC0F0(&__p, &v102, v103, 1uLL);
    v19 = (a2 + 1);
    v20 = a1;
    while (1)
    {
      v21 = v20 + 12;
      v22 = *(v19 - 1);
      v23 = *(v21 + 8 * v22);
      if ((v23 & 3) == 0)
      {
        goto LABEL_54;
      }

      if ((*(v21 + 8 * v22) & 3) == 2)
      {
        break;
      }

      v20 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v24 = v90;
      if (v90 >= v91)
      {
        v26 = (v90 - __p) >> 3;
        if ((v26 + 1) >> 61)
        {
          sub_1B5D04FA0();
        }

        v27 = (v91 - __p) >> 2;
        if (v27 <= v26 + 1)
        {
          v27 = v26 + 1;
        }

        if (v91 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          sub_1B5CEDC00(&__p, v28);
        }

        *(8 * v26) = v20;
        v25 = 8 * v26 + 8;
        v29 = (8 * v26 - (v90 - __p));
        memcpy(v29, __p, v90 - __p);
        v30 = __p;
        __p = v29;
        v90 = v25;
        v91 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v90 = v20;
        v25 = (v24 + 8);
      }

      v90 = v25;
      ++v19;
      if (!--v6)
      {
        if (*(v20 + 8))
        {
          *(v20 + 8) = 0;
          goto LABEL_70;
        }

LABEL_54:
        v42 = 0;
LABEL_127:
        if (__p)
        {
          v90 = __p;
          operator delete(__p);
        }

        if ((v42 & 1) == 0)
        {
          goto LABEL_103;
        }

        goto LABEL_130;
      }
    }

    v37 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    v38 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 20);
    if (v38 + 1 == v6 && !memcmp(v19, v37 + 22, v38))
    {
      v45 = *v37;
      free(v37);
      v46 = v45 | 2;
      if (!v45)
      {
        v46 = 0;
      }

      *(v21 + 8 * v22) = v46;
      goto LABEL_70;
    }

    v39 = *v37;
    if (!*v37)
    {
      goto LABEL_54;
    }

    while (1)
    {
      v40 = v39;
      v41 = *(v39 + 20);
      if (v41 + 1 == v6 && !memcmp(v19, (v39 + 22), v41))
      {
        break;
      }

      v39 = *v40;
      v37 = v40;
      if (!*v40)
      {
        goto LABEL_54;
      }
    }

    *v37 = *v40;
    free(v40);
LABEL_70:
    v52 = (v90 - __p) >> 3;
    if (v52 >= 2)
    {
      v95 = 0;
      v53 = v52 - 1;
      LOBYTE(v54) = 0;
      v55 = a1[522];
      while (1)
      {
        v56 = sub_1B5CFC1A0(a1, *(__p + v53));
        v95 = 0;
        v102 = &unk_1F2D55480;
        v103[0] = &v95;
        v104 = &v102;
        sub_1B5CF5FFC(v56, 0, &v102, -1);
        sub_1B5CFCE8C(&v102);
        if (v56)
        {
          free(v56);
        }

        if (v95 >= v55)
        {
          break;
        }

        v54 = 1;
        if (!--v53)
        {
          goto LABEL_106;
        }
      }

      if (v54)
      {
        v54 = v53 + 1;
LABEL_106:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        sub_1B5CFC244(&v92, v55);
        v72 = *(__p + v54);
        v73 = sub_1B5CFC1A0(a1, v72);
        v99 = &unk_1F2D554D8;
        v100 = &v92;
        v101 = &v99;
        sub_1B5CF5FFC(v73, 0, &v99, -1);
        sub_1B5CFCE8C(&v99);
        if (v55 <= (v93 - v92) >> 5)
        {
          __assert_rtn("reverseBurst", "BurstTrie.cpp", 1003, "items.size() < sizeThreshold");
        }

        if (v73)
        {
          free(v73);
        }

        sub_1B5CF7F80(v72);
        a1[515] -= (v93 - v92) >> 5;
        v74 = __p;
        *(*(__p + v53) + 8 * *(a2 + v53) + 12) = 0;
        if (a3 + 1 < ((v90 - v74) >> 3))
        {
          __assert_rtn("reverseBurst", "BurstTrie.cpp", 1012, "levels.size() <= keyLen + 1");
        }

        v75 = sub_1B5CF717C();
        v76 = v75;
        v77 = 0;
        if (v54 <= 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = v54;
        }

        do
        {
          v75[v77] = *(a2 + v77);
          ++v77;
        }

        while (v78 != v77);
        v79 = v92;
        v80 = v93;
        if (v92 != v93)
        {
          v81 = a1[516];
          do
          {
            v82 = *(v79 + 23);
            if ((v82 & 0x8000000000000000) != 0)
            {
              v83 = *v79;
              v82 = *(v79 + 8);
            }

            else
            {
              v83 = v79;
            }

            v84 = *(v79 + 24);
            v85 = *(v79 + 28);
            memcpy((v76 + v54), v83, v82);
            v86 = *(v79 + 23);
            if (v86 < 0)
            {
              v86 = *(v79 + 8);
              if (v81)
              {
LABEL_123:
                v98 = 0;
                sub_1B5CF4978(a1, v76, (v86 + v54), v84, 0, v97, v85);
                sub_1B5CFBE5C(v97);
                goto LABEL_124;
              }
            }

            else if (v81)
            {
              goto LABEL_123;
            }

            sub_1B5CF46F4(a1, v76, v86 + v54, v84);
LABEL_124:
            v79 += 32;
          }

          while (v79 != v80);
        }

        v96 = &v92;
        sub_1B5CFC710(&v96);
      }
    }

    v42 = 1;
    goto LABEL_127;
  }

LABEL_131:
  v87 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CF5BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  a18 = &a14;
  sub_1B5CFC710(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1B5CF5C58(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = 0xFFFFFFFF00000000;
    v11 = 0;
    v12 = 0;
    v13[3] = 0;
    sub_1B5CF5D2C(a1, a2, a3, 1, &v10);
    v7 = v10 >= 0;
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (a4)
      {
        *a4 = HIDWORD(v10);
      }

      if (a5)
      {
        *a5 = v11;
      }
    }

    sub_1B5CFBFD8(v13);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1B5CF5D2C(uint64_t result, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (a3 <= 0x3FF)
  {
    v9 = result;
    v10 = sub_1B5CF717C();
    memcpy(v10, a2, a3);
    *(v10 + a3) = 0;
    v11 = *(v9 + 2080);
    v12 = *(v9 + 2064);
    if (v11)
    {
      v13 = *(v11 + 4) & 0xFFFFFFFC;
      if (v12)
      {
        v14 = v19;
        v19[0] = &unk_1F2D55690;
        v19[1] = sub_1B5CF8C58;
        v19[3] = v19;
        sub_1B5CF891C(v9, v13 + v11, v10, a3, 0, a4, a5, v19);
      }

      else
      {
        v14 = v18;
        v18[0] = &unk_1F2D55690;
        v18[1] = sub_1B5CF8C58;
        v18[3] = v18;
        sub_1B5CF8CE4(v9, v13 + v11, v10, a3, 0, a4, a5, v18);
      }
    }

    else if (v12)
    {
      v14 = v17;
      v17[0] = &unk_1F2D55690;
      v17[1] = sub_1B5CF8C58;
      v17[3] = v17;
      sub_1B5CF9020(v9, v10, a3, 0, a4, a5, v17);
    }

    else
    {
      v14 = v16;
      v16[0] = &unk_1F2D55690;
      v16[1] = sub_1B5CF8C58;
      v16[3] = v16;
      sub_1B5CF9294(v9, v10, a3, 0, a4, a5, v16);
    }

    result = sub_1B5CF9D24(v14);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CF5F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1B5CF9D24(va);
  _Unwind_Resume(a1);
}

void *sub_1B5CF5F80(uint64_t a1, unsigned __int8 *a2, size_t a3)
{
  v6 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
  if ((sub_1B5CF6A80(a1, v6, a2, a3) & 1) == 0 && v6)
  {
    free(v6);
    return 0;
  }

  return v6;
}

uint64_t sub_1B5CF5FFC(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = result;
    result = sub_1B5CF717C();
    v8 = result;
    v17 = 0;
    v9 = *(v7 + 28);
    if (!v9)
    {
      v14 = *v7;
      v15 = *(v7 + 16);
      v16 = *(v7 + 24);
      v12 = *(v7 + 32);
      sub_1B5CFCF0C(v18, a3);
      sub_1B5CF7224(v12, &v14, v8, 0, &v17, a4, a2, v18);
      v11 = v18;
      goto LABEL_6;
    }

    if (v9 == 1)
    {
      v14 = *v7;
      v15 = *(v7 + 16);
      v10 = *(v7 + 32);
      sub_1B5CFCF0C(v19, a3);
      sub_1B5CF61E8(v10, &v14, v8, 0x1000u, 0, &v17, a2, v19);
      v11 = v19;
LABEL_6:
      result = sub_1B5CFCE8C(v11);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CF613C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1B5CFCE8C(va);
  _Unwind_Resume(a1);
}

void sub_1B5CF6164(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_1B5CF6170(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, float a7)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v11 = a5;
  v10 = a7;
  v9 = a6;
  v7 = *(a1 + 24);
  if (!v7)
  {
    sub_1B5CEC274();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

uint64_t sub_1B5CF61E8(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v13 = result;
  v67 = *MEMORY[0x1E69E9840];
  v14 = *a2 & 3;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      sub_1B5CFCF0C(v63, a8);
      v16 = *(v13 + 2064);
      v17 = ((*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 + 2080));
      if (v16)
      {
        v18 = sub_1B5CFCF0C(v66, v63);
        v27 = *v17 - 8;
        if (*v17 != 8)
        {
          v28 = 0;
          do
          {
            v29 = v17 + v28 + 8;
            v30 = *(v29 + 8);
            v31 = *(a2 + 12);
            if (v30 >= v31)
            {
              v32 = v30 - v31;
              memcpy((a3 + a5), (v29 + v31 + 10), v30 - v31);
              *(a3 + v32 + a5) = 0;
              sub_1B5CF6170(v66, a7, a3, *(v29 + 8), *(v29 + 4), a6, *v29);
              LODWORD(v30) = *(v29 + 8);
            }

            v28 += v30 + 10;
          }

          while (v28 < v27);
          goto LABEL_36;
        }
      }

      else if ((v16 & 4) != 0)
      {
        v18 = sub_1B5CFCF0C(v66, v63);
        v33 = *v17 - 4;
        v34 = *(a2 + 8);
        if (v34 < v33)
        {
          v35 = v17 + 1;
          do
          {
            v36 = v35 + v34;
            v37 = *(v36 + 2);
            v38 = *(a2 + 12);
            if (v37 >= v38)
            {
              v40 = v37 - v38;
              memcpy((a3 + a5 + v36[6]), &v36[v38 + 7], v37 - v38);
              *(a3 + v40 + a5 + v36[6]) = 0;
              sub_1B5CF6170(v66, a7, a3, *(v36 + 2), *v36, a6, 0.0);
              v39 = *(v36 + 2) + *(a2 + 8);
            }

            else
            {
              v39 = v34 + v37;
            }

            v34 = v39 + 7;
            *(a2 + 8) = v34;
          }

          while (v34 < v33);
          goto LABEL_36;
        }
      }

      else
      {
        v18 = sub_1B5CFCF0C(v66, v63);
        v19 = *v17 - 4;
        v20 = *(a2 + 8);
        if (v20 < v19)
        {
          do
          {
            v21 = v17 + v20 + 4;
            v22 = *(v21 + 4);
            v23 = *(a2 + 12);
            if (v22 >= v23)
            {
              v25 = v22 - v23;
              memcpy((a3 + a5), (v21 + v23 + 6), v22 - v23);
              *(a3 + v25 + a5) = 0;
              sub_1B5CF6170(v66, a7, a3, *(v21 + 4), *v21, a6, *v21);
              v24 = *(v21 + 4) + *(a2 + 8);
            }

            else
            {
              v24 = v20 + v22;
            }

            v20 = v24 + 6;
            *(a2 + 8) = v20;
          }

          while (v20 < v19);
LABEL_36:
          v18 = v66;
        }
      }

      sub_1B5CFCE8C(v18);
      v15 = v63;
      goto LABEL_63;
    }

    sub_1B5CFCF0C(v64, a8);
    v26 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 + 2080);
    if ((*(v13 + 2064) & 1) == 0)
    {
      if (*(v26 + 32))
      {
        *(a3 + a5) = 0;
        sub_1B5CF6170(v64, a7, a3, a5, *(v26 + 32), a6, 0.0);
        if (a5 >= a4 || (*a6 & 1) != 0)
        {
          goto LABEL_62;
        }

LABEL_39:
        v41 = 0;
        v42 = a4 - 1;
        while (1)
        {
          *(a3 + a5) = v41;
          v43 = *(v26 + 8 * (v41 >> 6));
          if ((v43 & (1 << v41)) != 0)
          {
            if (v41 >= 0x40)
            {
              v44 = 0;
              v45 = v41 >> 6;
              v46 = v26;
              do
              {
                v47 = *v46++;
                v48 = vcnt_s8(v47);
                v48.i16[0] = vaddlv_u8(v48);
                v44 += v48.i32[0];
                --v45;
              }

              while (v45);
            }

            else
            {
              v44 = 0;
            }

            v49 = vcnt_s8((v43 & ((1 << v41) - 1)));
            v49.i16[0] = vaddlv_u8(v49);
            *a2 = *(v26 + 36 + 4 * (v44 + v49.i32[0]));
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
            sub_1B5CFCF0C(v66, v64);
            sub_1B5CF61E8(v13, a2, a3, v42, a5 + 1, a6, a7, v66);
            sub_1B5CFCE8C(v66);
            if (v41 > 0xFE || (*a6 & 1) != 0)
            {
              goto LABEL_62;
            }
          }

          else if (v41 > 0xFE)
          {
            goto LABEL_62;
          }

          ++v41;
        }
      }

      if (a5 < a4)
      {
        goto LABEL_39;
      }

LABEL_62:
      v15 = v64;
      goto LABEL_63;
    }

    if (*(v26 + 40))
    {
      *(a3 + a5) = 0;
      sub_1B5CF6170(v64, a7, a3, a5, *(v26 + 40), a6, *(v26 + 36));
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_62;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_62;
    }

    v50 = 0;
    v51 = a4 - 1;
    while (1)
    {
      *(a3 + a5) = v50;
      v52 = *(v26 + 8 * (v50 >> 6));
      if ((v52 & (1 << v50)) != 0)
      {
        if (v50 >= 0x40)
        {
          v53 = 0;
          v54 = v50 >> 6;
          v55 = v26;
          do
          {
            v56 = *v55++;
            v57 = vcnt_s8(v56);
            v57.i16[0] = vaddlv_u8(v57);
            v53 += v57.i32[0];
            --v54;
          }

          while (v54);
        }

        else
        {
          v53 = 0;
        }

        v58 = vcnt_s8((v52 & ((1 << v50) - 1)));
        v58.i16[0] = vaddlv_u8(v58);
        v59 = *(v26 + 44 + 4 * (v53 + v58.i32[0]));
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = v59;
        sub_1B5CFCF0C(v66, v64);
        sub_1B5CF61E8(v13, a2, a3, v51, a5 + 1, a6, a7, v66);
        sub_1B5CFCE8C(v66);
        if (v50 > 0xFE || (*a6 & 1) != 0)
        {
          goto LABEL_62;
        }
      }

      else if (v50 > 0xFE)
      {
        goto LABEL_62;
      }

      ++v50;
    }
  }

  if (v14)
  {
    sub_1B5CFCF0C(v65, a8);
    v15 = v65;
    sub_1B5CF682C(v13, a2, a3, a4, a5, a6, a7, v65);
    goto LABEL_63;
  }

  if (*a2 == *(*(result + 2080) + 4))
  {
    sub_1B5CFCF0C(v62, a8);
    v15 = v62;
    sub_1B5CF682C(v13, a2, a3, a4, a5, a6, a7, v62);
LABEL_63:
    result = sub_1B5CFCE8C(v15);
  }

  v60 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CF67B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5CFCE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CF682C(uint64_t result, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  v27 = *MEMORY[0x1E69E9840];
  v13 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080);
  v14 = *(v13 + 1024);
  if (*(result + 2064))
  {
    if (v14)
    {
      *(a3 + a5) = 0;
      result = sub_1B5CF6170(a8, a7, a3, 0, *(v13 + 1024), a6, *(v13 + 1032));
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_27;
    }

    v18 = 0;
    do
    {
      *(a3 + a5) = v18;
      v19 = *(v13 + 4 * v18);
      if (v18)
      {
        v20 = a5 + 1;
      }

      else
      {
        v20 = a5;
      }

      a2[1] = 0;
      a2[2] = 0;
      *a2 = v19;
      sub_1B5CFCF0C(v26, a8);
      sub_1B5CF61E8(v12, a2, a3, a4 - (v18 != 0), v20, a6, a7, v26);
      result = sub_1B5CFCE8C(v26);
      if (*a6)
      {
        break;
      }

      v17 = v18++ == 255;
    }

    while (!v17);
  }

  else
  {
    if (v14)
    {
      *(a3 + a5) = 0;
      result = sub_1B5CF6170(a8, a7, a3, 0, *(v13 + 1024), a6, 0.0);
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_27;
    }

    v15 = 0;
    do
    {
      *(a3 + a5) = v15;
      *a2 = *(v13 + 4 * v15);
      a2[1] = 0;
      *(a2 + 4) = 0;
      if (v15)
      {
        v16 = a5 + 1;
      }

      else
      {
        v16 = a5;
      }

      sub_1B5CFCF0C(v25, a8);
      sub_1B5CF61E8(v12, a2, a3, a4 - (v15 != 0), v16, a6, a7, v25);
      result = sub_1B5CFCE8C(v25);
      if (*a6)
      {
        break;
      }

      v17 = v15++ == 255;
    }

    while (!v17);
  }

LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CF6A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1B5CFCE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CF6A80(uint64_t a1, uint64_t a2, unsigned __int8 *a3, size_t a4)
{
  if (!a1 || !a2 || !sub_1B5CF6AF4(a1, a2))
  {
    return 0;
  }

  return sub_1B5CF6B68(a2, a3, a4);
}

uint64_t sub_1B5CF6AF4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  *(a2 + 32) = a1;
  v2 = *(a1 + 2080);
  if (v2)
  {
    if (*v2 == -900339842 || *v2 == 12648430 && v2[7] == 2)
    {
      result = 1;
      *(a2 + 28) = 1;
      v4 = v2[1];
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
      return result;
    }

    return 0;
  }

  *(a2 + 28) = 0;
  *(a2 + 8) = a1 | 1;
  *(a2 + 16) = 0;
  return 1;
}

uint64_t sub_1B5CF6B68(uint64_t result, unsigned __int8 *a2, size_t a3)
{
  if (result)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    v6 = *(result + 28);
    if (v6)
    {
      if (v6 != 1)
      {
        return 0;
      }

      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      if ((sub_1B5CF6CC0(*(result + 32), result, a2, a3) & 1) == 0)
      {
        result = 0;
        *v5 = v7;
        *(v5 + 8) = v8;
        *(v5 + 16) = v9;
        *(v5 + 20) = v10;
        return result;
      }
    }

    else
    {
      v12 = *result;
      v11 = *(result + 8);
      v13 = *(result + 16);
      v14 = *(result + 24);
      v15 = *(result + 32);
      for (i = v11; (i & 3) == 1; i = *(v5 + 8))
      {
        v17 = (i & 0xFFFFFFFFFFFFFFFCLL);
        if (*(v15 + 2064))
        {
          if (!v3)
          {
            *(v5 + 20) = v17[2];
            *(v5 + 24) = v17[1];
            return 1;
          }

          v18 = 3;
        }

        else
        {
          if (!v3)
          {
            *(v5 + 20) = *v17;
            return 1;
          }

          v18 = 1;
        }

        v19 = *v4++;
        sub_1B5CFABCC(v15, v5, *&v17[2 * v19 + v18]);
        --v3;
      }

      if ((i & 3) != 2 || (sub_1B5CFA8FC(v15, v5, v4, v3) & 1) == 0)
      {
        result = 0;
        *v5 = v12;
        *(v5 + 8) = v11;
        *(v5 + 16) = v13;
        *(v5 + 24) = v14;
        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1B5CF6CC0(uint64_t a1, uint64_t a2, unsigned __int8 *__s2, size_t __n)
{
  for (i = __n; ; --i)
  {
    v8 = *a2;
    v9 = *a2 & 3;
    if (v9 != 3)
    {
      break;
    }

    v10 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080));
    if (*(a1 + 2064))
    {
      if (!i)
      {
        *(a2 + 16) = v10[5].i32[0];
        *(a2 + 20) = v10[4].i32[1];
        goto LABEL_40;
      }

      v16 = *__s2;
      v17 = v16 >> 6;
      v13 = v10[v16 >> 6];
      v14 = 1 << v16;
      if (((1 << v16) & *&v13) == 0)
      {
        goto LABEL_36;
      }

      if (v16 >= 0x40)
      {
        v15 = 0;
        v22 = v10;
        do
        {
          v23 = *v22++;
          v24 = vcnt_s8(v23);
          v24.i16[0] = vaddlv_u8(v24);
          v15 += v24.i32[0];
          --v17;
        }

        while (v17);
      }

      else
      {
        v15 = 0;
      }

      v21 = 11;
    }

    else
    {
      if (!i)
      {
        v37 = v10[4].i32[0];
LABEL_39:
        *(a2 + 16) = v37;
        goto LABEL_40;
      }

      v11 = *__s2;
      v12 = v11 >> 6;
      v13 = v10[v11 >> 6];
      v14 = 1 << v11;
      if (((1 << v11) & *&v13) == 0)
      {
        goto LABEL_36;
      }

      if (v11 >= 0x40)
      {
        v15 = 0;
        v18 = v10;
        do
        {
          v19 = *v18++;
          v20 = vcnt_s8(v19);
          v20.i16[0] = vaddlv_u8(v20);
          v15 += v20.i32[0];
          --v12;
        }

        while (v12);
      }

      else
      {
        v15 = 0;
      }

      v21 = 9;
    }

    v25 = vcnt_s8(((v14 - 1) & *&v13));
    v25.i16[0] = vaddlv_u8(v25);
    sub_1B5CFA834(a1, a2, v10->u32[(v15 + v25.i32[0]) + v21]);
    ++__s2;
  }

  if (!v9)
  {
    if (v8 != *(*(a1 + 2080) + 4))
    {
      goto LABEL_36;
    }

LABEL_32:

    return sub_1B5CFA77C(a1, a2, __s2, i);
  }

  if (v9 != 2)
  {
    goto LABEL_32;
  }

  v26 = *(a1 + 2064);
  v27 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080));
  v28 = *v27;
  if ((v26 & 1) == 0)
  {
    v29 = v28 - 4;
    if (v28 == 4)
    {
      goto LABEL_36;
    }

    if ((v26 & 4) != 0)
    {
      if (i)
      {
        v50 = *(a2 + 8);
        if (v50 < v29)
        {
          v51 = 0;
          v52 = v27 + 1;
          while (1)
          {
            v53 = v52 + v50;
            v54 = v53[6];
            LODWORD(v55) = v54;
            if (i > v54)
            {
              if (v54 <= *(v53 + 2))
              {
                v55 = *(v53 + 2);
              }

              else
              {
                v55 = v53[6];
              }

              v56 = v53[6];
              while (v55 != v56)
              {
                if (v53[(v56 + *(a2 + 12)) + 7] != __s2[v51 + v56])
                {
                  LODWORD(v55) = v56;
                  break;
                }

                if (i == ++v56)
                {
                  LODWORD(v55) = i;
                  break;
                }
              }
            }

            v51 += v55;
            v57 = *(v53 + 2);
            if (v51 == i)
            {
              break;
            }

            v35 = 0;
            v50 += v57 + 7;
            *(a2 + 8) = v50;
            if (v50 >= v29)
            {
              return v35 & 1;
            }
          }

          v59 = *(a2 + 12) + i;
          *(a2 + 16) = 0;
          if (v57 + v54 == v59)
          {
            *(a2 + 16) = *v53;
          }

          goto LABEL_85;
        }

LABEL_36:
        v35 = 0;
        return v35 & 1;
      }

      v58 = v27 + *(a2 + 8);
      if (*(v58 + 4) | v58[10])
      {
LABEL_76:
        *(a2 + 16) = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if (i)
      {
        v30 = *(a2 + 8);
        if (v30 < v29)
        {
          v31 = v27 + 1;
          v32 = *(a2 + 12);
          while (1)
          {
            v33 = v31 + v30;
            v34 = *(v33 + 2);
            if (v34 >= v32 && !memcmp(&v33[v32 + 6], __s2, i))
            {
              break;
            }

            v35 = 0;
            v30 += v34 + 6;
            *(a2 + 8) = v30;
            if (v30 >= v29)
            {
              return v35 & 1;
            }
          }

          *(a2 + 16) = 0;
          if (v34 - v32 == i)
          {
            *(a2 + 16) = *v33;
          }

          v59 = v32 + i;
LABEL_85:
          *(a2 + 12) = v59;
          goto LABEL_40;
        }

        goto LABEL_36;
      }

      v58 = v27 + *(a2 + 8);
      if (*(v58 + 4))
      {
        goto LABEL_76;
      }
    }

    *(a2 + 16) = 0;
    v37 = *(v58 + 1);
    goto LABEL_39;
  }

  if (v28 == 4)
  {
    goto LABEL_36;
  }

  v38 = *(a2 + 8);
  v39 = *(a2 + 12);
  v40 = *(a2 + 16);
  v41 = *(a2 + 20);
  v42 = v28 - 8;
  if (v28 == 8)
  {
    v35 = 0;
LABEL_74:
    *(a2 + 8) = v38;
    *(a2 + 12) = v39;
    *(a2 + 16) = v40;
    *(a2 + 20) = v41;
    return v35 & 1;
  }

  v43 = 0;
  v35 = 0;
  v44 = *(a2 + 12);
  v45 = v27 + 2;
  v46 = v39 + i;
  v47 = i;
  while (1)
  {
    while (1)
    {
      v48 = v45 + v43;
      v49 = *(v48 + 4);
      if (v46 <= v49)
      {
        break;
      }

      v43 += v49 + 10;
      if (v43 >= v42)
      {
        goto LABEL_74;
      }
    }

    v62 = v40;
    v63 = v39;
    v64 = v38;
    v60 = v47;
    v61 = v44;
    if (!memcmp(&v48[v44 + 10], __s2, v47))
    {
      break;
    }

    v39 = v63;
    v38 = v64;
    v40 = v62;
LABEL_55:
    v43 += v49 + 10;
    v47 = v60;
    v44 = v61;
    if (v43 >= v42)
    {
      goto LABEL_74;
    }
  }

  if (v46 != v49)
  {
    v40 = v62;
    v39 = v63;
    if ((v35 & 1) == 0)
    {
      v40 = 0;
      v39 = v63 + i;
    }

    v38 = v64;
    if ((v35 & 1) == 0)
    {
      v38 = v43;
      v41 = 0.0;
    }

    v35 = 1;
    goto LABEL_55;
  }

  *(a2 + 16) = 0;
  *(a2 + 16) = *(v48 + 1);
  *(a2 + 20) = *v48;
  *(a2 + 8) = v43;
  *(a2 + 12) = v46;
LABEL_40:
  v35 = 1;
  return v35 & 1;
}

void *sub_1B5CF717C()
{
  if (atomic_load_explicit(&qword_1EB90C888, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&qword_1EB90C888, &v3, sub_1B5CFAC68);
  }

  v0 = pthread_getspecific(qword_1EB90C890);
  if (!v0)
  {
    v0 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    pthread_setspecific(qword_1EB90C890, v0);
  }

  return v0;
}

uint64_t sub_1B5CF7224(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, int a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x1E69E9840];
  LODWORD(v14) = *(result + 2064);
  v15 = *(a2 + 8) & 3;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_55;
    }

    if (v14)
    {
      sub_1B5CFCF0C(v60, a8);
      v36 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
      if (!v36)
      {
        goto LABEL_41;
      }

      __dst = (v36 + 22);
      v37 = *(a2 + 16);
      do
      {
        v38 = *(v36 + 20);
        if (v38 >= v37)
        {
          v39 = v38 - v37;
          if (a6 < 0 || v39 <= a6)
          {
            if (v37)
            {
              v40 = (v36 + 22);
              v41 = __dst;
              v42 = v37;
              while (1)
              {
                v44 = *v40++;
                v43 = v44;
                v45 = *v41++;
                if (v43 != v45)
                {
                  break;
                }

                if (!--v42)
                {
                  goto LABEL_37;
                }
              }
            }

            else
            {
LABEL_37:
              v46 = v39 + a4;
              memcpy((a3 + a4), (v36 + v37 + 22), v39);
              *(a3 + v46) = 0;
              sub_1B5CF6170(v60, a7, a3, v46, *(v36 + 16), a5, *(v36 + 12));
            }
          }
        }

        v36 = *v36;
      }

      while (v36);
    }

    else
    {
      sub_1B5CFCF0C(v59, a8);
      v18 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v19 = *(a2 + 16);
      if (v19 > *(v18 + 12))
      {
        __assert_rtn("traverseFromMapCursorTrieList", "BurstTrie.cpp", 2108, "cursor.prfxlen <= head->restlen");
      }

      if (v18)
      {
        v56 = (v18 + 14);
        v20 = *(a2 + 16);
        v21 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v57 = v14;
        while (1)
        {
          v22 = *(v21 + 12);
          if (v21 != v18)
          {
            if (v22 <= v20)
            {
              goto LABEL_39;
            }

            if (v19)
            {
              break;
            }
          }

LABEL_19:
          v29 = v22 - v19;
          if (a6 < 0 || v29 <= a6)
          {
            v14 = v20;
            v30 = v18;
            v31 = v29 + a4;
            v32 = v19;
            memcpy((a3 + a4), (v21 + v19 + 14), v29);
            *(a3 + v31) = 0;
            v33 = sub_1B5CFCF0C(v63, v59);
            sub_1B5CF6170(v33, a7, a3, v31, *(v21 + 8), a5, 0.0);
            sub_1B5CFCE8C(v63);
            v18 = v30;
            v20 = v14;
            LOBYTE(v14) = v57;
            v19 = v32;
          }

          v21 = *v21;
          if (!v21)
          {
            goto LABEL_39;
          }
        }

        v23 = (v21 + 14);
        v24 = v56;
        v25 = v19;
        while (1)
        {
          v27 = *v23++;
          v26 = v27;
          v28 = *v24++;
          if (v26 != v28)
          {
            break;
          }

          if (!--v25)
          {
            goto LABEL_19;
          }
        }
      }
    }

LABEL_39:
    if ((v14 & 1) == 0)
    {
      v47 = v59;
LABEL_54:
      result = sub_1B5CFCE8C(v47);
      goto LABEL_55;
    }

LABEL_41:
    v47 = v60;
    goto LABEL_54;
  }

  if (v15)
  {
    v16 = result;
    if ((v14 & 1) == 0)
    {
      sub_1B5CFCF0C(v61, a8);
      v17 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL);
      if (*v17)
      {
        sub_1B5CF6170(v61, a7, a3, a4, *v17, a5, *(a2 + 24));
        if (!a6 || (*a5 & 1) != 0)
        {
          goto LABEL_47;
        }
      }

      else if (!a6)
      {
LABEL_47:
        v47 = v61;
        goto LABEL_54;
      }

      v48 = 0;
      v49 = v17 + 1;
      v50 = (a6 - 1);
      do
      {
        *(a3 + a4) = v48;
        sub_1B5CFABCC(v16, a2, *&v49[2 * v48]);
        sub_1B5CFCF0C(v63, v61);
        sub_1B5CF7224(v16, a2, a3, a4 + 1, a5, v50, a7, v63);
        sub_1B5CFCE8C(v63);
        if (*a5)
        {
          break;
        }

        v51 = v48++ == 255;
      }

      while (!v51);
      goto LABEL_47;
    }

    sub_1B5CFCF0C(v62, a8);
    v34 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *(v34 + 8);
    if (v35)
    {
      sub_1B5CF6170(v62, a7, a3, a4, v35, a5, *(a2 + 24));
      if (!a6 || (*a5 & 1) != 0)
      {
        goto LABEL_53;
      }
    }

    else if (!a6)
    {
LABEL_53:
      v47 = v62;
      goto LABEL_54;
    }

    v52 = 0;
    v53 = v34 + 12;
    v54 = (a6 - 1);
    do
    {
      *(a3 + a4) = v52;
      sub_1B5CFABCC(v16, a2, *(v53 + 8 * v52));
      sub_1B5CFCF0C(v63, v62);
      sub_1B5CF7224(v16, a2, a3, a4 + 1, a5, v54, a7, v63);
      sub_1B5CFCE8C(v63);
      if (*a5)
      {
        break;
      }

      v51 = v52++ == 255;
    }

    while (!v51);
    goto LABEL_53;
  }

LABEL_55:
  v55 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CF7648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1B5CFCE8C(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_1B5CF76C4(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
    v2 = v1[7];
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_7:
        result[7] = v2;
        *(result + 4) = *(v1 + 4);
        return result;
      }

      *result = *v1;
      result[2] = v1[2];
      v3 = 5;
      v4 = 4;
      v5 = 3;
    }

    else
    {
      *result = *v1;
      v3 = 6;
      v4 = 5;
      v5 = 4;
    }

    result[v5] = v1[v5];
    result[v4] = v1[v4];
    result[v3] = v1[v3];
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B5CF7770(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[7];
  if (!v2)
  {
    v3 = a1[5];
    if (v3)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v3 = a1[4];
  if (!v3)
  {
    return 0;
  }

LABEL_4:
  if (a2)
  {
    *a2 = v3;
  }

  return 1;
}

uint64_t sub_1B5CF77A8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  if (result && (v3 = result, !*(result + 2080)))
  {
    sub_1B5CF7CDC(v14);
    v21 = 12648430;
    v22 = 0;
    v23 = *(v3 + 2060);
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v28 = 0;
    v24 = *(v3 + 2088);
    HIDWORD(v25) = 2;
    std::ostream::write();
    if (*(v3 + 2064))
    {
      sub_1B5CFAC84(v3, v3, &v15);
    }

    else
    {
      sub_1B5CFAF34(v3, v3, &v15);
    }

    v4 = &v15 + *(v15 - 24);
    if ((v4[32] & 5) != 0)
    {
      v5 = -1;
    }

    else
    {
      (*(**(v4 + 5) + 32))(v32);
      v5 = v33;
    }

    v20 = v5;
    sub_1B5CFB2E4(&v15, &v20, 4, 4);
    if (*(v3 + 2064))
    {
      sub_1B5CFB6DC(v3, &v15, 0, 1, &v20);
    }

    else
    {
      sub_1B5CFB99C(v3, &v15, 0, 1, &v20);
    }

    sub_1B5CFB2E4(&v15, &v20, 4, 8);
    MEMORY[0x1B8C87EC0](v29, &v15);
    v6 = &v15 + *(v15 - 24);
    if ((v6[32] & 5) == 0)
    {
      (*(**(v6 + 5) + 32))(v32);
      if (v33 == -1)
      {
        std::ios_base::clear((&v15 + *(v15 - 24)), *(&v17[2].__locale_ + *(v15 - 24)) | 4);
      }
    }

    MEMORY[0x1B8C87ED0](v29);
    *(v3 + 2060) = 0;
    if (*(v3 + 2064))
    {
      v7 = 2060;
    }

    else
    {
      v7 = 2052;
    }

    bzero(v3, v7);
    std::stringbuf::str();
    if (a2[23] >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = sub_1B5CF4B24(v8, 0);
    v10 = v9;
    if (*(v3 + 2064))
    {
      v11 = v31;
      v31[0] = &unk_1F2D556E8;
      v31[1] = sub_1B5CF48D4;
      v31[3] = v31;
      sub_1B5CF4E08(v9, 0, 0, v3, v31, -1);
    }

    else
    {
      v11 = v30;
      v30[0] = &unk_1F2D556E8;
      v30[1] = sub_1B5CF46D0;
      v30[3] = v30;
      sub_1B5CF4E08(v9, 0, 0, v3, v30, -1);
    }

    sub_1B5CFBFD8(v11);
    sub_1B5CF4BE8(v10);
    v14[0] = *MEMORY[0x1E69E54D8];
    v12 = *(MEMORY[0x1E69E54D8] + 72);
    *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v15 = v12;
    v16 = MEMORY[0x1E69E5548] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    result = MEMORY[0x1B8C88080](&v19);
  }

  else
  {
    a2[23] = 0;
    *a2 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5CF7C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  MEMORY[0x1B8C87ED0](&a53);
  sub_1B5CFBC44(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C88080](&a26);
  _Unwind_Resume(a1);
}

uint64_t *sub_1B5CF7CDC(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_1B5CFCFA4((a1 + 3), 24);
  return a1;
}

void sub_1B5CF7F58(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](v1);
  _Unwind_Resume(a1);
}

void sub_1B5CF7F80(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 12;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      sub_1B5CF7F80(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

void sub_1B5CF7FFC(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 4;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      sub_1B5CF7FFC(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

uint64_t sub_1B5CF8078(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, int *a7)
{
  v12 = a1;
  v13 = *a2;
  v14 = malloc_type_calloc(8uLL, (*(a1 + 2088) + 1), 0x2004093837F09uLL);
  v15 = (a3 + a5);
  if (v13)
  {
    v31 = v12;
    v32 = a7;
    v16 = 0;
    v17 = 1;
LABEL_3:
    v18 = &v14[v16];
    LODWORD(v19) = v16++;
    do
    {
      v20 = *(v13 + 6);
      if (v20 + a5 == a4 && !memcmp(v15, v13 + 14, v20))
      {
        v17 = 0;
        *(v13 + 2) = a6;
        *v18 = v13;
        v13 = *v13;
        if (v13)
        {
          goto LABEL_3;
        }

        v19 = (v19 + 1);
        goto LABEL_14;
      }

      *v18++ = v13;
      v13 = *v13;
      v19 = (v19 + 1);
      ++v16;
    }

    while (v13);
    if (v17)
    {
      v12 = v31;
      a7 = v32;
      goto LABEL_13;
    }

LABEL_14:
    v23 = 1;
    v12 = v31;
    a7 = v32;
  }

  else
  {
    LODWORD(v19) = 0;
LABEL_13:
    v21 = a4 - a5;
    v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
    memcpy(v22 + 14, v15, v21);
    v22[v21 + 14] = 0;
    *(v22 + 6) = v21;
    *v22 = 0;
    v14[v19] = v22;
    v23 = 2;
    v19 = (v19 + 1);
    *(v22 + 2) = a6;
  }

  qsort(v14, v19, 8uLL, sub_1B5CF83D0);
  v24 = *v14;
  v25 = *v14;
  if (v19 >= 2)
  {
    v26 = v14 + 1;
    v27 = v19 - 1;
    v28 = *v14;
    do
    {
      v29 = *v26++;
      v25 = v29;
      *v28 = v29;
      v28 = v29;
      --v27;
    }

    while (v27);
  }

  *v25 = 0;
  *a2 = v24;
  free(v14);
  *a7 = v23;
  if (v19 > *(v12 + 2088))
  {
    sub_1B5CFD328();
  }

  return v19;
}

int *sub_1B5CF826C(uint64_t a1, _DWORD *a2, int *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x804uLL, 0x10000406A7154B6uLL);
  v7 = v6;
  if (a2)
  {
    v8 = (v6 + 1);
    do
    {
      v9 = *(a2 + 6);
      v10 = a2[2];
      if (*(a2 + 6))
      {
        v11 = *&v8[8 * *(a2 + 14)];
        if (v11)
        {
          v21 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          v12 = sub_1B5CF8078(a1, &v21, a2 + 14, v9, 1u, v10, a3);
          v13 = v21;
          if (v12 >= *(a1 + 2088))
          {
            v13 = sub_1B5CF826C(a1, v21, a3);
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          v17 = v14 | v13;
          v18 = *(a2 + 14);
        }

        else
        {
          v15 = (v9 - 1);
          v16 = malloc_type_calloc(1uLL, v15 + 15, 0x1020040D0C9BDDAuLL);
          memcpy((v16 + 14), a2 + 15, v15);
          *(v16 + 14 + v15) = 0;
          *(v16 + 12) = v15;
          *(v16 + 8) = v10;
          *v16 = 0;
          v17 = v16 | 2;
          v18 = *(a2 + 14);
        }

        *&v8[8 * v18] = v17;
      }

      else
      {
        *v7 = v10;
      }

      v19 = *a2;
      free(a2);
      a2 = v19;
    }

    while (v19);
  }

  return v7;
}

uint64_t sub_1B5CF83D0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 12);
  v3 = *(*a2 + 12);
  v4 = v2 - v3;
  if (v2 >= v3)
  {
    v5 = *(*a2 + 12);
  }

  else
  {
    v5 = *(*a1 + 12);
  }

  LODWORD(result) = memcmp((*a1 + 14), (*a2 + 14), v5);
  if (result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B5CF8418(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v17 = *a2;
  v18 = malloc_type_calloc(8uLL, (*(a1 + 2088) + 1), 0x2004093837F09uLL);
  v19 = (a3 + a5);
  if (v17)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0.0;
    do
    {
      v23 = v20;
      v24 = *(v17 + 10);
      if (v24 + a5 == a4 && !memcmp(v19, v17 + 22, v24))
      {
        *(v17 + 4) = a6;
        v25 = *(v17 + 3);
        if (*(a11 + 24))
        {
          sub_1B5CF887C(a11, a10, v25, a9);
        }

        else
        {
          v26 = v25 + a9;
        }

        *(v17 + 3) = v26;
        v21 = 1;
      }

      if (*(v17 + 2) > v22)
      {
        v22 = *(v17 + 2);
      }

      ++v20;
      v18[v23] = v17;
      v17 = *v17;
    }

    while (v17);
    if (v21)
    {
      v27 = 1;
      v28 = v23 + 1;
      goto LABEL_18;
    }
  }

  else
  {
    LODWORD(v20) = 0;
    v22 = 0.0;
  }

  if (v22 < a9)
  {
    v22 = a9;
  }

  v29 = a4 - a5;
  v30 = malloc_type_calloc(1uLL, v29 + 23, 0x10200402E77EEF7uLL);
  memcpy(v30 + 22, v19, v29);
  v30[v29 + 22] = 0;
  *(v30 + 10) = v29;
  *(v30 + 4) = a6;
  *(v30 + 2) = v22;
  *(v30 + 3) = a9;
  v28 = (v20 + 1);
  v27 = 2;
  *v30 = 0;
  v18[v20] = v30;
LABEL_18:
  qsort(v18, v28, 8uLL, sub_1B5CF88DC);
  v31 = *v18;
  *a7 = v22;
  v32 = v31;
  if (v28 >= 2)
  {
    v33 = (v28 - 1);
    v34 = v18 + 1;
    v35 = v31;
    do
    {
      v36 = *v34++;
      v32 = v36;
      *v35 = v36;
      *(v36 + 8) = *a7;
      v35 = v36;
      --v33;
    }

    while (v33);
  }

  *v32 = 0;
  *a2 = v31;
  free(v18);
  *a8 = v27;
  if (v28 > *(a1 + 2088))
  {
    sub_1B5CFD354();
  }

  return v28;
}

float *sub_1B5CF8654(uint64_t a1, unsigned __int16 *a2, float *a3, int *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(1uLL, 0x80CuLL, 0x10000408B9410F9uLL);
  v9 = v8;
  *a3 = 0.0;
  if (a2)
  {
    v10 = v8 + 12;
    do
    {
      v25 = 0.0;
      v11 = a2[10];
      v12 = *(a2 + 4);
      v13 = *(a2 + 3);
      v28 = 0;
      if (v11)
      {
        v14 = *&v10[8 * *(a2 + 22)];
        if (v14)
        {
          v26 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          v30 = 0;
          v15 = sub_1B5CF8418(a1, &v26, (a2 + 11), v11, 1u, v12, &v25, a4, v13, 0, v29);
          sub_1B5CFBE5C(v29);
          v16 = v26;
          if (v15 >= *(a1 + 2088))
          {
            v16 = sub_1B5CF8654(a1, v26, &v25, a4);
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          *&v10[8 * *(a2 + 22)] = v17 | v16;
          v13 = v25;
        }

        else
        {
          v18 = (v11 - 1);
          v19 = malloc_type_calloc(1uLL, v18 + 23, 0x10200402E77EEF7uLL);
          memcpy((v19 + 22), a2 + 23, v18);
          *(v19 + 22 + v18) = 0;
          *(v19 + 20) = v18;
          *(v19 + 16) = v12;
          *(v19 + 8) = v13;
          *(v19 + 12) = v13;
          *v19 = 0;
          *&v10[8 * *(a2 + 22)] = v19 | 2;
        }
      }

      else
      {
        v9[1] = v13;
        *(v9 + 2) = v12;
      }

      sub_1B5CFBE5C(v27);
      v20 = *a3;
      if (v13 > *a3)
      {
        v20 = v13;
      }

      *a3 = v20;
      v21 = *a2;
      free(a2);
      a2 = v21;
    }

    while (v21);
    v22 = *a3;
  }

  else
  {
    v22 = 0.0;
  }

  *v9 = v22;
  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1B5CF8858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_1B5CFBE5C(va1);
  sub_1B5CFBE5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CF887C(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_1B5CEC274();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_1B5CF88DC(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 12);
  v3 = *(*a2 + 12);
  if (v2 == v3)
  {
    v4 = *(*a1 + 16);
    v5 = *(*a2 + 16);
    v6 = v4 == v5;
    if (v4 > v5)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else if (v2 <= v3)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1B5CF891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = 0;
  if (a5 >= a4)
  {
    v18 = *(a2 + 1024);
    if (v18)
    {
      v32[0] = *(a2 + 1032);
      v32[1] = v18;
      v33 = a3;
      v34 = a4;
      sub_1B5CF9A6C(a8, a7, v32, 1, &v35);
      v17 = v35;
      if (v35)
      {
        v17 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      v17 = 0;
    }

    if (a6)
    {
      goto LABEL_27;
    }

    v22 = 0;
    while (1)
    {
      v23 = *(a2 + 4 * v22);
      *(a3 + a5) = v22;
      if ((v23 & 3u) > 1uLL)
      {
        v26 = *(a1 + 2080);
        if ((v23 & 3) == 2)
        {
          sub_1B5CF9AD8(v36, a8);
          v35 = sub_1B5CF9914(((v23 & 0xFFFFFFFC) + v26), a3, a4 + 1, a5 + 1, 0, a7, v36);
          v25 = v36;
        }

        else
        {
          sub_1B5CF9AD8(v37, a8);
          v35 = sub_1B5CF9500(a1, ((v23 & 0xFFFFFFFC) + v26), a3, (a4 + 1), a5 + 1, 0, a7, v37);
          v25 = v37;
        }
      }

      else
      {
        if ((v23 & 3) == 0)
        {
          goto LABEL_20;
        }

        v24 = *(a1 + 2080);
        sub_1B5CF9AD8(v38, a8);
        v35 = sub_1B5CF891C(a1, (v23 & 0xFFFFFFFC) + v24, a3, (a4 + 1), a5 + 1, 0, a7, v38);
        v25 = v38;
      }

      sub_1B5CF9D24(v25);
LABEL_20:
      v17 = v35;
      if ((v35 & 1) == 0 && v22++ != 255)
      {
        continue;
      }

      goto LABEL_27;
    }
  }

  v16 = *(a2 + 4 * *(a3 + a5));
  if ((v16 & 3u) > 1uLL)
  {
    if ((v16 & 3) == 2)
    {
      v19 = *(a1 + 2080);
      sub_1B5CF9AD8(v39, a8);
      v20 = v39;
      v21 = sub_1B5CF9914(((v16 & 0xFFFFFFFC) + v19), a3, a4, a5 + 1, a6, a7, v39);
    }

    else
    {
      v29 = *(a1 + 2080);
      sub_1B5CF9AD8(v40, a8);
      v20 = v40;
      v21 = sub_1B5CF9500(a1, ((v16 & 0xFFFFFFFC) + v29), a3, a4, a5 + 1, a6, a7, v40);
    }

    goto LABEL_26;
  }

  if ((v16 & 3) != 0)
  {
    v28 = *(a1 + 2080);
    sub_1B5CF9AD8(v41, a8);
    v20 = v41;
    v21 = sub_1B5CF891C(a1, (v16 & 0xFFFFFFFC) + v28, a3, a4, a5 + 1, a6, a7, v41);
LABEL_26:
    v17 = v21;
    sub_1B5CF9D24(v20);
    goto LABEL_27;
  }

  v17 = 0;
LABEL_27:
  v30 = *MEMORY[0x1E69E9840];
  return v17;
}