void sub_B8230(uint64_t a1)
{
  *a1 = off_262ECC8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

void sub_B82C4(uint64_t a1)
{
  *a1 = off_262ECC8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

void sub_B8370(uint64_t a1)
{
  *a1 = off_262ECC8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

void sub_B8404(uint64_t a1)
{
  *a1 = off_262ECC8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

uint64_t sub_B84B0(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + 128) + v4;
        v6 = *(v5 + 24);
        if (v6)
        {
          *(v5 + 32) = v6;
          operator delete(v6);
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v4 += 48;
        --v3;
      }

      while (v3);
      v2 = *(a1 + 128);
    }

    free(v2);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    *(a1 + 112) = v7;
    operator delete(v7);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 32));
  return a1;
}

uint64_t sub_B8580(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_B85D4(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  operator new();
}

uint64_t sub_B86B4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        sub_B87DC(v2);
        operator delete();
      }
    }

    *a1 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 8);
    if (v5 != v4)
    {
      do
      {
        v5 = sub_B3588(v5 - 1);
      }

      while (v5 != v4);
      v6 = *(a1 + 8);
    }

    *(a1 + 16) = v4;
    operator delete(v6);
  }

  return a1;
}

void **sub_B8748(void **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    if (v2)
    {
      if ((*v2)-- == 1)
      {
        sub_B87DC(v2);
        operator delete();
      }
    }

    operator new();
  }

  return result;
}

void *sub_B87DC(void *a1)
{
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(a1[1]) != 17 && (*(*v2 + 32))(v2) != 18)
  {
    v3 = a1[1];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    a1[1] = 0;
  }

  v4 = a1[2];
  if (v4 != a1[3])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = &v4[v5];
      v8 = *&v4[v5 + 8];
      if (v8 <= 2)
      {
        if (v8 == 1)
        {
          if (*v7)
          {
            (*(**v7 + 8))(*v7);
          }
        }

        else if (v8 == 2 && *v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        switch(v8)
        {
          case 3:
            if (*v7)
            {
              goto LABEL_9;
            }

            break;
          case 4:
            if (*v7)
            {
              operator delete[]();
            }

            break;
          case 5:
            v9 = *v7;
            if (*v7)
            {
              if (*(v9 + 23) < 0)
              {
                operator delete(*v9);
              }

LABEL_9:
              operator delete();
            }

            break;
        }
      }

      ++v6;
      v4 = a1[2];
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[3] - v4) >> 3));
  }

  v10 = a1[5];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      *(v10 + 16) = v11;
      operator delete(v11);
    }

    operator delete();
  }

  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

void **sub_B8A7C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_B3588(v3 - 1);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_B8AD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        sub_B87DC(v2);
        operator delete();
      }
    }

    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    if (v5 != v4)
    {
      do
      {
        v5 = sub_B3588(v5 - 1);
      }

      while (v5 != v4);
      v6 = *(a1 + 40);
    }

    *(a1 + 48) = v4;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    if (*v7)
    {
      v8 = *v7 - 1;
      *v7 = v8;
      if (!v8)
      {
        sub_B87DC(v7);
        operator delete();
      }
    }

    *a1 = 0;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 8);
    if (v10 != v9)
    {
      do
      {
        v10 = sub_B3588(v10 - 1);
      }

      while (v10 != v9);
      v11 = *(a1 + 8);
    }

    *(a1 + 16) = v9;
    operator delete(v11);
  }

  return a1;
}

__n128 sub_B8BDC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        sub_B90B4(v9, v9 + 4, a2 - 4);
        return result;
      case 4uLL:

        result.n128_u64[0] = sub_B93D4(v9, v9 + 2, v9 + 4, a2 - 4).n128_u64[0];
        return result;
      case 5uLL:

        sub_B95E4(v9, (v9 + 4), (v9 + 8), v9 + 6, a2 - 4);
        return result;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_B987C(v9, a2);
      }

      else
      {

        sub_B9A80(v9, a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v41 = (v12 - 2) >> 1;
        v42 = v41 + 1;
        v43 = &v9[4 * v41];
        do
        {
          sub_BA76C(v9, a3, (a2 - v9) >> 5, v43);
          v43 -= 2;
          --v42;
        }

        while (v42);
        do
        {
          sub_BAA64(v9, a2, a3, v12);
          a2 -= 32;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[4 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      sub_B90B4((a1 + 32 * (v12 >> 1)), a1, a2 - 4);
      if (a5)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_B90B4(a1, (a1 + 32 * (v12 >> 1)), a2 - 4);
      v15 = 32 * v13;
      v16 = (32 * v13 + a1 - 32);
      sub_B90B4((a1 + 32), v16, a2 - 8);
      sub_B90B4((a1 + 64), (a1 + 32 + v15), a2 - 12);
      sub_B90B4(v16, v14, (a1 + 32 + v15));
      v50 = *(a1 + 16);
      v48 = *a1;
      v17 = *v14;
      *(a1 + 16) = v14[2];
      *a1 = v17;
      v14[2] = v50;
      *v14 = v48;
      v18 = *(a1 + 24);
      *(a1 + 24) = *(v14 + 6);
      *(v14 + 6) = v18;
      if (a5)
      {
        goto LABEL_37;
      }
    }

    v19 = *(a1 - 9);
    if (v19 >= 0)
    {
      v20 = (a1 - 32);
    }

    else
    {
      v20 = *(a1 - 32);
    }

    if (v19 >= 0)
    {
      v21 = *(a1 - 9);
    }

    else
    {
      v21 = *(a1 - 24);
    }

    v22 = *(a1 + 23);
    if (v22 >= 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = *a1;
    }

    if (v22 >= 0)
    {
      v24 = *(a1 + 23);
    }

    else
    {
      v24 = *(a1 + 8);
    }

    if (v24 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24;
    }

    v26 = memcmp(v20, v23, v25);
    if (v26)
    {
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v27 = v21 >= v24;
      if (v21 == v24)
      {
        v27 = *(a1 - 8) >= *(a1 + 24);
      }

      if (v27)
      {
LABEL_41:
        v9 = sub_B9C68(a1, a2);
        goto LABEL_42;
      }
    }

LABEL_37:
    v28 = sub_B9FF4(a1, a2);
    if ((v29 & 1) == 0)
    {
      goto LABEL_40;
    }

    v30 = sub_BA34C(a1, v28);
    v9 = (v28 + 32);
    if (sub_BA34C(v28 + 32, a2))
    {
      a4 = -v11;
      a2 = v28;
      if (v30)
      {
        return result;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v30)
    {
LABEL_40:
      sub_B8BDC(a1, v28, a3, -v11, a5 & 1);
      v9 = (v28 + 32);
LABEL_42:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  v32 = (a2 - 32);
  v33 = *(a2 - 9);
  if (v33 >= 0)
  {
    v34 = a2 - 32;
  }

  else
  {
    v34 = *(a2 - 4);
  }

  if (v33 >= 0)
  {
    v35 = *(a2 - 9);
  }

  else
  {
    v35 = *(a2 - 3);
  }

  v36 = *(v9 + 23);
  if (v36 >= 0)
  {
    v37 = v9;
  }

  else
  {
    v37 = *v9;
  }

  if (v36 >= 0)
  {
    v38 = *(v9 + 23);
  }

  else
  {
    v38 = v9[1];
  }

  if (v38 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v38;
  }

  v40 = memcmp(v34, v37, v39);
  if (v40)
  {
    if ((v40 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_87;
  }

  v45 = v35 >= v38;
  if (v35 == v38)
  {
    v45 = *(a2 - 2) >= *(v9 + 6);
  }

  if (!v45)
  {
LABEL_87:
    v51 = v9[2];
    v49 = *v9;
    v46 = *v32;
    v9[2] = *(a2 - 2);
    *v9 = v46;
    result = v49;
    *v32 = v49;
    *(a2 - 2) = v51;
    v47 = *(v9 + 6);
    *(v9 + 6) = *(a2 - 2);
    *(a2 - 2) = v47;
  }

  return result;
}

uint64_t sub_B90B4(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v7, v10, v12);
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_37:
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = a3[1];
    }

    if (v8 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v8;
    }

    v24 = memcmp(v21, v7, v23);
    if (v24)
    {
      if ((v24 & 0x80000000) == 0)
      {
LABEL_48:
        v25 = a1[2];
        v26 = *a1;
        v27 = a2[2];
        *a1 = *a2;
        a1[2] = v27;
        *a2 = v26;
        a2[2] = v25;
        v28 = (a2 + 3);
        v29 = *(a1 + 6);
        *(a1 + 6) = *(a2 + 6);
        *(a2 + 6) = v29;
        v30 = *(a3 + 23);
        if (v30 >= 0)
        {
          v31 = a3;
        }

        else
        {
          v31 = *a3;
        }

        if (v30 >= 0)
        {
          v32 = *(a3 + 23);
        }

        else
        {
          v32 = a3[1];
        }

        v33 = *(a2 + 23);
        if (v33 >= 0)
        {
          v34 = a2;
        }

        else
        {
          v34 = *a2;
        }

        if (v33 >= 0)
        {
          v35 = *(a2 + 23);
        }

        else
        {
          v35 = a2[1];
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
        if (v37)
        {
          if ((v37 & 0x80000000) == 0)
          {
            return 1;
          }
        }

        else if (v32 == v35)
        {
          if (*(a3 + 6) >= v29)
          {
            return 1;
          }
        }

        else if (v32 >= v35)
        {
          return 1;
        }

        v53 = a2[2];
        v54 = *a2;
        v55 = a3[2];
        *a2 = *a3;
        a2[2] = v55;
        *a3 = v54;
        a3[2] = v53;
LABEL_98:
        v41 = (a3 + 3);
LABEL_101:
        v59 = *v28;
        *v28 = *v41;
        *v41 = v59;
        return 1;
      }
    }

    else if (v22 == v8)
    {
      if (*(a3 + 6) >= *(a2 + 6))
      {
        goto LABEL_48;
      }
    }

    else if (v22 >= v8)
    {
      goto LABEL_48;
    }

    v50 = a1[2];
    v51 = *a1;
    v52 = a3[2];
    *a1 = *a3;
    a1[2] = v52;
    *a3 = v51;
    a3[2] = v50;
    v28 = (a1 + 3);
    goto LABEL_98;
  }

  if (v8 == v11)
  {
    if (*(a2 + 6) < *(a1 + 6))
    {
      goto LABEL_37;
    }
  }

  else if (v8 < v11)
  {
    goto LABEL_37;
  }

LABEL_18:
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v8 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = memcmp(v15, v7, v17);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else if (v16 == v8)
  {
    if (*(a3 + 6) >= *(a2 + 6))
    {
      return 0;
    }
  }

  else if (v16 >= v8)
  {
    return 0;
  }

  v38 = a2[2];
  v39 = *a2;
  v40 = a3[2];
  *a2 = *a3;
  a2[2] = v40;
  *a3 = v39;
  a3[2] = v38;
  v41 = (a2 + 3);
  LODWORD(v38) = *(a2 + 6);
  *(a2 + 6) = *(a3 + 6);
  *(a3 + 6) = v38;
  v42 = *(a2 + 23);
  if (v42 >= 0)
  {
    v43 = a2;
  }

  else
  {
    v43 = *a2;
  }

  if (v42 >= 0)
  {
    v44 = *(a2 + 23);
  }

  else
  {
    v44 = a2[1];
  }

  v45 = *(a1 + 23);
  if (v45 >= 0)
  {
    v46 = a1;
  }

  else
  {
    v46 = *a1;
  }

  if (v45 >= 0)
  {
    v47 = *(a1 + 23);
  }

  else
  {
    v47 = a1[1];
  }

  if (v47 >= v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = v47;
  }

  v49 = memcmp(v43, v46, v48);
  if (v49)
  {
    if (v49 < 0)
    {
      goto LABEL_100;
    }
  }

  else
  {
    if (v44 == v47)
    {
      if (*v41 >= *(a1 + 6))
      {
        return 1;
      }

      goto LABEL_100;
    }

    if (v44 < v47)
    {
LABEL_100:
      v56 = a1[2];
      v57 = *a1;
      v58 = a2[2];
      *a1 = *a2;
      a1[2] = v58;
      *a2 = v57;
      a2[2] = v56;
      v28 = (a1 + 3);
      goto LABEL_101;
    }
  }

  return 1;
}

__n128 sub_B93D4(uint64_t a1, __int128 *a2, __int128 *a3, const void **a4)
{
  sub_B90B4(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 1);
  }

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v9, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    v17 = v10 >= v13;
    if (v10 == v13)
    {
      v17 = *(a4 + 6) >= *(a3 + 6);
    }

    if (v17)
    {
      return result;
    }
  }

  v18 = *(a3 + 2);
  v19 = *a3;
  v20 = a4[2];
  *a3 = *a4;
  *(a3 + 2) = v20;
  *a4 = v19;
  a4[2] = v18;
  LODWORD(v18) = *(a3 + 6);
  *(a3 + 6) = *(a4 + 6);
  *(a4 + 6) = v18;
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 1);
  }

  v24 = *(a2 + 23);
  if (v24 >= 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if (v24 >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = *(a2 + 1);
  }

  if (v26 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v26;
  }

  v28 = memcmp(v22, v25, v27);
  if (v28)
  {
    if ((v28 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    v29 = v23 >= v26;
    if (v23 == v26)
    {
      v29 = *(a3 + 6) >= *(a2 + 6);
    }

    if (v29)
    {
      return result;
    }
  }

  v30 = *(a2 + 2);
  v31 = *a2;
  v32 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v32;
  *a3 = v31;
  *(a3 + 2) = v30;
  LODWORD(v30) = *(a2 + 6);
  *(a2 + 6) = *(a3 + 6);
  *(a3 + 6) = v30;
  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v34 = a2;
  }

  else
  {
    v34 = *a2;
  }

  if (v33 >= 0)
  {
    v35 = *(a2 + 23);
  }

  else
  {
    v35 = *(a2 + 1);
  }

  v36 = *(a1 + 23);
  if (v36 >= 0)
  {
    v37 = a1;
  }

  else
  {
    v37 = *a1;
  }

  if (v36 >= 0)
  {
    v38 = *(a1 + 23);
  }

  else
  {
    v38 = *(a1 + 8);
  }

  if (v38 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v38;
  }

  v40 = memcmp(v34, v37, v39);
  if (v40)
  {
    if ((v40 & 0x80000000) == 0)
    {
      return result;
    }

LABEL_64:
    v42 = *(a1 + 16);
    result = *a1;
    v43 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v43;
    *a2 = result;
    *(a2 + 2) = v42;
    LODWORD(v42) = *(a1 + 24);
    *(a1 + 24) = *(a2 + 6);
    *(a2 + 6) = v42;
    return result;
  }

  v41 = v35 >= v38;
  if (v35 == v38)
  {
    v41 = *(a2 + 6) >= *(a1 + 24);
  }

  if (!v41)
  {
    goto LABEL_64;
  }

  return result;
}

uint64_t sub_B95E4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  sub_B93D4(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 1);
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  result = memcmp(v11, v14, v16);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    v18 = v12 >= v15;
    if (v12 == v15)
    {
      v18 = *(a5 + 6) >= *(a4 + 6);
    }

    if (v18)
    {
      return result;
    }
  }

  v19 = *(a4 + 2);
  v20 = *a4;
  v21 = a5[2];
  *a4 = *a5;
  *(a4 + 2) = v21;
  *a5 = v20;
  a5[2] = v19;
  LODWORD(v19) = *(a4 + 6);
  *(a4 + 6) = *(a5 + 6);
  *(a5 + 6) = v19;
  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 1);
  }

  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
  }

  if (v27 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  result = memcmp(v23, v26, v28);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    v29 = v24 >= v27;
    if (v24 == v27)
    {
      v29 = *(a4 + 6) >= *(a3 + 24);
    }

    if (v29)
    {
      return result;
    }
  }

  v30 = *(a3 + 16);
  v31 = *a3;
  v32 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 16) = v32;
  *a4 = v31;
  *(a4 + 2) = v30;
  LODWORD(v30) = *(a3 + 24);
  *(a3 + 24) = *(a4 + 6);
  *(a4 + 6) = v30;
  v33 = *(a3 + 23);
  if (v33 >= 0)
  {
    v34 = a3;
  }

  else
  {
    v34 = *a3;
  }

  if (v33 >= 0)
  {
    v35 = *(a3 + 23);
  }

  else
  {
    v35 = *(a3 + 8);
  }

  v36 = *(a2 + 23);
  if (v36 >= 0)
  {
    v37 = a2;
  }

  else
  {
    v37 = *a2;
  }

  if (v36 >= 0)
  {
    v38 = *(a2 + 23);
  }

  else
  {
    v38 = *(a2 + 8);
  }

  if (v38 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v38;
  }

  result = memcmp(v34, v37, v39);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    v40 = v35 >= v38;
    if (v35 == v38)
    {
      v40 = *(a3 + 24) >= *(a2 + 24);
    }

    if (v40)
    {
      return result;
    }
  }

  v41 = *(a2 + 16);
  v42 = *a2;
  v43 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v43;
  *a3 = v42;
  *(a3 + 16) = v41;
  LODWORD(v41) = *(a2 + 24);
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 24) = v41;
  v44 = *(a2 + 23);
  if (v44 >= 0)
  {
    v45 = a2;
  }

  else
  {
    v45 = *a2;
  }

  if (v44 >= 0)
  {
    v46 = *(a2 + 23);
  }

  else
  {
    v46 = *(a2 + 8);
  }

  v47 = *(a1 + 23);
  if (v47 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v47 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v49;
  }

  result = memcmp(v45, v48, v50);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_81;
  }

  v54 = v46 >= v49;
  if (v46 == v49)
  {
    v54 = *(a2 + 24) >= *(a1 + 24);
  }

  if (!v54)
  {
LABEL_81:
    v51 = *(a1 + 16);
    v52 = *a1;
    v53 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v53;
    *a2 = v52;
    *(a2 + 16) = v51;
    LODWORD(v51) = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v51;
  }

  return result;
}

void sub_B987C(char *a1, char *a2)
{
  if (a1 != a2)
  {
    v33 = v2;
    v34 = v3;
    v6 = (a1 + 32);
    if (a1 + 32 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v6;
        v10 = *(v9 + 55);
        if (v10 >= 0)
        {
          v11 = v6;
        }

        else
        {
          v11 = v9[4];
        }

        if (v10 >= 0)
        {
          v12 = *(v9 + 55);
        }

        else
        {
          v12 = v9[5];
        }

        v13 = *(v9 + 23);
        if (v13 >= 0)
        {
          v14 = v9;
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
          v15 = v9[1];
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
            goto LABEL_28;
          }
        }

        else
        {
          v18 = v12 >= v15;
          if (v12 == v15)
          {
            v18 = *(v9 + 14) >= *(v9 + 6);
          }

          if (!v18)
          {
LABEL_28:
            v31 = v8[2];
            v30 = *v8;
            v8[1] = 0;
            v8[2] = 0;
            *v8 = 0;
            v32 = *(v9 + 14);
            if (SHIBYTE(v31) >= 0)
            {
              v19 = &v30;
            }

            else
            {
              v19 = v30;
            }

            if (SHIBYTE(v31) >= 0)
            {
              v20 = HIBYTE(v31);
            }

            else
            {
              v20 = *(&v30 + 1);
            }

            for (i = v7; ; i -= 32)
            {
              v22 = &a1[i];
              if (a1[i + 55] < 0)
              {
                operator delete(*(v22 + 4));
              }

              *(v22 + 2) = *v22;
              *(v22 + 6) = *(v22 + 2);
              v22[23] = 0;
              *v22 = 0;
              *(v22 + 14) = *(v22 + 6);
              if (!i)
              {
                break;
              }

              v23 = a1[i - 9];
              if (v23 >= 0)
              {
                v24 = &a1[i - 32];
              }

              else
              {
                v24 = *&a1[i - 32];
              }

              if (v23 >= 0)
              {
                v25 = a1[i - 9];
              }

              else
              {
                v25 = *&a1[i - 24];
              }

              if (v25 >= v20)
              {
                v26 = v20;
              }

              else
              {
                v26 = v25;
              }

              v27 = memcmp(v19, v24, v26);
              if (v27)
              {
                if ((v27 & 0x80000000) == 0)
                {
                  goto LABEL_56;
                }
              }

              else
              {
                v28 = v20 >= v25;
                if (v20 == v25)
                {
                  v28 = v32 >= *&a1[i - 8];
                }

                if (v28)
                {
LABEL_56:
                  v29 = &a1[i];
                  if (a1[i + 23] < 0)
                  {
                    goto LABEL_4;
                  }

                  goto LABEL_5;
                }
              }
            }

            v29 = a1;
            if (a1[23] < 0)
            {
LABEL_4:
              operator delete(*v29);
            }

LABEL_5:
            *v29 = v30;
            *(v29 + 2) = v31;
            *(v29 + 6) = v32;
          }
        }

        v6 = v8 + 4;
        v7 += 32;
      }

      while (v8 + 4 != a2);
    }
  }
}

void sub_B9A80(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v32 = v2;
    v33 = v3;
    v5 = a1;
    v6 = a1 + 2;
    if (a1 + 2 != a2)
    {
      for (i = a1 + 14; ; i += 8)
      {
        v8 = v5;
        v5 = v6;
        v9 = *(v8 + 55);
        v10 = v9 >= 0 ? v6 : *(v8 + 4);
        v11 = v9 >= 0 ? *(v8 + 55) : *(v8 + 5);
        v12 = *(v8 + 23);
        v13 = v12 >= 0 ? v8 : *v8;
        v14 = v12 >= 0 ? *(v8 + 23) : *(v8 + 1);
        v15 = v14 >= v11 ? v11 : v14;
        v16 = memcmp(v10, v13, v15);
        if (v16)
        {
          break;
        }

        v17 = v11 >= v14;
        if (v11 == v14)
        {
          v17 = *(v8 + 14) >= *(v8 + 6);
        }

        if (!v17)
        {
          goto LABEL_29;
        }

LABEL_7:
        v6 = v5 + 2;
        if (v5 + 2 == a2)
        {
          return;
        }
      }

      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_29:
      v30 = *(v5 + 2);
      v29 = *v5;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = 0;
      v31 = *(v8 + 14);
      if (v30 >= 0)
      {
        v18 = &v29;
      }

      else
      {
        v18 = v29;
      }

      if (v30 >= 0)
      {
        v19 = HIBYTE(v30);
      }

      else
      {
        v19 = *(&v29 + 1);
      }

      for (j = i; ; j -= 8)
      {
        v21 = (j - 6);
        if (*(j - 1) < 0)
        {
          operator delete(*v21);
        }

        v22 = (j - 14);
        *v21 = *(j - 14);
        *(j - 1) = *(j - 5);
        *(j - 33) = 0;
        *(j - 56) = 0;
        *j = *(j - 8);
        v23 = *(j - 65);
        if (v23 >= 0)
        {
          v24 = j - 22;
        }

        else
        {
          v24 = *(j - 11);
        }

        if (v23 >= 0)
        {
          v25 = *(j - 65);
        }

        else
        {
          v25 = *(j - 10);
        }

        if (v25 >= v19)
        {
          v26 = v19;
        }

        else
        {
          v26 = v25;
        }

        v27 = memcmp(v18, v24, v26);
        if (v27)
        {
          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v28 = v19 >= v25;
          if (v19 == v25)
          {
            v28 = v31 >= *(j - 16);
          }

          if (v28)
          {
LABEL_4:
            if (*(j - 33) < 0)
            {
              operator delete(*v22);
            }

            *v22 = v29;
            *(j - 5) = v30;
            *(j - 8) = v31;
            goto LABEL_7;
          }
        }
      }
    }
  }
}

const void **sub_B9C68(uint64_t a1, _OWORD *a2)
{
  v2 = a2;
  v58 = *(a1 + 16);
  v4 = v58;
  *__p = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = *(a1 + 24);
  v59 = v5;
  v6 = HIBYTE(v4);
  if (v6 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = *(a2 - 4);
  v10 = *(a2 - 9);
  v11 = *(a2 - 3);
  if (v10 >= 0)
  {
    v12 = a2 - 2;
  }

  else
  {
    v12 = *(a2 - 4);
  }

  if (v10 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (v13 >= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v7, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_40:
    for (i = (a1 + 32); ; i += 4)
    {
      v24 = *(i + 23);
      if (v24 >= 0)
      {
        v25 = i;
      }

      else
      {
        v25 = *i;
      }

      if (v24 >= 0)
      {
        v26 = *(i + 23);
      }

      else
      {
        v26 = i[1];
      }

      if (v26 >= v8)
      {
        v27 = v8;
      }

      else
      {
        v27 = v26;
      }

      v28 = memcmp(v7, v25, v27);
      if (v28)
      {
        if (v28 < 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v29 = v8 >= v26;
        if (v8 == v26)
        {
          v29 = v5 >= *(i + 6);
        }

        if (!v29)
        {
          goto LABEL_58;
        }
      }
    }
  }

  v23 = v8 >= v13;
  if (v8 == v13)
  {
    v23 = v5 >= *(v2 - 2);
  }

  if (!v23)
  {
    goto LABEL_40;
  }

LABEL_18:
  for (i = (a1 + 32); i < v2; i += 4)
  {
    v17 = *(i + 23);
    if (v17 >= 0)
    {
      v18 = i;
    }

    else
    {
      v18 = *i;
    }

    if (v17 >= 0)
    {
      v19 = *(i + 23);
    }

    else
    {
      v19 = i[1];
    }

    if (v19 >= v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = v19;
    }

    v21 = memcmp(v7, v18, v20);
    if (v21)
    {
      if (v21 < 0)
      {
        break;
      }
    }

    else
    {
      v22 = v8 >= v19;
      if (v8 == v19)
      {
        v22 = v5 >= *(i + 6);
      }

      if (!v22)
      {
        break;
      }
    }
  }

LABEL_58:
  if (i < v2)
  {
    for (v2 -= 2; ; v11 = *(v2 + 1))
    {
      if (v10 >= 0)
      {
        v31 = v2;
      }

      else
      {
        v31 = v9;
      }

      if (v10 >= 0)
      {
        v32 = v10;
      }

      else
      {
        v32 = v11;
      }

      if (v32 >= v8)
      {
        v33 = v8;
      }

      else
      {
        v33 = v32;
      }

      v34 = memcmp(v7, v31, v33);
      if (v34)
      {
        if ((v34 & 0x80000000) == 0)
        {
          break;
        }
      }

      else
      {
        v35 = v8 >= v32;
        if (v8 == v32)
        {
          v35 = v5 >= *(v2 + 6);
        }

        if (v35)
        {
          break;
        }
      }

      v30 = *(v2 - 4);
      v2 -= 2;
      v9 = v30;
      v10 = *(v2 + 23);
    }
  }

  while (i < v2)
  {
    v36 = *i;
    v61 = i[2];
    v60 = v36;
    v37 = *v2;
    i[2] = *(v2 + 2);
    *i = v37;
    v38 = v60;
    *(v2 + 2) = v61;
    *v2 = v38;
    v39 = *(i + 6);
    *(i + 6) = *(v2 + 6);
    *(v2 + 6) = v39;
    if (SHIBYTE(v58) >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = __p[0];
    }

    if (SHIBYTE(v58) >= 0)
    {
      v41 = HIBYTE(v58);
    }

    else
    {
      v41 = __p[1];
    }

    v42 = v59;
    do
    {
      while (1)
      {
        while (1)
        {
          i += 4;
          v43 = *(i + 23);
          v44 = v43 >= 0 ? i : *i;
          v45 = v43 >= 0 ? *(i + 23) : i[1];
          v46 = (v45 >= v41 ? v41 : v45);
          v47 = memcmp(v40, v44, v46);
          if (!v47)
          {
            break;
          }

          if (v47 < 0)
          {
            goto LABEL_103;
          }
        }

        if (v41 != v45)
        {
          break;
        }

        if (v42 < *(i + 6))
        {
          goto LABEL_103;
        }
      }
    }

    while (v41 >= v45);
    do
    {
      while (1)
      {
LABEL_103:
        while (1)
        {
          v2 -= 2;
          v48 = *(v2 + 23);
          v49 = v48 >= 0 ? v2 : *v2;
          v50 = v48 >= 0 ? *(v2 + 23) : *(v2 + 1);
          v51 = (v50 >= v41 ? v41 : v50);
          v52 = memcmp(v40, v49, v51);
          if (!v52)
          {
            break;
          }

          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_78;
          }
        }

        if (v41 != v50)
        {
          break;
        }

        if (v42 >= *(v2 + 6))
        {
          goto LABEL_78;
        }
      }
    }

    while (v41 < v50);
LABEL_78:
    ;
  }

  v53 = (i - 4);
  if (i - 4 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v54 = *v53;
    *(a1 + 16) = *(i - 2);
    *a1 = v54;
    *(i - 9) = 0;
    *(i - 32) = 0;
    *(a1 + 24) = *(i - 2);
  }

  if (*(i - 9) < 0)
  {
    operator delete(*v53);
  }

  v55 = *__p;
  *(i - 2) = v58;
  *v53 = v55;
  HIBYTE(v58) = 0;
  LOBYTE(__p[0]) = 0;
  *(i - 2) = v59;
  if (SHIBYTE(v58) < 0)
  {
    operator delete(__p[0]);
  }

  return i;
}

unint64_t sub_B9FF4(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v53 = *(a1 + 16);
  v5 = v53;
  *__p = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = HIBYTE(v5);
  if (v6 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = *(a1 + 24);
  v54 = v8;
  if (v6 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = __p[1];
  }

  while (1)
  {
    v10 = *(a1 + v4 + 55);
    v11 = v10 >= 0 ? (a1 + v4 + 32) : *(a1 + v4 + 32);
    v12 = v10 >= 0 ? *(a1 + v4 + 55) : *(a1 + v4 + 40);
    v13 = (v9 >= v12 ? v12 : v9);
    v14 = memcmp(v11, v7, v13);
    if (!v14)
    {
      break;
    }

    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_8:
    v4 += 32;
  }

  v15 = v12 >= v9;
  if (v12 == v9)
  {
    v15 = *(a1 + v4 + 56) >= v8;
  }

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_23:
  v16 = a1 + v4 + 32;
  if (v4)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          a2 -= 32;
          v17 = *(a2 + 23);
          v18 = v17 >= 0 ? a2 : *a2;
          v19 = v17 >= 0 ? *(a2 + 23) : *(a2 + 8);
          v20 = (v9 >= v19 ? v19 : v9);
          v21 = memcmp(v18, v7, v20);
          if (!v21)
          {
            break;
          }

          if (v21 < 0)
          {
            goto LABEL_60;
          }
        }

        if (v19 != v9)
        {
          break;
        }

        if (*(a2 + 24) < v8)
        {
          goto LABEL_60;
        }
      }
    }

    while (v19 >= v9);
  }

  else
  {
    do
    {
      if (v16 >= a2)
      {
        break;
      }

      while (1)
      {
        a2 -= 32;
        v22 = *(a2 + 23);
        v23 = v22 >= 0 ? a2 : *a2;
        v24 = v22 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v25 = (v9 >= v24 ? v24 : v9);
        v26 = memcmp(v23, v7, v25);
        if (v26)
        {
          break;
        }

        v27 = v24 >= v9;
        if (v24 == v9)
        {
          v27 = *(a2 + 24) >= v8;
        }

        if (!v27 || v16 >= a2)
        {
          goto LABEL_60;
        }
      }
    }

    while ((v26 & 0x80000000) == 0);
  }

LABEL_60:
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
      v31 = *v29;
      v56 = *(v29 + 16);
      v55 = v31;
      v32 = *v30;
      *(v29 + 16) = *(v30 + 16);
      *v29 = v32;
      v33 = v55;
      *(v30 + 16) = v56;
      *v30 = v33;
      v34 = *(v29 + 24);
      *(v29 + 24) = *(v30 + 24);
      *(v30 + 24) = v34;
      if (v53 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      if (v53 >= 0)
      {
        v36 = HIBYTE(v53);
      }

      else
      {
        v36 = __p[1];
      }

      v37 = v54;
      do
      {
        while (1)
        {
          while (1)
          {
            v29 += 32;
            v38 = *(v29 + 23);
            v39 = v38 >= 0 ? v29 : *v29;
            v40 = v38 >= 0 ? *(v29 + 23) : *(v29 + 8);
            v41 = (v36 >= v40 ? v40 : v36);
            v42 = memcmp(v39, v35, v41);
            if (!v42)
            {
              break;
            }

            if ((v42 & 0x80000000) == 0)
            {
              goto LABEL_87;
            }
          }

          if (v40 != v36)
          {
            break;
          }

          if (*(v29 + 24) >= v37)
          {
            goto LABEL_87;
          }
        }
      }

      while (v40 < v36);
      do
      {
        while (1)
        {
LABEL_87:
          while (1)
          {
            v30 -= 32;
            v43 = *(v30 + 23);
            v44 = v43 >= 0 ? v30 : *v30;
            v45 = v43 >= 0 ? *(v30 + 23) : *(v30 + 8);
            v46 = (v36 >= v45 ? v45 : v36);
            v47 = memcmp(v44, v35, v46);
            if (!v47)
            {
              break;
            }

            if (v47 < 0)
            {
              goto LABEL_62;
            }
          }

          if (v45 != v36)
          {
            break;
          }

          if (*(v30 + 24) < v37)
          {
            goto LABEL_62;
          }
        }
      }

      while (v45 >= v36);
LABEL_62:
      ;
    }

    while (v29 < v30);
  }

  v48 = (v29 - 32);
  if (v29 - 32 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v49 = *v48;
    *(a1 + 16) = *(v29 - 16);
    *a1 = v49;
    *(v29 - 9) = 0;
    *(v29 - 32) = 0;
    *(a1 + 24) = *(v29 - 8);
  }

  if (*(v29 - 9) < 0)
  {
    operator delete(*v48);
  }

  v50 = *__p;
  *(v29 - 16) = v53;
  *v48 = v50;
  HIBYTE(v53) = 0;
  LOBYTE(__p[0]) = 0;
  *(v29 - 8) = v54;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__p[0]);
  }

  return v29 - 32;
}

BOOL sub_BA34C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        sub_B90B4(a1, (a1 + 32), (a2 - 32));
        return 1;
      case 4:
        sub_B93D4(a1, (a1 + 32), (a1 + 64), (a2 - 32));
        return 1;
      case 5:
        sub_B95E4(a1, a1 + 32, a1 + 64, (a1 + 96), (a2 - 32));
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v5 = a2 - 32;
      v6 = *(a2 - 9);
      if (v6 >= 0)
      {
        v7 = (a2 - 32);
      }

      else
      {
        v7 = *(a2 - 32);
      }

      if (v6 >= 0)
      {
        v8 = *(a2 - 9);
      }

      else
      {
        v8 = *(a2 - 24);
      }

      v9 = *(a1 + 23);
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v9 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (v11 >= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = v11;
      }

      v13 = memcmp(v7, v10, v12);
      if (v13)
      {
        if ((v13 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else
      {
        v42 = v8 >= v11;
        if (v8 == v11)
        {
          v42 = *(a2 - 8) >= *(a1 + 24);
        }

        if (v42)
        {
          return 1;
        }
      }

      v43 = *(a1 + 16);
      v44 = *a1;
      v45 = *(v5 + 16);
      *a1 = *v5;
      *(a1 + 16) = v45;
      *v5 = v44;
      *(v5 + 16) = v43;
      LODWORD(v43) = *(a1 + 24);
      *(a1 + 24) = *(a2 - 8);
      *(a2 - 8) = v43;
      return 1;
    }
  }

  v14 = a1 + 64;
  sub_B90B4(a1, (a1 + 32), (a1 + 64));
  v15 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v19 = *(v15 + 23);
    v20 = v19 >= 0 ? v15 : *v15;
    v21 = v19 >= 0 ? *(v15 + 23) : *(v15 + 8);
    v22 = *(v14 + 23);
    v23 = v22 >= 0 ? v14 : *v14;
    v24 = v22 >= 0 ? *(v14 + 23) : *(v14 + 8);
    v25 = v24 >= v21 ? v21 : v24;
    v26 = memcmp(v20, v23, v25);
    if (!v26)
    {
      break;
    }

    if (v26 < 0)
    {
      goto LABEL_53;
    }

LABEL_31:
    v14 = v15;
    v16 += 32;
    v15 += 32;
    if (v15 == a2)
    {
      return 1;
    }
  }

  v27 = v21 >= v24;
  if (v21 == v24)
  {
    v27 = *(v15 + 24) >= *(v14 + 24);
  }

  if (v27)
  {
    goto LABEL_31;
  }

LABEL_53:
  v28 = 0;
  v47 = *v15;
  v48 = *(v15 + 16);
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *v15 = 0;
  v49 = *(v15 + 24);
  for (i = v16; ; i -= 32)
  {
    v30 = a1 + i;
    if (v28 < 0)
    {
      operator delete(*(v30 + 96));
    }

    *(v30 + 96) = *(v30 + 64);
    *(v30 + 112) = *(v30 + 80);
    *(v30 + 87) = 0;
    *(v30 + 64) = 0;
    *(v30 + 120) = *(v30 + 88);
    if (i == -64)
    {
      break;
    }

    v31 = a1 + i;
    if (v48 >= 0)
    {
      v32 = &v47;
    }

    else
    {
      v32 = v47;
    }

    if (v48 >= 0)
    {
      v33 = HIBYTE(v48);
    }

    else
    {
      v33 = *(&v47 + 1);
    }

    v36 = *(v31 + 32);
    v34 = v31 + 32;
    v35 = v36;
    v37 = *(v34 + 23);
    if (v37 >= 0)
    {
      v38 = v34;
    }

    else
    {
      v38 = v35;
    }

    if (v37 >= 0)
    {
      v39 = *(v34 + 23);
    }

    else
    {
      v39 = *(v34 + 8);
    }

    if (v39 >= v33)
    {
      v40 = v33;
    }

    else
    {
      v40 = v39;
    }

    v41 = memcmp(v32, v38, v40);
    if (v41)
    {
      if ((v41 & 0x80000000) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (v33 == v39)
    {
      if (v49 >= *(a1 + i + 56))
      {
        goto LABEL_81;
      }
    }

    else if (v33 >= v39)
    {
      v14 = a1 + i + 64;
      goto LABEL_81;
    }

    v14 -= 32;
    v28 = *(v30 + 87);
  }

  v14 = a1;
LABEL_81:
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  v18 = v47;
  *(v14 + 16) = v48;
  *v14 = v18;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  *(v14 + 24) = v49;
  if (++v17 != 8)
  {
    goto LABEL_31;
  }

  return v15 + 32 == a2;
}

uint64_t sub_BA6DC(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

__n128 sub_BA76C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v56 = v4;
  v57 = v5;
  v7 = a4;
  v9 = v6 >> 1;
  if ((v6 >> 1) < (a4 - a1) >> 5)
  {
    return result;
  }

  v11 = (a4 - a1) >> 4;
  v12 = v11 + 1;
  v13 = (a1 + 32 * (v11 + 1));
  v14 = v11 + 2;
  if (v11 + 2 >= a3)
  {
    goto LABEL_22;
  }

  v15 = v13[1].n128_i8[7];
  if (v15 >= 0)
  {
    v16 = (a1 + 32 * (v11 + 1));
  }

  else
  {
    v16 = v13->n128_u64[0];
  }

  if (v15 >= 0)
  {
    v17 = v13[1].n128_u8[7];
  }

  else
  {
    v17 = v13->n128_u64[1];
  }

  v18 = v13[3].n128_i8[7];
  if (v18 >= 0)
  {
    v19 = v13 + 2;
  }

  else
  {
    v19 = v13[2].n128_u64[0];
  }

  if (v18 >= 0)
  {
    v20 = v13[3].n128_u8[7];
  }

  else
  {
    v20 = v13[2].n128_u64[1];
  }

  if (v20 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v20;
  }

  v22 = memcmp(v16, v19, v21);
  if (!v22)
  {
    if (v17 == v20)
    {
      if (v13[1].n128_u32[2] >= v13[3].n128_u32[2])
      {
        goto LABEL_22;
      }
    }

    else if (v17 >= v20)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v22 < 0)
  {
LABEL_21:
    v13 += 2;
    v12 = v14;
  }

LABEL_22:
  v23 = v13[1].n128_i8[7];
  if (v23 >= 0)
  {
    v24 = v13;
  }

  else
  {
    v24 = v13->n128_u64[0];
  }

  if (v23 >= 0)
  {
    v25 = v13[1].n128_u8[7];
  }

  else
  {
    v25 = v13->n128_u64[1];
  }

  v26 = v7[1].n128_i8[7];
  if (v26 >= 0)
  {
    v27 = v7;
  }

  else
  {
    v27 = v7->n128_u64[0];
  }

  if (v26 >= 0)
  {
    v28 = v7[1].n128_u8[7];
  }

  else
  {
    v28 = v7->n128_u64[1];
  }

  if (v28 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v24, v27, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v25 == v28)
  {
    if (v13[1].n128_u32[2] < v7[1].n128_u32[2])
    {
      return result;
    }
  }

  else if (v25 < v28)
  {
    return result;
  }

  v32 = 0;
  v53 = *v7;
  v54 = v7[1].n128_i64[0];
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  v7->n128_u64[0] = 0;
  v55 = v7[1].n128_u32[2];
  while (1)
  {
    if (v32 < 0)
    {
      operator delete(v7->n128_u64[0]);
    }

    v41 = *v13;
    v7[1].n128_u64[0] = v13[1].n128_u64[0];
    *v7 = v41;
    v13[1].n128_u8[7] = 0;
    v13->n128_u8[0] = 0;
    v7[1].n128_u32[2] = v13[1].n128_u32[2];
    if (v9 < v12)
    {
      break;
    }

    v42 = 2 * v12;
    v12 = (2 * v12) | 1;
    v33 = (a1 + 32 * v12);
    v43 = v42 + 2;
    if (v42 + 2 < a3)
    {
      v44 = v33[1].n128_i8[7];
      if (v44 >= 0)
      {
        v45 = (a1 + 32 * v12);
      }

      else
      {
        v45 = v33->n128_u64[0];
      }

      if (v44 >= 0)
      {
        v46 = v33[1].n128_u8[7];
      }

      else
      {
        v46 = v33->n128_u64[1];
      }

      v47 = v33[3].n128_i8[7];
      if (v47 >= 0)
      {
        v48 = v33 + 2;
      }

      else
      {
        v48 = v33[2].n128_u64[0];
      }

      if (v47 >= 0)
      {
        v49 = v33[3].n128_u8[7];
      }

      else
      {
        v49 = v33[2].n128_u64[1];
      }

      if (v49 >= v46)
      {
        v50 = v46;
      }

      else
      {
        v50 = v49;
      }

      v51 = memcmp(v45, v48, v50);
      if (v51)
      {
        if (v51 < 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v52 = v46 >= v49;
        if (v46 == v49)
        {
          v52 = v33[1].n128_u32[2] >= v33[3].n128_u32[2];
        }

        if (!v52)
        {
LABEL_40:
          v33 += 2;
          v12 = v43;
        }
      }
    }

    v34 = v33[1].n128_i8[7];
    if (v34 >= 0)
    {
      v35 = v33;
    }

    else
    {
      v35 = v33->n128_u64[0];
    }

    if (v34 >= 0)
    {
      v36 = v33[1].n128_u8[7];
    }

    else
    {
      v36 = v33->n128_u64[1];
    }

    if (v54 >= 0)
    {
      v37 = &v53;
    }

    else
    {
      v37 = v53.n128_u64[0];
    }

    if (v54 >= 0)
    {
      v38 = HIBYTE(v54);
    }

    else
    {
      v38 = v53.n128_u64[1];
    }

    if (v38 >= v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = v38;
    }

    v40 = memcmp(v35, v37, v39);
    if (v40)
    {
      if (v40 < 0)
      {
        break;
      }
    }

    else if (v36 == v38)
    {
      if (v33[1].n128_u32[2] < v55)
      {
        break;
      }
    }

    else if (v36 < v38)
    {
      break;
    }

    v32 = v13[1].n128_i8[7];
    v7 = v13;
    v13 = v33;
  }

  if (v13[1].n128_i8[7] < 0)
  {
    operator delete(v13->n128_u64[0]);
  }

  result = v53;
  v13[1].n128_u64[0] = v54;
  *v13 = result;
  v13[1].n128_u32[2] = v55;
  return result;
}

void sub_BAA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = *a1;
    *v17 = *(a1 + 8);
    *&v17[7] = *(a1 + 15);
    v6 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v7 = *(a1 + 24);
    v10 = sub_BABF8(a1, a3, a4);
    v11 = (a2 - 32);
    v12 = *(v10 + 23);
    if (v10 == (a2 - 32))
    {
      if (v12 < 0)
      {
        v16 = v10;
        operator delete(*v10);
        v10 = v16;
      }

      *v10 = v5;
      *(v10 + 1) = *v17;
      *(v10 + 15) = *&v17[7];
      *(v10 + 23) = v6;
      *(v10 + 6) = v7;
    }

    else
    {
      if (v12 < 0)
      {
        v13 = v10;
        operator delete(*v10);
        v10 = v13;
      }

      v14 = *v11;
      *(v10 + 2) = *(a2 - 16);
      *v10 = v14;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v10 + 6) = *(a2 - 8);
      v15 = (v10 + 2);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v11);
      }

      *(a2 - 32) = v5;
      *(a2 - 24) = *v17;
      *(a2 - 17) = *&v17[7];
      *(a2 - 9) = v6;
      *(a2 - 8) = v7;
      sub_BAD2C(a1, v15, a3, (v15 - a1) >> 5);
    }
  }
}

void sub_BABE0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_BABF8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v9 = &a1[2 * v5];
    v7 = v9 + 2;
    v10 = 2 * v5;
    v5 = (2 * v5) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = *(v9 + 55);
      if (v12 >= 0)
      {
        v13 = v9 + 2;
      }

      else
      {
        v13 = *(v9 + 4);
      }

      if (v12 >= 0)
      {
        v14 = *(v9 + 55);
      }

      else
      {
        v14 = *(v9 + 5);
      }

      v15 = *(v9 + 87);
      if (v15 >= 0)
      {
        v16 = v9 + 4;
      }

      else
      {
        v16 = *(v9 + 8);
      }

      if (v15 >= 0)
      {
        v17 = *(v9 + 87);
      }

      else
      {
        v17 = *(v9 + 9);
      }

      if (v17 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(v13, v16, v18);
      if (v19)
      {
        if (v19 < 0)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v20 = v14 >= v17;
        if (v14 == v17)
        {
          v20 = *(v9 + 14) >= *(v9 + 22);
        }

        if (!v20)
        {
LABEL_2:
          v7 = v9 + 4;
          v5 = v11;
        }
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v8 = *v7;
    *(a1 + 2) = *(v7 + 2);
    *a1 = v8;
    *(v7 + 23) = 0;
    *v7 = 0;
    *(a1 + 6) = *(v7 + 6);
    a1 = v7;
  }

  while (v5 <= v6);
  return v7;
}

double sub_BAD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v35 = v4;
  v36 = v5;
  v9 = v6 >> 1;
  v10 = (a1 + 32 * (v6 >> 1));
  v11 = (a2 - 32);
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = (a1 + 32 * (v6 >> 1));
  }

  else
  {
    v13 = *v10;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 1);
  }

  v15 = *(a2 - 9);
  if (v15 >= 0)
  {
    v16 = (a2 - 32);
  }

  else
  {
    v16 = *(a2 - 32);
  }

  if (v15 >= 0)
  {
    v17 = *(v11 + 23);
  }

  else
  {
    v17 = *(v11 + 1);
  }

  if (v17 >= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v17;
  }

  v19 = memcmp(v13, v16, v18);
  if (v19)
  {
    if ((v19 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    v21 = v14 >= v17;
    if (v14 == v17)
    {
      v21 = *(v10 + 6) >= *(a2 - 8);
    }

    if (v21)
    {
      return result;
    }
  }

  v33 = *(v11 + 2);
  v32 = *v11;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *v11 = 0;
  v34 = *(a2 - 8);
  if (v33 >= 0)
  {
    v22 = &v32;
  }

  else
  {
    v22 = v32;
  }

  if (v33 >= 0)
  {
    v23 = HIBYTE(v33);
  }

  else
  {
    v23 = *(&v32 + 1);
  }

  while (1)
  {
    v24 = v10;
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    v25 = *v10;
    *(v11 + 2) = *(v10 + 2);
    *v11 = v25;
    *(v10 + 23) = 0;
    *v10 = 0;
    *(v11 + 6) = *(v10 + 6);
    if (!v9)
    {
      break;
    }

    v9 = (v9 - 1) >> 1;
    v10 = (a1 + 32 * v9);
    v26 = *(v10 + 23);
    if (v26 >= 0)
    {
      v27 = (a1 + 32 * v9);
    }

    else
    {
      v27 = *v10;
    }

    if (v26 >= 0)
    {
      v28 = *(v10 + 23);
    }

    else
    {
      v28 = *(v10 + 1);
    }

    if (v23 >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v23;
    }

    v30 = memcmp(v27, v22, v29);
    if (v30)
    {
      v11 = v24;
      if ((v30 & 0x80000000) == 0)
      {
        break;
      }
    }

    else
    {
      v31 = v28 >= v23;
      if (v28 == v23)
      {
        v11 = v24;
        if (*(v10 + 6) >= v34)
        {
          break;
        }
      }

      else
      {
        v11 = v24;
        if (v31)
        {
          break;
        }
      }
    }
  }

  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  result = *&v32;
  *v24 = v32;
  *(v24 + 2) = v33;
  *(v24 + 6) = v34;
  return result;
}

const void **sub_BAEF4(const void **a1, const void **a2, void *a3)
{
  v4 = a1;
  if (a1 == a2)
  {
    return v4;
  }

  v6 = a3[1];
  v7 = a3[2];
  v8 = 16 * (v7 - v6) - 1;
  if (v7 == v6)
  {
    v8 = 0;
  }

  if (v8 == a3[5] + a3[4])
  {
    sub_BB11C(a3);
    v6 = a3[1];
    v7 = a3[2];
  }

  if (v7 == v6)
  {
    v10 = 0;
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_325C(v10, *v4, v4[1]);
    goto LABEL_11;
  }

  v9 = a3[5] + a3[4];
  v10 = *(v6 + ((v9 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v9 & 0x7F);
  if (*(v4 + 23) < 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v11 = *v4;
  *(v10 + 16) = v4[2];
  *v10 = v11;
LABEL_11:
  *(v10 + 24) = *(v4 + 6);
  v12 = a3[5] + 1;
  a3[5] = v12;
  v13 = v4 + 4;
  if (v4 + 4 != a2)
  {
    v14 = v4;
    do
    {
      v15 = v13;
      v16 = *(v4 + 23);
      if (v16 >= 0)
      {
        v17 = *(v4 + 23);
      }

      else
      {
        v17 = v4[1];
      }

      v18 = *(v15 + 23);
      v19 = v18;
      if (v18 < 0)
      {
        v18 = v15[1];
      }

      if (v17 == v18)
      {
        if (v16 >= 0)
        {
          v20 = v4;
        }

        else
        {
          v20 = *v4;
        }

        if (v19 >= 0)
        {
          v21 = v15;
        }

        else
        {
          v21 = *v15;
        }

        if (!memcmp(v20, v21, v17) && *(v4 + 6) == *(v15 + 6))
        {
          goto LABEL_15;
        }

        v23 = v14 + 7;
      }

      else
      {
        v23 = v15 + 3;
      }

      v24 = a3[1];
      v25 = a3[2];
      v26 = 16 * (v25 - v24) - 1;
      if (v25 == v24)
      {
        v26 = 0;
      }

      if (v26 == v12 + a3[4])
      {
        sub_BB11C(a3);
        v24 = a3[1];
        v25 = a3[2];
      }

      if (v25 == v24)
      {
        v28 = 0;
        if ((*(v15 + 23) & 0x80000000) == 0)
        {
LABEL_42:
          v29 = *v15;
          *(v28 + 16) = v15[2];
          *v28 = v29;
          goto LABEL_14;
        }
      }

      else
      {
        v27 = a3[5] + a3[4];
        v28 = *(v24 + ((v27 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v27 & 0x7F);
        if ((*(v15 + 23) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }
      }

      sub_325C(v28, *v15, v15[1]);
LABEL_14:
      *(v28 + 24) = *v23;
      v12 = a3[5] + 1;
      a3[5] = v12;
      v4 = v15;
LABEL_15:
      v13 = v15 + 4;
      v14 = v15;
    }

    while (v15 + 4 != a2);
  }

  return a2;
}

void *sub_BB11C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_BB48C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

BOOL sub_BB4E4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_BB558(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_BB820(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 64);
  if (v5 >= ~a2)
  {
    goto LABEL_37;
  }

  v6 = *(a1 + 72);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_37:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 56);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_37;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_37;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_9CDC0(v20, a1, v13);
      sub_9C758(a1, v20);
      v16 = v25;
      if (v25)
      {
        v17 = v22;
        if (v22)
        {
          v18 = 0;
          do
          {
            if (*(v25 + v18 + 23) < 0)
            {
              operator delete(*(v25 + v18));
            }

            v18 += 24;
            --v17;
          }

          while (v17);
          v16 = v25;
        }

        free(v16);
      }

      if (v24 < 0)
      {
        operator delete(__p);
        if ((v21 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if ((v21 & 0x80000000) == 0)
      {
        return 1;
      }

      operator delete(*&v20[4]);
      return 1;
    }
  }

  return result;
}

uint64_t sub_BB820(uint64_t a1)
{
  v2 = *(a1 + 64) - *(a1 + 56);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 72), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
    return result;
  }

  v6 = v2;
  do
  {
    v7 = v5;
    v5 >>= 1;
  }

  while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
  sub_9CDC0(v12, a1, v5);
  sub_9C758(a1, v12);
  v8 = v17;
  if (v17)
  {
    v9 = v14;
    if (v14)
    {
      v10 = 0;
      do
      {
        if (*(v17 + v10 + 23) < 0)
        {
          operator delete(*(v17 + v10));
        }

        v10 += 24;
        --v9;
      }

      while (v9);
      v8 = v17;
    }

    free(v8);
  }

  if (v16 < 0)
  {
    operator delete(__p);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_22:
    operator delete(*&v12[4]);
    goto LABEL_20;
  }

  if (v13 < 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  result = 1;
  *(a1 + 24) = 0;
  return result;
}

void sub_BB960(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  if ((v5 - v6) >= 0xAAAAAAAAAAAAAAALL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v10 = *(a1 + 104);
  if (!v6)
  {
    goto LABEL_16;
  }

  v11 = v10 + 24 * a3;
  v12 = *(a1 + 55);
  if (v12 >= 0)
  {
    v13 = *(a1 + 55);
  }

  else
  {
    v13 = *(a1 + 40);
  }

  v14 = *(v11 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v11 + 8);
  }

  if (v13 != v14 || (v12 >= 0 ? (v16 = (a1 + 32)) : (v16 = *(a1 + 32)), v15 >= 0 ? (v17 = (v10 + 24 * a3)) : (v17 = *v11), memcmp(v16, v17, v13)))
  {
LABEL_16:
    *(a1 + 64) = v5 + 1;
    v18 = v10 + 24 * a3;
    if ((*(v18 + 23) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(*v18);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    sub_325C(v18, *a2, *(a2 + 1));
    goto LABEL_22;
  }

  *(a1 + 56) = v6 - 1;
  v18 = v10 + 24 * a3;
  if (*(v18 + 23) < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (*(a2 + 23) < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v19 = *a2;
  *(v18 + 16) = *(a2 + 2);
  *v18 = v19;
LABEL_22:
  v20 = *(a1 + 104);
  v21 = v20 + 24 * a3;
  v22 = v20 + 24 * *(a1 + 72);
  *a4 = a1;
  a4[1] = v21;
  a4[2] = v22;
}

void sub_BBAF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 1640) = off_262ECC8;
    if (*(a2 + 1695) < 0)
    {
      operator delete(*(a2 + 1672));
      *(a2 + 1568) = off_262ECC8;
      if ((*(a2 + 1623) & 0x80000000) == 0)
      {
LABEL_4:
        v3 = *(a2 + 1536);
        if (!v3)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a2 + 1568) = off_262ECC8;
      if ((*(a2 + 1623) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    operator delete(*(a2 + 1600));
    v3 = *(a2 + 1536);
    if (!v3)
    {
LABEL_5:
      v4 = *(a2 + 1544);
      if (!v4)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

LABEL_10:
    if (*v3)
    {
      v5 = *v3 - 1;
      *v3 = v5;
      if (!v5)
      {
        sub_B87DC(v3);
        operator delete();
      }
    }

    *(a2 + 1536) = 0;
    v4 = *(a2 + 1544);
    if (!v4)
    {
LABEL_18:
      sub_2A22E4(a2 + 8);
      sub_B3588(a2);

      operator delete();
    }

LABEL_14:
    v6 = *(a2 + 1552);
    v7 = v4;
    if (v6 != v4)
    {
      do
      {
        v6 = sub_B3588(v6 - 1);
      }

      while (v6 != v4);
      v7 = *(a2 + 1544);
    }

    *(a2 + 1552) = v4;
    operator delete(v7);
    goto LABEL_18;
  }
}

double sub_BBC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v5 = 0;
    v6 = a2;
    do
    {
      if (*(a1 + 103) < 0)
      {
        sub_325C(v6, *(a1 + 80), *(a1 + 88));
      }

      else
      {
        v7 = *(a1 + 80);
        *(v6 + 16) = *(a1 + 96);
        *v6 = v7;
      }

      result = *(a1 + 104);
      *(v6 + 24) = result;
      v6 += 32;
      v5 -= 32;
    }

    while (v6 != a3);
  }

  return result;
}

void sub_BBCE0(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 32;
      v3 -= 32;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t sub_BBD2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = sub_BBDB4(a2 + v6, (v5 + 80));
      v6 += 48;
    }

    while (a2 + v6 != a3);
  }

  return result;
}

void sub_BBD84(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    sub_21E10F4(v1, v1 + v2);
  }

  __cxa_rethrow();
}

uint64_t sub_BBDB4(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v10 = *(a2 + 3);
    v9 = *(a2 + 4);
    v7 = v9 - v10;
    if (v9 == v10)
    {
      return a1;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_BBE8C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_21E1144(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_BBEB0(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_64;
  }

  v5 = (a1 + 8);
  do
  {
    v6 = *(v4 + 55);
    v10 = v6;
    v11 = v4[5];
    if ((v6 & 0x80u) == 0)
    {
      v12 = *(v4 + 55);
    }

    else
    {
      v12 = v4[5];
    }

    v13 = *(a2 + 23);
    v14 = v13;
    v15 = a2[1];
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(a2 + 23);
    }

    else
    {
      v16 = a2[1];
    }

    if (v16 >= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      v18 = 0;
      while (1)
      {
        if (*(v4 + 55) >= 0)
        {
          v19 = v4 + 4;
        }

        else
        {
          v19 = v4[4];
        }

        v20 = __tolower(*(v19 + v18));
        if (*(a2 + 23) >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        v22 = __tolower(*(v21 + v18));
        if (v20 > v22)
        {
          v5 = v4;
          goto LABEL_12;
        }

        if (v20 < v22)
        {
          break;
        }

        if (v17 == ++v18)
        {
          v6 = *(v4 + 55);
          v11 = v4[5];
          v13 = *(a2 + 23);
          v15 = a2[1];
          v14 = *(a2 + 23);
          v10 = *(v4 + 55);
          goto LABEL_3;
        }
      }

      ++v4;
    }

    else
    {
LABEL_3:
      if (v10 < 0)
      {
        v6 = v11;
      }

      if (v14 >= 0)
      {
        v7 = v13;
      }

      else
      {
        v7 = v15;
      }

      v8 = v6 >= v7;
      v9 = v6 < v7;
      if (v8)
      {
        v5 = v4;
      }

      v4 += v9;
    }

LABEL_12:
    v4 = *v4;
  }

  while (v4);
  if (v5 == v3)
  {
    goto LABEL_64;
  }

  v23 = *(a2 + 23);
  v24 = v23;
  v25 = a2[1];
  if ((v23 & 0x80u) == 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = a2[1];
  }

  v27 = *(v5 + 55);
  v28 = v27;
  v29 = v5[5];
  if ((v27 & 0x80u) == 0)
  {
    v30 = *(v5 + 55);
  }

  else
  {
    v30 = v5[5];
  }

  if (v30 >= v26)
  {
    v31 = v26;
  }

  else
  {
    v31 = v30;
  }

  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*(a2 + 23) >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      v34 = __tolower(*(v33 + i));
      if (*(v5 + 55) >= 0)
      {
        v35 = v5 + 4;
      }

      else
      {
        v35 = v5[4];
      }

      v36 = __tolower(*(v35 + i));
      if (v34 > v36)
      {
        return 1;
      }

      if (v34 < v36)
      {
        goto LABEL_64;
      }
    }

    v23 = *(a2 + 23);
    v25 = a2[1];
    v27 = *(v5 + 55);
    v29 = v5[5];
    v28 = *(v5 + 55);
    v24 = *(a2 + 23);
  }

  if (v24 < 0)
  {
    v23 = v25;
  }

  v37 = v28 >= 0 ? v27 : v29;
  if (v23 < v37)
  {
LABEL_64:
    operator new();
  }

  return 1;
}

uint64_t *sub_BC168(uint64_t a1, const void **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
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
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (a1 + 8);
  do
  {
    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8 >= 0 ? v3 + 4 : v3[4];
      v10 = v8 >= 0 ? *(v3 + 55) : v3[5];
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_23;
      }

LABEL_9:
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_24:
  if (v7 == v2)
  {
    return v2;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return v7;
    }

    return v2;
  }

  else
  {
    if (v6 < v15)
    {
      return v2;
    }

    return v7;
  }
}

uint64_t *sub_BC284(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = (a1 + 8);
  do
  {
    v6 = *(v3 + 55);
    v10 = v6;
    v11 = v3[5];
    if ((v6 & 0x80u) == 0)
    {
      v12 = *(v3 + 55);
    }

    else
    {
      v12 = v3[5];
    }

    v13 = *(a2 + 23);
    v14 = v13;
    v15 = a2[1];
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(a2 + 23);
    }

    else
    {
      v16 = a2[1];
    }

    if (v16 >= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      v18 = 0;
      while (1)
      {
        if (*(v3 + 55) >= 0)
        {
          v19 = v3 + 4;
        }

        else
        {
          v19 = v3[4];
        }

        v20 = __tolower(*(v19 + v18));
        if (*(a2 + 23) >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        v22 = __tolower(*(v21 + v18));
        if (v20 > v22)
        {
          v5 = v3;
          goto LABEL_12;
        }

        if (v20 < v22)
        {
          break;
        }

        if (v17 == ++v18)
        {
          v6 = *(v3 + 55);
          v11 = v3[5];
          v13 = *(a2 + 23);
          v15 = a2[1];
          v14 = *(a2 + 23);
          v10 = *(v3 + 55);
          goto LABEL_3;
        }
      }

      ++v3;
    }

    else
    {
LABEL_3:
      if (v10 < 0)
      {
        v6 = v11;
      }

      if (v14 >= 0)
      {
        v7 = v13;
      }

      else
      {
        v7 = v15;
      }

      v8 = v6 >= v7;
      v9 = v6 < v7;
      if (v8)
      {
        v5 = v3;
      }

      v3 += v9;
    }

LABEL_12:
    v3 = *v3;
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  v23 = *(a2 + 23);
  v24 = v23;
  v25 = a2[1];
  if ((v23 & 0x80u) == 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = a2[1];
  }

  v27 = *(v5 + 55);
  v28 = v27;
  v29 = v5[5];
  if ((v27 & 0x80u) == 0)
  {
    v30 = *(v5 + 55);
  }

  else
  {
    v30 = v5[5];
  }

  if (v30 >= v26)
  {
    v31 = v26;
  }

  else
  {
    v31 = v30;
  }

  if (!v31)
  {
LABEL_58:
    if (v24 < 0)
    {
      v23 = v25;
    }

    if (v28 >= 0)
    {
      v37 = v27;
    }

    else
    {
      v37 = v29;
    }

    if (v23 >= v37)
    {
      return v5;
    }

    return v2;
  }

  v32 = 0;
  while (1)
  {
    v33 = *(a2 + 23) >= 0 ? a2 : *a2;
    v34 = __tolower(*(v33 + v32));
    v35 = *(v5 + 55) >= 0 ? (v5 + 4) : v5[4];
    v36 = __tolower(*(v35 + v32));
    if (v34 > v36)
    {
      return v5;
    }

    if (v34 < v36)
    {
      return v2;
    }

    if (v31 == ++v32)
    {
      v23 = *(a2 + 23);
      v25 = a2[1];
      v27 = *(v5 + 55);
      v29 = v5[5];
      v28 = *(v5 + 55);
      v24 = *(a2 + 23);
      goto LABEL_58;
    }
  }
}

uint64_t sub_BC4FC(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_64:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = v2 + 4;
      v7 = *(a2 + 23);
      v8 = a2[1];
      v9 = (v7 & 0x80u) == 0 ? *(a2 + 23) : a2[1];
      v10 = *(v5 + 55);
      v11 = v5[5];
      v12 = (v10 & 0x80u) == 0 ? *(v5 + 55) : v5[5];
      v13 = v12 >= v9 ? v9 : v12;
      if (v13)
      {
        break;
      }

LABEL_25:
      if ((v7 & 0x80u) == 0)
      {
        v19 = v7;
      }

      else
      {
        v19 = v8;
      }

      if ((v10 & 0x80u) == 0)
      {
        v20 = v10;
      }

      else
      {
        v20 = v11;
      }

      if (v19 >= v20)
      {
        goto LABEL_34;
      }

LABEL_3:
      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_64;
      }
    }

    v14 = 0;
    while (1)
    {
      v15 = *(a2 + 23) >= 0 ? a2 : *a2;
      v16 = __tolower(*(v15 + v14));
      v17 = *(v5 + 55) >= 0 ? v6 : v5[4];
      v18 = __tolower(*(v17 + v14));
      if (v16 > v18)
      {
        break;
      }

      if (v16 < v18)
      {
        goto LABEL_3;
      }

      if (v13 == ++v14)
      {
        v7 = *(a2 + 23);
        v8 = a2[1];
        v10 = *(v5 + 55);
        v11 = v5[5];
        goto LABEL_25;
      }
    }

    v10 = *(v5 + 55);
    v11 = v5[5];
    v7 = *(a2 + 23);
    v8 = a2[1];
LABEL_34:
    if ((v10 & 0x80u) == 0)
    {
      v21 = v10;
    }

    else
    {
      v21 = v11;
    }

    if ((v7 & 0x80u) == 0)
    {
      v22 = v7;
    }

    else
    {
      v22 = v8;
    }

    if (v22 >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*(v5 + 55) >= 0)
        {
          v25 = v6;
        }

        else
        {
          v25 = v5[4];
        }

        v26 = __tolower(*(v25 + i));
        if (*(a2 + 23) >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        v28 = __tolower(*(v27 + i));
        if (v26 > v28)
        {
          goto LABEL_62;
        }

        if (v26 < v28)
        {
          goto LABEL_60;
        }
      }

      v10 = *(v5 + 55);
      v11 = v5[5];
      v7 = *(a2 + 23);
      v8 = a2[1];
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = v11;
    }

    if ((v7 & 0x80u) != 0)
    {
      v7 = v8;
    }

    if (v10 >= v7)
    {
      break;
    }

LABEL_60:
    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_64;
    }
  }

LABEL_62:
  if (!*v3)
  {
    goto LABEL_64;
  }

  return *v3;
}

void sub_BC7A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E6BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BC7B8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v4 >= 2)
  {
    for (i = 0; i != 87; ++i)
    {
      v6 = &aAbs[24 * i];
      v7 = *(a2 + 23);
      v8 = a2[1];
      if ((v7 & 0x80000000) == 0)
      {
        v8 = *(a2 + 23);
      }

      v9 = v6[23];
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v6 + 1);
      }

      if (v8 == v9)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = 0;
        v12 = v7 >> 63;
        while (1)
        {
          if (v12)
          {
            v13 = *a2;
          }

          else
          {
            v13 = a2;
          }

          v14 = __tolower(*(v13 + v11));
          v15 = *v6;
          if (v10 >= 0)
          {
            v15 = &aAbs[24 * i];
          }

          if (v14 != __tolower(v15[v11]))
          {
            break;
          }

          ++v11;
          v16 = *(a2 + 23);
          v12 = v16 >> 63;
          if ((v16 & 0x80000000) != 0)
          {
            v16 = a2[1];
          }

          if (v11 >= v16)
          {
            return 0;
          }
        }
      }
    }
  }

  v18 = *(a1 + 8);
  if (!v18)
  {
    goto LABEL_86;
  }

  v19 = (a1 + 8);
  do
  {
    v20 = *(v18 + 55);
    v24 = v20;
    v25 = v18[5];
    if ((v20 & 0x80u) == 0)
    {
      v26 = *(v18 + 55);
    }

    else
    {
      v26 = v18[5];
    }

    v27 = *(a2 + 23);
    v28 = v27;
    v29 = a2[1];
    if ((v27 & 0x80u) == 0)
    {
      v30 = *(a2 + 23);
    }

    else
    {
      v30 = a2[1];
    }

    if (v30 >= v26)
    {
      v31 = v26;
    }

    else
    {
      v31 = v30;
    }

    if (v31)
    {
      v32 = 0;
      while (1)
      {
        if (*(v18 + 55) >= 0)
        {
          v33 = v18 + 4;
        }

        else
        {
          v33 = v18[4];
        }

        v34 = __tolower(*(v33 + v32));
        if (*(a2 + 23) >= 0)
        {
          v35 = a2;
        }

        else
        {
          v35 = *a2;
        }

        v36 = __tolower(*(v35 + v32));
        if (v34 > v36)
        {
          v19 = v18;
          goto LABEL_34;
        }

        if (v34 < v36)
        {
          break;
        }

        if (v31 == ++v32)
        {
          v20 = *(v18 + 55);
          v25 = v18[5];
          v27 = *(a2 + 23);
          v29 = a2[1];
          v28 = *(a2 + 23);
          v24 = *(v18 + 55);
          goto LABEL_25;
        }
      }

      ++v18;
    }

    else
    {
LABEL_25:
      if (v24 < 0)
      {
        v20 = v25;
      }

      if (v28 >= 0)
      {
        v21 = v27;
      }

      else
      {
        v21 = v29;
      }

      v22 = v20 >= v21;
      v23 = v20 < v21;
      if (v22)
      {
        v19 = v18;
      }

      v18 += v23;
    }

LABEL_34:
    v18 = *v18;
  }

  while (v18);
  if (v19 == (a1 + 8))
  {
    goto LABEL_86;
  }

  v37 = *(a2 + 23);
  v38 = v37;
  v39 = a2[1];
  if ((v37 & 0x80u) == 0)
  {
    v40 = *(a2 + 23);
  }

  else
  {
    v40 = a2[1];
  }

  v41 = *(v19 + 55);
  v42 = v41;
  v43 = v19[5];
  if ((v41 & 0x80u) == 0)
  {
    v44 = *(v19 + 55);
  }

  else
  {
    v44 = v19[5];
  }

  if (v44 >= v40)
  {
    v45 = v40;
  }

  else
  {
    v45 = v44;
  }

  if (v45)
  {
    for (j = 0; j != v45; ++j)
    {
      if (*(a2 + 23) >= 0)
      {
        v47 = a2;
      }

      else
      {
        v47 = *a2;
      }

      v48 = __tolower(*(v47 + j));
      if (*(v19 + 55) >= 0)
      {
        v49 = v19 + 4;
      }

      else
      {
        v49 = v19[4];
      }

      v50 = __tolower(*(v49 + j));
      if (v48 > v50)
      {
        return 1;
      }

      if (v48 < v50)
      {
        goto LABEL_86;
      }
    }

    v37 = *(a2 + 23);
    v39 = a2[1];
    v41 = *(v19 + 55);
    v43 = v19[5];
    v42 = *(v19 + 55);
    v38 = *(a2 + 23);
  }

  if (v38 < 0)
  {
    v37 = v39;
  }

  v51 = v42 >= 0 ? v41 : v43;
  if (v37 < v51)
  {
LABEL_86:
    operator new();
  }

  return 1;
}

uint64_t sub_BCB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = *(a1 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a1 + 23);
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v7 = 0;
  v8 = v2 >> 63;
  while (1)
  {
    v9 = (v8 & 1) != 0 ? *a1 : a1;
    v10 = __tolower(*(v9 + v7));
    v11 = *(a2 + 23) >= 0 ? a2 : *a2;
    v12 = v10 == __tolower(*(v11 + v7));
    result = v12;
    if (!v12)
    {
      break;
    }

    ++v7;
    v14 = *(a1 + 23);
    v8 = v14 >> 63;
    if ((v14 & 0x80000000) != 0)
    {
      v14 = *(a1 + 8);
    }

    if (v7 >= v14)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_BCC28(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  v3 = *(*(a1 + 8) + 8) - v2;
  v4 = v2 + 8 * *a2;
  if (*a2 >= (v3 >> 3))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BCC5C(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_64:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = v2 + 4;
      v7 = *(a2 + 23);
      v8 = a2[1];
      v9 = (v7 & 0x80u) == 0 ? *(a2 + 23) : a2[1];
      v10 = *(v5 + 55);
      v11 = v5[5];
      v12 = (v10 & 0x80u) == 0 ? *(v5 + 55) : v5[5];
      v13 = v12 >= v9 ? v9 : v12;
      if (v13)
      {
        break;
      }

LABEL_25:
      if ((v7 & 0x80u) == 0)
      {
        v19 = v7;
      }

      else
      {
        v19 = v8;
      }

      if ((v10 & 0x80u) == 0)
      {
        v20 = v10;
      }

      else
      {
        v20 = v11;
      }

      if (v19 >= v20)
      {
        goto LABEL_34;
      }

LABEL_3:
      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_64;
      }
    }

    v14 = 0;
    while (1)
    {
      v15 = *(a2 + 23) >= 0 ? a2 : *a2;
      v16 = __tolower(*(v15 + v14));
      v17 = *(v5 + 55) >= 0 ? v6 : v5[4];
      v18 = __tolower(*(v17 + v14));
      if (v16 > v18)
      {
        break;
      }

      if (v16 < v18)
      {
        goto LABEL_3;
      }

      if (v13 == ++v14)
      {
        v7 = *(a2 + 23);
        v8 = a2[1];
        v10 = *(v5 + 55);
        v11 = v5[5];
        goto LABEL_25;
      }
    }

    v10 = *(v5 + 55);
    v11 = v5[5];
    v7 = *(a2 + 23);
    v8 = a2[1];
LABEL_34:
    if ((v10 & 0x80u) == 0)
    {
      v21 = v10;
    }

    else
    {
      v21 = v11;
    }

    if ((v7 & 0x80u) == 0)
    {
      v22 = v7;
    }

    else
    {
      v22 = v8;
    }

    if (v22 >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*(v5 + 55) >= 0)
        {
          v25 = v6;
        }

        else
        {
          v25 = v5[4];
        }

        v26 = __tolower(*(v25 + i));
        if (*(a2 + 23) >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        v28 = __tolower(*(v27 + i));
        if (v26 > v28)
        {
          goto LABEL_62;
        }

        if (v26 < v28)
        {
          goto LABEL_60;
        }
      }

      v10 = *(v5 + 55);
      v11 = v5[5];
      v7 = *(a2 + 23);
      v8 = a2[1];
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = v11;
    }

    if ((v7 & 0x80u) != 0)
    {
      v7 = v8;
    }

    if (v10 >= v7)
    {
      break;
    }

LABEL_60:
    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_64;
    }
  }

LABEL_62:
  if (!*v3)
  {
    goto LABEL_64;
  }

  return *v3;
}

void sub_BCF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E6BC(va);
  _Unwind_Resume(a1);
}

void *sub_BCF18(void *a1, uint64_t a2)
{
  v4 = sub_BD0CC(a1, a2);
  if (v4 != -1)
  {
    return (a1[14] + 32 * v4);
  }

  v7 = v5;
  if (sub_BD28C(a1, 1))
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(&v20, *a2, *(a2 + 8));
    }

    else
    {
      v20 = *a2;
      v21 = *(a2 + 16);
    }

    v14 = v20;
    v15 = v21;
    v16 = 0;
    v8 = sub_BD0CC(a1, &v14);
    if (v8 == -1)
    {
      sub_BD554(a1, &v14, v9, __p);
      result = __p[1];
      LOBYTE(v19) = 1;
      if (SHIBYTE(v15) < 0)
      {
LABEL_17:
        v12 = v14;
        goto LABEL_18;
      }
    }

    else
    {
      v10 = a1[14];
      result = (v10 + 32 * v8);
      v11 = v10 + 32 * a1[9];
      __p[0] = a1;
      __p[1] = result;
      v18 = v11;
      LOBYTE(v19) = 0;
      if (SHIBYTE(v15) < 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(&v20, *a2, *(a2 + 8));
    }

    else
    {
      v20 = *a2;
      v21 = *(a2 + 16);
    }

    *__p = v20;
    v18 = v21;
    v19 = 0;
    sub_BD554(a1, __p, v7, &v14);
    result = *(&v14 + 1);
    if (SHIBYTE(v18) < 0)
    {
      v12 = __p[0];
LABEL_18:
      v13 = result;
      operator delete(v12);
      return v13;
    }
  }

  return result;
}

void sub_BD09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BD0CC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 72);
  v5 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v31, a2, v6);
  v8 = 0;
  v30 = v4 - 1;
  v9 = *(a1 + 112);
  v29 = *(a1 + 103);
  if (v29 >= 0)
  {
    v10 = *(a1 + 103);
  }

  else
  {
    v10 = *(a1 + 88);
  }

  v11 = *(v2 + 23);
  if (v11 >= 0)
  {
    v12 = *(v2 + 23);
  }

  else
  {
    v12 = *(v2 + 8);
  }

  if (v11 >= 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = *v2;
  }

  __s1 = v13;
  v27 = -1;
  while (1)
  {
    v15 = v7 & v30;
    v16 = (v9 + 32 * (v7 & v30));
    v17 = *(v16 + 23);
    v18 = v17 >= 0 ? *(v16 + 23) : v16[1];
    if (v10 == v18)
    {
      v19 = v29 >= 0 ? (a1 + 80) : *(a1 + 80);
      v20 = v17 >= 0 ? v16 : *v16;
      if (!memcmp(v19, v20, v10))
      {
        return -1;
      }
    }

    if (!*(a1 + 56))
    {
      goto LABEL_50;
    }

    v21 = *(a1 + 55);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a1 + 40);
    }

    if (v21 == v18 && (v22 >= 0 ? (v23 = (a1 + 32)) : (v23 = *(a1 + 32)), v17 >= 0 ? (v24 = v16) : (v24 = *v16), !memcmp(v23, v24, v18)))
    {
      v14 = v27;
      if (v27 == -1)
      {
        v14 = v15;
      }

      v27 = v14;
    }

    else
    {
LABEL_50:
      if (v12 == v18)
      {
        v25 = v17 >= 0 ? v16 : *v16;
        if (!memcmp(__s1, v25, v12))
        {
          return v15;
        }
      }
    }

    v7 = ++v8 + v15;
  }
}

uint64_t sub_BD28C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_BD6D0(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 64);
  if (v5 >= ~a2)
  {
    goto LABEL_37;
  }

  v6 = *(a1 + 72);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_37:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 56);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_37;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_37;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_BDA54(v20, a1, v13);
      sub_BD810(a1, v20);
      v16 = v26;
      if (v26)
      {
        v17 = v23;
        if (v23)
        {
          v18 = 0;
          do
          {
            if (*(v26 + v18 + 23) < 0)
            {
              operator delete(*(v26 + v18));
            }

            v18 += 32;
            --v17;
          }

          while (v17);
          v16 = v26;
        }

        free(v16);
      }

      if (v25 < 0)
      {
        operator delete(__p);
        if ((v22 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if ((v22 & 0x80000000) == 0)
      {
        return 1;
      }

      operator delete(v21);
      return 1;
    }
  }

  return result;
}

void sub_BD4F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_AC5E4(va);
  _Unwind_Resume(a1);
}

double sub_BD554@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  if ((v5 - v6) >= 0x7FFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v10 = *(a1 + 112) + 32 * a3;
  if (!v6)
  {
    goto LABEL_16;
  }

  v11 = *(a1 + 55);
  if (v11 >= 0)
  {
    v12 = *(a1 + 55);
  }

  else
  {
    v12 = *(a1 + 40);
  }

  v13 = *(v10 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v10 + 8);
  }

  if (v12 != v13 || (v11 >= 0 ? (v15 = (a1 + 32)) : (v15 = *(a1 + 32)), v14 >= 0 ? (v16 = v10) : (v16 = *v10), memcmp(v15, v16, v12)))
  {
LABEL_16:
    *(a1 + 64) = v5 + 1;
    if ((*(v10 + 23) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(*v10);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    sub_325C(v10, *a2, *(a2 + 1));
    goto LABEL_22;
  }

  *(a1 + 56) = v6 - 1;
  if (*(v10 + 23) < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (*(a2 + 23) < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v17 = *a2;
  *(v10 + 16) = *(a2 + 2);
  *v10 = v17;
LABEL_22:
  result = *(a2 + 3);
  *(v10 + 24) = result;
  v19 = *(a1 + 112);
  v20 = v19 + 32 * a3;
  v21 = v19 + 32 * *(a1 + 72);
  *a4 = a1;
  a4[1] = v20;
  a4[2] = v21;
  return result;
}

uint64_t sub_BD6D0(uint64_t a1)
{
  v2 = *(a1 + 64) - *(a1 + 56);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 72), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
    return result;
  }

  v6 = v2;
  do
  {
    v7 = v5;
    v5 >>= 1;
  }

  while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
  sub_BDA54(v12, a1, v5);
  sub_BD810(a1, v12);
  v8 = v18;
  if (v18)
  {
    v9 = v15;
    if (v15)
    {
      v10 = 0;
      do
      {
        if (*(v18 + v10 + 23) < 0)
        {
          operator delete(*(v18 + v10));
        }

        v10 += 32;
        --v9;
      }

      while (v9);
      v8 = v18;
    }

    free(v8);
  }

  if (v17 < 0)
  {
    operator delete(__p);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_22:
    operator delete(v13);
    goto LABEL_20;
  }

  if (v14 < 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  result = 1;
  *(a1 + 24) = 0;
  return result;
}

void sub_BD7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_AC5E4(va);
  _Unwind_Resume(a1);
}

uint64x2_t sub_BD810(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 16);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *a2 = v5;
  *(a2 + 16) = v4;
  v7 = *(a1 + 32);
  __p[0] = *(a1 + 40);
  *(__p + 7) = *(a1 + 47);
  v8 = *(a1 + 55);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  *(a2 + 47) = *(__p + 7);
  v10 = __p[0];
  *(a2 + 32) = v7;
  *(a2 + 40) = v10;
  *(a2 + 55) = v8;
  v11 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v11;
  v12 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v12;
  v13 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v13;
  *__p = 0u;
  v21 = 0u;
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    *__p = *(a1 + 80);
    v21 = *(a1 + 96);
    v14 = (a1 + 104);
    if (*(a2 + 103) < 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v16 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v16;
    goto LABEL_9;
  }

  sub_325C(__p, *(a1 + 80), *(a1 + 88));
  v14 = (a1 + 104);
  v15 = *(a1 + 103);
  *(&v21 + 1) = *(a1 + 104);
  if (v15 < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a2 + 103) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 103) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  sub_325C((a1 + 80), *(a2 + 80), *(a2 + 88));
LABEL_9:
  *v14 = *(a2 + 104);
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
    if ((SBYTE7(v21) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((SBYTE7(v21) & 0x80000000) == 0)
  {
LABEL_11:
    *(a2 + 80) = *__p;
    *(a2 + 96) = v21;
    goto LABEL_15;
  }

  sub_325C((a2 + 80), __p[0], __p[1]);
  v17 = SBYTE7(v21);
  *(a2 + 104) = *(&v21 + 1);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_15:
  v18 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v18;
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 72))));
  *(a1 + 24) = 0;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a2 + 16), *(a2 + 72))));
  *a2 = result;
  *(a2 + 24) = 0;
  return result;
}

void sub_BDA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BDA54(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  if (*(a2 + 55) < 0)
  {
    sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if ((*(a2 + 103) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if ((*(a2 + 103) & 0x80000000) == 0)
    {
LABEL_3:
      v8 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v8;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 80), *(a2 + 80), *(a2 + 88));
LABEL_6:
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 72))));
    *(a1 + 24) = 0;
    sub_BDC58(a1, a2, a3);
    return a1;
  }

  else
  {
    v10 = 4;
    if (a3 > 4)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v11 = *(a1 + 16) * v10;
      if (*(a2 + 64) - *(a2 + 56) < v11)
      {
        break;
      }

      do
      {
LABEL_10:
        if ((v10 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v10 *= 2;
      }

      while (v10 < a3);
    }

    *(a1 + 72) = v10;
    v12 = *(a1 + 20) * v10;
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 24) = 0;
    return a1;
  }
}

void sub_BDBFC(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 55) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v1 + 32));
  _Unwind_Resume(exception_object);
}

void sub_BDC58(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2[8] - a2[7];
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_BE0C8(a1, v6);
  v7 = a2[14];
  v8 = a2[9];
  v66 = a2;
  if (v8)
  {
    v11 = a2[10];
    v10 = a2 + 10;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = v10[1];
    }

    if (v12 >= 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
    }

    v15 = *(v10 - 3);
    v16 = *(v10 - 25);
    if (v16 >= 0)
    {
      v17 = *(v10 - 25);
    }

    else
    {
      v17 = *(v10 - 5);
    }

    v20 = *(v10 - 6);
    v19 = v10 - 6;
    v18 = v20;
    if (v16 >= 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    if (v15)
    {
      v22 = 32 * v8;
      v67 = v7;
      v23 = v7;
      while (1)
      {
        v24 = *(v23 + 23);
        v25 = v24 >= 0 ? *(v23 + 23) : *(v23 + 1);
        if (v13 != v25 || (v24 >= 0 ? (v26 = v23) : (v26 = *v23), memcmp(v14, v26, v13)))
        {
          if (v17 != v25)
          {
            break;
          }

          v27 = v24 >= 0 ? v23 : *v23;
          if (memcmp(v21, v27, v17))
          {
            break;
          }
        }

        v23 += 2;
        v22 -= 32;
        if (!v22)
        {
          goto LABEL_114;
        }
      }

      v68 = &v67[2 * v8];
      if (v23 != v68)
      {
        goto LABEL_51;
      }

      goto LABEL_114;
    }

    v28 = 32 * v8;
    v29 = v7;
    v23 = v7;
    while (1)
    {
      v30 = *(v23 + 23);
      v31 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v23 + 1);
      }

      if (v13 != v30)
      {
        break;
      }

      v32 = v31 >= 0 ? v23 : *v23;
      if (memcmp(v14, v32, v13))
      {
        break;
      }

      v23 += 2;
      v28 -= 32;
      if (!v28)
      {
        goto LABEL_114;
      }
    }

    v68 = &v29[2 * v8];
    if (v23 != v68)
    {
      do
      {
LABEL_51:
        v33 = *(a1 + 72);
        v34 = *(v23 + 23);
        if (v34 >= 0)
        {
          v35 = v23;
        }

        else
        {
          v35 = *v23;
        }

        if (v34 >= 0)
        {
          v36 = *(v23 + 23);
        }

        else
        {
          v36 = *(v23 + 1);
        }

        v37 = sub_AAD8(&v69, v35, v36);
        v38 = v33 - 1;
        v39 = *(a1 + 112);
        if (*(a1 + 103) >= 0)
        {
          v40 = *(a1 + 103);
        }

        else
        {
          v40 = *(a1 + 88);
        }

        v41 = 0;
        if ((*(a1 + 103) & 0x80) != 0)
        {
          while (1)
          {
            v50 = v37 & v38;
            v43 = v39 + 32 * (v37 & v38);
            v51 = *(v43 + 23);
            v52 = *(v43 + 8);
            if (v51 >= 0)
            {
              v52 = *(v43 + 23);
            }

            if (v40 == v52)
            {
              v46 = *v43;
              v53 = v51 >= 0 ? (v39 + 32 * (v37 & v38)) : *v43;
              if (!memcmp(*(a1 + 80), v53, v40))
              {
                break;
              }
            }

            v37 = ++v41 + v50;
          }

          v48 = v66;
          if (v51 >= 0)
          {
            goto LABEL_72;
          }
        }

        else
        {
          while (1)
          {
            v42 = v37 & v38;
            v43 = v39 + 32 * (v37 & v38);
            v44 = *(v43 + 23);
            v45 = *(v43 + 8);
            if (v44 >= 0)
            {
              v45 = *(v43 + 23);
            }

            if (v40 == v45)
            {
              v46 = *v43;
              v47 = v44 >= 0 ? (v39 + 32 * (v37 & v38)) : *v43;
              if (!memcmp((a1 + 80), v47, v40))
              {
                break;
              }
            }

            v37 = ++v41 + v42;
          }

          v48 = v66;
          if (v44 >= 0)
          {
            goto LABEL_72;
          }
        }

        operator delete(v46);
LABEL_72:
        if (*(v23 + 23) < 0)
        {
          sub_325C(v43, *v23, *(v23 + 1));
        }

        else
        {
          v49 = *v23;
          *(v43 + 16) = *(v23 + 2);
          *v43 = v49;
        }

        *(v43 + 24) = *(v23 + 3);
        ++*(a1 + 64);
        v23 += 2;
        if (v23 != v68)
        {
          v54 = *(v48 + 103);
          if (v54 >= 0)
          {
            v55 = *(v48 + 103);
          }

          else
          {
            v55 = v48[11];
          }

          if (v54 >= 0)
          {
            v56 = v66 + 10;
          }

          else
          {
            v56 = v48[10];
          }

          v57 = v48[7];
          v58 = *(v48 + 55);
          if (v58 >= 0)
          {
            v59 = *(v48 + 55);
          }

          else
          {
            v59 = v48[5];
          }

          if (v58 >= 0)
          {
            v60 = v66 + 4;
          }

          else
          {
            v60 = v48[4];
          }

          do
          {
            v61 = *(v23 + 23);
            if (v61 >= 0)
            {
              v62 = *(v23 + 23);
            }

            else
            {
              v62 = *(v23 + 1);
            }

            if (v55 != v62 || (v61 >= 0 ? (v63 = v23) : (v63 = *v23), memcmp(v56, v63, v55)))
            {
              if (!v57 || v59 != v62)
              {
                break;
              }

              v64 = v61 >= 0 ? v23 : *v23;
              if (memcmp(v60, v64, v59))
              {
                break;
              }
            }

            v23 += 2;
          }

          while (v23 != v68);
        }
      }

      while (v23 != (v48[14] + 32 * v48[9]));
    }
  }

LABEL_114:
  ++*(a1 + 28);
}

uint64x2_t sub_BE0C8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 112);
  if (!v4)
  {
    v8 = malloc_type_malloc(32 * a2, 0x101204092066FB6uLL);
LABEL_12:
    *(a1 + 112) = v8;
    v4 = v8;
    goto LABEL_13;
  }

  v5 = *(a1 + 72);
  if (!v5)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v6 = 0;
  do
  {
    v7 = *(a1 + 112) + v6;
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v6 += 32;
    --v5;
  }

  while (v5);
  v4 = *(a1 + 112);
  if (*(a1 + 72) != a2)
  {
LABEL_11:
    v9 = v4;
    v8 = malloc_type_realloc(v4, 32 * a2, 0x101204092066FB6uLL);
    if (!v8)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v9);
      exit(1);
    }

    goto LABEL_12;
  }

LABEL_13:
  sub_BBC54(a1, v4, v4 + 32 * a2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_BE1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BE3CC(a1, a2);
  if (v4 != -1)
  {
    return *(a1 + 128) + 48 * v4;
  }

  v7 = v5;
  if (!sub_BE590(a1, 1))
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(&v24, *a2, *(a2 + 8));
    }

    else
    {
      v24 = *a2;
      v25 = *(a2 + 16);
    }

    *v15 = v24;
    v16 = v25;
    __p = 0;
    v18 = 0;
    v19 = 0;
    sub_BE874(a1, v15, v7, &v20);
    result = v21;
    v12 = __p;
    if (!__p)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (*(a2 + 23) < 0)
  {
    sub_325C(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
    v25 = *(a2 + 16);
  }

  *v15 = v24;
  v16 = v25;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v8 = sub_BE3CC(a1, v15);
  if (v8 != -1)
  {
    v10 = *(a1 + 128);
    result = v10 + 48 * v8;
    v11 = v10 + 48 * *(a1 + 72);
    v20 = a1;
    v21 = result;
    v22 = v11;
    v23 = 0;
    v12 = __p;
    if (!__p)
    {
      goto LABEL_16;
    }

LABEL_15:
    v18 = v12;
    v13 = result;
    operator delete(v12);
    result = v13;
    goto LABEL_16;
  }

  sub_BE874(a1, v15, v9, &v20);
  result = v21;
  v23 = 1;
  v12 = __p;
  if (__p)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (SHIBYTE(v16) < 0)
  {
    v14 = result;
    operator delete(v15[0]);
    return v14;
  }

  return result;
}

uint64_t sub_BE3CC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 72);
  v5 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v31, a2, v6);
  v8 = 0;
  v30 = v4 - 1;
  v9 = *(a1 + 128);
  v29 = *(a1 + 103);
  if (v29 >= 0)
  {
    v10 = *(a1 + 103);
  }

  else
  {
    v10 = *(a1 + 88);
  }

  v11 = *(v2 + 23);
  if (v11 >= 0)
  {
    v12 = *(v2 + 23);
  }

  else
  {
    v12 = *(v2 + 8);
  }

  if (v11 >= 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = *v2;
  }

  __s1 = v13;
  v27 = -1;
  while (1)
  {
    v15 = v7 & v30;
    v16 = (v9 + 48 * (v7 & v30));
    v17 = *(v16 + 23);
    v18 = v17 >= 0 ? *(v16 + 23) : v16[1];
    if (v10 == v18)
    {
      v19 = v29 >= 0 ? (a1 + 80) : *(a1 + 80);
      v20 = v17 >= 0 ? v16 : *v16;
      if (!memcmp(v19, v20, v10))
      {
        return -1;
      }
    }

    if (!*(a1 + 56))
    {
      goto LABEL_50;
    }

    v21 = *(a1 + 55);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a1 + 40);
    }

    if (v21 == v18 && (v22 >= 0 ? (v23 = (a1 + 32)) : (v23 = *(a1 + 32)), v17 >= 0 ? (v24 = v16) : (v24 = *v16), !memcmp(v23, v24, v18)))
    {
      v14 = v27;
      if (v27 == -1)
      {
        v14 = v15;
      }

      v27 = v14;
    }

    else
    {
LABEL_50:
      if (v12 == v18)
      {
        v25 = v17 >= 0 ? v16 : *v16;
        if (!memcmp(__s1, v25, v12))
        {
          return v15;
        }
      }
    }

    v7 = ++v8 + v15;
  }
}

uint64_t sub_BE590(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 64) - *(a1 + 56);
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = v3 >= v4;
    }

    else
    {
      v5 = 1;
    }

    if (v5 || (v6 = *(a1 + 72), v6 < 0x21))
    {
      result = 0;
    }

    else
    {
      v7 = a2;
      v8 = v3;
      do
      {
        v9 = v6;
        v6 >>= 1;
      }

      while (v9 >= 0x42 && (*(a1 + 20) * v6) > v8);
      sub_BEBC0(v23, a1, v6);
      sub_BE9F4(a1, v23);
      sub_B84B0(v23);
      result = 1;
      a2 = v7;
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = 0;
  }

  v11 = *(a1 + 64);
  if (v11 >= ~a2)
  {
    goto LABEL_34;
  }

  v12 = *(a1 + 72);
  v13 = v11 + a2;
  if (v12 < 4 || v13 > *a1)
  {
    v14 = *(a1 + 16);
    v15 = vcvts_n_u32_f32(v14, 2uLL);
    v16 = 4;
    if (v13 >= v15)
    {
      while ((v16 & 0x8000000000000000) == 0)
      {
        v16 *= 2;
        if (v13 < (v14 * v16))
        {
          goto LABEL_20;
        }
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_20:
    if (v16 > v12)
    {
      v17 = *(a1 + 56);
      v18 = v11 - v17 + a2;
      v19 = 4;
      if (v12 <= 4)
      {
        goto LABEL_24;
      }

      do
      {
        do
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          v19 *= 2;
        }

        while (v19 < v12);
LABEL_24:
        ;
      }

      while (v18 >= (v14 * v19));
      v20 = v13 - (v17 >> 2);
      v21 = 4;
      if (v20 >= v15)
      {
        while ((v21 & 0x8000000000000000) == 0)
        {
          v21 *= 2;
          if (v20 < (v14 * v21))
          {
            goto LABEL_28;
          }
        }

        goto LABEL_34;
      }

LABEL_28:
      if (v19 <= 0x7FFFFFFFFFFFFFFELL && v19 < v21 && v18 >= (*(a1 + 20) * (2 * v19)))
      {
        v19 *= 2;
      }

      sub_BEBC0(v23, a1, v19);
      sub_BE9F4(a1, v23);
      sub_B84B0(v23);
      return 1;
    }
  }

  return result;
}

void sub_BE7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_B84B0(va);
  _Unwind_Resume(a1);
}

void sub_BE810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_B84B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE874@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  if ((v5 - v6) >= 0x555555555555555)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v10 = *(a1 + 128);
  if (!v6)
  {
    goto LABEL_16;
  }

  v11 = v10 + 48 * a3;
  v12 = *(a1 + 55);
  if (v12 >= 0)
  {
    v13 = *(a1 + 55);
  }

  else
  {
    v13 = *(a1 + 40);
  }

  v14 = *(v11 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v11 + 8);
  }

  if (v13 != v14 || (v12 >= 0 ? (v16 = (a1 + 32)) : (v16 = *(a1 + 32)), v15 >= 0 ? (v17 = (v10 + 48 * a3)) : (v17 = *v11), memcmp(v16, v17, v13)))
  {
LABEL_16:
    *(a1 + 64) = v5 + 1;
    v18 = v10 + 48 * a3;
    v19 = *(v18 + 24);
    if (!v19)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(a1 + 56) = v6 - 1;
  v18 = v10 + 48 * a3;
  v19 = *(v18 + 24);
  if (v19)
  {
LABEL_17:
    *(v18 + 32) = v19;
    operator delete(v19);
  }

LABEL_18:
  if (*(v18 + 23) < 0)
  {
    operator delete(*v18);
  }

  result = sub_BBDB4(v18, a2);
  v21 = *(a1 + 128);
  v22 = v21 + 48 * a3;
  v23 = v21 + 48 * *(a1 + 72);
  *a4 = a1;
  a4[1] = v22;
  a4[2] = v23;
  return result;
}

uint64x2_t sub_BE9F4(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 16);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *a2 = v5;
  *(a2 + 16) = v4;
  v7 = *(a1 + 32);
  v18[0] = *(a1 + 40);
  *(v18 + 7) = *(a1 + 47);
  v8 = *(a1 + 55);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  *(a2 + 47) = *(v18 + 7);
  v10 = v18[0];
  *(a2 + 32) = v7;
  *(a2 + 40) = v10;
  *(a2 + 55) = v8;
  v11 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v11;
  v12 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v12;
  v13 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v13;
  *__p = 0u;
  v20 = 0u;
  *v18 = 0u;
  sub_BBDB4(v18, (a1 + 80));
  v14 = *(a1 + 104);
  if (v14)
  {
    *(a1 + 112) = v14;
    operator delete(v14);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_BBDB4(a1 + 80, (a2 + 80));
  v15 = *(a2 + 104);
  if (v15)
  {
    *(a2 + 112) = v15;
    operator delete(v15);
  }

  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  sub_BBDB4(a2 + 80, v18);
  if (__p[1])
  {
    *&v20 = __p[1];
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v18[0]);
  }

  v16 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v16;
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 72))));
  *(a1 + 24) = 0;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a2 + 16), *(a2 + 72))));
  *a2 = result;
  *(a2 + 24) = 0;
  return result;
}

void sub_BEBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B8580(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BEBC0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  if (*(a2 + 55) < 0)
  {
    sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_BBDB4(a1 + 80, (a2 + 80));
  *(a1 + 128) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 72))));
    *(a1 + 24) = 0;
    sub_BED74(a1, a2, a3);
    return a1;
  }

  else
  {
    v9 = 4;
    if (a3 > 4)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v10 = *(a1 + 16) * v9;
      if (*(a2 + 64) - *(a2 + 56) < v10)
      {
        break;
      }

      do
      {
LABEL_8:
        if ((v9 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v9 *= 2;
      }

      while (v9 < a3);
    }

    *(a1 + 72) = v9;
    v11 = *(a1 + 20) * v9;
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 24) = 0;
    return a1;
  }
}

void sub_BED38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_BED74(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2[8] - a2[7];
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_BF1E4(a1, v6);
  v7 = a2[16];
  v8 = a2[9];
  v63 = a2;
  if (v8)
  {
    v11 = a2[10];
    v10 = a2 + 10;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = v10[1];
    }

    if (v12 >= 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
    }

    v15 = *(v10 - 3);
    v16 = *(v10 - 25);
    if (v16 >= 0)
    {
      v17 = *(v10 - 25);
    }

    else
    {
      v17 = *(v10 - 5);
    }

    v20 = *(v10 - 6);
    v19 = v10 - 6;
    v18 = v20;
    if (v16 >= 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    if (v15)
    {
      v22 = 48 * v8;
      v64 = v7;
      v23 = v7;
      while (1)
      {
        v24 = *(v23 + 23);
        v25 = v24 >= 0 ? *(v23 + 23) : *(v23 + 8);
        if (v13 != v25 || (v24 >= 0 ? (v26 = v23) : (v26 = *v23), memcmp(v14, v26, v13)))
        {
          if (v17 != v25)
          {
            break;
          }

          v27 = v24 >= 0 ? v23 : *v23;
          if (memcmp(v21, v27, v17))
          {
            break;
          }
        }

        v23 += 48;
        v22 -= 48;
        if (!v22)
        {
          goto LABEL_112;
        }
      }

      v65 = v64 + 48 * v8;
      if (v23 == v65)
      {
        goto LABEL_112;
      }

      do
      {
LABEL_51:
        v33 = *(a1 + 72);
        v34 = *(v23 + 23);
        if (v34 >= 0)
        {
          v35 = v23;
        }

        else
        {
          v35 = *v23;
        }

        if (v34 >= 0)
        {
          v36 = *(v23 + 23);
        }

        else
        {
          v36 = *(v23 + 8);
        }

        v37 = sub_AAD8(&v66, v35, v36);
        v38 = v33 - 1;
        v39 = *(a1 + 128);
        if (*(a1 + 103) >= 0)
        {
          v40 = *(a1 + 103);
        }

        else
        {
          v40 = *(a1 + 88);
        }

        v41 = 0;
        if ((*(a1 + 103) & 0x80) != 0)
        {
          while (1)
          {
            v47 = v37 & v38;
            v43 = v39 + 48 * (v37 & v38);
            v48 = *(v43 + 23);
            v45 = v48;
            if ((v48 & 0x80u) != 0)
            {
              v48 = *(v43 + 8);
            }

            if (v40 == v48)
            {
              v49 = v45 >= 0 ? (v39 + 48 * (v37 & v38)) : *v43;
              if (!memcmp(*(a1 + 80), v49, v40))
              {
                break;
              }
            }

            v37 = ++v41 + v47;
          }
        }

        else
        {
          while (1)
          {
            v42 = v37 & v38;
            v43 = v39 + 48 * (v37 & v38);
            v44 = *(v43 + 23);
            v45 = v44;
            if ((v44 & 0x80u) != 0)
            {
              v44 = *(v43 + 8);
            }

            if (v40 == v44)
            {
              v46 = v45 >= 0 ? (v39 + 48 * (v37 & v38)) : *v43;
              if (!memcmp((a1 + 80), v46, v40))
              {
                break;
              }
            }

            v37 = ++v41 + v42;
          }
        }

        v50 = *(v43 + 24);
        if (v50)
        {
          *(v43 + 32) = v50;
          operator delete(v50);
          LOBYTE(v45) = *(v43 + 23);
        }

        if ((v45 & 0x80) != 0)
        {
          operator delete(*v43);
        }

        sub_BBDB4(v43, v23);
        ++*(a1 + 64);
        v23 += 48;
        if (v23 != v65)
        {
          v51 = *(v63 + 103);
          if (v51 >= 0)
          {
            v52 = *(v63 + 103);
          }

          else
          {
            v52 = v63[11];
          }

          if (v51 >= 0)
          {
            v53 = v63 + 10;
          }

          else
          {
            v53 = v63[10];
          }

          v54 = v63[7];
          v55 = *(v63 + 55);
          if (v55 >= 0)
          {
            v56 = *(v63 + 55);
          }

          else
          {
            v56 = v63[5];
          }

          if (v55 >= 0)
          {
            v57 = v63 + 4;
          }

          else
          {
            v57 = v63[4];
          }

          do
          {
            v58 = *(v23 + 23);
            if (v58 >= 0)
            {
              v59 = *(v23 + 23);
            }

            else
            {
              v59 = *(v23 + 8);
            }

            if (v52 != v59 || (v58 >= 0 ? (v60 = v23) : (v60 = *v23), memcmp(v53, v60, v52)))
            {
              if (!v54 || v56 != v59)
              {
                break;
              }

              v61 = v58 >= 0 ? v23 : *v23;
              if (memcmp(v57, v61, v56))
              {
                break;
              }
            }

            v23 += 48;
          }

          while (v23 != v65);
        }
      }

      while (v23 != v63[16] + 48 * v63[9]);
      goto LABEL_112;
    }

    v28 = 48 * v8;
    v29 = v7;
    v23 = v7;
    while (1)
    {
      v30 = *(v23 + 23);
      v31 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v23 + 8);
      }

      if (v13 != v30)
      {
        break;
      }

      v32 = v31 >= 0 ? v23 : *v23;
      if (memcmp(v14, v32, v13))
      {
        break;
      }

      v23 += 48;
      v28 -= 48;
      if (!v28)
      {
        goto LABEL_112;
      }
    }

    v65 = v29 + 48 * v8;
    if (v23 != v65)
    {
      goto LABEL_51;
    }
  }

LABEL_112:
  ++*(a1 + 28);
}

uint64x2_t sub_BF1E4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 128);
  if (!v4)
  {
    v9 = malloc_type_malloc(48 * a2, 0x109204087733E69uLL);
LABEL_14:
    *(a1 + 128) = v9;
    v4 = v9;
    goto LABEL_15;
  }

  v5 = *(a1 + 72);
  if (!v5)
  {
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v6 = 0;
  do
  {
    v7 = *(a1 + 128) + v6;
    v8 = *(v7 + 24);
    if (v8)
    {
      *(v7 + 32) = v8;
      operator delete(v8);
    }

    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v6 += 48;
    --v5;
  }

  while (v5);
  v4 = *(a1 + 128);
  if (*(a1 + 72) != a2)
  {
LABEL_13:
    v10 = v4;
    v9 = malloc_type_realloc(v4, 48 * a2, 0x109204087733E69uLL);
    if (!v9)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v10);
      exit(1);
    }

    goto LABEL_14;
  }

LABEL_15:
  sub_BBD2C(a1, v4, v4 + 48 * a2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_BF33C(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = sub_BF448(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_BF434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E6BC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_BF448(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2)
  {
    v11 = *(a5 + 23);
    v12 = v11;
    v13 = *(a5 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v14 = *(a5 + 23);
    }

    else
    {
      v14 = *(a5 + 8);
    }

    v15 = *(a2 + 55);
    v16 = v15;
    v17 = a2[5];
    if ((v15 & 0x80u) == 0)
    {
      v18 = *(a2 + 55);
    }

    else
    {
      v18 = a2[5];
    }

    if (v18 >= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      v20 = 0;
      while (1)
      {
        v21 = *(a5 + 23) >= 0 ? a5 : *a5;
        v22 = __tolower(*(v21 + v20));
        v23 = *(a2 + 55) >= 0 ? (a2 + 4) : a2[4];
        v24 = __tolower(*(v23 + v20));
        if (v22 > v24)
        {
          break;
        }

        if (v22 < v24)
        {
          goto LABEL_28;
        }

        if (v19 == ++v20)
        {
          v11 = *(a5 + 23);
          v13 = *(a5 + 8);
          v15 = *(a2 + 55);
          v17 = a2[5];
          v16 = *(a2 + 55);
          v12 = *(a5 + 23);
          goto LABEL_23;
        }
      }

      v16 = *(a2 + 55);
      v17 = a2[5];
      v12 = *(a5 + 23);
      v13 = *(a5 + 8);
      goto LABEL_66;
    }

LABEL_23:
    if ((v12 & 0x80u) != 0)
    {
      v11 = v13;
    }

    if ((v16 & 0x80u) != 0)
    {
      v15 = v17;
    }

    if (v11 >= v15)
    {
LABEL_66:
      v44 = v16;
      if ((v16 & 0x80u) == 0)
      {
        v45 = v16;
      }

      else
      {
        v45 = v17;
      }

      v46 = v12;
      if ((v12 & 0x80u) == 0)
      {
        v47 = v12;
      }

      else
      {
        v47 = v13;
      }

      if (v47 >= v45)
      {
        v48 = v45;
      }

      else
      {
        v48 = v47;
      }

      if (v48)
      {
        v49 = 0;
        while (1)
        {
          v50 = *(a2 + 55) >= 0 ? (a2 + 4) : a2[4];
          v51 = __tolower(*(v50 + v49));
          v52 = *(a5 + 23) >= 0 ? a5 : *a5;
          v53 = __tolower(*(v52 + v49));
          if (v51 > v53)
          {
            goto LABEL_95;
          }

          if (v51 < v53)
          {
            goto LABEL_92;
          }

          if (v48 == ++v49)
          {
            v44 = *(a2 + 55);
            v17 = a2[5];
            v46 = *(a5 + 23);
            v13 = *(a5 + 8);
            v12 = *(a5 + 23);
            v16 = *(a2 + 55);
            break;
          }
        }
      }

      if ((v16 & 0x80u) == 0)
      {
        v17 = v44;
      }

      if ((v12 & 0x80u) == 0)
      {
        v13 = v46;
      }

      if (v17 >= v13)
      {
LABEL_95:
        *a3 = a2;
        *a4 = a2;
        return a4;
      }

LABEL_92:
      a4 = (a2 + 1);
      v54 = a2[1];
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        v56 = a2;
        do
        {
          v55 = v56[2];
          v28 = *v55 == v56;
          v56 = v55;
        }

        while (!v28);
      }

      if (v55 == v9)
      {
        goto LABEL_127;
      }

      v57 = *(a5 + 23);
      v58 = v57;
      v59 = *(a5 + 8);
      if ((v57 & 0x80u) == 0)
      {
        v60 = *(a5 + 23);
      }

      else
      {
        v60 = *(a5 + 8);
      }

      v61 = *(v55 + 55);
      v62 = v61;
      v63 = v55[5];
      if ((v61 & 0x80u) == 0)
      {
        v64 = *(v55 + 55);
      }

      else
      {
        v64 = v55[5];
      }

      if (v64 >= v60)
      {
        v65 = v60;
      }

      else
      {
        v65 = v64;
      }

      if (v65)
      {
        v66 = 0;
        while (1)
        {
          v67 = *(a5 + 23) >= 0 ? a5 : *a5;
          v68 = __tolower(*(v67 + v66));
          v69 = *(v55 + 55) >= 0 ? (v55 + 4) : v55[4];
          v70 = __tolower(*(v69 + v66));
          if (v68 > v70)
          {
            goto LABEL_129;
          }

          if (v68 < v70)
          {
            goto LABEL_127;
          }

          if (v65 == ++v66)
          {
            v57 = *(a5 + 23);
            v59 = *(a5 + 8);
            v61 = *(v55 + 55);
            v63 = v55[5];
            v62 = *(v55 + 55);
            v58 = *(a5 + 23);
            break;
          }
        }
      }

      if (v58 < 0)
      {
        v57 = v59;
      }

      v71 = v62 >= 0 ? v61 : v63;
      if (v57 < v71)
      {
LABEL_127:
        if (*a4)
        {
          *a3 = v55;
          return v55;
        }

        else
        {
          *a3 = a2;
        }

        return a4;
      }

      goto LABEL_129;
    }
  }

LABEL_28:
  if (*a1 == a2)
  {
    v26 = a2;
    goto LABEL_62;
  }

  v25 = *a2;
  if (*a2)
  {
    do
    {
      v26 = v25;
      v25 = v25[1];
    }

    while (v25);
  }

  else
  {
    v27 = a2;
    do
    {
      v26 = v27[2];
      v28 = *v26 == v27;
      v27 = v26;
    }

    while (v28);
  }

  v29 = *(v26 + 55);
  v30 = v29;
  v31 = v26[5];
  if ((v29 & 0x80u) == 0)
  {
    v32 = *(v26 + 55);
  }

  else
  {
    v32 = v26[5];
  }

  v33 = *(a5 + 23);
  v34 = v33;
  v35 = *(a5 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v36 = *(a5 + 23);
  }

  else
  {
    v36 = *(a5 + 8);
  }

  if (v36 >= v32)
  {
    v37 = v32;
  }

  else
  {
    v37 = v36;
  }

  if (v37)
  {
    v38 = 0;
    while (1)
    {
      v39 = *(v26 + 55) >= 0 ? (v26 + 4) : v26[4];
      v40 = __tolower(*(v39 + v38));
      v41 = *(a5 + 23) >= 0 ? a5 : *a5;
      v42 = __tolower(*(v41 + v38));
      if (v40 > v42)
      {
        goto LABEL_129;
      }

      if (v40 < v42)
      {
        goto LABEL_62;
      }

      if (v37 == ++v38)
      {
        v29 = *(v26 + 55);
        v31 = v26[5];
        v33 = *(a5 + 23);
        v35 = *(a5 + 8);
        v34 = *(a5 + 23);
        v30 = *(v26 + 55);
        break;
      }
    }
  }

  if (v30 < 0)
  {
    v29 = v31;
  }

  if (v34 >= 0)
  {
    v43 = v33;
  }

  else
  {
    v43 = v35;
  }

  if (v29 < v43)
  {
LABEL_62:
    if (*a2)
    {
      *a3 = v26;
      return v26 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

LABEL_129:

  return sub_BF8C8(a1, a3, a5);
}

uint64_t *sub_BF8C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
    v7 = (a1 + 8);
    goto LABEL_63;
  }

  while (1)
  {
    while (1)
    {
      v7 = v4;
      v8 = v4 + 4;
      v9 = *(a3 + 23);
      v10 = *(a3 + 8);
      v11 = (v9 & 0x80u) == 0 ? *(a3 + 23) : *(a3 + 8);
      v12 = *(v7 + 55);
      v13 = v7[5];
      v14 = (v12 & 0x80u) == 0 ? *(v7 + 55) : v7[5];
      v15 = v14 >= v11 ? v11 : v14;
      if (v15)
      {
        break;
      }

LABEL_25:
      if ((v9 & 0x80u) == 0)
      {
        v21 = v9;
      }

      else
      {
        v21 = v10;
      }

      if ((v12 & 0x80u) == 0)
      {
        v22 = v12;
      }

      else
      {
        v22 = v13;
      }

      if (v21 >= v22)
      {
        goto LABEL_34;
      }

LABEL_3:
      v4 = *v7;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_63;
      }
    }

    v16 = 0;
    while (1)
    {
      v17 = *(a3 + 23) >= 0 ? a3 : *a3;
      v18 = __tolower(*(v17 + v16));
      v19 = *(v7 + 55) >= 0 ? v8 : v7[4];
      v20 = __tolower(*(v19 + v16));
      if (v18 > v20)
      {
        break;
      }

      if (v18 < v20)
      {
        goto LABEL_3;
      }

      if (v15 == ++v16)
      {
        v9 = *(a3 + 23);
        v10 = *(a3 + 8);
        v12 = *(v7 + 55);
        v13 = v7[5];
        goto LABEL_25;
      }
    }

    v12 = *(v7 + 55);
    v13 = v7[5];
    v9 = *(a3 + 23);
    v10 = *(a3 + 8);
LABEL_34:
    v23 = (v12 & 0x80u) == 0 ? v12 : v13;
    v24 = (v9 & 0x80u) == 0 ? v9 : v10;
    v25 = v24 >= v23 ? v23 : v24;
    if (v25)
    {
      break;
    }

LABEL_55:
    if ((v12 & 0x80u) != 0)
    {
      v12 = v13;
    }

    if ((v9 & 0x80u) != 0)
    {
      v9 = v10;
    }

    if (v12 >= v9)
    {
      goto LABEL_63;
    }

LABEL_60:
    v5 = v7 + 1;
    v4 = v7[1];
    if (!v4)
    {
      goto LABEL_63;
    }
  }

  v26 = 0;
  while (1)
  {
    v27 = *(v7 + 55) >= 0 ? v8 : v7[4];
    v28 = __tolower(*(v27 + v26));
    v29 = *(a3 + 23) >= 0 ? a3 : *a3;
    v30 = __tolower(*(v29 + v26));
    if (v28 > v30)
    {
      break;
    }

    if (v28 < v30)
    {
      goto LABEL_60;
    }

    if (v25 == ++v26)
    {
      v12 = *(v7 + 55);
      v13 = v7[5];
      v9 = *(a3 + 23);
      v10 = *(a3 + 8);
      goto LABEL_55;
    }
  }

LABEL_63:
  *a2 = v7;
  return v5;
}

uint64_t sub_BFAC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_BF8C8(a1, &v4, a2);
  if (!*v2)
  {
    operator new();
  }

  return *v2;
}

void *sub_BFBC8(uint64_t a1, void **a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = v4 - v3;
  v7 = v6 + 1;
  if ((v6 + 1) >> 61)
  {
    sub_1794();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 2 > v7)
  {
    v7 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v10 = (8 * v6);
  v11 = *a2;
  v12 = &v10[-(v4 - v3)];
  *v10 = *a2;
  v13 = v10 + 1;
  ++*v11;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v12;
    do
    {
      v16 = *v14++;
      *v15++ = v16;
      ++*v16;
    }

    while (v14 != v4);
    do
    {
      v3 = sub_B3588(v3) + 1;
    }

    while (v3 != v4);
    v3 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v13;
}

void sub_BFCF4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v9 = v3 - v2;
    if (v9 < 3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v4 = a1[4];
  v5 = &v2[v4 / 0x1E];
  v6 = *v5 + 136 * (v4 % 0x1E);
  v7 = v2[(a1[5] + v4) / 0x1E] + 136 * ((a1[5] + v4) % 0x1E);
  if (v6 != v7)
  {
    while (1)
    {
      if (*(v6 + 119) < 0)
      {
        operator delete(*(v6 + 96));
        if ((*(v6 + 95) & 0x80000000) == 0)
        {
LABEL_7:
          if ((*(v6 + 71) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v6 + 95) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v6 + 72));
      if ((*(v6 + 71) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(v6 + 31) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(*(v6 + 48));
      if ((*(v6 + 31) & 0x80000000) == 0)
      {
LABEL_9:
        v6 += 136;
        if (v6 - *v5 == 4080)
        {
          goto LABEL_15;
        }

        goto LABEL_4;
      }

LABEL_14:
      operator delete(*(v6 + 8));
      v6 += 136;
      if (v6 - *v5 == 4080)
      {
LABEL_15:
        v8 = v5[1];
        ++v5;
        v6 = v8;
      }

LABEL_4:
      if (v6 == v7)
      {
        v2 = a1[1];
        v3 = a1[2];
        break;
      }
    }
  }

  a1[5] = 0;
  v9 = v3 - v2;
  if (v9 < 3)
  {
    goto LABEL_19;
  }

  do
  {
LABEL_18:
    operator delete(*v2);
    v10 = a1[2];
    v2 = (a1[1] + 8);
    a1[1] = v2;
    v9 = (v10 - v2) >> 3;
  }

  while (v9 > 2);
LABEL_19:
  if (v9 == 1)
  {
    v11 = 15;
  }

  else
  {
    if (v9 != 2)
    {
      return;
    }

    v11 = 30;
  }

  a1[4] = v11;
}

void sub_BFE94(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v7 = &v3[v4];
      v8 = v3[v4 + 8];
      if (v8 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if (v3[v4 + 9])
        {
          operator delete[]();
        }

        if (v3[v4 + 11])
        {
          operator delete();
        }

        goto LABEL_19;
      }

      if (v8 == 1)
      {
        if (v3[v4 + 9])
        {
          operator delete();
        }

        v9 = v3[v4 + 10];
        if (!v9)
        {
          goto LABEL_19;
        }

LABEL_18:
        (*(*v9 + 8))(v9);
LABEL_19:
        v10 = &v3[v4];
        if (SHIBYTE(v3[v4 + 2]) < 0)
        {
          v10[1] = &dword_0 + 3;
          v7 = *v10;
        }

        else
        {
          *(v10 + 23) = 3;
        }

        *v7 = 4144959;
        v6 = &v3[v4];
        v6[3] = -1;
        v6[4] = -1;
        v6[5] = -1;
        v6[6] = 0;
        v6[7] = 0;
        *(v6 + 61) = 0;
        v6[10] = 0;
        v6[11] = 0;
        v6[9] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v5;
      v4 += 12;
      if (v5 >= 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5))
      {
        goto LABEL_23;
      }
    }

    v9 = v7[10];
    if (v9)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_23:
  while (v2 != v3)
  {
    v11 = *(v2 - 73);
    v2 -= 12;
    if (v11 < 0)
    {
      operator delete(*v2);
    }
  }

  a1[2] = v3;
  a1[16] = 0;
}

uint64_t sub_C003C(void *a1, uint64_t a2)
{
  v3 = a1[71];
  v4 = a1[70];
  v5 = 30 * ((v3 - v4) >> 3) - 1;
  if (v3 == v4)
  {
    v5 = 0;
  }

  if (v5 == a1[74] + a1[73])
  {
    v6 = a2;
    sub_C35C4(a1 + 69);
    a2 = v6;
    v4 = a1[70];
    v3 = a1[71];
  }

  if (v3 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[74] + a1[73];
    v8 = *(v4 + 8 * (v7 / 0x1E)) + 136 * (v7 % 0x1E);
  }

  result = sub_C398C(v8, a2);
  ++a1[74];
  return result;
}

void sub_C00FC(unsigned int a1@<W0>, unint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if ((a1 & 0x80000000) != 0)
    {
      do
      {
        std::string::push_back(a2, 10 * (v3 / 10) - v3 + 48);
        v4 = v3 + 9;
        v3 = v3 / 10;
      }

      while (v4 >= 0x13);
      std::string::push_back(a2, 45);
    }

    else
    {
      do
      {
        std::string::push_back(a2, (v3 % 0xA) | 0x30);
        v10 = v3 > 9;
        v3 /= 0xAu;
      }

      while (v10);
    }

    v5 = *(a2 + 23);
    v6 = v5 < 0;
    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = *(a2 + 23);
    }

    v9 = (v7 + v8 - 1);
    if (v8)
    {
      v10 = v9 > v7;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = v7 + 1;
      do
      {
        v12 = *(v11 - 1);
        *(v11 - 1) = *v9;
        *v9-- = v12;
      }

      while (v11++ < v9);
    }
  }

  else
  {
    *(a2 + 23) = 1;
    *a2 = 48;
  }
}

void sub_C023C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C0260(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 48));
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_C02EC(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 != *a1)
  {
    v4 = 0;
    v5 = a1 + 5;
    v41 = a1 + 5;
    do
    {
      if ((*(v2 + 40 * v4) - 1) > 4)
      {
        goto LABEL_4;
      }

      *(&v58.__r_.__value_.__s + 23) = 9;
      strcpy(&v58, "ERR003 - ");
      if (v4 >= 0xCCCCCCCCCCCCCCCDLL * ((v1 - v2) >> 3))
      {
        v6 = v5;
      }

      else
      {
        v6 = (v2 + 40 * v4);
      }

      v7 = *v6 - 1;
      if (v7 >= 5)
      {
        v8 = "Unknown compiler error";
        v9 = 22;
      }

      else
      {
        v8 = off_2668988[v7];
        v9 = qword_22900E8[v7];
      }

      std::string::append(&v58, v8, v9);
      if (v4 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3))
      {
        v10 = v5;
      }

      else
      {
        v10 = *a1 + 40 * v4;
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      if (size + 2 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      v42 = v10;
      if (size + 2 >= 0x17)
      {
        operator new();
      }

      memset(&v46, 0, sizeof(v46));
      *(&v46.__r_.__value_.__s + 23) = size + 2;
      if (size)
      {
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v58;
        }

        else
        {
          v12 = v58.__r_.__value_.__r.__words[0];
        }

        memmove(&v46, v12, size);
      }

      strcpy(&v46 + size, ": ");
      if (v4 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3))
      {
        v13 = v5;
      }

      else
      {
        v13 = *a1 + 40 * v4;
      }

      v16 = *(v13 + 8);
      v14 = v13 + 8;
      v15 = v16;
      v17 = *(v14 + 23);
      if (v17 >= 0)
      {
        v18 = v14;
      }

      else
      {
        v18 = v15;
      }

      if (v17 >= 0)
      {
        v19 = *(v14 + 23);
      }

      else
      {
        v19 = *(v14 + 8);
      }

      v20 = std::string::append(&v46, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v48 = v20->__r_.__value_.__r.__words[2];
      *v47 = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      memset(&v43, 0, sizeof(v43));
      v22 = 20270;
      do
      {
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          v27 = (v43.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v43.__r_.__value_.__l.__size_ == v27)
          {
            if ((v43.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_44:
            operator new();
          }

          v23 = v43.__r_.__value_.__l.__size_;
          v24 = v43.__r_.__value_.__r.__words[0];
          ++v43.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v43.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_44;
          }

          v23 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
          *(&v43.__r_.__value_.__s + 23) = (*(&v43.__r_.__value_.__s + 23) + 1) & 0x7F;
          v24 = &v43;
        }

        v25 = v24 + v23;
        *v25 = (v22 % 0xA) | 0x30;
        v25[1] = 0;
        v26 = v22 > 9;
        v22 /= 0xAu;
      }

      while (v26);
      v28 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      v29 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v43.__r_.__value_.__l.__size_;
        v29 = v43.__r_.__value_.__r.__words[0];
      }

      if (v28)
      {
        v30 = (v29 + v28 - 1);
        if (v30 > v29)
        {
          v31 = &v29->__r_.__value_.__s.__data_[1];
          do
          {
            v32 = *(v31 - 1);
            *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
            v30->__r_.__value_.__s.__data_[0] = v32;
            v30 = (v30 - 1);
          }

          while (v31++ < v30);
        }
      }

      v34 = std::string::insert(&v43, 0, "exprtk.hpp:", 0xBuLL);
      v5 = v41;
      v35 = *&v34->__r_.__value_.__l.__data_;
      v45 = v34->__r_.__value_.__r.__words[2];
      *v44 = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(6, v42, v47, v44, v49);
      v36 = a1[71];
      v37 = a1[70];
      v38 = 30 * ((v36 - v37) >> 3) - 1;
      if (v36 == v37)
      {
        v38 = 0;
      }

      if (v38 == a1[74] + a1[73])
      {
        sub_C35C4(a1 + 69);
        v37 = a1[70];
        v36 = a1[71];
      }

      if (v36 == v37)
      {
        v40 = 0;
      }

      else
      {
        v39 = a1[74] + a1[73];
        v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
      }

      sub_C398C(v40, v49);
      ++a1[74];
      if (v57 < 0)
      {
        operator delete(__p);
        if ((v55 & 0x80000000) == 0)
        {
LABEL_62:
          if ((v53 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_72;
        }
      }

      else if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      operator delete(v54);
      if ((v53 & 0x80000000) == 0)
      {
LABEL_63:
        if ((v51 & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_73;
      }

LABEL_72:
      operator delete(v52);
      if ((v51 & 0x80000000) == 0)
      {
LABEL_64:
        if ((SHIBYTE(v45) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_74;
      }

LABEL_73:
      operator delete(v50);
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
LABEL_65:
        if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_75;
      }

LABEL_74:
      operator delete(v44[0]);
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_66:
        if ((SHIBYTE(v48) & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_76;
      }

LABEL_75:
      operator delete(v43.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v48) & 0x80000000) == 0)
      {
LABEL_67:
        if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

        goto LABEL_77;
      }

LABEL_76:
      operator delete(v47[0]);
      if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_68:
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      }

LABEL_77:
      operator delete(v46.__r_.__value_.__l.__data_);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_78:
        operator delete(v58.__r_.__value_.__l.__data_);
      }

LABEL_3:
      v2 = *a1;
      v1 = a1[1];
LABEL_4:
      ++v4;
    }

    while (v4 < 0xCCCCCCCCCCCCCCCDLL * ((v1 - v2) >> 3));
  }
}

void sub_C08B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if ((*(v36 - 89) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v36 - 112));
  _Unwind_Resume(exception_object);
}