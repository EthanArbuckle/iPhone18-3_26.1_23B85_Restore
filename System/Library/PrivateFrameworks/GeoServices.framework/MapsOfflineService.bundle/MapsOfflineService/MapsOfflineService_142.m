uint64_t sub_8C8988(uint64_t a1, unint64_t a2)
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

BOOL sub_8C8CA4(uint64_t a1, uint64_t a2)
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

uint64_t sub_8C8FB0(uint64_t a1, uint64_t a2)
{
  sub_58D40C(a1, a2);
  v4 = *(a2 + 864);
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 864) = v4;
  v5 = *(a1 + 872);
  if (v5)
  {
    *(a1 + 880) = v5;
    operator delete(v5);
    *(a1 + 872) = 0;
    *(a1 + 880) = 0;
    *(a1 + 888) = 0;
  }

  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 880) = 0;
  *(a2 + 888) = 0;
  *(a2 + 872) = 0;
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  v6 = (a1 + 920);
  if (*(a1 + 943) < 0)
  {
    operator delete(*v6);
  }

  v7 = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *v6 = v7;
  *(a2 + 943) = 0;
  *(a2 + 920) = 0;
  v8 = (a1 + 944);
  if (*(a1 + 967) < 0)
  {
    operator delete(*v8);
  }

  v9 = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *v8 = v9;
  *(a2 + 967) = 0;
  *(a2 + 944) = 0;
  v10 = *(a1 + 968);
  if (v10)
  {
    v11 = (a1 + 968);
    v12 = *(a1 + 976);
    v13 = *(a1 + 968);
    if (v12 != v10)
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

      while (v12 != v10);
      v13 = *v11;
    }

    *(a1 + 976) = v10;
    operator delete(v13);
    *v11 = 0;
    *(a1 + 976) = 0;
    *(a1 + 984) = 0;
  }

  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a2 + 968) = 0;
  *(a2 + 976) = 0;
  *(a2 + 984) = 0;
  sub_593214(a1 + 992, (a2 + 992));
  *(a1 + 1032) = *(a2 + 1032);
  *(a1 + 1040) = *(a2 + 1040);
  v15 = *(a1 + 1048);
  if (v15)
  {
    v16 = (a1 + 1048);
    v17 = *(a1 + 1056);
    v18 = *(a1 + 1048);
    if (v17 != v15)
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

      while (v17 != v15);
      v18 = *v16;
    }

    *(a1 + 1056) = v15;
    operator delete(v18);
    *v16 = 0;
    *(a1 + 1056) = 0;
    *(a1 + 1064) = 0;
  }

  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1064) = 0;
  *(a2 + 1048) = 0u;
  sub_593214(a1 + 1072, (a2 + 1072));
  *(a1 + 1112) = *(a2 + 1112);
  return a1;
}

uint64_t sub_8C91BC(char *a1, char *a2, uint64_t a3, uint64_t a4)
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
        sub_8C936C(a1, a4, v9, v12);
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
            sub_8C936C(a1, a4, v9, a1);
          }
        }
      }
    }

    if (v8 >= 1121)
    {
      v17 = 0xAF8AF8AF8AF8AF8BLL * (v8 >> 5);
      do
      {
        sub_8C9600(a1, v6, a4, v17);
        v6 -= 1120;
      }

      while (v17-- > 2);
    }

    return i;
  }

  return a3;
}

void *sub_8C936C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_8C95EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8C9600(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_8C97B0(v6, v10 + 1120, a3, 0xAF8AF8AF8AF8AF8BLL * ((v10 + 1120 - v6) >> 5));
    }

    return sub_5938B0(v20);
  }

  return result;
}

void sub_8C9788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void sub_8C979C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8C97B0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_8C9928(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
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
        return sub_8CA3D0(v8, v7);
      }

      else
      {
        return sub_8CA588(v8, v7);
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
        result = sub_8CA6DC(v30, v29);
        v8 = result;
        goto LABEL_28;
      }
    }

LABEL_20:
    v7 = v29;
    v22 = sub_8CAA30(v30, v29);
    if ((v23 & 1) == 0)
    {
      goto LABEL_26;
    }

    v24 = sub_8CAD4C(v30, v22);
    v8 = (v22 + 1120);
    result = sub_8CAD4C(v22 + 1120, v7);
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
        result = sub_8C9928(v30, v22, a3, -v9, a5 & 1);
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
    return sub_8CB058(v8, v7, v7, a3);
  }

  return result;
}

uint64_t sub_8C9CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_681D5C(a2);
  if (v6 != sub_681D5C(a1))
  {
    v11 = sub_681D5C(a2);
    if (v11 <= sub_681D5C(a1))
    {
      goto LABEL_3;
    }

LABEL_7:
    v12 = sub_681D5C(a3);
    if (v12 == sub_681D5C(a2))
    {
      v13 = sub_681D54(a3);
      if (v13 <= sub_681D54(a2))
      {
LABEL_9:
        sub_7A5A3C(v24, a1);
        sub_8C8FB0(a1, a2);
        sub_8C8FB0(a2, v24);
        sub_5938B0(v24);
        v14 = sub_681D5C(a3);
        if (v14 == sub_681D5C(a2))
        {
          v15 = sub_681D54(a3);
          if (v15 <= sub_681D54(a2))
          {
            return 1;
          }
        }

        else
        {
          v21 = sub_681D5C(a3);
          if (v21 <= sub_681D5C(a2))
          {
            return 1;
          }
        }

        sub_7A5A3C(v24, a2);
        v20 = a2;
LABEL_20:
        sub_8C8FB0(v20, a3);
        v22 = a3;
LABEL_23:
        sub_8C8FB0(v22, v24);
        sub_5938B0(v24);
        return 1;
      }
    }

    else
    {
      v19 = sub_681D5C(a3);
      if (v19 <= sub_681D5C(a2))
      {
        goto LABEL_9;
      }
    }

    sub_7A5A3C(v24, a1);
    v20 = a1;
    goto LABEL_20;
  }

  v7 = sub_681D54(a2);
  if (v7 > sub_681D54(a1))
  {
    goto LABEL_7;
  }

LABEL_3:
  v8 = sub_681D5C(a3);
  if (v8 == sub_681D5C(a2))
  {
    v9 = sub_681D54(a3);
    if (v9 <= sub_681D54(a2))
    {
      return 0;
    }
  }

  else
  {
    v16 = sub_681D5C(a3);
    if (v16 <= sub_681D5C(a2))
    {
      return 0;
    }
  }

  sub_7A5A3C(v24, a2);
  sub_8C8FB0(a2, a3);
  sub_8C8FB0(a3, v24);
  sub_5938B0(v24);
  v17 = sub_681D5C(a2);
  if (v17 == sub_681D5C(a1))
  {
    v18 = sub_681D54(a2);
    if (v18 <= sub_681D54(a1))
    {
      return 1;
    }

    goto LABEL_22;
  }

  v23 = sub_681D5C(a2);
  if (v23 > sub_681D5C(a1))
  {
LABEL_22:
    sub_7A5A3C(v24, a1);
    sub_8C8FB0(a1, a2);
    v22 = a2;
    goto LABEL_23;
  }

  return 1;
}

void *sub_8C9F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_8C9CB4(a1, a2, a3);
  v8 = sub_681D5C(a4);
  if (v8 == sub_681D5C(a3))
  {
    v9 = sub_681D54(a4);
    result = sub_681D54(a3);
    if (v9 <= result)
    {
      return result;
    }
  }

  else
  {
    v11 = sub_681D5C(a4);
    result = sub_681D5C(a3);
    if (v11 <= result)
    {
      return result;
    }
  }

  sub_7A5A3C(v18, a3);
  sub_8C8FB0(a3, a4);
  sub_8C8FB0(a4, v18);
  sub_5938B0(v18);
  v12 = sub_681D5C(a3);
  if (v12 == sub_681D5C(a2))
  {
    v13 = sub_681D54(a3);
    result = sub_681D54(a2);
    if (v13 <= result)
    {
      return result;
    }
  }

  else
  {
    v14 = sub_681D5C(a3);
    result = sub_681D5C(a2);
    if (v14 <= result)
    {
      return result;
    }
  }

  sub_7A5A3C(v18, a2);
  sub_8C8FB0(a2, a3);
  sub_8C8FB0(a3, v18);
  sub_5938B0(v18);
  v15 = sub_681D5C(a2);
  if (v15 == sub_681D5C(a1))
  {
    v16 = sub_681D54(a2);
    result = sub_681D54(a1);
    if (v16 > result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = sub_681D5C(a2);
    result = sub_681D5C(a1);
    if (v17 > result)
    {
LABEL_13:
      sub_7A5A3C(v18, a1);
      sub_8C8FB0(a1, a2);
      sub_8C8FB0(a2, v18);
      return sub_5938B0(v18);
    }
  }

  return result;
}

void *sub_8CA168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_8C9F7C(a1, a2, a3, a4);
  v10 = sub_681D5C(a5);
  if (v10 == sub_681D5C(a4))
  {
    v11 = sub_681D54(a5);
    result = sub_681D54(a4);
    if (v11 <= result)
    {
      return result;
    }
  }

  else
  {
    v13 = sub_681D5C(a5);
    result = sub_681D5C(a4);
    if (v13 <= result)
    {
      return result;
    }
  }

  sub_7A5A3C(v23, a4);
  sub_8C8FB0(a4, a5);
  sub_8C8FB0(a5, v23);
  sub_5938B0(v23);
  v14 = sub_681D5C(a4);
  if (v14 == sub_681D5C(a3))
  {
    v15 = sub_681D54(a4);
    result = sub_681D54(a3);
    if (v15 <= result)
    {
      return result;
    }
  }

  else
  {
    v16 = sub_681D5C(a4);
    result = sub_681D5C(a3);
    if (v16 <= result)
    {
      return result;
    }
  }

  sub_7A5A3C(v23, a3);
  sub_8C8FB0(a3, a4);
  sub_8C8FB0(a4, v23);
  sub_5938B0(v23);
  v17 = sub_681D5C(a3);
  if (v17 == sub_681D5C(a2))
  {
    v18 = sub_681D54(a3);
    result = sub_681D54(a2);
    if (v18 <= result)
    {
      return result;
    }
  }

  else
  {
    v19 = sub_681D5C(a3);
    result = sub_681D5C(a2);
    if (v19 <= result)
    {
      return result;
    }
  }

  sub_7A5A3C(v23, a2);
  sub_8C8FB0(a2, a3);
  sub_8C8FB0(a3, v23);
  sub_5938B0(v23);
  v20 = sub_681D5C(a2);
  if (v20 != sub_681D5C(a1))
  {
    v22 = sub_681D5C(a2);
    result = sub_681D5C(a1);
    if (v22 <= result)
    {
      return result;
    }

    goto LABEL_17;
  }

  v21 = sub_681D54(a2);
  result = sub_681D54(a1);
  if (v21 > result)
  {
LABEL_17:
    sub_7A5A3C(v23, a1);
    sub_8C8FB0(a1, a2);
    sub_8C8FB0(a2, v23);
    return sub_5938B0(v23);
  }

  return result;
}

uint64_t sub_8CA3D0(uint64_t result, uint64_t a2)
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

uint64_t sub_8CA588(uint64_t result, uint64_t a2)
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

unint64_t sub_8CA6DC(uint64_t a1, unint64_t a2)
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

uint64_t sub_8CAA30(uint64_t a1, unint64_t a2)
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

BOOL sub_8CAD4C(uint64_t a1, uint64_t a2)
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

uint64_t sub_8CB058(char *a1, char *a2, uint64_t a3, uint64_t a4)
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
        sub_8CB208(a1, a4, v9, v12);
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
            sub_8CB208(a1, a4, v9, a1);
          }
        }
      }
    }

    if (v8 >= 1121)
    {
      v17 = 0xAF8AF8AF8AF8AF8BLL * (v8 >> 5);
      do
      {
        sub_8CB49C(a1, v6, a4, v17);
        v6 -= 1120;
      }

      while (v17-- > 2);
    }

    return i;
  }

  return a3;
}

void *sub_8CB208(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_8CB488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8CB49C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_8CB64C(v6, v10 + 1120, a3, 0xAF8AF8AF8AF8AF8BLL * ((v10 + 1120 - v6) >> 5));
    }

    return sub_5938B0(v20);
  }

  return result;
}

void sub_8CB624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void sub_8CB638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8CB64C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_8CB7C4(int *a1, int *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
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

      sub_8CBA44(a1, a2);
    }

    else
    {
      v10 = a5;
      v12 = a4 >> 1;
      v13 = &a1[112 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_8CBFF4(a1, &a1[112 * (a4 >> 1)], a3, a4 >> 1, a5);
        v20 = a4 - v12;
        v21 = &v10[56 * v12];
        sub_8CBFF4(v13, a2, a3, v20, v21);
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
        sub_8CB7C4(a1, &a1[112 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v17 = a4 - v12;
        sub_8CB7C4(v13, a2, a3, v17, v10, a6);

        sub_8CCC30(a1, v13, a2, a3, v12, v17, v10, a6);
      }
    }
  }
}

void sub_8CBA30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8CBA44(int *a1, int *a2)
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

void sub_8CBFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_682DB0(va);
  _Unwind_Resume(a1);
}

void sub_8CBFF4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      sub_8CB7C4(a1, v28 + a1, a3, v27, a5, v27);
      sub_8CB7C4(v28 + a1, a2, a3, a4 - v27, a5 + v28, a4 - v27);

      sub_8CDAD0(a1, (v28 + a1), v28 + a1, a2, a5);
    }

    else
    {

      sub_8CD3EC(a1, a2, a5);
    }
  }
}

void sub_8CC8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

__n128 sub_8CC900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (a1 == a2)
  {
LABEL_15:
    while (a3 != a4)
    {
      sub_592E78(v5, a3);
      v20 = *(a3 + 396);
      *(v5 + 380) = *(a3 + 380);
      *(v5 + 396) = v20;
      v21 = *(v5 + 400);
      if (v21)
      {
        *(v5 + 408) = v21;
        operator delete(v21);
        *(v5 + 400) = 0;
        *(v5 + 408) = 0;
        *(v5 + 416) = 0;
      }

      *(v5 + 400) = *(a3 + 400);
      *(v5 + 416) = *(a3 + 416);
      *(a3 + 408) = 0;
      *(a3 + 400) = 0;
      *(a3 + 416) = 0;
      result = *(a3 + 424);
      *(v5 + 440) = *(a3 + 440);
      *(v5 + 424) = result;
      v5 += 448;
      a3 += 448;
    }

    return result;
  }

  v9 = a1;
  v10 = a5 + 380;
  while (1)
  {
    v12 = v10 - 380;
    if (a3 == a4)
    {
      break;
    }

    v13 = sub_681D54(a3);
    if (v13 == sub_681D54(v9))
    {
      v14 = sub_681D5C(a3);
      if (v14 > sub_681D5C(v9))
      {
        goto LABEL_10;
      }

LABEL_7:
      sub_592E78(v10 - 380, v9);
      v15 = *(v9 + 396);
      *v10 = *(v9 + 380);
      *(v10 + 16) = v15;
      v16 = *(v10 + 20);
      if (v16)
      {
        *(v10 + 28) = v16;
        operator delete(v16);
        *(v10 + 20) = 0;
        *(v10 + 28) = 0;
        *(v10 + 36) = 0;
      }

      *(v10 + 20) = *(v9 + 400);
      *(v10 + 36) = *(v9 + 416);
      *(v9 + 400) = 0;
      *(v9 + 408) = 0;
      *(v9 + 416) = 0;
      result = *(v9 + 424);
      *(v10 + 60) = *(v9 + 440);
      *(v10 + 44) = result;
      v9 += 448;
      v10 += 448;
      if (v9 == a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v17 = sub_681D54(a3);
      if (v17 <= sub_681D54(v9))
      {
        goto LABEL_7;
      }

LABEL_10:
      sub_592E78(v10 - 380, a3);
      v18 = *(a3 + 396);
      *v10 = *(a3 + 380);
      *(v10 + 16) = v18;
      v19 = *(v10 + 20);
      if (v19)
      {
        *(v10 + 28) = v19;
        operator delete(v19);
        *(v10 + 20) = 0;
        *(v10 + 28) = 0;
        *(v10 + 36) = 0;
      }

      *(v10 + 20) = *(a3 + 400);
      *(v10 + 36) = *(a3 + 416);
      *(a3 + 400) = 0;
      *(a3 + 408) = 0;
      *(a3 + 416) = 0;
      result = *(a3 + 424);
      *(v10 + 60) = *(a3 + 440);
      *(v10 + 44) = result;
      a3 += 448;
      v10 += 448;
      if (v9 == a2)
      {
LABEL_13:
        v5 = v10 - 380;
        goto LABEL_15;
      }
    }
  }

  while (v9 != a2)
  {
    sub_592E78(v12, v9);
    v22 = *(v9 + 396);
    *(v12 + 380) = *(v9 + 380);
    *(v12 + 396) = v22;
    v23 = *(v12 + 400);
    if (v23)
    {
      *(v12 + 408) = v23;
      operator delete(v23);
      *(v12 + 400) = 0;
      *(v12 + 408) = 0;
      *(v12 + 416) = 0;
    }

    *(v12 + 400) = *(v9 + 400);
    *(v12 + 416) = *(v9 + 416);
    *(v9 + 408) = 0;
    *(v9 + 400) = 0;
    *(v9 + 416) = 0;
    result = *(v9 + 424);
    *(v12 + 440) = *(v9 + 440);
    *(v12 + 424) = result;
    v12 += 448;
    v9 += 448;
  }

  return result;
}

void **sub_8CCBB4(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      do
      {
        v5 = v2[50];
        if (v5)
        {
          v2[51] = v5;
          operator delete(v5);
        }

        sub_55D550(v2);
        ++v4;
        v2 += 56;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void sub_8CCC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

      sub_8CE184(a1, a2, a3, a4, a5, v9, a7);
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
        sub_8CCC30(v46 + v14, v24, a3, a4, v31, v21, a7, v45);
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

      sub_8CCC30(a3, v23, v44, a4, -v15 - v25, v43 - v21, a7, v45);
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

void sub_8CD108(uint64_t a1, uint64_t a2)
{
  v28 = *a1;
  *v29 = *(a1 + 8);
  v30 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v4;
  v35 = *(a1 + 96);
  v36 = *(a1 + 112);
  v5 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v5;
  v37 = *(a1 + 120);
  v38 = *(a1 + 136);
  v39 = *(a1 + 152);
  *v40 = *(a1 + 160);
  v6 = *(a1 + 176);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *v42 = *(a1 + 184);
  v7 = *(a1 + 200);
  v41 = v6;
  v43 = v7;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v8 = *(a1 + 224);
  v44 = *(a1 + 208);
  v45 = v8;
  v9 = *(a1 + 240);
  v10 = *(a1 + 272);
  v11 = *(a1 + 288);
  v47 = *(a1 + 256);
  v48 = v10;
  v46 = v9;
  v50 = *(a1 + 296);
  v12 = *(a1 + 312);
  v49 = v11;
  v51 = v12;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  v52 = *(a1 + 320);
  __p = *(a1 + 328);
  v54 = *(a1 + 344);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v13 = *(a1 + 352);
  *&v55[9] = *(a1 + 361);
  *v55 = v13;
  v14 = (a1 + 380);
  v15 = *(a1 + 396);
  v56 = *(a1 + 380);
  v57 = v15;
  v58 = *(a1 + 400);
  v59 = *(a1 + 416);
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  v16 = a1 + 424;
  v17 = *(a1 + 440);
  v60 = *(a1 + 424);
  v61 = v17;
  sub_592E78(a1, a2);
  v18 = *(a2 + 396);
  *v14 = *(a2 + 380);
  *(a1 + 396) = v18;
  v19 = *(a1 + 400);
  if (v19)
  {
    *(a1 + 408) = v19;
    operator delete(v19);
    *(a1 + 400) = 0;
    *(a1 + 408) = 0;
    *(a1 + 416) = 0;
  }

  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  v20 = *(a2 + 424);
  *(v16 + 16) = *(a2 + 440);
  *v16 = v20;
  sub_592E78(a2, &v28);
  *(a2 + 380) = v56;
  *(a2 + 396) = v57;
  v21 = *(a2 + 400);
  if (v21)
  {
    *(a2 + 408) = v21;
    operator delete(v21);
  }

  *(a2 + 400) = v58;
  *(a2 + 416) = v59;
  v59 = 0;
  v58 = 0uLL;
  *(a2 + 424) = v60;
  *(a2 + 440) = v61;
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  v22 = v50;
  if (v50)
  {
    v23 = *(&v50 + 1);
    v24 = v50;
    if (*(&v50 + 1) != v50)
    {
      do
      {
        v23 = sub_662AC8(v23 - 13);
      }

      while (v23 != v22);
      v24 = v50;
    }

    *(&v50 + 1) = v22;
    operator delete(v24);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  v25 = v29[0];
  if (v29[0])
  {
    v26 = v29[1];
    v27 = v29[0];
    if (v29[1] != v29[0])
    {
      do
      {
        v26 = sub_53A868(v26 - 160);
      }

      while (v26 != v25);
      v27 = v29[0];
    }

    v29[1] = v25;
    operator delete(v27);
  }
}

__n128 sub_8CD3EC(uint64_t a1, _DWORD *a2, uint64_t a3)
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

void sub_8CDAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8CDABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

__n128 sub_8CDAD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void sub_8CE170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8CE184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

void sub_8CE584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8CE598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

__n128 sub_8CE5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a2)
  {
    return result;
  }

  v8 = a1;
  v9 = a5 + 380;
  while (1)
  {
    v11 = v9 - 380;
    if (a3 == a4)
    {
      break;
    }

    v12 = sub_681D54(a3);
    if (v12 == sub_681D54(v8))
    {
      v13 = sub_681D5C(a3);
      if (v13 > sub_681D5C(v8))
      {
        goto LABEL_10;
      }

LABEL_7:
      sub_592E78(v9 - 380, v8);
      v14 = *(v8 + 396);
      *v9 = *(v8 + 380);
      *(v9 + 16) = v14;
      v15 = *(v9 + 20);
      if (v15)
      {
        *(v9 + 28) = v15;
        operator delete(v15);
        *(v9 + 20) = 0;
        *(v9 + 28) = 0;
        *(v9 + 36) = 0;
      }

      *(v9 + 20) = *(v8 + 400);
      *(v9 + 36) = *(v8 + 416);
      *(v8 + 400) = 0;
      *(v8 + 408) = 0;
      *(v8 + 416) = 0;
      result = *(v8 + 424);
      *(v9 + 60) = *(v8 + 440);
      *(v9 + 44) = result;
      v8 += 448;
      v9 += 448;
      if (v8 == a2)
      {
        return result;
      }
    }

    else
    {
      v16 = sub_681D54(a3);
      if (v16 <= sub_681D54(v8))
      {
        goto LABEL_7;
      }

LABEL_10:
      sub_592E78(v9 - 380, a3);
      v17 = *(a3 + 396);
      *v9 = *(a3 + 380);
      *(v9 + 16) = v17;
      v18 = *(v9 + 20);
      if (v18)
      {
        *(v9 + 28) = v18;
        operator delete(v18);
        *(v9 + 20) = 0;
        *(v9 + 28) = 0;
        *(v9 + 36) = 0;
      }

      *(v9 + 20) = *(a3 + 400);
      *(v9 + 36) = *(a3 + 416);
      *(a3 + 400) = 0;
      *(a3 + 408) = 0;
      *(a3 + 416) = 0;
      result = *(a3 + 424);
      *(v9 + 60) = *(a3 + 440);
      *(v9 + 44) = result;
      a3 += 448;
      v9 += 448;
      if (v8 == a2)
      {
        return result;
      }
    }
  }

  do
  {
    sub_592E78(v11, v8);
    v19 = v8 + 380;
    v20 = *(v8 + 396);
    *(v11 + 380) = *(v8 + 380);
    *(v11 + 396) = v20;
    v21 = *(v11 + 400);
    if (v21)
    {
      *(v11 + 408) = v21;
      operator delete(v21);
      *(v11 + 400) = 0;
      *(v11 + 408) = 0;
      *(v11 + 416) = 0;
    }

    *(v11 + 400) = *(v8 + 400);
    *(v11 + 416) = *(v8 + 416);
    *(v8 + 408) = 0;
    *(v8 + 400) = 0;
    *(v8 + 416) = 0;
    result = *(v8 + 424);
    *(v11 + 440) = *(v8 + 440);
    *(v11 + 424) = result;
    v11 += 448;
    v8 += 448;
  }

  while (v19 + 68 != a2);
  return result;
}

void sub_8CE7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 == a4)
  {
    return;
  }

  v13 = a2;
  v14 = a10;
  v15 = a10 - 68;
  while (a6 != a8)
  {
    v20 = a6 - 448;
    v22 = v13 - 448;
    v23 = sub_681D54(v13 - 448);
    if (v23 == sub_681D54(a6 - 448))
    {
      v24 = sub_681D5C(v13 - 448);
      if (v24 > sub_681D5C(a6 - 448))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v25 = sub_681D54(v13 - 448);
      if (v25 > sub_681D54(a6 - 448))
      {
LABEL_11:
        sub_592E78(v15 - 380, a6 - 448);
        v26 = *(a6 - 52);
        *v15 = *(a6 - 68);
        *(v15 + 16) = v26;
        v18 = (v14 - 48);
        v17 = *(v15 + 20);
        v19 = a6;
        v22 = v13;
        if (!v17)
        {
          goto LABEL_5;
        }

LABEL_4:
        *(v15 + 28) = v17;
        operator delete(v17);
        *v18 = 0;
        v18[1] = 0;
        v13 = v22;
        v18[2] = 0;
        goto LABEL_5;
      }
    }

    sub_592E78(v15 - 380, v13 - 448);
    v16 = *(v13 - 52);
    *v15 = *(v13 - 68);
    *(v15 + 16) = v16;
    v18 = (v15 + 20);
    v17 = *(v15 + 20);
    v19 = v13;
    v20 = a6;
    v13 -= 448;
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_5:
    *v18 = *(v19 - 48);
    *(v15 + 28) = *(v19 - 40);
    *(v19 - 48) = 0;
    *(v19 - 40) = 0;
    *(v19 - 32) = 0;
    v21 = *(v19 - 24);
    *(v15 + 60) = *(v19 - 8);
    *(v15 + 44) = v21;
    v14 -= 448;
    v15 -= 448;
    a6 = v20;
    if (v13 == a4)
    {
      return;
    }
  }

  if (a4 != v13)
  {
    v27 = 0;
    do
    {
      v29 = v13 + v27;
      v30 = v15 + v27;
      sub_592E78(v15 + v27 - 380, v13 + v27 - 448);
      v31 = *(v13 + v27 - 52);
      *v30 = *(v13 + v27 - 68);
      *(v30 + 16) = v31;
      v33 = (v15 + v27 + 20);
      v32 = *v33;
      if (*v33)
      {
        *(v30 + 28) = v32;
        operator delete(v32);
        *v33 = 0;
        *(v30 + 28) = 0;
        *(v30 + 36) = 0;
      }

      *v33 = *(v29 - 48);
      *(v30 + 36) = *(v29 - 32);
      *(v29 - 48) = 0;
      *(v29 - 40) = 0;
      *(v29 - 32) = 0;
      v28 = *(v29 - 24);
      *(v30 + 60) = *(v29 - 8);
      *(v30 + 44) = v28;
      v27 -= 448;
    }

    while (v13 + v27 != a4);
  }
}

uint64_t sub_8CE9E8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
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
          return sub_8C7C0C(v8, (v8 + 1120), (v7 - 1120));
        case 4uLL:
          v29 = (v7 - 1120);
          return sub_8C7ED4(v8, (v8 + 1120), (v8 + 2240), (v7 - 1120));
        case 5uLL:
          v29 = (v7 - 1120);
          return sub_8C80C0(v8, (v8 + 1120), (v8 + 2240), (v8 + 3360), (v7 - 1120));
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
        v25 = sub_681D54((v7 - 1120));
        if (v25 == sub_681D54(v8))
        {
          v26 = sub_681D5C((v7 - 1120));
          result = sub_681D5C(v8);
          if (v26 <= result)
          {
            return result;
          }
        }

        else
        {
          v27 = sub_681D54((v7 - 1120));
          result = sub_681D54(v8);
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
        return sub_8CED74(v8, v7);
      }

      else
      {
        return sub_8CEF2C(v8, v7);
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
      sub_8C7C0C(&v8[1120 * (v11 >> 1)], v8, v13);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_8C7C0C(v8, &v8[1120 * (v11 >> 1)], v13);
      v14 = 1120 * v12;
      v15 = 1120 * v12 - 1120;
      v16 = v29;
      sub_8C7C0C((v30 + 1120), &v30[v15], v29 - 2240);
      sub_8C7C0C((v30 + 2240), &v30[v14 + 1120], v16 - 3360);
      sub_8C7C0C(&v30[v15], &v30[v14], &v30[v14 + 1120]);
      v28 = &v30[v14];
      sub_8C7BAC(&v30, &v28);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = v30;
    v18 = (v30 - 1120);
    v19 = sub_681D54((v30 - 1120));
    if (v19 == sub_681D54(v17))
    {
      v20 = sub_681D5C(v18);
      if (v20 <= sub_681D5C(v17))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21 = sub_681D54(v18);
      if (v21 <= sub_681D54(v17))
      {
LABEL_27:
        v7 = v29;
        result = sub_8CF080(v30, v29);
        v8 = result;
        goto LABEL_28;
      }
    }

LABEL_20:
    v7 = v29;
    v22 = sub_8CF3D4(v30, v29);
    if ((v23 & 1) == 0)
    {
      goto LABEL_26;
    }

    v24 = sub_8CF6F0(v30, v22);
    v8 = (v22 + 1120);
    result = sub_8CF6F0(v22 + 1120, v7);
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
        result = sub_8CE9E8(v30, v22, a3, -v9, a5 & 1);
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
    return sub_8CF9FC(v8, v7, v7, a3);
  }

  return result;
}

uint64_t sub_8CED74(uint64_t result, uint64_t a2)
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

uint64_t sub_8CEF2C(uint64_t result, uint64_t a2)
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

unint64_t sub_8CF080(uint64_t a1, unint64_t a2)
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

uint64_t sub_8CF3D4(uint64_t a1, unint64_t a2)
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

BOOL sub_8CF6F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_8CF9FC(char *a1, char *a2, uint64_t a3, uint64_t a4)
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
        sub_8CFBAC(a1, a4, v9, v12);
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
            sub_8CFBAC(a1, a4, v9, a1);
          }
        }
      }
    }

    if (v8 >= 1121)
    {
      v17 = 0xAF8AF8AF8AF8AF8BLL * (v8 >> 5);
      do
      {
        sub_8CFE40(a1, v6, a4, v17);
        v6 -= 1120;
      }

      while (v17-- > 2);
    }

    return i;
  }

  return a3;
}

void *sub_8CFBAC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_8CFE2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8CFE40(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_8CFFF0(v6, v10 + 1120, a3, 0xAF8AF8AF8AF8AF8BLL * ((v10 + 1120 - v6) >> 5));
    }

    return sub_5938B0(v20);
  }

  return result;
}

void sub_8CFFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void sub_8CFFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8CFFF0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_8D0168(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
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
        return sub_8D04F4(v8, v7);
      }

      else
      {
        return sub_8D06AC(v8, v7);
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
        result = sub_8D0800(v30, v29);
        v8 = result;
        goto LABEL_28;
      }
    }

LABEL_20:
    v7 = v29;
    v22 = sub_8D0B54(v30, v29);
    if ((v23 & 1) == 0)
    {
      goto LABEL_26;
    }

    v24 = sub_8D0E70(v30, v22);
    v8 = (v22 + 1120);
    result = sub_8D0E70(v22 + 1120, v7);
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
        result = sub_8D0168(v30, v22, a3, -v9, a5 & 1);
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
    return sub_8D117C(v8, v7, v7, a3);
  }

  return result;
}

uint64_t sub_8D04F4(uint64_t result, uint64_t a2)
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

uint64_t sub_8D06AC(uint64_t result, uint64_t a2)
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

unint64_t sub_8D0800(uint64_t a1, unint64_t a2)
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

uint64_t sub_8D0B54(uint64_t a1, unint64_t a2)
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

BOOL sub_8D0E70(uint64_t a1, uint64_t a2)
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

uint64_t sub_8D117C(char *a1, char *a2, uint64_t a3, uint64_t a4)
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
        sub_8D132C(a1, a4, v9, v12);
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
            sub_8D132C(a1, a4, v9, a1);
          }
        }
      }
    }

    if (v8 >= 1121)
    {
      v17 = 0xAF8AF8AF8AF8AF8BLL * (v8 >> 5);
      do
      {
        sub_8D15C0(a1, v6, a4, v17);
        v6 -= 1120;
      }

      while (v17-- > 2);
    }

    return i;
  }

  return a3;
}

void *sub_8D132C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_8D15AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8D15C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_8D1770(v6, v10 + 1120, a3, 0xAF8AF8AF8AF8AF8BLL * ((v10 + 1120 - v6) >> 5));
    }

    return sub_5938B0(v20);
  }

  return result;
}

void sub_8D1748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void sub_8D175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5938B0(va);
  _Unwind_Resume(a1);
}

void *sub_8D1770(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_8D18E8(int *a1, int *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
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

      sub_8D1B68(a1, a2);
    }

    else
    {
      v10 = a5;
      v12 = a4 >> 1;
      v13 = &a1[112 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_8D2118(a1, &a1[112 * (a4 >> 1)], a3, a4 >> 1, a5);
        v20 = a4 - v12;
        v21 = &v10[56 * v12];
        sub_8D2118(v13, a2, a3, v20, v21);
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
        sub_8D18E8(a1, &a1[112 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v17 = a4 - v12;
        sub_8D18E8(v13, a2, a3, v17, v10, a6);

        sub_8D2A24(a1, v13, a2, a3, v12, v17, v10, a6);
      }
    }
  }
}

void sub_8D1B54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D1B68(int *a1, int *a2)
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

void sub_8D2104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_682DB0(va);
  _Unwind_Resume(a1);
}

void sub_8D2118(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      sub_8D18E8(a1, v28 + a1, a3, v27, a5, v27);
      sub_8D18E8(v28 + a1, a2, a3, a4 - v27, a5 + v28, a4 - v27);

      sub_8D35E0(a1, (v28 + a1), v28 + a1, a2, a5);
    }

    else
    {

      sub_8D2EFC(a1, a2, a5);
    }
  }
}

void sub_8D2A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

      sub_8D3C94(a1, a2, a3, a4, a5, v9, a7);
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
        sub_8D2A24(v46 + v14, v24, a3, a4, v31, v21, a7, v45);
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

      sub_8D2A24(a3, v23, v44, a4, -v15 - v25, v43 - v21, a7, v45);
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

__n128 sub_8D2EFC(uint64_t a1, _DWORD *a2, uint64_t a3)
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

void sub_8D35B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D35CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

__n128 sub_8D35E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void sub_8D3C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D3C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

void sub_8D4094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

void sub_8D40A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_8CCBB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8D40BC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
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
          return sub_8C7C0C(v8, (v8 + 1120), (v7 - 1120));
        case 4uLL:
          v29 = (v7 - 1120);
          return sub_8C7ED4(v8, (v8 + 1120), (v8 + 2240), (v7 - 1120));
        case 5uLL:
          v29 = (v7 - 1120);
          return sub_8C80C0(v8, (v8 + 1120), (v8 + 2240), (v8 + 3360), (v7 - 1120));
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
        v25 = sub_681D54((v7 - 1120));
        if (v25 == sub_681D54(v8))
        {
          v26 = sub_681D5C((v7 - 1120));
          result = sub_681D5C(v8);
          if (v26 <= result)
          {
            return result;
          }
        }

        else
        {
          v27 = sub_681D54((v7 - 1120));
          result = sub_681D54(v8);
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
        return sub_8D4448(v8, v7);
      }

      else
      {
        return sub_8D4600(v8, v7);
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
      sub_8C7C0C(&v8[1120 * (v11 >> 1)], v8, v13);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_8C7C0C(v8, &v8[1120 * (v11 >> 1)], v13);
      v14 = 1120 * v12;
      v15 = 1120 * v12 - 1120;
      v16 = v29;
      sub_8C7C0C((v30 + 1120), &v30[v15], v29 - 2240);
      sub_8C7C0C((v30 + 2240), &v30[v14 + 1120], v16 - 3360);
      sub_8C7C0C(&v30[v15], &v30[v14], &v30[v14 + 1120]);
      v28 = &v30[v14];
      sub_8C7BAC(&v30, &v28);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = v30;
    v18 = (v30 - 1120);
    v19 = sub_681D54((v30 - 1120));
    if (v19 == sub_681D54(v17))
    {
      v20 = sub_681D5C(v18);
      if (v20 <= sub_681D5C(v17))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21 = sub_681D54(v18);
      if (v21 <= sub_681D54(v17))
      {
LABEL_27:
        v7 = v29;
        result = sub_8D4754(v30, v29);
        v8 = result;
        goto LABEL_28;
      }
    }

LABEL_20:
    v7 = v29;
    v22 = sub_8D4AA8(v30, v29);
    if ((v23 & 1) == 0)
    {
      goto LABEL_26;
    }

    v24 = sub_8D4DC4(v30, v22);
    v8 = (v22 + 1120);
    result = sub_8D4DC4(v22 + 1120, v7);
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
        result = sub_8D40BC(v30, v22, a3, -v9, a5 & 1);
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
    return sub_8D50D0(v8, v7, v7, a3);
  }

  return result;
}