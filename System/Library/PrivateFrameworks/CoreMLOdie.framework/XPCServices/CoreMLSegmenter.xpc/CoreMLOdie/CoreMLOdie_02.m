char *sub_100019584(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 10) > v6)
  {
    v7 = (v5 + 1002);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *v10 = *" requires ";
  *(v10 + 4) = 8307;
  a2[1] += 10;
  v11 = *(a1 + 16);
  (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    (*(*v11 + 40))(v11, a2);
  }

  result = *a2;
  v13 = a2[1];
  v14 = v13 + 1;
  v15 = a2[2];
  if ((v13 + 1) > v15)
  {
    v16 = (v13 + 993);
    if (2 * v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = 2 * v15;
    }

    a2[2] = v17;
    result = malloc_type_realloc(result, v17, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v13 = a2[1];
      v14 = v13 + 1;
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  a2[1] = v14;
  v13[result] = 59;
  return result;
}

char *sub_1000196F8(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 8 > v6)
  {
    v7 = v5 + 1000;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_71;
    }

    v5 = *(a2 + 8);
  }

  *&v4[v5] = 0x7365726975716572;
  v10 = *(a2 + 8);
  v11 = v10 + 8;
  *(a2 + 8) = v10 + 8;
  if (a1[3])
  {
    v12 = v10 + 9;
    v13 = *(a2 + 16);
    v14 = *a2;
    if (v10 + 9 > v13)
    {
      if (2 * v13 <= v10 + 1001)
      {
        v15 = v10 + 1001;
      }

      else
      {
        v15 = 2 * v13;
      }

      *(a2 + 16) = v15;
      v14 = malloc_type_realloc(v14, v15, 0x100004077774924uLL);
      *a2 = v14;
      if (!v14)
      {
        goto LABEL_71;
      }

      v11 = *(a2 + 8);
      v12 = v11 + 1;
    }

    *(a2 + 8) = v12;
    v14[v11] = 32;
    ++*(a2 + 32);
    v16 = *a2;
    v17 = *(a2 + 8);
    v18 = v17 + 1;
    v19 = *(a2 + 16);
    if (v17 + 1 > v19)
    {
      v20 = v17 + 993;
      if (2 * v19 <= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = 2 * v19;
      }

      *(a2 + 16) = v21;
      v16 = malloc_type_realloc(v16, v21, 0x100004077774924uLL);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_71;
      }

      v17 = *(a2 + 8);
      v18 = v17 + 1;
    }

    *(a2 + 8) = v18;
    v16[v17] = 40;
    v22 = *(a2 + 8);
    if (a1[3])
    {
      v23 = 0;
      v24 = 1;
      while (1)
      {
        v25 = v22;
        if ((v24 & 1) == 0)
        {
          v26 = *(a2 + 16);
          v27 = *a2;
          if (v22 + 2 <= v26)
          {
            v30 = v22;
          }

          else
          {
            v28 = 2 * v26;
            if (v28 <= v22 + 994)
            {
              v29 = v22 + 994;
            }

            else
            {
              v29 = v28;
            }

            *(a2 + 16) = v29;
            v27 = malloc_type_realloc(v27, v29, 0x100004077774924uLL);
            *a2 = v27;
            if (!v27)
            {
              goto LABEL_71;
            }

            v30 = *(a2 + 8);
          }

          *&v27[v30] = 8236;
          v25 = *(a2 + 8) + 2;
          *(a2 + 8) = v25;
        }

        sub_100006714(*(a1[2] + 8 * v23), a2, 18, 0);
        if (v25 == *(a2 + 8))
        {
          *(a2 + 8) = v22;
          if (++v23 == a1[3])
          {
            break;
          }
        }

        else
        {
          v24 = 0;
          v22 = *(a2 + 8);
          if (++v23 == a1[3])
          {
            break;
          }
        }
      }
    }

    --*(a2 + 32);
    v31 = v22 + 1;
    v32 = *(a2 + 16);
    v33 = *a2;
    if (v22 + 1 > v32)
    {
      v34 = 2 * v32;
      if (v34 <= v22 + 993)
      {
        v35 = v22 + 993;
      }

      else
      {
        v35 = v34;
      }

      *(a2 + 16) = v35;
      v33 = malloc_type_realloc(v33, v35, 0x100004077774924uLL);
      *a2 = v33;
      if (!v33)
      {
        goto LABEL_71;
      }

      v22 = *(a2 + 8);
      v31 = v22 + 1;
    }

    *(a2 + 8) = v31;
    v33[v22] = 41;
    v11 = *(a2 + 8);
  }

  v36 = v11 + 1;
  v37 = *(a2 + 16);
  v38 = *a2;
  if (v11 + 1 > v37)
  {
    v39 = v11 + 993;
    if (2 * v37 <= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = 2 * v37;
    }

    *(a2 + 16) = v40;
    v38 = malloc_type_realloc(v38, v40, 0x100004077774924uLL);
    *a2 = v38;
    if (!v38)
    {
      goto LABEL_71;
    }

    v11 = *(a2 + 8);
    v36 = v11 + 1;
  }

  *(a2 + 8) = v36;
  v38[v11] = 32;
  ++*(a2 + 32);
  v41 = *a2;
  v42 = *(a2 + 8);
  v43 = v42 + 1;
  v44 = *(a2 + 16);
  if (v42 + 1 > v44)
  {
    v45 = v42 + 993;
    if (2 * v44 <= v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = 2 * v44;
    }

    *(a2 + 16) = v46;
    v41 = malloc_type_realloc(v41, v46, 0x100004077774924uLL);
    *a2 = v41;
    if (!v41)
    {
      goto LABEL_71;
    }

    v42 = *(a2 + 8);
    v43 = v42 + 1;
  }

  *(a2 + 8) = v43;
  v41[v42] = 123;
  v47 = a1[5];
  if (v47)
  {
    v48 = a1[4];
    v49 = 8 * v47;
    do
    {
      v50 = *v48;
      (*(**v48 + 32))(*v48, a2);
      if ((*(v50 + 9) & 0xC0) != 0x40)
      {
        (*(*v50 + 40))(v50, a2);
      }

      ++v48;
      v49 -= 8;
    }

    while (v49);
  }

  v51 = *a2;
  v52 = *(a2 + 8);
  v53 = v52 + 1;
  v54 = *(a2 + 16);
  if (v52 + 1 > v54)
  {
    v55 = v52 + 993;
    if (2 * v54 <= v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = 2 * v54;
    }

    *(a2 + 16) = v56;
    v51 = malloc_type_realloc(v51, v56, 0x100004077774924uLL);
    *a2 = v51;
    if (!v51)
    {
      goto LABEL_71;
    }

    v52 = *(a2 + 8);
    v53 = v52 + 1;
  }

  *(a2 + 8) = v53;
  v51[v52] = 32;
  --*(a2 + 32);
  result = *a2;
  v58 = *(a2 + 8);
  v59 = v58 + 1;
  v60 = *(a2 + 16);
  if (v58 + 1 > v60)
  {
    v61 = v58 + 993;
    if (2 * v60 <= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = 2 * v60;
    }

    *(a2 + 16) = v62;
    result = malloc_type_realloc(result, v62, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v58 = *(a2 + 8);
      v59 = v58 + 1;
      goto LABEL_70;
    }

LABEL_71:
    abort();
  }

LABEL_70:
  *(a2 + 8) = v59;
  result[v58] = 125;
  return result;
}

char *sub_100019B64(void *a1, char **a2)
{
  v4 = a1[3];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 2) > v7)
  {
    v8 = (v6 + 994);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_56;
    }

    v6 = a2[1];
  }

  *&v6[v5] = 15406;
  a2[1] += 2;
  v11 = a1[2];
  (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    (*(*v11 + 40))(v11, a2);
  }

  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  if ((v13 + 11) > v14)
  {
    v15 = (v13 + 1003);
    v16 = 2 * v14;
    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    a2[2] = v17;
    v12 = malloc_type_realloc(v12, v17, 0x100004077774924uLL);
    *a2 = v12;
    if (!v12)
    {
      goto LABEL_56;
    }

    v13 = a2[1];
  }

  v18 = &v13[v12];
  *v18 = *" at offset ";
  *(v18 + 7) = 544499059;
  v19 = a2[1];
  v20 = v19 + 11;
  a2[1] = v19 + 11;
  v21 = a1[5];
  if (!v21)
  {
    v36 = a2[2];
    v37 = *a2;
    if ((v19 + 12) > v36)
    {
      if (2 * v36 <= (v19 + 1004))
      {
        v38 = (v19 + 1004);
      }

      else
      {
        v38 = 2 * v36;
      }

      a2[2] = v38;
      v37 = malloc_type_realloc(v37, v38, 0x100004077774924uLL);
      *a2 = v37;
      if (!v37)
      {
        goto LABEL_56;
      }

      v20 = a2[1];
    }

    v20[v37] = 48;
    v21 = 1;
    goto LABEL_48;
  }

  v22 = a1[4];
  v23 = a2[2];
  v24 = *a2;
  if (*v22 != 110)
  {
    v39 = &v20[v21];
    if (&v20[v21] > v23)
    {
      if (2 * v23 <= (v39 + 992))
      {
        v40 = (v39 + 992);
      }

      else
      {
        v40 = 2 * v23;
      }

      a2[2] = v40;
      v24 = malloc_type_realloc(v24, v40, 0x100004077774924uLL);
      *a2 = v24;
      if (!v24)
      {
        goto LABEL_56;
      }

      v20 = a2[1];
    }

    v34 = &v20[v24];
    v35 = v22;
    goto LABEL_47;
  }

  if ((v19 + 12) > v23)
  {
    if (2 * v23 <= (v19 + 1004))
    {
      v25 = (v19 + 1004);
    }

    else
    {
      v25 = 2 * v23;
    }

    a2[2] = v25;
    v24 = malloc_type_realloc(v24, v25, 0x100004077774924uLL);
    *a2 = v24;
    if (!v24)
    {
      goto LABEL_56;
    }

    v20 = a2[1];
  }

  v20[v24] = 45;
  v26 = a2[1];
  v27 = (v26 + 1);
  a2[1] = v26 + 1;
  v28 = a1[5];
  v21 = v28 - 1;
  if (v28 != 1)
  {
    v29 = a1[4];
    v30 = &v26[v28];
    v31 = a2[2];
    v32 = *a2;
    if (v30 > v31)
    {
      if (2 * v31 <= v30 + 992)
      {
        v33 = v30 + 992;
      }

      else
      {
        v33 = 2 * v31;
      }

      a2[2] = v33;
      v32 = malloc_type_realloc(v32, v33, 0x100004077774924uLL);
      *a2 = v32;
      if (!v32)
      {
        goto LABEL_56;
      }

      v27 = a2[1];
    }

    v34 = &v32[v27];
    v35 = (v29 + 1);
LABEL_47:
    memcpy(v34, v35, v21);
LABEL_48:
    v27 = &a2[1][v21];
    a2[1] = v27;
  }

  v41 = a2[2];
  result = *a2;
  if (v27 + 1 > v41)
  {
    v43 = v27 + 993;
    v44 = 2 * v41;
    if (v44 <= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    a2[2] = v45;
    result = malloc_type_realloc(result, v45, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v27 = a2[1];
      goto LABEL_55;
    }

LABEL_56:
    abort();
  }

LABEL_55:
  result[v27] = 62;
  ++a2[1];
  return result;
}

void *sub_100019EFC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 9 > v6)
  {
    v7 = v5 + 1001;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a2 + 8);
  }

  v10 = &v4[v5];
  *v10 = *"sizeof...";
  v10[8] = 46;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = v12 + 9;
  *(a2 + 8) = v12 + 9;
  ++*(a2 + 32);
  v14 = v12 + 10;
  v15 = *(a2 + 16);
  if (v12 + 10 > v15)
  {
    if (2 * v15 <= v12 + 1002)
    {
      v16 = v12 + 1002;
    }

    else
    {
      v16 = 2 * v15;
    }

    *(a2 + 16) = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_20;
    }

    v13 = *(a2 + 8);
    v14 = v13 + 1;
  }

  *(a2 + 8) = v14;
  *(v11 + v13) = 40;
  v17 = *(a1 + 16);
  v25 = 42;
  v26 = 1344;
  v24 = off_1002D2DB0;
  v27 = v17;
  sub_100018320(&v24, a2);
  --*(a2 + 32);
  result = *a2;
  v19 = *(a2 + 8);
  v20 = v19 + 1;
  v21 = *(a2 + 16);
  if (v19 + 1 > v21)
  {
    v22 = v19 + 993;
    if (2 * v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = 2 * v21;
    }

    *(a2 + 16) = v23;
    result = malloc_type_realloc(result, v23, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v19 = *(a2 + 8);
      v20 = v19 + 1;
      goto LABEL_19;
    }

LABEL_20:
    abort();
  }

LABEL_19:
  *(a2 + 8) = v20;
  *(result + v19) = 41;
  return result;
}

void *sub_10001A0B0(void *result, char **a2)
{
  if (result[3])
  {
    v3 = result;
    v4 = 0;
    v5 = a2[1];
    v6 = 1;
    do
    {
      while (1)
      {
        v7 = v5;
        if ((v6 & 1) == 0)
        {
          v8 = a2[2];
          v9 = *a2;
          if (v5 + 2 <= v8)
          {
            v12 = v5;
          }

          else
          {
            v10 = 2 * v8;
            if (v10 <= v5 + 994)
            {
              v11 = v5 + 994;
            }

            else
            {
              v11 = v10;
            }

            a2[2] = v11;
            v9 = malloc_type_realloc(v9, v11, 0x100004077774924uLL);
            *a2 = v9;
            if (!v9)
            {
              abort();
            }

            v12 = a2[1];
          }

          *&v9[v12] = 8236;
          v7 = (a2[1] + 2);
          a2[1] = v7;
        }

        result = sub_100006714(*(v3[2] + 8 * v4), a2, 18, 0);
        if (v7 != a2[1])
        {
          break;
        }

        a2[1] = v5;
        if (++v4 == v3[3])
        {
          return result;
        }
      }

      v6 = 0;
      v5 = a2[1];
      ++v4;
    }

    while (v4 != v3[3]);
  }

  return result;
}

uint64_t sub_10001A1E0(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 6) > v6)
  {
    v7 = (v5 + 998);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *(v10 + 2) = 8311;
  *v10 = 1869768820;
  a2[1] += 6;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

char *sub_10001A310(unsigned __int8 **a1, size_t a2)
{
  if (a1[1] == *a1)
  {
LABEL_6:

    return sub_10000CAFC(a1);
  }

  v2 = **a1;
  if (v2 != 68)
  {
    if (v2 == 84)
    {
      v3 = a1;
      result = sub_10000C54C(a1, a2);
      if (!result)
      {
        return result;
      }

LABEL_10:
      v5 = v3[38];
      if (v5 != v3[39])
      {
        *v5 = result;
        v3[38] = v5 + 8;
        return result;
      }

      v6 = result;
      v7 = v3[37];
      v8 = v5 - v7;
      if (v7 == (v3 + 40))
      {
        v9 = malloc_type_malloc(2 * (v5 - v7), 0x2004093837F09uLL);
        if (!v9)
        {
          goto LABEL_20;
        }

        v10 = v3;
        v11 = v3[37];
        v12 = v3[38];
        if (v12 != v11)
        {
          v13 = v9;
          memmove(v9, v11, v12 - v11);
          v9 = v13;
          v10 = v3;
        }

        v10[37] = v9;
      }

      else
      {
        v9 = malloc_type_realloc(v7, 2 * (v5 - v7), 0x2004093837F09uLL);
        v10 = v3;
        v3[37] = v9;
        if (!v9)
        {
LABEL_20:
          abort();
        }
      }

      v14 = &v9[v8];
      v10[39] = &v9[8 * (v8 >> 2)];
      result = v6;
      *v14 = v6;
      v10[38] = v14 + 1;
      return result;
    }

    goto LABEL_6;
  }

  v3 = a1;
  result = sub_10000C9B0(a1);
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_10001A458(uint64_t a1)
{
  v2 = sub_10000B6E8(a1);
  if (v2)
  {
    if (*(a1 + 8) != *a1 && **a1 == 73)
    {
      v3 = v2;
      sub_10000BE9C(a1, 0);
      if (v4)
      {
        v5 = *(a1 + 4904);
        v6 = v5[1];
        if ((v6 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v7 = v4;
          v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v8)
          {
            std::terminate();
          }

          v5 = v8;
          v6 = 0;
          *v8 = *(a1 + 4904);
          v8[1] = 0;
          *(a1 + 4904) = v8;
          v4 = v7;
        }

        v5[1] = v6 + 32;
        v9 = v5 + v6;
        v9[24] = 45;
        *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
        *(v9 + 2) = off_1002D3890;
        *(v9 + 4) = v3;
        *(v9 + 5) = v4;
      }
    }
  }
}

void sub_10001A554(uint64_t a1, size_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    if ((_DefaultRuneLocale.__runetype[0] & 0x400) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:

    sub_10001A458(a1);
    return;
  }

  v5 = *v3;
  if ((v5 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v5] & 0x400) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (&v4[-*a1] < 2)
  {
    goto LABEL_7;
  }

  if (*v3 == 28260)
  {
    v14 = (v3 + 2);
    *a1 = v14;
    if (v4 == v14)
    {
      if ((_DefaultRuneLocale.__runetype[0] & 0x400) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = *v14;
      if (v15 < 0 || (_DefaultRuneLocale.__runetype[v15] & 0x400) == 0)
      {
LABEL_23:
        v16 = sub_10001A310(a1, a2);
        if (!v16)
        {
          return;
        }

        goto LABEL_24;
      }
    }

    sub_10001A458(a1);
    v16 = v21;
    if (!v21)
    {
      return;
    }

LABEL_24:
    v17 = *(a1 + 4904);
    v18 = v17[1];
    if ((v18 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v19 = v16;
      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
        goto LABEL_33;
      }

      v18 = 0;
      *v17 = *(a1 + 4904);
      v17[1] = 0;
      *(a1 + 4904) = v17;
      v16 = v19;
    }

    v17[1] = v18 + 32;
    v20 = v17 + v18;
    v20[24] = 50;
    *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
    *(v20 + 2) = off_1002D32F0;
    *(v20 + 4) = v16;
    return;
  }

  if (*v3 == 28271)
  {
    *a1 = v3 + 2;
    v6 = sub_10001A9D8(a1, 0);
    if (!v6)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_7:
  v6 = sub_10001A9D8(a1, 0);
  if (!v6)
  {
    return;
  }

LABEL_8:
  if (*(a1 + 8) != *a1 && **a1 == 73)
  {
    v7 = v6;
    sub_10000BE9C(a1, 0);
    if (v8)
    {
      v9 = *(a1 + 4904);
      v10 = v9[1];
      if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_14:
        v9[1] = v10 + 32;
        v13 = v9 + v10;
        v13[24] = 45;
        *(v13 + 25) = *(v13 + 25) & 0xF000 | 0x540;
        *(v13 + 2) = off_1002D3890;
        *(v13 + 4) = v7;
        *(v13 + 5) = v8;
        return;
      }

      v11 = v8;
      v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v12)
      {
        v9 = v12;
        v10 = 0;
        *v12 = *(a1 + 4904);
        v12[1] = 0;
        *(a1 + 4904) = v12;
        v8 = v11;
        goto LABEL_14;
      }

LABEL_33:
      std::terminate();
    }
  }
}

uint64_t sub_10001A81C(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 2) > v7)
  {
    v8 = (v6 + 994);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  *&v6[v5] = 14906;
  a2[1] += 2;
  v11 = *(a1 + 24);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

char *sub_10001A9D8(uint64_t a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (&v3[-*a1] < 2)
  {
    goto LABEL_24;
  }

  v4 = 0;
  v5 = *v2;
  v6 = 62;
  do
  {
    v7 = (v4 + v6) >> 1;
    v8 = &unk_1002D1E70 + 16 * v7;
    if (*v8 < v5)
    {
      v4 = v7 + 1;
    }

    else if (*v8 == v5)
    {
      if (v8[1] >= v2[1])
      {
        v6 = (v4 + v6) >> 1;
      }

      else
      {
        v4 = v7 + 1;
      }
    }

    else
    {
      v6 = (v4 + v6) >> 1;
    }
  }

  while (v6 != v4);
  v9 = &unk_1002D1E70 + 16 * v4;
  if (*v9 == v5 && v9[1] == v2[1])
  {
    *a1 = v2 + 2;
    v10 = v9[2];
    if (v10 == 8)
    {
      v11 = *(a1 + 776);
      *(a1 + 776) = 0;
      v12 = *(a1 + 777);
      if (a2)
      {
        v14 = 1;
      }

      else
      {
        v14 = *(a1 + 777);
      }

      *(a1 + 777) = v14;
      result = sub_1000074E8(a1);
      if (!result)
      {
        v20 = a1;
LABEL_52:
        *(v20 + 777) = v12;
        *(v20 + 776) = v11;
        return result;
      }

      v17 = result;
      if (a2)
      {
        *a2 = 1;
      }

      v18 = *(a1 + 4904);
      v19 = v18[1];
      if ((v19 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        v20 = a1;
        goto LABEL_51;
      }

      v18 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v18)
      {
        v19 = 0;
        v20 = a1;
        *v18 = *(a1 + 4904);
        v18[1] = 0;
        *(a1 + 4904) = v18;
LABEL_51:
        v18[1] = v19 + 32;
        v36 = v18 + v19;
        result = v36 + 16;
        v36[24] = 4;
        *(v36 + 25) = *(v36 + 25) & 0xF000 | 0x540;
        *(v36 + 2) = off_1002D3350;
        *(v36 + 4) = v17;
        goto LABEL_52;
      }

LABEL_53:
      std::terminate();
    }

    if (v10 <= 0xA && (v10 != 4 || (v9[3] & 1) != 0))
    {
      v30 = *(v9 + 1);
      v32 = strlen(v30);
      v33 = *(a1 + 4904);
      v34 = v33[1];
      if ((v34 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v33 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v33)
        {
          goto LABEL_53;
        }

        v34 = 0;
        *v33 = *(a1 + 4904);
        v33[1] = 0;
        *(a1 + 4904) = v33;
      }

      v33[1] = v34 + 32;
      v35 = v33 + v34;
      result = v35 + 16;
      v35[24] = 8;
      *(v35 + 25) = *(v35 + 25) & 0xF000 | 0x540;
      *(v35 + 2) = off_1002D1D60;
      *(v35 + 4) = v30;
      *(v35 + 5) = v32;
      return result;
    }

    return 0;
  }

  if (*v2 == 26988)
  {
    *a1 = v2 + 2;
    result = sub_10000B6E8(a1);
    if (result)
    {
      v22 = result;
      v28 = *(a1 + 4904);
      v29 = v28[1];
      if ((v29 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v28 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v28)
        {
          goto LABEL_53;
        }

        v29 = 0;
        *v28 = *(a1 + 4904);
        v28[1] = 0;
        *(a1 + 4904) = v28;
      }

      v28[1] = v29 + 32;
      v25 = v28 + v29;
      result = v25 + 16;
      v25[24] = 20;
      *(v25 + 25) = *(v25 + 25) & 0xF000 | 0x540;
      v26 = off_1002D33B0;
LABEL_40:
      *(v25 + 2) = v26;
      *(v25 + 4) = v22;
    }
  }

  else
  {
LABEL_24:
    if (v2 == v3)
    {
      return 0;
    }

    else
    {
      if (*v2 != 118)
      {
        return 0;
      }

      *a1 = v2 + 1;
      if (v3 == v2 + 1 || v2[1] - 48 > 9)
      {
        return 0;
      }

      *a1 = v2 + 2;
      result = sub_10000B6E8(a1);
      if (result)
      {
        v22 = result;
        v23 = *(a1 + 4904);
        v24 = v23[1];
        if ((v24 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v23 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v23)
          {
            goto LABEL_53;
          }

          v24 = 0;
          *v23 = *(a1 + 4904);
          v23[1] = 0;
          *(a1 + 4904) = v23;
        }

        v23[1] = v24 + 32;
        v25 = v23 + v24;
        result = v25 + 16;
        v25[24] = 4;
        *(v25 + 25) = *(v25 + 25) & 0xF000 | 0x540;
        v26 = off_1002D3350;
        goto LABEL_40;
      }
    }
  }

  return result;
}

uint64_t sub_10001AE30(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (v4 + 1 > v5)
  {
    v6 = v4 + 993;
    v7 = 2 * v5;
    if (v7 > v6)
    {
      v6 = v7;
    }

    a2[2] = v6;
    v8 = a2;
    v3 = malloc_type_realloc(v3, v6, 0x100004077774924uLL);
    *v8 = v3;
    if (!v3)
    {
      abort();
    }

    a2 = v8;
    v4 = v8[1];
  }

  *(v3 + v4) = 126;
  ++a2[1];
  v9 = *(**(a1 + 16) + 32);

  return v9();
}

uint64_t sub_10001AF08(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 9) > v6)
  {
    v7 = (v5 + 1001);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *v10 = *"operator ";
  v10[8] = 32;
  a2[1] += 9;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t sub_10001B03C(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 11) > v6)
  {
    v7 = (v5 + 1003);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *v10 = *"operator ";
  *(v10 + 7) = 539107954;
  a2[1] += 11;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t sub_10001B174(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 2) > v6)
  {
    v7 = (v5 + 994);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  *&v5[v4] = 14906;
  a2[1] += 2;
  v10 = *(a1 + 16);
  result = (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    v12 = *(*v10 + 40);

    return v12(v10, a2);
  }

  return result;
}

char *sub_10001B2BC(uint64_t a1, char *a2)
{
  v2 = a2;
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return a2;
  }

  while (*v4 == 66)
  {
    *a1 = v4 + 1;
    if (v3 == v4 + 1 || v4[1] - 58 < 0xFFFFFFF6)
    {
      return 0;
    }

    v9 = 0;
    v10 = v4 + 2;
    v11 = v4 + 2;
    do
    {
      v12 = v9;
      v13 = v11;
      v14 = v10;
      *a1 = v11;
      v15 = *(v11 - 1);
      v9 = v15 + 10 * v9 - 48;
      if (v11 == v3)
      {
        break;
      }

      ++v11;
      ++v10;
    }

    while (*v13 - 48 <= 9);
    if (v3 - v14 < v9)
    {
      return 0;
    }

    *a1 = &v13[10 * v12 - 48 + v15];
    if (!v9)
    {
      return 0;
    }

    v16 = *(a1 + 4904);
    v17 = v16[1];
    if ((v17 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v16)
      {
        std::terminate();
      }

      v17 = 0;
      *v16 = *(a1 + 4904);
      v16[1] = 0;
      *(a1 + 4904) = v16;
    }

    v16[1] = v17 + 48;
    v6 = v16 + v17;
    result = v6 + 16;
    v8 = *(v2 + 9);
    v6[24] = 9;
    *(v6 + 25) = *(v6 + 25) & 0xF000 | v8 & 0xFC0;
    *(v6 + 2) = off_1002D3530;
    *(v6 + 4) = v2;
    *(v6 + 5) = v14;
    *(v6 + 6) = v9;
    v4 = *a1;
    v3 = *(a1 + 8);
    v2 = result;
    if (*a1 == v3)
    {
      return result;
    }
  }

  return v2;
}

void *sub_10001B48C(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 5) > v6)
  {
    v7 = (v5 + 997);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_30;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  v10[4] = 58;
  *v10 = 979661939;
  v11 = (a2[1] + 5);
  a2[1] = v11;
  v12 = *(a1 + 12);
  if (v12 > 2)
  {
    v18 = "basic_ostream";
    v19 = 7;
    if (v12 != 4)
    {
      v19 = 8;
      v18 = "basic_iostream";
    }

    if (v12 == 3)
    {
      v14 = 7;
    }

    else
    {
      v14 = v19;
    }

    if (v12 == 3)
    {
      v20 = "basic_istream";
    }

    else
    {
      v20 = v18;
    }
  }

  else
  {
    if (!v12)
    {
      v13 = "allocator";
      v14 = 9;
      v15 = v11 + 9;
      v16 = a2[2];
      v17 = *a2;
      if (v11 + 9 <= v16)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    if (v12 == 1)
    {
      v13 = "basic_string";
      v14 = 12;
      v15 = v11 + 12;
      v16 = a2[2];
      v17 = *a2;
      if (v11 + 12 <= v16)
      {
        goto LABEL_29;
      }

LABEL_24:
      if (2 * v16 <= v15 + 992)
      {
        v21 = v15 + 992;
      }

      else
      {
        v21 = 2 * v16;
      }

      a2[2] = v21;
      v17 = malloc_type_realloc(v17, v21, 0x100004077774924uLL);
      *a2 = v17;
      if (v17)
      {
        v11 = a2[1];
        goto LABEL_29;
      }

LABEL_30:
      abort();
    }

    v20 = "basic_string";
    v14 = 6;
  }

  v13 = v20 + 6;
  v15 = v11 + v14;
  v16 = a2[2];
  v17 = *a2;
  if (v11 + v14 > v16)
  {
    goto LABEL_24;
  }

LABEL_29:
  result = memcpy(&v17[v11], v13, v14);
  a2[1] += v14;
  return result;
}

char *sub_10001B63C(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 > 2)
  {
    v3 = "basic_ostream";
    if (v1 != 4)
    {
      v3 = "basic_iostream";
    }

    if (v1 == 3)
    {
      v4 = "basic_istream";
    }

    else
    {
      v4 = v3;
    }

    return (v4 + 6);
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      return "basic_string";
    }

    else
    {
      return "string";
    }
  }

  else
  {
    return "allocator";
  }
}

char *sub_10001B6E4(_DWORD *a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 5) > v6)
  {
    v7 = (v5 + 997);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_38;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  v10[4] = 58;
  *v10 = 979661939;
  a2[1] += 5;
  result = (*(*a1 + 56))(a1);
  if (v12)
  {
    v13 = result;
    v14 = v12;
    v15 = *a2;
    v16 = a2[1];
    v17 = &v16[v12];
    v18 = a2[2];
    if (&v16[v12] > v18)
    {
      if (2 * v18 <= (v17 + 992))
      {
        v19 = (v17 + 992);
      }

      else
      {
        v19 = 2 * v18;
      }

      a2[2] = v19;
      v15 = malloc_type_realloc(v15, v19, 0x100004077774924uLL);
      *a2 = v15;
      if (!v15)
      {
        goto LABEL_38;
      }

      v16 = a2[1];
    }

    result = memcpy(&v16[v15], v13, v14);
    a2[1] += v14;
  }

  if (a1[3] < 2u)
  {
    return result;
  }

  v20 = *a2;
  v21 = a2[1];
  v22 = a2[2];
  if ((v21 + 29) > v22)
  {
    v23 = (v21 + 1021);
    v24 = 2 * v22;
    if (v24 <= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    a2[2] = v25;
    v20 = malloc_type_realloc(v20, v25, 0x100004077774924uLL);
    *a2 = v20;
    if (!v20)
    {
      goto LABEL_38;
    }

    v21 = a2[1];
  }

  qmemcpy(&v21[v20], "<char, std::char_traits<char>", 29);
  v26 = a2[1];
  v27 = (v26 + 29);
  a2[1] = v26 + 29;
  if (a1[3] == 2)
  {
    v28 = a2[2];
    v29 = *a2;
    if ((v26 + 51) > v28)
    {
      if (2 * v28 <= (v26 + 1043))
      {
        v30 = (v26 + 1043);
      }

      else
      {
        v30 = 2 * v28;
      }

      a2[2] = v30;
      v29 = malloc_type_realloc(v29, v30, 0x100004077774924uLL);
      *a2 = v29;
      if (!v29)
      {
        goto LABEL_38;
      }

      v27 = a2[1];
    }

    qmemcpy(&v29[v27], ", std::allocator<char>", 22);
    v27 = (a2[1] + 22);
    a2[1] = v27;
  }

  v31 = a2[2];
  result = *a2;
  if (v27 + 1 > v31)
  {
    v32 = v27 + 993;
    v33 = 2 * v31;
    if (v33 <= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    a2[2] = v34;
    result = malloc_type_realloc(result, v34, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v27 = a2[1];
      goto LABEL_36;
    }

LABEL_38:
    abort();
  }

LABEL_36:
  result[v27] = 62;
  ++a2[1];
  return result;
}

char *sub_10001B948(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = qword_1002AFE70[v1];
  return off_1002D4180[v1];
}

char *sub_10001B980(uint64_t a1, char **a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 5) > v6)
  {
    v7 = (v5 + 997);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_22;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  v10[4] = 58;
  *v10 = 1768055131;
  v11 = (a2[1] + 5);
  a2[1] = v11;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(a1 + 24);
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 > v15)
    {
      if (2 * v15 <= v14 + 992)
      {
        v17 = v14 + 992;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v16 = malloc_type_realloc(v16, v17, 0x100004077774924uLL);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_22;
      }

      v11 = a2[1];
    }

    memcpy(&v16[v11], v13, v12);
    v11 = &a2[1][v12];
    a2[1] = v11;
  }

  v18 = a2[2];
  result = *a2;
  if (v11 + 1 > v18)
  {
    v20 = v11 + 993;
    v21 = 2 * v18;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    a2[2] = v22;
    result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = a2[1];
      goto LABEL_21;
    }

LABEL_22:
    abort();
  }

LABEL_21:
  result[v11] = 93;
  ++a2[1];
  return result;
}

char *sub_10001BB3C(uint64_t a1, uint64_t a2)
{
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_28;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 91;
  v10 = *(a2 + 8);
  if (*(a1 + 24))
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v10;
      if ((v12 & 1) == 0)
      {
        v14 = *(a2 + 16);
        v15 = *a2;
        if (v10 + 2 <= v14)
        {
          v18 = v10;
        }

        else
        {
          v16 = 2 * v14;
          if (v16 <= v10 + 994)
          {
            v17 = v10 + 994;
          }

          else
          {
            v17 = v16;
          }

          *(a2 + 16) = v17;
          v15 = malloc_type_realloc(v15, v17, 0x100004077774924uLL);
          *a2 = v15;
          if (!v15)
          {
            goto LABEL_28;
          }

          v18 = *(a2 + 8);
        }

        *&v15[v18] = 8236;
        v13 = *(a2 + 8) + 2;
        *(a2 + 8) = v13;
      }

      sub_100006714(*(*(a1 + 16) + 8 * v11), a2, 18, 0);
      if (v13 == *(a2 + 8))
      {
        *(a2 + 8) = v10;
        if (++v11 == *(a1 + 24))
        {
          break;
        }
      }

      else
      {
        v12 = 0;
        v10 = *(a2 + 8);
        if (++v11 == *(a1 + 24))
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v19 = v10 + 1;
  v20 = *(a2 + 16);
  result = *a2;
  if (v10 + 1 > v20)
  {
    v22 = 2 * v20;
    if (v22 <= v10 + 993)
    {
      v23 = v10 + 993;
    }

    else
    {
      v23 = v22;
    }

    *(a2 + 16) = v23;
    result = malloc_type_realloc(result, v23, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v10 = *(a2 + 8);
      v19 = v10 + 1;
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  *(a2 + 8) = v19;
  result[v10] = 93;
  return result;
}

char *sub_10001BD1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4064) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v6 = v5 + 16;
  v4[1] = v6;
  result = v4 + v6;
  LODWORD(v6) = *(*a2 + 12);
  result[8] = 47;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1002D34D0;
  *(result + 3) = v6;
  return result;
}

char *sub_10001BDD4(uint64_t a1, uint64_t *a2, char *a3, int *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 32;
  v10 = v8 + v9;
  result = v10 + 16;
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v10[24] = 49;
  *(v10 + 25) = *(v10 + 25) & 0xF000 | 0x540;
  *(v10 + 2) = off_1002D35F0;
  *(v10 + 4) = v12;
  v10[40] = v13;
  *(v10 + 11) = v14;
  return result;
}

void *sub_10001BEAC(uint64_t a1, char **a2)
{
  v3 = a1;
  if (*(a1 + 24) == 1)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    if ((v5 + 1) > v6)
    {
      v7 = v3;
      if (2 * v6 <= (v5 + 993))
      {
        v8 = (v5 + 993);
      }

      else
      {
        v8 = 2 * v6;
      }

      a2[2] = v8;
      v4 = malloc_type_realloc(v4, v8, 0x100004077774924uLL);
      *a2 = v4;
      if (!v4)
      {
        goto LABEL_18;
      }

      v5 = a2[1];
      v3 = v7;
    }

    v5[v4] = 126;
    ++a2[1];
  }

  result = (*(**(v3 + 16) + 56))(*(v3 + 16));
  if (!v10)
  {
    return result;
  }

  v11 = result;
  v12 = v10;
  v13 = *a2;
  v14 = a2[1];
  v15 = &v14[v10];
  v16 = a2[2];
  if (&v14[v10] > v16)
  {
    if (2 * v16 <= (v15 + 992))
    {
      v17 = (v15 + 992);
    }

    else
    {
      v17 = 2 * v16;
    }

    a2[2] = v17;
    v13 = malloc_type_realloc(v13, v17, 0x100004077774924uLL);
    *a2 = v13;
    if (v13)
    {
      v14 = a2[1];
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_16:
  result = memcpy(&v14[v13], v11, v12);
  a2[1] += v12;
  return result;
}

uint64_t sub_10001BFFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = v6 + 1;
  v8 = *(a2 + 16);
  if (v6 + 1 > v8)
  {
    v9 = v6 + 993;
    if (2 * v8 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 2 * v8;
    }

    *(a2 + 16) = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = *(a2 + 8);
    v7 = v6 + 1;
  }

  *(a2 + 8) = v7;
  *(v5 + v6) = 64;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t sub_10001C1B4(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 9) > v7)
  {
    v8 = (v6 + 1001);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  v11 = &v6[v5];
  *v11 = *"::friend ";
  v11[8] = 32;
  a2[1] += 9;
  v12 = *(a1 + 24);
  result = (*(*v12 + 32))(v12, a2);
  if ((*(v12 + 9) & 0xC0) != 0x40)
  {
    v14 = *(*v12 + 40);

    return v14(v12, a2);
  }

  return result;
}

uint64_t sub_10001C384(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 2) > v7)
  {
    v8 = (v6 + 994);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  *&v6[v5] = 14906;
  a2[1] += 2;
  v11 = *(a1 + 24);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

char *sub_10001C540(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 26;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002D3770;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

uint64_t sub_10001C608(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 2) > v7)
  {
    v8 = (v6 + 994);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  *&v6[v5] = 14906;
  a2[1] += 2;
  v11 = *(a1 + 24);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t sub_10001C79C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(a1 + 24) > v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = 0;
  v6 = *(a1 + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v6;
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  v3 = *(*(a1 + 16) + 8 * v2);
  v4 = *(v3 + 9);
  if ((v4 & 0xC0) == 0x80)
  {
    return (**v3)(v3);
  }

  else
  {
    return v4 < 0x40;
  }
}

uint64_t sub_10001C81C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(a1 + 24) > v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = 0;
  v6 = *(a1 + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v6;
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  v3 = *(*(a1 + 16) + 8 * v2);
  v4 = v3[10] & 3;
  if (v4 == 2)
  {
    return (*(*v3 + 8))();
  }

  else
  {
    return v4 == 0;
  }
}

uint64_t sub_10001C89C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(a1 + 24) > v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = 0;
  v6 = *(a1 + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v6;
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  v3 = *(*(a1 + 16) + 8 * v2);
  v4 = (*(v3 + 9) >> 10) & 3;
  if (v4 == 2)
  {
    return (*(*v3 + 16))();
  }

  else
  {
    return v4 == 0;
  }
}

uint64_t sub_10001C91C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(result + 24) <= v2)
    {
      return result;
    }

    return (*(**(*(result + 16) + 8 * v2) + 24))();
  }

  v2 = 0;
  v3 = *(result + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v3;
  if (v3)
  {
    return (*(**(*(result + 16) + 8 * v2) + 24))();
  }

  return result;
}

uint64_t sub_10001C97C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(result + 24) <= v2)
    {
      return result;
    }

    return (*(**(*(result + 16) + 8 * v2) + 32))();
  }

  v2 = 0;
  v3 = *(result + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v3;
  if (v3)
  {
    return (*(**(*(result + 16) + 8 * v2) + 32))();
  }

  return result;
}

uint64_t sub_10001C9DC(uint64_t result, uint64_t a2)
{
  if (*(a2 + 28) != -1)
  {
    v2 = *(a2 + 24);
    if (*(result + 24) <= v2)
    {
      return result;
    }

    return (*(**(*(result + 16) + 8 * v2) + 40))();
  }

  v2 = 0;
  v3 = *(result + 24);
  *(a2 + 24) = 0;
  *(a2 + 28) = v3;
  if (v3)
  {
    return (*(**(*(result + 16) + 8 * v2) + 40))();
  }

  return result;
}

char *sub_10001CA54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v6 + 1 > v7)
  {
    v8 = v6 + 993;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    *(a2 + 16) = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_28;
    }

    v6 = *(a2 + 8);
  }

  v5[v6] = 60;
  v11 = *(a2 + 8) + 1;
  *(a2 + 8) = v11;
  if (*(a1 + 24))
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v11;
      if ((v13 & 1) == 0)
      {
        v15 = *(a2 + 16);
        v16 = *a2;
        if (v11 + 2 <= v15)
        {
          v19 = v11;
        }

        else
        {
          v17 = 2 * v15;
          if (v17 <= v11 + 994)
          {
            v18 = v11 + 994;
          }

          else
          {
            v18 = v17;
          }

          *(a2 + 16) = v18;
          v16 = malloc_type_realloc(v16, v18, 0x100004077774924uLL);
          *a2 = v16;
          if (!v16)
          {
            goto LABEL_28;
          }

          v19 = *(a2 + 8);
        }

        *&v16[v19] = 8236;
        v14 = *(a2 + 8) + 2;
        *(a2 + 8) = v14;
      }

      sub_100006714(*(*(a1 + 16) + 8 * v12), a2, 18, 0);
      if (v14 == *(a2 + 8))
      {
        *(a2 + 8) = v11;
        if (++v12 == *(a1 + 24))
        {
          break;
        }
      }

      else
      {
        v13 = 0;
        v11 = *(a2 + 8);
        if (++v12 == *(a1 + 24))
        {
          break;
        }
      }
    }
  }

  v20 = *(a2 + 16);
  result = *a2;
  if (v11 + 1 > v20)
  {
    v22 = 2 * v20;
    if (v22 <= v11 + 993)
    {
      v23 = v11 + 993;
    }

    else
    {
      v23 = v22;
    }

    *(a2 + 16) = v23;
    result = malloc_type_realloc(result, v23, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = *(a2 + 8);
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  result[v11] = 62;
  ++*(a2 + 8);
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_10001CC34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *(a1 + 24);
  result = (*(*v5 + 32))(v5, a2);
  if ((*(v5 + 9) & 0xC0) != 0x40)
  {
    v7 = *(*v5 + 40);

    return v7(v5, a2);
  }

  return result;
}

void *sub_10001CD90(void *result, char **a2)
{
  if (result[3])
  {
    v3 = result;
    v4 = 0;
    v5 = a2[1];
    v6 = 1;
    do
    {
      while (1)
      {
        v7 = v5;
        if ((v6 & 1) == 0)
        {
          v8 = a2[2];
          v9 = *a2;
          if (v5 + 2 <= v8)
          {
            v12 = v5;
          }

          else
          {
            v10 = 2 * v8;
            if (v10 <= v5 + 994)
            {
              v11 = v5 + 994;
            }

            else
            {
              v11 = v10;
            }

            a2[2] = v11;
            v9 = malloc_type_realloc(v9, v11, 0x100004077774924uLL);
            *a2 = v9;
            if (!v9)
            {
              abort();
            }

            v12 = a2[1];
          }

          *&v9[v12] = 8236;
          v7 = (a2[1] + 2);
          a2[1] = v7;
        }

        result = sub_100006714(*(v3[2] + 8 * v4), a2, 18, 0);
        if (v7 != a2[1])
        {
          break;
        }

        a2[1] = v5;
        if (++v4 == v3[3])
        {
          return result;
        }
      }

      v6 = 0;
      v5 = a2[1];
      ++v4;
    }

    while (v4 != v3[3]);
  }

  return result;
}

uint64_t sub_10001CEC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  result = (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    v5 = *(*v3 + 40);

    return v5(v3, a2);
  }

  return result;
}

void *sub_10001CF78(uint64_t a1, void **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 12) > v6)
  {
    v7 = (v5 + 1004);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_28;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *v10 = *" [enable_if:";
  *(v10 + 2) = 979790175;
  v11 = a2[1] + 12;
  a2[1] = v11;
  if (*(a1 + 24))
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v11;
      if ((v13 & 1) == 0)
      {
        v15 = a2[2];
        v16 = *a2;
        if (v11 + 2 <= v15)
        {
          v19 = v11;
        }

        else
        {
          v17 = 2 * v15;
          if (v17 <= v11 + 994)
          {
            v18 = v11 + 994;
          }

          else
          {
            v18 = v17;
          }

          a2[2] = v18;
          v16 = malloc_type_realloc(v16, v18, 0x100004077774924uLL);
          *a2 = v16;
          if (!v16)
          {
            goto LABEL_28;
          }

          v19 = a2[1];
        }

        *&v16[v19] = 8236;
        v14 = a2[1] + 2;
        a2[1] = v14;
      }

      sub_100006714(*(*(a1 + 16) + 8 * v12), a2, 18, 0);
      if (v14 == a2[1])
      {
        a2[1] = v11;
        if (++v12 == *(a1 + 24))
        {
          break;
        }
      }

      else
      {
        v13 = 0;
        v11 = a2[1];
        if (++v12 == *(a1 + 24))
        {
          break;
        }
      }
    }
  }

  v20 = v11 + 1;
  v21 = a2[2];
  result = *a2;
  if (v11 + 1 > v21)
  {
    v23 = 2 * v21;
    if (v23 <= v11 + 993)
    {
      v24 = v11 + 993;
    }

    else
    {
      v24 = v23;
    }

    a2[2] = v24;
    result = malloc_type_realloc(result, v24, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = a2[1];
      v20 = v11 + 1;
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  a2[1] = v20;
  *(result + v11) = 93;
  return result;
}

uint64_t sub_10001D158(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 5) > v6)
  {
    v7 = (v5 + 997);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  v10[4] = 32;
  *v10 = 1936287860;
  a2[1] += 5;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t sub_10001D298(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 32))(v4, a2);
    v5 = *(a1 + 16);
    v6 = *(v5 + 9);
    if ((v6 & 0xC0) == 0x80)
    {
      if ((**v5)(v5, a2))
      {
        goto LABEL_13;
      }
    }

    else if (v6 < 0x40)
    {
      goto LABEL_13;
    }

    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    if (v8 + 1 > v9)
    {
      v10 = v8 + 993;
      v11 = 2 * v9;
      if (v11 <= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      *(a2 + 16) = v12;
      v7 = malloc_type_realloc(v7, v12, 0x100004077774924uLL);
      *a2 = v7;
      if (!v7)
      {
        abort();
      }

      v8 = *(a2 + 8);
    }

    *(v7 + v8) = 32;
    ++*(a2 + 8);
  }

LABEL_13:
  v13 = *(a1 + 24);
  result = (*(*v13 + 32))(v13, a2);
  if ((*(v13 + 9) & 0xC0) != 0x40)
  {
    v15 = *(*v13 + 40);

    return v15(v13, a2);
  }

  return result;
}

char *sub_10001D41C(uint64_t a1, uint64_t a2)
{
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_85;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 40;
  v10 = *(a2 + 8);
  if (*(a1 + 40))
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v10;
      if ((v12 & 1) == 0)
      {
        v14 = *(a2 + 16);
        v15 = *a2;
        if (v10 + 2 <= v14)
        {
          v18 = v10;
        }

        else
        {
          v16 = 2 * v14;
          if (v16 <= v10 + 994)
          {
            v17 = v10 + 994;
          }

          else
          {
            v17 = v16;
          }

          *(a2 + 16) = v17;
          v15 = malloc_type_realloc(v15, v17, 0x100004077774924uLL);
          *a2 = v15;
          if (!v15)
          {
            goto LABEL_85;
          }

          v18 = *(a2 + 8);
        }

        *&v15[v18] = 8236;
        v13 = *(a2 + 8) + 2;
        *(a2 + 8) = v13;
      }

      sub_100006714(*(*(a1 + 32) + 8 * v11), a2, 18, 0);
      if (v13 == *(a2 + 8))
      {
        *(a2 + 8) = v10;
        if (++v11 == *(a1 + 40))
        {
          break;
        }
      }

      else
      {
        v12 = 0;
        v10 = *(a2 + 8);
        if (++v11 == *(a1 + 40))
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v19 = v10 + 1;
  v20 = *(a2 + 16);
  v21 = *a2;
  if (v10 + 1 > v20)
  {
    v22 = 2 * v20;
    if (v22 <= v10 + 993)
    {
      v23 = v10 + 993;
    }

    else
    {
      v23 = v22;
    }

    *(a2 + 16) = v23;
    v21 = malloc_type_realloc(v21, v23, 0x100004077774924uLL);
    *a2 = v21;
    if (!v21)
    {
      goto LABEL_85;
    }

    v10 = *(a2 + 8);
    v19 = v10 + 1;
  }

  *(a2 + 8) = v19;
  v21[v10] = 41;
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 40))(result, a2);
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    result = *a2;
    v26 = *(a2 + 8);
    v27 = *(a2 + 16);
    if (v26 + 6 > v27)
    {
      v28 = v26 + 998;
      v29 = 2 * v27;
      if (v29 <= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      *(a2 + 16) = v30;
      result = malloc_type_realloc(result, v30, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_85;
      }

      v26 = *(a2 + 8);
    }

    v31 = &result[v26];
    *(v31 + 2) = 29811;
    *v31 = 1852793632;
    *(a2 + 8) += 6;
    v25 = *(a1 + 64);
  }

  if ((v25 & 2) != 0)
  {
    result = *a2;
    v32 = *(a2 + 8);
    v33 = *(a2 + 16);
    if (v32 + 9 > v33)
    {
      v34 = v32 + 1001;
      v35 = 2 * v33;
      if (v35 <= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      *(a2 + 16) = v36;
      result = malloc_type_realloc(result, v36, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_85;
      }

      v32 = *(a2 + 8);
    }

    v37 = &result[v32];
    *v37 = *" volatile";
    v37[8] = 101;
    *(a2 + 8) += 9;
    v25 = *(a1 + 64);
  }

  if ((v25 & 4) != 0)
  {
    result = *a2;
    v38 = *(a2 + 8);
    v39 = *(a2 + 16);
    if (v38 + 9 > v39)
    {
      v40 = v38 + 1001;
      v41 = 2 * v39;
      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      *(a2 + 16) = v42;
      result = malloc_type_realloc(result, v42, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_85;
      }

      v38 = *(a2 + 8);
    }

    v43 = &result[v38];
    *v43 = *" restrict";
    v43[8] = 116;
    *(a2 + 8) += 9;
  }

  v44 = *(a1 + 68);
  if (v44 == 2)
  {
    result = *a2;
    v51 = *(a2 + 8);
    v52 = *(a2 + 16);
    if (v51 + 3 > v52)
    {
      v53 = v51 + 995;
      v54 = 2 * v52;
      if (v54 <= v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = v54;
      }

      *(a2 + 16) = v55;
      result = malloc_type_realloc(result, v55, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_85;
      }

      v51 = *(a2 + 8);
    }

    v56 = &result[v51];
    v56[2] = 38;
    *v56 = 9760;
    v50 = 3;
    goto LABEL_69;
  }

  if (v44 == 1)
  {
    result = *a2;
    v45 = *(a2 + 8);
    v46 = *(a2 + 16);
    if (v45 + 2 > v46)
    {
      v47 = v45 + 994;
      v48 = 2 * v46;
      if (v48 <= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v48;
      }

      *(a2 + 16) = v49;
      result = malloc_type_realloc(result, v49, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_85;
      }

      v45 = *(a2 + 8);
    }

    *&result[v45] = 9760;
    v50 = 2;
LABEL_69:
    *(a2 + 8) += v50;
  }

  v57 = *(a1 + 48);
  if (v57)
  {
    result = (*(*v57 + 32))(*(a1 + 48), a2);
    if ((*(v57 + 9) & 0xC0) != 0x40)
    {
      result = (*(*v57 + 40))(v57, a2);
    }
  }

  if (*(a1 + 56))
  {
    v58 = *a2;
    v59 = *(a2 + 8);
    v60 = *(a2 + 16);
    if (v59 + 10 <= v60)
    {
      goto LABEL_80;
    }

    v61 = v59 + 1002;
    v62 = 2 * v60;
    if (v62 <= v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = v62;
    }

    *(a2 + 16) = v63;
    v58 = malloc_type_realloc(v58, v63, 0x100004077774924uLL);
    *a2 = v58;
    if (v58)
    {
      v59 = *(a2 + 8);
LABEL_80:
      v64 = &v58[v59];
      *v64 = *" requires ";
      *(v64 + 4) = 8307;
      *(a2 + 8) += 10;
      v65 = *(a1 + 56);
      result = (*(*v65 + 32))(v65, a2);
      if ((*(v65 + 9) & 0xC0) != 0x40)
      {
        v66 = *(*v65 + 40);

        return v66(v65, a2);
      }

      return result;
    }

LABEL_85:
    abort();
  }

  return result;
}

char *sub_10001D998(void *a1, char **a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 2) > v7)
  {
    v8 = (v6 + 994);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = a2[1];
  }

  *&v6[v5] = 10272;
  v11 = (a2[1] + 2);
  a2[1] = v11;
  v12 = a1[4];
  if (v12)
  {
    v13 = a1[3];
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 > v15)
    {
      if (2 * v15 <= v14 + 992)
      {
        v17 = v14 + 992;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v16 = malloc_type_realloc(v16, v17, 0x100004077774924uLL);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      v11 = a2[1];
    }

    memcpy(&v16[v11], v13, v12);
    v11 = &a2[1][v12];
    a2[1] = v11;
  }

  v18 = a2[2];
  result = *a2;
  if (v11 + 1 > v18)
  {
    v20 = v11 + 993;
    v21 = 2 * v18;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    a2[2] = v22;
    result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = a2[1];
      goto LABEL_23;
    }

LABEL_24:
    abort();
  }

LABEL_23:
  result[v11] = 41;
  ++a2[1];
  return result;
}

void sub_10001DB5C(void *a1, size_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1 == v3 || *v4 != 114)
  {
    v5 = 0;
    if (v4 == v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = ++v4;
    v5 = 4;
    if (v4 == v3)
    {
      goto LABEL_8;
    }
  }

  if (*v4 == 86)
  {
    *a1 = ++v4;
    v5 |= 2u;
  }

LABEL_8:
  if (v4 != v3 && *v4 == 75)
  {
    *a1 = ++v4;
    v5 |= 1u;
  }

  if ((v3 - v4) < 2)
  {
LABEL_12:
    v6 = 0;
    goto LABEL_33;
  }

  if (*v4 == 28484)
  {
    *a1 = v4 + 2;
    v19 = a1[613];
    v20 = v19[1];
    if ((v20 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v19 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v19)
      {
        goto LABEL_84;
      }

      v20 = 0;
      *v19 = a1[613];
      v19[1] = 0;
      a1[613] = v19;
    }

    v19[1] = v20 + 32;
    v21 = v19 + v20;
    v6 = v21 + 16;
    v21[24] = 8;
    *(v21 + 25) = *(v21 + 25) & 0xF000 | 0x540;
    *(v21 + 2) = off_1002D1D60;
    *(v21 + 4) = "noexcept";
    *(v21 + 5) = 8;
    goto LABEL_33;
  }

  if (*v4 != 20292)
  {
    if (*v4 == 30532)
    {
      v7 = v4 + 2;
      *a1 = v7;
      v8 = (a1[3] - a1[2]) >> 3;
      v9 = a1 + 5;
      while (v7 == v3 || *v7 != 69)
      {
        v12 = sub_1000074E8(a1);
        if (!v12)
        {
          return;
        }

        v11 = a1[3];
        if (v11 == a1[4])
        {
          v13 = v12;
          v14 = a1[2];
          v15 = v11 - v14;
          if (v14 == v9)
          {
            v10 = malloc_type_malloc(2 * (v11 - v14), 0x2004093837F09uLL);
            if (!v10)
            {
LABEL_83:
              abort();
            }

            v16 = a1[2];
            v17 = a1[3];
            if (v17 != v16)
            {
              v18 = v10;
              memmove(v10, v16, v17 - v16);
              v10 = v18;
            }

            a1[2] = v10;
          }

          else
          {
            v10 = malloc_type_realloc(v14, 2 * (v11 - v14), 0x2004093837F09uLL);
            a1[2] = v10;
            if (!v10)
            {
              goto LABEL_83;
            }
          }

          v11 = &v10[v15];
          a1[4] = &v10[8 * (v15 >> 2)];
          v12 = v13;
        }

        *v11 = v12;
        a1[3] = v11 + 1;
        v7 = *a1;
        v3 = a1[1];
      }

      *a1 = v7 + 1;
      v52 = sub_10000A1F8(a1, v8);
      v54 = v53;
      v55 = a1[613];
      v56 = v55[1];
      if ((v56 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v55 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v55)
        {
          goto LABEL_84;
        }

        v56 = 0;
        *v55 = a1[613];
        v55[1] = 0;
        a1[613] = v55;
      }

      v55[1] = v56 + 32;
      v57 = v55 + v56;
      v6 = v57 + 16;
      v57[24] = 18;
      *(v57 + 25) = *(v57 + 25) & 0xF000 | 0x540;
      *(v57 + 2) = off_1002D3B90;
      *(v57 + 4) = v52;
      *(v57 + 5) = v54;
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  *a1 = v4 + 2;
  sub_10000D7B4(a1, a2);
  if (!v37)
  {
    return;
  }

  v38 = *a1;
  if (*a1 == a1[1] || *v38 != 69)
  {
    return;
  }

  *a1 = v38 + 1;
  v39 = a1[613];
  v40 = v39[1];
  if ((v40 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v41 = v37;
    v42 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v42)
    {
      goto LABEL_84;
    }

    v39 = v42;
    v40 = 0;
    *v42 = a1[613];
    v42[1] = 0;
    a1[613] = v42;
    v37 = v41;
  }

  v39[1] = v40 + 32;
  v43 = v39 + v40;
  v6 = v43 + 16;
  v43[24] = 17;
  *(v43 + 25) = *(v43 + 25) & 0xF000 | 0x540;
  *(v43 + 2) = off_1002D3B30;
  *(v43 + 4) = v37;
LABEL_33:
  v22 = *a1;
  v23 = a1[1];
  if (&v23[-*a1] >= 2 && *v22 == 30788)
  {
    v22 += 2;
    *a1 = v22;
    if (v22 == v23)
    {
      return;
    }
  }

  else if (v22 == v23)
  {
    return;
  }

  if (*v22 == 70)
  {
    *a1 = v22 + 1;
    if (v22 + 1 != v23 && v22[1] == 89)
    {
      *a1 = v22 + 2;
    }

    v24 = sub_1000074E8(a1);
    if (v24)
    {
      v58 = v24;
      v59 = (a1[3] - a1[2]) >> 3;
      v25 = *a1;
      v26 = a1[1];
      if (*a1 != v26)
      {
        goto LABEL_44;
      }

      do
      {
        do
        {
          while (1)
          {
LABEL_46:
            if ((v26 - v25) >= 2)
            {
              if (*v25 == 17746)
              {
                v44 = 1;
                v45 = 2;
                goto LABEL_75;
              }

              if (*v25 == 17743)
              {
                v45 = 2;
                v44 = 2;
                goto LABEL_75;
              }
            }

            v28 = sub_1000074E8(a1);
            if (!v28)
            {
              return;
            }

            v29 = a1[3];
            if (v29 == a1[4])
            {
              break;
            }

            *v29 = v28;
            a1[3] = v29 + 1;
            v25 = *a1;
            v26 = a1[1];
            if (*a1 != v26)
            {
              goto LABEL_44;
            }
          }

          v30 = v28;
          v31 = a1[2];
          v32 = v29 - v31;
          if (v31 == (a1 + 5))
          {
            v33 = malloc_type_malloc(2 * (v29 - v31), 0x2004093837F09uLL);
            if (!v33)
            {
              goto LABEL_83;
            }

            v34 = a1[2];
            v35 = a1[3];
            if (v35 != v34)
            {
              v36 = v33;
              memmove(v33, v34, v35 - v34);
              v33 = v36;
            }

            a1[2] = v33;
          }

          else
          {
            v33 = malloc_type_realloc(v31, 2 * (v29 - v31), 0x2004093837F09uLL);
            a1[2] = v33;
            if (!v33)
            {
              goto LABEL_83;
            }
          }

          a1[4] = &v33[8 * (v32 >> 2)];
          *&v33[v32] = v30;
          a1[3] = &v33[v32 + 8];
          v25 = *a1;
          v26 = a1[1];
        }

        while (*a1 == v26);
LABEL_44:
        while (1)
        {
          v27 = *v25;
          if (v27 != 118)
          {
            break;
          }

          *a1 = v25 + 1;
          v25 = *a1;
          v26 = a1[1];
          if (*a1 == v26)
          {
            goto LABEL_46;
          }
        }
      }

      while (v27 != 69);
      v44 = 0;
      v45 = 1;
LABEL_75:
      *a1 = v25 + v45;
      v46 = sub_10000A1F8(a1, v59);
      v48 = v47;
      v49 = a1[613];
      v50 = v49[1];
      if ((v50 - 4016) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_78;
      }

      v49 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v49)
      {
        v50 = 0;
        *v49 = a1[613];
        v49[1] = 0;
        a1[613] = v49;
LABEL_78:
        v49[1] = v50 + 64;
        v51 = v49 + v50;
        v51[24] = 16;
        *(v51 + 25) = *(v51 + 25) & 0xF000 | 0x100;
        *(v51 + 2) = off_1002D3BF0;
        *(v51 + 4) = v58;
        *(v51 + 5) = v46;
        *(v51 + 6) = v48;
        *(v51 + 14) = v5;
        v51[60] = v44;
        *(v51 + 8) = v6;
        return;
      }

LABEL_84:
      std::terminate();
    }
  }
}

void sub_10001E1DC(unsigned __int8 **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    goto LABEL_7;
  }

  v4 = *v3;
  if (v4 == 114)
  {
    *a1 = ++v3;
    v5 = 4;
    if (v3 == v2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v4 != 85)
  {
LABEL_7:
    v5 = 0;
    if (v3 == v2)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (*v3 == 86)
    {
      *a1 = ++v3;
      v5 |= 2u;
    }

LABEL_12:
    if (v3 != v2 && *v3 == 75)
    {
      *a1 = v3 + 1;
      v5 |= 1u;
    }

    v6 = sub_1000074E8(a1);
    if (v6 && v5)
    {
      v7 = a1[613];
      v8 = *(v7 + 1);
      if ((v8 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v9 = v6;
        v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v10)
        {
          goto LABEL_57;
        }

        v7 = v10;
        v8 = 0;
        *v10 = a1[613];
        *(v10 + 1) = 0;
        a1[613] = v10;
        v6 = v9;
      }

      *(v7 + 1) = v8 + 32;
      v11 = &v7[v8];
      v12 = *(v6 + 9);
      v11[24] = 3;
      *(v11 + 25) = *(v11 + 25) & 0xF000 | v12 & 0xFC0;
      *(v11 + 2) = off_1002D3D10;
      *(v11 + 7) = v5;
      *(v11 + 4) = v6;
      return;
    }

    return;
  }

  *a1 = v3 + 1;
  if (v2 != v3 + 1 && v3[1] - 58 >= 0xFFFFFFF6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v14;
      v16 = v13;
      v17 = &v3[v13];
      v18 = &v3[v13 + 2];
      *a1 = v18;
      v19 = v3[v13 + 1];
      v14 = v19 + 10 * v14 - 48;
      if (v18 == v2)
      {
        break;
      }

      ++v13;
    }

    while (*v18 - 48 <= 9);
    if (v2 - v3 - v16 - 2 >= v14)
    {
      v20 = &v3[10 * v15 - 46 + v16 + v19];
      *a1 = v20;
      if (v14)
      {
        if (v14 >= 9 && (*(v17 + 2) == 0x746F7270636A626FLL ? (v21 = v17[10] == 111) : (v21 = 0), v21))
        {
          v29 = &v3[v16 + 11];
          v30 = &v3[10 * v15 - 46 + v16 + v19];
          *a1 = v29;
          a1[1] = v30;
          if (v29 == v30 || *v29 - 58 < 0xFFFFFFF6)
          {
            goto LABEL_48;
          }

          v31 = 0;
          v32 = v17 + 12;
          v33 = 10 * v15;
          v34 = v33 + v19 - 58;
          while (1)
          {
            *a1 = v32;
            v31 = *(v32 - 1) + 10 * v31 - 48;
            if (!v34)
            {
              break;
            }

            v35 = v32 + 1;
            v36 = *v32 - 48;
            --v34;
            ++v32;
            if (v36 > 9)
            {
              v30 = (v35 - 1);
              break;
            }
          }

          if (&v3[v16 - 46 + v33 - v30 + v19] < v31)
          {
LABEL_48:
            *a1 = v20;
            a1[1] = v2;
            return;
          }

          *a1 = v20;
          a1[1] = v2;
          if (v31)
          {
            v37 = sub_10001E1DC(a1);
            if (v37)
            {
              v38 = v37;
              v39 = a1[613];
              v40 = *(v39 + 1);
              if ((v40 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
              {
                v39 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
                if (!v39)
                {
                  goto LABEL_57;
                }

                v40 = 0;
                *v39 = a1[613];
                *(v39 + 1) = 0;
                a1[613] = v39;
              }

              *(v39 + 1) = v40 + 48;
              v41 = &v39[v40];
              v41[24] = 11;
              *(v41 + 25) = *(v41 + 25) & 0xF000 | 0x540;
              *(v41 + 2) = off_1002D3C50;
              *(v41 + 4) = v38;
              *(v41 + 5) = v30;
              *(v41 + 6) = v31;
            }
          }
        }

        else
        {
          if (v20 == v2 || *v20 != 73)
          {
            v23 = 0;
          }

          else
          {
            sub_10000BE9C(a1, 0);
            v23 = v22;
            if (!v22)
            {
              return;
            }
          }

          v24 = sub_10001E1DC(a1);
          if (v24)
          {
            v25 = v24;
            v26 = a1[613];
            v27 = *(v26 + 1);
            if ((v27 - 4032) > 0xFFFFFFFFFFFFF00FLL)
            {
LABEL_40:
              *(v26 + 1) = v27 + 48;
              v28 = &v26[v27];
              v28[24] = 2;
              *(v28 + 25) = *(v28 + 25) & 0xF000 | 0x540;
              *(v28 + 2) = off_1002D3CB0;
              *(v28 + 4) = v25;
              *(v28 + 5) = v18;
              *(v28 + 6) = v14;
              *(v28 + 7) = v23;
              return;
            }

            v26 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (v26)
            {
              v27 = 0;
              *v26 = a1[613];
              *(v26 + 1) = 0;
              a1[613] = v26;
              goto LABEL_40;
            }

LABEL_57:
            std::terminate();
          }
        }
      }
    }
  }
}

__n128 sub_10001E698(uint64_t a1, __n128 *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = *a3;
  v8[24] = 7;
  v10 = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002D3D70;
  result = *a2;
  *(v8 + 25) = v10;
  *(v8 + 2) = result;
  *(v8 + 6) = v9;
  return result;
}

char *sub_10001E764(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 31;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D3DD0;
  *(v6 + 4) = v8;
  return result;
}

char *sub_10001E81C(uint64_t a1, uint64_t *a2, char *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 32;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002D3E30;
  *(v8 + 4) = v10;
  v8[40] = v11;
  return result;
}

__n128 sub_10001E8E8(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = *a2;
  v8[24] = 5;
  v10 = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002D3E90;
  *(v8 + 4) = v9;
  result = *a3;
  *(v8 + 25) = v10;
  *(v8 + 40) = result;
  return result;
}

void sub_10001E9B4(void *a1, size_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (&v2[-*a1] < 2 || *v3 != 30276)
  {
    return;
  }

  v4 = v3 + 1;
  *a1 = v3 + 1;
  v5 = a1;
  if (v2 == (v3 + 1) || *v4 < 49)
  {
    goto LABEL_16;
  }

  if (*v4 > 0x39u)
  {
    if (*v4 == 95)
    {
      *a1 = v3 + 3;
      v7 = sub_1000074E8(a1);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      v9 = v5[613];
      v10 = v9[1];
      if ((v10 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v9 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v9)
        {
          goto LABEL_40;
        }

        v10 = 0;
        *v9 = v5[613];
        v9[1] = 0;
        v5[613] = v9;
      }

      v9[1] = v10 + 32;
      v11 = v9 + v10;
      v11[24] = 29;
      *(v11 + 25) = *(v11 + 25) & 0xF000 | 0x540;
      *(v11 + 2) = off_1002D3F50;
      *(v11 + 4) = v8;
      *(v11 + 5) = 0;
      return;
    }

LABEL_16:
    sub_10000D7B4(a1, a2);
    if (!v12)
    {
      return;
    }

    v13 = *v5;
    if (*v5 == v5[1])
    {
      return;
    }

    if (*v13 != 95)
    {
      return;
    }

    v14 = v12;
    *v5 = v13 + 1;
    v15 = sub_1000074E8(v5);
    if (!v15)
    {
      return;
    }

    v16 = v15;
    v17 = v5[613];
    v18 = v17[1];
    if ((v18 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = 0;
      *v17 = v5[613];
      v17[1] = 0;
      v5[613] = v17;
    }

    v17[1] = v18 + 32;
    v19 = v17 + v18;
    v19[24] = 29;
    *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
    *(v19 + 2) = off_1002D3F50;
    *(v19 + 4) = v16;
    *(v19 + 5) = v14;
    return;
  }

  if ((_DefaultRuneLocale.__runetype[*v4] & 0x400) != 0)
  {
    v20 = (v3 + 1);
    while (1)
    {
      v21 = *v20;
      if (v21 < 0 || (_DefaultRuneLocale.__runetype[v21] & 0x400) == 0)
      {
        break;
      }

      *a1 = ++v20;
      if (v20 == v2)
      {
        v20 = v2;
        break;
      }
    }

    v6 = v20 - v4;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v22 = a1[613];
  v23 = v22[1];
  if ((v23 - 4048) > 0xFFFFFFFFFFFFF00FLL)
  {
    goto LABEL_33;
  }

  v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
  if (!v24)
  {
LABEL_40:
    std::terminate();
  }

  v22 = v24;
  v23 = 0;
  a1 = v5;
  *v22 = v5[613];
  v22[1] = 0;
  v5[613] = v22;
LABEL_33:
  v22[1] = v23 + 32;
  v25 = v22 + v23;
  v25[24] = 8;
  *(v25 + 25) = *(v25 + 25) & 0xF000 | 0x540;
  *(v25 + 2) = off_1002D1D60;
  *(v25 + 4) = v4;
  *(v25 + 5) = v6;
  v29 = v25 + 16;
  v26 = *a1;
  v27 = a1[1];
  if (*a1 != v27 && *v26 == 95)
  {
    *a1 = v26 + 1;
    if (v26 + 1 == v27 || v26[1] != 112)
    {
      v28 = sub_1000074E8(a1);
      if (v28)
      {
        sub_1000208DC(v5, &v28, &v29);
      }
    }

    else
    {
      *a1 = v26 + 2;
      sub_100020824(a1, &v29);
    }
  }
}

char *sub_10001ED58(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 < 2uLL)
  {
LABEL_2:

    return sub_1000094F0(a1, 0);
  }

  switch(*v1)
  {
    case 0x7354:
      v3 = "struct";
      v4 = 6;
      *a1 = v1 + 1;
      v5 = a1;
      v6 = sub_1000094F0(a1, 0);
      if (!v6)
      {
        return 0;
      }

      break;
    case 0x7554:
      v3 = "union";
      v4 = 5;
      *a1 = v1 + 1;
      v5 = a1;
      v6 = sub_1000094F0(a1, 0);
      if (!v6)
      {
        return 0;
      }

      break;
    case 0x6554:
      v3 = "enum";
      v4 = 4;
      *a1 = v1 + 1;
      v5 = a1;
      v6 = sub_1000094F0(a1, 0);
      if (!v6)
      {
        return 0;
      }

      break;
    default:
      goto LABEL_2;
  }

  v7 = v5[613];
  v8 = v7[1];
  if ((v8 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v9 = v6;
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v7 = v10;
    v8 = 0;
    *v10 = v5[613];
    v10[1] = 0;
    v5[613] = v10;
    v6 = v9;
  }

  v7[1] = v8 + 48;
  v11 = v7 + v8;
  v11[24] = 6;
  *(v11 + 25) = *(v11 + 25) & 0xF000 | 0x540;
  *(v11 + 2) = off_1002D4070;
  *(v11 + 4) = v3;
  *(v11 + 5) = v4;
  *(v11 + 6) = v6;
  return v11 + 16;
}

char *sub_10001EF0C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v9 = *(*a2 + 9);
  v6[24] = 12;
  *(v6 + 25) = v9 & 0xC0 | 0x500 | *(v6 + 25) & 0xF000;
  *(v6 + 2) = off_1002D40D0;
  *(v6 + 4) = v8;
  return result;
}

char *sub_10001EFD0(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v12 = *(*a2 + 9);
  v8[24] = 13;
  *(v8 + 25) = v12 & 0xC0 | 0x500 | *(v8 + 25) & 0xF000;
  *(v8 + 2) = off_1002D4130;
  *(v8 + 4) = v10;
  *(v8 + 10) = v11;
  v8[44] = 0;
  return result;
}

char *sub_10001F0AC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 5;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D3E90;
  *(v6 + 4) = v8;
  *(v6 + 5) = " complex";
  *(v6 + 6) = 8;
  return result;
}

char *sub_10001F174(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 5;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D3E90;
  *(v6 + 4) = v8;
  *(v6 + 5) = " imaginary";
  *(v6 + 6) = 10;
  return result;
}

char *sub_10001F23C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 8 > v6)
  {
    v7 = v5 + 1000;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a2 + 8);
  }

  *&v4[v5] = 0x7470656378656F6ELL;
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = v11 + 8;
  *(a2 + 8) = v11 + 8;
  ++*(a2 + 32);
  v13 = v11 + 9;
  v14 = *(a2 + 16);
  if (v11 + 9 > v14)
  {
    if (2 * v14 <= v11 + 1001)
    {
      v15 = v11 + 1001;
    }

    else
    {
      v15 = 2 * v14;
    }

    *(a2 + 16) = v15;
    v10 = malloc_type_realloc(v10, v15, 0x100004077774924uLL);
    *a2 = v10;
    if (!v10)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v13 = v12 + 1;
  }

  *(a2 + 8) = v13;
  v10[v12] = 40;
  sub_100006714(*(a1 + 16), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v17 = *(a2 + 8);
  v18 = v17 + 1;
  v19 = *(a2 + 16);
  if (v17 + 1 > v19)
  {
    v20 = v17 + 993;
    if (2 * v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = 2 * v19;
    }

    *(a2 + 16) = v21;
    result = malloc_type_realloc(result, v21, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v17 = *(a2 + 8);
      v18 = v17 + 1;
      goto LABEL_19;
    }

LABEL_20:
    abort();
  }

LABEL_19:
  *(a2 + 8) = v18;
  result[v17] = 41;
  return result;
}

char *sub_10001F3B0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 5 > v6)
  {
    v7 = v5 + 997;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_34;
    }

    v5 = *(a2 + 8);
  }

  v10 = &v4[v5];
  v10[4] = 119;
  *v10 = 1869768820;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = v12 + 5;
  *(a2 + 8) = v12 + 5;
  ++*(a2 + 32);
  v14 = v12 + 6;
  v15 = *(a2 + 16);
  if (v12 + 6 > v15)
  {
    if (2 * v15 <= v12 + 998)
    {
      v16 = v12 + 998;
    }

    else
    {
      v16 = 2 * v15;
    }

    *(a2 + 16) = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_34;
    }

    v13 = *(a2 + 8);
    v14 = v13 + 1;
  }

  *(a2 + 8) = v14;
  v11[v13] = 40;
  v17 = *(a2 + 8);
  if (*(a1 + 24))
  {
    v18 = 0;
    v19 = 1;
    while (1)
    {
      v20 = v17;
      if ((v19 & 1) == 0)
      {
        v21 = *(a2 + 16);
        v22 = *a2;
        if (v17 + 2 <= v21)
        {
          v25 = v17;
        }

        else
        {
          v23 = 2 * v21;
          if (v23 <= v17 + 994)
          {
            v24 = v17 + 994;
          }

          else
          {
            v24 = v23;
          }

          *(a2 + 16) = v24;
          v22 = malloc_type_realloc(v22, v24, 0x100004077774924uLL);
          *a2 = v22;
          if (!v22)
          {
            goto LABEL_34;
          }

          v25 = *(a2 + 8);
        }

        *&v22[v25] = 8236;
        v20 = *(a2 + 8) + 2;
        *(a2 + 8) = v20;
      }

      sub_100006714(*(*(a1 + 16) + 8 * v18), a2, 18, 0);
      if (v20 == *(a2 + 8))
      {
        *(a2 + 8) = v17;
        if (++v18 == *(a1 + 24))
        {
          break;
        }
      }

      else
      {
        v19 = 0;
        v17 = *(a2 + 8);
        if (++v18 == *(a1 + 24))
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v26 = v17 + 1;
  v27 = *(a2 + 16);
  result = *a2;
  if (v17 + 1 > v27)
  {
    v29 = 2 * v27;
    if (v29 <= v17 + 993)
    {
      v30 = v17 + 993;
    }

    else
    {
      v30 = v29;
    }

    *(a2 + 16) = v30;
    result = malloc_type_realloc(result, v30, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v17 = *(a2 + 8);
      v26 = v17 + 1;
      goto LABEL_33;
    }

LABEL_34:
    abort();
  }

LABEL_33:
  *(a2 + 8) = v26;
  result[v17] = 41;
  return result;
}

void *sub_10001F5FC(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  result = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 + 1 > v5)
  {
    v6 = v4 + 993;
    v7 = 2 * v5;
    if (v7 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    *(a2 + 16) = v8;
    result = malloc_type_realloc(result, v8, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v4 = *(a2 + 8);
  }

  *(result + v4) = 32;
  ++*(a2 + 8);
  return result;
}

char *sub_10001F6A4(uint64_t a1, uint64_t a2)
{
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_80;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 40;
  v10 = *(a2 + 8);
  if (*(a1 + 32))
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v10;
      if ((v12 & 1) == 0)
      {
        v14 = *(a2 + 16);
        v15 = *a2;
        if (v10 + 2 <= v14)
        {
          v18 = v10;
        }

        else
        {
          v16 = 2 * v14;
          if (v16 <= v10 + 994)
          {
            v17 = v10 + 994;
          }

          else
          {
            v17 = v16;
          }

          *(a2 + 16) = v17;
          v15 = malloc_type_realloc(v15, v17, 0x100004077774924uLL);
          *a2 = v15;
          if (!v15)
          {
            goto LABEL_80;
          }

          v18 = *(a2 + 8);
        }

        *&v15[v18] = 8236;
        v13 = *(a2 + 8) + 2;
        *(a2 + 8) = v13;
      }

      sub_100006714(*(*(a1 + 24) + 8 * v11), a2, 18, 0);
      if (v13 == *(a2 + 8))
      {
        *(a2 + 8) = v10;
        if (++v11 == *(a1 + 32))
        {
          break;
        }
      }

      else
      {
        v12 = 0;
        v10 = *(a2 + 8);
        if (++v11 == *(a1 + 32))
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v19 = v10 + 1;
  v20 = *(a2 + 16);
  v21 = *a2;
  if (v10 + 1 > v20)
  {
    v22 = 2 * v20;
    if (v22 <= v10 + 993)
    {
      v23 = v10 + 993;
    }

    else
    {
      v23 = v22;
    }

    *(a2 + 16) = v23;
    v21 = malloc_type_realloc(v21, v23, 0x100004077774924uLL);
    *a2 = v21;
    if (!v21)
    {
      goto LABEL_80;
    }

    v10 = *(a2 + 8);
    v19 = v10 + 1;
  }

  *(a2 + 8) = v19;
  v21[v10] = 41;
  result = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
  v25 = *(a1 + 40);
  if (v25)
  {
    result = *a2;
    v26 = *(a2 + 8);
    v27 = *(a2 + 16);
    if (v26 + 6 > v27)
    {
      v28 = v26 + 998;
      v29 = 2 * v27;
      if (v29 <= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      *(a2 + 16) = v30;
      result = malloc_type_realloc(result, v30, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v26 = *(a2 + 8);
    }

    v31 = &result[v26];
    *(v31 + 2) = 29811;
    *v31 = 1852793632;
    *(a2 + 8) += 6;
    v25 = *(a1 + 40);
  }

  if ((v25 & 2) != 0)
  {
    result = *a2;
    v32 = *(a2 + 8);
    v33 = *(a2 + 16);
    if (v32 + 9 > v33)
    {
      v34 = v32 + 1001;
      v35 = 2 * v33;
      if (v35 <= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      *(a2 + 16) = v36;
      result = malloc_type_realloc(result, v36, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v32 = *(a2 + 8);
    }

    v37 = &result[v32];
    *v37 = *" volatile";
    v37[8] = 101;
    *(a2 + 8) += 9;
    v25 = *(a1 + 40);
  }

  if ((v25 & 4) != 0)
  {
    result = *a2;
    v38 = *(a2 + 8);
    v39 = *(a2 + 16);
    if (v38 + 9 > v39)
    {
      v40 = v38 + 1001;
      v41 = 2 * v39;
      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      *(a2 + 16) = v42;
      result = malloc_type_realloc(result, v42, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v38 = *(a2 + 8);
    }

    v43 = &result[v38];
    *v43 = *" restrict";
    v43[8] = 116;
    *(a2 + 8) += 9;
  }

  v44 = *(a1 + 44);
  if (v44 == 2)
  {
    result = *a2;
    v51 = *(a2 + 8);
    v52 = *(a2 + 16);
    if (v51 + 3 > v52)
    {
      v53 = v51 + 995;
      v54 = 2 * v52;
      if (v54 <= v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = v54;
      }

      *(a2 + 16) = v55;
      result = malloc_type_realloc(result, v55, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v51 = *(a2 + 8);
    }

    v56 = &result[v51];
    v56[2] = 38;
    *v56 = 9760;
    v50 = 3;
  }

  else
  {
    if (v44 != 1)
    {
      goto LABEL_68;
    }

    result = *a2;
    v45 = *(a2 + 8);
    v46 = *(a2 + 16);
    if (v45 + 2 > v46)
    {
      v47 = v45 + 994;
      v48 = 2 * v46;
      if (v48 <= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v48;
      }

      *(a2 + 16) = v49;
      result = malloc_type_realloc(result, v49, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v45 = *(a2 + 8);
    }

    *&result[v45] = 9760;
    v50 = 2;
  }

  *(a2 + 8) += v50;
LABEL_68:
  if (!*(a1 + 48))
  {
    return result;
  }

  v57 = *a2;
  v58 = *(a2 + 8);
  v59 = v58 + 1;
  v60 = *(a2 + 16);
  if (v58 + 1 > v60)
  {
    v61 = v58 + 993;
    if (2 * v60 <= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = 2 * v60;
    }

    *(a2 + 16) = v62;
    v57 = malloc_type_realloc(v57, v62, 0x100004077774924uLL);
    *a2 = v57;
    if (v57)
    {
      v58 = *(a2 + 8);
      v59 = v58 + 1;
      goto LABEL_75;
    }

LABEL_80:
    abort();
  }

LABEL_75:
  *(a2 + 8) = v59;
  v57[v58] = 32;
  v63 = *(a1 + 48);
  result = (*(*v63 + 32))(v63, a2);
  if ((*(v63 + 9) & 0xC0) != 0x40)
  {
    v64 = *(*v63 + 40);

    return v64(v63, a2);
  }

  return result;
}

char *sub_10001FB94(void *a1, char **a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 1) > v7)
  {
    v8 = (v6 + 993);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = a2[1];
  }

  v6[v5] = 60;
  v11 = (a2[1] + 1);
  a2[1] = v11;
  v12 = a1[4];
  if (v12)
  {
    v13 = a1[3];
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 > v15)
    {
      if (2 * v15 <= v14 + 992)
      {
        v17 = v14 + 992;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v16 = malloc_type_realloc(v16, v17, 0x100004077774924uLL);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      v11 = a2[1];
    }

    memcpy(&v16[v11], v13, v12);
    v11 = &a2[1][v12];
    a2[1] = v11;
  }

  v18 = a2[2];
  result = *a2;
  if (v11 + 1 > v18)
  {
    v20 = v11 + 993;
    v21 = 2 * v18;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    a2[2] = v22;
    result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = a2[1];
      goto LABEL_23;
    }

LABEL_24:
    abort();
  }

LABEL_23:
  result[v11] = 62;
  ++a2[1];
  return result;
}

uint64_t sub_10001FD58(void *a1, char **a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  result = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 1) > v7)
  {
    v8 = (v6 + 993);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    result = malloc_type_realloc(result, v10, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      goto LABEL_23;
    }

    v6 = a2[1];
  }

  v6[result] = 32;
  v11 = (a2[1] + 1);
  a2[1] = v11;
  v12 = a1[4];
  if (v12)
  {
    v13 = a1[3];
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 <= v15)
    {
LABEL_16:
      result = memcpy(&v16[v11], v13, v12);
      a2[1] += v12;
      goto LABEL_17;
    }

    if (2 * v15 <= v14 + 992)
    {
      v17 = v14 + 992;
    }

    else
    {
      v17 = 2 * v15;
    }

    a2[2] = v17;
    v16 = malloc_type_realloc(v16, v17, 0x100004077774924uLL);
    *a2 = v16;
    if (v16)
    {
      v11 = a2[1];
      goto LABEL_16;
    }

LABEL_23:
    abort();
  }

LABEL_17:
  v18 = a1[5];
  if (v18)
  {
    result = (*(*v18 + 32))(v18, a2);
    if ((*(v18 + 9) & 0xC0) != 0x40)
    {
      v19 = *(*v18 + 40);

      return v19(v18, a2);
    }
  }

  return result;
}

uint64_t sub_10001FF60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

uint64_t sub_10001FFA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1[10] & 3;
  if (v2 == 2)
  {
    return (*(*v1 + 8))();
  }

  else
  {
    return v2 == 0;
  }
}

uint64_t sub_10001FFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (*(v1 + 9) >> 10) & 3;
  if (v2 == 2)
  {
    return (*(*v1 + 16))();
  }

  else
  {
    return v2 == 0;
  }
}

_DWORD *sub_10002002C(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));

  return sub_1000200D0(a1, a2);
}

_DWORD *sub_1000200D0(_DWORD *result, uint64_t a2)
{
  v3 = result;
  v4 = result[3];
  if (v4)
  {
    result = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v5 + 6 > v6)
    {
      v7 = v5 + 998;
      v8 = 2 * v6;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      *(a2 + 16) = v9;
      result = malloc_type_realloc(result, v9, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_26;
      }

      v5 = *(a2 + 8);
    }

    v10 = result + v5;
    *(v10 + 2) = 29811;
    *v10 = 1852793632;
    *(a2 + 8) += 6;
    v4 = v3[3];
  }

  if ((v4 & 2) != 0)
  {
    result = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    if (v11 + 9 > v12)
    {
      v13 = v11 + 1001;
      v14 = 2 * v12;
      if (v14 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      *(a2 + 16) = v15;
      result = malloc_type_realloc(result, v15, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_26;
      }

      v11 = *(a2 + 8);
    }

    v16 = result + v11;
    *v16 = *" volatile";
    v16[8] = 101;
    *(a2 + 8) += 9;
    v4 = v3[3];
  }

  if ((v4 & 4) == 0)
  {
    return result;
  }

  result = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  if (v17 + 9 > v18)
  {
    v19 = v17 + 1001;
    v20 = 2 * v18;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    *(a2 + 16) = v21;
    result = malloc_type_realloc(result, v21, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v17 = *(a2 + 8);
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

LABEL_24:
  v22 = result + v17;
  *v22 = *" restrict";
  v22[8] = 116;
  *(a2 + 8) += 9;
  return result;
}

char *sub_10002025C(void *a1, char **a2)
{
  v4 = a1[3];
  v5 = a2[1];
  if (v4)
  {
    v6 = a1[2];
    v7 = v5 + v4;
    v8 = a2[2];
    v9 = *a2;
    if (v5 + v4 > v8)
    {
      if (2 * v8 <= v7 + 992)
      {
        v10 = v7 + 992;
      }

      else
      {
        v10 = 2 * v8;
      }

      a2[2] = v10;
      v9 = malloc_type_realloc(v9, v10, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_24;
      }

      v5 = a2[1];
    }

    memcpy(&v9[v5], v6, v4);
    v5 = &a2[1][v4];
    a2[1] = v5;
  }

  v11 = v5 + 1;
  v12 = a2[2];
  v13 = *a2;
  if (v5 + 1 > v12)
  {
    v14 = v5 + 993;
    if (2 * v12 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 2 * v12;
    }

    a2[2] = v15;
    v13 = malloc_type_realloc(v13, v15, 0x100004077774924uLL);
    *a2 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v5 = a2[1];
    v11 = v5 + 1;
  }

  a2[1] = v11;
  v13[v5] = 40;
  v16 = a1[4];
  (*(*v16 + 32))(v16, a2);
  if ((*(v16 + 9) & 0xC0) != 0x40)
  {
    (*(*v16 + 40))(v16, a2);
  }

  result = *a2;
  v18 = a2[1];
  v19 = v18 + 1;
  v20 = a2[2];
  if ((v18 + 1) > v20)
  {
    v21 = (v18 + 993);
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    a2[2] = v22;
    result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v18 = a2[1];
      v19 = v18 + 1;
      goto LABEL_23;
    }

LABEL_24:
    abort();
  }

LABEL_23:
  a2[1] = v19;
  v18[result] = 41;
  return result;
}

uint64_t sub_100020428(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 6) > v6)
  {
    v7 = (v5 + 998);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *(v10 + 2) = 29793;
  *v10 = 1869366879;
  a2[1] += 6;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

char *sub_100020558(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = *(a2 + 16);
    v6 = *a2;
    if (v4 + 9 > v5)
    {
      v7 = v4 + 1001;
      v8 = 2 * v5;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      *(a2 + 16) = v9;
      v6 = malloc_type_realloc(v6, v9, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        goto LABEL_28;
      }

      v4 = *(a2 + 8);
    }

    v10 = &v6[v4];
    *v10 = *"unsigned ";
    v10[8] = 32;
    v4 = *(a2 + 8) + 9;
    *(a2 + 8) = v4;
  }

  v11 = *(a2 + 16);
  v12 = *a2;
  if (v4 + 7 > v11)
  {
    v13 = v4 + 999;
    v14 = 2 * v11;
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    *(a2 + 16) = v15;
    v12 = malloc_type_realloc(v12, v15, 0x100004077774924uLL);
    *a2 = v12;
    if (!v12)
    {
      goto LABEL_28;
    }

    v4 = *(a2 + 8);
  }

  v16 = &v12[v4];
  *(v16 + 3) = 1953384820;
  *v16 = 1953055327;
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = v18 + 7;
  *(a2 + 8) = v18 + 7;
  ++*(a2 + 32);
  v20 = v18 + 8;
  v21 = *(a2 + 16);
  if (v18 + 8 > v21)
  {
    if (2 * v21 <= v18 + 1000)
    {
      v22 = v18 + 1000;
    }

    else
    {
      v22 = 2 * v21;
    }

    *(a2 + 16) = v22;
    v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_28;
    }

    v19 = *(a2 + 8);
    v20 = v19 + 1;
  }

  *(a2 + 8) = v20;
  v17[v19] = 40;
  sub_100006714(*(a1 + 16), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v24 = *(a2 + 8);
  v25 = v24 + 1;
  v26 = *(a2 + 16);
  if (v24 + 1 > v26)
  {
    v27 = v24 + 993;
    if (2 * v26 <= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = 2 * v26;
    }

    *(a2 + 16) = v28;
    result = malloc_type_realloc(result, v28, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v24 = *(a2 + 8);
      v25 = v24 + 1;
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  *(a2 + 8) = v25;
  result[v24] = 41;
  return result;
}

void *sub_100020744(uint64_t a1, char **a2)
{
  result = (*(**(a1 + 16) + 32))(*(a1 + 16));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = *a2;
    v8 = a2[1];
    v9 = &v8[v5];
    v10 = a2[2];
    if (&v8[v5] > v10)
    {
      if (2 * v10 <= (v9 + 992))
      {
        v11 = (v9 + 992);
      }

      else
      {
        v11 = 2 * v10;
      }

      a2[2] = v11;
      v7 = malloc_type_realloc(v7, v11, 0x100004077774924uLL);
      *a2 = v7;
      if (!v7)
      {
        abort();
      }

      v8 = a2[1];
    }

    result = memcpy(&v8[v7], v6, v5);
    a2[1] += v5;
  }

  return result;
}

char *sub_100020824(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 30;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D3EF0;
  *(v6 + 4) = v8;
  return result;
}

char *sub_1000208DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 29;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002D3F50;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

char *sub_1000209A4(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 13) > v6)
  {
    v7 = (v5 + 1005);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  qmemcpy(&v5[v4], "pixel vector[", 13);
  a2[1] += 13;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  result = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 1) > v13)
  {
    v14 = (v12 + 993);
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    result = malloc_type_realloc(result, v16, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v12 = a2[1];
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  v12[result] = 93;
  ++a2[1];
  return result;
}

char *sub_100020B1C(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 8) > v7)
  {
    v8 = (v6 + 1000);
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = a2[1];
  }

  *&v6[v5] = 0x5B726F7463657620;
  a2[1] += 8;
  v11 = *(a1 + 24);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2);
    if ((*(v11 + 9) & 0xC0) != 0x40)
    {
      (*(*v11 + 40))(v11, a2);
    }
  }

  result = *a2;
  v13 = a2[1];
  v14 = a2[2];
  if ((v13 + 1) > v14)
  {
    v15 = (v13 + 993);
    v16 = 2 * v14;
    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    a2[2] = v17;
    result = malloc_type_realloc(result, v17, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v13 = a2[1];
      goto LABEL_18;
    }

LABEL_19:
    abort();
  }

LABEL_18:
  v13[result] = 93;
  ++a2[1];
  return result;
}

char *sub_100020D00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 15;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x400;
  *(v8 + 2) = off_1002D3FB0;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

uint64_t sub_100020DFC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(*a2 + v5 - 1) != 93)
  {
    v6 = *(a2 + 16);
    if (v5 + 1 > v6)
    {
      v7 = v5 + 993;
      v8 = 2 * v6;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      *(a2 + 16) = v9;
      v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
      *a2 = v4;
      if (!v4)
      {
        goto LABEL_27;
      }

      v5 = *(a2 + 8);
    }

    *(v4 + v5) = 32;
    v4 = *a2;
    v5 = *(a2 + 8) + 1;
    *(a2 + 8) = v5;
  }

  v10 = *(a2 + 16);
  if (v5 + 1 > v10)
  {
    v11 = v5 + 993;
    v12 = 2 * v10;
    if (v12 <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    *(a2 + 16) = v13;
    v4 = malloc_type_realloc(v4, v13, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_27;
    }

    v5 = *(a2 + 8);
  }

  *(v4 + v5) = 91;
  ++*(a2 + 8);
  v14 = *(a1 + 24);
  if (v14)
  {
    (*(*v14 + 32))(*(a1 + 24), a2);
    if ((*(v14 + 9) & 0xC0) != 0x40)
    {
      (*(*v14 + 40))(v14, a2);
    }
  }

  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  if (v16 + 1 > v17)
  {
    v18 = v16 + 993;
    v19 = 2 * v17;
    if (v19 <= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    *(a2 + 16) = v20;
    v15 = malloc_type_realloc(v15, v20, 0x100004077774924uLL);
    *a2 = v15;
    if (v15)
    {
      v16 = *(a2 + 8);
      goto LABEL_24;
    }

LABEL_27:
    abort();
  }

LABEL_24:
  *(v15 + v16) = 93;
  ++*(a2 + 8);
  v21 = *(**(a1 + 16) + 40);

  return v21();
}

uint64_t sub_100020FE0(uint64_t a1, char **a2, uint64_t **a3)
{
  v3 = *(a1 + 16);
  if (*(v3 + 8) == 8 && *(v3 + 24) == 4 && **(v3 + 16) == 1918986339)
  {
    return sub_10002103C(a3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002103C(uint64_t **a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 1) > v6)
  {
    v7 = 2 * v6;
    if (v7 <= (v5 + 993))
    {
      v8 = (v5 + 993);
    }

    else
    {
      v8 = v7;
    }

    a2[2] = v8;
    v9 = malloc_type_realloc(v4, v8, 0x100004077774924uLL);
    *a2 = v9;
    if (!v9)
    {
      goto LABEL_160;
    }

    v10 = a2[1];
    a2[1] = v10 + 1;
    v10[v9] = 34;
    v11 = a1[1];
    if (!v11)
    {
      goto LABEL_153;
    }

    goto LABEL_9;
  }

  a2[1] = v5 + 1;
  v5[v4] = 34;
  v11 = a1[1];
  if (v11)
  {
LABEL_9:
    v12 = 0;
    v13 = *a1;
    v14 = &v13[v11];
    do
    {
      v15 = *v13;
      if (*(*v13 + 8) != 77)
      {
LABEL_152:
        result = 0;
        a2[1] = v5;
        return result;
      }

      v16 = *(v15 + 40);
      if (v16)
      {
        v17 = 0;
        v18 = *(v15 + 32);
        do
        {
          v19 = *v18;
          if ((v19 - 48) > 9 || v17 > 25)
          {
            goto LABEL_152;
          }

          v17 = v19 + 10 * v17 - 48;
          ++v18;
          --v16;
        }

        while (v16);
        if (v17 > 255)
        {
          goto LABEL_152;
        }

        if ((v12 & 1) == 0)
        {
LABEL_21:
          if (v17 > 10)
          {
            goto LABEL_35;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v17 = 0;
        if ((v12 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if ((v17 - 48) < 0xA)
      {
        goto LABEL_28;
      }

      if (v17 > 64)
      {
        if ((v17 - 65) >= 6 && (v17 - 97) >= 6)
        {
          goto LABEL_38;
        }

LABEL_28:
        v21 = *a2;
        v22 = a2[1];
        v23 = a2[2];
        if ((v22 + 2) > v23)
        {
          v24 = (v22 + 994);
          v25 = 2 * v23;
          if (v25 <= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v25;
          }

          a2[2] = v26;
          v21 = malloc_type_realloc(v21, v26, 0x100004077774924uLL);
          *a2 = v21;
          if (!v21)
          {
            goto LABEL_160;
          }

          v22 = a2[1];
        }

        *&v22[v21] = 8738;
        a2[1] += 2;
        if (v17 > 10)
        {
LABEL_35:
          if (v17 <= 12)
          {
            goto LABEL_80;
          }

          if (v17 == 13)
          {
LABEL_104:
            v33 = *a2;
            v34 = a2[1];
            v66 = a2[2];
            if ((v34 + 2) > v66)
            {
              v67 = (v34 + 994);
              v68 = 2 * v66;
              if (v68 <= v67)
              {
                v69 = v67;
              }

              else
              {
                v69 = v68;
              }

              a2[2] = v69;
              v33 = malloc_type_realloc(v33, v69, 0x100004077774924uLL);
              *a2 = v33;
              if (!v33)
              {
                goto LABEL_160;
              }

              v34 = a2[1];
            }

            v12 = 0;
            v39 = 29276;
            goto LABEL_111;
          }

          if (v17 == 34)
          {
            goto LABEL_97;
          }

LABEL_38:
          if (v17 == 92)
          {
            v27 = *a2;
            v28 = a2[1];
            v29 = a2[2];
            if ((v28 + 2) > v29)
            {
              v30 = (v28 + 994);
              v31 = 2 * v29;
              if (v31 <= v30)
              {
                v32 = v30;
              }

              else
              {
                v32 = v31;
              }

              a2[2] = v32;
              v27 = malloc_type_realloc(v27, v32, 0x100004077774924uLL);
              *a2 = v27;
              if (!v27)
              {
                goto LABEL_160;
              }

              v28 = a2[1];
            }

            v12 = 0;
            *&v28[v27] = 23644;
            goto LABEL_112;
          }

          goto LABEL_115;
        }

LABEL_47:
        if (v17 > 8)
        {
          if (v17 == 9)
          {
            v33 = *a2;
            v34 = a2[1];
            v50 = a2[2];
            if ((v34 + 2) > v50)
            {
              v51 = (v34 + 994);
              v52 = 2 * v50;
              if (v52 <= v51)
              {
                v53 = v51;
              }

              else
              {
                v53 = v52;
              }

              a2[2] = v53;
              v33 = malloc_type_realloc(v33, v53, 0x100004077774924uLL);
              *a2 = v33;
              if (!v33)
              {
                goto LABEL_160;
              }

              v34 = a2[1];
            }

            v12 = 0;
            v39 = 29788;
          }

          else
          {
            v33 = *a2;
            v34 = a2[1];
            v40 = a2[2];
            if ((v34 + 2) > v40)
            {
              v41 = (v34 + 994);
              v42 = 2 * v40;
              if (v42 <= v41)
              {
                v43 = v41;
              }

              else
              {
                v43 = v42;
              }

              a2[2] = v43;
              v33 = malloc_type_realloc(v33, v43, 0x100004077774924uLL);
              *a2 = v33;
              if (!v33)
              {
                goto LABEL_160;
              }

              v34 = a2[1];
            }

            v12 = 0;
            v39 = 28252;
          }

          goto LABEL_111;
        }

        if (v17 == 7)
        {
          v44 = *a2;
          v45 = a2[1];
          v46 = a2[2];
          if ((v45 + 2) > v46)
          {
            v47 = (v45 + 994);
            v48 = 2 * v46;
            if (v48 <= v47)
            {
              v49 = v47;
            }

            else
            {
              v49 = v48;
            }

            a2[2] = v49;
            v44 = malloc_type_realloc(v44, v49, 0x100004077774924uLL);
            *a2 = v44;
            if (!v44)
            {
              goto LABEL_160;
            }

            v45 = a2[1];
          }

          v12 = 0;
          *&v45[v44] = 24924;
          goto LABEL_112;
        }

        if (v17 == 8)
        {
          v33 = *a2;
          v34 = a2[1];
          v35 = a2[2];
          if ((v34 + 2) > v35)
          {
            v36 = (v34 + 994);
            v37 = 2 * v35;
            if (v37 <= v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = v37;
            }

            a2[2] = v38;
            v33 = malloc_type_realloc(v33, v38, 0x100004077774924uLL);
            *a2 = v33;
            if (!v33)
            {
              goto LABEL_160;
            }

            v34 = a2[1];
          }

          v12 = 0;
          v39 = 25180;
          goto LABEL_111;
        }

        goto LABEL_115;
      }

      if (v17 <= 10)
      {
        goto LABEL_47;
      }

      if (v17 <= 12)
      {
LABEL_80:
        if (v17 == 11)
        {
          v33 = *a2;
          v34 = a2[1];
          v58 = a2[2];
          if ((v34 + 2) > v58)
          {
            v59 = (v34 + 994);
            v60 = 2 * v58;
            if (v60 <= v59)
            {
              v61 = v59;
            }

            else
            {
              v61 = v60;
            }

            a2[2] = v61;
            v33 = malloc_type_realloc(v33, v61, 0x100004077774924uLL);
            *a2 = v33;
            if (!v33)
            {
              goto LABEL_160;
            }

            v34 = a2[1];
          }

          v12 = 0;
          v39 = 30300;
        }

        else
        {
          v33 = *a2;
          v34 = a2[1];
          v54 = a2[2];
          if ((v34 + 2) > v54)
          {
            v55 = (v34 + 994);
            v56 = 2 * v54;
            if (v56 <= v55)
            {
              v57 = v55;
            }

            else
            {
              v57 = v56;
            }

            a2[2] = v57;
            v33 = malloc_type_realloc(v33, v57, 0x100004077774924uLL);
            *a2 = v33;
            if (!v33)
            {
              goto LABEL_160;
            }

            v34 = a2[1];
          }

          v12 = 0;
          v39 = 26204;
        }

        goto LABEL_111;
      }

      if (v17 == 13)
      {
        goto LABEL_104;
      }

      if (v17 == 34)
      {
LABEL_97:
        v33 = *a2;
        v34 = a2[1];
        v62 = a2[2];
        if ((v34 + 2) > v62)
        {
          v63 = (v34 + 994);
          v64 = 2 * v62;
          if (v64 <= v63)
          {
            v65 = v63;
          }

          else
          {
            v65 = v64;
          }

          a2[2] = v65;
          v33 = malloc_type_realloc(v33, v65, 0x100004077774924uLL);
          *a2 = v33;
          if (!v33)
          {
            goto LABEL_160;
          }

          v34 = a2[1];
        }

        v12 = 0;
        v39 = 8796;
LABEL_111:
        *&v34[v33] = v39;
LABEL_112:
        a2[1] += 2;
        goto LABEL_113;
      }

LABEL_115:
      if (v17 < 32 || v17 == 127)
      {
        v77 = *a2;
        v78 = a2[1];
        v79 = v78 + 1;
        v80 = a2[2];
        if ((v78 + 1) > v80)
        {
          v81 = (v78 + 993);
          if (2 * v80 <= v81)
          {
            v82 = v81;
          }

          else
          {
            v82 = 2 * v80;
          }

          a2[2] = v82;
          v77 = malloc_type_realloc(v77, v82, 0x100004077774924uLL);
          *a2 = v77;
          if (!v77)
          {
            goto LABEL_160;
          }

          v78 = a2[1];
          v79 = v78 + 1;
        }

        a2[1] = v79;
        v78[v77] = 92;
        if (v17 >= 8)
        {
          v83 = *a2;
          v84 = a2[1];
          v85 = v84 + 1;
          v86 = a2[2];
          if ((v84 + 1) > v86)
          {
            v87 = (v84 + 993);
            if (2 * v86 <= v87)
            {
              v88 = v87;
            }

            else
            {
              v88 = 2 * v86;
            }

            a2[2] = v88;
            v83 = malloc_type_realloc(v83, v88, 0x100004077774924uLL);
            *a2 = v83;
            if (!v83)
            {
              goto LABEL_160;
            }

            v84 = a2[1];
            v85 = v84 + 1;
          }

          a2[1] = v85;
          v84[v83] = 120;
          if (v17 >= 0x10)
          {
            v89 = a0123456789abcd[v17 >> 4];
            v90 = *a2;
            v91 = a2[1];
            v92 = v91 + 1;
            v93 = a2[2];
            if ((v91 + 1) > v93)
            {
              v94 = (v91 + 993);
              if (2 * v93 <= v94)
              {
                v95 = v94;
              }

              else
              {
                v95 = 2 * v93;
              }

              a2[2] = v95;
              v90 = malloc_type_realloc(v90, v95, 0x100004077774924uLL);
              *a2 = v90;
              if (!v90)
              {
                goto LABEL_160;
              }

              v91 = a2[1];
              v92 = v91 + 1;
            }

            a2[1] = v92;
            v91[v90] = v89;
          }
        }

        v96 = a0123456789abcd[v17 & 0xF];
        v97 = *a2;
        v98 = a2[1];
        v99 = v98 + 1;
        v100 = a2[2];
        if ((v98 + 1) > v100)
        {
          v101 = (v98 + 993);
          if (2 * v100 <= v101)
          {
            v102 = v101;
          }

          else
          {
            v102 = 2 * v100;
          }

          a2[2] = v102;
          v97 = malloc_type_realloc(v97, v102, 0x100004077774924uLL);
          *a2 = v97;
          if (!v97)
          {
            goto LABEL_160;
          }

          v98 = a2[1];
          v99 = v98 + 1;
        }

        a2[1] = v99;
        v98[v97] = v96;
        v12 = 1;
      }

      else
      {
        v70 = *a2;
        v71 = a2[1];
        v72 = v71 + 1;
        v73 = a2[2];
        if ((v71 + 1) > v73)
        {
          v74 = (v71 + 993);
          v75 = 2 * v73;
          if (v75 <= v74)
          {
            v76 = v74;
          }

          else
          {
            v76 = v75;
          }

          a2[2] = v76;
          v70 = malloc_type_realloc(v70, v76, 0x100004077774924uLL);
          *a2 = v70;
          if (!v70)
          {
            goto LABEL_160;
          }

          v71 = a2[1];
          v72 = v71 + 1;
        }

        v12 = 0;
        a2[1] = v72;
        v71[v70] = v17;
      }

LABEL_113:
      ++v13;
    }

    while (v13 != v14);
  }

LABEL_153:
  v104 = *a2;
  v105 = a2[1];
  v106 = v105 + 1;
  v107 = a2[2];
  if ((v105 + 1) > v107)
  {
    v108 = (v105 + 993);
    if (2 * v107 <= v108)
    {
      v109 = v108;
    }

    else
    {
      v109 = 2 * v107;
    }

    a2[2] = v109;
    v104 = malloc_type_realloc(v104, v109, 0x100004077774924uLL);
    *a2 = v104;
    if (v104)
    {
      v105 = a2[1];
      v106 = v105 + 1;
      goto LABEL_159;
    }

LABEL_160:
    abort();
  }

LABEL_159:
  a2[1] = v106;
  v105[v104] = 34;
  return 1;
}

char *sub_100021744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v12 = *(*a3 + 9);
  v8[24] = 14;
  *(v8 + 25) = v12 & 0xC0 | 0x500 | *(v8 + 25) & 0xF000;
  *(v8 + 2) = off_1002D4010;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

uint64_t sub_100021818(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

char *sub_10002185C(uint64_t a1, char **a2)
{
  (*(**(a1 + 24) + 32))(*(a1 + 24));
  v4 = *(a1 + 24);
  v5 = *(v4 + 9);
  v6 = (v5 >> 8) & 3;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (v6 == 2)
  {
    if ((*(*v4 + 8))(v4, a2))
    {
LABEL_8:
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      if ((v9 + 1) > v10)
      {
        v11 = (v9 + 993);
        v12 = 2 * v10;
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        a2[2] = v13;
        v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
        *a2 = v8;
        if (!v8)
        {
          goto LABEL_31;
        }

        v9 = a2[1];
      }

      v14 = 40;
      goto LABEL_22;
    }

    v4 = *(a1 + 24);
    v5 = *(v4 + 9);
  }

  v7 = (v5 >> 10) & 3;
  if (!v7 || v7 == 2 && (*(*v4 + 16))(v4, a2))
  {
    goto LABEL_8;
  }

  v8 = *a2;
  v9 = a2[1];
  v15 = a2[2];
  if ((v9 + 1) > v15)
  {
    v16 = (v9 + 993);
    v17 = 2 * v15;
    if (v17 <= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    a2[2] = v18;
    v8 = malloc_type_realloc(v8, v18, 0x100004077774924uLL);
    *a2 = v8;
    if (!v8)
    {
      goto LABEL_31;
    }

    v9 = a2[1];
  }

  v14 = 32;
LABEL_22:
  v9[v8] = v14;
  ++a2[1];
  v19 = *(a1 + 16);
  (*(*v19 + 32))(v19, a2);
  if ((*(v19 + 9) & 0xC0) != 0x40)
  {
    (*(*v19 + 40))(v19, a2);
  }

  result = *a2;
  v21 = a2[1];
  v22 = a2[2];
  if ((v21 + 3) > v22)
  {
    v23 = (v21 + 995);
    v24 = 2 * v22;
    if (v24 <= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    a2[2] = v25;
    result = malloc_type_realloc(result, v25, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v21 = a2[1];
      goto LABEL_30;
    }

LABEL_31:
    abort();
  }

LABEL_30:
  v26 = &v21[result];
  v26[2] = 42;
  *v26 = 14906;
  a2[1] += 3;
  return result;
}

uint64_t sub_100021AB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(v4 + 9);
  v6 = (v5 >> 8) & 3;
  if (v6)
  {
    if (v6 != 2)
    {
LABEL_5:
      v7 = (v5 >> 10) & 3;
      if (v7 && (v7 != 2 || !(*(*v4 + 16))(v4, a2)))
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    if (((*(*v4 + 8))(v4, a2) & 1) == 0)
    {
      v4 = *(a1 + 24);
      v5 = *(v4 + 9);
      goto LABEL_5;
    }
  }

LABEL_8:
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  if (v9 + 1 > v10)
  {
    v11 = v9 + 993;
    v12 = 2 * v10;
    if (v12 <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    *(a2 + 16) = v13;
    v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
    *a2 = v8;
    if (!v8)
    {
      abort();
    }

    v9 = *(a2 + 8);
  }

  *(v8 + v9) = 41;
  ++*(a2 + 8);
LABEL_15:
  v14 = *(**(a1 + 24) + 40);

  return v14();
}

uint64_t sub_100021C18(void *a1, char **a2)
{
  v4 = a1[3];
  v5 = a2[1];
  if (v4)
  {
    v6 = a1[2];
    v7 = v5 + v4;
    v8 = a2[2];
    v9 = *a2;
    if (v5 + v4 > v8)
    {
      if (2 * v8 <= v7 + 992)
      {
        v10 = v7 + 992;
      }

      else
      {
        v10 = 2 * v8;
      }

      a2[2] = v10;
      v9 = malloc_type_realloc(v9, v10, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_19;
      }

      v5 = a2[1];
    }

    memcpy(&v9[v5], v6, v4);
    v5 = &a2[1][v4];
    a2[1] = v5;
  }

  v11 = v5 + 1;
  v12 = a2[2];
  v13 = *a2;
  if (v5 + 1 <= v12)
  {
    goto LABEL_15;
  }

  v14 = v5 + 993;
  if (2 * v12 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = 2 * v12;
  }

  a2[2] = v15;
  v13 = malloc_type_realloc(v13, v15, 0x100004077774924uLL);
  *a2 = v13;
  if (!v13)
  {
LABEL_19:
    abort();
  }

  v5 = a2[1];
  v11 = v5 + 1;
LABEL_15:
  a2[1] = v11;
  v13[v5] = 32;
  v16 = a1[4];
  result = (*(*v16 + 32))(v16, a2);
  if ((*(v16 + 9) & 0xC0) != 0x40)
  {
    v18 = *(*v16 + 40);

    return v18(v16, a2);
  }

  return result;
}

uint64_t sub_100021DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

char *sub_100021DF8(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  if (*(v4 + 8) == 11)
  {
    v5 = *(v4 + 16);
    if (*(v5 + 8) == 8 && *(v5 + 24) == 11)
    {
      v6 = *(v5 + 16);
      v7 = *v6;
      v8 = *(v6 + 3);
      if (v7 == 0x6A626F5F636A626FLL && v8 == 0x7463656A626F5F63)
      {
        v28 = (a2 + 1);
        v35 = a2[1];
        v36 = a2[2];
        v37 = *a2;
        if (v35 + 3 > v36)
        {
          v38 = v4;
          v39 = v35 + 995;
          v40 = 2 * v36;
          if (v40 <= v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = v40;
          }

          a2[2] = v41;
          v42 = malloc_type_realloc(v37, v41, 0x100004077774924uLL);
          *a2 = v42;
          if (!v42)
          {
            goto LABEL_61;
          }

          v37 = v42;
          v35 = *v28;
          v4 = v38;
        }

        v43 = &v37[v35];
        v43[2] = 60;
        *v43 = 25705;
        v27 = *v28 + 3;
        *v28 = v27;
        v44 = *(v4 + 32);
        if (v44)
        {
          v45 = *(v4 + 24);
          v46 = v27 + v44;
          v47 = a2[2];
          v48 = *a2;
          if (v27 + v44 > v47)
          {
            if (2 * v47 <= v46 + 992)
            {
              v49 = v46 + 992;
            }

            else
            {
              v49 = 2 * v47;
            }

            a2[2] = v49;
            v48 = malloc_type_realloc(v48, v49, 0x100004077774924uLL);
            *a2 = v48;
            if (!v48)
            {
              goto LABEL_61;
            }

            v27 = *v28;
          }

          memcpy(&v48[v27], v45, v44);
          v27 = *v28 + v44;
          *v28 = v27;
        }

        v50 = a2[2];
        result = *a2;
        if (v27 + 1 > v50)
        {
          v51 = v27 + 993;
          v52 = 2 * v50;
          if (v52 <= v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = v52;
          }

          a2[2] = v53;
          result = malloc_type_realloc(result, v53, 0x100004077774924uLL);
          *a2 = result;
          if (!result)
          {
            goto LABEL_61;
          }

          v27 = *v28;
        }

        v34 = 62;
        goto LABEL_39;
      }
    }
  }

  (*(*v4 + 32))(v4, a2);
  v10 = *(a1 + 16);
  if ((v10[10] & 3) == 0 || (v10[10] & 3) == 2 && (*(*v10 + 8))(v10, a2))
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    if ((v12 + 1) > v13)
    {
      v14 = (v12 + 993);
      v15 = 2 * v13;
      if (v15 <= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      a2[2] = v16;
      v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
      *a2 = v11;
      if (!v11)
      {
        goto LABEL_61;
      }

      v12 = a2[1];
    }

    v12[v11] = 32;
    ++a2[1];
  }

  v17 = *(a1 + 16);
  v18 = *(v17 + 9);
  v19 = (v18 >> 8) & 3;
  if (v19)
  {
    if (v19 != 2)
    {
LABEL_22:
      v20 = (v18 >> 10) & 3;
      if (v20 && (v20 != 2 || !(*(*v17 + 16))(v17, a2)))
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    if (((*(*v17 + 8))(v17, a2) & 1) == 0)
    {
      v17 = *(a1 + 16);
      v18 = *(v17 + 9);
      goto LABEL_22;
    }
  }

LABEL_25:
  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  if ((v22 + 1) > v23)
  {
    v24 = (v22 + 993);
    v25 = 2 * v23;
    if (v25 <= v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    a2[2] = v26;
    v21 = malloc_type_realloc(v21, v26, 0x100004077774924uLL);
    *a2 = v21;
    if (!v21)
    {
      goto LABEL_61;
    }

    v22 = a2[1];
  }

  v22[v21] = 40;
  ++a2[1];
LABEL_32:
  v28 = (a2 + 1);
  v27 = a2[1];
  v29 = a2[2];
  result = *a2;
  if (v27 + 1 > v29)
  {
    v31 = v27 + 993;
    v32 = 2 * v29;
    if (v32 <= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v32;
    }

    a2[2] = v33;
    result = malloc_type_realloc(result, v33, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v27 = *v28;
      goto LABEL_38;
    }

LABEL_61:
    abort();
  }

LABEL_38:
  v34 = 42;
LABEL_39:
  result[v27] = v34;
  ++*v28;
  return result;
}

uint64_t sub_1000221B0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (*(result + 8) != 11 || (v5 = *(result + 16), *(v5 + 8) != 8) || *(v5 + 24) != 11 || ((v6 = *(v5 + 16), v7 = *v6, v8 = *(v6 + 3), v7 == 0x6A626F5F636A626FLL) ? (v9 = v8 == 0x7463656A626F5F63) : (v9 = 0), !v9))
  {
    v10 = *(result + 9);
    v11 = (v10 >> 8) & 3;
    if (v11)
    {
      if (v11 == 2)
      {
        if ((*(*result + 8))(result, a2))
        {
          goto LABEL_15;
        }

        result = *(a1 + 16);
        v10 = *(result + 9);
      }

      v12 = (v10 >> 10) & 3;
      if (v12 && (v12 != 2 || !(*(*result + 16))(result, a2)))
      {
LABEL_22:
        v19 = *(**(a1 + 16) + 40);

        return v19();
      }
    }

LABEL_15:
    v13 = *a2;
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    if (v14 + 1 > v15)
    {
      v16 = v14 + 993;
      v17 = 2 * v15;
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      *(a2 + 16) = v18;
      v13 = malloc_type_realloc(v13, v18, 0x100004077774924uLL);
      *a2 = v13;
      if (!v13)
      {
        abort();
      }

      v14 = *(a2 + 8);
    }

    *(v13 + v14) = 41;
    ++*(a2 + 8);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10002237C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

uint64_t sub_1000223C0(uint64_t result, void **a2)
{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    v4 = result;
    *(result + 28) = 1;
    result = sub_1000227BC(result, a2);
    if (!v5)
    {
LABEL_40:
      *(v4 + 28) = v2;
      return result;
    }

    v6 = result;
    v7 = v5;
    (*(*v5 + 32))(v5, a2);
    if ((*(v7 + 10) & 3) == 0 || (*(v7 + 10) & 3) == 2 && (*(*v7 + 8))(v7, a2))
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      if ((v9 + 1) > v10)
      {
        v11 = (v9 + 993);
        v12 = 2 * v10;
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        a2[2] = v13;
        v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
        *a2 = v8;
        if (!v8)
        {
          goto LABEL_42;
        }

        v9 = a2[1];
      }

      v9[v8] = 32;
      a2[1] = a2[1] + 1;
    }

    v14 = *(v7 + 9);
    v15 = (v14 >> 8) & 3;
    if (!v15)
    {
      goto LABEL_20;
    }

    if (v15 == 2)
    {
      if ((*(*v7 + 8))(v7, a2))
      {
        goto LABEL_20;
      }

      v14 = *(v7 + 9);
    }

    v16 = (v14 >> 10) & 3;
    if (v16 && (v16 != 2 || !(*(*v7 + 16))(v7, a2)))
    {
LABEL_27:
      if (v6)
      {
        v23 = "&&";
      }

      else
      {
        v23 = "&";
      }

      if (v6)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      v25 = *a2;
      v26 = a2[1];
      v27 = &v26[v24];
      v28 = a2[2];
      if (&v26[v24] <= v28)
      {
        goto LABEL_39;
      }

      if (2 * v28 <= (v27 + 992))
      {
        v29 = (v27 + 992);
      }

      else
      {
        v29 = 2 * v28;
      }

      a2[2] = v29;
      v25 = malloc_type_realloc(v25, v29, 0x100004077774924uLL);
      *a2 = v25;
      if (v25)
      {
        v26 = a2[1];
LABEL_39:
        result = memcpy(&v26[v25], v23, v24);
        a2[1] = a2[1] + v24;
        goto LABEL_40;
      }

LABEL_42:
      abort();
    }

LABEL_20:
    v17 = *a2;
    v18 = a2[1];
    v19 = a2[2];
    if ((v18 + 1) > v19)
    {
      v20 = (v18 + 993);
      v21 = 2 * v19;
      if (v21 <= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      a2[2] = v22;
      v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
      *a2 = v17;
      if (!v17)
      {
        goto LABEL_42;
      }

      v18 = a2[1];
    }

    v18[v17] = 40;
    a2[1] = a2[1] + 1;
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_100022640(uint64_t result, void **a2)
{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    v4 = result;
    *(result + 28) = 1;
    result = sub_1000227BC(result, a2);
    if (!v5)
    {
LABEL_18:
      *(v4 + 28) = v2;
      return result;
    }

    v6 = v5;
    v7 = *(v5 + 9);
    v8 = (v7 >> 8) & 3;
    if (!v8)
    {
      goto LABEL_10;
    }

    if (v8 == 2)
    {
      if ((*(*v5 + 8))(v5, a2))
      {
        goto LABEL_10;
      }

      v7 = *(v6 + 9);
    }

    v9 = (v7 >> 10) & 3;
    if (v9 && (v9 != 2 || !(*(*v6 + 16))(v6, a2)))
    {
LABEL_17:
      result = (*(*v6 + 40))(v6, a2);
      goto LABEL_18;
    }

LABEL_10:
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    if ((v11 + 1) > v12)
    {
      v13 = (v11 + 993);
      v14 = 2 * v12;
      if (v14 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      a2[2] = v15;
      v10 = malloc_type_realloc(v10, v15, 0x100004077774924uLL);
      *a2 = v10;
      if (!v10)
      {
        abort();
      }

      v11 = a2[1];
    }

    v11[v10] = 41;
    a2[1] = a2[1] + 1;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1000227BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  ptr = v16;
  v14 = v16;
  v15 = &v17;
  memset(v16, 0, sizeof(v16));
  for (i = (*(*v4 + 24))(v4); *(i + 8) == 13; i = (*(*v6 + 24))(v6, a2))
  {
    v6 = *(i + 16);
    if (*(i + 24) < v3)
    {
      v3 = *(i + 24);
    }

    v7 = v14;
    v8 = ptr;
    if (v14 == v15)
    {
      v10 = v14 - ptr;
      if (ptr == v16)
      {
        v8 = malloc_type_malloc(2 * (v14 - ptr), 0x6004044C4A2DFuLL);
        if (!v8)
        {
LABEL_21:
          abort();
        }

        if (v14 != ptr)
        {
          v11 = v8;
          memmove(v8, ptr, v14 - ptr);
          v8 = v11;
        }

        ptr = v8;
      }

      else
      {
        v8 = malloc_type_realloc(ptr, 2 * (v14 - ptr), 0x6004044C4A2DFuLL);
        ptr = v8;
        if (!v8)
        {
          goto LABEL_21;
        }
      }

      v15 = &v8[8 * (v10 >> 2)];
      *&v8[v10] = v6;
      v14 = &v8[v10 + 8];
      v9 = (v10 + 8) >> 3;
      if (v9 < 2)
      {
        continue;
      }
    }

    else
    {
      *v14 = v6;
      v14 += 8;
      v9 = (v7 + 8 - ptr) >> 3;
      if (v9 < 2)
      {
        continue;
      }
    }

    if (v6 == *&v8[(4 * v9 - 4) & 0xFFFFFFFFFFFFFFF8])
    {
      break;
    }
  }

  if (ptr != v16)
  {
    free(ptr);
  }

  return v3;
}

void llvm::detail::IEEEFloat::makeNaN(llvm::detail::IEEEFloat *this, int a2, int a3, const llvm::APInt *a4)
{
  v4 = a4;
  v7 = *this;
  v8 = *(this + 20) & 0xF0;
  if (a3)
  {
    v9 = 9;
  }

  else
  {
    v9 = 1;
  }

  *(this + 20) = v9 | v8;
  v10 = *(v7 + 16);
  if (v10 != 1)
  {
    goto LABEL_9;
  }

  if (*(v7 + 20) == 2)
  {
    v11 = *(v7 + 4) - 1;
    goto LABEL_10;
  }

  if (*(v7 + 25) == 1)
  {
    v11 = *v7;
  }

  else
  {
LABEL_9:
    v11 = *v7 + 1;
  }

LABEL_10:
  *(this + 4) = v11;
  v12 = *(v7 + 8);
  v13 = (this + 8);
  if ((v12 - 64) <= 0xFFFFFF7F)
  {
    v13 = *v13;
  }

  v14 = (v12 + 64) >> 6;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v35 = 1;
  v34 = 0;
  if (v10 == 1)
  {
    v16 = &v35;
    if (*(v7 + 20) == 2)
    {
      *(this + 20) = v8 | 9;
      v33 = *(v7 + 8) - 1;
      if (v33 <= 0x40)
      {
        v32 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v33 = v12 - 1;
      if ((v12 - 1) <= 0x40)
      {
        if (v12 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 = 0xFFFFFFFFFFFFFFFFLL >> ~(v12 + 62);
        }

        v32 = v18;
LABEL_34:
        a2 = 0;
        v34 = v32;
        v17 = v33;
        v35 = v33;
        v4 = &v34;
        if (v15 <= ((v33 + 63) >> 6))
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    llvm::APInt::initSlowCase(&v32);
  }

  if (!a4)
  {
    llvm::APInt::tcSet(v13, 0, v15);
    v19 = *this;
    v20 = *(*this + 8);
    if (v20 <= 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = (v20 - 2);
    }

    if (a2)
    {
      goto LABEL_55;
    }

    goto LABEL_31;
  }

  v16 = (a4 + 8);
  v17 = *(a4 + 2);
  if (v15 > ((v17 + 63) >> 6))
  {
LABEL_35:
    llvm::APInt::tcSet(v13, 0, v15);
    v17 = *v16;
  }

LABEL_36:
  if (v17 >= 0x41)
  {
    v4 = *v4;
  }

  v23 = (v17 + 63) >> 6;
  if (v15 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v15;
  }

  llvm::APInt::tcAssign(v13, v4, v24);
  v19 = *this;
  v25 = *(*this + 8);
  v26 = (v25 - 1) >> 6;
  *(v13 + v26) &= ~(-1 << (v25 - 1));
  v27 = v26 + 1;
  if (v26 + 1 != v15)
  {
    v28 = v15 + ~v26;
    if (v28 < 0xA)
    {
      v29 = v26 + 1;
    }

    else if (v15 - 1 <= v26)
    {
      v29 = v26 + 1;
    }

    else
    {
      v29 = v27 + (v28 & 0xFFFFFFFC);
      v30 = v28 & 0xFFFFFFFC;
      do
      {
        v31 = (v13 + 8 * v27);
        *v31 = 0uLL;
        v31[1] = 0uLL;
        v27 += 4;
        v30 -= 4;
      }

      while (v30);
      if (v28 == (v28 & 0xFFFFFFFC))
      {
        goto LABEL_51;
      }
    }

    do
    {
      *(v13 + v29++) = 0;
    }

    while (v15 != v29);
  }

LABEL_51:
  if (v25 <= 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = (v25 - 2);
  }

  if (a2)
  {
LABEL_55:
    llvm::APInt::tcClearBit(v13, v21);
    if (!llvm::APInt::tcIsZero(v13, v15))
    {
      goto LABEL_58;
    }

    v22 = (v21 - 1);
    goto LABEL_57;
  }

LABEL_31:
  v22 = v21;
  if (*(v19 + 20) != 2)
  {
LABEL_57:
    llvm::APInt::tcSetBit(v13, v22);
  }

LABEL_58:
  if (*this == &unk_1002B0114)
  {
    llvm::APInt::tcSetBit(v13, (v21 + 1));
    if (v35 < 0x41)
    {
      return;
    }
  }

  else if (v35 < 0x41)
  {
    return;
  }

  if (v34)
  {
    operator delete[]();
  }
}

uint64_t *llvm::detail::IEEEFloat::operator=(uint64_t *this, uint64_t *a2)
{
  if (this != a2)
  {
    v2 = *a2;
    if (*this != *a2)
    {
      if ((*(*this + 8) - 64) <= 0xFFFFFF7F && this[1])
      {
        v3 = this[1];
        operator delete[]();
      }

      *this = v2;
      if ((*(v2 + 8) + 64) >= 0x80)
      {
        operator new[]();
      }
    }

    v4 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
    *(this + 20) = v4;
    v5 = *(a2 + 20);
    v6 = v5 & 7;
    *(this + 20) = v4 & 0xF8 | v5 & 7;
    *(this + 4) = *(a2 + 4);
    v8 = (v5 & 6) != 0 && v6 != 3;
    if (v6 == 1 || v8)
    {
      v10 = this + 1;
      v11 = *(*this + 8);
      v12 = this;
      if ((v11 - 64) <= 0xFFFFFF7F)
      {
        v10 = *v10;
      }

      v13 = *(*a2 + 8) - 64;
      v16 = a2[1];
      v14 = (a2 + 1);
      v15 = v16;
      if (v13 < 0xFFFFFF80)
      {
        v14 = v15;
      }

      v17 = (v11 + 64) >> 6;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      llvm::APInt::tcAssign(v10, v14, v18);
      return v12;
    }
  }

  return this;
}

BOOL llvm::detail::IEEEFloat::isSignificandAllOnes(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if (v3 - 64 <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  if ((v3 + 63) >> 6 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v3 + 63) >> 6;
  }

  if (v4 != 1)
  {
    v5 = v4 - 1;
    v6 = v1;
    do
    {
      v7 = *v6++;
      if (v7 != -1)
      {
        return 0;
      }
    }

    while (--v5);
  }

  if (v3 < 2)
  {
    return 0;
  }

  return (v1[v4 - 1] | (-1 << (v3 + 63 - (v4 << 6)))) == -1;
}

void llvm::detail::IEEEFloat::~IEEEFloat(llvm::detail::IEEEFloat *this)
{
  if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    if (*(this + 1))
    {
      operator delete[]();
    }
  }
}

BOOL llvm::detail::IEEEFloat::bitwiseIsEqual(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v2 = *a2;
  if (*this == *a2)
  {
    v3 = *(this + 20);
    v4 = *(a2 + 20);
    if ((v3 & 7) == (v4 & 7) && ((v4 ^ v3) & 8) == 0)
    {
      v5 = 1;
      if ((v3 & 7) == 0 || (v3 & 7) == 3)
      {
        return v5;
      }

      if ((v3 & 6) == 0 || *(this + 4) == *(a2 + 4))
      {
        v6 = *(*this + 8);
        v7 = (this + 8);
        if ((v6 - 64) <= 0xFFFFFF7F)
        {
          v7 = *v7;
        }

        v8 = (v6 + 64) >> 6;
        if (v8 <= 1)
        {
          v8 = 1;
        }

        v11 = *(a2 + 1);
        v9 = a2 + 8;
        v10 = v11;
        if ((*(v2 + 8) - 64) < 0xFFFFFF80)
        {
          v9 = v10;
        }

        return memcmp(v7, v9, 8 * v8) == 0;
      }
    }
  }

  return 0;
}

uint64_t llvm::detail::IEEEFloat::normalize(uint64_t *a1, int a2, int a3)
{
  if ((*(a1 + 20) & 6) == 0 || (*(a1 + 20) & 7) == 3)
  {
    return 0;
  }

  v8 = (a1 + 1);
  v9 = *(*a1 + 8);
  v10 = (a1 + 1);
  if ((v9 - 64) <= 0xFFFFFF7F)
  {
    v10 = *v8;
  }

  v11 = (v9 + 64) >> 6;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = llvm::APInt::tcMSB(v10, v12);
  v14 = *a1;
  v15 = v13 + 1;
  if (v13 == -1)
  {
    v15 = 0;
  }

  else
  {
    v22 = *(v14 + 8);
    v23 = *(a1 + 4);
    v24 = v23 + v15 - v22;
    if (v24 > *v14)
    {
      goto LABEL_35;
    }

    v27 = *(v14 + 4);
    if (v24 >= v27)
    {
      v28 = v15 - v22;
    }

    else
    {
      v28 = v27 - v23;
    }

    if ((v28 & 0x80000000) != 0)
    {
      v38 = (v22 + 64) >> 6;
      if (v38 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38;
      }

      if ((v22 - 64) <= 0xFFFFFF7F)
      {
        v8 = *v8;
      }

      llvm::APInt::tcShiftLeft(v8, v39, -v28);
      result = 0;
      *(a1 + 4) += v28;
      return result;
    }

    if (v28)
    {
      *(a1 + 4) = v28 + v23;
      v29 = v8;
      if ((v22 - 64) <= 0xFFFFFF7F)
      {
        v29 = *v8;
      }

      v30 = (v22 + 64) >> 6;
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      v32 = llvm::APInt::tcLSB(v29, v31);
      if (v32 >= v28)
      {
        llvm::APInt::tcShiftRight(v29, v31, v28);
        a3 = a3 != 0;
      }

      else
      {
        if (v32 + 1 == v28)
        {
          v33 = 2;
          v34 = 3;
        }

        else if (v28 <= v31 << 6 && llvm::APInt::tcExtractBit(v29, (v28 - 1)))
        {
          v34 = 3;
          v33 = 3;
        }

        else
        {
          v34 = 1;
          v33 = 1;
        }

        llvm::APInt::tcShiftRight(v29, v31, v28);
        if (a3)
        {
          a3 = v34;
        }

        else
        {
          a3 = v33;
        }
      }

      if (v15 >= v28)
      {
        v15 -= v28;
      }

      else
      {
        v15 = 0;
      }

      v14 = *a1;
    }
  }

  if (*(v14 + 16) == 1 && *(v14 + 20) == 1 && *(a1 + 4) == *v14)
  {
    v16 = *(v14 + 8);
    v17 = v8;
    if (v16 - 64 <= 0xFFFFFF7F)
    {
      v17 = *v8;
    }

    if ((v16 + 63) >> 6 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v16 + 63) >> 6;
    }

    if (v18 == 1)
    {
LABEL_26:
      if (v16 >= 2 && (*(v17 + v18 - 1) | (-1 << (v16 + 63 - (v18 << 6)))) == 0xFFFFFFFFFFFFFFFFLL)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v19 = v17;
      v20 = v18 - 1;
      while (1)
      {
        v21 = *v19;
        v19 = (v19 + 8);
        if (v21 != -1)
        {
          break;
        }

        if (!--v20)
        {
          goto LABEL_26;
        }
      }
    }
  }

  if (!a3)
  {
    if (!v15)
    {
      v35 = *(a1 + 20) & 0xF8 | 3;
      *(a1 + 20) = v35;
      if (*(v14 + 20) == 2)
      {
        *(a1 + 20) = v35 & 0xF3;
      }

      if ((*(v14 + 24) & 1) == 0)
      {
        llvm::detail::IEEEFloat::makeSmallestNormalized(a1, 0);
      }
    }

    return 0;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_96;
    }

    if (a3 != 3)
    {
      if (a3 != 2 || (*(a1 + 20) & 7) == 3)
      {
        goto LABEL_96;
      }

      v36 = v8;
      if ((*(v14 + 8) - 64) <= 0xFFFFFF7F)
      {
        v36 = *v8;
      }

      Bit = llvm::APInt::tcExtractBit(v36, 0);
      v14 = *a1;
      if (!Bit)
      {
        goto LABEL_96;
      }
    }
  }

  else if (a2 == 2)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      goto LABEL_96;
    }
  }

  else if (a2 == 3)
  {
    if ((*(a1 + 20) & 8) == 0)
    {
      goto LABEL_96;
    }
  }

  else if ((a3 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_96;
  }

  if (!v15)
  {
    *(a1 + 4) = *(v14 + 4);
  }

  v40 = *(v14 + 8);
  v41 = v8;
  if ((v40 - 64) <= 0xFFFFFF7F)
  {
    v41 = *v8;
  }

  v42 = (v40 + 64) >> 6;
  if (v42 <= 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  llvm::APInt::tcAddPart(v41, 1, v43);
  v44 = *(*a1 + 8);
  v45 = v8;
  if ((v44 - 64) <= 0xFFFFFF7F)
  {
    v45 = *v8;
  }

  v46 = (v44 + 64) >> 6;
  if (v46 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = v46;
  }

  v48 = llvm::APInt::tcMSB(v45, v47);
  v14 = *a1;
  if (v48 != *(*a1 + 8))
  {
    v15 = v48 + 1;
    if (*(v14 + 16) != 1 || *(v14 + 20) != 1 || *(a1 + 4) != *v14 || !llvm::detail::IEEEFloat::isSignificandAllOnes(a1))
    {
LABEL_96:
      if (v15 == *(v14 + 8))
      {
        return 16;
      }

      if (!v15)
      {
        v50 = *(a1 + 20) & 0xF8 | 3;
        *(a1 + 20) = v50;
        if (*(v14 + 20) == 2)
        {
          *(a1 + 20) = v50 & 0xF3;
        }

        if ((*(v14 + 24) & 1) == 0)
        {
          llvm::detail::IEEEFloat::makeSmallestNormalized(a1, 0);
        }
      }

      return 24;
    }

LABEL_35:
    v25 = a1;
    v26 = a2;
LABEL_36:

    return llvm::detail::IEEEFloat::handleOverflow(v25, v26);
  }

  v49 = *(a1 + 4);
  if (v49 == *v14)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v25 = a1;
    goto LABEL_36;
  }

  *(a1 + 4) = v49 + 1;
  if ((v48 - 64) <= 0xFFFFFF7F)
  {
    v8 = *v8;
  }

  v51 = (v48 + 64) >> 6;
  if (v51 <= 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = v51;
  }

  llvm::APInt::tcLSB(v8, v52);
  llvm::APInt::tcShiftRight(v8, v52, 1u);
  return 16;
}

uint64_t *llvm::detail::IEEEFloat::IEEEFloat(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  if (*(a2 + 24) == 1)
  {
    v3 = *a1;
    *(a1 + 20) = *(a1 + 20) & 0xF0 | 3;
    v5 = *(v3 + 4);
    v4 = *(v3 + 8);
    *(a1 + 4) = v5 - 1;
    v6 = (a1 + 1);
    if ((v4 - 64) <= 0xFFFFFF7F)
    {
      v6 = *v6;
    }

    v7 = (v4 + 64) >> 6;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    llvm::APInt::tcSet(v6, 0, v8);
    return a1;
  }

  else
  {
    *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
    v10 = *(*a1 + 8);
    v11 = (a1 + 1);
    v12 = (a1 + 1);
    if ((v10 - 64) <= 0xFFFFFF7F)
    {
      v12 = *v11;
    }

    v13 = (v10 + 64) >> 6;
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    llvm::APInt::tcSet(v12, 0, v14);
    *(a1 + 20) &= ~8u;
    v15 = *(*a1 + 8);
    *(a1 + 4) = *(*a1 + 4);
    if ((v15 - 64) <= 0xFFFFFF7F)
    {
      v11 = *v11;
    }

    llvm::APInt::tcSetBit(v11, (v15 - 1));
    return a1;
  }
}

uint64_t llvm::detail::IEEEFloat::makeSmallestNormalized(llvm::detail::IEEEFloat *this, int a2)
{
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(this + 20) = *(this + 20) & 0xF8 | 2;
  v4 = *(*this + 8);
  v5 = (this + 8);
  v6 = (this + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v5;
  }

  v7 = (v4 + 64) >> 6;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  llvm::APInt::tcSet(v6, 0, v8);
  *(this + 20) = *(this + 20) & 0xF7 | v3;
  v9 = *(*this + 8);
  *(this + 4) = *(*this + 4);
  if ((v9 - 64) <= 0xFFFFFF7F)
  {
    v5 = *v5;
  }

  return llvm::APInt::tcSetBit(v5, (v9 - 1));
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v3 = *a2;
  *this = *a2;
  if ((*(v3 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v4 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
  *(this + 20) = v4;
  v5 = *(a2 + 20);
  v6 = v5 & 7;
  *(this + 20) = v4 & 0xF8 | v5 & 7;
  *(this + 4) = *(a2 + 4);
  v8 = (v5 & 6) != 0 && v6 != 3;
  if (v6 == 1 || v8)
  {
    v10 = (this + 8);
    v11 = *(*this + 8);
    if ((v11 - 64) <= 0xFFFFFF7F)
    {
      v10 = *v10;
    }

    if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
    {
      v12 = (a2 + 8);
    }

    else
    {
      v12 = *(a2 + 1);
    }

    v13 = (v11 + 64) >> 6;
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    llvm::APInt::tcAssign(v10, v12, v14);
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t result, uint64_t a2)
{
  *result = &unk_1002B0130;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v2 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
  *(result + 20) = v2;
  *(result + 20) = v2 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &unk_1002B0130;
  return result;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(unint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(*a1 + 8);
  v9 = 2 * v8;
  v10 = 2 * v8 + 64;
  if (v10 >> 6 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 >> 6;
  }

  v12 = v9 + 64;
  if (v10 >= 0x140)
  {
    operator new[]();
  }

  v13 = a1 + 1;
  if (v8 - 64 <= 0xFFFFFF7F)
  {
    v13 = a1[1];
  }

  v53 = a1 + 1;
  v14 = (*(*a1 + 8) + 64) >> 6;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v16 = (a2 + 8);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v55 = v13;
  v54 = v15;
  llvm::APInt::tcFullMultiply(v62, v13, v16, v15, v15);
  v17 = v11;
  v18 = llvm::APInt::tcMSB(v62, v11);
  v19 = v18 + 1;
  v20 = *(a2 + 16) + *(a1 + 4) + 2;
  *(a1 + 4) = v20;
  if ((a4 & 1) != 0 || (*(a3 + 20) & 7) == 3)
  {
    v21 = 0;
    v22 = v9 + 64;
    *(a1 + 4) = v20 + ~v8;
    v23 = v19 - v8;
    if (v19 > v8)
    {
      goto LABEL_17;
    }

LABEL_58:
    llvm::APInt::tcAssign(v55, v62, v54);
    if (v22 >= 0x140)
    {
      goto LABEL_70;
    }

    return v21;
  }

  v29 = *a1;
  v51 = *a1;
  v52 = a1[1];
  if (v9 != v19)
  {
    llvm::APInt::tcShiftLeft(v62, v17, v9 - v19);
    *(a1 + 4) -= v9 - v19;
    v29 = *a1;
  }

  v30 = *v29;
  *&v60[10] = *(v29 + 10);
  *v60 = v30;
  *&v60[8] = (2 * v8) | 1;
  v31 = v62;
  v22 = v9 + 64;
  if (v12 <= 0x7F)
  {
    v31 = v62[0];
  }

  *a1 = v60;
  a1[1] = v31;
  v32 = *a3;
  v56 = v32;
  if ((*(v32 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v33 = *(a3 + 20);
  v34 = v33 & 7;
  v59 = v33 & 0xF;
  v58 = *(a3 + 16);
  v36 = (v33 & 6) != 0 && v34 != 3;
  if (v34 == 1 || v36)
  {
    v37 = *(v32 + 8);
    if ((v37 - 64) >= 0xFFFFFF80)
    {
      v18 = &v57;
    }

    v38 = *(*a3 + 8) - 64;
    v41 = *(a3 + 8);
    v40 = (a3 + 8);
    v39 = v41;
    if (v38 >= 0xFFFFFF80)
    {
      v42 = v40;
    }

    else
    {
      v42 = v39;
    }

    v43 = (v37 + 64) >> 6;
    if (v43 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    llvm::APInt::tcAssign(v18, v42, v44);
  }

  llvm::detail::IEEEFloat::convert(&v56, v60, 0, &v61);
  ++v58;
  v45 = *(v56 + 8);
  if ((v45 - 64) >= 0xFFFFFF80)
  {
    v46 = &v57;
  }

  else
  {
    v46 = v57;
  }

  v47 = (v45 + 64) >> 6;
  if (v47 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = v47;
  }

  llvm::APInt::tcLSB(v46, v48);
  llvm::APInt::tcShiftRight(v46, v48, 1u);
  v21 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v56, 0);
  if (v12 <= 0x7F)
  {
    v62[0] = *v53;
  }

  *a1 = v51;
  a1[1] = v52;
  v19 = llvm::APInt::tcMSB(v62, v17) + 1;
  if ((*(v56 + 8) - 64) <= 0xFFFFFF7F && v57)
  {
    operator delete[]();
  }

  *(a1 + 4) += ~v8;
  v23 = v19 - v8;
  if (v19 <= v8)
  {
    goto LABEL_58;
  }

LABEL_17:
  v24 = (v19 + 63) >> 6;
  if (v24 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  v26 = llvm::APInt::tcLSB(v62, v25);
  if (v26 >= v23)
  {
    llvm::APInt::tcShiftRight(v62, v25, v23);
    v21 = v21 != 0;
    v49 = v55;
  }

  else
  {
    if (v26 + 1 == v23)
    {
      v27 = 2;
      v28 = 3;
    }

    else if (v23 <= v25 << 6 && llvm::APInt::tcExtractBit(v62, (v23 - 1)))
    {
      v28 = 3;
      v27 = 3;
    }

    else
    {
      v28 = 1;
      v27 = 1;
    }

    llvm::APInt::tcShiftRight(v62, v25, v23);
    if (v21)
    {
      v21 = v28;
    }

    else
    {
      v21 = v27;
    }

    v49 = v55;
  }

  *(a1 + 4) += v23;
  llvm::APInt::tcAssign(v49, v62, v54);
  if (v22 >= 0x140)
  {
LABEL_70:
    operator delete[]();
  }

  return v21;
}

uint64_t llvm::detail::IEEEFloat::convert(uint64_t *a1, uint64_t a2, int a3, _BYTE *a4)
{
  v8 = *a1;
  if ((*(a1 + 20) & 7) == 1 && (*(v8 + 16) - 1) >= 2)
  {
    v10 = *(v8 + 8);
    v11 = (a1 + 1);
    if ((v10 - 64) <= 0xFFFFFF7F)
    {
      v11 = *v11;
    }

    v63 = llvm::APInt::tcExtractBit(v11, (v10 - 2)) == 0;
    v9 = *a1;
  }

  else
  {
    v63 = 0;
    v9 = *a1;
  }

  v64 = 0;
  v12 = *(a2 + 8);
  v13 = v12 + 64;
  v14 = (v12 + 64) >> 6;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = (v12 + 64) >> 6;
  }

  v66 = v15;
  v16 = *(v9 + 8);
  v17 = v16 + 64;
  v18 = (v16 + 64) >> 6;
  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  v20 = v12 - *(v8 + 8);
  if (a2 == &unk_1002B0114 || v8 != &unk_1002B0114)
  {
LABEL_22:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_25;
  }

  if ((*(a1 + 20) & 7) != 1)
  {
    goto LABEL_24;
  }

  if ((v16 - 64) > 0xFFFFFF7F)
  {
    v21 = a1[1];
    if (v21 < 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    v64 = 1;
    goto LABEL_22;
  }

  v21 = *a1[1];
  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_20:
  if ((v21 & 0x4000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v64 = 0;
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_25:
  if ((*(a1 + 20) & 6) != 0 && (*(a1 + 20) & 7) != 3)
  {
    v22 = (a1 + 1);
    if ((v16 - 64) <= 0xFFFFFF7F)
    {
      v22 = *v22;
    }

    v23 = llvm::APInt::tcMSB(v22, v19);
    v24 = v23 + 1 - *(v8 + 8);
    v25 = *(a1 + 4);
    v26 = *(a2 + 4);
    if ((v25 + v24) < v26)
    {
      v24 = v26 - v25;
    }

    if ((v24 & 0x80000000) != 0)
    {
      if (v24 <= v20)
      {
        v28 = v20;
      }

      else
      {
        v28 = v24;
      }

      v20 -= v28;
      *(a1 + 4) = v28 + v25;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (v23 + 1 <= -v20)
    {
      v27 = v23 + v20;
      v20 = -v23;
      *(a1 + 4) = v27 + v25;
      if ((-v23 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  v29 = *(a1 + 20) & 7;
  if ((*(a1 + 20) & 6) != 0 && v29 != 3)
  {
    v30 = *a1;
    goto LABEL_42;
  }

  if (v29 != 1 || (v30 = *a1, *(*a1 + 16) == 1))
  {
LABEL_49:
    v65 = 0;
    if (v14 <= v19)
    {
      goto LABEL_57;
    }

LABEL_50:
    operator new[]();
  }

LABEL_42:
  v62 = a4;
  v31 = (a1 + 1);
  v61 = a3;
  if ((*(v30 + 8) - 64) <= 0xFFFFFF7F)
  {
    v31 = *v31;
  }

  v32 = -v20;
  v33 = llvm::APInt::tcLSB(v31, v19);
  v65 = 0;
  if (v33 < -v20)
  {
    if (v33 + 1 == v32)
    {
      v34 = 2;
    }

    else if (v32 <= v19 << 6 && llvm::APInt::tcExtractBit(v31, ~v20))
    {
      v34 = 3;
    }

    else
    {
      v34 = 1;
    }

    v65 = v34;
  }

  llvm::APInt::tcShiftRight(v31, v19, -v20);
  a4 = v62;
  a3 = v61;
  if (v14 > v19)
  {
    goto LABEL_50;
  }

LABEL_57:
  if (v13 > 0x7F || v17 < 0x80)
  {
    goto LABEL_75;
  }

  v35 = *(a1 + 20) & 7;
  v37 = (*(a1 + 20) & 6) != 0 && v35 != 3;
  v38 = *(*a1 + 8) - 64;
  if (v35 == 1 || v37)
  {
    v40 = a1 + 1;
    if (v38 <= 0xFFFFFF7F)
    {
      v40 = *v40;
    }

    v39 = *v40;
    if (v38 > 0xFFFFFF7F)
    {
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  v39 = 0;
  if (v38 <= 0xFFFFFF7F)
  {
LABEL_72:
    if (a1[1])
    {
      operator delete[]();
    }
  }

LABEL_74:
  a1[1] = v39;
LABEL_75:
  *a1 = a2;
  v41 = *(a1 + 20);
  if (v20 >= 1)
  {
    v42 = v41 & 7;
    v43 = (v41 & 6) == 0 || v42 == 3;
    v44 = !v43;
    if (v42 == 1 || v44)
    {
      v45 = (a1 + 1);
      if ((*(a2 + 8) - 64) <= 0xFFFFFF7F)
      {
        v45 = *v45;
      }

      llvm::APInt::tcShiftLeft(v45, v66, v20);
      v41 = *(a1 + 20);
    }
  }

  v46 = v41 & 7;
  if ((v41 & 6) != 0 && v46 != 3)
  {
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v65);
    *a4 = result != 0;
    goto LABEL_103;
  }

  if ((v41 & 7) == 0)
  {
    if (*(*a1 + 16) == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v41 >> 3) & 1, 0);
      *a4 = 1;
      result = 16;
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  if (v46 == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      v48 = (*(v8 + 20) != 2) & (v41 >> 3);
      *a4 = v48;
      if (v48)
      {
        result = 16;
      }

      else
      {
        result = 0;
      }

      *(a1 + 20) &= ~8u;
      goto LABEL_103;
    }

LABEL_102:
    result = 0;
    *a4 = 0;
    goto LABEL_103;
  }

  if (v46 != 1)
  {
    goto LABEL_102;
  }

  if (*(*a1 + 16) == 1)
  {
    *a4 = *(v8 + 16) != 1;
    llvm::detail::IEEEFloat::makeNaN(a1, 0, (*(a1 + 20) >> 3) & 1, 0);
    return v63;
  }

  if (*(v8 + 20) == 2 && *(*a1 + 20) != 2)
  {
    llvm::detail::IEEEFloat::makeNaN(a1, 0, 0, 0);
  }

  if (v65)
  {
    v58 = 1;
  }

  else
  {
    v58 = v64;
  }

  *a4 = v58;
  if ((v64 & 1) == 0 && *a1 == &unk_1002B0114)
  {
    llvm::APInt::tcSetBit(a1[1], 0x3F);
  }

  if (v63)
  {
    if (*(*a1 + 16) == 1)
    {
      result = 1;
    }

    else
    {
      v59 = *(*a1 + 8);
      v60 = a1 + 1;
      if ((v59 - 64) <= 0xFFFFFF7F)
      {
        v60 = *v60;
      }

      llvm::APInt::tcSetBit(v60, (v59 - 2));
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

LABEL_103:
  v49 = *(a1 + 20);
  if ((v49 & 7) == 3)
  {
    v50 = *a1;
    if ((*(*a1 + 24) & 1) == 0)
    {
      v51 = result;
      *(a1 + 20) = v49 & 0xFA;
      v52 = *(v50 + 8);
      v53 = (a1 + 1);
      v54 = (a1 + 1);
      if ((v52 - 64) <= 0xFFFFFF7F)
      {
        v54 = *v53;
      }

      v55 = (v52 + 64) >> 6;
      if (v55 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v55;
      }

      llvm::APInt::tcSet(v54, 0, v56);
      *(a1 + 20) &= ~8u;
      v57 = *(*a1 + 8);
      *(a1 + 4) = *(*a1 + 4);
      if ((v57 - 64) <= 0xFFFFFF7F)
      {
        v53 = *v53;
      }

      llvm::APInt::tcSetBit(v53, (v57 - 1));
      return v51;
    }
  }

  return result;
}