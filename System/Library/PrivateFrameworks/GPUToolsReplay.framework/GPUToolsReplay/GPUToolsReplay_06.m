uint64_t *sub_24D79CC24(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_24D79CD70(result, v12);
    }

    v13 = 40 * v9;
    *v13 = *a2;
    v14 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(v13 + 8) = v14;
    v15 = *(a2 + 16);
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = result[1];
    v17 = v13 + *result - v16;
    sub_24D79CDC8(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_24D79CE70(v20);
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(v4 + 8) = v6;
    v7 = *(a2 + 16);
    *(v4 + 32) = *(a2 + 32);
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  v3[1] = v8;
  return result;
}

void sub_24D79CD70(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void sub_24D79CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 8) = v7;
      v8 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v8;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    if (a2 != a3)
    {
      do
      {
        v9 = *(v5 + 8);
        *(v5 + 8) = 0;
        if (v9)
        {
          MEMORY[0x2530332A0](v9, 0x1000C8077774924);
        }

        v5 += 40;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_24D79CE70(uint64_t a1)
{
  sub_24D79CEA8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_24D79CEA8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 40;
      result = *(v2 - 32);
      *(v2 - 32) = 0;
      if (result)
      {
        result = MEMORY[0x2530332A0](result, 0x1000C8077774924);
        v2 = *(v4 + 16);
      }

      else
      {
        v2 -= 40;
      }
    }

    while (v2 != a2);
  }

  return result;
}

unint64_t sub_24D79CF24(unint64_t result, uint64_t a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    v5 = v3[1];
    if (v5 <= result)
    {
      v6 = *a3;
      v7 = &v3[2 * *a3];
      if (v7[1] > result || v7[3] < result)
      {
        v8 = ((v4 - v3) >> 4) - 2;
        if (v6 >= v8 || (++v6, v3[2 * v6 + 1] > result) || v7[5] < result)
        {
          if (*(v4 - 8) <= result)
          {
            v6 = ((v4 - v3) >> 4) - 2;
          }

          else
          {
            v9 = 0;
            do
            {
              v6 = (v9 + v8) >> 1;
              if (v3[2 * v6 + 1] <= result)
              {
                v9 = v6 + 1;
                if (v3[2 * v6 + 3] >= result)
                {
                  break;
                }
              }

              else
              {
                v8 = v6 - 1;
              }
            }

            while (v9 <= v8);
          }
        }
      }

      *a3 = v6;
      v10 = &v3[2 * v6];
      return (v10[2] - *v10) * (result - v10[1]) / (v10[3] - v10[1]) + *v10;
    }

    else
    {
      return *v3 - (v3[2] - *v3) * (v5 - result) / (v3[3] - v5);
    }
  }

  return result;
}

uint64_t sub_24D79D048(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_24D797220(&v2, a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_24D79D0EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_24D79D190(&v18, &v16, &v14, &v13);
}

void sub_24D79D190(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_24D79D220(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_24D79D220(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void *sub_24D79D2F0(void *result, unsigned int a2, void *a3, uint64_t a4)
{
  if ((*(a4 + 88) & 1) == 0)
  {
    memset(v6 + 8, 255, 20);
    *a4 = ((a3[28228] - a3[28227]) >> 3) - 1 + ((a3[28231] - a3[28230]) << 29) - 0x100000000;
    *(a4 + 8) = v6[0];
    *(a4 + 20) = *(v6 + 12);
    *(a4 + 36) = a2;
    *(a4 + 37) = 255;
    *(a4 + 75) = 0;
    *(a4 + 80) = 0;
    *(a4 + 88) = 1;
    v5 = &a3[125 * a2];
    if (*(v5 + 1336) == 1)
    {
      sub_24D797450(result, a3, 3, "cliqueID: %d", a2);
    }

    return sub_24D79D3CC((v5 + 89));
  }

  return result;
}

void *sub_24D79D3CC(uint64_t a1)
{
  if (*(a1 + 624) == 1)
  {
    v2 = sub_24D809C04();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_24D85D8D4();
    }

    if (sub_24D809BF4())
    {
      sub_24D809BFC();
    }
  }

  if (*(a1 + 624) == 1)
  {
    sub_24D79D448(a1);
  }

  result = sub_24D79D4B4(a1);
  *(a1 + 624) = 1;
  return result;
}

void sub_24D79D448(uint64_t a1)
{
  if ((*(a1 + 624) & 1) == 0)
  {
    v2 = sub_24D809C04();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_24D85D960();
    }

    if (sub_24D809BF4())
    {
      sub_24D809BFC();
    }
  }

  if (*(a1 + 624) == 1)
  {
    sub_24D79D50C(a1);
    *(a1 + 624) = 0;
  }
}

void *sub_24D79D4B4(void *a1)
{
  sub_24D85D65C(a1);
  sub_24D85D65C(a1 + 13);
  sub_24D85D65C(a1 + 26);
  sub_24D85D65C(a1 + 39);
  sub_24D85D65C(a1 + 52);

  return sub_24D85D65C(a1 + 65);
}

void sub_24D79D50C(uint64_t a1)
{
  sub_24D79D564(a1);
  sub_24D79E128(a1 + 104);
  sub_24D79EC08(a1 + 208);
  sub_24D79F27C(a1 + 312);
  sub_24D79EC08(a1 + 416);

  sub_24D79F8F0(a1 + 520);
}

void sub_24D79D564(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    *(a1 + 96) = v1 - 1;
    v3 = *(a1 + 88);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = *(*(*(a1 + 56) + (((*(a1 + 80) + v4) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 80) + v4) & 0x3FF));
      *(a1 + 88) = v4;
      sub_24D79D6A4((a1 + 48), 1);

      sub_24D79D5F4(a1, v5);
    }
  }
}

void sub_24D79D5F4(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {

    sub_24D79D714(a1, v5);
  }

  else if (!v4)
  {
    v6 = a1[1];
    if (a1[2] == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 8 * (a1[4] >> 11)) + 2 * (a1[4] & 0x7FFLL);
    }

    v10[0] = v6 + 8 * (a1[4] >> 11);
    v10[1] = v7;
    v8 = sub_24D79D944(v10, a2);
    sub_24D79D848(a1, v8, v9);
  }
}

uint64_t sub_24D79D6A4(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
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

void sub_24D79D714(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 8) - 1;
  }

  v7 = a1[5] + a1[4];
  v8 = v6 - v7;
  v9 = a2 > v8;
  v10 = a2 - v8;
  if (v9)
  {
    sub_24D79D9A8(a1, v10);
    v4 = a1[1];
    v5 = a1[2];
    v7 = a1[4] + a1[5];
  }

  v11 = (v4 + 8 * (v7 >> 11));
  if (v5 == v4)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (*v11 + 2 * (v7 & 0x7FF));
    v13 = v12;
  }

  v22[0] = v11;
  v22[1] = v13;
  v14 = sub_24D79D944(v22, a2);
  if (v12 != v15)
  {
    v16 = v14;
    v17 = v15;
    do
    {
      if (v11 == v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = *v11 + 4096;
      }

      if (v12 == v18)
      {
        v20 = v12;
      }

      else
      {
        v19 = ((v18 - v12 - 2) & 0xFFFFFFFFFFFFFFFELL) + 2;
        bzero(v12, v19);
        v20 = &v12[v19];
      }

      a1[5] += (v20 - v12) >> 1;
      if (v11 == v16)
      {
        break;
      }

      v21 = v11[1];
      ++v11;
      v12 = v21;
    }

    while (v21 != v17);
  }
}

uint64_t sub_24D79D848(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 11));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 2 * (v5 & 0x7FF);
  }

  if (v9 != a3)
  {
    v10 = ((v9 - *v8) >> 1) + ((v8 - a2) << 8);
    v11 = a3 - *a2;
    v12 = v10 - (v11 >> 1);
    if (v12 >= 1)
    {
      v13 = (v6 + 8 * (v4 >> 11));
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13 + 2 * (*(result + 32) & 0x7FFLL);
      }

      v16[0] = v13;
      v16[1] = v14;
      if (a3 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (v11 >> 1) + ((a2 - v13) << 8) - ((v14 - *v13) >> 1);
      }

      sub_24D79D944(v16, v15);
      v3[5] -= v12;
      do
      {
        result = sub_24D79E0B8(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t *sub_24D79D944(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 1);
    if (v4 < 1)
    {
      result -= (2047 - v4) >> 11;
      v6 = *result;
    }

    else
    {
      result += v4 >> 11;
      v5 = *result;
    }
  }

  return result;
}

void *sub_24D79D9A8(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x7FF) != 0)
  {
    v5 = (v4 >> 11) + 1;
  }

  else
  {
    v5 = v4 >> 11;
  }

  v6 = result[4];
  if (v5 >= v6 >> 11)
  {
    v7 = v6 >> 11;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 11)
  {
    for (result[4] = v6 - (v7 << 11); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_24D79DC48(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_24D79E070(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 11; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_24D79DC48(v2, v16);
    }
  }

  return result;
}

void *sub_24D79DC48(void *result, void *a2)
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

      sub_24D79E070(result, v11);
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

const void **sub_24D79DD50(const void **result, void *a2)
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

      sub_24D79E070(result, v9);
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

void *sub_24D79DE5C(void *result, void *a2)
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

      sub_24D79E070(result[4], v11);
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

const void **sub_24D79DF64(const void **result, void *a2)
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

      sub_24D79E070(result[4], v9);
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

void sub_24D79E070(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t sub_24D79E0B8(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 8) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x800)
  {
    a2 = 1;
  }

  if (v5 < 0x1000)
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

void sub_24D79E128(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    *(a1 + 96) = v1 - 1;
    v3 = *(a1 + 88);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = *(*(*(a1 + 56) + (((*(a1 + 80) + v4) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 80) + v4) & 0x3FF));
      *(a1 + 88) = v4;
      sub_24D79D6A4((a1 + 48), 1);

      sub_24D79E1B8(a1, v5);
    }
  }
}

void sub_24D79E1B8(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {

    sub_24D79E268(a1, v5);
  }

  else if (!v4)
  {
    v6 = a1[1];
    if (a1[2] == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 8 * (a1[4] >> 12)) + (a1[4] & 0xFFFLL);
    }

    v10[0] = v6 + 8 * (a1[4] >> 12);
    v10[1] = v7;
    v8 = sub_24D7904F4(v10, a2);
    sub_24D79E390(a1, v8, v9);
  }
}

void sub_24D79E268(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 9) - 1;
  }

  v7 = a1[5] + a1[4];
  v8 = v6 - v7;
  v9 = a2 > v8;
  v10 = a2 - v8;
  if (v9)
  {
    sub_24D79E488(a1, v10);
    v4 = a1[1];
    v5 = a1[2];
    v7 = a1[4] + a1[5];
  }

  v11 = (v4 + 8 * (v7 >> 12));
  if (v5 == v4)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (*v11 + (v7 & 0xFFF));
    v13 = v12;
  }

  v21[0] = v11;
  v21[1] = v13;
  v14 = sub_24D7904F4(v21, a2);
  if (v12 != v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = a1[5];
    do
    {
      if (v11 == v16)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v11 + 4096;
      }

      if (v12 == v19)
      {
        v19 = v12;
      }

      else
      {
        bzero(v12, v19 - v12);
      }

      v18 += v19 - v12;
      if (v11 == v16)
      {
        break;
      }

      v20 = v11[1];
      ++v11;
      v12 = v20;
    }

    while (v20 != v17);
    a1[5] = v18;
  }
}

uint64_t sub_24D79E390(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 12));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + (v5 & 0xFFF);
  }

  if (v9 != a3)
  {
    v10 = v8 - a2;
    v11 = *v8;
    v12 = *a2;
    v13 = v9 + (v10 << 9) - a3 - v11 + *a2;
    if (v13 >= 1)
    {
      v14 = (v6 + 8 * (v4 >> 12));
      if (v7 == v6)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v14 + (*(result + 32) & 0xFFFLL);
      }

      v17[0] = v14;
      v17[1] = v15;
      if (a3 == v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = a3 - v15 - v12 + *v14 + ((a2 - v14) << 9);
      }

      sub_24D7904F4(v17, v16);
      v3[5] -= v13;
      do
      {
        result = sub_24D79EB98(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void *sub_24D79E488(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0xFFF) != 0)
  {
    v5 = (v4 >> 12) + 1;
  }

  else
  {
    v5 = v4 >> 12;
  }

  v6 = result[4];
  if (v5 >= v6 >> 12)
  {
    v7 = v6 >> 12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 12)
  {
    for (result[4] = v6 - (v7 << 12); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_24D79E728(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_24D79EB50(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 12; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_24D79E728(v2, v16);
    }
  }

  return result;
}

void *sub_24D79E728(void *result, void *a2)
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

      sub_24D79EB50(result, v11);
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

const void **sub_24D79E830(const void **result, void *a2)
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

      sub_24D79EB50(result, v9);
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

void *sub_24D79E93C(void *result, void *a2)
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

      sub_24D79EB50(result[4], v11);
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

const void **sub_24D79EA44(const void **result, void *a2)
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

      sub_24D79EB50(result[4], v9);
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

void sub_24D79EB50(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t sub_24D79EB98(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 9) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1000)
  {
    a2 = 1;
  }

  if (v5 < 0x2000)
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

void sub_24D79EC08(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    *(a1 + 96) = v1 - 1;
    v3 = *(a1 + 88);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = *(*(*(a1 + 56) + (((*(a1 + 80) + v4) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 80) + v4) & 0x3FF));
      *(a1 + 88) = v4;
      sub_24D79D6A4((a1 + 48), 1);

      sub_24D79EC98(a1, v5);
    }
  }
}

void sub_24D79EC98(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {

    sub_24D79ED48(a1, v5);
  }

  else if (!v4)
  {
    v6 = a1[1];
    if (a1[2] == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 8 * (a1[4] >> 9)) + 8 * (a1[4] & 0x1FFLL);
    }

    v10[0] = v6 + 8 * (a1[4] >> 9);
    v10[1] = v7;
    v8 = sub_24D79EF78(v10, a2);
    sub_24D79EE7C(a1, v8, v9);
  }
}

void sub_24D79ED48(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v7 = a1[5] + a1[4];
  v8 = v6 - v7;
  v9 = a2 > v8;
  v10 = a2 - v8;
  if (v9)
  {
    sub_24D79EFDC(a1, v10);
    v4 = a1[1];
    v5 = a1[2];
    v7 = a1[4] + a1[5];
  }

  v11 = (v4 + 8 * (v7 >> 9));
  if (v5 == v4)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (*v11 + 8 * (v7 & 0x1FF));
    v13 = v12;
  }

  v22[0] = v11;
  v22[1] = v13;
  v14 = sub_24D79EF78(v22, a2);
  if (v12 != v15)
  {
    v16 = v14;
    v17 = v15;
    do
    {
      if (v11 == v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = *v11 + 4096;
      }

      if (v12 == v18)
      {
        v20 = v12;
      }

      else
      {
        v19 = ((v18 - v12 - 8) & 0xFFFFFFFFFFFFFFF8) + 8;
        bzero(v12, v19);
        v20 = &v12[v19];
      }

      a1[5] += (v20 - v12) >> 3;
      if (v11 == v16)
      {
        break;
      }

      v21 = v11[1];
      ++v11;
      v12 = v21;
    }

    while (v21 != v17);
  }
}

uint64_t sub_24D79EE7C(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 9));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 8 * (v5 & 0x1FF);
  }

  if (v9 != a3)
  {
    v10 = ((v9 - *v8) >> 3) + ((v8 - a2) << 6);
    v11 = a3 - *a2;
    v12 = v10 - (v11 >> 3);
    if (v12 >= 1)
    {
      v13 = (v6 + 8 * (v4 >> 9));
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13 + 8 * (*(result + 32) & 0x1FFLL);
      }

      v16[0] = v13;
      v16[1] = v14;
      if (a3 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (v11 >> 3) + ((a2 - v13) << 6) - ((v14 - *v13) >> 3);
      }

      sub_24D79EF78(v16, v15);
      v3[5] -= v12;
      do
      {
        result = sub_24D78FCF0(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t *sub_24D79EF78(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

void *sub_24D79EFDC(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_24D79DC48(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_24D79E070(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_24D79DC48(v2, v16);
    }
  }

  return result;
}

void sub_24D79F27C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    *(a1 + 96) = v1 - 1;
    v3 = *(a1 + 88);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = *(*(*(a1 + 56) + (((*(a1 + 80) + v4) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 80) + v4) & 0x3FF));
      *(a1 + 88) = v4;
      sub_24D79D6A4((a1 + 48), 1);

      sub_24D79F30C(a1, v5);
    }
  }
}

void sub_24D79F30C(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {

    sub_24D79F3BC(a1, v5);
  }

  else if (!v4)
  {
    v6 = a1[1];
    if (a1[2] == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 8 * (a1[4] >> 10)) + 4 * (a1[4] & 0x3FFLL);
    }

    v10[0] = v6 + 8 * (a1[4] >> 10);
    v10[1] = v7;
    v8 = sub_24D79F5EC(v10, a2);
    sub_24D79F4F0(a1, v8, v9);
  }
}

void sub_24D79F3BC(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 7) - 1;
  }

  v7 = a1[5] + a1[4];
  v8 = v6 - v7;
  v9 = a2 > v8;
  v10 = a2 - v8;
  if (v9)
  {
    sub_24D79F650(a1, v10);
    v4 = a1[1];
    v5 = a1[2];
    v7 = a1[4] + a1[5];
  }

  v11 = (v4 + 8 * (v7 >> 10));
  if (v5 == v4)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (*v11 + 4 * (v7 & 0x3FF));
    v13 = v12;
  }

  v22[0] = v11;
  v22[1] = v13;
  v14 = sub_24D79F5EC(v22, a2);
  if (v12 != v15)
  {
    v16 = v14;
    v17 = v15;
    do
    {
      if (v11 == v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = *v11 + 4096;
      }

      if (v12 == v18)
      {
        v20 = v12;
      }

      else
      {
        v19 = ((v18 - v12 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
        bzero(v12, v19);
        v20 = &v12[v19];
      }

      a1[5] += (v20 - v12) >> 2;
      if (v11 == v16)
      {
        break;
      }

      v21 = v11[1];
      ++v11;
      v12 = v21;
    }

    while (v21 != v17);
  }
}

uint64_t sub_24D79F4F0(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 10));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 4 * (v5 & 0x3FF);
  }

  if (v9 != a3)
  {
    v10 = ((v9 - *v8) >> 2) + ((v8 - a2) << 7);
    v11 = a3 - *a2;
    v12 = v10 - (v11 >> 2);
    if (v12 >= 1)
    {
      v13 = (v6 + 8 * (v4 >> 10));
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13 + 4 * (*(result + 32) & 0x3FFLL);
      }

      v16[0] = v13;
      v16[1] = v14;
      if (a3 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (v11 >> 2) + ((a2 - v13) << 7) - ((v14 - *v13) >> 2);
      }

      sub_24D79F5EC(v16, v15);
      v3[5] -= v12;
      do
      {
        result = sub_24D79D6A4(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t *sub_24D79F5EC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 2);
    if (v4 < 1)
    {
      result -= (1023 - v4) >> 10;
      v6 = *result;
    }

    else
    {
      result += v4 >> 10;
      v5 = *result;
    }
  }

  return result;
}

void *sub_24D79F650(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = result[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_24D79DC48(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_24D79E070(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 10; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_24D79DC48(v2, v16);
    }
  }

  return result;
}

void sub_24D79F8F0(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    *(a1 + 96) = v1 - 1;
    v3 = *(a1 + 88);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = *(*(*(a1 + 56) + (((*(a1 + 80) + v4) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 80) + v4) & 0x3FF));
      *(a1 + 88) = v4;
      sub_24D79D6A4((a1 + 48), 1);

      sub_24D79F980(a1, v5);
    }
  }
}

void sub_24D79F980(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {

    sub_24D79FA30(a1, v5);
  }

  else if (!v4)
  {
    v6 = a1[1];
    if (a1[2] == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 8 * (a1[4] >> 12)) + (a1[4] & 0xFFFLL);
    }

    v10[0] = v6 + 8 * (a1[4] >> 12);
    v10[1] = v7;
    v8 = sub_24D7904F4(v10, a2);
    sub_24D79E390(a1, v8, v9);
  }
}

void sub_24D79FA30(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 9) - 1;
  }

  v7 = a1[5] + a1[4];
  v8 = v6 - v7;
  v9 = a2 > v8;
  v10 = a2 - v8;
  if (v9)
  {
    sub_24D79FB50(a1, v10);
    v4 = a1[1];
    v5 = a1[2];
    v7 = a1[4] + a1[5];
  }

  v11 = (v4 + 8 * (v7 >> 12));
  if (v5 == v4)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (*v11 + (v7 & 0xFFF));
    v13 = v12;
  }

  v20[0] = v11;
  v20[1] = v13;
  v14 = sub_24D7904F4(v20, a2);
  if (v12 != v15)
  {
    v16 = v14;
    v17 = v15;
    do
    {
      if (v11 == v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = *v11 + 4096;
      }

      if (v12 == v18)
      {
        v18 = v12;
      }

      else
      {
        bzero(v12, v18 - v12);
      }

      a1[5] += v18 - v12;
      if (v11 == v16)
      {
        break;
      }

      v19 = v11[1];
      ++v11;
      v12 = v19;
    }

    while (v19 != v17);
  }
}

void *sub_24D79FB50(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0xFFF) != 0)
  {
    v5 = (v4 >> 12) + 1;
  }

  else
  {
    v5 = v4 >> 12;
  }

  v6 = result[4];
  if (v5 >= v6 >> 12)
  {
    v7 = v6 >> 12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 12)
  {
    for (result[4] = v6 - (v7 << 12); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_24D79DC48(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_24D79E070(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 12; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_24D79DC48(v2, v16);
    }
  }

  return result;
}

void *sub_24D79FDF0(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_24D79FE78(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_24D79FE78(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
    sub_24D79EB50(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24D79E728(a1, &v10);
}

void *sub_24D79FFEC(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_24D7A043C(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_24D7A0078(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_24D7A05B0(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_24D7A0100(void *result, unint64_t a2, __int128 *a3)
{
  v3 = result;
  v4 = result[5];
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_24D7A0724(result, v6, a3);
  }

  else if (!v5)
  {
    v7 = result[4];
    v8 = result[1];
    v9 = (v8 + 8 * (v7 / 0x6E));
    if (result[2] == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = *v9 + 37 * (v7 % 0x6E);
    }

    v11 = v9;
    v12 = v10;
    sub_24D7A0D3C(&v11, a2);
    return sub_24D7A0894(v3, v11, v12);
  }

  return result;
}

void sub_24D7A01C4(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_24D79D048(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    sub_24D7A0DF4(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    sub_24D797264(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v20, v5);
}

__n128 sub_24D7A0310(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 110 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_24D7A0F28(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x6E)) + 37 * (v8 % 0x6E);
  result = *a2;
  v11 = *(a2 + 16);
  *(v9 + 29) = *(a2 + 29);
  *v9 = result;
  *(v9 + 16) = v11;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_24D7A03CC(uint64_t result)
{
  v1 = result;
  if ((*(result + 624) & 1) == 0)
  {
    v2 = sub_24D809C04();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_24D85D9EC();
    }

    result = sub_24D809BF4();
    if (result)
    {
      result = sub_24D809BFC();
    }
  }

  if (*(v1 + 624) == 1)
  {
    ++*(v1 + 632);
    *(v1 + 624) = 0;
  }

  return result;
}

void *sub_24D7A043C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_24D79E070(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24D79DC48(a1, &v10);
}

void *sub_24D7A05B0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_24D79EB50(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24D79E728(a1, &v10);
}

void *sub_24D7A0724(void *a1, unint64_t a2, __int128 *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 110 * ((v7 - v6) >> 3) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  v11 = a2 > v10;
  v12 = a2 - v10;
  if (v11)
  {
    sub_24D7A09F0(a1, v12);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v13 = (v6 + 8 * (v9 / 0x6E));
  if (v7 == v6)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 37 * (v9 % 0x6E);
    v15 = v14;
  }

  v24 = v13;
  v25 = v15;
  result = sub_24D7A0D3C(&v24, a2);
  v17 = v25;
  if (v14 != v25)
  {
    v18 = v24;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4070;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *a3;
          v22 = a3[1];
          *(v20 + 29) = *(a3 + 29);
          *v20 = v21;
          *(v20 + 16) = v22;
          v20 += 37;
        }

        while (v20 != v19);
      }

      a1[5] += 0x14C1BACF914C1BADLL * (v19 - v14);
      if (v13 == v18)
      {
        break;
      }

      v23 = v13[1];
      ++v13;
      v14 = v23;
    }

    while (v23 != v17);
  }

  return result;
}

uint64_t sub_24D7A0894(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 / 0x6E));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 37 * (v5 % 0x6E);
  }

  if (v9 != a3)
  {
    v10 = a3 - *a2;
    v11 = 110 * (v8 - a2) + 0x14C1BACF914C1BADLL * (v9 - *v8) - 0x14C1BACF914C1BADLL * v10;
    if (v11 >= 1)
    {
      v12 = (v6 + 8 * (v4 / 0x6E));
      if (v7 == v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 37 * (v4 % 0x6E);
      }

      if (a3 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 110 * (a2 - v12) + 0x14C1BACF914C1BADLL * v10 - 0x14C1BACF914C1BADLL * (v13 - *v12);
      }

      v15[0] = v12;
      v15[1] = v13;
      sub_24D7A0D3C(v15, v14);
      v3[5] -= v11;
      do
      {
        result = sub_24D7A0CC4(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void *sub_24D7A09F0(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x6E)
  {
    v5 = v4 / 0x6E + 1;
  }

  else
  {
    v5 = v4 / 0x6E;
  }

  v6 = result[4];
  if (v5 >= v6 / 0x6E)
  {
    v7 = v6 / 0x6E;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x6E)
  {
    for (result[4] = v6 - 110 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_24D79DC48(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_24D79E070(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 110 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_24D79DC48(v2, v16);
    }
  }

  return result;
}

uint64_t sub_24D7A0CC4(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 110 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x6E)
  {
    a2 = 1;
  }

  if (v5 < 0xDC)
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

void *sub_24D7A0D3C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x14C1BACF914C1BADLL * (result[1] - **result);
    if (v3 < 1)
    {
      v5 = 109 - v3;
      v6 = &v2[-(v5 / 0x6E)];
      *result = v6;
      v4 = *v6 + 37 * (110 * (v5 / 0x6E) - v5) + 4033;
    }

    else
    {
      *result = &v2[v3 / 0x6E];
      v4 = v2[v3 / 0x6E] + 37 * (v3 % 0x6E);
    }

    result[1] = v4;
  }

  return result;
}

unint64_t *sub_24D7A0DF4@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *sub_24D7A0F28(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x6E;
  v3 = v1 - 110;
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
    sub_24D79E070(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24D79DC48(a1, &v10);
}

void *sub_24D7A109C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_24D79D2F0(*a1, *a1[1], *a1[2], a2);
  v6 = *a1[2] + 1000 * *(a2 + 36) + 712;
  if ((~*(v4 + 58) & 3) != 0 || (v7 = *(v6 + 296)) == 0 || (result = sub_24D765B7C((v6 + 208), v7 - 1)) == 0)
  {
    v8 = *a1[3];
    if (*(v6 + 624) == 1)
    {
      return sub_24D7A1150(v6 + 208, &v8);
    }
  }

  return result;
}

void *sub_24D7A1150(uint64_t a1, void *a2)
{
  if (!*(a1 + 88))
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      v6 = 0;
      sub_24D7A11AC((a1 + 48), v4, &v6);
    }
  }

  return sub_24D7A125C(a1, a2);
}

uint64_t *sub_24D7A11AC(uint64_t *result, unint64_t a2, int *a3)
{
  v3 = result;
  v4 = result[5];
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_24D7A12E4(result, v6, a3);
  }

  else if (!v5)
  {
    v7 = result[1];
    if (result[2] == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 8 * (result[4] >> 10)) + 4 * (result[4] & 0x3FF);
    }

    v11[0] = v7 + 8 * (result[4] >> 10);
    v11[1] = v8;
    v9 = sub_24D79F5EC(v11, a2);
    return sub_24D79F4F0(v3, v9, v10);
  }

  return result;
}

void *sub_24D7A125C(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_24D7A043C(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

uint64_t *sub_24D7A12E4(void *a1, unint64_t a2, int *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 7) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  v11 = a2 > v10;
  v12 = a2 - v10;
  if (v11)
  {
    sub_24D7A1494(a1, v12);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v13 = (v6 + 8 * (v9 >> 10));
  if (v7 == v6)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 4 * (v9 & 0x3FF);
    v15 = v14;
  }

  v29[0] = v13;
  v29[1] = v15;
  result = sub_24D79F5EC(v29, a2);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = 0;
        v21 = *a3;
        v22 = (v19 - v14 - 4) >> 2;
        v23 = (v22 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v24 = vdupq_n_s64(v22);
        v25 = (v14 + 8);
        do
        {
          v26 = vdupq_n_s64(v20);
          v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_24DA8B910)));
          if (vuzp1_s16(v27, 2).u8[0])
          {
            *(v25 - 2) = v21;
          }

          if (vuzp1_s16(v27, 2).i8[2])
          {
            *(v25 - 1) = v21;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_24DA8B900)))).i32[1])
          {
            *v25 = v21;
            v25[1] = v21;
          }

          v20 += 4;
          v25 += 4;
        }

        while (v23 != v20);
      }

      v18 += (v19 - v14) >> 2;
      if (v13 == result)
      {
        break;
      }

      v28 = v13[1];
      ++v13;
      v14 = v28;
    }

    while (v28 != v17);
    a1[5] = v18;
  }

  return result;
}

void *sub_24D7A1494(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = result[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_24D79E728(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_24D79EB50(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 10; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_24D79E728(v2, v16);
    }
  }

  return result;
}

uint64_t sub_24D7A1734(uint64_t result, void *a2)
{
  if (*(result + 624) == 1)
  {
    v18 = v2;
    v19 = v3;
    v4 = result;
    v5 = ((a2[28228] - a2[28227]) >> 3) - 1 + ((a2[28231] - a2[28230]) << 29) - 0x100000000;
    v16 = v5;
    v6 = *(result + 504);
    if (!v6 || (result = sub_24D765B7C((result + 416), v6 - 1)) == 0 || (v7 = *(v4 + 456) + *(v4 + 448) - 1, v8 = (*(*(v4 + 424) + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)), *v8 < v5) || v8[1] < HIDWORD(v5))
    {
      result = sub_24D7A194C(v4 + 416, &v16);
      if (*(v4 + 624) == 1)
      {
        result = sub_24D790464(v4, (*(v4 + 616) - 1));
        if ((result & 3u) <= 1uLL)
        {
          if ((result & 3) == 0)
          {
            v17 = -2;
            return sub_24D7A19A8(v4 + 520, &v17);
          }

          v13 = *(v4 + 560) + *(v4 + 552) - 1;
          v10 = *(*(v4 + 528) + ((v13 >> 9) & 0x7FFFFFFFFFFFF8));
          v11 = v13 & 0xFFF;
          v12 = *(v10 + v11) & 0xF3 | 8;
          goto LABEL_13;
        }

        if ((result & 3) == 2)
        {
          v9 = *(v4 + 560) + *(v4 + 552) - 1;
          v10 = *(*(v4 + 528) + ((v9 >> 9) & 0x7FFFFFFFFFFFF8));
          v11 = v9 & 0xFFF;
          v12 = *(v10 + v11) & 0xCF | 0x20;
LABEL_13:
          *(v10 + v11) = v12;
          return result;
        }

        v14 = *(v4 + 560) + *(v4 + 552) - 1;
        v15 = *(*(v4 + 528) + ((v14 >> 9) & 0x7FFFFFFFFFFFF8));
        *(v15 + (v14 & 0xFFF)) = *(v15 + (v14 & 0xFFF)) & 0x3F | 0x80;
      }
    }
  }

  return result;
}

void *sub_24D7A18F0(uint64_t a1, _WORD *a2)
{
  if (!*(a1 + 88))
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      v6 = 0;
      sub_24D7A11AC((a1 + 48), v4, &v6);
    }
  }

  return sub_24D7A1C04(a1, a2);
}

void *sub_24D7A194C(uint64_t a1, void *a2)
{
  if (!*(a1 + 88))
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      v6 = 0;
      sub_24D7A11AC((a1 + 48), v4, &v6);
    }
  }

  return sub_24D79FFEC(a1, a2);
}

void *sub_24D7A19A8(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 88))
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      v6 = 0;
      sub_24D7A11AC((a1 + 48), v4, &v6);
    }
  }

  return sub_24D7A1A04(a1, a2);
}

void *sub_24D7A1A04(void *result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 9) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_24D7A1A90(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 9) & 0x7FFFFFFFFFFFF8)) + (v8 & 0xFFF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_24D7A1A90(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
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
    sub_24D79E070(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24D79DC48(a1, &v10);
}

void *sub_24D7A1C04(void *result, _WORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 8) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_24D7A1C90(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v8 & 0x7FF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_24D7A1C90(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x800;
  v3 = v1 - 2048;
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
    sub_24D79E070(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24D79DC48(a1, &v10);
}

void *sub_24D7A1E04(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 88))
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      v6 = 0;
      sub_24D7A11AC((a1 + 48), v4, &v6);
    }
  }

  return sub_24D7A1E60(a1, a2);
}

void *sub_24D7A1E60(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_24D7A1EE8(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_24D7A1EE8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
    sub_24D79E070(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24D79DC48(a1, &v10);
}

unint64_t sub_24D7A205C(uint64_t *a1, unint64_t a2, char a3, unsigned int a4)
{
  v4 = *a1;
  if (!a2)
  {
    v5 = HIDWORD(a2) & 0x1F;
    if (a4 <= 7)
    {
      v10 = (v4 + 16 * a4 + 17808);
      if (*(v10 + 12) == 1)
      {
        v7 = *v10;
        v11 = *(v10 + 1);
        return v5 | (v7 << 32);
      }

      v12 = sub_24D809C04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_24D85DA78();
      }

      if (sub_24D809BF4())
      {
        sub_24D809BFC();
      }
    }

    v7 = 0;
    return v5 | (v7 << 32);
  }

  if (a2 == 1)
  {
    v5 = HIDWORD(a2) & 0x1F;
    v6 = HIWORD(a2) & 0xFFF;
    v7 = (v6 & ~(-1 << (a2 >> 60))) + 1;
    v8 = (((v6 >> (a2 >> 60)) & ~(-1 << (a3 & 0xF))) + 1) | (((v6 >> (a2 >> 60) >> (a3 & 0xF)) + 1) << 32);
    if (a4 <= 7)
    {
      v9 = v4 + 16 * a4 + 17808;
      *v9 = v7;
      *(v9 + 4) = v8;
      *(v9 + 12) = 1;
    }
  }

  else
  {
    v7 = 0;
    LODWORD(v5) = 0;
  }

  return v5 | (v7 << 32);
}

void sub_24D7A2168(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t sub_24D7A21B0(uint64_t result, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  *(result + 80) = 0;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *a4 = 1;
  v4 = *a3;
  v5 = *a3 & 7;
  v6 = (a2 + (*a3 >> 3));
  if (v5 == 7)
  {
    v7 = ((*v6 | (v6[1] << 8)) >> 7) & 3;
  }

  else
  {
    v7 = (*v6 >> v5) & 3;
  }

  if (v7 > 1)
  {
    v12 = v4 + 2;
    if (v7 == 2)
    {
      v13 = v12 & 7;
      v14 = (a2 + (v12 >> 3));
      if (v13 == 7)
      {
        v15 = ((*v14 | (v14[1] << 8)) >> 7) & 3;
      }

      else
      {
        v15 = (*v14 >> v13) & 3;
      }

      if (v15 > 1)
      {
        if (v15 == 2)
        {
          *result = 9;
          v30 = v4 + 4;
          v31 = (a2 + ((v4 + 4) >> 3));
          v32 = v30 & 7;
          if (v32)
          {
            v33 = (*v31 >> v32);
          }

          else
          {
            v33 = *v31;
          }

          v97 = *(result + 8) | v33;
          *(result + 8) = v97;
          v98 = *a3 + 12;
          v99 = (a2 + (v98 >> 3));
          v100 = v98 & 7;
          if (v100)
          {
            v101 = ((*v99 | (*(v99 + 1) << 8)) >> v100);
          }

          else
          {
            v101 = *v99;
          }

          *(result + 8) = v97 | (v101 << 32);
          v25 = 44;
        }

        else
        {
          *result = 10;
          v60 = v4 + 4;
          v61 = (v4 + 4) & 7;
          v62 = (a2 + (v60 >> 3));
          if (v61 > 4)
          {
            v63 = *v62;
          }

          else
          {
            v63 = *v62;
          }

          switch((v63 >> v61) & 0xF)
          {
            case 1u:
              *(result + 8) = 1;
              v433 = *a3 & 7;
              v434 = (a2 + ((*a3 + 8) >> 3));
              if (v433 > 4)
              {
                v435 = *v434;
              }

              else
              {
                v435 = (v434[2] << 16) | (v434[1] << 8) | *v434;
              }

              v900 = *(result + 16) | (v435 >> v433) & 0xFFFFF;
              *(result + 16) = v900;
              v901 = *a3 + 28;
              v902 = v901 & 7;
              v903 = (a2 + (v901 >> 3));
              if (v902 > 4)
              {
                v904 = *v903;
              }

              else
              {
                v904 = (v903[2] << 16) | (v903[1] << 8) | *v903;
              }

              *(result + 16) = v900 | (((v904 >> v902) & 0xFFFFF) << 32);
              v910 = *a3 & 7;
              v911 = (a2 + ((*a3 + 48) >> 3));
              if (v910 > 4)
              {
                v912 = *v911;
              }

              else
              {
                v912 = (v911[2] << 16) | (v911[1] << 8) | *v911;
              }

              v917 = *(result + 24) | (v912 >> v910) & 0xFFFFF;
              *(result + 24) = v917;
              v918 = *a3 + 68;
              v919 = v918 & 7;
              v920 = (a2 + (v918 >> 3));
              if (v919 > 4)
              {
                v921 = *v920;
              }

              else
              {
                v921 = (v920[2] << 16) | (v920[1] << 8) | *v920;
              }

              *(result + 24) = v917 | (((v921 >> v919) & 0xFFFFF) << 32);
              v927 = *a3 & 7;
              v928 = (a2 + ((*a3 + 88) >> 3));
              if (v927 > 4)
              {
                v929 = *v928;
              }

              else
              {
                v929 = (v928[2] << 16) | (v928[1] << 8) | *v928;
              }

              v935 = *(result + 32) | (v929 >> v927) & 0xFFFFF;
              *(result + 32) = v935;
              v936 = *a3 + 108;
              v937 = v936 & 7;
              v938 = (a2 + (v936 >> 3));
              if (v937 > 4)
              {
                v939 = *v938;
              }

              else
              {
                v939 = (v938[2] << 16) | (v938[1] << 8) | *v938;
              }

              *(result + 32) = v935 | (((v939 >> v937) & 0xFFFFF) << 32);
              v945 = *a3 & 7;
              v946 = (a2 + ((*a3 + 128) >> 3));
              if (v945 > 4)
              {
                v947 = *v946;
              }

              else
              {
                v947 = (v946[2] << 16) | (v946[1] << 8) | *v946;
              }

              v952 = *(result + 40) | (v947 >> v945) & 0xFFFFF;
              *(result + 40) = v952;
              v953 = (*a3 - 108) & 7;
              v954 = (a2 + ((*a3 + 148) >> 3));
              if (v953 > 4)
              {
                v955 = *v954;
              }

              else
              {
                v955 = (v954[2] << 16) | (v954[1] << 8) | *v954;
              }

              *(result + 40) = v952 | (((v955 >> v953) & 0xFFFFF) << 32);
              v961 = (a2 + ((*a3 + 168) >> 3));
              v962 = *a3 & 7;
              if (v962)
              {
                v963 = (((v961[2] << 16) | (v961[1] << 8) | *v961) >> v962);
              }

              else
              {
                v963 = *v961;
              }

              v1177 = *(result + 48) | v963;
              *(result + 48) = v1177;
              v1178 = (a2 + ((*a3 + 184) >> 3));
              v1179 = *a3 & 7;
              if (v1179)
              {
                v1180 = (((v1178[2] << 16) | (v1178[1] << 8) | *v1178) >> v1179);
              }

              else
              {
                v1180 = *v1178;
              }

              *(result + 48) = v1177 | (v1180 << 16);
              v25 = 200;
              break;
            case 2u:
              *(result + 8) = 2;
              v265 = *a3 & 7;
              v266 = (a2 + ((*a3 + 8) >> 3));
              if (v265 == 7)
              {
                v267 = ((*v266 | (v266[1] << 8)) >> 7) & 3;
              }

              else
              {
                v267 = (*v266 >> v265) & 3;
              }

              v654 = *(result + 16) | v267;
              *(result + 16) = v654;
              v655 = *a3 + 10;
              v656 = v655 & 7;
              v657 = (a2 + (v655 >> 3));
              if (v656 > 1)
              {
                v658 = (v657[2] << 16) | (v657[1] << 8) | *v657;
              }

              else
              {
                v658 = *v657;
              }

              v659 = v654 | (((v658 >> v656) & 0x7FFF) << 16);
              *(result + 16) = v659;
              v660 = *a3 + 25;
              v661 = v660 & 7;
              v662 = (a2 + (v660 >> 3));
              if (v661 > 1)
              {
                v663 = (v662[2] << 16) | (v662[1] << 8) | *v662;
              }

              else
              {
                v663 = *v662;
              }

              v664 = v659 | (((v663 >> v661) & 0x7FFF) << 32);
              *(result + 16) = v664;
              v665 = *a3 & 7;
              v666 = (a2 + ((*a3 + 40) >> 3));
              if (v665 > 1)
              {
                v667 = (v666[2] << 16) | (v666[1] << 8) | *v666;
              }

              else
              {
                v667 = *v666;
              }

              *(result + 16) = v664 | (((v667 >> v665) & 0x7FFF) << 48);
              v668 = *a3 + 55;
              v669 = v668 & 7;
              v670 = (a2 + (v668 >> 3));
              if (v669 > 1)
              {
                v671 = (v670[2] << 16) | (v670[1] << 8) | *v670;
              }

              else
              {
                v671 = *v670;
              }

              v672 = *(result + 24) | (v671 >> v669) & 0x7FFF;
              *(result + 24) = v672;
              v673 = *a3 + 70;
              v674 = v673 & 7;
              v675 = (a2 + (v673 >> 3));
              if (v674 > 1)
              {
                v676 = (v675[2] << 16) | (v675[1] << 8) | *v675;
              }

              else
              {
                v676 = *v675;
              }

              v677 = v672 | (((v676 >> v674) & 0x7FFF) << 16);
              *(result + 24) = v677;
              v678 = *a3 + 85;
              v679 = v678 & 7;
              v680 = (a2 + (v678 >> 3));
              if (v679 > 1)
              {
                v681 = (v680[2] << 16) | (v680[1] << 8) | *v680;
              }

              else
              {
                v681 = *v680;
              }

              v682 = v677 | (((v681 >> v679) & 0x7FFF) << 32);
              *(result + 24) = v682;
              v683 = *a3 + 100;
              v684 = v683 & 7;
              v685 = (a2 + (v683 >> 3));
              if (v684 > 1)
              {
                v686 = (v685[2] << 16) | (v685[1] << 8) | *v685;
              }

              else
              {
                v686 = *v685;
              }

              *(result + 24) = v682 | (((v686 >> v684) & 0x7FFF) << 48);
              v687 = *a3 + 115;
              v688 = v687 & 7;
              v689 = (a2 + (v687 >> 3));
              if (v688 > 1)
              {
                v690 = (v689[2] << 16) | (v689[1] << 8) | *v689;
              }

              else
              {
                v690 = *v689;
              }

              v691 = *(result + 32) | (v690 >> v688) & 0x7FFF;
              *(result + 32) = v691;
              v692 = (*a3 - 126) & 7;
              v693 = (a2 + ((*a3 + 130) >> 3));
              if (v692 > 1)
              {
                v694 = (v693[2] << 16) | (v693[1] << 8) | *v693;
              }

              else
              {
                v694 = *v693;
              }

              v695 = v691 | (((v694 >> v692) & 0x7FFF) << 16);
              *(result + 32) = v695;
              v696 = (*a3 - 111) & 7;
              v697 = (a2 + ((*a3 + 145) >> 3));
              if (v696 > 1)
              {
                v698 = (v697[2] << 16) | (v697[1] << 8) | *v697;
              }

              else
              {
                v698 = *v697;
              }

              v699 = v695 | (((v698 >> v696) & 0x7FFF) << 32);
              *(result + 32) = v699;
              v700 = *a3 & 7;
              v701 = (a2 + ((*a3 + 160) >> 3));
              if (v700 > 1)
              {
                v702 = (v701[2] << 16) | (v701[1] << 8) | *v701;
              }

              else
              {
                v702 = *v701;
              }

              *(result + 32) = v699 | (((v702 >> v700) & 0x7FFF) << 48);
              v703 = (*a3 - 81) & 7;
              v704 = (a2 + ((*a3 + 175) >> 3));
              if (v703 > 1)
              {
                v705 = (v704[2] << 16) | (v704[1] << 8) | *v704;
              }

              else
              {
                v705 = *v704;
              }

              v706 = *(result + 40) | (v705 >> v703) & 0x7FFF;
              *(result + 40) = v706;
              v707 = (*a3 - 66) & 7;
              v708 = (a2 + ((*a3 + 190) >> 3));
              if (v707 > 1)
              {
                v709 = (v708[2] << 16) | (v708[1] << 8) | *v708;
              }

              else
              {
                v709 = *v708;
              }

              v710 = v706 | (((v709 >> v707) & 0x7FFF) << 16);
              *(result + 40) = v710;
              v711 = (*a3 - 51) & 7;
              v712 = (a2 + ((*a3 + 205) >> 3));
              if (v711 > 1)
              {
                v713 = (v712[2] << 16) | (v712[1] << 8) | *v712;
              }

              else
              {
                v713 = *v712;
              }

              v714 = v710 | (((v713 >> v711) & 0x7FFF) << 32);
              *(result + 40) = v714;
              v715 = (*a3 - 36) & 7;
              v716 = (a2 + ((*a3 + 220) >> 3));
              if (v715 > 1)
              {
                v717 = (v716[2] << 16) | (v716[1] << 8) | *v716;
              }

              else
              {
                v717 = *v716;
              }

              *(result + 40) = v714 | (((v717 >> v715) & 0x7FFF) << 48);
              v718 = (*a3 - 21) & 7;
              v719 = (a2 + ((*a3 + 235) >> 3));
              if (v718 > 1)
              {
                v720 = (v719[2] << 16) | (v719[1] << 8) | *v719;
              }

              else
              {
                v720 = *v719;
              }

              v721 = *(result + 48) | (v720 >> v718) & 0x7FFF;
              *(result + 48) = v721;
              v722 = (*a3 - 6) & 7;
              v723 = (a2 + ((*a3 + 250) >> 3));
              if (v722 > 1)
              {
                v724 = (v723[2] << 16) | (v723[1] << 8) | *v723;
              }

              else
              {
                v724 = *v723;
              }

              v725 = v721 | (((v724 >> v722) & 0x7FFF) << 16);
              *(result + 48) = v725;
              v726 = *a3 + 265;
              v727 = v726 & 7;
              v728 = (a2 + (v726 >> 3));
              if (v727 > 1)
              {
                v729 = (v728[2] << 16) | (v728[1] << 8) | *v728;
              }

              else
              {
                v729 = *v728;
              }

              v730 = v725 | (((v729 >> v727) & 0x7FFF) << 32);
              *(result + 48) = v730;
              v731 = *a3 & 7;
              v732 = (a2 + ((*a3 + 280) >> 3));
              if (v731 > 1)
              {
                v733 = (v732[2] << 16) | (v732[1] << 8) | *v732;
              }

              else
              {
                v733 = *v732;
              }

              *(result + 48) = v730 | (((v733 >> v731) & 0x7FFF) << 48);
              v734 = *a3 + 295;
              v735 = v734 & 7;
              v736 = (a2 + (v734 >> 3));
              if (v735 > 1)
              {
                v737 = (v736[2] << 16) | (v736[1] << 8) | *v736;
              }

              else
              {
                v737 = *v736;
              }

              v738 = *(result + 56) | (v737 >> v735) & 0x7FFF;
              *(result + 56) = v738;
              v739 = *a3 + 310;
              v740 = v739 & 7;
              v741 = (a2 + (v739 >> 3));
              if (v740 > 1)
              {
                v742 = (v741[2] << 16) | (v741[1] << 8) | *v741;
              }

              else
              {
                v742 = *v741;
              }

              v743 = v738 | (((v742 >> v740) & 0x7FFF) << 16);
              *(result + 56) = v743;
              v744 = *a3 + 325;
              v745 = v744 & 7;
              v746 = (a2 + (v744 >> 3));
              if (v745 > 1)
              {
                v747 = (v746[2] << 16) | (v746[1] << 8) | *v746;
              }

              else
              {
                v747 = *v746;
              }

              v748 = v743 | (((v747 >> v745) & 0x7FFF) << 32);
              *(result + 56) = v748;
              v749 = *a3 + 340;
              v750 = v749 & 7;
              v751 = (a2 + (v749 >> 3));
              if (v750 > 1)
              {
                v752 = (v751[2] << 16) | (v751[1] << 8) | *v751;
              }

              else
              {
                v752 = *v751;
              }

              *(result + 56) = v748 | (((v752 >> v750) & 0x7FFF) << 48);
              v753 = *a3 + 355;
              v754 = v753 & 7;
              v755 = (a2 + (v753 >> 3));
              if (v754 > 1)
              {
                v756 = (v755[2] << 16) | (v755[1] << 8) | *v755;
              }

              else
              {
                v756 = *v755;
              }

              v757 = *(result + 64) | (v756 >> v754) & 0x7FFF;
              *(result + 64) = v757;
              v758 = *a3 + 370;
              v759 = v758 & 7;
              v760 = (a2 + (v758 >> 3));
              if (v759 > 1)
              {
                v761 = (v760[2] << 16) | (v760[1] << 8) | *v760;
              }

              else
              {
                v761 = *v760;
              }

              v762 = v757 | (((v761 >> v759) & 0x7FFF) << 16);
              *(result + 64) = v762;
              v763 = (*a3 - 127) & 7;
              v764 = (a2 + ((*a3 + 385) >> 3));
              if (v763 > 1)
              {
                v765 = (v764[2] << 16) | (v764[1] << 8) | *v764;
              }

              else
              {
                v765 = *v764;
              }

              v766 = v762 | (((v765 >> v763) & 0x7FFF) << 32);
              *(result + 64) = v766;
              v767 = *a3 & 7;
              v768 = (a2 + ((*a3 + 400) >> 3));
              if (v767 > 1)
              {
                v769 = (v768[2] << 16) | (v768[1] << 8) | *v768;
              }

              else
              {
                v769 = *v768;
              }

              *(result + 64) = v766 | (((v769 >> v767) & 0x7FFF) << 48);
              v770 = (*a3 - 97) & 7;
              v771 = (a2 + ((*a3 + 415) >> 3));
              if (v770 > 1)
              {
                v772 = (v771[2] << 16) | (v771[1] << 8) | *v771;
              }

              else
              {
                v772 = *v771;
              }

              v773 = *(result + 72) | (v772 >> v770) & 0x7FFF;
              *(result + 72) = v773;
              v774 = (*a3 - 82) & 7;
              v775 = (a2 + ((*a3 + 430) >> 3));
              if (v774 > 1)
              {
                v776 = (v775[2] << 16) | (v775[1] << 8) | *v775;
              }

              else
              {
                v776 = *v775;
              }

              v777 = v773 | (((v776 >> v774) & 0x7FFF) << 16);
              *(result + 72) = v777;
              v778 = (*a3 - 67) & 7;
              v779 = (a2 + ((*a3 + 445) >> 3));
              if (v778 > 1)
              {
                v780 = (v779[2] << 16) | (v779[1] << 8) | *v779;
              }

              else
              {
                v780 = *v779;
              }

              v781 = v777 | (((v780 >> v778) & 0x7FFF) << 32);
              *(result + 72) = v781;
              v782 = (*a3 - 52) & 7;
              v783 = (a2 + ((*a3 + 460) >> 3));
              if (v782 > 1)
              {
                v784 = (v783[2] << 16) | (v783[1] << 8) | *v783;
              }

              else
              {
                v784 = *v783;
              }

              *(result + 72) = v781 | (((v784 >> v782) & 0x7FFF) << 48);
              v785 = (*a3 - 37) & 7;
              v786 = (a2 + ((*a3 + 475) >> 3));
              if (v785 > 1)
              {
                v787 = (v786[2] << 16) | (v786[1] << 8) | *v786;
              }

              else
              {
                v787 = *v786;
              }

              *(result + 80) |= (v787 >> v785) & 0x7FFF;
              v25 = 490;
              break;
            case 3u:
              *(result + 8) = 3;
              v423 = *(result + 16) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 16) = v423;
              v424 = *a3 + 9;
              v425 = (a2 + (v424 >> 3));
              v426 = v424 & 7;
              if (v426)
              {
                v427 = (((v425[2] << 16) | (v425[1] << 8) | *v425) >> v426);
              }

              else
              {
                v427 = *v425;
              }

              v1131 = v423 | (v427 << 16);
              *(result + 16) = v1131;
              v1132 = *a3 + 25;
              v1133 = (a2 + (v1132 >> 3));
              v1134 = v1132 & 7;
              if (v1134)
              {
                v1135 = (((v1133[2] << 16) | (v1133[1] << 8) | *v1133) >> v1134);
              }

              else
              {
                v1135 = *v1133;
              }

              v1136 = v1131 | (v1135 << 32);
              *(result + 16) = v1136;
              v1137 = *a3 + 41;
              v1138 = (a2 + (v1137 >> 3));
              v1139 = v1137 & 7;
              if (v1139)
              {
                v1140 = (((v1138[2] << 16) | (v1138[1] << 8) | *v1138) >> v1139);
              }

              else
              {
                v1140 = *v1138;
              }

              *(result + 16) = v1136 | (v1140 << 48);
              v1141 = *a3 + 57;
              v1142 = (a2 + (v1141 >> 3));
              v1143 = v1141 & 7;
              if (v1143)
              {
                v1144 = (((v1142[2] << 16) | (v1142[1] << 8) | *v1142) >> v1143);
              }

              else
              {
                v1144 = *v1142;
              }

              v1145 = *(result + 24) | v1144;
              *(result + 24) = v1145;
              v1146 = *a3 + 73;
              v1147 = (a2 + (v1146 >> 3));
              v1148 = v1146 & 7;
              if (v1148)
              {
                v1149 = (((v1147[2] << 16) | (v1147[1] << 8) | *v1147) >> v1148);
              }

              else
              {
                v1149 = *v1147;
              }

              v1150 = v1145 | (v1149 << 16);
              *(result + 24) = v1150;
              v1151 = *a3 + 89;
              v1152 = v1151 & 7;
              v1153 = (a2 + (v1151 >> 3));
              if (v1152 > 1)
              {
                v1154 = (v1153[2] << 16) | (v1153[1] << 8) | *v1153;
              }

              else
              {
                v1154 = *v1153;
              }

              v1155 = v1150 | (((v1154 >> v1152) & 0x7FFF) << 32);
              *(result + 24) = v1155;
              v1156 = (a2 + ((*a3 + 104) >> 3));
              v1157 = *a3 & 7;
              if (v1157)
              {
                v1158 = (((v1156[2] << 16) | (v1156[1] << 8) | *v1156) >> v1157);
              }

              else
              {
                v1158 = *v1156;
              }

              *(result + 24) = v1155 | (v1158 << 48);
              v1159 = (a2 + ((*a3 + 120) >> 3));
              v1160 = *a3 & 7;
              if (v1160)
              {
                v1161 = (((v1159[2] << 16) | (v1159[1] << 8) | *v1159) >> v1160);
              }

              else
              {
                v1161 = *v1159;
              }

              v1162 = *(result + 32) | v1161;
              *(result + 32) = v1162;
              v1163 = (a2 + ((*a3 + 136) >> 3));
              v1164 = *a3 & 7;
              if (v1164)
              {
                v1165 = (((v1163[2] << 16) | (v1163[1] << 8) | *v1163) >> v1164);
              }

              else
              {
                v1165 = *v1163;
              }

              v1166 = v1162 | (v1165 << 16);
              *(result + 32) = v1166;
              v1167 = (a2 + ((*a3 + 152) >> 3));
              v1168 = *a3 & 7;
              if (v1168)
              {
                v1169 = (((v1167[2] << 16) | (v1167[1] << 8) | *v1167) >> v1168);
              }

              else
              {
                v1169 = *v1167;
              }

              v1170 = v1166 | (v1169 << 32);
              *(result + 32) = v1170;
              v1171 = (a2 + ((*a3 + 168) >> 3));
              v1172 = *a3 & 7;
              if (v1172)
              {
                v1173 = (((v1171[2] << 16) | (v1171[1] << 8) | *v1171) >> v1172);
              }

              else
              {
                v1173 = *v1171;
              }

              *(result + 32) = v1170 | (v1173 << 48);
              v1174 = *a3 & 7;
              v1175 = (a2 + ((*a3 + 184) >> 3));
              if (v1174 > 1)
              {
                v1176 = (v1175[2] << 16) | (v1175[1] << 8) | *v1175;
              }

              else
              {
                v1176 = *v1175;
              }

              *(result + 40) |= (v1176 >> v1174) & 0x7FFF;
              v25 = 199;
              break;
            case 4u:
              *(result + 8) = 4;
              v252 = *(result + 16) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 16) = v252;
              v253 = *a3 + 9;
              v254 = v253 & 7;
              v255 = (a2 + (v253 >> 3));
              if (v254 == 7)
              {
                v256 = *v255 >> 7;
              }

              else
              {
                v256 = ((v255[2] << 16) | (v255[1] << 8) | *v255) >> v254;
              }

              v474 = v252 | (2 * (v256 & 0x3FFFFu));
              *(result + 16) = v474;
              v475 = *a3 + 27;
              v476 = v475 & 7;
              v477 = (a2 + (v475 >> 3));
              if (v476 == 7)
              {
                v478 = *v477 >> 7;
              }

              else
              {
                v478 = ((v477[2] << 16) | (v477[1] << 8) | *v477) >> v476;
              }

              *(result + 16) = v474 | ((v478 & 0x3FFFF) << 32);
              v479 = *a3 + 45;
              v480 = v479 & 7;
              v481 = (a2 + (v479 >> 3));
              if (v480 == 7)
              {
                v482 = *v481 >> 7;
              }

              else
              {
                v482 = ((v481[2] << 16) | (v481[1] << 8) | *v481) >> v480;
              }

              v483 = *(result + 24) | v482 & 0x3FFFF;
              *(result + 24) = v483;
              v484 = *a3 + 63;
              v485 = v484 & 7;
              v486 = (a2 + (v484 >> 3));
              if (v485 == 7)
              {
                v487 = *v486 >> 7;
              }

              else
              {
                v487 = ((v486[2] << 16) | (v486[1] << 8) | *v486) >> v485;
              }

              *(result + 24) = v483 | ((v487 & 0x3FFFF) << 32);
              v488 = *a3 + 81;
              v489 = v488 & 7;
              v490 = (a2 + (v488 >> 3));
              if (v489 == 7)
              {
                v491 = *v490 >> 7;
              }

              else
              {
                v491 = ((v490[2] << 16) | (v490[1] << 8) | *v490) >> v489;
              }

              v492 = *(result + 32) | v491 & 0x3FFFF;
              *(result + 32) = v492;
              v493 = *a3 + 99;
              v494 = v493 & 7;
              v495 = (a2 + (v493 >> 3));
              if (v494 == 7)
              {
                v496 = *v495 >> 7;
              }

              else
              {
                v496 = ((v495[2] << 16) | (v495[1] << 8) | *v495) >> v494;
              }

              *(result + 32) = v492 | ((v496 & 0x3FFFF) << 32);
              v497 = *a3 + 117;
              v498 = v497 & 7;
              v499 = (a2 + (v497 >> 3));
              if (v498 > 4)
              {
                v500 = *v499;
              }

              else
              {
                v500 = (v499[2] << 16) | (v499[1] << 8) | *v499;
              }

              v501 = *(result + 40) | (v500 >> v498) & 0xFFFFF;
              *(result + 40) = v501;
              v502 = (*a3 - 119) & 7;
              v503 = (a2 + ((*a3 + 137) >> 3));
              if (v502 > 4)
              {
                v504 = *v503;
              }

              else
              {
                v504 = (v503[2] << 16) | (v503[1] << 8) | *v503;
              }

              *(result + 40) = v501 | (((v504 >> v502) & 0xFFFFF) << 32);
              v505 = (*a3 - 99) & 7;
              v506 = (a2 + ((*a3 + 157) >> 3));
              if (v505 > 4)
              {
                v507 = *v506;
              }

              else
              {
                v507 = (v506[2] << 16) | (v506[1] << 8) | *v506;
              }

              v508 = *(result + 48) | (v507 >> v505) & 0xFFFFF;
              *(result + 48) = v508;
              v509 = (a2 + ((*a3 + 177) >> 3));
              if (((*a3 - 79) & 7) != 0)
              {
                v510 = (((v509[2] << 16) | (v509[1] << 8) | *v509) >> ((*a3 - 79) & 7));
              }

              else
              {
                v510 = *v509;
              }

              v1109 = v508 | (v510 << 32);
              *(result + 48) = v1109;
              v1110 = (a2 + ((*a3 + 193) >> 3));
              if (((*a3 - 63) & 7) != 0)
              {
                v1111 = (((v1110[2] << 16) | (v1110[1] << 8) | *v1110) >> ((*a3 - 63) & 7));
              }

              else
              {
                v1111 = *v1110;
              }

              *(result + 48) = v1109 | (v1111 << 48);
              v25 = 209;
              break;
            case 5u:
              *(result + 8) = 5;
              v436 = *(result + 16) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 16) = v436;
              v437 = *a3 + 9;
              v438 = v437 & 7;
              v439 = (a2 + (v437 >> 3));
              if (v438 > 5)
              {
                v440 = *v439;
              }

              else
              {
                v440 = (v439[2] << 16) | (v439[1] << 8) | *v439;
              }

              v993 = v436 | (2 * ((v440 >> v438) & 0x7FFFF));
              *(result + 16) = v993;
              v994 = *a3 + 28;
              *(result + 16) = v993 | (((((*(a2 + (v994 >> 3) + 2) << 16) | (*(a2 + (v994 >> 3) + 1) << 8) | *(a2 + (v994 >> 3))) >> (v994 & 7)) & 0x1FFFF) << 32);
              v995 = *a3 + 45;
              v996 = v995 & 7;
              v997 = (a2 + (v995 >> 3));
              if (v996 > 4)
              {
                v998 = *v997;
              }

              else
              {
                v998 = (v997[2] << 16) | (v997[1] << 8) | *v997;
              }

              v999 = *(result + 24) | (v998 >> v996) & 0xFFFFF;
              *(result + 24) = v999;
              v1000 = *a3 + 65;
              v1001 = v1000 & 7;
              v1002 = (a2 + (v1000 >> 3));
              if (v1001 > 4)
              {
                v1003 = *v1002;
              }

              else
              {
                v1003 = (v1002[2] << 16) | (v1002[1] << 8) | *v1002;
              }

              *(result + 24) = v999 | (((v1003 >> v1001) & 0xFFFFF) << 32);
              v25 = 85;
              break;
            case 6u:
              *(result + 8) = 6;
              v444 = *(result + 16) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 16) = v444;
              v445 = *a3 + 9;
              v446 = v445 & 7;
              v447 = (a2 + (v445 >> 3));
              if (v446 > 5)
              {
                v448 = *v447;
              }

              else
              {
                v448 = (v447[2] << 16) | (v447[1] << 8) | *v447;
              }

              v1040 = v444 | (2 * ((v448 >> v446) & 0x7FFFF));
              *(result + 16) = v1040;
              v1041 = *a3 + 28;
              v1042 = v1041 & 7;
              v1043 = (a2 + (v1041 >> 3));
              if (v1042 > 5)
              {
                v1044 = *v1043;
              }

              else
              {
                v1044 = (v1043[2] << 16) | (v1043[1] << 8) | *v1043;
              }

              *(result + 16) = v1040 | (((v1044 >> v1042) & 0x7FFFF) << 32);
              v1045 = *a3 + 47;
              v1046 = v1045 & 7;
              v1047 = (a2 + (v1045 >> 3));
              if (v1046 > 5)
              {
                v1048 = *v1047;
              }

              else
              {
                v1048 = (v1047[2] << 16) | (v1047[1] << 8) | *v1047;
              }

              v1049 = *(result + 24) | (v1048 >> v1046) & 0x7FFFF;
              *(result + 24) = v1049;
              v1050 = *a3 + 66;
              v1051 = v1050 & 7;
              v1052 = (a2 + (v1050 >> 3));
              if (v1051 > 5)
              {
                v1053 = *v1052;
              }

              else
              {
                v1053 = (v1052[2] << 16) | (v1052[1] << 8) | *v1052;
              }

              *(result + 24) = v1049 | (((v1053 >> v1051) & 0x7FFFF) << 32);
              v1054 = *a3 + 85;
              v1055 = v1054 & 7;
              v1056 = (a2 + (v1054 >> 3));
              if (v1055 > 5)
              {
                v1057 = *v1056;
              }

              else
              {
                v1057 = (v1056[2] << 16) | (v1056[1] << 8) | *v1056;
              }

              v1058 = *(result + 32) | (v1057 >> v1055) & 0x7FFFF;
              *(result + 32) = v1058;
              v1059 = *a3 & 7;
              v1060 = (a2 + ((*a3 + 104) >> 3));
              if (v1059 > 5)
              {
                v1061 = *v1060;
              }

              else
              {
                v1061 = (v1060[2] << 16) | (v1060[1] << 8) | *v1060;
              }

              *(result + 32) = v1058 | (((v1061 >> v1059) & 0x7FFFF) << 32);
              v1062 = *a3 + 123;
              v1063 = v1062 & 7;
              v1064 = (a2 + (v1062 >> 3));
              if (v1063 > 5)
              {
                v1065 = *v1064;
              }

              else
              {
                v1065 = (v1064[2] << 16) | (v1064[1] << 8) | *v1064;
              }

              v1066 = *(result + 40) | (v1065 >> v1063) & 0x7FFFF;
              *(result + 40) = v1066;
              v1067 = (*a3 - 114) & 7;
              v1068 = (a2 + ((*a3 + 142) >> 3));
              if (v1067 > 5)
              {
                v1069 = *v1068;
              }

              else
              {
                v1069 = (v1068[2] << 16) | (v1068[1] << 8) | *v1068;
              }

              *(result + 40) = v1066 | (((v1069 >> v1067) & 0x7FFFF) << 32);
              v1070 = (*a3 - 95) & 7;
              v1071 = (a2 + ((*a3 + 161) >> 3));
              if (v1070 > 5)
              {
                v1072 = *v1071;
              }

              else
              {
                v1072 = (v1071[2] << 16) | (v1071[1] << 8) | *v1071;
              }

              v1073 = *(result + 48) | (v1072 >> v1070) & 0x7FFFF;
              *(result + 48) = v1073;
              v1074 = (*a3 - 76) & 7;
              v1075 = (a2 + ((*a3 + 180) >> 3));
              if (v1074 > 5)
              {
                v1076 = *v1075;
              }

              else
              {
                v1076 = (v1075[2] << 16) | (v1075[1] << 8) | *v1075;
              }

              *(result + 48) = v1073 | (((v1076 >> v1074) & 0x7FFFF) << 32);
              v1077 = (*a3 - 57) & 7;
              v1078 = (a2 + ((*a3 + 199) >> 3));
              if (v1077 > 5)
              {
                v1079 = *v1078;
              }

              else
              {
                v1079 = (v1078[2] << 16) | (v1078[1] << 8) | *v1078;
              }

              v1080 = *(result + 56) | (v1079 >> v1077) & 0x7FFFF;
              *(result + 56) = v1080;
              v1081 = (*a3 - 38) & 7;
              v1082 = (a2 + ((*a3 + 218) >> 3));
              if (v1081 > 5)
              {
                v1083 = *v1082;
              }

              else
              {
                v1083 = (v1082[2] << 16) | (v1082[1] << 8) | *v1082;
              }

              *(result + 56) = v1080 | (((v1083 >> v1081) & 0x7FFFF) << 32);
              v1084 = (*a3 - 19) & 7;
              v1085 = (a2 + ((*a3 + 237) >> 3));
              if (v1084 > 5)
              {
                v1086 = *v1085;
              }

              else
              {
                v1086 = (v1085[2] << 16) | (v1085[1] << 8) | *v1085;
              }

              v1087 = *(result + 64) | (v1086 >> v1084) & 0x7FFFF;
              *(result + 64) = v1087;
              v1088 = *a3 & 7;
              v1089 = (a2 + ((*a3 + 256) >> 3));
              if (v1088 > 5)
              {
                v1090 = *v1089;
              }

              else
              {
                v1090 = (v1089[2] << 16) | (v1089[1] << 8) | *v1089;
              }

              *(result + 64) = v1087 | (((v1090 >> v1088) & 0x7FFFF) << 32);
              v1091 = *a3 + 275;
              v1092 = v1091 & 7;
              v1093 = (a2 + (v1091 >> 3));
              if (v1092 > 5)
              {
                v1094 = *v1093;
              }

              else
              {
                v1094 = (v1093[2] << 16) | (v1093[1] << 8) | *v1093;
              }

              v1095 = *(result + 72) | (v1094 >> v1092) & 0x7FFFF;
              *(result + 72) = v1095;
              v1096 = *a3 + 294;
              v1097 = v1096 & 7;
              v1098 = (a2 + (v1096 >> 3));
              if (v1097 > 5)
              {
                v1099 = *v1098;
              }

              else
              {
                v1099 = (v1098[2] << 16) | (v1098[1] << 8) | *v1098;
              }

              *(result + 72) = v1095 | (((v1099 >> v1097) & 0x7FFFF) << 32);
              v1100 = *a3 + 313;
              v1101 = v1100 & 7;
              v1102 = (a2 + (v1100 >> 3));
              if (v1101 > 5)
              {
                v1103 = *v1102;
              }

              else
              {
                v1103 = (v1102[2] << 16) | (v1102[1] << 8) | *v1102;
              }

              v1104 = *(result + 80) | (v1103 >> v1101) & 0x7FFFF;
              *(result + 80) = v1104;
              v1105 = *a3 + 332;
              v1106 = v1105 & 7;
              v1107 = (a2 + (v1105 >> 3));
              if (v1106 > 5)
              {
                v1108 = *v1107;
              }

              else
              {
                v1108 = (v1107[2] << 16) | (v1107[1] << 8) | *v1107;
              }

              *(result + 80) = v1104 | (((v1108 >> v1106) & 0x7FFFF) << 32);
              v25 = 351;
              break;
            case 7u:
              *(result + 8) = 7;
              v428 = *(result + 16) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 16) = v428;
              v429 = *a3 + 9;
              v430 = v429 & 7;
              v431 = (a2 + (v429 >> 3));
              if (v430 > 1)
              {
                v432 = (v431[2] << 16) | (v431[1] << 8) | *v431;
              }

              else
              {
                v432 = *v431;
              }

              v829 = v428 | (2 * ((v432 >> v430) & 0x7FFF));
              *(result + 16) = v829;
              v830 = *a3 & 7;
              v831 = (a2 + ((*a3 + 24) >> 3));
              if (v830 > 1)
              {
                v832 = (v831[2] << 16) | (v831[1] << 8) | *v831;
              }

              else
              {
                v832 = *v831;
              }

              v833 = v829 | (((v832 >> v830) & 0x7FFF) << 16);
              *(result + 16) = v833;
              v834 = *a3 + 39;
              v835 = v834 & 7;
              v836 = (a2 + (v834 >> 3));
              if (v835 > 1)
              {
                v837 = (v836[2] << 16) | (v836[1] << 8) | *v836;
              }

              else
              {
                v837 = *v836;
              }

              v838 = v833 | (((v837 >> v835) & 0x7FFF) << 32);
              *(result + 16) = v838;
              v839 = *a3 + 54;
              v840 = v839 & 7;
              v841 = (a2 + (v839 >> 3));
              if (v840 > 1)
              {
                v842 = (v841[2] << 16) | (v841[1] << 8) | *v841;
              }

              else
              {
                v842 = *v841;
              }

              *(result + 16) = v838 | (((v842 >> v840) & 0x7FFF) << 48);
              v843 = *a3 + 69;
              v844 = v843 & 7;
              v845 = (a2 + (v843 >> 3));
              if (v844 > 1)
              {
                v846 = (v845[2] << 16) | (v845[1] << 8) | *v845;
              }

              else
              {
                v846 = *v845;
              }

              v847 = *(result + 24) | (v846 >> v844) & 0x7FFF;
              *(result + 24) = v847;
              v848 = *a3 + 84;
              v849 = v848 & 7;
              v850 = (a2 + (v848 >> 3));
              if (v849 > 1)
              {
                v851 = (v850[2] << 16) | (v850[1] << 8) | *v850;
              }

              else
              {
                v851 = *v850;
              }

              v852 = v847 | (((v851 >> v849) & 0x7FFF) << 16);
              *(result + 24) = v852;
              v853 = *a3 + 99;
              v854 = v853 & 7;
              v855 = (a2 + (v853 >> 3));
              if (v854 > 1)
              {
                v856 = (v855[2] << 16) | (v855[1] << 8) | *v855;
              }

              else
              {
                v856 = *v855;
              }

              v857 = v852 | (((v856 >> v854) & 0x7FFF) << 32);
              *(result + 24) = v857;
              v858 = *a3 + 114;
              v859 = v858 & 7;
              v860 = (a2 + (v858 >> 3));
              if (v859 > 1)
              {
                v861 = (v860[2] << 16) | (v860[1] << 8) | *v860;
              }

              else
              {
                v861 = *v860;
              }

              *(result + 24) = v857 | (((v861 >> v859) & 0x7FFF) << 48);
              v862 = (*a3 - 127) & 7;
              v863 = (a2 + ((*a3 + 129) >> 3));
              if (v862 > 1)
              {
                v864 = (v863[2] << 16) | (v863[1] << 8) | *v863;
              }

              else
              {
                v864 = *v863;
              }

              v865 = *(result + 32) | (v864 >> v862) & 0x7FFF;
              *(result + 32) = v865;
              v866 = *a3 & 7;
              v867 = (a2 + ((*a3 + 144) >> 3));
              if (v866 > 5)
              {
                v868 = *v867;
              }

              else
              {
                v868 = (v867[2] << 16) | (v867[1] << 8) | *v867;
              }

              *(result + 32) = v865 | (((v868 >> v866) & 0x7FFFF) << 32);
              v869 = (*a3 - 93) & 7;
              v870 = (a2 + ((*a3 + 163) >> 3));
              if (v869 > 5)
              {
                v871 = *v870;
              }

              else
              {
                v871 = (v870[2] << 16) | (v870[1] << 8) | *v870;
              }

              v872 = *(result + 40) | (v871 >> v869) & 0x7FFFF;
              *(result + 40) = v872;
              v873 = (*a3 - 74) & 7;
              v874 = (a2 + ((*a3 + 182) >> 3));
              if (v873 > 5)
              {
                v875 = *v874;
              }

              else
              {
                v875 = (v874[2] << 16) | (v874[1] << 8) | *v874;
              }

              *(result + 40) = v872 | (((v875 >> v873) & 0x7FFFF) << 32);
              v876 = (*a3 - 55) & 7;
              v877 = (a2 + ((*a3 + 201) >> 3));
              if (v876 > 5)
              {
                v878 = *v877;
              }

              else
              {
                v878 = (v877[2] << 16) | (v877[1] << 8) | *v877;
              }

              v879 = *(result + 48) | (v878 >> v876) & 0x7FFFF;
              *(result + 48) = v879;
              v880 = (*a3 - 36) & 7;
              v881 = (a2 + ((*a3 + 220) >> 3));
              if (v880 > 5)
              {
                v882 = *v881;
              }

              else
              {
                v882 = (v881[2] << 16) | (v881[1] << 8) | *v881;
              }

              *(result + 48) = v879 | (((v882 >> v880) & 0x7FFFF) << 32);
              v883 = (*a3 - 17) & 7;
              v884 = (a2 + ((*a3 + 239) >> 3));
              if (v883 > 5)
              {
                v885 = *v884;
              }

              else
              {
                v885 = (v884[2] << 16) | (v884[1] << 8) | *v884;
              }

              v886 = *(result + 56) | (v885 >> v883) & 0x7FFFF;
              *(result + 56) = v886;
              v887 = *a3 + 258;
              v888 = v887 & 7;
              v889 = (a2 + (v887 >> 3));
              if (v888 > 5)
              {
                v890 = *v889;
              }

              else
              {
                v890 = (v889[2] << 16) | (v889[1] << 8) | *v889;
              }

              *(result + 56) = v886 | (((v890 >> v888) & 0x7FFFF) << 32);
              v891 = *a3 + 277;
              v892 = v891 & 7;
              v893 = (a2 + (v891 >> 3));
              if (v892 > 5)
              {
                v894 = *v893;
              }

              else
              {
                v894 = (v893[2] << 16) | (v893[1] << 8) | *v893;
              }

              *(result + 64) |= (v894 >> v892) & 0x7FFFF;
              v25 = 296;
              break;
            case 8u:
              *(result + 8) = 8;
              v452 = (a2 + ((*a3 + 8) >> 3));
              v453 = *a3 & 7;
              if (v453)
              {
                v454 = (((v452[2] << 16) | (v452[1] << 8) | *v452) >> v453);
              }

              else
              {
                v454 = *v452;
              }

              v1206 = *(result + 16) | v454;
              *(result + 16) = v1206;
              v1207 = (a2 + ((*a3 + 24) >> 3));
              v1208 = *a3 & 7;
              if (v1208)
              {
                v1209 = (((v1207[2] << 16) | (v1207[1] << 8) | *v1207) >> v1208);
              }

              else
              {
                v1209 = *v1207;
              }

              v1210 = v1206 | (v1209 << 16);
              *(result + 16) = v1210;
              *(result + 16) = v1210 | (((((*(a2 + ((*a3 + 40) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 40) >> 3) + 1) << 8) | *(a2 + ((*a3 + 40) >> 3))) >> (*a3 & 7)) & 0x1FFFF) << 32);
              v1211 = (((*(a2 + ((*a3 + 57) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 57) >> 3) + 1) << 8) | *(a2 + ((*a3 + 57) >> 3))) >> ((*a3 + 57) & 7)) & 0x1FFFF | *(result + 24);
              *(result + 24) = v1211;
              v1212 = *a3 + 74;
              v1213 = v1212 & 7;
              v1214 = (a2 + (v1212 >> 3));
              if (v1213 > 1)
              {
                v1215 = (v1214[2] << 16) | (v1214[1] << 8) | *v1214;
              }

              else
              {
                v1215 = *v1214;
              }

              *(result + 24) = v1211 | (v1215 >> v1213 << 17);
              v25 = 89;
              break;
            case 9u:
              *(result + 8) = 9;
              v260 = *(result + 16) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 16) = v260;
              v261 = *a3 + 9;
              v262 = v261 & 7;
              v263 = (a2 + (v261 >> 3));
              if (v262 > 3)
              {
                v264 = (v263[2] << 16) | (v263[1] << 8) | *v263;
              }

              else
              {
                v264 = *v263;
              }

              v521 = v260 | (2 * ((v264 >> v262) & 0x1FFF));
              *(result + 16) = v521;
              v522 = *a3 + 22;
              v523 = v522 & 7;
              v524 = (a2 + (v522 >> 3));
              if (v523 > 3)
              {
                v525 = (v524[2] << 16) | (v524[1] << 8) | *v524;
              }

              else
              {
                v525 = *v524;
              }

              v526 = v521 | (((v525 >> v523) & 0x1FFF) << 16);
              *(result + 16) = v526;
              v527 = *a3 + 35;
              v528 = v527 & 7;
              v529 = (a2 + (v527 >> 3));
              if (v528 > 3)
              {
                v530 = (v529[2] << 16) | (v529[1] << 8) | *v529;
              }

              else
              {
                v530 = *v529;
              }

              v531 = v526 | (((v530 >> v528) & 0x1FFF) << 32);
              *(result + 16) = v531;
              v532 = *a3 & 7;
              v533 = (a2 + ((*a3 + 48) >> 3));
              if (v532 > 3)
              {
                v534 = (v533[2] << 16) | (v533[1] << 8) | *v533;
              }

              else
              {
                v534 = *v533;
              }

              *(result + 16) = v531 | (((v534 >> v532) & 0x1FFF) << 48);
              v535 = *a3 + 61;
              v536 = v535 & 7;
              v537 = (a2 + (v535 >> 3));
              if (v536 > 3)
              {
                v538 = (v537[2] << 16) | (v537[1] << 8) | *v537;
              }

              else
              {
                v538 = *v537;
              }

              v539 = *(result + 24) | (v538 >> v536) & 0x1FFF;
              *(result + 24) = v539;
              v540 = *a3 + 74;
              v541 = v540 & 7;
              v542 = (a2 + (v540 >> 3));
              if (v541 > 3)
              {
                v543 = (v542[2] << 16) | (v542[1] << 8) | *v542;
              }

              else
              {
                v543 = *v542;
              }

              v544 = v539 | (((v543 >> v541) & 0x1FFF) << 16);
              *(result + 24) = v544;
              v545 = *a3 + 87;
              v546 = v545 & 7;
              v547 = (a2 + (v545 >> 3));
              if (v546 > 3)
              {
                v548 = (v547[2] << 16) | (v547[1] << 8) | *v547;
              }

              else
              {
                v548 = *v547;
              }

              v549 = v544 | (((v548 >> v546) & 0x1FFF) << 32);
              *(result + 24) = v549;
              v550 = *a3 + 100;
              v551 = v550 & 7;
              v552 = (a2 + (v550 >> 3));
              if (v551 > 3)
              {
                v553 = (v552[2] << 16) | (v552[1] << 8) | *v552;
              }

              else
              {
                v553 = *v552;
              }

              *(result + 24) = v549 | (((v553 >> v551) & 0x1FFF) << 48);
              v554 = *a3 + 113;
              v555 = v554 & 7;
              v556 = (a2 + (v554 >> 3));
              if (v555 > 3)
              {
                v557 = (v556[2] << 16) | (v556[1] << 8) | *v556;
              }

              else
              {
                v557 = *v556;
              }

              v558 = *(result + 32) | (v557 >> v555) & 0x1FFF;
              *(result + 32) = v558;
              v559 = *a3 + 126;
              v560 = v559 & 7;
              v561 = (a2 + (v559 >> 3));
              if (v560 > 3)
              {
                v562 = (v561[2] << 16) | (v561[1] << 8) | *v561;
              }

              else
              {
                v562 = *v561;
              }

              v563 = v558 | (((v562 >> v560) & 0x1FFF) << 16);
              *(result + 32) = v563;
              v564 = (*a3 - 117) & 7;
              v565 = (a2 + ((*a3 + 139) >> 3));
              if (v564 > 3)
              {
                v566 = (v565[2] << 16) | (v565[1] << 8) | *v565;
              }

              else
              {
                v566 = *v565;
              }

              v567 = v563 | (((v566 >> v564) & 0x1FFF) << 32);
              *(result + 32) = v567;
              v568 = *a3 & 7;
              v569 = (a2 + ((*a3 + 152) >> 3));
              if (v568 > 3)
              {
                v570 = (v569[2] << 16) | (v569[1] << 8) | *v569;
              }

              else
              {
                v570 = *v569;
              }

              *(result + 32) = v567 | (((v570 >> v568) & 0x1FFF) << 48);
              v571 = (*a3 - 91) & 7;
              v572 = (a2 + ((*a3 + 165) >> 3));
              if (v571 > 3)
              {
                v573 = (v572[2] << 16) | (v572[1] << 8) | *v572;
              }

              else
              {
                v573 = *v572;
              }

              v574 = *(result + 40) | (v573 >> v571) & 0x1FFF;
              *(result + 40) = v574;
              v575 = (*a3 - 78) & 7;
              v576 = (a2 + ((*a3 + 178) >> 3));
              if (v575 > 3)
              {
                v577 = (v576[2] << 16) | (v576[1] << 8) | *v576;
              }

              else
              {
                v577 = *v576;
              }

              v578 = v574 | (((v577 >> v575) & 0x1FFF) << 16);
              *(result + 40) = v578;
              v579 = (*a3 - 65) & 7;
              v580 = (a2 + ((*a3 + 191) >> 3));
              if (v579 > 3)
              {
                v581 = (v580[2] << 16) | (v580[1] << 8) | *v580;
              }

              else
              {
                v581 = *v580;
              }

              v582 = v578 | (((v581 >> v579) & 0x1FFF) << 32);
              *(result + 40) = v582;
              v583 = (*a3 - 52) & 7;
              v584 = (a2 + ((*a3 + 204) >> 3));
              if (v583 > 3)
              {
                v585 = (v584[2] << 16) | (v584[1] << 8) | *v584;
              }

              else
              {
                v585 = *v584;
              }

              *(result + 40) = v582 | (((v585 >> v583) & 0x1FFF) << 48);
              v586 = (*a3 - 39) & 7;
              v587 = (a2 + ((*a3 + 217) >> 3));
              if (v586 > 3)
              {
                v588 = (v587[2] << 16) | (v587[1] << 8) | *v587;
              }

              else
              {
                v588 = *v587;
              }

              v589 = *(result + 48) | (v588 >> v586) & 0x1FFF;
              *(result + 48) = v589;
              v590 = (*a3 - 26) & 7;
              v591 = (a2 + ((*a3 + 230) >> 3));
              if (v590 > 3)
              {
                v592 = (v591[2] << 16) | (v591[1] << 8) | *v591;
              }

              else
              {
                v592 = *v591;
              }

              v593 = v589 | (((v592 >> v590) & 0x1FFF) << 16);
              *(result + 48) = v593;
              v594 = (*a3 - 13) & 7;
              v595 = (a2 + ((*a3 + 243) >> 3));
              if (v594 > 3)
              {
                v596 = (v595[2] << 16) | (v595[1] << 8) | *v595;
              }

              else
              {
                v596 = *v595;
              }

              v597 = v593 | (((v596 >> v594) & 0x1FFF) << 32);
              *(result + 48) = v597;
              v598 = *a3 & 7;
              v599 = (a2 + ((*a3 + 256) >> 3));
              if (v598 > 3)
              {
                v600 = (v599[2] << 16) | (v599[1] << 8) | *v599;
              }

              else
              {
                v600 = *v599;
              }

              *(result + 48) = v597 | (((v600 >> v598) & 0x1FFF) << 48);
              v601 = *a3 + 269;
              v602 = v601 & 7;
              v603 = (a2 + (v601 >> 3));
              if (v602 > 3)
              {
                v604 = (v603[2] << 16) | (v603[1] << 8) | *v603;
              }

              else
              {
                v604 = *v603;
              }

              v605 = *(result + 56) | (v604 >> v602) & 0x1FFF;
              *(result + 56) = v605;
              v606 = *a3 + 282;
              v607 = v606 & 7;
              v608 = (a2 + (v606 >> 3));
              if (v607 > 3)
              {
                v609 = (v608[2] << 16) | (v608[1] << 8) | *v608;
              }

              else
              {
                v609 = *v608;
              }

              v610 = v605 | (((v609 >> v607) & 0x1FFF) << 16);
              *(result + 56) = v610;
              v611 = *a3 + 295;
              v612 = v611 & 7;
              v613 = (a2 + (v611 >> 3));
              if (v612 > 3)
              {
                v614 = (v613[2] << 16) | (v613[1] << 8) | *v613;
              }

              else
              {
                v614 = *v613;
              }

              v615 = v610 | (((v614 >> v612) & 0x1FFF) << 32);
              *(result + 56) = v615;
              v616 = *a3 + 308;
              v617 = v616 & 7;
              v618 = (a2 + (v616 >> 3));
              if (v617 > 3)
              {
                v619 = (v618[2] << 16) | (v618[1] << 8) | *v618;
              }

              else
              {
                v619 = *v618;
              }

              *(result + 56) = v615 | (((v619 >> v617) & 0x1FFF) << 48);
              v620 = *a3 + 321;
              v621 = v620 & 7;
              v622 = (a2 + (v620 >> 3));
              if (v621 > 3)
              {
                v623 = (v622[2] << 16) | (v622[1] << 8) | *v622;
              }

              else
              {
                v623 = *v622;
              }

              v624 = *(result + 64) | (v623 >> v621) & 0x1FFF;
              *(result + 64) = v624;
              v625 = *a3 + 334;
              v626 = v625 & 7;
              v627 = (a2 + (v625 >> 3));
              if (v626 > 3)
              {
                v628 = (v627[2] << 16) | (v627[1] << 8) | *v627;
              }

              else
              {
                v628 = *v627;
              }

              v629 = v624 | (((v628 >> v626) & 0x1FFF) << 16);
              *(result + 64) = v629;
              v630 = *a3 + 347;
              v631 = v630 & 7;
              v632 = (a2 + (v630 >> 3));
              if (v631 > 3)
              {
                v633 = (v632[2] << 16) | (v632[1] << 8) | *v632;
              }

              else
              {
                v633 = *v632;
              }

              v634 = v629 | (((v633 >> v631) & 0x1FFF) << 32);
              *(result + 64) = v634;
              v635 = *a3 & 7;
              v636 = (a2 + ((*a3 + 360) >> 3));
              if (v635 > 3)
              {
                v637 = (v636[2] << 16) | (v636[1] << 8) | *v636;
              }

              else
              {
                v637 = *v636;
              }

              *(result + 64) = v634 | (((v637 >> v635) & 0x1FFF) << 48);
              v638 = *a3 + 373;
              v639 = v638 & 7;
              v640 = (a2 + (v638 >> 3));
              if (v639 > 3)
              {
                v641 = (v640[2] << 16) | (v640[1] << 8) | *v640;
              }

              else
              {
                v641 = *v640;
              }

              v642 = *(result + 72) | (v641 >> v639) & 0x1FFF;
              *(result + 72) = v642;
              v643 = (*a3 - 126) & 7;
              v644 = (a2 + ((*a3 + 386) >> 3));
              if (v643 > 3)
              {
                v645 = (v644[2] << 16) | (v644[1] << 8) | *v644;
              }

              else
              {
                v645 = *v644;
              }

              v646 = v642 | (((v645 >> v643) & 0x1FFF) << 16);
              *(result + 72) = v646;
              v647 = (*a3 - 113) & 7;
              v648 = (a2 + ((*a3 + 399) >> 3));
              if (v647 > 3)
              {
                v649 = (v648[2] << 16) | (v648[1] << 8) | *v648;
              }

              else
              {
                v649 = *v648;
              }

              v650 = v646 | (((v649 >> v647) & 0x1FFF) << 32);
              *(result + 72) = v650;
              v651 = (*a3 - 100) & 7;
              v652 = (a2 + ((*a3 + 412) >> 3));
              if (v651 > 3)
              {
                v653 = (v652[2] << 16) | (v652[1] << 8) | *v652;
              }

              else
              {
                v653 = *v652;
              }

              *(result + 72) = v650 | (((v653 >> v651) & 0x1FFF) << 48);
              v25 = 425;
              break;
            case 0xAu:
              *(result + 8) = 10;
              v449 = (a2 + ((*a3 + 8) >> 3));
              v450 = *a3 & 7;
              if (v450)
              {
                v451 = (*v449 | (*(v449 + 1) << 8)) >> v450;
              }

              else
              {
                LODWORD(v451) = *v449;
              }

              *(result + 16) |= v451;
              v1184 = ((*(a2 + ((*a3 + 40) >> 3)) | (*(a2 + ((*a3 + 40) >> 3) + 1) << 8)) >> (*a3 & 7)) & 0x1FFFFFFFFLL | *(result + 24);
              *(result + 24) = v1184;
              v1185 = *a3 + 73;
              v1186 = v1185 & 7;
              v1187 = (a2 + (v1185 >> 3));
              if (v1186 > 1)
              {
                v1188 = (v1187[2] << 16) | (v1187[1] << 8) | *v1187;
              }

              else
              {
                v1188 = *v1187;
              }

              v1189 = v1184 | (((v1188 >> v1186) & 0x7FFF) << 33);
              *(result + 24) = v1189;
              v1190 = *a3 & 7;
              v1191 = (a2 + ((*a3 + 88) >> 3));
              if (v1190 > 1)
              {
                v1192 = (v1191[2] << 16) | (v1191[1] << 8) | *v1191;
              }

              else
              {
                v1192 = *v1191;
              }

              *(result + 24) = v1189 | (((v1192 >> v1190) & 0x7FFF) << 48);
              v1193 = *a3 + 103;
              v1194 = v1193 & 7;
              v1195 = (a2 + (v1193 >> 3));
              if (v1194 > 1)
              {
                v1196 = (v1195[2] << 16) | (v1195[1] << 8) | *v1195;
              }

              else
              {
                v1196 = *v1195;
              }

              v1197 = *(result + 32) | (v1196 >> v1194) & 0x7FFF;
              *(result + 32) = v1197;
              v1198 = *a3 + 118;
              v1199 = v1198 & 7;
              v1200 = (a2 + (v1198 >> 3));
              if (v1199 > 1)
              {
                v1201 = (v1200[2] << 16) | (v1200[1] << 8) | *v1200;
              }

              else
              {
                v1201 = *v1200;
              }

              v1202 = v1197 | (((v1201 >> v1199) & 0x7FFF) << 16);
              *(result + 32) = v1202;
              v1203 = (*a3 - 123) & 7;
              v1204 = (a2 + ((*a3 + 133) >> 3));
              if (v1203 > 1)
              {
                v1205 = (v1204[2] << 16) | (v1204[1] << 8) | *v1204;
              }

              else
              {
                v1205 = *v1204;
              }

              *(result + 32) = v1202 | (((v1205 >> v1203) & 0x7FFF) << 32);
              v25 = 148;
              break;
            case 0xBu:
              *(result + 8) = 11;
              v249 = *a3 & 7;
              v250 = (a2 + ((*a3 + 8) >> 3));
              if (v249 > 1)
              {
                v251 = (v250[2] << 16) | (v250[1] << 8) | *v250;
              }

              else
              {
                v251 = *v250;
              }

              v469 = *(result + 16) | (v251 >> v249) & 0x7FFF;
              *(result + 16) = v469;
              v470 = *a3 + 23;
              v471 = v470 & 7;
              v472 = (a2 + (v470 >> 3));
              if (v471 > 1)
              {
                v473 = (v472[2] << 16) | (v472[1] << 8) | *v472;
              }

              else
              {
                v473 = *v472;
              }

              *(result + 16) = v469 | (((v473 >> v471) & 0x7FFF) << 16);
              v25 = 38;
              break;
            case 0xCu:
              *(result + 8) = 12;
              v257 = *a3 & 7;
              v258 = (a2 + ((*a3 + 8) >> 3));
              if (v257 > 1)
              {
                v259 = (v258[2] << 16) | (v258[1] << 8) | *v258;
              }

              else
              {
                v259 = *v258;
              }

              v511 = *(result + 16) | (v259 >> v257) & 0x7FFF;
              *(result + 16) = v511;
              v512 = *a3 + 23;
              v513 = v512 & 7;
              v514 = (a2 + (v512 >> 3));
              if (v513 > 1)
              {
                v515 = (v514[2] << 16) | (v514[1] << 8) | *v514;
              }

              else
              {
                v515 = *v514;
              }

              v516 = v511 | (((v515 >> v513) & 0x7FFF) << 16);
              *(result + 16) = v516;
              v517 = *a3 + 38;
              v518 = (a2 + (v517 >> 3));
              v519 = v517 & 7;
              if (v519)
              {
                v520 = (((v518[2] << 16) | (v518[1] << 8) | *v518) >> v519);
              }

              else
              {
                v520 = *v518;
              }

              *(result + 16) = v516 | (v520 << 32);
              v1112 = *a3 + 54;
              v1113 = v1112 & 7;
              v1114 = (a2 + (v1112 >> 3));
              if (v1113 == 7)
              {
                v1115 = *v1114 >> 7;
              }

              else
              {
                v1115 = ((v1114[2] << 16) | (v1114[1] << 8) | *v1114) >> v1113;
              }

              v1116 = *(result + 24) | v1115 & 0x3FFFF;
              *(result + 24) = v1116;
              v1117 = *a3 & 7;
              v1118 = (a2 + ((*a3 + 72) >> 3));
              if (v1117 == 7)
              {
                v1119 = *v1118 >> 7;
              }

              else
              {
                v1119 = ((v1118[2] << 16) | (v1118[1] << 8) | *v1118) >> v1117;
              }

              *(result + 24) = v1116 | ((v1119 & 0x3FFFF) << 32);
              v1120 = *a3 + 90;
              v1121 = *(result + 32) | (((*(a2 + (v1120 >> 3) + 2) << 16) | (*(a2 + (v1120 >> 3) + 1) << 8) | *(a2 + (v1120 >> 3))) >> (v1120 & 7)) & 0x1FFFF;
              *(result + 32) = v1121;
              v1122 = *a3 + 107;
              v1123 = (a2 + (v1122 >> 3));
              v1124 = v1122 & 7;
              if (v1124)
              {
                v1125 = (((v1123[2] << 16) | (v1123[1] << 8) | *v1123) >> v1124);
              }

              else
              {
                v1125 = *v1123;
              }

              v1126 = v1121 | (v1125 << 32);
              *(result + 32) = v1126;
              v1127 = *a3 + 123;
              v1128 = (a2 + (v1127 >> 3));
              v1129 = v1127 & 7;
              if (v1129)
              {
                v1130 = (((v1128[2] << 16) | (v1128[1] << 8) | *v1128) >> v1129);
              }

              else
              {
                v1130 = *v1128;
              }

              *(result + 32) = v1126 | (v1130 << 48);
              v25 = 139;
              break;
            case 0xDu:
              *(result + 8) = 13;
              v441 = *a3 & 7;
              v442 = (a2 + ((*a3 + 8) >> 3));
              if (v441 > 1)
              {
                v443 = (v442[2] << 16) | (v442[1] << 8) | *v442;
              }

              else
              {
                v443 = *v442;
              }

              v1004 = *(result + 16) | (v443 >> v441) & 0x7FFF;
              *(result + 16) = v1004;
              v1005 = *a3 + 23;
              v1006 = v1005 & 7;
              v1007 = (a2 + (v1005 >> 3));
              if (v1006 > 1)
              {
                v1008 = (v1007[2] << 16) | (v1007[1] << 8) | *v1007;
              }

              else
              {
                v1008 = *v1007;
              }

              v1009 = v1004 | (((v1008 >> v1006) & 0x7FFF) << 16);
              *(result + 16) = v1009;
              v1010 = *a3 + 38;
              v1011 = v1010 & 7;
              v1012 = (a2 + (v1010 >> 3));
              if (v1011 > 1)
              {
                v1013 = (v1012[2] << 16) | (v1012[1] << 8) | *v1012;
              }

              else
              {
                v1013 = *v1012;
              }

              v1014 = v1009 | (((v1013 >> v1011) & 0x7FFF) << 32);
              *(result + 16) = v1014;
              v1015 = *a3 + 53;
              v1016 = v1015 & 7;
              v1017 = (a2 + (v1015 >> 3));
              if (v1016 > 1)
              {
                v1018 = (v1017[2] << 16) | (v1017[1] << 8) | *v1017;
              }

              else
              {
                v1018 = *v1017;
              }

              *(result + 16) = v1014 | (((v1018 >> v1016) & 0x7FFF) << 48);
              v1019 = *(result + 32);
              v1020 = *(result + 24) | (((*(a2 + ((*a3 + 68) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 68) >> 3) + 1) << 8) | *(a2 + ((*a3 + 68) >> 3))) >> ((*a3 + 68) & 7)) & 0x1FFFF;
              *(result + 24) = v1020;
              v1021 = *a3 + 85;
              *(result + 24) = v1020 | (((((*(a2 + (v1021 >> 3) + 2) << 16) | (*(a2 + (v1021 >> 3) + 1) << 8) | *(a2 + (v1021 >> 3))) >> (v1021 & 7)) & 0x1FFFF) << 32);
              v1022 = v1019 | (((*(a2 + ((*a3 + 102) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 102) >> 3) + 1) << 8) | *(a2 + ((*a3 + 102) >> 3))) >> ((*a3 + 102) & 7)) & 0x1FFFF;
              *(result + 32) = v1022;
              v1023 = *a3 + 119;
              v1024 = v1023 & 7;
              v1025 = (a2 + (v1023 >> 3));
              if (v1024 > 1)
              {
                v1026 = (v1025[2] << 16) | (v1025[1] << 8) | *v1025;
              }

              else
              {
                v1026 = *v1025;
              }

              v1027 = v1022 | (((v1026 >> v1024) & 0x7FFF) << 17);
              *(result + 32) = v1027;
              v1028 = (*a3 - 122) & 7;
              v1029 = (a2 + ((*a3 + 134) >> 3));
              if (v1028 > 2)
              {
                v1030 = (v1029[2] << 16) | (v1029[1] << 8) | *v1029;
              }

              else
              {
                v1030 = *v1029;
              }

              v1031 = v1027 | (((v1030 >> v1028) & 0x3FFF) << 32);
              *(result + 32) = v1031;
              v1032 = (*a3 - 108) & 7;
              v1033 = (a2 + ((*a3 + 148) >> 3));
              if (v1032 > 2)
              {
                v1034 = (v1033[2] << 16) | (v1033[1] << 8) | *v1033;
              }

              else
              {
                v1034 = *v1033;
              }

              *(result + 32) = v1031 | (((v1034 >> v1032) & 0x3FFF) << 48);
              v1035 = *(result + 48);
              v1036 = *(result + 40) | (((*(a2 + ((*a3 + 162) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 162) >> 3) + 1) << 8) | *(a2 + ((*a3 + 162) >> 3))) >> ((*a3 - 94) & 7)) & 0x1FFFF;
              *(result + 40) = v1036;
              *(result + 40) = v1036 | (((((*(a2 + ((*a3 + 179) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 179) >> 3) + 1) << 8) | *(a2 + ((*a3 + 179) >> 3))) >> ((*a3 - 77) & 7)) & 0x1FFFF) << 32);
              v1037 = v1035 | (((*(a2 + ((*a3 + 196) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 196) >> 3) + 1) << 8) | *(a2 + ((*a3 + 196) >> 3))) >> ((*a3 - 60) & 7)) & 0x1FFFF;
              *(result + 48) = v1037;
              v1038 = (a2 + ((*a3 + 213) >> 3));
              if (((*a3 - 43) & 7) != 0)
              {
                v1039 = (((v1038[2] << 16) | (v1038[1] << 8) | *v1038) >> ((*a3 - 43) & 7));
              }

              else
              {
                v1039 = *v1038;
              }

              v1181 = v1037 | (v1039 << 32);
              *(result + 48) = v1181;
              v1182 = (a2 + ((*a3 + 229) >> 3));
              if (((*a3 - 27) & 7) != 0)
              {
                v1183 = (((v1182[2] << 16) | (v1182[1] << 8) | *v1182) >> ((*a3 - 27) & 7));
              }

              else
              {
                v1183 = *v1182;
              }

              *(result + 48) = v1181 | (v1183 << 48);
              v25 = 245;
              break;
            case 0xEu:
              *(result + 8) = 14;
              v246 = *a3 & 7;
              v247 = (a2 + ((*a3 + 8) >> 3));
              if (v246 > 2)
              {
                v248 = *v247;
              }

              else
              {
                v248 = (v247[2] << 16) | (v247[1] << 8) | *v247;
              }

              v455 = *(result + 16) | (v248 >> v246) & 0x3FFFFF;
              *(result + 16) = v455;
              v456 = *a3 + 30;
              v457 = v456 & 7;
              v458 = (a2 + (v456 >> 3));
              if (v457 > 2)
              {
                v459 = *v458;
              }

              else
              {
                v459 = (v458[2] << 16) | (v458[1] << 8) | *v458;
              }

              *(result + 16) = v455 | (((v459 >> v457) & 0x3FFFFF) << 32);
              v460 = *a3 + 52;
              v461 = v460 & 7;
              v462 = (a2 + (v460 >> 3));
              if (v461 > 5)
              {
                v463 = *v462;
              }

              else
              {
                v463 = (v462[2] << 16) | (v462[1] << 8) | *v462;
              }

              v464 = *(result + 24) | (v463 >> v461) & 0x7FFFF;
              *(result + 24) = v464;
              v465 = *a3 + 71;
              v466 = v465 & 7;
              v467 = (a2 + (v465 >> 3));
              if (v466 > 2)
              {
                v468 = *v467;
              }

              else
              {
                v468 = (v467[2] << 16) | (v467[1] << 8) | *v467;
              }

              *(result + 24) = v464 | (((v468 >> v466) & 0x3FFFFF) << 32);
              v25 = 93;
              break;
            case 0xFu:
              *(result + 8) = 15;
              v268 = *a3 & 7;
              v269 = (a2 + ((*a3 + 8) >> 3));
              if (v268 > 2)
              {
                v270 = (v269[2] << 16) | (v269[1] << 8) | *v269;
              }

              else
              {
                v270 = *v269;
              }

              v788 = *(result + 16) | (v270 >> v268) & 0x3FFF;
              *(result + 16) = v788;
              v789 = *a3 + 22;
              v790 = v789 & 7;
              v791 = (a2 + (v789 >> 3));
              if (v790 > 2)
              {
                v792 = (v791[2] << 16) | (v791[1] << 8) | *v791;
              }

              else
              {
                v792 = *v791;
              }

              v793 = v788 | (((v792 >> v790) & 0x3FFF) << 16);
              *(result + 16) = v793;
              v794 = *a3 + 36;
              v795 = v794 & 7;
              v796 = (a2 + (v794 >> 3));
              if (v795 > 2)
              {
                v797 = (v796[2] << 16) | (v796[1] << 8) | *v796;
              }

              else
              {
                v797 = *v796;
              }

              v798 = v793 | (((v797 >> v795) & 0x3FFF) << 32);
              *(result + 16) = v798;
              v799 = *a3 + 50;
              v800 = v799 & 7;
              v801 = (a2 + (v799 >> 3));
              if (v800 > 2)
              {
                v802 = (v801[2] << 16) | (v801[1] << 8) | *v801;
              }

              else
              {
                v802 = *v801;
              }

              *(result + 16) = v798 | (((v802 >> v800) & 0x3FFF) << 48);
              v803 = *a3 & 7;
              v804 = (a2 + ((*a3 + 64) >> 3));
              if (v803 > 3)
              {
                v805 = (v804[2] << 16) | (v804[1] << 8) | *v804;
              }

              else
              {
                v805 = *v804;
              }

              v806 = *(result + 24) | (v805 >> v803) & 0x1FFF;
              *(result + 24) = v806;
              v807 = *a3 + 77;
              v808 = v807 & 7;
              v809 = (a2 + (v807 >> 3));
              if (v808 > 3)
              {
                v810 = (v809[2] << 16) | (v809[1] << 8) | *v809;
              }

              else
              {
                v810 = *v809;
              }

              v811 = v806 | (((v810 >> v808) & 0x1FFF) << 16);
              *(result + 24) = v811;
              v812 = *a3 + 90;
              v813 = v812 & 7;
              v814 = (a2 + (v812 >> 3));
              if (v813 > 3)
              {
                v815 = (v814[2] << 16) | (v814[1] << 8) | *v814;
              }

              else
              {
                v815 = *v814;
              }

              v816 = v811 | (((v815 >> v813) & 0x1FFF) << 32);
              *(result + 24) = v816;
              v817 = *a3 + 103;
              v818 = v817 & 7;
              v819 = (a2 + (v817 >> 3));
              if (v818 == 7)
              {
                v820 = *v819 >> 7;
              }

              else
              {
                v820 = ((v819[2] << 16) | (v819[1] << 8) | *v819) >> v818;
              }

              *(result + 24) = v816 | ((v820 & 0x3FFFF) << 45);
              v821 = *a3 + 121;
              v822 = v821 & 7;
              v823 = (a2 + (v821 >> 3));
              if (v822 == 7)
              {
                v824 = *v823 >> 7;
              }

              else
              {
                v824 = ((v823[2] << 16) | (v823[1] << 8) | *v823) >> v822;
              }

              v825 = *(result + 32) | v824 & 0x3FFFF;
              *(result + 32) = v825;
              v826 = (*a3 - 117) & 7;
              v827 = (a2 + ((*a3 + 139) >> 3));
              if (v826 == 7)
              {
                v828 = *v827 >> 7;
              }

              else
              {
                v828 = ((v827[2] << 16) | (v827[1] << 8) | *v827) >> v826;
              }

              *(result + 32) = v825 | ((v828 & 0x3FFFF) << 32);
              v25 = 157;
              break;
            default:
              *(result + 8) = 0;
              v86 = *a3 & 7;
              v87 = (a2 + ((*a3 + 8) >> 3));
              if (v86 == 7)
              {
                v88 = *v87 >> 7;
              }

              else
              {
                v88 = ((v87[2] << 16) | (v87[1] << 8) | *v87) >> v86;
              }

              v895 = *(result + 16) | v88 & 0x3FFFF;
              *(result + 16) = v895;
              v896 = *a3 + 26;
              v897 = v896 & 7;
              v898 = (a2 + (v896 >> 3));
              if (v897 == 7)
              {
                v899 = *v898 >> 7;
              }

              else
              {
                v899 = ((v898[2] << 16) | (v898[1] << 8) | *v898) >> v897;
              }

              v905 = v895 | ((v899 & 0x3FFFF) << 32);
              *(result + 16) = v905;
              v906 = *a3 + 44;
              v907 = v906 & 7;
              v908 = (a2 + (v906 >> 3));
              if (v907 > 2)
              {
                v909 = (v908[2] << 16) | (v908[1] << 8) | *v908;
              }

              else
              {
                v909 = *v908;
              }

              *(result + 16) = v905 | (((v909 >> v907) & 0x3FFF) << 50);
              v913 = *a3 + 58;
              v914 = v913 & 7;
              v915 = (a2 + (v913 >> 3));
              if (v914 > 3)
              {
                v916 = (v915[2] << 16) | (v915[1] << 8) | *v915;
              }

              else
              {
                v916 = *v915;
              }

              v922 = *(result + 24) | (v916 >> v914) & 0x1FFF;
              *(result + 24) = v922;
              v923 = *a3 + 71;
              v924 = v923 & 7;
              v925 = (a2 + (v923 >> 3));
              if (v924 > 2)
              {
                v926 = (v925[2] << 16) | (v925[1] << 8) | *v925;
              }

              else
              {
                v926 = *v925;
              }

              v930 = v922 | (((v926 >> v924) & 0x3FFF) << 16);
              *(result + 24) = v930;
              v931 = *a3 + 85;
              v932 = v931 & 7;
              v933 = (a2 + (v931 >> 3));
              if (v932 > 2)
              {
                v934 = (v933[2] << 16) | (v933[1] << 8) | *v933;
              }

              else
              {
                v934 = *v933;
              }

              v940 = v930 | (((v934 >> v932) & 0x3FFF) << 32);
              *(result + 24) = v940;
              v941 = *a3 + 99;
              v942 = v941 & 7;
              v943 = (a2 + (v941 >> 3));
              if (v942 > 2)
              {
                v944 = (v943[2] << 16) | (v943[1] << 8) | *v943;
              }

              else
              {
                v944 = *v943;
              }

              *(result + 24) = v940 | (((v944 >> v942) & 0x3FFF) << 48);
              v948 = *a3 + 113;
              v949 = v948 & 7;
              v950 = (a2 + (v948 >> 3));
              if (v949 > 2)
              {
                v951 = (v950[2] << 16) | (v950[1] << 8) | *v950;
              }

              else
              {
                v951 = *v950;
              }

              v956 = *(result + 32) | (v951 >> v949) & 0x3FFF;
              *(result + 32) = v956;
              v957 = *a3 + 127;
              v958 = v957 & 7;
              v959 = (a2 + (v957 >> 3));
              if (v958 > 2)
              {
                v960 = (v959[2] << 16) | (v959[1] << 8) | *v959;
              }

              else
              {
                v960 = *v959;
              }

              v964 = v956 | (((v960 >> v958) & 0x3FFF) << 16);
              *(result + 32) = v964;
              v965 = (*a3 - 115) & 7;
              v966 = (a2 + ((*a3 + 141) >> 3));
              if (v965 > 2)
              {
                v967 = (v966[2] << 16) | (v966[1] << 8) | *v966;
              }

              else
              {
                v967 = *v966;
              }

              v968 = v964 | (((v967 >> v965) & 0x3FFF) << 32);
              *(result + 32) = v968;
              *(result + 32) = v968 | (((*(a2 + ((*a3 + 155) >> 3)) >> ((*a3 - 101) & 7)) & 0x1FF) << 48);
              v969 = *(result + 40) | (*(a2 + ((*a3 + 164) >> 3)) >> ((*a3 - 92) & 7)) & 0x1FF;
              *(result + 40) = v969;
              v970 = (*a3 - 83) & 7;
              v971 = (a2 + ((*a3 + 173) >> 3));
              if (v970 > 2)
              {
                v972 = (v971[2] << 16) | (v971[1] << 8) | *v971;
              }

              else
              {
                v972 = *v971;
              }

              v973 = v969 | (((v972 >> v970) & 0x3FFF) << 16);
              *(result + 40) = v973;
              v974 = (*a3 - 69) & 7;
              v975 = (a2 + ((*a3 + 187) >> 3));
              if (v974 > 2)
              {
                v976 = (v975[2] << 16) | (v975[1] << 8) | *v975;
              }

              else
              {
                v976 = *v975;
              }

              v977 = v973 | (((v976 >> v974) & 0x3FFF) << 32);
              *(result + 40) = v977;
              v978 = (*a3 - 55) & 7;
              v979 = (a2 + ((*a3 + 201) >> 3));
              if (v978 > 2)
              {
                v980 = (v979[2] << 16) | (v979[1] << 8) | *v979;
              }

              else
              {
                v980 = *v979;
              }

              *(result + 40) = v977 | (((v980 >> v978) & 0x3FFF) << 48);
              v981 = (*a3 - 41) & 7;
              v982 = (a2 + ((*a3 + 215) >> 3));
              if (v981 > 2)
              {
                v983 = (v982[2] << 16) | (v982[1] << 8) | *v982;
              }

              else
              {
                v983 = *v982;
              }

              v984 = *(result + 48) | (v983 >> v981) & 0x3FFF;
              *(result + 48) = v984;
              v985 = (*a3 - 27) & 7;
              v986 = (a2 + ((*a3 + 229) >> 3));
              if (v985 > 2)
              {
                v987 = (v986[2] << 16) | (v986[1] << 8) | *v986;
              }

              else
              {
                v987 = *v986;
              }

              v988 = v984 | (((v987 >> v985) & 0x3FFF) << 16);
              *(result + 48) = v988;
              v989 = (*a3 - 13) & 7;
              v990 = (a2 + ((*a3 + 243) >> 3));
              if (v989 > 2)
              {
                v991 = (v990[2] << 16) | (v990[1] << 8) | *v990;
              }

              else
              {
                v991 = *v990;
              }

              v992 = v988 | (((v991 >> v989) & 0x3FFF) << 32);
              *(result + 48) = v992;
              *(result + 48) = v992 | (((*(a2 + ((*a3 + 257) >> 3)) >> ((*a3 + 1) & 7)) & 0x1FF) << 48);
              *(result + 56) |= (*(a2 + ((*a3 + 266) >> 3)) >> ((*a3 + 10) & 7)) & 0x1FF;
              v25 = 275;
              break;
          }
        }

        goto LABEL_432;
      }

      if (v15)
      {
        *result = 8;
        v51 = v4 + 4;
        v52 = (a2 + ((v4 + 4) >> 3));
        v53 = v51 & 7;
        if (v53)
        {
          LODWORD(v52) = *v52 >> v53;
        }

        else
        {
          LOBYTE(v52) = *v52;
        }

        *(result + 8) |= v52;
        v102 = *a3 + 12;
        v103 = v102 & 7;
        v104 = (a2 + (v102 >> 3));
        if (v103 == 7)
        {
          v105 = ((*v104 | (v104[1] << 8)) >> 7) & 3;
        }

        else
        {
          v105 = (*v104 >> v103) & 3;
        }

        if (v105 > 1)
        {
          if (v105 == 2)
          {
            *(result + 12) = 3;
            v110 = *(result + 16);
            if ((*(a2 + ((*a3 + 14) >> 3)) >> ((*a3 + 14) & 7)))
            {
              *(result + 16) = v110 | 1;
              v111 = *a3 + 15;
              v112 = v111 & 7;
              v113 = (a2 + (v111 >> 3));
              if (v112 > 4)
              {
                v114 = *v113;
              }

              else
              {
                v114 = *v113;
              }

              *(result + 17) |= (v114 >> v112) & 0xF;
              v271 = *a3 + 19;
              v272 = v271 & 7;
              v273 = (a2 + (v271 >> 3));
              if (v272 > 4)
              {
                v274 = *v273;
              }

              else
              {
                v274 = *v273;
              }

              *(result + 25) |= (v274 >> v272) & 0xF;
              v25 = 23;
            }

            else
            {
              *(result + 16) = v110 & 0xFE;
              v195 = *a3 + 15;
              v196 = v195 & 7;
              v197 = (a2 + (v195 >> 3));
              if (v196 > 4)
              {
                v198 = *v197;
              }

              else
              {
                v198 = *v197;
              }

              *(result + 17) |= (v198 >> v196) & 0xF;
              v275 = *a3 + 19;
              v276 = v275 & 7;
              v277 = (a2 + (v275 >> 3));
              if (v276 > 4)
              {
                v278 = *v277;
              }

              else
              {
                v278 = *v277;
              }

              *(result + 25) |= (v278 >> v276) & 0xF;
              v296 = *a3 + 23;
              v297 = v296 & 7;
              v298 = (a2 + (v296 >> 3));
              if (v297 > 4)
              {
                v299 = *v298;
              }

              else
              {
                v299 = *v298;
              }

              *(result + 18) |= (v299 >> v297) & 0xF;
              v313 = *a3 + 27;
              v314 = v313 & 7;
              v315 = (a2 + (v313 >> 3));
              if (v314 > 4)
              {
                v316 = *v315;
              }

              else
              {
                v316 = *v315;
              }

              *(result + 26) |= (v316 >> v314) & 0xF;
              v327 = *a3 + 31;
              v328 = v327 & 7;
              v329 = (a2 + (v327 >> 3));
              if (v328 > 4)
              {
                v330 = *v329;
              }

              else
              {
                v330 = *v329;
              }

              *(result + 19) |= (v330 >> v328) & 0xF;
              v335 = *a3 + 35;
              v336 = v335 & 7;
              v337 = (a2 + (v335 >> 3));
              if (v336 > 4)
              {
                v338 = *v337;
              }

              else
              {
                v338 = *v337;
              }

              *(result + 27) |= (v338 >> v336) & 0xF;
              v343 = *a3 + 39;
              v344 = v343 & 7;
              v345 = (a2 + (v343 >> 3));
              if (v344 > 4)
              {
                v346 = *v345;
              }

              else
              {
                v346 = *v345;
              }

              *(result + 20) |= (v346 >> v344) & 0xF;
              v351 = *a3 + 43;
              v352 = v351 & 7;
              v353 = (a2 + (v351 >> 3));
              if (v352 > 4)
              {
                v354 = *v353;
              }

              else
              {
                v354 = *v353;
              }

              *(result + 28) |= (v354 >> v352) & 0xF;
              v359 = *a3 + 47;
              v360 = v359 & 7;
              v361 = (a2 + (v359 >> 3));
              if (v360 > 4)
              {
                v362 = *v361;
              }

              else
              {
                v362 = *v361;
              }

              *(result + 21) |= (v362 >> v360) & 0xF;
              v367 = *a3 + 51;
              v368 = v367 & 7;
              v369 = (a2 + (v367 >> 3));
              if (v368 > 4)
              {
                v370 = *v369;
              }

              else
              {
                v370 = *v369;
              }

              *(result + 29) |= (v370 >> v368) & 0xF;
              v375 = *a3 + 55;
              v376 = v375 & 7;
              v377 = (a2 + (v375 >> 3));
              if (v376 > 4)
              {
                v378 = *v377;
              }

              else
              {
                v378 = *v377;
              }

              *(result + 22) |= (v378 >> v376) & 0xF;
              v383 = *a3 + 59;
              v384 = v383 & 7;
              v385 = (a2 + (v383 >> 3));
              if (v384 > 4)
              {
                v386 = *v385;
              }

              else
              {
                v386 = *v385;
              }

              *(result + 30) |= (v386 >> v384) & 0xF;
              v391 = *a3 + 63;
              v392 = v391 & 7;
              v393 = (a2 + (v391 >> 3));
              if (v392 > 4)
              {
                v394 = *v393;
              }

              else
              {
                v394 = *v393;
              }

              *(result + 23) |= (v394 >> v392) & 0xF;
              v399 = *a3 + 67;
              v400 = v399 & 7;
              v401 = (a2 + (v399 >> 3));
              if (v400 > 4)
              {
                v402 = *v401;
              }

              else
              {
                v402 = *v401;
              }

              *(result + 31) |= (v402 >> v400) & 0xF;
              v407 = *a3 + 71;
              v408 = v407 & 7;
              v409 = (a2 + (v407 >> 3));
              if (v408 > 4)
              {
                v410 = *v409;
              }

              else
              {
                v410 = *v409;
              }

              *(result + 24) |= (v410 >> v408) & 0xF;
              v415 = *a3 + 75;
              v416 = v415 & 7;
              v417 = (a2 + (v415 >> 3));
              if (v416 > 4)
              {
                v418 = *v417;
              }

              else
              {
                v418 = *v417;
              }

              *(result + 32) |= (v418 >> v416) & 0xF;
              v25 = 79;
            }
          }

          else
          {
            *(result + 12) = 2;
            v140 = *a3 + 14;
            v141 = v140 & 7;
            v142 = (a2 + (v140 >> 3));
            if (v141 == 7)
            {
              v143 = (((v142[2] << 16) | (v142[1] << 8) | *v142) >> 7) & 0x3FF;
            }

            else
            {
              v143 = (*v142 >> v141) & 0x3FF;
            }

            v199 = *(result + 16) | v143;
            *(result + 16) = v199;
            v200 = *a3 & 7;
            v201 = (a2 + ((*a3 + 24) >> 3));
            if (v200 == 7)
            {
              v202 = (((v201[2] << 16) | (v201[1] << 8) | *v201) >> 7) & 0x3FF;
            }

            else
            {
              v202 = (*v201 >> v200) & 0x3FF;
            }

            *(result + 16) = v199 | (v202 << 16);
            v208 = *a3 + 34;
            v209 = v208 & 7;
            v210 = (a2 + (v208 >> 3));
            if (v209 > 5)
            {
              v211 = (v210[2] << 16) | (v210[1] << 8) | *v210;
            }

            else
            {
              v211 = *v210;
            }

            *(result + 20) |= (v211 >> v209) & 0x7FF;
            v216 = *(result + 22);
            if ((*(a2 + ((*a3 + 45) >> 3)) >> ((*a3 + 45) & 7)))
            {
              *(result + 22) = v216 | 1;
              v217 = *a3 + 46;
              v218 = v217 & 7;
              v219 = (a2 + (v217 >> 3));
              if (v218 > 4)
              {
                v220 = *v219;
              }

              else
              {
                v220 = *v219;
              }

              *(result + 23) |= (v220 >> v218) & 0xF;
              v283 = *a3 + 50;
              v284 = v283 & 7;
              v285 = (a2 + (v283 >> 3));
              if (v284 > 4)
              {
                v286 = *v285;
              }

              else
              {
                v286 = *v285;
              }

              *(result + 31) |= (v286 >> v284) & 0xF;
              v25 = 54;
            }

            else
            {
              *(result + 22) = v216 & 0xFE;
              v225 = *a3 + 46;
              v226 = v225 & 7;
              v227 = (a2 + (v225 >> 3));
              if (v226 > 4)
              {
                v228 = *v227;
              }

              else
              {
                v228 = *v227;
              }

              *(result + 23) |= (v228 >> v226) & 0xF;
              v287 = *a3 + 50;
              v288 = v287 & 7;
              v289 = (a2 + (v287 >> 3));
              if (v288 > 4)
              {
                v290 = *v289;
              }

              else
              {
                v290 = *v289;
              }

              *(result + 31) |= (v290 >> v288) & 0xF;
              v305 = *a3 + 54;
              v306 = v305 & 7;
              v307 = (a2 + (v305 >> 3));
              if (v306 > 4)
              {
                v308 = *v307;
              }

              else
              {
                v308 = *v307;
              }

              *(result + 24) |= (v308 >> v306) & 0xF;
              v320 = *a3 + 58;
              v321 = v320 & 7;
              v322 = (a2 + (v320 >> 3));
              if (v321 > 4)
              {
                v323 = *v322;
              }

              else
              {
                v323 = *v322;
              }

              *(result + 32) |= (v323 >> v321) & 0xF;
              v331 = *a3 + 62;
              v332 = v331 & 7;
              v333 = (a2 + (v331 >> 3));
              if (v332 > 4)
              {
                v334 = *v333;
              }

              else
              {
                v334 = *v333;
              }

              *(result + 25) |= (v334 >> v332) & 0xF;
              v339 = *a3 + 66;
              v340 = v339 & 7;
              v341 = (a2 + (v339 >> 3));
              if (v340 > 4)
              {
                v342 = *v341;
              }

              else
              {
                v342 = *v341;
              }

              *(result + 33) |= (v342 >> v340) & 0xF;
              v347 = *a3 + 70;
              v348 = v347 & 7;
              v349 = (a2 + (v347 >> 3));
              if (v348 > 4)
              {
                v350 = *v349;
              }

              else
              {
                v350 = *v349;
              }

              *(result + 26) |= (v350 >> v348) & 0xF;
              v355 = *a3 + 74;
              v356 = v355 & 7;
              v357 = (a2 + (v355 >> 3));
              if (v356 > 4)
              {
                v358 = *v357;
              }

              else
              {
                v358 = *v357;
              }

              *(result + 34) |= (v358 >> v356) & 0xF;
              v363 = *a3 + 78;
              v364 = v363 & 7;
              v365 = (a2 + (v363 >> 3));
              if (v364 > 4)
              {
                v366 = *v365;
              }

              else
              {
                v366 = *v365;
              }

              *(result + 27) |= (v366 >> v364) & 0xF;
              v371 = *a3 + 82;
              v372 = v371 & 7;
              v373 = (a2 + (v371 >> 3));
              if (v372 > 4)
              {
                v374 = *v373;
              }

              else
              {
                v374 = *v373;
              }

              *(result + 35) |= (v374 >> v372) & 0xF;
              v379 = *a3 + 86;
              v380 = v379 & 7;
              v381 = (a2 + (v379 >> 3));
              if (v380 > 4)
              {
                v382 = *v381;
              }

              else
              {
                v382 = *v381;
              }

              *(result + 28) |= (v382 >> v380) & 0xF;
              v387 = *a3 + 90;
              v388 = v387 & 7;
              v389 = (a2 + (v387 >> 3));
              if (v388 > 4)
              {
                v390 = *v389;
              }

              else
              {
                v390 = *v389;
              }

              *(result + 36) |= (v390 >> v388) & 0xF;
              v395 = *a3 + 94;
              v396 = v395 & 7;
              v397 = (a2 + (v395 >> 3));
              if (v396 > 4)
              {
                v398 = *v397;
              }

              else
              {
                v398 = *v397;
              }

              *(result + 29) |= (v398 >> v396) & 0xF;
              v403 = *a3 + 98;
              v404 = v403 & 7;
              v405 = (a2 + (v403 >> 3));
              if (v404 > 4)
              {
                v406 = *v405;
              }

              else
              {
                v406 = *v405;
              }

              *(result + 37) |= (v406 >> v404) & 0xF;
              v411 = *a3 + 102;
              v412 = v411 & 7;
              v413 = (a2 + (v411 >> 3));
              if (v412 > 4)
              {
                v414 = *v413;
              }

              else
              {
                v414 = *v413;
              }

              *(result + 30) |= (v414 >> v412) & 0xF;
              v419 = *a3 + 106;
              v420 = v419 & 7;
              v421 = (a2 + (v419 >> 3));
              if (v420 > 4)
              {
                v422 = *v421;
              }

              else
              {
                v422 = *v421;
              }

              *(result + 38) |= (v422 >> v420) & 0xF;
              v25 = 110;
            }
          }
        }

        else if (v105)
        {
          *(result + 12) = 0;
          v136 = *a3 + 14;
          v137 = (a2 + (v136 >> 3));
          v138 = v136 & 7;
          if (v138)
          {
            v139 = ((*v137 | (*(v137 + 1) << 8)) >> v138);
          }

          else
          {
            v139 = *v137;
          }

          v229 = *(result + 16) | v139;
          *(result + 16) = v229;
          v230 = *a3 + 46;
          v231 = (a2 + (v230 >> 3));
          v232 = v230 & 7;
          if (v232)
          {
            v233 = ((*v231 | (*(v231 + 1) << 8)) >> v232);
          }

          else
          {
            v233 = *v231;
          }

          *(result + 16) = v229 | (v233 << 32);
          v234 = *a3 + 78;
          v235 = (a2 + (v234 >> 3));
          v236 = v234 & 7;
          if (v236)
          {
            v237 = (*v235 | (*(v235 + 1) << 8)) >> v236;
          }

          else
          {
            LODWORD(v237) = *v235;
          }

          *(result + 24) |= v237;
          if ((*(a2 + ((*a3 + 110) >> 3)) >> ((*a3 + 110) & 7)))
          {
            *(result + 28) = 1;
            v238 = *a3 + 111;
            v239 = v238 & 7;
            v240 = (a2 + (v238 >> 3));
            if (v239 > 3)
            {
              v241 = *v240;
            }

            else
            {
              v241 = *v240;
            }

            v291 = *(result + 32) | (v241 >> v239) & 0x1F;
            *(result + 32) = v291;
            v292 = *a3 + 116;
            v293 = v292 & 7;
            v294 = (a2 + (v292 >> 3));
            if (v293 > 4)
            {
              v295 = (v294[2] << 16) | (v294[1] << 8) | *v294;
            }

            else
            {
              v295 = *v294;
            }

            v309 = v291 | (((v295 >> v293) & 0xFFF) << 16);
            *(result + 32) = v309;
            v310 = *a3 & 7;
            v311 = (a2 + ((*a3 + 128) >> 3));
            if (v310 > 4)
            {
              v312 = *v311;
            }

            else
            {
              v312 = *v311;
            }

            *(result + 32) = v309 | (v312 >> v310 << 28);
            v324 = (*a3 - 124) & 7;
            v325 = (a2 + ((*a3 + 132) >> 3));
            if (v324 > 4)
            {
              v326 = *v325;
            }

            else
            {
              v326 = *v325;
            }

            *(result + 36) |= (v326 >> v324) & 0xF;
            v25 = 136;
          }

          else
          {
            *(result + 28) = 0;
            v242 = *a3 + 111;
            v243 = v242 & 7;
            v244 = (a2 + (v242 >> 3));
            if (v243 > 3)
            {
              v245 = *v244;
            }

            else
            {
              v245 = *v244;
            }

            *(result + 32) |= (v245 >> v243) & 0x1F;
            v25 = 116;
          }
        }

        else
        {
          *(result + 12) = 1;
          v106 = *a3 + 14;
          v107 = v106 & 7;
          v108 = (a2 + (v106 >> 3));
          if (v107 > 4)
          {
            v109 = *v108;
          }

          else
          {
            v109 = *v108;
          }

          v190 = *(result + 16) | (v109 >> v107) & 0xF;
          *(result + 16) = v190;
          v191 = *a3 + 18;
          v192 = v191 & 7;
          v193 = (a2 + (v191 >> 3));
          if (v192 > 4)
          {
            v194 = *v193;
          }

          else
          {
            v194 = *v193;
          }

          v203 = (16 * ((v194 >> v192) & 0xF)) | v190;
          *(result + 16) = v203;
          v204 = *a3 + 22;
          v205 = v204 & 7;
          v206 = (a2 + (v204 >> 3));
          if (v205 > 4)
          {
            v207 = *v206;
          }

          else
          {
            v207 = *v206;
          }

          *(result + 16) = (((v207 >> v205) & 0xF) << 8) | v203;
          if ((*(a2 + ((*a3 + 26) >> 3)) >> ((*a3 + 26) & 7)))
          {
            *(result + 20) = 1;
            v212 = *a3 + 27;
            v213 = v212 & 7;
            v214 = (a2 + (v212 >> 3));
            if (v213 > 3)
            {
              v215 = *v214;
            }

            else
            {
              v215 = *v214;
            }

            v279 = *(result + 24) | (v215 >> v213) & 0x1F;
            *(result + 24) = v279;
            v280 = *a3 & 7;
            v281 = (a2 + ((*a3 + 32) >> 3));
            if (v280 > 4)
            {
              v282 = (v281[2] << 16) | (v281[1] << 8) | *v281;
            }

            else
            {
              v282 = *v281;
            }

            v300 = v279 | (((v282 >> v280) & 0xFFF) << 16);
            *(result + 24) = v300;
            v301 = *a3 + 44;
            v302 = v301 & 7;
            v303 = (a2 + (v301 >> 3));
            if (v302 > 4)
            {
              v304 = *v303;
            }

            else
            {
              v304 = *v303;
            }

            *(result + 24) = v300 | (v304 >> v302 << 28);
            v317 = *a3 & 7;
            v318 = (a2 + ((*a3 + 48) >> 3));
            if (v317 > 4)
            {
              v319 = *v318;
            }

            else
            {
              v319 = *v318;
            }

            *(result + 28) |= (v319 >> v317) & 0xF;
            v25 = 52;
          }

          else
          {
            *(result + 20) = 0;
            v221 = *a3 + 27;
            v222 = v221 & 7;
            v223 = (a2 + (v221 >> 3));
            if (v222 > 3)
            {
              v224 = *v223;
            }

            else
            {
              v224 = *v223;
            }

            *(result + 24) |= (v224 >> v222) & 0x1F;
            v25 = 32;
          }
        }

        goto LABEL_432;
      }

      *result = 7;
      v22 = v4 + 4;
      v23 = (a2 + ((v4 + 4) >> 3));
      v24 = v22 & 7;
      if (v24)
      {
        LODWORD(v23) = *v23 >> v24;
      }

      else
      {
        LOBYTE(v23) = *v23;
      }

      *(result + 8) |= v23;
      if ((*(a2 + ((*a3 + 12) >> 3)) >> ((*a3 + 12) & 7)))
      {
        *(result + 12) = 1;
        v89 = *a3 + 13;
        v90 = v89 & 7;
        v91 = (a2 + (v89 >> 3));
        if (v90 > 3)
        {
          v92 = *v91;
        }

        else
        {
          v92 = *v91;
        }

        v131 = *(result + 16) | (v92 >> v90) & 0x1F;
        *(result + 16) = v131;
        v132 = *a3 + 18;
        v133 = v132 & 7;
        v134 = (a2 + (v132 >> 3));
        if (v133 == 7)
        {
          v135 = (*(v134 + 3) << 24) | (v134[2] << 16);
        }

        else
        {
          v135 = *(v134 + 2) << 16;
        }

        *(result + 16) = ((((v135 | (v134[1] << 8) | *v134) >> v133) & 0x3FFFFFFFFFFLL) << 6) | v131;
        v25 = 60;
        goto LABEL_432;
      }

      *(result + 12) = 0;
      v93 = *a3 + 13;
      v94 = v93 & 7;
      v95 = (a2 + (v93 >> 3));
      if (v94 > 3)
      {
        v96 = *v95;
      }

      else
      {
        v96 = *v95;
      }

      *(result + 16) |= (v96 >> v94) & 0x1F;
      goto LABEL_67;
    }

    v19 = v12 & 7;
    v20 = (a2 + (v12 >> 3));
    if (v19 == 7)
    {
      v21 = ((*v20 | (v20[1] << 8)) >> 7) & 3;
    }

    else
    {
      v21 = (*v20 >> v19) & 3;
    }

    if (v21 <= 1)
    {
      v26 = v4 + 4;
      if (v21)
      {
        v57 = v26 & 7;
        v58 = (a2 + (v26 >> 3));
        if (v57 == 7)
        {
          v59 = ((*v58 | (v58[1] << 8)) >> 7) & 3;
        }

        else
        {
          v59 = (*v58 >> v57) & 3;
        }

        if (v59 == 1)
        {
          v85 = 14;
        }

        else
        {
          if (v59)
          {
            goto LABEL_92;
          }

          v85 = 13;
        }

        *result = v85;
        v123 = v4 + 6;
        v124 = (v4 + 6) & 7;
        v125 = (a2 + (v123 >> 3));
        if (v124 == 7)
        {
          v126 = *v125 >> 7;
        }

        else
        {
          v126 = *v125 >> v124;
        }

        *(result + 8) |= v126 & 3;
        v25 = 8;
        goto LABEL_432;
      }

      v27 = v26 & 7;
      v28 = (a2 + (v26 >> 3));
      if (v27 == 7)
      {
        v29 = ((*v28 | (v28[1] << 8)) >> 7) & 3;
      }

      else
      {
        v29 = (*v28 >> v27) & 3;
      }

      if (v29 == 1)
      {
        *result = 12;
        v115 = v4 + 6;
        v116 = (v4 + 6) & 7;
        v117 = (a2 + (v115 >> 3));
        if (v116 > 5)
        {
          v118 = *v117;
        }

        else
        {
          v118 = *v117;
        }

        *(result + 8) = (v118 >> v116) & 7;
        v157 = *(result + 12) & 0xFFFE | (*(a2 + ((*a3 + 9) >> 3)) >> ((*a3 + 9) & 7)) & 1;
        *(result + 12) = v157;
        v158 = v157 & 0xFFFD;
        if ((*(a2 + ((*a3 + 10) >> 3)) >> ((*a3 + 10) & 7)))
        {
          v159 = 2;
        }

        else
        {
          v159 = 0;
        }

        v160 = v158 | v159;
        *(result + 12) = v160;
        v161 = v160 & 0xFFFB;
        if ((*(a2 + ((*a3 + 11) >> 3)) >> ((*a3 + 11) & 7)))
        {
          v162 = 4;
        }

        else
        {
          v162 = 0;
        }

        v163 = v161 | v162;
        *(result + 12) = v163;
        v164 = v163 & 0xFFF7;
        if ((*(a2 + ((*a3 + 12) >> 3)) >> ((*a3 + 12) & 7)))
        {
          v165 = 8;
        }

        else
        {
          v165 = 0;
        }

        v166 = v164 | v165;
        *(result + 12) = v166;
        v167 = v166 & 0xFFEF;
        if ((*(a2 + ((*a3 + 13) >> 3)) >> ((*a3 + 13) & 7)))
        {
          v168 = 16;
        }

        else
        {
          v168 = 0;
        }

        v169 = v167 | v168;
        *(result + 12) = v169;
        v170 = v169 & 0xFFDF;
        if ((*(a2 + ((*a3 + 14) >> 3)) >> ((*a3 + 14) & 7)))
        {
          v171 = 32;
        }

        else
        {
          v171 = 0;
        }

        v172 = v170 | v171;
        *(result + 12) = v172;
        if ((*(a2 + ((*a3 + 15) >> 3)) >> ((*a3 + 15) & 7)))
        {
          v173 = v172 | 0x40;
        }

        else
        {
          v173 = v172 & 0xFFBF;
        }

        *(result + 12) = v173;
        goto LABEL_282;
      }

      if (v29)
      {
        goto LABEL_92;
      }

      *result = 11;
      v72 = (a2 + ((v4 + 9) >> 3));
      if (((v4 + 9) & 7) != 0)
      {
        v73 = (*v72 >> ((v4 + 9) & 7)) & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = (*(v72 + 3) << 24) | (v72[2] << 16) | (v72[1] << 8) | *v72;
      }

      v181 = v4 + 65;
      v182 = (a2 + ((v4 + 65) >> 3));
      v183 = v181 & 7;
      if (v183)
      {
        v184 = (*v182 >> v183);
      }

      else
      {
        v184 = *v182;
      }

      *(result + 16) |= v73 | (v184 << 56);
      v185 = *a3 + 6;
      v186 = v185 & 7;
      v187 = (a2 + (v185 >> 3));
      if (v186 > 5)
      {
        v188 = *v187;
      }

      else
      {
        v188 = *v187;
      }

      v189 = (v188 >> v186) & 7;
      if (v189 > 3)
      {
        if (v189 > 5)
        {
          if (v189 != 6)
          {
            LODWORD(v189) = 7;
          }
        }

        else if (v189 != 4)
        {
          LODWORD(v189) = 5;
        }
      }

      else if (v189 > 1)
      {
        if (v189 != 2)
        {
          LODWORD(v189) = 3;
        }
      }

      else
      {
        if (!v189)
        {
          *(result + 8) = 0;
LABEL_431:
          v25 = 73;
          goto LABEL_432;
        }

        LODWORD(v189) = 1;
      }

      *(result + 8) = v189;
      goto LABEL_431;
    }

    if (v21 != 2)
    {
      v67 = v4 + 4;
      v68 = (v4 + 4) & 7;
      v69 = (a2 + (v67 >> 3));
      if (v68 == 7)
      {
        if ((((*v69 | (v69[1] << 8)) >> 7) & 3) != 0)
        {
          goto LABEL_92;
        }
      }

      else if (((*v69 >> v68) & 3) != 0)
      {
        goto LABEL_92;
      }

      *result = 16;
      v25 = 6;
      goto LABEL_432;
    }

    v38 = (v4 + 4) & 7;
    v39 = (a2 + ((v4 + 4) >> 3));
    if (v38 == 7)
    {
      if ((((*v39 | (v39[1] << 8)) >> 7) & 3) != 0)
      {
        goto LABEL_92;
      }
    }

    else if (((*v39 >> v38) & 3) != 0)
    {
      goto LABEL_92;
    }

    *result = 15;
    v77 = v4 + 6;
    v78 = (v4 + 6) & 7;
    v79 = (a2 + (v77 >> 3));
    if (v78 > 1)
    {
      v80 = *v79;
    }

    else
    {
      v80 = *v79;
    }

    *(result + 16) |= (v80 >> v78) & 0x7F;
    v149 = *a3 + 13;
    v150 = v149 & 7;
    v151 = (a2 + (v149 >> 3));
    if (v150 > 5)
    {
      v152 = *v151;
    }

    else
    {
      v152 = *v151;
    }

    *(result + 12) = (v152 >> v150) & 7;
    v153 = *a3 & 7;
    v154 = (a2 + ((*a3 + 16) >> 3));
    if (v153 > 5)
    {
      v155 = *v154;
    }

    else
    {
      v155 = *v154;
    }

    v156 = (v155 >> v153) & 7;
    if (v156 > 3)
    {
      if (v156 > 5)
      {
        if (v156 != 6)
        {
          LODWORD(v156) = 7;
        }
      }

      else if (v156 != 4)
      {
        LODWORD(v156) = 5;
      }
    }

    else if (v156 > 1)
    {
      if (v156 != 2)
      {
        LODWORD(v156) = 3;
      }
    }

    else
    {
      if (!v156)
      {
        *(result + 8) = 0;
LABEL_428:
        v25 = 19;
        goto LABEL_432;
      }

      LODWORD(v156) = 1;
    }

    *(result + 8) = v156;
    goto LABEL_428;
  }

  if (!v7)
  {
    v8 = v4 + 2;
    v9 = (a2 + ((v4 + 2) >> 3));
    v10 = v8 & 7;
    if (v10)
    {
      v11 = (*v9 >> v10);
    }

    else
    {
      v11 = *v9;
    }

    v40 = *(result + 8) | v11;
    *(result + 8) = v40;
    v41 = *a3;
    if ((*(a2 + ((*a3 + 10) >> 3)) >> ((*a3 + 10) & 7)))
    {
      v42 = v41 + 11;
      v43 = (v41 + 11) & 7;
      v44 = (a2 + (v42 >> 3));
      if (v43 > 2)
      {
        v45 = *v44;
      }

      else
      {
        v45 = *v44;
      }

      v70 = (((v45 >> v43) & 0x3F) << 8) | v40;
      *(result + 8) = v70;
      if ((*(a2 + ((*a3 + 17) >> 3)) >> ((*a3 + 17) & 7)))
      {
        v71 = v70 | 0x4000;
      }

      else
      {
        v71 = v70 & 0xBFFF;
      }

      *(result + 8) = v71;
LABEL_67:
      v25 = 18;
      goto LABEL_432;
    }

    v46 = v40 & 0xBFFF;
    *(result + 8) = v46;
    v47 = *a3 + 11;
    v48 = v47 & 7;
    v49 = (a2 + (v47 >> 3));
    if (v48 > 4)
    {
      v50 = *v49;
    }

    else
    {
      v50 = *v49;
    }

    *(result + 8) = (((v50 >> v48) & 0xF) << 8) | v46;
    goto LABEL_64;
  }

  v16 = (v4 + 2) & 7;
  v17 = (a2 + ((v4 + 2) >> 3));
  if (v16 == 7)
  {
    v18 = ((*v17 | (v17[1] << 8)) >> 7) & 3;
  }

  else
  {
    v18 = (*v17 >> v16) & 3;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *result = 6;
      v64 = v4 + 4;
      v65 = (a2 + ((v4 + 4) >> 3));
      v66 = v64 & 7;
      if (v66)
      {
        LODWORD(v65) = *v65 >> v66;
      }

      else
      {
        LOBYTE(v65) = *v65;
      }

      *(result + 8) |= v65;
      v25 = 12;
      goto LABEL_432;
    }

    *result = 5;
    if ((*(a2 + ((v4 + 4) >> 3)) >> ((v4 + 4) & 7)))
    {
      *(result + 8) = 1;
      v34 = *a3 + 5;
      v35 = v34 & 7;
      v36 = (a2 + (v34 >> 3));
      if (v35 > 5)
      {
        v37 = *v36;
      }

      else
      {
        v37 = *v36;
      }

      v127 = *(result + 12) | (v37 >> v35) & 7;
      *(result + 12) = v127;
      v128 = *a3 & 7;
      v129 = (a2 + ((*a3 + 8) >> 3));
      if (v128 > 1)
      {
        v130 = *v129;
      }

      else
      {
        v130 = *v129;
      }

      *(result + 12) = (((v130 >> v128) & 0x7F) << 8) | v127;
LABEL_64:
      v25 = 15;
      goto LABEL_432;
    }

    *(result + 8) = 0;
    v74 = *a3 + 5;
    v75 = (a2 + (v74 >> 3));
    v76 = v74 & 7;
    if (v76)
    {
      LODWORD(v75) = *v75 >> v76;
    }

    else
    {
      LOBYTE(v75) = *v75;
    }

    *(result + 12) |= v75;
    v144 = *a3 + 13;
    v145 = v144 & 7;
    v146 = (a2 + (v144 >> 3));
    if (v145 > 5)
    {
      v147 = *v146;
    }

    else
    {
      v147 = *v146;
    }

    v148 = (v147 >> v145) & 7;
    if (v148 > 3)
    {
      if (v148 > 5)
      {
        if (v148 != 6)
        {
          LODWORD(v148) = 7;
        }
      }

      else if (v148 != 4)
      {
        LODWORD(v148) = 5;
      }
    }

    else if (v148 > 1)
    {
      if (v148 != 2)
      {
        LODWORD(v148) = 3;
      }
    }

    else
    {
      if (!v148)
      {
        *(result + 16) = 0;
LABEL_282:
        v25 = 16;
        goto LABEL_432;
      }

      LODWORD(v148) = 1;
    }

    *(result + 16) = v148;
    goto LABEL_282;
  }

  if (v18)
  {
    v54 = (v4 + 4) & 7;
    v55 = (a2 + ((v4 + 4) >> 3));
    if (v54 == 7)
    {
      v56 = ((*v55 | (v55[1] << 8)) >> 7) & 3;
    }

    else
    {
      v56 = (*v55 >> v54) & 3;
    }

    if (v56 == 1)
    {
      *result = 3;
      v119 = v4 + 26;
      v120 = (v4 + 26) & 7;
      v121 = (a2 + (v119 >> 3));
      if (v120 > 2)
      {
        v122 = *v121;
      }

      else
      {
        v122 = (*(v121 + 3) << 24) | (v121[2] << 16) | (v121[1] << 8) | *v121;
      }

      *(result + 16) |= (v122 >> v120) & 0x3FFFFFFFFFFFFFLL;
      v174 = *a3 & 7;
      v175 = (a2 + ((*a3 + 80) >> 3));
      if (v174 > 5)
      {
        v176 = *v175;
      }

      else
      {
        v176 = *v175;
      }

      *(result + 24) |= (v176 >> v174) & 7;
      v177 = *a3 + 6;
      v178 = v177 & 7;
      v179 = (a2 + (v177 >> 3));
      if (v178 > 4)
      {
        v180 = *v179;
      }

      else
      {
        v180 = (v179[2] << 16) | (v179[1] << 8) | *v179;
      }

      *(result + 8) |= (v180 >> v178) & 0xFFFFF;
      v25 = 83;
      goto LABEL_432;
    }

    if (!v56)
    {
      *result = 2;
      v81 = v4 + 6;
      v82 = (v4 + 6) & 7;
      v83 = (a2 + (v81 >> 3));
      if (v82 > 4)
      {
        v84 = *v83;
      }

      else
      {
        v84 = (v83[2] << 16) | (v83[1] << 8) | *v83;
      }

      *(result + 8) |= (v84 >> v82) & 0xFFFFF;
      v25 = 26;
      goto LABEL_432;
    }

LABEL_92:
    *a4 = 0;
    return result;
  }

  *result = 1;
  v25 = 4;
LABEL_432:
  *a3 += v25;
  return result;
}

void sub_24D7A782C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t sub_24D7A7848(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = 0;
    v2 = *(v1 + 8);
    if ((v2 ^ (v2 - 1)) > v2 - 1 && (v2 - 2049) >= 0xFFFFF80F)
    {
      v3 = *(v1 + 12);
      if ((v3 ^ (v3 - 1)) <= v3 - 1 || (v3 - 8193) < 0xFFFFE03F)
      {
        return 0;
      }

      v5 = *(v1 + 16);
      if (v5.i32[0] >= 0x80u && (v6 = vcnt_s8(v5), v6.i16[0] = vaddlv_u8(v6), v6.i32[0] == 1))
      {
        if (v5.i32[0] > 0x8000u)
        {
          return 0;
        }
      }

      else if (v5.i32[0])
      {
        return 0;
      }

      v7 = *(v1 + 24);
      if (v7 == 1024 || v7 == 0x40000 || v7 == 4096)
      {
        operator new();
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_24D7A7930(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2860BB218;
  v4 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 88) = a2[5];
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 152) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 134) = 0u;
  v8 = *(a2 + 4);
  if (v8 <= 0x7FF)
  {
    v9 = sub_24D809C04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_24D85D764(a2 + 4, v9);
    }

LABEL_7:
    v11 = *(a2 + 4);
    goto LABEL_10;
  }

  if (v8 < 4 * *(a2 + 2))
  {
    v10 = sub_24D809C04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_24D85D6AC(a2 + 4, a2 + 2, v10);
    }

    goto LABEL_7;
  }

  v11 = v8 - 2048;
  if (v11 <= 0x400)
  {
    v11 = 1024;
  }

LABEL_10:
  *(a1 + 160) = v11;
  *(a1 + 168) = xmmword_24DA8B940;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v12 = (a1 + 208);
  if (*(a2 + 7) && *(a2 + 8))
  {
    v49 = 207;
    __p[3] = &unk_2860BB240;
    LOBYTE(v47) = 0;
    v13 = sub_24D79714C(__p, 207);
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = 0;
      v16 = *(a2 + 7);
      v17 = __p[0];
      do
      {
        v13 = sub_24D7AC4F4(v13, *(v16 + 8 * v15));
        if (v13 != 207)
        {
          *&v17[(v13 >> 3) & 0x1FFFFFF8] |= 1 << v13;
          v14 = *(a2 + 8);
        }

        ++v15;
      }

      while (v15 < v14);
    }

    *v12 = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    operator new();
  }

  *v12 = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = *(a2 + 9);
  v18 = (a1 + 328);
  v19 = 14592;
  do
  {
    *(v18 - 88) = 0;
    *v18 = 0;
    v18 += 96;
    v19 -= 96;
  }

  while (v19);
  v20 = 448;
  v21 = (a1 + 14880);
  do
  {
    *(v21 - 48) = 0;
    *v21 = 0;
    v21 += 56;
    v20 -= 56;
  }

  while (v20);
  v22 = (a1 + 15312);
  v23 = 640;
  do
  {
    *(v22 - 32) = 0;
    *v22 = 0;
    v22 += 40;
    v23 -= 40;
  }

  while (v23);
  v24 = (a1 + 16024);
  v25 = 4080;
  do
  {
    *(v24 - 8) = 0;
    *v24 = 0;
    v24 += 16;
    v25 -= 16;
  }

  while (v25);
  v26 = 128;
  v27 = (a1 + 20124);
  do
  {
    *(v27 - 12) = 0;
    *v27 = 0;
    v27 += 16;
    v26 -= 16;
  }

  while (v26);
  v28 = (a1 + 20252);
  v29 = 128;
  do
  {
    *(v28 - 12) = 0;
    *v28 = 0;
    v28 += 16;
    v29 -= 16;
  }

  while (v29);
  v30 = (a1 + 20380);
  v31 = 128;
  do
  {
    *(v30 - 12) = 0;
    *v30 = 0;
    v30 += 16;
    v31 -= 16;
  }

  while (v31);
  v32 = (a1 + 20536);
  v33 = 6144;
  do
  {
    *(v32 - 40) = 0;
    *v32 = 0;
    v32 += 48;
    v33 -= 48;
  }

  while (v33);
  v34 = 8320;
  v35 = 26640;
  do
  {
    v36 = (a1 + v35);
    *v36 = 0;
    v36[1] = 0;
    v35 += 1040;
    v34 -= 1040;
  }

  while (v34);
  *(a1 + 20096) = 0u;
  *(a1 + 34960) = 0u;
  *(a1 + 34976) = 0u;
  v37 = *(a1 + 20);
  if (v37 == 0x2000)
  {
    v38 = 7;
  }

  else
  {
    v38 = 0;
  }

  if (v37 == 4096)
  {
    v39 = 6;
  }

  else
  {
    v39 = v38;
  }

  if (v37 == 2048)
  {
    v40 = 5;
  }

  else
  {
    v40 = 0;
  }

  if (v37 == 1024)
  {
    v41 = 4;
  }

  else
  {
    v41 = v40;
  }

  if (v37 <= 4095)
  {
    v39 = v41;
  }

  if (v37 == 512)
  {
    v42 = 3;
  }

  else
  {
    v42 = 0;
  }

  if (v37 == 256)
  {
    v43 = 2;
  }

  else
  {
    v43 = v42;
  }

  if (v37 == 128)
  {
    v44 = 1;
  }

  else
  {
    v44 = v43;
  }

  if (v37 <= 1023)
  {
    v45 = v44;
  }

  else
  {
    v45 = v39;
  }

  *(a1 + 156) = v45;
  sub_24D790B1C((a1 + 8), (a1 + 34960));
  return a1;
}

uint64_t sub_24D7A9594(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _DWORD *a5)
{
  v264 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3)
  {
    result = 0;
    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_577;
  }

  v10 = *(a1 + 200);
  if (!v10)
  {
    operator new();
  }

  *v257 = *(a1 + 200);
  if (*(a1 + 148) == 1)
  {
    v11 = *(a1 + 112);
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 149) == 1)
  {
    v13 = *(a1 + 128);
  }

  else
  {
    v13 = 0;
  }

  sub_24D7CFC10(v10, (a1 + 208), 1 << (*(a1 + 156) + 6), v11, v13);
  v246 = *(v10 + 225768);
  if (a5)
  {
    *a5 = 0;
  }

  v14 = 8 * a3;
  v256 = 0;
  if (!(8 * a3))
  {
    v253 = 0;
    v16 = 0;
    goto LABEL_560;
  }

  v247 = a3;
  v248 = 0;
  v237 = a5;
  v15 = 0;
  v252 = 0;
  v253 = 0;
  v16 = 0;
  v17 = 0;
  v249 = 0;
  v251 = 0;
  v233 = a1 + 20368;
  v232 = a1 + 20240;
  v234 = a1 + 20096;
  v235 = a1 + 16016;
  v239 = a1 + 20496;
  v240 = a1 + 240;
  v236 = a1 + 15920;
  v241 = a1 + 14832;
  v238 = a1 + 26640;
  v242 = a1 + 15280;
  v18 = 1;
  while (1)
  {
    v19 = *(a1 + 112);
    if (v19 > *(a1 + 56) || v14 - v15 <= 0x340 && (v259 = 0, memset(__s1, 0, sizeof(__s1)), !memcmp(__s1, (a2 + (v15 >> 3)), v247 - (v15 >> 3))))
    {
LABEL_557:
      if ((v18 & 1) == 0)
      {
        sub_24D7975E0(*v257, 0, v249, v17, v256 - v252);
      }

      goto LABEL_560;
    }

    *(a1 + 104) = v15;
    v255 = 0;
    sub_24D7B3318(__s1, a2, &v256, &v255);
    if ((v255 & 1) == 0)
    {
      break;
    }

    switch(LODWORD(__s1[0]))
    {
      case 0:
        if ((~*(a1 + 232) & 3) == 0)
        {
          goto LABEL_509;
        }

        v20 = v253;
        if (LOBYTE(__s1[1]) > 0x97u)
        {
          goto LABEL_529;
        }

        v21 = v240 + 96 * LOBYTE(__s1[1]);
        sub_24D79D2F0(a1, LOBYTE(__s1[1]), *v257, v21);
        v22 = *v257 + 1000 * *(v21 + 36);
        *buf = (LOWORD(__s1[1]) >> 6) & 0x100 | HIBYTE(LOWORD(__s1[1])) & 0x3F;
        if (*(v22 + 1336) != 1)
        {
          goto LABEL_529;
        }

        v23 = v22 + 712;
        sub_24D7A1734(v22 + 712, *v257);
        if (*(v23 + 624) != 1)
        {
          goto LABEL_528;
        }

        v24 = sub_24D790464(v23, (*(v23 + 616) - 1)) & 3;
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v182 = *(v23 + 560) + *(v23 + 552) - 1;
            v183 = *(*(v23 + 528) + ((v182 >> 9) & 0x7FFFFFFFFFFFF8));
            v184 = v182 & 0xFFF;
            v185 = *(v183 + v184) & 0xCF;
          }

          else
          {
            v198 = *(v23 + 560) + *(v23 + 552) - 1;
            v183 = *(*(v23 + 528) + ((v198 >> 9) & 0x7FFFFFFFFFFFF8));
            v184 = v198 & 0xFFF;
            v185 = *(v183 + v184) & 0x3F;
          }
        }

        else
        {
          if (!v24)
          {
            LOBYTE(v260) = -4;
            sub_24D7A19A8(v23 + 520, &v260);
            goto LABEL_528;
          }

          v197 = *(v23 + 560) + *(v23 + 552) - 1;
          v183 = *(*(v23 + 528) + ((v197 >> 9) & 0x7FFFFFFFFFFFF8));
          v184 = v197 & 0xFFF;
          v185 = *(v183 + v184) & 0xF3;
        }

        *(v183 + v184) = v185;
LABEL_528:
        sub_24D7A18F0(v23, buf);
        goto LABEL_529;
      case 1:
        v90 = *(a1 + 16);
        v91 = *(a1 + 128);
        if (v91 % v90)
        {
          v92 = (v91 + v90 - 1) / v90 * v90;
        }

        else
        {
          if (*(a1 + 136) == v91 && !*(a1 + 152) && (*(a1 + 149) & 1) != 0)
          {
            v136 = 1;
            goto LABEL_199;
          }

          v92 = v91 + v90;
        }

        *(a1 + 128) = v92;
        v137 = *v257;
        *buf = v92;
        sub_24D769624((*v257 + 225840), buf);
        if (!(*buf % v90))
        {
          v137[28236] = ((v137[28228] - v137[28227]) >> 3) - 1 + ((v137[28231] - v137[28230]) << 29) - 0x100000000;
        }

        v136 = *(a1 + 152) + 1;
LABEL_199:
        v20 = v253;
        v18 = 0;
        *(a1 + 152) = v136;
        goto LABEL_530;
      case 2:
        v244 = v17;
        v51 = *v257;
        v52 = *(*v257 + 225848);
        v53 = *(*v257 + 225840);
        if (v52 - v53 == 8 && !*(v52 - 8))
        {
          *(*v257 + 225848) = v53;
        }

        v54 = v19 + (1 << (*(a1 + 156) + 6));
        v55 = sub_24D797778(a1, v51, __s1[1] & 0xFFFFF, v54);
        sub_24D7D00E8(v51, (a1 + 149), *(a1 + 16), (a1 + 128), v55);
        if (v55 < *(a1 + 128))
        {
          v56 = sub_24D809C04();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1522;
            *&buf[18] = 2080;
            *&buf[20] = "uscTimestamp >= parser->lastUSCTimestamp";
            _os_log_error_impl(&dword_24D764000, v56, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
          }

          if (sub_24D809BF4())
          {
            sub_24D809BFC();
          }
        }

        v57 = *v257;
        v58 = *(a1 + 16);
        *buf = v55;
        sub_24D769624((*v257 + 225840), buf);
        if (!(*buf % v58))
        {
          v57[28236] = ((v57[28228] - v57[28227]) >> 3) - 1 + ((v57[28231] - v57[28230]) << 29) - 0x100000000;
        }

        *(a1 + 128) = v55;
        *(a1 + 136) = v55;
        *(a1 + 144) = __s1[1] & 0xFFFFF;
        *(a1 + 152) = 0;
        v59 = *v257;
        *buf = sub_24D79CF24(v54, a1 + 34960, (a1 + 34984));
        sub_24D769624((v59 + 225816), buf);
        *(a1 + 112) = v54;
        *buf = ((*(*v257 + 225824) - *(*v257 + 225816)) >> 3) - 1 + ((*(*v257 + 225848) - *(*v257 + 225840)) << 29) - 0x100000000;
        sub_24D7979B0(*v257 + 225864, buf);
        goto LABEL_95;
      case 3:
        v71 = *v257;
        v72 = *v257 + 225280;
        v73 = *(*v257 + 225824);
        v74 = *(*v257 + 225816);
        if (v73 - v74 == 8 && !*(v73 - 8))
        {
          *(*v257 + 225824) = v74;
        }

        v75 = *(v72 + 568);
        v76 = *(v72 + 560);
        if (v75 - v76 == 8 && !*(v75 - 8))
        {
          *(v72 + 568) = v76;
        }

        v77 = *(&__s1[1] + 1);
        v78 = sub_24D797778(a1, v71, __s1[1] & 0xFFFFF, *(&__s1[1] + 1) & 0x3FFFFFFFFFFFFFLL);
        sub_24D7D0084(v71, (a1 + 148), 1 << (*(a1 + 156) + 6), (a1 + 112), v77 & 0x3FFFFFFFFFFFFFLL);
        sub_24D7D00E8(*v257, (a1 + 149), *(a1 + 16), (a1 + 128), v78);
        v79 = *(a1 + 112);
        if ((*(&__s1[1] + 1) & 0x3FFFFFFFFFFFFFuLL) <= v79 && v79)
        {
          v80 = sub_24D809C04();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1437;
            *&buf[18] = 2080;
            *&buf[20] = "token.bits.tok.timeStamp.systemTime > parser->lastSystemTimestamp || !parser->lastSystemTimestamp";
            _os_log_error_impl(&dword_24D764000, v80, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
          }

          if (sub_24D809BF4())
          {
            sub_24D809BFC();
          }
        }

        v81 = *v257;
        *buf = sub_24D79CF24(*(&__s1[1] + 1) & 0x3FFFFFFFFFFFFFLL, a1 + 34960, (a1 + 34984));
        sub_24D769624((v81 + 225816), buf);
        v82 = *v257;
        v83 = (*v257 + 225280);
        if (*(*v257 + 225848) == *(*v257 + 225840) || (v84 = *(a1 + 128), v78 > v84))
        {
          v85 = *(a1 + 16);
          *buf = v78;
          sub_24D769624((*v257 + 225840), buf);
          v17 = v17;
          if (!(*buf % v85))
          {
            v83[76] = ((v83[68] - v83[67]) >> 3) - 1 + ((v83[71] - v83[70]) << 29) - 0x100000000;
          }

          *(a1 + 128) = v78;
          *(a1 + 136) = v78;
          *(a1 + 144) = __s1[1] & 0xFFFFF;
          v82 = *v257;
          v20 = v253;
        }

        else
        {
          v20 = v253;
          v17 = v17;
          if (v78 < v84)
          {
            *(a1 + 136) = v84;
            *(a1 + 144) = (__s1[1] & 0xFFFFF) + v78 - v84;
          }
        }

        *(a1 + 152) = 0;
        if ((v17 & 1) == 0)
        {
          v86 = v82[28227];
          v87 = ((v82[28228] - v86) >> 3) - 1 + ((v82[28231] - v82[28230]) << 29) - 0x100000000;
          v249 = v87;
          if ((v251 & 1) != 0 && (*(v86 + 8 * v248) + 2 * v82[28226]) < *(v86 + 8 * v87) && (v88 = sub_24D7ADF54(a1, a4, v82, v248), v82 = *v257, v88))
          {
            v229 = v229 & 0xFFFFFFFF00000000 | v251;
            sub_24D7975E0(*v257, 2, v248, v251, 0);
            v17 = 1;
            v82 = *v257;
          }

          else
          {
            v17 = 1;
          }
        }

        *buf = ((v82[28228] - v82[28227]) >> 3) - 1 + ((v82[28231] - v82[28230]) << 29) - 0x100000000;
        sub_24D7979B0((v82 + 28233), buf);
        v18 = 0;
        v133 = *(&__s1[1] + 1) & 0x3FFFFFFFFFFFFFLL;
        *(a1 + 112) = *(&__s1[1] + 1) & 0x3FFFFFFFFFFFFFLL;
        *(a1 + 120) = v133;
        *(a1 + 156) = __s1[2];
        goto LABEL_530;
      case 4:
        v35 = sub_24D809C04();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1584;
          *&buf[18] = 2080;
          *&buf[20] = "false";
          _os_log_error_impl(&dword_24D764000, v35, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
        }

        v20 = v253;
        if (sub_24D809BF4())
        {
          sub_24D809BFC();
        }

        goto LABEL_529;
      case 5:
        if ((~*(a1 + 232) & 0xF) == 0)
        {
          goto LABEL_509;
        }

        v244 = v17;
        v93 = __s1[1];
        v94 = WORD2(__s1[1]);
        v95 = LODWORD(__s1[1]) == 1;
        if (LODWORD(__s1[1]) == 1)
        {
          v96 = BYTE4(__s1[1]) & 7 | 0x60;
        }

        else
        {
          v96 = BYTE4(__s1[1]);
        }

        if (v96 > 0x97u)
        {
LABEL_95:
          v18 = 0;
LABEL_96:
          v20 = v253;
          v17 = v244;
          goto LABEL_530;
        }

        v97 = DWORD2(__s1[1]);
        v98 = v240 + 96 * v96;
        if ((*(v98 + 88) & 1) == 0)
        {
          v230 = DWORD2(__s1[1]);
          sub_24D79D2F0(a1, v96, *v257, v240 + 96 * v96);
          v97 = v230;
          v98 = v240 + 96 * v96;
          if ((*(v98 + 88) & 1) == 0)
          {
            sub_24D79D030();
LABEL_582:
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }
        }

        *(v98 + 83) = v95;
        *(v98 + 82) = 1;
        *(v98 + 36) = v96;
        if (v93)
        {
          v18 = 0;
          v99 = *(a1 + 168);
          if (v99 == 0x8000000000000000)
          {
            v99 = 0;
          }

          *(a1 + 168) = v99 + 1;
          v100 = ((*(*v257 + 225824) - *(*v257 + 225816)) >> 3) - 1 + ((*(*v257 + 225848) - *(*v257 + 225840)) << 29) - 0x100000000;
          *(v98 + 16) = v99;
          *(v98 + 37) = BYTE1(v94) & 0x7F;
          v101 = v239 + 48 * ((v94 >> 8) & 0x7F);
          *v101 = v99;
          *(v101 + 8) = 0;
          *(v101 + 16) = 0;
          *(v101 + 24) = 0;
          *(v101 + 28) = 0;
          *(v101 + 32) = v100;
          *(v101 + 40) = 1;
          goto LABEL_96;
        }

        *(v98 + 36) = v94;
        v17 = v244;
        if (v97 > 7)
        {
          v18 = 0;
          v20 = v253;
          goto LABEL_530;
        }

        v141 = v236 + 12 * v97;
        v142 = *v141;
        *(v98 + 76) = *v141;
        v20 = v253;
        if (v142 <= 7)
        {
          v143 = v241 + 56 * v142;
          if (*(v143 + 48) == 1)
          {
            *(v98 + 32) = *(v143 + 24);
          }

          if (*(v98 + 16) == -1)
          {
            v144 = v238 + 1040 * v142;
            v145 = *(v141 + 8);
            if ((*(v144 + ((v145 >> 3) & 8)) >> v145))
            {
              *(v98 + 16) = *(v144 + 8 * (v145 & 0x7F) + 16);
            }

            else if ((a4 & 0x20) != 0)
            {
              v207 = *(a1 + 176);
              if (!v207)
              {
                v207 = 0x8000000000000000;
              }

              *(a1 + 176) = v207 + 1;
              *(v98 + 16) = v207;
              v208 = *(v141 + 8);
              *(v144 + 8 * (v208 & 0x7F) + 16) = v207;
              *(v144 + ((v208 >> 3) & 8)) |= 1 << v208;
            }
          }
        }

        if (v97 - 4 > 2)
        {
          goto LABEL_529;
        }

        v209 = v242 + 40 * (v97 - 4);
        if (*(v209 + 32) != 1)
        {
          goto LABEL_529;
        }

        v18 = 0;
        *(v98 + 24) = *(v209 + 16);
        goto LABEL_530;
      case 6:
        if ((~*(a1 + 232) & 0xF) != 0)
        {
          sub_24D7AE2B0(a1, *v257, ((*(*v257 + 225824) - *(*v257 + 225816)) >> 3) - 1 + ((*(*v257 + 225848) - *(*v257 + 225840)) << 29) - 0x100000000, LOBYTE(__s1[1]), 0);
        }

        goto LABEL_509;
      case 7:
        if ((~*(a1 + 232) & 0xF) == 0)
        {
          goto LABEL_509;
        }

        v260 = 0;
        v20 = v253;
        if (DWORD1(__s1[1]) == 1)
        {
          v260 = (*(&__s1[1] + 1) >> 5) & 0x7FFFFFFFFFFLL;
          v89 = v235 + 16 * (BYTE8(__s1[1]) & 0x1F);
          *v89 = v260;
          *(v89 + 8) = 1;
        }

        else
        {
          if (BYTE8(__s1[1]) == 255)
          {
            goto LABEL_529;
          }

          v138 = v235 + 16 * BYTE8(__s1[1]);
          if (*(v138 + 8) != 1)
          {
            goto LABEL_529;
          }

          v260 = *v138;
        }

        v254 = __s1[1];
        *buf = a1;
        *&buf[8] = &v254;
        *&buf[16] = v257;
        *&buf[24] = &v260;
        if (LOBYTE(__s1[1]) <= 0x97uLL)
        {
          sub_24D7A109C(buf, v240 + 96 * LOBYTE(__s1[1]));
        }

        goto LABEL_529;
      case 8:
        if ((*(a1 + 232) & 4) != 0)
        {
          goto LABEL_509;
        }

        *buf = a1;
        v20 = v253;
        if (LOBYTE(__s1[1]) > 0x97uLL)
        {
          goto LABEL_529;
        }

        v112 = v240 + 96 * LOBYTE(__s1[1]);
        if (*(v112 + 88) != 1)
        {
          goto LABEL_529;
        }

        v113 = *(v112 + 76);
        if (SDWORD1(__s1[1]) > 1)
        {
          if (DWORD1(__s1[1]) == 2)
          {
            if (BYTE14(__s1[1]))
            {
              v192.i64[0] = vdupq_n_s16(HIBYTE(__s1[1])).u64[0];
              v192.i64[1] = vdupq_n_s16(*(__s1 + 31) + 1).i64[1];
              *v193.i8 = vadd_s16(vdup_n_s16(BYTE7(__s1[2])), 0x3000200010000);
              v193.i64[1] = v193.i64[0];
            }

            else
            {
              v192 = vmovl_u8(*(&__s1[1] + 15));
              v193 = vmovl_u8(*(&__s1[2] + 7));
            }

            v204 = ((WORD6(__s1[1]) & 0x7FF) << 20) | (DWORD2(__s1[1]) >> 6) & 0xFFC00 | WORD4(__s1[1]) & 0x3FF;
            if (v113 <= 7)
            {
              v205 = v233 + 16 * v113;
              *v205 = WORD4(__s1[1]) & 0x3FF;
              *(v205 + 4) = vand_s8(vshl_u32(vdup_n_s32(v204), 0xFFFFFFECFFFFFFF6), 0x7FF000003FFLL);
              *(v205 + 12) = 1;
            }

            v206 = *(v112 + 75);
            v121 = (v112 + 75);
            *(v121 - 37) = 1;
            *(v121 - 36) = v192;
            *(v121 - 20) = v193;
            *(v121 - 1) = v204;
            if ((v206 & 1) == 0)
            {
LABEL_549:
              *v121 = 1;
              goto LABEL_529;
            }
          }

          else if (DWORD1(__s1[1]) == 3)
          {
            if (BYTE8(__s1[1]))
            {
              v150.i64[0] = vdupq_n_s16(BYTE9(__s1[1])).u64[0];
              v150.i64[1] = vdupq_n_s16(*(__s1 + 25) + 1).i64[1];
              *v151.i8 = vadd_s16(vdup_n_s16(BYTE1(__s1[2])), 0x3000200010000);
              v151.i64[1] = v151.i64[0];
            }

            else
            {
              v150 = vmovl_u8(*(&__s1[1] + 9));
              v151 = vmovl_u8(*(&__s1[2] + 1));
            }

            if (v113 <= 7)
            {
              v201 = v233 + 16 * v113;
              if (*(v201 + 12) == 1)
              {
                v202 = *v201 & 0x3FF | ((*(v201 + 4) & 0x3FF) << 10) & 0x800FFFFF | ((*(v201 + 8) & 0x7FF) << 20);
                v203 = *(v112 + 75);
                v121 = (v112 + 75);
                *(v121 - 37) = 1;
                *(v121 - 36) = v150;
                *(v121 - 20) = v151;
                *(v121 - 1) = v202;
                if ((v203 & 1) == 0)
                {
                  goto LABEL_549;
                }
              }
            }
          }
        }

        else if (DWORD1(__s1[1]))
        {
          if (DWORD1(__s1[1]) == 1)
          {
            v114 = sub_24D7B320C(buf, *(&__s1[1] + 12), SBYTE4(__s1[2]), *(v112 + 76));
            if (v113 <= 7)
            {
              v116 = v232 + 16 * v113;
              if (*(v116 + 12) == 1)
              {
                v117 = WORD4(__s1[1]);
                v118 = *v116 + (BYTE8(__s1[1]) & 0xFu);
                v119 = (v115 & 0x7FF) << 11;
                *v116 = v118;
                v120 = vadd_s32(*(v116 + 4), vand_s8(vshl_u32(vdup_n_s32(v117), 0xFFFFFFF8FFFFFFFCLL), 0xF0000000FLL));
                *(v116 + 4) = v120;
                v122 = *(v112 + 75);
                v121 = (v112 + 75);
                *(v121 - 7) = v120.i32[1];
                *(v121 - 37) = 0;
                *(v121 - 36) = v118 | (v120.u32[0] << 32);
                *(v121 - 6) = WORD2(v114) & 0x7FF | v119 | (WORD2(v115) << 22);
                *(v121 - 20) = (WORD2(v114) & 0x7FF | ((v114 & 0x1F) << 33) | v119 | ((HIDWORD(v115) & 0x7FF) << 22)) >> 32;
                if ((v122 & 1) == 0)
                {
                  goto LABEL_549;
                }
              }
            }
          }
        }

        else
        {
          v186 = sub_24D7B320C(buf, *(&__s1[2] + 4), SBYTE12(__s1[2]), *(v112 + 76));
          v188 = *(&__s1[1] + 1);
          v189 = __s1[2];
          if (v113 <= 7)
          {
            v190 = v232 + 16 * v113;
            *v190 = *(&__s1[1] + 1);
            *(v190 + 8) = v189;
            *(v190 + 12) = 1;
          }

          v191 = *(v112 + 75);
          v121 = (v112 + 75);
          *(v121 - 37) = 0;
          *(v121 - 36) = v188;
          *(v121 - 7) = v189;
          *(v121 - 6) = WORD2(v186) & 0x7FF | ((v187 & 0x7FF) << 11) | (WORD2(v187) << 22);
          *(v121 - 20) = (HIDWORD(v186) & 0x7FF | ((v186 & 0x1F) << 33) | ((v187 & 0x7FF) << 11) | ((HIDWORD(v187) & 0x7FF) << 22)) >> 32;
          if ((v191 & 1) == 0)
          {
            goto LABEL_549;
          }
        }

        goto LABEL_529;
      case 9:
        if (*(a1 + 232))
        {
          goto LABEL_509;
        }

        v20 = v253;
        if ((__s1[1] & 0xF8) > 0x97uLL)
        {
          goto LABEL_529;
        }

        v47 = v240 + 96 * LOBYTE(__s1[1]);
        sub_24D79D2F0(a1, LOBYTE(__s1[1]), *v257, v47);
        v48 = *v257 + 1000 * *(v47 + 36);
        *buf = DWORD1(__s1[1]);
        if (*(v48 + 1336) != 1)
        {
          goto LABEL_529;
        }

        v49 = v48 + 712;
        sub_24D7A1734(v48 + 712, *v257);
        if (*(v49 + 624) != 1)
        {
          goto LABEL_524;
        }

        v50 = sub_24D790464(v49, (*(v49 + 616) - 1)) & 3;
        if (v50 <= 1)
        {
          if (!v50)
          {
            LOBYTE(v260) = -3;
            sub_24D7A19A8(v49 + 520, &v260);
            goto LABEL_524;
          }

          v194 = *(v49 + 560) + *(v49 + 552) - 1;
          v179 = *(*(v49 + 528) + ((v194 >> 9) & 0x7FFFFFFFFFFFF8));
          v180 = v194 & 0xFFF;
          v181 = *(v179 + v180) & 0xF3 | 4;
          goto LABEL_522;
        }

        if (v50 == 2)
        {
          v178 = *(v49 + 560) + *(v49 + 552) - 1;
          v179 = *(*(v49 + 528) + ((v178 >> 9) & 0x7FFFFFFFFFFFF8));
          v180 = v178 & 0xFFF;
          v181 = *(v179 + v180) & 0xCF | 0x10;
LABEL_522:
          *(v179 + v180) = v181;
          goto LABEL_524;
        }

        v195 = *(v49 + 560) + *(v49 + 552) - 1;
        v196 = *(*(v49 + 528) + ((v195 >> 9) & 0x7FFFFFFFFFFFF8));
        *(v196 + (v195 & 0xFFF)) = *(v196 + (v195 & 0xFFF)) & 0x3F | 0x40;
LABEL_524:
        sub_24D7A1E04(v49 + 312, buf);
LABEL_529:
        v18 = 0;
        goto LABEL_530;
      case 0xA:
        if ((*(a1 + 232) & 0x10) != 0 || *(a1 + 48) > v19)
        {
          goto LABEL_509;
        }

        v105 = v17;
        v106 = LOBYTE(__s1[1]);
        v107 = *(*v257 + 225888);
        v108 = *v257 + 24 * LOBYTE(__s1[1]) + 224520;
        v109 = *v108;
        v110 = *(*v257 + 24 * LOBYTE(__s1[1]) + 224528);
        if (*v108 == v110 || *(*(*v257 + 225840) + ((v107 >> 29) & 0x7FFFFFFF8)) - *(*(*v257 + 225840) + 8 * *(v110 - 1)) >= *(a1 + 160))
        {
          v139 = *(*v257 + 24 * LOBYTE(__s1[1]) + 224536);
          if (v110 >= v139)
          {
            v146 = (v110 - v109) >> 3;
            if ((v146 + 1) >> 61)
            {
              goto LABEL_582;
            }

            v245 = LOBYTE(__s1[1]);
            v147 = v139 - v109;
            v148 = v147 >> 2;
            if (v147 >> 2 <= (v146 + 1))
            {
              v148 = v146 + 1;
            }

            if (v147 >= 0x7FFFFFFFFFFFFFF8)
            {
              v149 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v149 = v148;
            }

            if (v149)
            {
              sub_24D7658EC(*v257 + 24 * LOBYTE(__s1[1]) + 224520, v149);
            }

            v152 = (8 * v146);
            *v152 = v107;
            v140 = 8 * v146 + 8;
            v153 = *(v108 + 8) - *v108;
            v154 = v152 - v153;
            memcpy(v152 - v153, *v108, v153);
            v155 = *v108;
            *v108 = v154;
            *(v108 + 8) = v140;
            *(v108 + 16) = 0;
            if (v155)
            {
              operator delete(v155);
            }

            v106 = v245;
          }

          else
          {
            *v110 = v107;
            v140 = (v110 + 8);
          }

          *(v108 + 8) = v140;
          if (v106 < 0x10)
          {
            v111 = (v234 + v106);
            *(v234 + v106) = 0;
            buf[0] = 0;
LABEL_234:
            v17 = v105;
LABEL_235:
            *v111 = 1;
            v156 = buf[0];
            goto LABEL_237;
          }

LABEL_236:
          v156 = 0;
          v17 = v105;
          goto LABEL_237;
        }

        buf[0] = 0;
        if (LOBYTE(__s1[1]) > 0xFu)
        {
          goto LABEL_236;
        }

        v111 = (v234 + LOBYTE(__s1[1]));
        if (!*v111)
        {
          goto LABEL_234;
        }

        v17 = v105;
        if (*(v234 + LOBYTE(__s1[1])) == 1)
        {
          v111 = buf;
          goto LABEL_235;
        }

        v156 = 0;
LABEL_237:
        v254 = v156 & 1;
        *buf = __s1;
        *&buf[8] = &v254;
        *&buf[16] = v257;
        v157 = *(a1 + 208);
        if (v157 != *(a1 + 216))
        {
          v158 = (v157 + 24 * v106);
          v160 = *v158;
          v159 = v158[1];
          while (2)
          {
            if (v160 == v159)
            {
              goto LABEL_509;
            }

            v161 = *v160;
            v260 = 0;
            switch(v106)
            {
              case 0:
                switch(v161)
                {
                  case 0:
                    v162 = *(*buf + 24);
                    goto LABEL_377;
                  case 1:
                    goto LABEL_376;
                  case 2:
                    v165 = *(*buf + 24) >> 50;
                    goto LABEL_503;
                  case 3:
                    goto LABEL_268;
                  case 4:
                    v171 = *(*buf + 32);
                    goto LABEL_449;
                  case 5:
                    LODWORD(v173) = *(*buf + 36);
                    goto LABEL_444;
                  case 6:
                    LOWORD(v173) = *(*buf + 38);
                    goto LABEL_444;
                  case 7:
                    v173 = *(*buf + 40);
                    goto LABEL_444;
                  case 8:
                    v171 = *(*buf + 40);
                    goto LABEL_449;
                  case 9:
                    goto LABEL_389;
                  case 10:
                    LOWORD(v174) = *(*buf + 46);
                    goto LABEL_447;
                  case 11:
                    v174 = *(*buf + 48);
                    goto LABEL_447;
                  case 12:
                    LODWORD(v173) = *(*buf + 52);
                    goto LABEL_444;
                  case 13:
                    LOWORD(v173) = *(*buf + 54);
                    goto LABEL_444;
                  case 14:
                    v173 = *(*buf + 56);
                    goto LABEL_444;
                  case 15:
                    v171 = *(*buf + 56);
                    goto LABEL_449;
                  case 16:
                    LODWORD(v173) = *(*buf + 60);
                    goto LABEL_444;
                  case 17:
                    LOWORD(v173) = *(*buf + 62);
                    goto LABEL_444;
                  case 18:
                    v174 = *(*buf + 64);
LABEL_447:
                    v165 = v174 & 0x1FF;
                    goto LABEL_503;
                  case 19:
                    v165 = (*(*buf + 64) >> 16) & 0x1FFLL;
                    goto LABEL_503;
                  default:
                    goto LABEL_504;
                }

              case 1:
                if (v161 > 24)
                {
                  if (v161 > 26)
                  {
                    switch(v161)
                    {
                      case 27:
                        goto LABEL_378;
                      case 28:
                        v165 = *(*buf + 56);
                        break;
                      case 29:
                        v165 = *(*buf + 58);
                        break;
                      default:
                        goto LABEL_504;
                    }

                    goto LABEL_503;
                  }

                  if (v161 != 25)
                  {
                    goto LABEL_367;
                  }

                  LODWORD(v167) = *(*buf + 44);
                }

                else
                {
                  if (v161 > 21)
                  {
                    if (v161 == 22)
                    {
                      goto LABEL_335;
                    }

                    if (v161 != 23)
                    {
                      v167 = *(*buf + 40);
                      goto LABEL_408;
                    }

                    goto LABEL_321;
                  }

                  if (v161 == 20)
                  {
                    v167 = *(*buf + 24);
                  }

                  else
                  {
                    if (v161 != 21)
                    {
                      goto LABEL_504;
                    }

                    LODWORD(v167) = *(*buf + 28);
                  }
                }

                goto LABEL_408;
              case 2:
                switch(v161)
                {
                  case 30:
                    goto LABEL_343;
                  case 31:
                    goto LABEL_382;
                  case 32:
                    goto LABEL_383;
                  case 33:
                    goto LABEL_404;
                  case 34:
                    goto LABEL_405;
                  case 35:
                    goto LABEL_352;
                  case 36:
                    goto LABEL_381;
                  case 37:
                    goto LABEL_293;
                  case 38:
                    goto LABEL_357;
                  case 39:
                    goto LABEL_338;
                  case 40:
                    LOWORD(v164) = *(*buf + 46);
                    goto LABEL_502;
                  case 41:
                    v164 = *(*buf + 48);
                    goto LABEL_502;
                  case 42:
                    v169 = *(*buf + 48);
                    goto LABEL_497;
                  case 43:
                    LODWORD(v164) = *(*buf + 52);
                    goto LABEL_502;
                  case 44:
                    LOWORD(v164) = *(*buf + 54);
                    goto LABEL_502;
                  case 45:
                    v164 = *(*buf + 56);
                    goto LABEL_502;
                  case 46:
                    v169 = *(*buf + 56);
                    goto LABEL_497;
                  case 47:
                    LODWORD(v164) = *(*buf + 60);
                    goto LABEL_502;
                  case 48:
                    LOWORD(v164) = *(*buf + 62);
                    goto LABEL_502;
                  case 49:
                    v164 = *(*buf + 64);
                    goto LABEL_502;
                  case 50:
                    v169 = *(*buf + 64);
                    goto LABEL_497;
                  case 51:
                    LODWORD(v164) = *(*buf + 68);
                    goto LABEL_502;
                  case 52:
                    LOWORD(v164) = *(*buf + 70);
                    goto LABEL_502;
                  case 53:
                    v164 = *(*buf + 72);
                    goto LABEL_502;
                  case 54:
                    v169 = *(*buf + 72);
                    goto LABEL_497;
                  case 55:
                    LODWORD(v164) = *(*buf + 76);
                    goto LABEL_502;
                  case 56:
                    LOWORD(v164) = *(*buf + 78);
                    goto LABEL_502;
                  case 57:
                    v164 = *(*buf + 80);
                    goto LABEL_502;
                  case 58:
                    v169 = *(*buf + 80);
                    goto LABEL_497;
                  case 59:
                    LODWORD(v164) = *(*buf + 84);
                    goto LABEL_502;
                  case 60:
                    LOWORD(v164) = *(*buf + 86);
                    goto LABEL_502;
                  case 61:
                    LOWORD(v164) = *(*buf + 88);
                    goto LABEL_502;
                  default:
                    goto LABEL_504;
                }

                goto LABEL_504;
              case 3:
                if (v161 <= 67)
                {
                  if (v161 > 64)
                  {
                    if (v161 == 65)
                    {
                      v165 = *(*buf + 32);
                    }

                    else
                    {
                      if (v161 != 66)
                      {
LABEL_352:
                        LODWORD(v164) = *(*buf + 36);
                        goto LABEL_502;
                      }

                      v165 = *(*buf + 34);
                    }
                  }

                  else
                  {
                    if (v161 == 62)
                    {
                      goto LABEL_332;
                    }

                    if (v161 == 63)
                    {
                      goto LABEL_372;
                    }

                    if (v161 != 64)
                    {
                      goto LABEL_504;
                    }

                    v165 = *(*buf + 30);
                  }

                  goto LABEL_503;
                }

                if (v161 <= 70)
                {
                  if (v161 == 68)
                  {
                    v165 = *(*buf + 38);
                  }

                  else if (v161 == 69)
                  {
                    v165 = *(*buf + 40);
                  }

                  else
                  {
                    v165 = *(*buf + 42);
                  }

                  goto LABEL_503;
                }

                if (v161 == 71)
                {
                  goto LABEL_371;
                }

                if (v161 != 72)
                {
                  if (v161 != 73)
                  {
                    goto LABEL_504;
                  }

                  LODWORD(v164) = *(*buf + 48);
                  goto LABEL_502;
                }

                goto LABEL_373;
              case 4:
                if (v161 > 78)
                {
                  if (v161 <= 81)
                  {
                    if (v161 == 79)
                    {
                      goto LABEL_309;
                    }

                    if (v161 == 80)
                    {
LABEL_367:
                      v167 = *(*buf + 48);
                    }

                    else
                    {
LABEL_378:
                      LODWORD(v167) = *(*buf + 52);
                    }

                    goto LABEL_408;
                  }

                  switch(v161)
                  {
                    case 'R':
                      v167 = *(*buf + 56);
                      goto LABEL_408;
                    case 'S':
LABEL_384:
                      v165 = *(*buf + 60);
                      break;
                    case 'T':
LABEL_342:
                      v165 = *(*buf + 62);
                      break;
                    default:
                      goto LABEL_504;
                  }

                  goto LABEL_503;
                }

                if (v161 <= 75)
                {
                  if (v161 == 74)
                  {
                    v165 = (*(*buf + 24) >> 1) & 0x3FFFFLL;
                    goto LABEL_503;
                  }

                  if (v161 != 75)
                  {
                    goto LABEL_504;
                  }

LABEL_376:
                  LODWORD(v162) = *(*buf + 28);
                  goto LABEL_377;
                }

                if (v161 == 76)
                {
                  goto LABEL_346;
                }

                if (v161 == 77)
                {
                  goto LABEL_370;
                }

                goto LABEL_325;
              case 5:
                if (v161 <= 86)
                {
                  if (v161 == 85)
                  {
LABEL_289:
                    v165 = (*(*buf + 24) >> 1) & 0x7FFFFLL;
                    goto LABEL_503;
                  }

                  if (v161 == 86)
                  {
                    goto LABEL_333;
                  }

                  goto LABEL_504;
                }

                if (v161 == 87)
                {
LABEL_335:
                  v167 = *(*buf + 32);
                }

                else
                {
                  if (v161 != 88)
                  {
                    goto LABEL_504;
                  }

LABEL_321:
                  LODWORD(v167) = *(*buf + 36);
                }

LABEL_408:
                v165 = v167 & 0xFFFFF;
                goto LABEL_503;
              case 6:
                switch(v161)
                {
                  case 'Y':
                    goto LABEL_289;
                  case 'Z':
                    LODWORD(v170) = *(*buf + 28);
                    goto LABEL_431;
                  case '[':
                    goto LABEL_344;
                  case '\\':
                    LODWORD(v170) = *(*buf + 36);
                    goto LABEL_431;
                  case ']':
                    v170 = *(*buf + 40);
                    goto LABEL_431;
                  case '^':
                    goto LABEL_393;
                  case '_':
                    goto LABEL_395;
                    goto LABEL_391;
                  case 'a':
                    goto LABEL_394;
                  case 'b':
                    goto LABEL_390;
                  case 'c':
                    goto LABEL_396;
                  case 'd':
                    v170 = *(*buf + 72);
                    goto LABEL_431;
                  case 'e':
                    goto LABEL_392;
                  case 'f':
                    v170 = *(*buf + 80);
                    goto LABEL_431;
                  case 'g':
                    LODWORD(v170) = *(*buf + 84);
                    goto LABEL_431;
                  case 'h':
                    v170 = *(*buf + 88);
                    goto LABEL_431;
                  case 'i':
                    v170 = *(*buf + 96);
                    goto LABEL_431;
                  case 'j':
                    LODWORD(v170) = *(*buf + 100);
                    goto LABEL_431;
                  default:
                    goto LABEL_504;
                }

                goto LABEL_504;
              case 7:
                switch(v161)
                {
                  case 'k':
                    v165 = *(*buf + 24) >> 1;
                    goto LABEL_503;
                  case 'l':
                    goto LABEL_343;
                  case 'm':
                    goto LABEL_382;
                  case 'n':
                    goto LABEL_383;
                  case 'o':
LABEL_404:
                    v164 = *(*buf + 32);
                    goto LABEL_502;
                  case 'p':
LABEL_405:
                    v169 = *(*buf + 32);
                    goto LABEL_497;
                  case 'q':
                    goto LABEL_352;
                  case 'r':
                    goto LABEL_293;
                  case 's':
                    goto LABEL_357;
                  case 't':
LABEL_393:
                    LODWORD(v170) = *(*buf + 44);
                    goto LABEL_431;
                  case 'u':
LABEL_395:
                    v170 = *(*buf + 48);
                    goto LABEL_431;
                  case 'v':
                    LODWORD(v170) = *(*buf + 52);
                    goto LABEL_431;
                  case 'w':
LABEL_391:
                    v170 = *(*buf + 56);
                    goto LABEL_431;
                  case 'x':
LABEL_394:
                    LODWORD(v170) = *(*buf + 60);
                    goto LABEL_431;
                  case 'y':
LABEL_390:
                    v170 = *(*buf + 64);
                    goto LABEL_431;
                  case 'z':
LABEL_396:
                    LODWORD(v170) = *(*buf + 68);
                    goto LABEL_431;
                  case '{':
LABEL_392:
                    LODWORD(v170) = *(*buf + 76);
                    goto LABEL_431;
                  default:
                    goto LABEL_504;
                }

                goto LABEL_504;
              case 8:
                if (v161 <= 125)
                {
                  if (v161 == 124)
                  {
                    v165 = *(*buf + 24);
                  }

                  else
                  {
                    if (v161 != 125)
                    {
                      goto LABEL_504;
                    }

LABEL_332:
                    v165 = *(*buf + 26);
                  }
                }

                else
                {
                  if (v161 == 126)
                  {
LABEL_333:
                    LODWORD(v168) = *(*buf + 28);
                    goto LABEL_418;
                  }

                  if (v161 == 127)
                  {
                    LODWORD(v168) = *(*buf + 32);
                    goto LABEL_418;
                  }

                  if (v161 != 128)
                  {
                    goto LABEL_504;
                  }

                  v165 = *(*buf + 32) >> 17;
                }

                goto LABEL_503;
              case 9:
                switch(v161)
                {
                  case 129:
                    v165 = (*(*buf + 24) >> 1) & 0x1FFFLL;
                    goto LABEL_503;
                  case 130:
                    v172 = *(*buf + 24);
                    goto LABEL_388;
                  case 131:
                    LODWORD(v166) = *(*buf + 28);
                    goto LABEL_500;
                  case 132:
                    LOWORD(v166) = *(*buf + 30);
                    goto LABEL_500;
                  case 133:
                    goto LABEL_268;
                  case 134:
                    goto LABEL_387;
                  case 135:
                    goto LABEL_362;
                  case 136:
                    LOWORD(v166) = *(*buf + 38);
                    goto LABEL_500;
                  case 137:
                    v166 = *(*buf + 40);
                    goto LABEL_500;
                  case 138:
                    v172 = *(*buf + 40);
                    goto LABEL_388;
                  case 139:
                    LODWORD(v166) = *(*buf + 44);
                    goto LABEL_500;
                  case 140:
                    LOWORD(v166) = *(*buf + 46);
                    goto LABEL_500;
                  case 141:
                    v166 = *(*buf + 48);
                    goto LABEL_500;
                  case 142:
                    v172 = *(*buf + 48);
                    goto LABEL_388;
                  case 143:
                    LODWORD(v166) = *(*buf + 52);
                    goto LABEL_500;
                  case 144:
                    LOWORD(v166) = *(*buf + 54);
                    goto LABEL_500;
                  case 145:
                    v166 = *(*buf + 56);
                    goto LABEL_500;
                  case 146:
                    v172 = *(*buf + 56);
                    goto LABEL_388;
                  case 147:
                    LODWORD(v166) = *(*buf + 60);
                    goto LABEL_500;
                  case 148:
                    LOWORD(v166) = *(*buf + 62);
                    goto LABEL_500;
                  case 149:
                    v166 = *(*buf + 64);
                    goto LABEL_500;
                  case 150:
                    v172 = *(*buf + 64);
                    goto LABEL_388;
                  case 151:
                    LODWORD(v166) = *(*buf + 68);
                    goto LABEL_500;
                  case 152:
                    LOWORD(v166) = *(*buf + 70);
                    goto LABEL_500;
                  case 153:
                    v166 = *(*buf + 72);
                    goto LABEL_500;
                  case 154:
                    v172 = *(*buf + 72);
                    goto LABEL_388;
                  case 155:
                    LODWORD(v166) = *(*buf + 76);
                    goto LABEL_500;
                  case 156:
                    LOWORD(v166) = *(*buf + 78);
                    goto LABEL_500;
                  case 157:
                    v166 = *(*buf + 80);
                    goto LABEL_500;
                  case 158:
                    v172 = *(*buf + 80);
                    goto LABEL_388;
                  case 159:
                    LODWORD(v166) = *(*buf + 84);
                    goto LABEL_500;
                  case 160:
                    LOWORD(v166) = *(*buf + 86);
                    goto LABEL_500;
                  default:
                    goto LABEL_504;
                }

                goto LABEL_504;
              case 10:
                if (v161 <= 163)
                {
                  switch(v161)
                  {
                    case 161:
                      v165 = *(*buf + 24);
                      break;
                    case 162:
                      v165 = *(*buf + 32) & 0x1FFFFFFFFLL;
                      break;
                    case 163:
                      v165 = (*(*buf + 32) >> 33) & 0x7FFFLL;
                      break;
                    default:
                      goto LABEL_504;
                  }

                  goto LABEL_503;
                }

                if (v161 > 165)
                {
                  if (v161 == 166)
                  {
LABEL_357:
                    v169 = *(*buf + 40);
                    goto LABEL_497;
                  }

                  if (v161 != 167)
                  {
                    goto LABEL_504;
                  }

LABEL_338:
                  LODWORD(v164) = *(*buf + 44);
                }

                else if (v161 == 164)
                {
LABEL_381:
                  LOWORD(v164) = *(*buf + 38);
                }

                else
                {
LABEL_293:
                  v164 = *(*buf + 40);
                }

                goto LABEL_502;
              case 11:
                if (v161 == 169)
                {
                  LOWORD(v164) = *(*buf + 26);
                }

                else
                {
                  if (v161 != 168)
                  {
                    goto LABEL_504;
                  }

                  LODWORD(v164) = *(*buf + 24);
                }

                goto LABEL_502;
              case 12:
                if (v161 > 173)
                {
                  if (v161 > 175)
                  {
                    if (v161 == 176)
                    {
LABEL_371:
                      v165 = *(*buf + 44);
                    }

                    else
                    {
                      if (v161 != 177)
                      {
                        goto LABEL_504;
                      }

LABEL_373:
                      v165 = *(*buf + 46);
                    }
                  }

                  else
                  {
                    if (v161 == 174)
                    {
LABEL_370:
                      LODWORD(v162) = *(*buf + 36);
                      goto LABEL_377;
                    }

LABEL_304:
                    v168 = *(*buf + 40);
LABEL_418:
                    v165 = v168 & 0x1FFFF;
                  }
                }

                else if (v161 > 171)
                {
                  if (v161 != 172)
                  {
LABEL_346:
                    v162 = *(*buf + 32);
                    goto LABEL_377;
                  }

LABEL_372:
                  v165 = *(*buf + 28);
                }

                else if (v161 == 170)
                {
LABEL_287:
                  v164 = *(*buf + 24);
LABEL_502:
                  v165 = v164 & 0x7FFF;
                }

                else
                {
                  if (v161 != 171)
                  {
                    goto LABEL_504;
                  }

LABEL_343:
                  v169 = *(*buf + 24);
LABEL_497:
                  v165 = (v169 >> 16) & 0x7FFF;
                }

                goto LABEL_503;
              case 13:
                switch(v161)
                {
                  case 178:
                    goto LABEL_287;
                  case 179:
                    goto LABEL_343;
                  case 180:
LABEL_382:
                    LODWORD(v164) = *(*buf + 28);
                    goto LABEL_502;
                  case 181:
LABEL_383:
                    LOWORD(v164) = *(*buf + 30);
                    goto LABEL_502;
                  case 182:
                    v168 = *(*buf + 32);
                    goto LABEL_418;
                  case 183:
                    LODWORD(v168) = *(*buf + 36);
                    goto LABEL_418;
                  case 184:
                    goto LABEL_304;
                  case 185:
                    v165 = *(*buf + 40) >> 17;
                    goto LABEL_503;
                  case 186:
LABEL_389:
                    LODWORD(v173) = *(*buf + 44);
                    goto LABEL_444;
                  case 187:
                    LOWORD(v173) = *(*buf + 46);
                    goto LABEL_444;
                  case 188:
                    v168 = *(*buf + 48);
                    goto LABEL_418;
                  case 189:
                    LODWORD(v168) = *(*buf + 52);
                    goto LABEL_418;
                  case 190:
                    v168 = *(*buf + 56);
                    goto LABEL_418;
                  case 191:
                    goto LABEL_384;
                  case 192:
                    goto LABEL_342;
                  default:
                    goto LABEL_504;
                }

                goto LABEL_504;
              case 14:
                if (v161 <= 194)
                {
                  if (v161 == 193)
                  {
                    v163 = *(*buf + 24);
                  }

                  else
                  {
                    if (v161 != 194)
                    {
                      goto LABEL_504;
                    }

                    LODWORD(v163) = *(*buf + 28);
                  }

LABEL_369:
                  v165 = v163 & 0x3FFFFF;
                  goto LABEL_503;
                }

                if (v161 != 195)
                {
                  if (v161 != 196)
                  {
                    goto LABEL_504;
                  }

                  LODWORD(v163) = *(*buf + 36);
                  goto LABEL_369;
                }

LABEL_344:
                v170 = *(*buf + 32);
LABEL_431:
                v165 = v170 & 0x7FFFF;
                goto LABEL_503;
              case 15:
                if (v161 <= 201)
                {
                  if (v161 <= 198)
                  {
                    if (v161 == 197)
                    {
                      v173 = *(*buf + 24);
LABEL_444:
                      v165 = v173 & 0x3FFF;
                      goto LABEL_503;
                    }

                    if (v161 != 198)
                    {
                      goto LABEL_504;
                    }

                    v171 = *(*buf + 24);
LABEL_449:
                    v165 = (v171 >> 16) & 0x3FFF;
                    goto LABEL_503;
                  }

                  if (v161 == 199)
                  {
                    LODWORD(v173) = *(*buf + 28);
                    goto LABEL_444;
                  }

                  if (v161 == 200)
                  {
                    LOWORD(v173) = *(*buf + 30);
                    goto LABEL_444;
                  }

LABEL_268:
                  v166 = *(*buf + 32);
                  goto LABEL_500;
                }

                if (v161 <= 203)
                {
                  if (v161 != 202)
                  {
LABEL_362:
                    LODWORD(v166) = *(*buf + 36);
LABEL_500:
                    v165 = v166 & 0x1FFF;
                    goto LABEL_503;
                  }

LABEL_387:
                  v172 = *(*buf + 32);
LABEL_388:
                  v165 = (v172 >> 16) & 0x1FFF;
                }

                else if (v161 == 204)
                {
                  v165 = (*(*buf + 32) >> 45) & 0x3FFFFLL;
                }

                else
                {
                  if (v161 == 205)
                  {
LABEL_325:
                    v162 = *(*buf + 40);
                  }

                  else
                  {
                    if (v161 != 206)
                    {
                      goto LABEL_504;
                    }

LABEL_309:
                    LODWORD(v162) = *(*buf + 44);
                  }

LABEL_377:
                  v165 = v162 & 0x3FFFF;
                }

LABEL_503:
                v260 = v165;
LABEL_504:
                if (**&buf[8] == 1)
                {
                  v175 = *(**&buf[16] + 24 * v161 + 200528);
                  *(v175 - 8) += v260;
                }

                else
                {
                  v176 = v106;
                  v177 = v159;
                  sub_24D769624((**&buf[16] + 24 * v161 + 200520), &v260);
                  v159 = v177;
                  v106 = v176;
                }

                v160 += 2;
                continue;
              default:
                goto LABEL_504;
            }
          }
        }

        sub_24D7AE578(v106, a1, buf);
LABEL_509:
        v18 = 0;
LABEL_510:
        v20 = v253;
LABEL_530:
        if (LODWORD(__s1[0]) >= 0x11)
        {
          v200 = sub_24D809C04();
          if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/APS/AGXPSAPSParserGen1.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2276;
            *&buf[18] = 2080;
            *&buf[20] = "tokenTypeIndex < numTokenTypes";
            _os_log_error_impl(&dword_24D764000, v200, OS_LOG_TYPE_ERROR, "%s:%u: failed assertion: %s", buf, 0x1Cu);
          }

          if (sub_24D809BF4())
          {
            sub_24D809BFC();
          }
        }

        else
        {
          v199.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v199.i64[1] = v256 - *(a1 + 104);
          *(v246 + 16 * LODWORD(__s1[0])) = vaddq_s64(v199, *(v246 + 16 * LODWORD(__s1[0])));
        }

        v253 = v20 + 1;
        v15 = v256;
        break;
      case 0xB:
        v32 = __s1[1];
        if (LODWORD(__s1[1]) > 7)
        {
          v34 = 0;
          v33 = -1;
        }

        else
        {
          v33 = word_24DA8B950[LODWORD(__s1[1])];
          v34 = dword_24DA8AEE8[LODWORD(__s1[1])];
        }

        v123 = ((*(*v257 + 225824) - *(*v257 + 225816)) >> 3) - 1 + ((*(*v257 + 225848) - *(*v257 + 225840)) << 29) - 0x100000000;
        v124 = *(&__s1[1] + 1);
        v125 = *(a1 + 192);
        if (v125 == -1)
        {
          v125 = 0;
        }

        *(a1 + 192) = v125 + 1;
        *buf = v123;
        *&buf[16] = v124;
        *&buf[24] = v125;
        *&buf[28] = v34;
        LOWORD(v263) = v33;
        *(&v263 + 1) = 0;
        if (v32 <= 7)
        {
          v126 = v241 + 56 * v32;
          if (*(v126 + 48) == 1 && (v260 = v238 + 1040 * v32, v261 = 0, std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v260, 0x80uLL), sub_24D797450(a1, *v257, 1, "dmks: %d", v32), (*(v126 + 48) & 1) != 0))
          {
            v127 = *&buf[16];
            *v126 = *buf;
            *(v126 + 16) = v127;
            *(v126 + 32) = v263;
          }

          else
          {
            v134 = *&buf[16];
            *v126 = *buf;
            *(v126 + 16) = v134;
            *(v126 + 32) = v263;
            *(v126 + 48) = 1;
          }
        }

        v20 = v253;
        if ((a4 & 2) != 0)
        {
          v135 = *(a1 + 112);
          if (*(a1 + 48) <= v135 && *(a1 + 56) >= v135)
          {
            sub_24D7979B0(*v257 + 8, buf);
            sub_24D765934((*v257 + 104), &buf[24]);
            sub_24D765A5C((*v257 + 152), &v263);
            sub_24D765934((*v257 + 128), &buf[28]);
            sub_24D769624((*v257 + 56), &buf[16]);
            LOBYTE(v260) = 0;
            sub_24D797A84(*v257 + 176, &v260);
          }
        }

        goto LABEL_529;
      case 0xC:
        v36 = __s1[1];
        if (LODWORD(__s1[1]) > 7)
        {
          goto LABEL_509;
        }

        *buf = v238 + 1040 * LODWORD(__s1[1]);
        *&buf[8] = 0;
        std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(buf, 0x80uLL);
        v37 = (v241 + 56 * v36);
        if (*(v37 + 48) != 1)
        {
          goto LABEL_509;
        }

        v243 = v17;
        v38 = 0;
        v39 = ((*(*v257 + 225824) - *(*v257 + 225816)) >> 3) - 1 + ((*(*v257 + 225848) - *(*v257 + 225840)) << 29) - 0x100000000;
        v40 = v37;
        *(v37 + 1) = v39;
        v41 = v37 + 2;
        *(v41 + 4) = 0;
        *(v41 + 16) = WORD2(__s1[1]);
        v42 = a1 + 272;
        do
        {
          if (*(v42 + 56) == 1 && *v42 == v41[4])
          {
            sub_24D7AE2B0(a1, *v257, v39, v38, 1);
          }

          ++v38;
          v42 += 96;
        }

        while (v38 != 152);
        v43 = 0;
        v44 = (a1 + 15312);
        do
        {
          if (*v44 == 1 && *(v44 - 2) == v41[4])
          {
            sub_24D7AE110(a1, *v257, v39, v43, 1);
          }

          ++v43;
          v44 += 40;
        }

        while (v43 != 16);
        if ((a4 & 2) == 0)
        {
          v45 = *(*v257 + 225816);
          if (*(a1 + 48) <= *(v45 + 8 * v40[2]) && *(a1 + 56) >= *(v45 + 8 * *v40))
          {
            sub_24D7979B0(*v257 + 8, v40);
            sub_24D7979B0(*v257 + 32, v41);
            sub_24D765934((*v257 + 104), v41 + 4);
            sub_24D765A5C((*v257 + 152), v40 + 16);
            sub_24D765934((*v257 + 128), v40 + 7);
            sub_24D769624((*v257 + 56), v40 + 2);
            sub_24D769624((*v257 + 80), v41 + 4);
            buf[0] = 0;
            sub_24D797A84(*v257 + 176, buf);
          }
        }

        v20 = v253;
        v17 = v243;
        v18 = 0;
        if (*(v40 + 48) == 1)
        {
          *(v40 + 48) = 0;
        }

        goto LABEL_530;
      case 0xD:
        v102 = v242 + 40 * (__s1[1] & 3);
        v103 = *v257;
        if (*(v102 + 32) == 1)
        {
          sub_24D797450(a1, *v257, 2, "channel: %d", __s1[1] & 3);
          v104 = *(v102 + 32);
          v103 = *v257;
        }

        else
        {
          v104 = 0;
        }

        v128 = v103[28228];
        v129 = v103[28227];
        v130 = v103[28231];
        v131 = v103[28230];
        v132 = *(a1 + 184);
        if (v132 == -1)
        {
          v132 = 0;
        }

        *(a1 + 184) = v132 + 1;
        v20 = v253;
        if ((v104 & 1) == 0)
        {
          *(v102 + 32) = 1;
        }

        v18 = 0;
        *v102 = ((v128 - v129) >> 3) - 1 + ((v130 - v131) << 29) - 0x100000000;
        *(v102 + 16) = v132;
        *(v102 + 24) = -1;
        goto LABEL_530;
      case 0xE:
        sub_24D7AE110(a1, *v257, ((*(*v257 + 225824) - *(*v257 + 225816)) >> 3) - 1 + ((*(*v257 + 225848) - *(*v257 + 225840)) << 29) - 0x100000000, __s1[1] & 3, 0);
        goto LABEL_509;
      case 0xF:
        v60 = DWORD1(__s1[1]);
        if (DWORD1(__s1[1]) <= 7)
        {
          v61 = v236 + 12 * DWORD1(__s1[1]);
          *v61 = *&__s1[1];
          *(v61 + 8) = DWORD2(__s1[1]);
          v62 = v60 - 4;
          if (v62 <= 2)
          {
            v63 = v242 + 40 * v62;
            if (*(v63 + 32) == 1 && LODWORD(__s1[1]) <= 7)
            {
              v64 = v241 + 56 * LODWORD(__s1[1]);
              if (*(v64 + 48) == 1)
              {
                *(v63 + 24) = *(v64 + 24);
              }
            }
          }
        }

        v65 = BYTE8(__s1[1]) & 0x7F;
        v66 = v239 + 48 * v65;
        v20 = v253;
        if (*(v66 + 40) != 1)
        {
          goto LABEL_529;
        }

        if (*(v66 + 28))
        {
          goto LABEL_529;
        }

        if (LODWORD(__s1[1]) > 7)
        {
          goto LABEL_529;
        }

        v67 = v241 + 56 * LODWORD(__s1[1]);
        if (*(v67 + 48) != 1)
        {
          goto LABEL_529;
        }

        if (*(v66 + 32) < *v67)
        {
          goto LABEL_529;
        }

        v68 = v238 + 1040 * LODWORD(__s1[1]);
        *(v68 + ((v65 >> 3) & 8)) |= 1 << v65;
        *(v68 + 8 * v65 + 16) = *v66;
        v69 = *(v67 + 24);
        *(v66 + 24) = v69;
        *(v66 + 28) = 1;
        if (*(v66 + 16) != 1)
        {
          goto LABEL_529;
        }

        v18 = 0;
        v70 = *(*(*v257 + 200376) + 8 * *(v66 + 8));
        *(*(*(*v257 + 1000 * v70 + 552) + (((*(*v257 + 1000 * v70 + 576) + (v70 >> 8)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(*v257 + 1000 * v70 + 576) + (v70 >> 8)) & 0x3FF)) = v69;
        goto LABEL_530;
      case 0x10:
        v29 = v256 - v252;
        v30 = *(a1 + 32);
        if (v30 >= 0x1000)
        {
          v30 = 4096;
        }

        v256 = 8 * (v30 + v30 * ((v256 >> 3) / v30));
        v231 = v231 & 0xFFFFFFFF00000000 | v17;
        sub_24D7975E0(*v257, 0, v249, v17, v29);
        if (v17)
        {
          v17 = 0;
        }

        else
        {
          v17 = v17;
        }

        v248 = ((*(*v257 + 225824) - *(*v257 + 225816)) >> 3) - 1 + ((*(*v257 + 225848) - *(*v257 + 225840)) << 29) - 0x100000000;
        v31 = v251;
        if ((v251 & 1) == 0)
        {
          v31 = 1;
        }

        v251 = v31;
        v18 = 1;
        v252 = v256;
        goto LABEL_510;
      default:
        goto LABEL_509;
    }

LABEL_537:
    if (v15 >= v14)
    {
      goto LABEL_557;
    }
  }

  v25 = (a2 + (v15 >> 3));
  if ((v15 & 7) != 0)
  {
    v26 = (*v25 | (*(v25 + 1) << 8)) >> (v15 & 7);
  }

  else
  {
    LODWORD(v26) = *v25;
  }

  sub_24D797450(a1, *v257, 0, "next 32 bits: %#010x", v26);
  ++v16;
  v5 = v5 & 0xFFFFFFFF00000000 | v17;
  sub_24D7975E0(*v257, 1, v249, v5, v256 - v252);
  if ((a4 & 8) != 0)
  {
    v27 = v251;
    if ((v251 & 1) == 0)
    {
      v27 = 1;
    }

    v251 = v27;
    v248 = ((*(*v257 + 225824) - *(*v257 + 225816)) >> 3) - 1 + ((*(*v257 + 225848) - *(*v257 + 225840)) << 29) - 0x100000000;
    if (v17)
    {
      v17 = 0;
    }

    else
    {
      v17 = v17;
    }

    v28 = *(a1 + 32);
    if (v28 >= 0x1000)
    {
      v28 = 4096;
    }

    v15 = 8 * (v28 + v28 * ((v256 >> 3) / v28));
    v256 = v15;
    v18 = 1;
    v252 = v15;
    goto LABEL_537;
  }

  if (v237)
  {
    *v237 = 2;
  }

LABEL_560:
  v210 = 0;
  v211 = 200528;
  do
  {
    if (*(*v257 + v211 - 8) != *(*v257 + v211))
    {
      v212 = (*v257 + 225280);
      v213 = (*(***v257 + 24))(**v257, v210);
      v215 = v212[56];
      v214 = v212[57];
      if (v215 >= v214)
      {
        v217 = v212[55];
        v218 = (v215 - v217) >> 3;
        if ((v218 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v219 = v214 - v217;
        v220 = v219 >> 2;
        if (v219 >> 2 <= (v218 + 1))
        {
          v220 = v218 + 1;
        }

        if (v219 >= 0x7FFFFFFFFFFFFFF8)
        {
          v221 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v221 = v220;
        }

        if (v221)
        {
          sub_24D7A2168((v212 + 55), v221);
        }

        v222 = (8 * v218);
        *v222 = v213;
        v216 = 8 * v218 + 8;
        v223 = v212[55];
        v224 = v212[56] - v223;
        v225 = v222 - v224;
        memcpy(v222 - v224, v223, v224);
        v226 = v212[55];
        v212[55] = v225;
        v212[56] = v216;
        v212[57] = 0;
        if (v226)
        {
          operator delete(v226);
        }
      }

      else
      {
        *v215 = v213;
        v216 = (v215 + 1);
      }

      v212[56] = v216;
    }

    ++v210;
    v211 += 24;
  }

  while (v210 != 207);
  sub_24D7ADF54(a1, a4, *v257, ((*(*v257 + 225824) - *(*v257 + 225816)) >> 3) - 1 + ((*(*v257 + 225848) - *(*v257 + 225840)) << 29) - 0x100000000);
  result = *v257;
  v227 = *v257 + 225280;
  *(*v257 + 225744) = v253;
  *(v227 + 472) = v256;
  *(v227 + 496) = v16;
LABEL_577:
  v228 = *MEMORY[0x277D85DE8];
  return result;
}