uint64_t sub_11F59D0(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11F5A18(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) == 0)
  {
    result = __dst;
    goto LABEL_10;
  }

  v7 = __dst;
  if (*a3 <= __dst)
  {
    v7 = sub_225EB68(a3, __dst);
    v8 = *(a1 + 144);
    *v7 = 8;
    v7[1] = v8;
    if (v8 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *(a1 + 144);
    *__dst = 8;
    __dst[1] = v8;
    if (v8 <= 0x7F)
    {
LABEL_5:
      result = v7 + 2;
      goto LABEL_10;
    }
  }

  v7[1] = v8 | 0x80;
  v9 = v8 >> 7;
  v7[2] = v8 >> 7;
  result = v7 + 3;
  if (v8 >= 0x4000)
  {
    v10 = v8 >> 7;
    do
    {
      *(result - 1) = v9 | 0x80;
      v9 = v10 >> 7;
      *result++ = v10 >> 7;
      v11 = v10 >> 14;
      v10 >>= 7;
    }

    while (v11);
  }

LABEL_10:
  v12 = *(a1 + 24);
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
        v14 = *(*(a1 + 32) + 4 * i);
        *result = 16;
        result[1] = v14;
        if (v14 > 0x7F)
        {
LABEL_16:
          result[1] = v14 | 0x80;
          v15 = v14 >> 7;
          result[2] = v14 >> 7;
          result += 3;
          if (v14 >= 0x4000)
          {
            v16 = v14 >> 7;
            do
            {
              *(result - 1) = v15 | 0x80;
              v15 = v16 >> 7;
              *result++ = v16 >> 7;
              v17 = v16 >> 14;
              v16 >>= 7;
            }

            while (v17);
          }

          continue;
        }
      }

      else
      {
        v14 = *(*(a1 + 32) + 4 * i);
        *result = 16;
        result[1] = v14;
        if (v14 > 0x7F)
        {
          goto LABEL_16;
        }
      }

      result += 2;
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v19 = *(a1 + 120);
    *result = 26;
    v20 = *(v19 + 40);
    result[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, result + 1);
      result = sub_11F27E4(v19, v21, a3);
      if ((v5 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      result = sub_11F27E4(v19, result + 2, a3);
      if ((v5 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_24:
    v18 = *(a1 + 48);
    if (!v18)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_32:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v22 = *(a1 + 128);
  *result = 34;
  v23 = *(v22 + 20);
  result[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, result + 1);
    result = sub_11F6F8C(v22, v24, a3);
    v18 = *(a1 + 48);
    if (!v18)
    {
      goto LABEL_45;
    }
  }

  else
  {
    result = sub_11F6F8C(v22, result + 2, a3);
    v18 = *(a1 + 48);
    if (!v18)
    {
      goto LABEL_45;
    }
  }

LABEL_38:
  for (j = 0; j != v18; ++j)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v27 = *(*(a1 + 56) + 8 * j + 8);
    *result = 410;
    v28 = *(v27 + 20);
    result[2] = v28;
    if (v28 > 0x7F)
    {
      v26 = sub_19575D0(v28, result + 2);
    }

    else
    {
      v26 = result + 3;
    }

    result = sub_11F3EA4(v27, v26, a3);
  }

LABEL_45:
  if ((v5 & 8) == 0)
  {
    goto LABEL_57;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v29 = *(a1 + 136);
  *result = 418;
  v30 = *(v29 + 32);
  result[2] = v30;
  if (v30 > 0x7F)
  {
    result = sub_19575D0(v30, result + 2);
    v31 = *(v29 + 16);
    if (v31 < 1)
    {
      goto LABEL_56;
    }

LABEL_52:
    v32 = 0;
    v33 = 8 * v31;
    do
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v34 = *(*(v29 + 24) + v32);
      *result = 9;
      *(result + 1) = v34;
      result += 9;
      v32 += 8;
    }

    while (v33 != v32);
    goto LABEL_56;
  }

  result += 3;
  v31 = *(v29 + 16);
  if (v31 >= 1)
  {
    goto LABEL_52;
  }

LABEL_56:
  v35 = *(v29 + 8);
  if (v35)
  {
    v63 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = *(v63 + 31);
    if (v64 < 0)
    {
      v65 = *(v63 + 8);
      v64 = *(v63 + 16);
    }

    else
    {
      v65 = (v63 + 8);
    }

    v68 = v64;
    if (*a3 - result < v64)
    {
      result = sub_1957130(a3, v65, v64, result);
    }

    else
    {
      v69 = result;
      memcpy(result, v65, v64);
      result = &v69[v68];
    }
  }

LABEL_57:
  v36 = *(a1 + 72);
  if (v36)
  {
    for (k = 0; k != v36; ++k)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v38 = *(*(a1 + 80) + 8 * k + 8);
      *result = 426;
      v39 = *(v38 + 32);
      result[2] = v39;
      if (v39 > 0x7F)
      {
        result = sub_19575D0(v39, result + 2);
        v40 = *(v38 + 16);
        if (v40 >= 1)
        {
LABEL_65:
          v41 = 0;
          v42 = 8 * v40;
          do
          {
            if (*a3 <= result)
            {
              result = sub_225EB68(a3, result);
            }

            v43 = *(*(v38 + 24) + v41);
            *result = 9;
            *(result + 1) = v43;
            result += 9;
            v41 += 8;
          }

          while (v42 != v41);
        }
      }

      else
      {
        result += 3;
        v40 = *(v38 + 16);
        if (v40 >= 1)
        {
          goto LABEL_65;
        }
      }

      v44 = *(v38 + 8);
      if (v44)
      {
        v45 = v44 & 0xFFFFFFFFFFFFFFFCLL;
        v46 = *(v45 + 31);
        if (v46 < 0)
        {
          v47 = *(v45 + 8);
          v46 = *(v45 + 16);
        }

        else
        {
          v47 = (v45 + 8);
        }

        v48 = v46;
        if (*a3 - result < v46)
        {
          result = sub_1957130(a3, v47, v46, result);
        }

        else
        {
          v49 = result;
          memcpy(result, v47, v46);
          result = &v49[v48];
        }
      }
    }
  }

  v50 = *(a1 + 96);
  if (v50)
  {
    for (m = 0; m != v50; ++m)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v53 = *(*(a1 + 104) + 8 * m + 8);
      *result = 434;
      v54 = *(v53 + 20);
      result[2] = v54;
      if (v54 > 0x7F)
      {
        v52 = sub_19575D0(v54, result + 2);
      }

      else
      {
        v52 = result + 3;
      }

      result = sub_11F4F88(v53, v52, a3);
    }
  }

  if (v5)
  {
    v55 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v56 = *(v55 + 23);
    if (v56 < 0 && (v56 = *(v55 + 8), v56 > 127) || *a3 - result + 13 < v56)
    {
      result = sub_19572D4(a3, 23, v55, result);
      v59 = *(a1 + 8);
      if ((v59 & 1) == 0)
      {
        return result;
      }

      goto LABEL_97;
    }

    *result = 442;
    v57 = result + 3;
    result[2] = v56;
    if (*(v55 + 23) >= 0)
    {
      v58 = v55;
    }

    else
    {
      v58 = *v55;
    }

    memcpy(result + 3, v58, v56);
    result = &v57[v56];
  }

  v59 = *(a1 + 8);
  if ((v59 & 1) == 0)
  {
    return result;
  }

LABEL_97:
  v60 = v59 & 0xFFFFFFFFFFFFFFFCLL;
  v61 = *(v60 + 31);
  if (v61 < 0)
  {
    v62 = *(v60 + 8);
    v61 = *(v60 + 16);
  }

  else
  {
    v62 = (v60 + 8);
  }

  v66 = v61;
  if (*a3 - result < v61)
  {

    return sub_1957130(a3, v62, v61, result);
  }

  else
  {
    v67 = result;
    memcpy(result, v62, v61);
    return &v67[v66];
  }
}

uint64_t sub_11F60E4(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + 2 * v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_11F4120(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 72);
  v11 = v4 + 2 * v10;
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = v12 + 8;
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = 9 * *(*v13 + 16);
      v16 = *(*v13 + 8);
      if (v16)
      {
        v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
        v18 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v18 < 0)
        {
          v18 = *(v17 + 16);
        }

        v15 += v18;
      }

      *(*v13 + 32) = v15;
      v11 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 += 8;
      v14 -= 8;
    }

    while (v14);
  }

  v19 = *(a1 + 96);
  v20 = v11 + 2 * v19;
  v21 = *(a1 + 104);
  if (v21)
  {
    v22 = (v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = 8 * v19;
    do
    {
      v24 = *v22++;
      v25 = sub_11F5160(v24);
      v20 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      v23 -= 8;
    }

    while (v23);
  }

  v26 = *(a1 + 16);
  if ((v26 & 0x1F) == 0)
  {
    goto LABEL_31;
  }

  if (v26)
  {
    v29 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v29 + 23);
    v31 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v30;
    }

    v20 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v26 & 2) == 0)
    {
LABEL_27:
      if ((v26 & 4) == 0)
      {
        goto LABEL_28;
      }

LABEL_46:
      v40 = *(a1 + 128);
      v41 = *(v40 + 16);
      if ((v41 & 3) == 0)
      {
        v42 = 0;
        goto LABEL_53;
      }

      if (v41)
      {
        v42 = ((9 * (__clz(*(v40 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v41 & 2) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v42 = 0;
        if ((v41 & 2) == 0)
        {
LABEL_53:
          v43 = *(v40 + 8);
          if (v43)
          {
            v51 = v43 & 0xFFFFFFFFFFFFFFFCLL;
            v52 = *((v43 & 0xFFFFFFFFFFFFFFFCLL) + 31);
            if (v52 < 0)
            {
              v52 = *(v51 + 16);
            }

            v42 += v52;
          }

          *(v40 + 20) = v42;
          v20 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if ((v26 & 8) == 0)
          {
LABEL_29:
            if ((v26 & 0x10) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

          goto LABEL_55;
        }
      }

      v42 += ((9 * (__clz(*(v40 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_53;
    }
  }

  else if ((v26 & 2) == 0)
  {
    goto LABEL_27;
  }

  v32 = *(a1 + 120);
  v33 = *(v32 + 24);
  v34 = *(v32 + 32);
  if (v34)
  {
    v35 = (v34 + 8);
  }

  else
  {
    v35 = 0;
  }

  if (v33)
  {
    v36 = 8 * v33;
    do
    {
      v37 = *v35++;
      v38 = sub_11F2290(v37);
      v33 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6);
      v36 -= 8;
    }

    while (v36);
    v39 = *(v32 + 8);
    if ((v39 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v33 = 0;
    v39 = *(v32 + 8);
    if ((v39 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  v49 = v39 & 0xFFFFFFFFFFFFFFFCLL;
  v50 = *((v39 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v50 < 0)
  {
    v50 = *(v49 + 16);
  }

  v33 += v50;
LABEL_45:
  *(v32 + 40) = v33;
  v20 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v26 & 4) != 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  if ((v26 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_55:
  v44 = *(a1 + 136);
  v45 = 9 * *(v44 + 16);
  v46 = *(v44 + 8);
  if (v46)
  {
    v53 = v46 & 0xFFFFFFFFFFFFFFFCLL;
    v54 = *((v46 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v54 < 0)
    {
      v54 = *(v53 + 16);
    }

    v45 += v54;
  }

  *(v44 + 32) = v45;
  v20 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v26 & 0x10) != 0)
  {
LABEL_30:
    v20 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_31:
  v27 = *(a1 + 8);
  if (v27)
  {
    v47 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    v48 = *((v27 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v48 < 0)
    {
      v48 = *(v47 + 16);
    }

    v20 += v48;
  }

  *(a1 + 20) = v20;
  return v20;
}

void sub_11F64C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1958E5C((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201358((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    v14 = *(a2 + 80);
    v15 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_12013E4((a1 + 64), v15, (v14 + 8), v13, **(a1 + 80) - *(a1 + 72));
    v16 = *(a1 + 72) + v13;
    *(a1 + 72) = v16;
    v17 = *(a1 + 80);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 96);
  if (v18)
  {
    v19 = *(a2 + 104);
    v20 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_1201504((a1 + 88), v20, (v19 + 8), v18, **(a1 + 104) - *(a1 + 96));
    v21 = *(a1 + 96) + v18;
    *(a1 + 96) = v21;
    v22 = *(a1 + 104);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 16);
  if ((v23 & 0x1F) != 0)
  {
    if (v23)
    {
      v24 = *(a2 + 112);
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_194EA1C((a1 + 112), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
    }

    if ((v23 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v27 = *(a1 + 120);
      if (!v27)
      {
        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        v27 = sub_11FFB04(v29);
        *(a1 + 120) = v27;
      }

      if (*(a2 + 120))
      {
        v30 = *(a2 + 120);
      }

      else
      {
        v30 = &off_2734158;
      }

      v31 = *(v30 + 6);
      if (v31)
      {
        v32 = v30[4];
        v33 = sub_19592E8(v27 + 16, *(v30 + 6));
        sub_1201154((v27 + 16), v33, v32 + 1, v31, **(v27 + 32) - *(v27 + 24));
        v34 = *(v27 + 24) + v31;
        *(v27 + 24) = v34;
        v35 = *(v27 + 32);
        if (*v35 < v34)
        {
          *v35 = v34;
        }
      }

      v36 = v30[1];
      if (v36)
      {
        sub_1957EF4((v27 + 8), (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v23 & 4) != 0)
    {
      *(a1 + 16) |= 4u;
      v37 = *(a1 + 128);
      if (!v37)
      {
        v38 = *(a1 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v39 = *v39;
        }

        v37 = sub_12000E0(v39);
        *(a1 + 128) = v37;
      }

      v40 = *(a2 + 128);
      if (!v40)
      {
        v40 = &off_27342E0;
      }

      v41 = *(v40 + 4);
      if ((v41 & 3) != 0)
      {
        if (v41)
        {
          *(v37 + 6) = *(v40 + 6);
        }

        if ((v41 & 2) != 0)
        {
          *(v37 + 7) = *(v40 + 7);
        }

        *(v37 + 4) |= v41;
      }

      v42 = v40[1];
      if (v42)
      {
        sub_1957EF4(v37 + 1, (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v23 & 8) != 0)
    {
      *(a1 + 16) |= 8u;
      v43 = *(a1 + 136);
      if (!v43)
      {
        v44 = *(a1 + 8);
        v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v45 = *v45;
        }

        v43 = sub_11FFDD8(v45);
        *(a1 + 136) = v43;
      }

      if (*(a2 + 136))
      {
        v46 = *(a2 + 136);
      }

      else
      {
        v46 = &off_2734220;
      }

      v47 = *(v46 + 4);
      if (v47)
      {
        v48 = *(v43 + 16);
        sub_1959094((v43 + 16), v48 + v47);
        v49 = *(v43 + 24);
        *(v43 + 16) += *(v46 + 4);
        memcpy((v49 + 8 * v48), v46[3], 8 * *(v46 + 4));
      }

      v50 = v46[1];
      if (v50)
      {
        sub_1957EF4((v43 + 8), (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v23 & 0x10) != 0)
    {
      *(a1 + 144) = *(a2 + 144);
    }

    *(a1 + 16) |= v23;
  }

  v51 = *(a2 + 8);
  if (v51)
  {

    sub_1957EF4((a1 + 8), (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11F68E4(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 120);
  v3 = *(v2 + 24);
  if (v3 < 1)
  {
    return 1;
  }

  while (1)
  {
    v4 = *(*(v2 + 32) + 8 * v3);
    if (*(v4 + 16))
    {
      result = sub_16E4B4C(*(v4 + 24));
      if (!result)
      {
        break;
      }
    }

    if (v3-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

void *sub_11F69C8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11F6A68(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_11F6B28(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11F6B50(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v22 = a1;
      v7 = a3;
      v8 = sub_225EB68(a3, __dst);
      a3 = v7;
      v3 = v8;
      a1 = v22;
    }

    v5 = *(a1 + 24);
    *v3 = 9;
    *(v3 + 1) = v5;
    v3 += 9;
  }

  if ((v4 & 2) != 0)
  {
    if (*a3 <= v3)
    {
      v9 = a1;
      v10 = v3;
      v11 = a3;
      v12 = sub_225EB68(a3, v10);
      a3 = v11;
      v3 = v12;
      a1 = v9;
      v6 = *(v9 + 32);
      *v3 = 16;
      v3[1] = v6;
      if (v6 <= 0x7F)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = *(a1 + 32);
      *v3 = 16;
      v3[1] = v6;
      if (v6 <= 0x7F)
      {
LABEL_8:
        v3 += 2;
        goto LABEL_13;
      }
    }

    v3[1] = v6 | 0x80;
    v13 = v6 >> 7;
    v3[2] = v6 >> 7;
    v3 += 3;
    if (v6 >= 0x4000)
    {
      v14 = v6 >> 7;
      do
      {
        *(v3 - 1) = v13 | 0x80;
        v13 = v14 >> 7;
        *v3++ = v14 >> 7;
        v15 = v14 >> 14;
        v14 >>= 7;
      }

      while (v15);
    }
  }

LABEL_13:
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v3;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  v21 = v19;
  if (*a3 - v3 < v19)
  {

    return sub_1957130(a3, v20, v19, v3);
  }

  else
  {
    memcpy(v3, v20, v19);
    return &v3[v21];
  }
}

uint64_t sub_11F6CF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
      v3 = *(a1 + 8);
      if ((v3 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = *(a1 + 8);
      if ((v3 & 1) == 0)
      {
LABEL_6:
        *(a1 + 20) = v2;
        return v2;
      }
    }
  }

  else
  {
    v2 = 0;
    v3 = *(a1 + 8);
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v6 < 0)
  {
    v6 = *(v5 + 16);
  }

  v7 = v6 + v2;
  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_11F6D7C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_11F6E2C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11F6ECC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

char *sub_11F6F8C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v25 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v25;
      v5 = *(v25 + 24);
      *v3 = 8;
      v3[1] = v5;
      if (v5 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v5;
      if (v5 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v5 | 0x80;
    v8 = v5 >> 7;
    v3[2] = v5 >> 7;
    v3 += 3;
    if (v5 >= 0x4000)
    {
      v9 = v5 >> 7;
      do
      {
        *(v3 - 1) = v8 | 0x80;
        v8 = v9 >> 7;
        *v3++ = v9 >> 7;
        v10 = v9 >> 14;
        v9 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v3)
  {
    v12 = a1;
    v13 = v3;
    v14 = a3;
    v15 = sub_225EB68(a3, v13);
    a3 = v14;
    v3 = v15;
    a1 = v12;
    v11 = *(v12 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v3 += 2;
      goto LABEL_17;
    }
  }

  v3[1] = v11 | 0x80;
  v16 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v17 = v11 >> 7;
    do
    {
      *(v3 - 1) = v16 | 0x80;
      v16 = v17 >> 7;
      *v3++ = v17 >> 7;
      v18 = v17 >> 14;
      v17 >>= 7;
    }

    while (v18);
  }

LABEL_17:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v3;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  v24 = v22;
  if (*a3 - v3 < v22)
  {

    return sub_1957130(a3, v23, v22, v3);
  }

  else
  {
    memcpy(v3, v23, v22);
    return &v3[v24];
  }
}

uint64_t sub_11F7188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v7 = v6 + v2;
    *(a1 + 20) = v7;
    return v7;
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

std::string *sub_11F7228(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_11F72E0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11F7380(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_11F7440(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11F7474(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v39 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v39;
      v5 = *(v39 + 24);
      *v3 = 8;
      v3[1] = v5;
      if (v5 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v5;
      if (v5 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v5 | 0x80;
    v8 = v5 >> 7;
    v3[2] = v5 >> 7;
    v3 += 3;
    if (v5 >= 0x4000)
    {
      v9 = v5 >> 7;
      do
      {
        *(v3 - 1) = v8 | 0x80;
        v8 = v9 >> 7;
        *v3++ = v9 >> 7;
        v10 = v9 >> 14;
        v9 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v3)
  {
    v40 = a1;
    v12 = v3;
    v13 = a3;
    v14 = sub_225EB68(a3, v12);
    a3 = v13;
    v3 = v14;
    a1 = v40;
    v11 = *(v40 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v3 += 2;
      goto LABEL_17;
    }
  }

  v3[1] = v11 | 0x80;
  v15 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v16 = v11 >> 7;
    do
    {
      *(v3 - 1) = v15 | 0x80;
      v15 = v16 >> 7;
      *v3++ = v16 >> 7;
      v17 = v16 >> 14;
      v16 >>= 7;
    }

    while (v17);
  }

LABEL_17:
  if ((v4 & 4) == 0)
  {
    goto LABEL_25;
  }

  if (*a3 <= v3)
  {
    v41 = a1;
    v19 = v3;
    v20 = a3;
    v21 = sub_225EB68(a3, v19);
    a3 = v20;
    v3 = v21;
    a1 = v41;
    v18 = *(v41 + 32);
    *v3 = 24;
    v3[1] = v18;
    if (v18 <= 0x7F)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *(a1 + 32);
    *v3 = 24;
    v3[1] = v18;
    if (v18 <= 0x7F)
    {
LABEL_20:
      v3 += 2;
      goto LABEL_25;
    }
  }

  v3[1] = v18 | 0x80;
  v22 = v18 >> 7;
  v3[2] = v18 >> 7;
  v3 += 3;
  if (v18 >= 0x4000)
  {
    v23 = v18 >> 7;
    do
    {
      *(v3 - 1) = v22 | 0x80;
      v22 = v23 >> 7;
      *v3++ = v23 >> 7;
      v24 = v23 >> 14;
      v23 >>= 7;
    }

    while (v24);
  }

LABEL_25:
  if ((v4 & 8) == 0)
  {
    goto LABEL_33;
  }

  if (*a3 <= v3)
  {
    v26 = a1;
    v27 = v3;
    v28 = a3;
    v29 = sub_225EB68(a3, v27);
    a3 = v28;
    v3 = v29;
    a1 = v26;
    v25 = *(v26 + 36);
    *v3 = 32;
    v3[1] = v25;
    if (v25 <= 0x7F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v25 = *(a1 + 36);
    *v3 = 32;
    v3[1] = v25;
    if (v25 <= 0x7F)
    {
LABEL_28:
      v3 += 2;
      goto LABEL_33;
    }
  }

  v3[1] = v25 | 0x80;
  v30 = v25 >> 7;
  v3[2] = v25 >> 7;
  v3 += 3;
  if (v25 >= 0x4000)
  {
    v31 = v25 >> 7;
    do
    {
      *(v3 - 1) = v30 | 0x80;
      v30 = v31 >> 7;
      *v3++ = v31 >> 7;
      v32 = v31 >> 14;
      v31 >>= 7;
    }

    while (v32);
  }

LABEL_33:
  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v3;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  v38 = v36;
  if (*a3 - v3 < v36)
  {

    return sub_1957130(a3, v37, v36, v3);
  }

  else
  {
    memcpy(v3, v37, v36);
    return &v3[v38];
  }
}

uint64_t sub_11F77B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v2 = 0;
      if ((v1 & 2) == 0)
      {
LABEL_9:
        if ((v1 & 4) != 0)
        {
          v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
          if ((v1 & 8) == 0)
          {
LABEL_11:
            v3 = *(a1 + 8);
            if ((v3 & 1) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_15;
          }
        }

        else if ((v1 & 8) == 0)
        {
          goto LABEL_11;
        }

        v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
        v3 = *(a1 + 8);
        if ((v3 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_9;
  }

  v2 = 0;
  v3 = *(a1 + 8);
  if ((v3 & 1) == 0)
  {
LABEL_12:
    *(a1 + 20) = v2;
    return v2;
  }

LABEL_15:
  v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v6 < 0)
  {
    v6 = *(v5 + 16);
  }

  v7 = v6 + v2;
  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_11F78BC(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_11F799C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (!*v3)
    {
LABEL_3:
      if (a1 != &off_2734328)
      {
        v4 = *(a1 + 136);
        if (v4)
        {
          v5 = v4[1];
          if ((v5 & 1) != 0 && !*(v5 & 0xFFFFFFFFFFFFFFFCLL))
          {
            sub_11F19CC(v4 + 1);
            v5 = v4[1];
          }

          *v4 = off_27215B8;
          if ((v5 & 2) != 0)
          {
            v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
            if (v5)
            {
              if (*v6)
              {
LABEL_9:
                sub_194E188();
                operator delete();
              }
            }

            else if (v6)
            {
              goto LABEL_9;
            }
          }

          operator delete();
        }
      }

      if (*(a1 + 8))
      {
        sub_11F19CC((a1 + 8));
      }
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 128);
  if (v7 && !*(a1 + 112))
  {
    v14 = v7 + 2;
    v15 = *v7;
    if (v15 >= 1)
    {
      do
      {
        if (*v14)
        {
          sub_14A6F14();
          operator delete();
        }

        ++v14;
        --v15;
      }

      while (v15);
      v7 = *(a1 + 128);
    }

    operator delete(v7);
    *(a1 + 128) = 0;
    v8 = *(a1 + 104);
    if (!v8)
    {
      goto LABEL_41;
    }
  }

  else
  {
    *(a1 + 128) = 0;
    v8 = *(a1 + 104);
    if (!v8)
    {
      goto LABEL_41;
    }
  }

  if (*(a1 + 88))
  {
    goto LABEL_41;
  }

  v9 = (v8 + 2);
  v10 = *v8;
  if (v10 < 1)
  {
    goto LABEL_40;
  }

  do
  {
    v11 = *v9;
    if (*v9)
    {
      v12 = v11[1];
      if ((v12 & 1) != 0 && !*(v12 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v11 + 1);
        v12 = v11[1];
      }

      *v11 = off_27215B8;
      if ((v12 & 2) != 0)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          if (*v13)
          {
LABEL_26:
            sub_194E188();
            operator delete();
          }
        }

        else if (v13)
        {
          goto LABEL_26;
        }
      }

      operator delete();
    }

    ++v9;
    --v10;
  }

  while (v10);
  v8 = *(a1 + 104);
LABEL_40:
  operator delete(v8);
LABEL_41:
  *(a1 + 104) = 0;
  v16 = *(a1 + 80);
  if (v16 && !*(a1 + 64))
  {
    v17 = (v16 + 2);
    v18 = *v16;
    if (v18 >= 1)
    {
      do
      {
        if (*v17)
        {
          sub_11F53D8(*v17);
          operator delete();
        }

        ++v17;
        --v18;
      }

      while (v18);
      v16 = *(a1 + 80);
    }

    operator delete(v16);
  }

  *(a1 + 80) = 0;
  sub_1956ABC(a1 + 48);
  v19 = *(a1 + 40);
  if (v19 && !*(a1 + 24))
  {
    v22 = v19 + 1;
    v23 = *v19;
    if (v23 >= 1)
    {
      do
      {
        if (*v22)
        {
          sub_11F2B6C(*v22);
          operator delete();
        }

        ++v22;
        --v23;
      }

      while (v23);
      v19 = *(a1 + 40);
    }

    operator delete(v19);
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v20 = *(a1 + 8);
    if ((v20 & 2) != 0)
    {
LABEL_53:
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        if (!*v21)
        {
          return a1;
        }
      }

      else if (!v21)
      {
        return a1;
      }

      sub_194E188();
      operator delete();
    }
  }

  else
  {
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v20 = *(a1 + 8);
    if ((v20 & 2) != 0)
    {
      goto LABEL_53;
    }
  }

  return a1;
}

void sub_11F7D6C(uint64_t a1)
{
  sub_11F799C(a1);

  operator delete();
}

uint64_t sub_11F7DA4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = *(result + 40) + 8;
    do
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      if (v5)
      {
        result = sub_16E4E44(*(v4 + 24));
      }

      if ((v5 & 0x3E) != 0)
      {
        *(v4 + 32) = 0;
        *(v4 + 40) = 0;
        *(v4 + 48) = 0;
      }

      v7 = *(v4 + 8);
      v6 = v4 + 8;
      *(v6 + 8) = 0;
      if (v7)
      {
        result = sub_1957EA8(v6);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      result = sub_11F5754(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v11 = *(v1 + 96);
  if (v11 >= 1)
  {
    v12 = *(v1 + 104) + 8;
    do
    {
      v13 = *v12;
      if ((*(*v12 + 16) & 3) != 0)
      {
        *(v13 + 32) = 0;
        *(v13 + 24) = 0;
      }

      v14 = *(v13 + 8);
      result = v13 + 8;
      *(result + 8) = 0;
      if (v14)
      {
        result = sub_1957EA8(result);
      }

      v12 += 8;
      --v11;
    }

    while (v11);
    *(v1 + 96) = 0;
  }

  v15 = *(v1 + 120);
  if (v15 >= 1)
  {
    v16 = (*(v1 + 128) + 8);
    do
    {
      v17 = *v16++;
      result = sub_14A6F50(v17);
      --v15;
    }

    while (v15);
    *(v1 + 120) = 0;
  }

  v18 = *(v1 + 16);
  if (v18)
  {
    v19 = *(v1 + 136);
    if ((*(v19 + 16) & 0xF) != 0)
    {
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
    }

    v20 = *(v19 + 8);
    result = v19 + 8;
    *(result + 8) = 0;
    if (v20)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v18 & 0xFE) != 0)
  {
    *(v1 + 144) = 0;
    *(v1 + 152) = 0;
    *(v1 + 159) = 0;
  }

  if ((v18 & 0x3F00) != 0)
  {
    *(v1 + 171) = 0;
    *(v1 + 163) = 0;
    *(v1 + 176) = 0;
  }

  v22 = *(v1 + 8);
  v21 = v1 + 8;
  *(v21 + 8) = 0;
  if (v22)
  {

    return sub_1957EA8(v21);
  }

  return result;
}

char *sub_11F7FBC(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) == 0)
  {
    result = __dst;
    goto LABEL_10;
  }

  v7 = __dst;
  if (*a3 <= __dst)
  {
    v7 = sub_225EB68(a3, __dst);
    v8 = *(a1 + 144);
    *v7 = 8;
    v7[1] = v8;
    if (v8 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *(a1 + 144);
    *__dst = 8;
    __dst[1] = v8;
    if (v8 <= 0x7F)
    {
LABEL_5:
      result = v7 + 2;
      goto LABEL_10;
    }
  }

  v7[1] = v8 | 0x80;
  v9 = v8 >> 7;
  v7[2] = v8 >> 7;
  result = v7 + 3;
  if (v8 >= 0x4000)
  {
    v10 = v8 >> 7;
    do
    {
      *(result - 1) = v9 | 0x80;
      v9 = v10 >> 7;
      *result++ = v10 >> 7;
      v11 = v10 >> 14;
      v10 >>= 7;
    }

    while (v11);
  }

LABEL_10:
  if ((v5 & 4) == 0)
  {
    goto LABEL_18;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v12 = *(a1 + 148);
    *result = 16;
    result[1] = v12;
    if (v12 <= 0x7F)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = *(a1 + 148);
    *result = 16;
    result[1] = v12;
    if (v12 <= 0x7F)
    {
LABEL_13:
      result += 2;
      goto LABEL_18;
    }
  }

  result[1] = v12 | 0x80;
  v13 = v12 >> 7;
  result[2] = v12 >> 7;
  result += 3;
  if (v12 >= 0x4000)
  {
    v14 = v12 >> 7;
    do
    {
      *(result - 1) = v14 | 0x80;
      v14 = v13 >> 7;
      *result++ = v13 >> 7;
      v15 = v13 >> 14;
      v13 >>= 7;
    }

    while (v15);
  }

LABEL_18:
  if ((v5 & 0x40) == 0)
  {
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v17 = *(a1 + 162);
    *result = 32;
    result[1] = v17;
    result += 2;
    if ((v5 & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v16 = *(a1 + 161);
  *result = 24;
  result[1] = v16;
  result += 2;
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v5 & 8) == 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v18 = *(a1 + 152);
    *result = 40;
    result[1] = v18;
    if (v18 <= 0x7F)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v18 = *(a1 + 152);
    *result = 40;
    result[1] = v18;
    if (v18 <= 0x7F)
    {
LABEL_30:
      result += 2;
      goto LABEL_35;
    }
  }

  result[1] = v18 | 0x80;
  v19 = v18 >> 7;
  result[2] = v18 >> 7;
  result += 3;
  if (v18 >= 0x4000)
  {
    v20 = v18 >> 7;
    do
    {
      *(result - 1) = v19 | 0x80;
      v19 = v20 >> 7;
      *result++ = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

LABEL_35:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_43;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v22 = *(a1 + 156);
    *result = 48;
    result[1] = v22;
    if (v22 <= 0x7F)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v22 = *(a1 + 156);
    *result = 48;
    result[1] = v22;
    if (v22 <= 0x7F)
    {
LABEL_38:
      result += 2;
      goto LABEL_43;
    }
  }

  result[1] = v22 | 0x80;
  v23 = v22 >> 7;
  result[2] = v22 >> 7;
  result += 3;
  if (v22 >= 0x4000)
  {
    v24 = v22 >> 7;
    do
    {
      *(result - 1) = v23 | 0x80;
      v23 = v24 >> 7;
      *result++ = v24 >> 7;
      v25 = v24 >> 14;
      v24 >>= 7;
    }

    while (v25);
  }

LABEL_43:
  v26 = *(a1 + 32);
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v29 = *(*(a1 + 40) + 8 * i + 8);
      *result = 58;
      v30 = *(v29 + 20);
      result[1] = v30;
      if (v30 > 0x7F)
      {
        v28 = sub_19575D0(v30, result + 1);
      }

      else
      {
        v28 = result + 2;
      }

      result = sub_11F2D14(v29, v28, a3);
    }
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v31 = *(a1 + 160);
    *result = 64;
    result[1] = v31;
    result += 2;
  }

  v32 = *(a1 + 48);
  if (v32 >= 1)
  {
    for (j = 0; j != v32; ++j)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
        v34 = *(*(a1 + 56) + 4 * j);
        *result = 72;
        result[1] = v34;
        if (v34 > 0x7F)
        {
LABEL_61:
          result[1] = v34 | 0x80;
          v35 = v34 >> 7;
          result[2] = v34 >> 7;
          result += 3;
          if (v34 >= 0x4000)
          {
            v36 = v34 >> 7;
            do
            {
              *(result - 1) = v35 | 0x80;
              v35 = v36 >> 7;
              *result++ = v36 >> 7;
              v37 = v36 >> 14;
              v36 >>= 7;
            }

            while (v37);
          }

          continue;
        }
      }

      else
      {
        v34 = *(*(a1 + 56) + 4 * j);
        *result = 72;
        result[1] = v34;
        if (v34 > 0x7F)
        {
          goto LABEL_61;
        }
      }

      result += 2;
    }
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v38 = *(a1 + 168);
      *result = 80;
      result[1] = v38;
      if (v38 <= 0x7F)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v38 = *(a1 + 168);
      *result = 80;
      result[1] = v38;
      if (v38 <= 0x7F)
      {
LABEL_70:
        result += 2;
        goto LABEL_75;
      }
    }

    result[1] = v38 | 0x80;
    v39 = v38 >> 7;
    result[2] = v38 >> 7;
    result += 3;
    if (v38 >= 0x4000)
    {
      v40 = v38 >> 7;
      do
      {
        *(result - 1) = v39 | 0x80;
        v39 = v40 >> 7;
        *result++ = v40 >> 7;
        v41 = v40 >> 14;
        v40 >>= 7;
      }

      while (v41);
    }
  }

LABEL_75:
  if ((v5 & 0x800) == 0)
  {
    goto LABEL_83;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v42 = *(a1 + 172);
    *result = 88;
    result[1] = v42;
    if (v42 <= 0x7F)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v42 = *(a1 + 172);
    *result = 88;
    result[1] = v42;
    if (v42 <= 0x7F)
    {
LABEL_78:
      result += 2;
      goto LABEL_83;
    }
  }

  result[1] = v42 | 0x80;
  v43 = v42 >> 7;
  result[2] = v42 >> 7;
  result += 3;
  if (v42 >= 0x4000)
  {
    v44 = v42 >> 7;
    do
    {
      *(result - 1) = v43 | 0x80;
      v43 = v44 >> 7;
      *result++ = v44 >> 7;
      v45 = v44 >> 14;
      v44 >>= 7;
    }

    while (v45);
  }

LABEL_83:
  v46 = *(a1 + 72);
  if (v46)
  {
    for (k = 0; k != v46; ++k)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v49 = *(*(a1 + 80) + 8 * k + 8);
      *result = 98;
      v50 = *(v49 + 20);
      result[1] = v50;
      if (v50 > 0x7F)
      {
        v48 = sub_19575D0(v50, result + 1);
      }

      else
      {
        v48 = result + 2;
      }

      result = sub_11F5A18(v49, v48, a3);
    }
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v52 = *(a1 + 163);
    *result = 104;
    result[1] = v52;
    result += 2;
    if ((v5 & 0x200) == 0)
    {
LABEL_93:
      v51 = *(a1 + 96);
      if (!v51)
      {
        goto LABEL_108;
      }

      goto LABEL_101;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_93;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v53 = *(a1 + 164);
  *result = 112;
  result[1] = v53;
  result += 2;
  v51 = *(a1 + 96);
  if (v51)
  {
LABEL_101:
    for (m = 0; m != v51; ++m)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v56 = *(*(a1 + 104) + 8 * m + 8);
      *result = 122;
      v57 = *(v56 + 20);
      result[1] = v57;
      if (v57 > 0x7F)
      {
        v55 = sub_19575D0(v57, result + 1);
      }

      else
      {
        v55 = result + 2;
      }

      result = sub_11F6B50(v56, v55, a3);
    }
  }

LABEL_108:
  v58 = *(a1 + 120);
  if (v58)
  {
    for (n = 0; n != v58; ++n)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v61 = *(*(a1 + 128) + 8 * n + 8);
      *result = 386;
      v62 = *(v61 + 20);
      result[2] = v62;
      if (v62 > 0x7F)
      {
        v60 = sub_19575D0(v62, result + 2);
      }

      else
      {
        v60 = result + 3;
      }

      result = sub_14A717C(v61, v60, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v63 = *(a1 + 136);
    *result = 418;
    v64 = *(v63 + 20);
    result[2] = v64;
    if (v64 > 0x7F)
    {
      v65 = sub_19575D0(v64, result + 2);
    }

    else
    {
      v65 = result + 3;
    }

    result = sub_11F7474(v63, v65, a3);
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v66 = *(a1 + 176);
      *result = 424;
      result[2] = v66;
      if (v66 <= 0x7F)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v66 = *(a1 + 176);
      *result = 424;
      result[2] = v66;
      if (v66 <= 0x7F)
      {
LABEL_126:
        result += 3;
        goto LABEL_131;
      }
    }

    result[2] = v66 | 0x80;
    v67 = v66 >> 7;
    result[3] = v66 >> 7;
    result += 4;
    if (v66 >= 0x4000)
    {
      v68 = v66 >> 7;
      do
      {
        *(result - 1) = v68 | 0x80;
        v68 = v67 >> 7;
        *result++ = v67 >> 7;
        v69 = v67 >> 14;
        v67 >>= 7;
      }

      while (v69);
    }
  }

LABEL_131:
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_139;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v70 = *(a1 + 180);
    *result = 432;
    result[2] = v70;
    if (v70 <= 0x7F)
    {
      goto LABEL_134;
    }
  }

  else
  {
    v70 = *(a1 + 180);
    *result = 432;
    result[2] = v70;
    if (v70 <= 0x7F)
    {
LABEL_134:
      result += 3;
      goto LABEL_139;
    }
  }

  result[2] = v70 | 0x80;
  v71 = v70 >> 7;
  result[3] = v70 >> 7;
  result += 4;
  if (v70 >= 0x4000)
  {
    v72 = v70 >> 7;
    do
    {
      *(result - 1) = v72 | 0x80;
      v72 = v71 >> 7;
      *result++ = v71 >> 7;
      v73 = v71 >> 14;
      v71 >>= 7;
    }

    while (v73);
  }

LABEL_139:
  v74 = *(a1 + 8);
  if (v74)
  {
    v75 = v74 & 0xFFFFFFFFFFFFFFFCLL;
    v76 = *(v75 + 31);
    if (v76 < 0)
    {
      v77 = *(v75 + 8);
      v76 = *(v75 + 16);
    }

    else
    {
      v77 = (v75 + 8);
    }

    v78 = v76;
    if (*a3 - result < v76)
    {

      return sub_1957130(a3, v77, v76, result);
    }

    else
    {
      v79 = result;
      memcpy(result, v77, v76);
      return &v79[v78];
    }
  }

  return result;
}

uint64_t sub_11F8948(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_11F3118(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = sub_1959E5C((a1 + 48));
  v9 = *(a1 + 72);
  v10 = v8 + v2 + *(a1 + 48) + v9;
  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = sub_11F60E4(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 96);
  v17 = v10 + v16;
  v18 = *(a1 + 104);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19;
      v22 = *(*v19 + 16);
      if ((v22 & 3) != 0)
      {
        if (v22)
        {
          v23 = 9;
        }

        else
        {
          v23 = 0;
        }

        if ((v22 & 2) != 0)
        {
          v23 += ((9 * (__clz(*(v21 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = *(v21 + 8);
      if (v24)
      {
        v25 = v24 & 0xFFFFFFFFFFFFFFFCLL;
        v26 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v26 < 0)
        {
          v26 = *(v25 + 16);
        }

        v23 += v26;
      }

      *(v21 + 20) = v23;
      v17 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      ++v19;
      v20 -= 8;
    }

    while (v20);
  }

  v27 = *(a1 + 120);
  v28 = v17 + 2 * v27;
  v29 = *(a1 + 128);
  if (v29)
  {
    v30 = (v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  if (v27)
  {
    v31 = 8 * v27;
    do
    {
      v32 = *v30++;
      v33 = sub_14A7308(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 16);
  if (v34)
  {
    if (v34)
    {
      v40 = sub_11F77B8(*(a1 + 136));
      v28 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v34 & 2) == 0)
      {
LABEL_42:
        if ((v34 & 4) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_60;
      }
    }

    else if ((v34 & 2) == 0)
    {
      goto LABEL_42;
    }

    v28 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v34 & 4) == 0)
    {
LABEL_43:
      if ((v34 & 8) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_64;
    }

LABEL_60:
    v41 = *(a1 + 148);
    v42 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v41 >= 0)
    {
      v43 = v42;
    }

    else
    {
      v43 = 11;
    }

    v28 += v43;
    if ((v34 & 8) == 0)
    {
LABEL_44:
      if ((v34 & 0x10) == 0)
      {
LABEL_46:
        v28 += ((v34 >> 5) & 2) + ((v34 >> 4) & 2) + ((v34 >> 6) & 2);
        goto LABEL_47;
      }

LABEL_45:
      v28 += ((9 * (__clz(*(a1 + 156) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_46;
    }

LABEL_64:
    v28 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_47:
  if ((v34 & 0x3F00) == 0)
  {
    goto LABEL_56;
  }

  v28 += ((v34 >> 8) & 2) + ((v34 >> 7) & 2);
  if ((v34 & 0x400) != 0)
  {
    v28 += ((9 * (__clz(*(a1 + 168) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v34 & 0x800) == 0)
    {
LABEL_50:
      if ((v34 & 0x1000) == 0)
      {
        goto LABEL_51;
      }

LABEL_68:
      v44 = *(a1 + 176);
      v45 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v44 >= 0)
      {
        v46 = v45;
      }

      else
      {
        v46 = 12;
      }

      v28 += v46;
      if ((v34 & 0x2000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_52;
    }
  }

  else if ((v34 & 0x800) == 0)
  {
    goto LABEL_50;
  }

  v28 += ((9 * (__clz(*(a1 + 172) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 0x1000) != 0)
  {
    goto LABEL_68;
  }

LABEL_51:
  if ((v34 & 0x2000) != 0)
  {
LABEL_52:
    v35 = *(a1 + 180);
    v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v35 >= 0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 12;
    }

    v28 += v37;
  }

LABEL_56:
  v38 = *(a1 + 8);
  if (v38)
  {
    v47 = v38 & 0xFFFFFFFFFFFFFFFCLL;
    v48 = *((v38 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v48 < 0)
    {
      v48 = *(v47 + 16);
    }

    v49 = v48 + v28;
    *(a1 + 20) = v49;
    return v49;
  }

  else
  {
    *(a1 + 20) = v28;
    return v28;
  }
}

void sub_11F8D80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201658((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 4 * v10), *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = *(a2 + 80);
    v14 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_12016E4((a1 + 64), v14, (v13 + 8), v12, **(a1 + 80) - *(a1 + 72));
    v15 = *(a1 + 72) + v12;
    *(a1 + 72) = v15;
    v16 = *(a1 + 80);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a2 + 104);
    v19 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_1201770((a1 + 88), v19, (v18 + 8), v17, **(a1 + 104) - *(a1 + 96));
    v20 = *(a1 + 96) + v17;
    *(a1 + 96) = v20;
    v21 = *(a1 + 104);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 120);
  if (v22)
  {
    v23 = *(a2 + 128);
    v24 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_1201838((a1 + 112), v24, (v23 + 8), v22, **(a1 + 128) - *(a1 + 120));
    v25 = *(a1 + 120) + v22;
    *(a1 + 120) = v25;
    v26 = *(a1 + 128);
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  v27 = *(a2 + 16);
  if (v27)
  {
    if ((v27 & 1) == 0)
    {
      goto LABEL_32;
    }

    *(a1 + 16) |= 1u;
    v28 = *(a1 + 136);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_1200158(v30);
      *(a1 + 136) = v28;
    }

    v31 = *(a2 + 136);
    if (!v31)
    {
      v31 = &off_2734300;
    }

    v32 = *(v31 + 4);
    if ((v32 & 0xF) == 0)
    {
LABEL_30:
      v33 = v31[1];
      if (v33)
      {
        sub_1957EF4(v28 + 1, (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

LABEL_32:
      if ((v27 & 2) != 0)
      {
        *(a1 + 144) = *(a2 + 144);
        if ((v27 & 4) == 0)
        {
LABEL_34:
          if ((v27 & 8) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_56;
        }
      }

      else if ((v27 & 4) == 0)
      {
        goto LABEL_34;
      }

      *(a1 + 148) = *(a2 + 148);
      if ((v27 & 8) == 0)
      {
LABEL_35:
        if ((v27 & 0x10) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_57;
      }

LABEL_56:
      *(a1 + 152) = *(a2 + 152);
      if ((v27 & 0x10) == 0)
      {
LABEL_36:
        if ((v27 & 0x20) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_58;
      }

LABEL_57:
      *(a1 + 156) = *(a2 + 156);
      if ((v27 & 0x20) == 0)
      {
LABEL_37:
        if ((v27 & 0x40) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_59;
      }

LABEL_58:
      *(a1 + 160) = *(a2 + 160);
      if ((v27 & 0x40) == 0)
      {
LABEL_38:
        if ((v27 & 0x80) == 0)
        {
LABEL_40:
          *(a1 + 16) |= v27;
          goto LABEL_41;
        }

LABEL_39:
        *(a1 + 162) = *(a2 + 162);
        goto LABEL_40;
      }

LABEL_59:
      *(a1 + 161) = *(a2 + 161);
      if ((v27 & 0x80) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v32)
    {
      *(v28 + 6) = *(v31 + 6);
      if ((v32 & 2) == 0)
      {
LABEL_26:
        if ((v32 & 4) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_69;
      }
    }

    else if ((v32 & 2) == 0)
    {
      goto LABEL_26;
    }

    *(v28 + 7) = *(v31 + 7);
    if ((v32 & 4) == 0)
    {
LABEL_27:
      if ((v32 & 8) == 0)
      {
LABEL_29:
        *(v28 + 4) |= v32;
        goto LABEL_30;
      }

LABEL_28:
      *(v28 + 9) = *(v31 + 9);
      goto LABEL_29;
    }

LABEL_69:
    *(v28 + 8) = *(v31 + 8);
    if ((v32 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_41:
  if ((v27 & 0x3F00) == 0)
  {
    goto LABEL_50;
  }

  if ((v27 & 0x100) != 0)
  {
    *(a1 + 163) = *(a2 + 163);
    if ((v27 & 0x200) == 0)
    {
LABEL_44:
      if ((v27 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_63;
    }
  }

  else if ((v27 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  *(a1 + 164) = *(a2 + 164);
  if ((v27 & 0x400) == 0)
  {
LABEL_45:
    if ((v27 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a1 + 168) = *(a2 + 168);
  if ((v27 & 0x800) == 0)
  {
LABEL_46:
    if ((v27 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

LABEL_65:
    *(a1 + 176) = *(a2 + 176);
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_64:
  *(a1 + 172) = *(a2 + 172);
  if ((v27 & 0x1000) != 0)
  {
    goto LABEL_65;
  }

LABEL_47:
  if ((v27 & 0x2000) != 0)
  {
LABEL_48:
    *(a1 + 180) = *(a2 + 180);
  }

LABEL_49:
  *(a1 + 16) |= v27;
LABEL_50:
  v34 = *(a2 + 8);
  if (v34)
  {

    sub_1957EF4((a1 + 8), (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11F9148(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    while (1)
    {
      v5 = *(*(a1 + 40) + 8 * v2);
      if (*(v5 + 16))
      {
        result = sub_16E5370(*(v5 + 24));
        if (!result)
        {
          break;
        }
      }

      if (v2-- <= 1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    v3 = *(a1 + 72);
    if (v3 >= 1)
    {
      while (1)
      {
        v7 = *(*(a1 + 80) + 8 * (v3 - 1) + 8);
        if ((*(v7 + 16) & 2) != 0)
        {
          v8 = *(v7 + 120);
          v9 = *(v8 + 24);
          if (v9 >= 1)
          {
            break;
          }
        }

LABEL_8:
        if (v3-- <= 1)
        {
          return 1;
        }
      }

      while (1)
      {
        v10 = *(*(v8 + 32) + 8 * v9);
        if (*(v10 + 16))
        {
          result = sub_16E4B4C(*(v10 + 24));
          if (!result)
          {
            break;
          }
        }

        if (v9-- <= 1)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_11F92A0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  if (a1 != &off_27343E0 && *(a1 + 24))
  {
    sub_16E8374();
    operator delete();
  }

  if (v2)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_8:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v5)
      {
LABEL_11:
        sub_194E188();
        operator delete();
      }
    }

    else if (v5)
    {
      goto LABEL_11;
    }
  }

  return a1;
}

void sub_11F9388(uint64_t a1)
{
  sub_11F92A0(a1);

  operator delete();
}

uint64_t sub_11F93C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_16E48B0(*(a1 + 24));
    a1 = v2;
  }

  if ((v1 & 0x3E) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11F9448(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
      v7 = *(a1 + 32);
      *v4 = 8;
      v4[1] = v7;
      if (v7 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *(a1 + 32);
      *__dst = 8;
      __dst[1] = v7;
      if (v7 <= 0x7F)
      {
LABEL_4:
        v4 += 2;
        goto LABEL_9;
      }
    }

    v4[1] = v7 | 0x80;
    v8 = v7 >> 7;
    v4[2] = v7 >> 7;
    v4 += 3;
    if (v7 >= 0x4000)
    {
      v9 = v7 >> 7;
      do
      {
        *(v4 - 1) = v8 | 0x80;
        v8 = v9 >> 7;
        *v4++ = v9 >> 7;
        v10 = v9 >> 14;
        v9 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v6 & 4) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v11 = *(a1 + 36);
    *v4 = 16;
    v4[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 36);
    *v4 = 16;
    v4[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v4 += 2;
      goto LABEL_17;
    }
  }

  v4[1] = v11 | 0x80;
  v12 = v11 >> 7;
  v4[2] = v11 >> 7;
  v4 += 3;
  if (v11 >= 0x4000)
  {
    v13 = v11 >> 7;
    do
    {
      *(v4 - 1) = v12 | 0x80;
      v12 = v13 >> 7;
      *v4++ = v13 >> 7;
      v14 = v13 >> 14;
      v13 >>= 7;
    }

    while (v14);
  }

LABEL_17:
  if ((v6 & 8) == 0)
  {
    goto LABEL_25;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v15 = *(a1 + 40);
    *v4 = 24;
    v4[1] = v15;
    if (v15 <= 0x7F)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = *(a1 + 40);
    *v4 = 24;
    v4[1] = v15;
    if (v15 <= 0x7F)
    {
LABEL_20:
      v4 += 2;
      goto LABEL_25;
    }
  }

  v4[1] = v15 | 0x80;
  v16 = v15 >> 7;
  v4[2] = v15 >> 7;
  v4 += 3;
  if (v15 >= 0x4000)
  {
    v17 = v15 >> 7;
    do
    {
      *(v4 - 1) = v16 | 0x80;
      v16 = v17 >> 7;
      *v4++ = v17 >> 7;
      v18 = v17 >> 14;
      v17 >>= 7;
    }

    while (v18);
  }

LABEL_25:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_33;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v19 = *(a1 + 44);
    *v4 = 32;
    v4[1] = v19;
    if (v19 <= 0x7F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = *(a1 + 44);
    *v4 = 32;
    v4[1] = v19;
    if (v19 <= 0x7F)
    {
LABEL_28:
      v4 += 2;
      goto LABEL_33;
    }
  }

  v4[1] = v19 | 0x80;
  v20 = v19 >> 7;
  v4[2] = v19 >> 7;
  v4 += 3;
  if (v19 >= 0x4000)
  {
    v21 = v19 >> 7;
    do
    {
      *(v4 - 1) = v20 | 0x80;
      v20 = v21 >> 7;
      *v4++ = v21 >> 7;
      v22 = v21 >> 14;
      v21 >>= 7;
    }

    while (v22);
  }

LABEL_33:
  if ((v6 & 0x20) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v26 = *(a1 + 24);
    *v4 = 50;
    v27 = *(v26 + 44);
    v4[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v4 + 1);
    }

    else
    {
      v28 = v4 + 2;
    }

    v4 = sub_16E886C(v26, v28, a3);
    v23 = *(a1 + 8);
    if ((v23 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_46;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 48);
  *v4 = 40;
  v4[1] = v25;
  v4 += 2;
  if (v6)
  {
    goto LABEL_40;
  }

LABEL_35:
  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v4;
  }

LABEL_46:
  v29 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  v32 = v30;
  if (*a3 - v4 < v30)
  {

    return sub_1957130(a3, v31, v30, v4);
  }

  else
  {
    memcpy(v4, v31, v30);
    return &v4[v32];
  }
}

uint64_t sub_11F97F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v5 = sub_16E8DA4(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v3 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v3 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  result = v3 + ((v2 >> 4) & 2);
LABEL_13:
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    result += v8;
    *(a1 + 20) = result;
  }

  else
  {
    *(a1 + 20) = result;
  }

  return result;
}

void sub_11F9950(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_16F5BD8(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E738;
      }

      sub_16E4964(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 36) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 16) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_9;
    }

LABEL_25:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11F9A68(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E4B4C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_11F9B00(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if ((v4 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(v2);
  }

  v5 = a1[5];
  if (v5 && !a1[3])
  {
    v8 = v5 + 1;
    v9 = *v5;
    if (v9 >= 1)
    {
      do
      {
        if (*v8)
        {
          sub_11F92A0(*v8);
          operator delete();
        }

        ++v8;
        --v9;
      }

      while (v9);
      v5 = a1[5];
    }

    operator delete(v5);
    a1[5] = 0;
    *a1 = off_27215B8;
    v6 = a1[1];
    if ((v6 & 2) == 0)
    {
      return a1;
    }
  }

  else
  {
    a1[5] = 0;
    *a1 = off_27215B8;
    v6 = a1[1];
    if ((v6 & 2) == 0)
    {
      return a1;
    }
  }

  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    if (*v7)
    {
LABEL_7:
      sub_194E188();
      operator delete();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  return a1;
}

void sub_11F9C44(void *a1)
{
  sub_11F9B00(a1);

  operator delete();
}

uint64_t sub_11F9C7C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = *(result + 40) + 8;
    do
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      if (v5)
      {
        result = sub_16E48B0(*(v4 + 24));
      }

      if ((v5 & 0x3E) != 0)
      {
        *(v4 + 32) = 0;
        *(v4 + 40) = 0;
        *(v4 + 48) = 0;
      }

      v7 = *(v4 + 8);
      v6 = v4 + 8;
      *(v6 + 8) = 0;
      if (v7)
      {
        result = sub_1957EA8(v6);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 40) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_11F9D48(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    result = a2;
    do
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v9 = *(*(a1 + 40) + 8 * v6 + 8);
      *result = 10;
      v10 = *(v9 + 20);
      result[1] = v10;
      if (v10 <= 0x7F)
      {
        v8 = result + 2;
      }

      else
      {
        v8 = sub_19575D0(v10, result + 1);
      }

      result = sub_11F9448(v9, v8, a3);
      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    result = a2;
  }

  if (*(a1 + 16))
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v11 = *(a1 + 48);
    *result = 17;
    *(result + 1) = v11;
    result += 9;
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *(v13 + 31);
    if (v14 < 0)
    {
      v15 = *(v13 + 8);
      v14 = *(v13 + 16);
    }

    else
    {
      v15 = (v13 + 8);
    }

    v16 = v14;
    if (*a3 - result < v14)
    {

      return sub_1957130(a3, v15, v14, result);
    }

    else
    {
      v17 = result;
      memcpy(result, v15, v14);
      return &v17[v16];
    }
  }

  return result;
}

uint64_t sub_11F9EC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_11F97F8(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
    if (*(a1 + 16))
    {
      result = v2 + 9;
    }

    else
    {
      result = v2;
    }

    v9 = *(a1 + 8);
    if ((v9 & 1) == 0)
    {
LABEL_11:
      *(a1 + 20) = result;
      return result;
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      result = 9;
    }

    else
    {
      result = 0;
    }

    v9 = *(a1 + 8);
    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v11 < 0)
  {
    v11 = *(v10 + 16);
  }

  result += v11;
  *(a1 + 20) = result;
  return result;
}

void sub_11F9F94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12018C4((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    *(a1 + 48) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11FA06C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 40) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_16E4B4C(*(v3 + 24));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

void *sub_11FA13C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11FA1DC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_11FA29C(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11FA2C4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v32 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v32;
      v5 = *(v32 + 24);
      *v3 = 8;
      v3[1] = v5;
      if (v5 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v5;
      if (v5 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v5 | 0x80;
    v8 = v5 >> 7;
    v3[2] = v5 >> 7;
    v3 += 3;
    if (v5 >= 0x4000)
    {
      v9 = v5 >> 7;
      do
      {
        *(v3 - 1) = v8 | 0x80;
        v8 = v9 >> 7;
        *v3++ = v9 >> 7;
        v10 = v9 >> 14;
        v9 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v3)
  {
    v33 = a1;
    v12 = v3;
    v13 = a3;
    v14 = sub_225EB68(a3, v12);
    a3 = v13;
    v3 = v14;
    a1 = v33;
    v11 = *(v33 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v3 += 2;
      goto LABEL_17;
    }
  }

  v3[1] = v11 | 0x80;
  v15 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v16 = v11 >> 7;
    do
    {
      *(v3 - 1) = v15 | 0x80;
      v15 = v16 >> 7;
      *v3++ = v16 >> 7;
      v17 = v16 >> 14;
      v16 >>= 7;
    }

    while (v17);
  }

LABEL_17:
  if ((v4 & 4) == 0)
  {
    goto LABEL_25;
  }

  if (*a3 <= v3)
  {
    v19 = a1;
    v20 = v3;
    v21 = a3;
    v22 = sub_225EB68(a3, v20);
    a3 = v21;
    v3 = v22;
    a1 = v19;
    v18 = *(v19 + 32);
    *v3 = 24;
    v3[1] = v18;
    if (v18 <= 0x7F)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *(a1 + 32);
    *v3 = 24;
    v3[1] = v18;
    if (v18 <= 0x7F)
    {
LABEL_20:
      v3 += 2;
      goto LABEL_25;
    }
  }

  v3[1] = v18 | 0x80;
  v23 = v18 >> 7;
  v3[2] = v18 >> 7;
  v3 += 3;
  if (v18 >= 0x4000)
  {
    v24 = v18 >> 7;
    do
    {
      *(v3 - 1) = v23 | 0x80;
      v23 = v24 >> 7;
      *v3++ = v24 >> 7;
      v25 = v24 >> 14;
      v24 >>= 7;
    }

    while (v25);
  }

LABEL_25:
  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v3;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  v31 = v29;
  if (*a3 - v3 < v29)
  {

    return sub_1957130(a3, v30, v29, v3);
  }

  else
  {
    memcpy(v3, v30, v29);
    return &v3[v31];
  }
}

uint64_t sub_11FA564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v2 = 0;
      if ((v1 & 2) == 0)
      {
LABEL_9:
        if ((v1 & 4) != 0)
        {
          v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
          v3 = *(a1 + 8);
          if ((v3 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v3 = *(a1 + 8);
          if ((v3 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_13;
      }
    }

    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_9;
  }

  v2 = 0;
  v3 = *(a1 + 8);
  if ((v3 & 1) == 0)
  {
LABEL_11:
    *(a1 + 20) = v2;
    return v2;
  }

LABEL_13:
  v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v6 < 0)
  {
    v6 = *(v5 + 16);
  }

  v7 = v6 + v2;
  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_11FA63C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_11FA710(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11FA7B0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_11FA870(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11FA8A8(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v33 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v33;
      v5 = *(v33 + 24);
      *v3 = 8;
      v3[1] = v5;
      if (v5 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v5;
      if (v5 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v5 | 0x80;
    v8 = v5 >> 7;
    v3[2] = v5 >> 7;
    v3 += 3;
    if (v5 >= 0x4000)
    {
      v9 = v5 >> 7;
      do
      {
        *(v3 - 1) = v8 | 0x80;
        v8 = v9 >> 7;
        *v3++ = v9 >> 7;
        v10 = v9 >> 14;
        v9 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v3)
  {
    v34 = a1;
    v12 = v3;
    v13 = a3;
    v14 = sub_225EB68(a3, v12);
    a3 = v13;
    v3 = v14;
    a1 = v34;
    v11 = *(v34 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v3 += 2;
      goto LABEL_17;
    }
  }

  v3[1] = v11 | 0x80;
  v15 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v16 = v11 >> 7;
    do
    {
      *(v3 - 1) = v15 | 0x80;
      v15 = v16 >> 7;
      *v3++ = v16 >> 7;
      v17 = v16 >> 14;
      v16 >>= 7;
    }

    while (v17);
  }

LABEL_17:
  if ((v4 & 4) == 0)
  {
    if ((v4 & 8) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    if (*a3 <= v3)
    {
      v28 = a1;
      v29 = v3;
      v30 = a3;
      v31 = sub_225EB68(a3, v29);
      a3 = v30;
      v3 = v31;
      a1 = v28;
    }

    v21 = *(a1 + 33);
    *v3 = 32;
    v3[1] = v21;
    v3 += 2;
    v18 = *(a1 + 8);
    if ((v18 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_27;
  }

  if (*a3 <= v3)
  {
    v35 = a1;
    v25 = v3;
    v26 = a3;
    v27 = sub_225EB68(a3, v25);
    a3 = v26;
    v3 = v27;
    a1 = v35;
  }

  v20 = *(a1 + 32);
  *v3 = 24;
  v3[1] = v20;
  v3 += 2;
  if ((v4 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v3;
  }

LABEL_27:
  v22 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  v32 = v23;
  if (*a3 - v3 < v23)
  {

    return sub_1957130(a3, v24, v23, v3);
  }

  else
  {
    memcpy(v3, v24, v23);
    return &v3[v32];
  }
}

uint64_t sub_11FAB40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_9;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v3 = v2 + ((v1 >> 2) & 2) + ((v1 >> 1) & 2);
LABEL_9:
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    v8 = v7 + v3;
    *(a1 + 20) = v8;
    return v8;
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

std::string *sub_11FABF8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      result[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result[1].__r_.__value_.__s.__data_[9] = *(a2 + 33);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_11FACE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (!*v3)
    {
LABEL_3:
      if (a1 != &off_2734478)
      {
        v4 = *(a1 + 48);
        if (v4)
        {
          v5 = v4[1];
          if ((v5 & 1) != 0 && !*(v5 & 0xFFFFFFFFFFFFFFFCLL))
          {
            sub_11F19CC(v4 + 1);
            v5 = v4[1];
          }

          *v4 = off_27215B8;
          if ((v5 & 2) != 0)
          {
            v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
            if (v5)
            {
              if (*v6)
              {
LABEL_9:
                sub_194E188();
                operator delete();
              }
            }

            else if (v6)
            {
              goto LABEL_9;
            }
          }

          operator delete();
        }
      }

      if (*(a1 + 8))
      {
        sub_11F19CC((a1 + 8));
      }
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 40);
  if (!v7 || *(a1 + 24))
  {
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v8 = *(a1 + 8);
    if ((v8 & 2) == 0)
    {
      return a1;
    }

LABEL_16:
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      if (!*v9)
      {
        return a1;
      }
    }

    else if (!v9)
    {
      return a1;
    }

    sub_194E188();
    operator delete();
  }

  v10 = (v7 + 2);
  v11 = *v7;
  if (v11 < 1)
  {
    goto LABEL_34;
  }

  do
  {
    v12 = *v10;
    if (*v10)
    {
      v13 = v12[1];
      if ((v13 & 1) != 0 && !*(v13 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v12 + 1);
        v13 = v12[1];
      }

      *v12 = off_27215B8;
      if ((v13 & 2) != 0)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          if (*v14)
          {
LABEL_28:
            sub_194E188();
            operator delete();
          }
        }

        else if (v14)
        {
          goto LABEL_28;
        }
      }

      operator delete();
    }

    ++v10;
    --v11;
  }

  while (v11);
  v7 = *(a1 + 40);
LABEL_34:
  operator delete(v7);
  *(a1 + 40) = 0;
  *a1 = off_27215B8;
  v8 = *(a1 + 8);
  if ((v8 & 2) != 0)
  {
    goto LABEL_16;
  }

  return a1;
}

void sub_11FAF6C(uint64_t a1)
{
  sub_11FACE0(a1);

  operator delete();
}

uint64_t sub_11FAFA4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = *(result + 40) + 8;
    do
    {
      v4 = *v3;
      if ((*(*v3 + 16) & 7) != 0)
      {
        *(v4 + 32) = 0;
        *(v4 + 24) = 0;
      }

      v5 = *(v4 + 8);
      result = v4 + 8;
      *(result + 8) = 0;
      if (v5)
      {
        result = sub_1957EA8(result);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v6 = *(v1 + 48);
    if ((*(v6 + 16) & 0xF) != 0)
    {
      *(v6 + 32) = 0;
      *(v6 + 24) = 0;
    }

    v7 = *(v6 + 8);
    result = v6 + 8;
    *(result + 8) = 0;
    if (v7)
    {
      result = sub_1957EA8(result);
    }
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_11FB080(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    result = a2;
    do
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v9 = *(*(a1 + 40) + 8 * v6 + 8);
      *result = 10;
      v10 = *(v9 + 20);
      result[1] = v10;
      if (v10 <= 0x7F)
      {
        v8 = result + 2;
      }

      else
      {
        v8 = sub_19575D0(v10, result + 1);
      }

      result = sub_11FA2C4(v9, v8, a3);
      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    result = a2;
  }

  if (*(a1 + 16))
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v11 = *(a1 + 48);
    *result = 18;
    v12 = *(v11 + 20);
    result[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, result + 1);
    }

    else
    {
      v13 = result + 2;
    }

    result = sub_11FA8A8(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *(v15 + 31);
    if (v16 < 0)
    {
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
    }

    else
    {
      v17 = (v15 + 8);
    }

    v18 = v16;
    if (*a3 - result < v16)
    {

      return sub_1957130(a3, v17, v16, result);
    }

    else
    {
      v19 = result;
      memcpy(result, v17, v16);
      return &v19[v18];
    }
  }

  return result;
}

uint64_t sub_11FB224(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = 8 * v1;
    while (1)
    {
      v5 = *v3;
      v6 = *(*v3 + 16);
      if ((v6 & 7) == 0)
      {
        v7 = 0;
        v8 = *(v5 + 8);
        if (v8)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (v6)
      {
        break;
      }

      v7 = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_13;
      }

LABEL_14:
      if ((v6 & 4) != 0)
      {
        v7 += ((9 * (__clz(*(v5 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
        v8 = *(v5 + 8);
        if (v8)
        {
LABEL_20:
          v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
          v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
          if (v10 < 0)
          {
            v10 = *(v9 + 16);
          }

          v7 += v10;
        }
      }

      else
      {
        v8 = *(v5 + 8);
        if (v8)
        {
          goto LABEL_20;
        }
      }

LABEL_18:
      *(v5 + 20) = v7;
      v1 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_24;
      }
    }

    v7 = ((9 * (__clz(*(v5 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v6 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v7 += ((9 * (__clz(*(v5 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_14;
  }

  v1 = 0;
LABEL_24:
  if (*(a1 + 16))
  {
    v13 = *(a1 + 48);
    v14 = *(v13 + 16);
    if ((v14 & 0xF) == 0)
    {
      v16 = 0;
      goto LABEL_35;
    }

    if (v14)
    {
      v15 = ((9 * (__clz(*(v13 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v14 & 2) == 0)
      {
LABEL_34:
        v16 = v15 + ((v14 >> 2) & 2) + ((v14 >> 1) & 2);
LABEL_35:
        v17 = *(v13 + 8);
        if (v17)
        {
          v21 = v17 & 0xFFFFFFFFFFFFFFFCLL;
          v22 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
          if (v22 < 0)
          {
            v22 = *(v21 + 16);
          }

          v16 += v22;
        }

        *(v13 + 20) = v16;
        v1 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
        v11 = *(a1 + 8);
        if ((v11 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v15 = 0;
      if ((v14 & 2) == 0)
      {
        goto LABEL_34;
      }
    }

    v15 += ((9 * (__clz(*(v13 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_34;
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
LABEL_26:
    *(a1 + 20) = v1;
    return v1;
  }

LABEL_37:
  v18 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v19 < 0)
  {
    v19 = *(v18 + 16);
  }

  v20 = v19 + v1;
  *(a1 + 20) = v20;
  return v20;
}

std::string *sub_11FB45C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1201950(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    result = v3[2].__r_.__value_.__l.__data_;
    if (!result)
    {
      size = v3->__r_.__value_.__l.__size_;
      v11 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v11 = *v11;
      }

      result = sub_1200454(v11);
      v3[2].__r_.__value_.__r.__words[0] = result;
      v9 = *(a2 + 48);
    }

    if (!v9)
    {
      v9 = &off_2734450;
    }

    v12 = *(v9 + 4);
    if ((v12 & 0xF) == 0)
    {
      goto LABEL_18;
    }

    if (v12)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(v9 + 6);
      if ((v12 & 2) == 0)
      {
LABEL_14:
        if ((v12 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_26;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_14;
    }

    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(v9 + 7);
    if ((v12 & 4) == 0)
    {
LABEL_15:
      if ((v12 & 8) == 0)
      {
LABEL_17:
        LODWORD(result->__r_.__value_.__r.__words[2]) |= v12;
LABEL_18:
        v13 = v9[1];
        if (v13)
        {
          result = sub_1957EF4(&result->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        goto LABEL_20;
      }

LABEL_16:
      result[1].__r_.__value_.__s.__data_[9] = *(v9 + 33);
      goto LABEL_17;
    }

LABEL_26:
    result[1].__r_.__value_.__s.__data_[8] = *(v9 + 32);
    if ((v12 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_11FB644(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_27344B0)
  {
    if (*(a1 + 24))
    {
      sub_154BB24();
      operator delete();
    }

    if (*(a1 + 32))
    {
      sub_16E4E08();
      operator delete();
    }
  }

  v2 = *v3;
  if (*v3)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_10:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v5)
      {
LABEL_13:
        sub_194E188();
        operator delete();
      }
    }

    else if (v5)
    {
      goto LABEL_13;
    }
  }

  return a1;
}

void sub_11FB744(uint64_t a1)
{
  sub_11FB644(a1);

  operator delete();
}

uint64_t sub_11FB77C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1479D14(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E4E44(*(v1 + 32));
    }
  }

  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_11FB80C(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
      v4 = sub_154BD44(v7, v9, a3);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = sub_154BD44(v7, v4 + 2, a3);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 32);
  *v4 = 18;
  v11 = *(v10 + 44);
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, v4 + 1);
    v4 = sub_16E5070(v10, v12, a3);
    if ((v6 & 4) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = sub_16E5070(v10, v4 + 2, a3);
    if ((v6 & 4) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v13 = *(a1 + 40);
    *v4 = 24;
    v4[1] = v13;
    if (v13 <= 0x7F)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v13 = *(a1 + 40);
    *v4 = 24;
    v4[1] = v13;
    if (v13 <= 0x7F)
    {
LABEL_19:
      v4 += 2;
      goto LABEL_24;
    }
  }

  v4[1] = v13 | 0x80;
  v14 = v13 >> 7;
  v4[2] = v13 >> 7;
  v4 += 3;
  if (v13 >= 0x4000)
  {
    v15 = v13 >> 7;
    do
    {
      *(v4 - 1) = v14 | 0x80;
      v14 = v15 >> 7;
      *v4++ = v15 >> 7;
      v16 = v15 >> 14;
      v15 >>= 7;
    }

    while (v16);
  }

LABEL_24:
  if ((v6 & 8) == 0)
  {
    goto LABEL_32;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v17 = *(a1 + 44);
    *v4 = 32;
    v4[1] = v17;
    if (v17 <= 0x7F)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v17 = *(a1 + 44);
    *v4 = 32;
    v4[1] = v17;
    if (v17 <= 0x7F)
    {
LABEL_27:
      v4 += 2;
      goto LABEL_32;
    }
  }

  v4[1] = v17 | 0x80;
  v18 = v17 >> 7;
  v4[2] = v17 >> 7;
  v4 += 3;
  if (v17 >= 0x4000)
  {
    v19 = v17 >> 7;
    do
    {
      *(v4 - 1) = v19 | 0x80;
      v19 = v18 >> 7;
      *v4++ = v18 >> 7;
      v20 = v18 >> 14;
      v18 >>= 7;
    }

    while (v20);
  }

LABEL_32:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_40;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v21 = *(a1 + 48);
    *v4 = 40;
    v4[1] = v21;
    if (v21 <= 0x7F)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v21 = *(a1 + 48);
    *v4 = 40;
    v4[1] = v21;
    if (v21 <= 0x7F)
    {
LABEL_35:
      v4 += 2;
      goto LABEL_40;
    }
  }

  v4[1] = v21 | 0x80;
  v22 = v21 >> 7;
  v4[2] = v21 >> 7;
  v4 += 3;
  if (v21 >= 0x4000)
  {
    v23 = v21 >> 7;
    do
    {
      *(v4 - 1) = v23 | 0x80;
      v23 = v22 >> 7;
      *v4++ = v22 >> 7;
      v24 = v22 >> 14;
      v22 >>= 7;
    }

    while (v24);
  }

LABEL_40:
  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v4;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  v30 = v28;
  if (*a3 - v4 < v28)
  {

    return sub_1957130(a3, v29, v28, v4);
  }

  else
  {
    memcpy(v4, v29, v28);
    return &v4[v30];
  }
}

uint64_t sub_11FBB8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) != 0)
  {
    if (v2)
    {
      v5 = sub_154BEF4(*(a1 + 24));
      result = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = 0;
      if ((v2 & 2) == 0)
      {
LABEL_9:
        if ((v2 & 4) != 0)
        {
          result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
          if ((v2 & 8) == 0)
          {
LABEL_11:
            if ((v2 & 0x10) == 0)
            {
              goto LABEL_12;
            }

LABEL_19:
            result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
            v4 = *(a1 + 8);
            if ((v4 & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_20;
          }
        }

        else if ((v2 & 8) == 0)
        {
          goto LABEL_11;
        }

        v8 = *(a1 + 44);
        if (v8 < 0)
        {
          result += 11;
          if ((v2 & 0x10) != 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          result += ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if ((v2 & 0x10) != 0)
          {
            goto LABEL_19;
          }
        }

LABEL_12:
        v4 = *(a1 + 8);
        if ((v4 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

    v6 = result;
    v7 = sub_16E51F0(*(a1 + 32));
    result = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_9;
  }

  result = 0;
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
LABEL_13:
    *(a1 + 20) = result;
    return result;
  }

LABEL_20:
  v9 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v10 < 0)
  {
    v10 = *(v9 + 16);
  }

  result += v10;
  *(a1 + 20) = result;
  return result;
}

void sub_11FBD10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_1552410(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2776F48;
      }

      sub_121721C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_29;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_16F5828(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277E5E8;
    }

    sub_16E527C(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_8;
    }

LABEL_30:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11FBE58(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_11FBEEC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_27344E8)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      sub_11F9B00(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  v7 = *(a1 + 88);
  if (v7 && !*(a1 + 72))
  {
    v8 = v7 + 1;
    v9 = *v7;
    if (v9 >= 1)
    {
      do
      {
        if (*v8)
        {
          sub_11FB644(*v8);
          operator delete();
        }

        ++v8;
        --v9;
      }

      while (v9);
      v7 = *(a1 + 88);
    }

    operator delete(v7);
  }

  *(a1 + 88) = 0;
  v10 = *(a1 + 64);
  if (v10 && !*(a1 + 48))
  {
    v11 = v10 + 1;
    v12 = *v10;
    if (v12 >= 1)
    {
      do
      {
        if (*v11)
        {
          sub_11FACE0(*v11);
          operator delete();
        }

        ++v11;
        --v12;
      }

      while (v12);
      v10 = *(a1 + 64);
    }

    operator delete(v10);
  }

  *(a1 + 64) = 0;
  v13 = *(a1 + 40);
  if (v13 && !*(a1 + 24))
  {
    v16 = v13 + 1;
    v17 = *v13;
    if (v17 >= 1)
    {
      do
      {
        if (*v16)
        {
          sub_11F3AE0(*v16);
          operator delete();
        }

        ++v16;
        --v17;
      }

      while (v17);
      v13 = *(a1 + 40);
    }

    operator delete(v13);
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v14 = *(a1 + 8);
    if ((v14 & 2) == 0)
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v14 = *(a1 + 8);
    if ((v14 & 2) == 0)
    {
      return a1;
    }
  }

  v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14)
  {
    if (*v15)
    {
LABEL_31:
      sub_194E188();
      operator delete();
    }
  }

  else if (v15)
  {
    goto LABEL_31;
  }

  return a1;
}

void sub_11FC144(uint64_t a1)
{
  sub_11FBEEC(a1);

  operator delete();
}

uint64_t sub_11FC17C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_11F3DB8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_11FAFA4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = *(v1 + 88) + 8;
    do
    {
      v10 = *v9;
      v11 = *(*v9 + 16);
      if ((v11 & 3) != 0)
      {
        if (v11)
        {
          result = sub_1479D14(*(v10 + 24));
        }

        if ((v11 & 2) != 0)
        {
          result = sub_16E4E44(*(v10 + 32));
        }
      }

      if ((v11 & 0x1C) != 0)
      {
        *(v10 + 40) = 0;
        *(v10 + 48) = 0;
      }

      v13 = *(v10 + 8);
      v12 = v10 + 8;
      *(v12 + 8) = 0;
      if (v13)
      {
        result = sub_1957EA8(v12);
      }

      v9 += 8;
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v14 = *(v1 + 16);
  if (v14)
  {
    v15 = *(v1 + 96);
    v16 = *(v15 + 32);
    if (v16 >= 1)
    {
      v17 = *(v15 + 40) + 8;
      do
      {
        v18 = *v17;
        v19 = *(*v17 + 16);
        if (v19)
        {
          result = sub_16E48B0(*(v18 + 24));
        }

        if ((v19 & 0x3E) != 0)
        {
          *(v18 + 32) = 0;
          *(v18 + 40) = 0;
          *(v18 + 48) = 0;
        }

        v21 = *(v18 + 8);
        v20 = v18 + 8;
        *(v20 + 8) = 0;
        if (v21)
        {
          result = sub_1957EA8(v20);
        }

        v17 += 8;
        --v16;
      }

      while (v16);
      *(v15 + 32) = 0;
    }

    v23 = *(v15 + 8);
    v22 = v15 + 8;
    *(v22 + 40) = 0;
    *(v22 + 8) = 0;
    if (v23)
    {
      result = sub_1957EA8(v22);
    }
  }

  if ((v14 & 0x7E) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
  }

  v25 = *(v1 + 8);
  v24 = v1 + 8;
  *(v24 + 8) = 0;
  if (v25)
  {

    return sub_1957EA8(v24);
  }

  return result;
}

char *sub_11FC36C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) == 0)
  {
    result = __dst;
    goto LABEL_10;
  }

  v7 = __dst;
  if (*a3 <= __dst)
  {
    v7 = sub_225EB68(a3, __dst);
    v8 = *(a1 + 104);
    *v7 = 8;
    v7[1] = v8;
    if (v8 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *(a1 + 104);
    *__dst = 8;
    __dst[1] = v8;
    if (v8 <= 0x7F)
    {
LABEL_5:
      result = v7 + 2;
      goto LABEL_10;
    }
  }

  v7[1] = v8 | 0x80;
  v9 = v8 >> 7;
  v7[2] = v8 >> 7;
  result = v7 + 3;
  if (v8 >= 0x4000)
  {
    v10 = v8 >> 7;
    do
    {
      *(result - 1) = v9 | 0x80;
      v9 = v10 >> 7;
      *result++ = v10 >> 7;
      v11 = v10 >> 14;
      v10 >>= 7;
    }

    while (v11);
  }

LABEL_10:
  if ((v5 & 4) == 0)
  {
    goto LABEL_18;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v12 = *(a1 + 108);
    *result = 16;
    result[1] = v12;
    if (v12 <= 0x7F)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = *(a1 + 108);
    *result = 16;
    result[1] = v12;
    if (v12 <= 0x7F)
    {
LABEL_13:
      result += 2;
      goto LABEL_18;
    }
  }

  result[1] = v12 | 0x80;
  v13 = v12 >> 7;
  result[2] = v12 >> 7;
  result += 3;
  if (v12 >= 0x4000)
  {
    v14 = v12 >> 7;
    do
    {
      *(result - 1) = v13 | 0x80;
      v13 = v14 >> 7;
      *result++ = v14 >> 7;
      v15 = v14 >> 14;
      v14 >>= 7;
    }

    while (v15);
  }

LABEL_18:
  if (v5)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v16 = *(a1 + 96);
    *result = 26;
    v17 = *(v16 + 20);
    result[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, result + 1);
    }

    else
    {
      v18 = result + 2;
    }

    result = sub_11F9D48(v16, v18, a3);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v22 = *(*(a1 + 40) + 8 * i + 8);
      *result = 34;
      v23 = *(v22 + 20);
      result[1] = v23;
      if (v23 <= 0x7F)
      {
        v21 = result + 2;
      }

      else
      {
        v21 = sub_19575D0(v23, result + 1);
      }

      result = sub_11F3EA4(v22, v21, a3);
    }
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    for (j = 0; j != v24; ++j)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v27 = *(*(a1 + 64) + 8 * j + 8);
      *result = 42;
      v28 = *(v27 + 20);
      result[1] = v28;
      if (v28 <= 0x7F)
      {
        v26 = result + 2;
      }

      else
      {
        v26 = sub_19575D0(v28, result + 1);
      }

      result = sub_11FB080(v27, v26, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v29 = *(a1 + 112);
      *result = 48;
      result[1] = v29;
      if (v29 <= 0x7F)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v29 = *(a1 + 112);
      *result = 48;
      result[1] = v29;
      if (v29 <= 0x7F)
      {
LABEL_44:
        result += 2;
        goto LABEL_49;
      }
    }

    result[1] = v29 | 0x80;
    v30 = v29 >> 7;
    result[2] = v29 >> 7;
    result += 3;
    if (v29 >= 0x4000)
    {
      v31 = v29 >> 7;
      do
      {
        *(result - 1) = v30 | 0x80;
        v30 = v31 >> 7;
        *result++ = v31 >> 7;
        v32 = v31 >> 14;
        v31 >>= 7;
      }

      while (v32);
    }
  }

LABEL_49:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_57;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v33 = *(a1 + 116);
    *result = 56;
    result[1] = v33;
    if (v33 <= 0x7F)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v33 = *(a1 + 116);
    *result = 56;
    result[1] = v33;
    if (v33 <= 0x7F)
    {
LABEL_52:
      result += 2;
      goto LABEL_57;
    }
  }

  result[1] = v33 | 0x80;
  v34 = v33 >> 7;
  result[2] = v33 >> 7;
  result += 3;
  if (v33 >= 0x4000)
  {
    v35 = v33 >> 7;
    do
    {
      *(result - 1) = v34 | 0x80;
      v34 = v35 >> 7;
      *result++ = v35 >> 7;
      v36 = v35 >> 14;
      v35 >>= 7;
    }

    while (v36);
  }

LABEL_57:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_65;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v37 = *(a1 + 120);
    *result = 64;
    result[1] = v37;
    if (v37 <= 0x7F)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v37 = *(a1 + 120);
    *result = 64;
    result[1] = v37;
    if (v37 <= 0x7F)
    {
LABEL_60:
      result += 2;
      goto LABEL_65;
    }
  }

  result[1] = v37 | 0x80;
  v38 = v37 >> 7;
  result[2] = v37 >> 7;
  result += 3;
  if (v37 >= 0x4000)
  {
    v39 = v37 >> 7;
    do
    {
      *(result - 1) = v38 | 0x80;
      v38 = v39 >> 7;
      *result++ = v39 >> 7;
      v40 = v39 >> 14;
      v39 >>= 7;
    }

    while (v40);
  }

LABEL_65:
  v41 = *(a1 + 80);
  if (v41)
  {
    for (k = 0; k != v41; ++k)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v44 = *(*(a1 + 88) + 8 * k + 8);
      *result = 74;
      v45 = *(v44 + 20);
      result[1] = v45;
      if (v45 <= 0x7F)
      {
        v43 = result + 2;
      }

      else
      {
        v43 = sub_19575D0(v45, result + 1);
      }

      result = sub_11FB80C(v44, v43, a3);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v46 = *(a1 + 124);
      *result = 472;
      result[2] = v46;
      if (v46 <= 0x7F)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v46 = *(a1 + 124);
      *result = 472;
      result[2] = v46;
      if (v46 <= 0x7F)
      {
LABEL_76:
        result += 3;
        goto LABEL_81;
      }
    }

    result[2] = v46 | 0x80;
    v47 = v46 >> 7;
    result[3] = v46 >> 7;
    result += 4;
    if (v46 >= 0x4000)
    {
      v48 = v46 >> 7;
      do
      {
        *(result - 1) = v48 | 0x80;
        v48 = v47 >> 7;
        *result++ = v47 >> 7;
        v49 = v47 >> 14;
        v47 >>= 7;
      }

      while (v49);
    }
  }

LABEL_81:
  v50 = *(a1 + 8);
  if (v50)
  {
    v51 = v50 & 0xFFFFFFFFFFFFFFFCLL;
    v52 = *(v51 + 31);
    if (v52 < 0)
    {
      v53 = *(v51 + 8);
      v52 = *(v51 + 16);
    }

    else
    {
      v53 = (v51 + 8);
    }

    v54 = v52;
    if (*a3 - result < v52)
    {

      return sub_1957130(a3, v53, v52, result);
    }

    else
    {
      v55 = result;
      memcpy(result, v53, v52);
      return &v55[v54];
    }
  }

  return result;
}

uint64_t sub_11FC984(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_11F4120(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_11FB224(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_11FBB8C(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x7F) != 0)
  {
    if ((v22 & 1) == 0)
    {
      if ((v22 & 2) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_49;
    }

    v28 = *(a1 + 96);
    v29 = *(v28 + 32);
    v30 = *(v28 + 40);
    if (v30)
    {
      v31 = (v30 + 8);
    }

    else
    {
      v31 = 0;
    }

    if (v29)
    {
      v32 = 8 * v29;
      do
      {
        v33 = *v31++;
        v34 = sub_11F97F8(v33);
        v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
        v32 -= 8;
      }

      while (v32);
      v35 = v29 + 9;
      if ((*(v28 + 16) & 1) == 0)
      {
        v35 = v29;
      }

      v36 = *(v28 + 8);
      if (v36)
      {
LABEL_58:
        v39 = v36 & 0xFFFFFFFFFFFFFFFCLL;
        v40 = *((v36 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v40 < 0)
        {
          v40 = *(v39 + 16);
        }

        v35 += v40;
      }
    }

    else
    {
      v35 = 9;
      if ((*(v28 + 16) & 1) == 0)
      {
        v35 = 0;
      }

      v36 = *(v28 + 8);
      if (v36)
      {
        goto LABEL_58;
      }
    }

    *(v28 + 20) = v35;
    v16 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 2) == 0)
    {
LABEL_24:
      if ((v22 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_50;
    }

LABEL_49:
    v16 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 4) == 0)
    {
LABEL_25:
      if ((v22 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_51;
    }

LABEL_50:
    v16 += ((9 * (__clz(*(a1 + 108) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 8) == 0)
    {
LABEL_26:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_52;
    }

LABEL_51:
    v16 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x10) == 0)
    {
LABEL_27:
      if ((v22 & 0x20) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_53;
    }

LABEL_52:
    v16 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x20) == 0)
    {
LABEL_28:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_33;
      }

LABEL_29:
      v23 = *(a1 + 124);
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v23 >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 12;
      }

      v16 += v25;
      goto LABEL_33;
    }

LABEL_53:
    v16 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_33:
  v26 = *(a1 + 8);
  if (v26)
  {
    v37 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v38 < 0)
    {
      v38 = *(v37 + 16);
    }

    v16 += v38;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_11FCCCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201358((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201A30((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1201ABC((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x7F) != 0)
  {
    if (v19)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 96);
      if (!v20)
      {
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v20 = sub_1200330(v22);
        *(a1 + 96) = v20;
      }

      if (*(a2 + 96))
      {
        v23 = *(a2 + 96);
      }

      else
      {
        v23 = &off_2734418;
      }

      v24 = *(v23 + 8);
      if (v24)
      {
        v25 = v23[5];
        v26 = sub_19592E8((v20 + 3), *(v23 + 8));
        sub_12018C4(v20 + 3, v26, v25 + 1, v24, *v20[5] - *(v20 + 8));
        v27 = *(v20 + 8) + v24;
        *(v20 + 8) = v27;
        v28 = v20[5];
        if (*v28 < v27)
        {
          *v28 = v27;
        }
      }

      if (v23[2])
      {
        v29 = v23[6];
        *(v20 + 4) |= 1u;
        v20[6] = v29;
      }

      v30 = v23[1];
      if (v30)
      {
        sub_1957EF4(v20 + 1, (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v19 & 2) != 0)
    {
      *(a1 + 104) = *(a2 + 104);
      if ((v19 & 4) == 0)
      {
LABEL_28:
        if ((v19 & 8) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_40;
      }
    }

    else if ((v19 & 4) == 0)
    {
      goto LABEL_28;
    }

    *(a1 + 108) = *(a2 + 108);
    if ((v19 & 8) == 0)
    {
LABEL_29:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 112) = *(a2 + 112);
    if ((v19 & 0x10) == 0)
    {
LABEL_30:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 116) = *(a2 + 116);
    if ((v19 & 0x20) == 0)
    {
LABEL_31:
      if ((v19 & 0x40) == 0)
      {
LABEL_33:
        *(a1 + 16) |= v19;
        goto LABEL_34;
      }

LABEL_32:
      *(a1 + 124) = *(a2 + 124);
      goto LABEL_33;
    }

LABEL_42:
    *(a1 + 120) = *(a2 + 120);
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_34:
  v31 = *(a2 + 8);
  if (v31)
  {

    sub_1957EF4((a1 + 8), (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11FCFAC(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 >= 1)
  {
    while (1)
    {
      v6 = *(*(a1 + 88) + 8 * v2);
      if ((*(v6 + 16) & 2) != 0)
      {
        result = sub_16E5370(*(v6 + 32));
        if (!result)
        {
          break;
        }
      }

      if (v2-- <= 1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    if ((*(a1 + 16) & 1) != 0 && (v3 = *(a1 + 96), v4 = *(v3 + 32), v4 >= 1))
    {
      while (1)
      {
        v7 = *(*(v3 + 40) + 8 * v4);
        if (*(v7 + 16))
        {
          result = sub_16E4B4C(*(v7 + 24));
          if (!result)
          {
            break;
          }
        }

        if (v4-- <= 1)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *sub_11FD0C0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11FD160(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_11FD220(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11FD248(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v25 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v25;
      v5 = *(v25 + 24);
      *v3 = 8;
      v3[1] = v5;
      if (v5 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v5;
      if (v5 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v5 | 0x80;
    v8 = v5 >> 7;
    v3[2] = v5 >> 7;
    v3 += 3;
    if (v5 >= 0x4000)
    {
      v9 = v5 >> 7;
      do
      {
        *(v3 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v3++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v3)
  {
    v12 = a1;
    v13 = v3;
    v14 = a3;
    v15 = sub_225EB68(a3, v13);
    a3 = v14;
    v3 = v15;
    a1 = v12;
    v11 = *(v12 + 32);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 32);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v3 += 2;
      goto LABEL_17;
    }
  }

  v3[1] = v11 | 0x80;
  v16 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v17 = v11 >> 7;
    do
    {
      *(v3 - 1) = v16 | 0x80;
      v16 = v17 >> 7;
      *v3++ = v17 >> 7;
      v18 = v17 >> 14;
      v17 >>= 7;
    }

    while (v18);
  }

LABEL_17:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v3;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  v24 = v22;
  if (*a3 - v3 < v22)
  {

    return sub_1957130(a3, v23, v22, v3);
  }

  else
  {
    memcpy(v3, v23, v22);
    return &v3[v24];
  }
}

unint64_t sub_11FD444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v7 = v6 + v2;
    *(a1 + 20) = v7;
    return v7;
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

std::string *sub_11FD4E4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_11FD59C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_2677228;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = &qword_278E990;
  *(a1 + 192) = &qword_278E990;
  *(a1 + 200) = &qword_278E990;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 251) = 0u;
  return result;
}

void *sub_11FD614(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_11FD7FC(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 20);
  sub_1956AFC(a1 + 17);
  sub_1956AFC(a1 + 14);
  sub_1956ABC((a1 + 12));
  v5 = a1[11];
  if (v5 && !a1[9])
  {
    v6 = v5 + 2;
    v7 = *v5;
    if (v7 >= 1)
    {
      do
      {
        if (*v6)
        {
          sub_16E4E08();
          operator delete();
        }

        ++v6;
        --v7;
      }

      while (v7);
      v5 = a1[11];
    }

    operator delete(v5);
  }

  a1[11] = 0;
  sub_1956AFC(a1 + 6);
  v8 = a1[5];
  if (v8 && !a1[3])
  {
    v11 = v8 + 1;
    v12 = *v8;
    if (v12 >= 1)
    {
      do
      {
        if (*v11)
        {
          sub_11F799C(*v11);
          operator delete();
        }

        ++v11;
        --v12;
      }

      while (v12);
      v8 = a1[5];
    }

    operator delete(v8);
    a1[5] = 0;
    *a1 = off_27215B8;
    v9 = a1[1];
    if ((v9 & 2) == 0)
    {
      return a1;
    }
  }

  else
  {
    a1[5] = 0;
    *a1 = off_27215B8;
    v9 = a1[1];
    if ((v9 & 2) == 0)
    {
      return a1;
    }
  }

  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    if (*v10)
    {
LABEL_19:
      sub_194E188();
      operator delete();
    }
  }

  else if (v10)
  {
    goto LABEL_19;
  }

  return a1;
}

void ***sub_11FD7FC(uint64_t a1)
{
  v3 = *(a1 + 184);
  v2 = (a1 + 184);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 192) != &qword_278E990)
  {
    sub_194E89C((a1 + 192));
  }

  result = (a1 + 200);
  if (*(a1 + 200) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2734590)
  {
    v5 = *(a1 + 208);
    if (v5)
    {
      sub_11FBEEC(v5);
      operator delete();
    }

    if (*(a1 + 216))
    {
      sub_16E4E08();
      operator delete();
    }

    v6 = *(a1 + 224);
    if (v6)
    {
      v7 = v6[1];
      if ((v7 & 1) != 0 && !*(v7 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v6 + 1);
        v7 = v6[1];
      }

      *v6 = off_27215B8;
      if ((v7 & 2) != 0)
      {
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          if (*v8)
          {
LABEL_17:
            sub_194E188();
            operator delete();
          }
        }

        else if (v8)
        {
          goto LABEL_17;
        }
      }

      operator delete();
    }

    result = *(a1 + 232);
    if (result)
    {
      sub_154C0C0();

      operator delete();
    }
  }

  return result;
}

void sub_11FD998(void *a1)
{
  sub_11FD614(a1);

  operator delete();
}

uint64_t sub_11FD9D0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_11F7DA4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = *(v1 + 64) + 8;
    do
    {
      while (1)
      {
        v7 = *v6;
        if (*(*v6 + 23) < 0)
        {
          break;
        }

        *v7 = 0;
        *(v7 + 23) = 0;
        v6 += 8;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }

      **v7 = 0;
      *(v7 + 8) = 0;
      v6 += 8;
      --v5;
    }

    while (v5);
LABEL_10:
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_16E4E44(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  *(v1 + 96) = 0;
  v11 = *(v1 + 120);
  if (v11 >= 1)
  {
    v12 = *(v1 + 128) + 8;
    do
    {
      while (1)
      {
        v13 = *v12;
        if (*(*v12 + 23) < 0)
        {
          break;
        }

        *v13 = 0;
        *(v13 + 23) = 0;
        v12 += 8;
        if (!--v11)
        {
          goto LABEL_20;
        }
      }

      **v13 = 0;
      *(v13 + 8) = 0;
      v12 += 8;
      --v11;
    }

    while (v11);
LABEL_20:
    *(v1 + 120) = 0;
  }

  v14 = *(v1 + 144);
  if (v14 >= 1)
  {
    v15 = *(v1 + 152) + 8;
    do
    {
      while (1)
      {
        v16 = *v15;
        if (*(*v15 + 23) < 0)
        {
          break;
        }

        *v16 = 0;
        *(v16 + 23) = 0;
        v15 += 8;
        if (!--v14)
        {
          goto LABEL_26;
        }
      }

      **v16 = 0;
      *(v16 + 8) = 0;
      v15 += 8;
      --v14;
    }

    while (v14);
LABEL_26:
    *(v1 + 144) = 0;
  }

  v17 = *(v1 + 168);
  if (v17 >= 1)
  {
    v18 = *(v1 + 176) + 8;
    do
    {
      while (1)
      {
        v19 = *v18;
        if (*(*v18 + 23) < 0)
        {
          break;
        }

        *v19 = 0;
        *(v19 + 23) = 0;
        v18 += 8;
        if (!--v17)
        {
          goto LABEL_32;
        }
      }

      **v19 = 0;
      *(v19 + 8) = 0;
      v18 += 8;
      --v17;
    }

    while (v17);
LABEL_32:
    *(v1 + 168) = 0;
  }

  v20 = *(v1 + 16);
  if ((v20 & 0x7F) != 0)
  {
    if ((v20 & 1) == 0)
    {
      if ((v20 & 2) == 0)
      {
        goto LABEL_36;
      }

LABEL_45:
      v22 = *(v1 + 192) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v22 + 23) < 0)
      {
        **v22 = 0;
        *(v22 + 8) = 0;
        if ((v20 & 4) != 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        *v22 = 0;
        *(v22 + 23) = 0;
        if ((v20 & 4) != 0)
        {
          goto LABEL_49;
        }
      }

LABEL_37:
      if ((v20 & 8) == 0)
      {
        goto LABEL_38;
      }

LABEL_53:
      result = sub_11FC17C(*(v1 + 208));
      if ((v20 & 0x10) == 0)
      {
LABEL_39:
        if ((v20 & 0x20) == 0)
        {
LABEL_59:
          if ((v20 & 0x40) != 0)
          {
            result = sub_14C9FA8(*(v1 + 232));
          }

          goto LABEL_61;
        }

LABEL_55:
        v24 = *(v1 + 224);
        if ((*(v24 + 16) & 3) != 0)
        {
          *(v24 + 32) = 0;
          *(v24 + 24) = 0;
        }

        v25 = *(v24 + 8);
        result = v24 + 8;
        *(result + 8) = 0;
        if (v25)
        {
          result = sub_1957EA8(result);
        }

        goto LABEL_59;
      }

LABEL_54:
      result = sub_16E4E44(*(v1 + 216));
      if ((v20 & 0x20) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v21 = *(v1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v21 + 23) < 0)
    {
      **v21 = 0;
      *(v21 + 8) = 0;
      if ((v20 & 2) != 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      *v21 = 0;
      *(v21 + 23) = 0;
      if ((v20 & 2) != 0)
      {
        goto LABEL_45;
      }
    }

LABEL_36:
    if ((v20 & 4) == 0)
    {
      goto LABEL_37;
    }

LABEL_49:
    v23 = *(v1 + 200) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v23 + 23) < 0)
    {
      **v23 = 0;
      *(v23 + 8) = 0;
      if ((v20 & 8) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *v23 = 0;
      *(v23 + 23) = 0;
      if ((v20 & 8) != 0)
      {
        goto LABEL_53;
      }
    }

LABEL_38:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_54;
  }

LABEL_61:
  *(v1 + 240) = 0;
  if ((v20 & 0xFF00) != 0)
  {
    *(v1 + 244) = 0;
    *(v1 + 252) = 0;
    *(v1 + 259) = 0;
  }

  v27 = *(v1 + 8);
  v26 = v1 + 8;
  *(v26 + 8) = 0;
  if (v27)
  {

    return sub_1957EA8(v26);
  }

  return result;
}

char *sub_11FDD54(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    result = a2;
    do
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v9 = *(*(a1 + 40) + 8 * v6 + 8);
      *result = 90;
      v10 = *(v9 + 20);
      result[1] = v10;
      if (v10 > 0x7F)
      {
        v8 = sub_19575D0(v10, result + 1);
      }

      else
      {
        v8 = result + 2;
      }

      result = sub_11F7FBC(v9, v8, a3);
      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    result = a2;
  }

  v11 = *(a1 + 16);
  if ((v11 & 0x80) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v12 = *(a1 + 240);
      *result = 96;
      result[1] = v12;
      if (v12 <= 0x7F)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = *(a1 + 240);
      *result = 96;
      result[1] = v12;
      if (v12 <= 0x7F)
      {
LABEL_13:
        result += 2;
        goto LABEL_18;
      }
    }

    result[1] = v12 | 0x80;
    v13 = v12 >> 7;
    result[2] = v12 >> 7;
    result += 3;
    if (v12 >= 0x4000)
    {
      v14 = v12 >> 7;
      do
      {
        *(result - 1) = v13 | 0x80;
        v13 = v14 >> 7;
        *result++ = v14 >> 7;
        v15 = v14 >> 14;
        v14 >>= 7;
      }

      while (v15);
    }
  }

LABEL_18:
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_26;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v16 = *(a1 + 244);
    *result = 104;
    result[1] = v16;
    if (v16 <= 0x7F)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = *(a1 + 244);
    *result = 104;
    result[1] = v16;
    if (v16 <= 0x7F)
    {
LABEL_21:
      result += 2;
      goto LABEL_26;
    }
  }

  result[1] = v16 | 0x80;
  v17 = v16 >> 7;
  result[2] = v16 >> 7;
  result += 3;
  if (v16 >= 0x4000)
  {
    v18 = v16 >> 7;
    do
    {
      *(result - 1) = v17 | 0x80;
      v17 = v18 >> 7;
      *result++ = v18 >> 7;
      v19 = v18 >> 14;
      v18 >>= 7;
    }

    while (v19);
  }

LABEL_26:
  if ((v11 & 0x200) == 0)
  {
    goto LABEL_34;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v20 = *(a1 + 248);
    *result = 112;
    result[1] = v20;
    if (v20 <= 0x7F)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v20 = *(a1 + 248);
    *result = 112;
    result[1] = v20;
    if (v20 <= 0x7F)
    {
LABEL_29:
      result += 2;
      goto LABEL_34;
    }
  }

  result[1] = v20 | 0x80;
  v21 = v20 >> 7;
  result[2] = v20 >> 7;
  result += 3;
  if (v20 >= 0x4000)
  {
    v22 = v20 >> 7;
    do
    {
      *(result - 1) = v21 | 0x80;
      v21 = v22 >> 7;
      *result++ = v22 >> 7;
      v23 = v22 >> 14;
      v22 >>= 7;
    }

    while (v23);
  }

LABEL_34:
  v24 = *(a1 + 56);
  if (v24 >= 1)
  {
    v25 = 8;
    do
    {
      while (1)
      {
        v26 = *(*(a1 + 64) + v25);
        v27 = *(v26 + 23);
        if ((v27 & 0x8000000000000000) == 0 || (v27 = v26[1], v27 <= 127))
        {
          if (*a3 - result + 14 >= v27)
          {
            break;
          }
        }

        result = sub_1957480(a3, 15, v26, result);
        v25 += 8;
        if (!--v24)
        {
          goto LABEL_44;
        }
      }

      *result = 122;
      result[1] = v27;
      if (*(v26 + 23) < 0)
      {
        v26 = *v26;
      }

      v28 = result + 2;
      memcpy(result + 2, v26, v27);
      result = &v28[v27];
      v25 += 8;
      --v24;
    }

    while (v24);
  }

LABEL_44:
  v29 = *(a1 + 80);
  if (v29)
  {
    for (i = 0; i != v29; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v32 = *(*(a1 + 88) + 8 * i + 8);
      *result = 386;
      v33 = *(v32 + 44);
      result[2] = v33;
      if (v33 > 0x7F)
      {
        v31 = sub_19575D0(v33, result + 2);
      }

      else
      {
        v31 = result + 3;
      }

      result = sub_16E5070(v32, v31, a3);
    }
  }

  if ((v11 & 0x400) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v34 = *(a1 + 252);
      *result = 400;
      result[2] = v34;
      if (v34 <= 0x7F)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v34 = *(a1 + 252);
      *result = 400;
      result[2] = v34;
      if (v34 <= 0x7F)
      {
LABEL_55:
        result += 3;
        goto LABEL_60;
      }
    }

    result[2] = v34 | 0x80;
    v35 = v34 >> 7;
    result[3] = v34 >> 7;
    result += 4;
    if (v34 >= 0x4000)
    {
      v36 = v34 >> 7;
      do
      {
        *(result - 1) = v36 | 0x80;
        v36 = v35 >> 7;
        *result++ = v35 >> 7;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
    }
  }

LABEL_60:
  if ((v11 & 8) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v39 = *(a1 + 208);
    *result = 410;
    v40 = *(v39 + 20);
    result[2] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, result + 2);
      result = sub_11FC36C(v39, v41, a3);
      if (v11)
      {
        goto LABEL_70;
      }
    }

    else
    {
      result = sub_11FC36C(v39, result + 3, a3);
      if (v11)
      {
        goto LABEL_70;
      }
    }

LABEL_62:
    v38 = *(a1 + 96);
    if (v38 < 1)
    {
      goto LABEL_89;
    }

    goto LABEL_77;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_70:
  v42 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v42 + 23);
  if (v43 < 0 && (v43 = *(v42 + 8), v43 > 127) || *a3 - result + 13 < v43)
  {
    result = sub_19572D4(a3, 20, v42, result);
    v38 = *(a1 + 96);
    if (v38 < 1)
    {
      goto LABEL_89;
    }

    goto LABEL_77;
  }

  *result = 418;
  v44 = result + 3;
  result[2] = v43;
  if (*(v42 + 23) >= 0)
  {
    v45 = v42;
  }

  else
  {
    v45 = *v42;
  }

  memcpy(result + 3, v45, v43);
  result = &v44[v43];
  v38 = *(a1 + 96);
  if (v38 >= 1)
  {
LABEL_77:
    for (j = 0; j != v38; ++j)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
        v47 = *(*(a1 + 104) + 4 * j);
        *result = 424;
        result[2] = v47;
        if (v47 > 0x7F)
        {
LABEL_82:
          result[2] = v47 | 0x80;
          v48 = v47 >> 7;
          result[3] = v47 >> 7;
          result += 4;
          if (v47 >= 0x4000)
          {
            v49 = v47 >> 7;
            do
            {
              *(result - 1) = v48 | 0x80;
              v48 = v49 >> 7;
              *result++ = v49 >> 7;
              v50 = v49 >> 14;
              v49 >>= 7;
            }

            while (v50);
          }

          continue;
        }
      }

      else
      {
        v47 = *(*(a1 + 104) + 4 * j);
        *result = 424;
        result[2] = v47;
        if (v47 > 0x7F)
        {
          goto LABEL_82;
        }
      }

      result += 3;
    }
  }

LABEL_89:
  if ((v11 & 2) != 0)
  {
    v51 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
    v52 = *(v51 + 23);
    if (v52 < 0 && (v52 = *(v51 + 8), v52 > 127) || *a3 - result + 13 < v52)
    {
      result = sub_19572D4(a3, 22, v51, result);
      if ((v11 & 0x10) != 0)
      {
        goto LABEL_100;
      }
    }

    else
    {
      *result = 434;
      v53 = result + 3;
      result[2] = v52;
      if (*(v51 + 23) >= 0)
      {
        v54 = v51;
      }

      else
      {
        v54 = *v51;
      }

      memcpy(result + 3, v54, v52);
      result = &v53[v52];
      if ((v11 & 0x10) != 0)
      {
        goto LABEL_100;
      }
    }

LABEL_91:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_106;
  }

  if ((v11 & 0x10) == 0)
  {
    goto LABEL_91;
  }

LABEL_100:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v55 = *(a1 + 216);
  *result = 442;
  v56 = *(v55 + 44);
  result[2] = v56;
  if (v56 > 0x7F)
  {
    v57 = sub_19575D0(v56, result + 2);
    result = sub_16E5070(v55, v57, a3);
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_115;
    }
  }

  else
  {
    result = sub_16E5070(v55, result + 3, a3);
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_115;
    }
  }

LABEL_106:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v58 = *(a1 + 260);
    *result = 448;
    result[2] = v58;
    if (v58 <= 0x7F)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v58 = *(a1 + 260);
    *result = 448;
    result[2] = v58;
    if (v58 <= 0x7F)
    {
LABEL_108:
      result += 3;
      goto LABEL_115;
    }
  }

  result[2] = v58 | 0x80;
  v59 = v58 >> 7;
  result[3] = v58 >> 7;
  result += 4;
  if (v58 >= 0x4000)
  {
    v60 = v58 >> 7;
    do
    {
      *(result - 1) = v59 | 0x80;
      v59 = v60 >> 7;
      *result++ = v60 >> 7;
      v61 = v60 >> 14;
      v60 >>= 7;
    }

    while (v61);
  }

LABEL_115:
  if ((v11 & 4) != 0)
  {
    v63 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
    v64 = *(v63 + 23);
    if (v64 < 0 && (v64 = *(v63 + 8), v64 > 127) || *a3 - result + 13 < v64)
    {
      result = sub_19572D4(a3, 26, v63, result);
      if ((v11 & 0x2000) != 0)
      {
        goto LABEL_127;
      }
    }

    else
    {
      *result = 466;
      v65 = result + 3;
      result[2] = v64;
      if (*(v63 + 23) >= 0)
      {
        v66 = v63;
      }

      else
      {
        v66 = *v63;
      }

      memcpy(result + 3, v66, v64);
      result = &v65[v64];
      if ((v11 & 0x2000) != 0)
      {
        goto LABEL_127;
      }
    }

LABEL_117:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_118;
    }

LABEL_130:
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v68 = *(a1 + 224);
    *result = 482;
    v69 = *(v68 + 20);
    result[2] = v69;
    if (v69 > 0x7F)
    {
      v70 = sub_19575D0(v69, result + 2);
    }

    else
    {
      v70 = result + 3;
    }

    result = sub_11FD248(v68, v70, a3);
    v62 = *(a1 + 120);
    if (v62 < 1)
    {
      goto LABEL_145;
    }

    goto LABEL_136;
  }

  if ((v11 & 0x2000) == 0)
  {
    goto LABEL_117;
  }

LABEL_127:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v67 = *(a1 + 264);
  *result = 472;
  result[2] = v67;
  result += 3;
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_130;
  }

LABEL_118:
  v62 = *(a1 + 120);
  if (v62 < 1)
  {
    goto LABEL_145;
  }

LABEL_136:
  v71 = 8;
  do
  {
    while (1)
    {
      v72 = *(*(a1 + 128) + v71);
      v73 = *(v72 + 23);
      if ((v73 & 0x8000000000000000) == 0 || (v73 = v72[1], v73 <= 127))
      {
        if (*a3 - result + 13 >= v73)
        {
          break;
        }
      }

      result = sub_1957480(a3, 30, v72, result);
      v71 += 8;
      if (!--v62)
      {
        goto LABEL_145;
      }
    }

    *result = 498;
    result[2] = v73;
    if (*(v72 + 23) < 0)
    {
      v72 = *v72;
    }

    v74 = result + 3;
    memcpy(result + 3, v72, v73);
    result = &v74[v73];
    v71 += 8;
    --v62;
  }

  while (v62);
LABEL_145:
  v75 = *(a1 + 144);
  if (v75 >= 1)
  {
    v76 = 8;
    do
    {
      while (1)
      {
        v77 = *(*(a1 + 152) + v76);
        v78 = *(v77 + 23);
        if ((v78 & 0x8000000000000000) == 0 || (v78 = v77[1], v78 <= 127))
        {
          if (*a3 - result + 13 >= v78)
          {
            break;
          }
        }

        result = sub_1957480(a3, 31, v77, result);
        v76 += 8;
        if (!--v75)
        {
          goto LABEL_155;
        }
      }

      *result = 506;
      result[2] = v78;
      if (*(v77 + 23) < 0)
      {
        v77 = *v77;
      }

      v79 = result + 3;
      memcpy(result + 3, v77, v78);
      result = &v79[v78];
      v76 += 8;
      --v75;
    }

    while (v75);
  }

LABEL_155:
  if ((v11 & 0x4000) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v80 = *(a1 + 265);
    *result = 640;
    result[2] = v80;
    result += 3;
    if ((v11 & 0x40) == 0)
    {
LABEL_157:
      if ((v11 & 0x800) == 0)
      {
        goto LABEL_177;
      }

      goto LABEL_168;
    }
  }

  else if ((v11 & 0x40) == 0)
  {
    goto LABEL_157;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v81 = *(a1 + 232);
  *result = 650;
  v82 = *(v81 + 20);
  result[2] = v82;
  if (v82 > 0x7F)
  {
    v83 = sub_19575D0(v82, result + 2);
    result = sub_154C2E0(v81, v83, a3);
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_177;
    }
  }

  else
  {
    result = sub_154C2E0(v81, result + 3, a3);
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_177;
    }
  }

LABEL_168:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v84 = *(a1 + 256);
    *result = 656;
    result[2] = v84;
    if (v84 <= 0x7F)
    {
      goto LABEL_170;
    }
  }

  else
  {
    v84 = *(a1 + 256);
    *result = 656;
    result[2] = v84;
    if (v84 <= 0x7F)
    {
LABEL_170:
      result += 3;
      goto LABEL_177;
    }
  }

  result[2] = v84 | 0x80;
  v85 = v84 >> 7;
  result[3] = v84 >> 7;
  result += 4;
  if (v84 >= 0x4000)
  {
    v86 = v84 >> 7;
    do
    {
      *(result - 1) = v85 | 0x80;
      v85 = v86 >> 7;
      *result++ = v86 >> 7;
      v87 = v86 >> 14;
      v86 >>= 7;
    }

    while (v87);
  }

LABEL_177:
  if ((v11 & 0x8000) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v88 = *(a1 + 266);
    *result = 664;
    result[2] = v88;
    result += 3;
  }

  v89 = *(a1 + 168);
  if (v89 >= 1)
  {
    v90 = 8;
    do
    {
      while (1)
      {
        v91 = *(*(a1 + 176) + v90);
        v92 = *(v91 + 23);
        if ((v92 & 0x8000000000000000) == 0 || (v92 = v91[1], v92 <= 127))
        {
          if (*a3 - result + 13 >= v92)
          {
            break;
          }
        }

        result = sub_1957480(a3, 36, v91, result);
        v90 += 8;
        if (!--v89)
        {
          goto LABEL_191;
        }
      }

      *result = 674;
      result[2] = v92;
      if (*(v91 + 23) < 0)
      {
        v91 = *v91;
      }

      v93 = result + 3;
      memcpy(result + 3, v91, v92);
      result = &v93[v92];
      v90 += 8;
      --v89;
    }

    while (v89);
  }

LABEL_191:
  v94 = *(a1 + 8);
  if (v94)
  {
    v95 = v94 & 0xFFFFFFFFFFFFFFFCLL;
    v96 = *(v95 + 31);
    if (v96 < 0)
    {
      v97 = *(v95 + 8);
      v96 = *(v95 + 16);
    }

    else
    {
      v97 = (v95 + 8);
    }

    v98 = v96;
    if (*a3 - result < v96)
    {

      return sub_1957130(a3, v97, v96, result);
    }

    else
    {
      v99 = result;
      memcpy(result, v97, v96);
      return &v99[v98];
    }
  }

  return result;
}