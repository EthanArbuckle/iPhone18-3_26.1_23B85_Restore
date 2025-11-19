const void **sub_7A454(const void **a1, const void **a2)
{
  v2 = a2;
  v54 = a1[2];
  v4 = v54;
  v53 = *a1;
  a1[1] = 0;
  a1[2] = 0;
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
    v11 = a2 - 3;
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

  else if (v7 >= v12)
  {
LABEL_18:
    for (i = a1 + 3; i < v2; i += 3)
    {
      v16 = *(i + 23);
      if (v16 >= 0)
      {
        v17 = i;
      }

      else
      {
        v17 = *i;
      }

      if (v16 >= 0)
      {
        v18 = *(i + 23);
      }

      else
      {
        v18 = i[1];
      }

      if (v18 >= v7)
      {
        v19 = v7;
      }

      else
      {
        v19 = v18;
      }

      v20 = memcmp(v6, v17, v19);
      if (v20)
      {
        if (v20 < 0)
        {
          goto LABEL_48;
        }
      }

      else if (v7 < v18)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_48;
  }

  v21 = a1 + 3;
  do
  {
    while (1)
    {
      i = v21;
      v22 = *(v21 + 23);
      v23 = v22 >= 0 ? i : *i;
      v24 = v22 >= 0 ? v22 : i[1];
      v25 = v24 >= v7 ? v7 : v24;
      v26 = memcmp(v6, v23, v25);
      v21 = i + 3;
      if (v26)
      {
        break;
      }

      if (v7 < v24)
      {
        goto LABEL_48;
      }
    }
  }

  while ((v26 & 0x80000000) == 0);
LABEL_48:
  if (i < v2)
  {
    for (v2 -= 3; ; v10 = v2[1])
    {
      if ((v9 & 0x80u) == 0)
      {
        v28 = v2;
      }

      else
      {
        v28 = v8;
      }

      if ((v9 & 0x80u) == 0)
      {
        v29 = v9;
      }

      else
      {
        v29 = v10;
      }

      if (v29 >= v7)
      {
        v30 = v7;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v6, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          break;
        }
      }

      else if (v7 >= v29)
      {
        break;
      }

      v27 = *(v2 - 3);
      v2 -= 3;
      v8 = v27;
      v9 = *(v2 + 23);
    }
  }

  while (i < v2)
  {
    v32 = *i;
    v56 = i[2];
    v55 = v32;
    v33 = *v2;
    i[2] = v2[2];
    *i = v33;
    v34 = v55;
    v2[2] = v56;
    *v2 = v34;
    if (SHIBYTE(v54) >= 0)
    {
      v35 = &v53;
    }

    else
    {
      v35 = v53;
    }

    if (SHIBYTE(v54) >= 0)
    {
      v36 = HIBYTE(v54);
    }

    else
    {
      v36 = *(&v53 + 1);
    }

    v37 = i + 3;
    do
    {
      while (1)
      {
        i = v37;
        v38 = *(v37 + 23);
        v39 = v38 >= 0 ? i : *i;
        v40 = v38 >= 0 ? v38 : i[1];
        v41 = v40 >= v36 ? v36 : v40;
        v42 = memcmp(v35, v39, v41);
        v37 = i + 3;
        if (v42)
        {
          break;
        }

        if (v36 < v40)
        {
          goto LABEL_85;
        }
      }
    }

    while ((v42 & 0x80000000) == 0);
LABEL_85:
    v43 = v2 - 3;
    do
    {
      while (1)
      {
        v2 = v43;
        v44 = *(v43 + 23);
        v45 = v44 >= 0 ? v2 : *v2;
        v46 = v44 >= 0 ? v44 : v2[1];
        v47 = v46 >= v36 ? v36 : v46;
        v48 = memcmp(v35, v45, v47);
        v43 = v2 - 3;
        if (v48)
        {
          break;
        }

        if (v36 >= v46)
        {
          goto LABEL_65;
        }
      }
    }

    while (v48 < 0);
LABEL_65:
    ;
  }

  v49 = (i - 3);
  if (i - 3 == a1)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*v49);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v50 = *v49;
    a1[2] = *(i - 1);
    *a1 = v50;
    *(i - 1) = 0;
    *(i - 24) = 0;
  }

  v51 = v53;
  *(i - 1) = v54;
  *v49 = v51;
  return i;
}

unint64_t sub_7A748(__int128 *a1, unint64_t a2)
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
    v10 = *(a1 + v4 + 47);
    v11 = v10 >= 0 ? a1 + v4 + 24 : *(a1 + v4 + 24);
    v12 = v10 >= 0 ? *(a1 + v4 + 47) : *(a1 + v4 + 32);
    v13 = v9 >= v12 ? v12 : v9;
    v14 = memcmp(v11, v8, v13);
    if (v14)
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_20;
    }

LABEL_8:
    v4 += 24;
  }

  if (v14 < 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  v15 = a1 + v4 + 24;
  if (v4)
  {
    v16 = a2 - 24;
    do
    {
      while (1)
      {
        a2 = v16;
        v17 = *(v16 + 23);
        v18 = (v17 & 0x80u) == 0 ? a2 : *a2;
        v19 = (v17 & 0x80u) == 0 ? v17 : *(a2 + 8);
        v20 = v9 >= v19 ? v19 : v9;
        v21 = memcmp(v18, v8, v20);
        v16 = a2 - 24;
        if (v21)
        {
          break;
        }

        if (v19 < v9)
        {
          goto LABEL_34;
        }
      }
    }

    while ((v21 & 0x80000000) == 0);
  }

  else
  {
    do
    {
      if (v15 >= a2)
      {
        break;
      }

      while (1)
      {
        a2 -= 24;
        v41 = *(a2 + 23);
        v42 = v41 >= 0 ? a2 : *a2;
        v43 = v41 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v44 = v9 >= v43 ? v43 : v9;
        v45 = memcmp(v42, v8, v44);
        if (v45)
        {
          break;
        }

        if (v43 < v9 || v15 >= a2)
        {
          goto LABEL_34;
        }
      }
    }

    while ((v45 & 0x80000000) == 0);
  }

LABEL_34:
  if (v15 >= a2)
  {
    v22 = v15;
  }

  else
  {
    v22 = v15;
    v23 = a2;
    do
    {
      v24 = *v22;
      v54 = *(v22 + 16);
      v53 = v24;
      v25 = *v23;
      *(v22 + 16) = *(v23 + 16);
      *v22 = v25;
      v26 = v53;
      *(v23 + 16) = v54;
      *v23 = v26;
      if (v52 >= 0)
      {
        v27 = &v51;
      }

      else
      {
        v27 = v51;
      }

      if (v52 >= 0)
      {
        v28 = HIBYTE(v52);
      }

      else
      {
        v28 = *(&v51 + 1);
      }

      v29 = v22 + 24;
      do
      {
        while (1)
        {
          v22 = v29;
          v30 = *(v29 + 23);
          v31 = (v30 & 0x80u) == 0 ? v22 : *v22;
          v32 = (v30 & 0x80u) == 0 ? v30 : *(v22 + 8);
          v33 = v28 >= v32 ? v32 : v28;
          v34 = memcmp(v31, v27, v33);
          v29 = v22 + 24;
          if (v34)
          {
            break;
          }

          if (v32 >= v28)
          {
            goto LABEL_56;
          }
        }
      }

      while (v34 < 0);
LABEL_56:
      v35 = v23 - 24;
      do
      {
        while (1)
        {
          v23 = v35;
          v36 = *(v35 + 23);
          v37 = (v36 & 0x80u) == 0 ? v23 : *v23;
          v38 = (v36 & 0x80u) == 0 ? v36 : *(v23 + 8);
          v39 = v28 >= v38 ? v38 : v28;
          v40 = memcmp(v37, v27, v39);
          v35 = v23 - 24;
          if (v40)
          {
            break;
          }

          if (v38 < v28)
          {
            goto LABEL_36;
          }
        }
      }

      while ((v40 & 0x80000000) == 0);
LABEL_36:
      ;
    }

    while (v22 < v23);
  }

  v47 = (v22 - 24);
  if ((v22 - 24) == a1)
  {
    if (*(v22 - 1) < 0)
    {
      operator delete(*v47);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v48 = *v47;
    *(a1 + 2) = *(v22 - 8);
    *a1 = v48;
    *(v22 - 1) = 0;
    *(v22 - 24) = 0;
  }

  v49 = v51;
  *(v22 - 8) = v52;
  *v47 = v49;
  return v22 - 24;
}

BOOL sub_7AA18(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_79AF4(a1, (a1 + 24), a2 - 3);
        return 1;
      case 4:
        sub_79D54(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        sub_79F04(a1, a1 + 24, a1 + 48, (a1 + 72), a2 - 3);
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
      if (v10 >= 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = *a1;
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 23);
      }

      else
      {
        v12 = *(a1 + 8);
      }

      if (v12 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v12;
      }

      v14 = memcmp(v8, v11, v13);
      if (v14)
      {
        if ((v14 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v9 >= v12)
      {
        return 1;
      }

      v38 = *(a1 + 16);
      v39 = *a1;
      v40 = v6[2];
      *a1 = *v6;
      *(a1 + 16) = v40;
      *v6 = v39;
      v6[2] = v38;
      return 1;
    }
  }

  v15 = a1 + 48;
  sub_79AF4(a1, (a1 + 24), (a1 + 48));
  v16 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  v41 = v2;
  while (2)
  {
    v20 = *(v16 + 23);
    if (v20 >= 0)
    {
      v21 = v16;
    }

    else
    {
      v21 = *v16;
    }

    if (v20 >= 0)
    {
      v22 = *(v16 + 23);
    }

    else
    {
      v22 = v16[1];
    }

    v23 = *(v15 + 23);
    if (v23 >= 0)
    {
      v24 = v15;
    }

    else
    {
      v24 = *v15;
    }

    if (v23 >= 0)
    {
      v25 = *(v15 + 23);
    }

    else
    {
      v25 = *(v15 + 8);
    }

    if (v25 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v25;
    }

    v27 = memcmp(v21, v24, v26);
    if (v27)
    {
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (v22 >= v25)
    {
      goto LABEL_32;
    }

    v42 = v18;
    v43 = *v16;
    v44 = v16[2];
    *v16 = 0;
    v16[1] = 0;
    v16[2] = *(v15 + 16);
    *v16 = *v15;
    *(v15 + 23) = 0;
    *v15 = 0;
    v28 = v17;
    while (1)
    {
      v29 = a1 + v28;
      v30 = (a1 + v28 + 24);
      if (SHIBYTE(v44) >= 0)
      {
        v31 = &v43;
      }

      else
      {
        v31 = v43;
      }

      if (SHIBYTE(v44) >= 0)
      {
        v32 = HIBYTE(v44);
      }

      else
      {
        v32 = *(&v43 + 1);
      }

      v33 = *(v29 + 47);
      if (v33 >= 0)
      {
        v34 = (a1 + v28 + 24);
      }

      else
      {
        v34 = *(a1 + v28 + 24);
      }

      if (v33 >= 0)
      {
        v35 = *(v29 + 47);
      }

      else
      {
        v35 = *(v29 + 32);
      }

      if (v35 >= v32)
      {
        v36 = v32;
      }

      else
      {
        v36 = v35;
      }

      v37 = memcmp(v31, v34, v36);
      if (!v37)
      {
        if (v32 >= v35)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if ((v37 & 0x80000000) == 0)
      {
        break;
      }

LABEL_54:
      v15 -= 24;
      *(v29 + 48) = *v30;
      *(v29 + 64) = *(a1 + v28 + 40);
      *(v29 + 47) = 0;
      *v30 = 0;
      v28 -= 24;
      if (v28 == -48)
      {
        v15 = a1;
        goto LABEL_31;
      }
    }

    v15 = a1 + v28 + 48;
LABEL_31:
    v19 = v43;
    *(v15 + 16) = v44;
    *v15 = v19;
    v18 = v42 + 1;
    v2 = v41;
    if (v42 != 7)
    {
LABEL_32:
      v15 = v16;
      v17 += 24;
      v16 += 3;
      if (v16 == v2)
      {
        return 1;
      }

      continue;
    }

    return v16 + 3 == v41;
  }
}

__n128 sub_7AD20(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v58 = v4;
  v59 = v5;
  if (((a3 - 2) >> 1) < (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
  {
    return result;
  }

  v54 = (a3 - 2) >> 1;
  v8 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
  v9 = a1 + 24 * v8;
  v10 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
  if (v10 >= a3)
  {
    goto LABEL_21;
  }

  v11 = a4;
  v12 = (v9 + 24);
  v13 = *(v9 + 23);
  if (v13 >= 0)
  {
    v14 = (a1 + 24 * v8);
  }

  else
  {
    v14 = *v9;
  }

  if (v13 >= 0)
  {
    v15 = *(v9 + 23);
  }

  else
  {
    v15 = *(v9 + 8);
  }

  v16 = *(v9 + 47);
  if (v16 >= 0)
  {
    v17 = (v9 + 24);
  }

  else
  {
    v17 = *(v9 + 24);
  }

  if (v16 >= 0)
  {
    v18 = *(v9 + 47);
  }

  else
  {
    v18 = *(v9 + 32);
  }

  if (v18 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v20 = memcmp(v14, v17, v19);
  if (v20)
  {
    a4 = v11;
    if (v20 < 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  a4 = v11;
  if (v15 >= v18)
  {
LABEL_21:
    v12 = (a1 + 24 * v8);
    v10 = v8;
  }

LABEL_22:
  v21 = *(v12 + 23);
  if (v21 >= 0)
  {
    v22 = v12;
  }

  else
  {
    v22 = *v12;
  }

  if (v21 >= 0)
  {
    v23 = *(v12 + 23);
  }

  else
  {
    v23 = v12[1];
  }

  v24 = *(a4 + 23);
  v25 = a4;
  if (v24 >= 0)
  {
    v26 = a4;
  }

  else
  {
    v26 = *a4;
  }

  if (v24 >= 0)
  {
    v27 = *(a4 + 23);
  }

  else
  {
    v27 = a4[1];
  }

  if (v27 >= v23)
  {
    v28 = v23;
  }

  else
  {
    v28 = v27;
  }

  v29 = memcmp(v22, v26, v28);
  if (v29)
  {
    v31 = v25;
    v32 = v54;
    if (v29 < 0)
    {
      return result;
    }
  }

  else
  {
    v31 = v25;
    v32 = v54;
    if (v23 < v27)
    {
      return result;
    }
  }

  v56 = *v31;
  v57 = v31[1].n128_u64[0];
  v31->n128_u64[1] = 0;
  v31[1].n128_u64[0] = 0;
  v31->n128_u64[0] = 0;
  v33 = v12[2];
  *v31 = *v12;
  v31[1].n128_u64[0] = v33;
  *(v12 + 23) = 0;
  *v12 = 0;
  if (v32 >= v10)
  {
    v35 = &v56;
    if (SHIBYTE(v57) < 0)
    {
      v35 = v56.n128_u64[0];
    }

    __s2 = v35;
    if (SHIBYTE(v57) >= 0)
    {
      v36 = HIBYTE(v57);
    }

    else
    {
      v36 = v56.n128_u64[1];
    }

    while (1)
    {
      v38 = (2 * v10) | 1;
      v39 = a1 + 24 * v38;
      v10 = 2 * v10 + 2;
      if (v10 >= a3)
      {
        goto LABEL_70;
      }

      v34 = (v39 + 24);
      v40 = *(v39 + 23);
      v41 = v40 >= 0 ? (a1 + 24 * v38) : *v39;
      v42 = v40 >= 0 ? *(v39 + 23) : *(v39 + 8);
      v43 = *(v39 + 47);
      v44 = v43 >= 0 ? (v39 + 24) : *(v39 + 24);
      v45 = v43 >= 0 ? *(v39 + 47) : *(v39 + 32);
      v46 = v45 >= v42 ? v42 : v45;
      v47 = memcmp(v41, v44, v46);
      if (v47)
      {
        break;
      }

      v53 = v42 >= v45;
      v32 = v54;
      if (v53)
      {
        goto LABEL_70;
      }

LABEL_71:
      v48 = *(v34 + 23);
      if (v48 >= 0)
      {
        v49 = v34;
      }

      else
      {
        v49 = *v34;
      }

      if (v48 >= 0)
      {
        v50 = *(v34 + 23);
      }

      else
      {
        v50 = v34[1];
      }

      if (v36 >= v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = v36;
      }

      v52 = memcmp(v49, __s2, v51);
      if (v52)
      {
        if (v52 < 0)
        {
          goto LABEL_42;
        }
      }

      else if (v50 < v36)
      {
        goto LABEL_42;
      }

      v37 = *v34;
      v12[2] = v34[2];
      *v12 = v37;
      *(v34 + 23) = 0;
      *v34 = 0;
      v12 = v34;
      if (v32 < v10)
      {
        goto LABEL_43;
      }
    }

    v32 = v54;
    if (v47 < 0)
    {
      goto LABEL_71;
    }

LABEL_70:
    v34 = (a1 + 24 * v38);
    v10 = v38;
    goto LABEL_71;
  }

LABEL_42:
  v34 = v12;
LABEL_43:
  result = v56;
  v34[2] = v57;
  *v34 = result;
  return result;
}

void sub_7AFE4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a2 - a1 >= 25)
  {
    v3 = a2;
    v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    do
    {
      while (2)
      {
        v7 = 0;
        v8 = a1;
        v27 = *a1;
        v29 = v3;
        *v30 = *(a1 + 8);
        *&v30[7] = *(a1 + 15);
        v28 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        do
        {
          v10 = v8;
          v11 = v8 + 24 * v7;
          v8 = v11 + 24;
          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v13 = v12 + 2;
          if (v12 + 2 < v4)
          {
            v16 = *(v11 + 6);
            v15 = v11 + 48;
            v14 = v16;
            v17 = *(v15 - 1);
            if (v17 >= 0)
            {
              v18 = v8;
            }

            else
            {
              v18 = *(v15 - 3);
            }

            if (v17 >= 0)
            {
              v19 = *(v15 - 1);
            }

            else
            {
              v19 = *(v15 - 2);
            }

            v20 = v15[23];
            if (v20 >= 0)
            {
              v21 = v15;
            }

            else
            {
              v21 = v14;
            }

            if (v20 >= 0)
            {
              v22 = v15[23];
            }

            else
            {
              v22 = *(v15 + 1);
            }

            if (v22 >= v19)
            {
              v23 = v19;
            }

            else
            {
              v23 = v22;
            }

            v24 = memcmp(v18, v21, v23);
            if (v24)
            {
              if (v24 < 0)
              {
                goto LABEL_9;
              }
            }

            else if (v19 < v22)
            {
LABEL_9:
              v8 = v15;
              v7 = v13;
            }
          }

          v9 = *v8;
          *(v10 + 2) = *(v8 + 2);
          *v10 = v9;
          *(v8 + 23) = 0;
          *v8 = 0;
        }

        while (v7 <= ((v4 - 2) >> 1));
        v3 = (v3 - 24);
        if (v8 != (v29 - 24))
        {
          v5 = *v3;
          *(v8 + 2) = *(v29 - 1);
          *v8 = v5;
          *(v29 - 3) = v27;
          *(v29 - 2) = *v30;
          *(v29 - 9) = *&v30[7];
          *(v29 - 1) = v28;
          sub_7B204(a1, v8 + 24, a3, 0xAAAAAAAAAAAAAAABLL * ((v8 - a1 + 24) >> 3));
          v6 = v4-- <= 2;
          if (v6)
          {
            return;
          }

          continue;
        }

        break;
      }

      *v8 = v27;
      *(v8 + 1) = *v30;
      *(v8 + 15) = *&v30[7];
      *(v8 + 23) = v28;
      v6 = v4-- <= 2;
    }

    while (!v6);
  }
}

__n128 sub_7B204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 24 * (v4 >> 1));
    v8 = (a2 - 24);
    v9 = v7[1].n128_i8[7];
    if (v9 >= 0)
    {
      v10 = (a1 + 24 * (v4 >> 1));
    }

    else
    {
      v10 = v7->n128_u64[0];
    }

    if (v9 >= 0)
    {
      v11 = v7[1].n128_u8[7];
    }

    else
    {
      v11 = v7->n128_u64[1];
    }

    v12 = *(a2 - 1);
    if (v12 >= 0)
    {
      v13 = (a2 - 24);
    }

    else
    {
      v13 = *(a2 - 24);
    }

    if (v12 >= 0)
    {
      v14 = v8[1].n128_u8[7];
    }

    else
    {
      v14 = v8->n128_u64[1];
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    v16 = memcmp(v10, v13, v15);
    if (v16)
    {
      if ((v16 & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v11 >= v14)
    {
      return result;
    }

    v32 = v8[1].n128_u64[0];
    v18 = v32;
    v31 = *v8;
    v8->n128_u64[1] = 0;
    v8[1].n128_u64[0] = 0;
    v8->n128_u64[0] = 0;
    v19 = HIBYTE(v18);
    if ((v19 & 0x80u) == 0)
    {
      v20 = &v31;
    }

    else
    {
      v20 = v31.n128_u64[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v31.n128_u64[1];
    }

    v22 = *v7;
    v8[1].n128_u64[0] = v7[1].n128_u64[0];
    *v8 = v22;
    v7[1].n128_u8[7] = 0;
    v7->n128_u8[0] = 0;
    if (v4 >= 2)
    {
      while (1)
      {
        v24 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v25 = (a1 + 24 * v6);
        v26 = v25[1].n128_i8[7];
        if (v26 >= 0)
        {
          v27 = (a1 + 24 * v6);
        }

        else
        {
          v27 = v25->n128_u64[0];
        }

        if (v26 >= 0)
        {
          v28 = v25[1].n128_u8[7];
        }

        else
        {
          v28 = v25->n128_u64[1];
        }

        if (v21 >= v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = v21;
        }

        v30 = memcmp(v27, v20, v29);
        if (v30)
        {
          if ((v30 & 0x80000000) == 0)
          {
            break;
          }
        }

        else if (v28 >= v21)
        {
          break;
        }

        v23 = *v25;
        v7[1].n128_u64[0] = v25[1].n128_u64[0];
        *v7 = v23;
        v25[1].n128_u8[7] = 0;
        v25->n128_u8[0] = 0;
        v7 = (a1 + 24 * v6);
        if (v24 <= 1)
        {
          goto LABEL_43;
        }
      }
    }

    v25 = v7;
LABEL_43:
    result = v31;
    v25[1].n128_u64[0] = v32;
    *v25 = result;
  }

  return result;
}

void sub_7B390(uint64_t a1)
{
  for (i = *(a1 + 184); i; i = *i)
  {
    empty = xpc_dictionary_create_empty();
    v3 = i[5];
    v4 = i[6];
    while (v3 != v4)
    {
      if (*(v3 + 23) < 0)
      {
        sub_325C(__p, *v3, *(v3 + 1));
      }

      else
      {
        v5 = *v3;
        v14 = *(v3 + 2);
        *__p = v5;
      }

      v6 = HIBYTE(v14);
      v7 = __p[0];
      if (v14 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (v14 >= 0)
      {
        v9 = HIBYTE(v14);
      }

      else
      {
        v9 = __p[1];
      }

      if (v9)
      {
        while (1)
        {
          v10 = *v8;
          if (v10 < 0)
          {
            if (__maskrune(v10, 0x100uLL))
            {
              goto LABEL_17;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v10] & 0x500) != 0)
          {
            goto LABEL_17;
          }

          *v8 = 95;
LABEL_17:
          v8 = (v8 + 1);
          if (!--v9)
          {
            v6 = HIBYTE(v14);
            v7 = __p[0];
            break;
          }
        }
      }

      if (v6 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = v7;
      }

      xpc_dictionary_set_int64(empty, v11, *(v3 + 3));
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      v3 += 2;
    }

    v12 = (i + 2);
    if (*(i + 39) < 0)
    {
      v12 = *v12;
    }

    xpc_dictionary_set_string(empty, "entityType", v12);
    analytics_send_event();
  }
}

void sub_7B514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7B538@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 0:
      *(a2 + 23) = 8;
      strcpy(a2, "Instance");
      return result;
    case 1:
      v4 = "RoutingService";
      goto LABEL_17;
    case 2:
      *(a2 + 23) = 17;
      strcpy(a2, "TrafficUpdatePlan");
      return result;
    case 3:
      v3 = "DrivingDirectionsPlan";
      goto LABEL_24;
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
      *(a2 + 23) = 15;
      strcpy(a2, "DrivingDooMPlan");
      return result;
    case 7:
      operator new();
    case 8:
      *(a2 + 23) = 7;
      strcpy(a2, "ETAPlan");
      return result;
    case 9:
      v4 = "FareCalculator";
LABEL_17:
      *(a2 + 23) = 14;
      *a2 = *v4;
      *(a2 + 6) = *(v4 + 6);
      *(a2 + 14) = 0;
      return result;
    case 10:
      *(a2 + 23) = 19;
      strcpy(a2, "TransitRealtimeFeed");
      return result;
    case 11:
      v2 = "TransitRealtimeService";
      goto LABEL_30;
    case 12:
      v3 = "TransitRealtimeUpdate";
      goto LABEL_24;
    case 13:
      v3 = "TransitDirectionsPlan";
      goto LABEL_24;
    case 14:
      v3 = "TransitIncidentUpdate";
      goto LABEL_24;
    case 15:
      v3 = "WalkingDirectionsPlan";
      goto LABEL_24;
    case 16:
      v2 = "TransitRouteUpdatePlan";
      goto LABEL_30;
    case 17:
      v3 = "CyclingDirectionsPlan";
LABEL_24:
      *(a2 + 23) = 21;
      *a2 = *v3;
      *(a2 + 13) = *(v3 + 13);
      *(a2 + 21) = 0;
      break;
    case 18:
      operator new();
    case 19:
      operator new();
    case 20:
      operator new();
    case 21:
      operator new();
    case 22:
      operator new();
    case 23:
      operator new();
    case 24:
      operator new();
    case 25:
      operator new();
    case 26:
      operator new();
    case 27:
      operator new();
    case 28:
      *(a2 + 23) = 10;
      strcpy(a2, "RioETAPlan");
      break;
    case 29:
      operator new();
    case 30:
      v2 = "WalkingCustomRoutePlan";
LABEL_30:
      *(a2 + 23) = 22;
      *a2 = *v2;
      *(a2 + 14) = *(v2 + 14);
      *(a2 + 22) = 0;
      break;
    default:
      *(a2 + 23) = 7;
      strcpy(a2, "Unknown");
      break;
  }

  return result;
}

uint64_t sub_7BBF8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result <= 3)
  {
    if (result <= 1)
    {
      if (!result)
      {
        a2[23] = 2;
        strcpy(a2, "_s");
        return result;
      }

      if (result == 1)
      {
        a2[23] = 3;
        *a2 = 27999;
        a2[2] = 115;
        a2[3] = 0;
        return result;
      }

LABEL_20:
      a2[23] = 8;
      strcpy(a2, "_unknown");
      return result;
    }

    if (result == 2)
    {
      a2[23] = 5;
      *a2 = 1954112095;
      a2[4] = 101;
      a2[5] = 0;
    }

    else
    {
      a2[23] = 3;
      *a2 = 19807;
      a2[2] = 66;
      a2[3] = 0;
    }
  }

  else
  {
    if (result > 5)
    {
      switch(result)
      {
        case 6:
          a2[23] = 8;
          strcpy(a2, "_percent");
          return result;
        case 7:
          a2[23] = 2;
          strcpy(a2, "_m");
          return result;
        case 8:
          a2[23] = 5;
          *a2 = 1883393375;
          a2[4] = 115;
          a2[5] = 0;
          return result;
      }

      goto LABEL_20;
    }

    if (result == 4)
    {
      a2[23] = 6;
      strcpy(a2, "_count");
    }

    else
    {
      a2[23] = 9;
      strcpy(a2, "_permille");
    }
  }

  return result;
}

void sub_7BDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_7BE7C(&v7, a2, 4);
  sub_7B538(a1, __p);
  sub_7C018(a3, __p, &v7, 1);
  if ((v6 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(v7.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }
}

void sub_7BE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_7BE7C(std::string *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    sub_7BBF8(a3, &__p);
    goto LABEL_13;
  }

  *(&v17.__r_.__value_.__s + 23) = 7;
  strcpy(&v17, "Unknown");
  sub_7BBF8(a3, v15);
  if ((v16 & 0x80u) == 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = v15[1];
  }

  v8 = std::string::append(&v17, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v16 < 0)
  {
    operator delete(v15[0]);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
LABEL_13:
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = std::string::insert(&__p, 0, v11, v12);
  *a1 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_7BFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_7C018(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  __p[0] = a2;
  v6 = sub_7CEFC((a1 + 168), a2);
  v7 = v6;
  if (*(a3 + 23) < 0)
  {
    sub_325C(__p, *a3, *(a3 + 8));
    v14 = a4;
    v8 = v7[6];
    if (v8 < v7[7])
    {
      goto LABEL_3;
    }
  }

  else
  {
    *__p = *a3;
    v13 = *(a3 + 16);
    v14 = a4;
    v8 = v6[6];
    if (v8 < v6[7])
    {
LABEL_3:
      v9 = *__p;
      v8[2] = v13;
      *v8 = v9;
      v8[3] = v14;
      v7[6] = (v8 + 4);
      return;
    }
  }

  v10 = sub_7D3D4(v7 + 5, __p);
  v11 = SHIBYTE(v13);
  v7[6] = v10;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_7C100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7C11C(uint64_t a1, const std::error_condition *a2, const void **a3, uint64_t a4)
{
  *(&v31.__r_.__value_.__s + 23) = 12;
  LODWORD(v31.__r_.__value_.__r.__words[1]) = 1919906418;
  v31.__r_.__value_.__r.__words[0] = *"RoutingError";
  v8 = (a2->__cat_->name)(a2->__cat_);
  if (strlen(v8) == 12 && (v31.__r_.__value_.__r.__words[0] == *v8 ? (v9 = LODWORD(v31.__r_.__value_.__r.__words[1]) == *(v8 + 8)) : (v9 = 0), v9))
  {
    std::error_condition::message(&v30, a2);
  }

  else
  {
    *(&v30.__r_.__value_.__s + 23) = 16;
    strcpy(&v30, "NoneRoutingError");
  }

  sub_7B538(a1, v28);
  v26 = 13;
  strcpy(__s, "InternalError");
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v24 = v30;
LABEL_12:
    sub_7D524(&v31, &v24, 4);
    goto LABEL_13;
  }

  sub_325C(&v24, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  v10 = v26;
  if (v26 < 0)
  {
    v10 = *&__s[8];
  }

  if (v10)
  {
    goto LABEL_12;
  }

  sub_7BE7C(&v31, &v24, 4);
LABEL_13:
  if (v26 >= 0)
  {
    v11 = __s;
  }

  else
  {
    v11 = *__s;
  }

  if (v26 >= 0)
  {
    v12 = v26;
  }

  else
  {
    v12 = *&__s[8];
  }

  v13 = std::string::insert(&v31, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v13->__r_.__value_.__l + 2);
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  sub_7C018(a4, v28, __p, 1);
  if ((__p[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_32:
    operator delete(v24.__r_.__value_.__l.__data_);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  operator delete(*__p);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_23:
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_33:
  operator delete(*__s);
LABEL_24:
  __p[23] = 18;
  strcpy(__p, "InternalError[All]");
  sub_7BE7C(&v31, __p, 4);
  sub_7C018(a4, v28, &v31, 1);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
LABEL_26:
      if (*(a3 + 23) >= 0)
      {
        v15 = *(a3 + 23);
      }

      else
      {
        v15 = a3[1];
      }

      if (!v15)
      {
        goto LABEL_58;
      }

      goto LABEL_39;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(*__p);
  if (*(a3 + 23) >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = a3[1];
  }

  if (!v15)
  {
LABEL_58:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_64;
  }

LABEL_39:
  v26 = 13;
  strcpy(__s, "InternalError");
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  if (v15 + size >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v15 + size > 0x16)
  {
    operator new();
  }

  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  HIBYTE(v23) = v15 + size;
  if (size)
  {
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v30;
    }

    else
    {
      v17 = v30.__r_.__value_.__r.__words[0];
    }

    memmove(v22, v17, size);
  }

  v18 = v22 + size;
  if (*(a3 + 23) >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  memmove(v18, v19, v15);
  v18[v15] = 0;
  sub_7D524(&v31, v22, 4);
  v20 = std::string::insert(&v31, 0, __s, 0xDuLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v20->__r_.__value_.__l + 2);
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  sub_7C018(a4, v28, __p, 1);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
LABEL_57:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_63;
    }
  }

  else if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v22[0]);
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

LABEL_63:
  operator delete(*__s);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_65:
    operator delete(v30.__r_.__value_.__l.__data_);
    return;
  }

LABEL_64:
  operator delete(v28[0]);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_65;
  }
}

void sub_7C5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
    if ((*(v39 - 89) & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v39 - 89) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v39 - 112));
  _Unwind_Resume(exception_object);
}

void sub_7C6A8()
{
  if (*(v0 - 89) < 0)
  {
    JUMPOUT(0x7C698);
  }

  JUMPOUT(0x7C680);
}

void sub_7C6B8(uint64_t a1, const std::error_condition *a2, uint64_t a3)
{
  *(&__s1.__r_.__value_.__s + 23) = 12;
  strcpy(&__s1, "RoutingError");
  v6 = (a2->__cat_->name)(a2->__cat_);
  if (strlen(v6) == 12 && !memcmp(&__s1, v6, 0xCuLL))
  {
    std::error_condition::message(&v17, a2);
  }

  else
  {
    *(&v17.__r_.__value_.__s + 23) = 16;
    strcpy(&v17, "NoneRoutingError");
  }

  v14 = 13;
  strcpy(v13, "InternalError");
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    __p = v17;
LABEL_9:
    sub_7D524(&__s1, &__p, 4);
    goto LABEL_10;
  }

  sub_325C(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  v7 = v14;
  if (v14 < 0)
  {
    v7 = v13[1];
  }

  if (v7)
  {
    goto LABEL_9;
  }

  sub_7BE7C(&__s1, &__p, 4);
LABEL_10:
  if (v14 >= 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v13[0];
  }

  if (v14 >= 0)
  {
    v9 = v14;
  }

  else
  {
    v9 = v13[1];
  }

  v10 = std::string::insert(&__s1, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v16 = v10->__r_.__value_.__r.__words[2];
  *v15 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  operator delete(__s1.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_25:
  operator delete(v13[0]);
LABEL_19:
  sub_7B538(a1, &__s1);
  sub_7C018(a3, &__s1, v15, 1);
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_28:
      operator delete(v17.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v15[0]);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }
}

void sub_7C914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_7C9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  LOBYTE(__p) = 0;
  sub_7CA38(a1, &__p, a2, a3);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_7CA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7CA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 24);
  v5 = *(a3 + 32);
  while (v4 != v5)
  {
    if (*(a3 + 23) < 0)
    {
      sub_325C(v34, *a3, *(a3 + 8));
      if ((*(v4 + 23) & 0x80000000) == 0)
      {
LABEL_6:
        v10 = *v4;
        v33.__r_.__value_.__r.__words[2] = *(v4 + 2);
        *&v33.__r_.__value_.__l.__data_ = v10;
        goto LABEL_9;
      }
    }

    else
    {
      *v34 = *a3;
      v35 = *(a3 + 16);
      if ((*(v4 + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_325C(&v33, *v4, *(v4 + 1));
LABEL_9:
    v11 = *(v4 + 24);
    if (*(a2 + 23) >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    if (v12)
    {
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_325C(&v38, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
      }

      else
      {
        v38 = v33;
      }

      if (v35 >= 0)
      {
        v13 = HIBYTE(v35);
      }

      else
      {
        v13 = v34[1];
      }

      if (v13)
      {
        *(&v41.__r_.__value_.__s + 23) = 1;
        LOWORD(v41.__r_.__value_.__l.__data_) = 46;
        if (v35 >= 0)
        {
          v14 = v34;
        }

        else
        {
          v14 = v34[0];
        }

        v15 = std::string::append(&v41, v14, v13);
        v16 = *&v15->__r_.__value_.__l.__data_;
        v42.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
        *&v42.__r_.__value_.__l.__data_ = v16;
      }

      else
      {
        v15 = &v42;
      }

      v15->__r_.__value_.__r.__words[0] = 0;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      sub_7D524(&__p, &v38, v11);
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

      v19 = std::string::append(&v42, p_p, size);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_38:
          operator delete(v42.__r_.__value_.__l.__data_);
          if (!v13)
          {
            goto LABEL_56;
          }

LABEL_39:
          if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          v21 = v41.__r_.__value_.__r.__words[0];
LABEL_55:
          operator delete(v21);
          goto LABEL_56;
        }
      }

      else if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }

      if (v13)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_325C(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v33;
      }

      v22 = HIBYTE(v35);
      if (v35 < 0)
      {
        v22 = v34[1];
      }

      if (v22)
      {
        sub_7D524(&v42, &__p, v11);
      }

      else
      {
        sub_7BE7C(&v42, &__p, v11);
      }

      if (v35 >= 0)
      {
        v23 = v34;
      }

      else
      {
        v23 = v34[0];
      }

      if (v35 >= 0)
      {
        v24 = HIBYTE(v35);
      }

      else
      {
        v24 = v34[1];
      }

      v25 = std::string::insert(&v42, 0, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        v21 = v42.__r_.__value_.__r.__words[0];
        goto LABEL_55;
      }
    }

LABEL_56:
    v27 = *(a2 + 23);
    if (v27 >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    if (v27 >= 0)
    {
      v29 = *(a2 + 23);
    }

    else
    {
      v29 = *(a2 + 8);
    }

    v30 = std::string::insert(&v39, 0, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v37 = v30->__r_.__value_.__r.__words[2];
    *v36 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
      if (v12)
      {
LABEL_64:
        if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

        v32 = &v38;
        goto LABEL_69;
      }
    }

    else if (v12)
    {
      goto LABEL_64;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    v32 = &__p;
LABEL_69:
    operator delete(v32->__r_.__value_.__l.__data_);
LABEL_70:
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        goto LABEL_72;
      }
    }

    else if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    operator delete(v34[0]);
LABEL_72:
    sub_7B538(a1, &v42);
    sub_7C018(a4, &v42, v36, *(v4 + 4));
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if (SHIBYTE(v37) < 0)
      {
LABEL_78:
        operator delete(v36[0]);
      }
    }

    else if (SHIBYTE(v37) < 0)
    {
      goto LABEL_78;
    }

    v4 += 3;
  }
}

void sub_7CDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_7CEFC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_7D304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7D330(va);
  _Unwind_Resume(a1);
}

void sub_7D318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7D330(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_7D330(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v4 = *(v2 + 48);
        v5 = *(v2 + 40);
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 9);
            v4 -= 4;
            if (v6 < 0)
            {
              operator delete(*v4);
            }
          }

          while (v4 != v3);
          v5 = *(v2 + 40);
        }

        *(v2 + 48) = v3;
        operator delete(v5);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_7D3D4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  v10 = 32 * v2 + 32;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
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
      *(v15 + 24) = *(v14 + 3);
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

void sub_7D524(std::string *a1, const std::string::value_type *a2, uint64_t a3)
{
  v5 = a2[23];
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  if (v6)
  {
    *(&v14.__r_.__value_.__s + 23) = 1;
    LOWORD(v14.__r_.__value_.__l.__data_) = 46;
    if (v5 < 0)
    {
      a2 = *a2;
    }

    v7 = std::string::append(&v14, a2, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v8;
  }

  else
  {
    v7 = &v15;
  }

  v7->__r_.__value_.__r.__words[0] = 0;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  sub_7BBF8(a3, __p);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v15, v9, v10);
  *a1 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if ((v13 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(v15.__r_.__value_.__l.__data_);
    if (!v6)
    {
      return;
    }

    goto LABEL_21;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (!v6)
  {
    return;
  }

LABEL_21:
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_7D654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_7D6BC()
{
  if ((atomic_load_explicit(&qword_2732648, memory_order_acquire) & 1) == 0)
  {
    sub_21E0E1C();
  }

  return &unk_27325D8;
}

void sub_7D6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock(a1);
  v30 = a2;
  v6 = sub_7DF3C((a1 + 64), a2);
  v7 = *(v6 + 11) + 1;
  *(v6 + 11) = v7;
  if (v7 > *(a1 + 104))
  {
    goto LABEL_42;
  }

  v8 = *(a2 + 23);
  v9 = v8 >= 0 ? a2 : *a2;
  v10 = v8 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v11 = *(a3 + 23);
  v12 = v11 >= 0 ? a3 : *a3;
  v13 = v11 >= 0 ? *(a3 + 23) : *(a3 + 8);
  sub_7DAD0(a1, v9, v10, v12, v13);
  if (*(v6 + 11) != *(a1 + 104) || !sub_7E7E4(1u))
  {
    goto LABEL_42;
  }

  sub_19594F8(&v30);
  v14 = sub_4A5C(&v30, "Reporting limit reached for '", 29);
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = sub_4A5C(v14, v16, v17);
  v19 = sub_4A5C(v18, "'. Further ", 11);
  if (*(a1 + 108))
  {
    if (*(a1 + 108) != 1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v27 = sub_2D390(exception, "Invalid data problem severity", 0x1DuLL);
    }

    v20 = "warning";
    v21 = 7;
  }

  else
  {
    v20 = "error";
    v21 = 5;
  }

  v22 = sub_4A5C(v19, v20, v21);
  sub_4A5C(v22, "s of this type will still be counted but details will be suppressed", 67);
  if ((v40 & 0x10) != 0)
  {
    v24 = v39;
    if (v39 < v36)
    {
      v39 = v36;
      v24 = v36;
    }

    v25 = v35;
    v23 = v24 - v35;
    if (v24 - v35 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_44:
      sub_3244();
    }

LABEL_32:
    if (v23 >= 0x17)
    {
      operator new();
    }

    v29 = v23;
    if (v23)
    {
      memmove(&__p, v25, v23);
    }

    goto LABEL_37;
  }

  if ((v40 & 8) != 0)
  {
    v25 = v33;
    v23 = v34 - v33;
    if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_44;
    }

    goto LABEL_32;
  }

  v23 = 0;
  v29 = 0;
LABEL_37:
  *(&__p + v23) = 0;
  sub_7E854(&__p, 1u);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  std::locale::~locale(&v32);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_42:
  std::mutex::unlock(a1);
}

void sub_7DA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a15);
  std::mutex::unlock(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_7DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 108) == 1)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v24);
    v13 = sub_4A5C(&v24, a2, a3);
    LOBYTE(__p) = 58;
    v14 = sub_4A5C(v13, &__p, 1);
    sub_4A5C(v14, a4, a5);
    if ((v34 & 0x10) != 0)
    {
      v16 = v33;
      if (v33 < v30)
      {
        v33 = v30;
        v16 = v30;
      }

      v17 = v29;
      v15 = v16 - v29;
      if (v16 - v29 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v34 & 8) == 0)
      {
        v15 = 0;
        v23 = 0;
LABEL_25:
        *(&__p + v15) = 0;
        sub_7E854(&__p, 1u);
LABEL_29:
        if (v23 < 0)
        {
          operator delete(__p);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        std::locale::~locale(&v26);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v17 = v27;
      v15 = v28 - v27;
      if ((v28 - v27) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v23 = v15;
    if (v15)
    {
      memmove(&__p, v17, v15);
    }

    goto LABEL_25;
  }

  if (*(a1 + 108))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v21 = sub_2D390(exception, "Invalid data problem severity", 0x1DuLL);
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v24);
    v10 = sub_4A5C(&v24, a2, a3);
    LOBYTE(__p) = 58;
    v11 = sub_4A5C(v10, &__p, 1);
    sub_4A5C(v11, a4, a5);
    if ((v34 & 0x10) != 0)
    {
      v18 = v33;
      if (v33 < v30)
      {
        v33 = v30;
        v18 = v30;
      }

      v19 = v29;
      v12 = v18 - v29;
      if (v18 - v29 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v34 & 8) == 0)
      {
        v12 = 0;
        v23 = 0;
LABEL_28:
        *(&__p + v12) = 0;
        sub_7E854(&__p, 3u);
        goto LABEL_29;
      }

      v19 = v27;
      v12 = v28 - v27;
      if ((v28 - v27) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_38:
        sub_3244();
      }
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v23 = v12;
    if (v12)
    {
      memmove(&__p, v19, v12);
    }

    goto LABEL_28;
  }

  return result;
}

void sub_7DEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t **sub_7DF3C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_7E340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_7E354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void *sub_7E36C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_7E4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E6BC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_7E510(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void *sub_7E6BC(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_7E724(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_7E724(a1, *a2);
    sub_7E724(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

double sub_7E7A8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 850045863;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

BOOL sub_7E7E4(unsigned int a1)
{
  if (qword_278EE68 != -1)
  {
    sub_21E0E7C();
  }

  v2 = qword_278EE70;
  v3 = 0x1110020100uLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v3) = 0;
  }

  return os_log_type_enabled(v2, v3);
}

void sub_7E854(uint64_t *a1, unsigned int a2)
{
  if (qword_278EE68 != -1)
  {
    sub_21E0E7C();
  }

  v4 = qword_278EE70;
  if (a2 >= 5)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = (0x1110020100uLL >> (8 * a2));
  }

  if (os_log_type_enabled(qword_278EE70, v5))
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&dword_0, v4, v5, "%s", &v7, 0xCu);
  }
}

std::chrono::steady_clock::time_point sub_7E974(uint64_t a1)
{
  result.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *a1 = result;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_7E9A4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = std::chrono::steady_clock::now();
  *(a1 + 16) = 1;
  return a1;
}

std::chrono::steady_clock::time_point sub_7E9E0(uint64_t a1)
{
  result.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

double sub_7EA0C(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  }

  else
  {
    v2.__d_.__rep_ = *(a1 + 8);
  }

  return (v2.__d_.__rep_ - *a1) / 1000.0;
}

double sub_7EA60(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  }

  else
  {
    v2.__d_.__rep_ = *(a1 + 8);
  }

  return (v2.__d_.__rep_ - *a1) / 1000000.0;
}

uint64_t sub_7EAB4(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  }

  else
  {
    v2.__d_.__rep_ = *(a1 + 8);
  }

  v3 = (v2.__d_.__rep_ - *a1) / 1000000.0 / 100.0;
  if (v3 >= 0.0)
  {
    if (v3 < 4.50359963e15)
    {
      v4 = (v3 + v3) + 1;
      goto LABEL_9;
    }
  }

  else if (v3 > -4.50359963e15)
  {
    v4 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
LABEL_9:
    v3 = (v4 >> 1);
  }

  return v3;
}

uint64_t sub_7EB68(uint64_t result, void *a2, uint64_t a3)
{
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a3)
  {
    if (a3 != 15 || (*a2 == 0x5F44494C41564E49 ? (v5 = *(a2 + 7) == 0x4E4F49535245565FLL) : (v5 = 0), !v5))
    {
      v6 = a2 + a3;
      v7 = a3;
      v8 = a2;
      do
      {
        v9 = *v8;
        if (v9 < 0)
        {
          v10 = __maskrune(v9, 0x4000uLL);
        }

        else
        {
          v10 = _DefaultRuneLocale.__runetype[v9] & 0x4000;
        }

        if (!v10)
        {
          goto LABEL_14;
        }

        ++v8;
        --v7;
      }

      while (v7);
      v8 = a2 + a3;
LABEL_14:
      v11 = a3 - (v8 - a2);
      v12 = a2 + a3;
      v13 = a2 + a3 + 1;
      v14 = v12 - v8;
      while (v14)
      {
        v16 = *(v13 - 2);
        if (v16 < 0)
        {
          v15 = __maskrune(v16, 0x4000uLL);
        }

        else
        {
          v15 = _DefaultRuneLocale.__runetype[v16] & 0x4000;
        }

        --v13;
        --v14;
        if (!v15)
        {
          goto LABEL_21;
        }
      }

      v13 = v8;
LABEL_21:
      v17 = v13 - v6 + v11;
      if (v17 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v17 < 0x17)
        {
          v21 = v17;
          if (v17)
          {
            memmove(__p, v8, v17);
          }

          *(__p + v17) = 0;
          if ((v21 & 0x80u) == 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          if ((v21 & 0x80u) == 0)
          {
            v19 = v21;
          }

          else
          {
            v19 = __p[1];
          }

          sub_22174(v18, v19, 0x2Du, &v22);
        }

        operator new();
      }

      sub_3244();
    }
  }

  return result;
}

void sub_7F004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  sub_1A104(&a15);
  if (*(v15 + 47) < 0)
  {
    operator delete(*v16);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_7F0B8(uint64_t a1)
{
  v1.i64[0] = *a1;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (*(a1 + 47) < 0)
  {
    sub_325C(__p, *(a1 + 24), *(a1 + 32));
    v1.i64[0] = v5;
  }

  else
  {
    *__p = *(a1 + 24);
    v9 = *(a1 + 40);
  }

  v1.i64[1] = v6;
  v2 = 1;
  if ((vmaxv_u16(vmovn_s32(vtstq_s32(v1, v1))) & 1) == 0 && !v7)
  {
    v3 = HIBYTE(v9);
    if (v9 < 0)
    {
      v3 = __p[1];
    }

    v2 = v3 != 0;
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

BOOL sub_7F188(__int128 *a1, __int128 *a2)
{
  v10 = *a1;
  v11 = *(a1 + 4);
  if (*(a1 + 47) < 0)
  {
    sub_325C(&v12, *(a1 + 3), *(a1 + 4));
  }

  else
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 5);
  }

  v6 = *a2;
  v7 = *(a2 + 4);
  if (*(a2 + 47) < 0)
  {
    sub_325C(__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    *__p = *(a2 + 24);
    v9 = *(a2 + 5);
  }

  v3 = sub_7FBF4(&v10, &v6);
  if (SHIBYTE(v9) < 0)
  {
    LOBYTE(v4) = v3;
    operator delete(__p[0]);
    v4 = v4;
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      return v4 < 1;
    }
  }

  else
  {
    v4 = v3;
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      return v4 < 1;
    }
  }

  operator delete(v12);
  return v4 < 1;
}

void sub_7F290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if ((a26 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_7F2DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_7F0B8(a1))
  {
    *(a2 + 23) = 15;
    strcpy(a2, "INVALID_VERSION");
    return;
  }

  sub_7F614(".", ".", a2);
  if (*(a1 + 12))
  {
    sub_7F8D8(".", __p);
    v4 = v18 >= 0 ? __p : __p[0];
    v5 = v18 >= 0 ? HIBYTE(v18) : __p[1];
    std::string::append(a2, v4, v5);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
      v6 = *(a1 + 16);
      if (v6)
      {
        goto LABEL_11;
      }

LABEL_46:
      v11 = *(a1 + 47);
      if (v11 < 0)
      {
        if (*(a1 + 32))
        {
          goto LABEL_11;
        }
      }

      else if (*(a1 + 47))
      {
        goto LABEL_11;
      }

      if ((v11 & 0x80) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_46;
  }

LABEL_11:
  std::to_string(&v16, v6);
  v7 = std::string::insert(&v16, 0, "-", 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v18 = v7->__r_.__value_.__r.__words[2];
  *__p = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (v18 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v18 >= 0)
  {
    v10 = HIBYTE(v18);
  }

  else
  {
    v10 = __p[1];
  }

  std::string::append(a2, v9, v10);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      LOBYTE(v11) = *(a1 + 47);
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_20;
      }

LABEL_25:
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_26;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  LOBYTE(v11) = *(a1 + 47);
  if ((v11 & 0x80) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (!v11)
  {
    return;
  }

LABEL_26:
  if ((v11 & 0x80u) == 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(a1 + 32);
  }

  if (v12 + 2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v12 + 2 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v18 = 0;
  HIBYTE(v18) = v12 + 2;
  __p[0] = &loc_672C + 1;
  if (v12)
  {
    if (*(a1 + 47) >= 0)
    {
      v13 = (a1 + 24);
    }

    else
    {
      v13 = *(a1 + 24);
    }

    memmove(__p + 2, v13, v12);
  }

  *(__p + v12 + 2) = 0;
  if (v18 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v18 >= 0)
  {
    v15 = HIBYTE(v18);
  }

  else
  {
    v15 = __p[1];
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_7F5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7F614@<X0>(const char *a1@<X1>, const char *a2@<X3>, _BYTE *a3@<X8>)
{
  sub_D7B0(v15);
  v6 = std::ostream::operator<<();
  v7 = strlen(a1);
  sub_4A5C(v6, a1, v7);
  v8 = std::ostream::operator<<();
  v9 = strlen(a2);
  sub_4A5C(v8, a2, v9);
  std::ostream::operator<<();
  if ((v25 & 0x10) != 0)
  {
    v11 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v11 = v21;
    }

    v12 = v20;
    v10 = v11 - v20;
    if (v11 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v10 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v12 = v18;
    v10 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a3[23] = v10;
  if (v10)
  {
    memmove(a3, v12, v10);
  }

LABEL_12:
  a3[v10] = 0;
  v15[2] = v13;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_7F8C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7F8D8@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v10);
  v4 = strlen(a1);
  sub_4A5C(&v11, a1, v4);
  std::ostream::operator<<();
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_12;
    }

    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v7, v5);
  }

LABEL_12:
  a2[v5] = 0;
  v11 = v8;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_7FB40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void *sub_7FB54(void *a1, uint64_t a2)
{
  sub_7F2DC(a2, __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  result = sub_4A5C(a1, v3, v4);
  if (v8 < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_7FBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7FBF4(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    v3 = *(a1 + 4);
    v4 = *(a2 + 4);
    v5 = v3 == v4;
    v2 = v3 < v4 ? 0xFFFFFFFFLL : 1;
    if (v5)
    {
      v6 = *(a1 + 8);
      v7 = *(a2 + 8);
      v8 = v6 == v7;
      v2 = v6 < v7 ? 0xFFFFFFFFLL : 1;
      if (v8)
      {
        v9 = *(a1 + 12);
        v10 = *(a2 + 12);
        v11 = v9 == v10;
        v2 = v9 < v10 ? 0xFFFFFFFFLL : 1;
        if (v11)
        {
          v12 = *(a1 + 16);
          v13 = *(a2 + 16);
          v14 = v12 == v13;
          v2 = v12 < v13 ? 0xFFFFFFFFLL : 1;
          if (v14)
          {
            v17 = *(a1 + 24);
            v15 = a1 + 24;
            v16 = v17;
            v18 = *(v15 + 8);
            if (*(v15 + 23) >= 0)
            {
              v19 = *(v15 + 23);
            }

            else
            {
              v15 = v16;
              v19 = v18;
            }

            v22 = *(a2 + 24);
            v20 = a2 + 24;
            v21 = v22;
            v23 = *(v20 + 8);
            if (*(v20 + 23) >= 0)
            {
              v24 = *(v20 + 23);
            }

            else
            {
              v20 = v21;
              v24 = v23;
            }

            if (v24 >= v19)
            {
              v25 = v19;
            }

            else
            {
              v25 = v24;
            }

            v26 = memcmp(v15, v20, v25);
            if (v26)
            {
              if ((v26 & 0x80000000) == 0)
              {
                return 1;
              }
            }

            else
            {
              if (v19 == v24)
              {
                return 0;
              }

              if (v19 >= v24)
              {
                return 1;
              }
            }

            return 255;
          }
        }
      }
    }
  }

  return v2;
}

char *sub_7FCF0(unsigned int a1)
{
  if (a1 >= 0x28)
  {
    sub_49EC("array::at");
  }

  return (&off_262E528)[4 * a1];
}

char *sub_7FD28(unsigned int a1)
{
  if (a1 >= 0x28)
  {
    sub_49EC("array::at");
  }

  return &off_262E528 + 32 * a1 + 20;
}

uint64_t sub_7FD60(unsigned int a1, unsigned int a2)
{
  if (a2 >= 5 || a1 >= 0x28 || (v2 = LODWORD((&off_262E528)[4 * a1 + 2]), v2 >= 5))
  {
    sub_49EC("array::at");
  }

  return dword_22668B8[5 * a2 + v2];
}

uint64_t sub_7FDC0(void ***a1, _DWORD *a2)
{
  if (!sub_2D5658(*a1))
  {
    return 1;
  }

  v4 = sub_2D56E8(*a1);
  v5 = v4[1];
  if (*v4 == v5)
  {
    return 0;
  }

  v6 = *v4 + 16;
  do
  {
    v9 = *(v6 - 16);
    result = sub_32A18(&v9, a2);
    if (result)
    {
      break;
    }

    v8 = v6 == v5;
    v6 += 16;
  }

  while (!v8);
  return result;
}

uint64_t sub_7FE70(void ***a1, unsigned int *a2)
{
  if (!sub_2D5658(*a1))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v142 = 0;
  v143 = 0;
  v144 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v4 = sub_2D56E8(*a1);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    do
    {
      v136 = &v142;
      v137 = &v139;
      __p = sub_32DA0(v5);
      LODWORD(v134) = v7;
      sub_80994(&v136, &__p);
      __p = sub_32DBC(v5);
      LODWORD(v134) = v8;
      sub_80994(&v136, &__p);
      v5 += 4;
    }

    while (v5 != v6);
  }

  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v9 = v143;
  if (v142 != v143)
  {
    v10 = (v142 + 4);
    while (v10 != v143)
    {
      v11 = *(v10 - 1);
      v12 = *v10++;
      if (v11 == v12)
      {
        v13 = v10 - 2;
        while (v10 != v9)
        {
          v14 = v11;
          v11 = *v10;
          if (v14 != *v10)
          {
            v13[1] = v11;
            ++v13;
          }

          ++v10;
        }

        if (v13 + 1 != v9)
        {
          v143 = v13 + 1;
        }

        break;
      }
    }
  }

  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v16 = v139;
  v17 = v140;
  if (v139 != v140)
  {
    v18 = v139 + 4;
    while (v18 != v140)
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v18 += 4;
      if (v19 == v20)
      {
        v21 = v18 - 8;
        while (v18 != v17)
        {
          v22 = v19;
          v19 = *v18;
          if (v22 != *v18)
          {
            *(v21 + 1) = v19;
            v21 += 4;
          }

          v18 += 4;
        }

        if (v21 + 4 != v17)
        {
          v17 = v21 + 4;
          v140 = v21 + 4;
        }

        break;
      }
    }
  }

  v23 = (v17 - v16) >> 2;
  __p = 0;
  v134 = 0;
  v135 = 0;
  if (v23 != -1)
  {
    if (v23 > -2)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = (v143 - v142) >> 2;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v145 = &v136;
  LOBYTE(v146) = 0;
  if (v24 != -1)
  {
    if ((v24 + 1) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v25 = sub_2D56E8(*a1);
  v26 = *v25;
  v129 = v25[1];
  if (*v25 == v129)
  {
    v130 = (v140 - v139) >> 2;
  }

  else
  {
    do
    {
      v27 = sub_32DBC(v26);
      v28 = v142;
      v29 = (v143 - v142) >> 2;
      if (v29 < 1)
      {
        v31 = v142;
      }

      else
      {
        if (v143 - v142 == 4)
        {
          v30 = v142;
        }

        else
        {
          v30 = v142;
          do
          {
            _X12 = v30 + (v29 & 0xFFFFFFFFFFFFFFFCLL);
            __asm { PRFM            #0, [X12] }

            v38 = &v30[v29 >> 1];
            _X11 = v38 + (v29 & 0xFFFFFFFFFFFFFFFCLL);
            __asm { PRFM            #0, [X11] }

            if (*v38 >= v27)
            {
              v41 = 0;
            }

            else
            {
              v41 = v29 >> 1;
            }

            v30 += v41;
            v29 -= v29 >> 1;
          }

          while (v29 > 1);
        }

        v31 = &v30[*v30 < v27];
      }

      v42 = sub_32DA0(v26);
      v43 = v142;
      v44 = (v143 - v142) >> 2;
      if (v44 < 1)
      {
        v46 = v142;
      }

      else
      {
        if (v143 - v142 == 4)
        {
          v45 = v142;
        }

        else
        {
          v45 = v142;
          do
          {
            _X12 = v45 + (v44 & 0xFFFFFFFFFFFFFFFCLL);
            __asm { PRFM            #0, [X12] }

            v49 = &v45[v44 >> 1];
            _X11 = v49 + (v44 & 0xFFFFFFFFFFFFFFFCLL);
            __asm { PRFM            #0, [X11] }

            if (*v49 >= v42)
            {
              v52 = 0;
            }

            else
            {
              v52 = v44 >> 1;
            }

            v45 += v52;
            v44 -= v44 >> 1;
          }

          while (v44 > 1);
        }

        v46 = &v45[*v45 < v42];
      }

      v53 = sub_32DA0(v26);
      v54 = v139;
      v55 = (v140 - v139) >> 2;
      if (v55 < 1)
      {
        v57 = v139;
      }

      else
      {
        if (v140 - v139 == 4)
        {
          v56 = v139;
        }

        else
        {
          v56 = v139;
          do
          {
            _X13 = v56 + (v55 & 0xFFFFFFFFFFFFFFFCLL);
            __asm { PRFM            #0, [X13] }

            v60 = &v56[v55 >> 1];
            _X12 = v60 + (v55 & 0xFFFFFFFFFFFFFFFCLL);
            __asm { PRFM            #0, [X12] }

            if (*v60 >= HIDWORD(v53))
            {
              v63 = 0;
            }

            else
            {
              v63 = v55 >> 1;
            }

            v56 += v63;
            v55 -= v55 >> 1;
          }

          while (v55 > 1);
        }

        v57 = &v56[*v56 < HIDWORD(v53)];
      }

      v64 = sub_32DBC(v26);
      v130 = (v140 - v139) >> 2;
      if (v130 < 1)
      {
        v66 = v139;
      }

      else
      {
        if (v140 - v139 == 4)
        {
          v65 = v139;
        }

        else
        {
          v67 = (v140 - v139) >> 2;
          v65 = v139;
          do
          {
            _X14 = v65 + (v67 & 0xFFFFFFFFFFFFFFFCLL);
            __asm { PRFM            #0, [X14] }

            v70 = &v65[v67 >> 1];
            _X13 = v70 + (v67 & 0xFFFFFFFFFFFFFFFCLL);
            __asm { PRFM            #0, [X13] }

            if (*v70 >= HIDWORD(v64))
            {
              v73 = 0;
            }

            else
            {
              v73 = v67 >> 1;
            }

            v65 += v73;
            v67 -= v67 >> 1;
          }

          while (v67 > 1);
        }

        v66 = &v65[*v65 < HIDWORD(v64)];
      }

      v74 = (v31 - v28) >> 2;
      v75 = v74 + 1;
      v76 = (v46 - v43) >> 2;
      v77 = v76 + 1;
      if (v74 + 1 > v76 + 1)
      {
        v77 = v74 + 1;
      }

      if (v74 < v76)
      {
        v78 = (v57 - v54) >> 2;
        v79 = v78 + 1;
        v80 = (v66 - v139) >> 2;
        v81 = v78 + 1 <= v80 + 1 ? v80 + 1 : v78 + 1;
        if (v78 < v80)
        {
          v82 = v136;
          do
          {
            v83 = v82[3 * v75];
            v84 = v79;
            do
            {
              *(v83 + ((v84 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v84;
              ++v84;
            }

            while (v81 != v84);
            ++v75;
          }

          while (v75 != v77);
        }
      }

      v26 += 4;
    }

    while (v26 != v129);
  }

  if (v130 >= 2)
  {
    v85 = INFINITY;
    for (i = 1; i != v130; ++i)
    {
      if (v143 != v142)
      {
        v98 = 0;
        v99 = 0;
        v100 = (v143 - v142) >> 2;
        do
        {
          if (((*(*(v136 + v98) + 8 * (i >> 6)) & (1 << i)) != 0) != ((*(*(v136 + v98 + 24) + 8 * (i >> 6)) & (1 << i)) != 0))
          {
            v101 = v139 + 4 * i;
            LODWORD(v102) = *(v101 - 1);
            v102 = v102 >= 0xFFFFFFFE ? 4294967294 : v102;
            v145 = (*(v142 + v99) | (v102 << 32));
            v146 = 0x7FFFFFFF;
            LODWORD(v103) = *v101;
            v103 = *v101 >= 0xFFFFFFFE ? 4294967294 : v103;
            v131 = *(v142 + v99) | (v103 << 32);
            v132 = 0x7FFFFFFF;
            __p = -1;
            LODWORD(v134) = 0x7FFFFFFF;
            sub_80C0C(&v145, &v131, a2, &__p);
            if (v104 < v85)
            {
              v85 = v104;
            }
          }

          ++v99;
          v98 += 24;
        }

        while (v100 != v99);
      }
    }
  }

  else
  {
    v85 = INFINITY;
  }

  v86 = v142;
  v87 = v143;
  v88 = (v143 - v142) >> 2;
  if (v88 >= 2)
  {
    for (j = 1; j != v88; ++j)
    {
      if (v140 != v139)
      {
        v90 = 0;
        v91 = (v140 - v139) >> 2;
        do
        {
          v92 = v90 + 1;
          if (((*(*(v136 + 3 * j) + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v90) & 1) != ((*(*(v136 + 3 * j) + (((v90 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v90 + 1)) & 1))
          {
            v93 = (v142 + 4 * j);
            LODWORD(v94) = *(v139 + v90);
            v94 = v94 >= 0xFFFFFFFE ? 4294967294 : v94;
            v145 = (*(v93 - 1) | (v94 << 32));
            v146 = 0x7FFFFFFF;
            v95 = *v93;
            LODWORD(v90) = *(v139 + v90);
            v90 = v90 >= 0xFFFFFFFE ? 4294967294 : v90;
            v131 = v95 | (v90 << 32);
            v132 = 0x7FFFFFFF;
            __p = -1;
            LODWORD(v134) = 0x7FFFFFFF;
            sub_80C0C(&v145, &v131, a2, &__p);
            if (v96 < v85)
            {
              v85 = v96;
            }
          }

          v90 = v92;
        }

        while (v91 != v92);
      }
    }

    v86 = v142;
    v87 = v143;
  }

  v105 = v86;
  if (v87 != v86)
  {
    v106 = v87 - v86;
    do
    {
      v107 = v106 >> 1;
      v108 = &v105[v106 >> 1];
      v110 = *v108;
      v109 = (v108 + 1);
      v106 += ~(v106 >> 1);
      if (*a2 < v110)
      {
        v106 = v107;
      }

      else
      {
        v105 = v109;
      }
    }

    while (v106);
    v87 = v105;
  }

  v111 = v87 - v86;
  v112 = v140;
  if (v140 != v139)
  {
    v113 = (v140 - v139) >> 2;
    v112 = v139;
    do
    {
      v114 = v113 >> 1;
      v115 = &v112[4 * (v113 >> 1)];
      v117 = *v115;
      v116 = v115 + 1;
      v113 += ~(v113 >> 1);
      if (a2[1] < v117)
      {
        v113 = v114;
      }

      else
      {
        v112 = v116;
      }
    }

    while (v113);
  }

  v118 = v136;
  v119 = -v85;
  if (((*(*(v136 + 3 * v111) + ((((v112 - v139) >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v112 - v139) >> 2)) & 1) == 0)
  {
    v119 = v85;
  }

  v120 = v119 * 100.0;
  if (v120 >= 0.0)
  {
    v121 = v120;
    if (v120 >= 4.50359963e15)
    {
      goto LABEL_144;
    }

    v122 = (v120 + v120) + 1;
  }

  else
  {
    v121 = v120;
    if (v120 <= -4.50359963e15)
    {
      goto LABEL_144;
    }

    v122 = (v120 + v120) - 1 + (((v120 + v120) - 1) >> 63);
  }

  v121 = (v122 >> 1);
LABEL_144:
  if (v121 < 9.22337204e18)
  {
    if (v120 >= 0.0)
    {
      if (v120 >= 4.50359963e15)
      {
        goto LABEL_153;
      }

      v123 = (v120 + v120) + 1;
    }

    else
    {
      if (v120 <= -4.50359963e15)
      {
        goto LABEL_153;
      }

      v123 = (v120 + v120) - 1 + (((v120 + v120) - 1) >> 63);
    }

    v120 = (v123 >> 1);
LABEL_153:
    v15 = v120;
    v124 = v137;
    v125 = v136;
    if (v137 == v136)
    {
      goto LABEL_159;
    }

    do
    {
LABEL_156:
      v127 = *(v124 - 3);
      v124 -= 3;
      v126 = v127;
      if (v127)
      {
        operator delete(v126);
      }
    }

    while (v124 != v118);
    v125 = v136;
    goto LABEL_159;
  }

  v15 = 0x7FFFFFFFFFFFFFFELL;
  v124 = v137;
  v125 = v136;
  if (v137 != v136)
  {
    goto LABEL_156;
  }

LABEL_159:
  v137 = v118;
  operator delete(v125);
  if (v139)
  {
    v140 = v139;
    operator delete(v139);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  return v15;
}

void sub_808B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  sub_8191C(&a17);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
    v24 = a23;
    if (a23)
    {
LABEL_6:
      a24 = v24;
      operator delete(v24);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v24 = a23;
    if (a23)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

void sub_80994(void *a1, int *a2)
{
  v4 = *a1;
  v5 = *a2;
  v7 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v7 >= v6)
  {
    v9 = *v4;
    v10 = v7 - *v4;
    v11 = v10 >> 2;
    v12 = (v10 >> 2) + 1;
    if (v12 >> 62)
    {
      goto LABEL_28;
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

LABEL_29:
      sub_1808();
    }

    *(4 * v11) = v5;
    v8 = 4 * v11 + 4;
    memcpy(0, v9, v10);
    *v4 = 0;
    *(v4 + 8) = v8;
    *(v4 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v5;
    v8 = (v7 + 1);
  }

  *(v4 + 8) = v8;
  v15 = a1[1];
  v16 = a2[1];
  v18 = *(v15 + 8);
  v17 = *(v15 + 16);
  if (v18 < v17)
  {
    *v18 = v16;
    v19 = (v18 + 1);
    goto LABEL_27;
  }

  v20 = *v15;
  v21 = v18 - *v15;
  v22 = v21 >> 2;
  v23 = (v21 >> 2) + 1;
  if (v23 >> 62)
  {
LABEL_28:
    sub_1794();
  }

  v24 = v17 - v20;
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
    if (!(v25 >> 62))
    {
      operator new();
    }

    goto LABEL_29;
  }

  *(4 * v22) = v16;
  v19 = 4 * v22 + 4;
  memcpy(0, v20, v21);
  *v15 = 0;
  *(v15 + 8) = v19;
  *(v15 + 16) = 0;
  if (v20)
  {
    operator delete(v20);
  }

LABEL_27:
  *(v15 + 8) = v19;
}

uint64_t sub_80B60(void ***a1, _DWORD *a2)
{
  if (sub_2D5658(*a1))
  {
    v4 = sub_2D56E8(*a1);
    v5 = *v4;
    v6 = v4[1];
    v7 = 1;
    if (*v4 == v6)
    {
      return v7;
    }

    while (!sub_32A70(v5, a2))
    {
      if (sub_32ACC(v5, a2))
      {
        v7 = 2;
      }

      v5 += 4;
      if (v5 == v6)
      {
        return v7;
      }
    }
  }

  return 0;
}

void sub_80C0C(unsigned int *a1, unsigned int *j, unsigned int *a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a3;
  if (*a1 == *a3 && a1[1] == a3[1])
  {
    return;
  }

  v8 = *j;
  v9 = j[1];
  if (*j == v7 && v9 == a3[1])
  {
    return;
  }

  ii = v9;
  v12 = v8 - v6;
  v13 = a1[1];
  v14 = v13;
  v15 = vabdd_f64(v9, v13);
  if (v8 - v6 <= 1 && v15 < 2.0)
  {
    v16 = *a1;
    *(a4 + 8) = a1[2];
    *a4 = v16;
    LODWORD(v15) = a3[1];
    v17 = *&v15 * 6.28318531 / 4294967300.0;
LABEL_10:
    v18 = exp(3.14159265 - v17);
    *&v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795;
    v20 = *a3;
    HIDWORD(v20) = *a1;
    v111 = v20;
    v21 = *&v19 * 0.0174532925;
    LODWORD(v19) = a1[1];
    v22 = exp(3.14159265 - v19 * 6.28318531 / 4294967300.0);
    v23 = atan((v22 - 1.0 / v22) * 0.5) * 57.2957795 * 0.0174532925;
    v24.i64[0] = v111;
    v24.i64[1] = HIDWORD(v111);
    v25 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v112 = vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0];
    v26 = sin((v21 - v23) * 0.5);
    v27 = v26 * v26;
    v28 = cos(v21);
    v29 = v28 * cos(v23);
    v30 = sin(0.5 * v112);
    v31 = v30 * v30 * v29 + v27;
    v32 = sqrt(v31);
    v33 = 1.0 - v31;
LABEL_11:
    atan2(v32, sqrt(v33));
    return;
  }

  v114[0] = a1;
  v114[1] = j;
  v114[2] = a3;
  v114[3] = a4;
  v113 = v12;
  if (v15 + v12 > 429496730.0)
  {
    goto LABEL_13;
  }

  __y = ii - v14;
  v110 = a4;
  v34 = j;
  if (v8 != v6 || (i = 0.0, v13 != v9))
  {
    v36 = v12;
    if (v8 - v6 >= v6 - v8)
    {
      v36 = -(v6 - v8);
    }

      ;
    }

    a4 = v110;
      ;
    }
  }

    ;
  }

    ;
  }

    ;
  }

    ;
  }

  v39 = a3[1];
  if (v6 != v7 || (n = 0.0, v13 != v39))
  {
    v41 = (v7 - v6) * 0.00000000146291808;
    v42 = exp(3.14159265 - v14 * 6.28318531 / 4294967300.0);
    v107 = atan((v42 - 1.0 / v42) * 0.5) * 57.2957795 * 3.14159265 / 180.0;
    v43 = exp(3.14159265 - v39 * 6.28318531 / 4294967300.0);
    v44 = atan((v43 - 1.0 / v43) * 0.5) * 57.2957795 * 3.14159265 / 180.0;
    v45 = sin(v41);
    v46 = __sincos_stret(v44);
    v47 = __sincos_stret(v107);
    v48 = tan(v41);
      ;
    }

    a4 = v110;
    j = v34;
      ;
    }
  }

  if (v8 != v7 || (jj = 0.0, v9 != v39))
  {
    v108 = (v7 - v8) * 0.00000000146291808;
    v50 = exp(3.14159265 - ii * 6.28318531 / 4294967300.0);
    v105 = atan((v50 - 1.0 / v50) * 0.5) * 57.2957795 * 3.14159265 / 180.0;
    v51 = exp(3.14159265 - v39 * 6.28318531 / 4294967300.0);
    v52 = atan((v51 - 1.0 / v51) * 0.5) * 57.2957795 * 3.14159265 / 180.0;
    v53 = sin(v108);
    v54 = __sincos_stret(v52);
    v55 = __sincos_stret(v105);
    v56 = tan(v108);
      ;
    }

    a4 = v110;
      ;
    }
  }

  if (k < m)
  {
    if (k <= n && m >= n)
    {
      goto LABEL_53;
    }

    if (k <= jj && m >= jj)
    {
      if (k > n)
      {
        goto LABEL_13;
      }

LABEL_53:
      if (m >= jj && m >= n && k <= jj)
      {
LABEL_75:
        v64 = *j;
        *(a4 + 8) = j[2];
        *a4 = v64;
        sub_314EC(a3, j, jj);
        return;
      }

      if (m >= jj && m < n && k <= jj)
      {
LABEL_13:
        sub_81838(v114);
        return;
      }

      goto LABEL_90;
    }

LABEL_120:
    v90 = *a1;
    *(a4 + 8) = a1[2];
    *a4 = v90;
    LODWORD(jj) = a3[1];
    v17 = *&jj * 6.28318531 / 4294967300.0;
    goto LABEL_10;
  }

  if (k <= n)
  {
    goto LABEL_71;
  }

  if (m < jj && m < n && k > jj)
  {
    goto LABEL_120;
  }

  if (m >= n)
  {
LABEL_71:
    if (k <= jj || m >= jj)
    {
      goto LABEL_75;
    }
  }

  else if (k <= jj || m >= jj)
  {
    goto LABEL_13;
  }

LABEL_90:
  v68 = v9 - v13;
  if (v13 >= v9)
  {
    v68 = v13 - v9;
  }

  v103 = 1.0 / (sqrt(v113 * v113 + v68 * v68) * 0.00932288077);
  if (v103 >= 1.0)
  {
    LODWORD(v76) = *a4;
    LODWORD(v78) = *(a4 + 4);
LABEL_122:
    v91 = exp(3.14159265 - v39 * 6.28318531 / 4294967300.0);
    v92 = atan((v91 - 1.0 / v91) * 0.5) * 57.2957795 * 0.0174532925;
    v93 = exp(3.14159265 - v78 * 6.28318531 / 4294967300.0);
    v94 = atan((v93 - 1.0 / v93) * 0.5) * 57.2957795 * 0.0174532925;
    v95 = sin((v92 - v94) * 0.5);
    v96 = v95 * v95;
    v97 = cos(v92);
    v98 = v97 * cos(v94);
    v99 = sin(((v7 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925 - (v76 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925) * 0.5);
    v100 = v99 * v99 * v98 + v96;
    v32 = sqrt(v100);
    v33 = 1.0 - v100;
    goto LABEL_11;
  }

  v69 = 0.0;
  v70 = 0.5;
  v71 = 1.0;
LABEL_94:
  v72 = v69;
  v102 = v69;
  while (1)
  {
    v101 = v71;
    v74 = (v71 + v72) * v70;
    *&v75 = v74 * v113;
    v76 = *a1 + (v74 * v113);
    LODWORD(v75) = a1[1];
    v77 = (__y * v74 + v75);
    v78 = v77 >= 0xFFFFFFFE ? 4294967294 : v77;
    *a4 = v76 | (v78 << 32);
    *(a4 + 8) = 0x7FFFFFFF;
    v7 = *a3;
    v39 = a3[1];
    if (v76 == *a3 && v78 == v39)
    {
      break;
    }

    v109 = v74;
    v80 = exp(3.14159265 - v78 * 6.28318531 / 4294967300.0);
    v106 = atan((v80 - 1.0 / v80) * v70) * 57.2957795 * 3.14159265 / 180.0;
    v81 = exp(3.14159265 - v39 * 6.28318531 / 4294967300.0);
    v82 = atan((v81 - 1.0 / v81) * 0.5) * 57.2957795 * 3.14159265 / 180.0;
    v83 = (v7 - v76) * 0.00000000146291808;
    v84 = sin(v83);
    v85 = __sincos_stret(v82);
    v86 = __sincos_stret(v106);
    v87 = tan(v83);
      ;
    }

    while (kk < -180.0)
    {
      kk = kk + 360.0;
    }

    a4 = v110;
    v70 = 0.5;
    v69 = v109;
    v72 = v102;
    if (k < m)
    {
      if (k <= kk && m >= kk)
      {
LABEL_118:
        v71 = v101;
        if (v101 - v109 > v103)
        {
          goto LABEL_94;
        }

        goto LABEL_122;
      }
    }

    else if (k <= kk || m >= kk)
    {
      goto LABEL_118;
    }

    v71 = v109;
    if (v109 - v102 <= v103)
    {
      goto LABEL_122;
    }
  }
}

void sub_81838(uint64_t a1)
{
  v2 = *a1;
  v4 = *(a1 + 8);
  v3 = *v2 + ((*v4 - *v2) >> 1);
  LODWORD(v4) = (*(v4 + 4) >> 1) + (v2[1] >> 1) + (v2[1] & *(v4 + 4) & 1);
  if (v4 >= 0xFFFFFFFE)
  {
    v4 = 4294967294;
  }

  else
  {
    v4 = v4;
  }

  v14 = v3 | (v4 << 32);
  v15 = 0x7FFFFFFF;
  v12 = -1;
  v13 = 0x7FFFFFFF;
  v5 = (sub_80C0C)();
  v10 = -1;
  v11 = 0x7FFFFFFF;
  v6 = sub_80C0C(&v14, *(a1 + 8), *(a1 + 16), &v10);
  if (v5 >= v6)
  {
    v7 = &v10;
  }

  else
  {
    v7 = &v12;
  }

  v8 = *(a1 + 24);
  v9 = *(v7 + 2);
  *v8 = *v7;
  *(v8 + 8) = v9;
}

void **sub_8191C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 3);
        v3 -= 24;
        v5 = v6;
        if (v6)
        {
          operator delete(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_81988(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void ***sub_81A9C(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v7 = *(v4 - 3);
          v4 -= 24;
          v6 = v7;
          if (v7)
          {
            operator delete(v6);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

_BYTE *sub_81B18(_BYTE *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    v112 = result + 288;
    v113 = result + 48;
    v107 = (result + 264);
    v108 = (result + 312);
    v110 = result + 192;
    v111 = result + 240;
    v109 = result + 144;
    v106 = result + 96;
    while (1)
    {
      v7 = *(v2 + 23);
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

      v10 = *(v2 + 8);
      if (v10 <= 16)
      {
        if (v10 != 6)
        {
          if (v10 == 7)
          {
            if (**v2 != 2003135585 || *(*v2 + 3) != 1701210487)
            {
              goto LABEL_152;
            }

            goto LABEL_193;
          }

          if (v10 != 13)
          {
            goto LABEL_152;
          }

          if (**v2 != 0x682D736568637261 || *(*v2 + 5) != 0x6E6F726461682D73)
          {
            goto LABEL_152;
          }

          goto LABEL_55;
        }

        if (**v2 != 1768777063 || *(*v2 + 4) != 26990)
        {
LABEL_152:
          if (!sub_7E7E4(1u))
          {
            goto LABEL_176;
          }

          sub_19594F8(&v118);
          v50 = sub_4A5C(&v118, "Encountered unknown data source of type ", 40);
          v51 = *(v2 + 23);
          if (v51 >= 0)
          {
            v52 = v2;
          }

          else
          {
            v52 = *v2;
          }

          if (v51 >= 0)
          {
            v53 = *(v2 + 23);
          }

          else
          {
            v53 = *(v2 + 8);
          }

          v54 = sub_4A5C(v50, v52, v53);
          sub_4A5C(v54, "; ignoring data source", 22);
          if ((v127 & 0x10) != 0)
          {
            v56 = v126;
            v57 = &v122;
            if (v126 < v123)
            {
              v126 = v123;
              v56 = v123;
              v57 = &v122;
            }
          }

          else
          {
            if ((v127 & 8) == 0)
            {
              v55 = 0;
              v117 = 0;
LABEL_171:
              *(&__dst + v55) = 0;
              sub_7E854(&__dst, 1u);
              if (v117 < 0)
              {
                operator delete(__dst);
              }

              v118 = v115;
              *(&v118 + *(v115 - 3)) = v114;
              if (v125 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v120);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_176;
            }

            v56 = v121[2];
            v57 = v121;
          }

          v58 = *v57;
          v55 = v56 - *v57;
          if (v55 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v55 >= 0x17)
          {
            operator new();
          }

          v117 = v56 - *v57;
          if (v55)
          {
            memmove(&__dst, v58, v55);
          }

          goto LABEL_171;
        }

LABEL_117:
        if (v2 == v109)
        {
          goto LABEL_176;
        }

        if (v4[167] < 0)
        {
          if (v7 >= 0)
          {
            v70 = v2;
          }

          else
          {
            v70 = *v2;
          }

          if (v7 >= 0)
          {
            v71 = *(v2 + 23);
          }

          else
          {
            v71 = *(v2 + 8);
          }

          sub_13B38(v109, v70, v71);
          v37 = (v2 + 24);
          v38 = *(v2 + 47);
          if ((v4[191] & 0x80000000) == 0)
          {
LABEL_205:
            if ((v38 & 0x80) == 0)
            {
              v72 = *v37;
              *(v4 + 23) = v37[2];
              *(v4 + 168) = v72;
              goto LABEL_176;
            }

            v91 = *(v2 + 24);
            v92 = *(v2 + 32);
            v93 = v4 + 168;
            goto LABEL_316;
          }
        }

        else if ((v7 & 0x80000000) != 0)
        {
          sub_13A68(v109, *v2, *(v2 + 8));
          v37 = (v2 + 24);
          v38 = *(v2 + 47);
          if ((v4[191] & 0x80000000) == 0)
          {
            goto LABEL_205;
          }
        }

        else
        {
          v36 = *v2;
          v109[2] = *(v2 + 16);
          *v109 = v36;
          v37 = (v2 + 24);
          v38 = *(v2 + 47);
          if ((v4[191] & 0x80000000) == 0)
          {
            goto LABEL_205;
          }
        }

        if ((v38 & 0x80u) == 0)
        {
          v89 = v37;
        }

        else
        {
          v89 = *(v2 + 24);
        }

        if ((v38 & 0x80u) == 0)
        {
          v90 = v38;
        }

        else
        {
          v90 = *(v2 + 32);
        }

        sub_13B38((v4 + 168), v89, v90);
        goto LABEL_176;
      }

      if (v10 <= 19)
      {
        if (v10 != 17)
        {
          if (v10 != 19)
          {
            goto LABEL_152;
          }

          v11 = **v2 == 0x742D736568637261 && *(*v2 + 8) == 0x642D636966666172;
          if (!v11 || *(*v2 + 11) != 0x617461642D636966)
          {
            goto LABEL_152;
          }

          goto LABEL_107;
        }

        if (**v2 != 0x682D736568637261 || *(*v2 + 8) != 0x6F702D6E6F726461 || *(*v2 + 16) != 105)
        {
          goto LABEL_152;
        }

        goto LABEL_130;
      }

      if (v10 == 20)
      {
        if (**v2 != 0x632D736568637261 || *(*v2 + 8) != 0x65766F632D6C6C65 || *(*v2 + 16) != 1701273970)
        {
          goto LABEL_152;
        }

LABEL_143:
        if (v2 == v112)
        {
          goto LABEL_176;
        }

        if (v4[311] < 0)
        {
          if (v7 >= 0)
          {
            v78 = v2;
          }

          else
          {
            v78 = *v2;
          }

          if (v7 >= 0)
          {
            v79 = *(v2 + 23);
          }

          else
          {
            v79 = *(v2 + 8);
          }

          sub_13B38(v112, v78, v79);
          v47 = (v2 + 24);
          v48 = *(v2 + 47);
          if ((v4[335] & 0x80000000) == 0)
          {
LABEL_223:
            if ((v48 & 0x80) == 0)
            {
              v75 = *v47;
              v76 = v47[2];
              v77 = v108;
              goto LABEL_225;
            }

            v91 = *(v2 + 24);
            v92 = *(v2 + 32);
            v93 = v108;
            goto LABEL_316;
          }
        }

        else if ((v7 & 0x80000000) != 0)
        {
          sub_13A68(v112, *v2, *(v2 + 8));
          v47 = (v2 + 24);
          v48 = *(v2 + 47);
          if ((v4[335] & 0x80000000) == 0)
          {
            goto LABEL_223;
          }
        }

        else
        {
          v46 = *v2;
          v112[2] = *(v2 + 16);
          *v112 = v46;
          v47 = (v2 + 24);
          v48 = *(v2 + 47);
          if ((v4[335] & 0x80000000) == 0)
          {
            goto LABEL_223;
          }
        }

        if ((v48 & 0x80u) == 0)
        {
          v96 = v47;
        }

        else
        {
          v96 = *(v2 + 24);
        }

        if ((v48 & 0x80u) == 0)
        {
          v97 = v48;
        }

        else
        {
          v97 = *(v2 + 32);
        }

        sub_13B38(v108, v96, v97);
        goto LABEL_176;
      }

      if (v10 != 25)
      {
        goto LABEL_152;
      }

      v19 = *v2;
      v20 = **v2 == 0x722D736568637261 && *(*v2 + 8) == 0x702D676E6974756FLL;
      v21 = v20 && *(*v2 + 16) == 0x656E696C65626F72;
      if (!v21 || *(*v2 + 24) != 115)
      {
        goto LABEL_152;
      }

      if (v2 == v106)
      {
        goto LABEL_176;
      }

      if (v4[119] < 0)
      {
        sub_13B38(v106, v19, 0x19uLL);
        v23 = (v2 + 24);
        v24 = *(v2 + 47);
        if ((v4[143] & 0x80000000) == 0)
        {
LABEL_76:
          if ((v24 & 0x80) == 0)
          {
            v25 = *v23;
            *(v4 + 17) = v23[2];
            *(v4 + 120) = v25;
            goto LABEL_176;
          }

          v91 = *(v2 + 24);
          v92 = *(v2 + 32);
          v93 = v4 + 120;
LABEL_316:
          sub_13A68(v93, v91, v92);
          goto LABEL_176;
        }
      }

      else
      {
        sub_13A68(v106, v19, 0x19uLL);
        v23 = (v2 + 24);
        v24 = *(v2 + 47);
        if ((v4[143] & 0x80000000) == 0)
        {
          goto LABEL_76;
        }
      }

      if ((v24 & 0x80u) == 0)
      {
        v104 = v23;
      }

      else
      {
        v104 = *(v2 + 24);
      }

      if ((v24 & 0x80u) == 0)
      {
        v105 = v24;
      }

      else
      {
        v105 = *(v2 + 32);
      }

      sub_13B38((v4 + 120), v104, v105);
LABEL_176:
      v118 = v2;
      v59 = sub_829B4(v4 + 42, v2);
      result = v59 + 5;
      if (v2 != v59 + 5)
      {
        v60 = *(v2 + 23);
        if (*(v59 + 63) < 0)
        {
          if (v60 >= 0)
          {
            v64 = v2;
          }

          else
          {
            v64 = *v2;
          }

          if (v60 >= 0)
          {
            v65 = *(v2 + 23);
          }

          else
          {
            v65 = *(v2 + 8);
          }

          result = sub_13B38(result, v64, v65);
          v62 = (v2 + 24);
          v63 = *(v2 + 47);
          if (*(v59 + 87) < 0)
          {
LABEL_3:
            if ((v63 & 0x80u) == 0)
            {
              v5 = v62;
            }

            else
            {
              v5 = *(v2 + 24);
            }

            if ((v63 & 0x80u) == 0)
            {
              v6 = v63;
            }

            else
            {
              v6 = *(v2 + 32);
            }

            result = sub_13B38((v59 + 8), v5, v6);
            goto LABEL_10;
          }
        }

        else if ((*(v2 + 23) & 0x80) != 0)
        {
          result = sub_13A68(result, *v2, *(v2 + 8));
          v62 = (v2 + 24);
          v63 = *(v2 + 47);
          if (*(v59 + 87) < 0)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v61 = *v2;
          v59[7] = *(v2 + 16);
          *result = v61;
          v62 = (v2 + 24);
          v63 = *(v2 + 47);
          if (*(v59 + 87) < 0)
          {
            goto LABEL_3;
          }
        }

        if ((v63 & 0x80) != 0)
        {
          result = sub_13A68(v59 + 64, *(v2 + 24), *(v2 + 32));
        }

        else
        {
          v66 = *v62;
          v59[10] = v62[2];
          *(v59 + 4) = v66;
        }
      }

LABEL_10:
      v2 += 48;
      if (v2 == v3)
      {
        return result;
      }
    }

    v8 = *(v2 + 23);
    if (v8 > 0x10)
    {
      if (v8 == 17)
      {
        if (*v2 != 0x682D736568637261 || *(v2 + 8) != 0x6F702D6E6F726461 || *(v2 + 16) != 105)
        {
          goto LABEL_152;
        }

LABEL_130:
        if (v2 == v111)
        {
          goto LABEL_176;
        }

        if (v4[263] < 0)
        {
          if (v7 >= 0)
          {
            v73 = v2;
          }

          else
          {
            v73 = *v2;
          }

          if (v7 >= 0)
          {
            v74 = *(v2 + 23);
          }

          else
          {
            v74 = *(v2 + 8);
          }

          sub_13B38(v111, v73, v74);
          v42 = (v2 + 24);
          v43 = *(v2 + 47);
          if ((v4[287] & 0x80000000) == 0)
          {
LABEL_214:
            if ((v43 & 0x80) == 0)
            {
              v75 = *v42;
              v76 = v42[2];
              v77 = v107;
LABEL_225:
              *(v77 + 16) = v76;
              *v77 = v75;
              goto LABEL_176;
            }

            v91 = *(v2 + 24);
            v92 = *(v2 + 32);
            v93 = v107;
            goto LABEL_316;
          }
        }

        else if ((v7 & 0x80000000) != 0)
        {
          sub_13A68(v111, *v2, *(v2 + 8));
          v42 = (v2 + 24);
          v43 = *(v2 + 47);
          if ((v4[287] & 0x80000000) == 0)
          {
            goto LABEL_214;
          }
        }

        else
        {
          v41 = *v2;
          v111[2] = *(v2 + 16);
          *v111 = v41;
          v42 = (v2 + 24);
          v43 = *(v2 + 47);
          if ((v4[287] & 0x80000000) == 0)
          {
            goto LABEL_214;
          }
        }

        if ((v43 & 0x80u) == 0)
        {
          v94 = v42;
        }

        else
        {
          v94 = *(v2 + 24);
        }

        if ((v43 & 0x80u) == 0)
        {
          v95 = v43;
        }

        else
        {
          v95 = *(v2 + 32);
        }

        sub_13B38(v107, v94, v95);
        goto LABEL_176;
      }

      if (v8 == 19)
      {
        if (*v2 != 0x742D736568637261 || *(v2 + 8) != 0x642D636966666172 || *(v2 + 11) != 0x617461642D636966)
        {
          goto LABEL_152;
        }

LABEL_107:
        if (v2 == v113)
        {
          goto LABEL_176;
        }

        if (v4[71] < 0)
        {
          if (v7 >= 0)
          {
            v83 = v2;
          }

          else
          {
            v83 = *v2;
          }

          if (v7 >= 0)
          {
            v84 = *(v2 + 23);
          }

          else
          {
            v84 = *(v2 + 8);
          }

          sub_13B38(v113, v83, v84);
          v33 = (v2 + 24);
          v34 = *(v2 + 47);
          if ((v4[95] & 0x80000000) == 0)
          {
LABEL_242:
            if ((v34 & 0x80) == 0)
            {
              v85 = *v33;
              *(v4 + 11) = v33[2];
              *(v4 + 72) = v85;
              goto LABEL_176;
            }

            v91 = *(v2 + 24);
            v92 = *(v2 + 32);
            v93 = v4 + 72;
            goto LABEL_316;
          }
        }

        else if ((v7 & 0x80000000) != 0)
        {
          sub_13A68(v113, *v2, *(v2 + 8));
          v33 = (v2 + 24);
          v34 = *(v2 + 47);
          if ((v4[95] & 0x80000000) == 0)
          {
            goto LABEL_242;
          }
        }

        else
        {
          v32 = *v2;
          v113[2] = *(v2 + 16);
          *v113 = v32;
          v33 = (v2 + 24);
          v34 = *(v2 + 47);
          if ((v4[95] & 0x80000000) == 0)
          {
            goto LABEL_242;
          }
        }

        if ((v34 & 0x80u) == 0)
        {
          v100 = v33;
        }

        else
        {
          v100 = *(v2 + 24);
        }

        if ((v34 & 0x80u) == 0)
        {
          v101 = v34;
        }

        else
        {
          v101 = *(v2 + 32);
        }

        sub_13B38((v4 + 72), v100, v101);
        goto LABEL_176;
      }

      if (v8 != 20)
      {
        goto LABEL_152;
      }

      v13 = *v2 == 0x632D736568637261 && *(v2 + 8) == 0x65766F632D6C6C65;
      if (!v13 || *(v2 + 16) != 1701273970)
      {
        goto LABEL_152;
      }

      goto LABEL_143;
    }

    if (v8 != 6)
    {
      if (v8 == 7)
      {
        if (*v2 != 2003135585 || *(v2 + 3) != 1701210487)
        {
          goto LABEL_152;
        }

LABEL_193:
        if (v2 == v4)
        {
          goto LABEL_176;
        }

        if (v4[23] < 0)
        {
          if (v7 >= 0)
          {
            v86 = v2;
          }

          else
          {
            v86 = *v2;
          }

          if (v7 >= 0)
          {
            v87 = *(v2 + 23);
          }

          else
          {
            v87 = *(v2 + 8);
          }

          sub_13B38(v4, v86, v87);
          v68 = (v2 + 24);
          v69 = *(v2 + 47);
          if ((v4[47] & 0x80000000) == 0)
          {
LABEL_251:
            if ((v69 & 0x80) == 0)
            {
              v88 = *v68;
              *(v4 + 5) = v68[2];
              *(v4 + 24) = v88;
              goto LABEL_176;
            }

            v91 = *(v2 + 24);
            v92 = *(v2 + 32);
            v93 = v4 + 24;
            goto LABEL_316;
          }
        }

        else if ((v7 & 0x80000000) != 0)
        {
          sub_13A68(v4, *v2, *(v2 + 8));
          v68 = (v2 + 24);
          v69 = *(v2 + 47);
          if ((v4[47] & 0x80000000) == 0)
          {
            goto LABEL_251;
          }
        }

        else
        {
          v67 = *v2;
          *(v4 + 2) = *(v2 + 16);
          *v4 = v67;
          v68 = (v2 + 24);
          v69 = *(v2 + 47);
          if ((v4[47] & 0x80000000) == 0)
          {
            goto LABEL_251;
          }
        }

        if ((v69 & 0x80u) == 0)
        {
          v102 = v68;
        }

        else
        {
          v102 = *(v2 + 24);
        }

        if ((v69 & 0x80u) == 0)
        {
          v103 = v69;
        }

        else
        {
          v103 = *(v2 + 32);
        }

        sub_13B38((v4 + 24), v102, v103);
        goto LABEL_176;
      }

      if (v8 != 13)
      {
        goto LABEL_152;
      }

      if (*v2 != 0x682D736568637261 || *(v2 + 5) != 0x6E6F726461682D73)
      {
        goto LABEL_152;
      }

LABEL_55:
      if (v2 == v110)
      {
        goto LABEL_176;
      }

      if (v4[215] < 0)
      {
        if (v7 >= 0)
        {
          v80 = v2;
        }

        else
        {
          v80 = *v2;
        }

        if (v7 >= 0)
        {
          v81 = *(v2 + 23);
        }

        else
        {
          v81 = *(v2 + 8);
        }

        sub_13B38(v110, v80, v81);
        v17 = (v2 + 24);
        v18 = *(v2 + 47);
        if ((v4[239] & 0x80000000) == 0)
        {
LABEL_233:
          if ((v18 & 0x80) == 0)
          {
            v82 = *v17;
            *(v4 + 29) = v17[2];
            *(v4 + 216) = v82;
            goto LABEL_176;
          }

          v91 = *(v2 + 24);
          v92 = *(v2 + 32);
          v93 = v4 + 216;
          goto LABEL_316;
        }
      }

      else if ((v7 & 0x80000000) != 0)
      {
        sub_13A68(v110, *v2, *(v2 + 8));
        v17 = (v2 + 24);
        v18 = *(v2 + 47);
        if ((v4[239] & 0x80000000) == 0)
        {
          goto LABEL_233;
        }
      }

      else
      {
        v16 = *v2;
        v110[2] = *(v2 + 16);
        *v110 = v16;
        v17 = (v2 + 24);
        v18 = *(v2 + 47);
        if ((v4[239] & 0x80000000) == 0)
        {
          goto LABEL_233;
        }
      }

      if ((v18 & 0x80u) == 0)
      {
        v98 = v17;
      }

      else
      {
        v98 = *(v2 + 24);
      }

      if ((v18 & 0x80u) == 0)
      {
        v99 = v18;
      }

      else
      {
        v99 = *(v2 + 32);
      }

      sub_13B38((v4 + 216), v98, v99);
      goto LABEL_176;
    }

    if (*v2 != 1768777063 || *(v2 + 4) != 26990)
    {
      goto LABEL_152;
    }

    goto LABEL_117;
  }

  return result;
}

void sub_827B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_827C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_827D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
    sub_1959728(&a26);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a26);
  _Unwind_Resume(a1);
}

char *sub_82810@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[495] < 0)
  {
    return sub_325C(a2, *(result + 59), *(result + 60));
  }

  *a2 = *(result + 472);
  *(a2 + 16) = *(result + 61);
  return result;
}

unsigned __int8 *sub_8283C(uint64_t a1, unsigned __int8 *a2)
{
  result = (a1 + 472);
  if (result != a2)
  {
    if (*(a1 + 495) < 0)
    {
      v5 = *(a2 + 1);
      if ((a2[23] & 0x80u) == 0)
      {
        v6 = a2[23];
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return sub_13B38(result, a2, v6);
    }

    else if ((a2[23] & 0x80) != 0)
    {
      return sub_13A68(result, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v4;
    }
  }

  return result;
}

char *sub_82894@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[423] < 0)
  {
    return sub_325C(a2, *(result + 50), *(result + 51));
  }

  *a2 = *(result + 25);
  *(a2 + 16) = *(result + 52);
  return result;
}

unsigned __int8 *sub_828BC(uint64_t a1, unsigned __int8 *a2)
{
  result = (a1 + 400);
  if (result != a2)
  {
    if (*(a1 + 423) < 0)
    {
      v5 = *(a2 + 1);
      if ((a2[23] & 0x80u) == 0)
      {
        v6 = a2[23];
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return sub_13B38(result, a2, v6);
    }

    else if ((a2[23] & 0x80) != 0)
    {
      return sub_13A68(result, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v4;
    }
  }

  return result;
}

uint64_t sub_82914(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 87) < 0)
      {
        operator delete(v2[8]);
        if ((*(v2 + 63) & 0x80000000) == 0)
        {
LABEL_8:
          if (*(v2 + 39) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_5;
        }
      }

      else if ((*(v2 + 63) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(v2[5]);
      if (*(v2 + 39) < 0)
      {
LABEL_12:
        operator delete(v2[2]);
      }

LABEL_5:
      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t **sub_829B4(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_82DC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_82DF0(va);
  _Unwind_Resume(a1);
}

void sub_82DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_82DF0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_82DF0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) != 1)
    {
LABEL_6:
      operator delete(v2);
      return a1;
    }

    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
      if ((*(v2 + 63) & 0x80000000) == 0)
      {
LABEL_5:
        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_10:
        operator delete(*(v2 + 16));
        goto LABEL_6;
      }
    }

    else if ((*(v2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(v2 + 40));
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  return a1;
}

void sub_82E78(int a1, uint64_t *a2, uint64_t *a3)
{
  if (*a2)
  {
    v3 = *a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    sub_2AFE10(&v23, a3);
    sub_7F0A4(v22);
    sub_2B0448(&v23, &v21);
    if (a1)
    {
      sub_2B078C(&v23, &v20);
    }

    else
    {
      sub_2B092C(&v23, &v20);
    }

    v6 = *a2;
    HIBYTE(v16[2]) = 19;
    strcpy(v16, "common/Version.json");
    __p = 0;
    v18 = 0;
    v19 = 0;
    v7 = sub_90534(v6, v16, &__p);
    v8 = __p;
    if (__p)
    {
      v9 = v18;
      v10 = __p;
      if (v18 != __p)
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
        v10 = __p;
      }

      v18 = v8;
      operator delete(v10);
    }

    if (SHIBYTE(v16[2]) < 0)
    {
      operator delete(v16[0]);
    }

    if (a1)
    {
      v12 = "offline";
    }

    else
    {
      v12 = "online";
    }

    if (a1)
    {
      v13 = 7;
    }

    else
    {
      v13 = 6;
    }

    HIBYTE(v16[2]) = v13;
    memcpy(v16, v12, v13);
    *(v16 | v13) = 0;
    sub_5F5AC(v7, v16);
    operator new();
  }

  exception = __cxa_allocate_exception(0x40uLL);
  v15 = sub_2D390(exception, "Compatibility check requires valid config and fb providers", 0x3AuLL);
}

void sub_83D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a9);
  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (*(v60 - 169) < 0)
  {
    operator delete(*(v60 - 192));
    if ((*(v60 - 121) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v60 - 121) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v60 - 73) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  operator delete(*(v60 - 144));
  if (*(v60 - 73) < 0)
  {
LABEL_8:
    operator delete(*(v60 - 96));
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

uint64_t sub_83EC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  if (v2 == -1)
  {
    v3 = 0x385FFF1BDCLL;
  }

  v5 = &v6;
  v6 = v3;
  if (v2 == -1)
  {
    sub_5AF20();
  }

  v7 = &v5;
  (off_262EA88[v2])(&v7);
  return v6;
}

BOOL sub_83FA0(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_8402C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

double sub_84074(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void *sub_84084(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_325C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_840B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_262EA28[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void *sub_8410C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_84218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_84350(va);
  _Unwind_Resume(a1);
}

void sub_8422C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_840B0(v4);
  sub_84254(va1);
  *(v2 + 8) = v3;
  sub_84350(va);
  _Unwind_Resume(a1);
}

uint64_t sub_84254(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v6 = v4 - 32;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_262EA28[v7])(&v9, v4 - 32);
        }

        *(v4 - 8) = -1;
        v4 -= 32;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

uint64_t sub_842F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_262EA28[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void ***sub_84350(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 32;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_262EA28[v7])(&v9, v4 - 32);
          }

          *(v4 - 2) = -1;
          v4 -= 32;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void ***sub_844CC(void ***result, double *a2)
{
  v2 = *a2 + 2654435769;
  if (*a2 == 0.0)
  {
    v2 = 2654435769;
  }

  ***result ^= v2 + (***result << 6) + (***result >> 2);
  return result;
}

unint64_t sub_84508(void **a1, uint64_t a2)
{
  v2 = **a1;
  v3 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  result = sub_AAD8(&v6, a2, v4);
  *v2 ^= result + (*v2 << 6) + (*v2 >> 2) + 2654435769u;
  return result;
}

__n128 sub_84578(uint64_t a1, __int128 *a2, __n128 *a3)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  result = *a3;
  *(a1 + 40) = a3[1].n128_u64[0];
  *(a1 + 24) = result;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  return result;
}

BOOL sub_845AC(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

LABEL_3:
  v1 = *(a1 + 47);
  if (v1 < 0)
  {
    return *(a1 + 32) != 0;
  }

  else
  {
    return v1 != 0;
  }
}

uint64_t sub_845EC(unsigned __int8 *a1)
{
  v1 = a1[23];
  v2 = *(a1 + 1);
  if ((v1 & 0x80u) != 0)
  {
    a1 = *a1;
    v1 = v2;
  }

  if (v1 >= 0x1F)
  {
    v3 = 31;
  }

  else
  {
    v3 = v1;
  }

  if (v1)
  {
    switch(v1)
    {
      case 1uLL:
        v4 = *a1;
        v5 = 1;
        break;
      case 2uLL:
        v4 = *a1;
        v5 = 2;
        break;
      case 3uLL:
        v4 = *a1 | (a1[2] << 16);
        v5 = 3;
        break;
      default:
        sub_852E4(a1, v3, &v7);
        return sub_1232F28(&v7, 0);
    }

    *&v7 = v4;
    *(&v7 + 1) = v5;
    v8 = 0u;
    v9 = 0u;
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  return sub_1232F28(&v7, 0);
}

BOOL sub_846D0(const void **a1)
{
  v15 = sub_12331FC();
  v2 = sub_45AC50(&v15);
  v3 = HIBYTE(*v2);
  v4 = (3 - v3);
  if (v4 >= 0x17)
  {
    operator new();
  }

  v14 = 3 - v3;
  if (v3 != 3)
  {
    memcpy(__p, v2, v4);
  }

  v5 = 0;
  *(__p + v4) = 0;
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = v14;
  v9 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (v7 == v8)
  {
    if (v6 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v5 = memcmp(v10, v11, v7) == 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_84804(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1)
  {
    v2 = a1;
    sub_84D10(a2, *a1);
    v4 = *v2;
    if (v4)
    {
      v5 = v2;
      v6 = &v2[v4];
      do
      {
        v8 = v5[1];
        ++v5;
        v7 = v8;
        v9 = (v5 + v8);
        v10 = (v9 - *v9);
        v11 = *v10;
        if (v11 < 5)
        {
          goto LABEL_4;
        }

        if (!v10[2])
        {
          goto LABEL_4;
        }

        v12 = (v9 + v10[2] + *(v9 + v10[2]));
        v13 = *v12;
        if (!v13)
        {
          goto LABEL_4;
        }

        if (v11 >= 9)
        {
          v14 = v10[4];
          if (v14)
          {
            if (*(v9 + v14 + *(v9 + v14)))
            {
              if (v13 >= 0x17)
              {
                operator new();
              }

              HIBYTE(v41) = *v12;
              memcpy(&__dst, v12 + 1, v13);
              *(&__dst + v13) = 0;
              v27 = *(v9 - *v9 + 8);
              v28 = *(v9 + v27);
              v29 = *(v9 + v27 + v28);
              if (v29)
              {
                v30 = 0;
                v31 = 4 * v29;
                v32 = v2 + v27 + v7 + v28;
                while (1)
                {
                  v33 = &v32[v30 + *&v32[v30 + 8]];
                  v34 = *(v33 + 2);
                  if (v34 >= 0x17)
                  {
                    operator new();
                  }

                  HIBYTE(v38) = *(v33 + 2);
                  if (v34)
                  {
                    memcpy(__p, v33 + 12, v34);
                    *(__p + v34) = 0;
                    v35 = a2[1];
                    if (v35 >= a2[2])
                    {
LABEL_42:
                      a2[1] = sub_850BC(a2, __p, &__dst);
                      if (SHIBYTE(v38) < 0)
                      {
                        goto LABEL_43;
                      }

                      goto LABEL_33;
                    }
                  }

                  else
                  {
                    *(__p + v34) = 0;
                    v35 = a2[1];
                    if (v35 >= a2[2])
                    {
                      goto LABEL_42;
                    }
                  }

                  v36 = *__p;
                  *(v35 + 16) = v38;
                  *v35 = v36;
                  __p[1] = 0;
                  v38 = 0;
                  __p[0] = 0;
                  if (SHIBYTE(v41) < 0)
                  {
                    sub_325C((v35 + 24), __dst, *(&__dst + 1));
                    a2[1] = v35 + 48;
                    if ((SHIBYTE(v38) & 0x80000000) == 0)
                    {
                      goto LABEL_33;
                    }

LABEL_43:
                    operator delete(__p[0]);
                    goto LABEL_33;
                  }

                  *(v35 + 24) = __dst;
                  *(v35 + 40) = v41;
                  a2[1] = v35 + 48;
                  if (SHIBYTE(v38) < 0)
                  {
                    goto LABEL_43;
                  }

LABEL_33:
                  v30 += 4;
                  if (v31 == v30)
                  {
                    goto LABEL_46;
                  }
                }
              }

              goto LABEL_46;
            }
          }
        }

        v39 = sub_12331FC();
        v15 = sub_45AC50(&v39);
        v16 = HIBYTE(*v15);
        v17 = (3 - v16);
        if (v17 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v41) = 3 - v16;
        if (v16 == 3)
        {
          *(&__dst + v17) = 0;
          v18 = (v9 - *v9);
          if (*v18 < 5u)
          {
            goto LABEL_23;
          }
        }

        else
        {
          memcpy(&__dst, v15, v17);
          *(&__dst + v17) = 0;
          v18 = (v9 - *v9);
          if (*v18 < 5u)
          {
            goto LABEL_23;
          }
        }

        v19 = v18[2];
        if (!v19)
        {
LABEL_23:
          HIBYTE(v38) = 0;
          LOBYTE(__p[0]) = 0;
          v23 = a2[1];
          if (v23 >= a2[2])
          {
            goto LABEL_28;
          }

          goto LABEL_24;
        }

        v20 = (v9 + v19);
        v21 = *v20;
        v22 = *(v20 + v21);
        if (v22 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v38) = *(v20 + v21);
        if (v22)
        {
          memcpy(__p, v20 + v21 + 4, v22);
        }

        *(__p + v22) = 0;
        v23 = a2[1];
        if (v23 >= a2[2])
        {
LABEL_28:
          v25 = sub_84F00(a2, &__dst, __p);
          v26 = SHIBYTE(v38);
          a2[1] = v25;
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_46;
        }

LABEL_24:
        v24 = __dst;
        *(v23 + 16) = v41;
        *v23 = v24;
        v41 = 0;
        __dst = 0uLL;
        *(v23 + 24) = *__p;
        *(v23 + 40) = v38;
        a2[1] = v23 + 48;
LABEL_46:
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__dst);
        }

LABEL_4:
        v2 = v5;
      }

      while (v5 != v6);
    }
  }
}

void sub_84CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    JUMPOUT(0x84CF8);
  }

  JUMPOUT(0x84CC8);
}

void *sub_84D10(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_84E7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 25) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 25) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_84F00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v6 + 24) = *a3;
  *(v6 + 40) = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v7 = v6 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 24) = v14;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 3) = 0;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
        if (*(v8 + 23) < 0)
        {
LABEL_19:
          operator delete(*v8);
        }
      }

      else if (*(v8 + 23) < 0)
      {
        goto LABEL_19;
      }

      v8 += 48;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_850BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_325C((v6 + 24), *a3, *(a3 + 8));
    v7 = v6 + 48;
    v8 = *a1;
    v9 = a1[1];
    v10 = v6 + *a1 - v9;
    if (v9 == *a1)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  *(v6 + 24) = *a3;
  *(v6 + 40) = *(a3 + 16);
  v7 = v6 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
LABEL_14:
    v11 = v8;
    v12 = v10;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 24) = v14;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 3) = 0;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
        if (*(v8 + 23) < 0)
        {
LABEL_22:
          operator delete(*v8);
        }
      }

      else if (*(v8 + 23) < 0)
      {
        goto LABEL_22;
      }

      v8 += 48;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

LABEL_24:
  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_852C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_84E7C(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_852E4@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 4:
      *a3 = *result;
      *(a3 + 8) = 4;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      break;
    case 5:
      *a3 = *result | (result[4] << 32);
      *(a3 + 8) = 5;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      break;
    case 6:
      *a3 = *result | (result[4] << 32) | (result[5] << 40);
      *(a3 + 8) = 6;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      break;
    case 8:
      v3 = *result;
      v4 = result[1];
      v5 = (v4 + ((v3 - 0x61C8864680B583EDLL) << 6) + ((v3 - 0x61C8864680B583EDLL) >> 2) - 0x61C8864680B583EDLL) ^ (v3 - 0x61C8864680B583EDLL);
      v6 = result[2];
      v7 = (v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EDLL) ^ v5;
      v8 = result[3];
      v9 = (v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EDLL) ^ v7;
      v10 = result[4];
      v11 = (v10 + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583EDLL) ^ v9;
      v12 = result[5];
      v13 = (v12 + (v11 << 6) + (v11 >> 2) - 0x61C8864680B583EDLL) ^ v11;
      v14 = result[6];
      v15 = (v14 + (v13 << 6) + (v13 >> 2) - 0x61C8864680B583EDLL) ^ v13;
      result = result[7];
      *a3 = &result[64 * v15 - 0x61C8864680B583EDLL + (v15 >> 2)] ^ v15;
      *(a3 + 8) = 8;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = 0;
      *(a3 + 16) = v3;
      *(a3 + 17) = v4;
      *(a3 + 18) = v6;
      *(a3 + 19) = v8;
      *(a3 + 20) = v10;
      *(a3 + 21) = v12;
      *(a3 + 22) = v14;
      *(a3 + 23) = result;
      break;
    case 7:
      *a3 = *result | (result[4] << 32) | (result[5] << 40) | (result[6] << 48);
      *(a3 + 8) = 7;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      break;
    case 9:
      return sub_854F0(a3, result);
    case 10:
      return sub_85720(a3, result);
    default:
      return sub_85608(result, a2, a3);
  }

  return result;
}

uint64_t sub_854F0(uint64_t result, unsigned __int8 *a2)
{
  v2 = (a2[1] + ((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = (a2[2] + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EDLL) ^ v2;
  v4 = (a2[3] + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EDLL) ^ v3;
  v5 = (a2[4] + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EDLL) ^ v4;
  v6 = (a2[5] + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EDLL) ^ v5;
  v7 = (a2[6] + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EDLL) ^ v6;
  v8 = (a2[7] + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EDLL) ^ v7;
  *result = (a2[8] + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583EDLL) ^ v8;
  *(result + 8) = 9;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 33) = 0;
  *(result + 25) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_85608@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 11:
      return sub_85878(a3, a1);
    case 12:
      return sub_859F0(a3, a1);
    case 13:
      return sub_85B88(a3, a1);
    case 14:
      return sub_85D40(a3, a1);
    case 15:
      return sub_85F18(a3, a1);
    case 16:
      return sub_86228(a3, a1);
  }

  return sub_86110(a1, a2, a3);
}

uint64_t sub_85720(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  *result = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  *(result + 8) = 10;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 34) = 0;
  *(result + 26) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_85878(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  *result = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  *(result + 8) = 11;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 35) = 0;
  *(result + 27) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_859F0(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  *result = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  *(result + 8) = 12;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  return result;
}

uint64_t sub_85B88(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  *result = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  *(result + 8) = 13;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 37) = 0;
  *(result + 29) = 0;
  *(result + 44) = 0;
  return result;
}

uint64_t sub_85D40(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  *result = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  *(result + 8) = 14;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 38) = 0;
  *(result + 30) = 0;
  *(result + 46) = 0;
  return result;
}

uint64_t sub_85F18(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  *result = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  *(result + 8) = 15;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 39) = 0;
  *(result + 31) = 0;
  *(result + 47) = 0;
  return result;
}

uint64_t sub_86110@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 17:
      return sub_86438(a3, a1);
    case 18:
      return sub_8666C(a3, a1);
    case 19:
      return sub_868C0(a3, a1);
    case 20:
      return sub_86B34(a3, a1);
    case 21:
      return sub_86DC8(a3, a1);
    case 22:
      return sub_87194(a3, a1);
  }

  return sub_8707C(a1, a2, a3);
}

uint64_t sub_86228(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  *result = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  *(result + 8) = 16;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_86438(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  *result = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  *(result + 8) = 17;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_8666C(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  *result = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  *(result + 8) = 18;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_868C0(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  *result = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  *(result + 8) = 19;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_86B34(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  *result = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  *(result + 8) = 20;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = 0;
  *(result + 44) = 0;
  return result;
}

uint64_t sub_86DC8(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  *result = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  *(result + 8) = 21;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = 0;
  *(result + 44) = 0;
  return result;
}

uint64_t sub_8707C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 23:
      return sub_87468(a3, a1);
    case 24:
      return sub_8775C(a3, a1);
    case 25:
      return sub_87A6C(a3, a1);
    case 26:
      return sub_87DA0(a3, a1);
    case 27:
      return sub_880F4(a3, a1);
    case 28:
      return sub_88508(a3, a1);
  }

  return sub_88468(a1, a2, a3);
}

uint64_t sub_87194(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  v21 = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  *result = ((v21 << 6) + (v21 >> 2) + a2[21] - 0x61C8864680B583EDLL) ^ v21;
  *(result + 8) = 22;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = a2[21];
  *(result + 38) = 0;
  *(result + 46) = 0;
  return result;
}

uint64_t sub_87468(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  v21 = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  v22 = ((v21 << 6) + (v21 >> 2) + a2[21] - 0x61C8864680B583EDLL) ^ v21;
  *result = ((v22 << 6) + (v22 >> 2) + a2[22] - 0x61C8864680B583EDLL) ^ v22;
  *(result + 8) = 23;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = a2[21];
  *(result + 38) = a2[22];
  *(result + 40) = 0;
  return result;
}

uint64_t sub_8775C(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  v21 = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  v22 = ((v21 << 6) + (v21 >> 2) + a2[21] - 0x61C8864680B583EDLL) ^ v21;
  v23 = ((v22 << 6) + (v22 >> 2) + a2[22] - 0x61C8864680B583EDLL) ^ v22;
  *result = ((v23 << 6) + (v23 >> 2) + a2[23] - 0x61C8864680B583EDLL) ^ v23;
  *(result + 8) = 24;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = a2[21];
  *(result + 38) = a2[22];
  *(result + 39) = a2[23];
  *(result + 40) = 0;
  return result;
}

uint64_t sub_87A6C(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  v21 = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  v22 = ((v21 << 6) + (v21 >> 2) + a2[21] - 0x61C8864680B583EDLL) ^ v21;
  v23 = ((v22 << 6) + (v22 >> 2) + a2[22] - 0x61C8864680B583EDLL) ^ v22;
  v24 = ((v23 << 6) + (v23 >> 2) + a2[23] - 0x61C8864680B583EDLL) ^ v23;
  *result = ((v24 << 6) + (v24 >> 2) + a2[24] - 0x61C8864680B583EDLL) ^ v24;
  *(result + 8) = 25;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = a2[21];
  *(result + 38) = a2[22];
  *(result + 39) = a2[23];
  *(result + 40) = a2[24];
  *(result + 41) = 0;
  *(result + 44) = 0;
  return result;
}

uint64_t sub_87DA0(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  v21 = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  v22 = ((v21 << 6) + (v21 >> 2) + a2[21] - 0x61C8864680B583EDLL) ^ v21;
  v23 = ((v22 << 6) + (v22 >> 2) + a2[22] - 0x61C8864680B583EDLL) ^ v22;
  v24 = ((v23 << 6) + (v23 >> 2) + a2[23] - 0x61C8864680B583EDLL) ^ v23;
  v25 = ((v24 << 6) + (v24 >> 2) + a2[24] - 0x61C8864680B583EDLL) ^ v24;
  *result = ((v25 << 6) + (v25 >> 2) + a2[25] - 0x61C8864680B583EDLL) ^ v25;
  *(result + 8) = 26;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = a2[21];
  *(result + 38) = a2[22];
  *(result + 39) = a2[23];
  *(result + 40) = a2[24];
  *(result + 41) = a2[25];
  *(result + 42) = 0;
  *(result + 46) = 0;
  return result;
}

uint64_t sub_880F4(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  v21 = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  v22 = ((v21 << 6) + (v21 >> 2) + a2[21] - 0x61C8864680B583EDLL) ^ v21;
  v23 = ((v22 << 6) + (v22 >> 2) + a2[22] - 0x61C8864680B583EDLL) ^ v22;
  v24 = ((v23 << 6) + (v23 >> 2) + a2[23] - 0x61C8864680B583EDLL) ^ v23;
  v25 = ((v24 << 6) + (v24 >> 2) + a2[24] - 0x61C8864680B583EDLL) ^ v24;
  v26 = ((v25 << 6) + (v25 >> 2) + a2[25] - 0x61C8864680B583EDLL) ^ v25;
  *result = ((v26 << 6) + (v26 >> 2) + a2[26] - 0x61C8864680B583EDLL) ^ v26;
  *(result + 8) = 27;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = a2[21];
  *(result + 38) = a2[22];
  *(result + 39) = a2[23];
  *(result + 40) = a2[24];
  *(result + 41) = a2[25];
  *(result + 42) = a2[26];
  *(result + 44) = 0;
  return result;
}

uint64_t sub_88468@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == 29)
  {
    return sub_88898(a3, a1);
  }

  if (a2 == 30)
  {
    return sub_88C4C(a3, a1);
  }

  return sub_8901C(a3, a1);
}

uint64_t sub_88508(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  v21 = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  v22 = ((v21 << 6) + (v21 >> 2) + a2[21] - 0x61C8864680B583EDLL) ^ v21;
  v23 = ((v22 << 6) + (v22 >> 2) + a2[22] - 0x61C8864680B583EDLL) ^ v22;
  v24 = ((v23 << 6) + (v23 >> 2) + a2[23] - 0x61C8864680B583EDLL) ^ v23;
  v25 = ((v24 << 6) + (v24 >> 2) + a2[24] - 0x61C8864680B583EDLL) ^ v24;
  v26 = ((v25 << 6) + (v25 >> 2) + a2[25] - 0x61C8864680B583EDLL) ^ v25;
  v27 = ((v26 << 6) + (v26 >> 2) + a2[26] - 0x61C8864680B583EDLL) ^ v26;
  *result = ((v27 << 6) + (v27 >> 2) + a2[27] - 0x61C8864680B583EDLL) ^ v27;
  *(result + 8) = 28;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = a2[21];
  *(result + 38) = a2[22];
  *(result + 39) = a2[23];
  *(result + 40) = a2[24];
  *(result + 41) = a2[25];
  *(result + 42) = a2[26];
  *(result + 43) = a2[27];
  *(result + 44) = 0;
  return result;
}

uint64_t sub_88898(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  v21 = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  v22 = ((v21 << 6) + (v21 >> 2) + a2[21] - 0x61C8864680B583EDLL) ^ v21;
  v23 = ((v22 << 6) + (v22 >> 2) + a2[22] - 0x61C8864680B583EDLL) ^ v22;
  v24 = ((v23 << 6) + (v23 >> 2) + a2[23] - 0x61C8864680B583EDLL) ^ v23;
  v25 = ((v24 << 6) + (v24 >> 2) + a2[24] - 0x61C8864680B583EDLL) ^ v24;
  v26 = ((v25 << 6) + (v25 >> 2) + a2[25] - 0x61C8864680B583EDLL) ^ v25;
  v27 = ((v26 << 6) + (v26 >> 2) + a2[26] - 0x61C8864680B583EDLL) ^ v26;
  v28 = ((v27 << 6) + (v27 >> 2) + a2[27] - 0x61C8864680B583EDLL) ^ v27;
  *result = ((v28 << 6) + (v28 >> 2) + a2[28] - 0x61C8864680B583EDLL) ^ v28;
  *(result + 8) = 29;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = a2[21];
  *(result + 38) = a2[22];
  *(result + 39) = a2[23];
  *(result + 40) = a2[24];
  *(result + 41) = a2[25];
  *(result + 42) = a2[26];
  *(result + 43) = a2[27];
  *(result + 44) = a2[28];
  *(result + 46) = 0;
  return result;
}