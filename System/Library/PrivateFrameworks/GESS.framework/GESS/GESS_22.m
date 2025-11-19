__n128 sub_24BE20BE8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F96CE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE20C18(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v5)
  {
    v7 = *(result + 8);
    *v7 = v5;
    v7[1] = v6;
  }

  v8 = *(result + 16);
  if (*(v8 + 56))
  {
    return sub_24BC98654(v8 + 32, v5, v6, a3);
  }

  return result;
}

__n128 sub_24BE20CC0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F96D30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE20D28(uint64_t *a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    sub_24BC8E01C();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_24BDD5594(a1, v6);
  }

  v13 = 0;
  v14 = 184 * v2;
  v15 = 184 * v2;
  *sub_24BCB35B4(184 * v2, a2) = &unk_285F941E8;
  *&v15 = v15 + 184;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_24BDD55F0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_24BDD56D8(&v13);
  return v12;
}

void sub_24BE20E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BDD56D8(va);
  _Unwind_Resume(a1);
}

void *sub_24BE20E8C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(result, a2);
  }

  return result;
}

void sub_24BE20F84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BE20FA0(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v21 = a2;
  v22 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xD37A6F4DE9BD37A7 * (v7 - v8);
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v21 = v7 - 23;
      if (*(v7 - 3) - *(v7 - 4) > (v8[20] - v8[19]))
      {
        v19 = &v22;
        v20 = &v21;
        return sub_24BE21368(v19, v20);
      }

      return result;
    }

LABEL_10:
    if (v10 <= 4415)
    {
      if (a5)
      {
        return sub_24BE21640(v8, v7);
      }

      else
      {
        return sub_24BE21764(v8, v7);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return sub_24BE21E3C(v8, v7, v7, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = &v8[23 * (v11 >> 1)];
    v14 = v7 - 23;
    if (v10 < 0x5C01)
    {
      sub_24BE213FC(v13, v8, v14);
      v8 = v22;
      if (a5)
      {
LABEL_17:
        v7 = v21;
        goto LABEL_18;
      }
    }

    else
    {
      sub_24BE213FC(v8, v13, v14);
      v8 = v22;
      v15 = &v22[23 * v12];
      sub_24BE213FC((v22 + 23), v15 - 23, v21 - 46);
      sub_24BE213FC((v22 + 46), v15 + 23, v21 - 69);
      sub_24BE213FC((v15 - 23), v15, v15 + 23);
      sub_24BCB35B4(v26, v22);
      v26[0] = &unk_285F941E8;
      sub_24BCB3658(v22, v15);
      sub_24BCB3658(v15, v26);
      sub_24BCD528C(v26);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v7 = v21;
    if (*(v8 - 3) - *(v8 - 4) <= (v8[20] - v8[19]))
    {
      result = sub_24BE2185C(v8, v21);
      v8 = result;
LABEL_26:
      a5 = 0;
      v22 = v8;
      a4 = -i;
      goto LABEL_2;
    }

LABEL_18:
    v16 = sub_24BE219EC(v8, v7);
    if ((v17 & 1) == 0)
    {
      goto LABEL_25;
    }

    v18 = sub_24BE21B90(v8, v16);
    result = sub_24BE21B90(v16 + 23, v7);
    if (result)
    {
      if (v18)
      {
        return result;
      }

      v21 = v16;
      v7 = v16;
    }

    else
    {
      if (!v18)
      {
LABEL_25:
        result = sub_24BE20FA0(v8, v16, a3, -i, a5 & 1);
        v8 = v16 + 23;
        goto LABEL_26;
      }

      v22 = v16 + 23;
      v8 = v16 + 23;
    }
  }

  if (v11 == 3)
  {
    v21 = v7 - 23;
    return sub_24BE213FC(v8, v8 + 23, v7 - 23);
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      v21 = v7 - 23;
      return sub_24BE214C8(v8, v8 + 23, v8 + 46, v8 + 69, v7 - 23);
    }

    goto LABEL_10;
  }

  v21 = v7 - 23;
  v25 = v8 + 23;
  v26[0] = v8;
  v23 = v7 - 23;
  v24 = v8 + 46;
  result = sub_24BE213FC(v8, v8 + 23, v8 + 46);
  if (*(v7 - 3) - *(v7 - 4) > (v8[66] - v8[65]))
  {
    result = sub_24BE21368(&v24, &v23);
    if (v24[20] - v24[19] > (v8[43] - v8[42]))
    {
      result = sub_24BE21368(&v25, &v24);
      if (v25[20] - v25[19] > (v8[20] - v8[19]))
      {
        v19 = v26;
        v20 = &v25;
        return sub_24BE21368(v19, v20);
      }
    }
  }

  return result;
}

void sub_24BE21354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24BCD528C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE21368(uint64_t *a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_24BCB35B4(v5, *a1);
  v5[0] = &unk_285F941E8;
  sub_24BCB3658(v2, v3);
  sub_24BCB3658(v3, v5);
  return sub_24BCD528C(v5);
}

void sub_24BE213E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCD528C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE213FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a1;
  v8 = a3;
  v9 = a2;
  v3 = a2[20] - a2[19];
  v4 = a3[20] - a3[19];
  if (v3 > *(a1 + 160) - *(a1 + 152))
  {
    v5 = &v10;
    if (v4 > v3)
    {
LABEL_5:
      v6 = &v8;
LABEL_9:
      sub_24BE21368(v5, v6);
      return 1;
    }

    sub_24BE21368(&v10, &v9);
    if (v8[20] - v8[19] > (v9[20] - v9[19]))
    {
      v5 = &v9;
      goto LABEL_5;
    }

    return 1;
  }

  if (v4 > v3)
  {
    sub_24BE21368(&v9, &v8);
    if ((v9[20] - v9[19]) > *(v10 + 160) - *(v10 + 152))
    {
      v5 = &v10;
      v6 = &v9;
      goto LABEL_9;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_24BE214C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = a4;
  result = sub_24BE213FC(a1, a2, a3);
  if (a4[20] - a4[19] > (a3[20] - a3[19]))
  {
    result = sub_24BE21368(&v17, &v16);
    if (v17[20] - v17[19] > (a2[20] - a2[19]))
    {
      result = sub_24BE21368(&v18, &v17);
      if ((v18[20] - v18[19]) > *(a1 + 160) - *(a1 + 152))
      {
        result = sub_24BE21368(&v19, &v18);
      }
    }
  }

  if (a5[20] - a5[19] > (a4[20] - a4[19]))
  {
    result = sub_24BE21368(&v12, &v11);
    if (v12[20] - v12[19] > (a3[20] - a3[19]))
    {
      result = sub_24BE21368(&v13, &v12);
      if (v13[20] - v13[19] > (a2[20] - a2[19]))
      {
        result = sub_24BE21368(&v14, &v13);
        if ((v14[20] - v14[19]) > *(a1 + 160) - *(a1 + 152))
        {
          return sub_24BE21368(&v15, &v14);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24BE21640(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 184;
    if ((result + 184) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = v6[42];
        v7 = v6[43];
        v10 = v6[19];
        v9 = v6[20];
        v6 = v4;
        if (v7 - v8 > (v9 - v10))
        {
          sub_24BCB35B4(v14, v4);
          v14[0] = &unk_285F941E8;
          v11 = v5;
          while (1)
          {
            sub_24BCB3658((v3 + v11 + 184), v3 + v11);
            if (!v11)
            {
              break;
            }

            v12 = *(v3 + v11 - 24) - *(v3 + v11 - 32);
            v11 -= 184;
            if (v14[20] - v14[19] <= v12)
            {
              v13 = (v3 + v11 + 184);
              goto LABEL_10;
            }
          }

          v13 = v3;
LABEL_10:
          sub_24BCB3658(v13, v14);
          result = sub_24BCD528C(v14);
        }

        v4 = (v6 + 23);
        v5 += 184;
      }

      while (v6 + 23 != a2);
    }
  }

  return result;
}

void sub_24BE2174C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCD528C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE21764(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 184;
    if ((result + 184) != a2)
    {
      do
      {
        v5 = v4;
        if (v3[43] - v3[42] > v3[20] - v3[19])
        {
          sub_24BCB35B4(v8, v4);
          v8[0] = &unk_285F941E8;
          do
          {
            sub_24BCB3658(v3 + 23, v3);
            v6 = v3 - 23;
            v7 = *(v3 - 3) - *(v3 - 4);
            v3 -= 23;
          }

          while (v8[20] - v8[19] > v7);
          sub_24BCB3658(v6 + 23, v8);
          result = sub_24BCD528C(v8);
        }

        v4 = (v5 + 23);
        v3 = v5;
      }

      while (v5 + 23 != a2);
    }
  }

  return result;
}

void sub_24BE21844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCD528C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE2185C(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v24 = a2;
  sub_24BCB35B4(v21, a1);
  v21[0] = &unk_285F941E8;
  v4 = v23 - v22;
  if (v23 - v22 <= (*(v2 - 3) - *(v2 - 4)))
  {
    v8 = a1 + 23;
    do
    {
      v6 = v8;
      if (v8 >= v2)
      {
        break;
      }

      v9 = v8[20] - v8[19];
      v8 += 23;
    }

    while (v4 <= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = (v5 + 23);
      v7 = v5[43] - v5[42];
      v5 += 23;
    }

    while (v4 <= v7);
  }

  v25 = v6;
  if (v6 < v2)
  {
    do
    {
      v11 = *(v2 - 4);
      v10 = *(v2 - 3);
      v2 -= 23;
    }

    while (v4 > v10 - v11);
    v24 = v2;
  }

  if (v6 < v2)
  {
    do
    {
      sub_24BE21368(&v25, &v24);
      v12 = v23 - v22;
      v6 = v25;
      do
      {
        v14 = *(v6 + 336);
        v13 = *(v6 + 344);
        v6 += 184;
      }

      while (v12 <= v13 - v14);
      v25 = v6;
      v15 = v24;
      do
      {
        v16 = v15 - 23;
        v24 = v15 - 23;
        v17 = *(v15 - 3) - *(v15 - 4);
        v15 -= 23;
      }

      while (v12 > v17);
    }

    while (v6 < v16);
  }

  v18 = (v6 - 184);
  if ((v6 - 184) != a1)
  {
    sub_24BCB3658(a1, v6 - 184);
  }

  sub_24BCB3658(v18, v21);
  v19 = v25;
  sub_24BCD528C(v21);
  return v19;
}

void sub_24BE219D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCD528C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BE219EC(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v23 = a2;
  sub_24BCB35B4(v20, a1);
  v4 = 0;
  v20[0] = &unk_285F941E8;
  v5 = v22 - v21;
  do
  {
    v6 = a1[v4 + 43] - a1[v4 + 42];
    v4 += 23;
  }

  while (v6 > v5);
  v7 = &a1[v4];
  v24 = &a1[v4];
  v8 = &a1[v4 - 23];
  if (v4 == 23)
  {
    if (v7 >= v2)
    {
      v9 = v23;
    }

    else
    {
      do
      {
        v9 = v2 - 23;
        v11 = *(v2 - 3) - *(v2 - 4) > v5 || v7 >= v9;
        v2 -= 23;
      }

      while (!v11);
    }
  }

  else
  {
    do
    {
      v9 = v2 - 23;
      v10 = *(v2 - 3) - *(v2 - 4);
      v2 -= 23;
    }

    while (v10 <= v5);
  }

  v23 = v9;
  if (v7 < v2)
  {
    do
    {
      sub_24BE21368(&v24, &v23);
      v12 = v22 - v21;
      v13 = v24;
      do
      {
        v15 = *(v13 + 336);
        v14 = *(v13 + 344);
        v13 += 184;
      }

      while (v14 - v15 > v12);
      v24 = v13;
      v16 = v23;
      do
      {
        v17 = v16 - 23;
        v23 = v16 - 23;
        v18 = *(v16 - 3) - *(v16 - 4);
        v16 -= 23;
      }

      while (v18 <= v12);
    }

    while (v13 < v17);
    v8 = (v13 - 184);
  }

  if (v8 != a1)
  {
    sub_24BCB3658(a1, v8);
  }

  sub_24BCB3658(v8, v20);
  sub_24BCD528C(v20);
  return v8;
}

void sub_24BE21B78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCD528C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE21B90(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v16 = a2;
  v17 = a1;
  v4 = 0xD37A6F4DE9BD37A7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_24BE213FC(a1, a1 + 23, (a2 - 184));
        return 1;
      case 4:
        v15[0] = a1;
        v19 = a1 + 46;
        v20 = a1 + 23;
        v18 = (a2 - 184);
        sub_24BE213FC(a1, a1 + 23, a1 + 46);
        if (*(v2 - 24) - *(v2 - 32) <= (a1[66] - a1[65]))
        {
          return 1;
        }

        sub_24BE21368(&v19, &v18);
        if (v19[20] - v19[19] <= (a1[43] - a1[42]))
        {
          return 1;
        }

        sub_24BE21368(&v20, &v19);
        if (v20[20] - v20[19] <= (a1[20] - a1[19]))
        {
          return 1;
        }

        v5 = v15;
        v6 = &v20;
        goto LABEL_6;
      case 5:
        sub_24BE214C8(a1, a1 + 23, a1 + 46, a1 + 69, (a2 - 184));
        return 1;
    }

LABEL_12:
    v7 = a1 + 46;
    sub_24BE213FC(a1, a1 + 23, a1 + 46);
    v8 = (a1 + 69);
    if (v8 != v2)
    {
      v9 = 0;
      while (1)
      {
        if (*(v8 + 160) - *(v8 + 152) > v7[20] - v7[19])
        {
          sub_24BCB35B4(v15, v8);
          v15[0] = &unk_285F941E8;
          v10 = v8;
          do
          {
            v11 = v10 - 23;
            sub_24BCB3658(v10, (v10 - 23));
            if (v10 - 23 == v17)
            {
              break;
            }

            v12 = *(v10 - 26) - *(v10 - 27);
            v10 -= 23;
          }

          while (v15[20] - v15[19] > v12);
          sub_24BCB3658(v11, v15);
          if (++v9 == 8)
          {
            v13 = v8 + 184 == v16;
            sub_24BCD528C(v15);
            return v13;
          }

          sub_24BCD528C(v15);
          v2 = v16;
        }

        v7 = v8;
        v8 += 184;
        if (v8 == v2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_12;
  }

  v16 = a2 - 184;
  if (*(a2 - 24) - *(a2 - 32) > (a1[20] - a1[19]))
  {
    v5 = &v17;
    v6 = &v16;
LABEL_6:
    sub_24BE21368(v5, v6);
  }

  return 1;
}

uint64_t sub_24BE21E3C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xD37A6F4DE9BD37A7 * (a2 - a1);
    if (a2 - a1 >= 185)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[23 * v10];
      do
      {
        sub_24BE21FA0(v7, a4, v9, v12);
        v12 -= 184;
        --v11;
      }

      while (v11);
    }

    v18 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*(v13 + 160) - *(v13 + 152) > (v19[20] - v19[19]))
        {
          sub_24BE21368(&v18, &v19);
          sub_24BE21FA0(v19, a4, v9, v19);
          v13 = v18;
        }

        v13 += 184;
        v18 = v13;
      }

      while (v13 != a3);
      v7 = v19;
      v8 = v6 - v19;
    }

    if (v8 >= 185)
    {
      v14 = 0xD37A6F4DE9BD37A7 * (v8 >> 3);
      do
      {
        sub_24BE2214C(v7, v6, a4, v14);
        v6 -= 184;
        v15 = v14 >= 2;
        v16 = v14-- == 2;
      }

      while (!v16 && v15);
      return v18;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_24BE21FA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xD37A6F4DE9BD37A7 * ((a4 - result) >> 3)))
    {
      v9 = (0xA6F4DE9BD37A6F4ELL * ((a4 - result) >> 3)) | 1;
      v10 = (result + 184 * v9);
      if ((0xA6F4DE9BD37A6F4ELL * ((a4 - result) >> 3) + 2) < a3)
      {
        v11 = v10[20] - v10[19] > (v10[43] - v10[42]);
        v12 = 184;
        if (v10[20] - v10[19] <= (v10[43] - v10[42]))
        {
          v12 = 0;
        }

        v10 = (v10 + v12);
        if (v11)
        {
          v9 = 0xA6F4DE9BD37A6F4ELL * ((a4 - result) >> 3) + 2;
        }
      }

      if ((v10[20] - v10[19]) <= *(a4 + 160) - *(a4 + 152))
      {
        sub_24BCB35B4(v19, a4);
        v19[0] = &unk_285F941E8;
        do
        {
          v13 = v10;
          sub_24BCB3658(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v14 = (2 * v9) | 1;
          v10 = (v6 + 184 * v14);
          if (2 * v9 + 2 < a3)
          {
            v15 = v10[20] - v10[19];
            v16 = v10[43] - v10[42];
            v17 = v15 > v16;
            if (v15 <= v16)
            {
              v18 = 0;
            }

            else
            {
              v18 = 184;
            }

            v10 = (v10 + v18);
            if (v17)
            {
              v14 = 2 * v9 + 2;
            }
          }

          v5 = v13;
          v9 = v14;
        }

        while ((v10[20] - v10[19]) <= v19[20] - v19[19]);
        sub_24BCB3658(v13, v19);
        return sub_24BCD528C(v19);
      }
    }
  }

  return result;
}

void sub_24BE22134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCD528C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE2214C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    sub_24BCB35B4(v11, result);
    v11[0] = &unk_285F941E8;
    v8 = sub_24BE22254(v7, a3, a4);
    v9 = v8;
    v10 = (a2 - 184);
    if (v8 == v10)
    {
      sub_24BCB3658(v8, v11);
    }

    else
    {
      sub_24BCB3658(v8, v10);
      sub_24BCB3658(v10, v11);
      sub_24BE222FC(v7, (v9 + 23), a3, 0xD37A6F4DE9BD37A7 * (v9 + 23 - v7));
    }

    return sub_24BCD528C(v11);
  }

  return result;
}

void sub_24BE22240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCD528C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE22254(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = &a1[23 * v4];
    v7 = (v6 + 23);
    if (2 * v4 + 2 >= a3)
    {
      v4 = (2 * v4) | 1;
    }

    else
    {
      v8 = v6[43] - v6[42];
      v9 = v6[66] - v6[65];
      v10 = v6 + 46;
      if (v8 <= v9)
      {
        v4 = (2 * v4) | 1;
      }

      else
      {
        v7 = v10;
        v4 = 2 * v4 + 2;
      }
    }

    sub_24BCB3658(a1, v7);
    a1 = v7;
  }

  while (v4 <= v5);
  return v7;
}

uint64_t sub_24BE222FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = result + 184 * (v4 >> 1);
    if (*(v7 + 160) - *(v7 + 152) > *(a2 - 24) - *(a2 - 32))
    {
      v8 = (a2 - 184);
      sub_24BCB35B4(v10, a2 - 184);
      v10[0] = &unk_285F941E8;
      do
      {
        v9 = v7;
        sub_24BCB3658(v8, v7);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = v5 + 184 * v6;
        v8 = v9;
      }

      while (*(v7 + 160) - *(v7 + 152) > v10[20] - v10[19]);
      sub_24BCB3658(v9, v10);
      return sub_24BCD528C(v10);
    }
  }

  return result;
}

void sub_24BE223EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCD528C(va);
  _Unwind_Resume(a1);
}

void *sub_24BE22470(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95D10;
  sub_24BCB35B4((a1 + 3), a2);
  a1[3] = &unk_285F941E8;
  return a1;
}

void *sub_24BE224E8(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (0xD37A6F4DE9BD37A7 * ((v2 - v3) >> 3) < a2)
  {
    v4 = 0xD37A6F4DE9BD37A7 * ((v3 - *result) >> 3);
    if (v4 + a2 <= 0x1642C8590B21642)
    {
      v5 = 0xD37A6F4DE9BD37A7 * ((v2 - *result) >> 3);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0xB21642C8590B21)
      {
        v7 = 0x1642C8590B21642;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        sub_24BDD5594(result, v7);
      }

      sub_24BCD5258(184 * v4);
    }

    sub_24BC8E01C();
  }

  if (a2)
  {
    sub_24BCD5258(v3);
  }

  result[1] = v3;
  return result;
}

void sub_24BE22664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BDD56D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE22690(uint64_t *a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    sub_24BC8E01C();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_24BDD5594(a1, v6);
  }

  v13 = 0;
  v14 = 184 * v2;
  v15 = 184 * v2;
  *sub_24BCB35B4(184 * v2, a2) = &unk_285F93258;
  *&v15 = v15 + 184;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_24BE227F4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_24BDD56D8(&v13);
  return v12;
}

void sub_24BE227E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BDD56D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE227F4(uint64_t a1, uint64_t a2, uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_24BCB35B4(a4 + v7, v8);
      *(a4 + v7) = &unk_285F93258;
      v8 += 184;
      v7 += 184;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 23;
        result = (*v12)(v6);
        v10 += 23;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_24BE228C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB94D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BE228DC(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v21 = a2;
  v22 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xD37A6F4DE9BD37A7 * (v7 - v8);
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v21 = v7 - 23;
      if (*(v7 - 3) - *(v7 - 4) > (v8[20] - v8[19]))
      {
        v19 = &v22;
        v20 = &v21;
        return sub_24BE22CA4(v19, v20);
      }

      return result;
    }

LABEL_10:
    if (v10 <= 4415)
    {
      if (a5)
      {
        return sub_24BE22F7C(v8, v7);
      }

      else
      {
        return sub_24BE230A0(v8, v7);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return sub_24BE23778(v8, v7, v7, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = &v8[23 * (v11 >> 1)];
    v14 = v7 - 23;
    if (v10 < 0x5C01)
    {
      sub_24BE22D38(v13, v8, v14);
      v8 = v22;
      if (a5)
      {
LABEL_17:
        v7 = v21;
        goto LABEL_18;
      }
    }

    else
    {
      sub_24BE22D38(v8, v13, v14);
      v8 = v22;
      v15 = &v22[23 * v12];
      sub_24BE22D38((v22 + 23), v15 - 23, v21 - 46);
      sub_24BE22D38((v22 + 46), v15 + 23, v21 - 69);
      sub_24BE22D38((v15 - 23), v15, v15 + 23);
      sub_24BCB35B4(v26, v22);
      v26[0] = &unk_285F93258;
      sub_24BCB3658(v22, v15);
      sub_24BCB3658(v15, v26);
      sub_24BCB10EC(v26);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v7 = v21;
    if (*(v8 - 3) - *(v8 - 4) <= (v8[20] - v8[19]))
    {
      result = sub_24BE23198(v8, v21);
      v8 = result;
LABEL_26:
      a5 = 0;
      v22 = v8;
      a4 = -i;
      goto LABEL_2;
    }

LABEL_18:
    v16 = sub_24BE23328(v8, v7);
    if ((v17 & 1) == 0)
    {
      goto LABEL_25;
    }

    v18 = sub_24BE234CC(v8, v16);
    result = sub_24BE234CC(v16 + 23, v7);
    if (result)
    {
      if (v18)
      {
        return result;
      }

      v21 = v16;
      v7 = v16;
    }

    else
    {
      if (!v18)
      {
LABEL_25:
        result = sub_24BE228DC(v8, v16, a3, -i, a5 & 1);
        v8 = v16 + 23;
        goto LABEL_26;
      }

      v22 = v16 + 23;
      v8 = v16 + 23;
    }
  }

  if (v11 == 3)
  {
    v21 = v7 - 23;
    return sub_24BE22D38(v8, v8 + 23, v7 - 23);
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      v21 = v7 - 23;
      return sub_24BE22E04(v8, v8 + 23, v8 + 46, v8 + 69, v7 - 23);
    }

    goto LABEL_10;
  }

  v21 = v7 - 23;
  v25 = v8 + 23;
  v26[0] = v8;
  v23 = v7 - 23;
  v24 = v8 + 46;
  result = sub_24BE22D38(v8, v8 + 23, v8 + 46);
  if (*(v7 - 3) - *(v7 - 4) > (v8[66] - v8[65]))
  {
    result = sub_24BE22CA4(&v24, &v23);
    if (v24[20] - v24[19] > (v8[43] - v8[42]))
    {
      result = sub_24BE22CA4(&v25, &v24);
      if (v25[20] - v25[19] > (v8[20] - v8[19]))
      {
        v19 = v26;
        v20 = &v25;
        return sub_24BE22CA4(v19, v20);
      }
    }
  }

  return result;
}

void sub_24BE22C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24BCB10EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE22CA4(uint64_t *a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_24BCB35B4(v5, *a1);
  v5[0] = &unk_285F93258;
  sub_24BCB3658(v2, v3);
  sub_24BCB3658(v3, v5);
  return sub_24BCB10EC(v5);
}

void sub_24BE22D24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCB10EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE22D38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a1;
  v8 = a3;
  v9 = a2;
  v3 = a2[20] - a2[19];
  v4 = a3[20] - a3[19];
  if (v3 > *(a1 + 160) - *(a1 + 152))
  {
    v5 = &v10;
    if (v4 > v3)
    {
LABEL_5:
      v6 = &v8;
LABEL_9:
      sub_24BE22CA4(v5, v6);
      return 1;
    }

    sub_24BE22CA4(&v10, &v9);
    if (v8[20] - v8[19] > (v9[20] - v9[19]))
    {
      v5 = &v9;
      goto LABEL_5;
    }

    return 1;
  }

  if (v4 > v3)
  {
    sub_24BE22CA4(&v9, &v8);
    if ((v9[20] - v9[19]) > *(v10 + 160) - *(v10 + 152))
    {
      v5 = &v10;
      v6 = &v9;
      goto LABEL_9;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_24BE22E04(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = a4;
  result = sub_24BE22D38(a1, a2, a3);
  if (a4[20] - a4[19] > (a3[20] - a3[19]))
  {
    result = sub_24BE22CA4(&v17, &v16);
    if (v17[20] - v17[19] > (a2[20] - a2[19]))
    {
      result = sub_24BE22CA4(&v18, &v17);
      if ((v18[20] - v18[19]) > *(a1 + 160) - *(a1 + 152))
      {
        result = sub_24BE22CA4(&v19, &v18);
      }
    }
  }

  if (a5[20] - a5[19] > (a4[20] - a4[19]))
  {
    result = sub_24BE22CA4(&v12, &v11);
    if (v12[20] - v12[19] > (a3[20] - a3[19]))
    {
      result = sub_24BE22CA4(&v13, &v12);
      if (v13[20] - v13[19] > (a2[20] - a2[19]))
      {
        result = sub_24BE22CA4(&v14, &v13);
        if ((v14[20] - v14[19]) > *(a1 + 160) - *(a1 + 152))
        {
          return sub_24BE22CA4(&v15, &v14);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24BE22F7C(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 184;
    if ((result + 184) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = v6[42];
        v7 = v6[43];
        v10 = v6[19];
        v9 = v6[20];
        v6 = v4;
        if (v7 - v8 > (v9 - v10))
        {
          sub_24BCB35B4(v14, v4);
          v14[0] = &unk_285F93258;
          v11 = v5;
          while (1)
          {
            sub_24BCB3658((v3 + v11 + 184), v3 + v11);
            if (!v11)
            {
              break;
            }

            v12 = *(v3 + v11 - 24) - *(v3 + v11 - 32);
            v11 -= 184;
            if (v14[20] - v14[19] <= v12)
            {
              v13 = (v3 + v11 + 184);
              goto LABEL_10;
            }
          }

          v13 = v3;
LABEL_10:
          sub_24BCB3658(v13, v14);
          result = sub_24BCB10EC(v14);
        }

        v4 = (v6 + 23);
        v5 += 184;
      }

      while (v6 + 23 != a2);
    }
  }

  return result;
}

void sub_24BE23088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCB10EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE230A0(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 184;
    if ((result + 184) != a2)
    {
      do
      {
        v5 = v4;
        if (v3[43] - v3[42] > v3[20] - v3[19])
        {
          sub_24BCB35B4(v8, v4);
          v8[0] = &unk_285F93258;
          do
          {
            sub_24BCB3658(v3 + 23, v3);
            v6 = v3 - 23;
            v7 = *(v3 - 3) - *(v3 - 4);
            v3 -= 23;
          }

          while (v8[20] - v8[19] > v7);
          sub_24BCB3658(v6 + 23, v8);
          result = sub_24BCB10EC(v8);
        }

        v4 = (v5 + 23);
        v3 = v5;
      }

      while (v5 + 23 != a2);
    }
  }

  return result;
}

void sub_24BE23180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCB10EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE23198(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v24 = a2;
  sub_24BCB35B4(v21, a1);
  v21[0] = &unk_285F93258;
  v4 = v23 - v22;
  if (v23 - v22 <= (*(v2 - 3) - *(v2 - 4)))
  {
    v8 = a1 + 23;
    do
    {
      v6 = v8;
      if (v8 >= v2)
      {
        break;
      }

      v9 = v8[20] - v8[19];
      v8 += 23;
    }

    while (v4 <= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = (v5 + 23);
      v7 = v5[43] - v5[42];
      v5 += 23;
    }

    while (v4 <= v7);
  }

  v25 = v6;
  if (v6 < v2)
  {
    do
    {
      v11 = *(v2 - 4);
      v10 = *(v2 - 3);
      v2 -= 23;
    }

    while (v4 > v10 - v11);
    v24 = v2;
  }

  if (v6 < v2)
  {
    do
    {
      sub_24BE22CA4(&v25, &v24);
      v12 = v23 - v22;
      v6 = v25;
      do
      {
        v14 = *(v6 + 336);
        v13 = *(v6 + 344);
        v6 += 184;
      }

      while (v12 <= v13 - v14);
      v25 = v6;
      v15 = v24;
      do
      {
        v16 = v15 - 23;
        v24 = v15 - 23;
        v17 = *(v15 - 3) - *(v15 - 4);
        v15 -= 23;
      }

      while (v12 > v17);
    }

    while (v6 < v16);
  }

  v18 = (v6 - 184);
  if ((v6 - 184) != a1)
  {
    sub_24BCB3658(a1, v6 - 184);
  }

  sub_24BCB3658(v18, v21);
  v19 = v25;
  sub_24BCB10EC(v21);
  return v19;
}

void sub_24BE23310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCB10EC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BE23328(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v23 = a2;
  sub_24BCB35B4(v20, a1);
  v4 = 0;
  v20[0] = &unk_285F93258;
  v5 = v22 - v21;
  do
  {
    v6 = a1[v4 + 43] - a1[v4 + 42];
    v4 += 23;
  }

  while (v6 > v5);
  v7 = &a1[v4];
  v24 = &a1[v4];
  v8 = &a1[v4 - 23];
  if (v4 == 23)
  {
    if (v7 >= v2)
    {
      v9 = v23;
    }

    else
    {
      do
      {
        v9 = v2 - 23;
        v11 = *(v2 - 3) - *(v2 - 4) > v5 || v7 >= v9;
        v2 -= 23;
      }

      while (!v11);
    }
  }

  else
  {
    do
    {
      v9 = v2 - 23;
      v10 = *(v2 - 3) - *(v2 - 4);
      v2 -= 23;
    }

    while (v10 <= v5);
  }

  v23 = v9;
  if (v7 < v2)
  {
    do
    {
      sub_24BE22CA4(&v24, &v23);
      v12 = v22 - v21;
      v13 = v24;
      do
      {
        v15 = *(v13 + 336);
        v14 = *(v13 + 344);
        v13 += 184;
      }

      while (v14 - v15 > v12);
      v24 = v13;
      v16 = v23;
      do
      {
        v17 = v16 - 23;
        v23 = v16 - 23;
        v18 = *(v16 - 3) - *(v16 - 4);
        v16 -= 23;
      }

      while (v18 <= v12);
    }

    while (v13 < v17);
    v8 = (v13 - 184);
  }

  if (v8 != a1)
  {
    sub_24BCB3658(a1, v8);
  }

  sub_24BCB3658(v8, v20);
  sub_24BCB10EC(v20);
  return v8;
}

void sub_24BE234B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCB10EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE234CC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v16 = a2;
  v17 = a1;
  v4 = 0xD37A6F4DE9BD37A7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_24BE22D38(a1, a1 + 23, (a2 - 184));
        return 1;
      case 4:
        v15[0] = a1;
        v19 = a1 + 46;
        v20 = a1 + 23;
        v18 = (a2 - 184);
        sub_24BE22D38(a1, a1 + 23, a1 + 46);
        if (*(v2 - 24) - *(v2 - 32) <= (a1[66] - a1[65]))
        {
          return 1;
        }

        sub_24BE22CA4(&v19, &v18);
        if (v19[20] - v19[19] <= (a1[43] - a1[42]))
        {
          return 1;
        }

        sub_24BE22CA4(&v20, &v19);
        if (v20[20] - v20[19] <= (a1[20] - a1[19]))
        {
          return 1;
        }

        v5 = v15;
        v6 = &v20;
        goto LABEL_6;
      case 5:
        sub_24BE22E04(a1, a1 + 23, a1 + 46, a1 + 69, (a2 - 184));
        return 1;
    }

LABEL_12:
    v7 = a1 + 46;
    sub_24BE22D38(a1, a1 + 23, a1 + 46);
    v8 = (a1 + 69);
    if (v8 != v2)
    {
      v9 = 0;
      while (1)
      {
        if (*(v8 + 160) - *(v8 + 152) > v7[20] - v7[19])
        {
          sub_24BCB35B4(v15, v8);
          v15[0] = &unk_285F93258;
          v10 = v8;
          do
          {
            v11 = v10 - 23;
            sub_24BCB3658(v10, (v10 - 23));
            if (v10 - 23 == v17)
            {
              break;
            }

            v12 = *(v10 - 26) - *(v10 - 27);
            v10 -= 23;
          }

          while (v15[20] - v15[19] > v12);
          sub_24BCB3658(v11, v15);
          if (++v9 == 8)
          {
            v13 = v8 + 184 == v16;
            sub_24BCB10EC(v15);
            return v13;
          }

          sub_24BCB10EC(v15);
          v2 = v16;
        }

        v7 = v8;
        v8 += 184;
        if (v8 == v2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_12;
  }

  v16 = a2 - 184;
  if (*(a2 - 24) - *(a2 - 32) > (a1[20] - a1[19]))
  {
    v5 = &v17;
    v6 = &v16;
LABEL_6:
    sub_24BE22CA4(v5, v6);
  }

  return 1;
}

uint64_t sub_24BE23778(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xD37A6F4DE9BD37A7 * (a2 - a1);
    if (a2 - a1 >= 185)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[23 * v10];
      do
      {
        sub_24BE238DC(v7, a4, v9, v12);
        v12 -= 184;
        --v11;
      }

      while (v11);
    }

    v18 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*(v13 + 160) - *(v13 + 152) > (v19[20] - v19[19]))
        {
          sub_24BE22CA4(&v18, &v19);
          sub_24BE238DC(v19, a4, v9, v19);
          v13 = v18;
        }

        v13 += 184;
        v18 = v13;
      }

      while (v13 != a3);
      v7 = v19;
      v8 = v6 - v19;
    }

    if (v8 >= 185)
    {
      v14 = 0xD37A6F4DE9BD37A7 * (v8 >> 3);
      do
      {
        sub_24BE23A88(v7, v6, a4, v14);
        v6 -= 184;
        v15 = v14 >= 2;
        v16 = v14-- == 2;
      }

      while (!v16 && v15);
      return v18;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_24BE238DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xD37A6F4DE9BD37A7 * ((a4 - result) >> 3)))
    {
      v9 = (0xA6F4DE9BD37A6F4ELL * ((a4 - result) >> 3)) | 1;
      v10 = (result + 184 * v9);
      if ((0xA6F4DE9BD37A6F4ELL * ((a4 - result) >> 3) + 2) < a3)
      {
        v11 = v10[20] - v10[19] > (v10[43] - v10[42]);
        v12 = 184;
        if (v10[20] - v10[19] <= (v10[43] - v10[42]))
        {
          v12 = 0;
        }

        v10 = (v10 + v12);
        if (v11)
        {
          v9 = 0xA6F4DE9BD37A6F4ELL * ((a4 - result) >> 3) + 2;
        }
      }

      if ((v10[20] - v10[19]) <= *(a4 + 160) - *(a4 + 152))
      {
        sub_24BCB35B4(v19, a4);
        v19[0] = &unk_285F93258;
        do
        {
          v13 = v10;
          sub_24BCB3658(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v14 = (2 * v9) | 1;
          v10 = (v6 + 184 * v14);
          if (2 * v9 + 2 < a3)
          {
            v15 = v10[20] - v10[19];
            v16 = v10[43] - v10[42];
            v17 = v15 > v16;
            if (v15 <= v16)
            {
              v18 = 0;
            }

            else
            {
              v18 = 184;
            }

            v10 = (v10 + v18);
            if (v17)
            {
              v14 = 2 * v9 + 2;
            }
          }

          v5 = v13;
          v9 = v14;
        }

        while ((v10[20] - v10[19]) <= v19[20] - v19[19]);
        sub_24BCB3658(v13, v19);
        return sub_24BCB10EC(v19);
      }
    }
  }

  return result;
}

void sub_24BE23A70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCB10EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE23A88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    sub_24BCB35B4(v11, result);
    v11[0] = &unk_285F93258;
    v8 = sub_24BE22254(v7, a3, a4);
    v9 = v8;
    v10 = (a2 - 184);
    if (v8 == v10)
    {
      sub_24BCB3658(v8, v11);
    }

    else
    {
      sub_24BCB3658(v8, v10);
      sub_24BCB3658(v10, v11);
      sub_24BE23B90(v7, (v9 + 23), a3, 0xD37A6F4DE9BD37A7 * (v9 + 23 - v7));
    }

    return sub_24BCB10EC(v11);
  }

  return result;
}

void sub_24BE23B7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCB10EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE23B90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = result + 184 * (v4 >> 1);
    if (*(v7 + 160) - *(v7 + 152) > *(a2 - 24) - *(a2 - 32))
    {
      v8 = (a2 - 184);
      sub_24BCB35B4(v10, a2 - 184);
      v10[0] = &unk_285F93258;
      do
      {
        v9 = v7;
        sub_24BCB3658(v8, v7);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = v5 + 184 * v6;
        v8 = v9;
      }

      while (*(v7 + 160) - *(v7 + 152) > v10[20] - v10[19]);
      sub_24BCB3658(v9, v10);
      return sub_24BCB10EC(v10);
    }
  }

  return result;
}

void sub_24BE23C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCB10EC(va);
  _Unwind_Resume(a1);
}

void *sub_24BE23D04(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95150;
  sub_24BCB35B4((a1 + 3), a2);
  a1[3] = &unk_285F93258;
  return a1;
}

void *sub_24BE23D7C(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (0xD37A6F4DE9BD37A7 * ((v2 - v3) >> 3) < a2)
  {
    v4 = 0xD37A6F4DE9BD37A7 * ((v3 - *result) >> 3);
    if (v4 + a2 <= 0x1642C8590B21642)
    {
      v5 = 0xD37A6F4DE9BD37A7 * ((v2 - *result) >> 3);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0xB21642C8590B21)
      {
        v7 = 0x1642C8590B21642;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        sub_24BDD5594(result, v7);
      }

      sub_24BCB10B4(184 * v4);
    }

    sub_24BC8E01C();
  }

  if (a2)
  {
    sub_24BCB10B4(v3);
  }

  result[1] = v3;
  return result;
}

void sub_24BE23EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BDD56D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE23F7C(uint64_t a1)
{
  sub_24BDD4E90(&__p, 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2));
  if (*(a1 + 136) == *(a1 + 128))
  {
    goto LABEL_18;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = sub_24BC9ECE4(a1, *(a1 + 180), v2);
    if ((*v4 & v5) != 0)
    {
      *(__p + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v2);
    }

    v7 = *(a1 + 128);
    v6 = *(a1 + 136);
    v2 = v3;
  }

  while (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 2) > v3++);
  if (v6 == v7)
  {
LABEL_18:
    v11 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = sub_24BC9ECE4(a1, *(a1 + 180), v9);
      if ((*v12 & v13) != 0 && ((*(__p + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        v11 = (v11 + 1);
        v22 = v10;
        v14 = v10;
LABEL_13:
        *(__p + ((v14 >> 3) & 0x1FFFFFF8)) |= 1 << v14;
        v15 = sub_24BCB9024(a1 + 104, &v22);
        v16 = sub_24BCB9024(a1 + 104, v15);
        sub_24BCB9454(v21, (a1 + 104), (v16 + 12));
        while (1)
        {
          v17 = sub_24BCB947C(v21);
          v14 = v17;
          if (v17 == -1)
          {
            break;
          }

          v18 = sub_24BC9ECE4(a1, *(a1 + 180), v17);
          if ((*v18 & v19) != 0)
          {
            v22 = v14;
            if (v14 != v10)
            {
              goto LABEL_13;
            }

            break;
          }
        }
      }

      v9 = ++v10;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2) > v10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_24BE24168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE24190(uint64_t a1)
{
  sub_24BC9FEFC(&__p, (*(a1 + 160) - *(a1 + 152)) >> 2);
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  if (*(a1 + 160) == *(a1 + 152))
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v2 >> 6;
      v6 = 1 << v2;
      if ((*(__p + (v2 >> 6)) & (1 << v2)) == 0)
      {
        __src = v4;
        sub_24BE2BD5C(v16, &__src, 1uLL);
        v3 = (v3 + 1);
        *(__p + v5) |= v6;
        while (*(&v17 + 1))
        {
          __src = *(*(*(&v16[0] + 1) + ((v17 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v17 & 0x3FF));
          *&v17 = v17 + 1;
          --*(&v17 + 1);
          if (v17 >= 0x800)
          {
            operator delete(**(&v16[0] + 1));
            *(&v16[0] + 1) += 8;
            *&v17 = v17 - 1024;
          }

          v7 = *sub_24BCB9038(a1 + 104, &__src);
          v14 = v7;
          do
          {
            v14 = *(sub_24BCB9024(a1 + 104, &v14) + 4);
            v8 = sub_24BCB9024(a1 + 104, &v14);
            v9 = sub_24BC9ECE4(a1, *(a1 + 180), *v8);
            if ((*v9 & v10) == 0)
            {
              v11 = sub_24BCB9024(a1 + 104, &v14);
              v13 = *(sub_24BCB9024(a1 + 104, v11) + 16);
              if (((*(__p + ((v13 >> 3) & 0x1FFFFFF8)) >> v13) & 1) == 0)
              {
                sub_24BD94C40(v16, &v13);
                *(__p + ((v13 >> 3) & 0x1FFFFFF8)) |= 1 << v13;
              }
            }
          }

          while (v14 != v7);
        }
      }

      v2 = ++v4;
    }

    while (v4 < ((*(a1 + 160) - *(a1 + 152)) >> 2));
  }

  sub_24BCA102C(v16);
  if (__p)
  {
    operator delete(__p);
  }

  return v3;
}

void sub_24BE243A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p)
{
  sub_24BCA102C(&a11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BE243D0(uint64_t a1)
{
  if (*(a1 + 136) != *(a1 + 128))
  {
    v22 = v4;
    v23 = v3;
    v24 = v1;
    v25 = v2;
    LODWORD(v6) = 0;
    v7 = 0.0;
    do
    {
      v21 = v6;
      v8 = *(sub_24BCB9024(a1 + 104, &v21) + 12);
      v9 = sub_24BCB9024(a1 + 104, &v21);
      v10 = *(sub_24BCB9024(a1 + 104, v9) + 12);
      v11 = (*(a1 + 8) + 16 * *(a1 + 176));
      v13 = *v11;
      v12 = v11[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v12);
        v14 = (*(a1 + 8) + 16 * *(a1 + 176));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(v13 + 40) + 16 * v10);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v20 = v17;
          sub_24BC9EC78(v15);
          v17 = v20;
        }

        v13 = v16;
      }

      else
      {
        v17 = *(*(v13 + 40) + 16 * v10);
      }

      v18 = vsubq_f32(v17, *(*(v13 + 40) + 16 * v8));
      v19 = vmulq_f32(v18, v18);
      v19.i32[3] = 0;
      v7 = v7 + sqrtf(vaddv_f32(*&vpaddq_f32(v19, v19)));
      v6 = (v6 + 1);
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2) > v6);
  }
}

uint64_t sub_24BE24528(uint64_t result)
{
  v1 = (result + 104);
  if (*(result + 112) != *(result + 104))
  {
    v2 = result;
    LODWORD(v3) = 0;
    v4 = 0.0;
    do
    {
      v5 = v3;
      sub_24BCB9454(v6, v1, &v5);
      while (1)
      {
        result = sub_24BCB947C(v6);
        if (result == -1)
        {
          break;
        }

        v4 = v4 + 1.0;
      }

      v3 = (v3 + 1);
    }

    while (v3 < (*(v2 + 112) - *(v2 + 104)) >> 2);
  }

  return result;
}

uint64_t sub_24BE245D0(uint64_t result)
{
  v1 = (result + 104);
  if (*(result + 112) != *(result + 104))
  {
    v2 = result;
    LODWORD(v3) = 0;
    v4 = 0.0;
    do
    {
      v11 = v3;
      sub_24BCB9454(v12, v1, &v11);
      result = sub_24BCB947C(v12);
      if (result == -1)
      {
        v9 = 0;
      }

      else
      {
        v5 = 0;
        v6 = -3;
        do
        {
          if (v5)
          {
            v5 = 1;
          }

          else
          {
            v7 = sub_24BC9ECE4(v2, *(v2 + 180), result);
            v5 = (v8 & *v7) != 0;
          }

          result = sub_24BCB947C(v12);
          ++v6;
        }

        while (result != -1);
        if (v5)
        {
          goto LABEL_13;
        }

        v9 = v6 + 3;
      }

      v6 = v9 - 6;
LABEL_13:
      if (v6 >= 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = -v6;
      }

      v4 = v4 + v10;
      v3 = (v3 + 1);
    }

    while (v3 < (*(v2 + 112) - *(v2 + 104)) >> 2);
  }

  return result;
}

void sub_24BE246DC(uint64_t a1)
{
  if (*(a1 + 136) != *(a1 + 128))
  {
    v23 = v4;
    v24 = v3;
    v25 = v1;
    v26 = v2;
    LODWORD(v6) = 0;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      v22 = v6;
      v9 = *(sub_24BCB9024(a1 + 104, &v22) + 12);
      v10 = sub_24BCB9024(a1 + 104, &v22);
      v11 = *(sub_24BCB9024(a1 + 104, v10) + 12);
      v12 = (*(a1 + 8) + 16 * *(a1 + 176));
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v13);
        v15 = (*(a1 + 8) + 16 * *(a1 + 176));
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v14 + 40) + 16 * v11);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v21 = v18;
          sub_24BC9EC78(v16);
          v18 = v21;
        }

        v14 = v17;
      }

      else
      {
        v18 = *(*(v14 + 40) + 16 * v11);
      }

      v19 = vsubq_f32(v18, *(*(v14 + 40) + 16 * v9));
      v20 = vmulq_f32(v19, v19);
      v20.i32[3] = 0;
      v20.f32[0] = vaddv_f32(*&vpaddq_f32(v20, v20));
      v8 = v8 + v20.f32[0];
      v7 = v7 + sqrtf(v20.f32[0]);
      v6 = (v6 + 1);
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2) > v6);
  }
}

uint64_t sub_24BE24858(uint64_t a1, double *a2, double *a3)
{
  if (*(a1 + 136) == *(a1 + 128))
  {
    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0.0;
  v9 = 1;
  v10 = 0.0;
  do
  {
    sub_24BCDAEE4(a1, v6);
    v12 = v11;
    v10 = v10 + v12 * v12;
    ++v7;
    v8 = v8 + v12;
    v6 = v9;
  }

  while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2) > v9++);
  if (!v7)
  {
LABEL_6:
    v14 = 0.0;
    v15 = 0.0;
  }

  else
  {
    v14 = v8 / v7;
    v15 = sqrt(v10 / v7 - v14 * v14);
  }

  *a2 = v14;
  *a3 = v15;
  return 1;
}

void sub_24BE2493C(uint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  v4 = *(a1 + 104);
  v3 = *(a1 + 112);
  if (v3 == v4)
  {
    v7.i64[0] = 0x80000000800000;
    v7.i64[1] = 0x80000000800000;
    v8 = vnegq_f32(v7);
  }

  else
  {
    v6 = 0;
    v7.i64[0] = 0x80000000800000;
    v7.i64[1] = 0x80000000800000;
    v8 = vnegq_f32(v7);
    v9 = 1;
    do
    {
      v10 = (*(a1 + 8) + 16 * *(a1 + 176));
      v12 = *v10;
      v11 = v10[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = v8;
        v15 = v7;
        sub_24BC9EC78(v11);
        v8 = v14;
        v7 = v15;
        v4 = *(a1 + 104);
        v3 = *(a1 + 112);
      }

      v13 = *(*(v12 + 40) + 16 * v6);
      v8 = vminq_f32(v8, v13);
      v7 = vmaxq_f32(v7, v13);
      v6 = v9++;
    }

    while (v6 < (v3 - v4) >> 2);
  }

  *a2 = v8;
  a2[1] = v7;
}

float32x4_t **sub_24BE249F8@<X0>(float32x4_t **result@<X0>, float32x4_t *a2@<X8>)
{
  v2 = *result;
  v3 = result[1] - *result;
  if (v3)
  {
    v4 = v3 >> 4;
    v5.i64[0] = 0x80000000800000;
    v5.i64[1] = 0x80000000800000;
    v6 = vnegq_f32(v5);
    v7 = 1;
    do
    {
      v8 = *v2++;
      v6 = vminq_f32(v6, v8);
      v5 = vmaxq_f32(v5, v8);
    }

    while (v4 > v7++);
  }

  else
  {
    v5.i64[0] = 0x80000000800000;
    v5.i64[1] = 0x80000000800000;
    v6 = vnegq_f32(v5);
  }

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_24BE24A40(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 104);
  v4 = *(a1 + 112);
  if (*(a1 + 136) == *(a1 + 128))
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = sub_24BC9ECE4(a1, *(a1 + 180), v8);
      if ((v10 & *v9) != 0)
      {
        ++v7;
      }

      else
      {
        ++v6;
      }

      ++v8;
    }

    while (v8 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2));
  }

  v11 = (v4 - v5) >> 2;
  v12 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  v13 = sub_24BE23F7C(a1);
  v14 = sub_24BE24190(a1);
  *a2 = v11;
  a2[1] = v6;
  v15 = v14 - (v11 - (v6 + v7) / 2 + v13 + v12) / 2;
  a2[2] = v7;
  a2[3] = (v6 + v7) / 2;
  a2[4] = v12;
  a2[5] = v13;
  a2[6] = v15 & ~(v15 >> 31);
  a2[7] = v14;
  return 1;
}

uint64_t sub_24BE24B50(uint64_t a1, float32x4_t *a2)
{
  sub_24BE243D0(a1);
  a2->i32[0] = v4;
  sub_24BE24528(a1);
  a2->i32[1] = v5;
  sub_24BE245D0(a1);
  a2->i32[2] = v6;
  sub_24BE246DC(a1);
  a2->i32[3] = v7;
  v12 = 0.0;
  sub_24BE24858(a1, &v13, &v12);
  v8 = v12;
  a2[1].f32[0] = v8;
  sub_24BE2493C(a1, v11);
  v9 = v11[1];
  a2[2] = v11[0];
  a2[3] = v9;
  return 1;
}

uint64_t sub_24BE24BE0(uint64_t a1, void *a2, float *a3, int *a4)
{
  v120[0] = -1;
  v119 = -1;
  sub_24BC836D4(&__p, off_27F078FE8[0]);
  sub_24BD265CC(a1, v120, &__p);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(__p);
  }

  sub_24BC836D4(&__p, off_27F078FF8);
  sub_24BD26644(a1, &v119, &__p);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(__p);
  }

  sub_24BC836D4(&__p, off_27F078F78[0]);
  v114 = 0;
  v6 = sub_24BCB74D4((a1 + 80), &v114, &__p);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(__p);
  }

  sub_24BC836D4(&__p, off_27F078FC8[0]);
  LOWORD(v114) = 0;
  v7 = sub_24BD274E4((a1 + 56), &v114, &__p);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(__p);
  }

  sub_24BC836D4(&__p, off_27F078FB8[0]);
  LODWORD(v115) = 0;
  v114 = 0;
  v8 = sub_24BCCAA0C((a1 + 56), &v114, &__p);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(__p);
  }

  v12 = v120[0] == 0xFFFFFFFFLL || v119 == -1 || v6 == -1 || v7 == -1 || v8 == -1;
  result = !v12;
  if (!v12)
  {
    v105 = result;
    v14 = (*(a1 + 80) + 16 * v120[0]);
    v16 = *v14;
    v15 = v14[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v15);
    }

    v110 = v8;
    v107 = v6;
    v106 = a3;
    v17 = (*(*v16 + 16))(v16);
    __p = 0;
    v117 = 0;
    v118 = 0;
    sub_24BCB8D20(&__p, v17);
    if (*(a1 + 160) != *(a1 + 152))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = v7;
      do
      {
        v22 = (*(a1 + 56) + 16 * v21);
        v24 = *v22;
        v23 = v22[1];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v23);
        }

        if (v19 == *(*(v24 + 40) + 2 * v18))
        {
          v25 = v117;
          if (v117 >= v118)
          {
            v27 = __p;
            v28 = v117 - __p;
            v29 = (v117 - __p) >> 2;
            v30 = v29 + 1;
            if ((v29 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v31 = v118 - __p;
            if ((v118 - __p) >> 1 > v30)
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
              sub_24BC92E0C(&__p, v32);
            }

            v33 = (4 * v29);
            v34 = &v33[-((v117 - __p) >> 2)];
            *v33 = v20;
            v26 = (v33 + 1);
            memcpy(v34, v27, v28);
            v35 = __p;
            __p = v34;
            v117 = v26;
            v118 = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *v117 = v20;
            v26 = v25 + 4;
          }

          v117 = v26;
          ++v19;
        }

        v18 = ++v20;
      }

      while (v20 < ((*(a1 + 160) - *(a1 + 152)) >> 2));
    }

    v36 = (*(a1 + 80) + 16 * v120[0]);
    v38 = *v36;
    v37 = v36[1];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v37);
    }

    v39 = (*(*v38 + 16))(v38);
    sub_24BC95764(&v114, v39);
    v40 = (*(a1 + 80) + 16 * v120[0]);
    v42 = *v40;
    v41 = v40[1];
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v41);
    }

    v43 = (*(*v42 + 16))(v42);
    sub_24BCA123C(v113, v43);
    v44 = 0;
    v45 = v110;
    while (1)
    {
      v46 = (*(a1 + 80) + 16 * v120[0]);
      v48 = *v46;
      v47 = v46[1];
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v47);
      }

      if ((*(*v48 + 16))(v48) <= v44)
      {
        break;
      }

      if (v44 + 1 == (v117 - __p) >> 2)
      {
        v49 = (*(a1 + 160) - *(a1 + 152)) >> 2;
      }

      else
      {
        LODWORD(v49) = *(__p + v44 + 1);
      }

      v111 = v44;
      v50 = *(__p + v44);
      v51 = 0.0;
      if (v49 > v50)
      {
        v52 = 12 * v50;
        for (i = v49 - v50; i; --i)
        {
          v54 = (*(a1 + 56) + 16 * v45);
          v56 = *v54;
          v55 = v54[1];
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v55);
          }

          v57 = *(v56 + 40);
          v58 = (*(a1 + 80) + 16 * v107);
          v60 = *v58;
          v59 = v58[1];
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v59);
            v61 = (*(a1 + 80) + 16 * v107);
            v63 = *v61;
            v62 = v61[1];
            v64 = (*(v60 + 40) + 8 * *(v57 + v52));
            if (v62)
            {
              atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v62);
              v65 = (*(a1 + 80) + 16 * v107);
              v60 = *v65;
              v66 = v65[1];
              v67 = (*(v63 + 40) + 8 * *(v57 + v52 + 4));
              if (v66)
              {
                atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v66);
              }

              goto LABEL_70;
            }

            v60 = *v61;
          }

          else
          {
            v64 = (*(v60 + 40) + 8 * *(v57 + v52));
          }

          v67 = (*(v60 + 40) + 8 * *(v57 + v52 + 4));
LABEL_70:
          v68 = (*(v60 + 40) + 8 * *(v57 + v52 + 8));
          v51 = v51 + fabsf((((*v67 - *v64) * (v68[1] - v64[1])) - ((v67[1] - v64[1]) * (*v68 - *v64))) * 0.5);
          v52 += 12;
        }
      }

      if (v51 <= 1.0)
      {
        v69 = v51;
      }

      else
      {
        v69 = 1.0;
      }

      *(v114 + v111) = v69;
      v44 = v111 + 1;
    }

    if (sub_24BCD277C(a2))
    {
      v70 = (*(a1 + 80) + 16 * v120[0]);
      v72 = *v70;
      v71 = v70[1];
      v73 = v106;
      if (v71)
      {
        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v71);
      }

      v74 = (*(*v72 + 16))(v72);
      v75 = v74;
      if (v74)
      {
        v76 = v114;
        v77 = 0.0;
        do
        {
          v78 = *v76++;
          v77 = v77 + (v78 / v74);
          --v75;
        }

        while (v75);
      }

      else
      {
        v77 = 0.0;
      }
    }

    else
    {
      v79 = 0;
      v80 = 0;
      while (1)
      {
        v112 = v79;
        v81 = (*(a1 + 80) + 16 * v120[0]);
        v83 = *v81;
        v82 = v81[1];
        if (v82)
        {
          atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v82);
        }

        if ((*(*v83 + 16))(v83) <= v79)
        {
          break;
        }

        v84 = (*(a1 + 80) + 16 * v119);
        v86 = *v84;
        v85 = v84[1];
        if (v85)
        {
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v85);
        }

        v87 = sub_24BD266BC(*(v86 + 40), &v112);
        v88 = sub_24BD26714((a2 + 6), v87);
        v89 = sub_24BD250F8(*a2 + 48 * *v88 + 24, a4);
        v90 = *v89;
        v91 = a2[3] + 48 * *v89;
        v92 = *(v91 + 8);
        v93 = *(v91 + 16);
        if (v93)
        {
          atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
          v94 = a2[3] + 48 * v90;
          v96 = *(v94 + 8);
          v95 = *(v94 + 16);
          v97 = *v92;
          if (v95)
          {
            atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
            v98 = *(v96 + 4);
            sub_24BC9EC78(v95);
          }

          else
          {
            v98 = *(v96 + 4);
          }

          v99 = v98 * v97;
          sub_24BC9EC78(v93);
        }

        else
        {
          v99 = v92[1] * *v92;
        }

        v100 = v112;
        *(v113[0] + v112) = v99;
        v80 += v99;
        v79 = v100 + 1;
      }

      v101 = 0;
      v77 = 0.0;
      v73 = v106;
      while (1)
      {
        v102 = (*(a1 + 80) + 16 * v120[0]);
        v104 = *v102;
        v103 = v102[1];
        if (v103)
        {
          atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v103);
        }

        if ((*(*v104 + 16))(v104) <= v101)
        {
          break;
        }

        v77 = v77 + (*(v114 + v101) * (*(v113[0] + v101) / v80));
        ++v101;
      }
    }

    *v73 = v77;
    if (v113[0])
    {
      v113[1] = v113[0];
      operator delete(v113[0]);
    }

    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

    if (__p)
    {
      v117 = __p;
      operator delete(__p);
    }

    return v105;
  }

  return result;
}

void sub_24BE2542C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE254C0(uint64_t a1, float *a2)
{
  v35 = -1;
  sub_24BC836D4(__p, off_27F078FE8[0]);
  sub_24BD265CC(a1, &v35, __p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078F78[0]);
  v36 = 0;
  v4 = sub_24BCB74D4((a1 + 80), &v36, __p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078FB8[0]);
  v37 = 0;
  v36 = 0;
  v5 = sub_24BCCAA0C((a1 + 56), &v36, __p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v35 == 0xFFFFFFFFLL || v4 == -1 || v5 == -1;
  result = !v7;
  if (!v7)
  {
    v31 = result;
    v9 = (*(a1 + 80) + 16 * v35);
    v11 = *v9;
    v10 = v9[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v10);
    }

    v32 = a2;
    v30 = (*(*v11 + 16))(v11);
    if (*(a1 + 160) != *(a1 + 152))
    {
      v12 = 0;
      v13 = 0.0;
      v14 = 1;
      while (1)
      {
        v15 = (*(a1 + 56) + 16 * v5);
        v17 = *v15;
        v16 = v15[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v16);
        }

        v18 = (*(v17 + 40) + 12 * v12);
        v19 = (*(a1 + 80) + 16 * v4);
        v21 = *v19;
        v20 = v19[1];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v20);
          v22 = (*(a1 + 80) + 16 * v4);
          v24 = *v22;
          v23 = v22[1];
          v25 = (*(v21 + 40) + 8 * *v18);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v23);
            v26 = (*(a1 + 80) + 16 * v4);
            v21 = *v26;
            v27 = v26[1];
            v28 = (*(v24 + 40) + 8 * v18[1]);
            if (v27)
            {
              atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v27);
            }

            goto LABEL_30;
          }

          v21 = *v22;
        }

        else
        {
          v25 = (*(v21 + 40) + 8 * *v18);
        }

        v28 = (*(v21 + 40) + 8 * v18[1]);
LABEL_30:
        v29 = (*(v21 + 40) + 8 * v18[2]);
        v13 = v13 + fabsf((((*v28 - *v25) * (v29[1] - v25[1])) - ((v28[1] - v25[1]) * (*v29 - *v25))) * 0.5);
        v12 = v14++;
        if (v12 >= (*(a1 + 160) - *(a1 + 152)) >> 2)
        {
          goto LABEL_33;
        }
      }
    }

    v13 = 0.0;
LABEL_33:
    *v32 = v13 / v30;
    return v31;
  }

  return result;
}

void sub_24BE25790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE257B8(void *a1)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[17] - a1[16]) >> 2);
  LOBYTE(v32) = 0;
  sub_24BC9FEFC(&v33, v2);
  v3 = (a1[14] - a1[13]) >> 2;
  LOBYTE(__p) = 0;
  sub_24BC9FEFC(&v32, v3);
  v5 = a1[16];
  v4 = a1[17];
  if (v4 == v5)
  {
LABEL_21:
    v24 = 1;
    goto LABEL_23;
  }

  v6 = 0;
  v7 = 0;
  while (((*(v33 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1) != 0)
  {
LABEL_20:
    v6 = ++v7;
    if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 2) <= v7)
    {
      goto LABEL_21;
    }
  }

  LODWORD(__p) = v7;
  v31 = *(sub_24BCB9024((a1 + 13), &__p) + 12);
  if (((*(v32 + ((v31 >> 3) & 0x1FFFFFF8)) >> v31) & 1) == 0)
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    sub_24BCB9454(v27, a1 + 13, &v31);
    for (i = sub_24BCB947C(v27); ; i = sub_24BCB947C(v27))
    {
      v26 = i;
      if (i == -1)
      {
        break;
      }

      *(v33 + ((i >> 3) & 0x1FFFFFF8)) |= 1 << i;
      sub_24BCB4670(&__p, &v26);
    }

    v9 = 1;
    *(v32 + ((v31 >> 3) & 0x1FFFFFF8)) |= 1 << v31;
    v10 = __p;
    v11 = v29;
    if ((v29 - __p) >= 5)
    {
      v12 = 0;
      v13 = 0;
      v14 = 2;
      while (1)
      {
        v15 = v12;
        v12 = (v13 + 1);
        v16 = v11 - v10;
        v17 = v14;
        v18 = v12;
        if (v16 > v12)
        {
          break;
        }

LABEL_13:
        v23 = v16 - 1;
        ++v14;
        v13 = v12;
        if (v23 <= v12)
        {
          v9 = 1;
          goto LABEL_16;
        }
      }

      while (1)
      {
        v19 = sub_24BCB9024((a1 + 13), &v10[v15]);
        v20 = sub_24BCB9024((a1 + 13), v19);
        v21 = sub_24BCB9024((a1 + 13), __p + v18);
        if (*(v20 + 12) == *(sub_24BCB9024((a1 + 13), v21) + 12))
        {
          break;
        }

        v18 = v17;
        v10 = __p;
        v11 = v29;
        v16 = (v29 - __p) >> 2;
        if (v16 <= v17++)
        {
          goto LABEL_13;
        }
      }

      v9 = 0;
      v10 = __p;
    }

LABEL_16:
    if (v10)
    {
      v29 = v10;
      operator delete(v10);
    }

    if (v9)
    {
      v5 = a1[16];
      v4 = a1[17];
      goto LABEL_20;
    }
  }

  v24 = 0;
LABEL_23:
  if (v32)
  {
    operator delete(v32);
  }

  if (v33)
  {
    operator delete(v33);
  }

  return v24;
}

void sub_24BE25A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE25AB0(uint64_t a1, void *a2, void *a3)
{
  memset(v31, 0, sizeof(v31));
  v32 = 1065353216;
  a2[1] = *a2;
  a3[1] = *a3;
  v3 = -858993459 * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v8 = sub_24BC9ECE4(a1, *(a1 + 180), i);
      if ((*v8 & v9) != 0)
      {
        continue;
      }

      v29 = i;
      v10 = *(sub_24BCB9024(a1 + 104, &v29) + 12);
      v29 = i;
      v11 = sub_24BCB9024(a1 + 104, &v29);
      v12 = *(sub_24BCB9024(a1 + 104, v11) + 12);
      if (*(&v31[0] + 1))
      {
        v13 = v12 ^ v10;
        v14 = vcnt_s8(*(v31 + 8));
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = v12 ^ v10;
          if (*(&v31[0] + 1) <= v13)
          {
            v15 = v13 % DWORD2(v31[0]);
          }
        }

        else
        {
          v15 = (DWORD2(v31[0]) - 1) & v13;
        }

        v16 = *(*&v31[0] + 8 * v15);
        if (v16)
        {
          for (j = *v16; j; j = *j)
          {
            v18 = j[1];
            if (v18 == v13)
            {
              if (*(j + 4) == v10 && *(j + 5) == v12)
              {
                ++*(j + 12);
                goto LABEL_25;
              }
            }

            else
            {
              if (v14.u32[0] > 1uLL)
              {
                if (v18 >= *(&v31[0] + 1))
                {
                  v18 %= *(&v31[0] + 1);
                }
              }

              else
              {
                v18 &= *(&v31[0] + 1) - 1;
              }

              if (v18 != v15)
              {
                break;
              }
            }
          }
        }
      }

      v29 = v10;
      v30 = v12;
      *sub_24BE25D78(v31, &v29) = 1;
LABEL_25:
      ;
    }

    for (k = 0; k != v3; ++k)
    {
      v21 = sub_24BC9ECE4(a1, *(a1 + 180), k);
      if ((*v21 & v22) == 0)
      {
        v29 = k;
        v23 = *(sub_24BCB9024(a1 + 104, &v29) + 12);
        v29 = k;
        v24 = sub_24BCB9024(a1 + 104, &v29);
        v25 = *(sub_24BCB9024(a1 + 104, v24) + 12);
        v29 = v23;
        v30 = v25;
        v26 = *sub_24BE25D78(v31, &v29);
        v29 = v25;
        v30 = v23;
        v27 = *sub_24BE25D78(v31, &v29);
        if (v26 != 2 || v27)
        {
          if (v26 != 1 || v27 >= 2)
          {
            v29 = k;
            sub_24BCB4670(a3, &v29);
          }
        }

        else
        {
          v29 = k;
          sub_24BCB4670(a2, &v29);
        }
      }
    }
  }

  return sub_24BCA3B84(v31);
}

void sub_24BE25D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BCA3B84(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BE25D78(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ v2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 3;
}

void sub_24BE2618C(uint64_t a1, uint64_t a2, unsigned int **a3, unsigned int **a4)
{
  *(a2 + 8) = *a2;
  v6 = (a1 + 104);
  v7 = -858993459 * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  v74 = *(a1 + 112) - *(a1 + 104);
  sub_24BE2C514(v82, (v74 >> 2));
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      LODWORD(__p) = i;
      v9 = sub_24BCB9024(v6, &__p);
      v10 = v82[0] + 24 * *(v9 + 12);
      v12 = *(v10 + 8);
      v11 = *(v10 + 16);
      if (v12 >= v11)
      {
        v14 = (v12 - *v10) >> 2;
        if ((v14 + 1) >> 62)
        {
          sub_24BC8E01C();
        }

        v15 = v11 - *v10;
        v16 = v15 >> 1;
        if (v15 >> 1 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          sub_24BC92E0C(v82[0] + 24 * *(v9 + 12), v17);
        }

        v18 = (4 * v14);
        *v18 = i;
        v13 = 4 * v14 + 4;
        v19 = *(v10 + 8) - *v10;
        v20 = v18 - v19;
        memcpy(v18 - v19, *v10, v19);
        v21 = *v10;
        *v10 = v20;
        *(v10 + 8) = v13;
        *(v10 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = i;
        v13 = (v12 + 1);
      }

      *(v10 + 8) = v13;
    }
  }

  v22 = a4;
  if ((v74 & 0x3FFFFFFFCLL) != 0)
  {
    for (j = 0; j != (v74 >> 2); ++j)
    {
      if (*(v82[0] + 24 * j + 8) == *(v82[0] + 24 * j))
      {
        v42 = *(a2 + 8);
        v47 = *(a2 + 16);
        if (v42 >= v47)
        {
          v43 = (v42 - *a2) >> 2;
          if ((v43 + 1) >> 62)
          {
            sub_24BC8E01C();
          }

          v49 = v47 - *a2;
          v50 = v49 >> 1;
          if (v49 >> 1 <= (v43 + 1))
          {
            v50 = v43 + 1;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v46 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v46 = v50;
          }

          if (v46)
          {
            sub_24BC92E0C(a2, v46);
          }

          goto LABEL_75;
        }
      }

      else
      {
        v25 = *v22;
        v24 = v22[1];
        if (*v22 != v24)
        {
          v26 = 0;
          while (j != *(sub_24BCB9024(v6, v25) + 12))
          {
            v27 = sub_24BCB9024(v6, v25);
            v28 = j == *(sub_24BCB9024(v6, v27) + 12);
            v26 |= v28;
            ++v25;
            v28 = v28 || v25 == v24;
            if (v28)
            {
              if (v26)
              {
                goto LABEL_78;
              }

              goto LABEL_28;
            }
          }

          continue;
        }

LABEL_28:
        v30 = *a3;
        v29 = a3[1];
        if (*a3 != v29)
        {
          v31 = 0;
          while (j != *(sub_24BCB9024(v6, v30) + 12))
          {
            v32 = sub_24BCB9024(v6, v30);
            v28 = j == *(sub_24BCB9024(v6, v32) + 12);
            v31 |= v28;
            ++v30;
            if (v28 || v30 == v29)
            {
              if (v31)
              {
                goto LABEL_78;
              }

              goto LABEL_37;
            }
          }

          continue;
        }

LABEL_37:
        v34 = v82[0] + 24 * j;
        v35 = *v34;
        v36 = *(v34 + 8);
        if (*v34 == v36)
        {
          goto LABEL_63;
        }

        v37 = 0;
        do
        {
          v38 = sub_24BC9ECE4(a1, *(a1 + 180), *v35);
          if ((*v38 & v39) != 0)
          {
            ++v37;
          }

          ++v35;
        }

        while (v35 != v36);
        v40 = v37 > 1;
        v22 = a4;
        if (!v40)
        {
LABEL_63:
          LODWORD(__p) = j;
          sub_24BCB9454(v81, v6, &__p);
          v80 = -1;
          __p = 0;
          v78 = 0;
          v79 = 0;
          while (1)
          {
            v80 = sub_24BCB947C(v81);
            if (v80 == -1)
            {
              break;
            }

            sub_24BCB4670(&__p, &v80);
          }

          v52 = *(v82[0] + 24 * j);
          v51 = *(v82[0] + 24 * j + 8);
          if (v51 - v52 == v78 - __p)
          {
            while (v52 != v51)
            {
              if (__p == v78)
              {
                goto LABEL_89;
              }

              v53 = __p;
              while (*v53 != *v52)
              {
                v53 += 4;
                if (v53 == v78)
                {
                  goto LABEL_89;
                }
              }

              if (v53 == v78)
              {
LABEL_89:
                v60 = *(a2 + 8);
                v65 = *(a2 + 16);
                if (v60 < v65)
                {
                  goto LABEL_90;
                }

                v61 = (v60 - *a2) >> 2;
                if ((v61 + 1) >> 62)
                {
                  sub_24BC8E01C();
                }

                v67 = v65 - *a2;
                v68 = v67 >> 1;
                if (v67 >> 1 <= (v61 + 1))
                {
                  v68 = v61 + 1;
                }

                if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v64 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v64 = v68;
                }

                if (v64)
                {
                  sub_24BC92E0C(a2, v64);
                }

                goto LABEL_99;
              }

              v52 += 4;
            }
          }

          else
          {
            v60 = *(a2 + 8);
            v59 = *(a2 + 16);
            if (v60 < v59)
            {
LABEL_90:
              *v60 = j;
              v66 = (v60 + 1);
            }

            else
            {
              v61 = (v60 - *a2) >> 2;
              if ((v61 + 1) >> 62)
              {
                sub_24BC8E01C();
              }

              v62 = v59 - *a2;
              v63 = v62 >> 1;
              if (v62 >> 1 <= (v61 + 1))
              {
                v63 = v61 + 1;
              }

              if (v62 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v64 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v64 = v63;
              }

              if (v64)
              {
                sub_24BC92E0C(a2, v64);
              }

LABEL_99:
              v70 = 4 * v64;
              v69 = (4 * v61);
              *v69 = j;
              v66 = 4 * v61 + 4;
              v71 = *(a2 + 8) - *a2;
              v72 = v69 - v71;
              memcpy(v69 - v71, *a2, v71);
              v73 = *a2;
              *a2 = v72;
              *(a2 + 8) = v66;
              *(a2 + 16) = v70;
              if (v73)
              {
                operator delete(v73);
              }
            }

            *(a2 + 8) = v66;
          }

          if (__p)
          {
            v78 = __p;
            operator delete(__p);
          }

          continue;
        }

        v42 = *(a2 + 8);
        v41 = *(a2 + 16);
        if (v42 >= v41)
        {
          v43 = (v42 - *a2) >> 2;
          if ((v43 + 1) >> 62)
          {
            sub_24BC8E01C();
          }

          v44 = v41 - *a2;
          v45 = v44 >> 1;
          if (v44 >> 1 <= (v43 + 1))
          {
            v45 = v43 + 1;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v46 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v46 = v45;
          }

          if (v46)
          {
            sub_24BC92E0C(a2, v46);
          }

LABEL_75:
          v55 = 4 * v46;
          v54 = (4 * v43);
          *v54 = j;
          v48 = 4 * v43 + 4;
          v56 = *(a2 + 8) - *a2;
          v57 = v54 - v56;
          memcpy(v54 - v56, *a2, v56);
          v58 = *a2;
          *a2 = v57;
          *(a2 + 8) = v48;
          *(a2 + 16) = v55;
          if (v58)
          {
            operator delete(v58);
          }

          goto LABEL_77;
        }
      }

      *v42 = j;
      v48 = (v42 + 1);
LABEL_77:
      *(a2 + 8) = v48;
LABEL_78:
      ;
    }
  }

  __p = v82;
  sub_24BC8EE84(&__p);
}

void sub_24BE26708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *__p, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  __p = &a20;
  sub_24BC8EE84(&__p);
  _Unwind_Resume(a1);
}

void sub_24BE26778(uint64_t a1, unsigned int **a2, unsigned int **a3, uint64_t a4)
{
  sub_24BE25AB0(a1, a2, a3);

  sub_24BE2618C(a1, a4, a2, a3);
}

BOOL sub_24BE267D0(uint64_t a1)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_24BE25AB0(a1, &v15, &__p);
  sub_24BE2618C(a1, &v9, &v15, &__p);
  v3 = __p;
  v2 = v13;
  v4 = v9;
  v5 = v10;
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
    v6 = __p;
    if (!__p)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __p;
  if (__p)
  {
LABEL_3:
    v13 = v6;
    operator delete(v6);
  }

LABEL_4:
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v2 == v3 && v5 == v4;
}

void sub_24BE26888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_24BFB8EF0(&__p, &a13, &a16);
  _Unwind_Resume(a1);
}

BOOL sub_24BE268B4(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_24BE25AB0(a1, &v8, &__p);
  v2 = v8;
  v1 = v9;
  if (!__p)
  {
    v3 = v8;
    if (!v8)
    {
      return v1 == v2;
    }

    goto LABEL_3;
  }

  v6 = __p;
  operator delete(__p);
  v3 = v8;
  if (v8)
  {
LABEL_3:
    v9 = v3;
    operator delete(v3);
  }

  return v1 == v2;
}

void sub_24BE2692C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE26958(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 2)
  {
    return 0;
  }

  sub_24BE2C5B8(v51, (*(a1 + 160) - *(a1 + 152)) >> 2);
  if (!sub_24BE03B48(a1, v51))
  {
    goto LABEL_48;
  }

  sub_24BC836D4(__p, off_27F078F98[0]);
  v52 = 0;
  v53 = 0;
  v3 = sub_24BCB6470((a1 + 8), &v52, __p);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  if (v3 == -1 && !sub_24BCB3A30(a1))
  {
    goto LABEL_48;
  }

  sub_24BC836D4(__p, off_27F078F98[0]);
  v52 = 0;
  v53 = 0;
  v4 = sub_24BCB6470((a1 + 8), &v52, __p);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == -1)
  {
LABEL_48:
    v47 = 0;
  }

  else
  {
    v5 = (*(a1 + 8) + 16 * v4);
    v7 = *v5;
    v6 = v5[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v6);
    }

    sub_24BC836D4(__p, off_27F078FA0[0]);
    v52 = 0;
    v53 = 0;
    v8 = sub_24BCB6470((a1 + 8), &v52, __p);
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 == -1)
    {
      sub_24BC836D4(__p, off_27F078FA0[0]);
      sub_24BCB346C(a1);
    }

    v9 = (*(a1 + 8) + 16 * v8);
    v11 = *v9;
    v10 = v9[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v10);
    }

    sub_24BC836D4(__p, off_27F078FA8[0]);
    v52 = 0;
    v53 = 0;
    v12 = sub_24BCB6470((a1 + 8), &v52, __p);
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 == -1)
    {
      sub_24BC836D4(__p, off_27F078FA8[0]);
      sub_24BCB346C(a1);
    }

    v13 = (*(a1 + 8) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v14);
    }

    if (*(a1 + 112) != *(a1 + 104))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        *(*(v11 + 40) + 16 * v16) = 0uLL;
        *(*(v15 + 40) + 16 * v16) = 0uLL;
        v16 = v17++;
      }

      while (v16 < (*(a1 + 112) - *(a1 + 104)) >> 2);
    }

    sub_24BCB2008(__p, 3uLL);
    if (*(a1 + 160) != *(a1 + 152))
    {
      LODWORD(v19) = 0;
      do
      {
        LODWORD(v52) = v19;
        sub_24BCD567C(a1, &v52, __p);
        v20 = 0;
        v21 = (v51[0] + 48 * v52);
        v18 = v21[1];
        v22 = v21[2];
        do
        {
          *(*(v11 + 40) + 16 * *(__p[0] + v20)) = vaddq_f32(v18, *(*(v11 + 40) + 16 * *(__p[0] + v20)));
          *(*(v15 + 40) + 16 * *(__p[0] + v20)) = vaddq_f32(v22, *(*(v15 + 40) + 16 * *(__p[0] + v20)));
          v20 += 4;
        }

        while (v20 != 12);
        v19 = (v19 + 1);
      }

      while (v19 < (*(a1 + 160) - *(a1 + 152)) >> 2);
    }

    if (*(a1 + 112) != *(a1 + 104))
    {
      v23 = 0;
      v24 = 1;
      v18.i32[0] = 897988541;
      do
      {
        v25 = *(v11 + 40);
        v26 = *(v25 + 16 * v23);
        v27 = *(*(v7 + 40) + 16 * v23);
        v28 = vmulq_f32(v26, v27);
        v28.i32[3] = 0;
        v29 = vsubq_f32(v26, vmulq_n_f32(v27, vaddv_f32(*&vpaddq_f32(v28, v28))));
        v30 = vmulq_f32(v29, v29);
        v30.i32[3] = 0;
        v31 = vpaddq_f32(v30, v30);
        if (fabsf(sqrtf(vaddv_f32(*v31.f32))) >= 0.000001)
        {
          v41 = vpaddq_f32(v31, v31);
          v42 = xmmword_24BFBD1C0;
          if (v41.f32[0] > 0.0)
          {
            v42 = vdivq_f32(v29, vsqrtq_f32(v41));
          }

          *(v25 + 16 * v23) = v42;
          v40 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v27, vextq_s8(v27, v27, 0xCuLL)), v27), vuzp2q_s32(vextq_s8(v42, v42, 4uLL), v42)), vzip2q_s32(vzip1q_s32(v42, vextq_s8(v42, v42, 0xCuLL)), v42), vuzp2q_s32(vextq_s8(v27, v27, 4uLL), v27));
        }

        else
        {
          v29.f32[0] = fabsf(v27.f32[0] + -1.0);
          v32 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v18, v29), 0), xmmword_24BFD2970, xmmword_24BFBD1C0);
          v33 = vzip2q_s32(vzip1q_s32(v27, vextq_s8(v27, v27, 0xCuLL)), v27);
          v34 = vuzp2q_s32(vextq_s8(v27, v27, 4uLL), v27);
          v35 = vmlsq_f32(vmulq_f32(v33, vuzp2q_s32(vextq_s8(v32, v32, 4uLL), v32)), vzip2q_s32(vzip1q_s32(v32, vextq_s8(v32, v32, 0xCuLL)), v32), v34);
          v36 = vmulq_f32(v35, v35);
          v36.i32[3] = 0;
          v37 = vpaddq_f32(v36, v36);
          v38 = vpaddq_f32(v37, v37);
          v39 = xmmword_24BFBD1C0;
          if (v38.f32[0] > 0.0)
          {
            v39 = vdivq_f32(v35, vsqrtq_f32(v38));
          }

          *(v25 + 16 * v23) = v39;
          v40 = vmlaq_f32(vmulq_f32(v33, vuzp2q_s32(vextq_s8(v39, v39, 4uLL), v39)), vzip2q_s32(vzip1q_s32(v39, vextq_s8(v39, v39, 0xCuLL)), v39), vnegq_f32(v34));
        }

        v43 = vmulq_f32(v40, v40);
        v43.i32[3] = 0;
        v44 = vpaddq_f32(v43, v43);
        v45 = vpaddq_f32(v44, v44);
        v46 = xmmword_24BFBD1C0;
        if (v45.f32[0] > 0.0)
        {
          v46 = vdivq_f32(v40, vsqrtq_f32(v45));
        }

        *(*(v15 + 40) + 16 * v23) = v46;
        v23 = v24++;
      }

      while (v23 < (*(a1 + 112) - *(a1 + 104)) >> 2);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v47 = 1;
  }

  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  return v47;
}

void sub_24BE26E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE26ED4()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAE6E4();
}

void sub_24BE274A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BC9F18C((v70 + 8), a10);
  v73 = &STACK[0x310];
  v74 = -256;
  do
  {
    sub_24BC9F18C(v73, *(v73 - 8));
    v73 -= 4;
    v74 += 32;
  }

  while (v74);
  v75 = &a19;
  v76 = -64;
  do
  {
    sub_24BC9F18C(v75, *(v75 - 8));
    v75 -= 4;
    v76 += 32;
  }

  while (v76);
  v77 = &a27;
  v78 = -64;
  do
  {
    sub_24BC9F18C(v77, *(v77 - 8));
    v77 -= 4;
    v78 += 32;
  }

  while (v78);
  v79 = &a35;
  v80 = -64;
  do
  {
    sub_24BC9F18C(v79, *(v79 - 8));
    v79 -= 4;
    v80 += 32;
  }

  while (v80);
  v81 = &a43;
  v82 = -64;
  do
  {
    sub_24BC9F18C(v81, *(v81 - 8));
    v81 -= 4;
    v82 += 32;
  }

  while (v82);
  v83 = &a51;
  v84 = -64;
  do
  {
    sub_24BC9F18C(v83, *(v83 - 8));
    v83 -= 4;
    v84 += 32;
  }

  while (v84);
  v85 = &a59;
  v86 = -64;
  do
  {
    sub_24BC9F18C(v85, *(v85 - 8));
    v85 -= 4;
    v86 += 32;
  }

  while (v86);
  v87 = &a67;
  v88 = -64;
  do
  {
    sub_24BC9F18C(v87, *(v87 - 8));
    v87 -= 4;
    v88 += 32;
  }

  while (v88);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a70 + i + 40), *(&a70 + i + 32));
  }

  sub_24BC9F18C((v71 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE276DC(_DWORD *a1, void *a2)
{
  v38[0] = 0;
  v39 = 0;
  sub_24BC9C7E0(a2, v38);
  if (v38[0] == 1)
  {
    v3 = sub_24BCB0080(v39, "nVertices");
    if (v39 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v38, "nVertices");
      LOBYTE(__p) = 0;
      v36 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v36, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v38, "nVertices");
        LODWORD(__p) = 0;
        sub_24BCB07E0(v6, &__p);
        *a1 = __p;
        sub_24BC836D4(&__p, "nVertices");
        sub_24BC9CAB4(v38, &__p);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v38[0] == 1)
    {
      v7 = sub_24BCB0080(v39, "nHalfEdges");
      if (v39 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v38, "nHalfEdges");
        LOBYTE(__p) = 0;
        v36 = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&v36, __p);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v38, "nHalfEdges");
          LODWORD(__p) = 0;
          sub_24BCB07E0(v10, &__p);
          a1[1] = __p;
          sub_24BC836D4(&__p, "nHalfEdges");
          sub_24BC9CAB4(v38, &__p);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v38[0] == 1)
      {
        v11 = sub_24BCB0080(v39, "nBoundaryHalfEdges");
        if (v39 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v38, "nBoundaryHalfEdges");
          LOBYTE(__p) = 0;
          v36 = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&v36, __p);
          if ((v13 & 1) == 0)
          {
            v14 = sub_24BC9C8EC(v38, "nBoundaryHalfEdges");
            LODWORD(__p) = 0;
            sub_24BCB07E0(v14, &__p);
            a1[2] = __p;
            sub_24BC836D4(&__p, "nBoundaryHalfEdges");
            sub_24BC9CAB4(v38, &__p);
            if (SHIBYTE(v37) < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v38[0] == 1)
        {
          v15 = sub_24BCB0080(v39, "nEdges");
          if (v39 + 8 != v15)
          {
            v16 = sub_24BC9C8EC(v38, "nEdges");
            LOBYTE(__p) = 0;
            v36 = 0;
            v17 = sub_24BCB01B0(v16, &__p);
            sub_24BC9F18C(&v36, __p);
            if ((v17 & 1) == 0)
            {
              v18 = sub_24BC9C8EC(v38, "nEdges");
              LODWORD(__p) = 0;
              sub_24BCB07E0(v18, &__p);
              a1[3] = __p;
              sub_24BC836D4(&__p, "nEdges");
              sub_24BC9CAB4(v38, &__p);
              if (SHIBYTE(v37) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v38[0] == 1)
          {
            v19 = sub_24BCB0080(v39, "nFaces");
            if (v39 + 8 != v19)
            {
              v20 = sub_24BC9C8EC(v38, "nFaces");
              LOBYTE(__p) = 0;
              v36 = 0;
              v21 = sub_24BCB01B0(v20, &__p);
              sub_24BC9F18C(&v36, __p);
              if ((v21 & 1) == 0)
              {
                v22 = sub_24BC9C8EC(v38, "nFaces");
                LODWORD(__p) = 0;
                sub_24BCB07E0(v22, &__p);
                a1[4] = __p;
                sub_24BC836D4(&__p, "nFaces");
                sub_24BC9CAB4(v38, &__p);
                if (SHIBYTE(v37) < 0)
                {
                  operator delete(__p);
                }
              }
            }

            if (v38[0] == 1)
            {
              v23 = sub_24BCB0080(v39, "nBoundaryLoops");
              if (v39 + 8 != v23)
              {
                v24 = sub_24BC9C8EC(v38, "nBoundaryLoops");
                LOBYTE(__p) = 0;
                v36 = 0;
                v25 = sub_24BCB01B0(v24, &__p);
                sub_24BC9F18C(&v36, __p);
                if ((v25 & 1) == 0)
                {
                  v26 = sub_24BC9C8EC(v38, "nBoundaryLoops");
                  LODWORD(__p) = 0;
                  sub_24BCB07E0(v26, &__p);
                  a1[5] = __p;
                  sub_24BC836D4(&__p, "nBoundaryLoops");
                  sub_24BC9CAB4(v38, &__p);
                  if (SHIBYTE(v37) < 0)
                  {
                    operator delete(__p);
                  }
                }
              }

              if (v38[0] == 1)
              {
                v27 = sub_24BCB0080(v39, "nGenus");
                if (v39 + 8 != v27)
                {
                  v28 = sub_24BC9C8EC(v38, "nGenus");
                  LOBYTE(__p) = 0;
                  v36 = 0;
                  v29 = sub_24BCB01B0(v28, &__p);
                  sub_24BC9F18C(&v36, __p);
                  if ((v29 & 1) == 0)
                  {
                    v30 = sub_24BC9C8EC(v38, "nGenus");
                    LODWORD(__p) = 0;
                    sub_24BCB07E0(v30, &__p);
                    a1[6] = __p;
                    sub_24BC836D4(&__p, "nGenus");
                    sub_24BC9CAB4(v38, &__p);
                    if (SHIBYTE(v37) < 0)
                    {
                      operator delete(__p);
                    }
                  }
                }

                if (v38[0] == 1)
                {
                  v31 = sub_24BCB0080(v39, "nComponents");
                  if (v39 + 8 != v31)
                  {
                    v32 = sub_24BC9C8EC(v38, "nComponents");
                    LOBYTE(__p) = 0;
                    v36 = 0;
                    v33 = sub_24BCB01B0(v32, &__p);
                    sub_24BC9F18C(&v36, __p);
                    if ((v33 & 1) == 0)
                    {
                      v34 = sub_24BC9C8EC(v38, "nComponents");
                      LODWORD(__p) = 0;
                      sub_24BCB07E0(v34, &__p);
                      a1[7] = __p;
                      sub_24BC836D4(&__p, "nComponents");
                      sub_24BC9CAB4(v38, &__p);
                      if (SHIBYTE(v37) < 0)
                      {
                        operator delete(__p);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v38 + 8 * *(v37 - 24) + 272) = 2;
  sub_24BC9BD14(&v37);
}

void sub_24BE27ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE27EB8);
  }

  _Unwind_Resume(a1);
}

void sub_24BE27F90()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BCA5970();
}

void sub_24BE28988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_objecta, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BC9F18C((v66 + 8), a13);
  v67 = &STACK[0x568];
  v68 = -192;
  do
  {
    sub_24BC9F18C(v67, *(v67 - 8));
    v67 -= 4;
    v68 += 32;
  }

  while (v68);
  v69 = &STACK[0x368];
  v70 = -64;
  do
  {
    sub_24BC9F18C(v69, *(v69 - 8));
    v69 -= 4;
    v70 += 32;
  }

  while (v70);
  v71 = &STACK[0x328];
  v72 = -64;
  do
  {
    sub_24BC9F18C(v71, *(v71 - 8));
    v71 -= 4;
    v72 += 32;
  }

  while (v72);
  v73 = &a58;
  v74 = -64;
  do
  {
    sub_24BC9F18C(v73, *(v73 - 8));
    v73 -= 4;
    v74 += 32;
  }

  while (v74);
  v75 = &a50;
  v76 = -96;
  do
  {
    sub_24BC9F18C(v75, *(v75 - 8));
    v75 -= 4;
    v76 += 32;
  }

  while (v76);
  v77 = &a22;
  v78 = -64;
  do
  {
    sub_24BC9F18C(v77, *(v77 - 8));
    v77 -= 4;
    v78 += 32;
  }

  while (v78);
  v79 = &a30;
  v80 = -64;
  do
  {
    sub_24BC9F18C(v79, *(v79 - 8));
    v79 -= 4;
    v80 += 32;
  }

  while (v80);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a33 + i + 40), *(&a33 + i + 32));
  }

  v82 = &STACK[0x2E8];
  v83 = -64;
  do
  {
    sub_24BC9F18C(v82, *(v82 - 8));
    v82 -= 4;
    v83 += 32;
  }

  while (v83);
  v84 = &STACK[0x2A8];
  v85 = -96;
  do
  {
    sub_24BC9F18C(v84, *(v84 - 8));
    v84 -= 4;
    v85 += 32;
  }

  while (v85);
  v86 = &a66;
  v87 = -64;
  do
  {
    sub_24BC9F18C(v86, *(v86 - 8));
    v86 -= 4;
    v87 += 32;
  }

  while (v87);
  v88 = &STACK[0x208];
  v89 = -64;
  do
  {
    sub_24BC9F18C(v88, *(v88 - 8));
    v88 -= 4;
    v89 += 32;
  }

  while (v89);
  for (j = 0; j != -64; j -= 32)
  {
    sub_24BC9F18C((&STACK[0x220] + j + 40), *(&STACK[0x220] + j + 32));
  }

  v91 = &STACK[0x3A8];
  v92 = -64;
  do
  {
    sub_24BC9F18C(v91, *(v91 - 8));
    v91 -= 4;
    v92 += 32;
  }

  while (v92);
  v93 = &STACK[0x3E8];
  v94 = -64;
  do
  {
    sub_24BC9F18C(v93, *(v93 - 8));
    v93 -= 4;
    v94 += 32;
  }

  while (v94);
  v95 = &STACK[0x428];
  v96 = -64;
  do
  {
    sub_24BC9F18C(v95, *(v95 - 8));
    v95 -= 4;
    v96 += 32;
  }

  while (v96);
  v97 = &STACK[0x468];
  v98 = -64;
  do
  {
    sub_24BC9F18C(v97, *(v97 - 8));
    v97 -= 4;
    v98 += 32;
  }

  while (v98);
  for (k = 0; k != -64; k -= 32)
  {
    sub_24BC9F18C((&STACK[0x480] + k + 40), *(&STACK[0x480] + k + 32));
  }

  sub_24BC9F18C(&a16, a15);
  _Unwind_Resume(a1);
}

void sub_24BE28F74(uint64_t a1, void *a2)
{
  v99[0] = 0;
  v100 = 0;
  sub_24BC9C7E0(a2, v99);
  if (v99[0] == 1)
  {
    v3 = sub_24BCB0080(v100, "avgEdgeLength");
    if (v100 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v99, "avgEdgeLength");
      LOBYTE(__p) = 0;
      v97 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v97, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v99, "avgEdgeLength");
        LODWORD(__p) = 0;
        sub_24BCB0594(v6, &__p, v7);
        *a1 = __p;
        sub_24BC836D4(&__p, "avgEdgeLength");
        sub_24BC9CAB4(v99, &__p);
        if (SHIBYTE(v98) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v99[0] == 1)
    {
      v8 = sub_24BCB0080(v100, "avgVertexValence");
      if (v100 + 8 != v8)
      {
        v9 = sub_24BC9C8EC(v99, "avgVertexValence");
        LOBYTE(__p) = 0;
        v97 = 0;
        v10 = sub_24BCB01B0(v9, &__p);
        sub_24BC9F18C(&v97, __p);
        if ((v10 & 1) == 0)
        {
          v11 = sub_24BC9C8EC(v99, "avgVertexValence");
          LODWORD(__p) = 0;
          sub_24BCB0594(v11, &__p, v12);
          *(a1 + 4) = __p;
          sub_24BC836D4(&__p, "avgVertexValence");
          sub_24BC9CAB4(v99, &__p);
          if (SHIBYTE(v98) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v99[0] == 1)
      {
        v13 = sub_24BCB0080(v100, "vertexValenceDeviation");
        if (v100 + 8 != v13)
        {
          v14 = sub_24BC9C8EC(v99, "vertexValenceDeviation");
          LOBYTE(__p) = 0;
          v97 = 0;
          v15 = sub_24BCB01B0(v14, &__p);
          sub_24BC9F18C(&v97, __p);
          if ((v15 & 1) == 0)
          {
            v16 = sub_24BC9C8EC(v99, "vertexValenceDeviation");
            LODWORD(__p) = 0;
            sub_24BCB0594(v16, &__p, v17);
            *(a1 + 8) = __p;
            sub_24BC836D4(&__p, "vertexValenceDeviation");
            sub_24BC9CAB4(v99, &__p);
            if (SHIBYTE(v98) < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v99[0] == 1)
        {
          v18 = sub_24BCB0080(v100, "edgeLengthSD");
          if (v100 + 8 != v18)
          {
            v19 = sub_24BC9C8EC(v99, "edgeLengthSD");
            LOBYTE(__p) = 0;
            v97 = 0;
            v20 = sub_24BCB01B0(v19, &__p);
            sub_24BC9F18C(&v97, __p);
            if ((v20 & 1) == 0)
            {
              v21 = sub_24BC9C8EC(v99, "edgeLengthSD");
              LODWORD(__p) = 0;
              sub_24BCB0594(v21, &__p, v22);
              *(a1 + 12) = __p;
              sub_24BC836D4(&__p, "edgeLengthSD");
              sub_24BC9CAB4(v99, &__p);
              if (SHIBYTE(v98) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v99[0] == 1)
          {
            v23 = sub_24BCB0080(v100, "faceAngleSD");
            if (v100 + 8 != v23)
            {
              v24 = sub_24BC9C8EC(v99, "faceAngleSD");
              LOBYTE(__p) = 0;
              v97 = 0;
              v25 = sub_24BCB01B0(v24, &__p);
              sub_24BC9F18C(&v97, __p);
              if ((v25 & 1) == 0)
              {
                v26 = sub_24BC9C8EC(v99, "faceAngleSD");
                LODWORD(__p) = 0;
                sub_24BCB0594(v26, &__p, v27);
                *(a1 + 16) = __p;
                sub_24BC836D4(&__p, "faceAngleSD");
                sub_24BC9CAB4(v99, &__p);
                if (SHIBYTE(v98) < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }
        }
      }
    }
  }

  v28 = sub_24BC9C8EC(v99, "aabb");
  LOBYTE(__p) = 0;
  v97 = 0;
  v29 = sub_24BCB01B0(v28, &__p);
  sub_24BC9F18C(&v97, __p);
  if (v29)
  {
LABEL_47:
    sub_24BC848F0(&__p);
    *(v99 + 8 * *(v98 - 24) + 272) = 2;
    sub_24BC9BD14(&v98);
  }

  v30 = sub_24BC9C8EC(v99, "aabb");
  v31 = sub_24BC9C8EC(v30, "min");
  LOBYTE(__p) = 0;
  v97 = 0;
  v32 = sub_24BCB01B0(v31, &__p);
  sub_24BC9F18C(&v97, __p);
  if (v32)
  {
    v33.i64[0] = 0x80000000800000;
    v33.i64[1] = 0x80000000800000;
    v34 = vnegq_f32(v33);
  }

  else
  {
    v35 = sub_24BC9C8EC(v99, "aabb");
    v36 = sub_24BC9C8EC(v35, "min");
    v37 = sub_24BC9C8EC(v36, "x");
    LOBYTE(__p) = 0;
    v97 = 0;
    v38 = sub_24BCB01B0(v37, &__p);
    sub_24BC9F18C(&v97, __p);
    if (v38)
    {
      v39.i64[0] = 0x80000000800000;
      v39.i64[1] = 0x80000000800000;
      v40 = vnegq_f32(v39);
    }

    else
    {
      v41 = sub_24BC9C8EC(v99, "aabb");
      v42 = sub_24BC9C8EC(v41, "min");
      v43 = sub_24BC9C8EC(v42, "x");
      LODWORD(__p) = 0;
      sub_24BCB0594(v43, &__p, v44);
      v45.i64[0] = 0x80000000800000;
      v45.i64[1] = 0x80000000800000;
      v40 = vnegq_f32(v45);
      v40.i32[0] = __p;
    }

    v95 = v40;
    v46 = sub_24BC9C8EC(v99, "aabb");
    v47 = sub_24BC9C8EC(v46, "min");
    v48 = sub_24BC9C8EC(v47, "y");
    LOBYTE(__p) = 0;
    v97 = 0;
    v49 = sub_24BCB01B0(v48, &__p);
    sub_24BC9F18C(&v97, __p);
    if ((v49 & 1) == 0)
    {
      v50 = sub_24BC9C8EC(v99, "aabb");
      v51 = sub_24BC9C8EC(v50, "min");
      v52 = sub_24BC9C8EC(v51, "y");
      LODWORD(__p) = 0;
      sub_24BCB0594(v52, &__p, v53);
      v54 = v95;
      v54.i32[1] = __p;
      v95 = v54;
    }

    v55 = sub_24BC9C8EC(v99, "aabb");
    v56 = sub_24BC9C8EC(v55, "min");
    v57 = sub_24BC9C8EC(v56, "z");
    LOBYTE(__p) = 0;
    v97 = 0;
    v58 = sub_24BCB01B0(v57, &__p);
    sub_24BC9F18C(&v97, __p);
    if (v58)
    {
      goto LABEL_37;
    }

    v59 = sub_24BC9C8EC(v99, "aabb");
    v60 = sub_24BC9C8EC(v59, "min");
    v61 = sub_24BC9C8EC(v60, "z");
    LODWORD(__p) = 0;
    sub_24BCB0594(v61, &__p, v62);
    v34 = v95;
    v34.i32[2] = __p;
  }

  v95 = v34;
LABEL_37:
  v63 = sub_24BC9C8EC(v99, "aabb");
  v64 = sub_24BC9C8EC(v63, "max");
  LOBYTE(__p) = 0;
  v97 = 0;
  v65 = sub_24BCB01B0(v64, &__p);
  sub_24BC9F18C(&v97, __p);
  *&v66 = 0x80000000800000;
  *(&v66 + 1) = 0x80000000800000;
  if ((v65 & 1) == 0)
  {
    v67 = sub_24BC9C8EC(v99, "aabb");
    v68 = sub_24BC9C8EC(v67, "max");
    v69 = sub_24BC9C8EC(v68, "x");
    LOBYTE(__p) = 0;
    v97 = 0;
    v70 = sub_24BCB01B0(v69, &__p);
    sub_24BC9F18C(&v97, __p);
    *&v71 = 0x80000000800000;
    *(&v71 + 1) = 0x80000000800000;
    v94 = v71;
    if ((v70 & 1) == 0)
    {
      v72 = sub_24BC9C8EC(v99, "aabb");
      v73 = sub_24BC9C8EC(v72, "max");
      v74 = sub_24BC9C8EC(v73, "x");
      LODWORD(__p) = 0;
      sub_24BCB0594(v74, &__p, v75);
      *(&v76 + 1) = 0x80000000800000;
      *&v76 = __p | 0x80000000000000;
      v94 = v76;
    }

    v77 = sub_24BC9C8EC(v99, "aabb");
    v78 = sub_24BC9C8EC(v77, "max");
    v79 = sub_24BC9C8EC(v78, "y");
    LOBYTE(__p) = 0;
    v97 = 0;
    v80 = sub_24BCB01B0(v79, &__p);
    sub_24BC9F18C(&v97, __p);
    if ((v80 & 1) == 0)
    {
      v81 = sub_24BC9C8EC(v99, "aabb");
      v82 = sub_24BC9C8EC(v81, "max");
      v83 = sub_24BC9C8EC(v82, "y");
      LODWORD(__p) = 0;
      sub_24BCB0594(v83, &__p, v84);
      v85 = v94;
      DWORD1(v85) = __p;
      v94 = v85;
    }

    v86 = sub_24BC9C8EC(v99, "aabb");
    v87 = sub_24BC9C8EC(v86, "max");
    v88 = sub_24BC9C8EC(v87, "z");
    LOBYTE(__p) = 0;
    v97 = 0;
    v89 = sub_24BCB01B0(v88, &__p);
    sub_24BC9F18C(&v97, __p);
    if (v89)
    {
      v66 = v94;
    }

    else
    {
      v90 = sub_24BC9C8EC(v99, "aabb");
      v91 = sub_24BC9C8EC(v90, "max");
      v92 = sub_24BC9C8EC(v91, "z");
      LODWORD(__p) = 0;
      sub_24BCB0594(v92, &__p, v93);
      v66 = v94;
      DWORD2(v66) = __p;
    }
  }

  *(a1 + 32) = v95;
  *(a1 + 48) = v66;
  sub_24BC836D4(&__p, "aabb");
  sub_24BC9CAB4(v99, &__p);
  if (SHIBYTE(v98) < 0)
  {
    operator delete(__p);
  }

  goto LABEL_47;
}

void sub_24BE299E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v18 + 8), *(v19 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE299CCLL);
  }

  _Unwind_Resume(a1);
}

void sub_24BE29A98()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BCA5970();
}

void sub_24BE29EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_24BC9F18C((v46 + 8), a10);
  v50 = (v48 - 96);
  v51 = -160;
  do
  {
    sub_24BC9F18C(v50, *(v50 - 8));
    v50 -= 4;
    v51 += 32;
  }

  while (v51);
  v52 = &a19;
  v53 = -64;
  do
  {
    sub_24BC9F18C(v52, *(v52 - 8));
    v52 -= 4;
    v53 += 32;
  }

  while (v53);
  v54 = &a27;
  v55 = -64;
  do
  {
    sub_24BC9F18C(v54, *(v54 - 8));
    v54 -= 4;
    v55 += 32;
  }

  while (v55);
  v56 = &a35;
  v57 = -64;
  do
  {
    sub_24BC9F18C(v56, *(v56 - 8));
    v56 -= 4;
    v57 += 32;
  }

  while (v57);
  v58 = &a43;
  v59 = -64;
  do
  {
    sub_24BC9F18C(v58, *(v58 - 8));
    v58 -= 4;
    v59 += 32;
  }

  while (v59);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a46 + i + 40), *(&a46 + i + 32));
  }

  sub_24BC9F18C((v47 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE2A088(_DWORD *a1, void *a2)
{
  v30[0] = 0;
  v31 = 0;
  sub_24BC9C7E0(a2, v30);
  if (v30[0] == 1)
  {
    v3 = sub_24BCB0080(v31, "uvUtilization");
    if (v31 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v30, "uvUtilization");
      LOBYTE(__p) = 0;
      v28 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v28, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v30, "uvUtilization");
        LODWORD(__p) = 0;
        sub_24BCB0594(v6, &__p, v7);
        *a1 = __p;
        sub_24BC836D4(&__p, "uvUtilization");
        sub_24BC9CAB4(v30, &__p);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v30[0] == 1)
    {
      v8 = sub_24BCB0080(v31, "maxStretch");
      if (v31 + 8 != v8)
      {
        v9 = sub_24BC9C8EC(v30, "maxStretch");
        LOBYTE(__p) = 0;
        v28 = 0;
        v10 = sub_24BCB01B0(v9, &__p);
        sub_24BC9F18C(&v28, __p);
        if ((v10 & 1) == 0)
        {
          v11 = sub_24BC9C8EC(v30, "maxStretch");
          LODWORD(__p) = 0;
          sub_24BCB0594(v11, &__p, v12);
          a1[1] = __p;
          sub_24BC836D4(&__p, "maxStretch");
          sub_24BC9CAB4(v30, &__p);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v30[0] == 1)
      {
        v13 = sub_24BCB0080(v31, "avgStretch");
        if (v31 + 8 != v13)
        {
          v14 = sub_24BC9C8EC(v30, "avgStretch");
          LOBYTE(__p) = 0;
          v28 = 0;
          v15 = sub_24BCB01B0(v14, &__p);
          sub_24BC9F18C(&v28, __p);
          if ((v15 & 1) == 0)
          {
            v16 = sub_24BC9C8EC(v30, "avgStretch");
            LODWORD(__p) = 0;
            sub_24BCB0594(v16, &__p, v17);
            a1[2] = __p;
            sub_24BC836D4(&__p, "avgStretch");
            sub_24BC9CAB4(v30, &__p);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v30[0] == 1)
        {
          v18 = sub_24BCB0080(v31, "chartNumber");
          if (v31 + 8 != v18)
          {
            v19 = sub_24BC9C8EC(v30, "chartNumber");
            LOBYTE(__p) = 0;
            v28 = 0;
            v20 = sub_24BCB01B0(v19, &__p);
            sub_24BC9F18C(&v28, __p);
            if ((v20 & 1) == 0)
            {
              v21 = sub_24BC9C8EC(v30, "chartNumber");
              LODWORD(__p) = 0;
              sub_24BCB07E0(v21, &__p);
              a1[3] = __p;
              sub_24BC836D4(&__p, "chartNumber");
              sub_24BC9CAB4(v30, &__p);
              if (SHIBYTE(v29) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v30[0] == 1)
          {
            v22 = sub_24BCB0080(v31, "chartBoundaryLength");
            if (v31 + 8 != v22)
            {
              v23 = sub_24BC9C8EC(v30, "chartBoundaryLength");
              LOBYTE(__p) = 0;
              v28 = 0;
              v24 = sub_24BCB01B0(v23, &__p);
              sub_24BC9F18C(&v28, __p);
              if ((v24 & 1) == 0)
              {
                v25 = sub_24BC9C8EC(v30, "chartBoundaryLength");
                LODWORD(__p) = 0;
                sub_24BCB0594(v25, &__p, v26);
                a1[4] = __p;
                sub_24BC836D4(&__p, "chartBoundaryLength");
                sub_24BC9CAB4(v30, &__p);
                if (SHIBYTE(v29) < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v30 + 8 * *(v29 - 24) + 272) = 2;
  sub_24BC9BD14(&v29);
}

void sub_24BE2A664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE2A648);
  }

  _Unwind_Resume(a1);
}

void sub_24BE2A708(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE26ED4();
}

uint64_t sub_24BE2A858(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE276DC(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE2A9C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE2A9E0(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE27F90();
}

uint64_t sub_24BE2AB30(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE28F74(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE2AC9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE2ACB8(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE29A98();
}

uint64_t sub_24BE2AE08(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE2A088(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE2AF74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_24BE2B0B0@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 == 2)
  {
    v6 = xmmword_24BFDC5C0;
    v3 = sub_24BCBBD2C(&v6);
  }

  else if (a1 == 1)
  {
    *&v6 = 0x120E0815050C0F5ALL;
    BYTE14(v6) = 0;
    WORD6(v6) = 5659;
    DWORD2(v6) = 336928021;
    v3 = sub_24BCBCD64(&v6);
  }

  else if (a1)
  {
    v6 = xmmword_24BFDC5A0;
    v3 = sub_24BCBBD2C(&v6);
  }

  else
  {
    strcpy(&v6, ">m}{p{uwj");
    v3 = sub_24BD56360(&v6);
  }

  result = sub_24BC836D4(a2, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BE2B1B0(const std::string *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_24BD56008(a1, &__s1);
  strcpy(&v16, "*yiodoac~");
  v1 = sub_24BD56360(&v16);
  v2 = strlen(v1);
  v3 = v2;
  v4 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_24BD2237C();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v2 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, v1, v3))
  {
LABEL_8:
    *&v16 = 0x1B07011C0C050653;
    BYTE14(v16) = 0;
    WORD6(v16) = 7954;
    DWORD2(v16) = 488379420;
    v6 = sub_24BCBCD64(&v16);
    v7 = strlen(v6);
    v8 = v7;
    v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v7 != __s1.__r_.__value_.__l.__size_)
      {
        goto LABEL_15;
      }

      if (v7 == -1)
      {
        sub_24BD2237C();
      }

      v10 = __s1.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_15;
      }

      v10 = &__s1;
    }

    if (!memcmp(v10, v6, v8))
    {
      v12 = 1;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_15:
    v16 = xmmword_24BFED9B0;
    v11 = sub_24BCBBD2C(&v16);
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0 && (strlen(v11) & __s1.__r_.__value_.__l.__size_) == 0xFFFFFFFFFFFFFFFFLL)
    {
      sub_24BD2237C();
    }

    v12 = 2;
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v12 = 0;
  if (v4 < 0)
  {
LABEL_20:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_21:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_24BE2B364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE2B3A8()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  LOBYTE(v2.__locale_) = 3;
  sub_24BCA59CC();
}

void sub_24BE2B5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, std::locale a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_24BC9F18C((v24 + 8), a15);
  sub_24BC9F18C((v26 - 64), *(v26 - 72));
  v28 = &a24;
  v29 = -64;
  do
  {
    sub_24BC9F18C(v28, *(v28 - 8));
    v28 -= 4;
    v29 += 32;
  }

  while (v29);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v25 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_24BE2B6A4(_DWORD *a1, void *a2)
{
  v7[0] = 0;
  v8 = 0;
  sub_24BC9C7E0(a2, v7);
  v3 = sub_24BC9C8EC(v7, "tbn");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v4 = sub_24BCB01B0(v3, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v4 & 1) == 0)
  {
    v5 = sub_24BC9C8EC(v7, "tbn");
    sub_24BDAEAC8(v5, &__p);
    *a1 = sub_24BE2B1B0(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "tbn");
    sub_24BC9CAB4(v7, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BE2B994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE2B978);
  }

  _Unwind_Resume(a1);
}

void sub_24BE2BA24(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE2B3A8();
}

uint64_t sub_24BE2BB74(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE2B6A4(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE2BCE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BE2BD5C(void *a1, char *__src, unint64_t a3)
{
  v5 = a1[5];
  if (v5 >= a3)
  {
    v10 = a1[1];
    v11 = (v10 + 8 * (a1[4] >> 10));
    if (a1[2] == v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11 + 4 * (a1[4] & 0x3FFLL);
    }

    sub_24BE2C05C(__src, v12, &__src[4 * a3], v11, v14);
    return sub_24BE2BF60(a1, v14[1], v14[2]);
  }

  else
  {
    v6 = &__src[4 * v5];
    v7 = a1[1];
    v8 = (v7 + 8 * (a1[4] >> 10));
    if (a1[2] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = *v8 + 4 * (a1[4] & 0x3FFLL);
    }

    sub_24BE2C05C(__src, v9, v6, v8, v14);
    return sub_24BE2BE40(a1, v6, a3 - a1[5]);
  }
}

uint64_t *sub_24BE2BE40(void *a1, int *a2, unint64_t a3)
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
  if (a3 > v10)
  {
    sub_24BE2C128(a1, a3 - v10);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v11 = (v6 + 8 * (v9 >> 10));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v11 + 4 * (v9 & 0x3FF);
    v13 = v12;
  }

  v20[0] = v11;
  v20[1] = v13;
  result = sub_24BE2C440(v20, a3);
  while (v12 != v15)
  {
    v16 = (v11 == result ? v15 : *v11 + 4096);
    if (v12 == v16)
    {
      v16 = v12;
    }

    else
    {
      v17 = v12;
      do
      {
        v18 = *a2++;
        *v17++ = v18;
      }

      while (v17 != v16);
    }

    a1[5] += (v16 - v12) >> 2;
    if (v11 == result)
    {
      break;
    }

    v19 = v11[1];
    ++v11;
    v12 = v19;
  }

  return result;
}

uint64_t sub_24BE2BF60(uint64_t result, char *a2, uint64_t a3)
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

      sub_24BE2C440(v16, v15);
      v3[5] -= v12;
      do
      {
        result = sub_24BE2C4A4(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

char *sub_24BE2C05C@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 2 >= v11 >> 2 ? v11 >> 2 : (a3 - v9) >> 2;
      if (v12)
      {
        __src = memmove(__dst, v9, 4 * v12);
      }

      v9 += 4 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 4 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

void *sub_24BE2C128(void *result, unint64_t a2)
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
      result = sub_24BD413CC(v2, v16);
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
        sub_24BCAD8CC(result, v12);
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
      result = sub_24BD413CC(v2, v16);
    }
  }

  return result;
}

void sub_24BE2C3CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BE2C440(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BE2C4A4(void *a1, int a2)
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

void *sub_24BE2C514(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(result, a2);
  }

  return result;
}

void *sub_24BE2C5B8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA421C(result, a2);
  }

  return result;
}

void sub_24BE2C638(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE2C6B0()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAE62C();
}

void sub_24BE2CAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_24BC9F18C((v46 + 8), a10);
  v50 = (v48 - 96);
  v51 = -160;
  do
  {
    sub_24BC9F18C(v50, *(v50 - 8));
    v50 -= 4;
    v51 += 32;
  }

  while (v51);
  v52 = &a19;
  v53 = -64;
  do
  {
    sub_24BC9F18C(v52, *(v52 - 8));
    v52 -= 4;
    v53 += 32;
  }

  while (v53);
  v54 = &a27;
  v55 = -64;
  do
  {
    sub_24BC9F18C(v54, *(v54 - 8));
    v54 -= 4;
    v55 += 32;
  }

  while (v55);
  v56 = &a35;
  v57 = -64;
  do
  {
    sub_24BC9F18C(v56, *(v56 - 8));
    v56 -= 4;
    v57 += 32;
  }

  while (v57);
  v58 = &a43;
  v59 = -64;
  do
  {
    sub_24BC9F18C(v58, *(v58 - 8));
    v58 -= 4;
    v59 += 32;
  }

  while (v59);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a46 + i + 40), *(&a46 + i + 32));
  }

  sub_24BC9F18C((v47 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE2CC9C(uint64_t a1, void *a2)
{
  v24[0] = 0;
  v25 = 0;
  sub_24BC9C7E0(a2, v24);
  if (v24[0] == 1)
  {
    v3 = sub_24BCB0080(v25, "vertex_density");
    if (v25 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v24, "vertex_density");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v24, "vertex_density");
        sub_24BDAEAC8(v6, &__p);
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *a1 = __p;
        sub_24BC836D4(&__p, "vertex_density");
        sub_24BC9CAB4(v24, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v24[0] == 1)
    {
      v7 = sub_24BCB0080(v25, "enable_hierachy");
      if (v25 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v24, "enable_hierachy");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v24, "enable_hierachy");
          __p.__r_.__value_.__s.__data_[0] = 0;
          sub_24BCB0940(v10, &__p);
          *(a1 + 24) = __p.__r_.__value_.__s.__data_[0];
          sub_24BC836D4(&__p, "enable_hierachy");
          sub_24BC9CAB4(v24, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v24[0] == 1)
      {
        v11 = sub_24BCB0080(v25, "enable_split_long_edges");
        if (v25 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v24, "enable_split_long_edges");
          __p.__r_.__value_.__s.__data_[0] = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
          if ((v13 & 1) == 0)
          {
            v14 = sub_24BC9C8EC(v24, "enable_split_long_edges");
            __p.__r_.__value_.__s.__data_[0] = 0;
            sub_24BCB0940(v14, &__p);
            *(a1 + 25) = __p.__r_.__value_.__s.__data_[0];
            sub_24BC836D4(&__p, "enable_split_long_edges");
            sub_24BC9CAB4(v24, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v24[0] == 1)
        {
          v15 = sub_24BCB0080(v25, "only_run_faces_extraction");
          if (v25 + 8 != v15)
          {
            v16 = sub_24BC9C8EC(v24, "only_run_faces_extraction");
            __p.__r_.__value_.__s.__data_[0] = 0;
            __p.__r_.__value_.__l.__size_ = 0;
            v17 = sub_24BCB01B0(v16, &__p);
            sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
            if ((v17 & 1) == 0)
            {
              v18 = sub_24BC9C8EC(v24, "only_run_faces_extraction");
              __p.__r_.__value_.__s.__data_[0] = 0;
              sub_24BCB0940(v18, &__p);
              *(a1 + 26) = __p.__r_.__value_.__s.__data_[0];
              sub_24BC836D4(&__p, "only_run_faces_extraction");
              sub_24BC9CAB4(v24, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          if (v24[0] == 1)
          {
            v19 = sub_24BCB0080(v25, "process_uv_merging");
            if (v25 + 8 != v19)
            {
              v20 = sub_24BC9C8EC(v24, "process_uv_merging");
              __p.__r_.__value_.__s.__data_[0] = 0;
              __p.__r_.__value_.__l.__size_ = 0;
              v21 = sub_24BCB01B0(v20, &__p);
              sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
              if ((v21 & 1) == 0)
              {
                v22 = sub_24BC9C8EC(v24, "process_uv_merging");
                __p.__r_.__value_.__s.__data_[0] = 0;
                sub_24BCB0940(v22, &__p);
                *(a1 + 27) = __p.__r_.__value_.__s.__data_[0];
                sub_24BC836D4(&__p, "process_uv_merging");
                sub_24BC9CAB4(v24, &__p.__r_.__value_.__l.__data_);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BE2D28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE2D270);
  }

  _Unwind_Resume(a1);
}

void sub_24BE2D334(const std::error_code *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = 0;
  sub_24BC848F0(&v4);
  sub_24BD6A950(a1);
}

void sub_24BE2DAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  std::locale::~locale(&STACK[0x268]);
  sub_24BC9F18C((v12 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE2DD80(uint64_t a1, void *a2)
{
  v43[0] = 0;
  v44 = 0;
  sub_24BC9C7E0(a2, v43);
  if (v43[0] == 1)
  {
    v3 = sub_24BCB0080(v44, "time_hierarchy_building");
    if (v44 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v43, "time_hierarchy_building");
      LOBYTE(__p) = 0;
      v41 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v41, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v43, "time_hierarchy_building");
        __p = 0;
        sub_24BCB0BDC(v6, &__p);
        *(a1 + 16) = __p;
        sub_24BC836D4(&__p, "time_hierarchy_building");
        sub_24BC9CAB4(v43, &__p);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v43[0] == 1)
    {
      v7 = sub_24BCB0080(v44, "time_fields_computation");
      if (v44 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v43, "time_fields_computation");
        LOBYTE(__p) = 0;
        v41 = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&v41, __p);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v43, "time_fields_computation");
          __p = 0;
          sub_24BCB0BDC(v10, &__p);
          *(a1 + 24) = __p;
          sub_24BC836D4(&__p, "time_fields_computation");
          sub_24BC9CAB4(v43, &__p);
          if (SHIBYTE(v42) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v43[0] == 1)
      {
        v11 = sub_24BCB0080(v44, "time_edge_classification");
        if (v44 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v43, "time_edge_classification");
          LOBYTE(__p) = 0;
          v41 = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&v41, __p);
          if ((v13 & 1) == 0)
          {
            v14 = sub_24BC9C8EC(v43, "time_edge_classification");
            __p = 0;
            sub_24BCB0BDC(v14, &__p);
            *(a1 + 32) = __p;
            sub_24BC836D4(&__p, "time_edge_classification");
            sub_24BC9CAB4(v43, &__p);
            if (SHIBYTE(v42) < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v43[0] == 1)
        {
          v15 = sub_24BCB0080(v44, "time_quadface_extraction");
          if (v44 + 8 != v15)
          {
            v16 = sub_24BC9C8EC(v43, "time_quadface_extraction");
            LOBYTE(__p) = 0;
            v41 = 0;
            v17 = sub_24BCB01B0(v16, &__p);
            sub_24BC9F18C(&v41, __p);
            if ((v17 & 1) == 0)
            {
              v18 = sub_24BC9C8EC(v43, "time_quadface_extraction");
              __p = 0;
              sub_24BCB0BDC(v18, &__p);
              *(a1 + 40) = __p;
              sub_24BC836D4(&__p, "time_quadface_extraction");
              sub_24BC9CAB4(v43, &__p);
              if (SHIBYTE(v42) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v43[0] == 1)
          {
            v19 = sub_24BCB0080(v44, "time_post_processing");
            if (v44 + 8 != v19)
            {
              v20 = sub_24BC9C8EC(v43, "time_post_processing");
              LOBYTE(__p) = 0;
              v41 = 0;
              v21 = sub_24BCB01B0(v20, &__p);
              sub_24BC9F18C(&v41, __p);
              if ((v21 & 1) == 0)
              {
                v22 = sub_24BC9C8EC(v43, "time_post_processing");
                __p = 0;
                sub_24BCB0BDC(v22, &__p);
                *(a1 + 48) = __p;
                sub_24BC836D4(&__p, "time_post_processing");
                sub_24BC9CAB4(v43, &__p);
                if (SHIBYTE(v42) < 0)
                {
                  operator delete(__p);
                }
              }
            }

            if (v43[0] == 1)
            {
              v23 = sub_24BCB0080(v44, "quadmesh_grid_scale");
              if (v44 + 8 != v23)
              {
                v24 = sub_24BC9C8EC(v43, "quadmesh_grid_scale");
                LOBYTE(__p) = 0;
                v41 = 0;
                v25 = sub_24BCB01B0(v24, &__p);
                sub_24BC9F18C(&v41, __p);
                if ((v25 & 1) == 0)
                {
                  v26 = sub_24BC9C8EC(v43, "quadmesh_grid_scale");
                  LODWORD(__p) = 0;
                  sub_24BCB0594(v26, &__p, v27);
                  *(a1 + 56) = __p;
                  sub_24BC836D4(&__p, "quadmesh_grid_scale");
                  sub_24BC9CAB4(v43, &__p);
                  if (SHIBYTE(v42) < 0)
                  {
                    operator delete(__p);
                  }
                }
              }

              if (v43[0] == 1)
              {
                v28 = sub_24BCB0080(v44, "num_of_removed_edges");
                if (v44 + 8 != v28)
                {
                  v29 = sub_24BC9C8EC(v43, "num_of_removed_edges");
                  LOBYTE(__p) = 0;
                  v41 = 0;
                  v30 = sub_24BCB01B0(v29, &__p);
                  sub_24BC9F18C(&v41, __p);
                  if ((v30 & 1) == 0)
                  {
                    v31 = sub_24BC9C8EC(v43, "num_of_removed_edges");
                    LODWORD(__p) = 0;
                    sub_24BCB07E0(v31, &__p);
                    *(a1 + 60) = __p;
                    sub_24BC836D4(&__p, "num_of_removed_edges");
                    sub_24BC9CAB4(v43, &__p);
                    if (SHIBYTE(v42) < 0)
                    {
                      operator delete(__p);
                    }
                  }
                }

                if (v43[0] == 1)
                {
                  v32 = sub_24BCB0080(v44, "num_of_snapped_edges");
                  if (v44 + 8 != v32)
                  {
                    v33 = sub_24BC9C8EC(v43, "num_of_snapped_edges");
                    LOBYTE(__p) = 0;
                    v41 = 0;
                    v34 = sub_24BCB01B0(v33, &__p);
                    sub_24BC9F18C(&v41, __p);
                    if ((v34 & 1) == 0)
                    {
                      v35 = sub_24BC9C8EC(v43, "num_of_snapped_edges");
                      LODWORD(__p) = 0;
                      sub_24BCB07E0(v35, &__p);
                      *(a1 + 64) = __p;
                      sub_24BC836D4(&__p, "num_of_snapped_edges");
                      sub_24BC9CAB4(v43, &__p);
                      if (SHIBYTE(v42) < 0)
                      {
                        operator delete(__p);
                      }
                    }
                  }

                  if (v43[0] == 1)
                  {
                    v36 = sub_24BCB0080(v44, "num_of_filled_holes");
                    if (v44 + 8 != v36)
                    {
                      v37 = sub_24BC9C8EC(v43, "num_of_filled_holes");
                      LOBYTE(__p) = 0;
                      v41 = 0;
                      v38 = sub_24BCB01B0(v37, &__p);
                      sub_24BC9F18C(&v41, __p);
                      if ((v38 & 1) == 0)
                      {
                        v39 = sub_24BC9C8EC(v43, "num_of_filled_holes");
                        LODWORD(__p) = 0;
                        sub_24BCB07E0(v39, &__p);
                        *(a1 + 68) = __p;
                        sub_24BC836D4(&__p, "num_of_filled_holes");
                        sub_24BC9CAB4(v43, &__p);
                        if (SHIBYTE(v42) < 0)
                        {
                          operator delete(__p);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v43 + 8 * *(v42 - 24) + 272) = 2;
  sub_24BC9BD14(&v42);
}

void sub_24BE2E62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE2E610);
  }

  _Unwind_Resume(a1);
}

void sub_24BE2E6F0()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 0;
  v2 = 0;
  sub_24BC848F0(&v0);
  sub_24BE2C6B0();
}

void sub_24BE2EBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, std::locale a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_24BC9F18C((v19 + 8), a10);
  sub_24BC9F18C((v21 - 120), *(v21 - 128));
  v23 = (v21 - 152);
  v24 = -64;
  do
  {
    sub_24BC9F18C(v23, *(v23 - 8));
    v23 -= 4;
    v24 += 32;
  }

  while (v24);
  sub_24BC9F18C((v20 + 8), a12);
  sub_24BC84B94(&a14);
  sub_24BC9F18C((v21 - 200), *(v21 - 208));
  _Unwind_Resume(a1);
}

void sub_24BE2ECB8(uint64_t a1, void *a2)
{
  v8[0] = 0;
  v9 = 0;
  sub_24BC9C7E0(a2, v8);
  if (v8[0] != 1 || (v2 = sub_24BCB0080(v9, "bake_options"), v9 + 8 == v2) || (v3 = sub_24BC9C8EC(v8, "bake_options"), LOBYTE(__p) = 0, v6 = 0, v4 = sub_24BCB01B0(v3, &__p), sub_24BC9F18C(&v6, __p), (v4 & 1) != 0))
  {
    sub_24BC836D4(&__p, "only_run_faces_extraction");
    sub_24BC9CAB4(v8, &__p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p);
    }

    sub_24BC836D4(&__p, "process_uv_merging");
    sub_24BC9CAB4(v8, &__p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p);
    }

    sub_24BC848F0(&__p);
    *(v8 + 8 * *(v7 - 24) + 272) = 2;
    sub_24BC9BD14(&v7);
  }

  sub_24BC848F0(&__p);
  *(v8 + 8 * *(v7 - 24) + 272) = 2;
  sub_24BC9C8EC(v8, "bake_options");
  sub_24BC9BD14(&v7);
}

void sub_24BE2F208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC84B94(&a15);
  sub_24BC9F18C((v20 + 8), *(v21 - 80));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE2EFC0);
  }

  _Unwind_Resume(a1);
}

void sub_24BE2F2C8(const std::error_code *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  sub_24BC848F0(&v2);
  sub_24BE2D334(a1);
}

void sub_24BE2F74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, std::locale a14)
{
  sub_24BC9F18C((v14 + 8), a10);
  sub_24BC9F18C((v16 - 120), *(v16 - 128));
  v18 = (v16 - 152);
  v19 = -64;
  do
  {
    sub_24BC9F18C(v18, *(v18 - 8));
    v18 -= 4;
    v19 += 32;
  }

  while (v19);
  sub_24BC9F18C(&a13, a12);
  sub_24BC84B94(&a14);
  sub_24BC9F18C((v15 + 8), *(v16 - 208));
  _Unwind_Resume(a1);
}

void sub_24BE2F818(uint64_t a1, void *a2)
{
  v8[0] = 0;
  v9 = 0;
  sub_24BC9C7E0(a2, v8);
  if (v8[0] == 1)
  {
    v2 = sub_24BCB0080(v9, "bake_report");
    if (v9 + 8 != v2)
    {
      v3 = sub_24BC9C8EC(v8, "bake_report");
      LOBYTE(v5) = 0;
      v6 = 0;
      v4 = sub_24BCB01B0(v3, &v5);
      sub_24BC9F18C(&v6, v5);
      if ((v4 & 1) == 0)
      {
        sub_24BC848F0(&v5);
        *(v8 + 8 * *(v7 - 24) + 272) = 2;
        sub_24BC9C8EC(v8, "bake_report");
        sub_24BC9BD14(&v7);
      }
    }
  }

  sub_24BC848F0(&v5);
  *(v8 + 8 * *(v7 - 24) + 272) = 2;
  sub_24BC9BD14(&v7);
}

void sub_24BE2FD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC84B94(&a15);
  sub_24BC9F18C((v15 + 8), *(v16 - 80));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE2FAC8);
  }

  _Unwind_Resume(a1);
}

void sub_24BE2FDA8()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BCB0AC8();
}

void sub_24BE300C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_24BC9F18C((v30 + 8), a10);
  v34 = (v32 - 96);
  v35 = -96;
  do
  {
    sub_24BC9F18C(v34, *(v34 - 8));
    v34 -= 4;
    v35 += 32;
  }

  while (v35);
  v36 = &a19;
  v37 = -64;
  do
  {
    sub_24BC9F18C(v36, *(v36 - 8));
    v36 -= 4;
    v37 += 32;
  }

  while (v37);
  v38 = &a27;
  v39 = -64;
  do
  {
    sub_24BC9F18C(v38, *(v38 - 8));
    v38 -= 4;
    v39 += 32;
  }

  while (v39);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a30 + i + 40), *(&a30 + i + 32));
  }

  sub_24BC9F18C((v31 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE30200(uint64_t a1, void *a2)
{
  v18[0] = 0;
  v19 = 0;
  sub_24BC9C7E0(a2, v18);
  if (v18[0] == 1)
  {
    v3 = sub_24BCB0080(v19, "output_face_number");
    if (v19 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v18, "output_face_number");
      LOBYTE(__p) = 0;
      v16 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v16, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v18, "output_face_number");
        LODWORD(__p) = 0;
        sub_24BCB07E0(v6, &__p);
        *a1 = __p;
        sub_24BC836D4(&__p, "output_face_number");
        sub_24BC9CAB4(v18, &__p);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v18[0] == 1)
    {
      v7 = sub_24BCB0080(v19, "enable_simplify");
      if (v19 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v18, "enable_simplify");
        LOBYTE(__p) = 0;
        v16 = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&v16, __p);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v18, "enable_simplify");
          LOBYTE(__p) = 0;
          sub_24BCB0940(v10, &__p);
          *(a1 + 4) = __p;
          sub_24BC836D4(&__p, "enable_simplify");
          sub_24BC9CAB4(v18, &__p);
          if (SHIBYTE(v17) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v18[0] == 1)
      {
        v11 = sub_24BCB0080(v19, "enable_hole_filling");
        if (v19 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v18, "enable_hole_filling");
          LOBYTE(__p) = 0;
          v16 = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&v16, __p);
          if ((v13 & 1) == 0)
          {
            v14 = sub_24BC9C8EC(v18, "enable_hole_filling");
            LOBYTE(__p) = 0;
            sub_24BCB0940(v14, &__p);
            *(a1 + 16) = __p;
            sub_24BC836D4(&__p, "enable_hole_filling");
            sub_24BC9CAB4(v18, &__p);
            if (SHIBYTE(v17) < 0)
            {
              operator delete(__p);
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v18 + 8 * *(v17 - 24) + 272) = 2;
  sub_24BC9BD14(&v17);
}

void sub_24BE30674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE30658);
  }

  _Unwind_Resume(a1);
}

void sub_24BE30708(const std::error_code *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = 0;
  sub_24BC848F0(&v4);
  sub_24BD6A950(a1);
}

void sub_24BE311A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BC9F18C((v67 + 8), a10);
  v70 = &STACK[0x550];
  v71 = -448;
  do
  {
    sub_24BC9F18C(v70, *(v70 - 8));
    v70 -= 4;
    v71 += 32;
  }

  while (v71);
  v72 = &a19;
  v73 = -64;
  do
  {
    sub_24BC9F18C(v72, *(v72 - 8));
    v72 -= 4;
    v73 += 32;
  }

  while (v73);
  v74 = &a27;
  v75 = -64;
  do
  {
    sub_24BC9F18C(v74, *(v74 - 8));
    v74 -= 4;
    v75 += 32;
  }

  while (v75);
  v76 = &a35;
  v77 = -64;
  do
  {
    sub_24BC9F18C(v76, *(v76 - 8));
    v76 -= 4;
    v77 += 32;
  }

  while (v77);
  v78 = &a43;
  v79 = -64;
  do
  {
    sub_24BC9F18C(v78, *(v78 - 8));
    v78 -= 4;
    v79 += 32;
  }

  while (v79);
  v80 = &a51;
  v81 = -64;
  do
  {
    sub_24BC9F18C(v80, *(v80 - 8));
    v80 -= 4;
    v81 += 32;
  }

  while (v81);
  v82 = &a59;
  v83 = -64;
  do
  {
    sub_24BC9F18C(v82, *(v82 - 8));
    v82 -= 4;
    v83 += 32;
  }

  while (v83);
  v84 = &a67;
  v85 = -64;
  do
  {
    sub_24BC9F18C(v84, *(v84 - 8));
    v84 -= 4;
    v85 += 32;
  }

  while (v85);
  v86 = &STACK[0x210];
  v87 = -64;
  do
  {
    sub_24BC9F18C(v86, *(v86 - 8));
    v86 -= 4;
    v87 += 32;
  }

  while (v87);
  v88 = &STACK[0x250];
  v89 = -64;
  do
  {
    sub_24BC9F18C(v88, *(v88 - 8));
    v88 -= 4;
    v89 += 32;
  }

  while (v89);
  v90 = &STACK[0x290];
  v91 = -64;
  do
  {
    sub_24BC9F18C(v90, *(v90 - 8));
    v90 -= 4;
    v91 += 32;
  }

  while (v91);
  v92 = &STACK[0x2D0];
  v93 = -64;
  do
  {
    sub_24BC9F18C(v92, *(v92 - 8));
    v92 -= 4;
    v93 += 32;
  }

  while (v93);
  v94 = &STACK[0x310];
  v95 = -64;
  do
  {
    sub_24BC9F18C(v94, *(v94 - 8));
    v94 -= 4;
    v95 += 32;
  }

  while (v95);
  v96 = &STACK[0x350];
  v97 = -64;
  do
  {
    sub_24BC9F18C(v96, *(v96 - 8));
    v96 -= 4;
    v97 += 32;
  }

  while (v97);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&STACK[0x368] + i + 40), *(&STACK[0x368] + i + 32));
  }

  sub_24BC9F18C((v68 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE3152C(uint64_t a1, void *a2)
{
  v65[0] = 0;
  v66 = 0;
  sub_24BC9C7E0(a2, v65);
  if (v65[0] == 1)
  {
    v3 = sub_24BCB0080(v66, "time_pre_processing");
    if (v66 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v65, "time_pre_processing");
      LOBYTE(__p) = 0;
      v63 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v63, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v65, "time_pre_processing");
        __p = 0;
        sub_24BCB0BDC(v6, &__p);
        *(a1 + 16) = __p;
        sub_24BC836D4(&__p, "time_pre_processing");
        sub_24BC9CAB4(v65, &__p);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v65[0] == 1)
    {
      v7 = sub_24BCB0080(v66, "time_tangential_field");
      if (v66 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v65, "time_tangential_field");
        LOBYTE(__p) = 0;
        v63 = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&v63, __p);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v65, "time_tangential_field");
          __p = 0;
          sub_24BCB0BDC(v10, &__p);
          *(a1 + 24) = __p;
          sub_24BC836D4(&__p, "time_tangential_field");
          sub_24BC9CAB4(v65, &__p);
          if (SHIBYTE(v64) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v65[0] == 1)
      {
        v11 = sub_24BCB0080(v66, "time_deformation");
        if (v66 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v65, "time_deformation");
          LOBYTE(__p) = 0;
          v63 = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&v63, __p);
          if ((v13 & 1) == 0)
          {
            v14 = sub_24BC9C8EC(v65, "time_deformation");
            __p = 0;
            sub_24BCB0BDC(v14, &__p);
            *(a1 + 32) = __p;
            sub_24BC836D4(&__p, "time_deformation");
            sub_24BC9CAB4(v65, &__p);
            if (SHIBYTE(v64) < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v65[0] == 1)
        {
          v15 = sub_24BCB0080(v66, "time_quadrangulation");
          if (v66 + 8 != v15)
          {
            v16 = sub_24BC9C8EC(v65, "time_quadrangulation");
            LOBYTE(__p) = 0;
            v63 = 0;
            v17 = sub_24BCB01B0(v16, &__p);
            sub_24BC9F18C(&v63, __p);
            if ((v17 & 1) == 0)
            {
              v18 = sub_24BC9C8EC(v65, "time_quadrangulation");
              __p = 0;
              sub_24BCB0BDC(v18, &__p);
              *(a1 + 40) = __p;
              sub_24BC836D4(&__p, "time_quadrangulation");
              sub_24BC9CAB4(v65, &__p);
              if (SHIBYTE(v64) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v65[0] == 1)
          {
            v19 = sub_24BCB0080(v66, "time_discretization");
            if (v66 + 8 != v19)
            {
              v20 = sub_24BC9C8EC(v65, "time_discretization");
              LOBYTE(__p) = 0;
              v63 = 0;
              v21 = sub_24BCB01B0(v20, &__p);
              sub_24BC9F18C(&v63, __p);
              if ((v21 & 1) == 0)
              {
                v22 = sub_24BC9C8EC(v65, "time_discretization");
                __p = 0;
                sub_24BCB0BDC(v22, &__p);
                *(a1 + 48) = __p;
                sub_24BC836D4(&__p, "time_discretization");
                sub_24BC9CAB4(v65, &__p);
                if (SHIBYTE(v64) < 0)
                {
                  operator delete(__p);
                }
              }
            }

            if (v65[0] == 1)
            {
              v23 = sub_24BCB0080(v66, "time_quad_components_merging");
              if (v66 + 8 != v23)
              {
                v24 = sub_24BC9C8EC(v65, "time_quad_components_merging");
                LOBYTE(__p) = 0;
                v63 = 0;
                v25 = sub_24BCB01B0(v24, &__p);
                sub_24BC9F18C(&v63, __p);
                if ((v25 & 1) == 0)
                {
                  v26 = sub_24BC9C8EC(v65, "time_quad_components_merging");
                  __p = 0;
                  sub_24BCB0BDC(v26, &__p);
                  *(a1 + 56) = __p;
                  sub_24BC836D4(&__p, "time_quad_components_merging");
                  sub_24BC9CAB4(v65, &__p);
                  if (SHIBYTE(v64) < 0)
                  {
                    operator delete(__p);
                  }
                }
              }

              if (v65[0] == 1)
              {
                v27 = sub_24BCB0080(v66, "time_total");
                if (v66 + 8 != v27)
                {
                  v28 = sub_24BC9C8EC(v65, "time_total");
                  LOBYTE(__p) = 0;
                  v63 = 0;
                  v29 = sub_24BCB01B0(v28, &__p);
                  sub_24BC9F18C(&v63, __p);
                  if ((v29 & 1) == 0)
                  {
                    v30 = sub_24BC9C8EC(v65, "time_total");
                    __p = 0;
                    sub_24BCB0BDC(v30, &__p);
                    *(a1 + 64) = __p;
                    sub_24BC836D4(&__p, "time_total");
                    sub_24BC9CAB4(v65, &__p);
                    if (SHIBYTE(v64) < 0)
                    {
                      operator delete(__p);
                    }
                  }
                }

                if (v65[0] == 1)
                {
                  v31 = sub_24BCB0080(v66, "count_output_components");
                  if (v66 + 8 != v31)
                  {
                    v32 = sub_24BC9C8EC(v65, "count_output_components");
                    LOBYTE(__p) = 0;
                    v63 = 0;
                    v33 = sub_24BCB01B0(v32, &__p);
                    sub_24BC9F18C(&v63, __p);
                    if ((v33 & 1) == 0)
                    {
                      v34 = sub_24BC9C8EC(v65, "count_output_components");
                      LODWORD(__p) = 0;
                      sub_24BCB07E0(v34, &__p);
                      *(a1 + 72) = __p;
                      sub_24BC836D4(&__p, "count_output_components");
                      sub_24BC9CAB4(v65, &__p);
                      if (SHIBYTE(v64) < 0)
                      {
                        operator delete(__p);
                      }
                    }
                  }

                  if (v65[0] == 1)
                  {
                    v35 = sub_24BCB0080(v66, "count_singularity");
                    if (v66 + 8 != v35)
                    {
                      v36 = sub_24BC9C8EC(v65, "count_singularity");
                      LOBYTE(__p) = 0;
                      v63 = 0;
                      v37 = sub_24BCB01B0(v36, &__p);
                      sub_24BC9F18C(&v63, __p);
                      if ((v37 & 1) == 0)
                      {
                        v38 = sub_24BC9C8EC(v65, "count_singularity");
                        LODWORD(__p) = 0;
                        sub_24BCB07E0(v38, &__p);
                        *(a1 + 76) = __p;
                        sub_24BC836D4(&__p, "count_singularity");
                        sub_24BC9CAB4(v65, &__p);
                        if (SHIBYTE(v64) < 0)
                        {
                          operator delete(__p);
                        }
                      }
                    }

                    if (v65[0] == 1)
                    {
                      v39 = sub_24BCB0080(v66, "count_integer_variables");
                      if (v66 + 8 != v39)
                      {
                        v40 = sub_24BC9C8EC(v65, "count_integer_variables");
                        LOBYTE(__p) = 0;
                        v63 = 0;
                        v41 = sub_24BCB01B0(v40, &__p);
                        sub_24BC9F18C(&v63, __p);
                        if ((v41 & 1) == 0)
                        {
                          v42 = sub_24BC9C8EC(v65, "count_integer_variables");
                          LODWORD(__p) = 0;
                          sub_24BCB07E0(v42, &__p);
                          *(a1 + 80) = __p;
                          sub_24BC836D4(&__p, "count_integer_variables");
                          sub_24BC9CAB4(v65, &__p);
                          if (SHIBYTE(v64) < 0)
                          {
                            operator delete(__p);
                          }
                        }
                      }

                      if (v65[0] == 1)
                      {
                        v43 = sub_24BCB0080(v66, "count_total_variables");
                        if (v66 + 8 != v43)
                        {
                          v44 = sub_24BC9C8EC(v65, "count_total_variables");
                          LOBYTE(__p) = 0;
                          v63 = 0;
                          v45 = sub_24BCB01B0(v44, &__p);
                          sub_24BC9F18C(&v63, __p);
                          if ((v45 & 1) == 0)
                          {
                            v46 = sub_24BC9C8EC(v65, "count_total_variables");
                            LODWORD(__p) = 0;
                            sub_24BCB07E0(v46, &__p);
                            *(a1 + 84) = __p;
                            sub_24BC836D4(&__p, "count_total_variables");
                            sub_24BC9CAB4(v65, &__p);
                            if (SHIBYTE(v64) < 0)
                            {
                              operator delete(__p);
                            }
                          }
                        }

                        if (v65[0] == 1)
                        {
                          v47 = sub_24BCB0080(v66, "quality_metric_solver_mae");
                          if (v66 + 8 != v47)
                          {
                            v48 = sub_24BC9C8EC(v65, "quality_metric_solver_mae");
                            LOBYTE(__p) = 0;
                            v63 = 0;
                            v49 = sub_24BCB01B0(v48, &__p);
                            sub_24BC9F18C(&v63, __p);
                            if ((v49 & 1) == 0)
                            {
                              v50 = sub_24BC9C8EC(v65, "quality_metric_solver_mae");
                              LODWORD(__p) = 0;
                              sub_24BCB0594(v50, &__p, v51);
                              *(a1 + 88) = __p;
                              sub_24BC836D4(&__p, "quality_metric_solver_mae");
                              sub_24BC9CAB4(v65, &__p);
                              if (SHIBYTE(v64) < 0)
                              {
                                operator delete(__p);
                              }
                            }
                          }

                          if (v65[0] == 1)
                          {
                            v52 = sub_24BCB0080(v66, "quality_metric_angle_mean");
                            if (v66 + 8 != v52)
                            {
                              v53 = sub_24BC9C8EC(v65, "quality_metric_angle_mean");
                              LOBYTE(__p) = 0;
                              v63 = 0;
                              v54 = sub_24BCB01B0(v53, &__p);
                              sub_24BC9F18C(&v63, __p);
                              if ((v54 & 1) == 0)
                              {
                                v55 = sub_24BC9C8EC(v65, "quality_metric_angle_mean");
                                LODWORD(__p) = 0;
                                sub_24BCB0594(v55, &__p, v56);
                                *(a1 + 92) = __p;
                                sub_24BC836D4(&__p, "quality_metric_angle_mean");
                                sub_24BC9CAB4(v65, &__p);
                                if (SHIBYTE(v64) < 0)
                                {
                                  operator delete(__p);
                                }
                              }
                            }

                            if (v65[0] == 1)
                            {
                              v57 = sub_24BCB0080(v66, "quality_metric_angle_STD");
                              if (v66 + 8 != v57)
                              {
                                v58 = sub_24BC9C8EC(v65, "quality_metric_angle_STD");
                                LOBYTE(__p) = 0;
                                v63 = 0;
                                v59 = sub_24BCB01B0(v58, &__p);
                                sub_24BC9F18C(&v63, __p);
                                if ((v59 & 1) == 0)
                                {
                                  v60 = sub_24BC9C8EC(v65, "quality_metric_angle_STD");
                                  LODWORD(__p) = 0;
                                  sub_24BCB0594(v60, &__p, v61);
                                  *(a1 + 96) = __p;
                                  sub_24BC836D4(&__p, "quality_metric_angle_STD");
                                  sub_24BC9CAB4(v65, &__p);
                                  if (SHIBYTE(v64) < 0)
                                  {
                                    operator delete(__p);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v65 + 8 * *(v64 - 24) + 272) = 2;
  sub_24BC9BD14(&v64);
}

void sub_24BE3215C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE32140);
  }

  _Unwind_Resume(a1);
}

void sub_24BE32248()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 0;
  v2 = 0;
  sub_24BC848F0(&v0);
  sub_24BE2FDA8();
}

void sub_24BE32780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, std::locale a14)
{
  sub_24BC9F18C((v14 + 8), a10);
  sub_24BC9F18C((v16 - 120), *(v16 - 128));
  v18 = (v16 - 152);
  v19 = -64;
  do
  {
    sub_24BC9F18C(v18, *(v18 - 8));
    v18 -= 4;
    v19 += 32;
  }

  while (v19);
  sub_24BC9F18C((v15 + 8), a12);
  sub_24BC84B94(&a14);
  sub_24BC9F18C((v16 - 200), *(v16 - 208));
  _Unwind_Resume(a1);
}

void sub_24BE3284C(uint64_t a1, void *a2)
{
  v8[0] = 0;
  v9 = 0;
  sub_24BC9C7E0(a2, v8);
  if (v8[0] == 1)
  {
    v2 = sub_24BCB0080(v9, "bake_options");
    if (v9 + 8 != v2)
    {
      v3 = sub_24BC9C8EC(v8, "bake_options");
      LOBYTE(v5) = 0;
      v6 = 0;
      v4 = sub_24BCB01B0(v3, &v5);
      sub_24BC9F18C(&v6, v5);
      if ((v4 & 1) == 0)
      {
        sub_24BC848F0(&v5);
        *(v8 + 8 * *(v7 - 24) + 272) = 2;
        sub_24BC9C8EC(v8, "bake_options");
        sub_24BC9BD14(&v7);
      }
    }
  }

  sub_24BC848F0(&v5);
  *(v8 + 8 * *(v7 - 24) + 272) = 2;
  sub_24BC9BD14(&v7);
}

void sub_24BE32D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC84B94(&a15);
  sub_24BC9F18C((v15 + 8), *(v16 - 80));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE32AFCLL);
  }

  _Unwind_Resume(a1);
}

void sub_24BE32DDC(const std::error_code *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = 0;
  sub_24BC848F0(&v4);
  sub_24BE30708(a1);
}

void sub_24BE33134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17)
{
  std::locale::~locale(&a17);
  sub_24BC9F18C((v17 + 8), a11);
  _Unwind_Resume(a1);
}

void sub_24BE331CC(uint64_t a1, void *a2)
{
  v10[0] = 0;
  v11 = 0;
  sub_24BC9C7E0(a2, v10);
  if (v10[0] == 1)
  {
    v3 = sub_24BCB0080(v11, "time_baking");
    if (v11 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v10, "time_baking");
      LOBYTE(__p) = 0;
      v8 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v8, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v10, "time_baking");
        __p = 0;
        sub_24BCB0BDC(v6, &__p);
        *(a1 + 104) = __p;
        sub_24BC836D4(&__p, "time_baking");
        sub_24BC9CAB4(v10, &__p);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v10 + 8 * *(v9 - 24) + 272) = 2;
  sub_24BC9BD14(&v9);
}

void sub_24BE334D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE334BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_24BE33560()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 0;
  v2 = 0;
  sub_24BC848F0(&v0);
  sub_24BE32248();
}

void sub_24BE339E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, std::locale a14)
{
  sub_24BC9F18C((v14 + 8), a10);
  sub_24BC9F18C((v16 - 120), *(v16 - 128));
  v18 = (v16 - 152);
  v19 = -64;
  do
  {
    sub_24BC9F18C(v18, *(v18 - 8));
    v18 -= 4;
    v19 += 32;
  }

  while (v19);
  sub_24BC9F18C(&a13, a12);
  sub_24BC84B94(&a14);
  sub_24BC9F18C((v15 + 8), *(v16 - 208));
  _Unwind_Resume(a1);
}

void sub_24BE33AB0(uint64_t a1, void *a2)
{
  v8[0] = 0;
  v9 = 0;
  sub_24BC9C7E0(a2, v8);
  if (v8[0] == 1)
  {
    v2 = sub_24BCB0080(v9, "smooth_options");
    if (v9 + 8 != v2)
    {
      v3 = sub_24BC9C8EC(v8, "smooth_options");
      LOBYTE(v5) = 0;
      v6 = 0;
      v4 = sub_24BCB01B0(v3, &v5);
      sub_24BC9F18C(&v6, v5);
      if ((v4 & 1) == 0)
      {
        sub_24BC848F0(&v5);
        *(v8 + 8 * *(v7 - 24) + 272) = 2;
        sub_24BC9C8EC(v8, "smooth_options");
        sub_24BC9BD14(&v7);
      }
    }
  }

  sub_24BC848F0(&v5);
  *(v8 + 8 * *(v7 - 24) + 272) = 2;
  sub_24BC9BD14(&v7);
}

void sub_24BE33FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC84B94(&a15);
  sub_24BC9F18C((v15 + 8), *(v16 - 80));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE33D60);
  }

  _Unwind_Resume(a1);
}

void sub_24BE34040(const std::error_code *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  sub_24BC848F0(&v2);
  sub_24BE32DDC(a1);
}

void sub_24BE344C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, std::locale a14)
{
  sub_24BC9F18C((v14 + 8), a10);
  sub_24BC9F18C((v16 - 120), *(v16 - 128));
  v18 = (v16 - 152);
  v19 = -64;
  do
  {
    sub_24BC9F18C(v18, *(v18 - 8));
    v18 -= 4;
    v19 += 32;
  }

  while (v19);
  sub_24BC9F18C(&a13, a12);
  sub_24BC84B94(&a14);
  sub_24BC9F18C((v15 + 8), *(v16 - 208));
  _Unwind_Resume(a1);
}

void sub_24BE34590(uint64_t a1, void *a2)
{
  v8[0] = 0;
  v9 = 0;
  sub_24BC9C7E0(a2, v8);
  if (v8[0] == 1)
  {
    v2 = sub_24BCB0080(v9, "smooth_report");
    if (v9 + 8 != v2)
    {
      v3 = sub_24BC9C8EC(v8, "smooth_report");
      LOBYTE(v5) = 0;
      v6 = 0;
      v4 = sub_24BCB01B0(v3, &v5);
      sub_24BC9F18C(&v6, v5);
      if ((v4 & 1) == 0)
      {
        sub_24BC848F0(&v5);
        *(v8 + 8 * *(v7 - 24) + 272) = 2;
        sub_24BC9C8EC(v8, "smooth_report");
        sub_24BC9BD14(&v7);
      }
    }
  }

  sub_24BC848F0(&v5);
  *(v8 + 8 * *(v7 - 24) + 272) = 2;
  sub_24BC9BD14(&v7);
}

void sub_24BE34A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC84B94(&a15);
  sub_24BC9F18C((v15 + 8), *(v16 - 80));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE34840);
  }

  _Unwind_Resume(a1);
}

void sub_24BE34B20(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE2C6B0();
}

uint64_t sub_24BE34C70(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE2CC9C(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE34DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE34DF8(const std::error_code *a1, uint64_t *a2)
{
  v4[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0D30(v4);
  sub_24BE2D334(a1);
}

uint64_t sub_24BE34F4C(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE2DD80(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE350B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE350D4(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE2E6F0();
}

uint64_t sub_24BE35228(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE2ECB8(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE35394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE353B0(const std::error_code *a1, uint64_t *a2)
{
  v4[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0D30(v4);
  sub_24BE2F2C8(a1);
}

uint64_t sub_24BE35504(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE2F818(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE35670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE3568C(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE2FDA8();
}

uint64_t sub_24BE357DC(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE30200(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE35948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE35964(const std::error_code *a1, uint64_t *a2)
{
  v4[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0D30(v4);
  sub_24BE30708(a1);
}

uint64_t sub_24BE35AB8(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE3152C(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE35C24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE35C40(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE32248();
}

uint64_t sub_24BE35D94(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE3284C(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE35F00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE35F1C(const std::error_code *a1, uint64_t *a2)
{
  v4[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0D30(v4);
  sub_24BE32DDC(a1);
}

uint64_t sub_24BE36070(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE331CC(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE361DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE361F8(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE33560();
}

uint64_t sub_24BE3634C(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE33AB0(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE364B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE364D4(const std::error_code *a1, uint64_t *a2)
{
  v4[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0D30(v4);
  sub_24BE34040(a1);
}

uint64_t sub_24BE36628(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE34590(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE36794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE36B70(void *a1, uint64_t a2, const std::string *a3, uint64_t a4)
{
  LODWORD(v18[0]) = 0;
  v18[1] = std::system_category();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  sub_24BD6B968(v17, a4);
  if (a1[14] == a1[13] || a1[20] == a1[19] || a1[17] == a1[16])
  {
    v11 = sub_24BD6A604(9u);
    v13 = v12;
    sub_24BC836D4(v15, &unk_24C0435AF);
    sub_24BD6B59C(a4, v11, v13, v15, v18);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v10 = *(a4 + 120);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (std::stof(a3, 0) >= 0.00000001)
    {
      sub_24BCD5258(v15);
    }

    v7 = sub_24BD6A604(0x258u);
    v9 = v8;
    sub_24BC836D4(v15, &unk_24C0435AF);
    sub_24BD6B59C(a4, v7, v9, v15, v18);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v10 = *(a4 + 120);
    if (v10)
    {
LABEL_12:
      (*(*v10 + 48))(v10, v18);
    }
  }

  sub_24BD6B9D8(v17);
  return 0;
}

void sub_24BE37CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  if (a65 < 0)
  {
    operator delete(*(v67 + 208));
  }

  sub_24BCD528C(&a67);
  sub_24BD6B9D8(v68 - 192);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE37FD8(uint64_t a1, uint64_t a2)
{
  sub_24BCB3658(a2, a1);
  sub_24BC836D4(&__p, "h:is_quadmesh_diagonal");
  LOBYTE(v18) = 0;
  v3 = sub_24BCDCDF8((a2 + 32), &v18, &__p);
  v22 = v3;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (v3 == -1)
  {
    sub_24BC836D4(&__p, "h:is_quadmesh_diagonal");
    sub_24BCB34E0(a2);
  }

  v5 = *(a2 + 128);
  v4 = *(a2 + 136);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = (*(a2 + 32) + 16 * v3);
      v10 = *v8;
      v9 = v8[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v9);
        v5 = *(a2 + 128);
        v4 = *(a2 + 136);
      }

      *(*(v10 + 40) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v6);
      v6 = v7;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 2) > v7++);
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  v12 = (*(a2 + 160) - *(a2 + 152)) >> 2;
  if (v12)
  {
    v13 = 0;
    do
    {
      v18 = v13;
      v20 = __p;
      v14 = *sub_24BCB9038(a2 + 104, &v18);
      v17 = v14;
      do
      {
        v17 = *(sub_24BCB9024(a2 + 104, &v17) + 8);
        sub_24BCB4670(&__p, &v17);
      }

      while (v17 != v14);
      v15 = (v20 - __p) >> 2;
      if (v15 >= 4)
      {
        if (v15 == 5)
        {
          sub_24BD76678(a2, &v18, &__p, v22);
        }

        else if (v15 == 4)
        {
          sub_24BD76454(a2, &v18, &__p, v22);
        }

        else
        {
          sub_24BD76A34(a2, &v18, &__p, v22);
        }
      }

      ++v13;
    }

    while (v13 != v12);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  return 1;
}

void sub_24BE38200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE3823C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) != *(a1 + 104) && *(a2 + 112) != *(a2 + 104))
  {
    sub_24BCD5258(v3);
  }

  return 0;
}

void sub_24BE38480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_24BCD528C(&a19);
  sub_24BCD528C(&a42);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE384C0(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = v2 + 32;
      v6 = *(v2 + 32);
      if (!v6)
      {
        goto LABEL_10;
      }

      v7 = v2 + 32;
      do
      {
        if (*(v6 + 28) >= a2)
        {
          v7 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 28) < a2));
      }

      while (v6);
      if (v7 == v5 || *(v7 + 28) > a2)
      {
LABEL_10:
        v7 = v2 + 32;
      }

      v4 |= v7 != v5;
      v2 += 48;
    }

    while (v2 != v3);
  }

  return v4 & 1;
}

unsigned int *sub_24BE38538(unsigned int *result)
{
  v1 = *result;
  if (!*result)
  {
    v1 = 1;
    *result = 1;
  }

  if ((v1 & (v1 - 1)) != 0)
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < v1);
    *result = v3;
  }

  return result;
}

uint64_t sub_24BE38570(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = 1;
  *(a3 + 68) = 1;
  v6 = a2[3];
  if (v6 == a2[4])
  {
    goto LABEL_21;
  }

  v9 = *(v6 + 8);
  v8 = *(v6 + 16);
  if (!v8)
  {
    if (!v9)
    {
      v5 = 1;
      goto LABEL_21;
    }

    v21 = 0;
    goto LABEL_8;
  }

  v5 = 1;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_24BC9EC78(v8);
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = a2[3];
  v9 = *(v10 + 8);
  v11 = *(v10 + 16);
  v21 = 0;
  if (!v11)
  {
LABEL_8:
    v12 = *v9;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = *v9;
  sub_24BC9EC78(v11);
LABEL_9:
  v13 = v12;
  v19 = *(a3 + 68);
  v20 = v12;
  v18 = 1;
  if (sub_24BE24BE0(a1, a2, &v21, &v18))
  {
    v5 = sub_24BE58CE0(a2, &v21, &v20, &v19);
    v13 = v20;
  }

  else
  {
    v5 = 0;
  }

  v14 = *(a3 + 64);
  if (v13 > v14)
  {
    *(a3 + 64) = v13;
    LODWORD(v14) = v13;
  }

  if (!v14)
  {
    LODWORD(v14) = 1;
    *(a3 + 64) = 1;
  }

  if ((v14 & (v14 - 1)) != 0)
  {
    v15 = 1;
    do
    {
      v16 = v15;
      v15 *= 2;
    }

    while (v16 < v14);
    *(a3 + 64) = v16;
  }

LABEL_21:
  if (*a2 == a2[1])
  {
    *(a3 + 72) = 0;
    *(a3 + 112) = 0;
    *(a3 + 232) = 0;
    *(a3 + 192) = 0;
    *(a3 + 272) = 0;
LABEL_35:
    *(a3 + 312) = 0;
    return v5;
  }

  if ((sub_24BE384C0(a2, 1) & 1) == 0)
  {
    *(a3 + 72) = 0;
  }

  if ((sub_24BE384C0(a2, 2) & 1) == 0)
  {
    *(a3 + 112) = 0;
  }

  if ((sub_24BE384C0(a2, 3) & 1) == 0)
  {
    *(a3 + 232) = 0;
  }

  if ((sub_24BE384C0(a2, 4) & 1) == 0)
  {
    *(a3 + 192) = 0;
  }

  if ((sub_24BE384C0(a2, 5) & 1) == 0)
  {
    *(a3 + 272) = 0;
  }

  if ((sub_24BE384C0(a2, 6) & 1) == 0)
  {
    goto LABEL_35;
  }

  return v5;
}

void sub_24BE38750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = std::system_category();
  v13 = 0;
  v14 = 0;
  v19 = 0;
  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = v9;
  v18 = 0;
  v6.i64[0] = 0x80000000800000;
  v6.i64[1] = 0x80000000800000;
  v22 = vnegq_f32(v6);
  v23 = v6;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = 0;
  v28 = 0;
  v29 = v22;
  v30 = v6;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v35 = 0u;
  v36 = 0u;
  memset(v40, 0, sizeof(v40));
  v39 = xmmword_24BFED050;
  sub_24BD6B968(v7, a4);
  sub_24BE189B0(v41, a3 + 32);
  sub_24BD51FA4();
}

void sub_24BE39904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, std::__shared_weak_count *a40, char a41)
{
  sub_24BD2D954(&STACK[0x420]);
  sub_24BCBBEE8(&STACK[0x6C0]);
  if (*(v42 - 113) < 0)
  {
    operator delete(*(v42 - 136));
  }

  STACK[0x420] = &a25;
  sub_24BC955F4(&STACK[0x420]);
  sub_24BC9EC78(a12);
  sub_24BD7EA54(&STACK[0x880]);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    sub_24BC9EC78(a36);
  }

  if (a38)
  {
    sub_24BC9EC78(a38);
  }

  sub_24BC9EC78(v41);
  if (a40)
  {
    sub_24BC9EC78(a40);
  }

  sub_24BD7E1C4(&STACK[0x960]);
  sub_24BD6B9D8(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE39C74(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void *sub_24BE39CBC(void *a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v6[0] = &unk_285F96E08;
  v6[1] = v3;
  v6[3] = v6;
  sub_24BCA3290(v6, a1);
  sub_24BC9F00C(v6);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_24BE39D50(void *a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v6[0] = &unk_285F96E50;
  v6[1] = v3;
  v6[3] = v6;
  sub_24BD828F8(v6, a1);
  sub_24BD2A5FC(v6);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_24BE39DE4(void *a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v6[0] = &unk_285F96E98;
  v6[1] = v3;
  v6[3] = v6;
  sub_24BD82694(v6, a1);
  sub_24BD7E968(v6);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_24BE39E78(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BE3D48C(a1, a2);
  }

  else
  {
    sub_24BE3D42C(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24BE39EB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

double sub_24BE39F00(uint64_t a1)
{
  v58[4] = *MEMORY[0x277D85DE8];
  sub_24BCB35B4(v41, a1);
  v41[0] = &unk_285F941E8;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  sub_24BDF1788(v41, &v51);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  sub_24BCA1A48(v40, (v45 - v44) >> 2);
  if (v45 != v44)
  {
    v1 = 0;
    v2 = 1;
    do
    {
      LODWORD(v51) = v2 - 1;
      v3 = sub_24BC96B00(v41, &v51);
      *(v40[0] + v1) = v3;
      v1 = v2++;
    }

    while (v1 < (v45 - v44) >> 2);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v4 = (v43 - v42) >> 2;
  if (v4 >= 0x2710)
  {
    LODWORD(v5) = 10000;
  }

  else
  {
    LODWORD(v5) = (v43 - v42) >> 2;
  }

  v54 = 0;
  v55[3] = 0;
  v56[3] = 0;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v57[3] = 0;
  v58[0] = &unk_285F96EE0;
  v58[1] = &__p;
  v58[3] = v58;
  sub_24BE3D748(v58, v57);
  sub_24BDD4C70(v58);
  sub_24BCA1524(v47, &v51);
  sub_24BCA2D38(v48, v55);
  sub_24BCA2DD0(v49, v56);
  sub_24BE3CA20(v50, v57);
  sub_24BD3E4A8(v41);
  sub_24BDD4C70(v50);
  sub_24BC9F10C(v49);
  sub_24BC9F08C(v48);
  sub_24BC9F00C(v47);
  if (v4)
  {
    v6 = 0;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v5;
    }

    v7 = 0.0;
    v8 = 0.0;
    do
    {
      v9 = *(__p + v6);
      v10 = fabs(*(v31 + v6));
      v11 = fabs(*(v28 + v6));
      if (v10 >= v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v24 = *(__p + v6);
      v13 = sub_24BCB9454(v58, &v42, &v24);
      v14 = sub_24BCB947C(v13);
      v15 = fmin(v12, 100000.0);
      v16 = 0.0;
      while (1)
      {
        v24 = v14;
        if (v14 == -1)
        {
          break;
        }

        v17 = sub_24BC9ECE4(v41, v46, v14);
        if ((*v17 & v18) == 0)
        {
          v19 = sub_24BCB9024(&v42, &v24);
          v16 = v16 + *(v40[0] + *(v19 + 16));
        }

        v14 = sub_24BCB947C(v58);
      }

      v8 = v8 + v15 * v16;
      v7 = v7 + v16;
      ++v6;
    }

    while (v6 != v5);
  }

  else
  {
    v8 = 0.0;
    v7 = 0.0;
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  sub_24BDD4C70(v57);
  sub_24BC9F10C(v56);
  sub_24BC9F08C(v55);
  sub_24BC9F00C(&v51);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  v20 = v8 / v7;
  if (v7 <= 0.0)
  {
    v20 = v8;
  }

  if (v20 <= 300.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 300.0;
  }

  sub_24BCD528C(v41);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void sub_24BE3A2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BDD1F0C(&a52);
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BDD1F0C(&a68);
  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    *(v68 + 8) = a26;
    operator delete(a26);
  }

  sub_24BCD528C(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE3A3BC(uint64_t a1, _DWORD *a2)
{
  v4 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  v12 = 0u;
  v13 = 0u;
  sub_24BE24A40(a1, &v12);
  v5 = v4;
  v6 = ((DWORD1(v13) + DWORD2(v13)) * 2000.0 + v4 * 0.25) / 2000.0;
  v7 = v6 * v6;
  v8 = sub_24BE39F00(a1);
  v9 = v8 * v8 * 0.25 + v7;
  if (v9 < 1000.0)
  {
    v9 = 1000.0;
  }

  v10 = fmin(v9, 100000.0);
  if (v10 < 10000.0)
  {
    if (v10 < v5 * 0.5)
    {
      v10 = v5 * 0.5;
    }

    v10 = fmin(v10, 10000.0);
  }

  *a2 = v10;
  return 1;
}

void sub_24BE3A4A8(uint64_t a1, uint64_t a2)
{
  memset(v24, 0, sizeof(v24));
  v4 = *(a1 + 112) - *(a1 + 104);
  sub_24BCB8D20(v24, (v4 >> 1) + (v4 >> 2));
  memset(v23, 0, sizeof(v23));
  v5 = *(a1 + 160) - *(a1 + 152);
  sub_24BCB8D20(v23, (v5 >> 1) + (v5 >> 2));
  v6 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  LOBYTE(__p) = 3;
  sub_24BD54AD8(&v22, v6);
  if (*(a1 + 112) != *(a1 + 104))
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = (*(a1 + 8) + 16 * *(a1 + 176));
      v11 = *v9;
      v10 = v9[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v10);
      }

      sub_24BCBA418(v24, (*(v11 + 40) + 16 * v7));
      v12 = (*(a1 + 8) + 16 * *(a1 + 176));
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v13);
      }

      sub_24BCBA418(v24, (*(v14 + 40) + 16 * v7 + 4));
      v15 = (*(a1 + 8) + 16 * *(a1 + 176));
      v17 = *v15;
      v16 = v15[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v16);
      }

      sub_24BCBA418(v24, (*(v17 + 40) + 16 * v7 + 8));
      v7 = v8++;
    }

    while (v7 < (*(a1 + 112) - *(a1 + 104)) >> 2);
  }

  sub_24BCB2008(&__p, 3uLL);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v18 = 1;
    do
    {
      v20 = v18 - 1;
      sub_24BCD567C(a1, &v20, &__p);
      v20 = *__p;
      sub_24BC97D60(v23, &v20);
      v20 = *(__p + 1);
      sub_24BC97D60(v23, &v20);
      v20 = *(__p + 2);
      sub_24BC97D60(v23, &v20);
      v19 = v18++;
    }

    while (v19 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  sub_24BCB3798(a2);
  sub_24BCB13BC(a2, v24, v23, &v22);
}

void sub_24BE3A704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 72);
  if (v20)
  {
    *(v18 - 64) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE3A780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  std::chrono::system_clock::now();
  v23 = 0;
  v14[0] = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14[1] = std::system_category();
  v18 = 0;
  v19 = 1;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (*(a1 + 160) != *(a1 + 152))
  {
    sub_24BD6B968(v13, a4);
    sub_24BCB35B4(v11, a1);
    v11[0] = &unk_285F941E8;
    sub_24BE3E800(v11);
  }

  v6 = sub_24BD6A604(0x6Cu);
  v8 = v7;
  sub_24BC836D4(v11, &unk_24C0435AF);
  sub_24BD6B59C(a4, v6, v8, v11, v14);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE3ABEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  sub_24BCD528C(&a13);
  sub_24BD6B9D8(&a39);
  _Unwind_Resume(a1);
}

void sub_24BE3ACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v41 = *MEMORY[0x277D85DE8];
  sub_24BD6B968(v23, a7);
  v37 = *a6;
  v38 = *(a6 + 2);
  sub_24BE189B0(&v39, a6 + 24);
  v40 = *(a6 + 656);
  v12 = 0;
  v13 = std::system_category();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v21 = 0;
  v20 = 0;
  v22 = 0;
  v26 = 0;
  v27[3] = 0;
  v28[3] = 0;
  v29[3] = 0;
  if (*(a7 + 120))
  {
    v30 = &unk_285F96FB8;
    v31 = &v12;
    v32 = &v30;
    sub_24BD2AD18(&v30, v29);
    sub_24BD2A32C(&v30);
  }

  if (*(a7 + 24))
  {
    v30 = &unk_285F97000;
    v31 = a7;
    v32 = &v30;
    sub_24BCA3290(&v30, __p);
    sub_24BC9F00C(&v30);
  }

  sub_24BC9AAC4(v27, a7 + 32);
  sub_24BC9B100(v28, a7 + 64);
  sub_24BCA1524(v33, __p);
  sub_24BCA2D38(v34, v27);
  sub_24BCA2DD0(v35, v28);
  sub_24BD2A294(v36, v29);
  sub_24BE3A780(a3, a4, &v37, v33);
  sub_24BD2A32C(v36);
  sub_24BC9F10C(v35);
  sub_24BC9F08C(v34);
  sub_24BC9F00C(v33);
  sub_24BD2A32C(v29);
  sub_24BC9F10C(v28);
  sub_24BC9F08C(v27);
  sub_24BC9F00C(__p);
  sub_24BC836D4(__p, &unk_24C0435AF);
  sub_24BD6B578(a7, __p, 0.8);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::chrono::system_clock::now();
  sub_24BCB35B4(&v30, a1);
  v30 = &unk_285F941E8;
  sub_24BE3E800(&v30);
}

void sub_24BE3B1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_24BCD528C(&STACK[0x208]);
  sub_24BD2A67C(&STACK[0x340]);
  sub_24BD6B9D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE3B2C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_24BE3B310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v12 = *MEMORY[0x277D85DE8];
  sub_24BD2A3AC(v11, a6);
  sub_24BE3ACCC(a1, a2, a1, a3, a4, a5, v11);
}

void sub_24BE3B3E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD28C48(va);
  _Unwind_Resume(a1);
}

void sub_24BE3B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_24BD6B968(v16, a4);
  LODWORD(v5) = 0;
  v6 = std::system_category();
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v15 = 0;
  sub_24BCD5258(v4);
}

void sub_24BE3C02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_24BD2D954(&STACK[0x3F0]);
  sub_24BCBBEE8(&STACK[0x2E0]);
  STACK[0x3F0] = &a17;
  sub_24BC955F4(&STACK[0x3F0]);
  sub_24BCD528C(&STACK[0x4B8]);
  sub_24BD2A67C(&STACK[0x5F0]);
  sub_24BD51EAC(&a21);
  sub_24BD51EAC(&a31);
  sub_24BCB10EC(&a40);
  sub_24BCD528C(&a63);
  sub_24BD6B9D8(&STACK[0x2D8]);
  _Unwind_Resume(a1);
}