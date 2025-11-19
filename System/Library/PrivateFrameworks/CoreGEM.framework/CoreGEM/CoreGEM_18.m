char *sub_24545CF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 873);
  v7 = v6;
  if ((*(a1 + 824) & 0x40) != 0)
  {
    v7 = 7;
    if (v6 != 7)
    {
      *(*(a1 + 864))++ &= 510 << v6;
      *(a1 + 873) = 7;
    }
  }

  v8 = *(a1 + 864) - *(a1 + 856);
  sub_245456040(a1, 1uLL);
  sub_245457960(a1, a2, a3);
  v9 = *(a1 + 864);
  v10 = v9 - *(a1 + 856);
  v11 = *(a1 + 873);
  v12 = v11 >= v7;
  v13 = v11 - v7;
  if (v12)
  {
    v15 = v10 + ~v8;
    if (!v15)
    {
      goto LABEL_12;
    }

    result = sub_245455ACC(a1, 0, v13);
  }

  else
  {
    result = sub_245455ACC(a1, 0, (v13 + 8));
    v15 = v10 - v8;
    if (!v15)
    {
      v9 = *(a1 + 864);
LABEL_12:
      *(a1 + 864) = v9 - 1;

      return sub_245455ACC(a1, 0x100uLL, 0x10u);
    }
  }

  if (v15 > 0x7F)
  {
    if (*(a1 + 873) == 7)
    {

      return sub_245456364(a1, v15);
    }

    else
    {

      return sub_2454569B4(a1, v15);
    }
  }

  else
  {
    v16 = (*(a1 + 856) + v8);
    v17 = *(a1 + 873);
    if (v17 == 7)
    {
      *v16 = v15;
    }

    else
    {
      *v16 |= v15 >> (7 - v17);
      v16[1] |= v15 << (*(a1 + 873) + 1);
    }
  }

  return result;
}

unint64_t sub_24545D174(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  *a2 = *(a1 + 864);
  *(a2 + 8) = *(a1 + 873);
  *(a2 + 9) = 0;
  *(a2 + 16) = a3 + 1;
  sub_245456168(a1, a3 >> 3);

  return sub_245455C80(a1, v3 & 7);
}

uint64_t sub_24545D1D8(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 824) & 0x40) != 0)
  {
    v4 = *(a1 + 873);
    if (v4 != 7)
    {
      *(*(a1 + 864))++ &= 510 << v4;
      *(a1 + 873) = 7;
    }
  }

  *a2 = 0;
  do
  {
    v5 = sub_245455F90(a1);
    if ((v5 + 63) >= 4u)
    {
      v7 = v5;
      if ((v5 & 0xC0) == 0x80)
      {
        v8 = sub_245455F90(a1);
        v6 = v8 & 0xFFFFC0FF | ((v7 & 0x3F) << 8);
        if (!*a2)
        {
          *a2 = *(a1 + 864);
          *(a2 + 8) = *(a1 + 873);
          *(a2 + 16) = v6;
        }

        sub_245455C80(a1, v8 & 7);
      }

      else if ((v5 & 0x80) != 0)
      {
        sub_24546A59C(a1, 26);
        v6 = 0;
      }

      else
      {
        if (!*a2)
        {
          *a2 = *(a1 + 864);
          *(a2 + 8) = *(a1 + 873);
          *(a2 + 16) = v5;
        }

        sub_245455C80(a1, v5 & 7);
        v6 = v7 >> 3;
      }
    }

    else
    {
      v6 = ((v5 + 63) << 11) + 2048;
    }

    if (!*a2)
    {
      *a2 = *(a1 + 864);
      *(a2 + 8) = *(a1 + 873);
      *(a2 + 9) = 1;
      *(a2 + 16) = 8 * v6;
    }

    result = sub_245456168(a1, v6);
  }

  while (v6 > 0x7FF);
  return result;
}

uint64_t sub_24545D354(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = a2[6];
  if (v8)
  {
    v9 = a2[2];
    v10 = *(result + 712);
    while (v10 < 0x40)
    {
      v11 = *(*(a2[1] + 24) + 24 * v9[2] + 8);
      *(v7 + 200 + 8 * v10) = v9;
      *(v7 + 712) = v10 + 1;
      v12 = *v9;
      v9 += 4;
      result = sub_24545909C(v7, v12, a3 + v11, a4);
      v10 = *(v7 + 712) - 1;
      *(v7 + 712) = v10;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

LABEL_10:
    sub_24546A610(v7, 15);
  }

LABEL_5:
  v13 = a2[8];
  if (v13)
  {
    v14 = a2[4];
    v15 = *(v7 + 712);
    while (v15 < 0x40)
    {
      v16 = *(*(a2[1] + 24) + 24 * v14[2] + 8);
      *(v7 + 200 + 8 * v15) = v14;
      *(v7 + 712) = v15 + 1;
      v17 = *v14;
      v14 += 4;
      result = sub_24545909C(v7, v17, a3 + v16, a4);
      v15 = *(v7 + 712) - 1;
      *(v7 + 712) = v15;
      if (!--v13)
      {
        return result;
      }
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_24545D494(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[7];
  v6 = 1;
  if (!v5)
  {
    return v6;
  }

  v7 = a5;
  v70 = 0;
  v12 = 0;
  v13 = a3[3];
  v72 = a1 + 200;
  do
  {
    v14 = *(v13 + 8);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        v15 = sub_24545E088(a1, a2);
        v16 = *(a3[1] + 24);
        v17 = v13[2];
        if (v15)
        {
          v18 = v16 + 24 * v17;
          v19 = *(v18 + 8);
          *(a4 + **(v18 + 16)) = 1;
          v20 = *(a1 + 712);
          if (v20 >= 0x40)
          {
            goto LABEL_116;
          }

          *(v72 + 8 * v20) = v13;
          *(a1 + 712) = v20 + 1;
          sub_24545E1FC(a1, *v13, a4 + v19, v7);
          --*(a1 + 712);
        }

        else
        {
          *(a4 + **(v16 + 24 * v17 + 16)) = 0;
          ++v70;
        }

        goto LABEL_41;
      }

      v21 = sub_24545E088(a1, a2);
      v22 = *(a3[1] + 24);
      v23 = v13[2];
      if (!v21)
      {
        *(a4 + **(v22 + 24 * v23 + 16)) = 0;
        goto LABEL_41;
      }

      v24 = v22 + 24 * v23;
      v25 = *(v24 + 8);
      *(a4 + **(v24 + 16)) = 1;
      v26 = *(a1 + 712);
      if (v26 >= 0x40)
      {
        goto LABEL_116;
      }

      goto LABEL_24;
    }

    if (v14 == 3)
    {
      v31 = sub_24545E088(a1, a2);
      v32 = a3[1];
      v33 = *(v32 + 24) + 24 * v13[2];
      if (!v31)
      {
        *(a4 + **(v33 + 16)) = 0;
        v38 = (*(v32 + 24) + 24 * v13[2]);
        sub_245454F68((a4 + v38[1]), *(v38[2] + 8), 10, *v38);
        goto LABEL_41;
      }

      v25 = *(v33 + 8);
      *(a4 + **(v33 + 16)) = 1;
      v26 = *(a1 + 712);
      if (v26 >= 0x40)
      {
LABEL_116:
        sub_24546A610(a1, 15);
      }

LABEL_24:
      *(v72 + 8 * v26) = v13;
      *(a1 + 712) = v26 + 1;
      sub_24545E1FC(a1, *v13, a4 + v25, v7);
      --*(a1 + 712);
      goto LABEL_25;
    }

    if (v14 == 4)
    {
      v5 -= v13[2];
      v69 = v12;
      if (!sub_24545E088(a1, a2))
      {
        for (i = v13[2]; i; --i)
        {
          v35 = *(v13 + 40);
          if (v35 > 2)
          {
            if (v35 == 3)
            {
              v36 = a3[1];
              *(a4 + **(*(v36 + 24) + 24 * v13[6] + 16)) = 0;
              v37 = (*(v36 + 24) + 24 * v13[6]);
              sub_245454F68((a4 + v37[1]), *(v37[2] + 8), 10, *v37);
            }

            else if (v35 != 5)
            {
              goto LABEL_116;
            }
          }

          else if (v35 - 1 >= 2)
          {
            if (*(v13 + 40))
            {
              goto LABEL_116;
            }
          }

          else
          {
            *(a4 + **(*(a3[1] + 24) + 24 * v13[6] + 16)) = 0;
          }

          v13 += 4;
        }

        v12 = v69;
        goto LABEL_41;
      }

      v74 = 0;
      v75 = 0;
      v73 = 0;
      v27 = v13[2];
      if (v27)
      {
        v28 = 0;
        v29 = (v13 + 5);
        do
        {
          v30 = *v29;
          v29 += 32;
          if (v30)
          {
            ++v28;
          }

          --v27;
        }

        while (v27);
      }

      else
      {
        v28 = 0;
      }

      if ((*(a1 + 824) & 0x40) != 0)
      {
        v39 = *(a1 + 873);
        if (v39 != 7)
        {
          *(*(a1 + 864))++ &= 510 << v39;
          *(a1 + 873) = 7;
        }
      }

      v40 = sub_245455F90(a1);
      if (v40 >= 0xC1)
      {
        v41 = *(a1 + 864) - 1;
        *(a1 + 864) = v41;
        v42 = *(a1 + 873);
        v66 = v42;
        if (v42 == 7)
        {
          v43 = sub_2454566F8(a1);
          v71 = -1;
        }

        else
        {
          v43 = sub_245456F98(a1);
          v71 = v42;
        }

        v67 = v43;
        v68 = v41 + v43;
        v7 = a5;
        goto LABEL_60;
      }

      if ((v40 & 0xC0) == 0x80)
      {
        v71 = 0;
        v67 = sub_245455F90(a1) & 0xFFFFC0FF | ((v40 & 0x3F) << 8);
        v44 = *(a1 + 864) + v67;
      }

      else
      {
        if ((v40 & 0x80) != 0)
        {
          v66 = v40;
          sub_24546A59C(a1, 26);
          v71 = 0;
          v67 = 0;
          v68 = 0;
          goto LABEL_60;
        }

        v71 = 0;
        v67 = v40;
        v44 = *(a1 + 864) + v40;
      }

      v68 = v44;
      v66 = *(a1 + 873);
LABEL_60:
      if (v28 >> 16)
      {
        sub_24545D1D8(a1, &v73);
      }

      else
      {
        v73 = *(a1 + 864);
        LOWORD(v74) = *(a1 + 873);
        v75 = v28 + 1;
        sub_245456168(a1, v28 >> 3);
        sub_245455C80(a1, v28 & 7);
      }

      v45 = v13[2];
      if (!v45)
      {
LABEL_91:
        v12 = v69;
        if (v71 < 1)
        {
          if ((v71 & 0x80000000) == 0)
          {
            if ((v68 - *(a1 + 864)) >= 2)
            {
              sub_24546A59C(a1, 26);
            }

            v63 = *(a1 + 856);
            if (v68 > v63 || v66 != 7 && v68 == v63)
            {
              sub_24546A59C(a1, 26);
            }

            *(a1 + 864) = v68;
            *(a1 + 873) = v66;
            goto LABEL_25;
          }

          if (*(a1 + 873) <= 6u)
          {
            ++*(a1 + 864);
            *(a1 + 873) = 7;
          }

          sub_245456364(a1, v67);
          if ((v68 - *(a1 + 864)) < 1)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v62 = v71;
          if (*(a1 + 873) < v71)
          {
            ++*(a1 + 864);
            v62 = v71;
          }

          *(a1 + 873) = v62;
          sub_2454569B4(a1, v67);
          if ((v68 - *(a1 + 864)) < 2)
          {
            goto LABEL_25;
          }
        }

        sub_24546A59C(a1, 26);
LABEL_25:
        ++v12;
        goto LABEL_41;
      }

      v46 = v13 + 4;
      while (1)
      {
        v47 = *(v46 + 8);
        if (v47 <= 1)
        {
          break;
        }

        if (v47 == 2)
        {
          v50 = sub_24545E088(a1, &v73);
          v51 = *(a3[1] + 24);
          v52 = v46[2];
          if (v50)
          {
            v53 = v51 + 24 * v52;
            v54 = *(v53 + 8);
            *(a4 + **(v53 + 16)) = 1;
            v55 = *(a1 + 712);
            if (v55 >= 0x40)
            {
              goto LABEL_116;
            }

            goto LABEL_79;
          }

          *(a4 + **(v51 + 24 * v52 + 16)) = 0;
        }

        else
        {
          if (v47 != 3)
          {
            if (v47 == 5)
            {
              sub_24545E088(a1, &v73);
            }

            goto LABEL_84;
          }

          v56 = sub_24545E088(a1, &v73);
          v57 = a3[1];
          v58 = *(v57 + 24) + 24 * v46[2];
          if (v56)
          {
            v54 = *(v58 + 8);
            *(a4 + **(v58 + 16)) = 1;
            v55 = *(a1 + 712);
            if (v55 >= 0x40)
            {
              goto LABEL_116;
            }

LABEL_79:
            *(v72 + 8 * v55) = v46;
            *(a1 + 712) = v55 + 1;
            v59 = *v46;
            v49 = a4 + v54;
LABEL_83:
            sub_24545909C(a1, v59, v49, v7);
            --*(a1 + 712);
            goto LABEL_84;
          }

          *(a4 + **(v58 + 16)) = 0;
          v61 = (*(v57 + 24) + 24 * v46[2]);
          sub_245454F68((a4 + v61[1]), *(v61[2] + 8), 10, *v61);
        }

LABEL_84:
        if (!v75 && BYTE1(v74) == 1)
        {
          sub_24545E0F8(&v73);
        }

        v46 += 4;
        if (!--v45)
        {
          v13 = v46 - 4;
          goto LABEL_91;
        }
      }

      if (*(v46 + 8))
      {
        if (v47 != 1)
        {
          goto LABEL_84;
        }

        sub_24545E088(a1, &v73);
        v48 = *(a3[1] + 24) + 24 * v46[2];
        v49 = a4 + *(v48 + 8);
        if (*(v46 + 8) == 1)
        {
          *(a4 + **(v48 + 16)) = 1;
        }
      }

      else
      {
        v49 = a4 + *(*(a3[1] + 24) + 24 * v46[2] + 8);
      }

      v60 = *(a1 + 712);
      if (v60 >= 0x40)
      {
        goto LABEL_116;
      }

      *(v72 + 8 * v60) = v46;
      *(a1 + 712) = v60 + 1;
      v59 = *v46;
      goto LABEL_83;
    }

    if (v14 != 5)
    {
      goto LABEL_116;
    }

    sub_24545E088(a1, a2);
LABEL_41:
    --v5;
    if (!*(a2 + 16))
    {
      if (*(a2 + 9) != 1)
      {
        break;
      }

      sub_24545E0F8(a2);
    }

    v13 += 4;
  }

  while (v5);
  if (v70 && v12)
  {
    sub_24546A59C(a1, 33);
  }

  if (!v5)
  {
    return 1;
  }

  sub_24545DD74(a1, a3, v5, a4);
  return 0;
}

uint64_t sub_24545DCFC(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    goto LABEL_4;
  }

LABEL_2:
  if (*(a2 + 9) == 1)
  {
    result = sub_24545E0F8(a2);
  }

LABEL_4:
  while (*(a2 + 16) || *(a2 + 9) == 1)
  {
    result = sub_24545E088(v3, a2);
    if (result)
    {
      result = sub_24545E478(v3);
    }

    if (!*(a2 + 16))
    {
      goto LABEL_2;
    }
  }

  return result;
}

_BYTE **sub_24545DD74(_BYTE **result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = result;
  v8 = (a2[3] - 32 * a3 + 32 * a2[7] + 16);
  do
  {
    v9 = *(v8 - 8);
    if (v9 > 5)
    {
      sub_24546A610(v7, 15);
    }

    v10 = 1 << v9;
    if ((v10 & 0x31) == 0)
    {
      if ((v10 & 6) != 0)
      {
        *(a4 + **(*(a2[1] + 24) + 24 * *v8 + 16)) = 0;
      }

      else
      {
        v11 = a2[1];
        *(a4 + **(*(v11 + 24) + 24 * *v8 + 16)) = 0;
        v12 = (*(v11 + 24) + 24 * *v8);
        result = sub_245454F68((a4 + v12[1]), *(v12[2] + 8), 10, *v12);
      }
    }

    v8 += 4;
    --v5;
  }

  while (v5);
  return result;
}

void sub_24545DE88(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 200;
  do
  {
    v5 = a2[1];
    if (!v5)
    {
      return;
    }

    v6 = 0;
    v7 = a2[1];
    do
    {
      v8 = *a2;
      v9 = *(v7 + 2);
      do
      {
        v9 = *(v9 + 2);
      }

      while (*v9 == 128);
      if (!v8)
      {
        goto LABEL_22;
      }

      while (v9 != *v8)
      {
LABEL_10:
        v8 = *(v8 + 16);
        if (!v8)
        {
          goto LABEL_22;
        }
      }

      v22 = 0;
      v10 = sub_24545E94C(a1, *(v7 + 2), *(v8 + 8), &v22);
      if (!v10)
      {
        sub_24546A59C(a1, 39);
        goto LABEL_10;
      }

      v11 = *(a1 + 864);
      v12 = *(a1 + 873);
      *(a1 + 864) = *v7;
      *(a1 + 873) = *(v7 + 8);
      v13 = *(v7 + 3);
      v14 = *(*(v7 + 2) + 8);
      v15 = *(v14 + 48);
      v16 = v10[2];
      if (v15 > 3)
      {
        if (v15 != 8)
        {
          goto LABEL_18;
        }

        *v13 = v16;
      }

      else if (v15 == 1)
      {
        *v13 = v16;
      }

      else
      {
        if (v15 == 2)
        {
          *v13 = v16;
          goto LABEL_20;
        }

LABEL_18:
        *v13 = v16;
      }

LABEL_20:
      v17 = *(a1 + 712);
      if (v17 >= 0x40)
      {
        sub_24546A610(a1, 15);
      }

      v18 = *(v7 + 3);
      v19 = *(v14 + 40);
      *(v4 + 8 * v17) = v10;
      *(a1 + 712) = v17 + 1;
      sub_24545E1FC(a1, *v10, v18 + v19, 0);
      --*(a1 + 712);
      *(a1 + 864) = v11;
      *(a1 + 873) = v12;
      *v7 = 0;
LABEL_22:
      if (*v7)
      {
        v20 = *(v7 + 4);
        v5 = v7;
      }

      else
      {
        v21 = *(v7 + 4);
        if (v7 == a2[1])
        {
          a2[1] = v21;
          sub_24545FFB8(a1, v7, 40);
          v20 = a2[1];
          v6 = 1;
          v5 = v20;
        }

        else
        {
          v5[4] = v21;
          sub_24545FFB8(a1, v7, 40);
          v20 = v5[4];
          v6 = 1;
        }
      }

      v7 = v20;
    }

    while (v20);
  }

  while (v6);
}

uint64_t sub_24545E088(uint64_t a1, unsigned __int8 **a2)
{
  if (!a2[2])
  {
    sub_24546A59C(a1, 40);
  }

  v3 = **a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    ++*a2;
    v5 = 7;
  }

  *(a2 + 8) = v5;
  --a2[2];
  return (v3 >> v4) & 1;
}

unsigned __int8 **sub_24545E0F8(unsigned __int8 **result)
{
  v1 = *(result + 8);
  if (v1 == 7)
  {
    v2 = *result + 1;
    LOBYTE(v3) = **result;
    *result = v2;
  }

  else
  {
    v4 = **result << (7 - v1);
    v2 = *result + 1;
    *result = v2;
    v3 = (*v2 >> (v1 + 1)) | v4;
  }

  if (v3 > 0xC2u)
  {
    if (v3 == 195)
    {
      v5 = 49152;
      goto LABEL_16;
    }

    if (v3 == 196)
    {
      v5 = 0x10000;
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 193)
    {
      v5 = 0x4000;
      goto LABEL_16;
    }

    if (v3 == 194)
    {
      v5 = 0x8000;
LABEL_16:
      result[2] = v5;
      return result;
    }
  }

  if ((v3 & 0xC0) == 0x80)
  {
    v6 = (v3 & 0x3F) << 8;
    result[2] = v6;
    if (v1 == 7)
    {
      LOBYTE(v7) = *v2;
      *result = v2 + 1;
    }

    else
    {
      v9 = *v2 << (7 - v1);
      *result = v2 + 1;
      v7 = (v2[1] >> (v1 + 1)) | v9;
    }

    v8 = (v7 | v6);
  }

  else
  {
    v8 = (v3 & 0x7F);
  }

  result[2] = v8;
  *(result + 9) = 0;
  return result;
}

uint64_t sub_24545E1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 824) & 0x40) != 0)
  {
    v8 = *(a1 + 873);
    if (v8 != 7)
    {
      *(*(a1 + 864))++ &= 510 << v8;
      *(a1 + 873) = 7;
    }
  }

  v9 = sub_245455F90(a1);
  if (v9 >= 0xC1)
  {
    --*(a1 + 864);
    v10 = *(a1 + 873);
    if (v10 == 7)
    {
      v11 = sub_2454566F8(a1);
      if (*(a1 + 864) + v11 > *(a1 + 856))
      {
        sub_24546A59C(a1, 43);
      }

      sub_24545909C(a1, a2, a3, a4);
      if (*(a1 + 873) <= 6u)
      {
        ++*(a1 + 864);
        *(a1 + 873) = 7;
      }

      return sub_245456364(a1, v11);
    }

    else
    {
      v14 = sub_245456F98(a1);
      if (*(a1 + 864) + v14 > *(a1 + 856))
      {
        sub_24546A59C(a1, 43);
      }

      sub_24545909C(a1, a2, a3, a4);
      if (*(a1 + 873) < v10)
      {
        ++*(a1 + 864);
      }

      *(a1 + 873) = v10;

      return sub_2454569B4(a1, v14);
    }
  }

  if ((v9 & 0xC0) == 0x80)
  {
    v13 = *(a1 + 864) + (sub_245455F90(a1) & 0xFFFFC0FF | ((v9 & 0x3F) << 8));
LABEL_24:
    v15 = *(a1 + 873);
    if (v13 > *(a1 + 856))
    {
      sub_24546A59C(a1, 43);
    }

    result = sub_24545909C(a1, a2, a3, a4);
    if ((v13 - *(a1 + 864)) >= 2)
    {
      result = sub_24546A59C(a1, 26);
    }

    *(a1 + 864) = v13;
    *(a1 + 873) = v15;
    return result;
  }

  if ((v9 & 0x80) == 0)
  {
    v13 = *(a1 + 864) + v9;
    goto LABEL_24;
  }

  return sub_24546A59C(a1, 26);
}

uint64_t sub_24545E478(uint64_t a1)
{
  while (1)
  {
    if ((*(a1 + 824) & 0x40) != 0)
    {
      v2 = *(a1 + 873);
      if (v2 != 7)
      {
        *(*(a1 + 864))++ &= 510 << v2;
        *(a1 + 873) = 7;
      }
    }

    v3 = sub_245455F90(a1);
    if ((v3 + 63) >= 4u)
    {
      break;
    }

    sub_245456168(a1, ((v3 + 63) << 14) + 0x4000);
  }

  if ((v3 & 0xC0) == 0x80)
  {
    v4 = sub_245455F90(a1) & 0xFFFFC0FF | ((v3 & 0x3F) << 8);
  }

  else if (v3 < 0)
  {
    sub_24546A59C(a1, 26);
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return sub_245456168(a1, v4);
}

uint64_t sub_24545E56C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = v5 + a2;
  if (v5 < v5 + a2)
  {
    v7 = result;
    while (1)
    {
      v8 = *(a3 + 32);
      v9 = *(v8 + 8);
      if (*v9 != 182)
      {
        break;
      }

      if (*a3)
      {
        v12 = (*a3 + *(v9 + 40) + *(*(v9 + 24) + 8) * v5);
LABEL_13:
        result = sub_245457960(v7, *(v8 + 16), v12);
        v5 = *(a3 + 24);
      }

LABEL_14:
      *(a3 + 24) = ++v5;
      if (v5 >= v6)
      {
        goto LABEL_15;
      }
    }

    if (*v9 != 181)
    {
      sub_24546A610(v7, 15);
    }

    v10 = **a3;
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v5 + 1;
    while (--v11)
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    v12 = v10 + *(v9 + 40);
    goto LABEL_13;
  }

LABEL_15:
  *(a3 + 8) -= a2;
  return result;
}

void sub_24545E664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = v5 + a2;
  v7 = *(a3 + 40);
  if (v7)
  {
    v33 = 0;
    v32 = *v7;
    if (v5 < v6)
    {
      do
      {
        v8 = *(a3 + 32);
        v9 = *(v8 + 8);
        if (*v9 == 181)
        {
          v12 = *(a1 + 944);
          if (v12 && (v13 = *v12) != 0 && (v14 = v13[1]) != 0)
          {
            v15 = v14(*v13, *(v9 + 32));
          }

          else
          {
            v15 = malloc_type_calloc(1uLL, *(v9 + 32), 0xD02B3E5BuLL);
            bzero(v15, *(v9 + 32));
          }

          *v15 = 0;
          v16 = *a3;
          if (**a3)
          {
            *v16[1] = v15;
            ++*(v16 + 4);
          }

          else
          {
            *v16 = v15;
            *(v16 + 4) = 1;
          }

          v16[1] = v15;
          v11 = v15 + *(v9 + 40);
          *(v16 + 5) = 8;
          v8 = *(a3 + 32);
        }

        else
        {
          if (*v9 != 182)
          {
            goto LABEL_39;
          }

          v10 = *a3;
          *v10 = **a3 + 1;
          v11 = v10 + *(v9 + 40) + *(*(v9 + 24) + 8) * v5;
        }

        sub_24545909C(a1, *(v8 + 16), v11, &v32);
        while (1)
        {
          v17 = v32;
          v18 = *(a3 + 40);
          if (v32 == *v18)
          {
            break;
          }

          v32 = *(v32 + 2);
          sub_24545FFB8(a1, v17, 24);
        }

        v5 = *(a3 + 24) + 1;
        *(a3 + 24) = v5;
      }

      while (v5 < v6);
      if (v33)
      {
        v21 = *(v18 + 8);
        v19 = (v18 + 8);
        v20 = v21;
        if (v21)
        {
          do
          {
            v22 = v20;
            v20 = *(v20 + 32);
          }

          while (v20);
          v19 = (v22 + 32);
        }

        *v19 = v33;
      }
    }
  }

  else
  {
    for (; v5 < v6; *(a3 + 24) = v5)
    {
      v23 = *(a3 + 32);
      v24 = *(v23 + 8);
      if (*v24 == 181)
      {
        v27 = *(a1 + 944);
        if (v27 && (v28 = *v27) != 0 && (v29 = v28[1]) != 0)
        {
          v30 = v29(*v28, *(v24 + 32));
        }

        else
        {
          v30 = malloc_type_calloc(1uLL, *(v24 + 32), 0x43167DC4uLL);
          bzero(v30, *(v24 + 32));
        }

        *v30 = 0;
        v31 = *a3;
        if (**a3)
        {
          *v31[1] = v30;
          ++*(v31 + 4);
        }

        else
        {
          *v31 = v30;
          *(v31 + 4) = 1;
        }

        v31[1] = v30;
        v26 = v30 + *(v24 + 40);
        *(v31 + 5) = 8;
        v23 = *(a3 + 32);
      }

      else
      {
        if (*v24 != 182)
        {
LABEL_39:
          sub_24546A610(a1, 15);
        }

        v25 = *a3;
        *v25 = **a3 + 1;
        v26 = v25 + *(v24 + 40) + *(*(v24 + 24) + 8) * v5;
      }

      sub_24545909C(a1, *(v23 + 16), v26, 0);
      v5 = *(a3 + 24) + 1;
    }
  }
}

uint64_t sub_24545E94C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4)
{
  v4 = a4;
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = v8;
  v10 = a2;
  do
  {
    do
    {
      v10 = *(v10 + 2);
      v11 = *v10;
    }

    while (v11 == 96);
  }

  while (v11 == 128 || v11 == 160);
  switch(v11 & 0x1F)
  {
    case 1:
      if (!v8)
      {
        goto LABEL_79;
      }

      while (*(v7 + 8) != *a3)
      {
        v7 += 24;
        if (!--v9)
        {
          goto LABEL_79;
        }
      }

      goto LABEL_90;
    case 2:
      v41 = *(*(v10 + 1) + 8);
      switch(v41)
      {
        case 4:
          goto LABEL_84;
        case 2:
          v42 = *a3;
          if (!v8)
          {
            goto LABEL_79;
          }

          break;
        case 1:
          v42 = *a3;
          if (!v8)
          {
            goto LABEL_79;
          }

          break;
        default:
LABEL_84:
          v42 = *a3;
          if (!v8)
          {
            goto LABEL_79;
          }

          break;
      }

      while (**(v7 + 8) != v42)
      {
        v7 += 24;
        if (!--v9)
        {
          goto LABEL_79;
        }
      }

      goto LABEL_90;
    case 3:
      if (!v8)
      {
        goto LABEL_79;
      }

      v34 = *(a3 + 1);
      v35 = *a3;
      while (2)
      {
        v36 = *(v7 + 8);
        v37 = strlen(v36);
        if (v37 == 2048)
        {
          goto LABEL_91;
        }

        if (v37 != v35)
        {
          goto LABEL_54;
        }

        if (v35)
        {
          v38 = sub_24545FF18(a1, v35);
          memcpy(v38, v36, v35);
          for (i = 0; i != v35; ++i)
          {
            *(v38 + i) -= 48;
          }

          v40 = memcmp(v38, v34, v35);
          sub_24545FFB8(a1, v38, v35);
          if (v40)
          {
LABEL_54:
            v7 += 24;
            if (!--v9)
            {
              goto LABEL_79;
            }

            continue;
          }
        }

        goto LABEL_90;
      }

    case 4:
      if (!v8)
      {
        goto LABEL_79;
      }

      __s2 = *(a3 + 1);
      v19 = *a3;
      while (2)
      {
        v20 = *(v7 + 8);
        v21 = strlen(v20) + 1;
        if (v21 >> 1 == 2048)
        {
          goto LABEL_91;
        }

        if (v21 >> 1 != v19)
        {
          goto LABEL_40;
        }

        if (v21 >= 2)
        {
          v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
          if ((v21 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v23 = sub_24545FF18(a1, v19);
            v24 = 0;
            v25 = v23;
            do
            {
              v26 = v20[v24];
              if (v26 >= 0x41)
              {
                v27 = 9;
              }

              else
              {
                v27 = 0;
              }

              v28 = v27 + v26;
              *v25 = 16 * v28;
              v29 = v20[v24 + 1];
              if (v29 >= 0x41)
              {
                v30 = -55;
              }

              else
              {
                v30 = -48;
              }

              *v25++ = (v30 + v29) | (16 * v28);
              v24 += 2;
            }

            while (v24 < v22);
          }

          else
          {
            v23 = 0;
          }

          v31 = memcmp(v23, __s2, v19);
          sub_24545FFB8(a1, v23, v19);
          v4 = a4;
          if (v31)
          {
LABEL_40:
            v7 += 24;
            if (!--v9)
            {
              goto LABEL_79;
            }

            continue;
          }
        }

        goto LABEL_90;
      }

    case 5:
      goto LABEL_82;
    case 6:
      if (!v8)
      {
        goto LABEL_79;
      }

      while (1)
      {
        v16 = (*(v7 + 8))(a1);
        v17 = sub_24545EE8C(v16, a3);
        sub_24545EF04(a1, v10, v16);
        if (v17)
        {
          goto LABEL_90;
        }

        v7 += 24;
        if (!--v9)
        {
          goto LABEL_79;
        }
      }

    case 0xA:
      if (!v8)
      {
        goto LABEL_79;
      }

      while (*(v7 + 8) != *a3)
      {
        v7 += 24;
        if (!--v9)
        {
          goto LABEL_79;
        }
      }

      goto LABEL_90;
    case 0x12:
      v12 = *a3;
      v43 = strlen(*a3);
      if (!v43)
      {
        goto LABEL_94;
      }

      v14 = v43 - 1;
      if (v43 == 2049)
      {
        goto LABEL_91;
      }

      goto LABEL_73;
    case 0x13:
      v12 = *a3;
      v45 = strlen(*a3);
      if (!v45)
      {
        goto LABEL_94;
      }

      v14 = v45 - 1;
      if (v45 != 2049)
      {
        goto LABEL_73;
      }

      goto LABEL_91;
    case 0x16:
      v12 = *a3;
      v44 = strlen(*a3);
      if (!v44)
      {
        goto LABEL_94;
      }

      v14 = v44 - 1;
      if (v44 == 2049)
      {
        goto LABEL_91;
      }

      goto LABEL_73;
    case 0x17:
      v12 = *a3;
      v13 = strlen(*a3);
      if (!v13)
      {
        goto LABEL_94;
      }

      v14 = v13 - 1;
      if (v13 == 2049)
      {
        goto LABEL_91;
      }

      goto LABEL_73;
    case 0x18:
      v12 = *a3;
      v18 = strlen(*a3);
      if (!v18)
      {
        goto LABEL_94;
      }

      v14 = v18 - 1;
      if (v18 == 2049)
      {
        goto LABEL_91;
      }

      goto LABEL_73;
    case 0x1A:
      v12 = *a3;
      v15 = strlen(*a3);
      if (!v15)
      {
LABEL_94:
        sub_24546A610(a1, 24);
      }

      v14 = v15 - 1;
      if (v15 == 2049)
      {
        goto LABEL_91;
      }

LABEL_73:
      v46 = v12 + 1;
      if (!v8)
      {
        goto LABEL_79;
      }

      while (1)
      {
        v47 = strlen(*(v7 + 8));
        if (v47 == 2048)
        {
LABEL_91:
          sub_24546A610(a1, 42);
        }

        if (v47 == v14 && (!v14 || !memcmp(*(v7 + 8), v46, v14)))
        {
          break;
        }

        v7 += 24;
        if (!--v9)
        {
          goto LABEL_79;
        }
      }

LABEL_82:
      *v4 = v8 - v9;
      if (!v9)
      {
        return 0;
      }

      return v7;
    default:
      if (!v8)
      {
        goto LABEL_79;
      }

      break;
  }

  do
  {
    v32 = (*(v7 + 8))(a1);
    v33 = sub_24545F244(a1, v10, v32, a3);
    sub_24545EF04(a1, v10, v32);
    if (v33)
    {
LABEL_90:
      *v4 = *(a2 + 4) - v9;
      return v7;
    }

    v7 += 24;
    --v9;
  }

  while (v9);
LABEL_79:
  *v4 = *(a2 + 4);
  return 0;
}

uint64_t sub_24545EE8C(void *a1, uint64_t ***a2)
{
  v2 = a1[1];
  v3 = *(a2 + 4);
  if (v2 == v3)
  {
    if (!v3)
    {
      return 1;
    }

    v4 = 0;
    v5 = 0;
    for (i = 1; ; ++i)
    {
      v7 = i;
      v8 = *a2;
      if (*a2)
      {
        while (--v7)
        {
          v8 = *v8;
          if (!v8)
          {
            goto LABEL_9;
          }
        }

        v5 = *(v8 + 2);
      }

LABEL_9:
      if (*(*a1 + 8 * v4) != v5)
      {
        break;
      }

      if (++v4 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_24545EF04(uint64_t a1, void *a2, void **a3)
{
  v5 = a1;
  while (1)
  {
    v6 = *a2;
    if (v6 <= 0x43)
    {
      if (*a2 <= 0x15u)
      {
        if (*a2 <= 5u)
        {
          if (*a2 > 2u)
          {
            if (v6 == 3 || v6 == 4)
            {
              goto LABEL_41;
            }

            return;
          }

          if (v6 == 1)
          {
            v15 = a3;
            v16 = 1;
            goto LABEL_70;
          }

          if (v6 != 2)
          {
            goto LABEL_74;
          }

LABEL_39:
          v15 = a3;
          v16 = 4;
          goto LABEL_70;
        }

        if (*a2 > 0x11u)
        {
          if (v6 - 18 >= 2)
          {
            goto LABEL_74;
          }

          goto LABEL_41;
        }

        if (v6 == 6)
        {
          goto LABEL_67;
        }

        if (v6 == 10)
        {
          v15 = a3;
          v16 = 8;
          goto LABEL_70;
        }

        if (v6 != 16)
        {
          goto LABEL_74;
        }

        v8 = *a3;
        v9 = a2[6];
        if (v9)
        {
          v10 = 0;
          v11 = a2[2];
          do
          {
            if (*v8)
            {
              sub_24545EF04(v5, *v11, *v8);
              v9 = a2[6];
            }

            v11 += 4;
            ++v8;
            ++v10;
          }

          while (v10 < v9);
          v13 = a2 + 7;
          v12 = a2[7];
          if (!v12)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v13 = a2 + 7;
          v12 = a2[7];
          if (!v12)
          {
LABEL_67:
            v23 = *a3;
            v19 = 8 * a3[1];
LABEL_68:
            sub_24545FFB8(v5, v23, v19);
            goto LABEL_69;
          }
        }

        v24 = 0;
        v25 = (a2[3] + 8);
        do
        {
          if (*v8)
          {
            sub_24545EF04(v5, *(v25 - 1), *v8);
            v12 = *v13;
          }

          v26 = *v25;
          v25 += 32;
          v8 += v26 != 4;
          ++v24;
        }

        while (v24 < v12);
LABEL_62:
        v27 = a2[8];
        if (v27)
        {
          v28 = 0;
          v29 = a2[4];
          do
          {
            v30 = v8[v28];
            if (v30)
            {
              sub_24545EF04(v5, *v29, v30);
              v27 = a2[8];
            }

            v29 += 4;
            ++v28;
          }

          while (v28 < v27);
        }

        goto LABEL_67;
      }

      if (*a2 > 0x1Fu)
      {
        if (*a2 <= 0x3Fu)
        {
          if (v6 != 32)
          {
            if (v6 != 48)
            {
              goto LABEL_74;
            }

LABEL_46:
            if (a3[1])
            {
              v17 = 0;
              do
              {
                sub_24545EF04(v5, a2[2], (*a3)[v17++]);
                v18 = a3[1];
              }

              while (v17 < v18);
              v19 = 8 * v18;
            }

            else
            {
              v19 = 0;
            }

            v23 = *a3;
            goto LABEL_68;
          }

          v20 = a2[3];
          v21 = *a3;
          v22 = 32 * a3[1];
        }

        else
        {
          if (v6 != 64)
          {
            if (v6 == 66)
            {
              goto LABEL_39;
            }

            if (v6 == 67)
            {
              goto LABEL_41;
            }

LABEL_74:
            sub_24546A610(a1, 16);
          }

          v20 = a2[3];
          v21 = *a3;
          v22 = 24 * a3[1];
        }

        sub_24545EF04(a1, *(v20 + v22), v21);
LABEL_69:
        a1 = v5;
        v15 = a3;
        v16 = 16;
        goto LABEL_70;
      }

      if (v6 - 22 < 3 || v6 == 26)
      {
        goto LABEL_41;
      }

      goto LABEL_74;
    }

    v7 = v6 - 82;
    if (v7 <= 0x2E)
    {
      if (((1 << (v6 - 82)) & 0x400000004000) != 0)
      {
        goto LABEL_8;
      }

      if (((1 << (v6 - 82)) & 0x113) != 0)
      {
        goto LABEL_41;
      }

      if (v7 == 30)
      {
        goto LABEL_46;
      }
    }

    if (v6 != 160)
    {
      break;
    }

LABEL_8:
    a2 = a2[2];
  }

  if (v6 != 68)
  {
    goto LABEL_74;
  }

LABEL_41:
  if (!*(a3 + 16))
  {
    sub_24545FFB8(a1, *a3, a3[1]);
  }

  a1 = v5;
  v15 = a3;
  v16 = 24;
LABEL_70:

  sub_24545FFB8(a1, v15, v16);
}

uint64_t sub_24545F244(uint64_t a1, unsigned __int8 *a2, const void **a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a1;
  v8 = *a2;
  if (v8 <= 0x2F)
  {
    switch(*a2)
    {
      case 1u:
        v9 = *a4;
        v10 = *a3;
        return v10 == v9;
      case 2u:
        goto LABEL_14;
      case 3u:
      case 4u:
        goto LABEL_30;
      case 5u:
        return 1;
      case 6u:
        result = sub_24545EE8C(a3, a4);
        if (!result)
        {
          return result;
        }

        return 1;
      case 0xAu:
        return *a3 == *a4;
      case 0x10u:
        v45 = *a3;
        return (!*(a2 + 6) || sub_24545F800(a1, a2, 1, &v45, a4)) && (!*(a2 + 7) || sub_24545F800(v7, a2, 2, &v45, v4)) && (!*(a2 + 8) || sub_24545F800(v7, a2, 3, &v45, v4));
      case 0x12u:
        goto LABEL_27;
      case 0x13u:
        goto LABEL_41;
      case 0x16u:
        goto LABEL_38;
      case 0x17u:
        v12 = *a3;
        v13 = a3[1];
        v14 = *a4;
        v33 = strlen(*a4);
        if (v33)
        {
          v16 = v33 - 1;
          if (v33 == 2049)
          {
            v17 = 42;
            goto LABEL_123;
          }

          return !memcmp(v12, v14 + 1, v16) && v13 == v16;
        }

        v17 = 24;
        break;
      case 0x18u:
        v12 = *a3;
        v13 = a3[1];
        v14 = *a4;
        v34 = strlen(*a4);
        if (v34)
        {
          v16 = v34 - 1;
          if (v34 != 2049)
          {
            return !memcmp(v12, v14 + 1, v16) && v13 == v16;
          }

          v17 = 42;
        }

        else
        {
          v17 = 24;
        }

        goto LABEL_123;
      case 0x1Au:
        goto LABEL_21;
      case 0x20u:
        v36 = *(a2 + 1);
        v37 = *(v36 + 48);
        if (v37 > 3)
        {
          goto LABEL_91;
        }

        if (v37 == 1)
        {
          v38 = *a4;
        }

        else if (v37 == 2)
        {
          v38 = *a4;
        }

        else
        {
LABEL_91:
          v38 = *a4;
        }

        v42 = *(a2 + 4);
        if (!v42)
        {
          return 0;
        }

        v43 = v38;
        for (i = (*(a2 + 3) + 16); *(i - 8) == 5 || *i != v43; i += 4)
        {
          result = 0;
          if (!--v42)
          {
            return result;
          }
        }

        goto LABEL_110;
      default:
        goto LABEL_124;
    }

    goto LABEL_123;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2 > 0x42u)
    {
      if (v8 == 67 || v8 == 68)
      {
LABEL_30:
        v19 = a3[1];
        return v19 == *a4 && !memcmp(*v5, *(a4 + 1), v19);
      }

      if (v8 == 82)
      {
LABEL_27:
        v12 = *a3;
        v13 = a3[1];
        v14 = *a4;
        v18 = strlen(*a4);
        if (v18)
        {
          v16 = v18 - 1;
          if (v18 == 2049)
          {
            v17 = 42;
            goto LABEL_123;
          }

          return !memcmp(v12, v14 + 1, v16) && v13 == v16;
        }

        v17 = 24;
        goto LABEL_123;
      }

      goto LABEL_124;
    }

    if (v8 == 48)
    {
      goto LABEL_44;
    }

    if (v8 != 64)
    {
      if (v8 != 66)
      {
        goto LABEL_124;
      }

LABEL_14:
      v11 = *(*(a2 + 1) + 8);
      if (v11 == 4)
      {
        goto LABEL_86;
      }

      if (v11 == 2)
      {
        v9 = *a4;
        goto LABEL_93;
      }

      if (v11 != 1)
      {
LABEL_86:
        v9 = *a4;
      }

      else
      {
        v9 = *a4;
      }

LABEL_93:
      v10 = *a3;
      return v10 == v9;
    }

    v36 = *(a2 + 1);
    v39 = *(a2 + 4);
    v40 = *(v36 + 48);
    if (v40 <= 3)
    {
      if (v40 == 1)
      {
        v41 = *a4;
LABEL_105:
        if (!v39)
        {
          return 0;
        }

        v43 = v41;
        for (i = (*(a2 + 3) + 16); *i != v43; i += 3)
        {
          result = 0;
          if (!--v39)
          {
            return result;
          }
        }

LABEL_110:
        if (a3[1] != v43)
        {
          return 0;
        }

        v20 = *(i - 2);
        a3 = *a3;
        a4 += *(v36 + 40);
        a1 = v7;
        goto LABEL_36;
      }

      if (v40 == 2)
      {
        v41 = *a4;
        goto LABEL_105;
      }
    }

    v41 = *a4;
    goto LABEL_105;
  }

  if (*a2 <= 0x5Fu)
  {
    switch(v8)
    {
      case 'S':
LABEL_41:
        v12 = *a3;
        v13 = a3[1];
        v14 = *a4;
        v23 = strlen(*a4);
        if (v23)
        {
          v16 = v23 - 1;
          if (v23 == 2049)
          {
            v17 = 42;
            goto LABEL_123;
          }

          return !memcmp(v12, v14 + 1, v16) && v13 == v16;
        }

        v17 = 24;
LABEL_123:
        sub_24546A610(v7, v17);
      case 'V':
LABEL_38:
        v12 = *a3;
        v13 = a3[1];
        v14 = *a4;
        v22 = strlen(*a4);
        if (v22)
        {
          v16 = v22 - 1;
          if (v22 == 2049)
          {
            v17 = 42;
            goto LABEL_123;
          }

          return !memcmp(v12, v14 + 1, v16) && v13 == v16;
        }

        v17 = 24;
        goto LABEL_123;
      case 'Z':
LABEL_21:
        v12 = *a3;
        v13 = a3[1];
        v14 = *a4;
        v15 = strlen(*a4);
        if (v15)
        {
          v16 = v15 - 1;
          if (v15 == 2049)
          {
            v17 = 42;
            goto LABEL_123;
          }

          return !memcmp(v12, v14 + 1, v16) && v13 == v16;
        }

        v17 = 24;
        goto LABEL_123;
    }

    goto LABEL_124;
  }

  if (*a2 > 0x7Fu)
  {
    if (v8 == 128 || v8 == 160)
    {
      goto LABEL_35;
    }

LABEL_124:
    sub_24546A610(a1, 16);
  }

  if (v8 == 96)
  {
LABEL_35:
    v20 = *(a2 + 2);
LABEL_36:
    result = sub_24545F244(a1, v20, a3, a4);
    if (!result)
    {
      return result;
    }

    return 1;
  }

  if (v8 != 112)
  {
    goto LABEL_124;
  }

LABEL_44:
  v24 = **(a2 + 1);
  v25 = a4;
  if (v24 != 182)
  {
    if (v24 != 181)
    {
LABEL_114:
      sub_24546A610(v7, 15);
    }

    v25 = (a4 + 16);
  }

  v26 = *v25;
  if (a3[1] != v26)
  {
    return 0;
  }

  if (!v26)
  {
    return 1;
  }

  v27 = 0;
  for (j = 1; ; ++j)
  {
    v29 = *(a2 + 1);
    if (*v29 == 182)
    {
      v32 = v4 + *(v29 + 40) + *(*(v29 + 24) + 8) * v27;
    }

    else
    {
      if (*v29 != 181)
      {
        goto LABEL_114;
      }

      v30 = *v4;
      v31 = j;
      if (*v4)
      {
        while (--v31)
        {
          v30 = *v30;
          if (!v30)
          {
            goto LABEL_55;
          }
        }

        v32 = v30 + *(v29 + 40);
      }

      else
      {
LABEL_55:
        v32 = 0;
      }
    }

    result = sub_24545F244(v7, *(a2 + 2), *(*v5 + v27), v32);
    if (!result)
    {
      break;
    }

    if (++v27 == v26)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_24545F800(uint64_t a1, uint64_t a2, int a3, uint64_t **a4, uint64_t a5)
{
  v5 = 48;
  v6 = 16;
  v7 = 64;
  v8 = 32;
  if (a3 == 2)
  {
    v8 = 24;
    v7 = 56;
  }

  if (a3 != 1)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = *(a2 + v5);
  if (!v9)
  {
    return 1;
  }

  for (i = (*(a2 + v6) + 16); ; i += 4)
  {
    v16 = *(i - 8);
    if (v16 < 2)
    {
      if (a3 != 2)
      {
        v19 = *(*(*(a2 + 8) + 24) + 24 * *i + 8);
        v20 = *(i - 2);
        v18 = **a4;
LABEL_18:
        result = sub_24545F244(a1, v20, v18, a5 + v19);
        if (!result)
        {
          return result;
        }

        goto LABEL_19;
      }
    }

    else if (v16 != 2 && v16 != 3)
    {
      goto LABEL_19;
    }

    v17 = *(*(a2 + 8) + 24) + 24 * *i;
    v18 = **a4;
    if (*(a5 + **(v17 + 16)) == 1)
    {
      if (!v18)
      {
        return 0;
      }

      v19 = *(v17 + 8);
      v20 = *(i - 2);
      goto LABEL_18;
    }

    if (v18)
    {
      break;
    }

LABEL_19:
    ++*a4;
    if (!--v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24545F948(uint64_t result, uint64_t a2, int *a3)
{
  if ((*(a2 + 16) & 0x20) != 0 && *(a2 + 24) > *a3 || (*(a2 + 16) & 8) != 0 && *(a2 + 32) < *a3)
  {
    return sub_24546A59C(result, 18);
  }

  return result;
}

uint64_t sub_24545F980(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 24) > a3 || *(a2 + 16) < 0 && *(a2 + 32) < a3)
  {
    return sub_24546A59C(result, 19);
  }

  return result;
}

uint64_t sub_24545F9D4(uint64_t result, uint64_t a2, void *a3)
{
  v5 = result;
  v7 = a3 + 1;
  v6 = a3[1];
  if (v6 < *(a2 + 40) || *(a2 + 32) < 0 && *(a2 + 48) < v6)
  {
    result = sub_24546A59C(result, 19);
  }

  v8 = *(a2 + 24);
  if (v8 && *v7)
  {
    v9 = 0;
    v10 = *(a2 + 16);
    while (1)
    {
      if (v8)
      {
        v11 = *(*a3 + v9);
        if (v11 != *v10)
        {
          break;
        }
      }

      v12 = 0;
LABEL_11:
      if (v12 == v8)
      {
        return sub_24546A59C(v5, 20);
      }

      if (++v9 == *v7)
      {
        return result;
      }
    }

    v12 = 0;
    while (v8 - 1 != v12)
    {
      v13 = v10[++v12];
      if (v11 == v13)
      {
        goto LABEL_11;
      }
    }

    return sub_24546A59C(v5, 20);
  }

  return result;
}

uint64_t sub_24545FAD0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 32) > a3 || *(a2 + 24) < 0 && *(a2 + 40) < a3)
  {
    return sub_24546A59C(result, 19);
  }

  return result;
}

void sub_24545FB28(uint64_t a1)
{
  sub_245473D60(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24545FB60(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v2 = sub_24546E30C();
    v3 = *(*(a1 + 8) + 376);
    v4 = *MEMORY[0x277D85DE8];

    return sub_24546F1E8(v2, v3);
  }

  else
  {
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = 513;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v8, 8u);
    }

    v7 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

void sub_24545FC58(uint64_t a1)
{
  __p[3] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  if (!v1)
  {
LABEL_14:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  *(v1 + 64) = 1;
  *(v1 + 72) = *(v1 + 376);
  v3 = sub_24547473C();
  sub_245474B90(v3, *(a1 + 8) + 80, *(*(a1 + 8) + 596));
  v4 = *(a1 + 8);
  v5 = sub_24547473C();
  v6 = sub_24547547C(v5, *(v4 + 376));
  v7 = *(a1 + 8);
  if (v6)
  {
    v8 = v6;
    if (v7 + 264 == v6 + 392)
    {
      *(v7 + 288) = *(v6 + 416);
      *(v7 + 296) = *(v6 + 424);
    }

    else
    {
      sub_2453ADF3C((v7 + 264), *(v6 + 392), *(v6 + 400), *(v6 + 400) - *(v6 + 392));
      *(v7 + 288) = *(v8 + 416);
      *(v7 + 296) = *(v8 + 424);
      sub_2453ADF3C((v7 + 304), *(v8 + 432), *(v8 + 440), *(v8 + 440) - *(v8 + 432));
      sub_2453ADF3C((v7 + 328), *(v8 + 456), *(v8 + 464), *(v8 + 464) - *(v8 + 456));
      sub_2453ADF3C((v7 + 352), *(v8 + 480), *(v8 + 488), *(v8 + 488) - *(v8 + 480));
      v7 = *(a1 + 8);
    }

    *(v7 + 68) = 1;
    if (*(v8 + 20) == 1)
    {
      v9 = *(v8 + 24);
      v10 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        __p[0] = 0x30204000100;
        _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", __p, 8u);
        v7 = *(a1 + 8);
      }

      if (v9 == 12)
      {
        sub_245454C74(v7 + 64, v8 + 56);
        v7 = *(a1 + 8);
      }

      sub_245473DF8(a1, 7, v7);
      v11 = sub_245471CCC(*(a1 + 8));
      v12 = v11;
      if (v11)
      {
        *(v11[5] + 456) = v9;
        *(v11[5] + 4) = 1;
        sub_2454545E0(v11);
        sub_2453A6258(__p, 3000);
        v15[0] = __p;
        v15[1] = 0;
        v16 = 0;
        sub_245454D2C(v12);
        (*(*v12 + 32))(v12, v15);
        sub_245454A88(v12);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      goto LABEL_14;
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  sub_245473DF8(a1, 2, v7);
}

void sub_24545FEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24545FF18(uint64_t a1, size_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A0040319E9F20uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  v4[2] = *(a1 + 728);
  v5 = malloc_type_calloc(1uLL, a2, 0xC195E4EAuLL);
  bzero(v5, a2);
  *v4 = v5;
  v4[1] = a2;
  if (!v5)
  {
    free(v4);
    sub_24546A610(a1, 1);
  }

  *(a1 + 728) = v4;
  return v5;
}

void sub_24545FFB8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 728);
  if (!v3)
  {
    goto LABEL_12;
  }

  if (*v3 != a2)
  {
    do
    {
      v4 = v3;
      v3 = v3[2];
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    while (*v3 != a2);
    if (v3[1] == a3)
    {
      v5 = v4 + 2;
      goto LABEL_9;
    }

LABEL_12:
    sub_24546A610(a1, 15);
  }

  if (v3[1] != a3)
  {
    goto LABEL_12;
  }

  v5 = (a1 + 728);
LABEL_9:
  *v5 = v3[2];
  free(a2);

  free(v3);
}

uint64_t sub_245460080(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_11:
    sub_245445D98(v8, v6, v7, "asn1PD_SuplNotificationType");
    return v5;
  }

  v10 = 0;
  if (v4)
  {
    v8 = sub_24544742C(a1, &v10);
  }

  else
  {
    v8 = sub_245446150(a1, 0, 4u, &v10);
  }

  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  if (v10 > 4u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = 4;
    goto LABEL_11;
  }

  v5 = 0;
  *a2 = v10;
  return v5;
}

uint64_t sub_245460160(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  v10 = 0;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
LABEL_11:
    sub_245445D98(v8, v6, v7, "asn1PD_EncodingType");
    return v5;
  }

  if (v4)
  {
    v8 = sub_24544742C(a1, &v10);
  }

  else
  {
    v8 = sub_245446150(a1, 0, 2u, &v10);
  }

  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  if (v10 > 2u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = 4;
    goto LABEL_11;
  }

  v5 = 0;
  *a2 = v10;
  return v5;
}

uint64_t sub_245460240(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  v11 = 0;
  if (v5)
  {
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PD_FormatIndicator");
LABEL_7:
    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    v9 = v5;
    goto LABEL_8;
  }

  if (v4)
  {
    v6 = sub_24544742C(a1, &v11);
  }

  else
  {
    v6 = sub_245446150(a1, 0, 7u, &v11);
  }

  v5 = v6;
  if (v6)
  {
    goto LABEL_7;
  }

  if (v11 <= 7u)
  {
    v5 = 0;
    *a2 = v11;
    return v5;
  }

  v5 = 4;
  *(a1 + 16) = 4;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = 4;
LABEL_8:
  sub_245445D98(v9, v7, v8, "asn1PD_FormatIndicator");
  return v5;
}

uint64_t sub_245460324(uint64_t a1, unsigned __int8 *a2)
{
  v7 = 0;
  v4 = sub_245446150(a1, 0, 1u, &v7);
  if (v7 >= 2u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    sub_245445D98(4u, *(a1 + 8), *(a1 + 12), "asn1PD_SLPMode");
  }

  else
  {
    v5 = v4;
    *a2 = v7;
    if (!v4)
    {
      return v5;
    }
  }

  sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PD_SLPMode");
  return v5;
}

uint64_t sub_2454603C4(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x40u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_MAC");
  }

  return v3;
}

uint64_t sub_245460418(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x80u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_KeyIdentity");
  }

  return v3;
}

uint64_t sub_24546046C(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_2454463A8(a1, 1, 0x32u, &v6);
  sub_245446614(a1, 8 * v6, a2, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Notification_requestorId");
  }

  return v4;
}

uint64_t sub_2454604E8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_2454463A8(a1, 1, 0x32u, &v6);
  sub_245446614(a1, 8 * v6, a2, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Notification_clientName");
  }

  return v4;
}

uint64_t sub_245460564(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_15:
    sub_245445D98(v8, v6, v7, "asn1PD_Notification");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 4) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 8) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 12) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 16) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  v8 = sub_245460080(a1, (a2 + 20));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v8 = sub_245460160(a1, (a2 + 21));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 4))
  {
    v8 = sub_24546046C(a1, (a2 + 24));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 8))
  {
    v8 = sub_245460240(a1, (a2 + 48));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 12))
  {
    v8 = sub_2454604E8(a1, (a2 + 56));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 16))
  {
    v8 = sub_245460240(a1, (a2 + 80));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!v9)
  {
    return 0;
  }

  v8 = sub_245443F7C(a1, a2);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  return v5;
}

uint64_t sub_2454607E8(uint64_t a1)
{
  *(a1 + 108) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 44) = -1;
  *(a1 + 72) = -1;
  *(a1 + 104) = -1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 112) = -1;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  bzero((a1 + 232), 0x250uLL);
  *(a1 + 592) = -1;
  *(a1 + 684) = 0u;
  *(a1 + 700) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 665) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 792) = 0u;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 9;
  *(a1 + 224) = 0;
  return a1;
}

uint64_t sub_2454608BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_15:
    sub_245445D98(v8, v6, v7, "asn1PD_SUPLINIT");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 4) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 8) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 12) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 16) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  v8 = sub_245468554(a1, (a2 + 20));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v8 = sub_245460564(a1, a2 + 24);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 4))
  {
    v8 = sub_245472B88(a1, a2 + 112);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 8))
  {
    v8 = sub_245468694(a1, a2 + 200);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  v8 = sub_245460324(a1, (a2 + 224));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*(a2 + 12))
  {
    v8 = sub_2454603C4(a1, (a2 + 232));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 16))
  {
    v8 = sub_245460418(a1, (a2 + 256));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!v9)
  {
    return 0;
  }

  v8 = sub_245443350(a1, a2);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  return v5;
}

uint64_t sub_245460B68(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  v2 = a1 + 32;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  v3 = sub_245445AC4();
  v4 = atomic_load((v3 + 1));
  v5 = v4 == 255;
  v6 = 1;
  if (v5)
  {
    v6 = 2;
  }

  v7 = atomic_load((v3 + v6));
  *(a1 + 40) = -1;
  *(a1 + 34) = v7;
  *(a1 + 35) = 0;
  *(a1 + 48) = 0;
  sub_2454735D8(a1 + 56);
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  sub_2453A6258((a1 + 392), 4);
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 416) = -1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 40) = 1;
  v8 = operator new(0x338uLL, MEMORY[0x277D826F0]);
  v9 = v8;
  if (v8)
  {
    *(v8 + 27) = 0;
    *(v8 + 24) = 0u;
    *(v8 + 10) = 0;
    *(v8 + 6) = 0;
    *(v8 + 56) = 0u;
    *(v8 + 10) = 0;
    *(v8 + 88) = 0u;
    *(v8 + 22) = -1;
    v8[72] = -1;
    v8[104] = -1;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    v8[112] = -1;
    *(v8 + 12) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 11) = 0u;
    *(v8 + 9) = 0u;
    bzero(v8 + 232, 0x250uLL);
    v9[592] = -1;
    *(v9 + 684) = 0u;
    *(v9 + 700) = 0u;
    *(v9 + 91) = 0;
    *(v9 + 46) = 0u;
    *(v9 + 188) = 0;
    *(v9 + 95) = 0;
    *(v9 + 48) = 0u;
    *(v9 + 196) = 0;
    *(v9 + 38) = 0u;
    *(v9 + 39) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 41) = 0u;
    *(v9 + 665) = 0u;
    *(v9 + 101) = 0;
    *(v9 + 204) = 0;
    *(v9 + 792) = 0u;
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 4) = 0;
    v9[20] = 9;
    v9[224] = 0;
  }

  *(a1 + 48) = v9;
  v10 = operator new(8uLL, MEMORY[0x277D826F0]);
  if (v10)
  {
    *v10 = v2;
  }

  *(a1 + 8) = v10;
  return a1;
}

void sub_245460D34(_Unwind_Exception *a1)
{
  v4 = *(v1 + 368);
  if (v4)
  {
    *(v1 + 376) = v4;
    operator delete(v4);
  }

  sub_2454615CC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_245460D6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    MEMORY[0x245D6A0D0](v2, 0x20C4093837F09);
  }

  *(a1 + 8) = 0;
  sub_24547052C(a1 + 504);
  v3 = *(a1 + 480);
  if (v3)
  {
    *(a1 + 488) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 456);
  if (v4)
  {
    *(a1 + 464) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 432);
  if (v5)
  {
    *(a1 + 440) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 392);
  if (v6)
  {
    *(a1 + 400) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 368);
  if (v7)
  {
    *(a1 + 376) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 344);
  if (v8)
  {
    *(a1 + 352) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 320);
  if (v9)
  {
    *(a1 + 328) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 296);
  if (v10)
  {
    *(a1 + 304) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 256);
  if (v11)
  {
    *(a1 + 264) = v11;
    operator delete(v11);
  }

  sub_245461640(a1 + 80);
  sub_2454660B0((a1 + 40));
  return a1;
}

uint64_t sub_245460E5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v21[0] = 0;
  __p[1] = 0;
  v23 = 0;
  __p[0] = 0;
  v24 = 7275;
  v8 = sub_245479234();
  v9 = sub_245479574(v8, v21, a3, a4);
  if (v9)
  {
    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v26 = 515;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    }

    goto LABEL_14;
  }

  v11 = sub_245445AC4();
  v12 = atomic_load((v11 + 1));
  v13 = v12 == 255;
  v14 = 1;
  if (v13)
  {
    v14 = 2;
  }

  v15 = atomic_load((v11 + v14));
  if (v15 == 1)
  {
    v16 = (a1 + 368);
LABEL_9:
    sub_245477B64(__p, v16);
    goto LABEL_10;
  }

  v17 = sub_24547473C();
  v16 = (a1 + 368);
  if (*(v17 + 40))
  {
    goto LABEL_9;
  }

  sub_245477F08(__p, v16);
LABEL_10:
  v18 = *(a2 + 8) - *a2;
  if (v18 > 7)
  {
    if (v18 != 8)
    {
      *(a2 + 8) = *a2 + 8;
    }
  }

  else
  {
    sub_2453A6334(a2, 8 - v18);
  }

LABEL_14:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_245460FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24546100C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  __p = 0;
  v42 = 0;
  v43 = 0;
  v5 = (a3 + 1);
  sub_2453AE4E0(&__p, *a3, a3[1], a3[1] - *a3);
  v39[0] = &__p;
  v39[1] = 0;
  v40 = 0;
  v38[0] = v39;
  v38[1] = a1 + 32;
  v6 = *a3;
  v7 = *v5;
  if (v6 == *v5)
  {
    v13 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v45 = 513;
      _os_log_error_impl(&dword_245396000, v13, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    }
  }

  else
  {
    v8 = v7 - v6;
    v9 = *(a1 + 384);
    v10 = *(a1 + 368);
    if (v9 - v10 < v7 - v6)
    {
      if (v10)
      {
        *(a1 + 376) = v10;
        operator delete(v10);
        v9 = 0;
        *(a1 + 368) = 0;
        *(a1 + 376) = 0;
        *(a1 + 384) = 0;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        v11 = 2 * v9;
        if (2 * v9 <= v8)
        {
          v11 = v7 - v6;
        }

        if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        sub_2453A62CC(a1 + 368, v12);
      }

      sub_2453A631C();
    }

    v14 = *(a1 + 376);
    v15 = v14 - v10;
    if (v14 - v10 >= v8)
    {
      memmove(*(a1 + 368), v6, v7 - v6);
      v20 = &v10[v8];
    }

    else
    {
      v16 = &v6[v15];
      if (v14 != v10)
      {
        memmove(*(a1 + 368), v6, v15);
        v14 = *(a1 + 376);
      }

      v17 = v14;
      if (v16 != v7)
      {
        v17 = (&v7[v14] - v16);
        v18 = v14;
        do
        {
          v19 = *v16++;
          *v18++ = v19;
        }

        while (v16 != v7);
      }

      v20 = v17;
    }

    *(a1 + 376) = v20;
  }

  v21 = sub_2454667D8(v38);
  if (*(a1 + 40) == 1)
  {
    if (v21)
    {
      v22 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v45 = 770;
        _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
      }

      v23 = 3;
      goto LABEL_44;
    }

    v26 = *(a1 + 48);
    LOBYTE(v27) = *(a1 + 34);
    if (*(v26 + 308))
    {
      v27 = *(v26 + 816);
    }

    if (!sub_245445BF8(*(a1 + 34), v27))
    {
      v29 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v45 = 515;
        _os_log_error_impl(&dword_245396000, v29, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
      }

      v23 = 10;
      goto LABEL_44;
    }

    if (*(a1 + 56))
    {
      v28 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
LABEL_36:
        v23 = 12;
LABEL_44:
        *(a1 + 24) = v23;
        goto LABEL_45;
      }

      *buf = 67109120;
      v45 = 515;
    }

    else
    {
      if (*(v26 + 224))
      {
        v30 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v45 = 515;
          _os_log_error_impl(&dword_245396000, v30, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
        }

        v23 = 13;
        goto LABEL_44;
      }

      if (*(v26 + 20) == 9 && !*v26)
      {
        v36 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v45 = 515;
          _os_log_error_impl(&dword_245396000, v36, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
        }

        v23 = 4;
        goto LABEL_44;
      }

      if (*(a1 + 60))
      {
        if (!*(a1 + 8))
        {
          goto LABEL_46;
        }

        v34 = *(a1 + 48);
        if (*(v34 + 20) - 11 > 1 || *(v34 + 304))
        {
          if (*(v34 + 300) != 1 || !*(v34 + 720))
          {
            goto LABEL_46;
          }

          v35 = 20;
        }

        else
        {
          v35 = 7;
        }

        *(a1 + 24) = v35;
        v37 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v45 = 515;
          _os_log_error_impl(&dword_245396000, v37, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
        }

LABEL_45:
        *(a1 + 20) = 1;
LABEL_46:
        v31 = sub_24547473C();
        sub_245475FC4(v31, a1 + 392, a1 + 32);
        v25 = 0;
        goto LABEL_47;
      }

      v28 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 67109120;
      v45 = 515;
    }

    _os_log_error_impl(&dword_245396000, v28, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    goto LABEL_36;
  }

  v24 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v45 = 515;
    _os_log_error_impl(&dword_245396000, v24, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
  }

  v25 = -5;
LABEL_47:
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_2454615A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2454615CC(uint64_t a1)
{
  v2 = *(a1 + 312);
  if (v2)
  {
    *(a1 + 320) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 288);
  if (v3)
  {
    *(a1 + 296) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 264);
  if (v4)
  {
    *(a1 + 272) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 224);
  if (v5)
  {
    *(a1 + 232) = v5;
    operator delete(v5);
  }

  sub_245461640(a1 + 48);
  sub_2454660B0((a1 + 8));
  return a1;
}

uint64_t sub_245461640(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    *(a1 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_2454616D4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (qword_2813CED48 != -1)
  {
    dispatch_once(&qword_2813CED48, &unk_28585A590);
  }

  v0 = qword_2813CED40;
  if (!qword_2813CED40)
  {
    v1 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v1, OS_LOG_TYPE_ERROR, "Memory allocation failure,%s", &v4, 0xCu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

_BYTE *sub_2454617B4()
{
  result = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[32] = 0;
    *result = 0u;
    *(result + 1) = 0u;
  }

  qword_2813CED40 = result;
  return result;
}

void sub_2454617F0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_2454619A8(a1);
  *(a1 + 24) = a2;
  if (!*a1)
  {
    v6 = sub_2453B4548();
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *v6);
    *a1 = v7;
    v8 = qword_2813CF020;
    if (v7)
    {
      v9 = v7;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v15 = a3;
        _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "LppTimer,#input,created timer,starting timer for,%d,milli seconds", buf, 8u);
        v9 = *a1;
      }

      v10 = dispatch_time(0, 1000000 * a3);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      v11 = *a1;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = sub_245461A3C;
      handler[3] = &unk_278E36F50;
      handler[4] = a1;
      dispatch_source_set_event_handler(v11, handler);
      dispatch_resume(*a1);
    }

    else if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "LppTimer,fTimer NULL", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2454619A8(dispatch_object_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "LppTimer,#input,cancel the ongoing timer", v4, 2u);
      v1 = *a1;
    }

    dispatch_source_cancel(v1);
    dispatch_release(*a1);
    *a1 = 0;
  }
}

void sub_245461A3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **(*(v1 + 24) + 72);
  v3 = *sub_2453B4548();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = sub_245461AC8;
  v4[3] = &unk_278E36F70;
  v4[4] = v1;
  v4[5] = v2;
  dispatch_async(v3, v4);
}

void sub_245461AD4(uint64_t a1, unsigned int a2, char a3)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_245461C8C(a1);
  *(a1 + 32) = a3;
  if (!*(a1 + 8))
  {
    v6 = sub_2453B4548();
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *v6);
    *(a1 + 8) = v7;
    v8 = qword_2813CF020;
    if (v7)
    {
      v9 = v7;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v15 = a2;
        _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "LppTimer,#input,created timer,starting timer for,%d,milli seconds for ECID request", buf, 8u);
        v9 = *(a1 + 8);
      }

      v10 = dispatch_time(0, 1000000 * a2);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      v11 = *(a1 + 8);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = sub_245461D20;
      handler[3] = &unk_278E36F90;
      handler[4] = a1;
      dispatch_source_set_event_handler(v11, handler);
      dispatch_resume(*(a1 + 8));
    }

    else if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "LppTimer,fTimer NULL", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_245461C8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v3 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "LppTimer,#input,cancel the ongoing timer", v4, 2u);
      v1 = *(a1 + 8);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(a1 + 8));
    *(a1 + 8) = 0;
  }
}

void sub_245461D20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v4[0]) = 0;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "LppTimer,ECID Req timer expired", v4, 2u);
  }

  v3 = *sub_2453B4548();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = sub_245461DE4;
  v4[3] = &unk_278E36FB0;
  v4[4] = v1;
  dispatch_async(v3, v4);
}

void sub_245461DE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_2453B4548();
  v3 = *(v1 + 32);

  sub_2453B51C0(v2, v3);
}

void sub_245461E1C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *(a1 + 24) = a2;
  sub_245461FD0(a1);
  if (!*(a1 + 16))
  {
    v5 = sub_2453B4548();
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *v5);
    *(a1 + 16) = v6;
    v7 = qword_2813CF020;
    if (v6)
    {
      v8 = v6;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v14 = a3;
        _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "LppTimer,#input,created timer,starting timer for,%d,milli seconds for session active", buf, 8u);
        v8 = *(a1 + 16);
      }

      v9 = dispatch_time(0, 1000000 * a3);
      dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      v10 = *(a1 + 16);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = sub_245462064;
      handler[3] = &unk_278E36FD0;
      handler[4] = a1;
      dispatch_source_set_event_handler(v10, handler);
      dispatch_resume(*(a1 + 16));
    }

    else if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "LppTimer,fTimer NULL", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_245461FD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "LppTimer,#input,cancelling the ongoing session active timer", v4, 2u);
      v1 = *(a1 + 16);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

void sub_245462064(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v5[0]) = 0;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "LppTimer,ECID Req timer expired", v5, 2u);
  }

  v3 = **(*(v1 + 24) + 72);
  v4 = *sub_2453B4548();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = sub_245462134;
  v5[3] = &unk_278E36FF0;
  v5[4] = v1;
  v5[5] = v3;
  dispatch_async(v4, v5);
}

uint64_t sub_245462144(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_Status", buf, 2u);
  }

  sub_245445FB0(a1, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
LABEL_10:
    sub_245445D98(v8, v6, v7, "asn1PE_Status");
    goto LABEL_11;
  }

  v9 = *a2;
  if (v9 >= 3)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    sub_245445D98(4u, *(a1 + 8), *(a1 + 12), "asn1PE_Status");
    goto LABEL_9;
  }

  v5 = sub_2454460B8(a1, 0, 2, v9);
  if (v5)
  {
LABEL_9:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
    goto LABEL_10;
  }

LABEL_11:
  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_debug_impl(&dword_245396000, v10, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_Status", v12, 2u);
  }

  return v5;
}

uint64_t sub_24546228C(uint64_t a1, unsigned __int16 *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_UARFCN", buf, 2u);
  }

  v5 = sub_2454460B8(a1, 0, 0x3FFF, *a2);
  v6 = v5;
  if (v5)
  {
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PE_UARFCN");
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 0;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_UARFCN", v9, 2u);
  }

  return v6;
}

uint64_t sub_24546237C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v28 = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_FrequencyInfo", v28, 2u);
  }

  sub_245445FB0(a1, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
LABEL_38:
    sub_245445D98(v8, v6, v7, "asn1PE_FrequencyInfo");
    goto LABEL_39;
  }

  v9 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v28 = 0;
    _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_FrequencyInfo_modeSpecificInfo", v28, 2u);
  }

  sub_245445FB0(a1, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_FrequencyInfo_modeSpecificInfo");
LABEL_37:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
    goto LABEL_38;
  }

  v10 = sub_2454460B8(a1, 0, 1, *a2);
  if (!v10)
  {
    if (*a2 != 1)
    {
      if (*a2)
      {
        v5 = 4;
        *(a1 + 16) = 4;
        sub_245445D98(4u, *(a1 + 8), *(a1 + 12), "asn1PE_FrequencyInfo_modeSpecificInfo");
        goto LABEL_32;
      }

      v13 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *v28 = 0;
        _os_log_debug_impl(&dword_245396000, v13, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_FrequencyInfoFDD", v28, 2u);
      }

      sub_245445FB0(a1, 0);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_FrequencyInfoFDD");
        v14 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *v28 = 0;
          v15 = "#gpsd,#supl Leaving asn1PE_FrequencyInfoFDD, EncodeBoolean failed";
LABEL_26:
          _os_log_debug_impl(&dword_245396000, v14, OS_LOG_TYPE_DEBUG, v15, v28, 2u);
          goto LABEL_32;
        }

        goto LABEL_32;
      }

      sub_245445FB0(a1, *(a2 + 1));
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_FrequencyInfoFDD");
        v14 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *v28 = 0;
          v15 = "#gpsd,#supl Leaving asn1PE_FrequencyInfoFDD, encode UARFCN failed";
          goto LABEL_26;
        }

LABEL_32:
        v11 = *(a1 + 8);
        v12 = *(a1 + 12);
        LODWORD(v10) = v5;
        goto LABEL_33;
      }

      if (*(a2 + 1) && (v24 = sub_24546228C(a1, a2 + 4), v24))
      {
        v5 = v24;
        v25 = *(a1 + 8);
        v26 = *(a1 + 12);
      }

      else
      {
        v24 = sub_24546228C(a1, a2 + 5);
        v5 = v24;
        if (!v24)
        {
LABEL_48:
          v20 = qword_2813CF018;
          if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_31;
          }

          *v28 = 0;
          v27 = "#gpsd,#supl Leaving asn1PE_FrequencyInfoFDD";
LABEL_51:
          _os_log_debug_impl(&dword_245396000, v20, OS_LOG_TYPE_DEBUG, v27, v28, 2u);
LABEL_31:
          if (!v5)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        v25 = *(a1 + 8);
        v26 = *(a1 + 12);
      }

      sub_245445D98(v24, v25, v26, "asn1PE_FrequencyInfoFDD");
      goto LABEL_48;
    }

    v16 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *v28 = 0;
      _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_FrequencyInfoTDD", v28, 2u);
    }

    sub_245445FB0(a1, 0);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v17 = *(a1 + 8);
      v18 = *(a1 + 12);
      LODWORD(v19) = *(a1 + 16);
    }

    else
    {
      v19 = sub_24546228C(a1, a2 + 6);
      v5 = v19;
      if (!v19)
      {
LABEL_30:
        v20 = qword_2813CF018;
        if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_31;
        }

        *v28 = 0;
        v27 = "#gpsd,#supl Leaving asn1PE_FrequencyInfoTDD";
        goto LABEL_51;
      }

      v17 = *(a1 + 8);
      v18 = *(a1 + 12);
    }

    sub_245445D98(v19, v17, v18, "asn1PE_FrequencyInfoTDD");
    goto LABEL_30;
  }

  v5 = v10;
  v11 = *(a1 + 8);
  v12 = *(a1 + 12);
LABEL_33:
  sub_245445D98(v10, v11, v12, "asn1PE_FrequencyInfo_modeSpecificInfo");
LABEL_34:
  v21 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v28 = 0;
    _os_log_debug_impl(&dword_245396000, v21, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_FrequencyInfo_modeSpecificInfo", v28, 2u);
  }

  if (v5)
  {
    goto LABEL_37;
  }

LABEL_39:
  v22 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v28 = 0;
    _os_log_debug_impl(&dword_245396000, v22, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_FrequencyInfo", v28, 2u);
  }

  return v5;
}

uint64_t sub_245462814(uint64_t a1, unsigned __int16 *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_CPICH_Ec_N0", buf, 2u);
  }

  v5 = sub_2454460B8(a1, 0, 63, *a2);
  v6 = v5;
  if (v5)
  {
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PE_CPICH_Ec_N0");
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 0;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_CPICH_Ec_N0", v9, 2u);
  }

  return v6;
}

uint64_t sub_245462904(uint64_t a1, unsigned __int16 *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_CPICH_RSCP", buf, 2u);
  }

  v5 = sub_2454460B8(a1, 0, 127, *a2);
  v6 = v5;
  if (v5)
  {
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PE_CPICH_RSCP");
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 0;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_CPICH_RSCP", v9, 2u);
  }

  return v6;
}

uint64_t sub_2454629F4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_Pathloss", buf, 2u);
  }

  v5 = sub_2454460B8(a1, 46, 173, *a2);
  v6 = v5;
  if (v5)
  {
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PE_Pathloss");
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 0;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_Pathloss", v9, 2u);
  }

  return v6;
}

uint64_t sub_245462AE4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_CellParametersID", buf, 2u);
  }

  v5 = sub_2454460B8(a1, 0, 127, *a2);
  v6 = v5;
  if (v5)
  {
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PE_CellParametersID");
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 0;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_CellParametersID", v9, 2u);
  }

  return v6;
}

uint64_t sub_245462BD4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_TGSN", buf, 2u);
  }

  v5 = sub_2454460B8(a1, 0, 14, *a2);
  v6 = v5;
  if (v5)
  {
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PE_TGSN");
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 0;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leavinb asn1PE_TGSN", v9, 2u);
  }

  return v6;
}

uint64_t sub_245462CC4(uint64_t a1, unsigned __int16 *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_PrimaryCCPCH_RSCP", buf, 2u);
  }

  v5 = sub_2454460B8(a1, 0, 127, *a2);
  v6 = v5;
  if (v5)
  {
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PE_PrimaryCCPCH_RSCP");
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 0;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_PrimaryCCPCH_RSCP", v9, 2u);
  }

  return v6;
}

uint64_t sub_245462DB4(uint64_t a1, _DWORD *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_TimeslotISCP_List", v15, 2u);
  }

  v5 = sub_2454460B8(a1, 1, 14, a2[2] - *a2);
  if (v5)
  {
    v6 = v5;
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PE_TimeslotISCP_List");
    return v6;
  }

  v7 = *a2;
  v8 = qword_2813CF018;
  if (*(a2 + 1) == *a2)
  {
LABEL_18:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13[0] = 0;
      _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_TimeslotISCP_List", v13, 2u);
    }

    return 0;
  }

  v9 = 0;
  while (1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_TimeslotISCP", buf, 2u);
    }

    v10 = sub_2454460B8(a1, 0, 127, *(v7 + v9));
    v6 = v10;
    if (v10)
    {
      sub_245445D98(v10, *(a1 + 8), *(a1 + 12), "asn1PE_TimeslotISCP");
    }

    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      break;
    }

    if (v6)
    {
      goto LABEL_16;
    }

LABEL_13:
    ++v9;
    v7 = *a2;
    if (v9 >= *(a2 + 1) - *a2)
    {
      goto LABEL_18;
    }
  }

  *v16 = 0;
  _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_TimeslotISCP", v16, 2u);
  v8 = qword_2813CF018;
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_16:
  sub_245445D98(v6, *(a1 + 8), *(a1 + 12), "asn1PE_TimeslotISCP_List");
  v11 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_debug_impl(&dword_245396000, v11, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_TimeslotISCP_List", v14, 2u);
  }

  return v6;
}

uint64_t sub_24546300C(uint64_t a1, uint64_t *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_MeasuredResultsList", buf, 2u);
  }

  v5 = sub_2454460B8(a1, 1, 8, -1227133513 * ((a2[1] - *a2) >> 3));
  if (v5)
  {
    v6 = v5;
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PE_MeasuredResultsList");
    v7 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      return v6;
    }

    *buf = 0;
LABEL_163:
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_MeasuredResultsList", buf, 2u);
    return v6;
  }

  v8 = *a2;
  v9 = qword_2813CF018;
  if (a2[1] == *a2)
  {
    goto LABEL_148;
  }

  v10 = 0;
  do
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_MeasuredResults", buf, 2u);
    }

    v11 = v8 + 56 * v10;
    sub_245445FB0(a1, *v11);
    v6 = *(a1 + 16);
    if (*(a1 + 16))
    {
      sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_MeasuredResults");
      v62 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        goto LABEL_160;
      }

      goto LABEL_161;
    }

    sub_245445FB0(a1, *(v11 + 4));
    v6 = *(a1 + 16);
    if (*(a1 + 16))
    {
      sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_MeasuredResults");
      v62 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        goto LABEL_160;
      }

      goto LABEL_161;
    }

    sub_245445FB0(a1, *(v11 + 8));
    v6 = *(a1 + 16);
    if (*(a1 + 16))
    {
      sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_MeasuredResults");
      v62 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        goto LABEL_160;
      }

LABEL_161:
      sub_245445D98(v6, *(a1 + 8), *(a1 + 12), "asn1PE_MeasuredResultsList");
      v7 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        return v6;
      }

      *buf = 0;
      goto LABEL_163;
    }

    if (*v11)
    {
      v12 = sub_24546237C(a1, (v11 + 12));
      if (v12)
      {
        v6 = v12;
        sub_245445D98(v12, *(a1 + 8), *(a1 + 12), "asn1PE_MeasuredResults");
        goto LABEL_161;
      }
    }

    if (*(v11 + 4))
    {
      v13 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v13, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_UTRA_CarrierRSSI", buf, 2u);
      }

      v14 = sub_2454460B8(a1, 0, 127, *(v11 + 28));
      v6 = v14;
      if (v14)
      {
        sub_245445D98(v14, *(a1 + 8), *(a1 + 12), "asn1PE_UTRA_CarrierRSSI");
      }

      v15 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        if (v6)
        {
          goto LABEL_158;
        }

        goto LABEL_22;
      }

      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_UTRA_CarrierRSSI", buf, 2u);
      if (v6)
      {
LABEL_158:
        sub_245445D98(v6, *(a1 + 8), *(a1 + 12), "asn1PE_MeasuredResults");
        v62 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
LABEL_160:
          _os_log_debug_impl(&dword_245396000, v62, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_MeasuredResults", buf, 2u);
        }

        goto LABEL_161;
      }
    }

LABEL_22:
    if (!*(v11 + 8))
    {
      v6 = 0;
      goto LABEL_141;
    }

    v16 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_CellMeasuredResultsList", buf, 2u);
    }

    v17 = sub_2454460B8(a1, 1, 32, -1171354717 * ((*(v11 + 40) - *(v11 + 32)) >> 3));
    if (v17)
    {
      v6 = v17;
      sub_245445D98(v17, *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResultsList");
      v18 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_139;
      }

      goto LABEL_140;
    }

    v19 = *(v11 + 32);
    v20 = qword_2813CF018;
    if (*(v11 + 40) == v19)
    {
LABEL_133:
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v20, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_CellMeasuredResultsList", buf, 2u);
      }

      v6 = 0;
      goto LABEL_141;
    }

    v21 = 0;
    v22 = 32;
    while (1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v20, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_CellMeasuredResults", buf, 2u);
      }

      sub_245445FB0(a1, *(v19 + v22 - 32));
      v6 = *(a1 + 16);
      if (*(a1 + 16))
      {
        break;
      }

      if (*(v19 + v22 - 32))
      {
        v23 = sub_2454460B8(a1, 0, 0xFFFFFFF, *(v19 + v22 - 28));
        if (v23)
        {
          v6 = v23;
          v24 = *(a1 + 8);
          v25 = *(a1 + 12);
          goto LABEL_86;
        }
      }

      v26 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v26, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_CellMeasuredResults_modeSpecificInfo", buf, 2u);
      }

      v27 = sub_2454460B8(a1, 0, 1, *(v19 + v22 - 24));
      if (v27)
      {
        v6 = v27;
        v28 = *(a1 + 8);
        v29 = *(a1 + 12);
LABEL_82:
        sub_245445D98(v27, v28, v29, "asn1PE_CellMeasuredResults_modeSpecificInfo");
        goto LABEL_83;
      }

      v30 = *(v19 + v22 - 24);
      if (v30 == 255)
      {
        v6 = 1;
        *(a1 + 16) = 1;
        v37 = *(a1 + 8);
        v38 = *(a1 + 12);
        v39 = 1;
        goto LABEL_56;
      }

      if (v30 != 1)
      {
        if (*(v19 + v22 - 24))
        {
          v6 = 4;
          *(a1 + 16) = 4;
          v37 = *(a1 + 8);
          v38 = *(a1 + 12);
          v39 = 4;
LABEL_56:
          sub_245445D98(v39, v37, v38, "asn1PE_CellMeasuredResults_modeSpecificInfo");
          goto LABEL_81;
        }

        v31 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v31, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_CellMeasuredResults_modeSpecificInfo_fdd", buf, 2u);
        }

        sub_245445FB0(a1, *(v19 + v22 - 16));
        v6 = *(a1 + 16);
        if (*(a1 + 16))
        {
          sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_fdd");
          v32 = qword_2813CF018;
          if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_81;
          }

LABEL_48:
          *buf = 0;
          v33 = v32;
          v34 = "#gpsd,#supl Leaving asn1PE_CellMeasuredResults_modeSpecificInfo_fdd, encode BOOL failed";
LABEL_80:
          _os_log_debug_impl(&dword_245396000, v33, OS_LOG_TYPE_DEBUG, v34, buf, 2u);
          goto LABEL_81;
        }

        sub_245445FB0(a1, *(v19 + v22 - 12));
        v6 = *(a1 + 16);
        if (*(a1 + 16))
        {
          sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_fdd");
          v32 = qword_2813CF018;
          if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_81;
          }

          goto LABEL_48;
        }

        sub_245445FB0(a1, *(v19 + v22 - 8));
        v6 = *(a1 + 16);
        if (*(a1 + 16))
        {
          sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_fdd");
          v40 = qword_2813CF018;
          if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_81;
          }

          *buf = 0;
          v33 = v40;
          v34 = "#gpsd,#supl Leaving asn1PE_CellMeasuredResults_modeSpecificInfo_fdd, encode CPICH_info failed";
          goto LABEL_80;
        }

        v65 = v19 + v22;
        v41 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v41, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_PrimaryCPICH_Info", buf, 2u);
        }

        v42 = sub_2454460B8(a1, 0, 511, *(v19 + v22 - 4));
        v6 = v42;
        if (v42)
        {
          sub_245445D98(v42, *(a1 + 8), *(a1 + 12), "asn1PE_PrimaryCPICH_Info");
        }

        v43 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v43, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_PrimaryCPICH_Info", buf, 2u);
          if (v6)
          {
LABEL_78:
            sub_245445D98(v6, *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_fdd");
            v44 = qword_2813CF018;
            if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_81;
            }

            *buf = 0;
            v33 = v44;
            v34 = "#gpsd,#supl Leaving asn1PE_CellMeasuredResults_modeSpecificInfo_fdd, encode cpich_ec_n0 failed";
            goto LABEL_80;
          }
        }

        else if (v6)
        {
          goto LABEL_78;
        }

        if (*(v19 + v22 - 16))
        {
          v53 = sub_245462814(a1, (v19 + v22 - 2));
          if (v53)
          {
            v6 = v53;
            sub_245445D98(v53, *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_fdd");
            v54 = qword_2813CF018;
            if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_81;
            }

            *buf = 0;
            v33 = v54;
            v34 = "#gpsd,#supl Leaving asn1PE_CellMeasuredResults_modeSpecificInfo_fdd, encode cpich_rsrp failed";
            goto LABEL_80;
          }
        }

        if (*(v65 - 12))
        {
          v55 = sub_245462904(a1, (v19 + v22));
          if (v55)
          {
            v6 = v55;
            v56 = *(a1 + 8);
            v57 = *(a1 + 12);
            goto LABEL_120;
          }
        }

        if (*(v65 - 8))
        {
          v55 = sub_2454629F4(a1, (v19 + v22 + 2));
          v6 = v55;
          if (v55)
          {
            v56 = *(a1 + 8);
            v57 = *(a1 + 12);
LABEL_120:
            sub_245445D98(v55, v56, v57, "asn1PE_CellMeasuredResults_modeSpecificInfo_fdd");
          }
        }

        else
        {
          v6 = 0;
        }

        v58 = qword_2813CF018;
        if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_123;
        }

        *buf = 0;
        v59 = v58;
        v60 = "#gpsd,#supl Leaving asn1PE_CellMeasuredResults_modeSpecificInfo_fdd";
        goto LABEL_132;
      }

      v35 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v35, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_CellMeasuredResults_modeSpecificInfo_tdd", buf, 2u);
      }

      sub_245445FB0(a1, *(v19 + v22 + 8));
      v6 = *(a1 + 16);
      if (*(a1 + 16))
      {
        sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_tdd");
        v36 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_71;
        }

LABEL_81:
        v28 = *(a1 + 8);
        v29 = *(a1 + 12);
        LODWORD(v27) = v6;
        goto LABEL_82;
      }

      v66 = v19 + v22;
      sub_245445FB0(a1, *(v19 + v22 + 12));
      v6 = *(a1 + 16);
      if (*(a1 + 16))
      {
        sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_tdd");
        v36 = qword_2813CF018;
        if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_81;
        }

        goto LABEL_71;
      }

      sub_245445FB0(a1, *(v66 + 16));
      v6 = *(a1 + 16);
      if (*(a1 + 16))
      {
        sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_tdd");
        v36 = qword_2813CF018;
        if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_81;
        }

LABEL_71:
        *buf = 0;
        v33 = v36;
        v34 = "#gpsd,#supl Leaving asn1PE_CellMeasuredResults_modeSpecificInfo_tdd";
        goto LABEL_80;
      }

      v64 = v19 + v22;
      sub_245445FB0(a1, *(v19 + v22 + 20));
      v6 = *(a1 + 16);
      if (*(a1 + 16))
      {
        sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_tdd");
        v36 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_71;
        }

        goto LABEL_81;
      }

      v46 = sub_245462AE4(a1, (v64 + 24));
      v6 = v46;
      if (v46 || !*(v19 + v22 + 8))
      {
        sub_245445D98(v46, *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_tdd");
        v52 = qword_2813CF018;
        if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_123;
        }
      }

      else
      {
        v47 = sub_245462BD4(a1, (v19 + v22 + 25));
        v6 = v47;
        if (v47 || !*(v66 + 12))
        {
          sub_245445D98(v47, *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_tdd");
          v52 = qword_2813CF018;
          if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_123;
          }
        }

        else
        {
          v48 = sub_245462CC4(a1, (v19 + v22 + 26));
          v6 = v48;
          if (!v48 && *(v66 + 16))
          {
            v49 = sub_2454629F4(a1, (v19 + v22 + 28));
            v6 = v49;
            if (v49 || !*(v64 + 20))
            {
              v50 = *(a1 + 8);
              v51 = *(a1 + 12);
LABEL_128:
              sub_245445D98(v49, v50, v51, "asn1PE_CellMeasuredResults_modeSpecificInfo_tdd");
            }

            else
            {
              v49 = sub_245462DB4(a1, (v19 + v22 + 32));
              v6 = v49;
              if (v49)
              {
                v50 = *(a1 + 8);
                v51 = *(a1 + 12);
                goto LABEL_128;
              }
            }

            v52 = qword_2813CF018;
            if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_123;
            }

            goto LABEL_130;
          }

          sub_245445D98(v48, *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults_modeSpecificInfo_tdd");
          v52 = qword_2813CF018;
          if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_123;
          }
        }
      }

LABEL_130:
      *buf = 0;
      v59 = v52;
      v60 = "#gpsd,#supl Leaving asn1PE_CellMeasuredResults_modeSpecificInfo_tdd";
LABEL_132:
      _os_log_debug_impl(&dword_245396000, v59, OS_LOG_TYPE_DEBUG, v60, buf, 2u);
LABEL_123:
      if (v6)
      {
        goto LABEL_81;
      }

LABEL_83:
      v45 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        if (!v6)
        {
          goto LABEL_87;
        }

LABEL_85:
        v24 = *(a1 + 8);
        v25 = *(a1 + 12);
        LODWORD(v23) = v6;
LABEL_86:
        sub_245445D98(v23, v24, v25, "asn1PE_CellMeasuredResults");
        goto LABEL_87;
      }

      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v45, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_CellMeasuredResults_modeSpecificInfo", buf, 2u);
      if (v6)
      {
        goto LABEL_85;
      }

LABEL_87:
      v20 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v20, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_CellMeasuredResults", buf, 2u);
        v20 = qword_2813CF018;
        if (v6)
        {
          goto LABEL_138;
        }
      }

      else if (v6)
      {
        goto LABEL_138;
      }

      ++v21;
      v19 = *(v11 + 32);
      v22 += 88;
      if (v21 >= 0x2E8BA2E8BA2E8BA3 * ((*(v11 + 40) - v19) >> 3))
      {
        goto LABEL_133;
      }
    }

    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResults");
    v61 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v61, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_CellMeasuredResults", buf, 2u);
    }

LABEL_138:
    sub_245445D98(v6, *(a1 + 8), *(a1 + 12), "asn1PE_CellMeasuredResultsList");
    v18 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
LABEL_139:
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v18, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_CellMeasuredResultsList", buf, 2u);
    }

LABEL_140:
    sub_245445D98(v6, *(a1 + 8), *(a1 + 12), "asn1PE_MeasuredResults");
LABEL_141:
    v9 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_MeasuredResults", buf, 2u);
      v9 = qword_2813CF018;
    }

    if (v6)
    {
      goto LABEL_161;
    }

    ++v10;
    v8 = *a2;
  }

  while (v10 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
LABEL_148:
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_MeasuredResultsList", buf, 2u);
  }

  return 0;
}

uint64_t sub_2454640E4(uint64_t a1, uint64_t a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_WcdmaCellInformation", v14, 2u);
  }

  sub_245445FB0(a1, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_WcdmaCellInformation");
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
LABEL_24:
      _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_WcdmaCellInformation", v14, 2u);
    }
  }

  else
  {
    sub_245445FB0(a1, *a2);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_WcdmaCellInformation");
      v6 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      sub_245445FB0(a1, *(a2 + 4));
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_WcdmaCellInformation");
        v6 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *v14 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        sub_245445FB0(a1, *(a2 + 8));
        v5 = *(a1 + 16);
        if (*(a1 + 16))
        {
          sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_WcdmaCellInformation");
          v6 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            *v14 = 0;
            goto LABEL_24;
          }
        }

        else
        {
          v7 = sub_2454460B8(a1, 0, 999, *(a2 + 12));
          if (v7)
          {
            v5 = v7;
            sub_245445D98(v7, *(a1 + 8), *(a1 + 12), "asn1PE_WcdmaCellInformation");
            v6 = qword_2813CF018;
            if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
            {
              *v14 = 0;
              goto LABEL_24;
            }
          }

          else
          {
            v8 = sub_2454460B8(a1, 0, 999, *(a2 + 14));
            if (v8)
            {
              v5 = v8;
              sub_245445D98(v8, *(a1 + 8), *(a1 + 12), "asn1PE_WcdmaCellInformation");
              v6 = qword_2813CF018;
              if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
              {
                *v14 = 0;
                goto LABEL_24;
              }
            }

            else
            {
              v9 = sub_2454460B8(a1, 0, 0xFFFFFFF, *(a2 + 16));
              if (v9)
              {
                v5 = v9;
                sub_245445D98(v9, *(a1 + 8), *(a1 + 12), "asn1PE_WcdmaCellInformation");
                v6 = qword_2813CF018;
                if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
                {
                  *v14 = 0;
                  goto LABEL_24;
                }
              }

              else
              {
                if (*a2)
                {
                  v11 = sub_24546237C(a1, (a2 + 20));
                  if (v11)
                  {
                    v5 = v11;
                    sub_245445D98(v11, *(a1 + 8), *(a1 + 12), "asn1PE_WcdmaCellInformation");
                    v6 = qword_2813CF018;
                    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
                    {
                      return v5;
                    }

                    *v14 = 0;
                    goto LABEL_24;
                  }
                }

                if (*(a2 + 4))
                {
                  v12 = sub_2454460B8(a1, 0, 511, *(a2 + 36));
                  if (v12)
                  {
                    v5 = v12;
                    sub_245445D98(v12, *(a1 + 8), *(a1 + 12), "asn1PE_WcdmaCellInformation");
                    v6 = qword_2813CF018;
                    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
                    {
                      return v5;
                    }

                    *v14 = 0;
                    goto LABEL_24;
                  }
                }

                if (*(a2 + 8))
                {
                  v13 = sub_24546300C(a1, (a2 + 40));
                  v5 = v13;
                  if (v13)
                  {
                    sub_245445D98(v13, *(a1 + 8), *(a1 + 12), "asn1PE_WcdmaCellInformation");
                  }
                }

                else
                {
                  v5 = 0;
                }

                v6 = qword_2813CF018;
                if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
                {
                  *v14 = 0;
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t sub_24546450C(uint64_t a1, uint64_t *a2)
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v18 = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_NMR", v18, 2u);
  }

  v5 = sub_2454460B8(a1, 1, 15, -1431655765 * ((a2[1] - *a2) >> 2));
  if (v5)
  {
    v6 = v5;
    sub_245445D98(v5, *(a1 + 8), *(a1 + 12), "asn1PE_NMR");
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 0;
LABEL_31:
      _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_NMR", v18, 2u);
    }
  }

  else
  {
    v8 = *a2;
    v9 = qword_2813CF018;
    if (a2[1] == *a2)
    {
LABEL_21:
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 0;
        _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_NMR", v18, 2u);
      }

      return 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *v18 = 0;
          _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Entered asn1PE_NMRelement", v18, 2u);
        }

        sub_245445FB0(a1, 0);
        v6 = *(a1 + 16);
        if (*(a1 + 16))
        {
          sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PE_NMRelement");
          v16 = qword_2813CF018;
          if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_29;
          }

          *v18 = 0;
          goto LABEL_34;
        }

        v12 = sub_2454460B8(a1, 0, 1023, *(v8 + v10));
        if (v12)
        {
          v6 = v12;
          sub_245445D98(v12, *(a1 + 8), *(a1 + 12), "asn1PE_NMRelement");
          v16 = qword_2813CF018;
          if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_29;
          }

          *v18 = 0;
          goto LABEL_34;
        }

        v13 = v8 + v10;
        v14 = sub_2454460B8(a1, 0, 63, *(v13 + 4));
        if (v14)
        {
          break;
        }

        v15 = sub_2454460B8(a1, 0, 63, *(v13 + 8));
        v6 = v15;
        if (v15)
        {
          sub_245445D98(v15, *(a1 + 8), *(a1 + 12), "asn1PE_NMRelement");
        }

        v9 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *v18 = 0;
          _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_NMRelement", v18, 2u);
          v9 = qword_2813CF018;
          if (v6)
          {
            goto LABEL_29;
          }
        }

        else if (v6)
        {
          goto LABEL_29;
        }

        ++v11;
        v8 = *a2;
        v10 += 12;
        if (v11 >= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2))
        {
          goto LABEL_21;
        }
      }

      v6 = v14;
      sub_245445D98(v14, *(a1 + 8), *(a1 + 12), "asn1PE_NMRelement");
      v16 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      *v18 = 0;
LABEL_34:
      _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving asn1PE_NMRelement", v18, 2u);
LABEL_29:
      sub_245445D98(v6, *(a1 + 8), *(a1 + 12), "asn1PE_NMR");
      v7 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 0;
        goto LABEL_31;
      }
    }
  }

  return v6;
}

uint64_t sub_2454648D4(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_15:
    sub_245445D98(v7, v5, v6, "asn1PE_GsmCellInformation");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  sub_245445FB0(a1, *(a2 + 4));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  v7 = sub_2454460B8(a1, 0, 999, *(a2 + 8));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = sub_2454460B8(a1, 0, 999, *(a2 + 10));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = sub_2454460B8(a1, 0, 0xFFFF, *(a2 + 12));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = sub_2454460B8(a1, 0, 0xFFFF, *(a2 + 14));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v7 = sub_24546450C(a1, (a2 + 16));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!*(a2 + 4))
  {
    return 0;
  }

  v7 = sub_2454460B8(a1, 0, 255, *(a2 + 40));
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  return v4;
}

uint64_t sub_245464AB8(uint64_t a1)
{
  if (*a1 == 4)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      v9 = (v2 + 144);
      sub_245465550(&v9);
      v3 = *(v2 + 112);
      if (v3)
      {
        *(v2 + 120) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 80);
      if (v4)
      {
        *(v2 + 88) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 56);
      if (v5)
      {
        *(v2 + 64) = v5;
        operator delete(v5);
      }

      v6 = *(v2 + 32);
      if (v6)
      {
        *(v2 + 40) = v6;
        operator delete(v6);
      }

      MEMORY[0x245D6A0D0](v2, 0x1030C40753A10ABLL);
      *(a1 + 144) = 0;
    }
  }

  v9 = (a1 + 96);
  sub_245465670(&v9);
  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_245464B84(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  sub_245445FB0(a1, v4 == 4);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_3;
  }

  if (v4 != 4)
  {
    v8 = sub_2454460B8(a1, 0, 2, *a2 - 1);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v10 = *a2;
    if (v10 <= 1)
    {
      if (!*a2)
      {
        v5 = 1;
        *(a1 + 16) = 1;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        v14 = 1;
        goto LABEL_26;
      }

      if (v10 != 1)
      {
LABEL_25:
        v5 = 4;
        *(a1 + 16) = 4;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        v14 = 4;
        goto LABEL_26;
      }

      v11 = sub_2454648D4(a1, (a2 + 8));
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v5 = 1;
        *(a1 + 16) = 1;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        v14 = 1;
LABEL_26:
        sub_245445D98(v14, v12, v13, "asn1PE_CellInfo");
LABEL_27:
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(v8) = v5;
        goto LABEL_3;
      }

      v11 = sub_2454640E4(a1, (a2 + 56));
    }

    v5 = v11;
    if (!v11)
    {
      return v5;
    }

    goto LABEL_27;
  }

  if (*(a2 + 18))
  {
    v8 = sub_24544299C(a1, a2);
    v5 = v8;
    if (!v8)
    {
      return v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v5 = 1;
    LODWORD(v8) = 1;
  }

LABEL_3:
  sub_245445D98(v8, v6, v7, "asn1PE_CellInfo");
  return v5;
}

uint64_t sub_245464D48(uint64_t a1, unsigned __int8 *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_7:
    sub_245445D98(v7, v5, v6, "asn1PE_LocationId");
    return v4;
  }

  v7 = sub_245464B84(a1, a2);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  v7 = sub_245462144(a1, a2 + 152);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_245464DF4(uint64_t a1, unsigned __int8 *a2)
{
  v63[1] = *MEMORY[0x277D85DE8];
  if (*a1 == 4)
  {
    v4 = *(a1 + 144);
    if (v4)
    {
      v63[0] = (v4 + 144);
      sub_245465550(v63);
      v5 = *(v4 + 112);
      if (v5)
      {
        *(v4 + 120) = v5;
        operator delete(v5);
      }

      v6 = *(v4 + 80);
      if (v6)
      {
        *(v4 + 88) = v6;
        operator delete(v6);
      }

      v7 = *(v4 + 56);
      if (v7)
      {
        *(v4 + 64) = v7;
        operator delete(v7);
      }

      v8 = *(v4 + 32);
      if (v8)
      {
        *(v4 + 40) = v8;
        operator delete(v8);
      }

      MEMORY[0x245D6A0D0](v4, 0x1030C40753A10ABLL);
      *(a1 + 144) = 0;
    }
  }

  v9 = *a2;
  *a1 = v9;
  if (v9 <= 1)
  {
    if (!v9)
    {
      v50 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      v63[0] = 0x20304000100;
      goto LABEL_67;
    }

    *(a1 + 8) = *(a2 + 8);
    if (a1 != a2)
    {
      v26 = *(a1 + 24);
      v27 = *(a2 + 3);
      v28 = *(a2 + 4);
      v29 = v28 - v27;
      v30 = *(a1 + 40);
      if (v30 - v26 < (v28 - v27))
      {
        v31 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 2);
        if (v26)
        {
          *(a1 + 32) = v26;
          operator delete(v26);
          v30 = 0;
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
        }

        if (v31 <= 0x1555555555555555)
        {
          v32 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 2);
          v33 = 2 * v32;
          if (2 * v32 <= v31)
          {
            v33 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 2);
          }

          if (v32 >= 0xAAAAAAAAAAAAAAALL)
          {
            v34 = 0x1555555555555555;
          }

          else
          {
            v34 = v33;
          }

          if (v34 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_2453A631C();
        }

        sub_2453A631C();
      }

      v51 = *(a1 + 32);
      v52 = v51 - v26;
      if (v51 - v26 >= v29)
      {
        if (v28 != v27)
        {
          memmove(*(a1 + 24), *(a2 + 3), v28 - v27);
        }

        v54 = &v26[v29];
      }

      else
      {
        v53 = &v27[v52];
        if (v51 != v26)
        {
          memmove(*(a1 + 24), *(a2 + 3), v52);
          v51 = *(a1 + 32);
        }

        if (v28 != v53)
        {
          memmove(v51, v53, v28 - v53);
        }

        v54 = &v51[v28 - v53];
      }

      *(a1 + 32) = v54;
    }

    *(a1 + 48) = a2[48];
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v10 = operator new(0xA8uLL, MEMORY[0x277D826F0]);
          if (v10)
          {
            v11 = v10;
            *(v10 + 1) = 0;
            v12 = v10 + 8;
            *(v10 + 2) = 0u;
            v13 = v10 + 32;
            *(v11 + 18) = 0;
            *(v11 + 19) = 0;
            *(v11 + 20) = 0;
            *(v11 + 2) = 0;
            *(v11 + 6) = 0;
            *(v11 + 3) = 0u;
            *(v11 + 4) = 0u;
            *(v11 + 5) = 0u;
            *(v11 + 90) = 0u;
            *(v11 + 15) = 0;
            *(v11 + 16) = 0;
            *(v11 + 14) = 0;
            *(v11 + 34) = 0;
            *v11 = -1;
            *(a1 + 144) = v11;
            v14 = *(a2 + 18);
            if (v14)
            {
              *v11 = *v14;
              *v12 = *(v14 + 8);
              *(v11 + 6) = *(v14 + 24);
              if (v11 != v14)
              {
                sub_2453ADF3C(v13, *(v14 + 32), *(v14 + 40), *(v14 + 40) - *(v14 + 32));
                sub_2453ADF3C(v11 + 7, *(v14 + 56), *(v14 + 64), *(v14 + 64) - *(v14 + 56));
                sub_2453ADF3C(v11 + 10, *(v14 + 80), *(v14 + 88), *(v14 + 88) - *(v14 + 80));
                v14 = *(a2 + 18);
                v11 = *(a1 + 144);
              }

              *(v11 + 52) = *(v14 + 104);
              if (v11 != v14)
              {
                sub_2453ADF3C(v11 + 14, *(v14 + 112), *(v14 + 120), *(v14 + 120) - *(v14 + 112));
                v14 = *(a2 + 18);
                v11 = *(a1 + 144);
              }

              v11[136] = *(v14 + 136);
              *(*(a1 + 144) + 137) = *(*(a2 + 18) + 137);
              v15 = *(a2 + 18);
              v16 = *(a1 + 144);
              *(v16 + 138) = *(v15 + 138);
              if (v16 != v15)
              {
                v18 = (v16 + 144);
                v17 = *(v16 + 144);
                v20 = *(v15 + 144);
                v19 = *(v15 + 152);
                v21 = v19 - v20;
                v22 = *(v16 + 160);
                if (v22 - v17 < (v19 - v20))
                {
                  v23 = v21 >> 7;
                  if (v17)
                  {
                    sub_2454655A4(v16 + 144, *(v16 + 144));
                    operator delete(*v18);
                    v22 = 0;
                    *v18 = 0;
                    *(v16 + 152) = 0;
                    *(v16 + 160) = 0;
                  }

                  if (!(v23 >> 57))
                  {
                    v24 = v22 >> 6;
                    if (v22 >> 6 <= v23)
                    {
                      v24 = v23;
                    }

                    if (v22 >= 0x7FFFFFFFFFFFFF80)
                    {
                      v25 = 0x1FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v25 = v24;
                    }

                    if (!(v25 >> 57))
                    {
                      sub_245465AD8(v16 + 144, v25);
                    }

                    sub_2453A631C();
                  }

                  sub_2453A631C();
                }

                v61 = *(v16 + 152) - v17;
                if (v61 >= v21)
                {
                  v62 = sub_2454659F8(v20, v19, v17);
                  sub_2454655A4(v16 + 144, v62);
                }

                else
                {
                  sub_2454659F8(v20, (v20 + v61), v17);
                  *(v16 + 152) = sub_245465790(v16 + 144, (v20 + v61), v19, *(v16 + 152));
                }
              }
            }
          }

          else
          {
            *(a1 + 144) = 0;
          }
        }

        goto LABEL_82;
      }

      v50 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      v63[0] = 0x20304000100;
LABEL_67:
      _os_log_error_impl(&dword_245396000, v50, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v63, 8u);
      goto LABEL_82;
    }

    v35 = *(a2 + 7);
    v36 = *(a2 + 16);
    *(a1 + 64) = v36;
    *(a1 + 56) = v35;
    *(a1 + 68) = *(a2 + 17);
    *(a1 + 72) = *(a2 + 18);
    *(a1 + 76) = *(a2 + 76);
    *(a1 + 92) = *(a2 + 46);
    if (a1 != a2 && v36 == 1)
    {
      v37 = (a1 + 96);
      v38 = *(a1 + 96);
      v40 = *(a2 + 12);
      v39 = *(a2 + 13);
      v41 = v39 - v40;
      v42 = *(a1 + 112);
      if (v42 - v38 < (v39 - v40))
      {
        v43 = 0x6DB6DB6DB6DB6DB7 * (v41 >> 3);
        if (v38)
        {
          v44 = *(a1 + 104);
          v45 = *(a1 + 96);
          if (v44 != v38)
          {
            do
            {
              v46 = v44 - 56;
              v63[0] = (v44 - 24);
              sub_2454656EC(v63);
              v44 = v46;
            }

            while (v46 != v38);
            v45 = *v37;
          }

          *(a1 + 104) = v38;
          operator delete(v45);
          v42 = 0;
          *v37 = 0;
          *(a1 + 104) = 0;
          *(a1 + 112) = 0;
        }

        if (v43 <= 0x492492492492492)
        {
          v47 = 0x6DB6DB6DB6DB6DB7 * (v42 >> 3);
          v48 = 2 * v47;
          if (2 * v47 <= v43)
          {
            v48 = v43;
          }

          if (v47 >= 0x249249249249249)
          {
            v49 = 0x492492492492492;
          }

          else
          {
            v49 = v48;
          }

          if (v49 <= 0x492492492492492)
          {
            operator new();
          }

          sub_2453A631C();
        }

        sub_2453A631C();
      }

      v55 = *(a1 + 104) - v38;
      if (v55 >= v41)
      {
        v58 = sub_245465E50(v40, v39, *(a1 + 96));
        v59 = *(a1 + 104);
        if (v59 != v58)
        {
          do
          {
            v60 = v59 - 56;
            v63[0] = (v59 - 24);
            sub_2454656EC(v63);
            v59 = v60;
          }

          while (v60 != v58);
        }

        *(a1 + 104) = v58;
      }

      else
      {
        sub_245465E50(v40, (v40 + v55), *(a1 + 96));
        *(a1 + 104) = sub_245465B20(a1 + 96, (v40 + v55), v39, *(a1 + 104));
      }
    }
  }

LABEL_82:
  v56 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_245465550(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2454655A4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2454655A4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 128)
  {
    v5 = *(i - 40);
    if (v5)
    {
      *(i - 32) = v5;
      operator delete(v5);
    }

    v6 = *(i - 64);
    if (v6)
    {
      *(i - 56) = v6;
      operator delete(v6);
    }

    v7 = *(i - 88);
    if (v7)
    {
      *(i - 80) = v7;
      operator delete(v7);
    }

    v8 = *(i - 112);
    if (v8)
    {
      *(i - 104) = v8;
      operator delete(v8);
    }
  }

  *(a1 + 8) = a2;
}

void *sub_24546562C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_245465670(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 56;
        v7 = (v4 - 24);
        sub_2454656EC(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_2454656EC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_245465740(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_245465740(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 88)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_245465790(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 4) = *(v6 + 2);
      *v4 = v7;
      v8 = v6[2];
      *(v4 + 16) = 0;
      *(v4 + 8) = v8;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      sub_2454658EC(v4 + 16, *(v6 + 2), *(v6 + 3), *(v6 + 3) - *(v6 + 2));
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      sub_2454658EC(v4 + 40, *(v6 + 5), *(v6 + 6), *(v6 + 6) - *(v6 + 5));
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      sub_2453AE4E0(v4 + 64, *(v6 + 8), *(v6 + 9), *(v6 + 9) - *(v6 + 8));
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      sub_2453AE4E0(v4 + 88, *(v6 + 11), *(v6 + 12), *(v6 + 12) - *(v6 + 11));
      v9 = *(v6 + 14);
      *(v4 + 120) = v6[30];
      *(v4 + 112) = v9;
      v6 += 32;
      v4 = v14 + 128;
      v14 += 128;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_245465968(v11);
  return v4;
}

uint64_t sub_2454658EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2453A62CC(result, a4);
  }

  return result;
}

void sub_24546594C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245465968(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 40);
      if (v5)
      {
        *(v3 - 32) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 64);
      if (v6)
      {
        *(v3 - 56) = v6;
        operator delete(v6);
      }

      v7 = *(v3 - 88);
      if (v7)
      {
        *(v3 - 80) = v7;
        operator delete(v7);
      }

      v8 = *(v3 - 112);
      if (v8)
      {
        *(v3 - 104) = v8;
        operator delete(v8);
      }

      v3 -= 128;
    }
  }

  return a1;
}

uint64_t sub_2454659F8(int *a1, int *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = 0;
    v6 = a1 + 12;
    do
    {
      v7 = a3 + v5 * 4;
      v8 = &v6[v5];
      v10 = &v6[v5 - 12];
      v9 = *v10;
      *(v7 + 4) = v6[v5 - 11];
      *v7 = v9;
      *(v7 + 8) = v6[v5 - 10];
      if ((a3 + v5 * 4) != v10)
      {
        sub_2453ADF3C((v7 + 16), *(v8 - 4), *(v8 - 3), *(v8 - 3) - *(v8 - 4));
        sub_2453ADF3C((v7 + 40), *(v8 - 1), *v8, *v8 - *(v8 - 1));
        sub_2453ADF3C((v7 + 64), v8[2], v8[3], v8[3] - v8[2]);
        sub_2453ADF3C((v7 + 88), v8[5], v8[6], v8[6] - v8[5]);
      }

      v11 = *&v6[v5 + 16];
      *(v7 + 120) = v6[v5 + 18];
      *(v7 + 112) = v11;
      v5 += 32;
    }

    while (v10 + 32 != a2);
    a3 += v5 * 4;
  }

  return a3;
}

void sub_245465AD8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_2453AABB4();
}

uint64_t sub_245465B20(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      *(a4 + 13) = *(v5 + 13);
      *a4 = v6;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      v7 = *(v5 + 4);
      v8 = *(v5 + 5);
      if (v8 != v7)
      {
        sub_245465C38(a4 + 32, 0x2E8BA2E8BA2E8BA3 * ((v8 - v7) >> 3));
      }

      v5 = (v5 + 56);
      a4 += 56;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_245465C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  sub_2454656EC(&a15);
  sub_245465DE0(&a9);
  _Unwind_Resume(a1);
}

void sub_245465C38(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_2453A631C();
}

uint64_t sub_245465CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      v7 = *(v6 + 16);
      *(v4 + 32) = *(v6 + 32);
      *(v4 + 16) = v7;
      v8 = *(v6 + 40);
      v9 = *(v6 + 53);
      *(v4 + 64) = 0;
      v10 = v4 + 64;
      *(v10 - 11) = v9;
      *(v10 - 24) = v8;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      sub_2453AE4E0(v10, *(v6 + 64), *(v6 + 72), *(v6 + 72) - *(v6 + 64));
      v6 += 88;
      v4 = v15 + 88;
      v15 += 88;
    }

    while (v6 != a3);
  }

  v13 = 1;
  sub_245465D80(v12);
  return v4;
}

uint64_t sub_245465D80(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    for (i = **(a1 + 16); i != v3; i -= 88)
    {
      v5 = *(i - 24);
      if (v5)
      {
        *(i - 16) = v5;
        operator delete(v5);
      }
    }
  }

  return a1;
}

uint64_t sub_245465DE0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v4 = v3 - 56;
        v6 = (v3 - 24);
        sub_2454656EC(&v6);
        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

uint64_t sub_245465E50(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 13) = *(v5 + 13);
      *a3 = v6;
      if (a3 != v5)
      {
        v8 = (a3 + 32);
        v7 = *(a3 + 32);
        v10 = *(v5 + 4);
        v9 = *(v5 + 5);
        v11 = v9 - v10;
        v12 = *(a3 + 48);
        if (v12 - v7 < (v9 - v10))
        {
          if (v7)
          {
            sub_245465740((a3 + 32));
            operator delete(*v8);
            v12 = 0;
            *v8 = 0;
            *(a3 + 40) = 0;
            *(a3 + 48) = 0;
          }

          v13 = 0x2E8BA2E8BA2E8BA3 * (v11 >> 3);
          if (v13 <= 0x2E8BA2E8BA2E8BALL)
          {
            v14 = 0x2E8BA2E8BA2E8BA3 * (v12 >> 3);
            if (2 * v14 > v13)
            {
              v13 = 2 * v14;
            }

            if (v14 >= 0x1745D1745D1745DLL)
            {
              v15 = 0x2E8BA2E8BA2E8BALL;
            }

            else
            {
              v15 = v13;
            }

            sub_245465C38(a3 + 32, v15);
          }

          sub_2453A631C();
        }

        v16 = *(a3 + 40) - v7;
        if (v16 >= v11)
        {
          v17 = sub_245466014(*(v5 + 4), *(v5 + 5), v7);
          for (i = *(a3 + 40); i != v17; i -= 88)
          {
            v19 = *(i - 24);
            if (v19)
            {
              *(i - 16) = v19;
              operator delete(v19);
            }
          }

          *(a3 + 40) = v17;
        }

        else
        {
          sub_245466014(*(v5 + 4), (v10 + v16), v7);
          *(a3 + 40) = sub_245465CA0(a3 + 32, v10 + v16, v9, *(a3 + 40));
        }
      }

      v5 = (v5 + 56);
      a3 += 56;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_245466014(char **a1, char **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 8;
    do
    {
      v6 = v5 - 8;
      *a3 = *(v5 - 8);
      *(a3 + 8) = *(v5 - 56);
      v7 = *(v5 - 3);
      *(a3 + 31) = *(v5 - 33);
      *(a3 + 16) = v7;
      v8 = *(v5 - 3);
      *(a3 + 53) = *(v5 - 11);
      *(a3 + 40) = v8;
      if (a3 != v5 - 8)
      {
        sub_2453ADF3C((a3 + 64), *v5, v5[1], v5[1] - *v5);
      }

      a3 += 88;
      v5 += 11;
    }

    while (v6 + 11 != a2);
  }

  return a3;
}

unsigned __int16 *sub_2454660B0(unsigned __int16 *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (v2 > 4)
  {
    switch(v2)
    {
      case 5u:
        v6 = *(a1 + 1);
        if (v6)
        {
          sub_245454DA0(v6 + 152);
          v17[0] = (v6 + 120);
          sub_245467100(v17);
          v17[0] = (v6 + 96);
          sub_245467100(v17);
          v7 = *(v6 + 64);
          if (v7)
          {
            *(v6 + 72) = v7;
            operator delete(v7);
          }

          v8 = *(v6 + 40);
          if (v8)
          {
            *(v6 + 48) = v8;
            operator delete(v8);
          }

          v9 = *(v6 + 16);
          if (v9)
          {
            *(v6 + 24) = v9;
            operator delete(v9);
          }

          v10 = 0x1030C40986846DALL;
          goto LABEL_24;
        }

        break;
      case 6u:
        v6 = *(a1 + 1);
        if (v6)
        {
          v11 = *(v6 + 464);
          if (v11)
          {
            *(v6 + 472) = v11;
            operator delete(v11);
          }

          sub_245454DA0(v6 + 96);
          v12 = *(v6 + 24);
          if (v12)
          {
            *(v6 + 32) = v12;
            operator delete(v12);
          }

          v10 = 0x1010C40F88FA712;
LABEL_24:
          v4 = v6;
LABEL_28:
          MEMORY[0x245D6A0D0](v4, v10);
        }

        break;
      case 0xFFFFu:
        goto LABEL_30;
      default:
        goto LABEL_31;
    }

LABEL_29:
    *(a1 + 1) = 0;
    goto LABEL_30;
  }

  if (v2 == 1)
  {
    v13 = *(a1 + 1);
    if (!v13)
    {
      goto LABEL_29;
    }

    v4 = sub_245467004(v13);
    v5 = -861440881;
    goto LABEL_27;
  }

  if (v2 == 4)
  {
    v3 = *(a1 + 1);
    if (!v3)
    {
      goto LABEL_29;
    }

    v4 = sub_245466290(v3);
    v5 = -2009602957;
LABEL_27:
    v10 = v5 | 0x1030C4000000000;
    goto LABEL_28;
  }

LABEL_31:
  v16 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    v17[0] = 0x20304000100;
    _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v17, 8u);
  }

LABEL_30:
  v14 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_245466290(uint64_t a1)
{
  v2 = *(a1 + 1280);
  if (v2)
  {
    *(a1 + 1288) = v2;
    operator delete(v2);
  }

  sub_245454DA0(a1 + 920);
  v9 = (a1 + 888);
  sub_245467100(&v9);
  v9 = (a1 + 864);
  sub_245467100(&v9);
  v3 = *(a1 + 832);
  if (v3)
  {
    *(a1 + 840) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 808);
  if (v4)
  {
    *(a1 + 816) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 784);
  if (v5)
  {
    *(a1 + 792) = v5;
    operator delete(v5);
  }

  sub_245454DA0(a1 + 408);
  v6 = *(a1 + 336);
  if (v6)
  {
    *(a1 + 344) = v6;
    operator delete(v6);
  }

  sub_245464AB8(a1 + 168);
  v7 = *(a1 + 144);
  if (v7)
  {
    *(a1 + 152) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_245466354(uint64_t *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v2 + 16) = 0;
  *(v2 + 8) = 0;
  v3 = *a1;
  v4 = *(*a1 + 8);
  v5 = 0x8000;
  do
  {
    sub_245445FB0(v3, 0);
    v6 = v5 > 1;
    v5 >>= 1;
  }

  while (v6);
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v37[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplMessage::asn1PE_UlpPdu, error in encoding version", v37, 2u);
    }

LABEL_15:
    sub_245445D98(v7, *(*a1 + 8), *(*a1 + 12), "asn1PE_UlpPdu");
    goto LABEL_16;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = sub_2454460B8(*a1, 0, 255, v10[2]);
  if (v11)
  {
    v7 = v11;
    v12 = *(v9 + 8);
    v13 = *(v9 + 12);
    goto LABEL_13;
  }

  v11 = sub_2454460B8(v9, 0, 255, v10[3]);
  if (v11)
  {
    v7 = v11;
    v12 = *(v9 + 8);
    v13 = *(v9 + 12);
    goto LABEL_13;
  }

  v11 = sub_2454460B8(v9, 0, 255, v10[4]);
  if (v11)
  {
    v7 = v11;
    v12 = *(v9 + 8);
    v13 = *(v9 + 12);
LABEL_13:
    sub_245445D98(v11, v12, v13, "asn1PE_Version");
    v14 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v37[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v14, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplMessage::asn1PE_UlpPdu, error in encoding sessionId", v37, 2u);
    }

    goto LABEL_15;
  }

  v17 = sub_245473694(*a1, a1[1] + 24);
  if (v17)
  {
    v7 = v17;
    v18 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v37[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v18, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplMessage::asn1PE_UlpPdu, error in encoding", v37, 2u);
    }

    goto LABEL_15;
  }

  v19 = *a1;
  v20 = a1[1];
  sub_245445FB0(*a1, 0);
  v7 = *(v19 + 16);
  if (*(v19 + 16))
  {
    v21 = *(v19 + 8);
    v22 = *(v19 + 12);
    LODWORD(v23) = *(v19 + 16);
    goto LABEL_41;
  }

  v23 = sub_2454460B8(v19, 0, 7, *(v20 + 8) - 1);
  if (v23)
  {
    v7 = v23;
    v21 = *(v19 + 8);
    v22 = *(v19 + 12);
    goto LABEL_41;
  }

  v24 = *(v20 + 8);
  switch(v24)
  {
    case 6:
      v25 = sub_2454476A8(v19, *(v20 + 16));
      break;
    case 5:
      v25 = sub_24546A3E0(v19, *(v20 + 16));
      break;
    case 4:
      v25 = sub_245467664(v19, *(v20 + 16));
      break;
    default:
      v7 = 1;
      sub_245445D98(1u, *(v19 + 8), *(v19 + 12), "asn1PE_UlpMessage");
      goto LABEL_40;
  }

  v7 = v25;
  if (v25)
  {
LABEL_40:
    v21 = *(v19 + 8);
    v22 = *(v19 + 12);
    LODWORD(v23) = v7;
LABEL_41:
    sub_245445D98(v23, v21, v22, "asn1PE_UlpMessage");
    v34 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v37[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v34, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplMessage::asn1PE_UlpPdu, error in encoding ULP message", v37, 2u);
    }

    goto LABEL_15;
  }

  v26 = *a1;
  v27 = *(*a1 + 8);
  v28 = *(*a1 + 12);
  if (v28)
  {
    v29 = v27 + 1;
  }

  else
  {
    v29 = *(*a1 + 8);
  }

  *a1[1] = v29;
  *(v26 + 8) = v4;
  v7 = sub_2454460B8(v26, 0, 0xFFFF, v29);
  v30 = *a1;
  if (!v7)
  {
    *(v30 + 8) = v27;
    *(v30 + 12) = v28;
  }

  v31 = *v30;
  v32 = *a1[1];
  v33 = *(v31 + 8) - *v31;
  if (v32 <= v33)
  {
    if (v32 < v33)
    {
      *(v31 + 8) = *v31 + v32;
    }
  }

  else
  {
    sub_2453A6334(v31, v32 - v33);
  }

  v35 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v36 = *a1[1];
    v37[0] = 67109120;
    v37[1] = v36;
    _os_log_debug_impl(&dword_245396000, v35, OS_LOG_TYPE_DEBUG, "#gpsd,#supl lengh of encoded message %d", v37, 8u);
  }

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2454667D8(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v2 + 16) = 0;
  *(v2 + 8) = 0;
  v3 = sub_245446218(*a1, 0, 0xFFFFu, *(a1 + 8));
  if (v3)
  {
    v4 = v3;
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplMessage::asn1PD_UlpPdu, decoding version failed", buf, 2u);
    }

LABEL_13:
    sub_245445D98(v4, *(*a1 + 8), *(*a1 + 12), "asn1PD_UlpPdu");
    goto LABEL_14;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = sub_245446150(*a1, 0, 0xFFu, v7 + 2);
  if (v8)
  {
    v4 = v8;
    v9 = *(v6 + 8);
    v10 = *(v6 + 12);
    goto LABEL_11;
  }

  v8 = sub_245446150(v6, 0, 0xFFu, v7 + 3);
  if (v8)
  {
    v4 = v8;
    v9 = *(v6 + 8);
    v10 = *(v6 + 12);
    goto LABEL_11;
  }

  v8 = sub_245446150(v6, 0, 0xFFu, v7 + 4);
  if (v8)
  {
    v4 = v8;
    v9 = *(v6 + 8);
    v10 = *(v6 + 12);
LABEL_11:
    sub_245445D98(v8, v9, v10, "asn1PD_Version");
    v11 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v11, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplMessage::asn1PD_UlpPdu, decoding session ID failed", buf, 2u);
    }

    goto LABEL_13;
  }

  v15 = sub_245473780(*a1, *(a1 + 8) + 24);
  if (v15)
  {
    v4 = v15;
    v16 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplMessage::asn1PD_UlpPdu, decoding ULP message failed", buf, 2u);
    }

    goto LABEL_13;
  }

  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = sub_245446038(*a1);
  v4 = *(v17 + 16);
  if (*(v17 + 16))
  {
LABEL_28:
    v23 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v23, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplMessage::asn1PD_UlpPdu, decoding failed", buf, 2u);
    }

    sub_245445D98(v4, *(*a1 + 8), *(*a1 + 12), "asn1PD_UlpPdu");
    goto LABEL_14;
  }

  if (!v19)
  {
    v51 = 0;
    v20 = sub_2454463A8(v17, 0, 7u, &v51);
    v4 = v20;
    if (v20)
    {
      v21 = *(v17 + 8);
      v22 = *(v17 + 12);
      goto LABEL_27;
    }

    v24 = v51;
    v25 = v51 + 1;
    v26 = *(v18 + 8);
    if (v51 + 1 == v26)
    {
LABEL_59:
      *(v18 + 8) = v25;
      if (v24 == 5)
      {
        v44 = *(v18 + 16);
        if (!v44)
        {
          v45 = operator new(0x1E8uLL, MEMORY[0x277D826F0]);
          if (!v45)
          {
            *(v18 + 16) = 0;
            v50 = qword_2813CF018;
            if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_90;
            }

            *buf = 67109120;
            *&buf[4] = 1537;
            goto LABEL_92;
          }

          v44 = v45;
          *v45 = 0;
          *(v45 + 2) = 0;
          *(v45 + 3) = 0;
          *(v45 + 4) = 0;
          *(v45 + 40) = 0u;
          v45[60] = -1;
          *(v45 + 8) = 0;
          *(v45 + 18) = 0;
          v45[76] = -1;
          *(v45 + 39) = 0;
          v45[80] = 0;
          *(v45 + 14) = 0;
          *(v45 + 11) = 255;
          *(v45 + 4) = 0;
          *(v45 + 59) = 0;
          *(v45 + 60) = 0;
          *(v45 + 58) = 0;
          *(v45 + 6) = 0u;
          *(v45 + 7) = 0u;
          *(v45 + 8) = 0u;
          *(v45 + 9) = 0u;
          *(v45 + 10) = 0u;
          *(v45 + 11) = 0u;
          *(v45 + 12) = 0u;
          *(v45 + 13) = 0u;
          *(v45 + 14) = 0u;
          *(v45 + 15) = 0u;
          *(v45 + 16) = 0u;
          *(v45 + 17) = 0u;
          *(v45 + 18) = 0u;
          *(v45 + 19) = 0u;
          *(v45 + 20) = 0u;
          *(v45 + 21) = 0u;
          *(v45 + 22) = 0u;
          *(v45 + 23) = 0u;
          *(v45 + 24) = 0u;
          *(v45 + 25) = 0u;
          *(v45 + 26) = 0u;
          *(v45 + 27) = 0u;
          *(v45 + 441) = 0u;
          *(v18 + 16) = v45;
        }

        v41 = sub_245447820(v17, v44);
      }

      else
      {
        if (v24 != 4)
        {
          if (v24)
          {
            *(v17 + 16) = 4;
            sub_245445D98(4u, *(v17 + 8), *(v17 + 12), "asn1PD_UlpMessage");
            v4 = 4;
            goto LABEL_84;
          }

          v39 = *(v18 + 16);
          if (v39)
          {
            goto LABEL_65;
          }

          v40 = operator new(0x338uLL, MEMORY[0x277D826F0]);
          if (v40)
          {
            v39 = v40;
            *(v18 + 16) = sub_2454607E8(v40);
LABEL_65:
            v41 = sub_2454608BC(v17, v39);
            goto LABEL_74;
          }

          *(v18 + 16) = 0;
          v50 = qword_2813CF018;
          if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
LABEL_90:
            v4 = 2;
            *(v17 + 16) = 2;
            goto LABEL_28;
          }

          *buf = 67109120;
          *&buf[4] = 1537;
LABEL_92:
          _os_log_error_impl(&dword_245396000, v50, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
          goto LABEL_90;
        }

        v42 = *(v18 + 16);
        if (!v42)
        {
          v43 = operator new(0x200uLL, MEMORY[0x277D826F0]);
          if (!v43)
          {
            *(v18 + 16) = 0;
            v50 = qword_2813CF018;
            if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_90;
            }

            *buf = 67109120;
            *&buf[4] = 1537;
            goto LABEL_92;
          }

          v42 = v43;
          *(v43 + 136) = 0u;
          *(v43 + 120) = 0u;
          *(v43 + 104) = 0u;
          *(v43 + 88) = 0u;
          *(v43 + 72) = 0u;
          *(v43 + 56) = 0u;
          *(v43 + 40) = 0u;
          *(v43 + 24) = 0u;
          *(v43 + 8) = 0u;
          v43[144] = -1;
          *(v43 + 168) = 0u;
          *(v43 + 184) = 0u;
          *(v43 + 200) = 0u;
          *(v43 + 216) = 0u;
          *(v43 + 232) = 0u;
          *(v43 + 248) = 0u;
          *(v43 + 152) = 0u;
          *(v43 + 63) = 0;
          *(v43 + 264) = 0u;
          *(v43 + 280) = 0u;
          *(v43 + 296) = 0u;
          *(v43 + 312) = 0u;
          *(v43 + 328) = 0u;
          *(v43 + 344) = 0u;
          *(v43 + 360) = 0u;
          *(v43 + 376) = 0u;
          *(v43 + 392) = 0u;
          *(v43 + 408) = 0u;
          *(v43 + 424) = 0u;
          *(v43 + 440) = 0u;
          *(v43 + 456) = 0u;
          *(v43 + 472) = 0u;
          *(v43 + 488) = 0u;
          *v43 = 0;
          *(v18 + 16) = v43;
        }

        v41 = sub_24546A48C(v17, v42);
      }

LABEL_74:
      v4 = v41;
      if (!v41)
      {
        goto LABEL_75;
      }

LABEL_84:
      sub_245445D98(v4, *(v17 + 8), *(v17 + 12), "asn1PD_UlpMessage");
      goto LABEL_28;
    }

    if (*(v18 + 8) <= 4u)
    {
      if (v26 != 1)
      {
        if (v26 != 4)
        {
          goto LABEL_59;
        }

        v28 = (v18 + 16);
        v27 = *(v18 + 16);
        if (!v27)
        {
          goto LABEL_58;
        }

        v29 = sub_245466290(v27);
        v30 = -2009602957;
        goto LABEL_47;
      }

      v28 = (v18 + 16);
      v35 = *(v18 + 16);
      if (v35)
      {
        v29 = sub_245467004(v35);
        v30 = -861440881;
LABEL_47:
        v34 = v30 | 0x1030C4000000000;
LABEL_57:
        MEMORY[0x245D6A0D0](v29, v34);
      }

LABEL_58:
      *v28 = 0;
      goto LABEL_59;
    }

    if (v26 == 5)
    {
      v28 = (v18 + 16);
      v31 = *(v18 + 16);
      if (!v31)
      {
        goto LABEL_58;
      }

      sub_245454DA0((v31 + 19));
      *buf = v31 + 15;
      sub_245467100(buf);
      *buf = v31 + 12;
      sub_245467100(buf);
      v36 = v31[8];
      if (v36)
      {
        v31[9] = v36;
        operator delete(v36);
      }

      v37 = v31[5];
      if (v37)
      {
        v31[6] = v37;
        operator delete(v37);
      }

      v38 = v31[2];
      if (v38)
      {
        v31[3] = v38;
        operator delete(v38);
      }

      v34 = 0x1030C40986846DALL;
    }

    else
    {
      if (v26 != 6)
      {
        goto LABEL_59;
      }

      v28 = (v18 + 16);
      v31 = *(v18 + 16);
      if (!v31)
      {
        goto LABEL_58;
      }

      v32 = v31[58];
      if (v32)
      {
        v31[59] = v32;
        operator delete(v32);
      }

      sub_245454DA0((v31 + 12));
      v33 = v31[3];
      if (v33)
      {
        v31[4] = v33;
        operator delete(v33);
      }

      v34 = 0x1010C40F88FA712;
    }

    v29 = v31;
    goto LABEL_57;
  }

  sub_245447070(v17);
  if (v20)
  {
    v4 = v20;
    v21 = *(v17 + 8);
    v22 = *(v17 + 12);
LABEL_27:
    sub_245445D98(v20, v21, v22, "asn1PD_UlpMessage");
    goto LABEL_28;
  }

LABEL_75:
  v47 = *(*a1 + 8);
  v46 = *(*a1 + 12);
  if (v46)
  {
    v48 = v47 + 1;
  }

  else
  {
    v48 = *(*a1 + 8);
  }

  if (v48 == **(a1 + 8))
  {
    v4 = 0;
    goto LABEL_16;
  }

  v49 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v49, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplMessage::asn1PD_UlpPdu, message length check failed", buf, 2u);
    v47 = *(*a1 + 8);
    v46 = *(*a1 + 12);
  }

  sub_245445D98(6u, v47, v46, "asn1PD_UlpPdu");
  v4 = 6;
LABEL_14:
  v12 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 770;
    _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
  }

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

void *sub_245467004(void *a1)
{
  v2 = a1[95];
  if (v2)
  {
    a1[96] = v2;
    operator delete(v2);
  }

  v3 = a1[91];
  if (v3)
  {
    a1[92] = v3;
    operator delete(v3);
  }

  v4 = a1[82];
  if (v4)
  {
    a1[83] = v4;
    operator delete(v4);
  }

  v5 = a1[79];
  if (v5)
  {
    a1[80] = v5;
    operator delete(v5);
  }

  v6 = a1[76];
  if (v6)
  {
    a1[77] = v6;
    operator delete(v6);
  }

  if (a1[49])
  {
    sub_2454418BC(a1 + 49);
    operator delete(a1[49]);
  }

  v7 = a1[32];
  if (v7)
  {
    a1[33] = v7;
    operator delete(v7);
  }

  v8 = a1[29];
  if (v8)
  {
    a1[30] = v8;
    operator delete(v8);
  }

  v9 = a1[22];
  if (v9)
  {
    a1[23] = v9;
    operator delete(v9);
  }

  v10 = a1[19];
  if (v10)
  {
    a1[20] = v10;
    operator delete(v10);
  }

  v11 = a1[16];
  if (v11)
  {
    a1[17] = v11;
    operator delete(v11);
  }

  v12 = a1[10];
  if (v12)
  {
    a1[11] = v12;
    operator delete(v12);
  }

  v13 = a1[6];
  if (v13)
  {
    a1[7] = v13;
    operator delete(v13);
  }

  return a1;
}

void sub_245467100(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_245444754(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_245467154(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2454460B8(a1, 1, 31, (a2[1] - *a2) >> 3);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_14:
    sub_245445D98(v4, v6, v7, "asn1PE_SatelliteInfo");
    return v5;
  }

  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      sub_245445FB0(a1, 0);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        LODWORD(v11) = *(a1 + 16);
        goto LABEL_13;
      }

      v11 = sub_2454460B8(a1, 0, 63, *(v8 + v9));
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_13;
      }

      v11 = sub_2454460B8(a1, 0, 255, *(v8 + v9 + 4));
      if (v11)
      {
        break;
      }

      ++v10;
      v8 = *a2;
      v9 += 8;
      if (v10 >= (a2[1] - *a2) >> 3)
      {
        return 0;
      }
    }

    v5 = v11;
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
LABEL_13:
    sub_245445D98(v11, v12, v13, "asn1PE_SatelliteInfoElement");
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_24546729C(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_13:
    sub_245445D98(v7, v5, v6, "asn1PE_NavigationModel");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  v7 = sub_2454460B8(a1, 0, 1023, *(a2 + 4));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  v7 = sub_2454460B8(a1, 0, 167, *(a2 + 6));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  v7 = sub_2454460B8(a1, 0, 31, *(a2 + 7));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  v7 = sub_2454460B8(a1, 0, 10, *(a2 + 8));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  if (!*a2)
  {
    return 0;
  }

  v7 = sub_245467154(a1, (a2 + 16));
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  return v4;
}

uint64_t sub_24546741C(uint64_t a1, int *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_23:
    sub_245445D98(v7, v5, v6, "asn1PE_RequestedAssistData");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  sub_245445FB0(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  sub_245445FB0(a1, a2[2]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  sub_245445FB0(a1, a2[3]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  sub_245445FB0(a1, a2[4]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  sub_245445FB0(a1, a2[5]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  sub_245445FB0(a1, a2[6]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  sub_245445FB0(a1, a2[7]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  sub_245445FB0(a1, a2[8]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  sub_245445FB0(a1, a2[9]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  if (!*a2)
  {
    return 0;
  }

  return sub_24546729C(a1, (a2 + 10));
}

uint64_t sub_245467664(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_13:
    sub_245445D98(v7, v5, v6, "asn1PE_SUPLPOSINIT");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  sub_245445FB0(a1, *(a2 + 4));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  sub_245445FB0(a1, *(a2 + 8));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  sub_245445FB0(a1, *(a2 + 12));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  v7 = sub_245473BA0(a1, a2 + 16);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  if (*a2)
  {
    v7 = sub_24546741C(a1, (a2 + 88));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  v7 = sub_245464D48(a1, (a2 + 168));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  if (*(a2 + 4))
  {
    v7 = sub_245469E18(a1, (a2 + 328));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  if (*(a2 + 8))
  {
    v7 = sub_24546A3E0(a1, a2 + 768);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  if (!*(a2 + 12))
  {
    return 0;
  }

  return sub_245447488(a1, (a2 + 1280));
}

uint64_t sub_245467884(uint64_t a1)
{
  *a1 = &unk_28585A5C0;
  if (*(a1 + 32) == 5)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      sub_245454DA0(v2 + 152);
      v7 = (v2 + 120);
      sub_245467100(&v7);
      v7 = (v2 + 96);
      sub_245467100(&v7);
      v3 = *(v2 + 64);
      if (v3)
      {
        *(v2 + 72) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 40);
      if (v4)
      {
        *(v2 + 48) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 16);
      if (v5)
      {
        *(v2 + 24) = v5;
        operator delete(v5);
      }

      MEMORY[0x245D6A0D0](v2, 0x1030C40986846DALL);
    }

    *(a1 + 40) = 0;
  }

  return sub_245473D60(a1);
}

void sub_24546795C(uint64_t a1)
{
  sub_245467884(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_24546799C(uint64_t a1)
{
  if (*(a1 + 360))
  {
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::UpdateState, next state Supl_Pos_Recd", buf, 2u);
    }

    v3 = 5;
LABEL_9:
    sub_245473DF8(a1, v3, *(a1 + 8));
    goto LABEL_10;
  }

  if (*(a1 + 20))
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::UpdateState, next state Supl_End_Recd", v5, 2u);
    }

    v3 = 7;
    goto LABEL_9;
  }

LABEL_10:
  *(a1 + 360) = 0;
  *(a1 + 20) = 0;
}

uint64_t sub_245467A7C(uint64_t a1, uint64_t *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (sub_2454745A0(a1, a2))
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, error in processing SUPL message", &__p, 2u);
      v4 = qword_2813CF018;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __p = 0x20304000100;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &__p, 8u);
    }

    v5 = 3;
  }

  else
  {
    v6 = sub_24547473C();
    v7 = *(a1 + 8);
    if (sub_245475B3C(v6, *(v7 + 72), *(a1 + 56)) && sub_245475BF4(v6, (v7 + 80), (a1 + 64)))
    {
      v5 = 0;
      v8 = 0;
    }

    else
    {
      v9 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, SET session ID validation failed", &__p, 2u);
        v9 = qword_2813CF018;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __p = 0x20304000100;
        _os_log_error_impl(&dword_245396000, v9, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &__p, 8u);
      }

      v8 = 1;
      v5 = 12;
    }

    v10 = *(a1 + 8);
    v11 = sub_24547473C();
    v12 = sub_245475A68(v11, a1 + 248, v10 + 264);
    v13 = sub_24547473C();
    v14 = sub_245475608(v13, (a1 + 272), (v10 + 288));
    if (!v12 || !v14)
    {
      v15 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, SLP session ID validation failed", &__p, 2u);
        v15 = qword_2813CF018;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __p = 0x20304000100;
        _os_log_error_impl(&dword_245396000, v15, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &__p, 8u);
      }

      v8 = 1;
      v5 = 12;
    }

    v16 = *(a1 + 26);
    v17 = sub_245445AC4();
    v18 = atomic_load((v17 + 1));
    v19 = v18 == 255;
    v20 = 1;
    if (v19)
    {
      v20 = 2;
    }

    v21 = atomic_load((v17 + v20));
    if (v16 == v21 || *(a1 + 32) != 5)
    {
      if (!v8)
      {
        v28 = *(a1 + 32);
        v29 = qword_2813CF018;
        v30 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG);
        if (v28 == 6)
        {
          if (v30)
          {
            LOWORD(__p) = 0;
            _os_log_debug_impl(&dword_245396000, v29, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, received SUPL END Message", &__p, 2u);
          }

          *(a1 + 20) = 1;
          (*(*a1 + 16))(a1);
          v37 = sub_245471CCC(*(a1 + 8));
          (*(*v37 + 40))(v37, a2);
        }

        else
        {
          if (v28 != 5)
          {
            if (v30)
            {
              LOWORD(__p) = 0;
              _os_log_debug_impl(&dword_245396000, v29, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, received unexpected Message", &__p, 2u);
              v29 = qword_2813CF018;
            }

            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              __p = 0x20204000100;
              _os_log_error_impl(&dword_245396000, v29, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &__p, 8u);
            }

            v5 = 2;
            goto LABEL_32;
          }

          if (v30)
          {
            LOWORD(__p) = 0;
            _os_log_debug_impl(&dword_245396000, v29, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, received SUPL POS Message", &__p, 2u);
          }

          v31 = sub_24547C334();
          v32 = *(*(a1 + 8) + 376);
          v42 = 0;
          v43[0] = 0;
          LODWORD(__p) = v32;
          v44 = -1;
          *&v43[1] = 4;
          v43[3] = 0;
          sub_24547D2BC(v31, &__p);
          v33 = sub_24546A68C();
          v34 = sub_24546A7BC(v33, *(a1 + 40), *(a1 + 8));
          v35 = qword_2813CF018;
          v36 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG);
          if (v34 == -7)
          {
            if (v36)
            {
              LOWORD(__p) = 0;
              _os_log_debug_impl(&dword_245396000, v35, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, ProcessPosPayload returned failure", &__p, 2u);
            }

            v5 = 8;
            goto LABEL_32;
          }

          if (v34)
          {
            if (v36)
            {
              LOWORD(__p) = 0;
              _os_log_debug_impl(&dword_245396000, v35, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, ProcessPosPayload returned failure", &__p, 2u);
            }

            v5 = 0;
            goto LABEL_32;
          }

          if (v36)
          {
            LOWORD(__p) = 0;
            _os_log_debug_impl(&dword_245396000, v35, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, ProcessPosPayload returned success", &__p, 2u);
          }

          *(a1 + 360) = 1;
          (*(*a1 + 16))(a1);
        }

        result = 1;
        goto LABEL_41;
      }
    }

    else
    {
      v22 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        _os_log_debug_impl(&dword_245396000, v22, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, protocol version validation failed", &__p, 2u);
        v22 = qword_2813CF018;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __p = 0x20304000100;
        _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &__p, 8u);
      }

      v5 = 10;
    }
  }

LABEL_32:
  v23 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_245396000, v23, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosInitSent::ProcessSuplPos, sending SUPL END Message", &__p, 2u);
  }

  if (v5 == 12)
  {
    sub_245454C74(*(a1 + 8) + 64, a1 + 48);
  }

  *(a1 + 20) = 1;
  (*(*a1 + 16))(a1);
  v24 = sub_245471CCC(*(a1 + 8));
  *(v24[5] + 456) = v5;
  *(v24[5] + 4) = 1;
  sub_2453A6258(&__p, 3000);
  v39[0] = &__p;
  v39[1] = 0;
  v40 = 0;
  (*(*v24 + 32))(v24, v39);
  sub_245454A88(v24);
  v25 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v38 = 0;
    _os_log_debug_impl(&dword_245396000, v25, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplPosInitSent::ProcessSuplPos", v38, 2u);
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  result = 0;
LABEL_41:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245468204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245468228(uint64_t a1)
{
  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *sub_245468268(const char *a1, int a2, int a3, size_t size)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  result = malloc_type_calloc(a3, size, 0x44EDA8EDuLL);
  if (!result)
  {
    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v11 = v7 * size;
      v16 = v11;
      v17 = 2080;
      v18 = a1;
      v19 = 1024;
      v20 = a2;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl gnssOsa_Calloc allocation failed Size,%lu,Fn,%s,Line,%d", buf, 0x1Cu);
    }

    else
    {
      v11 = v7 * size;
    }

    snprintf(buf, 0x400uLL, "Size,%lu,Fn,%s,Line,%d", v11, a1, a2);
    v12 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315138;
      v14 = buf;
      _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "%s", v13, 0xCu);
    }

    __assert_rtn("gnssOsa_Calloc", "agpsmacosa.cpp", 34, "false && Memory allocation failure");
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2454683F0(uint64_t a1, int a2, void *__dst, unsigned int a4, void *__src, size_t __n)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!__dst || !__src)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = a1;
      v15 = 1024;
      v16 = a2;
      v9 = "#gpsd #supl memcpy_s failure Caller,%s,line,%d";
      goto LABEL_12;
    }

LABEL_7:
    v10 = *MEMORY[0x277D85DE8];
    return 0;
  }

  if (a4 < __n)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = a1;
      v15 = 1024;
      v16 = a2;
      v9 = "#gpsd #supl memcpy_s invalid input Caller,%s,line,%d";
LABEL_12:
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, v9, &v13, 0x12u);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v12 = *MEMORY[0x277D85DE8];

  return memcpy(__dst, __src, __n);
}

uint64_t sub_245468554(uint64_t a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    if (v4)
    {
      v5 = sub_24544742C(a1, &v10);
      v10 += 10;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = sub_245446150(a1, 0, 9u, &v10);
      if (v5)
      {
        goto LABEL_11;
      }
    }

    v6 = v10;
    if (v10 > 0x10u)
    {
      v5 = 4;
      *(a1 + 16) = 4;
      sub_245445D98(4u, *(a1 + 8), *(a1 + 12), "asn1PD_PosMethod");
    }

    else
    {
      *a2 = v10;
      v7 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67174657;
        v12 = v6;
        _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl asn1PD_PosMethod, posMethod %{private}d", buf, 8u);
      }

      v5 = 0;
    }
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_245468694(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_11:
    sub_245445D98(v8, v6, v7, "asn1PD_QoP");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  *(a2 + 4) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  *(a2 + 8) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  v8 = sub_245446150(a1, 0, 0x7Fu, (a2 + 12));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  if (*a2)
  {
    v8 = sub_245446150(a1, 0, 0x7Fu, (a2 + 13));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  if (*(a2 + 4))
  {
    v8 = sub_2454463A8(a1, 0, 0xFFFFu, (a2 + 16));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  if (*(a2 + 8))
  {
    v8 = sub_245446150(a1, 0, 7u, (a2 + 20));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  if (!v9)
  {
    return 0;
  }

  return sub_245446F9C(a1);
}

uint64_t sub_245468878(uint64_t a1, uint64_t a2)
{
  v3 = sub_245446D18(a1, 0, 255, *(a2 + 8) - *a2, a2, 0);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_UTCTime");
  }

  return v4;
}

uint64_t sub_2454688DC(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_2454463A8(a1, 0, 0xFFu, &v6);
  sub_245446C58(a1, 7 * v6, 7, a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_UTCTime");
  }

  return v4;
}

uint64_t sub_24546895C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_2454460B8(a1, 0, 127, *a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PE_PositionEstimate_uncertainty");
    return v5;
  }

  v4 = sub_2454460B8(a1, 0, 127, a2[1]);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  v9 = a2[2];

  return sub_2454460B8(a1, 0, 180, v9);
}

uint64_t sub_245468A18(uint64_t a1, _BYTE *a2)
{
  v4 = sub_245446150(a1, 0, 0x7Fu, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PD_PositionEstimate_uncertainty");
    return v5;
  }

  v4 = sub_245446150(a1, 0, 0x7Fu, a2 + 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return sub_245446150(a1, 0, 0xB4u, a2 + 2);
}

uint64_t sub_245468AD4(uint64_t a1, unsigned __int8 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_13:
    sub_245445D98(v7, v5, v6, "asn1PE_AltitudeInfo");
    v13 = *MEMORY[0x277D85DE8];
    return v4;
  }

  v8 = *a2;
  if (v8 >= 2)
  {
    if (v8 == 255)
    {
      v4 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
    }

    else
    {
      v4 = 4;
      *(a1 + 16) = 4;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 4;
    }

    sub_245445D98(v12, v10, v11, "asn1PE_AltitudeInfo_altitudeDirection");
    goto LABEL_12;
  }

  v4 = sub_2454460B8(a1, 0, 1, *a2);
  v9 = qword_2813CF018;
  if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_245445D98(v4, *(a1 + 8), *(a1 + 12), "asn1PE_AltitudeInfo_altitudeDirection");
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = v4;
    goto LABEL_13;
  }

  v17[0] = 67174657;
  v17[1] = v8;
  _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl asn1PE_AltitudeInfo_altitudeDirection, value = %{private}d", v17, 8u);
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_6:
  v7 = sub_2454460B8(a1, 0, 0x7FFF, *(a2 + 1));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  v15 = a2[4];
  v16 = *MEMORY[0x277D85DE8];

  return sub_2454460B8(a1, 0, 127, v15);
}

uint64_t sub_245468CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_10:
    sub_245445D98(v8, v6, v7, "asn1PD_AltitudeInfo");
    return v5;
  }

  v9 = v4;
  v14 = 0;
  v10 = sub_245446150(a1, 0, 1u, &v14);
  if (v10)
  {
    v5 = v10;
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
LABEL_9:
    sub_245445D98(v10, v11, v12, "asn1PD_AltitudeInfo_altitudeDirection");
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_10;
  }

  if (v14 >= 2u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    LODWORD(v10) = 4;
    goto LABEL_9;
  }

  *a2 = v14;
  v8 = sub_245446218(a1, 0, 0x7FFFu, (a2 + 2));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_10;
  }

  v8 = sub_245446150(a1, 0, 0x7Fu, (a2 + 4));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_10;
  }

  if (!v9)
  {
    return 0;
  }

  return sub_245446F9C(a1);
}

uint64_t sub_245468E4C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >= 2u)
  {
    if (a2 == 255)
    {
      v3 = 1;
      *(a1 + 16) = 1;
      v4 = *(a1 + 8);
      v5 = *(a1 + 12);
      v6 = 1;
    }

    else
    {
      v3 = 4;
      *(a1 + 16) = 4;
      v4 = *(a1 + 8);
      v5 = *(a1 + 12);
      v6 = 4;
    }

    sub_245445D98(v6, v4, v5, "asn1PE_PositionEstimate_latitudeSign");
  }

  else
  {
    v3 = sub_2454460B8(a1, 0, 1, a2);
    if (!v3)
    {
      return v3;
    }
  }

  sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_PositionEstimate_latitudeSign");
  return v3;
}

uint64_t sub_245468EF8(uint64_t a1, unsigned __int8 *a2)
{
  v9 = 0;
  v4 = sub_245446150(a1, 0, 1u, &v9);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_6:
    sub_245445D98(v4, v6, v7, "asn1PD_PositionEstimate_latitudeSign");
    return v5;
  }

  if (v9 > 1u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = 4;
    goto LABEL_6;
  }

  v5 = 0;
  *a2 = v9;
  return v5;
}

uint64_t sub_245468F98(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_9:
    sub_245445D98(v7, v5, v6, "asn1PE_PositionEstimate");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  sub_245445FB0(a1, *(a2 + 4));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  sub_245445FB0(a1, *(a2 + 8));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  v4 = sub_245468E4C(a1, *(a2 + 12));
  if (v4)
  {
    return v4;
  }

  v7 = sub_2454460B8(a1, 0, 0x7FFFFF, *(a2 + 16));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  v7 = sub_2454460B8(a1, -8388608, 0x7FFFFF, *(a2 + 20));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  if (*a2)
  {
    v7 = sub_24546895C(a1, (a2 + 24));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (*(a2 + 4))
  {
    v7 = sub_2454460B8(a1, 0, 100, *(a2 + 27));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (!*(a2 + 8))
  {
    return 0;
  }

  return sub_245468AD4(a1, (a2 + 28));
}

uint64_t sub_245469188(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_15:
    sub_245445D98(v8, v6, v7, "asn1PD_PositionEstimate");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 4) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 8) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  v8 = sub_245468EF8(a1, (a2 + 12));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  v8 = sub_2454463A8(a1, 0, 0x7FFFFFu, (a2 + 16));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  v8 = sub_2454462E0(a1, -8388608, 0x7FFFFF, (a2 + 20));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v8 = sub_245468A18(a1, (a2 + 24));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 4))
  {
    v8 = sub_245446150(a1, 0, 0x64u, (a2 + 27));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 8))
  {
    v8 = sub_245468CDC(a1, a2 + 28);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!v9)
  {
    return 0;
  }

  return sub_245446F9C(a1);
}

uint64_t sub_2454693B4(uint64_t a1, void *a2)
{
  sub_245446614(a1, 9u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horvel_bearing");
  }

  return v3;
}

uint64_t sub_245469408(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x10u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horvel_horspeed");
  }

  return v3;
}

uint64_t sub_24546945C(uint64_t a1, void *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_7:
    sub_245445D98(v8, v6, v7, "asn1PD_Horvel");
    return v5;
  }

  v9 = v4;
  v8 = sub_2454693B4(a1, a2);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  v8 = sub_245469408(a1, a2 + 3);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  if (!v9)
  {
    return 0;
  }

  return sub_245446F9C(a1);
}

uint64_t sub_245469534(uint64_t a1, void *a2)
{
  sub_245446614(a1, 1u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horandvervel_verdirect");
  }

  return v3;
}

uint64_t sub_245469588(uint64_t a1, void *a2)
{
  sub_245446614(a1, 9u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horandvervel_bearing");
  }

  return v3;
}

uint64_t sub_2454695DC(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x10u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horandvervel_horspeed");
  }

  return v3;
}

uint64_t sub_245469630(uint64_t a1, void *a2)
{
  sub_245446614(a1, 8u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horandvervel_verspeed");
  }

  return v3;
}

uint64_t sub_245469684(uint64_t a1, void *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_11:
    sub_245445D98(v8, v6, v7, "asn1PD_Horandvervel");
    return v5;
  }

  v9 = v4;
  v8 = sub_245469534(a1, a2);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  v8 = sub_245469588(a1, a2 + 3);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  v8 = sub_2454695DC(a1, a2 + 6);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  v8 = sub_245469630(a1, a2 + 9);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  if (!v9)
  {
    return 0;
  }

  return sub_245446F9C(a1);
}

uint64_t sub_2454697AC(uint64_t a1, void *a2)
{
  sub_245446614(a1, 9u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horveluncert_bearing");
  }

  return v3;
}

uint64_t sub_245469800(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x10u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horveluncert_horspeed");
  }

  return v3;
}

uint64_t sub_245469854(uint64_t a1, void *a2)
{
  sub_245446614(a1, 8u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horveluncert_uncertspeed");
  }

  return v3;
}

uint64_t sub_2454698A8(uint64_t a1, void *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_9:
    sub_245445D98(v8, v6, v7, "asn1PD_Horveluncert");
    return v5;
  }

  v9 = v4;
  v8 = sub_2454697AC(a1, a2);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  v8 = sub_245469800(a1, a2 + 3);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  v8 = sub_245469854(a1, a2 + 6);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  if (!v9)
  {
    return 0;
  }

  return sub_245446F9C(a1);
}