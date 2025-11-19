const void **sub_100016370(const void **result, const void **a2)
{
  if (result != a2)
  {
    v31 = v2;
    v32 = v3;
    v4 = a2;
    v5 = result;
    v6 = result + 3;
    if (result + 3 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v11 = v8;
        v8 = v6;
        v12 = *(v11 + 47);
        if (v12 >= 0)
        {
          v13 = v6;
        }

        else
        {
          v13 = v11[3];
        }

        if (v12 >= 0)
        {
          v14 = *(v11 + 47);
        }

        else
        {
          v14 = v11[4];
        }

        v15 = *(v11 + 23);
        if (v15 >= 0)
        {
          v16 = v11;
        }

        else
        {
          v16 = *v11;
        }

        if (v15 >= 0)
        {
          v17 = *(v11 + 23);
        }

        else
        {
          v17 = v11[1];
        }

        if (v17 >= v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = v17;
        }

        result = memcmp(v13, v16, v18);
        if (result)
        {
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_7;
          }
        }

        else if (v14 <= v17)
        {
          goto LABEL_7;
        }

        v30 = v8[2];
        v29 = *v8;
        if (v30 >= 0)
        {
          v19 = &v29;
        }

        else
        {
          v19 = v29;
        }

        if (v30 >= 0)
        {
          v20 = HIBYTE(v30);
        }

        else
        {
          v20 = *(&v29 + 1);
        }

        *v8 = *v11;
        v8[2] = v11[2];
        *(v11 + 23) = 0;
        *v11 = 0;
        v9 = v5;
        if (v11 == v5)
        {
          goto LABEL_6;
        }

        v21 = v7;
        while (1)
        {
          v22 = v5 + v21;
          v23 = *(v5 + v21 - 24);
          v24 = *(v5 + v21 - 1);
          v25 = v24 >= 0 ? v5 + v21 - 24 : *(v5 + v21 - 24);
          v26 = v24 >= 0 ? *(v5 + v21 - 1) : *(v5 + v21 - 16);
          v27 = (v26 >= v20 ? v20 : v26);
          result = memcmp(v19, v25, v27);
          if (!result)
          {
            break;
          }

          if ((result & 0x80000000) != 0)
          {
            v9 = v11;
            goto LABEL_5;
          }

LABEL_36:
          v11 -= 3;
          *v22 = *(v5 + v21 - 24);
          *(v22 + 16) = *(v5 + v21 - 8);
          *(v22 - 1) = 0;
          *(v22 - 24) = 0;
          v21 -= 24;
          if (!v21)
          {
            v9 = v5;
            goto LABEL_5;
          }
        }

        if (v20 > v26)
        {
          goto LABEL_36;
        }

        v9 = (v5 + v21);
LABEL_5:
        v4 = a2;
LABEL_6:
        v10 = v29;
        v9[2] = v30;
        *v9 = v10;
LABEL_7:
        v6 = v8 + 3;
        v7 += 24;
      }

      while (v8 + 3 != v4);
    }
  }

  return result;
}

const void **sub_100016534(const void **result, const void **a2)
{
  if (result != a2)
  {
    v26 = v2;
    v27 = v3;
    v5 = result;
    for (i = result + 3; v5 + 3 != a2; i = v5 + 3)
    {
      v7 = v5;
      v5 = i;
      v8 = *(v7 + 47);
      if (v8 >= 0)
      {
        v9 = i;
      }

      else
      {
        v9 = v7[3];
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 47);
      }

      else
      {
        v10 = v7[4];
      }

      v11 = *(v7 + 23);
      if (v11 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = *v7;
      }

      if (v11 >= 0)
      {
        v13 = *(v7 + 23);
      }

      else
      {
        v13 = v7[1];
      }

      if (v13 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v13;
      }

      result = memcmp(v9, v12, v14);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v10 > v13)
      {
LABEL_25:
        v25 = v5[2];
        v15 = v25;
        v24 = *v5;
        v5[1] = 0;
        v5[2] = 0;
        *v5 = 0;
        v16 = HIBYTE(v15);
        if ((v16 & 0x80u) == 0)
        {
          v17 = &v24;
        }

        else
        {
          v17 = v24;
        }

        if ((v16 & 0x80u) == 0)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(&v24 + 1);
        }

        for (j = v5; ; j -= 3)
        {
          *j = *(j - 3);
          j[2] = *(j - 1);
          *(j - 1) = 0;
          *(j - 24) = 0;
          v20 = *(j - 25);
          if (v20 >= 0)
          {
            v21 = j - 6;
          }

          else
          {
            v21 = *(j - 6);
          }

          if (v20 >= 0)
          {
            v22 = *(j - 25);
          }

          else
          {
            v22 = *(j - 5);
          }

          if (v22 >= v18)
          {
            v23 = v18;
          }

          else
          {
            v23 = v22;
          }

          result = memcmp(v17, v21, v23);
          if (result)
          {
            if ((result & 0x80000000) != 0)
            {
LABEL_4:
              *(j - 3) = v24;
              *(j - 1) = v25;
              break;
            }
          }

          else if (v18 <= v22)
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1000166A4(__int128 *a1, _OWORD *a2)
{
  j = a2;
  v54 = *(a1 + 2);
  v4 = v54;
  v53 = *a1;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v5 = HIBYTE(v4);
  if ((v5 & 0x80u) == 0)
  {
    v6 = &v53;
  }

  else
  {
    v6 = v53;
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(&v53 + 1);
  }

  v8 = *(a2 - 3);
  v9 = *(a2 - 1);
  v10 = *(a2 - 2);
  if ((v9 & 0x80u) == 0)
  {
    v11 = a2 - 24;
  }

  else
  {
    v11 = *(a2 - 3);
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = memcmp(v6, v11, v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v7 > v12)
  {
LABEL_18:
    v15 = a1 + 24;
    do
    {
      while (1)
      {
        i = v15;
        v17 = *(v15 + 23);
        v18 = (v17 & 0x80u) == 0 ? i : *i;
        v19 = (v17 & 0x80u) == 0 ? v17 : *(i + 8);
        v20 = v19 >= v7 ? v7 : v19;
        v21 = memcmp(v6, v18, v20);
        v15 = i + 24;
        if (v21)
        {
          break;
        }

        if (v7 > v19)
        {
          goto LABEL_31;
        }
      }
    }

    while (v21 < 0);
    goto LABEL_31;
  }

  for (i = a1 + 24; i < j; i += 24)
  {
    v46 = *(i + 23);
    if (v46 >= 0)
    {
      v47 = i;
    }

    else
    {
      v47 = *i;
    }

    if (v46 >= 0)
    {
      v48 = *(i + 23);
    }

    else
    {
      v48 = *(i + 8);
    }

    if (v48 >= v7)
    {
      v49 = v7;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v6, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        break;
      }
    }

    else if (v7 > v48)
    {
      break;
    }
  }

LABEL_31:
  if (i < j)
  {
    for (j = (j - 24); ; v10 = *(j + 1))
    {
      if ((v9 & 0x80u) == 0)
      {
        v23 = j;
      }

      else
      {
        v23 = v8;
      }

      if ((v9 & 0x80u) == 0)
      {
        v24 = v9;
      }

      else
      {
        v24 = v10;
      }

      if (v24 >= v7)
      {
        v25 = v7;
      }

      else
      {
        v25 = v24;
      }

      v26 = memcmp(v6, v23, v25);
      if (v26)
      {
        if (v26 < 0)
        {
          break;
        }
      }

      else if (v7 <= v24)
      {
        break;
      }

      v22 = *(j - 3);
      j = (j - 24);
      v8 = v22;
      v9 = *(j + 23);
    }
  }

  if (i < j)
  {
    v27 = *i;
    do
    {
      v28 = *(i + 8);
      v29 = *j;
      *(i + 16) = *(j + 2);
      *i = v29;
      *j = v27;
      *(j + 8) = v28;
      if (v54 >= 0)
      {
        v30 = &v53;
      }

      else
      {
        v30 = v53;
      }

      if (v54 >= 0)
      {
        v31 = HIBYTE(v54);
      }

      else
      {
        v31 = *(&v53 + 1);
      }

      v32 = i + 24;
      do
      {
        while (1)
        {
          i = v32;
          v33 = *(v32 + 23);
          v27 = *i;
          v34 = (v33 & 0x80u) == 0 ? i : *i;
          v35 = (v33 & 0x80u) == 0 ? v33 : *(i + 8);
          v36 = v35 >= v31 ? v31 : v35;
          v37 = memcmp(v30, v34, v36);
          v32 = i + 24;
          if (v37)
          {
            break;
          }

          if (v31 > v35)
          {
            goto LABEL_68;
          }
        }
      }

      while (v37 < 0);
LABEL_68:
      v38 = j - 24;
      do
      {
        while (1)
        {
          j = v38;
          v39 = v38[23];
          v40 = (v39 & 0x80u) == 0 ? j : *j;
          v41 = (v39 & 0x80u) == 0 ? v39 : *(j + 1);
          v42 = v41 >= v31 ? v31 : v41;
          v43 = memcmp(v30, v40, v42);
          v38 = j - 24;
          if (v43)
          {
            break;
          }

          if (v31 <= v41)
          {
            goto LABEL_48;
          }
        }
      }

      while ((v43 & 0x80000000) == 0);
LABEL_48:
      ;
    }

    while (i < j);
  }

  v44 = (i - 24);
  if ((i - 24) == a1)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*v44);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v45 = *v44;
    *(a1 + 2) = *(i - 8);
    *a1 = v45;
    *(i - 1) = 0;
    *(i - 24) = 0;
  }

  v51 = v53;
  *(i - 8) = v54;
  *v44 = v51;
  return i;
}

unint64_t sub_100016988(__int128 *a1, void *a2)
{
  v4 = 0;
  v52 = *(a1 + 2);
  v51 = *a1;
  v5 = HIBYTE(v52);
  v6 = *(&v51 + 1);
  v7 = v52 < 0;
  if (v52 >= 0)
  {
    v8 = &v51;
  }

  else
  {
    v8 = v51;
  }

  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  while (1)
  {
    v10 = *(a1 + v4 + 24);
    v11 = *(a1 + v4 + 47);
    v12 = v11 >= 0 ? a1 + v4 + 24 : *(a1 + v4 + 24);
    v13 = v11 >= 0 ? *(a1 + v4 + 47) : *(a1 + v4 + 32);
    v14 = v9 >= v13 ? v13 : v9;
    v15 = memcmp(v12, v8, v14);
    if (v15)
    {
      break;
    }

    if (v13 <= v9)
    {
      goto LABEL_20;
    }

LABEL_8:
    v4 += 24;
  }

  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  v16 = a1 + v4 + 24;
  if (v4)
  {
    v17 = a2 - 3;
    do
    {
      while (1)
      {
        a2 = v17;
        v18 = *(v17 + 23);
        v19 = (v18 & 0x80u) == 0 ? a2 : *a2;
        v20 = (v18 & 0x80u) == 0 ? v18 : a2[1];
        v21 = v9 >= v20 ? v20 : v9;
        v22 = memcmp(v19, v8, v21);
        v17 = a2 - 3;
        if (v22)
        {
          break;
        }

        if (v20 > v9)
        {
          goto LABEL_52;
        }
      }
    }

    while (v22 < 0);
  }

  else if (v16 < a2)
  {
    v23 = a2 - 3;
    do
    {
      while (1)
      {
        a2 = v23;
        v24 = *(v23 + 23);
        v25 = (v24 & 0x80u) == 0 ? a2 : *a2;
        v26 = (v24 & 0x80u) == 0 ? v24 : a2[1];
        v27 = v9 >= v26 ? v26 : v9;
        v28 = memcmp(v25, v8, v27);
        v23 = a2 - 3;
        if (!v28)
        {
          break;
        }

        if (v16 >= a2 || (v28 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }
      }
    }

    while (v16 < a2 && v26 <= v9);
  }

LABEL_52:
  if (v16 >= a2)
  {
    v29 = v16;
  }

  else
  {
    v29 = v16;
    v30 = a2;
    do
    {
      v31 = *(v29 + 8);
      v32 = *v30;
      *(v29 + 16) = v30[2];
      *v29 = v32;
      *v30 = v10;
      *(v30 + 1) = v31;
      if (v52 >= 0)
      {
        v33 = &v51;
      }

      else
      {
        v33 = v51;
      }

      if (v52 >= 0)
      {
        v34 = HIBYTE(v52);
      }

      else
      {
        v34 = *(&v51 + 1);
      }

      v35 = v29 + 24;
      do
      {
        while (1)
        {
          v29 = v35;
          v36 = *(v35 + 23);
          v10 = *v29;
          v37 = (v36 & 0x80u) == 0 ? v29 : *v29;
          v38 = (v36 & 0x80u) == 0 ? v36 : *(v29 + 8);
          v39 = v34 >= v38 ? v38 : v34;
          v40 = memcmp(v37, v33, v39);
          v35 = v29 + 24;
          if (v40)
          {
            break;
          }

          if (v38 <= v34)
          {
            goto LABEL_74;
          }
        }
      }

      while ((v40 & 0x80000000) == 0);
LABEL_74:
      v41 = v30 - 3;
      do
      {
        while (1)
        {
          v30 = v41;
          v42 = *(v41 + 23);
          v43 = (v42 & 0x80u) == 0 ? v30 : *v30;
          v44 = (v42 & 0x80u) == 0 ? v42 : v30[1];
          v45 = v34 >= v44 ? v44 : v34;
          v46 = memcmp(v43, v33, v45);
          v41 = v30 - 3;
          if (v46)
          {
            break;
          }

          if (v44 > v34)
          {
            goto LABEL_54;
          }
        }
      }

      while (v46 < 0);
LABEL_54:
      ;
    }

    while (v29 < v30);
  }

  v47 = (v29 - 24);
  if ((v29 - 24) == a1)
  {
    if (*(v29 - 1) < 0)
    {
      operator delete(*a1);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v48 = *v47;
    *(a1 + 2) = *(v29 - 8);
    *a1 = v48;
    *(v29 - 1) = 0;
    *(v29 - 24) = 0;
  }

  v49 = v51;
  *(v29 - 8) = v52;
  *v47 = v49;
  return v29 - 24;
}

BOOL sub_100016C58(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_100015D88(a1, a1 + 24, a2 - 3);
        return 1;
      case 4:
        sub_100015FC4(a1, a1 + 24, a1 + 48, a2 - 3);
        return 1;
      case 5:
        sub_100016168(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 3);
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
      v6 = a2 - 3;
      v7 = *(a2 - 1);
      if (v7 >= 0)
      {
        v8 = a2 - 3;
      }

      else
      {
        v8 = *(a2 - 3);
      }

      if (v7 >= 0)
      {
        v9 = *(a2 - 1);
      }

      else
      {
        v9 = *(a2 - 2);
      }

      v10 = *(a1 + 23);
      v11 = *a1;
      v12 = *(a1 + 8);
      if (v10 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (v10 >= 0)
      {
        v14 = *(a1 + 23);
      }

      else
      {
        v14 = *(a1 + 8);
      }

      if (v14 >= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 = v14;
      }

      v16 = memcmp(v8, v13, v15);
      if (v16)
      {
        if (v16 < 0)
        {
          return 1;
        }
      }

      else if (v9 <= v14)
      {
        return 1;
      }

      v40 = *(a1 + 16);
      v41 = *(v2 - 1);
      *a1 = *v6;
      *(a1 + 16) = v41;
      *(v2 - 3) = v11;
      *(v2 - 2) = v12;
      *(v2 - 1) = v40;
      return 1;
    }
  }

  v17 = a1 + 48;
  sub_100015D88(a1, a1 + 24, (a1 + 48));
  v18 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v42 = v2;
  while (2)
  {
    v22 = *(v18 + 23);
    if (v22 >= 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = *v18;
    }

    if (v22 >= 0)
    {
      v24 = *(v18 + 23);
    }

    else
    {
      v24 = v18[1];
    }

    v25 = *(v17 + 23);
    if (v25 >= 0)
    {
      v26 = v17;
    }

    else
    {
      v26 = *v17;
    }

    if (v25 >= 0)
    {
      v27 = *(v17 + 23);
    }

    else
    {
      v27 = *(v17 + 8);
    }

    if (v27 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    v29 = memcmp(v23, v26, v28);
    if (v29)
    {
      if (v29 < 0)
      {
        goto LABEL_32;
      }
    }

    else if (v24 <= v27)
    {
      goto LABEL_32;
    }

    v43 = v20;
    v44 = *v18;
    v45 = v18[2];
    *v18 = *v17;
    v18[2] = *(v17 + 16);
    *(v17 + 23) = 0;
    *v17 = 0;
    v30 = v19;
    while (1)
    {
      v31 = a1 + v30;
      v32 = (a1 + v30 + 24);
      if (SHIBYTE(v45) >= 0)
      {
        v33 = &v44;
      }

      else
      {
        v33 = v44;
      }

      if (SHIBYTE(v45) >= 0)
      {
        v34 = HIBYTE(v45);
      }

      else
      {
        v34 = *(&v44 + 1);
      }

      v35 = *(v31 + 47);
      if (v35 >= 0)
      {
        v36 = (a1 + v30 + 24);
      }

      else
      {
        v36 = *(a1 + v30 + 24);
      }

      if (v35 >= 0)
      {
        v37 = *(v31 + 47);
      }

      else
      {
        v37 = *(v31 + 32);
      }

      if (v37 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v37;
      }

      v39 = memcmp(v33, v36, v38);
      if (!v39)
      {
        if (v34 <= v37)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if (v39 < 0)
      {
        break;
      }

LABEL_54:
      v17 -= 24;
      *(v31 + 48) = *v32;
      *(v31 + 64) = *(a1 + v30 + 40);
      *(v31 + 47) = 0;
      *v32 = 0;
      v30 -= 24;
      if (v30 == -48)
      {
        v17 = a1;
        goto LABEL_31;
      }
    }

    v17 = a1 + v30 + 48;
LABEL_31:
    v21 = v44;
    *(v17 + 16) = v45;
    *v17 = v21;
    v20 = v43 + 1;
    v2 = v42;
    if (v43 != 7)
    {
LABEL_32:
      v17 = v18;
      v19 += 24;
      v18 += 3;
      if (v18 == v2)
      {
        return 1;
      }

      continue;
    }

    return v18 + 3 == v42;
  }
}

__n128 sub_100016F5C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v61 = v4;
  v62 = v5;
  v8 = a1;
  v9 = v6 >> 1;
  if ((v6 >> 1) < (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
  {
    return result;
  }

  v10 = a3;
  v11 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
  v12 = a1 + 24 * v11;
  v13 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
  if (v13 >= a3)
  {
    goto LABEL_24;
  }

  v15 = (v12 + 24);
  v14 = *(v12 + 24);
  v16 = *(v12 + 23);
  if (v16 >= 0)
  {
    v17 = (a1 + 24 * v11);
  }

  else
  {
    v17 = *v12;
  }

  if (v16 >= 0)
  {
    v18 = *(v12 + 23);
  }

  else
  {
    v18 = *(v12 + 8);
  }

  v19 = *(v12 + 47);
  if (v19 >= 0)
  {
    v20 = (v12 + 24);
  }

  else
  {
    v20 = *(v12 + 24);
  }

  if (v19 >= 0)
  {
    v21 = *(v12 + 47);
  }

  else
  {
    v21 = *(v12 + 32);
  }

  if (v21 >= v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v21;
  }

  v23 = memcmp(v17, v20, v22);
  if (v23)
  {
    if (v23 < 0)
    {
LABEL_24:
      v15 = (v8 + 24 * v11);
      v13 = v11;
    }
  }

  else if (v18 == v21 || v18 < v21)
  {
    goto LABEL_24;
  }

  v24 = *(v15 + 23);
  if (v24 >= 0)
  {
    v25 = v15;
  }

  else
  {
    v25 = *v15;
  }

  if (v24 >= 0)
  {
    v26 = *(v15 + 23);
  }

  else
  {
    v26 = v15[1];
  }

  v27 = a4[1].n128_i8[7];
  if (v27 >= 0)
  {
    v28 = a4;
  }

  else
  {
    v28 = a4->n128_u64[0];
  }

  if (v27 >= 0)
  {
    v29 = a4[1].n128_u8[7];
  }

  else
  {
    v29 = a4->n128_u64[1];
  }

  if (v29 >= v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = v29;
  }

  v31 = memcmp(v25, v28, v30);
  if (v31)
  {
    if ((v31 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v26 > v29)
  {
    return result;
  }

  v59 = *a4;
  v60 = a4[1].n128_u64[0];
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  a4->n128_u64[0] = 0;
  v33 = v15[2];
  *a4 = *v15;
  a4[1].n128_u64[0] = v33;
  *(v15 + 23) = 0;
  *v15 = 0;
  if (v9 >= v13)
  {
    v34 = &v59;
    if (SHIBYTE(v60) < 0)
    {
      v34 = v59.n128_u64[0];
    }

    v57 = v10;
    __s2 = v34;
    if (SHIBYTE(v60) >= 0)
    {
      v35 = HIBYTE(v60);
    }

    else
    {
      v35 = v59.n128_u64[1];
    }

    while (1)
    {
      v37 = (2 * v13) | 1;
      v38 = v8 + 24 * v37;
      v13 = 2 * v13 + 2;
      if (v13 >= v10)
      {
        goto LABEL_74;
      }

      v39 = v8;
      v40 = v9;
      v42 = (v38 + 24);
      v41 = *(v38 + 24);
      v43 = *(v38 + 23);
      v44 = v43 >= 0 ? v38 : *v38;
      v45 = v43 >= 0 ? *(v38 + 23) : *(v38 + 8);
      v46 = *(v38 + 47);
      v47 = v46 >= 0 ? (v38 + 24) : *(v38 + 24);
      v48 = v46 >= 0 ? *(v38 + 47) : *(v38 + 32);
      v49 = v48 >= v45 ? v45 : v48;
      v50 = memcmp(v44, v47, v49);
      if (v50)
      {
        break;
      }

      v51 = v45 >= v48;
      if (v45 == v48)
      {
        v42 = v38;
        v13 = v37;
        v9 = v40;
        v8 = v39;
        v10 = v57;
        goto LABEL_75;
      }

      v9 = v40;
      v8 = v39;
      v10 = v57;
      if (!v51)
      {
        goto LABEL_74;
      }

LABEL_75:
      v52 = *(v42 + 23);
      if (v52 >= 0)
      {
        v53 = v42;
      }

      else
      {
        v53 = *v42;
      }

      if (v52 >= 0)
      {
        v54 = *(v42 + 23);
      }

      else
      {
        v54 = v42[1];
      }

      if (v35 >= v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = v35;
      }

      v56 = memcmp(v53, __s2, v55);
      if (v56)
      {
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_86;
        }
      }

      else if (v54 > v35)
      {
        goto LABEL_86;
      }

      v36 = *v42;
      v15[2] = v42[2];
      *v15 = v36;
      *(v42 + 23) = 0;
      *v42 = 0;
      v15 = v42;
      if (v9 < v13)
      {
        goto LABEL_87;
      }
    }

    v9 = v40;
    v8 = v39;
    v10 = v57;
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_74:
    v42 = v38;
    v13 = v37;
    goto LABEL_75;
  }

LABEL_86:
  v42 = v15;
LABEL_87:
  result = v59;
  v42[2] = v60;
  *v42 = result;
  return result;
}

void sub_100017234(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return;
  }

  v5 = 0;
  v29 = *a1;
  v28 = a1[1];
  v27 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  v6 = (a4 - 2) >> 1;
  v7 = a1;
  *a1 = 0;
  do
  {
    v10 = &v7[3 * v5];
    v8 = (v10 + 3);
    v11 = 2 * v5;
    v5 = (2 * v5) | 1;
    v12 = v11 + 2;
    if (v11 + 2 < a4)
    {
      v15 = v10[6];
      v14 = v10 + 6;
      v13 = v15;
      v16 = *(v14 - 1);
      if (v16 >= 0)
      {
        v17 = v8;
      }

      else
      {
        v17 = *(v14 - 3);
      }

      if (v16 >= 0)
      {
        v18 = *(v14 - 1);
      }

      else
      {
        v18 = *(v14 - 2);
      }

      v19 = *(v14 + 23);
      if (v19 >= 0)
      {
        v20 = v14;
      }

      else
      {
        v20 = v13;
      }

      if (v19 >= 0)
      {
        v21 = *(v14 + 23);
      }

      else
      {
        v21 = v14[1];
      }

      if (v21 >= v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = v21;
      }

      v23 = memcmp(v17, v20, v22);
      if (v23)
      {
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_3;
        }
      }

      else if (v18 > v21)
      {
LABEL_3:
        v8 = v14;
        v5 = v12;
      }
    }

    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v9 = *v8;
    v7[2] = *(v8 + 2);
    *v7 = v9;
    *(v8 + 23) = 0;
    *v8 = 0;
    v7 = v8;
  }

  while (v5 <= v6);
  if (v8 == (a2 - 24))
  {
    *v8 = v29;
    *(v8 + 1) = v28;
    *(v8 + 2) = v27;
  }

  else
  {
    v24 = *(a2 - 24);
    *(v8 + 2) = *(a2 - 8);
    *v8 = v24;
    *(a2 - 24) = v29;
    *(a2 - 16) = v28;
    *(a2 - 8) = v27;

    sub_100017400(a1, v8 + 24, a3, 0xAAAAAAAAAAAAAAABLL * ((v8 + 24 - a1) >> 3));
  }
}

__n128 sub_100017400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 24 * (v4 >> 1));
    v9 = (a2 - 24);
    v8 = *(a2 - 24);
    v10 = v7[1].n128_i8[7];
    if (v10 >= 0)
    {
      v11 = (a1 + 24 * (v4 >> 1));
    }

    else
    {
      v11 = v7->n128_u64[0];
    }

    if (v10 >= 0)
    {
      v12 = v7[1].n128_u8[7];
    }

    else
    {
      v12 = v7->n128_u64[1];
    }

    v13 = *(a2 - 1);
    if (v13 >= 0)
    {
      v14 = (a2 - 24);
    }

    else
    {
      v14 = *(a2 - 24);
    }

    if (v13 >= 0)
    {
      v15 = v9[1].n128_u8[7];
    }

    else
    {
      v15 = v9->n128_u64[1];
    }

    if (v15 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    v17 = memcmp(v11, v14, v16);
    if (v17)
    {
      if (v17 < 0)
      {
        return result;
      }
    }

    else if (v12 <= v15)
    {
      return result;
    }

    v33 = v9[1].n128_u64[0];
    v19 = v33;
    v32 = *v9;
    v9->n128_u64[1] = 0;
    v9[1].n128_u64[0] = 0;
    v9->n128_u64[0] = 0;
    v20 = HIBYTE(v19);
    if ((v20 & 0x80u) == 0)
    {
      v21 = &v32;
    }

    else
    {
      v21 = v32.n128_u64[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v32.n128_u64[1];
    }

    v23 = *v7;
    v9[1].n128_u64[0] = v7[1].n128_u64[0];
    *v9 = v23;
    v7[1].n128_u8[7] = 0;
    v7->n128_u8[0] = 0;
    if (v4 >= 2)
    {
      while (1)
      {
        v25 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v26 = (a1 + 24 * v6);
        v27 = v26[1].n128_i8[7];
        if (v27 >= 0)
        {
          v28 = (a1 + 24 * v6);
        }

        else
        {
          v28 = v26->n128_u64[0];
        }

        if (v27 >= 0)
        {
          v29 = v26[1].n128_u8[7];
        }

        else
        {
          v29 = v26->n128_u64[1];
        }

        if (v22 >= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = v22;
        }

        v31 = memcmp(v28, v21, v30);
        if (v31)
        {
          if (v31 < 0)
          {
            break;
          }
        }

        else if (v29 <= v22)
        {
          break;
        }

        v24 = *v26;
        v7[1].n128_u64[0] = v26[1].n128_u64[0];
        *v7 = v24;
        v26[1].n128_u8[7] = 0;
        v26->n128_u8[0] = 0;
        v7 = (a1 + 24 * v6);
        if (v25 <= 1)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = v7;
LABEL_43:
    result = v32;
    v26[1].n128_u64[0] = v33;
    *v26 = result;
  }

  return result;
}

void **sub_10001758C(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = __dst[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        v9 = *__dst;
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, a2, __len);
LABEL_25:
          operator delete(v9);
LABEL_26:
          __dst[2] = (v11 | 0x8000000000000000);
          *__dst = v6;
LABEL_27:
          __dst[1] = __len;
          goto LABEL_28;
        }

        v7 = a2;
LABEL_9:
        v12 = 2 * v8;
        if (__len > 2 * v8)
        {
          v12 = __len;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __len);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      sub_100001210();
    }

    v5 = HIBYTE(v10);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = a2;
        v8 = 22;
        v9 = __dst;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(__dst + 23) = __len & 0x7F;
LABEL_28:
  *(v6 + __len) = 0;
  return __dst;
}

void **sub_100017704(void **a1, char *__s)
{
  v4 = strlen(__s);

  return sub_10001758C(a1, __s, v4);
}

void logs::convertToTraceProperties(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_null_create();
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v5 = xpc_array_create(0, 0);
  v6 = v5;
  if (v5)
  {
    *a2 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    *a2 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_array)
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  *a2 = v7;
LABEL_9:
  xpc_release(v6);
  value = xpc_dictionary_get_value(*a1, "EnableBasebandLogging");
  v9 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v9 = xpc_null_create();
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    v10 = v9;
  }

  else
  {
    v10 = xpc_null_create();
  }

LABEL_16:
  xpc_release(v9);
  if (xpc_get_type(v10) != &_xpc_type_dictionary)
  {
    goto LABEL_287;
  }

  v11 = xpc_dictionary_get_value(v10, "Exclude");
  object.__r_.__value_.__r.__words[0] = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v13 = xpc::dyn_cast_or_default(&object, 4, v12);
  xpc_release(object.__r_.__value_.__l.__data_);
  if (v13 > 3 || ((v13 & 1) == 0 || (v14 = capabilities::radio::maverick(v14), (v14 & 1) == 0)) && (v13 < 2 || !capabilities::radio::ice(v14)))
  {
    v18 = 1;
    goto LABEL_48;
  }

  if ((atomic_load_explicit(&qword_1000346B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000346B0))
  {
    qword_1000346B8 = 0;
    qword_1000346C0 = 0;
    __cxa_guard_release(&qword_1000346B0);
  }

  if (qword_1000346A8 == -1)
  {
    v15 = qword_1000346C0;
    if (!os_log_type_enabled(qword_1000346C0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  dispatch_once(&qword_1000346A8, &stru_1000311A0);
  v15 = qword_1000346C0;
  if (os_log_type_enabled(qword_1000346C0, OS_LOG_TYPE_DEFAULT))
  {
LABEL_28:
    LODWORD(object.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(object.__r_.__value_.__r.__words[0]) = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not enabling baseband logging for this vendor: %d", &object, 8u);
  }

LABEL_29:
  v16 = xpc_dictionary_create(0, 0, 0);
  if (v16 || (v16 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v16) == &_xpc_type_dictionary)
    {
      xpc_retain(v16);
      v17 = v16;
    }

    else
    {
      v17 = xpc_null_create();
    }
  }

  else
  {
    v17 = xpc_null_create();
    v16 = 0;
  }

  xpc_release(v16);
  v19 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v19);
  v20 = xpc_string_create(abm::kTraceBaseband);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v17, abm::kKeyTraceName, v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = xpc_string_create(abm::kKeyEnabled);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v17, abm::kKeyTracePropertyName, v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  std::to_string(&object, 0);
  __p = object;
  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v25 = xpc_string_create(p_p);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v17, abm::kKeyTracePropertyValue, v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a2, v17);
  v18 = 0;
  v4 = v17;
LABEL_48:
  v27 = xpc_dictionary_get_value(v10, "Profile");
  object.__r_.__value_.__r.__words[0] = v27;
  if (v27)
  {
    xpc_retain(v27);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v29 = xpc::dyn_cast_or_default(&object, 1, v28);
  xpc_release(object.__r_.__value_.__l.__data_);
  if (v29 > 0x11)
  {
    v30 = v18;
  }

  else
  {
    v30 = 0;
  }

  if (v30 == 1)
  {
    if ((atomic_load_explicit(&qword_1000346B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000346B0))
    {
      qword_1000346B8 = 0;
      qword_1000346C0 = 0;
      __cxa_guard_release(&qword_1000346B0);
    }

    if (qword_1000346A8 == -1)
    {
      v31 = qword_1000346C0;
      if (!os_log_type_enabled(qword_1000346C0, OS_LOG_TYPE_ERROR))
      {
LABEL_58:
        v18 = 0;
        goto LABEL_59;
      }
    }

    else
    {
      dispatch_once(&qword_1000346A8, &stru_1000311A0);
      v31 = qword_1000346C0;
      if (!os_log_type_enabled(qword_1000346C0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    LODWORD(object.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(object.__r_.__value_.__r.__words[0]) = v29;
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Invalid profile index: %d", &object, 8u);
    goto LABEL_58;
  }

LABEL_59:
  v32 = xpc_dictionary_get_value(v10, "History");
  object.__r_.__value_.__r.__words[0] = v32;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v34 = xpc::dyn_cast_or_default(&object, 8, v33);
  xpc_release(object.__r_.__value_.__l.__data_);
  v36 = capabilities::abs::profileBasebandHistoryMB(v35);
  v37 = capabilities::radio::dal(v36);
  v38 = 1;
  if ((v37 & 1) == 0)
  {
    v38 = sub_10001B570() ^ 1;
  }

  v39 = (1 << (v38 + v34));
  if (v36 > v39)
  {
    if ((atomic_load_explicit(&qword_1000346B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000346B0))
    {
      qword_1000346B8 = 0;
      qword_1000346C0 = 0;
      __cxa_guard_release(&qword_1000346B0);
    }

    if (qword_1000346A8 == -1)
    {
      v40 = qword_1000346C0;
      if (!os_log_type_enabled(qword_1000346C0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_69:
        LODWORD(v39) = v36;
        goto LABEL_70;
      }
    }

    else
    {
      dispatch_once(&qword_1000346A8, &stru_1000311A0);
      v40 = qword_1000346C0;
      if (!os_log_type_enabled(qword_1000346C0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }
    }

    LODWORD(object.__r_.__value_.__l.__data_) = 134217984;
    *(object.__r_.__value_.__r.__words + 4) = v36;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Setting to minimum history size %lu", &object, 0xCu);
    goto LABEL_69;
  }

LABEL_70:
  v41 = xpc_dictionary_get_value(v10, "Sleep");
  object.__r_.__value_.__r.__words[0] = v41;
  if (v41)
  {
    xpc_retain(v41);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v43 = xpc::dyn_cast_or_default(&object, 0, v42);
  xpc_release(object.__r_.__value_.__l.__data_);
  if (v43 > 2)
  {
    v44 = v18;
  }

  else
  {
    v44 = 0;
  }

  if (v44 == 1)
  {
    if ((atomic_load_explicit(&qword_1000346B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000346B0))
    {
      qword_1000346B8 = 0;
      qword_1000346C0 = 0;
      __cxa_guard_release(&qword_1000346B0);
    }

    if (qword_1000346A8 != -1)
    {
      dispatch_once(&qword_1000346A8, &stru_1000311A0);
      v45 = qword_1000346C0;
      if (!os_log_type_enabled(qword_1000346C0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_287;
      }

      goto LABEL_80;
    }

    v45 = qword_1000346C0;
    if (os_log_type_enabled(qword_1000346C0, OS_LOG_TYPE_ERROR))
    {
LABEL_80:
      LODWORD(object.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(object.__r_.__value_.__r.__words[0]) = v43;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Invalid sleep index: %d", &object, 8u);
    }

LABEL_287:
    v115 = v4;
    goto LABEL_288;
  }

  if (!v18)
  {
    goto LABEL_287;
  }

  v46 = xpc_dictionary_create(0, 0, 0);
  if (v46 || (v46 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v46) == &_xpc_type_dictionary)
    {
      xpc_retain(v46);
      v47 = v46;
    }

    else
    {
      v47 = xpc_null_create();
    }
  }

  else
  {
    v47 = xpc_null_create();
    v46 = 0;
  }

  xpc_release(v46);
  v48 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v48);
  string = abm::kTraceBaseband;
  v49 = xpc_string_create(abm::kTraceBaseband);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  key = abm::kKeyTraceName;
  xpc_dictionary_set_value(v47, abm::kKeyTraceName, v49);
  v50 = xpc_null_create();
  xpc_release(v49);
  xpc_release(v50);
  v51 = xpc_string_create(abm::kKeyTracePrimaryConfigFile);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  v169 = abm::kKeyTracePropertyName;
  xpc_dictionary_set_value(v47, abm::kKeyTracePropertyName, v51);
  v52 = xpc_null_create();
  xpc_release(v51);
  xpc_release(v52);
  v53 = &(&off_100031060)[2 * v29];
  v54 = xpc_string_create(*v53);
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  v168 = abm::kKeyTracePropertyValue;
  xpc_dictionary_set_value(v47, abm::kKeyTracePropertyValue, v54);
  v55 = xpc_null_create();
  xpc_release(v54);
  xpc_release(v55);
  xpc_array_append_value(*a2, v47);
  v56 = xpc_dictionary_create(0, 0, 0);
  if (v56 || (v56 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v56) == &_xpc_type_dictionary)
    {
      xpc_retain(v56);
      v57 = v56;
    }

    else
    {
      v57 = xpc_null_create();
    }
  }

  else
  {
    v57 = xpc_null_create();
    v56 = 0;
  }

  xpc_release(v56);
  v58 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v58);
  v59 = xpc_string_create(string);
  if (!v59)
  {
    v59 = xpc_null_create();
  }

  xpc_dictionary_set_value(v57, key, v59);
  v60 = xpc_null_create();
  xpc_release(v59);
  xpc_release(v60);
  v61 = xpc_string_create(abm::kKeyTraceSecondaryConfigFile);
  if (!v61)
  {
    v61 = xpc_null_create();
  }

  xpc_dictionary_set_value(v57, v169, v61);
  v62 = xpc_null_create();
  xpc_release(v61);
  xpc_release(v62);
  v63 = xpc_string_create(v53[1]);
  if (!v63)
  {
    v63 = xpc_null_create();
  }

  xpc_dictionary_set_value(v57, v168, v63);
  v64 = xpc_null_create();
  xpc_release(v63);
  xpc_release(v64);
  xpc_array_append_value(*a2, v57);
  v65 = xpc_dictionary_create(0, 0, 0);
  if (v65 || (v65 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v65) == &_xpc_type_dictionary)
    {
      xpc_retain(v65);
      v66 = v65;
    }

    else
    {
      v66 = xpc_null_create();
    }
  }

  else
  {
    v66 = xpc_null_create();
    v65 = 0;
  }

  xpc_release(v65);
  v67 = xpc_null_create();
  xpc_release(v57);
  xpc_release(v67);
  v68 = xpc_string_create(string);
  if (!v68)
  {
    v68 = xpc_null_create();
  }

  xpc_dictionary_set_value(v66, key, v68);
  v69 = xpc_null_create();
  xpc_release(v68);
  xpc_release(v69);
  v70 = xpc_string_create(abm::kKeyTraceHistory);
  if (!v70)
  {
    v70 = xpc_null_create();
  }

  xpc_dictionary_set_value(v66, v169, v70);
  v71 = xpc_null_create();
  xpc_release(v70);
  xpc_release(v71);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&object, v39);
  __p = object;
  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = &__p;
  }

  else
  {
    v72 = __p.__r_.__value_.__r.__words[0];
  }

  v73 = xpc_string_create(v72);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  xpc_dictionary_set_value(v66, v168, v73);
  v74 = xpc_null_create();
  xpc_release(v73);
  xpc_release(v74);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a2, v66);
  v75 = xpc_dictionary_create(0, 0, 0);
  if (v75 || (v75 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v75) == &_xpc_type_dictionary)
    {
      xpc_retain(v75);
      v76 = v75;
    }

    else
    {
      v76 = xpc_null_create();
    }
  }

  else
  {
    v76 = xpc_null_create();
    v75 = 0;
  }

  xpc_release(v75);
  v77 = xpc_null_create();
  xpc_release(v66);
  xpc_release(v77);
  v78 = xpc_string_create(string);
  if (!v78)
  {
    v78 = xpc_null_create();
  }

  xpc_dictionary_set_value(v76, key, v78);
  v79 = xpc_null_create();
  xpc_release(v78);
  xpc_release(v79);
  v80 = xpc_string_create(diag::config::kEnabledDuringSleepKey);
  if (!v80)
  {
    v80 = xpc_null_create();
  }

  xpc_dictionary_set_value(v76, v169, v80);
  v81 = xpc_null_create();
  xpc_release(v80);
  xpc_release(v81);
  v83 = capabilities::radio::initium(v82);
  if (v83)
  {
    defaults::bbtrace::trace_sleep_mode(v83);
    capabilities::trace::asString();
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_object = &object;
    }

    else
    {
      p_object = object.__r_.__value_.__r.__words[0];
    }

    v85 = xpc_string_create(p_object);
    if (!v85)
    {
      v85 = xpc_null_create();
    }

    xpc_dictionary_set_value(v76, v168, v85);
    v86 = xpc_null_create();
    xpc_release(v85);
    xpc_release(v86);
    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(object.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v87 = diag::config::toString();
    v88 = xpc_string_create(v87);
    if (!v88)
    {
      v88 = xpc_null_create();
    }

    xpc_dictionary_set_value(v76, v168, v88);
    v89 = xpc_null_create();
    xpc_release(v88);
    xpc_release(v89);
  }

  xpc_array_append_value(*a2, v76);
  v90 = xpc_dictionary_create(0, 0, 0);
  if (v90 || (v90 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v90) == &_xpc_type_dictionary)
    {
      xpc_retain(v90);
      v91 = v90;
    }

    else
    {
      v91 = xpc_null_create();
    }
  }

  else
  {
    v91 = xpc_null_create();
    v90 = 0;
  }

  xpc_release(v90);
  v92 = xpc_null_create();
  xpc_release(v76);
  xpc_release(v92);
  v93 = xpc_string_create(string);
  if (!v93)
  {
    v93 = xpc_null_create();
  }

  xpc_dictionary_set_value(v91, key, v93);
  v94 = xpc_null_create();
  xpc_release(v93);
  xpc_release(v94);
  v95 = abm::kKeyEnabled;
  v96 = xpc_string_create(abm::kKeyEnabled);
  if (!v96)
  {
    v96 = xpc_null_create();
  }

  xpc_dictionary_set_value(v91, v169, v96);
  v97 = xpc_null_create();
  xpc_release(v96);
  xpc_release(v97);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&object, 1);
  __p = object;
  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v98 = &__p;
  }

  else
  {
    v98 = __p.__r_.__value_.__r.__words[0];
  }

  v99 = xpc_string_create(v98);
  if (!v99)
  {
    v99 = xpc_null_create();
  }

  xpc_dictionary_set_value(v91, v168, v99);
  v100 = xpc_null_create();
  xpc_release(v99);
  xpc_release(v100);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a2, v91);
  v102 = capabilities::diag::supportsQDSS(v101);
  if (v102)
  {
    v103 = xpc_dictionary_create(0, 0, 0);
    if (v103 || (v103 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v103) == &_xpc_type_dictionary)
      {
        xpc_retain(v103);
        v104 = v103;
      }

      else
      {
        v104 = xpc_null_create();
      }
    }

    else
    {
      v104 = xpc_null_create();
      v103 = 0;
    }

    xpc_release(v103);
    v105 = xpc_null_create();
    xpc_release(v91);
    xpc_release(v105);
    v106 = xpc_string_create(string);
    if (!v106)
    {
      v106 = xpc_null_create();
    }

    xpc_dictionary_set_value(v104, key, v106);
    v107 = xpc_null_create();
    xpc_release(v106);
    xpc_release(v107);
    v108 = xpc_string_create(abm::kKeyTraceHighTput);
    if (!v108)
    {
      v108 = xpc_null_create();
    }

    xpc_dictionary_set_value(v104, v169, v108);
    v109 = xpc_null_create();
    xpc_release(v108);
    xpc_release(v109);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&object, 1);
    __p = object;
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v110 = &__p;
    }

    else
    {
      v110 = __p.__r_.__value_.__r.__words[0];
    }

    v111 = xpc_string_create(v110);
    if (!v111)
    {
      v111 = xpc_null_create();
    }

    xpc_dictionary_set_value(v104, v168, v111);
    v112 = xpc_null_create();
    xpc_release(v111);
    xpc_release(v112);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a2, v104);
  }

  else
  {
    v104 = v91;
  }

  v113 = capabilities::diag::supportsADPL(v102);
  if (v113)
  {
    v114 = xpc_dictionary_create(0, 0, 0);
    if (v114 || (v114 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v114) == &_xpc_type_dictionary)
      {
        xpc_retain(v114);
        v115 = v114;
      }

      else
      {
        v115 = xpc_null_create();
      }
    }

    else
    {
      v115 = xpc_null_create();
      v114 = 0;
    }

    xpc_release(v114);
    v116 = xpc_null_create();
    xpc_release(v104);
    xpc_release(v116);
    v117 = xpc_string_create(string);
    if (!v117)
    {
      v117 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, key, v117);
    v118 = xpc_null_create();
    xpc_release(v117);
    xpc_release(v118);
    v119 = xpc_string_create(abm::kKeyTraceDataLogging);
    if (!v119)
    {
      v119 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, v169, v119);
    v120 = xpc_null_create();
    xpc_release(v119);
    xpc_release(v120);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&object, 1);
    __p = object;
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v121 = &__p;
    }

    else
    {
      v121 = __p.__r_.__value_.__r.__words[0];
    }

    v122 = xpc_string_create(v121);
    if (!v122)
    {
      v122 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, v168, v122);
    v123 = xpc_null_create();
    xpc_release(v122);
    xpc_release(v123);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a2, v115);
  }

  else
  {
    v115 = v104;
  }

  if (capabilities::radio::initium(v113))
  {
    v124 = xpc_dictionary_get_value(v10, "PrivacyLevel");
    object.__r_.__value_.__r.__words[0] = v124;
    if (v124)
    {
      xpc_retain(v124);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v126 = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFFFFFFFFFLL, v125);
    xpc_release(object.__r_.__value_.__l.__data_);
    if (v126 < 4)
    {
      v129 = xpc_dictionary_create(0, 0, 0);
      if (v129 || (v129 = xpc_null_create()) != 0)
      {
        if (xpc_get_type(v129) == &_xpc_type_dictionary)
        {
          xpc_retain(v129);
          v128 = v129;
        }

        else
        {
          v128 = xpc_null_create();
        }
      }

      else
      {
        v128 = xpc_null_create();
        v129 = 0;
      }

      xpc_release(v129);
      v130 = xpc_null_create();
      xpc_release(v115);
      xpc_release(v130);
      v131 = xpc_string_create(string);
      if (!v131)
      {
        v131 = xpc_null_create();
      }

      xpc_dictionary_set_value(v128, key, v131);
      v132 = xpc_null_create();
      xpc_release(v131);
      xpc_release(v132);
      v133 = xpc_string_create(abm::kKeyTracePrivacyLevel);
      if (!v133)
      {
        v133 = xpc_null_create();
      }

      xpc_dictionary_set_value(v128, v169, v133);
      v134 = xpc_null_create();
      xpc_release(v133);
      xpc_release(v134);
      memset(&__p, 0, sizeof(__p));
      std::to_string(&object, v126);
      __p = object;
      if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v135 = &__p;
      }

      else
      {
        v135 = __p.__r_.__value_.__r.__words[0];
      }

      v136 = xpc_string_create(v135);
      if (!v136)
      {
        v136 = xpc_null_create();
      }

      xpc_dictionary_set_value(v128, v168, v136);
      v137 = xpc_null_create();
      xpc_release(v136);
      xpc_release(v137);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      xpc_array_append_value(*a2, v128);
      goto LABEL_228;
    }

    if ((atomic_load_explicit(&qword_1000346B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000346B0))
    {
      qword_1000346B8 = 0;
      qword_1000346C0 = 0;
      __cxa_guard_release(&qword_1000346B0);
    }

    if (qword_1000346A8 == -1)
    {
      v127 = qword_1000346C0;
      if (!os_log_type_enabled(qword_1000346C0, OS_LOG_TYPE_ERROR))
      {
LABEL_209:
        v128 = v115;
LABEL_228:
        v138 = xpc_dictionary_create(0, 0, 0);
        if (v138 || (v138 = xpc_null_create()) != 0)
        {
          if (xpc_get_type(v138) == &_xpc_type_dictionary)
          {
            xpc_retain(v138);
            v115 = v138;
          }

          else
          {
            v115 = xpc_null_create();
          }
        }

        else
        {
          v115 = xpc_null_create();
          v138 = 0;
        }

        xpc_release(v138);
        v139 = xpc_null_create();
        xpc_release(v128);
        xpc_release(v139);
        v140 = xpc_string_create(abm::kTraceCoreDump);
        if (!v140)
        {
          v140 = xpc_null_create();
        }

        xpc_dictionary_set_value(v115, key, v140);
        v141 = xpc_null_create();
        xpc_release(v140);
        xpc_release(v141);
        v142 = xpc_string_create(v95);
        if (!v142)
        {
          v142 = xpc_null_create();
        }

        xpc_dictionary_set_value(v115, v169, v142);
        v143 = xpc_null_create();
        xpc_release(v142);
        xpc_release(v143);
        memset(&__p, 0, sizeof(__p));
        std::to_string(&object, 1);
        __p = object;
        if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v144 = &__p;
        }

        else
        {
          v144 = __p.__r_.__value_.__r.__words[0];
        }

        v145 = xpc_string_create(v144);
        if (!v145)
        {
          v145 = xpc_null_create();
        }

        xpc_dictionary_set_value(v115, v168, v145);
        v146 = xpc_null_create();
        xpc_release(v145);
        xpc_release(v146);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        xpc_array_append_value(*a2, v115);
        goto LABEL_246;
      }
    }

    else
    {
      dispatch_once(&qword_1000346A8, &stru_1000311A0);
      v127 = qword_1000346C0;
      if (!os_log_type_enabled(qword_1000346C0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_209;
      }
    }

    LODWORD(object.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(object.__r_.__value_.__r.__words[0]) = v126;
    _os_log_error_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Invalid privacy level: %d", &object, 8u);
    goto LABEL_209;
  }

LABEL_246:
  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0)
  {
    v147 = xpc_dictionary_create(0, 0, 0);
    if (v147 || (v147 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v147) == &_xpc_type_dictionary)
      {
        xpc_retain(v147);
        v148 = v147;
      }

      else
      {
        v148 = xpc_null_create();
      }
    }

    else
    {
      v148 = xpc_null_create();
      v147 = 0;
    }

    xpc_release(v147);
    v149 = xpc_null_create();
    xpc_release(v115);
    xpc_release(v149);
    v150 = xpc_string_create(abm::kTraceSystemLogs);
    if (!v150)
    {
      v150 = xpc_null_create();
    }

    xpc_dictionary_set_value(v148, key, v150);
    v151 = xpc_null_create();
    xpc_release(v150);
    xpc_release(v151);
    v152 = abm::kKeyTraceMode;
    v153 = xpc_string_create(abm::kKeyTraceMode);
    if (!v153)
    {
      v153 = xpc_null_create();
    }

    xpc_dictionary_set_value(v148, v169, v153);
    v154 = xpc_null_create();
    xpc_release(v153);
    xpc_release(v154);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&object, 1);
    __p = object;
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v155 = &__p;
    }

    else
    {
      v155 = __p.__r_.__value_.__r.__words[0];
    }

    v156 = xpc_string_create(v155);
    if (!v156)
    {
      v156 = xpc_null_create();
    }

    xpc_dictionary_set_value(v148, v168, v156);
    v157 = xpc_null_create();
    xpc_release(v156);
    xpc_release(v157);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a2, v148);
    v158 = xpc_dictionary_create(0, 0, 0);
    if (v158 || (v158 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v158) == &_xpc_type_dictionary)
      {
        xpc_retain(v158);
        v115 = v158;
      }

      else
      {
        v115 = xpc_null_create();
      }
    }

    else
    {
      v115 = xpc_null_create();
      v158 = 0;
    }

    xpc_release(v158);
    v159 = xpc_null_create();
    xpc_release(v148);
    xpc_release(v159);
    v160 = xpc_string_create(abm::kTraceCompression);
    if (!v160)
    {
      v160 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, key, v160);
    v161 = xpc_null_create();
    xpc_release(v160);
    xpc_release(v161);
    v162 = xpc_string_create(v152);
    if (!v162)
    {
      v162 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, v169, v162);
    v163 = xpc_null_create();
    xpc_release(v162);
    xpc_release(v163);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&object, 2);
    __p = object;
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v164 = &__p;
    }

    else
    {
      v164 = __p.__r_.__value_.__r.__words[0];
    }

    v165 = xpc_string_create(v164);
    if (!v165)
    {
      v165 = xpc_null_create();
    }

    xpc_dictionary_set_value(v115, v168, v165);
    v166 = xpc_null_create();
    xpc_release(v165);
    xpc_release(v166);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_288:
  xpc_release(v10);
  xpc_release(v115);
}

void sub_1000191E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t object)
{
  if (a2)
  {
    sub_100000FF0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t *sub_100019C58(xpc_object_t *a1)
{
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void logs::getDefaultTraceProperties(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v3 = xpc_array_create(0, 0);
  v4 = v3;
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    *a1 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) != &_xpc_type_array)
  {
    v5 = xpc_null_create();
LABEL_8:
    *a1 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v8 = abm::kTraceBaseband;
  v9 = xpc_string_create(abm::kTraceBaseband);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v10 = abm::kKeyTraceName;
  xpc_dictionary_set_value(v7, abm::kKeyTraceName, v9);
  v11 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v11);
  v12 = abm::kKeyEnabled;
  v13 = xpc_string_create(abm::kKeyEnabled);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v14 = abm::kKeyTracePropertyName;
  xpc_dictionary_set_value(v7, abm::kKeyTracePropertyName, v13);
  v15 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v15);
  v17 = defaults::bbtrace::enabled(v16);
  std::to_string(&v145, v17);
  __p = v145;
  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v19 = xpc_string_create(p_p);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v20 = abm::kKeyTracePropertyValue;
  xpc_dictionary_set_value(v7, abm::kKeyTracePropertyValue, v19);
  v21 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a1, v7);
  v22 = xpc_dictionary_create(0, 0, 0);
  if (v22 || (v22 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v22) == &_xpc_type_dictionary)
    {
      xpc_retain(v22);
      v23 = v22;
    }

    else
    {
      v23 = xpc_null_create();
    }
  }

  else
  {
    v23 = xpc_null_create();
    v22 = 0;
  }

  xpc_release(v22);
  v24 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v24);
  v25 = xpc_string_create(v8);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v23, v10, v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_string_create(abm::kKeyTraceHighTput);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v23, v14, v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v30 = defaults::bbtrace::high_tput(v29);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v145, v30);
  __p = v145;
  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &__p;
  }

  else
  {
    v31 = __p.__r_.__value_.__r.__words[0];
  }

  v32 = xpc_string_create(v31);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  xpc_dictionary_set_value(v23, v20, v32);
  v33 = xpc_null_create();
  xpc_release(v32);
  xpc_release(v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a1, v23);
  v34 = xpc_dictionary_create(0, 0, 0);
  if (v34 || (v34 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v34) == &_xpc_type_dictionary)
    {
      xpc_retain(v34);
      v35 = v34;
    }

    else
    {
      v35 = xpc_null_create();
    }
  }

  else
  {
    v35 = xpc_null_create();
    v34 = 0;
  }

  xpc_release(v34);
  v36 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v36);
  v37 = xpc_string_create(v8);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v35, v10, v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v39 = xpc_string_create(abm::kKeyTraceDataLogging);
  if (!v39)
  {
    v39 = xpc_null_create();
  }

  xpc_dictionary_set_value(v35, v14, v39);
  v40 = xpc_null_create();
  xpc_release(v39);
  xpc_release(v40);
  v42 = defaults::bbtrace::data_logging(v41);
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v145, v42);
  __p = v145;
  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &__p;
  }

  else
  {
    v43 = __p.__r_.__value_.__r.__words[0];
  }

  v44 = xpc_string_create(v43);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(v35, v20, v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a1, v35);
  v46 = xpc_dictionary_create(0, 0, 0);
  if (v46 || (v46 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v46) == &_xpc_type_dictionary)
    {
      xpc_retain(v46);
      v47 = v46;
    }

    else
    {
      v47 = xpc_null_create();
    }
  }

  else
  {
    v47 = xpc_null_create();
    v46 = 0;
  }

  xpc_release(v46);
  v48 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v48);
  v49 = xpc_string_create(v8);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  xpc_dictionary_set_value(v47, v10, v49);
  v50 = xpc_null_create();
  xpc_release(v49);
  xpc_release(v50);
  v51 = xpc_string_create(abm::kKeyTracePrimaryConfigFile);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  xpc_dictionary_set_value(v47, v14, v51);
  v52 = xpc_null_create();
  xpc_release(v51);
  xpc_release(v52);
  v54 = defaults::bbtrace::primary_dmc(v53);
  v55 = xpc_string_create(v54);
  if (!v55)
  {
    v55 = xpc_null_create();
  }

  xpc_dictionary_set_value(v47, v20, v55);
  v56 = xpc_null_create();
  xpc_release(v55);
  xpc_release(v56);
  xpc_array_append_value(*a1, v47);
  v57 = xpc_dictionary_create(0, 0, 0);
  if (v57 || (v57 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v57) == &_xpc_type_dictionary)
    {
      xpc_retain(v57);
      v58 = v57;
    }

    else
    {
      v58 = xpc_null_create();
    }
  }

  else
  {
    v58 = xpc_null_create();
    v57 = 0;
  }

  xpc_release(v57);
  v59 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v59);
  v60 = xpc_string_create(v8);
  if (!v60)
  {
    v60 = xpc_null_create();
  }

  xpc_dictionary_set_value(v58, v10, v60);
  v61 = xpc_null_create();
  xpc_release(v60);
  xpc_release(v61);
  v62 = xpc_string_create(abm::kKeyTraceSecondaryConfigFile);
  if (!v62)
  {
    v62 = xpc_null_create();
  }

  xpc_dictionary_set_value(v58, v14, v62);
  v63 = xpc_null_create();
  xpc_release(v62);
  xpc_release(v63);
  v65 = defaults::bbtrace::secondary_dmc(v64);
  v66 = xpc_string_create(v65);
  if (!v66)
  {
    v66 = xpc_null_create();
  }

  xpc_dictionary_set_value(v58, v20, v66);
  v67 = xpc_null_create();
  xpc_release(v66);
  xpc_release(v67);
  xpc_array_append_value(*a1, v58);
  v68 = xpc_dictionary_create(0, 0, 0);
  if (v68 || (v68 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v68) == &_xpc_type_dictionary)
    {
      xpc_retain(v68);
      v69 = v68;
    }

    else
    {
      v69 = xpc_null_create();
    }
  }

  else
  {
    v69 = xpc_null_create();
    v68 = 0;
  }

  xpc_release(v68);
  v70 = xpc_null_create();
  xpc_release(v58);
  xpc_release(v70);
  v71 = xpc_string_create(v8);
  if (!v71)
  {
    v71 = xpc_null_create();
  }

  xpc_dictionary_set_value(v69, v10, v71);
  v72 = xpc_null_create();
  xpc_release(v71);
  xpc_release(v72);
  v73 = xpc_string_create(abm::kKeyTraceHistory);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  xpc_dictionary_set_value(v69, v14, v73);
  v74 = xpc_null_create();
  xpc_release(v73);
  xpc_release(v74);
  v76 = defaults::bbtrace::history(v75);
  std::to_string(&v145, v76);
  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v77 = &v145;
  }

  else
  {
    v77 = v145.__r_.__value_.__r.__words[0];
  }

  v78 = xpc_string_create(v77);
  if (!v78)
  {
    v78 = xpc_null_create();
  }

  xpc_dictionary_set_value(v69, v20, v78);
  v79 = xpc_null_create();
  xpc_release(v78);
  xpc_release(v79);
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  xpc_array_append_value(*a1, v69);
  v80 = xpc_dictionary_create(0, 0, 0);
  if (v80 || (v80 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v80) == &_xpc_type_dictionary)
    {
      xpc_retain(v80);
      v81 = v80;
    }

    else
    {
      v81 = xpc_null_create();
    }
  }

  else
  {
    v81 = xpc_null_create();
    v80 = 0;
  }

  xpc_release(v80);
  v82 = xpc_null_create();
  xpc_release(v69);
  xpc_release(v82);
  v83 = xpc_string_create(v8);
  if (!v83)
  {
    v83 = xpc_null_create();
  }

  xpc_dictionary_set_value(v81, v10, v83);
  v84 = xpc_null_create();
  xpc_release(v83);
  xpc_release(v84);
  v85 = xpc_string_create(diag::config::kEnabledDuringSleepKey);
  if (!v85)
  {
    v85 = xpc_null_create();
  }

  xpc_dictionary_set_value(v81, v14, v85);
  v86 = xpc_null_create();
  xpc_release(v85);
  xpc_release(v86);
  defaults::bbtrace::enabled_during_sleep(v87);
  v88 = diag::config::toString();
  v89 = xpc_string_create(v88);
  if (!v89)
  {
    v89 = xpc_null_create();
  }

  xpc_dictionary_set_value(v81, v20, v89);
  v90 = xpc_null_create();
  xpc_release(v89);
  xpc_release(v90);
  v92 = capabilities::radio::initium(v91);
  if (v92)
  {
    defaults::bbtrace::trace_sleep_mode(v92);
    capabilities::trace::asString();
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = &v145;
    }

    else
    {
      v93 = v145.__r_.__value_.__r.__words[0];
    }

    v94 = xpc_string_create(v93);
    if (!v94)
    {
      v94 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v20, v94);
    v95 = xpc_null_create();
    xpc_release(v94);
    xpc_release(v95);
    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }
  }

  xpc_array_append_value(*a1, v81);
  if (capabilities::radio::initium(v96))
  {
    v97 = xpc_dictionary_create(0, 0, 0);
    if (v97 || (v97 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v97) == &_xpc_type_dictionary)
      {
        xpc_retain(v97);
        v98 = v97;
      }

      else
      {
        v98 = xpc_null_create();
      }
    }

    else
    {
      v98 = xpc_null_create();
      v97 = 0;
    }

    xpc_release(v97);
    v99 = xpc_null_create();
    xpc_release(v81);
    xpc_release(v99);
    v100 = xpc_string_create(v8);
    if (!v100)
    {
      v100 = xpc_null_create();
    }

    xpc_dictionary_set_value(v98, v10, v100);
    v101 = xpc_null_create();
    xpc_release(v100);
    xpc_release(v101);
    v102 = xpc_string_create(abm::kKeyTracePrivacyLevel);
    if (!v102)
    {
      v102 = xpc_null_create();
    }

    xpc_dictionary_set_value(v98, v14, v102);
    v103 = xpc_null_create();
    xpc_release(v102);
    xpc_release(v103);
    v105 = defaults::bbtrace::privacyLevel(v104);
    std::to_string(&v145, v105);
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v106 = &v145;
    }

    else
    {
      v106 = v145.__r_.__value_.__r.__words[0];
    }

    v107 = xpc_string_create(v106);
    if (!v107)
    {
      v107 = xpc_null_create();
    }

    xpc_dictionary_set_value(v98, v20, v107);
    v108 = xpc_null_create();
    xpc_release(v107);
    xpc_release(v108);
    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a1, v98);
    v109 = xpc_dictionary_create(0, 0, 0);
    if (v109 || (v109 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v109) == &_xpc_type_dictionary)
      {
        xpc_retain(v109);
        v81 = v109;
      }

      else
      {
        v81 = xpc_null_create();
      }
    }

    else
    {
      v81 = xpc_null_create();
      v109 = 0;
    }

    xpc_release(v109);
    v110 = xpc_null_create();
    xpc_release(v98);
    xpc_release(v110);
    v111 = xpc_string_create(abm::kTraceCoreDump);
    if (!v111)
    {
      v111 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v10, v111);
    v112 = xpc_null_create();
    xpc_release(v111);
    xpc_release(v112);
    v113 = xpc_string_create(v12);
    if (!v113)
    {
      v113 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v14, v113);
    v114 = xpc_null_create();
    xpc_release(v113);
    xpc_release(v114);
    v116 = capabilities::trace::allowed(v115);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&v145, v116);
    __p = v145;
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = &__p;
    }

    else
    {
      v117 = __p.__r_.__value_.__r.__words[0];
    }

    v118 = xpc_string_create(v117);
    if (!v118)
    {
      v118 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v20, v118);
    v119 = xpc_null_create();
    xpc_release(v118);
    xpc_release(v119);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a1, v81);
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0)
  {
    v120 = xpc_dictionary_create(0, 0, 0);
    if (v120 || (v120 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v120) == &_xpc_type_dictionary)
      {
        xpc_retain(v120);
        v121 = v120;
      }

      else
      {
        v121 = xpc_null_create();
      }
    }

    else
    {
      v121 = xpc_null_create();
      v120 = 0;
    }

    xpc_release(v120);
    v122 = xpc_null_create();
    xpc_release(v81);
    xpc_release(v122);
    v123 = xpc_string_create(abm::kTraceSystemLogs);
    if (!v123)
    {
      v123 = xpc_null_create();
    }

    xpc_dictionary_set_value(v121, v10, v123);
    v124 = xpc_null_create();
    xpc_release(v123);
    xpc_release(v124);
    v125 = abm::kKeyTraceMode;
    v126 = xpc_string_create(abm::kKeyTraceMode);
    if (!v126)
    {
      v126 = xpc_null_create();
    }

    xpc_dictionary_set_value(v121, v14, v126);
    v127 = xpc_null_create();
    xpc_release(v126);
    xpc_release(v127);
    v129 = defaults::systemlogs::mode(v128);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&v145, v129);
    __p = v145;
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v130 = &__p;
    }

    else
    {
      v130 = __p.__r_.__value_.__r.__words[0];
    }

    v131 = xpc_string_create(v130);
    if (!v131)
    {
      v131 = xpc_null_create();
    }

    xpc_dictionary_set_value(v121, v20, v131);
    v132 = xpc_null_create();
    xpc_release(v131);
    xpc_release(v132);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a1, v121);
    v133 = xpc_dictionary_create(0, 0, 0);
    if (v133 || (v133 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v133) == &_xpc_type_dictionary)
      {
        xpc_retain(v133);
        v81 = v133;
      }

      else
      {
        v81 = xpc_null_create();
      }
    }

    else
    {
      v81 = xpc_null_create();
      v133 = 0;
    }

    xpc_release(v133);
    v134 = xpc_null_create();
    xpc_release(v121);
    xpc_release(v134);
    v135 = xpc_string_create(abm::kTraceCompression);
    if (!v135)
    {
      v135 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v10, v135);
    v136 = xpc_null_create();
    xpc_release(v135);
    xpc_release(v136);
    v137 = xpc_string_create(v125);
    if (!v137)
    {
      v137 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v14, v137);
    v138 = xpc_null_create();
    xpc_release(v137);
    xpc_release(v138);
    v140 = defaults::compression::mode(v139);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&v145, v140);
    __p = v145;
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v141 = &__p;
    }

    else
    {
      v141 = __p.__r_.__value_.__r.__words[0];
    }

    v142 = xpc_string_create(v141);
    if (!v142)
    {
      v142 = xpc_null_create();
    }

    xpc_dictionary_set_value(v81, v20, v142);
    v143 = xpc_null_create();
    xpc_release(v142);
    xpc_release(v143);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_array_append_value(*a1, v81);
  }

  xpc_release(v81);
}

void sub_10001AF00(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10001AE10);
}

void sub_10001AF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  sub_100019C58(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_10001B40C(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_10001B4E8(id a1)
{
  ctu::OsLogContext::OsLogContext(v1, "com.apple.telephony.abm", "logging.profile");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v1);
}

uint64_t sub_10001B534()
{
  if ((byte_1000346A0 & 1) == 0)
  {
    byte_1000346A0 = 1;
    return __cxa_atexit(sub_10001B40C, &unk_1000345C0, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_10001B570()
{
  v0 = pthread_mutex_lock(&stru_100034610);
  v1 = off_100034650;
  if (!off_100034650)
  {
    ctu::Gestalt::create_default_global(&v8, v0);
    v2 = v8;
    v8 = 0uLL;
    v3 = *(&off_100034650 + 1);
    off_100034650 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(&v8 + 1);
    if (*(&v8 + 1) && !atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_100034650;
  }

  v5 = *(&off_100034650 + 1);
  if (*(&off_100034650 + 1))
  {
    atomic_fetch_add_explicit((*(&off_100034650 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_100034610);
  result = (*(*v1 + 152))(v1);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v7;
    }
  }

  return result;
}

uint64_t sub_10001B740(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t sub_10001B81C()
{
  if ((byte_1000346C8 & 1) == 0)
  {
    byte_1000346C8 = 1;
    return __cxa_atexit(sub_10001B740, &stru_100034610, &_mh_execute_header);
  }

  return result;
}

void sub_10001B9EC(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_10001BA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CellularExtension;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001CEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10001D300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100002420(&a9);
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v32 - 104));
  _Unwind_Resume(a1);
}

void sub_10001D3B8(uint64_t a1, xpc_object_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (!WeakRetained)
  {
    return;
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    xpc_retain(a2);
    goto LABEL_5;
  }

  a2 = xpc_null_create();
  if (a2)
  {
LABEL_5:
    if (xpc_get_type(a2) == &_xpc_type_dictionary)
    {
      xpc_retain(a2);
      v6 = a2;
    }

    else
    {
      v6 = xpc_null_create();
    }

    goto LABEL_9;
  }

  v6 = xpc_null_create();
  a2 = 0;
LABEL_9:
  xpc_release(a2);
  memset(__p, 170, sizeof(__p));
  value = xpc_dictionary_get_value(v6, abm::kKeyTimestampString);
  *object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__p, object, "", v8);
  xpc_release(*object);
  v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v10 = __p[0];
    }

    *object = 136315138;
    *&object[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received kEventTracePostProcessingEnd w timestamp [%s]", object, 0xCu);
  }

  v11 = v5 + 64;
  v12 = v5[87];
  if ((v12 & 0x8000000000000000) == 0)
  {
    if (!v5[87])
    {
      goto LABEL_29;
    }

LABEL_21:
    if (SHIBYTE(__p[2]) >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (!strncasecmp(v11, v13, v12))
    {
      v14 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *object = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Telephony log is ready", object, 2u);
      }

      v15 = *(v5 + 6);
      *(v5 + 6) = 0;
      if (v15)
      {
        dispatch_group_leave(v15);
        dispatch_release(v15);
      }
    }

    goto LABEL_29;
  }

  v12 = *(v5 + 9);
  if (v12)
  {
    v11 = *v11;
    goto LABEL_21;
  }

LABEL_29:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v6);
}

void sub_10001D608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v17);

  _Unwind_Resume(a1);
}

void sub_10001D680(uint64_t a1, xpc_object_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (!WeakRetained)
  {
    return;
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    xpc_retain(a2);
  }

  else
  {
    a2 = xpc_null_create();
    if (!a2)
    {
      v6 = xpc_null_create();
      a2 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(a2) == &_xpc_type_dictionary)
  {
    xpc_retain(a2);
    v6 = a2;
  }

  else
  {
    v6 = xpc_null_create();
  }

LABEL_9:
  xpc_release(a2);
  value = xpc_dictionary_get_value(v6, abm::kKeyBasebandOperatingMode);
  *object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *object = xpc_null_create();
  }

  v9 = xpc::dyn_cast_or_default(object, 8, v8);
  xpc_release(*object);
  v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v9 > 7u)
    {
      v11 = "Unknown";
    }

    else
    {
      v11 = (&off_100031210)[v9 & 7];
    }

    *object = 136315138;
    *&object[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BB mode event [%s]", object, 0xCu);
  }

  v12 = *(v5 + 7);
  if (v12)
  {
    v13 = v5[88];
    if (v13 != 8 && v13 == v9)
    {
      *(v5 + 7) = 0;
      dispatch_group_leave(v12);
      dispatch_release(v12);
    }
  }

  xpc_release(v6);
}

void sub_10001D864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100000FF0(exception_object);
}

void sub_10001DA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BasebandLogDEHelper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001DB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10001F030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, xpc_object_t a54)
{
  if (a2)
  {
    sub_100000FF0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001F3AC(_BYTE *a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v45 = v4;
  v44 = v4;
  v43 = v4;
  v42 = v4;
  v41 = v4;
  v40 = v4;
  v37 = v4;
  v36 = v4;
  *v32 = v4;
  v33 = v4;
  v30 = v4;
  v31 = v4;
  v28 = v4;
  v29 = v4;
  v39 = 0;
  *(&v27 + *(v27 - 3)) = v5;
  v6 = (&v27 + *(v27 - 3));
  std::ios_base::init(v6, &v28);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::locale::locale(&v28 + 1);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  *v32 = 0u;
  v33 = 0u;
  LODWORD(v34) = 16;
  sub_1000010C8(&v28);
  v7 = sub_100001228(&v27);
  v8 = *a2;
  if (*a2 <= -534716413)
  {
    if (v8 <= -534716415)
    {
      if (v8 == -534716416)
      {
        v9 = 14;
        v26 = 14;
        qmemcpy(__p, "kInternalError", 14);
        goto LABEL_25;
      }

      if (v8 == -534716415)
      {
        v9 = 12;
        v26 = 12;
        LODWORD(__p[1]) = 1919906418;
        __p[0] = *"kServerError";
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (v8 != -534716414)
    {
      if (v8 == -534716413)
      {
        v9 = 8;
        v26 = 8;
        __p[0] = 0x74756F656D69546BLL;
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v9 = 13;
    v26 = 13;
    v10 = "kCommandError";
LABEL_22:
    __p[0] = *v10;
    *(__p + 5) = *(v10 + 5);
    goto LABEL_25;
  }

  if (v8 <= -534716411)
  {
    if (v8 != -534716412)
    {
      if (v8 == -534716411)
      {
        v9 = 6;
        v26 = 6;
        qmemcpy(__p, "kRetry", 6);
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v9 = 13;
    v26 = 13;
    v10 = "kNotSupported";
    goto LABEL_22;
  }

  if (v8 != -534716410)
  {
    if (v8 != -534716409)
    {
      if (!v8)
      {
        v9 = 8;
        v26 = 8;
        __p[0] = 0x737365636375536BLL;
        goto LABEL_25;
      }

LABEL_23:
      v9 = 17;
      v26 = 17;
      v25 = 101;
      v11 = "kInvalidErrorCode";
      goto LABEL_24;
    }

    v9 = 13;
    v26 = 13;
    v10 = "kNotAvailable";
    goto LABEL_22;
  }

  v9 = 17;
  v26 = 17;
  v25 = 100;
  v11 = "kPermissionDenied";
LABEL_24:
  *__p = *v11;
LABEL_25:
  *(__p + v9) = 0;
  v12 = sub_100001228(v7);
  sub_100001228(v12);
  if (v26 < 0)
  {
    operator delete(__p[0]);
    v13 = *(a2 + 31);
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_27:
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v13 = *(a2 + 31);
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }
  }

  if (!*(a2 + 16))
  {
    goto LABEL_35;
  }

LABEL_31:
  v14 = sub_100001228(&v27);
  if (*(a2 + 31) >= 0)
  {
    v16 = *(a2 + 31);
  }

  else
  {
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
  }

  v17 = sub_100001228(v14);
  sub_100001228(v17);
LABEL_35:
  if ((v34 & 0x10) != 0)
  {
    v19 = *(&v33 + 1);
    if (*(&v33 + 1) < v31)
    {
      *(&v33 + 1) = v31;
      v19 = v31;
    }

    v20 = *(&v30 + 1);
    v18 = v19 - *(&v30 + 1);
    if ((v19 - *(&v30 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_53;
    }
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v18 = 0;
      a1[23] = 0;
      goto LABEL_49;
    }

    v20 = v29;
    v18 = v30 - v29;
    if (v30 - v29 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_53:
      sub_100001210();
    }
  }

  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v18 | 7) + 1;
    }

    v22 = operator new(v21);
    *(a1 + 1) = v18;
    *(a1 + 2) = v21 | 0x8000000000000000;
    *a1 = v22;
    a1 = v22;
    goto LABEL_48;
  }

  a1[23] = v18;
  if (v18)
  {
LABEL_48:
    memmove(a1, v20, v18);
  }

LABEL_49:
  a1[v18] = 0;
  if (SBYTE7(v33) < 0)
  {
    operator delete(v32[0]);
  }

  std::locale::~locale(&v28 + 1);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10001F9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v26 + 2);
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10001FA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1000266D8(&a15);
    std::ios::~ios();
    _Unwind_Resume(a1);
  }

  sub_1000266D8(&a15);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10001FC8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001FF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100002420(&a16);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_100020A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100000FF0(exception_object);
}

void sub_1000218E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, xpc_object_t object, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100000FF0(exception_object);
}

void sub_100021EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v29);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  xpc_release(v28);
  _Unwind_Resume(a1);
}

void sub_1000223D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v29);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  xpc_release(v28);
  _Unwind_Resume(a1);
}

unint64_t sub_1000224D4(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    result = strcasecmp(a1, "false");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "off");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "no");
    if (!result)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

LABEL_28:
    result = 1;
LABEL_29:
    *a2 = result;
    return result;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  result = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "off");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "no");
  if (!result)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_31:
    result = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_31;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  result = std::stol(a1, &__idx, 0);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx == size && (result & 0x8000000000000000) == 0 && !HIDWORD(result))
  {
    goto LABEL_29;
  }

  return result;
}

void sub_100022B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v26 - 57) < 0)
  {
    operator delete(*(v26 - 80));
  }

  xpc_release(v25);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v24);
  _Unwind_Resume(a1);
}

void sub_10002376C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, id location, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    sub_100000FF0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002393C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    if (!*a2)
    {
      v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dump telephony log and wait for processing", __p, 2u);
      }

      goto LABEL_11;
    }

    v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 31) < 0)
      {
        sub_1000020AC(__p, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        *__p = *(a2 + 8);
        v11 = *(a2 + 24);
      }

      v9 = __p;
      if (v11 < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Dumping telephony log failed w/ error %s", buf, 0xCu);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v5[87] < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 9) = 0;
      v7 = *(v5 + 6);
      *(v5 + 6) = 0;
      if (!v7)
      {
LABEL_11:

        return;
      }
    }

    else
    {
      v5[64] = 0;
      v5[87] = 0;
      v7 = *(v5 + 6);
      *(v5 + 6) = 0;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    dispatch_group_leave(v7);
    dispatch_release(v7);
    goto LABEL_11;
  }
}

void sub_100024488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, id location, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v36);

  _Unwind_Resume(a1);
}

void sub_100024630(uint64_t a1, _DWORD *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    if (!*a2)
    {
      v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resetting baseband successful. Waiting for logs.", v9, 2u);
      }

      goto LABEL_12;
    }

    v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Resetting baseband failed", buf, 2u);
      if ((v5[87] & 0x80000000) == 0)
      {
LABEL_5:
        v5[64] = 0;
        v5[87] = 0;
        v7 = *(v5 + 6);
        *(v5 + 6) = 0;
        if (!v7)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if ((v5[87] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    **(v5 + 8) = 0;
    *(v5 + 9) = 0;
    v7 = *(v5 + 6);
    *(v5 + 6) = 0;
    if (!v7)
    {
LABEL_12:

      return;
    }

LABEL_11:
    dispatch_group_leave(v7);
    dispatch_release(v7);
    goto LABEL_12;
  }
}

void sub_100024D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x100024C74);
  }

  _Unwind_Resume(exception_object);
}

void sub_100025270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, xpc_object_t object, char a20, uint64_t a21, xpc_object_t a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v22);
  sub_100002420(&a20);
  _Unwind_Resume(a1);
}

void sub_100025338(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100000FF0(exception_object);
}

void sub_1000256CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, xpc_object_t object, char a22)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v22);
  sub_100002420(&a22);
  _Unwind_Resume(a1);
}

void sub_100025788(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100000FF0(exception_object);
}

void sub_100025AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, xpc_object_t object, char a22)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v22);
  sub_100002420(&a22);
  _Unwind_Resume(a1);
}

void sub_100025B78(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100000FF0(exception_object);
}

void sub_10002611C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, xpc_object_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100000FF0(exception_object);
}

void sub_10002646C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, xpc_object_t a18)
{
  if (a2)
  {
    sub_100000FF0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000266D8(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_1000267F8(void *a1)
{
  if (a1)
  {
    sub_1000267F8(*a1);
    sub_1000267F8(a1[1]);

    operator delete(a1);
  }
}

const void **sub_100026848(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t abm::client::PerformCommand()
{
  return abm::client::PerformCommand();
}

{
  return abm::client::PerformCommand();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}