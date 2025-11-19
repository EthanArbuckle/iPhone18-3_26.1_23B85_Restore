uint64_t sub_8D4448(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1120;
    if (result + 1120 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = v6;
        v6 = v4;
        v9 = sub_681D54(v4);
        if (v9 == sub_681D54(v8))
        {
          v10 = sub_681D5C(v6);
          result = sub_681D5C(v8);
          if (v10 <= result)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v11 = sub_681D54(v6);
          result = sub_681D54(v8);
          if (v11 <= result)
          {
            goto LABEL_6;
          }
        }

        sub_7A5A3C(v16, v6);
        sub_8C8FB0(v6, v8);
        v7 = v3;
        if (v8 == v3)
        {
          goto LABEL_5;
        }

        v12 = v5;
        while (1)
        {
          v13 = sub_681D54(v16);
          if (v13 != sub_681D54(v3 + v12 - 1120))
          {
            break;
          }

          v14 = sub_681D5C(v16);
          if (v14 <= sub_681D5C(v3 + v12 - 1120))
          {
            v7 = v3 + v12;
            goto LABEL_5;
          }

LABEL_13:
          v8 -= 1120;
          sub_8C8FB0(v3 + v12, v3 + v12 - 1120);
          v12 -= 1120;
          if (!v12)
          {
            v7 = v3;
            goto LABEL_5;
          }
        }

        v15 = sub_681D54(v16);
        if (v15 > sub_681D54(v3 + v12 - 1120))
        {
          goto LABEL_13;
        }

        v7 = v8;
LABEL_5:
        sub_8C8FB0(v7, v16);
        result = sub_5938B0(v16);
LABEL_6:
        v4 = v6 + 1120;
        v5 += 1120;
      }

      while (v6 + 1120 != a2);
    }
  }

  return result;
}

uint64_t sub_8D4600(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    while (1)
    {
      while (1)
      {
        v4 = v3 + 1120;
        if (v3 + 1120 == a2)
        {
          return result;
        }

        v5 = v3;
        v3 += 1120;
        v6 = sub_681D54(v4);
        if (v6 != sub_681D54(v5))
        {
          break;
        }

        v7 = sub_681D5C(v3);
        result = sub_681D5C(v5);
        if (v7 > result)
        {
          goto LABEL_9;
        }
      }

      v8 = sub_681D54(v3);
      result = sub_681D54(v5);
      if (v8 > result)
      {
LABEL_9:
        sub_7A5A3C(v13, v3);
        do
        {
          v9 = v5;
          sub_8C8FB0(v5 + 1120, v5);
          v10 = sub_681D54(v13);
          v5 -= 1120;
          if (v10 == sub_681D54(v9 - 1120))
          {
            v11 = sub_681D5C(v13);
            v12 = sub_681D5C(v9 - 1120);
          }

          else
          {
            v11 = sub_681D54(v13);
            v12 = sub_681D54(v9 - 1120);
          }
        }

        while (v11 > v12);
        sub_8C8FB0(v9, v13);
        result = sub_5938B0(v13);
      }
    }
  }

  return result;
}

unint64_t sub_8D4754(uint64_t a1, unint64_t a2)
{
  sub_7A5A3C(v24, a1);
  v4 = sub_681D54(v24);
  if (v4 == sub_681D54(a2 - 1120))
  {
    v5 = sub_681D5C(v24);
    v6 = sub_681D5C(a2 - 1120);
  }

  else
  {
    v5 = sub_681D54(v24);
    v6 = sub_681D54(a2 - 1120);
  }

  if (v5 <= v6)
  {
    for (i = a1 + 1120; i < a2; i += 1120)
    {
      v11 = sub_681D54(v24);
      if (v11 == sub_681D54(i))
      {
        v12 = sub_681D5C(v24);
        v13 = sub_681D5C(i);
      }

      else
      {
        v12 = sub_681D54(v24);
        v13 = sub_681D54(i);
      }

      if (v12 > v13)
      {
        break;
      }
    }
  }

  else
  {
    for (i = a1 + 1120; ; i += 1120)
    {
      v8 = sub_681D54(v24);
      if (v8 == sub_681D54(i))
      {
        v9 = sub_681D5C(v24);
        v10 = sub_681D5C(i);
      }

      else
      {
        v9 = sub_681D54(v24);
        v10 = sub_681D54(i);
      }

      if (v9 > v10)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 1120; ; a2 -= 1120)
    {
      v14 = sub_681D54(v24);
      if (v14 == sub_681D54(a2))
      {
        v15 = sub_681D5C(v24);
        v16 = sub_681D5C(a2);
      }

      else
      {
        v15 = sub_681D54(v24);
        v16 = sub_681D54(a2);
      }

      if (v15 <= v16)
      {
        break;
      }
    }
  }

  while (i < a2)
  {
    sub_7A5A3C(v25, i);
    sub_8C8FB0(i, a2);
    sub_8C8FB0(a2, v25);
    sub_5938B0(v25);
    do
    {
      i += 1120;
      v17 = sub_681D54(v24);
      if (v17 == sub_681D54(i))
      {
        v18 = sub_681D5C(v24);
        v19 = sub_681D5C(i);
      }

      else
      {
        v18 = sub_681D54(v24);
        v19 = sub_681D54(i);
      }
    }

    while (v18 <= v19);
    do
    {
      a2 -= 1120;
      v20 = sub_681D54(v24);
      if (v20 == sub_681D54(a2))
      {
        v21 = sub_681D5C(v24);
        v22 = sub_681D5C(a2);
      }

      else
      {
        v21 = sub_681D54(v24);
        v22 = sub_681D54(a2);
      }
    }

    while (v21 > v22);
  }

  if (i - 1120 != a1)
  {
    sub_8C8FB0(a1, i - 1120);
  }

  sub_8C8FB0(i - 1120, v24);
  sub_5938B0(v24);
  return i;
}

uint64_t sub_8D4AA8(uint64_t a1, unint64_t a2)
{
  sub_7A5A3C(v26, a1);
  for (i = 0; ; i += 1120)
  {
    v5 = a1 + i;
    v6 = sub_681D54(a1 + i + 1120);
    if (v6 == sub_681D54(v26))
    {
      v7 = sub_681D5C(v5 + 1120);
      v8 = sub_681D5C(v26);
    }

    else
    {
      v7 = sub_681D54(v5 + 1120);
      v8 = sub_681D54(v26);
    }

    if (v7 <= v8)
    {
      break;
    }
  }

  v9 = a1 + i;
  v10 = a1 + i + 1120;
  if (i)
  {
    do
    {
      a2 -= 1120;
      v11 = sub_681D54(a2);
      if (v11 == sub_681D54(v26))
      {
        v12 = sub_681D5C(a2);
        v13 = sub_681D5C(v26);
      }

      else
      {
        v12 = sub_681D54(a2);
        v13 = sub_681D54(v26);
      }
    }

    while (v12 <= v13);
  }

  else
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      a2 -= 1120;
      v14 = sub_681D54(a2);
      if (v14 == sub_681D54(v26))
      {
        v15 = sub_681D5C(a2);
        v16 = sub_681D5C(v26);
      }

      else
      {
        v15 = sub_681D54(a2);
        v16 = sub_681D54(v26);
      }
    }

    while (v15 <= v16);
  }

  if (v10 < a2)
  {
    v17 = v10;
    v18 = a2;
    do
    {
      sub_7A5A3C(v27, v17);
      sub_8C8FB0(v17, v18);
      sub_8C8FB0(v18, v27);
      sub_5938B0(v27);
      do
      {
        v9 = v17;
        v17 += 1120;
        v19 = sub_681D54(v17);
        if (v19 == sub_681D54(v26))
        {
          v20 = sub_681D5C(v17);
          v21 = sub_681D5C(v26);
        }

        else
        {
          v20 = sub_681D54(v17);
          v21 = sub_681D54(v26);
        }
      }

      while (v20 > v21);
      v17 = v9 + 1120;
      do
      {
        v18 -= 1120;
        v22 = sub_681D54(v18);
        if (v22 == sub_681D54(v26))
        {
          v23 = sub_681D5C(v18);
          v24 = sub_681D5C(v26);
        }

        else
        {
          v23 = sub_681D54(v18);
          v24 = sub_681D54(v26);
        }
      }

      while (v23 <= v24);
    }

    while (v17 < v18);
  }

  if (v9 != a1)
  {
    sub_8C8FB0(a1, v9);
  }

  sub_8C8FB0(v9, v26);
  sub_5938B0(v26);
  return v9;
}

BOOL sub_8D4DC4(uint64_t a1, uint64_t a2)
{
  v4 = 0xAF8AF8AF8AF8AF8BLL * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_8C7C0C(a1, a1 + 1120, a2 - 1120);
        return 1;
      case 4:
        sub_8C7ED4(a1, a1 + 1120, a1 + 2240, a2 - 1120);
        return 1;
      case 5:
        sub_8C80C0(a1, a1 + 1120, a1 + 2240, a1 + 3360, a2 - 1120);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 1120;
      v6 = sub_681D54(a2 - 1120);
      if (v6 == sub_681D54(a1))
      {
        v7 = sub_681D5C(v5);
        if (v7 <= sub_681D5C(a1))
        {
          return 1;
        }

        goto LABEL_31;
      }

      v20 = sub_681D54(v5);
      if (v20 > sub_681D54(a1))
      {
LABEL_31:
        sub_7A5A3C(v22, a1);
        sub_8C8FB0(a1, v5);
        sub_8C8FB0(v5, v22);
        sub_5938B0(v22);
      }

      return 1;
    }
  }

  v8 = a1 + 2240;
  sub_8C7C0C(a1, a1 + 1120, a1 + 2240);
  v9 = a1 + 3360;
  if (a1 + 3360 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = sub_681D54(v9);
    if (v12 != sub_681D54(v8))
    {
      break;
    }

    v13 = sub_681D5C(v9);
    if (v13 > sub_681D5C(v8))
    {
      goto LABEL_22;
    }

LABEL_17:
    v8 = v9;
    v10 += 1120;
    v9 += 1120;
    if (v9 == a2)
    {
      return 1;
    }
  }

  v14 = sub_681D54(v9);
  if (v14 <= sub_681D54(v8))
  {
    goto LABEL_17;
  }

LABEL_22:
  sub_7A5A3C(v22, v9);
  sub_8C8FB0(v9, v8);
  v15 = v10;
  while (1)
  {
    v16 = sub_681D54(v22);
    v17 = a1 + v15;
    if (v16 == sub_681D54(a1 + v15 + 1120))
    {
      v18 = sub_681D5C(v22);
      if (v18 <= sub_681D5C(v17 + 1120))
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

    v19 = sub_681D54(v22);
    if (v19 <= sub_681D54(v17 + 1120))
    {
      break;
    }

LABEL_23:
    v8 -= 1120;
    sub_8C8FB0(v17 + 2240, v17 + 1120);
    v15 -= 1120;
    if (v15 == -2240)
    {
      v8 = a1;
      goto LABEL_15;
    }
  }

  v8 = a1 + v15 + 2240;
LABEL_15:
  sub_8C8FB0(v8, v22);
  if (++v11 != 8)
  {
    sub_5938B0(v22);
    goto LABEL_17;
  }

  sub_5938B0(v22);
  return v9 + 1120 == a2;
}

uint64_t sub_8D50D0(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAF8AF8AF8AF8AF8BLL * ((a2 - a1) >> 5);
    if (a2 - a1 >= 1121)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[1120 * v10];
      do
      {
        sub_8D5280(a1, a4, v9, v12);
        v12 -= 1120;
        --v11;
      }

      while (v11);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; i += 1120)
      {
        v14 = sub_681D54(i);
        if (v14 == sub_681D54(a1))
        {
          v15 = sub_681D5C(i);
          if (v15 > sub_681D5C(a1))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v16 = sub_681D54(i);
          if (v16 > sub_681D54(a1))
          {
LABEL_12:
            sub_7A5A3C(v20, i);
            sub_8C8FB0(i, a1);
            sub_8C8FB0(a1, v20);
            sub_5938B0(v20);
            sub_8D5280(a1, a4, v9, a1);
          }
        }
      }
    }

    if (v8 >= 1121)
    {
      v17 = 0xAF8AF8AF8AF8AF8BLL * (v8 >> 5);
      do
      {
        sub_8D5514(a1, v6, a4, v17);
        v6 -= 1120;
      }

      while (v17-- > 2);
    }

    return i;
  }

  return a3;
}

void *sub_8D5280(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v6 = result;
  v7 = v4 >> 1;
  if ((v4 >> 1) < (0xAF8AF8AF8AF8AF8BLL * ((a4 - result) >> 5)))
  {
    return result;
  }

  v9 = (0x5F15F15F15F15F16 * ((a4 - result) >> 5)) | 1;
  v10 = &result[140 * v9];
  v11 = 0x5F15F15F15F15F16 * ((a4 - result) >> 5) + 2;
  if (v11 < a3)
  {
    v12 = sub_681D54(&result[140 * v9]);
    if (v12 == sub_681D54(v10 + 1120))
    {
      v13 = sub_681D5C(&v6[140 * v9]);
      if (v13 <= sub_681D5C(v10 + 1120))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v14 = sub_681D54(&v6[140 * v9]);
    if (v14 > sub_681D54(v10 + 1120))
    {
LABEL_8:
      v10 += 1120;
      v9 = v11;
    }
  }

LABEL_9:
  v15 = sub_681D54(v10);
  if (v15 == sub_681D54(a4))
  {
    v16 = sub_681D5C(v10);
    result = sub_681D5C(a4);
    if (v16 > result)
    {
      return result;
    }
  }

  else
  {
    v17 = sub_681D54(v10);
    result = sub_681D54(a4);
    if (v17 > result)
    {
      return result;
    }
  }

  sub_7A5A3C(v27, a4);
  sub_8C8FB0(a4, v10);
  if (v7 >= v9)
  {
    while (1)
    {
      v19 = 2 * v9;
      v9 = (2 * v9) | 1;
      v18 = &v6[140 * v9];
      v20 = v19 + 2;
      if (v19 + 2 < a3)
      {
        v21 = sub_681D54(&v6[140 * v9]);
        if (v21 == sub_681D54(v18 + 1120))
        {
          v22 = sub_681D5C(&v6[140 * v9]);
          v23 = sub_681D5C(v18 + 1120);
        }

        else
        {
          v22 = sub_681D54(&v6[140 * v9]);
          v23 = sub_681D54(v18 + 1120);
        }

        if (v22 > v23)
        {
          v18 += 1120;
          v9 = v20;
        }
      }

      v24 = sub_681D54(v18);
      if (v24 == sub_681D54(v27))
      {
        v25 = sub_681D5C(v18);
        v26 = sub_681D5C(v27);
      }

      else
      {
        v25 = sub_681D54(v18);
        v26 = sub_681D54(v27);
      }

      if (v25 > v26)
      {
        break;
      }

      sub_8C8FB0(v10, v18);
      v10 = v18;
      if (v7 < v9)
      {
        goto LABEL_26;
      }
    }
  }

  v18 = v10;
LABEL_26:
  sub_8C8FB0(v18, v27);
  return sub_5938B0(v27);
}

void sub_8D5500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8D5514(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    sub_7A5A3C(v20, result);
    v7 = 0;
    v8 = v4 >> 1;
    v9 = v6;
    do
    {
      v12 = v9 + 1120 * v7;
      v10 = v12 + 1120;
      v11 = (2 * v7) | 1;
      v13 = 2 * v7 + 2;
      if (v13 < a4)
      {
        v14 = sub_681D54(v12 + 1120);
        v15 = v12 + 2240;
        if (v14 == sub_681D54(v15))
        {
          v16 = sub_681D5C(v10);
          v17 = sub_681D5C(v15);
        }

        else
        {
          v16 = sub_681D54(v10);
          v17 = sub_681D54(v15);
        }

        if (v16 > v17)
        {
          v10 = v15;
          v11 = v13;
        }
      }

      sub_8C8FB0(v9, v10);
      v9 = v10;
      v7 = v11;
    }

    while (v11 <= v8);
    if (v10 == a2 - 1120)
    {
      sub_8C8FB0(v10, v20);
    }

    else
    {
      sub_8C8FB0(v10, a2 - 1120);
      sub_8C8FB0(a2 - 1120, v20);
      sub_8D56C4(v6, v10 + 1120, a3, 0xAF8AF8AF8AF8AF8BLL * ((v10 + 1120 - v6) >> 5));
    }

    return sub_5938B0(v20);
  }

  return result;
}

void sub_8D569C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void sub_8D56B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8D56C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = &result[140 * (v4 >> 1)];
    v8 = a2 - 1120;
    v9 = sub_681D54(v7);
    if (v9 == sub_681D54(v8))
    {
      v10 = sub_681D5C(v7);
      result = sub_681D5C(v8);
      if (v10 <= result)
      {
        return result;
      }
    }

    else
    {
      v11 = sub_681D54(v7);
      result = sub_681D54(v8);
      if (v11 <= result)
      {
        return result;
      }
    }

    sub_7A5A3C(v17, v8);
    sub_8C8FB0(v8, v7);
    if (v4 >= 2)
    {
      while (1)
      {
        v13 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v12 = &v5[140 * v6];
        v14 = sub_681D54(v12);
        if (v14 == sub_681D54(v17))
        {
          v15 = sub_681D5C(&v5[140 * v6]);
          v16 = sub_681D5C(v17);
        }

        else
        {
          v15 = sub_681D54(&v5[140 * v6]);
          v16 = sub_681D54(v17);
        }

        if (v15 <= v16)
        {
          break;
        }

        sub_8C8FB0(v7, &v5[140 * v6]);
        v7 = &v5[140 * v6];
        if (v13 <= 1)
        {
          goto LABEL_13;
        }
      }
    }

    v12 = v7;
LABEL_13:
    sub_8C8FB0(v12, v17);
    return sub_5938B0(v17);
  }

  return result;
}

uint64_t sub_8D583C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v29 = a2;
  v30 = result;
LABEL_2:
  v9 = 1 - a4;
  while (1)
  {
    v10 = v7 - v8;
    v11 = 0xAF8AF8AF8AF8AF8BLL * ((v7 - v8) >> 5);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3uLL:
          v29 = (v7 - 1120);
          return sub_8C9CB4(v8, (v8 + 1120), (v7 - 1120));
        case 4uLL:
          v29 = (v7 - 1120);
          return sub_8C9F7C(v8, (v8 + 1120), (v8 + 2240), (v7 - 1120));
        case 5uLL:
          v29 = (v7 - 1120);
          return sub_8CA168(v8, (v8 + 1120), (v8 + 2240), (v8 + 3360), (v7 - 1120));
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v29 = (v7 - 1120);
        v25 = sub_681D5C((v7 - 1120));
        if (v25 == sub_681D5C(v8))
        {
          v26 = sub_681D54((v7 - 1120));
          result = sub_681D54(v8);
          if (v26 <= result)
          {
            return result;
          }
        }

        else
        {
          v27 = sub_681D5C((v7 - 1120));
          result = sub_681D5C(v8);
          if (v27 <= result)
          {
            return result;
          }
        }

        return sub_8C7BAC(&v30, &v29);
      }
    }

    if (v10 <= 26879)
    {
      if (a5)
      {
        return sub_8D5BC8(v8, v7);
      }

      else
      {
        return sub_8D5D80(v8, v7);
      }
    }

    if (v9 == 1)
    {
      break;
    }

    v12 = v11 >> 1;
    v13 = (v7 - 1120);
    if (v10 <= 0x23000)
    {
      sub_8C9CB4(&v8[1120 * (v11 >> 1)], v8, v13);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_8C9CB4(v8, &v8[1120 * (v11 >> 1)], v13);
      v14 = 1120 * v12;
      v15 = 1120 * v12 - 1120;
      v16 = v29;
      sub_8C9CB4((v30 + 1120), &v30[v15], v29 - 2240);
      sub_8C9CB4((v30 + 2240), &v30[v14 + 1120], v16 - 3360);
      sub_8C9CB4(&v30[v15], &v30[v14], &v30[v14 + 1120]);
      v28 = &v30[v14];
      sub_8C7BAC(&v30, &v28);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = v30;
    v18 = (v30 - 1120);
    v19 = sub_681D5C((v30 - 1120));
    if (v19 == sub_681D5C(v17))
    {
      v20 = sub_681D54(v18);
      if (v20 <= sub_681D54(v17))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21 = sub_681D5C(v18);
      if (v21 <= sub_681D5C(v17))
      {
LABEL_27:
        v7 = v29;
        result = sub_8D5ED4(v30, v29);
        v8 = result;
        goto LABEL_28;
      }
    }

LABEL_20:
    v7 = v29;
    v22 = sub_8D6228(v30, v29);
    if ((v23 & 1) == 0)
    {
      goto LABEL_26;
    }

    v24 = sub_8D6544(v30, v22);
    v8 = (v22 + 1120);
    result = sub_8D6544(v22 + 1120, v7);
    if (result)
    {
      if (v24)
      {
        return result;
      }

      v29 = v22;
      v8 = v30;
      v7 = v22;
      ++v9;
    }

    else
    {
      if (!v24)
      {
LABEL_26:
        result = sub_8D583C(v30, v22, a3, -v9, a5 & 1);
        v8 = (v22 + 1120);
LABEL_28:
        a5 = 0;
        v30 = v8;
        a4 = -v9;
        goto LABEL_2;
      }

      v30 = (v22 + 1120);
      ++v9;
    }
  }

  if (v8 != v7)
  {
    return sub_8D6850(v8, v7, v7, a3);
  }

  return result;
}

uint64_t sub_8D5BC8(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1120;
    if (result + 1120 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = v6;
        v6 = v4;
        v9 = sub_681D5C(v4);
        if (v9 == sub_681D5C(v8))
        {
          v10 = sub_681D54(v6);
          result = sub_681D54(v8);
          if (v10 <= result)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v11 = sub_681D5C(v6);
          result = sub_681D5C(v8);
          if (v11 <= result)
          {
            goto LABEL_6;
          }
        }

        sub_7A5A3C(v16, v6);
        sub_8C8FB0(v6, v8);
        v7 = v3;
        if (v8 == v3)
        {
          goto LABEL_5;
        }

        v12 = v5;
        while (1)
        {
          v13 = sub_681D5C(v16);
          if (v13 != sub_681D5C(v3 + v12 - 1120))
          {
            break;
          }

          v14 = sub_681D54(v16);
          if (v14 <= sub_681D54(v3 + v12 - 1120))
          {
            v7 = v3 + v12;
            goto LABEL_5;
          }

LABEL_13:
          v8 -= 1120;
          sub_8C8FB0(v3 + v12, v3 + v12 - 1120);
          v12 -= 1120;
          if (!v12)
          {
            v7 = v3;
            goto LABEL_5;
          }
        }

        v15 = sub_681D5C(v16);
        if (v15 > sub_681D5C(v3 + v12 - 1120))
        {
          goto LABEL_13;
        }

        v7 = v8;
LABEL_5:
        sub_8C8FB0(v7, v16);
        result = sub_5938B0(v16);
LABEL_6:
        v4 = v6 + 1120;
        v5 += 1120;
      }

      while (v6 + 1120 != a2);
    }
  }

  return result;
}

uint64_t sub_8D5D80(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    while (1)
    {
      while (1)
      {
        v4 = v3 + 1120;
        if (v3 + 1120 == a2)
        {
          return result;
        }

        v5 = v3;
        v3 += 1120;
        v6 = sub_681D5C(v4);
        if (v6 != sub_681D5C(v5))
        {
          break;
        }

        v7 = sub_681D54(v3);
        result = sub_681D54(v5);
        if (v7 > result)
        {
          goto LABEL_9;
        }
      }

      v8 = sub_681D5C(v3);
      result = sub_681D5C(v5);
      if (v8 > result)
      {
LABEL_9:
        sub_7A5A3C(v13, v3);
        do
        {
          v9 = v5;
          sub_8C8FB0(v5 + 1120, v5);
          v10 = sub_681D5C(v13);
          v5 -= 1120;
          if (v10 == sub_681D5C(v9 - 1120))
          {
            v11 = sub_681D54(v13);
            v12 = sub_681D54(v9 - 1120);
          }

          else
          {
            v11 = sub_681D5C(v13);
            v12 = sub_681D5C(v9 - 1120);
          }
        }

        while (v11 > v12);
        sub_8C8FB0(v9, v13);
        result = sub_5938B0(v13);
      }
    }
  }

  return result;
}

unint64_t sub_8D5ED4(uint64_t a1, unint64_t a2)
{
  sub_7A5A3C(v24, a1);
  v4 = sub_681D5C(v24);
  if (v4 == sub_681D5C(a2 - 1120))
  {
    v5 = sub_681D54(v24);
    v6 = sub_681D54(a2 - 1120);
  }

  else
  {
    v5 = sub_681D5C(v24);
    v6 = sub_681D5C(a2 - 1120);
  }

  if (v5 <= v6)
  {
    for (i = a1 + 1120; i < a2; i += 1120)
    {
      v11 = sub_681D5C(v24);
      if (v11 == sub_681D5C(i))
      {
        v12 = sub_681D54(v24);
        v13 = sub_681D54(i);
      }

      else
      {
        v12 = sub_681D5C(v24);
        v13 = sub_681D5C(i);
      }

      if (v12 > v13)
      {
        break;
      }
    }
  }

  else
  {
    for (i = a1 + 1120; ; i += 1120)
    {
      v8 = sub_681D5C(v24);
      if (v8 == sub_681D5C(i))
      {
        v9 = sub_681D54(v24);
        v10 = sub_681D54(i);
      }

      else
      {
        v9 = sub_681D5C(v24);
        v10 = sub_681D5C(i);
      }

      if (v9 > v10)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 1120; ; a2 -= 1120)
    {
      v14 = sub_681D5C(v24);
      if (v14 == sub_681D5C(a2))
      {
        v15 = sub_681D54(v24);
        v16 = sub_681D54(a2);
      }

      else
      {
        v15 = sub_681D5C(v24);
        v16 = sub_681D5C(a2);
      }

      if (v15 <= v16)
      {
        break;
      }
    }
  }

  while (i < a2)
  {
    sub_7A5A3C(v25, i);
    sub_8C8FB0(i, a2);
    sub_8C8FB0(a2, v25);
    sub_5938B0(v25);
    do
    {
      i += 1120;
      v17 = sub_681D5C(v24);
      if (v17 == sub_681D5C(i))
      {
        v18 = sub_681D54(v24);
        v19 = sub_681D54(i);
      }

      else
      {
        v18 = sub_681D5C(v24);
        v19 = sub_681D5C(i);
      }
    }

    while (v18 <= v19);
    do
    {
      a2 -= 1120;
      v20 = sub_681D5C(v24);
      if (v20 == sub_681D5C(a2))
      {
        v21 = sub_681D54(v24);
        v22 = sub_681D54(a2);
      }

      else
      {
        v21 = sub_681D5C(v24);
        v22 = sub_681D5C(a2);
      }
    }

    while (v21 > v22);
  }

  if (i - 1120 != a1)
  {
    sub_8C8FB0(a1, i - 1120);
  }

  sub_8C8FB0(i - 1120, v24);
  sub_5938B0(v24);
  return i;
}

uint64_t sub_8D6228(uint64_t a1, unint64_t a2)
{
  sub_7A5A3C(v26, a1);
  for (i = 0; ; i += 1120)
  {
    v5 = a1 + i;
    v6 = sub_681D5C(a1 + i + 1120);
    if (v6 == sub_681D5C(v26))
    {
      v7 = sub_681D54(v5 + 1120);
      v8 = sub_681D54(v26);
    }

    else
    {
      v7 = sub_681D5C(v5 + 1120);
      v8 = sub_681D5C(v26);
    }

    if (v7 <= v8)
    {
      break;
    }
  }

  v9 = a1 + i;
  v10 = a1 + i + 1120;
  if (i)
  {
    do
    {
      a2 -= 1120;
      v11 = sub_681D5C(a2);
      if (v11 == sub_681D5C(v26))
      {
        v12 = sub_681D54(a2);
        v13 = sub_681D54(v26);
      }

      else
      {
        v12 = sub_681D5C(a2);
        v13 = sub_681D5C(v26);
      }
    }

    while (v12 <= v13);
  }

  else
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      a2 -= 1120;
      v14 = sub_681D5C(a2);
      if (v14 == sub_681D5C(v26))
      {
        v15 = sub_681D54(a2);
        v16 = sub_681D54(v26);
      }

      else
      {
        v15 = sub_681D5C(a2);
        v16 = sub_681D5C(v26);
      }
    }

    while (v15 <= v16);
  }

  if (v10 < a2)
  {
    v17 = v10;
    v18 = a2;
    do
    {
      sub_7A5A3C(v27, v17);
      sub_8C8FB0(v17, v18);
      sub_8C8FB0(v18, v27);
      sub_5938B0(v27);
      do
      {
        v9 = v17;
        v17 += 1120;
        v19 = sub_681D5C(v17);
        if (v19 == sub_681D5C(v26))
        {
          v20 = sub_681D54(v17);
          v21 = sub_681D54(v26);
        }

        else
        {
          v20 = sub_681D5C(v17);
          v21 = sub_681D5C(v26);
        }
      }

      while (v20 > v21);
      v17 = v9 + 1120;
      do
      {
        v18 -= 1120;
        v22 = sub_681D5C(v18);
        if (v22 == sub_681D5C(v26))
        {
          v23 = sub_681D54(v18);
          v24 = sub_681D54(v26);
        }

        else
        {
          v23 = sub_681D5C(v18);
          v24 = sub_681D5C(v26);
        }
      }

      while (v23 <= v24);
    }

    while (v17 < v18);
  }

  if (v9 != a1)
  {
    sub_8C8FB0(a1, v9);
  }

  sub_8C8FB0(v9, v26);
  sub_5938B0(v26);
  return v9;
}

BOOL sub_8D6544(uint64_t a1, uint64_t a2)
{
  v4 = 0xAF8AF8AF8AF8AF8BLL * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_8C9CB4(a1, a1 + 1120, a2 - 1120);
        return 1;
      case 4:
        sub_8C9F7C(a1, a1 + 1120, a1 + 2240, a2 - 1120);
        return 1;
      case 5:
        sub_8CA168(a1, a1 + 1120, a1 + 2240, a1 + 3360, a2 - 1120);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 1120;
      v6 = sub_681D5C(a2 - 1120);
      if (v6 == sub_681D5C(a1))
      {
        v7 = sub_681D54(v5);
        if (v7 <= sub_681D54(a1))
        {
          return 1;
        }

        goto LABEL_31;
      }

      v20 = sub_681D5C(v5);
      if (v20 > sub_681D5C(a1))
      {
LABEL_31:
        sub_7A5A3C(v22, a1);
        sub_8C8FB0(a1, v5);
        sub_8C8FB0(v5, v22);
        sub_5938B0(v22);
      }

      return 1;
    }
  }

  v8 = a1 + 2240;
  sub_8C9CB4(a1, a1 + 1120, a1 + 2240);
  v9 = a1 + 3360;
  if (a1 + 3360 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = sub_681D5C(v9);
    if (v12 != sub_681D5C(v8))
    {
      break;
    }

    v13 = sub_681D54(v9);
    if (v13 > sub_681D54(v8))
    {
      goto LABEL_22;
    }

LABEL_17:
    v8 = v9;
    v10 += 1120;
    v9 += 1120;
    if (v9 == a2)
    {
      return 1;
    }
  }

  v14 = sub_681D5C(v9);
  if (v14 <= sub_681D5C(v8))
  {
    goto LABEL_17;
  }

LABEL_22:
  sub_7A5A3C(v22, v9);
  sub_8C8FB0(v9, v8);
  v15 = v10;
  while (1)
  {
    v16 = sub_681D5C(v22);
    v17 = a1 + v15;
    if (v16 == sub_681D5C(a1 + v15 + 1120))
    {
      v18 = sub_681D54(v22);
      if (v18 <= sub_681D54(v17 + 1120))
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

    v19 = sub_681D5C(v22);
    if (v19 <= sub_681D5C(v17 + 1120))
    {
      break;
    }

LABEL_23:
    v8 -= 1120;
    sub_8C8FB0(v17 + 2240, v17 + 1120);
    v15 -= 1120;
    if (v15 == -2240)
    {
      v8 = a1;
      goto LABEL_15;
    }
  }

  v8 = a1 + v15 + 2240;
LABEL_15:
  sub_8C8FB0(v8, v22);
  if (++v11 != 8)
  {
    sub_5938B0(v22);
    goto LABEL_17;
  }

  sub_5938B0(v22);
  return v9 + 1120 == a2;
}

uint64_t sub_8D6850(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAF8AF8AF8AF8AF8BLL * ((a2 - a1) >> 5);
    if (a2 - a1 >= 1121)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[1120 * v10];
      do
      {
        sub_8D6A00(a1, a4, v9, v12);
        v12 -= 1120;
        --v11;
      }

      while (v11);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; i += 1120)
      {
        v14 = sub_681D5C(i);
        if (v14 == sub_681D5C(a1))
        {
          v15 = sub_681D54(i);
          if (v15 > sub_681D54(a1))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v16 = sub_681D5C(i);
          if (v16 > sub_681D5C(a1))
          {
LABEL_12:
            sub_7A5A3C(v20, i);
            sub_8C8FB0(i, a1);
            sub_8C8FB0(a1, v20);
            sub_5938B0(v20);
            sub_8D6A00(a1, a4, v9, a1);
          }
        }
      }
    }

    if (v8 >= 1121)
    {
      v17 = 0xAF8AF8AF8AF8AF8BLL * (v8 >> 5);
      do
      {
        sub_8D6C94(a1, v6, a4, v17);
        v6 -= 1120;
      }

      while (v17-- > 2);
    }

    return i;
  }

  return a3;
}

void *sub_8D6A00(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v6 = result;
  v7 = v4 >> 1;
  if ((v4 >> 1) < (0xAF8AF8AF8AF8AF8BLL * ((a4 - result) >> 5)))
  {
    return result;
  }

  v9 = (0x5F15F15F15F15F16 * ((a4 - result) >> 5)) | 1;
  v10 = &result[140 * v9];
  v11 = 0x5F15F15F15F15F16 * ((a4 - result) >> 5) + 2;
  if (v11 < a3)
  {
    v12 = sub_681D5C(&result[140 * v9]);
    if (v12 == sub_681D5C(v10 + 1120))
    {
      v13 = sub_681D54(&v6[140 * v9]);
      if (v13 <= sub_681D54(v10 + 1120))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v14 = sub_681D5C(&v6[140 * v9]);
    if (v14 > sub_681D5C(v10 + 1120))
    {
LABEL_8:
      v10 += 1120;
      v9 = v11;
    }
  }

LABEL_9:
  v15 = sub_681D5C(v10);
  if (v15 == sub_681D5C(a4))
  {
    v16 = sub_681D54(v10);
    result = sub_681D54(a4);
    if (v16 > result)
    {
      return result;
    }
  }

  else
  {
    v17 = sub_681D5C(v10);
    result = sub_681D5C(a4);
    if (v17 > result)
    {
      return result;
    }
  }

  sub_7A5A3C(v27, a4);
  sub_8C8FB0(a4, v10);
  if (v7 >= v9)
  {
    while (1)
    {
      v19 = 2 * v9;
      v9 = (2 * v9) | 1;
      v18 = &v6[140 * v9];
      v20 = v19 + 2;
      if (v19 + 2 < a3)
      {
        v21 = sub_681D5C(&v6[140 * v9]);
        if (v21 == sub_681D5C(v18 + 1120))
        {
          v22 = sub_681D54(&v6[140 * v9]);
          v23 = sub_681D54(v18 + 1120);
        }

        else
        {
          v22 = sub_681D5C(&v6[140 * v9]);
          v23 = sub_681D5C(v18 + 1120);
        }

        if (v22 > v23)
        {
          v18 += 1120;
          v9 = v20;
        }
      }

      v24 = sub_681D5C(v18);
      if (v24 == sub_681D5C(v27))
      {
        v25 = sub_681D54(v18);
        v26 = sub_681D54(v27);
      }

      else
      {
        v25 = sub_681D5C(v18);
        v26 = sub_681D5C(v27);
      }

      if (v25 > v26)
      {
        break;
      }

      sub_8C8FB0(v10, v18);
      v10 = v18;
      if (v7 < v9)
      {
        goto LABEL_26;
      }
    }
  }

  v18 = v10;
LABEL_26:
  sub_8C8FB0(v18, v27);
  return sub_5938B0(v27);
}

void sub_8D6C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8D6C94(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    sub_7A5A3C(v20, result);
    v7 = 0;
    v8 = v4 >> 1;
    v9 = v6;
    do
    {
      v12 = v9 + 1120 * v7;
      v10 = v12 + 1120;
      v11 = (2 * v7) | 1;
      v13 = 2 * v7 + 2;
      if (v13 < a4)
      {
        v14 = sub_681D5C(v12 + 1120);
        v15 = v12 + 2240;
        if (v14 == sub_681D5C(v15))
        {
          v16 = sub_681D54(v10);
          v17 = sub_681D54(v15);
        }

        else
        {
          v16 = sub_681D5C(v10);
          v17 = sub_681D5C(v15);
        }

        if (v16 > v17)
        {
          v10 = v15;
          v11 = v13;
        }
      }

      sub_8C8FB0(v9, v10);
      v9 = v10;
      v7 = v11;
    }

    while (v11 <= v8);
    if (v10 == a2 - 1120)
    {
      sub_8C8FB0(v10, v20);
    }

    else
    {
      sub_8C8FB0(v10, a2 - 1120);
      sub_8C8FB0(a2 - 1120, v20);
      sub_8D6E44(v6, v10 + 1120, a3, 0xAF8AF8AF8AF8AF8BLL * ((v10 + 1120 - v6) >> 5));
    }

    return sub_5938B0(v20);
  }

  return result;
}

void sub_8D6E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void sub_8D6E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8D6E44(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = &result[140 * (v4 >> 1)];
    v8 = a2 - 1120;
    v9 = sub_681D5C(v7);
    if (v9 == sub_681D5C(v8))
    {
      v10 = sub_681D54(v7);
      result = sub_681D54(v8);
      if (v10 <= result)
      {
        return result;
      }
    }

    else
    {
      v11 = sub_681D5C(v7);
      result = sub_681D5C(v8);
      if (v11 <= result)
      {
        return result;
      }
    }

    sub_7A5A3C(v17, v8);
    sub_8C8FB0(v8, v7);
    if (v4 >= 2)
    {
      while (1)
      {
        v13 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v12 = &v5[140 * v6];
        v14 = sub_681D5C(v12);
        if (v14 == sub_681D5C(v17))
        {
          v15 = sub_681D54(&v5[140 * v6]);
          v16 = sub_681D54(v17);
        }

        else
        {
          v15 = sub_681D5C(&v5[140 * v6]);
          v16 = sub_681D5C(v17);
        }

        if (v15 <= v16)
        {
          break;
        }

        sub_8C8FB0(v7, &v5[140 * v6]);
        v7 = &v5[140 * v6];
        if (v13 <= 1)
        {
          goto LABEL_13;
        }
      }
    }

    v12 = v7;
LABEL_13:
    sub_8C8FB0(v12, v17);
    return sub_5938B0(v17);
  }

  return result;
}

void sub_8D6FBC(int *a1, int *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = (a2 - 112);
      v8 = sub_681D54((a2 - 112));
      if (v8 == sub_681D54(a1))
      {
        v9 = sub_681D5C(v7);
        if (v9 <= sub_681D5C(a1))
        {
          return;
        }
      }

      else
      {
        v18 = sub_681D54(v7);
        if (v18 <= sub_681D54(a1))
        {
          return;
        }
      }

      sub_8CD108(a1, v7);
    }

    else if (a4 <= 0)
    {

      sub_8D723C(a1, a2);
    }

    else
    {
      v10 = a5;
      v12 = a4 >> 1;
      v13 = &a1[112 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_8D77EC(a1, &a1[112 * (a4 >> 1)], a3, a4 >> 1, a5);
        v20 = a4 - v12;
        v21 = &v10[56 * v12];
        sub_8D77EC(v13, a2, a3, v20, v21);
        sub_8CC900(v10, v21, v21, &v10[56 * a4], a1);
        if (v10)
        {
          v22 = 0;
          do
          {
            v23 = v10[50];
            if (v23)
            {
              v10[51] = v23;
              operator delete(v23);
            }

            sub_55D550(v10);
            ++v22;
            v10 += 56;
          }

          while (v22 < a4);
        }
      }

      else
      {
        sub_8D6FBC(a1, &a1[112 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v17 = a4 - v12;
        sub_8D6FBC(v13, a2, a3, v17, v10, a6);

        sub_8D80F8(a1, v13, a2, a3, v12, v17, v10, a6);
      }
    }
  }
}

void sub_8D7228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D723C(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v4 = (a1 + 112);
    if (a1 + 112 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = sub_681D54(v4);
        if (v8 == sub_681D54(v7))
        {
          v9 = sub_681D5C(v6);
          if (v9 > sub_681D5C(v7))
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = sub_681D54(v6);
          if (v10 > sub_681D54(v7))
          {
LABEL_11:
            v46 = *v6;
            *__p = *(v7 + 456);
            v48 = *(v7 + 472);
            *(v7 + 456) = 0u;
            *(v7 + 472) = 0;
            v11 = *(v7 + 528);
            v51 = *(v7 + 512);
            v52 = v11;
            v53 = *(v7 + 544);
            v54 = *(v7 + 560);
            v12 = *(v7 + 496);
            v49 = *(v7 + 480);
            v50 = v12;
            v13 = *(v7 + 584);
            v55 = *(v7 + 568);
            v56 = v13;
            v57 = *(v7 + 600);
            *v58 = *(v7 + 608);
            v59 = *(v7 + 624);
            *(v7 + 608) = 0u;
            *(v7 + 624) = 0;
            *v60 = *(v7 + 632);
            v61 = *(v7 + 648);
            *(v7 + 632) = 0u;
            *(v7 + 648) = 0;
            v14 = *(v7 + 672);
            v62 = *(v7 + 656);
            v63 = v14;
            v15 = *(v7 + 704);
            v64 = *(v7 + 688);
            v65 = v15;
            v66 = *(v7 + 720);
            v67 = *(v7 + 736);
            v68 = *(v7 + 744);
            v69 = *(v7 + 760);
            *(v7 + 744) = 0u;
            *(v7 + 760) = 0;
            v70 = *(v7 + 768);
            v71 = *(v7 + 776);
            v72 = *(v7 + 792);
            *(v7 + 776) = 0u;
            *(v7 + 792) = 0;
            *v73 = *(v7 + 800);
            *&v73[9] = *(v7 + 809);
            v74 = *(v7 + 828);
            v75 = *(v7 + 844);
            *v76 = *(v7 + 848);
            *&v76[16] = *(v7 + 864);
            *(v7 + 848) = 0u;
            *(v7 + 864) = 0;
            v16 = *(v7 + 872);
            v78 = *(v7 + 888);
            v17 = v5;
            v77 = v16;
            while (1)
            {
              v18 = a1 + v17;
              sub_592E78(a1 + v17 + 448, a1 + v17);
              *(v18 + 828) = *(v18 + 380);
              *(v18 + 211) = *(v18 + 99);
              v19 = (a1 + v17 + 848);
              v20 = *v19;
              if (*v19)
              {
                *(v18 + 107) = v20;
                operator delete(v20);
                *v19 = 0;
                *(v18 + 107) = 0;
                *(v18 + 108) = 0;
              }

              *v19 = *(v18 + 25);
              *(v18 + 108) = *(v18 + 52);
              *(v18 + 50) = 0;
              *(v18 + 51) = 0;
              *(v18 + 52) = 0;
              *(v18 + 872) = *(v18 + 424);
              *(v18 + 222) = *(v18 + 110);
              if (!v17)
              {
                v24 = a1;
                goto LABEL_22;
              }

              v21 = sub_681D54(&v46);
              if (v21 == sub_681D54(a1 + v17 - 448))
              {
                v22 = sub_681D5C(&v46);
                v23 = sub_681D5C(a1 + v17 - 448);
              }

              else
              {
                v22 = sub_681D54(&v46);
                v23 = sub_681D54(a1 + v17 - 448);
              }

              if (v22 <= v23)
              {
                break;
              }

              v17 -= 448;
            }

            v24 = a1 + v17;
LABEL_22:
            v25 = (v24 + 408);
            sub_592E78(v24, &v46);
            v26 = a1 + v17;
            v27 = v75;
            *(a1 + v17 + 380) = v74;
            *(a1 + v17 + 396) = v27;
            v28 = *(a1 + v17 + 400);
            if (v28)
            {
              *v25 = v28;
              operator delete(v28);
              *(v26 + 50) = 0;
              *(v26 + 51) = 0;
              *(v26 + 52) = 0;
            }

            *(v26 + 50) = *v76;
            *v25 = *&v76[8];
            memset(v76, 0, sizeof(v76));
            v29 = v77;
            *(v26 + 110) = v78;
            *(v26 + 424) = v29;
            if (v71)
            {
              *(&v71 + 1) = v71;
              operator delete(v71);
            }

            v30 = v68;
            if (!v68)
            {
              goto LABEL_61;
            }

            v31 = *(&v68 + 1);
            v32 = v68;
            if (*(&v68 + 1) == v68)
            {
LABEL_60:
              *(&v68 + 1) = v30;
              operator delete(v32);
LABEL_61:
              if (v60[0])
              {
                v60[1] = v60[0];
                operator delete(v60[0]);
              }

              if (v58[0])
              {
                v58[1] = v58[0];
                operator delete(v58[0]);
              }

              v42 = __p[0];
              if (__p[0])
              {
                v43 = __p[1];
                v44 = __p[0];
                if (__p[1] != __p[0])
                {
                  do
                  {
                    v43 = sub_53A868(v43 - 160);
                  }

                  while (v43 != v42);
                  v44 = __p[0];
                }

                __p[1] = v42;
                operator delete(v44);
              }

              v2 = a2;
              goto LABEL_6;
            }

            while (2)
            {
              v34 = *(v31 - 16);
              if (!v34 || atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v35 = *(v31 - 64);
                if (v35)
                {
                  goto LABEL_46;
                }

LABEL_35:
                v36 = *(v31 - 80);
                *(v31 - 80) = 0;
                if (v36)
                {
                  operator delete(v36);
                }

                v37 = (v31 - 104);
                v38 = *(v31 - 104);
                if (v38)
                {
                  v39 = *(v31 - 96);
                  v33 = *(v31 - 104);
                  if (v39 != v38)
                  {
                    do
                    {
                      v40 = *(v39 - 1);
                      v39 -= 3;
                      if (v40 < 0)
                      {
                        operator delete(*v39);
                      }
                    }

                    while (v39 != v38);
                    v33 = *v37;
                  }

                  *(v31 - 96) = v38;
                  operator delete(v33);
                }

                v31 -= 104;
                if (v37 == v30)
                {
                  v32 = v68;
                  goto LABEL_60;
                }

                continue;
              }

              break;
            }

            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
            v35 = *(v31 - 64);
            if (!v35)
            {
              goto LABEL_35;
            }

LABEL_46:
            while (2)
            {
              v41 = *v35;
              if (*(v35 + 191) < 0)
              {
                operator delete(v35[21]);
                if (*(v35 + 159) < 0)
                {
                  goto LABEL_54;
                }

LABEL_48:
                if ((*(v35 + 135) & 0x80000000) == 0)
                {
                  goto LABEL_49;
                }

LABEL_55:
                operator delete(v35[14]);
                if (*(v35 + 95) < 0)
                {
                  goto LABEL_56;
                }

LABEL_50:
                if ((*(v35 + 63) & 0x80000000) == 0)
                {
                  goto LABEL_51;
                }

LABEL_57:
                operator delete(v35[5]);
                if (*(v35 + 39) < 0)
                {
LABEL_58:
                  operator delete(v35[2]);
                }
              }

              else
              {
                if ((*(v35 + 159) & 0x80000000) == 0)
                {
                  goto LABEL_48;
                }

LABEL_54:
                operator delete(v35[17]);
                if (*(v35 + 135) < 0)
                {
                  goto LABEL_55;
                }

LABEL_49:
                if ((*(v35 + 95) & 0x80000000) == 0)
                {
                  goto LABEL_50;
                }

LABEL_56:
                operator delete(v35[9]);
                if (*(v35 + 63) < 0)
                {
                  goto LABEL_57;
                }

LABEL_51:
                if (*(v35 + 39) < 0)
                {
                  goto LABEL_58;
                }
              }

              operator delete(v35);
              v35 = v41;
              if (!v41)
              {
                goto LABEL_35;
              }

              continue;
            }
          }
        }

LABEL_6:
        v4 = (v6 + 112);
        v5 += 448;
      }

      while (v6 + 112 != v2);
    }
  }
}

void sub_8D77D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_682DB0(va);
  _Unwind_Resume(a1);
}

void sub_8D77EC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v22 = a2 - 112;
      v23 = sub_681D54((a2 - 112));
      v24 = (a5 + 296);
      if (v23 == sub_681D54(a1))
      {
        v25 = sub_681D5C(v22);
        v26 = sub_681D5C(a1);
      }

      else
      {
        v25 = sub_681D54(v22);
        v26 = sub_681D54(a1);
      }

      if (v25 <= v26)
      {
        *a5 = *a1;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        *(a5 + 8) = 0;
        *(a5 + 8) = *(a1 + 8);
        *(a5 + 24) = *(a1 + 24);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        v61 = *(a1 + 80);
        v60 = *(a1 + 96);
        v62 = *(a1 + 64);
        *(a5 + 112) = *(a1 + 112);
        *(a5 + 80) = v61;
        *(a5 + 96) = v60;
        *(a5 + 64) = v62;
        v63 = *(a1 + 48);
        *(a5 + 32) = *(a1 + 32);
        *(a5 + 48) = v63;
        v64 = *(a1 + 120);
        v65 = *(a1 + 152);
        *(a5 + 136) = *(a1 + 136);
        *(a5 + 120) = v64;
        *(a5 + 152) = v65;
        *(a5 + 160) = 0;
        *(a5 + 168) = 0;
        *(a5 + 176) = 0;
        *(a5 + 160) = *(a1 + 160);
        *(a5 + 176) = *(a1 + 176);
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a5 + 184) = 0;
        *(a5 + 192) = 0;
        *(a5 + 200) = 0;
        *(a5 + 184) = *(a1 + 184);
        *(a5 + 200) = *(a1 + 200);
        *(a1 + 184) = 0;
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        v66 = *(a1 + 208);
        v67 = *(a1 + 240);
        *(a5 + 224) = *(a1 + 224);
        *(a5 + 240) = v67;
        *(a5 + 208) = v66;
        v68 = *(a1 + 272);
        v69 = *(a1 + 288);
        *(a5 + 256) = *(a1 + 256);
        *(a5 + 272) = v68;
        *(a5 + 288) = v69;
        *(a5 + 296) = 0;
        *(a5 + 304) = 0;
        *(a5 + 312) = 0;
        *(a5 + 296) = *(a1 + 296);
        *(a5 + 304) = *(a1 + 304);
        *(a1 + 304) = 0;
        *(a1 + 312) = 0;
        *(a1 + 296) = 0;
        *(a5 + 320) = *(a1 + 320);
        *(a5 + 336) = 0;
        *(a5 + 344) = 0;
        *(a5 + 328) = 0;
        *(a5 + 328) = *(a1 + 328);
        *(a5 + 336) = *(a1 + 336);
        *(a1 + 328) = 0;
        *(a1 + 336) = 0;
        *(a1 + 344) = 0;
        v70 = *(a1 + 352);
        *(a5 + 361) = *(a1 + 361);
        *(a5 + 352) = v70;
        v71 = *(a1 + 380);
        *(a5 + 396) = *(a1 + 396);
        *(a5 + 380) = v71;
        *(a5 + 408) = 0;
        *(a5 + 416) = 0;
        *(a5 + 400) = 0;
        *(a5 + 400) = *(a1 + 400);
        *(a5 + 416) = *(a1 + 416);
        *(a1 + 400) = 0;
        *(a1 + 408) = 0;
        *(a1 + 416) = 0;
        v72 = *(a1 + 424);
        *(a5 + 440) = *(a1 + 440);
        *(a5 + 424) = v72;
        *(a5 + 448) = *v22;
        v73 = a2 - 110;
        *(a5 + 464) = 0;
        *(a5 + 472) = 0;
        *(a5 + 456) = 0;
        *(a5 + 456) = *(a2 - 110);
        *(a5 + 472) = *(a2 - 53);
        v73[2] = 0;
        *(a2 - 54) = 0;
        *v73 = 0;
        v75 = *(a2 - 23);
        v74 = *(a2 - 22);
        v76 = *(a2 - 24);
        *(a5 + 560) = *(a2 - 42);
        *(a5 + 528) = v75;
        *(a5 + 544) = v74;
        *(a5 + 512) = v76;
        v77 = *(a2 - 25);
        *(a5 + 480) = *(a2 - 26);
        *(a5 + 496) = v77;
        v78 = *(a2 - 82);
        v79 = *(a2 - 78);
        *(a5 + 600) = *(a2 - 37);
        *(a5 + 568) = v78;
        *(a5 + 584) = v79;
        v80 = a2 - 72;
        *(a5 + 608) = 0;
        *(a5 + 624) = 0;
        *(a5 + 616) = 0;
        *(a5 + 608) = *(a2 - 18);
        *(a5 + 624) = *(a2 - 34);
        *(a2 - 35) = 0;
        *v80 = 0;
        v80[2] = 0;
        *(a5 + 632) = 0;
        *(a5 + 640) = 0;
        *(a5 + 648) = 0;
        *(a5 + 632) = *(a2 - 66);
        *(a5 + 648) = *(a2 - 31);
        *(a2 - 33) = 0;
        *(a2 - 32) = 0;
        *(a2 - 31) = 0;
        v81 = *(a2 - 15);
        v82 = *(a2 - 13);
        *(a5 + 672) = *(a2 - 14);
        *(a5 + 688) = v82;
        *(a5 + 656) = v81;
        v83 = *(a2 - 12);
        v84 = *(a2 - 11);
        *(a5 + 736) = *(a2 - 20);
        *(a5 + 704) = v83;
        *(a5 + 720) = v84;
        *(a5 + 752) = 0;
        *(a5 + 760) = 0;
        *(a5 + 744) = 0;
        *(a5 + 744) = *(a2 - 38);
        *(a5 + 760) = *(a2 - 17);
        *(a2 - 18) = 0;
        *(a2 - 17) = 0;
        *(a2 - 19) = 0;
        *(a5 + 768) = *(a2 - 128);
        *(a5 + 784) = 0;
        *(a5 + 792) = 0;
        *(a5 + 776) = 0;
        *(a5 + 776) = *(a2 - 30);
        *(a5 + 792) = *(a2 - 13);
        *(a2 - 15) = 0;
        *(a2 - 14) = 0;
        *(a2 - 13) = 0;
        v85 = *(a2 - 6);
        *(a5 + 809) = *(a2 - 87);
        *(a5 + 800) = v85;
        v86 = *(a2 - 17);
        *(a5 + 844) = *(a2 - 13);
        *(a5 + 828) = v86;
        *(a5 + 848) = 0;
        *(a5 + 864) = 0;
        *(a5 + 856) = 0;
        *(a5 + 848) = *(a2 - 3);
        *(a5 + 864) = *(a2 - 4);
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 4) = 0;
        v19 = (a5 + 872);
        v20 = *(a2 - 6);
        v59 = *(a2 - 2);
      }

      else
      {
        *a5 = *v22;
        v32 = a2 - 110;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        *(a5 + 8) = 0;
        *(a5 + 8) = *(a2 - 110);
        *(a5 + 24) = *(a2 - 53);
        v32[2] = 0;
        *(a2 - 54) = 0;
        *v32 = 0;
        v34 = *(a2 - 23);
        v33 = *(a2 - 22);
        v35 = *(a2 - 24);
        *(a5 + 112) = *(a2 - 42);
        *(a5 + 80) = v34;
        *(a5 + 96) = v33;
        *(a5 + 64) = v35;
        v36 = *(a2 - 25);
        *(a5 + 32) = *(a2 - 26);
        *(a5 + 48) = v36;
        v37 = *(a2 - 82);
        v38 = *(a2 - 37);
        *(a5 + 136) = *(a2 - 78);
        *(a5 + 120) = v37;
        v39 = a2 - 72;
        *(a5 + 152) = v38;
        *(a5 + 160) = 0;
        *(a5 + 168) = 0;
        *(a5 + 176) = 0;
        *(a5 + 160) = *(a2 - 18);
        *(a5 + 176) = *(a2 - 34);
        *(a2 - 35) = 0;
        *v39 = 0;
        v39[2] = 0;
        *(a5 + 184) = 0;
        *(a5 + 192) = 0;
        *(a5 + 200) = 0;
        *(a5 + 184) = *(a2 - 66);
        *(a5 + 200) = *(a2 - 31);
        *(a2 - 33) = 0;
        *(a2 - 32) = 0;
        *(a2 - 31) = 0;
        v40 = *(a2 - 15);
        v41 = *(a2 - 13);
        *(a5 + 224) = *(a2 - 14);
        *(a5 + 240) = v41;
        *(a5 + 208) = v40;
        v42 = *(a2 - 12);
        v43 = *(a2 - 11);
        *(a5 + 288) = *(a2 - 20);
        *(a5 + 256) = v42;
        *(a5 + 272) = v43;
        *(a5 + 304) = 0;
        *(a5 + 312) = 0;
        *v24 = 0;
        *v24 = *(a2 - 38);
        *(a5 + 312) = *(a2 - 17);
        *(a2 - 18) = 0;
        *(a2 - 17) = 0;
        *(a2 - 19) = 0;
        *(a5 + 320) = *(a2 - 128);
        *(a5 + 336) = 0;
        *(a5 + 344) = 0;
        *(a5 + 328) = 0;
        *(a5 + 328) = *(a2 - 30);
        *(a5 + 344) = *(a2 - 13);
        *(a2 - 15) = 0;
        *(a2 - 14) = 0;
        *(a2 - 13) = 0;
        v44 = *(a2 - 6);
        *(a5 + 361) = *(a2 - 87);
        *(a5 + 352) = v44;
        v45 = *(a2 - 17);
        *(a5 + 396) = *(a2 - 13);
        *(a5 + 380) = v45;
        *(a5 + 408) = 0;
        *(a5 + 416) = 0;
        *(a5 + 400) = 0;
        *(a5 + 400) = *(a2 - 3);
        *(a5 + 416) = *(a2 - 4);
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 4) = 0;
        v46 = *(a2 - 6);
        *(a5 + 440) = *(a2 - 2);
        *(a5 + 424) = v46;
        *(a5 + 448) = *a1;
        *(a5 + 464) = 0;
        *(a5 + 472) = 0;
        *(a5 + 456) = 0;
        *(a5 + 456) = *(a1 + 8);
        *(a5 + 472) = *(a1 + 24);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        v48 = *(a1 + 80);
        v47 = *(a1 + 96);
        v49 = *(a1 + 64);
        *(a5 + 560) = *(a1 + 112);
        *(a5 + 528) = v48;
        *(a5 + 544) = v47;
        *(a5 + 512) = v49;
        v50 = *(a1 + 48);
        *(a5 + 480) = *(a1 + 32);
        *(a5 + 496) = v50;
        v51 = *(a1 + 120);
        v52 = *(a1 + 136);
        *(a5 + 600) = *(a1 + 152);
        *(a5 + 568) = v51;
        *(a5 + 584) = v52;
        *(a5 + 608) = 0;
        *(a5 + 624) = 0;
        *(a5 + 616) = 0;
        *(a5 + 608) = *(a1 + 160);
        *(a5 + 624) = *(a1 + 176);
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a5 + 632) = 0;
        *(a5 + 640) = 0;
        *(a5 + 648) = 0;
        *(a5 + 632) = *(a1 + 184);
        *(a5 + 648) = *(a1 + 200);
        *(a1 + 184) = 0;
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        v53 = *(a1 + 208);
        v54 = *(a1 + 240);
        *(a5 + 672) = *(a1 + 224);
        *(a5 + 688) = v54;
        *(a5 + 656) = v53;
        v55 = *(a1 + 256);
        v56 = *(a1 + 272);
        *(a5 + 736) = *(a1 + 288);
        *(a5 + 704) = v55;
        *(a5 + 720) = v56;
        *(a5 + 744) = 0;
        *(a5 + 760) = 0;
        *(a5 + 752) = 0;
        *(a5 + 744) = *(a1 + 296);
        *(a5 + 752) = *(a1 + 304);
        *(a1 + 304) = 0;
        *(a1 + 312) = 0;
        *(a1 + 296) = 0;
        *(a5 + 768) = *(a1 + 320);
        *(a5 + 784) = 0;
        *(a5 + 792) = 0;
        *(a5 + 776) = 0;
        *(a5 + 776) = *(a1 + 328);
        *(a5 + 784) = *(a1 + 336);
        *(a1 + 328) = 0;
        *(a1 + 336) = 0;
        *(a1 + 344) = 0;
        v57 = *(a1 + 352);
        *(a5 + 809) = *(a1 + 361);
        *(a5 + 800) = v57;
        v58 = *(a1 + 380);
        *(a5 + 844) = *(a1 + 396);
        *(a5 + 828) = v58;
        *(a5 + 848) = 0;
        *(a5 + 864) = 0;
        *(a5 + 856) = 0;
        *(a5 + 848) = *(a1 + 400);
        *(a5 + 864) = *(a1 + 416);
        *(a1 + 400) = 0;
        *(a1 + 408) = 0;
        *(a1 + 416) = 0;
        v19 = (a5 + 872);
        v20 = *(a1 + 424);
        v59 = *(a1 + 440);
      }

      *(a5 + 888) = v59;
      goto LABEL_19;
    }

    if (a4 == 1)
    {
      *a5 = *a1;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      *(a5 + 8) = 0;
      *(a5 + 8) = *(a1 + 8);
      *(a5 + 24) = *(a1 + 24);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      v8 = *(a1 + 80);
      v7 = *(a1 + 96);
      v9 = *(a1 + 64);
      *(a5 + 112) = *(a1 + 112);
      *(a5 + 80) = v8;
      *(a5 + 96) = v7;
      *(a5 + 64) = v9;
      v10 = *(a1 + 48);
      *(a5 + 32) = *(a1 + 32);
      *(a5 + 48) = v10;
      v11 = *(a1 + 120);
      v12 = *(a1 + 152);
      *(a5 + 136) = *(a1 + 136);
      *(a5 + 120) = v11;
      *(a5 + 152) = v12;
      *(a5 + 160) = 0;
      *(a5 + 168) = 0;
      *(a5 + 176) = 0;
      *(a5 + 160) = *(a1 + 160);
      *(a5 + 176) = *(a1 + 176);
      *(a1 + 160) = 0;
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
      *(a5 + 184) = 0;
      *(a5 + 192) = 0;
      *(a5 + 200) = 0;
      *(a5 + 184) = *(a1 + 184);
      *(a5 + 200) = *(a1 + 200);
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
      *(a1 + 200) = 0;
      v13 = *(a1 + 208);
      v14 = *(a1 + 240);
      *(a5 + 224) = *(a1 + 224);
      *(a5 + 240) = v14;
      *(a5 + 208) = v13;
      v15 = *(a1 + 272);
      v16 = *(a1 + 288);
      *(a5 + 256) = *(a1 + 256);
      *(a5 + 272) = v15;
      *(a5 + 288) = v16;
      *(a5 + 296) = 0;
      *(a5 + 304) = 0;
      *(a5 + 312) = 0;
      *(a5 + 296) = *(a1 + 296);
      *(a5 + 304) = *(a1 + 304);
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      *(a1 + 296) = 0;
      *(a5 + 320) = *(a1 + 320);
      *(a5 + 336) = 0;
      *(a5 + 344) = 0;
      *(a5 + 328) = 0;
      *(a5 + 328) = *(a1 + 328);
      *(a5 + 336) = *(a1 + 336);
      *(a1 + 328) = 0;
      *(a1 + 336) = 0;
      *(a1 + 344) = 0;
      v17 = *(a1 + 352);
      *(a5 + 361) = *(a1 + 361);
      *(a5 + 352) = v17;
      v18 = *(a1 + 380);
      *(a5 + 396) = *(a1 + 396);
      *(a5 + 380) = v18;
      *(a5 + 408) = 0;
      *(a5 + 416) = 0;
      *(a5 + 400) = 0;
      *(a5 + 400) = *(a1 + 400);
      *(a5 + 416) = *(a1 + 416);
      *(a1 + 400) = 0;
      *(a1 + 408) = 0;
      *(a1 + 416) = 0;
      v19 = (a5 + 424);
      v20 = *(a1 + 424);
      *(a5 + 440) = *(a1 + 440);
LABEL_19:
      *v19 = v20;
      return;
    }

    if (a4 > 8)
    {
      v27 = a4 >> 1;
      v28 = 448 * (a4 >> 1);
      sub_8D6FBC(a1, v28 + a1, a3, v27, a5, v27);
      sub_8D6FBC(v28 + a1, a2, a3, a4 - v27, a5 + v28, a4 - v27);

      sub_8D8CB4(a1, (v28 + a1), v28 + a1, a2, a5);
    }

    else
    {

      sub_8D85D0(a1, a2, a5);
    }
  }
}

void sub_8D80E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D80F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a6)
  {
    return;
  }

  v9 = a6;
  while (2)
  {
    if (v9 <= a8 || a5 <= a8)
    {

      sub_8D9368(a1, a2, a3, a4, a5, v9, a7);
      return;
    }

    if (!a5)
    {
      return;
    }

    v14 = 0;
    v15 = -a5;
    while (1)
    {
      v16 = sub_681D54(a2);
      if (v16 != sub_681D54(a1 + v14))
      {
        break;
      }

      v17 = sub_681D5C(a2);
      if (v17 > sub_681D5C(a1 + v14))
      {
        goto LABEL_14;
      }

LABEL_11:
      v14 += 448;
      if (__CFADD__(v15++, 1))
      {
        return;
      }
    }

    v18 = sub_681D54(a2);
    if (v18 <= sub_681D54(a1 + v14))
    {
      goto LABEL_11;
    }

LABEL_14:
    v20 = -v15;
    v44 = a3;
    v45 = a8;
    v42 = a1 + v14;
    v43 = v9;
    v46 = a1;
    if (-v15 >= v9)
    {
      if (v15 != -1)
      {
        v25 = v20 / 2;
        v24 = a1 + 448 * (v20 / 2) + v14;
        v23 = a2;
        if (a2 != a3)
        {
          v37 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 6);
          v23 = a2;
          do
          {
            v40 = v23 + 448 * (v37 >> 1);
            v41 = sub_681D54(v40);
            if (v41 == sub_681D54(v24))
            {
              v38 = sub_681D5C(v23 + 448 * (v37 >> 1));
              v39 = sub_681D5C(v24);
            }

            else
            {
              v38 = sub_681D54(v23 + 448 * (v37 >> 1));
              v39 = sub_681D54(v24);
            }

            if (v38 <= v39)
            {
              v37 >>= 1;
            }

            else
            {
              v37 += ~(v37 >> 1);
            }

            if (v38 > v39)
            {
              v23 = v40 + 448;
            }
          }

          while (v37);
        }

        v21 = 0x6DB6DB6DB6DB6DB7 * ((v23 - a2) >> 6);
        a3 = v23;
        if (a2 != v24)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }

      sub_8CD108(a1 + v14, a2);
    }

    else
    {
      v21 = v9 / 2;
      v22 = a1;
      v23 = a2 + 448 * (v9 / 2);
      v24 = a2;
      if (a2 - v22 != v14)
      {
        v33 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v22 - v14) >> 6);
        v24 = v42;
        do
        {
          v36 = sub_681D54(v23);
          if (v36 == sub_681D54(v24 + 448 * (v33 >> 1)))
          {
            v34 = sub_681D5C(v23);
            v35 = sub_681D5C(v24 + 448 * (v33 >> 1));
          }

          else
          {
            v34 = sub_681D54(v23);
            v35 = sub_681D54(v24 + 448 * (v33 >> 1));
          }

          if (v34 > v35)
          {
            v33 >>= 1;
          }

          else
          {
            v24 += 448 * (v33 >> 1) + 448;
            v33 += ~(v33 >> 1);
          }
        }

        while (v33);
      }

      v25 = 0x6DB6DB6DB6DB6DB7 * ((v24 - v46 - v14) >> 6);
      a3 = v23;
      if (a2 == v24)
      {
        goto LABEL_38;
      }

LABEL_21:
      a3 = v24;
      if (a2 != v23)
      {
        sub_8CD108(v24, a2);
        a3 = v24 + 448;
        for (i = a2 + 448; i != v23; i += 448)
        {
          if (a3 == a2)
          {
            a2 = i;
          }

          sub_8CD108(a3, i);
          a3 += 448;
        }

        if (a3 != a2)
        {
          v27 = a3;
          v28 = a2;
          while (1)
          {
            sub_8CD108(v27, v28);
            v28 += 448;
            v29 = v27 + 448 == a2;
            if (v28 == v23)
            {
              if (v27 + 448 == a2)
              {
                break;
              }

              v28 = a2 + 448;
              v27 += 896;
              while (1)
              {
                sub_8CD108(v27 - 448, a2);
                v29 = v27 == a2;
                if (v28 != v23)
                {
                  break;
                }

                v30 = v27 == a2;
                v27 += 448;
                if (v30)
                {
                  goto LABEL_38;
                }
              }
            }

            else
            {
              v27 += 448;
            }

            if (v29)
            {
              a2 = v28;
            }
          }
        }
      }

LABEL_38:
      a5 = -v15 - v25;
      if (v25 + v21 < v43 - (v25 + v21) - v15)
      {
        v31 = v25;
        a8 = v45;
        sub_8D80F8(v46 + v14, v24, a3, a4, v31, v21, a7, v45);
        v32 = a3;
        a2 = v23;
        a3 = v44;
        v9 = v43 - v21;
        a1 = v32;
        if (v43 == v21)
        {
          return;
        }

        continue;
      }

      sub_8D80F8(a3, v23, v44, a4, -v15 - v25, v43 - v21, a7, v45);
      a2 = v24;
      a5 = v25;
      a8 = v45;
      v9 = v21;
      a1 = v42;
      if (v21)
      {
        continue;
      }
    }

    break;
  }
}

__n128 sub_8D85D0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return result;
  }

  v4 = a2;
  v5 = a1;
  *a3 = *a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 8) = *(a1 + 8);
  *(a3 + 24) = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = *(a1 + 112);
  v8 = *(a1 + 80);
  v7 = *(a1 + 96);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v8;
  *(a3 + 96) = v7;
  *(a3 + 112) = v6;
  v9 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v9;
  v10 = *(a1 + 152);
  v11 = *(a1 + 136);
  *(a3 + 120) = *(a1 + 120);
  *(a3 + 136) = v11;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 152) = v10;
  *(a3 + 160) = 0;
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = *(a1 + 176);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 184) = 0;
  *(a3 + 184) = *(a1 + 184);
  *(a3 + 200) = *(a1 + 200);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v13 = *(a1 + 224);
  v12 = *(a1 + 240);
  *(a3 + 208) = *(a1 + 208);
  *(a3 + 224) = v13;
  *(a3 + 240) = v12;
  v14 = *(a1 + 272);
  v15 = *(a1 + 288);
  *(a3 + 256) = *(a1 + 256);
  *(a3 + 272) = v14;
  *(a3 + 304) = 0;
  *(a3 + 312) = 0;
  *(a3 + 288) = v15;
  *(a3 + 296) = 0;
  *(a3 + 296) = *(a1 + 296);
  *(a3 + 304) = *(a1 + 304);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a3 + 320) = *(a1 + 320);
  *(a3 + 336) = 0;
  *(a3 + 344) = 0;
  *(a3 + 328) = 0;
  *(a3 + 328) = *(a1 + 328);
  *(a3 + 336) = *(a1 + 336);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v16 = *(a1 + 352);
  *(a3 + 361) = *(a1 + 361);
  *(a3 + 352) = v16;
  v17 = *(a1 + 380);
  *(a3 + 396) = *(a1 + 396);
  *(a3 + 380) = v17;
  *(a3 + 408) = 0;
  *(a3 + 416) = 0;
  *(a3 + 400) = 0;
  *(a3 + 400) = *(a1 + 400);
  *(a3 + 416) = *(a1 + 416);
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  result = *(a1 + 424);
  *(a3 + 440) = *(a1 + 440);
  *(a3 + 424) = result;
  v60 = 1;
  v19 = a1 + 448;
  if ((a1 + 448) == a2)
  {
    return result;
  }

  v20 = 0;
  v21 = a3;
  do
  {
    while (1)
    {
      v34 = v19;
      v35 = sub_681D54(v19);
      if (v35 == sub_681D54(v21))
      {
        v36 = sub_681D5C(v34);
        v37 = sub_681D5C(v21);
      }

      else
      {
        v36 = sub_681D54(v34);
        v37 = sub_681D54(v21);
      }

      if (v36 > v37)
      {
        break;
      }

      *(v21 + 448) = *v34;
      *(v21 + 456) = 0;
      *(v21 + 464) = 0u;
      *(v21 + 456) = *(v5 + 57);
      *(v21 + 464) = *(v5 + 29);
      *(v5 + 59) = 0;
      *(v5 + 114) = 0u;
      v23 = *(v5 + 33);
      v22 = *(v5 + 34);
      v24 = *(v5 + 32);
      *(v21 + 560) = *(v5 + 70);
      *(v21 + 528) = v23;
      *(v21 + 544) = v22;
      *(v21 + 512) = v24;
      v25 = *(v5 + 31);
      *(v21 + 480) = *(v5 + 30);
      *(v21 + 496) = v25;
      v26 = *(v5 + 142);
      v27 = *(v5 + 146);
      *(v21 + 600) = *(v5 + 75);
      *(v21 + 568) = v26;
      *(v21 + 584) = v27;
      *(v21 + 608) = 0;
      *(v21 + 616) = 0u;
      *(v21 + 608) = *(v5 + 38);
      *(v21 + 624) = *(v5 + 78);
      *(v5 + 78) = 0;
      *(v5 + 38) = 0u;
      *(v21 + 648) = 0;
      *(v21 + 632) = 0u;
      *(v21 + 632) = *(v5 + 79);
      *(v21 + 640) = *(v5 + 40);
      *(v5 + 81) = 0;
      *(v5 + 158) = 0u;
      v28 = *(v5 + 41);
      v29 = *(v5 + 43);
      *(v21 + 672) = *(v5 + 42);
      *(v21 + 688) = v29;
      *(v21 + 656) = v28;
      v30 = *(v5 + 44);
      v31 = *(v5 + 45);
      *(v21 + 736) = *(v5 + 92);
      *(v21 + 704) = v30;
      *(v21 + 720) = v31;
      *(v21 + 752) = 0u;
      *(v21 + 744) = 0;
      *(v21 + 744) = *(v5 + 93);
      *(v21 + 752) = *(v5 + 47);
      *(v5 + 95) = 0;
      *(v5 + 186) = 0u;
      *(v21 + 768) = *(v5 + 768);
      *(v21 + 784) = 0u;
      *(v21 + 776) = 0;
      *(v21 + 776) = *(v5 + 97);
      *(v21 + 784) = *(v5 + 49);
      *(v5 + 99) = 0;
      *(v5 + 194) = 0u;
      v32 = *(v5 + 50);
      *(v21 + 809) = *(v5 + 809);
      *(v21 + 800) = v32;
      v33 = *(v5 + 207);
      *(v21 + 844) = v5[211];
      *(v21 + 828) = v33;
      *(v21 + 848) = 0;
      *(v21 + 856) = 0u;
      *(v21 + 848) = *(v5 + 53);
      *(v21 + 864) = *(v5 + 108);
      *(v5 + 108) = 0;
      *(v5 + 53) = 0u;
      result = *(v5 + 218);
      *(v21 + 888) = v5[222];
      *(v21 + 872) = result;
      ++v60;
      v21 += 448;
      v19 = (v34 + 112);
      v20 += 448;
      v5 = v34;
      if (v34 + 112 == v4)
      {
        return result;
      }
    }

    *(v21 + 448) = *v21;
    *(v21 + 456) = *(v21 + 8);
    *(v21 + 472) = *(v21 + 24);
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v38 = *(v21 + 80);
    *(v21 + 512) = *(v21 + 64);
    *(v21 + 528) = v38;
    *(v21 + 544) = *(v21 + 96);
    *(v21 + 560) = *(v21 + 112);
    v39 = *(v21 + 48);
    *(v21 + 480) = *(v21 + 32);
    *(v21 + 496) = v39;
    v40 = *(v21 + 136);
    *(v21 + 568) = *(v21 + 120);
    *(v21 + 584) = v40;
    *(v21 + 600) = *(v21 + 152);
    *(v21 + 608) = *(v21 + 160);
    *(v21 + 624) = *(v21 + 176);
    *(v21 + 160) = 0;
    *(v21 + 168) = 0;
    *(v21 + 632) = *(v21 + 184);
    *(v21 + 648) = *(v21 + 200);
    *(v21 + 176) = 0;
    *(v21 + 184) = 0;
    *(v21 + 192) = 0;
    *(v21 + 200) = 0;
    v41 = *(v21 + 224);
    *(v21 + 656) = *(v21 + 208);
    *(v21 + 672) = v41;
    v42 = *(v21 + 240);
    v43 = *(v21 + 256);
    v44 = *(v21 + 272);
    v45 = *(v21 + 296);
    *(v21 + 736) = *(v21 + 288);
    *(v21 + 704) = v43;
    *(v21 + 720) = v44;
    *(v21 + 688) = v42;
    *(v21 + 744) = v45;
    *(v21 + 752) = *(v21 + 304);
    *(v21 + 304) = 0;
    *(v21 + 312) = 0;
    *(v21 + 296) = 0;
    *(v21 + 768) = *(v21 + 320);
    *(v21 + 776) = *(v21 + 328);
    v46 = *(v21 + 336);
    v47 = *(v21 + 352);
    *(v21 + 336) = 0;
    *(v21 + 344) = 0;
    *(v21 + 328) = 0;
    *(v21 + 809) = *(v21 + 361);
    *(v21 + 784) = v46;
    *(v21 + 800) = v47;
    v48 = *(v21 + 380);
    *(v21 + 844) = *(v21 + 396);
    *(v21 + 828) = v48;
    *(v21 + 848) = *(v21 + 400);
    *(v21 + 864) = *(v21 + 416);
    *(v21 + 400) = 0;
    *(v21 + 408) = 0;
    *(v21 + 416) = 0;
    v49 = *(v21 + 424);
    *(v21 + 888) = *(v21 + 440);
    *(v21 + 872) = v49;
    v50 = a3;
    ++v60;
    if (v21 == a3)
    {
      goto LABEL_21;
    }

    v51 = v20;
    v50 = v21;
    while (1)
    {
      v52 = sub_681D54(v34);
      if (v52 == sub_681D54(a3 + v51 - 448))
      {
        v53 = sub_681D5C(v34);
        if (v53 <= sub_681D5C(a3 + v51 - 448))
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      v54 = sub_681D54(v34);
      if (v54 <= sub_681D54(a3 + v51 - 448))
      {
        break;
      }

LABEL_16:
      sub_592E78(a3 + v51, a3 + v51 - 448);
      v55 = a3 + v51;
      *(a3 + v51 + 380) = *(a3 + v51 - 68);
      *(a3 + v51 + 396) = *(a3 + v51 - 52);
      v56 = *(a3 + v51 + 400);
      if (v56)
      {
        *(v55 + 408) = v56;
        operator delete(v56);
        *(v55 + 400) = 0;
        *(v55 + 408) = 0;
        *(v55 + 416) = 0;
      }

      v50 -= 448;
      *(v55 + 400) = *(v55 - 48);
      *(v55 + 416) = *(v55 - 32);
      *(v55 - 40) = 0;
      *(v55 - 32) = 0;
      *(v55 - 48) = 0;
      *(v55 + 424) = *(v55 - 24);
      *(v55 + 440) = *(v55 - 8);
      v51 -= 448;
      if (!v51)
      {
        v50 = a3;
        goto LABEL_20;
      }
    }

    v50 = a3 + v51;
LABEL_20:
    v4 = a2;
LABEL_21:
    sub_592E78(v50, v34);
    v57 = v5[211];
    *(v50 + 380) = *(v5 + 207);
    *(v50 + 396) = v57;
    v58 = *(v50 + 400);
    if (v58)
    {
      *(v50 + 408) = v58;
      operator delete(v58);
      *(v50 + 400) = 0;
      *(v50 + 408) = 0;
      *(v50 + 416) = 0;
    }

    *(v50 + 400) = *(v5 + 53);
    *(v50 + 416) = *(v5 + 108);
    *(v5 + 108) = 0;
    *(v5 + 53) = 0u;
    result = *(v5 + 218);
    *(v50 + 440) = v5[222];
    *(v50 + 424) = result;
    v21 += 448;
    v19 = (v34 + 112);
    v20 += 448;
    v5 = v34;
  }

  while (v34 + 112 != v4);
  return result;
}

void sub_8D8C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D8CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

__n128 sub_8D8CB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = 0;
  if (a1 == a2)
  {
LABEL_12:
    while (a3 != a4)
    {
      *a5 = *a3;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      *(a5 + 8) = 0;
      *(a5 + 8) = *(a3 + 8);
      *(a5 + 24) = *(a3 + 24);
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = 0;
      v39 = *(a3 + 80);
      v38 = *(a3 + 96);
      v40 = *(a3 + 64);
      *(a5 + 112) = *(a3 + 112);
      *(a5 + 80) = v39;
      *(a5 + 96) = v38;
      *(a5 + 64) = v40;
      v41 = *(a3 + 48);
      *(a5 + 32) = *(a3 + 32);
      *(a5 + 48) = v41;
      v42 = *(a3 + 120);
      v43 = *(a3 + 152);
      *(a5 + 136) = *(a3 + 136);
      *(a5 + 120) = v42;
      *(a5 + 152) = v43;
      *(a5 + 160) = 0;
      *(a5 + 168) = 0;
      *(a5 + 176) = 0;
      *(a5 + 160) = *(a3 + 160);
      *(a5 + 176) = *(a3 + 176);
      *(a3 + 160) = 0;
      *(a3 + 168) = 0;
      *(a3 + 176) = 0;
      *(a5 + 184) = 0;
      *(a5 + 192) = 0;
      *(a5 + 200) = 0;
      *(a5 + 184) = *(a3 + 184);
      *(a5 + 200) = *(a3 + 200);
      *(a3 + 184) = 0;
      *(a3 + 192) = 0;
      *(a3 + 200) = 0;
      v44 = *(a3 + 208);
      v45 = *(a3 + 240);
      *(a5 + 224) = *(a3 + 224);
      *(a5 + 240) = v45;
      *(a5 + 208) = v44;
      v46 = *(a3 + 272);
      v47 = *(a3 + 288);
      *(a5 + 256) = *(a3 + 256);
      *(a5 + 272) = v46;
      *(a5 + 288) = v47;
      *(a5 + 296) = 0;
      *(a5 + 304) = 0;
      *(a5 + 312) = 0;
      *(a5 + 296) = *(a3 + 296);
      *(a5 + 304) = *(a3 + 304);
      *(a3 + 304) = 0;
      *(a3 + 312) = 0;
      *(a3 + 296) = 0;
      *(a5 + 320) = *(a3 + 320);
      *(a5 + 336) = 0;
      *(a5 + 344) = 0;
      *(a5 + 328) = 0;
      *(a5 + 328) = *(a3 + 328);
      *(a5 + 336) = *(a3 + 336);
      *(a3 + 328) = 0;
      *(a3 + 336) = 0;
      *(a3 + 344) = 0;
      v48 = *(a3 + 352);
      *(a5 + 361) = *(a3 + 361);
      *(a5 + 352) = v48;
      v49 = *(a3 + 380);
      *(a5 + 396) = *(a3 + 396);
      *(a5 + 380) = v49;
      *(a5 + 408) = 0;
      *(a5 + 416) = 0;
      *(a5 + 400) = 0;
      *(a5 + 400) = *(a3 + 400);
      *(a5 + 416) = *(a3 + 416);
      *(a3 + 400) = 0;
      *(a3 + 408) = 0;
      *(a3 + 416) = 0;
      result = *(a3 + 424);
      *(a5 + 440) = *(a3 + 440);
      *(a5 + 424) = result;
      a3 += 448;
      a5 += 448;
    }
  }

  else
  {
    v8 = a1;
    v9 = a5 + 256;
    while (a3 != a4)
    {
      v23 = sub_681D54(a3);
      if (v23 == sub_681D54(v8))
      {
        v24 = sub_681D5C(a3);
        v25 = sub_681D5C(v8);
      }

      else
      {
        v24 = sub_681D54(a3);
        v25 = sub_681D54(v8);
      }

      if (v24 <= v25)
      {
        *(v9 - 256) = *v8;
        *(v9 - 240) = 0;
        *(v9 - 232) = 0;
        *(v9 - 248) = 0;
        *(v9 - 248) = *(v8 + 8);
        *(v9 - 232) = *(v8 + 24);
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        *(v8 + 8) = 0;
        v11 = *(v8 + 80);
        v10 = *(v8 + 96);
        v12 = *(v8 + 64);
        *(v9 - 144) = *(v8 + 112);
        *(v9 - 176) = v11;
        *(v9 - 160) = v10;
        *(v9 - 192) = v12;
        v13 = *(v8 + 48);
        *(v9 - 224) = *(v8 + 32);
        *(v9 - 208) = v13;
        v14 = *(v8 + 120);
        v15 = *(v8 + 152);
        *(v9 - 120) = *(v8 + 136);
        *(v9 - 136) = v14;
        *(v9 - 104) = v15;
        *(v9 - 96) = 0;
        *(v9 - 88) = 0;
        *(v9 - 80) = 0;
        *(v9 - 96) = *(v8 + 160);
        *(v9 - 80) = *(v8 + 176);
        *(v8 + 160) = 0;
        *(v8 + 168) = 0;
        *(v8 + 176) = 0;
        *(v9 - 72) = 0;
        *(v9 - 64) = 0;
        *(v9 - 56) = 0;
        *(v9 - 72) = *(v8 + 184);
        *(v9 - 56) = *(v8 + 200);
        *(v8 + 184) = 0;
        *(v8 + 192) = 0;
        *(v8 + 200) = 0;
        v16 = *(v8 + 208);
        v17 = *(v8 + 240);
        *(v9 - 32) = *(v8 + 224);
        *(v9 - 16) = v17;
        *(v9 - 48) = v16;
        v18 = *(v8 + 272);
        v19 = *(v8 + 288);
        *v9 = *(v8 + 256);
        *(v9 + 16) = v18;
        *(v9 + 32) = v19;
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 56) = 0;
        *(v9 + 40) = *(v8 + 296);
        *(v9 + 48) = *(v8 + 304);
        *(v8 + 304) = 0;
        *(v8 + 312) = 0;
        *(v8 + 296) = 0;
        *(v9 + 64) = *(v8 + 320);
        *(v9 + 80) = 0;
        *(v9 + 88) = 0;
        *(v9 + 72) = 0;
        *(v9 + 72) = *(v8 + 328);
        *(v9 + 80) = *(v8 + 336);
        *(v8 + 328) = 0;
        *(v8 + 336) = 0;
        *(v8 + 344) = 0;
        v20 = *(v8 + 352);
        *(v9 + 105) = *(v8 + 361);
        *(v9 + 96) = v20;
        v21 = *(v8 + 380);
        *(v9 + 140) = *(v8 + 396);
        *(v9 + 124) = v21;
        *(v9 + 152) = 0;
        *(v9 + 160) = 0;
        *(v9 + 144) = 0;
        *(v9 + 144) = *(v8 + 400);
        *(v9 + 160) = *(v8 + 416);
        *(v8 + 400) = 0;
        *(v8 + 408) = 0;
        *(v8 + 416) = 0;
        result = *(v8 + 424);
        *(v9 + 184) = *(v8 + 440);
        *(v9 + 168) = result;
        ++v67;
        v8 += 448;
        v9 += 448;
        if (v8 == a2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        *(v9 - 256) = *a3;
        *(v9 - 240) = 0;
        *(v9 - 232) = 0;
        *(v9 - 248) = 0;
        *(v9 - 248) = *(a3 + 8);
        *(v9 - 232) = *(a3 + 24);
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 8) = 0;
        v27 = *(a3 + 80);
        v26 = *(a3 + 96);
        v28 = *(a3 + 64);
        *(v9 - 144) = *(a3 + 112);
        *(v9 - 176) = v27;
        *(v9 - 160) = v26;
        *(v9 - 192) = v28;
        v29 = *(a3 + 48);
        *(v9 - 224) = *(a3 + 32);
        *(v9 - 208) = v29;
        v30 = *(a3 + 120);
        v31 = *(a3 + 152);
        *(v9 - 120) = *(a3 + 136);
        *(v9 - 136) = v30;
        *(v9 - 104) = v31;
        *(v9 - 96) = 0;
        *(v9 - 88) = 0;
        *(v9 - 80) = 0;
        *(v9 - 96) = *(a3 + 160);
        *(v9 - 80) = *(a3 + 176);
        *(a3 + 160) = 0;
        *(a3 + 168) = 0;
        *(a3 + 176) = 0;
        *(v9 - 72) = 0;
        *(v9 - 64) = 0;
        *(v9 - 56) = 0;
        *(v9 - 72) = *(a3 + 184);
        *(v9 - 56) = *(a3 + 200);
        *(a3 + 184) = 0;
        *(a3 + 192) = 0;
        *(a3 + 200) = 0;
        v32 = *(a3 + 208);
        v33 = *(a3 + 240);
        *(v9 - 32) = *(a3 + 224);
        *(v9 - 16) = v33;
        *(v9 - 48) = v32;
        v34 = *(a3 + 272);
        v35 = *(a3 + 288);
        *v9 = *(a3 + 256);
        *(v9 + 16) = v34;
        *(v9 + 32) = v35;
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 56) = 0;
        *(v9 + 40) = *(a3 + 296);
        *(v9 + 48) = *(a3 + 304);
        *(a3 + 304) = 0;
        *(a3 + 312) = 0;
        *(a3 + 296) = 0;
        *(v9 + 64) = *(a3 + 320);
        *(v9 + 80) = 0;
        *(v9 + 88) = 0;
        *(v9 + 72) = 0;
        *(v9 + 72) = *(a3 + 328);
        *(v9 + 80) = *(a3 + 336);
        *(a3 + 328) = 0;
        *(a3 + 336) = 0;
        *(a3 + 344) = 0;
        v36 = *(a3 + 352);
        *(v9 + 105) = *(a3 + 361);
        *(v9 + 96) = v36;
        v37 = *(a3 + 380);
        *(v9 + 140) = *(a3 + 396);
        *(v9 + 124) = v37;
        *(v9 + 152) = 0;
        *(v9 + 160) = 0;
        *(v9 + 144) = 0;
        *(v9 + 144) = *(a3 + 400);
        *(v9 + 160) = *(a3 + 416);
        *(a3 + 400) = 0;
        *(a3 + 408) = 0;
        *(a3 + 416) = 0;
        result = *(a3 + 424);
        *(v9 + 184) = *(a3 + 440);
        *(v9 + 168) = result;
        ++v67;
        a3 += 448;
        v9 += 448;
        if (v8 == a2)
        {
LABEL_10:
          a5 = v9 - 256;
          goto LABEL_12;
        }
      }
    }

    if (v8 != a2)
    {
      v50 = 0;
      do
      {
        v51 = v9 + v50;
        v52 = (v8 + v50);
        v53 = *(v8 + v50);
        *(v51 - 240) = 0;
        *(v51 - 232) = 0;
        *(v51 - 256) = v53;
        *(v51 - 248) = 0;
        *(v51 - 248) = *(v8 + v50 + 8);
        *(v51 - 232) = *(v8 + v50 + 24);
        v52[2] = 0;
        v52[3] = 0;
        v52[1] = 0;
        v55 = *(v8 + v50 + 80);
        v54 = *(v8 + v50 + 96);
        v56 = *(v8 + v50 + 64);
        *(v51 - 144) = *(v8 + v50 + 112);
        *(v51 - 176) = v55;
        *(v51 - 160) = v54;
        *(v51 - 192) = v56;
        v57 = *(v8 + v50 + 48);
        *(v51 - 224) = *(v8 + v50 + 32);
        *(v51 - 208) = v57;
        v58 = *(v8 + v50 + 120);
        v59 = *(v8 + v50 + 152);
        *(v51 - 120) = *(v8 + v50 + 136);
        *(v51 - 136) = v58;
        *(v51 - 88) = 0;
        *(v51 - 80) = 0;
        *(v51 - 104) = v59;
        *(v51 - 96) = 0;
        *(v51 - 96) = *(v8 + v50 + 160);
        *(v51 - 80) = *(v8 + v50 + 176);
        v52[20] = 0;
        v52[21] = 0;
        v52[22] = 0;
        *(v51 - 72) = 0;
        *(v51 - 64) = 0;
        *(v51 - 56) = 0;
        *(v51 - 72) = *(v8 + v50 + 184);
        *(v51 - 56) = *(v8 + v50 + 200);
        v52[23] = 0;
        v52[24] = 0;
        v52[25] = 0;
        v60 = *(v8 + v50 + 208);
        v61 = *(v8 + v50 + 240);
        *(v51 - 32) = *(v8 + v50 + 224);
        *(v51 - 16) = v61;
        *(v51 - 48) = v60;
        v62 = *(v8 + v50 + 272);
        v63 = *(v8 + v50 + 288);
        *v51 = *(v8 + v50 + 256);
        *(v51 + 16) = v62;
        *(v51 + 32) = v63;
        *(v51 + 40) = 0;
        *(v51 + 48) = 0;
        *(v51 + 56) = 0;
        *(v51 + 40) = *(v8 + v50 + 296);
        *(v51 + 48) = *(v8 + v50 + 304);
        v52[38] = 0;
        v52[39] = 0;
        v52[37] = 0;
        *(v51 + 64) = *(v8 + v50 + 320);
        *(v51 + 80) = 0;
        *(v51 + 88) = 0;
        *(v51 + 72) = 0;
        *(v51 + 72) = *(v8 + v50 + 328);
        *(v51 + 80) = *(v8 + v50 + 336);
        v52[41] = 0;
        v52[42] = 0;
        v64 = *(v8 + v50 + 352);
        v65 = *(v8 + v50 + 361);
        v52[43] = 0;
        *(v51 + 105) = v65;
        *(v51 + 96) = v64;
        v66 = *(v8 + v50 + 380);
        *(v51 + 140) = *(v8 + v50 + 396);
        *(v51 + 124) = v66;
        *(v51 + 152) = 0;
        *(v51 + 160) = 0;
        *(v51 + 144) = 0;
        *(v51 + 144) = *(v8 + v50 + 400);
        *(v51 + 160) = *(v8 + v50 + 416);
        v52[50] = 0;
        v52[51] = 0;
        v52[52] = 0;
        result = *(v8 + v50 + 424);
        *(v51 + 184) = *(v8 + v50 + 440);
        *(v51 + 168) = result;
        v50 += 448;
      }

      while (v52 + 56 != a2);
    }
  }

  return result;
}

void sub_8D9354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D9368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = 0;
  if (a5 <= a6)
  {
    v25 = a7;
    if (a1 != a2)
    {
      v26 = 0;
      v25 = a7;
      v27 = a1;
      do
      {
        *v25 = *v27;
        *(v25 + 16) = 0;
        *(v25 + 24) = 0;
        *(v25 + 8) = 0;
        *(v25 + 8) = *(v27 + 8);
        *(v25 + 24) = *(v27 + 24);
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        *(v27 + 8) = 0;
        v29 = *(v27 + 80);
        v28 = *(v27 + 96);
        v30 = *(v27 + 64);
        *(v25 + 112) = *(v27 + 112);
        *(v25 + 80) = v29;
        *(v25 + 96) = v28;
        *(v25 + 64) = v30;
        v31 = *(v27 + 48);
        *(v25 + 32) = *(v27 + 32);
        *(v25 + 48) = v31;
        v32 = *(v27 + 120);
        v33 = *(v27 + 152);
        *(v25 + 136) = *(v27 + 136);
        *(v25 + 120) = v32;
        *(v25 + 152) = v33;
        *(v25 + 160) = 0;
        *(v25 + 168) = 0;
        *(v25 + 176) = 0;
        *(v25 + 160) = *(v27 + 160);
        *(v25 + 176) = *(v27 + 176);
        *(v27 + 160) = 0;
        *(v27 + 168) = 0;
        *(v27 + 176) = 0;
        *(v25 + 184) = 0;
        *(v25 + 192) = 0;
        *(v25 + 200) = 0;
        *(v25 + 184) = *(v27 + 184);
        *(v25 + 200) = *(v27 + 200);
        *(v27 + 184) = 0;
        *(v27 + 192) = 0;
        *(v27 + 200) = 0;
        v34 = *(v27 + 208);
        v35 = *(v27 + 240);
        *(v25 + 224) = *(v27 + 224);
        *(v25 + 240) = v35;
        *(v25 + 208) = v34;
        v36 = *(v27 + 272);
        v37 = *(v27 + 288);
        *(v25 + 256) = *(v27 + 256);
        *(v25 + 272) = v36;
        *(v25 + 288) = v37;
        *(v25 + 296) = 0;
        *(v25 + 304) = 0;
        *(v25 + 312) = 0;
        *(v25 + 296) = *(v27 + 296);
        *(v25 + 304) = *(v27 + 304);
        *(v27 + 304) = 0;
        *(v27 + 312) = 0;
        *(v27 + 296) = 0;
        *(v25 + 320) = *(v27 + 320);
        *(v25 + 336) = 0;
        *(v25 + 344) = 0;
        *(v25 + 328) = 0;
        *(v25 + 328) = *(v27 + 328);
        *(v25 + 336) = *(v27 + 336);
        *(v27 + 328) = 0;
        *(v27 + 336) = 0;
        *(v27 + 344) = 0;
        v38 = *(v27 + 352);
        *(v25 + 361) = *(v27 + 361);
        *(v25 + 352) = v38;
        v39 = *(v27 + 380);
        *(v25 + 396) = *(v27 + 396);
        *(v25 + 380) = v39;
        *(v25 + 408) = 0;
        *(v25 + 416) = 0;
        *(v25 + 400) = 0;
        *(v25 + 400) = *(v27 + 400);
        *(v25 + 416) = *(v27 + 416);
        *(v27 + 400) = 0;
        *(v27 + 408) = 0;
        *(v27 + 416) = 0;
        v40 = *(v27 + 424);
        *(v25 + 440) = *(v27 + 440);
        *(v25 + 424) = v40;
        ++v26;
        v25 += 448;
        v27 += 448;
      }

      while (v27 != a2);
      v45 = v26;
    }

    sub_8CE5AC(a7, v25, a2, a3, a1);
  }

  else
  {
    v9 = a7;
    if (a2 != a3)
    {
      v10 = 0;
      v9 = a7;
      v11 = a2;
      do
      {
        *v9 = *v11;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 8) = 0;
        *(v9 + 8) = *(v11 + 8);
        *(v9 + 24) = *(v11 + 24);
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
        *(v11 + 8) = 0;
        v13 = *(v11 + 80);
        v12 = *(v11 + 96);
        v14 = *(v11 + 64);
        *(v9 + 112) = *(v11 + 112);
        *(v9 + 80) = v13;
        *(v9 + 96) = v12;
        *(v9 + 64) = v14;
        v15 = *(v11 + 48);
        *(v9 + 32) = *(v11 + 32);
        *(v9 + 48) = v15;
        v16 = *(v11 + 120);
        v17 = *(v11 + 152);
        *(v9 + 136) = *(v11 + 136);
        *(v9 + 120) = v16;
        *(v9 + 152) = v17;
        *(v9 + 160) = 0;
        *(v9 + 168) = 0;
        *(v9 + 176) = 0;
        *(v9 + 160) = *(v11 + 160);
        *(v9 + 176) = *(v11 + 176);
        *(v11 + 160) = 0;
        *(v11 + 168) = 0;
        *(v11 + 176) = 0;
        *(v9 + 184) = 0;
        *(v9 + 192) = 0;
        *(v9 + 200) = 0;
        *(v9 + 184) = *(v11 + 184);
        *(v9 + 200) = *(v11 + 200);
        *(v11 + 184) = 0;
        *(v11 + 192) = 0;
        *(v11 + 200) = 0;
        v18 = *(v11 + 208);
        v19 = *(v11 + 240);
        *(v9 + 224) = *(v11 + 224);
        *(v9 + 240) = v19;
        *(v9 + 208) = v18;
        v20 = *(v11 + 272);
        v21 = *(v11 + 288);
        *(v9 + 256) = *(v11 + 256);
        *(v9 + 272) = v20;
        *(v9 + 288) = v21;
        *(v9 + 296) = 0;
        *(v9 + 304) = 0;
        *(v9 + 312) = 0;
        *(v9 + 296) = *(v11 + 296);
        *(v9 + 304) = *(v11 + 304);
        *(v11 + 304) = 0;
        *(v11 + 312) = 0;
        *(v11 + 296) = 0;
        *(v9 + 320) = *(v11 + 320);
        *(v9 + 336) = 0;
        *(v9 + 344) = 0;
        *(v9 + 328) = 0;
        *(v9 + 328) = *(v11 + 328);
        *(v9 + 336) = *(v11 + 336);
        *(v11 + 328) = 0;
        *(v11 + 336) = 0;
        *(v11 + 344) = 0;
        v22 = *(v11 + 352);
        *(v9 + 361) = *(v11 + 361);
        *(v9 + 352) = v22;
        v23 = *(v11 + 380);
        *(v9 + 396) = *(v11 + 396);
        *(v9 + 380) = v23;
        *(v9 + 408) = 0;
        *(v9 + 416) = 0;
        *(v9 + 400) = 0;
        *(v9 + 400) = *(v11 + 400);
        *(v9 + 416) = *(v11 + 416);
        *(v11 + 400) = 0;
        *(v11 + 408) = 0;
        *(v11 + 416) = 0;
        v24 = *(v11 + 424);
        *(v9 + 440) = *(v11 + 440);
        *(v9 + 424) = v24;
        ++v10;
        v9 += 448;
        v11 += 448;
      }

      while (v11 != a3);
      v45 = v10;
    }

    sub_8CE7D8(v9, v9, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  v41 = a7;
  if (a7 && v45)
  {
    for (i = 0; i < v45; ++i)
    {
      v43 = v41[50];
      if (v43)
      {
        v41[51] = v43;
        operator delete(v43);
      }

      sub_55D550(v41);
      v41 += 56;
    }
  }
}

void sub_8D9768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D9790()
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
  xmmword_27B0228 = 0u;
  unk_27B0238 = 0u;
  dword_27B0248 = 1065353216;
  sub_3A9A34(&xmmword_27B0228, v0);
  sub_3A9A34(&xmmword_27B0228, v3);
  sub_3A9A34(&xmmword_27B0228, v5);
  sub_3A9A34(&xmmword_27B0228, __p);
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

void sub_8DC9C4(_Unwind_Exception *a1)
{
  if (qword_27B0210)
  {
    qword_27B0218 = qword_27B0210;
    operator delete(qword_27B0210);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_8DCC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v9 = sub_83FA44(a1, a2, a3, a4, a5, a6);
  sub_6BF4F8(v9 + 2512, a4, a5);
  *a1 = off_266CF18;
  *(a1 + 2512) = off_266CFE0;
  *(a1 + 3312) = 0;
  *(a1 + 3328) = 0;
  *(a1 + 3320) = 0;
  *(a1 + 3336) = 0;
  *(a1 + 3304) = 0;
  *(a1 + 3272) = 0u;
  *(a1 + 3288) = 0u;
  *(a1 + 3344) = 2;
  *(a1 + 3352) = 0;
  *(a1 + 3368) = 0;
  *(a1 + 3360) = 0;
  v10 = *(a4 + 1104);
  v11 = sub_69B1D4(a4);
  if (a1 + 3272 != v11)
  {
    v12 = *(v11 + 23);
    if (*(a1 + 3295) < 0)
    {
      if (v12 >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = *v11;
      }

      if (v12 >= 0)
      {
        v15 = *(v11 + 23);
      }

      else
      {
        v15 = *(v11 + 8);
      }

      sub_13B38(a1 + 3272, v14, v15);
    }

    else if ((*(v11 + 23) & 0x80) != 0)
    {
      sub_13A68((a1 + 3272), *v11, *(v11 + 8));
    }

    else
    {
      v13 = *v11;
      *(a1 + 3288) = *(v11 + 16);
      *(a1 + 3272) = v13;
    }
  }

  v16 = v10 + 2616 * a5;
  v17 = sub_684314(v16 + 2064);
  *(a1 + 3296) = v17;
  if (v17)
  {
    v18 = sub_683A0C(v16 + 2088);
    v19 = *(a1 + 3296);
    *(a1 + 3297) = v18;
    if ((v19 & 1) != 0 && *(v16 + 2273) == 1 && sub_445A90(v16 + 2088))
    {
      v20 = *(v16 + 2088) ^ 1;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    *(a1 + 3297) = 0;
  }

  *(a1 + 3298) = v20 & 1;
  v21 = *(v16 + 784);
  *(a1 + 3305) = (v21 | *(v16 + 376)) & 1;
  v22 = *(v16 + 704);
  v23 = v22 == 1 && *(v16 + 624) == -1;
  *(a1 + 3299) = v23;
  v24 = *(v16 + 705);
  *(a1 + 3300) = (*(v16 + 712) != *(v16 + 720)) | v24 & 1;
  *(a1 + 3301) = v22;
  *(a1 + 3302) = v24;
  *(a1 + 3303) = v21;
  *(a1 + 3304) = 1;
  v26 = *(v16 + 176);
  v25 = *(v16 + 184);
  if (v26 != v25)
  {
    if (v25 - v26 >= 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (a1 + 3352 != v16 + 2032)
  {
    sub_5FC968((a1 + 3352), *(v16 + 2032), *(v16 + 2040), 0xF0F0F0F0F0F0F0F1 * ((*(v16 + 2040) - *(v16 + 2032)) >> 4));
  }

  return a1;
}

void sub_8DCF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_50E554(v12);
  v15 = *v13;
  if (*v13)
  {
    *(v10 + 3320) = v15;
    operator delete(v15);
  }

  if (*(v10 + 3295) < 0)
  {
    operator delete(*v11);
  }

  sub_8DCF94(a10);
  sub_593A90(v10);
  _Unwind_Resume(a1);
}

void *sub_8DCF94(void *a1)
{
  *a1 = off_266C1F0;
  sub_5C3168((a1 + 49));
  sub_5C3168((a1 + 4));
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5C3168(v3 - 360);
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

std::string *sub_8DD024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  v3 = *(a1 + 1928);
  switch(v3)
  {
    case 'T':
      sub_842BD8(a1, a2);
      return sub_67EAA4(a2, "_List");
    case 'S':
      sub_842B8C(a1, a2);
      return sub_67EAA4(a2, "_List");
    case 'R':
      sub_842B40(a1, a2);
      return sub_67EAA4(a2, "_List");
  }

  return sub_67E35C(a2, "Distance_Title_List");
}

void sub_8DD0D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  if (sub_84C9B4(a1))
  {
    HIBYTE(v10) = 12;
    strcpy(&__p, "Address_Sign");
    sub_67E35C(a2, &__p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }

    sub_67ECF8(a2, "{Address}", (a1 + 3272));
    return;
  }

  if (a1 + 8 != a2)
  {
    sub_74300(a2, *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
    *(a2 + 56) = *(a1 + 64);
    sub_5FA69C(a2 + 24, *(a1 + 48), 0);
  }

  *(a2 + 64) = *(a1 + 72);
  sub_67F320(a2, &__p);
  v4 = SHIBYTE(v10);
  if ((SHIBYTE(v10) & 0x8000000000000000) != 0)
  {
    v4 = *(&__p + 1);
    v5 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v5 - *(&__p + 1)) < 5)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFuLL) < *(&__p + 1) + 5 - v5)
      {
        sub_3244();
      }

LABEL_12:
      operator new();
    }

    p_p = __p;
  }

  else
  {
    if ((SHIBYTE(v10) - 18) < 5)
    {
      goto LABEL_12;
    }

    p_p = &__p;
  }

  v7 = p_p + v4;
  v7[4] = 116;
  *v7 = 1936280671;
  v8 = v4 + 5;
  if (SHIBYTE(v10) < 0)
  {
    *(&__p + 1) = v4 + 5;
  }

  else
  {
    HIBYTE(v10) = v8 & 0x7F;
  }

  *(p_p + v8) = 0;
  sub_67E35C(a2, &__p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

void sub_8DD3B0(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 24))(&v41);
  v27 = 0;
  v28 = 0;
  sub_680484(v29, &v41, 1, &v27);
  v4 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (a1[3299])
    {
      goto LABEL_4;
    }
  }

  else if (a1[3299])
  {
LABEL_4:
    v5 = 1;
    goto LABEL_7;
  }

  v5 = a1[3300];
LABEL_7:
  sub_8492FC(a1, v29, 0, v5 & 1);
  if (v5)
  {
    operator new();
  }

  *a2 = *v29;
  v29[0] = 0;
  v29[1] = 0;
  v7 = v30;
  v6 = __p;
  v8 = v32;
  v9 = v33;
  __p = 0;
  v32 = 0;
  v30 = 0;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = v34;
  *(a2 + 48) = v34;
  *(a2 + 56) = v35;
  if (v10)
  {
    v11 = v9[1];
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v11 >= v8)
      {
        v11 %= v8;
      }
    }

    else
    {
      v11 &= v8 - 1;
    }

    v6[v11] = a2 + 40;
    v33 = 0;
    v34 = 0;
  }

  *(a2 + 64) = v36;
  *(a2 + 72) = v37;
  *(a2 + 80) = v38;
  v38 = 0uLL;
  *(a2 + 96) = v39;
  *(a2 + 98) = v40;
  v12 = *(&v38 + 1);
  if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v33;
  if (v33)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v29[0];
  if (v29[0])
  {
    v17 = v29[1];
    v18 = v29[0];
    if (v29[1] != v29[0])
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v29[0];
    }

    v29[1] = v16;
    operator delete(v18);
  }

  v20 = v44;
  if (v44)
  {
    do
    {
      v21 = *v20;
      sub_55F7FC((v20 + 2));
      operator delete(v20);
      v20 = v21;
    }

    while (v21);
  }

  v22 = v43;
  v43 = 0;
  if (v22)
  {
    operator delete(v22);
  }

  v23 = v41;
  if (v41)
  {
    v24 = v42;
    v25 = v41;
    if (v42 != v41)
    {
      do
      {
        v26 = *(v24 - 1);
        v24 -= 3;
        if (v26 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v23);
      v25 = v41;
    }

    v42 = v23;
    operator delete(v25);
  }
}

void sub_8DD770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  sub_1F1A8(&a9);
  sub_662AC8(&a13);
  sub_53A58C((v13 - 120));
  _Unwind_Resume(a1);
}

void sub_8DD794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  std::__shared_weak_count::~__shared_weak_count(v13);
  operator delete(v16);
  sub_662AC8(&a13);
  sub_53A58C((v14 - 120));
  _Unwind_Resume(a1);
}

void sub_8DD7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_662AC8(va);
  sub_53A58C((v5 - 120));
  _Unwind_Resume(a1);
}

void sub_8DD7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  sub_53A58C((v3 - 120));
  _Unwind_Resume(a1);
}

void sub_8DD7F8(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (*(a1 + 3301))
  {
    v7 = "Dismount";
LABEL_3:
    v27 = *v7;
    v28 = *(v7 + 2);
    goto LABEL_9;
  }

  if (*(a1 + 3302))
  {
    v7 = "Remount";
  }

  else
  {
    v7 = "Mount";
  }

  if ((v7[23] & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  sub_325C(&v27, *v7, *(v7 + 1));
LABEL_9:
  if (v28 >= 0)
  {
    v8 = HIBYTE(v28);
  }

  else
  {
    v8 = *(&v27 + 1);
  }

  if (v8 + 5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v8 + 5 >= 0x17)
  {
    operator new();
  }

  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  HIBYTE(v26) = v8 + 5;
  if (v8)
  {
    if (v28 >= 0)
    {
      v9 = &v27;
    }

    else
    {
      v9 = v27;
    }

    memmove(v25, v9, v8);
  }

  strcpy(v25 + v8, "_List");
  sub_67E494(&v21, v25);
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_680484(a4, &v21, a3, &v19);
  v11 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v24;
  if (v24)
  {
    do
    {
      v13 = *v12;
      sub_55F7FC((v12 + 2));
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = __p;
  __p = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = v21;
  if (v21)
  {
    v16 = v22;
    v17 = v21;
    if (v22 != v21)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v21;
    }

    v22 = v15;
    operator delete(v17);
  }

  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v27);
    return;
  }

  operator delete(v25[0]);
  if (SHIBYTE(v28) < 0)
  {
    goto LABEL_41;
  }
}

void sub_8DDA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_1F1A8(&a9);
  sub_53A58C(&a11);
  if (a25 < 0)
  {
    operator delete(__p);
    if ((*(v25 - 73) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v25 - 73) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v25 - 96));
  _Unwind_Resume(a1);
}

void sub_8DDAE4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 3352);
  v3 = *(a1 + 3360);
  if (v2 == v3)
  {
    return;
  }

  v29 = (a1 + 152);
  do
  {
    v37 = 0;
    *v35 = 0u;
    v36 = 0u;
    *__p = 0u;
    v38 = 1065353216;
    v39 = 1;
    v7 = *(v2 + 240);
    if (v7 > 92)
    {
      switch(v7)
      {
        case ']':
          sub_84295C(a1, __p, v2);
          goto LABEL_46;
        case '^':
          sub_8429B8(a1, __p, v2);
          goto LABEL_46;
          sub_842A14(a1, __p, v2);
          goto LABEL_46;
      }
    }

    else
    {
      switch(v7)
      {
        case 22:
          sub_842848(a1, __p, v2);
          goto LABEL_46;
        case 24:
          sub_8428A4(a1, __p, v2);
          goto LABEL_46;
        case 91:
          sub_842900(a1, __p, v2);
          goto LABEL_46;
      }
    }

    if (*(a1 + 1928) == 3 && *(v2 + 152) == -1 && *(v2 + 160) == -1 && *(v2 + 168) == -1 && *(v2 + 176) == -1 && *(v2 + 184) == -1 && *(v2 + 200) == -1 && *(a1 + 1944) == -1 && *(a1 + 1952) == -1 && *(a1 + 1960) == -1 && *(a1 + 1968) == -1 && *(a1 + 1976) == -1 && *(a1 + 1992) == -1)
    {
      v8 = *(v2 + 23);
      if (v8 >= 0)
      {
        v9 = *(v2 + 23);
      }

      else
      {
        v9 = *(v2 + 8);
      }

      v10 = *(a1 + 175);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a1 + 160);
      }

      if (v9 == v10)
      {
        v12 = v8 >= 0 ? v2 : *v2;
        v13 = v11 >= 0 ? v29 : *v29;
        if (!memcmp(v12, v13, v9))
        {
          v28 = a2[1];
          if (v28 >= a2[2])
          {
            a2[1] = sub_915194(a2);
          }

          else
          {
            *(v28 + 64) = 0u;
            *(v28 + 80) = 0u;
            *(v28 + 88) = 0;
            *(v28 + 96) = 0;
            *(v28 + 32) = 0u;
            *(v28 + 48) = 0u;
            *v28 = 0u;
            *(v28 + 16) = 0u;
            *(v28 + 56) = 1065353216;
            *(v28 + 64) = 1;
            *(v28 + 80) = 0;
            *(v28 + 95) = 0;
            a2[1] = v28 + 104;
          }

          goto LABEL_65;
        }
      }
    }

    sub_67E35C(__p, "Walking_Continue");
    sub_84BC2C(a1, __p, v2, (v2 + 152));
    sub_84C13C(a1, __p, v2 + 152);
LABEL_46:
    sub_67F320(__p, &v31);
    v14 = SHIBYTE(v33);
    if ((SHIBYTE(v33) & 0x8000000000000000) != 0)
    {
      v14 = v32;
      v15 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if ((v15 - v32) < 5)
      {
        if (0x7FFFFFFFFFFFFFF7 - (v33 & 0x7FFFFFFFFFFFFFFFuLL) < v32 + 5 - v15)
        {
          sub_3244();
        }

LABEL_51:
        operator new();
      }

      v16 = v31;
    }

    else
    {
      if ((SHIBYTE(v33) - 18) < 5)
      {
        goto LABEL_51;
      }

      v16 = &v31;
    }

    v17 = &v16[v14];
    v17[4] = 110;
    *v17 = 1734955871;
    v18 = v14 + 5;
    if (SHIBYTE(v33) < 0)
    {
      v32 = v14 + 5;
    }

    else
    {
      HIBYTE(v33) = v18 & 0x7F;
    }

    v16[v18] = 0;
    sub_67E35C(__p, &v31);
    v30 = 1;
    v19 = a2[1];
    if (v19 >= a2[2])
    {
      v21 = sub_86958C(a2, __p, &v30);
    }

    else
    {
      v40 = 0;
      v41 = 0;
      sub_680484(v19, __p, 1, &v40);
      v20 = v41;
      if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      v21 = v19 + 104;
    }

    a2[1] = v21;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v31);
    }

LABEL_65:
    v22 = *(&v36 + 1);
    if (*(&v36 + 1))
    {
      while (1)
      {
        v23 = *v22;
        if (*(v22 + 191) < 0)
        {
          operator delete(v22[21]);
          if (*(v22 + 159) < 0)
          {
            goto LABEL_76;
          }

LABEL_71:
          if ((*(v22 + 135) & 0x80000000) == 0)
          {
            goto LABEL_72;
          }

LABEL_77:
          operator delete(v22[14]);
          if (*(v22 + 95) < 0)
          {
            goto LABEL_78;
          }

LABEL_73:
          if ((*(v22 + 63) & 0x80000000) == 0)
          {
            goto LABEL_79;
          }

LABEL_67:
          operator delete(v22[5]);
          if (*(v22 + 39) < 0)
          {
            goto LABEL_80;
          }

LABEL_68:
          operator delete(v22);
          v22 = v23;
          if (!v23)
          {
            break;
          }
        }

        else
        {
          if ((*(v22 + 159) & 0x80000000) == 0)
          {
            goto LABEL_71;
          }

LABEL_76:
          operator delete(v22[17]);
          if (*(v22 + 135) < 0)
          {
            goto LABEL_77;
          }

LABEL_72:
          if ((*(v22 + 95) & 0x80000000) == 0)
          {
            goto LABEL_73;
          }

LABEL_78:
          operator delete(v22[9]);
          if (*(v22 + 63) < 0)
          {
            goto LABEL_67;
          }

LABEL_79:
          if ((*(v22 + 39) & 0x80000000) == 0)
          {
            goto LABEL_68;
          }

LABEL_80:
          operator delete(v22[2]);
          operator delete(v22);
          v22 = v23;
          if (!v23)
          {
            break;
          }
        }
      }
    }

    v24 = v35[1];
    v35[1] = 0;
    if (v24)
    {
      operator delete(v24);
    }

    v25 = __p[0];
    if (__p[0])
    {
      v26 = __p[1];
      v6 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v27 = *(v26 - 1);
          v26 -= 3;
          if (v27 < 0)
          {
            operator delete(*v26);
          }
        }

        while (v26 != v25);
        v6 = __p[0];
      }

      __p[1] = v25;
      operator delete(v6);
    }

    v2 += 272;
  }

  while (v2 != v3);
}

void sub_8DE0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void **a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(&a18);
  sub_681738(v18);
  _Unwind_Resume(a1);
}

void sub_8DE144(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1928);
  if ((v3 - 25) <= 0x3F && ((1 << (v3 - 25)) & 0x9000000000000001) != 0 || v3 == 17)
  {
    sub_8DE370(a1, &v22);
    *__p = 0u;
    *v20 = 0u;
    v21 = 1065353216;
    sub_5F0850(a2, &v22);
    *(a2 + 72) = v26;
    v6 = v28;
    *(a2 + 80) = v27;
    *(a2 + 88) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a2 + 96) = v29;
    *(a2 + 98) = v30;
    sub_8A4A64(a2 + 104, __p);
    v7 = v20[0];
    if (v20[0])
    {
      do
      {
        v16 = *v7;
        v17 = *(v7 + 6);
        if (v17)
        {
          *(v7 + 7) = v17;
          operator delete(v17);
        }

        if (v7[39] < 0)
        {
          operator delete(*(v7 + 2));
        }

        operator delete(v7);
        v7 = v16;
      }

      while (v16);
    }

    v8 = __p[0];
    __p[0] = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = v28;
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = v25;
    if (v25)
    {
      do
      {
        v11 = *v10;
        sub_55F7FC((v10 + 2));
        operator delete(v10);
        v10 = v11;
      }

      while (v11);
    }

    v12 = v24;
    v24 = 0;
    if (v12)
    {
      operator delete(v12);
    }

    v13 = v22;
    if (v22)
    {
      v14 = v23;
      v15 = v22;
      if (v23 != v22)
      {
        do
        {
          v18 = *(v14 - 1);
          v14 -= 3;
          if (v18 < 0)
          {
            operator delete(*v14);
          }
        }

        while (v14 != v13);
        v15 = v22;
      }

      v23 = v13;
      operator delete(v15);
    }
  }

  else
  {

    sub_8DE498(a1, a2);
  }
}

void sub_8DE330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_662AC8(v14);
  sub_5ED80C(&a9);
  sub_662AC8(&a14);
  _Unwind_Resume(a1);
}

void sub_8DE354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_5ED80C(&a9);
  sub_662AC8(&a14);
  _Unwind_Resume(a1);
}

void sub_8DE370(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8DEDE8(a1, &v13);
  v11 = 0;
  v12 = 0;
  sub_680484(a2, &v13, 1, &v11);
  v3 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v16;
  if (v16)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v13;
  if (v13)
  {
    v8 = v14;
    v9 = v13;
    if (v14 != v13)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v13;
    }

    v14 = v7;
    operator delete(v9);
  }
}

void sub_8DE47C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_8DE498(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  v76 = 1065353216;
  v77 = 1;
  *v69 = 0u;
  *v70 = 0u;
  v71 = 1065353216;
  sub_64AEF4(__p, *(a1 + 1928), a1 + 3312);
  sub_915CF8(v69, "{ManeuverIcon}");
  if (__p[1])
  {
    v55 = __p[1];
    operator delete(__p[1]);
  }

  if (sub_843C88(a1))
  {
    v4 = sub_84CA7C(a1);
    v5 = v4[23];
    if (v5 < 0)
    {
      if (*(v4 + 1))
      {
        goto LABEL_6;
      }
    }

    else if (v4[23])
    {
LABEL_6:
      if (v5 >= 0)
      {
        v6 = v4[23];
      }

      else
      {
        v6 = *(v4 + 1);
      }

      if (v6 + 5 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v6 + 5 >= 0x17)
      {
        operator new();
      }

      __p[1] = 0;
      v55 = 0;
      __p[0] = 0;
      HIBYTE(v55) = v6 + 5;
      if (v6)
      {
        if (v4[23] >= 0)
        {
          v12 = v4;
        }

        else
        {
          v12 = *v4;
        }

        memmove(__p, v12, v6);
      }

      strcpy(__p + v6, "_Sign");
      sub_67E35C(&v72, __p);
LABEL_80:
      if (SHIBYTE(v55) < 0)
      {
        v25 = __p[0];
LABEL_82:
        operator delete(v25);
        goto LABEL_83;
      }

      goto LABEL_83;
    }

    sub_67E35C(&v72, qword_27B1198);
    goto LABEL_83;
  }

  if (sub_734C10(a1 + 152))
  {
    if (sub_8DF0D4(a1))
    {
      sub_842084(a1, &v72, 1u);
      sub_67F320(&v72, __p);
      v7 = SHIBYTE(v55);
      if ((SHIBYTE(v55) & 0x8000000000000000) != 0)
      {
        v7 = __p[1];
        v27 = (v55 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v27 - __p[1] < 5)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v55 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v27 + 5)
          {
            sub_3244();
          }

LABEL_69:
          operator new();
        }

        v28 = __p[0];
      }

      else
      {
        if ((SHIBYTE(v55) - 18) < 5)
        {
          goto LABEL_69;
        }

        v28 = __p;
      }

      v29 = v7 + v28;
      v29[4] = 110;
      *v29 = 1734955871;
      v30 = v7 + 5;
      if (SHIBYTE(v55) < 0)
      {
        __p[1] = v7 + 5;
      }

      else
      {
        HIBYTE(v55) = v30 & 0x7F;
      }

      v30[v28] = 0;
      sub_67E35C(&v72, __p);
      goto LABEL_80;
    }

    v55 = 0x900000000000000;
    __p[0] = 0x6769535F64616F52;
    __p[1] = &stru_68 + 6;
    sub_67E35C(&v72, __p);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p[0]);
    }

    v13 = nullsub_1(a1 + 152);
    sub_734C34(__p, v13);
    sub_67F2AC(&v72, "{Road}", __p, 0);
    if (v68 < 0)
    {
      operator delete(v67);
      if ((v66 & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v64) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_72;
      }
    }

    else if ((v66 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    operator delete(v65);
    if ((SHIBYTE(v64) & 0x80000000) == 0)
    {
LABEL_36:
      if ((SHIBYTE(v59) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }

LABEL_73:
      operator delete(v57);
      goto LABEL_80;
    }

LABEL_72:
    operator delete(v62);
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_73;
  }

  (*(*a1 + 24))(__p, a1);
  v8 = v72;
  if (v72)
  {
    v9 = *(&v72 + 1);
    v10 = v72;
    if (*(&v72 + 1) != v72)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v72;
    }

    *(&v72 + 1) = v8;
    operator delete(v10);
  }

  v72 = *__p;
  *&v73 = v55;
  __p[1] = 0;
  v55 = 0;
  __p[0] = 0;
  if (v75)
  {
    v14 = *(&v74 + 1);
    if (*(&v74 + 1))
    {
      do
      {
        v15 = *v14;
        sub_55F7FC((v14 + 2));
        operator delete(v14);
        v14 = v15;
      }

      while (v15);
    }

    *(&v74 + 1) = 0;
    if (v74)
    {
      bzero(*(&v73 + 1), 8 * v74);
    }

    v75 = 0;
  }

  v16 = v56;
  v56 = 0;
  v17 = *(&v73 + 1);
  *(&v73 + 1) = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = v57;
  v19 = v58;
  v57 = 0;
  *(&v74 + 1) = v58;
  v75 = v59;
  v76 = v60;
  *&v74 = v18;
  if (v59)
  {
    v20 = v58[1];
    if ((v18 & (v18 - 1)) != 0)
    {
      if (v20 >= v18)
      {
        v20 %= v18;
      }
    }

    else
    {
      v20 &= v18 - 1;
    }

    *(*(&v73 + 1) + 8 * v20) = &v74 + 8;
    v58 = 0;
    v59 = 0;
    v77 = v61;
  }

  else
  {
    v77 = v61;
    if (v58)
    {
      do
      {
        v21 = *v19;
        sub_55F7FC((v19 + 2));
        operator delete(v19);
        v19 = v21;
      }

      while (v21);
    }
  }

  v22 = v56;
  v56 = 0;
  if (v22)
  {
    operator delete(v22);
  }

  v23 = __p[0];
  if (__p[0])
  {
    v24 = __p[1];
    v25 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v26 = *(v24 - 1);
        v24 -= 3;
        if (v26 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v23);
      v25 = __p[0];
    }

    __p[1] = v23;
    goto LABEL_82;
  }

LABEL_83:
  v52 = 0;
  v53 = 0;
  sub_680484(__p, &v72, 16, &v52);
  v31 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  sub_5F0850(a2, __p);
  *(a2 + 72) = v62;
  v32 = v64;
  *(a2 + 80) = v63;
  *(a2 + 88) = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a2 + 96) = v65;
  *(a2 + 98) = BYTE2(v65);
  sub_8A4A64(a2 + 104, v69);
  v33 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = v58;
  if (v58)
  {
    do
    {
      v35 = *v34;
      sub_55F7FC((v34 + 2));
      operator delete(v34);
      v34 = v35;
    }

    while (v35);
  }

  v36 = v56;
  v56 = 0;
  if (v36)
  {
    operator delete(v36);
  }

  v37 = __p[0];
  if (__p[0])
  {
    v38 = __p[1];
    v39 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v40 = *(v38 - 1);
        v38 -= 3;
        if (v40 < 0)
        {
          operator delete(*v38);
        }
      }

      while (v38 != v37);
      v39 = __p[0];
    }

    __p[1] = v37;
    operator delete(v39);
  }

  v41 = v70[0];
  if (v70[0])
  {
    do
    {
      v49 = *v41;
      v50 = *(v41 + 6);
      if (v50)
      {
        *(v41 + 7) = v50;
        operator delete(v50);
      }

      if (v41[39] < 0)
      {
        operator delete(*(v41 + 2));
      }

      operator delete(v41);
      v41 = v49;
    }

    while (v49);
  }

  v42 = v69[0];
  v69[0] = 0;
  if (v42)
  {
    operator delete(v42);
  }

  v43 = *(&v74 + 1);
  if (*(&v74 + 1))
  {
    do
    {
      v44 = *v43;
      sub_55F7FC((v43 + 2));
      operator delete(v43);
      v43 = v44;
    }

    while (v44);
  }

  v45 = *(&v73 + 1);
  *(&v73 + 1) = 0;
  if (v45)
  {
    operator delete(v45);
  }

  v46 = v72;
  if (v72)
  {
    v47 = *(&v72 + 1);
    v48 = v72;
    if (*(&v72 + 1) != v72)
    {
      do
      {
        v51 = *(v47 - 1);
        v47 -= 3;
        if (v51 < 0)
        {
          operator delete(*v47);
        }
      }

      while (v47 != v46);
      v48 = v72;
    }

    *(&v72 + 1) = v46;
    operator delete(v48);
  }
}

void sub_8DECD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_3E5388(&a11);
  sub_5ED80C(&a31);
  sub_53A58C((v31 - 144));
  _Unwind_Resume(a1);
}

void sub_8DECF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_5ED80C(&a34);
  sub_53A58C((v34 - 144));
  _Unwind_Resume(a1);
}

void sub_8DEDE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  v4 = sub_8A4848((a1 + 3352), 0);
  v5 = *(v4 + 240);
  v6 = v5 > 0x23;
  v7 = (1 << v5) & 0x804000010;
  v8 = v6 || v7 == 0;
  v9 = "Walking_Start_Route";
  if (v8)
  {
    v9 = "Start_Route";
  }

  if (v9[23] < 0)
  {
    sub_325C(__p, *v9, *(v9 + 1));
  }

  else
  {
    *__p = *v9;
    v16 = *(v9 + 2);
  }

  sub_67E35C(a2, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  sub_84BC2C(a1, a2, v4, (v4 + 152));
  sub_67F320(a2, __p);
  v10 = SHIBYTE(v16);
  if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
  {
    v10 = __p[1];
    v11 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - __p[1] < 5)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v16 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v11 + 5)
      {
        sub_3244();
      }

LABEL_17:
      operator new();
    }

    v12 = __p[0];
  }

  else
  {
    if ((SHIBYTE(v16) - 18) < 5)
    {
      goto LABEL_17;
    }

    v12 = __p;
  }

  v13 = v10 + v12;
  v13[4] = 110;
  *v13 = 1734955871;
  v14 = v10 + 5;
  if (SHIBYTE(v16) < 0)
  {
    __p[1] = v10 + 5;
  }

  else
  {
    HIBYTE(v16) = v14 & 0x7F;
  }

  v14[v12] = 0;
  sub_67E35C(a2, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_8DF098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A58C(v14);
    _Unwind_Resume(a1);
  }

  sub_53A58C(v14);
  _Unwind_Resume(a1);
}

BOOL sub_8DF0D4(uint64_t a1)
{
  v1 = *(a1 + 1928);
  result = 1;
  if (v1 > 0x1E || ((1 << v1) & 0x60801829) == 0)
  {
    v4 = v1 - 64;
    v5 = v4 > 0x1F;
    v6 = (1 << v4) & 0x96000007;
    return !v5 && v6 != 0;
  }

  return result;
}

void sub_8DF11C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 72))(&v13);
  v11 = 0;
  v12 = 0;
  sub_680484(a2, &v13, 1, &v11);
  v3 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v16;
  if (v16)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v13;
  if (v13)
  {
    v8 = v14;
    v9 = v13;
    if (v14 != v13)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v13;
    }

    v14 = v7;
    operator delete(v9);
  }
}

void sub_8DF248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_8DF264(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v28 = *"Merge";
  v29 = 0x500000000000000;
  if (!sub_7345C4(a1 + 672))
  {
    if (!sub_734C10(a1 + 608))
    {
      goto LABEL_42;
    }

    v5 = SHIBYTE(v29);
    if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
    {
      v5 = v28[1];
      v11 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v11 - v28[1] >= 5)
      {
        goto LABEL_38;
      }

      if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) < v28[1] - v11 + 5)
      {
        goto LABEL_60;
      }
    }

    else if ((SHIBYTE(v29) - 18) >= 5)
    {
LABEL_24:
      v10 = v28;
      goto LABEL_39;
    }

    operator new();
  }

  v4 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
  {
    v4 = v28[1];
    v6 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - v28[1] < 8)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) >= v28[1] - v6 + 8)
      {
        goto LABEL_11;
      }

      goto LABEL_60;
    }

    v7 = v28[0];
  }

  else
  {
    if ((SHIBYTE(v29) - 15) < 8)
    {
LABEL_11:
      operator new();
    }

    v7 = v28;
  }

  *(v4 + v7) = 0x31646C656968535FLL;
  v8 = v4 + 8;
  if (SHIBYTE(v29) < 0)
  {
    v28[1] = v4 + 8;
  }

  else
  {
    HIBYTE(v29) = v8 & 0x7F;
  }

  v8[v7] = 0;
  if (sub_734A38(a1 + 672))
  {
    v9 = SHIBYTE(v29);
    if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
    {
      v9 = v28[1];
      v12 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v12 - v28[1] < 0xB)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) >= v28[1] - v12 + 11)
        {
          goto LABEL_30;
        }

        goto LABEL_60;
      }

      v10 = v28[0];
    }

    else
    {
      if ((SHIBYTE(v29) - 12) < 0xB)
      {
LABEL_30:
        operator new();
      }

      v10 = v28;
    }

    v13 = v9 + v10;
    *v13 = *"_Direction1";
    *(v13 + 7) = 829321065;
    v14 = v9 + 11;
    if (SHIBYTE(v29) < 0)
    {
      goto LABEL_34;
    }

LABEL_40:
    HIBYTE(v29) = v14 & 0x7F;
    v15 = &v14[v10];
    goto LABEL_41;
  }

  if (!sub_734D68(a1 + 608))
  {
    goto LABEL_42;
  }

  v5 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v29) - 18) >= 5)
    {
      goto LABEL_24;
    }

LABEL_37:
    operator new();
  }

  v5 = v28[1];
  v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v16 - v28[1] < 5)
  {
    if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) < v28[1] - v16 + 5)
    {
      goto LABEL_60;
    }

    goto LABEL_37;
  }

LABEL_38:
  v10 = v28[0];
LABEL_39:
  v17 = v5 + v10;
  v17[4] = 100;
  *v17 = 1634685535;
  v14 = v5 + 5;
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v28[1] = v14;
  v15 = &v14[v10];
LABEL_41:
  *v15 = 0;
LABEL_42:
  v18 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
  {
    v18 = v28[1];
    v19 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v19 - v28[1] >= 5)
    {
      v20 = v28[0];
      goto LABEL_50;
    }

    if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) >= v28[1] - v19 + 5)
    {
      goto LABEL_47;
    }

LABEL_60:
    sub_3244();
  }

  if ((SHIBYTE(v29) - 18) < 5)
  {
LABEL_47:
    operator new();
  }

  v20 = v28;
LABEL_50:
  v21 = v18 + v20;
  v21[4] = 110;
  *v21 = 1734955871;
  v22 = v18 + 5;
  if (SHIBYTE(v29) < 0)
  {
    v28[1] = v18 + 5;
  }

  else
  {
    HIBYTE(v29) = v22 & 0x7F;
  }

  v22[v20] = 0;
  sub_8DF974((a1 + 608), 0, __p);
  sub_67E4F8(a2, v28, __p);
  v23 = v27;
  if (v27)
  {
    do
    {
      v24 = *v23;
      sub_55F7FC((v23 + 2));
      operator delete(v23);
      v23 = v24;
    }

    while (v24);
  }

  v25 = __p[0];
  __p[0] = 0;
  if (v25)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }
}

void sub_8DF944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_540798(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_8DF974(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (!sub_734C10(a1))
  {
    return;
  }

  if (a2)
  {
    v6 = "{Freeway}";
  }

  else
  {
    v7 = sub_7345C4((a1 + 8));
    v6 = "{Road}";
    if (v7)
    {
      v6 = "{Shield1}";
    }

    if (v6[23] < 0)
    {
      sub_325C(__p, *v6, *(v6 + 1));
      goto LABEL_9;
    }
  }

  *__p = *v6;
  v11 = *(v6 + 2);
LABEL_9:
  v12 = __p;
  v8 = sub_666FBC(a3, __p);
  sub_52CB8C(v8 + 5, a1);
  if (sub_7345C4((a1 + 8)))
  {
    v12 = "{Road}";
    v9 = sub_666FBC(a3, "{Road}");
    sub_52CB8C(v9 + 5, a1);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_8DFACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_540798(v14);
  _Unwind_Resume(a1);
}

void sub_8DFAF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 912);
  v3 = *(a1 + 920);
  if (v2 != v3)
  {
    while (1)
    {
      sub_8DFD58(v2, __p);
      v6 = a2[1];
      if (v6 >= a2[2])
      {
        v12 = sub_91530C(a2, __p);
        v9 = v22;
        a2[1] = v12;
        if (v9)
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v7 = v20;
      v20 = 0;
      *(v6 + 16) = v19;
      *(v6 + 24) = v7;
      *(v6 + 32) = v21;
      v19 = 0;
      v21 = 0;
      v9 = v22;
      v8 = v23;
      *(v6 + 40) = v22;
      *(v6 + 48) = v8;
      *(v6 + 56) = v24;
      if (v8)
      {
        v10 = *(v9 + 1);
        v11 = *(v6 + 32);
        if ((v11 & (v11 - 1)) != 0)
        {
          if (v10 >= v11)
          {
            v10 %= v11;
          }
        }

        else
        {
          v10 &= v11 - 1;
        }

        v9 = 0;
        v7[v10] = v6 + 40;
        v22 = 0;
        v23 = 0;
      }

      *(v6 + 64) = v25;
      a2[1] = v6 + 72;
      if (v9)
      {
        break;
      }

LABEL_16:
      v13 = v20;
      v20 = 0;
      if (v13)
      {
        operator delete(v13);
      }

      v14 = __p[0];
      if (__p[0])
      {
        v15 = __p[1];
        v5 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v17 = *(v15 - 1);
            v15 -= 3;
            if (v17 < 0)
            {
              operator delete(*v15);
            }
          }

          while (v15 != v14);
          v5 = __p[0];
        }

        __p[1] = v14;
        operator delete(v5);
      }

      v2 += 19;
      if (v2 == v3)
      {
        return;
      }
    }

    while (1)
    {
LABEL_22:
      v16 = *v9;
      if (v9[191] < 0)
      {
        operator delete(*(v9 + 21));
        if ((v9[159] & 0x80000000) == 0)
        {
LABEL_24:
          if ((v9[135] & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }
      }

      else if ((v9[159] & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      operator delete(*(v9 + 17));
      if ((v9[135] & 0x80000000) == 0)
      {
LABEL_25:
        if ((v9[95] & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(*(v9 + 14));
      if ((v9[95] & 0x80000000) == 0)
      {
LABEL_26:
        if ((v9[63] & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(*(v9 + 9));
      if ((v9[63] & 0x80000000) == 0)
      {
LABEL_27:
        if (v9[39] < 0)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

LABEL_33:
      operator delete(*(v9 + 5));
      if (v9[39] < 0)
      {
LABEL_34:
        operator delete(*(v9 + 2));
      }

LABEL_21:
      operator delete(v9);
      v9 = v16;
      if (!v16)
      {
        goto LABEL_16;
      }
    }
  }
}

void sub_8DFD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_53A58C(&a9);
  sub_89DCD4(v9);
  _Unwind_Resume(a1);
}

void sub_8DFD58(void *a1@<X1>, uint64_t a2@<X8>)
{
  *v28 = *"ContinueStage";
  v29 = 0xD00000000000000;
  if (!sub_7345C4((a1 + 8)))
  {
    if (!sub_734C10(a1))
    {
      goto LABEL_42;
    }

    v5 = SHIBYTE(v29);
    if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
    {
      v5 = v28[1];
      v11 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v11 - v28[1] >= 5)
      {
        goto LABEL_38;
      }

      if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) < v28[1] - v11 + 5)
      {
        goto LABEL_60;
      }
    }

    else if ((SHIBYTE(v29) - 18) >= 5)
    {
LABEL_24:
      v10 = v28;
      goto LABEL_39;
    }

    operator new();
  }

  v4 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
  {
    v4 = v28[1];
    v6 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - v28[1] < 8)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) >= v28[1] - v6 + 8)
      {
        goto LABEL_11;
      }

      goto LABEL_60;
    }

    v7 = v28[0];
  }

  else
  {
    if ((SHIBYTE(v29) - 15) < 8)
    {
LABEL_11:
      operator new();
    }

    v7 = v28;
  }

  *(v4 + v7) = 0x31646C656968535FLL;
  v8 = v4 + 8;
  if (SHIBYTE(v29) < 0)
  {
    v28[1] = v4 + 8;
  }

  else
  {
    HIBYTE(v29) = v8 & 0x7F;
  }

  v8[v7] = 0;
  if (sub_734A38((a1 + 8)))
  {
    v9 = SHIBYTE(v29);
    if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
    {
      v9 = v28[1];
      v12 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v12 - v28[1] < 0xB)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) >= v28[1] - v12 + 11)
        {
          goto LABEL_30;
        }

        goto LABEL_60;
      }

      v10 = v28[0];
    }

    else
    {
      if ((SHIBYTE(v29) - 12) < 0xB)
      {
LABEL_30:
        operator new();
      }

      v10 = v28;
    }

    v13 = v9 + v10;
    *v13 = *"_Direction1";
    *(v13 + 7) = 829321065;
    v14 = v9 + 11;
    if (SHIBYTE(v29) < 0)
    {
      goto LABEL_34;
    }

LABEL_40:
    HIBYTE(v29) = v14 & 0x7F;
    v15 = &v14[v10];
    goto LABEL_41;
  }

  if (!sub_734D68(a1))
  {
    goto LABEL_42;
  }

  v5 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v29) - 18) >= 5)
    {
      goto LABEL_24;
    }

LABEL_37:
    operator new();
  }

  v5 = v28[1];
  v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v16 - v28[1] < 5)
  {
    if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) < v28[1] - v16 + 5)
    {
      goto LABEL_60;
    }

    goto LABEL_37;
  }

LABEL_38:
  v10 = v28[0];
LABEL_39:
  v17 = v5 + v10;
  v17[4] = 100;
  *v17 = 1634685535;
  v14 = v5 + 5;
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v28[1] = v14;
  v15 = &v14[v10];
LABEL_41:
  *v15 = 0;
LABEL_42:
  v18 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
  {
    v18 = v28[1];
    v19 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v19 - v28[1] >= 5)
    {
      v20 = v28[0];
      goto LABEL_50;
    }

    if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) >= v28[1] - v19 + 5)
    {
      goto LABEL_47;
    }

LABEL_60:
    sub_3244();
  }

  if ((SHIBYTE(v29) - 18) < 5)
  {
LABEL_47:
    operator new();
  }

  v20 = v28;
LABEL_50:
  v21 = v18 + v20;
  v21[4] = 110;
  *v21 = 1734955871;
  v22 = v18 + 5;
  if (SHIBYTE(v29) < 0)
  {
    v28[1] = v18 + 5;
  }

  else
  {
    HIBYTE(v29) = v22 & 0x7F;
  }

  v22[v20] = 0;
  sub_8DF974(a1, 0, __p);
  sub_67E4F8(a2, v28, __p);
  v23 = v27;
  if (v27)
  {
    do
    {
      v24 = *v23;
      sub_55F7FC((v23 + 2));
      operator delete(v23);
      v23 = v24;
    }

    while (v24);
  }

  v25 = __p[0];
  __p[0] = 0;
  if (v25)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }
}

void sub_8E0444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_540798(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_8E0474(uint64_t a1@<X8>)
{
  sub_734CE0(v2);
  sub_8DFD58(v2, a1);
  if (v11 < 0)
  {
    operator delete(__p);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v6);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v2[0]);
    return;
  }

LABEL_10:
  operator delete(v4);
  if (v3 < 0)
  {
    goto LABEL_11;
  }
}

void sub_8E0538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_8E054C(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  sub_8E09D0(a1, &__p);
  v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  size = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  if (v7 != 4)
  {
    goto LABEL_8;
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  if (LODWORD(p_p->__r_.__value_.__l.__data_) == 1802264919)
  {
    sub_84C650(a1, &__p);
    v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    if (v13 != 4)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_8:
    v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    if (v10 != 4)
    {
      goto LABEL_20;
    }
  }

  v11 = v9 < 0;
  v12 = &__p;
  if (v11)
  {
    v12 = __p.__r_.__value_.__r.__words[0];
  }

  if (LODWORD(v12->__r_.__value_.__l.__data_) != 1802264919)
  {
LABEL_20:
    if (v5 < 0)
    {
      v14 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 - size < 5)
      {
        if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < size + 5 - v14)
        {
          goto LABEL_58;
        }

LABEL_25:
        operator new();
      }

      v15 = __p.__r_.__value_.__r.__words[0];
      v4 = size;
    }

    else
    {
      if (v4 - 18 < 5)
      {
        goto LABEL_25;
      }

      v15 = &__p;
    }

    v16 = v15 + v4;
    v16[4] = 110;
    *v16 = 1734955871;
    v17 = v4 + 5;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v15->__r_.__value_.__s.__data_[v17] = 0;
    v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  strcpy(v28, "Dismount_Sign");
  HIWORD(v28[1]) = 0;
  v28[2] = 0xD00000000000000;
  if (v5 >= 0)
  {
    v18 = v4;
  }

  else
  {
    v18 = size;
  }

  if (v18 == 13)
  {
    v19 = __p.__r_.__value_.__r.__words[0];
    v20 = &__p;
    if (v5 < 0)
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    v21 = v20->__r_.__value_.__r.__words[0];
    v22 = *(v20->__r_.__value_.__r.__words + 5);
    if (v21 == v28[0] && v22 == *(v28 + 5))
    {
      if ((v5 & 0x80) == 0)
      {
        if (v4 - 17 < 6)
        {
LABEL_48:
          operator new();
        }

        v19 = &__p;
LABEL_51:
        v25 = v19 + v4;
        *(v25 + 2) = 29810;
        *v25 = 1869108063;
        v26 = v4 + 6;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          __p.__r_.__value_.__l.__size_ = v26;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = v26 & 0x7F;
        }

        v19->__r_.__value_.__s.__data_[v26] = 0;
        goto LABEL_55;
      }

      v24 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v24 - size >= 6)
      {
        v4 = size;
        goto LABEL_51;
      }

      if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) >= size + 6 - v24)
      {
        goto LABEL_48;
      }

LABEL_58:
      sub_3244();
    }
  }

LABEL_55:
  v27 = sub_58BBC(&a1->__r_.__value_.__l.__size_);
  sub_67E4F8(a2, &__p, v27);
  sub_846378(a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_8E09A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_53A58C(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_8E09D0(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  (*(a1->__r_.__value_.__r.__words[0] + 112))(a1);
  if (a1[137].__r_.__value_.__s.__data_[16] != 1)
  {
    return;
  }

  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  v4 = (*(a1->__r_.__value_.__r.__words[0] + 136))(a1);
  (*(a1->__r_.__value_.__r.__words[0] + 48))(v31, a1, v4);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  v34 = v32;
  *__p = *v31;
  v5 = HIBYTE(v32);
  v6 = HIBYTE(v32);
  v7 = v31[1];
  if (v32 >= 0)
  {
    v8 = HIBYTE(v32);
  }

  else
  {
    v8 = v31[1];
  }

  v9 = v8 != 0;
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v10 && v8)
  {
    std::string::append(a2, "_", 1uLL);
    v5 = HIBYTE(v34);
    v7 = __p[1];
    v6 = HIBYTE(v34);
  }

  if (v6 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v6 >= 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  std::string::append(a2, v11, v12);
  v13 = (*(a1->__r_.__value_.__r.__words[0] + 136))(a1);
  v14 = *(a2 + 23);
  v15 = *(a2 + 8);
  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  if (v16)
  {
    v17 = *a2;
    v18 = v14 >= 0 ? a2 : *a2;
    v19 = memchr(v18, 50, v16);
    if (v19)
    {
      if (v19 - v18 != -1)
      {
        if (v14 < 0)
        {
          if (v15 != 15)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v17 = a2;
          if (v14 != 15)
          {
            goto LABEL_51;
          }
        }

        if (*v17 != 0x5F31646C65696853 || *(v17 + 7) != 0x32646C656968535FLL)
        {
          goto LABEL_51;
        }
      }
    }
  }

  if (v13 & v9 & 1 | !sub_847BBC(a1))
  {
    goto LABEL_51;
  }

  v21 = (*(a1->__r_.__value_.__r.__words[0] + 56))(a1, a2);
  (*(a1->__r_.__value_.__r.__words[0] + 64))(v31, a1, v21);
  v22 = *(a2 + 23);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a2 + 8);
  }

  if (v22)
  {
    v23 = HIBYTE(v32);
    if (v32 < 0)
    {
      v23 = v31[1];
    }

    if (v23)
    {
      std::string::append(a2, "_", 1uLL);
    }
  }

  v24 = v32 >= 0 ? v31 : v31[0];
  v25 = v32 >= 0 ? HIBYTE(v32) : v31[1];
  std::string::append(a2, v24, v25);
  if ((SHIBYTE(v32) & 0x80000000) == 0)
  {
LABEL_51:
    v26 = *(a2 + 23);
    v27 = v26;
    v28 = *(a2 + 8);
    if ((v26 & 0x80u) == 0)
    {
      v29 = *(a2 + 23);
    }

    else
    {
      v29 = *(a2 + 8);
    }

    if (!v29)
    {
      goto LABEL_55;
    }

    goto LABEL_62;
  }

  operator delete(v31[0]);
  v26 = *(a2 + 23);
  v27 = v26;
  v28 = *(a2 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v30 = *(a2 + 23);
  }

  else
  {
    v30 = *(a2 + 8);
  }

  if (!v30)
  {
LABEL_55:
    if (a1[80].__r_.__value_.__s.__data_[21] == 1 && a1[80].__r_.__value_.__s.__data_[16] == 1)
    {
      std::string::append(a2, "Parking", 7uLL);
      v26 = *(a2 + 23);
      v28 = *(a2 + 8);
      v27 = *(a2 + 23);
    }
  }

LABEL_62:
  if (v27 < 0)
  {
    v26 = v28;
  }

  if (!v26)
  {
    sub_8471C4(a1, v31);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *v31;
    *(a2 + 16) = v32;
  }

  sub_84C518(a1, a2);
  sub_84C338(a1, a2);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_8E0DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if (*(v21 + 23) < 0)
    {
LABEL_6:
      operator delete(*v21);
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v21 + 23) < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(exception_object);
}

void sub_8E0E2C(_DWORD *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  (*(*a1 + 72))(&v29);
  if (a2[181] == 1)
  {
    v24 = 18;
    strcpy(__p, "Next_Entrance_Sign");
    sub_67E494(&v25, __p);
  }

  else if (a2[180] == 1)
  {
    v24 = 14;
    strcpy(__p, "Next_Exit_Sign");
    sub_67E494(&v25, __p);
  }

  else if (a2[182] == 1)
  {
    v24 = 16;
    strcpy(__p, "Next_U_Turn_Sign");
    sub_67E494(&v25, __p);
  }

  else
  {
    v6 = a1[482];
    if ((v6 - 21) <= 0x2D && ((1 << (v6 - 21)) & 0x250000002281) != 0 || v6 == 2)
    {
      v24 = 15;
      strcpy(__p, "Next_Right_Sign");
    }

    else
    {
      v24 = 14;
      strcpy(__p, "Next_Left_Sign");
    }

    sub_67E494(&v25, __p);
  }

  if (v24 < 0)
  {
    operator delete(*__p);
  }

  sub_680994(a3, &v29, 15, &v25, 1);
  v9 = v28;
  if (v28)
  {
    do
    {
      v10 = *v9;
      sub_55F7FC((v9 + 2));
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = v27;
  v27 = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = v25;
  if (v25)
  {
    v13 = v26;
    v14 = v25;
    if (v26 != v25)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v25;
    }

    v26 = v12;
    operator delete(v14);
  }

  v16 = v32;
  if (v32)
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

  v18 = v31;
  v31 = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = v29;
  if (v29)
  {
    v20 = v30;
    v21 = v29;
    if (v30 != v29)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = v29;
    }

    v30 = v19;
    operator delete(v21);
  }
}

void sub_8E10F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A58C(&a25);
    _Unwind_Resume(a1);
  }

  sub_53A58C(&a25);
  _Unwind_Resume(a1);
}

void sub_8E1144(uint64_t a1)
{
  if (*(a1 + 2080) == *(a1 + 2088))
  {
    v1 = "Mount";
  }

  else
  {
    v1 = "Remount";
  }

  v2 = *(v1 + 2);
  v15 = v2;
  v14 = *v1;
  if (v2 >= 0)
  {
    v3 = HIBYTE(v2);
  }

  else
  {
    v3 = *(&v14 + 1);
  }

  if (v3 + 5 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v3 + 5 >= 0x17)
  {
    operator new();
  }

  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  HIBYTE(v11) = v3 + 5;
  if (v3)
  {
    if (v2 >= 0)
    {
      v4 = &v14;
    }

    else
    {
      v4 = v14;
    }

    memmove(v10, v4, v3);
  }

  strcpy(v10 + v3, "_Sign");
  v5 = SHIBYTE(v11);
  if ((SHIBYTE(v11) & 0x8000000000000000) != 0)
  {
    v5 = v10[1];
    v6 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - v10[1] < 6)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v11 & 0x7FFFFFFFFFFFFFFFLL)) < v10[1] - v6 + 6)
      {
        sub_3244();
      }

LABEL_20:
      operator new();
    }

    v7 = v10[0];
  }

  else
  {
    if ((SHIBYTE(v11) - 17) < 6)
    {
      goto LABEL_20;
    }

    v7 = v10;
  }

  v8 = v5 + v7;
  *(v8 + 2) = 29810;
  *v8 = 1869108063;
  v9 = v5 + 6;
  if (SHIBYTE(v11) < 0)
  {
    v10[1] = v5 + 6;
  }

  else
  {
    HIBYTE(v11) = v9 & 0x7F;
  }

  v9[v7] = 0;
  *v12 = *v10;
  v13 = v11;
  sub_67E494(v10, v12);
  operator new();
}

void sub_8E1560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_8E18EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  sub_1F1A8(&a9);
  sub_662AC8(&a13);
  sub_53A58C(&a26);
  _Unwind_Resume(a1);
}

void sub_8E192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  sub_1F1A8(&a11);
  sub_53A58C(&a26);
  _Unwind_Resume(a1);
}

void sub_8E1F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(&a16);
  sub_53A58C(&a26);
  sub_1F1A8(v31 - 104);
  _Unwind_Resume(a1);
}

void sub_8E1FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_53A58C(va);
  sub_1F1A8(v15 - 104);
  _Unwind_Resume(a1);
}

void sub_8E1FD8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

BOOL sub_8E1FF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (v3 != 11 || (*a2 == 0x6F525F3164616F52 ? (v4 = *(a2 + 3) == 0x3264616F525F3164) : (v4 = 0), !v4))
    {
      v5 = a2;
      v6 = *(a2 + 23);
      goto LABEL_15;
    }

    return 1;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  if (v6 == 11)
  {
    if (*v5 != 0x6F525F3164616F52 || *(v5 + 3) != 0x3264616F525F3164)
    {
      goto LABEL_30;
    }

    return 1;
  }

LABEL_15:
  if (v6 < 7)
  {
    v8 = 0;
    v9 = *(a2 + 8);
    if (v3 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    if (v10 >= 0xD)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_30:
  v16 = *v5;
  v17 = *(v5 + 3);
  v8 = v16 == 1701406803 && v17 == 828664933;
  v9 = *(a2 + 8);
  if (v3 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (v10 >= 0xD)
  {
LABEL_20:
    v11 = *a2;
    if (v3 >= 0)
    {
      v11 = a2;
    }

    v12 = *v11;
    v13 = *(v11 + 5);
    v15 = v12 == 0x6853647261776F54 && v13 == 0x31646C6569685364;
    if (!v8 && !v15)
    {
      return 0;
    }

    goto LABEL_41;
  }

LABEL_40:
  v15 = 0;
  if (!v8)
  {
    return 0;
  }

LABEL_41:
  v19 = *a2;
  if (v3 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  v21 = &v20[v10];
  if (v10 >= 10)
  {
    v27 = v10;
    v28 = v20;
    do
    {
      v29 = memchr(v28, 68, v27 - 9);
      if (!v29)
      {
        break;
      }

      if (*v29 == 0x6F69746365726944 && *(v29 + 4) == 12654)
      {
        if (v29 != v21 && v29 - v20 != -1)
        {
          v22 = 1;
          if (v8)
          {
            goto LABEL_46;
          }

          goto LABEL_83;
        }

        break;
      }

      v28 = v29 + 1;
      v27 = v21 - v28;
    }

    while (v21 - v28 >= 10);
    if (v10 >= 16)
    {
      v31 = v10;
      v32 = v20;
      do
      {
        v33 = memchr(v32, 84, v31 - 15);
        if (!v33)
        {
          break;
        }

        if (*v33 == 0x6944647261776F54 && *(v33 + 1) == 0x316E6F6974636572)
        {
          goto LABEL_76;
        }

        v32 = v33 + 1;
        v31 = v21 - v32;
      }

      while (v21 - v32 > 15);
    }

    v33 = &v20[v10];
LABEL_76:
    v22 = v33 != v21 && v33 - v20 != -1;
    if (v8)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v22 = 0;
    if (v8)
    {
LABEL_46:
      v62 = v22;
      if (v10 >= 5)
      {
        v23 = v10;
        v24 = v20;
        do
        {
          v25 = memchr(v24, 82, v23 - 4);
          if (!v25)
          {
            break;
          }

          if (*v25 == 1684107090 && v25[4] == 95)
          {
            if (v25 != v21 && v25 - v20 != -1)
            {
              goto LABEL_124;
            }

            break;
          }

          v24 = v25 + 1;
          v23 = v21 - v24;
        }

        while (v21 - v24 >= 5);
        if (v10 != 5)
        {
          v37 = v20;
          do
          {
            v38 = memchr(v37, 95, v10 - 5);
            if (!v38)
            {
              break;
            }

            if (*v38 == 1634685535 && *(v38 + 2) == 12644)
            {
              if (v38 != v21 && v38 - v20 != -1)
              {
                goto LABEL_124;
              }

              break;
            }

            v37 = v38 + 1;
            v10 = v21 - v37;
          }

          while (v21 - v37 >= 6);
        }
      }

      v40 = sub_6B93C(v2, "_Freeway", 0);
      v41 = v40 != -1;
      if (v40 != -1)
      {
        if (v62 || v40 != -1)
        {
          goto LABEL_123;
        }

        return 0;
      }

      v22 = v62;
      if (!v15)
      {
LABEL_122:
        if (v22 || v41)
        {
          goto LABEL_123;
        }

        return 0;
      }

      v3 = *(v2 + 23);
      v19 = *v2;
      v9 = *(v2 + 8);
LABEL_102:
      if ((v3 & 0x80u) != 0)
      {
        v42 = v9;
      }

      else
      {
        v19 = v2;
        v42 = v3;
      }

      v43 = (v19 + v42);
      if (v42 >= 10)
      {
        v45 = v22;
        v46 = v19;
        do
        {
          v44 = memchr(v46, 95, v42 - 9);
          if (!v44)
          {
            break;
          }

          if (*v44 == 0x736F706E6769535FLL && v44[4] == 12660)
          {
            goto LABEL_115;
          }

          v46 = v44 + 1;
          v42 = v43 - v46;
        }

        while (v43 - v46 > 9);
        v44 = v43;
LABEL_115:
        v22 = v45;
      }

      else
      {
        v44 = (v19 + v42);
      }

      v41 = v44 != v43 && (v44 - v19 + 1) != 0;
      goto LABEL_122;
    }
  }

LABEL_83:
  if (v15)
  {
    goto LABEL_102;
  }

  if (!v22)
  {
    return 0;
  }

LABEL_123:
  v3 = *(v2 + 23);
  v19 = *v2;
  v9 = *(v2 + 8);
LABEL_124:
  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v2 = v19;
  }

  v49 = (v2 + v9);
  if (v9 >= 6)
  {
    v50 = v9;
    v51 = v2;
    do
    {
      v52 = memchr(v51, 95, v50 - 5);
      if (!v52)
      {
        break;
      }

      if (*v52 == 1634685535 && *(v52 + 2) == 12900)
      {
        if (v52 != v49 && &v52[-v2] != -1)
        {
          return 1;
        }

        break;
      }

      v51 = v52 + 1;
      v50 = v49 - v51;
    }

    while (v49 - v51 >= 6);
  }

  if (!v8)
  {
    goto LABEL_153;
  }

  if (v9 >= 10)
  {
    v54 = v9;
    v55 = v2;
    do
    {
      v56 = memchr(v55, 95, v54 - 9);
      if (!v56)
      {
        break;
      }

      if (*v56 == 0x736F706E6769535FLL && *(v56 + 4) == 12660)
      {
        if (v56 == v49 || &v56[-v2] == -1)
        {
          break;
        }

        return 1;
      }

      v55 = v56 + 1;
      v54 = v49 - v55;
    }

    while (v49 - v55 >= 10);
LABEL_153:
    if (v9 >= 10)
    {
      v58 = v2;
      do
      {
        v59 = memchr(v58, 95, v9 - 9);
        if (!v59)
        {
          break;
        }

        if (*v59 == 0x736F706E6769535FLL && *(v59 + 4) == 12916)
        {
          return v59 != v49 && &v59[-v2 + 1] != 0;
        }

        v58 = v59 + 1;
        v9 = v49 - v58;
      }

      while (v49 - v58 > 9);
    }
  }

  v59 = v49;
  return v59 != v49 && &v59[-v2 + 1] != 0;
}

void sub_8E25CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 1936) & 1) == 0)
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 56) = 1065353216;
    *(a2 + 64) = 1;
    return;
  }

  sub_67F320((a1 + 8), &v37);
  if ((v39 & 0x80u) == 0)
  {
    v4 = &v37;
  }

  else
  {
    v4 = v37;
  }

  if ((v39 & 0x80u) == 0)
  {
    v5 = v39;
  }

  else
  {
    v5 = v38;
  }

  v6 = &v4[v5];
  if (v5 >= 11)
  {
    v7 = v5;
    v8 = v4;
    do
    {
      v9 = memchr(v8, 82, v7 - 10);
      if (!v9)
      {
        break;
      }

      if (*v9 == 0x6F6261646E756F52 && *(v9 + 3) == 0x5F74756F6261646ELL)
      {
        goto LABEL_17;
      }

      v8 = v9 + 1;
      v7 = v6 - v8;
    }

    while (v6 - v8 > 10);
  }

  v9 = &v4[v5];
LABEL_17:
  if (v9 == v6)
  {
    v11 = -1;
  }

  else
  {
    v11 = v9 - v4;
  }

  if (v5 >= 5)
  {
    v12 = v4;
    do
    {
      v13 = memchr(v12, 95, v5 - 4);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      if (*v13 == 1769489759 && v13[4] == 116)
      {
        goto LABEL_29;
      }

      v12 = v13 + 1;
      v5 = v6 - (v14 + 1);
    }

    while (v5 > 4);
  }

  v14 = v6;
LABEL_29:
  v16 = sub_734C10(a1 + 456);
  v17 = v11 != -1 || v16;
  if ((v17 & 1) == 0)
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 56) = 1065353216;
    *(a2 + 64) = 1;
    goto LABEL_93;
  }

  if (v11 != -1 && (*(a1 + 1928) - 41) <= 0x12)
  {
    v18 = v14 - v4 + 5;
    if (v14 == v6)
    {
      v18 = 4;
    }

    v19 = v39;
    if ((v39 & 0x80u) == 0)
    {
      v20 = &v37;
    }

    else
    {
      v19 = v38;
      v20 = v37;
    }

    if (v19 >= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }

    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v41) = v21;
    if (v21)
    {
      memmove(__dst, v20, v21);
    }

    *(__dst + v21) = 0;
    v25 = (v11 + 11);
    v26 = SHIBYTE(v41);
    if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
    {
      v26 = __dst[1];
      if (__dst[1] >= v25)
      {
        v27 = __dst[0];
LABEL_72:
        v28 = v26 - v25;
        if ((v26 - v25) > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v28 >= 0x17)
        {
          operator new();
        }

        BYTE7(v35) = v26 - v25;
        if (v26 == v25)
        {
          *(&v34 + v28) = 0;
          if ((SHIBYTE(v41) & 0x80000000) == 0)
          {
            goto LABEL_76;
          }
        }

        else
        {
          memmove(&v34, &v25[v27], v28);
          *(&v34 + v28) = 0;
          if ((SHIBYTE(v41) & 0x80000000) == 0)
          {
LABEL_76:
            v41 = v35;
            *__dst = v34;
            v29 = SBYTE7(v35);
            if ((SBYTE7(v35) & 0x8000000000000000) == 0)
            {
LABEL_77:
              if (v29 - 18 < &dword_4 + 1)
              {
                goto LABEL_84;
              }

              v31 = __dst;
LABEL_87:
              v32 = v29 + v31;
              v32[4] = 110;
              *v32 = 1734955871;
              v33 = v29 + 5;
              if (SHIBYTE(v41) < 0)
              {
                __dst[1] = v29 + 5;
              }

              else
              {
                HIBYTE(v41) = v33 & 0x7F;
              }

              v33[v31] = 0;
              sub_67E494(a2, __dst);
              if ((SHIBYTE(v41) & 0x80000000) == 0)
              {
                goto LABEL_93;
              }

              v24 = __dst[0];
              goto LABEL_92;
            }

LABEL_82:
            v29 = __dst[1];
            v30 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v30 - __dst[1] < 5)
            {
              if ((0x7FFFFFFFFFFFFFF7 - (v41 & 0x7FFFFFFFFFFFFFFFLL)) < __dst[1] - v30 + 5)
              {
                sub_3244();
              }

LABEL_84:
              operator new();
            }

            v31 = __dst[0];
            goto LABEL_87;
          }
        }

        operator delete(__dst[0]);
        v41 = v35;
        *__dst = v34;
        v29 = SBYTE7(v35);
        if ((SBYTE7(v35) & 0x8000000000000000) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_82;
      }
    }

    else if (v25 <= SHIBYTE(v41))
    {
      v27 = __dst;
      goto LABEL_72;
    }

    sub_49D4();
  }

  *__dst = *"{ExitNumber}";
  v41 = 0xC00000000000000;
  sub_5139E8(&v42, (a1 + 456));
  v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  sub_5F09CC(&v34, __dst);
  if (v51 < 0)
  {
    operator delete(__p);
    if ((v49 & 0x80000000) == 0)
    {
LABEL_51:
      if ((v47 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_61;
    }
  }

  else if ((v49 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

  operator delete(v48);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_52:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_62;
  }

LABEL_61:
  operator delete(v46);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_53:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_63:
    operator delete(v42);
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_64;
  }

LABEL_62:
  operator delete(v44);
  if (v43 < 0)
  {
    goto LABEL_63;
  }

LABEL_54:
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    goto LABEL_55;
  }

LABEL_64:
  operator delete(__dst[0]);
LABEL_55:
  sub_67E4F8(a2, "ExitShield_Sign", &v34);
  v22 = v35;
  if (v35)
  {
    do
    {
      v23 = *v22;
      sub_55F7FC((v22 + 2));
      operator delete(v22);
      v22 = v23;
    }

    while (v23);
  }

  v24 = v34;
  *&v34 = 0;
  if (!v24)
  {
    goto LABEL_93;
  }

LABEL_92:
  operator delete(v24);
LABEL_93:
  if (v39 < 0)
  {
    operator delete(v37);
  }
}

void sub_8E2BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_8E2C64(const void **a1@<X1>, uint64_t a2@<X8>)
{
  if (byte_27B11DF >= 0)
  {
    v3 = byte_27B11DF;
  }

  else
  {
    v3 = qword_27B11D0;
  }

  if (v3 + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v3 + 7 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v17 = 0;
  __p[0] = 0;
  HIBYTE(v17) = v3 + 7;
  if (v3)
  {
    if (byte_27B11DF >= 0)
    {
      v5 = &qword_27B11C8;
    }

    else
    {
      v5 = qword_27B11C8;
    }

    memmove(__p, v5, v3);
  }

  strcpy(__p + v3, "_Spoken");
  sub_67E494(&v18, __p);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  sub_67EDAC(&v18, "{instruction}", a1, a1);
  v14 = 0;
  v15 = 0;
  sub_680484(a2, &v18, 1, &v14);
  v6 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v21;
  if (v21)
  {
    do
    {
      v8 = *v7;
      sub_55F7FC((v7 + 2));
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = v20;
  v20 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = v18;
  if (v18)
  {
    v11 = v19;
    v12 = v18;
    if (v19 != v18)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v18;
    }

    v19 = v10;
    operator delete(v12);
  }
}

void sub_8E2E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_1F1A8(&a9);
  sub_53A58C(&a14);
  _Unwind_Resume(a1);
}

void sub_8E2EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8E2EBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (byte_27B0747 < 0)
  {
    v3 = a1;
    sub_325C(&v23, xmmword_27B0730, *(&xmmword_27B0730 + 1));
    a1 = v3;
  }

  else
  {
    v23 = xmmword_27B0730;
    v24 = unk_27B0740;
  }

  sub_8DF974((a1 + 608), 1, __p);
  sub_67E4F8(&v19, &v23, __p);
  v4 = v18;
  if (v18)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p[0];
  __p[0] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v15 = 0;
  v16 = 0;
  sub_680484(a2, &v19, 1, &v15);
  v7 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v22;
  if (v22)
  {
    do
    {
      v9 = *v8;
      sub_55F7FC((v8 + 2));
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = v21;
  v21 = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = v19;
  if (v19)
  {
    v12 = v20;
    v13 = v19;
    if (v20 != v19)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v19;
    }

    v20 = v11;
    operator delete(v13);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }
}

void sub_8E307C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_1F1A8(&a9);
  sub_53A58C(&a16);
  if (*(v16 - 41) < 0)
  {
    operator delete(*(v16 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_8E30C0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 1938) == 1)
  {
    v14 = 0;
    v15 = 0;
    sub_680484(a2, a1 + 80, 1, &v14);
    v4 = v15;
    if (v15)
    {
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    sub_8492FC(a1, a2, 1, 0);
  }

  else
  {
    if (*(a1 + 2032) != *(a1 + 2040) && sub_67F360(a1 + 80, "{Road}"))
    {
      sub_84BA64(a1, &v13);
      sub_67E494(&v12, &v13);
      v9 = 0;
      v10 = 0;
      sub_680484(&v11, &v12, 1, &v9);
      v5 = v10;
      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      operator new();
    }

    if (*(a1 + 3301) == 1)
    {
      operator new();
    }

    v7 = 0;
    v8 = 0;
    sub_680484(a2, a1 + 80, 2, &v7);
    v6 = v8;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_8E36DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, void **a31)
{
  sub_1F1A8(&a12);
  sub_53A58C(&a14);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_662AC8(&a31);
  sub_53A58C((v31 - 144));
  if (*(v31 - 49) < 0)
  {
    operator delete(*(v31 - 72));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_8E3988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_8E39A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v14);
  sub_53A58C(&a12);
  _Unwind_Resume(a1);
}

void sub_8E39C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_8E39D8(uint64_t a1)
{
  sub_8E3BA4(a1, &v8);
  v2 = 108;
  if (*(a1 + 3297))
  {
    v2 = 105;
  }

  v3 = &qword_27B05B0;
  if (*(a1 + 3297))
  {
    v3 = &qword_27B0598;
  }

  v4 = &xmmword_27B05B8 + 15;
  if (*(a1 + 3297))
  {
    v4 = &xmmword_27B05A0 + 15;
  }

  if (*v4 < 0)
  {
    v5 = 108;
    if (*(a1 + 3297))
    {
      v5 = 105;
    }

    sub_325C(__p, qword_27B0250[v2], qword_27B0250[v5 + 1]);
  }

  else
  {
    *__p = *v3;
    v7 = v3[2];
  }

  sub_8E37F8(a1, &v8, __p);
}

void sub_8E3B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8E3B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_662AC8(&a15);
  _Unwind_Resume(a1);
}

void sub_8E3BA4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_84BA64(a1, &v18);
  sub_67E494(&v14, &v18);
  v12 = 0;
  v13 = 0;
  sub_680484(a2, &v14, 1, &v12);
  v4 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v17;
  if (v17)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v14;
  if (v14)
  {
    v9 = v15;
    v10 = v14;
    if (v15 != v14)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v14;
    }

    v15 = v8;
    operator delete(v10);
  }

  sub_8492FC(a1, a2, 0, 0);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_8E3D00(_Unwind_Exception *a1)
{
  sub_662AC8(v1);
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_8E3D44(uint64_t a1)
{
  sub_8E3BA4(a1, &v8);
  v2 = 126;
  if (*(a1 + 3297))
  {
    v2 = 123;
  }

  v3 = &qword_27B0640;
  if (*(a1 + 3297))
  {
    v3 = &qword_27B0628;
  }

  v4 = &xmmword_27B0648 + 15;
  if (*(a1 + 3297))
  {
    v4 = &xmmword_27B0630 + 15;
  }

  if (*v4 < 0)
  {
    v5 = 126;
    if (*(a1 + 3297))
    {
      v5 = 123;
    }

    sub_325C(&v6, qword_27B0250[v2], qword_27B0250[v5 + 1]);
  }

  else
  {
    v6 = *v3;
    v7 = v3[2];
  }

  sub_8E37F8(a1, &v8, &v6);
}

void sub_8E4148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void **a23)
{
  sub_662AC8(&a23);
  if (*(v23 - 137) < 0)
  {
    operator delete(*(v23 - 160));
  }

  sub_662AC8((v23 - 136));
  _Unwind_Resume(a1);
}

void sub_8E41D4(uint64_t a1)
{
  sub_8E4670(a1, 1, 0, 1, &v8);
  v2 = 126;
  if (*(a1 + 3297))
  {
    v2 = 123;
  }

  v3 = &qword_27B0640;
  if (*(a1 + 3297))
  {
    v3 = &qword_27B0628;
  }

  v4 = &xmmword_27B0648 + 15;
  if (*(a1 + 3297))
  {
    v4 = &xmmword_27B0630 + 15;
  }

  if (*v4 < 0)
  {
    v5 = 126;
    if (*(a1 + 3297))
    {
      v5 = 123;
    }

    sub_325C(&v6, qword_27B0250[v2], qword_27B0250[v5 + 1]);
  }

  else
  {
    v6 = *v3;
    v7 = v3[2];
  }

  sub_8E37F8(a1, &v8, &v6);
}

void sub_8E45E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void **a23)
{
  sub_662AC8(&a23);
  if (*(v23 - 137) < 0)
  {
    operator delete(*(v23 - 160));
  }

  sub_662AC8((v23 - 136));
  _Unwind_Resume(a1);
}

void sub_8E4670(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3 && *(a1 + 3296) == 1 && (*(a1 + 1928) - 41) >= 0x13)
  {

    sub_8E5228(a1, a2);
  }

  v7 = *(a1 + 2285) != 1 || a4 == 0;
  if (!v7 && (*(a1 + 3296) & 1) == 0)
  {
    v10 = 135;
    if (a2)
    {
      v10 = 132;
    }

    v11 = &qword_27B0688;
    if (a2)
    {
      v11 = &qword_27B0670;
    }

    v12 = &xmmword_27B0690 + 15;
    if (a2)
    {
      v12 = &xmmword_27B0678 + 15;
    }

    if (*v12 < 0)
    {
      v20 = qword_27B0250[v10];
      v21 = 135;
      if (a2)
      {
        v21 = 132;
      }

      sub_325C(v39, v20, qword_27B0250[v21 + 1]);
    }

    else
    {
      *v39 = *v11;
      v40 = v11[2];
    }

    v43 = 0;
    v44 = 0;
    sub_680484(__p, a1 + 80, 1, &v43);
    v22 = v44;
    if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    sub_8492FC(a1, __p, 0, 0);
    sub_8E37F8(a1, __p, v39);
  }

  if (a2)
  {
    sub_5F0850(v39, a1 + 80);
  }

  else
  {
    sub_8494C8(a1, __p);
    sub_841610(a1, 1, __p, v39);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v37 = 0;
  v38 = 0;
  sub_680484(__p, v39, 1, &v37);
  v8 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (*(a1 + 3299))
    {
      goto LABEL_16;
    }
  }

  else if (*(a1 + 3299))
  {
LABEL_16:
    v9 = 1;
    goto LABEL_27;
  }

  v9 = *(a1 + 3300);
LABEL_27:
  sub_8492FC(a1, __p, 0, v9 & 1);
  if (v9)
  {
    operator new();
  }

  if (*(a1 + 1942) == 1)
  {
    sub_8E93E4(a1, a5);
    v13 = *(&v54 + 1);
    if (!*(&v54 + 1))
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  *a5 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v15 = v46;
  v14 = v47;
  v16 = v48;
  v17 = v49;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  *(a5 + 16) = v15;
  *(a5 + 24) = v14;
  *(a5 + 32) = v16;
  *(a5 + 40) = v17;
  v18 = v50;
  *(a5 + 48) = v50;
  *(a5 + 56) = v51;
  if (v18)
  {
    v19 = v17[1];
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v19 >= v16)
      {
        v19 %= v16;
      }
    }

    else
    {
      v19 &= v16 - 1;
    }

    v14[v19] = a5 + 40;
    v49 = 0;
    v50 = 0;
  }

  *(a5 + 64) = v52;
  *(a5 + 72) = v53;
  *(a5 + 80) = v54;
  v54 = 0uLL;
  *(a5 + 96) = v55;
  *(a5 + 98) = v56;
  v13 = *(&v54 + 1);
  if (*(&v54 + 1))
  {
LABEL_49:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_51:
  v23 = v49;
  if (v49)
  {
    do
    {
      v24 = *v23;
      sub_55F7FC((v23 + 2));
      operator delete(v23);
      v23 = v24;
    }

    while (v24);
  }

  v25 = v47;
  v47 = 0;
  if (v25)
  {
    operator delete(v25);
  }

  v26 = __p[0];
  if (__p[0])
  {
    v27 = __p[1];
    v28 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v29 = *(v27 - 1);
        v27 -= 3;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = __p[0];
    }

    __p[1] = v26;
    operator delete(v28);
  }

  v30 = v42;
  if (v42)
  {
    do
    {
      v31 = *v30;
      sub_55F7FC((v30 + 2));
      operator delete(v30);
      v30 = v31;
    }

    while (v31);
  }

  v32 = v41;
  v41 = 0;
  if (v32)
  {
    operator delete(v32);
  }

  v33 = v39[0];
  if (v39[0])
  {
    v34 = v39[1];
    v35 = v39[0];
    if (v39[1] != v39[0])
    {
      do
      {
        v36 = *(v34 - 1);
        v34 -= 3;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v33);
      v35 = v39[0];
    }

    v39[1] = v33;
    operator delete(v35);
  }
}

void sub_8E4CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_1F1A8(&a26);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_8E4D70(_BYTE *a1)
{
  (*(*a1 + 168))(&v8);
  v2 = 126;
  if (a1[3297])
  {
    v2 = 123;
  }

  v3 = &qword_27B0640;
  if (a1[3297])
  {
    v3 = &qword_27B0628;
  }

  v4 = &xmmword_27B0648 + 15;
  if (a1[3297])
  {
    v4 = &xmmword_27B0630 + 15;
  }

  if (*v4 < 0)
  {
    v5 = 126;
    if (a1[3297])
    {
      v5 = 123;
    }

    sub_325C(&v6, qword_27B0250[v2], qword_27B0250[v5 + 1]);
  }

  else
  {
    v6 = *v3;
    v7 = v3[2];
  }

  sub_8E37F8(a1, &v8, &v6);
}

void sub_8E519C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void **a23)
{
  sub_662AC8(&a23);
  if (*(v23 - 137) < 0)
  {
    operator delete(*(v23 - 160));
  }

  sub_662AC8((v23 - 136));
  _Unwind_Resume(a1);
}

void sub_8E5228(uint64_t a1, int a2)
{
  v4 = *(a1 + 3297);
  if (v4)
  {
    v5 = &xmmword_27B0550;
    if ((byte_27B0567 & 0x80000000) == 0)
    {
LABEL_3:
      v20 = *v5;
      v21 = v5[2];
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 99;
    if (*(a1 + 3298))
    {
      v6 = 102;
    }

    v5 = &qword_27B0250[v6];
    if ((*(v5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_325C(&v20, *v5, v5[1]);
  v4 = *(a1 + 3297);
LABEL_8:
  v7 = 114;
  if (v4)
  {
    v7 = 111;
  }

  v8 = &qword_27B05E0;
  if (v4)
  {
    v8 = &qword_27B05C8;
  }

  v9 = &xmmword_27B05E8 + 15;
  if (v4)
  {
    v9 = &xmmword_27B05D0 + 15;
  }

  if (*v9 < 0)
  {
    v10 = (v4 & 1) == 0;
    v11 = 114;
    if (!v10)
    {
      v11 = 111;
    }

    sub_325C(&v18, qword_27B0250[v7], qword_27B0250[v11 + 1]);
  }

  else
  {
    v18 = *v8;
    v19 = v8[2];
  }

  v12 = &v18;
  if (a2)
  {
    v13 = &v20;
  }

  else
  {
    v13 = &v18;
  }

  v14 = &v21 + 7;
  if (!a2)
  {
    v14 = &v19 + 7;
  }

  if (*v14 < 0)
  {
    if (a2)
    {
      v12 = &v20;
    }

    sub_325C(v16, *v13, *(v12 + 1));
  }

  else
  {
    *v16 = *v13;
    v17 = *(v13 + 2);
  }

  sub_8E4670(&v15, a1, 1, 0, 1);
  sub_680CB0(&v15, "_Intersection");
  sub_8E37F8(a1, &v15, v16);
}

void sub_8E54F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
    if ((*(v28 - 57) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v28 - 57) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v28 - 80));
  _Unwind_Resume(exception_object);
}