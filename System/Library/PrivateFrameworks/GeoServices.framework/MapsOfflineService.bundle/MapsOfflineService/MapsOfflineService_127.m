uint64_t sub_7F8FBC(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v27[11] = v4;
    v27[12] = v5;
    v7 = a4;
    v8 = result;
    v26 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v11 = (a4 - result) >> 2;
      v12 = v11 + 1;
      v13 = (result + 8 * (v11 + 1));
      v14 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v15 = *a2;
        v16 = sub_7F20E8(*a2, (result + 8 * (v11 + 1)));
        if (v16 > sub_7F20E8(v15, v13 + 2))
        {
          v13 += 2;
          v12 = v14;
        }
      }

      v17 = *a2;
      v18 = sub_7F20E8(*a2, v13);
      result = sub_7F20E8(v17, v7);
      if (v18 <= result)
      {
        v27[0] = *v7;
        do
        {
          v21 = v13;
          *v7 = *v13;
          if (v26 < v12)
          {
            break;
          }

          v22 = (2 * v12) | 1;
          v13 = (v8 + 8 * v22);
          v23 = 2 * v12 + 2;
          if (v23 < a3)
          {
            v24 = *a2;
            v25 = sub_7F20E8(*a2, (v8 + 8 * v22));
            if (v25 > sub_7F20E8(v24, v13 + 2))
            {
              v13 += 2;
              v22 = v23;
            }
          }

          v19 = *a2;
          v20 = sub_7F20E8(*a2, v13);
          result = sub_7F20E8(v19, v27);
          v7 = v21;
          v12 = v22;
        }

        while (v20 <= result);
        *v21 = v27[0];
      }
    }
  }

  return result;
}

char *sub_7F914C(char *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v32[11] = v4;
    v32[12] = v5;
    v8 = 0;
    v31 = *result;
    v9 = (a4 - 2) >> 1;
    v29 = result;
    v10 = result;
    do
    {
      v11 = &v10[2 * v8];
      v12 = v11 + 2;
      v13 = (2 * v8) | 1;
      v14 = 2 * v8 + 2;
      if (v14 < a4)
      {
        v15 = v11 + 4;
        v16 = *a3;
        v17 = sub_7F20E8(*a3, v11 + 2);
        result = sub_7F20E8(v16, v15);
        if (v17 > result)
        {
          v12 = v15;
          v13 = v14;
        }
      }

      *v10 = *v12;
      v10 = v12;
      v8 = v13;
    }

    while (v13 <= v9);
    v18 = (a2 - 8);
    if (v12 == (a2 - 8))
    {
      *v12 = v31;
    }

    else
    {
      *v12 = *v18;
      *v18 = v31;
      v19 = (v12 - v29 + 8) >> 3;
      v20 = v19 < 2;
      v21 = v19 - 2;
      if (!v20)
      {
        v22 = v21 >> 1;
        v23 = &v29[8 * (v21 >> 1)];
        v24 = *a3;
        v25 = sub_7F20E8(*a3, v23);
        result = sub_7F20E8(v24, v12);
        if (v25 > result)
        {
          v32[0] = *v12;
          do
          {
            v26 = v23;
            *v12 = *v23;
            if (!v22)
            {
              break;
            }

            v22 = (v22 - 1) >> 1;
            v23 = &v29[8 * v22];
            v27 = *a3;
            v28 = sub_7F20E8(*a3, v23);
            result = sub_7F20E8(v27, v32);
            v12 = v26;
          }

          while (v28 > result);
          *v26 = v32[0];
        }
      }
    }
  }

  return result;
}

uint64_t sub_7F92F8(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 2;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          return sub_7F97F8(v10, v10 + 2, v9, a3);
        case 4uLL:

          return sub_7F9954(v10, v10 + 2, v10 + 4, v9, a3);
        case 5uLL:

          return sub_7F9A4C(v10, v10 + 2, v10 + 4, v10 + 6, v9, a3);
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
        v25 = *a3;
        v26 = sub_7F69E4(v25, v9);
        result = sub_7F69E4(v25, v10);
        if (v26 > result)
        {
          v27 = *v10;
          *v10 = *v9;
          *v9 = v27;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v40 = (v13 - 2) >> 1;
        v41 = v40 + 1;
        v42 = &v10[2 * v40];
        do
        {
          sub_7FA0E0(v10, a3, (a2 - v10) >> 3, v42);
          v42 -= 2;
          --v41;
        }

        while (v41);
        do
        {
          result = sub_7FA270(v10, a2, a3, v13);
          a2 -= 2;
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[2 * (v13 >> 1)];
    if (v13 < 0x81)
    {
      sub_7F97F8(&v8[2 * (v13 >> 1)], v8, v9, a3);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_7F97F8(v8, &v8[2 * (v13 >> 1)], v9, a3);
      v51 = v12;
      v16 = a5;
      v17 = v9;
      v18 = &v8[2 * v14];
      sub_7F97F8(v8 + 2, v18 - 2, a2 - 4, a3);
      sub_7F97F8(v8 + 4, &v8[2 * v14 + 2], a2 - 6, a3);
      sub_7F97F8(v18 - 2, v15, &v8[2 * v14 + 2], a3);
      v19 = *v8;
      *v8 = *v18;
      *v18 = v19;
      v9 = v17;
      a5 = v16;
      v12 = v51;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v20 = *a3;
    v21 = sub_7F69E4(*a3, v8 - 2);
    if (v21 <= sub_7F69E4(v20, v8))
    {
      result = sub_7F9B80(v8, a2, a3);
      v10 = result;
      goto LABEL_23;
    }

LABEL_18:
    v22 = sub_7F9D2C(v8, a2, a3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    v24 = sub_7F9EC8(v8, v22, a3);
    v10 = v22 + 2;
    result = sub_7F9EC8(v22 + 2, a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v24)
    {
LABEL_21:
      result = sub_7F92F8(v8, v22, a3, -v12, a5 & 1);
      v10 = v22 + 2;
LABEL_23:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v28 = v10 + 2;
  v30 = v10 == a2 || v28 == a2;
  if (a5)
  {
    if (!v30)
    {
      v31 = 0;
      v32 = v10;
      do
      {
        v34 = v32;
        v32 = v28;
        v35 = *a3;
        v36 = sub_7F69E4(*a3, v28);
        result = sub_7F69E4(v35, v34);
        if (v36 > result)
        {
          v52 = *v32;
          v37 = v31;
          do
          {
            *(v10 + v37 + 8) = *(v10 + v37);
            if (!v37)
            {
              v33 = v10;
              goto LABEL_47;
            }

            v37 -= 8;
            v38 = *a3;
            v39 = sub_7F69E4(*a3, &v52);
            result = sub_7F69E4(v38, (v10 + v37));
          }

          while (v39 > result);
          v33 = (v10 + v37 + 8);
LABEL_47:
          *v33 = v52;
        }

        v28 = v32 + 2;
        v31 += 8;
      }

      while (v32 + 2 != a2);
    }
  }

  else if (!v30)
  {
    v44 = v10 - 2;
    do
    {
      v45 = v8;
      v8 = v28;
      v46 = *a3;
      v47 = sub_7F69E4(*a3, v28);
      result = sub_7F69E4(v46, v45);
      if (v47 > result)
      {
        v52 = *v8;
        v48 = v44;
        do
        {
          *(v48 + 2) = *(v48 + 1);
          v49 = *a3;
          v50 = sub_7F69E4(*a3, &v52);
          result = sub_7F69E4(v49, v48);
          v48 -= 2;
        }

        while (v50 > result);
        *(v48 + 2) = v52;
      }

      v28 = v8 + 2;
      v44 += 2;
    }

    while (v8 + 2 != a2);
  }

  return result;
}

uint64_t sub_7F97F8(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = sub_7F69E4(*a4, a2);
  v10 = sub_7F69E4(v8, a1);
  v11 = *a4;
  v12 = sub_7F69E4(*a4, a3);
  v13 = sub_7F69E4(v11, a2);
  if (v9 > v10)
  {
    v14 = *a1;
    if (v12 <= v13)
    {
      *a1 = *a2;
      *a2 = v14;
      v19 = *a4;
      v20 = sub_7F69E4(*a4, a3);
      if (v20 <= sub_7F69E4(v19, a2))
      {
        return 1;
      }

      v14 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v14;
    return 1;
  }

  if (v12 > v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    v16 = *a4;
    v17 = sub_7F69E4(*a4, a2);
    if (v17 > sub_7F69E4(v16, a1))
    {
      v18 = *a1;
      *a1 = *a2;
      *a2 = v18;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_7F9954(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  sub_7F97F8(a1, a2, a3, a5);
  v10 = *a5;
  v11 = sub_7F69E4(*a5, a4);
  result = sub_7F69E4(v10, a3);
  if (v11 > result)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a5;
    v15 = sub_7F69E4(*a5, a3);
    result = sub_7F69E4(v14, a2);
    if (v15 > result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a5;
      v18 = sub_7F69E4(v17, a2);
      result = sub_7F69E4(v17, a1);
      if (v18 > result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t sub_7F9A4C(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t *a6)
{
  sub_7F9954(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = sub_7F69E4(*a6, a5);
  result = sub_7F69E4(v12, a4);
  if (v13 > result)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a6;
    v17 = sub_7F69E4(*a6, a4);
    result = sub_7F69E4(v16, a3);
    if (v17 > result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a6;
      v20 = sub_7F69E4(*a6, a3);
      result = sub_7F69E4(v19, a2);
      if (v20 > result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a6;
        v23 = sub_7F69E4(v22, a2);
        result = sub_7F69E4(v22, a1);
        if (v23 > result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

unsigned int *sub_7F9B80(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v4 = a2;
  v24 = *a1;
  v6 = a2 - 2;
  v7 = *a3;
  v8 = sub_7F69E4(*a3, &v24);
  if (v8 <= sub_7F69E4(v7, v6))
  {
    v12 = a1 + 2;
    do
    {
      v9 = v12;
      if (v12 >= v4)
      {
        break;
      }

      v13 = *a3;
      v14 = sub_7F69E4(*a3, &v24);
      v15 = sub_7F69E4(v13, v9);
      v12 = v9 + 2;
    }

    while (v14 <= v15);
  }

  else
  {
    v9 = a1;
    do
    {
      v9 += 2;
      v10 = *a3;
      v11 = sub_7F69E4(*a3, &v24);
    }

    while (v11 <= sub_7F69E4(v10, v9));
  }

  if (v9 < v4)
  {
    do
    {
      v4 -= 2;
      v16 = *a3;
      v17 = sub_7F69E4(*a3, &v24);
    }

    while (v17 > sub_7F69E4(v16, v4));
  }

  while (v9 < v4)
  {
    v18 = *v9;
    *v9 = *v4;
    *v4 = v18;
    do
    {
      v9 += 2;
      v19 = *a3;
      v20 = sub_7F69E4(*a3, &v24);
    }

    while (v20 <= sub_7F69E4(v19, v9));
    do
    {
      v4 -= 2;
      v21 = *a3;
      v22 = sub_7F69E4(*a3, &v24);
    }

    while (v22 > sub_7F69E4(v21, v4));
  }

  if (v9 - 2 != a1)
  {
    *a1 = *(v9 - 1);
  }

  *(v9 - 1) = v24;
  return v9;
}

unsigned int *sub_7F9D2C(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = 0;
  v23 = *a1;
  do
  {
    v6 += 2;
    v7 = *a3;
    v8 = sub_7F69E4(*a3, &a1[v6]);
  }

  while (v8 > sub_7F69E4(v7, &v23));
  v9 = &a1[v6];
  v10 = &a1[v6 - 2];
  if (v6 == 2)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 -= 2;
      v13 = *a3;
      v14 = sub_7F69E4(*a3, a2);
    }

    while (v14 <= sub_7F69E4(v13, &v23));
  }

  else
  {
    do
    {
      a2 -= 2;
      v11 = *a3;
      v12 = sub_7F69E4(*a3, a2);
    }

    while (v12 <= sub_7F69E4(v11, &v23));
  }

  if (v9 < a2)
  {
    v15 = v9;
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v15 += 2;
        v18 = *a3;
        v19 = sub_7F69E4(*a3, v15);
      }

      while (v19 > sub_7F69E4(v18, &v23));
      do
      {
        v16 -= 2;
        v20 = *a3;
        v21 = sub_7F69E4(*a3, v16);
      }

      while (v21 <= sub_7F69E4(v20, &v23));
    }

    while (v15 < v16);
    v10 = v15 - 2;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v23;
  return v10;
}

BOOL sub_7F9EC8(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = a2 - 2;
        v8 = *a3;
        v9 = sub_7F69E4(*a3, a2 - 2);
        if (v9 > sub_7F69E4(v8, a1))
        {
          v10 = *a1;
          *a1 = *v7;
          *v7 = v10;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_7F97F8(a1, a1 + 2, a2 - 2, a3);
      return 1;
    case 4:
      sub_7F9954(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      sub_7F9A4C(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 4;
  sub_7F97F8(a1, a1 + 2, a1 + 4, a3);
  v12 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *a3;
    v16 = sub_7F69E4(*a3, v12);
    if (v16 > sub_7F69E4(v15, v11))
    {
      break;
    }

LABEL_20:
    v11 = v12;
    v13 += 8;
    v12 += 2;
    if (v12 == a2)
    {
      return 1;
    }
  }

  v22 = *v12;
  v17 = v13;
  do
  {
    *(a1 + v17 + 24) = *(a1 + v17 + 16);
    if (v17 == -16)
    {
      *a1 = v22;
      if (++v14 != 8)
      {
        goto LABEL_20;
      }

      return v12 + 2 == a2;
    }

    v18 = *a3;
    v19 = sub_7F69E4(*a3, &v22);
    v20 = sub_7F69E4(v18, (a1 + v17 + 8));
    v17 -= 8;
  }

  while (v19 > v20);
  *(a1 + v17 + 24) = v22;
  if (++v14 != 8)
  {
    goto LABEL_20;
  }

  return v12 + 2 == a2;
}

uint64_t sub_7FA0E0(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v27[11] = v4;
    v27[12] = v5;
    v7 = a4;
    v8 = result;
    v26 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v11 = (a4 - result) >> 2;
      v12 = v11 + 1;
      v13 = (result + 8 * (v11 + 1));
      v14 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v15 = *a2;
        v16 = sub_7F69E4(*a2, (result + 8 * (v11 + 1)));
        if (v16 > sub_7F69E4(v15, v13 + 2))
        {
          v13 += 2;
          v12 = v14;
        }
      }

      v17 = *a2;
      v18 = sub_7F69E4(*a2, v13);
      result = sub_7F69E4(v17, v7);
      if (v18 <= result)
      {
        v27[0] = *v7;
        do
        {
          v21 = v13;
          *v7 = *v13;
          if (v26 < v12)
          {
            break;
          }

          v22 = (2 * v12) | 1;
          v13 = (v8 + 8 * v22);
          v23 = 2 * v12 + 2;
          if (v23 < a3)
          {
            v24 = *a2;
            v25 = sub_7F69E4(*a2, (v8 + 8 * v22));
            if (v25 > sub_7F69E4(v24, v13 + 2))
            {
              v13 += 2;
              v22 = v23;
            }
          }

          v19 = *a2;
          v20 = sub_7F69E4(*a2, v13);
          result = sub_7F69E4(v19, v27);
          v7 = v21;
          v12 = v22;
        }

        while (v20 <= result);
        *v21 = v27[0];
      }
    }
  }

  return result;
}

char *sub_7FA270(char *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v32[11] = v4;
    v32[12] = v5;
    v8 = 0;
    v31 = *result;
    v9 = (a4 - 2) >> 1;
    v29 = result;
    v10 = result;
    do
    {
      v11 = &v10[2 * v8];
      v12 = v11 + 2;
      v13 = (2 * v8) | 1;
      v14 = 2 * v8 + 2;
      if (v14 < a4)
      {
        v15 = v11 + 4;
        v16 = *a3;
        v17 = sub_7F69E4(*a3, v11 + 2);
        result = sub_7F69E4(v16, v15);
        if (v17 > result)
        {
          v12 = v15;
          v13 = v14;
        }
      }

      *v10 = *v12;
      v10 = v12;
      v8 = v13;
    }

    while (v13 <= v9);
    v18 = (a2 - 8);
    if (v12 == (a2 - 8))
    {
      *v12 = v31;
    }

    else
    {
      *v12 = *v18;
      *v18 = v31;
      v19 = (v12 - v29 + 8) >> 3;
      v20 = v19 < 2;
      v21 = v19 - 2;
      if (!v20)
      {
        v22 = v21 >> 1;
        v23 = &v29[8 * (v21 >> 1)];
        v24 = *a3;
        v25 = sub_7F69E4(*a3, v23);
        result = sub_7F69E4(v24, v12);
        if (v25 > result)
        {
          v32[0] = *v12;
          do
          {
            v26 = v23;
            *v12 = *v23;
            if (!v22)
            {
              break;
            }

            v22 = (v22 - 1) >> 1;
            v23 = &v29[8 * v22];
            v27 = *a3;
            v28 = sub_7F69E4(*a3, v23);
            result = sub_7F69E4(v27, v32);
            v12 = v26;
          }

          while (v28 > result);
          *v26 = v32[0];
        }
      }
    }
  }

  return result;
}

void sub_7FD4CC(_Unwind_Exception *a1)
{
  if (qword_27ABBE8)
  {
    qword_27ABBF0 = qword_27ABBE8;
    operator delete(qword_27ABBE8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7FD764(unsigned int *a1)
{
  v1 = *a1;
  if (*a1 <= 0x18)
  {
    if (((1 << v1) & 0x3FEE00) != 0)
    {
      return 2;
    }

    if (((1 << v1) & 0xC011FE) != 0)
    {
      return 1;
    }

    if (v1 == 24)
    {
      return 3;
    }
  }

  if (!v1)
  {
    v3 = a1[2];
    if (v3)
    {
      if (v3 < 0xB)
      {
        return 4;
      }
    }

    else if (a1[286] == 1 && *(a1 + 144))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_7FD804(uint64_t result, _DWORD *a2, uint64_t *a3)
{
  if (*a2 > 9u || ((1 << *a2) & 0x35A) == 0)
  {
LABEL_9:
    *(result + 1162) = 1;
    return result;
  }

  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    while (*(v4 + 1112) != 1)
    {
      v4 += 1120;
      if (v4 == v5)
      {
        return result;
      }
    }

    goto LABEL_9;
  }

  return result;
}

void sub_7FD854()
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
  xmmword_27ABC28 = 0u;
  unk_27ABC38 = 0u;
  dword_27ABC48 = 1065353216;
  sub_3A9A34(&xmmword_27ABC28, v0);
  sub_3A9A34(&xmmword_27ABC28, v3);
  sub_3A9A34(&xmmword_27ABC28, __p);
  sub_3A9A34(&xmmword_27ABC28, v9);
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
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_7FDA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27ABC28);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_7FDA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = *(a3 + 1415);
  v6[23] = 11;
  strcpy(v6, "RouteTagger");
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D598(v4, v7);
  sub_80095C((a1 + 16), v7);
}

void sub_7FDC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7FDC4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3 != a3[1] && *(a1 + 16) == 1)
  {
    sub_7FDCCC(a1, a3);
    sub_7FED9C(a1, a3);
    v5 = *a3;
    for (i = a3[1]; v5 != i; v5 += 7808)
    {
      sub_690A9C(v5);
    }
  }
}

void sub_7FDCCC(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v3 = *a2;
  v69 = a2[1];
  if (*a2 == v69)
  {
    v40 = 0;
    v39 = 0;
    goto LABEL_142;
  }

  do
  {
    v4 = sub_68F328(v3);
    v6 = *v4;
    v5 = v4[1];
    if (*v4 != v5)
    {
      while (1)
      {
        while (!sub_658A08(v6 + 744, 1))
        {
LABEL_6:
          v6 += 1120;
          if (v6 == v5)
          {
            goto LABEL_68;
          }
        }

        v7 = v80;
        if (v80 < v81)
        {
          sub_52B7D8(v80, v6);
          v80 = v7 + 1120;
          goto LABEL_6;
        }

        v8 = 0xAF8AF8AF8AF8AF8BLL * ((v80 - v79) >> 5);
        v9 = v8 + 1;
        if (v8 + 1 > 0x3A83A83A83A83ALL)
        {
          sub_1794();
        }

        if (0x5F15F15F15F15F16 * ((v81 - v79) >> 5) > v9)
        {
          v9 = 0x5F15F15F15F15F16 * ((v81 - v79) >> 5);
        }

        if (0xAF8AF8AF8AF8AF8BLL * ((v81 - v79) >> 5) >= 0x1D41D41D41D41DLL)
        {
          v10 = 0x3A83A83A83A83ALL;
        }

        else
        {
          v10 = v9;
        }

        v77 = &v79;
        if (v10)
        {
          if (v10 <= 0x3A83A83A83A83ALL)
          {
            operator new();
          }

          sub_1808();
        }

        p_p = 0;
        v74 = 32 * ((v80 - v79) >> 5);
        v75 = v74;
        v76 = 0;
        sub_52B7D8(v74, v6);
        v11 = 1120 * v8;
        v13 = v79;
        v12 = v80;
        v14 = v79 + v74 - v80;
        if (v80 != v79)
        {
          break;
        }

LABEL_65:
        v79 = v14;
        v80 = v11 + 1120;
        v81 = v76;
        if (v13)
        {
          operator delete(v13);
        }

        v80 = v11 + 1120;
        v6 += 1120;
        if (v6 == v5)
        {
          goto LABEL_68;
        }
      }

      v15 = v79;
      v16 = v79 + v74 - v80;
      do
      {
        v17 = sub_529850(v16, v15);
        v15 += 1120;
        v16 = v17 + 1120;
      }

      while (v15 != v12);
      while (1)
      {
        if (*(v13 + 1104) != 1)
        {
          *(v13 + 704) = off_26696C8;
          if ((*(v13 + 735) & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_52;
        }

        v18 = *(v13 + 1080);
        if (v18)
        {
          break;
        }

LABEL_46:
        if (*(v13 + 1071) < 0)
        {
          operator delete(*(v13 + 1048));
          if ((*(v13 + 1039) & 0x80000000) == 0)
          {
LABEL_48:
            if ((*(v13 + 1007) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_61;
          }
        }

        else if ((*(v13 + 1039) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        operator delete(*(v13 + 1016));
        if ((*(v13 + 1007) & 0x80000000) == 0)
        {
LABEL_49:
          if ((*(v13 + 983) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

LABEL_62:
          operator delete(*(v13 + 960));
          if ((*(v13 + 959) & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_63;
        }

LABEL_61:
        operator delete(*(v13 + 984));
        if (*(v13 + 983) < 0)
        {
          goto LABEL_62;
        }

LABEL_50:
        if ((*(v13 + 959) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

LABEL_63:
        operator delete(*(v13 + 936));
LABEL_51:
        sub_33D080(v13 + 744);
        *(v13 + 704) = off_26696C8;
        if ((*(v13 + 735) & 0x80000000) == 0)
        {
LABEL_26:
          if ((*(v13 + 655) & 0x80000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_53;
        }

LABEL_52:
        operator delete(*(v13 + 712));
        if ((*(v13 + 655) & 0x80000000) == 0)
        {
LABEL_27:
          if ((*(v13 + 623) & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_54;
        }

LABEL_53:
        operator delete(*(v13 + 632));
        if ((*(v13 + 623) & 0x80000000) == 0)
        {
LABEL_28:
          if ((*(v13 + 599) & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_55;
        }

LABEL_54:
        operator delete(*(v13 + 600));
        if ((*(v13 + 599) & 0x80000000) == 0)
        {
LABEL_29:
          if ((*(v13 + 559) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_56;
        }

LABEL_55:
        operator delete(*(v13 + 576));
        if ((*(v13 + 559) & 0x80000000) == 0)
        {
LABEL_30:
          if ((*(v13 + 527) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_57;
        }

LABEL_56:
        operator delete(*(v13 + 536));
        if ((*(v13 + 527) & 0x80000000) == 0)
        {
LABEL_31:
          if (*(v13 + 503) < 0)
          {
            goto LABEL_58;
          }

          goto LABEL_23;
        }

LABEL_57:
        operator delete(*(v13 + 504));
        if (*(v13 + 503) < 0)
        {
LABEL_58:
          operator delete(*(v13 + 480));
        }

LABEL_23:
        sub_2C0F28(v13);
        v13 += 1120;
        if (v13 == v12)
        {
          v13 = v79;
          goto LABEL_65;
        }
      }

      v19 = *(v13 + 1088);
      v20 = *(v13 + 1080);
      if (v19 == v18)
      {
LABEL_45:
        *(v13 + 1088) = v18;
        operator delete(v20);
        goto LABEL_46;
      }

      while (1)
      {
        if (*(v19 - 1) < 0)
        {
          operator delete(*(v19 - 24));
          if ((*(v19 - 25) & 0x80000000) == 0)
          {
LABEL_39:
            if (*(v19 - 49) < 0)
            {
              goto LABEL_43;
            }

            goto LABEL_36;
          }
        }

        else if ((*(v19 - 25) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        operator delete(*(v19 - 48));
        if (*(v19 - 49) < 0)
        {
LABEL_43:
          operator delete(*(v19 - 72));
        }

LABEL_36:
        v19 -= 248;
        sub_33D5A0(v19);
        if (v19 == v18)
        {
          v20 = *(v13 + 1080);
          goto LABEL_45;
        }
      }
    }

LABEL_68:
    v21 = sub_68F370(v3);
    v23 = *v21;
    v22 = v21[1];
    while (v23 != v22)
    {
      if (sub_658A08(v23 + 744, 1))
      {
        v24 = v80;
        if (v80 < v81)
        {
          sub_52B7D8(v80, v23);
          v25 = v24 + 1120;
LABEL_69:
          v80 = v25;
          goto LABEL_70;
        }

        v26 = 0xAF8AF8AF8AF8AF8BLL * ((v80 - v79) >> 5);
        v27 = v26 + 1;
        if (v26 + 1 > 0x3A83A83A83A83ALL)
        {
          sub_1794();
        }

        if (0x5F15F15F15F15F16 * ((v81 - v79) >> 5) > v27)
        {
          v27 = 0x5F15F15F15F15F16 * ((v81 - v79) >> 5);
        }

        if (0xAF8AF8AF8AF8AF8BLL * ((v81 - v79) >> 5) >= 0x1D41D41D41D41DLL)
        {
          v28 = 0x3A83A83A83A83ALL;
        }

        else
        {
          v28 = v27;
        }

        v77 = &v79;
        if (v28)
        {
          if (v28 <= 0x3A83A83A83A83ALL)
          {
            operator new();
          }

          sub_1808();
        }

        p_p = 0;
        v74 = 32 * ((v80 - v79) >> 5);
        v75 = v74;
        v76 = 0;
        sub_52B7D8(v74, v23);
        v29 = 1120 * v26;
        v31 = v79;
        v30 = v80;
        v32 = v79 + v74 - v80;
        if (v80 != v79)
        {
          v33 = v79;
          v34 = v79 + v74 - v80;
          do
          {
            v35 = sub_529850(v34, v33);
            v33 += 1120;
            v34 = v35 + 1120;
          }

          while (v33 != v30);
          while (2)
          {
            if (*(v31 + 1104) != 1)
            {
              *(v31 + 704) = off_26696C8;
              if ((*(v31 + 735) & 0x80000000) == 0)
              {
                goto LABEL_91;
              }

LABEL_117:
              operator delete(*(v31 + 712));
              if (*(v31 + 655) < 0)
              {
                goto LABEL_118;
              }

LABEL_92:
              if ((*(v31 + 623) & 0x80000000) == 0)
              {
                goto LABEL_93;
              }

LABEL_119:
              operator delete(*(v31 + 600));
              if (*(v31 + 599) < 0)
              {
                goto LABEL_120;
              }

LABEL_94:
              if ((*(v31 + 559) & 0x80000000) == 0)
              {
                goto LABEL_95;
              }

LABEL_121:
              operator delete(*(v31 + 536));
              if (*(v31 + 527) < 0)
              {
                goto LABEL_122;
              }

LABEL_96:
              if (*(v31 + 503) < 0)
              {
                goto LABEL_123;
              }

              goto LABEL_88;
            }

            v36 = *(v31 + 1080);
            if (v36)
            {
              v37 = *(v31 + 1088);
              v38 = *(v31 + 1080);
              if (v37 == v36)
              {
LABEL_110:
                *(v31 + 1088) = v36;
                operator delete(v38);
                goto LABEL_111;
              }

              while (2)
              {
                if (*(v37 - 1) < 0)
                {
                  operator delete(*(v37 - 24));
                  if (*(v37 - 25) < 0)
                  {
                    goto LABEL_107;
                  }

LABEL_104:
                  if (*(v37 - 49) < 0)
                  {
LABEL_108:
                    operator delete(*(v37 - 72));
                  }
                }

                else
                {
                  if ((*(v37 - 25) & 0x80000000) == 0)
                  {
                    goto LABEL_104;
                  }

LABEL_107:
                  operator delete(*(v37 - 48));
                  if (*(v37 - 49) < 0)
                  {
                    goto LABEL_108;
                  }
                }

                v37 -= 248;
                sub_33D5A0(v37);
                if (v37 == v36)
                {
                  v38 = *(v31 + 1080);
                  goto LABEL_110;
                }

                continue;
              }
            }

LABEL_111:
            if (*(v31 + 1071) < 0)
            {
              operator delete(*(v31 + 1048));
              if (*(v31 + 1039) < 0)
              {
                goto LABEL_125;
              }

LABEL_113:
              if ((*(v31 + 1007) & 0x80000000) == 0)
              {
                goto LABEL_114;
              }

LABEL_126:
              operator delete(*(v31 + 984));
              if (*(v31 + 983) < 0)
              {
                goto LABEL_127;
              }

LABEL_115:
              if (*(v31 + 959) < 0)
              {
LABEL_128:
                operator delete(*(v31 + 936));
              }
            }

            else
            {
              if ((*(v31 + 1039) & 0x80000000) == 0)
              {
                goto LABEL_113;
              }

LABEL_125:
              operator delete(*(v31 + 1016));
              if (*(v31 + 1007) < 0)
              {
                goto LABEL_126;
              }

LABEL_114:
              if ((*(v31 + 983) & 0x80000000) == 0)
              {
                goto LABEL_115;
              }

LABEL_127:
              operator delete(*(v31 + 960));
              if (*(v31 + 959) < 0)
              {
                goto LABEL_128;
              }
            }

            sub_33D080(v31 + 744);
            *(v31 + 704) = off_26696C8;
            if (*(v31 + 735) < 0)
            {
              goto LABEL_117;
            }

LABEL_91:
            if ((*(v31 + 655) & 0x80000000) == 0)
            {
              goto LABEL_92;
            }

LABEL_118:
            operator delete(*(v31 + 632));
            if (*(v31 + 623) < 0)
            {
              goto LABEL_119;
            }

LABEL_93:
            if ((*(v31 + 599) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

LABEL_120:
            operator delete(*(v31 + 576));
            if (*(v31 + 559) < 0)
            {
              goto LABEL_121;
            }

LABEL_95:
            if ((*(v31 + 527) & 0x80000000) == 0)
            {
              goto LABEL_96;
            }

LABEL_122:
            operator delete(*(v31 + 504));
            if (*(v31 + 503) < 0)
            {
LABEL_123:
              operator delete(*(v31 + 480));
            }

LABEL_88:
            sub_2C0F28(v31);
            v31 += 1120;
            if (v31 != v30)
            {
              continue;
            }

            break;
          }

          v31 = v79;
        }

        v25 = v29 + 1120;
        v79 = v32;
        v80 = v29 + 1120;
        v81 = v76;
        if (v31)
        {
          operator delete(v31);
        }

        goto LABEL_69;
      }

LABEL_70:
      v23 += 1120;
    }

    v3 += 7808;
  }

  while (v3 != v69);
  v39 = v79;
  v40 = v80;
  if (v79 == v80)
  {
    v2 = a2;
  }

  else
  {
    v2 = a2;
    do
    {
      v41 = sub_65959C(v39);
      v39 += 1120;
    }

    while (v39 != v40 && v41);
    if (!v41)
    {
      goto LABEL_147;
    }

    v39 = v79;
    v40 = v80;
  }

LABEL_142:
  v43 = sub_772D50(v39, v40, &v79);
  v44 = v80;
  if (v43 != v80)
  {
    while (v44 != v43)
    {
      v44 -= 1120;
      sub_3A9518(v44);
    }

    v80 = v43;
  }

LABEL_147:
  v45 = *v2;
  v46 = v2[1];
  if (*v2 != v46)
  {
    while (1)
    {
      v48 = sub_68F328(v45);
      if (*v48 == v48[1])
      {
        if (v79 != v80)
        {
          sub_800090(&v79, 1, &p_p);
          sub_690B84(v45, &p_p);
          if (v78 == 1)
          {
            sub_3A9518(&v75);
          }
        }

        goto LABEL_151;
      }

      v49 = sub_68F328(v45);
      __p = 0;
      v71 = 0;
      v72 = 0;
      v50 = *v49;
      v51 = v49[1];
      p_p = &__p;
      LOBYTE(v74) = 0;
      if (v51 != v50)
      {
        if (0xAF8AF8AF8AF8AF8BLL * ((v51 - v50) >> 5) <= 0x3A83A83A83A83ALL)
        {
          operator new();
        }

        sub_1794();
      }

      sub_800664(&__p);
      v53 = __p;
      v52 = v71;
      if (__p == v71)
      {
        goto LABEL_162;
      }

      do
      {
        v54 = sub_65959C(v53);
        v53 += 1120;
      }

      while (v53 != v52 && v54);
      v53 = __p;
      v52 = v71;
      if (v54)
      {
LABEL_162:
        v56 = sub_772D50(v53, v52, &__p);
        v52 = v71;
        if (v56 != v71)
        {
          v57 = v71;
          v52 = v56;
          while (v57 != v52)
          {
            if (*(v57 - 16) != 1)
            {
              *(v57 - 416) = off_26696C8;
              if ((*(v57 - 385) & 0x80000000) == 0)
              {
                goto LABEL_171;
              }

              goto LABEL_197;
            }

            v58 = *(v57 - 40);
            if (v58)
            {
              v59 = *(v57 - 32);
              v60 = *(v57 - 40);
              if (v59 == v58)
              {
LABEL_190:
                *(v57 - 32) = v58;
                operator delete(v60);
                goto LABEL_191;
              }

              while (2)
              {
                if (*(v59 - 1) < 0)
                {
                  operator delete(*(v59 - 24));
                  if (*(v59 - 25) < 0)
                  {
                    goto LABEL_187;
                  }

LABEL_184:
                  if (*(v59 - 49) < 0)
                  {
LABEL_188:
                    operator delete(*(v59 - 72));
                  }
                }

                else
                {
                  if ((*(v59 - 25) & 0x80000000) == 0)
                  {
                    goto LABEL_184;
                  }

LABEL_187:
                  operator delete(*(v59 - 48));
                  if (*(v59 - 49) < 0)
                  {
                    goto LABEL_188;
                  }
                }

                v59 -= 248;
                sub_33D5A0(v59);
                if (v59 == v58)
                {
                  v60 = *(v57 - 40);
                  goto LABEL_190;
                }

                continue;
              }
            }

LABEL_191:
            if (*(v57 - 49) < 0)
            {
              operator delete(*(v57 - 72));
              if ((*(v57 - 81) & 0x80000000) == 0)
              {
LABEL_193:
                if ((*(v57 - 113) & 0x80000000) == 0)
                {
                  goto LABEL_194;
                }

                goto LABEL_206;
              }
            }

            else if ((*(v57 - 81) & 0x80000000) == 0)
            {
              goto LABEL_193;
            }

            operator delete(*(v57 - 104));
            if ((*(v57 - 113) & 0x80000000) == 0)
            {
LABEL_194:
              if ((*(v57 - 137) & 0x80000000) == 0)
              {
                goto LABEL_195;
              }

LABEL_207:
              operator delete(*(v57 - 160));
              if ((*(v57 - 161) & 0x80000000) == 0)
              {
                goto LABEL_196;
              }

              goto LABEL_208;
            }

LABEL_206:
            operator delete(*(v57 - 136));
            if (*(v57 - 137) < 0)
            {
              goto LABEL_207;
            }

LABEL_195:
            if ((*(v57 - 161) & 0x80000000) == 0)
            {
              goto LABEL_196;
            }

LABEL_208:
            operator delete(*(v57 - 184));
LABEL_196:
            sub_33D080(v57 - 376);
            *(v57 - 416) = off_26696C8;
            if ((*(v57 - 385) & 0x80000000) == 0)
            {
LABEL_171:
              if ((*(v57 - 465) & 0x80000000) == 0)
              {
                goto LABEL_172;
              }

              goto LABEL_198;
            }

LABEL_197:
            operator delete(*(v57 - 408));
            if ((*(v57 - 465) & 0x80000000) == 0)
            {
LABEL_172:
              if ((*(v57 - 497) & 0x80000000) == 0)
              {
                goto LABEL_173;
              }

              goto LABEL_199;
            }

LABEL_198:
            operator delete(*(v57 - 488));
            if ((*(v57 - 497) & 0x80000000) == 0)
            {
LABEL_173:
              if ((*(v57 - 521) & 0x80000000) == 0)
              {
                goto LABEL_174;
              }

              goto LABEL_200;
            }

LABEL_199:
            operator delete(*(v57 - 520));
            if ((*(v57 - 521) & 0x80000000) == 0)
            {
LABEL_174:
              if ((*(v57 - 561) & 0x80000000) == 0)
              {
                goto LABEL_175;
              }

              goto LABEL_201;
            }

LABEL_200:
            operator delete(*(v57 - 544));
            if ((*(v57 - 561) & 0x80000000) == 0)
            {
LABEL_175:
              if (*(v57 - 593) < 0)
              {
                goto LABEL_202;
              }

              goto LABEL_176;
            }

LABEL_201:
            operator delete(*(v57 - 584));
            if (*(v57 - 593) < 0)
            {
LABEL_202:
              operator delete(*(v57 - 616));
              if ((*(v57 - 617) & 0x80000000) == 0)
              {
                goto LABEL_167;
              }

              goto LABEL_203;
            }

LABEL_176:
            if ((*(v57 - 617) & 0x80000000) == 0)
            {
              goto LABEL_167;
            }

LABEL_203:
            operator delete(*(v57 - 640));
LABEL_167:
            v57 -= 1120;
            sub_2C0F28(v57);
          }

          v71 = v52;
        }

        v53 = __p;
      }

      if (v53 != v52)
      {
        sub_800090(&__p, 0, &p_p);
        sub_690B84(v45, &p_p);
        if (v78 == 1)
        {
          sub_3A9518(&v75);
        }

        v53 = __p;
      }

      if (v53)
      {
        break;
      }

LABEL_151:
      v45 += 976;
      if (v45 == v46)
      {
        goto LABEL_259;
      }
    }

    v61 = v71;
    v47 = v53;
    if (v71 == v53)
    {
LABEL_150:
      v71 = v53;
      operator delete(v47);
      goto LABEL_151;
    }

    while (1)
    {
      if (*(v61 - 16) != 1)
      {
        *(v61 - 416) = off_26696C8;
        if ((*(v61 - 385) & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_247;
      }

      v62 = *(v61 - 40);
      if (v62)
      {
        break;
      }

LABEL_241:
      if (*(v61 - 49) < 0)
      {
        operator delete(*(v61 - 72));
        if ((*(v61 - 81) & 0x80000000) == 0)
        {
LABEL_243:
          if ((*(v61 - 113) & 0x80000000) == 0)
          {
            goto LABEL_244;
          }

          goto LABEL_256;
        }
      }

      else if ((*(v61 - 81) & 0x80000000) == 0)
      {
        goto LABEL_243;
      }

      operator delete(*(v61 - 104));
      if ((*(v61 - 113) & 0x80000000) == 0)
      {
LABEL_244:
        if ((*(v61 - 137) & 0x80000000) == 0)
        {
          goto LABEL_245;
        }

LABEL_257:
        operator delete(*(v61 - 160));
        if ((*(v61 - 161) & 0x80000000) == 0)
        {
          goto LABEL_246;
        }

        goto LABEL_258;
      }

LABEL_256:
      operator delete(*(v61 - 136));
      if (*(v61 - 137) < 0)
      {
        goto LABEL_257;
      }

LABEL_245:
      if ((*(v61 - 161) & 0x80000000) == 0)
      {
        goto LABEL_246;
      }

LABEL_258:
      operator delete(*(v61 - 184));
LABEL_246:
      sub_33D080(v61 - 376);
      *(v61 - 416) = off_26696C8;
      if ((*(v61 - 385) & 0x80000000) == 0)
      {
LABEL_221:
        if ((*(v61 - 465) & 0x80000000) == 0)
        {
          goto LABEL_222;
        }

        goto LABEL_248;
      }

LABEL_247:
      operator delete(*(v61 - 408));
      if ((*(v61 - 465) & 0x80000000) == 0)
      {
LABEL_222:
        if ((*(v61 - 497) & 0x80000000) == 0)
        {
          goto LABEL_223;
        }

        goto LABEL_249;
      }

LABEL_248:
      operator delete(*(v61 - 488));
      if ((*(v61 - 497) & 0x80000000) == 0)
      {
LABEL_223:
        if ((*(v61 - 521) & 0x80000000) == 0)
        {
          goto LABEL_224;
        }

        goto LABEL_250;
      }

LABEL_249:
      operator delete(*(v61 - 520));
      if ((*(v61 - 521) & 0x80000000) == 0)
      {
LABEL_224:
        if ((*(v61 - 561) & 0x80000000) == 0)
        {
          goto LABEL_225;
        }

        goto LABEL_251;
      }

LABEL_250:
      operator delete(*(v61 - 544));
      if ((*(v61 - 561) & 0x80000000) == 0)
      {
LABEL_225:
        if ((*(v61 - 593) & 0x80000000) == 0)
        {
          goto LABEL_226;
        }

        goto LABEL_252;
      }

LABEL_251:
      operator delete(*(v61 - 584));
      if ((*(v61 - 593) & 0x80000000) == 0)
      {
LABEL_226:
        if (*(v61 - 617) < 0)
        {
          goto LABEL_253;
        }

        goto LABEL_218;
      }

LABEL_252:
      operator delete(*(v61 - 616));
      if (*(v61 - 617) < 0)
      {
LABEL_253:
        operator delete(*(v61 - 640));
      }

LABEL_218:
      v61 -= 1120;
      sub_2C0F28(v61);
      if (v61 == v53)
      {
        v47 = __p;
        goto LABEL_150;
      }
    }

    v63 = *(v61 - 32);
    v64 = *(v61 - 40);
    if (v63 == v62)
    {
LABEL_240:
      *(v61 - 32) = v62;
      operator delete(v64);
      goto LABEL_241;
    }

    while (1)
    {
      if (*(v63 - 1) < 0)
      {
        operator delete(*(v63 - 24));
        if ((*(v63 - 25) & 0x80000000) == 0)
        {
LABEL_234:
          if (*(v63 - 49) < 0)
          {
            goto LABEL_238;
          }

          goto LABEL_231;
        }
      }

      else if ((*(v63 - 25) & 0x80000000) == 0)
      {
        goto LABEL_234;
      }

      operator delete(*(v63 - 48));
      if (*(v63 - 49) < 0)
      {
LABEL_238:
        operator delete(*(v63 - 72));
      }

LABEL_231:
      v63 -= 248;
      sub_33D5A0(v63);
      if (v63 == v62)
      {
        v64 = *(v61 - 40);
        goto LABEL_240;
      }
    }
  }

LABEL_259:
  v65 = v79;
  if (v79)
  {
    v66 = v80;
    v67 = v79;
    if (v80 != v79)
    {
      do
      {
        v66 = sub_3A9518(v66 - 1120);
      }

      while (v66 != v65);
      v67 = v79;
    }

    v80 = v65;
    operator delete(v67);
  }
}

void sub_7FED9C(uint64_t a1, uint64_t **a2)
{
  if ((0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7)) >= 2 && *(a1 + 16) == 1)
  {
    v3 = sub_7E10C4(a2, 0);
    sub_68C850(v3);
    sub_68F064(*a2);
    sub_68EF88(*a2);
    sub_691048(*a2);
    sub_68C7DC(*a2);
    operator new();
  }
}

void sub_7FFE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (LOBYTE(STACK[0x4D0]) == 1)
  {
    sub_3A9518(va);
    v17 = *(v15 - 208);
    if (!v17)
    {
LABEL_3:
      v18 = *(v15 - 184);
      if (!v18)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v17 = *(v15 - 208);
    if (!v17)
    {
      goto LABEL_3;
    }
  }

  *(v15 - 200) = v17;
  operator delete(v17);
  v18 = *(v15 - 184);
  if (!v18)
  {
LABEL_4:
    v19 = *(v15 - 160);
    if (!v19)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v15 - 176) = v18;
  operator delete(v18);
  v19 = *(v15 - 160);
  if (!v19)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v15 - 152) = v19;
  operator delete(v19);
  _Unwind_Resume(a1);
}

double sub_7FFF3C(double *a1, uint64_t *a2)
{
  sub_68FED0(a2, &v10);
  v3 = 0.0;
  if (v10 != v11)
  {
    v4 = v10;
    do
    {
      v5 = *v4;
      v6 = *(*v4 + 160);
      v7 = v6 > 0x3F || ((1 << v6) & 0xF000000E7C3000D6) == 0;
      if (!v7 || (v6 - 65 <= 0x16 ? (v8 = ((1 << (v6 - 65)) & 0x600003) == 0) : (v8 = 1), !v8 || v6 - 41 <= 0x12))
      {
        v3 = v3 + a1[12];
      }

      if (v6 - 91 < 6 || v6 - 22 <= 2)
      {
        v3 = v3 + a1[13];
      }

      if (v5[89] != v5[90] || v5[95] != v5[96] || v5[92] != v5[93])
      {
        v3 = v3 + a1[14];
      }

      if (v5[78] != -1 || v5[80] != -1)
      {
        v3 = v3 + a1[15];
      }

      v4 += 8;
    }

    while (v4 != v11);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v3;
}

void sub_800090(uint64_t *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    do
    {
      if (sub_659608(v6))
      {
        v11 = v37;
        if (v37 >= v38)
        {
          v10 = sub_603684(&v36, v6);
        }

        else
        {
          sub_52B7D8(v37, v6);
          v10 = v11 + 1120;
        }

        v37 = v10;
      }

      v6 += 1120;
    }

    while (v6 != v7);
    v9 = v36;
    v8 = v37;
  }

  v12 = v9;
  if (&v36 != a1)
  {
    v12 = v9;
    if (v9 == v8)
    {
      sub_5D8C78(&v36, *a1, a1[1], 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5));
      v12 = v36;
    }
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v13 = v37 - v12;
  if (v13)
  {
    if (0xAF8AF8AF8AF8AF8BLL * (v13 >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = v36;
  v15 = v37;
  v42[0] = &v33;
  while (v14 != v15)
  {
    if (v14[503] < 0)
    {
      sub_325C(__p, *(v14 + 60), *(v14 + 61));
    }

    else
    {
      *__p = *(v14 + 30);
      v40 = *(v14 + 62);
    }

    sub_9A5A0(v42, __p);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p[0]);
    }

    v14 += 1120;
  }

  sub_93524(&v33);
  v16 = v36;
  if (v36 == v37)
  {
    v18 = 1;
    *(a3 + 16) = 0;
    v20 = a3 + 16;
    v21 = (a3 + 8);
    *(a3 + 1136) = 0;
    if (a2)
    {
      goto LABEL_32;
    }

LABEL_38:
    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) < 2)
    {
      if (v9 == v8)
      {
        v24 = 10;
      }

      else
      {
        v24 = 7;
      }

      LODWORD(__p[0]) = v24;
      LOBYTE(__p[1]) = 0;
      v41 = 0;
      *(v42 + 4) = 0;
      *(&v42[1] + 3) = 0;
      *a3 = 0;
      *(a3 + 8) = v24;
      *(a3 + 1144) = 0;
      *(a3 + 1148) = v42[0];
      *(a3 + 1155) = *(v42 + 7);
    }

    else
    {
      if (v9 != v8)
      {
        *(v42 + 4) = 0;
        *(&v42[1] + 3) = 0;
        *a3 = 0;
        *(a3 + 8) = 2;
        *(a3 + 1144) = 0;
        *(a3 + 1148) = v42[0];
        *(a3 + 1155) = *(v42 + 7);
        v16 = v36;
        if ((*v21 - 6) > 4)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }

      LODWORD(__p[0]) = 5;
      LOBYTE(__p[1]) = 0;
      v41 = 0;
      *(v42 + 4) = 0;
      *(&v42[1] + 3) = 0;
      *a3 = 0;
      *(a3 + 8) = 5;
      *(a3 + 1144) = 0;
      *(a3 + 1148) = v42[0];
      *(a3 + 1155) = *(v42 + 7);
    }

    v16 = v36;
    if ((*v21 - 6) > 4)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v17 = v36 + 1120;
  do
  {
    v18 = *(v17 - 8);
    v19 = v18 != 1 || v17 == v37;
    v17 += 1120;
  }

  while (!v19);
  *(a3 + 16) = 0;
  v20 = a3 + 16;
  v21 = (a3 + 8);
  *(a3 + 1136) = 0;
  if ((a2 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_32:
  if (v9 == v8)
  {
    v23 = (a3 + 1148);
    *(__p + 4) = 0;
    *(&__p[1] + 3) = 0;
    if (v18)
    {
      v22 = 9;
      v25 = 4;
    }

    else
    {
      v22 = 8;
      v25 = 3;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) > 1)
    {
      v22 = v25;
    }

    *a3 = 0;
    *(a3 + 8) = v22;
    *(a3 + 1144) = 0;
  }

  else
  {
    *(__p + 4) = 0;
    *(&__p[1] + 3) = 0;
    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) > 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 6;
    }

    *a3 = 0;
    *(a3 + 8) = v22;
    *(a3 + 1144) = 0;
    v23 = (a3 + 1148);
  }

  *v23 = __p[0];
  *(v23 + 7) = *(__p + 7);
  if ((v22 - 6) <= 4)
  {
LABEL_56:
    if (*(a3 + 1136) == 1)
    {
      sub_52C990(v20, v16);
    }

    else
    {
      sub_52B7D8(v20, v16);
      *(a3 + 1136) = 1;
    }
  }

LABEL_59:
  sub_7FD804(a3, v21, &v36);
  v26 = v33;
  if (v33)
  {
    v27 = v34;
    v28 = v33;
    if (v34 != v33)
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
      v28 = v33;
    }

    v34 = v26;
    operator delete(v28);
  }

  v30 = v36;
  if (v36)
  {
    v31 = v37;
    v32 = v36;
    if (v37 != v36)
    {
      do
      {
        v31 = sub_3A9518((v31 - 1120));
      }

      while (v31 != v30);
      v32 = v36;
    }

    v37 = v30;
    operator delete(v32);
  }
}

void sub_8005C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5706DC(va);
  _Unwind_Resume(a1);
}

void sub_8005D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1A104(&a9);
  sub_5706DC(&a12);
  _Unwind_Resume(a1);
}

void sub_800650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5706DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_800664(uint64_t result)
{
  v1 = result;
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    while (1)
    {
      result = sub_658A08(v2 + 744, 0);
      if (!result)
      {
        break;
      }

      v2 += 1120;
      if (v2 == v3)
      {
        v2 = v3;
        goto LABEL_11;
      }
    }

    if (v2 != v3 && v2 + 1120 != v3)
    {
      v4 = v2 + 1864;
      do
      {
        result = sub_658A08(v4, 0);
        if (result)
        {
          result = sub_52BE74(v2, v4 - 744);
          v2 += 1120;
        }

        v5 = v4 + 376;
        v4 += 1120;
      }

      while (v5 != v3);
    }
  }

LABEL_11:
  v6 = *(v1 + 8);
  if (v2 != v6)
  {
    while (v6 != v2)
    {
      v6 -= 1120;
      result = sub_3A9518(v6);
    }

    *(v1 + 8) = v2;
  }

  return result;
}

uint64_t sub_800760(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_80087C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_80095C(BOOL *a1, void *a2)
{
  v6 = 17;
  strcpy(__p, "enable_route_tags");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_801644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8016D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = *(a3 + 1415);
  v6[23] = 11;
  strcpy(v6, "RouteTagger");
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D7AC(v4, v7);
  sub_804364((a1 + 16), v7);
}

void sub_801848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_801884(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (*a3 != a3[1] && *(a1 + 16) == 1)
  {
    sub_801918(a1, a3);
    sub_8029E8(a1, a2, a3);
    sub_8032D0(a1, a3);
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      do
      {
        sub_68D960(v6);
        v6 += 7808;
      }

      while (v6 != v7);
    }
  }
}

void sub_801918(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v3 = *a2;
  v69 = a2[1];
  if (*a2 == v69)
  {
    v40 = 0;
    v39 = 0;
    goto LABEL_142;
  }

  do
  {
    v4 = sub_68F328(v3);
    v6 = *v4;
    v5 = v4[1];
    if (*v4 != v5)
    {
      while (1)
      {
        while (!sub_658A08(v6 + 744, 1))
        {
LABEL_6:
          v6 += 1120;
          if (v6 == v5)
          {
            goto LABEL_68;
          }
        }

        v7 = v80;
        if (v80 < v81)
        {
          sub_52B7D8(v80, v6);
          v80 = v7 + 1120;
          goto LABEL_6;
        }

        v8 = 0xAF8AF8AF8AF8AF8BLL * ((v80 - v79) >> 5);
        v9 = v8 + 1;
        if (v8 + 1 > 0x3A83A83A83A83ALL)
        {
          sub_1794();
        }

        if (0x5F15F15F15F15F16 * ((v81 - v79) >> 5) > v9)
        {
          v9 = 0x5F15F15F15F15F16 * ((v81 - v79) >> 5);
        }

        if (0xAF8AF8AF8AF8AF8BLL * ((v81 - v79) >> 5) >= 0x1D41D41D41D41DLL)
        {
          v10 = 0x3A83A83A83A83ALL;
        }

        else
        {
          v10 = v9;
        }

        v77 = &v79;
        if (v10)
        {
          if (v10 <= 0x3A83A83A83A83ALL)
          {
            operator new();
          }

          sub_1808();
        }

        p_p = 0;
        v74 = 32 * ((v80 - v79) >> 5);
        v75 = v74;
        v76 = 0;
        sub_52B7D8(v74, v6);
        v11 = 1120 * v8;
        v13 = v79;
        v12 = v80;
        v14 = v79 + v74 - v80;
        if (v80 != v79)
        {
          break;
        }

LABEL_65:
        v79 = v14;
        v80 = v11 + 1120;
        v81 = v76;
        if (v13)
        {
          operator delete(v13);
        }

        v80 = v11 + 1120;
        v6 += 1120;
        if (v6 == v5)
        {
          goto LABEL_68;
        }
      }

      v15 = v79;
      v16 = v79 + v74 - v80;
      do
      {
        v17 = sub_529850(v16, v15);
        v15 += 1120;
        v16 = v17 + 1120;
      }

      while (v15 != v12);
      while (1)
      {
        if (*(v13 + 1104) != 1)
        {
          *(v13 + 704) = off_26696C8;
          if ((*(v13 + 735) & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_52;
        }

        v18 = *(v13 + 1080);
        if (v18)
        {
          break;
        }

LABEL_46:
        if (*(v13 + 1071) < 0)
        {
          operator delete(*(v13 + 1048));
          if ((*(v13 + 1039) & 0x80000000) == 0)
          {
LABEL_48:
            if ((*(v13 + 1007) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_61;
          }
        }

        else if ((*(v13 + 1039) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        operator delete(*(v13 + 1016));
        if ((*(v13 + 1007) & 0x80000000) == 0)
        {
LABEL_49:
          if ((*(v13 + 983) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

LABEL_62:
          operator delete(*(v13 + 960));
          if ((*(v13 + 959) & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_63;
        }

LABEL_61:
        operator delete(*(v13 + 984));
        if (*(v13 + 983) < 0)
        {
          goto LABEL_62;
        }

LABEL_50:
        if ((*(v13 + 959) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

LABEL_63:
        operator delete(*(v13 + 936));
LABEL_51:
        sub_33D080(v13 + 744);
        *(v13 + 704) = off_26696C8;
        if ((*(v13 + 735) & 0x80000000) == 0)
        {
LABEL_26:
          if ((*(v13 + 655) & 0x80000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_53;
        }

LABEL_52:
        operator delete(*(v13 + 712));
        if ((*(v13 + 655) & 0x80000000) == 0)
        {
LABEL_27:
          if ((*(v13 + 623) & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_54;
        }

LABEL_53:
        operator delete(*(v13 + 632));
        if ((*(v13 + 623) & 0x80000000) == 0)
        {
LABEL_28:
          if ((*(v13 + 599) & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_55;
        }

LABEL_54:
        operator delete(*(v13 + 600));
        if ((*(v13 + 599) & 0x80000000) == 0)
        {
LABEL_29:
          if ((*(v13 + 559) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_56;
        }

LABEL_55:
        operator delete(*(v13 + 576));
        if ((*(v13 + 559) & 0x80000000) == 0)
        {
LABEL_30:
          if ((*(v13 + 527) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_57;
        }

LABEL_56:
        operator delete(*(v13 + 536));
        if ((*(v13 + 527) & 0x80000000) == 0)
        {
LABEL_31:
          if (*(v13 + 503) < 0)
          {
            goto LABEL_58;
          }

          goto LABEL_23;
        }

LABEL_57:
        operator delete(*(v13 + 504));
        if (*(v13 + 503) < 0)
        {
LABEL_58:
          operator delete(*(v13 + 480));
        }

LABEL_23:
        sub_2C0F28(v13);
        v13 += 1120;
        if (v13 == v12)
        {
          v13 = v79;
          goto LABEL_65;
        }
      }

      v19 = *(v13 + 1088);
      v20 = *(v13 + 1080);
      if (v19 == v18)
      {
LABEL_45:
        *(v13 + 1088) = v18;
        operator delete(v20);
        goto LABEL_46;
      }

      while (1)
      {
        if (*(v19 - 1) < 0)
        {
          operator delete(*(v19 - 24));
          if ((*(v19 - 25) & 0x80000000) == 0)
          {
LABEL_39:
            if (*(v19 - 49) < 0)
            {
              goto LABEL_43;
            }

            goto LABEL_36;
          }
        }

        else if ((*(v19 - 25) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        operator delete(*(v19 - 48));
        if (*(v19 - 49) < 0)
        {
LABEL_43:
          operator delete(*(v19 - 72));
        }

LABEL_36:
        v19 -= 248;
        sub_33D5A0(v19);
        if (v19 == v18)
        {
          v20 = *(v13 + 1080);
          goto LABEL_45;
        }
      }
    }

LABEL_68:
    v21 = sub_68F370(v3);
    v23 = *v21;
    v22 = v21[1];
    while (v23 != v22)
    {
      if (sub_658A08(v23 + 744, 1))
      {
        v24 = v80;
        if (v80 < v81)
        {
          sub_52B7D8(v80, v23);
          v25 = v24 + 1120;
LABEL_69:
          v80 = v25;
          goto LABEL_70;
        }

        v26 = 0xAF8AF8AF8AF8AF8BLL * ((v80 - v79) >> 5);
        v27 = v26 + 1;
        if (v26 + 1 > 0x3A83A83A83A83ALL)
        {
          sub_1794();
        }

        if (0x5F15F15F15F15F16 * ((v81 - v79) >> 5) > v27)
        {
          v27 = 0x5F15F15F15F15F16 * ((v81 - v79) >> 5);
        }

        if (0xAF8AF8AF8AF8AF8BLL * ((v81 - v79) >> 5) >= 0x1D41D41D41D41DLL)
        {
          v28 = 0x3A83A83A83A83ALL;
        }

        else
        {
          v28 = v27;
        }

        v77 = &v79;
        if (v28)
        {
          if (v28 <= 0x3A83A83A83A83ALL)
          {
            operator new();
          }

          sub_1808();
        }

        p_p = 0;
        v74 = 32 * ((v80 - v79) >> 5);
        v75 = v74;
        v76 = 0;
        sub_52B7D8(v74, v23);
        v29 = 1120 * v26;
        v31 = v79;
        v30 = v80;
        v32 = v79 + v74 - v80;
        if (v80 != v79)
        {
          v33 = v79;
          v34 = v79 + v74 - v80;
          do
          {
            v35 = sub_529850(v34, v33);
            v33 += 1120;
            v34 = v35 + 1120;
          }

          while (v33 != v30);
          while (2)
          {
            if (*(v31 + 1104) != 1)
            {
              *(v31 + 704) = off_26696C8;
              if ((*(v31 + 735) & 0x80000000) == 0)
              {
                goto LABEL_91;
              }

LABEL_117:
              operator delete(*(v31 + 712));
              if (*(v31 + 655) < 0)
              {
                goto LABEL_118;
              }

LABEL_92:
              if ((*(v31 + 623) & 0x80000000) == 0)
              {
                goto LABEL_93;
              }

LABEL_119:
              operator delete(*(v31 + 600));
              if (*(v31 + 599) < 0)
              {
                goto LABEL_120;
              }

LABEL_94:
              if ((*(v31 + 559) & 0x80000000) == 0)
              {
                goto LABEL_95;
              }

LABEL_121:
              operator delete(*(v31 + 536));
              if (*(v31 + 527) < 0)
              {
                goto LABEL_122;
              }

LABEL_96:
              if (*(v31 + 503) < 0)
              {
                goto LABEL_123;
              }

              goto LABEL_88;
            }

            v36 = *(v31 + 1080);
            if (v36)
            {
              v37 = *(v31 + 1088);
              v38 = *(v31 + 1080);
              if (v37 == v36)
              {
LABEL_110:
                *(v31 + 1088) = v36;
                operator delete(v38);
                goto LABEL_111;
              }

              while (2)
              {
                if (*(v37 - 1) < 0)
                {
                  operator delete(*(v37 - 24));
                  if (*(v37 - 25) < 0)
                  {
                    goto LABEL_107;
                  }

LABEL_104:
                  if (*(v37 - 49) < 0)
                  {
LABEL_108:
                    operator delete(*(v37 - 72));
                  }
                }

                else
                {
                  if ((*(v37 - 25) & 0x80000000) == 0)
                  {
                    goto LABEL_104;
                  }

LABEL_107:
                  operator delete(*(v37 - 48));
                  if (*(v37 - 49) < 0)
                  {
                    goto LABEL_108;
                  }
                }

                v37 -= 248;
                sub_33D5A0(v37);
                if (v37 == v36)
                {
                  v38 = *(v31 + 1080);
                  goto LABEL_110;
                }

                continue;
              }
            }

LABEL_111:
            if (*(v31 + 1071) < 0)
            {
              operator delete(*(v31 + 1048));
              if (*(v31 + 1039) < 0)
              {
                goto LABEL_125;
              }

LABEL_113:
              if ((*(v31 + 1007) & 0x80000000) == 0)
              {
                goto LABEL_114;
              }

LABEL_126:
              operator delete(*(v31 + 984));
              if (*(v31 + 983) < 0)
              {
                goto LABEL_127;
              }

LABEL_115:
              if (*(v31 + 959) < 0)
              {
LABEL_128:
                operator delete(*(v31 + 936));
              }
            }

            else
            {
              if ((*(v31 + 1039) & 0x80000000) == 0)
              {
                goto LABEL_113;
              }

LABEL_125:
              operator delete(*(v31 + 1016));
              if (*(v31 + 1007) < 0)
              {
                goto LABEL_126;
              }

LABEL_114:
              if ((*(v31 + 983) & 0x80000000) == 0)
              {
                goto LABEL_115;
              }

LABEL_127:
              operator delete(*(v31 + 960));
              if (*(v31 + 959) < 0)
              {
                goto LABEL_128;
              }
            }

            sub_33D080(v31 + 744);
            *(v31 + 704) = off_26696C8;
            if (*(v31 + 735) < 0)
            {
              goto LABEL_117;
            }

LABEL_91:
            if ((*(v31 + 655) & 0x80000000) == 0)
            {
              goto LABEL_92;
            }

LABEL_118:
            operator delete(*(v31 + 632));
            if (*(v31 + 623) < 0)
            {
              goto LABEL_119;
            }

LABEL_93:
            if ((*(v31 + 599) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

LABEL_120:
            operator delete(*(v31 + 576));
            if (*(v31 + 559) < 0)
            {
              goto LABEL_121;
            }

LABEL_95:
            if ((*(v31 + 527) & 0x80000000) == 0)
            {
              goto LABEL_96;
            }

LABEL_122:
            operator delete(*(v31 + 504));
            if (*(v31 + 503) < 0)
            {
LABEL_123:
              operator delete(*(v31 + 480));
            }

LABEL_88:
            sub_2C0F28(v31);
            v31 += 1120;
            if (v31 != v30)
            {
              continue;
            }

            break;
          }

          v31 = v79;
        }

        v25 = v29 + 1120;
        v79 = v32;
        v80 = v29 + 1120;
        v81 = v76;
        if (v31)
        {
          operator delete(v31);
        }

        goto LABEL_69;
      }

LABEL_70:
      v23 += 1120;
    }

    v3 += 7808;
  }

  while (v3 != v69);
  v39 = v79;
  v40 = v80;
  if (v79 == v80)
  {
    v2 = a2;
  }

  else
  {
    v2 = a2;
    do
    {
      v41 = sub_65959C(v39);
      v39 += 1120;
    }

    while (v39 != v40 && v41);
    if (!v41)
    {
      goto LABEL_147;
    }

    v39 = v79;
    v40 = v80;
  }

LABEL_142:
  v43 = sub_772D50(v39, v40, &v79);
  v44 = v80;
  if (v43 != v80)
  {
    while (v44 != v43)
    {
      v44 -= 1120;
      sub_3A9518(v44);
    }

    v80 = v43;
  }

LABEL_147:
  v45 = *v2;
  v46 = v2[1];
  if (*v2 != v46)
  {
    while (1)
    {
      v48 = sub_68F328(v45);
      if (*v48 == v48[1])
      {
        if (v79 != v80)
        {
          sub_803D90(&v79, 1, &p_p);
          sub_68DA48(v45, &p_p);
          if (v78 == 1)
          {
            sub_3A9518(&v75);
          }
        }

        goto LABEL_151;
      }

      v49 = sub_68F328(v45);
      __p = 0;
      v71 = 0;
      v72 = 0;
      v50 = *v49;
      v51 = v49[1];
      p_p = &__p;
      LOBYTE(v74) = 0;
      if (v51 != v50)
      {
        if (0xAF8AF8AF8AF8AF8BLL * ((v51 - v50) >> 5) <= 0x3A83A83A83A83ALL)
        {
          operator new();
        }

        sub_1794();
      }

      sub_800664(&__p);
      v53 = __p;
      v52 = v71;
      if (__p == v71)
      {
        goto LABEL_162;
      }

      do
      {
        v54 = sub_65959C(v53);
        v53 += 1120;
      }

      while (v53 != v52 && v54);
      v53 = __p;
      v52 = v71;
      if (v54)
      {
LABEL_162:
        v56 = sub_772D50(v53, v52, &__p);
        v52 = v71;
        if (v56 != v71)
        {
          v57 = v71;
          v52 = v56;
          while (v57 != v52)
          {
            if (*(v57 - 16) != 1)
            {
              *(v57 - 416) = off_26696C8;
              if ((*(v57 - 385) & 0x80000000) == 0)
              {
                goto LABEL_171;
              }

              goto LABEL_197;
            }

            v58 = *(v57 - 40);
            if (v58)
            {
              v59 = *(v57 - 32);
              v60 = *(v57 - 40);
              if (v59 == v58)
              {
LABEL_190:
                *(v57 - 32) = v58;
                operator delete(v60);
                goto LABEL_191;
              }

              while (2)
              {
                if (*(v59 - 1) < 0)
                {
                  operator delete(*(v59 - 24));
                  if (*(v59 - 25) < 0)
                  {
                    goto LABEL_187;
                  }

LABEL_184:
                  if (*(v59 - 49) < 0)
                  {
LABEL_188:
                    operator delete(*(v59 - 72));
                  }
                }

                else
                {
                  if ((*(v59 - 25) & 0x80000000) == 0)
                  {
                    goto LABEL_184;
                  }

LABEL_187:
                  operator delete(*(v59 - 48));
                  if (*(v59 - 49) < 0)
                  {
                    goto LABEL_188;
                  }
                }

                v59 -= 248;
                sub_33D5A0(v59);
                if (v59 == v58)
                {
                  v60 = *(v57 - 40);
                  goto LABEL_190;
                }

                continue;
              }
            }

LABEL_191:
            if (*(v57 - 49) < 0)
            {
              operator delete(*(v57 - 72));
              if ((*(v57 - 81) & 0x80000000) == 0)
              {
LABEL_193:
                if ((*(v57 - 113) & 0x80000000) == 0)
                {
                  goto LABEL_194;
                }

                goto LABEL_206;
              }
            }

            else if ((*(v57 - 81) & 0x80000000) == 0)
            {
              goto LABEL_193;
            }

            operator delete(*(v57 - 104));
            if ((*(v57 - 113) & 0x80000000) == 0)
            {
LABEL_194:
              if ((*(v57 - 137) & 0x80000000) == 0)
              {
                goto LABEL_195;
              }

LABEL_207:
              operator delete(*(v57 - 160));
              if ((*(v57 - 161) & 0x80000000) == 0)
              {
                goto LABEL_196;
              }

              goto LABEL_208;
            }

LABEL_206:
            operator delete(*(v57 - 136));
            if (*(v57 - 137) < 0)
            {
              goto LABEL_207;
            }

LABEL_195:
            if ((*(v57 - 161) & 0x80000000) == 0)
            {
              goto LABEL_196;
            }

LABEL_208:
            operator delete(*(v57 - 184));
LABEL_196:
            sub_33D080(v57 - 376);
            *(v57 - 416) = off_26696C8;
            if ((*(v57 - 385) & 0x80000000) == 0)
            {
LABEL_171:
              if ((*(v57 - 465) & 0x80000000) == 0)
              {
                goto LABEL_172;
              }

              goto LABEL_198;
            }

LABEL_197:
            operator delete(*(v57 - 408));
            if ((*(v57 - 465) & 0x80000000) == 0)
            {
LABEL_172:
              if ((*(v57 - 497) & 0x80000000) == 0)
              {
                goto LABEL_173;
              }

              goto LABEL_199;
            }

LABEL_198:
            operator delete(*(v57 - 488));
            if ((*(v57 - 497) & 0x80000000) == 0)
            {
LABEL_173:
              if ((*(v57 - 521) & 0x80000000) == 0)
              {
                goto LABEL_174;
              }

              goto LABEL_200;
            }

LABEL_199:
            operator delete(*(v57 - 520));
            if ((*(v57 - 521) & 0x80000000) == 0)
            {
LABEL_174:
              if ((*(v57 - 561) & 0x80000000) == 0)
              {
                goto LABEL_175;
              }

              goto LABEL_201;
            }

LABEL_200:
            operator delete(*(v57 - 544));
            if ((*(v57 - 561) & 0x80000000) == 0)
            {
LABEL_175:
              if (*(v57 - 593) < 0)
              {
                goto LABEL_202;
              }

              goto LABEL_176;
            }

LABEL_201:
            operator delete(*(v57 - 584));
            if (*(v57 - 593) < 0)
            {
LABEL_202:
              operator delete(*(v57 - 616));
              if ((*(v57 - 617) & 0x80000000) == 0)
              {
                goto LABEL_167;
              }

              goto LABEL_203;
            }

LABEL_176:
            if ((*(v57 - 617) & 0x80000000) == 0)
            {
              goto LABEL_167;
            }

LABEL_203:
            operator delete(*(v57 - 640));
LABEL_167:
            v57 -= 1120;
            sub_2C0F28(v57);
          }

          v71 = v52;
        }

        v53 = __p;
      }

      if (v53 != v52)
      {
        sub_803D90(&__p, 0, &p_p);
        sub_68DA48(v45, &p_p);
        if (v78 == 1)
        {
          sub_3A9518(&v75);
        }

        v53 = __p;
      }

      if (v53)
      {
        break;
      }

LABEL_151:
      v45 += 976;
      if (v45 == v46)
      {
        goto LABEL_259;
      }
    }

    v61 = v71;
    v47 = v53;
    if (v71 == v53)
    {
LABEL_150:
      v71 = v53;
      operator delete(v47);
      goto LABEL_151;
    }

    while (1)
    {
      if (*(v61 - 16) != 1)
      {
        *(v61 - 416) = off_26696C8;
        if ((*(v61 - 385) & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_247;
      }

      v62 = *(v61 - 40);
      if (v62)
      {
        break;
      }

LABEL_241:
      if (*(v61 - 49) < 0)
      {
        operator delete(*(v61 - 72));
        if ((*(v61 - 81) & 0x80000000) == 0)
        {
LABEL_243:
          if ((*(v61 - 113) & 0x80000000) == 0)
          {
            goto LABEL_244;
          }

          goto LABEL_256;
        }
      }

      else if ((*(v61 - 81) & 0x80000000) == 0)
      {
        goto LABEL_243;
      }

      operator delete(*(v61 - 104));
      if ((*(v61 - 113) & 0x80000000) == 0)
      {
LABEL_244:
        if ((*(v61 - 137) & 0x80000000) == 0)
        {
          goto LABEL_245;
        }

LABEL_257:
        operator delete(*(v61 - 160));
        if ((*(v61 - 161) & 0x80000000) == 0)
        {
          goto LABEL_246;
        }

        goto LABEL_258;
      }

LABEL_256:
      operator delete(*(v61 - 136));
      if (*(v61 - 137) < 0)
      {
        goto LABEL_257;
      }

LABEL_245:
      if ((*(v61 - 161) & 0x80000000) == 0)
      {
        goto LABEL_246;
      }

LABEL_258:
      operator delete(*(v61 - 184));
LABEL_246:
      sub_33D080(v61 - 376);
      *(v61 - 416) = off_26696C8;
      if ((*(v61 - 385) & 0x80000000) == 0)
      {
LABEL_221:
        if ((*(v61 - 465) & 0x80000000) == 0)
        {
          goto LABEL_222;
        }

        goto LABEL_248;
      }

LABEL_247:
      operator delete(*(v61 - 408));
      if ((*(v61 - 465) & 0x80000000) == 0)
      {
LABEL_222:
        if ((*(v61 - 497) & 0x80000000) == 0)
        {
          goto LABEL_223;
        }

        goto LABEL_249;
      }

LABEL_248:
      operator delete(*(v61 - 488));
      if ((*(v61 - 497) & 0x80000000) == 0)
      {
LABEL_223:
        if ((*(v61 - 521) & 0x80000000) == 0)
        {
          goto LABEL_224;
        }

        goto LABEL_250;
      }

LABEL_249:
      operator delete(*(v61 - 520));
      if ((*(v61 - 521) & 0x80000000) == 0)
      {
LABEL_224:
        if ((*(v61 - 561) & 0x80000000) == 0)
        {
          goto LABEL_225;
        }

        goto LABEL_251;
      }

LABEL_250:
      operator delete(*(v61 - 544));
      if ((*(v61 - 561) & 0x80000000) == 0)
      {
LABEL_225:
        if ((*(v61 - 593) & 0x80000000) == 0)
        {
          goto LABEL_226;
        }

        goto LABEL_252;
      }

LABEL_251:
      operator delete(*(v61 - 584));
      if ((*(v61 - 593) & 0x80000000) == 0)
      {
LABEL_226:
        if (*(v61 - 617) < 0)
        {
          goto LABEL_253;
        }

        goto LABEL_218;
      }

LABEL_252:
      operator delete(*(v61 - 616));
      if (*(v61 - 617) < 0)
      {
LABEL_253:
        operator delete(*(v61 - 640));
      }

LABEL_218:
      v61 -= 1120;
      sub_2C0F28(v61);
      if (v61 == v53)
      {
        v47 = __p;
        goto LABEL_150;
      }
    }

    v63 = *(v61 - 32);
    v64 = *(v61 - 40);
    if (v63 == v62)
    {
LABEL_240:
      *(v61 - 32) = v62;
      operator delete(v64);
      goto LABEL_241;
    }

    while (1)
    {
      if (*(v63 - 1) < 0)
      {
        operator delete(*(v63 - 24));
        if ((*(v63 - 25) & 0x80000000) == 0)
        {
LABEL_234:
          if (*(v63 - 49) < 0)
          {
            goto LABEL_238;
          }

          goto LABEL_231;
        }
      }

      else if ((*(v63 - 25) & 0x80000000) == 0)
      {
        goto LABEL_234;
      }

      operator delete(*(v63 - 48));
      if (*(v63 - 49) < 0)
      {
LABEL_238:
        operator delete(*(v63 - 72));
      }

LABEL_231:
      v63 -= 248;
      sub_33D5A0(v63);
      if (v63 == v62)
      {
        v64 = *(v61 - 40);
        goto LABEL_240;
      }
    }
  }

LABEL_259:
  v65 = v79;
  if (v79)
  {
    v66 = v80;
    v67 = v79;
    if (v80 != v79)
    {
      do
      {
        v66 = sub_3A9518(v66 - 1120);
      }

      while (v66 != v65);
      v67 = v79;
    }

    v80 = v65;
    operator delete(v67);
  }
}

void sub_8029E8(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (*(a1 + 152) == 1 && sub_68D058(*a3))
  {
    sub_69FC94(a3, &v45);
    v4 = *a3;
    v5 = a3[1];
    if (*a3 != v5)
    {
LABEL_12:
      while ((sub_68D828(v4, 4) & 1) == 0 && !sub_68D828(v4, 9))
      {
        v4 += 976;
        if (v4 == v5)
        {
          v35 = 1;
          v4 = *a3;
          v6 = a3[1];
          if (*a3 != v6)
          {
            goto LABEL_18;
          }

          goto LABEL_5;
        }
      }

      v35 = 0;
      v4 = *a3;
      v6 = a3[1];
      if (*a3 == v6)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v4 = *a3;
    v5 = a3[1];
    if (*a3 != v5)
    {
      goto LABEL_12;
    }
  }

  v35 = 1;
  v6 = v5;
  if (v4 == v5)
  {
LABEL_5:
    v34 = 0;
    v7 = v6;
    if (v4 != v6)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

LABEL_18:
  v9 = v4 + 976;
  do
  {
    v10 = sub_68D828(v4, 5);
    v4 += 976;
    if (v9 == v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v9 += 976;
  }

  while (v11 != 1);
  v34 = v10;
  v4 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
LABEL_24:
    while (!sub_68DFF0(v4) && !sub_68E388(v4))
    {
      v4 += 976;
      if (v4 == v7)
      {
        v36 = 1;
        v4 = *a3;
        v7 = a3[1];
        if (*a3 != v7)
        {
          goto LABEL_30;
        }

        goto LABEL_7;
      }
    }

    v36 = 0;
    v4 = *a3;
    v7 = a3[1];
    if (*a3 == v7)
    {
      goto LABEL_7;
    }

LABEL_30:
    while ((sub_68D7D8(v4) & 1) == 0)
    {
      v4 += 976;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    v32 = a3[1];
    if (v4 != v32)
    {
      goto LABEL_8;
    }

LABEL_34:
    v12 = 0;
    v33 = 0;
    v13 = 0;
    goto LABEL_39;
  }

LABEL_6:
  v36 = 1;
  if (v4 != v7)
  {
    goto LABEL_30;
  }

LABEL_7:
  v32 = v7;
  if (v4 == v7)
  {
    goto LABEL_34;
  }

LABEL_8:
  if (sub_68C850(v4) >= *(a1 + 48) && (v8 = sub_68C850(v4), v8 / 10.0 >= sub_68C8EC(v4) / 10.0 * *(a1 + 56)))
  {
    v33 = sub_68E778(v4);
  }

  else
  {
    v33 = 0;
  }

  v12 = sub_68F1B8(v4);
  if (sub_68D828(v4, 4))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_68D828(v4, 9);
  }

LABEL_39:
  v14 = a3[1] - *a3;
  if (v14)
  {
    v15 = 0;
    v27 = 0x4FBCDA3AC10C9715 * ((v4 - *a3) >> 7);
    v28 = 0x4FBCDA3AC10C9715 * (v14 >> 7);
    v29 = v13 ^ 1;
    v30 = v12 & 0xFD;
    v31 = v12 & 0xFE;
    while (1)
    {
      v16 = sub_7DE9A0(a3, v15);
      if (sub_68D828(v16, 4))
      {
        v17 = 1;
      }

      else
      {
        v17 = sub_68D828(v16, 9);
      }

      v18 = sub_68D828(v16, 5);
      if (sub_68DFF0(v16))
      {
        v19 = 1;
      }

      else
      {
        v19 = sub_68E388(v16) != 0;
      }

      v20 = sub_68F1B8(v16);
      v21 = sub_68C850(v16);
      v22 = sub_68C8EC(v16);
      v23 = *(a1 + 64);
      if ((*(a1 + 8) & 1) == 0 && ((v17 ^ 1) & 1) == 0)
      {
        if ((sub_68D828(v16, 4) & 1) != 0 || !sub_68D828(v16, 9))
        {
          v39 = 9;
          v40 = 0;
          v41[0] = 0;
          v42 = 0;
          v43 = 0;
          v44[0] = 0;
          *(v44 + 7) = 0;
          sub_68DA48(v16, &v39);
        }

        else
        {
          v39 = 10;
          v40 = 0;
          v41[0] = 0;
          v42 = 0;
          v43 = 0;
          v44[0] = 0;
          *(v44 + 7) = 0;
          sub_68DA48(v16, &v39);
        }

        if (v42 == 1)
        {
          sub_3A9518(v41);
        }
      }

      if (!(v36 & 1 | ((a2[4] & 1) == 0) | v19))
      {
        v39 = 17;
        v40 = 0;
        v41[0] = 0;
        v42 = 0;
        v43 = 0;
        v44[0] = 0;
        *(v44 + 7) = 0;
        sub_68DA48(v16, &v39);
        if (v42 == 1)
        {
          sub_3A9518(v41);
        }
      }

      if (v31 == 2 && (v20 & 0xFE) != 2)
      {
        v39 = 16;
        v40 = 0;
        v41[0] = 0;
        v42 = 0;
        v43 = 0;
        v44[0] = 0;
        *(v44 + 7) = 0;
        sub_68DA48(v16, &v39);
        if (v42 == 1)
        {
          sub_3A9518(v41);
        }
      }

      if (v30 == 1 && (v20 & 0xFD) != 1)
      {
        v39 = 15;
        v40 = 0;
        v41[0] = 0;
        v42 = 0;
        v43 = 0;
        v44[0] = 0;
        *(v44 + 7) = 0;
        sub_68DA48(v16, &v39);
        if (v42 == 1)
        {
          sub_3A9518(v41);
        }
      }

      v24 = a2[5];
      if (((v24 | v29 | v17) & 1) == 0)
      {
        v39 = 11;
        v40 = 0;
        v41[0] = 0;
        v42 = 0;
        v43 = 0;
        v44[0] = 0;
        *(v44 + 7) = 0;
        sub_68DA48(v16, &v39);
        if (v42 == 1)
        {
          sub_3A9518(v41);
        }

        LOBYTE(v24) = a2[5];
      }

      if (!(v35 & 1 | v17 & 1 | ((v24 & 1) == 0)))
      {
        v39 = 11;
        v40 = 0;
        v41[0] = 0;
        v42 = 0;
        v43 = 0;
        v44[0] = 0;
        *(v44 + 7) = 0;
        sub_68DA48(v16, &v39);
        if (v42 == 1)
        {
          sub_3A9518(v41);
        }
      }

      if ((v34 & a2[6]) != 1)
      {
        goto LABEL_81;
      }

      if ((v18 & 1) == 0)
      {
        break;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        v39 = 12;
        v40 = 0;
        v41[0] = 0;
        v42 = 0;
        v43 = 0;
        v44[0] = 0;
        *(v44 + 7) = 0;
        sub_68DA48(v16, &v39);
        goto LABEL_79;
      }

LABEL_81:
      if ((*(a1 + 19) & v33 & 1) != 0 && v21 / v22 < v23)
      {
        v39 = 14;
        v40 = 0;
        v41[0] = 0;
        v42 = 0;
        v43 = 0;
        v44[0] = 0;
        *(v44 + 7) = 0;
        sub_68DA48(v16, &v39);
        if (v42 == 1)
        {
          sub_3A9518(v41);
        }
      }

      if (v4 != v32 && (*(a1 + 152) & 1) != 0 && v27 != v15 && v15 < v46)
      {
        v25 = sub_61B864(&v45, v15);
        if ((*v25 & v26) != 0)
        {
          v39 = 21;
          v40 = 0;
          v41[0] = 0;
          v42 = 0;
          v43 = 0;
          v44[0] = 0;
          *(v44 + 7) = 0;
          sub_68DA48(v16, &v39);
          if (v42 == 1)
          {
            sub_3A9518(v41);
          }
        }
      }

      if (*(a1 + 153) == 1)
      {
        if (sub_68D928(v16, 11))
        {
          v39 = 22;
          v40 = 0;
          v41[0] = 0;
          v42 = 0;
          v43 = 0;
          v44[0] = 0;
          *(v44 + 7) = 0;
          sub_68DA48(v16, &v39);
          if (v42 == 1)
          {
            sub_3A9518(v41);
          }
        }
      }

      if (v28 == ++v15)
      {
        goto LABEL_96;
      }
    }

    v39 = 13;
    v40 = 0;
    v41[0] = 0;
    v42 = 0;
    v43 = 0;
    v44[0] = 0;
    *(v44 + 7) = 0;
    sub_68DA48(v16, &v39);
LABEL_79:
    if (v42 == 1)
    {
      sub_3A9518(v41);
    }

    goto LABEL_81;
  }

LABEL_96:
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_803218(_Unwind_Exception *a1)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

int64_t sub_8032D0(int64_t result, unsigned int ***a2)
{
  v3 = result;
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2 + 976;
  if (*a2 != v5 && v6 != v5)
  {
    do
    {
      v15 = sub_68C850(v6);
      result = sub_68C850(v4);
      if (v15 < result)
      {
        v4 = v6;
      }

      v6 += 976;
    }

    while (v6 != v5);
    v8 = *a2;
    v5 = a2[1];
    v9 = (*a2 + 976);
    if (*a2 != v5 && v9 != v5)
    {
      goto LABEL_10;
    }

LABEL_26:
    v17 = v8;
    v18 = v8;
    v11 = v8;
    v62 = a2;
    if (v8 != v5)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  v8 = *a2;
  v9 = (v4 + 976);
  if (v4 == v5 || v9 == v5)
  {
    goto LABEL_26;
  }

LABEL_10:
  v11 = v8;
  do
  {
    v12 = sub_68C794(v9);
    if (v12 == sub_68C794(v11))
    {
      v13 = sub_68C850(v9);
      result = sub_68C850(v11);
      if (v13 < result)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = sub_68C794(v9);
      result = sub_68C794(v11);
      if (v14 < result)
      {
LABEL_11:
        v11 = v9;
      }
    }

    v9 += 976;
  }

  while (v9 != v5);
  v17 = *a2;
  v5 = a2[1];
  v18 = *a2;
  v62 = a2;
  if (*a2 == v5)
  {
    goto LABEL_35;
  }

LABEL_29:
  v19 = v18 + 976;
  if (v18 + 976 == v5)
  {
LABEL_35:
    v22 = v17;
    v21 = v17;
    if (v18 == v5)
    {
      return result;
    }

    goto LABEL_36;
  }

  do
  {
    v20 = sub_68C7DC(v19);
    result = sub_68C7DC(v18);
    if (v20 < result)
    {
      v18 = v19;
    }

    v19 += 976;
  }

  while (v19 != v5);
  v21 = v18;
  v22 = *v62;
  v5 = v62[1];
  v18 = *v62;
  if (*v62 == v5)
  {
    return result;
  }

LABEL_36:
  v63 = 0x4FBCDA3AC10C9715 * ((v4 - v8) >> 7);
  v60 = 0x4FBCDA3AC10C9715 * ((v21 - v22) >> 7);
  v61 = 0x4FBCDA3AC10C9715 * ((v11 - v17) >> 7);
  while (1)
  {
    result = sub_68D7D8(v18);
    if (result)
    {
      break;
    }

    v18 += 976;
    if (v18 == v5)
    {
      v18 = v5;
      break;
    }
  }

  v23 = v62;
  v64 = v62[1];
  v24 = v64 - *v62;
  if (v24)
  {
    v25 = 0;
    v26 = 0x4FBCDA3AC10C9715 * (v24 >> 7);
    do
    {
      v27 = &(*v23)[976 * v25];
      if (*(v3 + 8) == 1)
      {
        v28 = sub_3EB950(&(*v23)[976 * v25]);
        v29 = *v28 == v28[1];
        if (*(v3 + 78) != 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v29 = 1;
        if (*(v3 + 78) != 1)
        {
          goto LABEL_50;
        }
      }

      if (*(v3 + 1723) == 1 && sub_68F890(v27))
      {
        v65 = 24;
        v66 = 0;
        v67[0] = 0;
        v68 = 0;
        v69 = 0;
        memset(v70, 0, 11);
        result = sub_68DA48(v27, &v65);
        goto LABEL_126;
      }

LABEL_50:
      result = sub_68D7D8(v27);
      if (result)
      {
        result = sub_67AE58(v3 + 160);
        if (result)
        {
          if (*(v3 + 1580) == 1)
          {
            result = sub_68C5B4(v27);
            if (result)
            {
              v30 = sub_68C5B4(v27);
              v65 = 0;
              v66 = 0;
              v67[0] = 0;
              v68 = 0;
              v69 = 1;
              v70[0] = v30;
              LOWORD(v70[1]) = 0;
              BYTE2(v70[1]) = 0;
              result = sub_68DA48(v27, &v65);
              goto LABEL_126;
            }
          }
        }

        if (*(v3 + 77) == 1)
        {
          if (!v29)
          {
            goto LABEL_128;
          }

LABEL_65:
          v65 = 2;
          v66 = 0;
          v67[0] = 0;
          v68 = 0;
          v69 = 0;
          memset(v70, 0, 11);
          result = sub_68DA48(v27, &v65);
LABEL_126:
          if (v68 != 1)
          {
            goto LABEL_128;
          }

LABEL_127:
          result = sub_3A9518(v67);
          goto LABEL_128;
        }

        v35 = sub_68C850(v27);
        if (v35 < 0)
        {
          v36 = -5;
        }

        else
        {
          v36 = 5;
        }

        v37 = ceil((v35 / 10 + (((103 * (v36 + v35 % 10)) >> 15) & 1) + ((103 * (v36 + v35 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
        if (v37 >= 0.0)
        {
          if (v37 < 4.50359963e15)
          {
            v38 = (v37 + v37) + 1;
LABEL_76:
            v37 = (v38 >> 1);
          }
        }

        else if (v37 > -4.50359963e15)
        {
          v38 = (v37 + v37) - 1 + (((v37 + v37) - 1) >> 63);
          goto LABEL_76;
        }

        result = sub_68C850(v4);
        if (result < 0)
        {
          v40 = -5;
        }

        else
        {
          v40 = 5;
        }

        v41 = ceil((result / 10 + (((103 * (v40 + result % 10)) >> 15) & 1) + ((103 * (v40 + result % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
        if (v41 >= 0.0)
        {
          if (v41 < 4.50359963e15)
          {
            v42 = (v41 + v41) + 1;
LABEL_85:
            v41 = (v42 >> 1);
          }
        }

        else if (v41 > -4.50359963e15)
        {
          v42 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
          goto LABEL_85;
        }

        if (v37 == v41)
        {
LABEL_125:
          v65 = 1;
          v66 = 0;
          v67[0] = 0;
          v68 = 0;
          v69 = 0;
          memset(v70, 0, 11);
          result = sub_68DA48(v27, &v65);
        }

        else
        {
          if (!v29)
          {
            goto LABEL_128;
          }

          v65 = 3;
          v66 = 0;
          v67[0] = 0;
          v68 = 0;
          v69 = 0;
          memset(v70, 0, 11);
          result = sub_68DA48(v27, &v65);
        }

        goto LABEL_126;
      }

      if (v18 == v64)
      {
        goto LABEL_128;
      }

      if (v25 != v63)
      {
        v39 = 1;
        result = sub_67AE58(v3 + 160);
        if (!result)
        {
          goto LABEL_106;
        }

        goto LABEL_102;
      }

      v31 = sub_68C850(v27);
      if (v31 < 0)
      {
        v32 = -5;
      }

      else
      {
        v32 = 5;
      }

      v33 = ceil((v31 / 10 + (((103 * (v32 + v31 % 10)) >> 15) & 1) + ((103 * (v32 + v31 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
      if (v33 >= 0.0)
      {
        if (v33 >= 4.50359963e15)
        {
          goto LABEL_92;
        }

        v34 = (v33 + v33) + 1;
      }

      else
      {
        if (v33 <= -4.50359963e15)
        {
          goto LABEL_92;
        }

        v34 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
      }

      v33 = (v34 >> 1);
LABEL_92:
      v43 = sub_68C850(v18);
      if (v43 < 0)
      {
        v44 = -5;
      }

      else
      {
        v44 = 5;
      }

      v45 = ceil((v43 / 10 + (((103 * (v44 + v43 % 10)) >> 15) & 1) + ((103 * (v44 + v43 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
      if (v45 >= 0.0)
      {
        if (v45 >= 4.50359963e15)
        {
          goto LABEL_101;
        }

        v46 = (v45 + v45) + 1;
      }

      else
      {
        if (v45 <= -4.50359963e15)
        {
          goto LABEL_101;
        }

        v46 = (v45 + v45) - 1 + (((v45 + v45) - 1) >> 63);
      }

      v45 = (v46 >> 1);
LABEL_101:
      v39 = v33 >= v45;
      result = sub_67AE58(v3 + 160);
      if (!result)
      {
        goto LABEL_106;
      }

LABEL_102:
      if (*(v3 + 1580) == 1)
      {
        result = sub_68C5B4(v27);
        if (result)
        {
          v47 = sub_68C5B4(v27);
          v65 = 0;
          v66 = 0;
          v67[0] = 0;
          v68 = 0;
          v69 = 1;
          v70[0] = v47;
          LOWORD(v70[1]) = 0;
          BYTE2(v70[1]) = 0;
          result = sub_68DA48(v27, &v65);
          if (v68 == 1)
          {
            goto LABEL_127;
          }

          goto LABEL_128;
        }
      }

LABEL_106:
      v48 = *(v3 + 77);
      if (((v48 | v39) & 1) == 0)
      {
        goto LABEL_125;
      }

      if (!v39 && (v48 & 1) != 0)
      {
        result = sub_3EB950(v18);
        v57 = *result;
        v58 = *(result + 8);
        if (*result == v58)
        {
LABEL_136:
          if (v29)
          {
            goto LABEL_65;
          }

          goto LABEL_128;
        }

        while (*v57 != 2)
        {
          v57 += 292;
          if (v57 == v58)
          {
            goto LABEL_136;
          }
        }
      }

      if (*(v3 + 17) == 1 && v25 == v61)
      {
        v50 = sub_68C794(v27) + *(v3 + 20);
        result = sub_68C794(v18);
        v51 = v50 > result;
        v23 = v62;
        if (!v51)
        {
          v52 = *(v3 + 24) * sub_68C794(v27);
          result = sub_68C794(v18);
          if (v52 <= result)
          {
            v65 = 5;
            v66 = 0;
            v67[0] = 0;
            v68 = 0;
            v69 = 0;
            memset(v70, 0, 11);
            result = sub_68DA48(v27, &v65);
            goto LABEL_126;
          }
        }
      }

      if (*(v3 + 18) == 1 && v25 == v60)
      {
        v54 = *(v3 + 32) + sub_68C7DC(v27);
        result = sub_68C7DC(v18);
        v51 = v54 <= result;
        v23 = v62;
        if (v51)
        {
          v55 = *(v3 + 40) * sub_68C7DC(v27);
          if (v55 >= 0.0)
          {
            if (v55 < 4.50359963e15)
            {
              v56 = (v55 + v55) + 1;
LABEL_141:
              v55 = (v56 >> 1);
            }
          }

          else if (v55 > -4.50359963e15)
          {
            v56 = (v55 + v55) - 1 + (((v55 + v55) - 1) >> 63);
            goto LABEL_141;
          }

          v59 = v55;
          result = sub_68C7DC(v18);
          v51 = result < v59;
          v23 = v62;
          if (!v51)
          {
            v65 = 6;
            v66 = 0;
            v67[0] = 0;
            v68 = 0;
            v69 = 0;
            memset(v70, 0, 11);
            result = sub_68DA48(v27, &v65);
            goto LABEL_126;
          }
        }
      }

LABEL_128:
      if (*(v3 + 154) == 1 && *(v3 + 1610) == 1)
      {
        result = sub_68F7E4(v27);
        if (result == 1)
        {
          v65 = 23;
          v66 = 0;
          v67[0] = 0;
          v68 = 0;
          v69 = 0;
          memset(v70, 0, 11);
          result = sub_68DA48(v27, &v65);
          if (v68 == 1)
          {
            result = sub_3A9518(v67);
          }
        }
      }

      ++v25;
    }

    while (v25 != v26);
  }

  return result;
}

void sub_803D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (LOBYTE(STACK[0x498]) == 1)
  {
    sub_3A9518(va);
  }

  _Unwind_Resume(a1);
}

void sub_803D90(uint64_t *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    do
    {
      if (sub_659608(v6))
      {
        v11 = v37;
        if (v37 >= v38)
        {
          v10 = sub_603684(&v36, v6);
        }

        else
        {
          sub_52B7D8(v37, v6);
          v10 = v11 + 1120;
        }

        v37 = v10;
      }

      v6 += 1120;
    }

    while (v6 != v7);
    v9 = v36;
    v8 = v37;
  }

  v12 = v9;
  if (&v36 != a1)
  {
    v12 = v9;
    if (v9 == v8)
    {
      sub_5D8C78(&v36, *a1, a1[1], 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5));
      v12 = v36;
    }
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v13 = v37 - v12;
  if (v13)
  {
    if (0xAF8AF8AF8AF8AF8BLL * (v13 >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = v36;
  v15 = v37;
  v42[0] = &v33;
  while (v14 != v15)
  {
    if (v14[503] < 0)
    {
      sub_325C(__p, *(v14 + 60), *(v14 + 61));
    }

    else
    {
      *__p = *(v14 + 30);
      v40 = *(v14 + 62);
    }

    sub_9A5A0(v42, __p);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p[0]);
    }

    v14 += 1120;
  }

  sub_93524(&v33);
  v16 = v36;
  if (v36 == v37)
  {
    v18 = 1;
    *(a3 + 16) = 0;
    v20 = a3 + 16;
    v21 = (a3 + 8);
    *(a3 + 1136) = 0;
    if (a2)
    {
      goto LABEL_32;
    }

LABEL_38:
    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) < 2)
    {
      if (v9 == v8)
      {
        v24 = 10;
      }

      else
      {
        v24 = 7;
      }

      LODWORD(__p[0]) = v24;
      LOBYTE(__p[1]) = 0;
      v41 = 0;
      *(v42 + 4) = 0;
      *(&v42[1] + 3) = 0;
      *a3 = 0;
      *(a3 + 8) = v24;
      *(a3 + 1144) = 0;
      *(a3 + 1148) = v42[0];
      *(a3 + 1155) = *(v42 + 7);
    }

    else
    {
      if (v9 != v8)
      {
        *(v42 + 4) = 0;
        *(&v42[1] + 3) = 0;
        *a3 = 0;
        *(a3 + 8) = 2;
        *(a3 + 1144) = 0;
        *(a3 + 1148) = v42[0];
        *(a3 + 1155) = *(v42 + 7);
        v16 = v36;
        if ((*v21 - 6) > 4)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }

      LODWORD(__p[0]) = 5;
      LOBYTE(__p[1]) = 0;
      v41 = 0;
      *(v42 + 4) = 0;
      *(&v42[1] + 3) = 0;
      *a3 = 0;
      *(a3 + 8) = 5;
      *(a3 + 1144) = 0;
      *(a3 + 1148) = v42[0];
      *(a3 + 1155) = *(v42 + 7);
    }

    v16 = v36;
    if ((*v21 - 6) > 4)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v17 = v36 + 1120;
  do
  {
    v18 = *(v17 - 8);
    v19 = v18 != 1 || v17 == v37;
    v17 += 1120;
  }

  while (!v19);
  *(a3 + 16) = 0;
  v20 = a3 + 16;
  v21 = (a3 + 8);
  *(a3 + 1136) = 0;
  if ((a2 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_32:
  if (v9 == v8)
  {
    v23 = (a3 + 1148);
    *(__p + 4) = 0;
    *(&__p[1] + 3) = 0;
    if (v18)
    {
      v22 = 9;
      v25 = 4;
    }

    else
    {
      v22 = 8;
      v25 = 3;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) > 1)
    {
      v22 = v25;
    }

    *a3 = 0;
    *(a3 + 8) = v22;
    *(a3 + 1144) = 0;
  }

  else
  {
    *(__p + 4) = 0;
    *(&__p[1] + 3) = 0;
    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) > 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 6;
    }

    *a3 = 0;
    *(a3 + 8) = v22;
    *(a3 + 1144) = 0;
    v23 = (a3 + 1148);
  }

  *v23 = __p[0];
  *(v23 + 7) = *(__p + 7);
  if ((v22 - 6) <= 4)
  {
LABEL_56:
    if (*(a3 + 1136) == 1)
    {
      sub_52C990(v20, v16);
    }

    else
    {
      sub_52B7D8(v20, v16);
      *(a3 + 1136) = 1;
    }
  }

LABEL_59:
  sub_7FD804(a3, v21, &v36);
  v26 = v33;
  if (v33)
  {
    v27 = v34;
    v28 = v33;
    if (v34 != v33)
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
      v28 = v33;
    }

    v34 = v26;
    operator delete(v28);
  }

  v30 = v36;
  if (v36)
  {
    v31 = v37;
    v32 = v36;
    if (v37 != v36)
    {
      do
      {
        v31 = sub_3A9518((v31 - 1120));
      }

      while (v31 != v30);
      v32 = v36;
    }

    v37 = v30;
    operator delete(v32);
  }
}

void sub_8042C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5706DC(va);
  _Unwind_Resume(a1);
}

void sub_8042D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1A104(&a9);
  sub_5706DC(&a12);
  _Unwind_Resume(a1);
}

void sub_804350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5706DC(va);
  _Unwind_Resume(a1);
}

void sub_804364(BOOL *a1, void *a2)
{
  v6 = 17;
  strcpy(__p, "enable_route_tags");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_80504C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8050DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = *(a3 + 1415);
  v6[23] = 11;
  strcpy(v6, "RouteTagger");
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D820(v4, v7);
  sub_807CC4((a1 + 16), v7);
}

void sub_805250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_80528C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3 != a3[1] && *(a1 + 16) == 1)
  {
    sub_80530C(a1, a3);
    sub_8063DC(a1, a3);
    v5 = *a3;
    for (i = a3[1]; v5 != i; v5 += 7808)
    {
      sub_692190(v5);
    }
  }
}

void sub_80530C(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v3 = *a2;
  v69 = a2[1];
  if (*a2 == v69)
  {
    v40 = 0;
    v39 = 0;
    goto LABEL_142;
  }

  do
  {
    v4 = sub_68F328(v3);
    v6 = *v4;
    v5 = v4[1];
    if (*v4 != v5)
    {
      while (1)
      {
        while (!sub_658A08(v6 + 744, 1))
        {
LABEL_6:
          v6 += 1120;
          if (v6 == v5)
          {
            goto LABEL_68;
          }
        }

        v7 = v80;
        if (v80 < v81)
        {
          sub_52B7D8(v80, v6);
          v80 = v7 + 1120;
          goto LABEL_6;
        }

        v8 = 0xAF8AF8AF8AF8AF8BLL * ((v80 - v79) >> 5);
        v9 = v8 + 1;
        if (v8 + 1 > 0x3A83A83A83A83ALL)
        {
          sub_1794();
        }

        if (0x5F15F15F15F15F16 * ((v81 - v79) >> 5) > v9)
        {
          v9 = 0x5F15F15F15F15F16 * ((v81 - v79) >> 5);
        }

        if (0xAF8AF8AF8AF8AF8BLL * ((v81 - v79) >> 5) >= 0x1D41D41D41D41DLL)
        {
          v10 = 0x3A83A83A83A83ALL;
        }

        else
        {
          v10 = v9;
        }

        v77 = &v79;
        if (v10)
        {
          if (v10 <= 0x3A83A83A83A83ALL)
          {
            operator new();
          }

          sub_1808();
        }

        p_p = 0;
        v74 = 32 * ((v80 - v79) >> 5);
        v75 = v74;
        v76 = 0;
        sub_52B7D8(v74, v6);
        v11 = 1120 * v8;
        v13 = v79;
        v12 = v80;
        v14 = v79 + v74 - v80;
        if (v80 != v79)
        {
          break;
        }

LABEL_65:
        v79 = v14;
        v80 = v11 + 1120;
        v81 = v76;
        if (v13)
        {
          operator delete(v13);
        }

        v80 = v11 + 1120;
        v6 += 1120;
        if (v6 == v5)
        {
          goto LABEL_68;
        }
      }

      v15 = v79;
      v16 = v79 + v74 - v80;
      do
      {
        v17 = sub_529850(v16, v15);
        v15 += 1120;
        v16 = v17 + 1120;
      }

      while (v15 != v12);
      while (1)
      {
        if (*(v13 + 1104) != 1)
        {
          *(v13 + 704) = off_26696C8;
          if ((*(v13 + 735) & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_52;
        }

        v18 = *(v13 + 1080);
        if (v18)
        {
          break;
        }

LABEL_46:
        if (*(v13 + 1071) < 0)
        {
          operator delete(*(v13 + 1048));
          if ((*(v13 + 1039) & 0x80000000) == 0)
          {
LABEL_48:
            if ((*(v13 + 1007) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_61;
          }
        }

        else if ((*(v13 + 1039) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        operator delete(*(v13 + 1016));
        if ((*(v13 + 1007) & 0x80000000) == 0)
        {
LABEL_49:
          if ((*(v13 + 983) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

LABEL_62:
          operator delete(*(v13 + 960));
          if ((*(v13 + 959) & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_63;
        }

LABEL_61:
        operator delete(*(v13 + 984));
        if (*(v13 + 983) < 0)
        {
          goto LABEL_62;
        }

LABEL_50:
        if ((*(v13 + 959) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

LABEL_63:
        operator delete(*(v13 + 936));
LABEL_51:
        sub_33D080(v13 + 744);
        *(v13 + 704) = off_26696C8;
        if ((*(v13 + 735) & 0x80000000) == 0)
        {
LABEL_26:
          if ((*(v13 + 655) & 0x80000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_53;
        }

LABEL_52:
        operator delete(*(v13 + 712));
        if ((*(v13 + 655) & 0x80000000) == 0)
        {
LABEL_27:
          if ((*(v13 + 623) & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_54;
        }

LABEL_53:
        operator delete(*(v13 + 632));
        if ((*(v13 + 623) & 0x80000000) == 0)
        {
LABEL_28:
          if ((*(v13 + 599) & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_55;
        }

LABEL_54:
        operator delete(*(v13 + 600));
        if ((*(v13 + 599) & 0x80000000) == 0)
        {
LABEL_29:
          if ((*(v13 + 559) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_56;
        }

LABEL_55:
        operator delete(*(v13 + 576));
        if ((*(v13 + 559) & 0x80000000) == 0)
        {
LABEL_30:
          if ((*(v13 + 527) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_57;
        }

LABEL_56:
        operator delete(*(v13 + 536));
        if ((*(v13 + 527) & 0x80000000) == 0)
        {
LABEL_31:
          if (*(v13 + 503) < 0)
          {
            goto LABEL_58;
          }

          goto LABEL_23;
        }

LABEL_57:
        operator delete(*(v13 + 504));
        if (*(v13 + 503) < 0)
        {
LABEL_58:
          operator delete(*(v13 + 480));
        }

LABEL_23:
        sub_2C0F28(v13);
        v13 += 1120;
        if (v13 == v12)
        {
          v13 = v79;
          goto LABEL_65;
        }
      }

      v19 = *(v13 + 1088);
      v20 = *(v13 + 1080);
      if (v19 == v18)
      {
LABEL_45:
        *(v13 + 1088) = v18;
        operator delete(v20);
        goto LABEL_46;
      }

      while (1)
      {
        if (*(v19 - 1) < 0)
        {
          operator delete(*(v19 - 24));
          if ((*(v19 - 25) & 0x80000000) == 0)
          {
LABEL_39:
            if (*(v19 - 49) < 0)
            {
              goto LABEL_43;
            }

            goto LABEL_36;
          }
        }

        else if ((*(v19 - 25) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        operator delete(*(v19 - 48));
        if (*(v19 - 49) < 0)
        {
LABEL_43:
          operator delete(*(v19 - 72));
        }

LABEL_36:
        v19 -= 248;
        sub_33D5A0(v19);
        if (v19 == v18)
        {
          v20 = *(v13 + 1080);
          goto LABEL_45;
        }
      }
    }

LABEL_68:
    v21 = sub_68F370(v3);
    v23 = *v21;
    v22 = v21[1];
    while (v23 != v22)
    {
      if (sub_658A08(v23 + 744, 1))
      {
        v24 = v80;
        if (v80 < v81)
        {
          sub_52B7D8(v80, v23);
          v25 = v24 + 1120;
LABEL_69:
          v80 = v25;
          goto LABEL_70;
        }

        v26 = 0xAF8AF8AF8AF8AF8BLL * ((v80 - v79) >> 5);
        v27 = v26 + 1;
        if (v26 + 1 > 0x3A83A83A83A83ALL)
        {
          sub_1794();
        }

        if (0x5F15F15F15F15F16 * ((v81 - v79) >> 5) > v27)
        {
          v27 = 0x5F15F15F15F15F16 * ((v81 - v79) >> 5);
        }

        if (0xAF8AF8AF8AF8AF8BLL * ((v81 - v79) >> 5) >= 0x1D41D41D41D41DLL)
        {
          v28 = 0x3A83A83A83A83ALL;
        }

        else
        {
          v28 = v27;
        }

        v77 = &v79;
        if (v28)
        {
          if (v28 <= 0x3A83A83A83A83ALL)
          {
            operator new();
          }

          sub_1808();
        }

        p_p = 0;
        v74 = 32 * ((v80 - v79) >> 5);
        v75 = v74;
        v76 = 0;
        sub_52B7D8(v74, v23);
        v29 = 1120 * v26;
        v31 = v79;
        v30 = v80;
        v32 = v79 + v74 - v80;
        if (v80 != v79)
        {
          v33 = v79;
          v34 = v79 + v74 - v80;
          do
          {
            v35 = sub_529850(v34, v33);
            v33 += 1120;
            v34 = v35 + 1120;
          }

          while (v33 != v30);
          while (2)
          {
            if (*(v31 + 1104) != 1)
            {
              *(v31 + 704) = off_26696C8;
              if ((*(v31 + 735) & 0x80000000) == 0)
              {
                goto LABEL_91;
              }

LABEL_117:
              operator delete(*(v31 + 712));
              if (*(v31 + 655) < 0)
              {
                goto LABEL_118;
              }

LABEL_92:
              if ((*(v31 + 623) & 0x80000000) == 0)
              {
                goto LABEL_93;
              }

LABEL_119:
              operator delete(*(v31 + 600));
              if (*(v31 + 599) < 0)
              {
                goto LABEL_120;
              }

LABEL_94:
              if ((*(v31 + 559) & 0x80000000) == 0)
              {
                goto LABEL_95;
              }

LABEL_121:
              operator delete(*(v31 + 536));
              if (*(v31 + 527) < 0)
              {
                goto LABEL_122;
              }

LABEL_96:
              if (*(v31 + 503) < 0)
              {
                goto LABEL_123;
              }

              goto LABEL_88;
            }

            v36 = *(v31 + 1080);
            if (v36)
            {
              v37 = *(v31 + 1088);
              v38 = *(v31 + 1080);
              if (v37 == v36)
              {
LABEL_110:
                *(v31 + 1088) = v36;
                operator delete(v38);
                goto LABEL_111;
              }

              while (2)
              {
                if (*(v37 - 1) < 0)
                {
                  operator delete(*(v37 - 24));
                  if (*(v37 - 25) < 0)
                  {
                    goto LABEL_107;
                  }

LABEL_104:
                  if (*(v37 - 49) < 0)
                  {
LABEL_108:
                    operator delete(*(v37 - 72));
                  }
                }

                else
                {
                  if ((*(v37 - 25) & 0x80000000) == 0)
                  {
                    goto LABEL_104;
                  }

LABEL_107:
                  operator delete(*(v37 - 48));
                  if (*(v37 - 49) < 0)
                  {
                    goto LABEL_108;
                  }
                }

                v37 -= 248;
                sub_33D5A0(v37);
                if (v37 == v36)
                {
                  v38 = *(v31 + 1080);
                  goto LABEL_110;
                }

                continue;
              }
            }

LABEL_111:
            if (*(v31 + 1071) < 0)
            {
              operator delete(*(v31 + 1048));
              if (*(v31 + 1039) < 0)
              {
                goto LABEL_125;
              }

LABEL_113:
              if ((*(v31 + 1007) & 0x80000000) == 0)
              {
                goto LABEL_114;
              }

LABEL_126:
              operator delete(*(v31 + 984));
              if (*(v31 + 983) < 0)
              {
                goto LABEL_127;
              }

LABEL_115:
              if (*(v31 + 959) < 0)
              {
LABEL_128:
                operator delete(*(v31 + 936));
              }
            }

            else
            {
              if ((*(v31 + 1039) & 0x80000000) == 0)
              {
                goto LABEL_113;
              }

LABEL_125:
              operator delete(*(v31 + 1016));
              if (*(v31 + 1007) < 0)
              {
                goto LABEL_126;
              }

LABEL_114:
              if ((*(v31 + 983) & 0x80000000) == 0)
              {
                goto LABEL_115;
              }

LABEL_127:
              operator delete(*(v31 + 960));
              if (*(v31 + 959) < 0)
              {
                goto LABEL_128;
              }
            }

            sub_33D080(v31 + 744);
            *(v31 + 704) = off_26696C8;
            if (*(v31 + 735) < 0)
            {
              goto LABEL_117;
            }

LABEL_91:
            if ((*(v31 + 655) & 0x80000000) == 0)
            {
              goto LABEL_92;
            }

LABEL_118:
            operator delete(*(v31 + 632));
            if (*(v31 + 623) < 0)
            {
              goto LABEL_119;
            }

LABEL_93:
            if ((*(v31 + 599) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

LABEL_120:
            operator delete(*(v31 + 576));
            if (*(v31 + 559) < 0)
            {
              goto LABEL_121;
            }

LABEL_95:
            if ((*(v31 + 527) & 0x80000000) == 0)
            {
              goto LABEL_96;
            }

LABEL_122:
            operator delete(*(v31 + 504));
            if (*(v31 + 503) < 0)
            {
LABEL_123:
              operator delete(*(v31 + 480));
            }

LABEL_88:
            sub_2C0F28(v31);
            v31 += 1120;
            if (v31 != v30)
            {
              continue;
            }

            break;
          }

          v31 = v79;
        }

        v25 = v29 + 1120;
        v79 = v32;
        v80 = v29 + 1120;
        v81 = v76;
        if (v31)
        {
          operator delete(v31);
        }

        goto LABEL_69;
      }

LABEL_70:
      v23 += 1120;
    }

    v3 += 7808;
  }

  while (v3 != v69);
  v39 = v79;
  v40 = v80;
  if (v79 == v80)
  {
    v2 = a2;
  }

  else
  {
    v2 = a2;
    do
    {
      v41 = sub_65959C(v39);
      v39 += 1120;
    }

    while (v39 != v40 && v41);
    if (!v41)
    {
      goto LABEL_147;
    }

    v39 = v79;
    v40 = v80;
  }

LABEL_142:
  v43 = sub_772D50(v39, v40, &v79);
  v44 = v80;
  if (v43 != v80)
  {
    while (v44 != v43)
    {
      v44 -= 1120;
      sub_3A9518(v44);
    }

    v80 = v43;
  }

LABEL_147:
  v45 = *v2;
  v46 = v2[1];
  if (*v2 != v46)
  {
    while (1)
    {
      v48 = sub_68F328(v45);
      if (*v48 == v48[1])
      {
        if (v79 != v80)
        {
          sub_8076F0(&v79, 1, &p_p);
          sub_692278(v45, &p_p);
          if (v78 == 1)
          {
            sub_3A9518(&v75);
          }
        }

        goto LABEL_151;
      }

      v49 = sub_68F328(v45);
      __p = 0;
      v71 = 0;
      v72 = 0;
      v50 = *v49;
      v51 = v49[1];
      p_p = &__p;
      LOBYTE(v74) = 0;
      if (v51 != v50)
      {
        if (0xAF8AF8AF8AF8AF8BLL * ((v51 - v50) >> 5) <= 0x3A83A83A83A83ALL)
        {
          operator new();
        }

        sub_1794();
      }

      sub_800664(&__p);
      v53 = __p;
      v52 = v71;
      if (__p == v71)
      {
        goto LABEL_162;
      }

      do
      {
        v54 = sub_65959C(v53);
        v53 += 1120;
      }

      while (v53 != v52 && v54);
      v53 = __p;
      v52 = v71;
      if (v54)
      {
LABEL_162:
        v56 = sub_772D50(v53, v52, &__p);
        v52 = v71;
        if (v56 != v71)
        {
          v57 = v71;
          v52 = v56;
          while (v57 != v52)
          {
            if (*(v57 - 16) != 1)
            {
              *(v57 - 416) = off_26696C8;
              if ((*(v57 - 385) & 0x80000000) == 0)
              {
                goto LABEL_171;
              }

              goto LABEL_197;
            }

            v58 = *(v57 - 40);
            if (v58)
            {
              v59 = *(v57 - 32);
              v60 = *(v57 - 40);
              if (v59 == v58)
              {
LABEL_190:
                *(v57 - 32) = v58;
                operator delete(v60);
                goto LABEL_191;
              }

              while (2)
              {
                if (*(v59 - 1) < 0)
                {
                  operator delete(*(v59 - 24));
                  if (*(v59 - 25) < 0)
                  {
                    goto LABEL_187;
                  }

LABEL_184:
                  if (*(v59 - 49) < 0)
                  {
LABEL_188:
                    operator delete(*(v59 - 72));
                  }
                }

                else
                {
                  if ((*(v59 - 25) & 0x80000000) == 0)
                  {
                    goto LABEL_184;
                  }

LABEL_187:
                  operator delete(*(v59 - 48));
                  if (*(v59 - 49) < 0)
                  {
                    goto LABEL_188;
                  }
                }

                v59 -= 248;
                sub_33D5A0(v59);
                if (v59 == v58)
                {
                  v60 = *(v57 - 40);
                  goto LABEL_190;
                }

                continue;
              }
            }

LABEL_191:
            if (*(v57 - 49) < 0)
            {
              operator delete(*(v57 - 72));
              if ((*(v57 - 81) & 0x80000000) == 0)
              {
LABEL_193:
                if ((*(v57 - 113) & 0x80000000) == 0)
                {
                  goto LABEL_194;
                }

                goto LABEL_206;
              }
            }

            else if ((*(v57 - 81) & 0x80000000) == 0)
            {
              goto LABEL_193;
            }

            operator delete(*(v57 - 104));
            if ((*(v57 - 113) & 0x80000000) == 0)
            {
LABEL_194:
              if ((*(v57 - 137) & 0x80000000) == 0)
              {
                goto LABEL_195;
              }

LABEL_207:
              operator delete(*(v57 - 160));
              if ((*(v57 - 161) & 0x80000000) == 0)
              {
                goto LABEL_196;
              }

              goto LABEL_208;
            }

LABEL_206:
            operator delete(*(v57 - 136));
            if (*(v57 - 137) < 0)
            {
              goto LABEL_207;
            }

LABEL_195:
            if ((*(v57 - 161) & 0x80000000) == 0)
            {
              goto LABEL_196;
            }

LABEL_208:
            operator delete(*(v57 - 184));
LABEL_196:
            sub_33D080(v57 - 376);
            *(v57 - 416) = off_26696C8;
            if ((*(v57 - 385) & 0x80000000) == 0)
            {
LABEL_171:
              if ((*(v57 - 465) & 0x80000000) == 0)
              {
                goto LABEL_172;
              }

              goto LABEL_198;
            }

LABEL_197:
            operator delete(*(v57 - 408));
            if ((*(v57 - 465) & 0x80000000) == 0)
            {
LABEL_172:
              if ((*(v57 - 497) & 0x80000000) == 0)
              {
                goto LABEL_173;
              }

              goto LABEL_199;
            }

LABEL_198:
            operator delete(*(v57 - 488));
            if ((*(v57 - 497) & 0x80000000) == 0)
            {
LABEL_173:
              if ((*(v57 - 521) & 0x80000000) == 0)
              {
                goto LABEL_174;
              }

              goto LABEL_200;
            }

LABEL_199:
            operator delete(*(v57 - 520));
            if ((*(v57 - 521) & 0x80000000) == 0)
            {
LABEL_174:
              if ((*(v57 - 561) & 0x80000000) == 0)
              {
                goto LABEL_175;
              }

              goto LABEL_201;
            }

LABEL_200:
            operator delete(*(v57 - 544));
            if ((*(v57 - 561) & 0x80000000) == 0)
            {
LABEL_175:
              if (*(v57 - 593) < 0)
              {
                goto LABEL_202;
              }

              goto LABEL_176;
            }

LABEL_201:
            operator delete(*(v57 - 584));
            if (*(v57 - 593) < 0)
            {
LABEL_202:
              operator delete(*(v57 - 616));
              if ((*(v57 - 617) & 0x80000000) == 0)
              {
                goto LABEL_167;
              }

              goto LABEL_203;
            }

LABEL_176:
            if ((*(v57 - 617) & 0x80000000) == 0)
            {
              goto LABEL_167;
            }

LABEL_203:
            operator delete(*(v57 - 640));
LABEL_167:
            v57 -= 1120;
            sub_2C0F28(v57);
          }

          v71 = v52;
        }

        v53 = __p;
      }

      if (v53 != v52)
      {
        sub_8076F0(&__p, 0, &p_p);
        sub_692278(v45, &p_p);
        if (v78 == 1)
        {
          sub_3A9518(&v75);
        }

        v53 = __p;
      }

      if (v53)
      {
        break;
      }

LABEL_151:
      v45 += 976;
      if (v45 == v46)
      {
        goto LABEL_259;
      }
    }

    v61 = v71;
    v47 = v53;
    if (v71 == v53)
    {
LABEL_150:
      v71 = v53;
      operator delete(v47);
      goto LABEL_151;
    }

    while (1)
    {
      if (*(v61 - 16) != 1)
      {
        *(v61 - 416) = off_26696C8;
        if ((*(v61 - 385) & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_247;
      }

      v62 = *(v61 - 40);
      if (v62)
      {
        break;
      }

LABEL_241:
      if (*(v61 - 49) < 0)
      {
        operator delete(*(v61 - 72));
        if ((*(v61 - 81) & 0x80000000) == 0)
        {
LABEL_243:
          if ((*(v61 - 113) & 0x80000000) == 0)
          {
            goto LABEL_244;
          }

          goto LABEL_256;
        }
      }

      else if ((*(v61 - 81) & 0x80000000) == 0)
      {
        goto LABEL_243;
      }

      operator delete(*(v61 - 104));
      if ((*(v61 - 113) & 0x80000000) == 0)
      {
LABEL_244:
        if ((*(v61 - 137) & 0x80000000) == 0)
        {
          goto LABEL_245;
        }

LABEL_257:
        operator delete(*(v61 - 160));
        if ((*(v61 - 161) & 0x80000000) == 0)
        {
          goto LABEL_246;
        }

        goto LABEL_258;
      }

LABEL_256:
      operator delete(*(v61 - 136));
      if (*(v61 - 137) < 0)
      {
        goto LABEL_257;
      }

LABEL_245:
      if ((*(v61 - 161) & 0x80000000) == 0)
      {
        goto LABEL_246;
      }

LABEL_258:
      operator delete(*(v61 - 184));
LABEL_246:
      sub_33D080(v61 - 376);
      *(v61 - 416) = off_26696C8;
      if ((*(v61 - 385) & 0x80000000) == 0)
      {
LABEL_221:
        if ((*(v61 - 465) & 0x80000000) == 0)
        {
          goto LABEL_222;
        }

        goto LABEL_248;
      }

LABEL_247:
      operator delete(*(v61 - 408));
      if ((*(v61 - 465) & 0x80000000) == 0)
      {
LABEL_222:
        if ((*(v61 - 497) & 0x80000000) == 0)
        {
          goto LABEL_223;
        }

        goto LABEL_249;
      }

LABEL_248:
      operator delete(*(v61 - 488));
      if ((*(v61 - 497) & 0x80000000) == 0)
      {
LABEL_223:
        if ((*(v61 - 521) & 0x80000000) == 0)
        {
          goto LABEL_224;
        }

        goto LABEL_250;
      }

LABEL_249:
      operator delete(*(v61 - 520));
      if ((*(v61 - 521) & 0x80000000) == 0)
      {
LABEL_224:
        if ((*(v61 - 561) & 0x80000000) == 0)
        {
          goto LABEL_225;
        }

        goto LABEL_251;
      }

LABEL_250:
      operator delete(*(v61 - 544));
      if ((*(v61 - 561) & 0x80000000) == 0)
      {
LABEL_225:
        if ((*(v61 - 593) & 0x80000000) == 0)
        {
          goto LABEL_226;
        }

        goto LABEL_252;
      }

LABEL_251:
      operator delete(*(v61 - 584));
      if ((*(v61 - 593) & 0x80000000) == 0)
      {
LABEL_226:
        if (*(v61 - 617) < 0)
        {
          goto LABEL_253;
        }

        goto LABEL_218;
      }

LABEL_252:
      operator delete(*(v61 - 616));
      if (*(v61 - 617) < 0)
      {
LABEL_253:
        operator delete(*(v61 - 640));
      }

LABEL_218:
      v61 -= 1120;
      sub_2C0F28(v61);
      if (v61 == v53)
      {
        v47 = __p;
        goto LABEL_150;
      }
    }

    v63 = *(v61 - 32);
    v64 = *(v61 - 40);
    if (v63 == v62)
    {
LABEL_240:
      *(v61 - 32) = v62;
      operator delete(v64);
      goto LABEL_241;
    }

    while (1)
    {
      if (*(v63 - 1) < 0)
      {
        operator delete(*(v63 - 24));
        if ((*(v63 - 25) & 0x80000000) == 0)
        {
LABEL_234:
          if (*(v63 - 49) < 0)
          {
            goto LABEL_238;
          }

          goto LABEL_231;
        }
      }

      else if ((*(v63 - 25) & 0x80000000) == 0)
      {
        goto LABEL_234;
      }

      operator delete(*(v63 - 48));
      if (*(v63 - 49) < 0)
      {
LABEL_238:
        operator delete(*(v63 - 72));
      }

LABEL_231:
      v63 -= 248;
      sub_33D5A0(v63);
      if (v63 == v62)
      {
        v64 = *(v61 - 40);
        goto LABEL_240;
      }
    }
  }

LABEL_259:
  v65 = v79;
  if (v79)
  {
    v66 = v80;
    v67 = v79;
    if (v80 != v79)
    {
      do
      {
        v66 = sub_3A9518(v66 - 1120);
      }

      while (v66 != v65);
      v67 = v79;
    }

    v80 = v65;
    operator delete(v67);
  }
}

void sub_8063DC(uint64_t a1, uint64_t **a2)
{
  if ((0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7)) >= 2 && *(a1 + 16) == 1)
  {
    v3 = sub_7E37A0(a2, 0);
    sub_68C850(v3);
    sub_68F064(*a2);
    sub_68EF88(*a2);
    sub_691048(*a2);
    sub_68C7DC(*a2);
    operator new();
  }
}

void sub_807470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (LOBYTE(STACK[0x4D0]) == 1)
  {
    sub_3A9518(va);
    v17 = *(v15 - 208);
    if (!v17)
    {
LABEL_3:
      v18 = *(v15 - 184);
      if (!v18)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v17 = *(v15 - 208);
    if (!v17)
    {
      goto LABEL_3;
    }
  }

  *(v15 - 200) = v17;
  operator delete(v17);
  v18 = *(v15 - 184);
  if (!v18)
  {
LABEL_4:
    v19 = *(v15 - 160);
    if (!v19)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v15 - 176) = v18;
  operator delete(v18);
  v19 = *(v15 - 160);
  if (!v19)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v15 - 152) = v19;
  operator delete(v19);
  _Unwind_Resume(a1);
}

double sub_80759C(double *a1, uint64_t *a2)
{
  sub_6916D4(a2, &v10);
  v3 = 0.0;
  if (v10 != v11)
  {
    v4 = v10;
    do
    {
      v5 = *v4;
      v6 = *(*v4 + 160);
      v7 = v6 > 0x3F || ((1 << v6) & 0xF000000E7C3000D6) == 0;
      if (!v7 || (v6 - 65 <= 0x16 ? (v8 = ((1 << (v6 - 65)) & 0x600003) == 0) : (v8 = 1), !v8 || v6 - 41 <= 0x12))
      {
        v3 = v3 + a1[12];
      }

      if (v6 - 91 < 6 || v6 - 22 <= 2)
      {
        v3 = v3 + a1[13];
      }

      if (v5[89] != v5[90] || v5[95] != v5[96] || v5[92] != v5[93])
      {
        v3 = v3 + a1[14];
      }

      if (v5[78] != -1 || v5[80] != -1)
      {
        v3 = v3 + a1[15];
      }

      v4 += 8;
    }

    while (v4 != v11);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v3;
}

void sub_8076F0(uint64_t *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    do
    {
      if (sub_659608(v6))
      {
        v11 = v37;
        if (v37 >= v38)
        {
          v10 = sub_603684(&v36, v6);
        }

        else
        {
          sub_52B7D8(v37, v6);
          v10 = v11 + 1120;
        }

        v37 = v10;
      }

      v6 += 1120;
    }

    while (v6 != v7);
    v9 = v36;
    v8 = v37;
  }

  v12 = v9;
  if (&v36 != a1)
  {
    v12 = v9;
    if (v9 == v8)
    {
      sub_5D8C78(&v36, *a1, a1[1], 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5));
      v12 = v36;
    }
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v13 = v37 - v12;
  if (v13)
  {
    if (0xAF8AF8AF8AF8AF8BLL * (v13 >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = v36;
  v15 = v37;
  v42[0] = &v33;
  while (v14 != v15)
  {
    if (v14[503] < 0)
    {
      sub_325C(__p, *(v14 + 60), *(v14 + 61));
    }

    else
    {
      *__p = *(v14 + 30);
      v40 = *(v14 + 62);
    }

    sub_9A5A0(v42, __p);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p[0]);
    }

    v14 += 1120;
  }

  sub_93524(&v33);
  v16 = v36;
  if (v36 == v37)
  {
    v18 = 1;
    *(a3 + 16) = 0;
    v20 = a3 + 16;
    v21 = (a3 + 8);
    *(a3 + 1136) = 0;
    if (a2)
    {
      goto LABEL_32;
    }

LABEL_38:
    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) < 2)
    {
      if (v9 == v8)
      {
        v24 = 10;
      }

      else
      {
        v24 = 7;
      }

      LODWORD(__p[0]) = v24;
      LOBYTE(__p[1]) = 0;
      v41 = 0;
      *(v42 + 4) = 0;
      *(&v42[1] + 3) = 0;
      *a3 = 0;
      *(a3 + 8) = v24;
      *(a3 + 1144) = 0;
      *(a3 + 1148) = v42[0];
      *(a3 + 1155) = *(v42 + 7);
    }

    else
    {
      if (v9 != v8)
      {
        *(v42 + 4) = 0;
        *(&v42[1] + 3) = 0;
        *a3 = 0;
        *(a3 + 8) = 2;
        *(a3 + 1144) = 0;
        *(a3 + 1148) = v42[0];
        *(a3 + 1155) = *(v42 + 7);
        v16 = v36;
        if ((*v21 - 6) > 4)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }

      LODWORD(__p[0]) = 5;
      LOBYTE(__p[1]) = 0;
      v41 = 0;
      *(v42 + 4) = 0;
      *(&v42[1] + 3) = 0;
      *a3 = 0;
      *(a3 + 8) = 5;
      *(a3 + 1144) = 0;
      *(a3 + 1148) = v42[0];
      *(a3 + 1155) = *(v42 + 7);
    }

    v16 = v36;
    if ((*v21 - 6) > 4)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v17 = v36 + 1120;
  do
  {
    v18 = *(v17 - 8);
    v19 = v18 != 1 || v17 == v37;
    v17 += 1120;
  }

  while (!v19);
  *(a3 + 16) = 0;
  v20 = a3 + 16;
  v21 = (a3 + 8);
  *(a3 + 1136) = 0;
  if ((a2 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_32:
  if (v9 == v8)
  {
    v23 = (a3 + 1148);
    *(__p + 4) = 0;
    *(&__p[1] + 3) = 0;
    if (v18)
    {
      v22 = 9;
      v25 = 4;
    }

    else
    {
      v22 = 8;
      v25 = 3;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) > 1)
    {
      v22 = v25;
    }

    *a3 = 0;
    *(a3 + 8) = v22;
    *(a3 + 1144) = 0;
  }

  else
  {
    *(__p + 4) = 0;
    *(&__p[1] + 3) = 0;
    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) > 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 6;
    }

    *a3 = 0;
    *(a3 + 8) = v22;
    *(a3 + 1144) = 0;
    v23 = (a3 + 1148);
  }

  *v23 = __p[0];
  *(v23 + 7) = *(__p + 7);
  if ((v22 - 6) <= 4)
  {
LABEL_56:
    if (*(a3 + 1136) == 1)
    {
      sub_52C990(v20, v16);
    }

    else
    {
      sub_52B7D8(v20, v16);
      *(a3 + 1136) = 1;
    }
  }

LABEL_59:
  sub_7FD804(a3, v21, &v36);
  v26 = v33;
  if (v33)
  {
    v27 = v34;
    v28 = v33;
    if (v34 != v33)
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
      v28 = v33;
    }

    v34 = v26;
    operator delete(v28);
  }

  v30 = v36;
  if (v36)
  {
    v31 = v37;
    v32 = v36;
    if (v37 != v36)
    {
      do
      {
        v31 = sub_3A9518((v31 - 1120));
      }

      while (v31 != v30);
      v32 = v36;
    }

    v37 = v30;
    operator delete(v32);
  }
}

void sub_807C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5706DC(va);
  _Unwind_Resume(a1);
}

void sub_807C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1A104(&a9);
  sub_5706DC(&a12);
  _Unwind_Resume(a1);
}

void sub_807CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5706DC(va);
  _Unwind_Resume(a1);
}

void sub_807CC4(BOOL *a1, void *a2)
{
  v6 = 17;
  strcpy(__p, "enable_route_tags");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_8089AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_808A3C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
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
      v74 = *(a2 - 1);
      v75 = *v10;
      if (v74 < *v10)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 < v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 8) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 8);
                v94 -= 8;
              }

              while (v92 < v93);
              v91 = (v10 + v94 + 8);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 8;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v99 < v100)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v99 < v100);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_809708(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v10 < *v13)
      {
        if (v14 < v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v28 < v18)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v10 >= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 >= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v21 < v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 >= v62);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v21 < v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 >= *v10)
      {
        if (v14 < v15)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v22 >= v16)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 < v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 >= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 < v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 >= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 >= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v13 >= *v23)
      {
        if (v39 >= v37)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v39 < v38)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 < v37)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v39 < v38)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = sub_80931C(v10, v53);
      v10 = v53 + 1;
      result = sub_80931C(v53 + 1, a2);
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
LABEL_83:
        result = sub_808A3C(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = v10 + 1;
      v80 = v10[1];
      v81 = v10 + 2;
      v82 = v10[2];
      v83 = *v10;
      if (v80 >= *v10)
      {
        if (v82 < v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 < v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        v80 = v82;
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v82 >= v83)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        v80 = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v81;
      v102 = *v79;
      if (v101 < v102)
      {
        v10[1] = v101;
        v10[2] = v102;
        v103 = *v10;
        if (v101 < *v10)
        {
          *v10 = v101;
          v10[1] = v103;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = v10 + 1;
      v66 = v10[1];
      v68 = v10 + 2;
      v67 = v10[2];
      v69 = *v10;
      if (v66 >= *v10)
      {
        if (v67 >= v66)
        {
          v72 = *v10;
          v69 = v10[1];
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 < v69)
          {
            goto LABEL_162;
          }

          v72 = v69;
          v69 = v67;
          v67 = v66;
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v67 < v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 < v69)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          v69 = result;
          v67 = v73;
          v95 = v10[3];
          if (v95 < v73)
          {
            goto LABEL_163;
          }

LABEL_167:
          v67 = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v104 >= v67)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v96 = v10[3];
          if (v96 >= v105)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v105;
          v106 = v10[1];
          if (v96 >= v106)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v106;
          v97 = *v10;
          if (v96 >= *v10)
          {
            return result;
          }

LABEL_172:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 >= v67)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 < v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 < v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 < *v10)
  {
    if (v78 >= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v107 >= v76)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 < v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (v96 < *v10)
    {
      goto LABEL_172;
    }
  }

  return result;
}

BOOL sub_80931C(void *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v47 = *(a2 - 1);
          if (v47 >= v16)
          {
            return 1;
          }

          a1[1] = v47;
          *(a2 - 1) = v16;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v16;
          return 1;
        }
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v34 = *a1;
      v33 = a1[1];
      if (v33 >= *a1)
      {
        return 1;
      }

LABEL_66:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v33 = a1[3];
            if (v33 >= v49)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v49;
            v50 = a1[1];
            if (v33 >= v50)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v50;
            v34 = *a1;
            if (v33 >= *a1)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v27;
          v45 = *v25;
          if (v44 >= v45)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v45;
          v46 = *a1;
          if (v44 >= *a1)
          {
            return 1;
          }

          *a1 = v44;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 24; ; i += 8)
    {
      v38 = *v35;
      v39 = *v20;
      if (*v35 < v39)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v39;
      v41 = v40 - 8;
      if (v40 == 8)
      {
        *a1 = v38;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v39 = *(a1 + v40 - 16);
      v40 -= 8;
    }

    while (v38 < v39);
    *(a1 + v41) = v38;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 >= *a1)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

uint64_t *sub_809708(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v6 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v7 = &a1[v6];
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v8 = *v7;
          v10 = &a1[v5];
          v11 = *v10;
          if (*v7 >= *v10)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v8 = v7[1];
          v9 = *v7 < v8;
          if (*v7 > v8)
          {
            v8 = *v7;
          }

          if (v9)
          {
            ++v7;
            v6 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v10 = &a1[v5];
          v11 = *v10;
          if (v8 >= *v10)
          {
LABEL_22:
            while (1)
            {
              *v10 = v8;
              v10 = v7;
              if (v4 < v6)
              {
                break;
              }

              v13 = (2 * v6) | 1;
              v7 = &a1[v13];
              v6 = 2 * v6 + 2;
              if (v6 < v3)
              {
                v8 = *v7;
                v12 = v7[1];
                if (*v7 <= v12)
                {
                  v8 = v7[1];
                }

                if (*v7 >= v12)
                {
                  v6 = v13;
                }

                else
                {
                  ++v7;
                }

                if (v8 < v11)
                {
                  break;
                }
              }

              else
              {
                v8 = *v7;
                v6 = v13;
                if (*v7 < v11)
                {
                  break;
                }
              }
            }

            *v10 = v11;
          }
        }
      }

      v9 = v5-- <= 0;
    }

    while (!v9);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v15 = *a1;
      i = a2;
      do
      {
        v16 = *i;
        if (*i < v15)
        {
          *i = v15;
          *a1 = v16;
          v15 = v16;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    v17 = a1 + 2;
    for (i = a2; i != a3; ++i)
    {
      v18 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v18;
        v19 = a1[1];
        if (a2 - a1 == 16)
        {
          v20 = a1 + 1;
          v21 = 1;
          if (v19 >= v18)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v22 = v19 < *v17;
          if (v19 <= *v17)
          {
            v19 = *v17;
          }

          if (v22)
          {
            v20 = a1 + 2;
          }

          else
          {
            v20 = a1 + 1;
          }

          if (v22)
          {
            v21 = 2;
          }

          else
          {
            v21 = 1;
          }

          if (v19 >= v18)
          {
LABEL_48:
            v23 = a1;
            while (1)
            {
              *v23 = v19;
              v23 = v20;
              if (((v3 - 2) >> 1) < v21)
              {
                break;
              }

              v25 = (2 * v21) | 1;
              v20 = &a1[v25];
              v21 = 2 * v21 + 2;
              if (v21 < v3)
              {
                v19 = *v20;
                v24 = v20[1];
                if (*v20 <= v24)
                {
                  v19 = v20[1];
                }

                if (*v20 >= v24)
                {
                  v21 = v25;
                }

                else
                {
                  ++v20;
                }

                if (v19 < v18)
                {
                  break;
                }
              }

              else
              {
                v19 = *v20;
                v21 = v25;
                if (*v20 < v18)
                {
                  break;
                }
              }
            }

            *v23 = v18;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v27 = 0;
      v28 = *a1;
      v29 = (v3 - 2) >> 1;
      v30 = a1;
      do
      {
        while (1)
        {
          v37 = &v30[v27];
          v36 = v37 + 1;
          v38 = (2 * v27) | 1;
          v27 = 2 * v27 + 2;
          if (v27 < v3)
          {
            break;
          }

          v27 = v38;
          *v30 = *v36;
          v30 = v37 + 1;
          if (v38 > v29)
          {
            goto LABEL_73;
          }
        }

        v33 = v37[2];
        v32 = v37 + 2;
        v31 = v33;
        v34 = *(v32 - 1);
        v35 = v34 < v33;
        if (v34 > v33)
        {
          v31 = *(v32 - 1);
        }

        if (v35)
        {
          v36 = v32;
        }

        else
        {
          v27 = v38;
        }

        *v30 = v31;
        v30 = v36;
      }

      while (v27 <= v29);
LABEL_73:
      if (v36 == --a2)
      {
        *v36 = v28;
      }

      else
      {
        *v36 = *a2;
        *a2 = v28;
        v39 = (v36 - a1 + 8) >> 3;
        v9 = v39 < 2;
        v40 = v39 - 2;
        if (!v9)
        {
          v41 = v40 >> 1;
          v42 = &a1[v41];
          v43 = *v42;
          v44 = *v36;
          if (*v42 < *v36)
          {
            do
            {
              *v36 = v43;
              v36 = v42;
              if (!v41)
              {
                break;
              }

              v41 = (v41 - 1) >> 1;
              v42 = &a1[v41];
              v43 = *v42;
            }

            while (*v42 < v44);
            *v36 = v44;
          }
        }
      }

      v9 = v3-- <= 2;
    }

    while (!v9);
  }

  return i;
}

void sub_809A50()
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
  xmmword_27ABC80 = 0u;
  *algn_27ABC90 = 0u;
  dword_27ABCA0 = 1065353216;
  sub_3A9A34(&xmmword_27ABC80, v0);
  sub_3A9A34(&xmmword_27ABC80, v3);
  sub_3A9A34(&xmmword_27ABC80, __p);
  sub_3A9A34(&xmmword_27ABC80, v9);
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
    qword_27ABC58 = 0;
    qword_27ABC60 = 0;
    qword_27ABC50 = 0;
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

void sub_809C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27ABC68)
  {
    qword_27ABC70 = qword_27ABC68;
    operator delete(qword_27ABC68);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_809D44(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_608080(a1);
  *(v6 + 856) = -1;
  *(v6 + 864) = 0;
  *(v6 + 872) = 0;
  *(v6 + 888) = 0;
  *(v6 + 880) = 0;
  *(v6 + 896) = 0;
  *(v6 + 904) = 2;
  *(v6 + 912) = -1;
  *(v6 + 920) = 0u;
  *(v6 + 936) = 0u;
  *(v6 + 952) = 0u;
  *(v6 + 968) = 0u;
  *(v6 + 984) = 0u;
  *(v6 + 1000) = 0u;
  *(v6 + 1016) = 0;
  *(v6 + 1024) = 1065353216;
  *(v6 + 1032) = 1;
  *(v6 + 1040) = 0;
  *(v6 + 1048) = 0u;
  *(v6 + 1064) = 0u;
  *(v6 + 1080) = 0u;
  *(v6 + 1096) = 0;
  *(v6 + 1104) = 1065353216;
  *(v6 + 1112) = 1;
  sub_68215C(v6, a2);
  *(a1 + 864) = 0;
  *(a1 + 1040) = a3;
  return a1;
}

void sub_809DFC(_Unwind_Exception *a1)
{
  sub_53A58C(v2);
  sub_53A58C((v1 + 968));
  sub_513574(v1 + 912);
  v4 = *(v1 + 872);
  if (v4)
  {
    *(v1 + 880) = v4;
    operator delete(v4);
  }

  sub_5936E4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_809E4C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_608080(a1);
  *(v8 + 856) = -1;
  *(v8 + 864) = 0;
  *(v8 + 872) = 0;
  *(v8 + 888) = 0;
  *(v8 + 880) = 0;
  *(v8 + 896) = 0;
  *(v8 + 904) = 2;
  *(v8 + 912) = -1;
  *(v8 + 920) = 0u;
  *(v8 + 936) = 0u;
  *(v8 + 952) = 0u;
  *(v8 + 968) = 0u;
  *(v8 + 984) = 0u;
  *(v8 + 1000) = 0u;
  *(v8 + 1016) = 0;
  *(v8 + 1024) = 1065353216;
  *(v8 + 1032) = 1;
  *(v8 + 1040) = 0;
  *(v8 + 1048) = 0u;
  *(v8 + 1064) = 0u;
  *(v8 + 1080) = 0u;
  *(v8 + 1096) = 0;
  *(v8 + 1104) = 1065353216;
  *(v8 + 1112) = 1;
  sub_68215C(v8, a2);
  *(a1 + 864) = a4;
  *(a1 + 1040) = a3;
  return a1;
}

void sub_809F10(_Unwind_Exception *a1)
{
  sub_53A58C(v2);
  sub_53A58C((v1 + 968));
  sub_513574(v1 + 912);
  v4 = *(v1 + 872);
  if (v4)
  {
    *(v1 + 880) = v4;
    operator delete(v4);
  }

  sub_5936E4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_809F50(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v10 = sub_608080(a1);
  *(v10 + 856) = -1;
  *(v10 + 864) = 0;
  *(v10 + 872) = 0;
  *(v10 + 888) = 0;
  *(v10 + 880) = 0;
  *(v10 + 896) = 0;
  *(v10 + 904) = 2;
  *(v10 + 912) = -1;
  *(v10 + 920) = 0u;
  *(v10 + 936) = 0u;
  *(v10 + 952) = 0u;
  *(v10 + 968) = 0u;
  *(v10 + 984) = 0u;
  *(v10 + 1000) = 0u;
  *(v10 + 1016) = 0;
  *(v10 + 1024) = 1065353216;
  *(v10 + 1032) = 1;
  *(v10 + 1040) = 0;
  *(v10 + 1048) = 0u;
  *(v10 + 1064) = 0u;
  *(v10 + 1080) = 0u;
  *(v10 + 1096) = 0;
  *(v10 + 1104) = 1065353216;
  *(v10 + 1112) = 1;
  sub_68215C(v10, a2);
  *(a1 + 864) = a4;
  *(a1 + 1040) = a3;
  sub_681D20(a1, a5);
  return a1;
}

void sub_80A030(_Unwind_Exception *a1)
{
  sub_53A58C(v2);
  sub_53A58C((v1 + 968));
  sub_513574(v1 + 912);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 880) = v5;
    operator delete(v5);
  }

  sub_5936E4(v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_80A070(_BYTE *result, uint64_t a2)
{
  *(result + 228) = *a2;
  if (result + 912 == a2)
  {
    return result;
  }

  v3 = result;
  v4 = (result + 920);
  v5 = *(a2 + 31);
  if (v3[943] < 0)
  {
    if ((v5 & 0x80u) == 0)
    {
      v9 = (a2 + 8);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if ((v5 & 0x80u) == 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = *(a2 + 16);
    }

    sub_13B38(v4, v9, v10);
    result = v3 + 944;
    v7 = (a2 + 32);
    v8 = *(a2 + 55);
    if (v3[967] < 0)
    {
      goto LABEL_17;
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    sub_13A68(v4, *(a2 + 8), *(a2 + 16));
    result = v3 + 944;
    v7 = (a2 + 32);
    v8 = *(a2 + 55);
    if (v3[967] < 0)
    {
LABEL_17:
      if ((v8 & 0x80u) == 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = *(a2 + 32);
      }

      if ((v8 & 0x80u) == 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = *(a2 + 40);
      }

      return sub_13B38(result, v12, v13);
    }
  }

  else
  {
    v6 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v6;
    result = v3 + 944;
    v7 = (a2 + 32);
    v8 = *(a2 + 55);
    if (v3[967] < 0)
    {
      goto LABEL_17;
    }
  }

  if ((v8 & 0x80) != 0)
  {
    v14 = *(a2 + 32);
    v15 = *(a2 + 40);

    return sub_13A68(result, v14, v15);
  }

  else
  {
    v11 = *v7;
    *(result + 2) = v7[2];
    *result = v11;
  }

  return result;
}

uint64_t sub_80A194(uint64_t a1, uint64_t a2)
{
  v4 = sub_608080(a1);
  *(v4 + 856) = -1;
  *(v4 + 864) = 0;
  *(v4 + 872) = 0;
  *(v4 + 888) = 0;
  *(v4 + 880) = 0;
  *(v4 + 896) = 0;
  *(v4 + 904) = 2;
  *(v4 + 912) = -1;
  *(v4 + 920) = 0u;
  *(v4 + 936) = 0u;
  *(v4 + 952) = 0u;
  *(v4 + 968) = 0u;
  *(v4 + 984) = 0u;
  *(v4 + 1000) = 0u;
  *(v4 + 1016) = 0;
  *(v4 + 1024) = 1065353216;
  *(v4 + 1032) = 1;
  *(v4 + 1040) = 0;
  *(v4 + 1048) = 0u;
  *(v4 + 1064) = 0u;
  *(v4 + 1080) = 0u;
  *(v4 + 1096) = 0;
  *(v4 + 1104) = 1065353216;
  *(v4 + 1112) = 1;
  v5 = *(v4 + 304);
  if (v5 >= *(v4 + 312))
  {
    *(a1 + 304) = sub_686F34(a1 + 296, a2);
    return a1;
  }

  else
  {
    sub_5F0850(*(v4 + 304), a2);
    *(v5 + 72) = *(a2 + 72);
    v6 = *(a2 + 88);
    *(v5 + 80) = *(a2 + 80);
    *(v5 + 88) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a2 + 96);
    *(v5 + 98) = *(a2 + 98);
    *(v5 + 96) = v7;
    *(a1 + 304) = v5 + 104;
    *(a1 + 304) = v5 + 104;
    return a1;
  }
}

void sub_80A2B0(_Unwind_Exception *a1)
{
  sub_53A58C(v2);
  sub_53A58C((v1 + 968));
  sub_513574(v1 + 912);
  v4 = *(v1 + 872);
  if (v4)
  {
    *(v1 + 880) = v4;
    operator delete(v4);
  }

  sub_5936E4(v1);
  _Unwind_Resume(a1);
}

void sub_80A308(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 968);
  if (v4 != a2)
  {
    sub_74300(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 1024) = *(a2 + 56);
    sub_5FA69C(a1 + 992, *(a2 + 40), 0);
  }

  *(a1 + 1032) = *(a2 + 64);
}

void sub_80A374(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1048);
  if (v4 != a2)
  {
    sub_74300(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 1104) = *(a2 + 56);
    sub_5FA69C(a1 + 1072, *(a2 + 40), 0);
  }

  *(a1 + 1112) = *(a2 + 64);
}

void sub_80A3E0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 8);
  if (v5 != *a2)
  {
    if (((v5 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = *(a2 + 24);
  v7 = *(a1 + 872);
  if (v7)
  {
    *(a1 + 880) = v7;
    operator delete(v7);
  }

  *(a1 + 872) = 0;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = v6;
  *(a1 + 904) = a3;
}

BOOL sub_80A4D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 - 26 < 0x3F)
  {
    return 0;
  }

  result = 1;
  if (v1 - 4 >= 0x16)
  {
    if (v1 < 4)
    {
      return 0;
    }

    return v1 == 89;
  }

  return result;
}

void sub_80A5F0()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = *(v3 + 1104) + 2616 * v1;
  sub_58D308(v0, v8, v22);
  sub_899F7C(v21, v22, v7 + 5144, v4, v2, v6);
  if ((*(v7 + 13740) & 1) != 0 || *(v7 + 13743) == 1)
  {
    sub_89C908(v21, &v19);
    sub_58D40C(v8 + 1032, &v19);
    sub_5936E4(&v19);
    sub_665E68((v7 + 6736), (v8 + 1032));
  }

  if (*(v7 + 13741) == 1)
  {
    sub_89AEDC(v21, &v19);
    v9 = (v8 + 1888);
    v10 = *(v8 + 1888);
    if (v10)
    {
      v11 = *(v8 + 1896);
      v12 = *(v8 + 1888);
      if (v11 != v10)
      {
        do
        {
          v11 = sub_5938B0((v11 - 140));
        }

        while (v11 != v10);
        v12 = *v9;
      }

      *(v8 + 1896) = v10;
      operator delete(v12);
      *v9 = 0;
      *(v8 + 1896) = 0;
      *(v8 + 1904) = 0;
    }

    *(v8 + 1888) = v19;
    *(v8 + 1904) = v20;
    sub_6662E8(v7 + 6736, v8 + 1888);
  }

  if (*(v7 + 13779) == 1)
  {
    sub_89CC20(v21, &v19);
  }

  if (*(v7 + 13742) == 1 && (*(v8 + 2417) & 1) == 0 && *(v8 + 160) != 90)
  {
    sub_89B2B8(v21, v4, &v19);
    v13 = (v8 + 1912);
    v14 = *(v8 + 1912);
    if (v14)
    {
      v15 = *(v8 + 1920);
      v16 = *(v8 + 1912);
      if (v15 != v14)
      {
        do
        {
          v17 = *(v15 - 6);
          if (v17)
          {
            *(v15 - 5) = v17;
            operator delete(v17);
          }

          v15 -= 56;
          sub_55D550(v15);
        }

        while (v15 != v14);
        v16 = *v13;
      }

      *(v8 + 1920) = v14;
      operator delete(v16);
      *v13 = 0;
      *(v8 + 1920) = 0;
      *(v8 + 1928) = 0;
    }

    *v13 = v19;
    *(v8 + 1928) = v20;
    sub_666334(v7 + 6736, v8 + 1912);
  }

  sub_58D610(v7, v8);
  v18 = *(v4 + 1104);
  if (0x3795876FF3795877 * ((*(v4 + 1112) - v18) >> 3) - 1 <= v2)
  {
    sub_6D2198((v7 + 13768), v8, 0, 0);
  }

  else
  {
    sub_6D2198((v7 + 13768), v8, v18 + 2616 * v2 + 2616, 1);
  }

  sub_80B258(v21);
  if (v24 < 0)
  {
    operator delete(__p);
  }
}

void sub_80A928(_Unwind_Exception *a1)
{
  sub_80B258(&STACK[0x358]);
  if (*(v1 + 2375) < 0)
  {
    operator delete(STACK[0x3B78]);
  }

  _Unwind_Resume(a1);
}

void sub_80AA0C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = *(v3 + 1104) + 2616 * v1;
  sub_58FAA0(v0, v8, v22);
  sub_8AB074(v21, v22, v7 + 5144, v4, v2, v6);
  if ((*(v7 + 13740) & 1) != 0 || *(v7 + 13743) == 1)
  {
    sub_8ADA00(v21, &v19);
    sub_58D40C(v8 + 1032, &v19);
    sub_5936E4(&v19);
    sub_665E68((v7 + 6736), (v8 + 1032));
  }

  if (*(v7 + 13741) == 1)
  {
    sub_8ABFD4(v21, &v19);
    v9 = (v8 + 1888);
    v10 = *(v8 + 1888);
    if (v10)
    {
      v11 = *(v8 + 1896);
      v12 = *(v8 + 1888);
      if (v11 != v10)
      {
        do
        {
          v11 = sub_5938B0((v11 - 140));
        }

        while (v11 != v10);
        v12 = *v9;
      }

      *(v8 + 1896) = v10;
      operator delete(v12);
      *v9 = 0;
      *(v8 + 1896) = 0;
      *(v8 + 1904) = 0;
    }

    *(v8 + 1888) = v19;
    *(v8 + 1904) = v20;
    sub_6662E8(v7 + 6736, v8 + 1888);
  }

  if (*(v7 + 13779) == 1)
  {
    sub_8ADD18(v21, &v19);
  }

  if (*(v7 + 13742) == 1 && (*(v8 + 2417) & 1) == 0 && *(v8 + 160) != 90)
  {
    sub_8AC3B0(v21, v4, &v19);
    v13 = (v8 + 1912);
    v14 = *(v8 + 1912);
    if (v14)
    {
      v15 = *(v8 + 1920);
      v16 = *(v8 + 1912);
      if (v15 != v14)
      {
        do
        {
          v17 = *(v15 - 6);
          if (v17)
          {
            *(v15 - 5) = v17;
            operator delete(v17);
          }

          v15 -= 56;
          sub_55D550(v15);
        }

        while (v15 != v14);
        v16 = *v13;
      }

      *(v8 + 1920) = v14;
      operator delete(v16);
      *v13 = 0;
      *(v8 + 1920) = 0;
      *(v8 + 1928) = 0;
    }

    *v13 = v19;
    *(v8 + 1928) = v20;
    sub_666334(v7 + 6736, v8 + 1912);
  }

  sub_58FBA4(v7, v8);
  v18 = *(v4 + 1104);
  if (0x3795876FF3795877 * ((*(v4 + 1112) - v18) >> 3) - 1 <= v2)
  {
    sub_6D2198((v7 + 13768), v8, 0, 0);
  }

  else
  {
    sub_6D2198((v7 + 13768), v8, v18 + 2616 * v2 + 2616, 1);
  }

  sub_80B5D8(v21);
  if (v24 < 0)
  {
    operator delete(__p);
  }
}