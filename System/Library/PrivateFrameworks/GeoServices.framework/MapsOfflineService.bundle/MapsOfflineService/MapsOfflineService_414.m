void *sub_16DD7AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700618;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

double sub_16DD848(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2700698;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_16DD8C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2700718;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_16DD944(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2700798;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = a1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = &qword_278E990;
  result = 0.0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  return result;
}

void *sub_16DDA00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2700818;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_16DDA7C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2700898;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_16DDAF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700918;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  return result;
}

uint64_t sub_16DDBA8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700998;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = a1;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = &qword_278E990;
  *(result + 128) = 0;
  return result;
}

void *sub_16DDC6C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2700A18;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_16DDCE8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700A98;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = a1;
  result[6] = 0;
  result[7] = 0;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  result[10] = 0;
  return result;
}

uint64_t sub_16DDD98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700B18;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

uint64_t sub_16DDE34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700B98;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

void *sub_16DDEE8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 5));
  sub_16E34D4(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16DDF70(void *a1)
{
  sub_16DDEE8(a1);

  operator delete();
}

uint64_t sub_16DDFA8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16DE864(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_16DE028(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
  {
    return v30;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v30 + 1;
    v8 = *v30;
    if (*v30 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v30, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v30 + 2;
      }
    }

    v30 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 == 16)
    {
      v16 = v7 - 1;
      while (1)
      {
        v30 = v16 + 1;
        v17 = v16[1];
        v18 = v16 + 2;
        if (v17 < 0)
        {
          v19 = *v18;
          v20 = (v19 << 7) + v17;
          LODWORD(v17) = v20 - 128;
          if (v19 < 0)
          {
            v30 = sub_19587DC((v16 + 1), (v20 - 128));
            if (!v30)
            {
              return 0;
            }

            LODWORD(v17) = v23;
            goto LABEL_28;
          }

          v18 = v16 + 3;
        }

        v30 = v18;
LABEL_28:
        if (v17 > 6)
        {
          sub_12E8418();
        }

        else
        {
          v21 = *(a1 + 40);
          if (v21 == *(a1 + 44))
          {
            v22 = v21 + 1;
            sub_1958E5C((a1 + 40), v21 + 1);
            *(*(a1 + 48) + 4 * v21) = v17;
          }

          else
          {
            *(*(a1 + 48) + 4 * v21) = v17;
            v22 = v21 + 1;
          }

          *(a1 + 40) = v22;
        }

        v16 = v30;
        if (*a3 <= v30 || *v30 != 16)
        {
          goto LABEL_47;
        }
      }
    }

    if (v8 == 18)
    {
      *&v31 = a1 + 40;
      *(&v31 + 1) = sub_16DDEDC;
      v32 = a1 + 8;
      v33 = 2;
      v15 = sub_1216588(a3, v7, &v31);
      goto LABEL_20;
    }

LABEL_13:
    if (v8)
    {
      v13 = (v8 & 7) == 4;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (!v7)
      {
        return 0;
      }

      a3[10].i32[0] = v8 - 1;
      return v30;
    }

    if (*v6)
    {
      v14 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v30;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
LABEL_20:
    v30 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_47:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      return v30;
    }
  }

  if (v8 >> 3 != 1 || v8 != 10)
  {
    goto LABEL_13;
  }

  v24 = v7 - 1;
  while (1)
  {
    v25 = (v24 + 1);
    v30 = v24 + 1;
    v26 = *(a1 + 32);
    if (v26 && (v27 = *(a1 + 24), v27 < *v26))
    {
      *(a1 + 24) = v27 + 1;
      v28 = *&v26[2 * v27 + 2];
    }

    else
    {
      v29 = sub_16E1350(*(a1 + 16));
      v28 = sub_19593CC(a1 + 16, v29);
      v25 = v30;
    }

    v24 = sub_2235CF4(a3, v28, v25);
    v30 = v24;
    if (!v24)
    {
      return 0;
    }

    if (*a3 <= v24 || *v24 != 10)
    {
      goto LABEL_47;
    }
  }
}

char *sub_16DE2F0(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_16DEE08(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11 < 1)
  {
    v14 = a2;
  }

  else
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 48) + 4 * j);
      *a2 = 16;
      a2[1] = v13;
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v15 = v13 >> 7;
        a2[2] = v13 >> 7;
        v14 = a2 + 3;
        if (v13 >= 0x4000)
        {
          LOBYTE(a2) = a2[2];
          do
          {
            *(v14 - 1) = a2 | 0x80;
            a2 = (v15 >> 7);
            *v14++ = v15 >> 7;
            v16 = v15 >> 14;
            v15 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v14 = a2 + 2;
      }

      a2 = v14;
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v14;
  }

  v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *(v19 + 31);
  if (v20 < 0)
  {
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
  }

  else
  {
    v21 = (v19 + 8);
  }

  if (*a3 - v14 >= v20)
  {
    v22 = v20;
    memcpy(v14, v21, v20);
    v14 += v22;
    return v14;
  }

  return sub_1957130(a3, v21, v20, v14);
}

uint64_t sub_16DE4CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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
      v7 = sub_16DF194(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 48) + 4 * v9);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v10 += v12;
      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0;
  }

  result = v2 + v8 + v10;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 56) = result;
  return result;
}

void sub_16DE5CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_16E35DC((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if (v9)
  {
    v10 = *(a1 + 40);
    sub_1958E5C((a1 + 40), v10 + v9);
    v11 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy((v11 + 4 * v10), *(a2 + 48), 4 * *(a2 + 40));
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16DE6D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_157D31C(*(v3 + 80));
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

uint64_t sub_16DE740(uint64_t a1)
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

  if (a1 != &off_277E488)
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      sub_157C1B0(v5);
      operator delete();
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      sub_13B68F4(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 64);
  sub_15D73B4((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16DE82C(uint64_t a1)
{
  sub_16DE740(a1);

  operator delete();
}

uint64_t sub_16DE864(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157D4B4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  *(v1 + 64) = 0;
  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = sub_157C1EC(*(v1 + 80));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_13B6930(*(v1 + 88));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 88) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_16DE914(uint64_t a1, char *a2, int32x2_t *a3)
{
  v48 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, &v48, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    while (1)
    {
      v8 = v48 + 1;
      v9 = *v48;
      if (*v48 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(v48, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = v48 + 2;
        }
      }

      v48 = v8;
      v13 = v9 >> 3;
      if (v9 >> 3 > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        if (v9 != 10)
        {
          goto LABEL_82;
        }

        *(a1 + 16) |= 1u;
        v21 = *(a1 + 80);
        if (!v21)
        {
          v22 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v22 = *v22;
          }

          sub_157D924(v22);
          v21 = v23;
          *(a1 + 80) = v23;
          v8 = v48;
        }

        v20 = sub_2226FF4(a3, v21, v8);
        goto LABEL_89;
      }

      if (v13 == 2)
      {
        if (v9 == 16)
        {
          v30 = v8 - 1;
          while (1)
          {
            v48 = v30 + 1;
            v31 = v30[1];
            v32 = v30 + 2;
            if (v31 < 0)
            {
              v33 = *v32;
              v34 = (v33 << 7) + v31;
              LODWORD(v31) = v34 - 128;
              if (v33 < 0)
              {
                v48 = sub_19587DC((v30 + 1), (v34 - 128));
                if (!v48)
                {
                  goto LABEL_95;
                }

                LODWORD(v31) = v37;
                goto LABEL_51;
              }

              v32 = v30 + 3;
            }

            v48 = v32;
LABEL_51:
            if (v31 > 6)
            {
              sub_12E8418();
            }

            else
            {
              v35 = *(a1 + 24);
              if (v35 == *(a1 + 28))
              {
                v36 = v35 + 1;
                sub_1958E5C((a1 + 24), v35 + 1);
                *(*(a1 + 32) + 4 * v35) = v31;
              }

              else
              {
                *(*(a1 + 32) + 4 * v35) = v31;
                v36 = v35 + 1;
              }

              *(a1 + 24) = v36;
            }

            v30 = v48;
            if (*a3 <= v48 || *v48 != 16)
            {
              goto LABEL_90;
            }
          }
        }

        if (v9 == 18)
        {
          *&v49 = a1 + 24;
          *(&v49 + 1) = sub_16DDEDC;
          v50 = a1 + 8;
          v51 = 2;
          v20 = sub_1216588(a3, v8, &v49);
          goto LABEL_89;
        }

LABEL_82:
        if (v9)
        {
          v46 = (v9 & 7) == 4;
        }

        else
        {
          v46 = 1;
        }

        if (v46)
        {
          if (v8)
          {
            a3[10].i32[0] = v9 - 1;
            goto LABEL_2;
          }

LABEL_95:
          v48 = 0;
          goto LABEL_2;
        }

        if (*v7)
        {
          v47 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v47 = sub_11F1920((a1 + 8));
          v8 = v48;
        }

        v20 = sub_1952690(v9, v47, v8, a3);
        goto LABEL_89;
      }

      if (v13 != 3 || v9 != 24)
      {
        goto LABEL_82;
      }

      v5 |= 4u;
      v16 = v8 + 1;
      v15 = *v8;
      if (v15 < 0)
      {
        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v44 = sub_19587DC(v8, v15);
          v48 = v44;
          *(a1 + 96) = v45 != 0;
          if (!v44)
          {
            goto LABEL_95;
          }

          goto LABEL_90;
        }

        v16 = v8 + 2;
      }

      v48 = v16;
      *(a1 + 96) = v15 != 0;
LABEL_90:
      if (sub_195ADC0(a3, &v48, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    if (v13 == 4)
    {
      if (v9 == 34)
      {
        v24 = v8 - 1;
        while (1)
        {
          v25 = (v24 + 1);
          v48 = v24 + 1;
          v26 = *(a1 + 56);
          if (v26 && (v27 = *(a1 + 48), v27 < *v26))
          {
            *(a1 + 48) = v27 + 1;
            v28 = *&v26[2 * v27 + 2];
          }

          else
          {
            v29 = sub_157D9B8(*(a1 + 40));
            v28 = sub_19593CC(a1 + 40, v29);
            v25 = v48;
          }

          v24 = sub_2227084(a3, v28, v25);
          v48 = v24;
          if (!v24)
          {
            goto LABEL_95;
          }

          if (*a3 <= v24 || *v24 != 34)
          {
            goto LABEL_90;
          }
        }
      }

      goto LABEL_82;
    }

    if (v13 == 5)
    {
      if (v9 == 40)
      {
        v38 = v8 - 1;
        while (1)
        {
          v48 = v38 + 1;
          v39 = v38[1];
          if (v39 < 0)
          {
            v40 = (v38[2] << 7) + v39;
            v39 = (v40 - 128);
            if (v38[2] < 0)
            {
              v38 = sub_19587DC((v38 + 1), (v40 - 128));
              v39 = v41;
            }

            else
            {
              v38 += 3;
            }
          }

          else
          {
            v38 += 2;
          }

          v48 = v38;
          v42 = *(a1 + 64);
          if (v42 == *(a1 + 68))
          {
            v43 = v42 + 1;
            sub_1959094((a1 + 64), v42 + 1);
            *(*(a1 + 72) + 8 * v42) = v39;
            v38 = v48;
          }

          else
          {
            *(*(a1 + 72) + 8 * v42) = v39;
            v43 = v42 + 1;
          }

          *(a1 + 64) = v43;
          if (!v38)
          {
            goto LABEL_95;
          }

          if (*a3 <= v38 || *v38 != 40)
          {
            goto LABEL_90;
          }
        }
      }

      if (v9 != 42)
      {
        goto LABEL_82;
      }

      v20 = sub_1958938((a1 + 64), v8, a3);
    }

    else
    {
      if (v13 != 6 || v9 != 50)
      {
        goto LABEL_82;
      }

      *(a1 + 16) |= 2u;
      v18 = *(a1 + 88);
      if (!v18)
      {
        v19 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v19 = *v19;
        }

        v18 = sub_13B736C(v19);
        *(a1 + 88) = v18;
        v8 = v48;
      }

      v20 = sub_2227114(a3, v18, v8);
    }

LABEL_89:
    v48 = v20;
    if (!v20)
    {
      goto LABEL_95;
    }

    goto LABEL_90;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v48;
}

char *sub_16DEE08(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 80);
    *a2 = 10;
    v7 = *(v6 + 20);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_157C8A0(v6, v8, a3);
  }

  v9 = *(a1 + 24);
  if (v9 < 1)
  {
    v12 = a2;
  }

  else
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v11 = *(*(a1 + 32) + 4 * i);
      *a2 = 16;
      a2[1] = v11;
      if (v11 > 0x7F)
      {
        a2[1] = v11 | 0x80;
        v13 = v11 >> 7;
        a2[2] = v11 >> 7;
        v12 = a2 + 3;
        if (v11 >= 0x4000)
        {
          LOBYTE(v14) = a2[2];
          do
          {
            *(v12 - 1) = v14 | 0x80;
            v14 = v13 >> 7;
            *v12++ = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v12 = a2 + 2;
      }

      a2 = v12;
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v16 = *(a1 + 96);
    *v12 = 24;
    v12[1] = v16;
    v12 += 2;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v19 = *(*(a1 + 56) + 8 * j + 8);
      *v12 = 34;
      v20 = *(v19 + 20);
      v12[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v12 + 1);
      }

      else
      {
        v21 = v12 + 2;
      }

      v12 = sub_157D6B0(v19, v21, a3);
    }
  }

  v22 = *(a1 + 64);
  if (v22 < 1)
  {
    v25 = v12;
  }

  else
  {
    for (k = 0; k != v22; ++k)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v24 = *(*(a1 + 72) + 8 * k);
      *v12 = 40;
      v12[1] = v24;
      if (v24 > 0x7F)
      {
        v12[1] = v24 | 0x80;
        v26 = v24 >> 7;
        v12[2] = v24 >> 7;
        v25 = v12 + 3;
        if (v24 >= 0x4000)
        {
          LOBYTE(v12) = v12[2];
          do
          {
            *(v25 - 1) = v12 | 0x80;
            v12 = (v26 >> 7);
            *v25++ = v26 >> 7;
            v27 = v26 >> 14;
            v26 >>= 7;
          }

          while (v27);
        }
      }

      else
      {
        v25 = v12 + 2;
      }

      v12 = v25;
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v28 = *(a1 + 88);
    *v25 = 50;
    v29 = *(v28 + 104);
    v25[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v25 + 1);
    }

    else
    {
      v30 = v25 + 2;
    }

    v25 = sub_13B6C70(v28, v30, a3);
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v25;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if (*a3 - v25 >= v34)
  {
    v36 = v34;
    memcpy(v25, v35, v34);
    v25 += v36;
    return v25;
  }

  return sub_1957130(a3, v35, v34, v25);
}

uint64_t sub_16DF194(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v4);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v6;
      ++v4;
    }

    while (v2 != v4);
  }

  else
  {
    v3 = 0;
  }

  v7 = v3 + v2;
  v8 = *(a1 + 48);
  v9 = v7 + v8;
  v10 = *(a1 + 56);
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
      v14 = sub_157D798(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = sub_1959F14((a1 + 64)) + *(a1 + 64) + v9;
  v16 = *(a1 + 16);
  if ((v16 & 7) != 0)
  {
    if (v16)
    {
      v17 = sub_157CE54(*(a1 + 80));
      v15 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v16 & 2) != 0)
    {
      v18 = sub_13B7050(*(a1 + 88));
      v15 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v15 += (v16 >> 1) & 2;
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v15 += v22;
  }

  *(a1 + 20) = v15;
  return v15;
}

void sub_16DF31C(uint64_t a1, uint64_t a2)
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
    sub_15D79FC((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = *(a1 + 64);
    sub_1959094((a1 + 64), v14 + v13);
    v15 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v15 + 8 * v14), *(a2 + 72), 8 * *(a2 + 64));
  }

  v16 = *(a2 + 16);
  if ((v16 & 7) != 0)
  {
    if (v16)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 80);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_157D924(v20);
        *(a1 + 80) = v18;
      }

      if (*(a2 + 80))
      {
        v21 = *(a2 + 80);
      }

      else
      {
        v21 = &off_2777810;
      }

      sub_157D090(v18, v21);
      if ((v16 & 2) == 0)
      {
LABEL_11:
        if ((v16 & 4) == 0)
        {
LABEL_13:
          *(a1 + 16) |= v16;
          goto LABEL_14;
        }

LABEL_12:
        *(a1 + 96) = *(a2 + 96);
        goto LABEL_13;
      }
    }

    else if ((v16 & 2) == 0)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 2u;
    v22 = *(a1 + 88);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_13B736C(v24);
      *(a1 + 88) = v22;
    }

    if (*(a2 + 88))
    {
      v25 = *(a2 + 88);
    }

    else
    {
      v25 = &off_276E0F0;
    }

    sub_13B71CC(v22, v25);
    if ((v16 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16DF528(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_157D31C(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_16DF568(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 11));
  sub_15B472C(a1 + 8);
  sub_15B472C(a1 + 5);
  sub_16E3558(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16DF608(void *a1)
{
  sub_16DF568(a1);

  operator delete();
}

uint64_t sub_16DF640(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E02C8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      result = sub_157A3FC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      result = sub_157A3FC(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 80) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

char *sub_16DF710(uint64_t a1, char *a2, int32x2_t *a3)
{
  v43 = a2;
  if (sub_195ADC0(a3, &v43, a3[11].i32[1]))
  {
    return v43;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v43 + 1;
    v8 = *v43;
    if (*v43 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v43, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v43 + 2;
      }
    }

    v43 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v12 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_65;
      }

      v34 = v7 - 1;
      while (1)
      {
        v35 = (v34 + 1);
        v43 = v34 + 1;
        v36 = *(a1 + 80);
        if (v36 && (v37 = *(a1 + 72), v37 < *v36))
        {
          *(a1 + 72) = v37 + 1;
          v38 = *&v36[2 * v37 + 2];
        }

        else
        {
          v39 = sub_157B8A8(*(a1 + 64));
          v38 = sub_19593CC(a1 + 64, v39);
          v35 = v43;
        }

        v34 = sub_221EA2C(a3, v38, v35);
        v43 = v34;
        if (!v34)
        {
          return 0;
        }

        if (*a3 <= v34 || *v34 != 26)
        {
          goto LABEL_73;
        }
      }
    }

    if (v12 != 4)
    {
      goto LABEL_65;
    }

    if (v8 == 32)
    {
      v20 = v7 - 1;
      while (1)
      {
        v43 = v20 + 1;
        v21 = v20[1];
        v22 = v20 + 2;
        if (v21 < 0)
        {
          v23 = *v22;
          v24 = (v23 << 7) + v21;
          LODWORD(v21) = v24 - 128;
          if (v23 < 0)
          {
            v43 = sub_19587DC((v20 + 1), (v24 - 128));
            if (!v43)
            {
              return 0;
            }

            LODWORD(v21) = v27;
            goto LABEL_32;
          }

          v22 = v20 + 3;
        }

        v43 = v22;
LABEL_32:
        if (v21 > 6)
        {
          sub_12E8500();
        }

        else
        {
          v25 = *(a1 + 88);
          if (v25 == *(a1 + 92))
          {
            v26 = v25 + 1;
            sub_1958E5C((a1 + 88), v25 + 1);
            *(*(a1 + 96) + 4 * v25) = v21;
          }

          else
          {
            *(*(a1 + 96) + 4 * v25) = v21;
            v26 = v25 + 1;
          }

          *(a1 + 88) = v26;
        }

        v20 = v43;
        if (*a3 <= v43 || *v43 != 32)
        {
          goto LABEL_73;
        }
      }
    }

    if (v8 != 34)
    {
      goto LABEL_65;
    }

    *&v44 = a1 + 88;
    *(&v44 + 1) = sub_16DDEDC;
    v45 = a1 + 8;
    v46 = 4;
    v40 = sub_1216588(a3, v7, &v44);
LABEL_72:
    v43 = v40;
    if (!v40)
    {
      return 0;
    }

LABEL_73:
    if (sub_195ADC0(a3, &v43, a3[11].i32[1]))
    {
      return v43;
    }
  }

  if (v12 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_65;
    }

    v28 = v7 - 1;
    while (1)
    {
      v29 = (v28 + 1);
      v43 = v28 + 1;
      v30 = *(a1 + 32);
      if (v30 && (v31 = *(a1 + 24), v31 < *v30))
      {
        *(a1 + 24) = v31 + 1;
        v32 = *&v30[2 * v31 + 2];
      }

      else
      {
        sub_16E14B8(*(a1 + 16));
        v32 = sub_19593CC(a1 + 16, v33);
        v29 = v43;
      }

      v28 = sub_2235D84(a3, v32, v29);
      v43 = v28;
      if (!v28)
      {
        return 0;
      }

      if (*a3 <= v28 || *v28 != 10)
      {
        goto LABEL_73;
      }
    }
  }

  if (v12 == 2 && v8 == 18)
  {
    v14 = v7 - 1;
    while (1)
    {
      v15 = (v14 + 1);
      v43 = v14 + 1;
      v16 = *(a1 + 56);
      if (v16 && (v17 = *(a1 + 48), v17 < *v16))
      {
        *(a1 + 48) = v17 + 1;
        v18 = *&v16[2 * v17 + 2];
      }

      else
      {
        v19 = sub_157B8A8(*(a1 + 40));
        v18 = sub_19593CC(a1 + 40, v19);
        v15 = v43;
      }

      v14 = sub_221EA2C(a3, v18, v15);
      v43 = v14;
      if (!v14)
      {
        return 0;
      }

      if (*a3 <= v14 || *v14 != 18)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_65:
  if (v8)
  {
    v41 = (v8 & 7) == 4;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    if (*v6)
    {
      v42 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v7 = v43;
    }

    v40 = sub_1952690(v8, v42, v7, a3);
    goto LABEL_72;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return v43;
}

char *sub_16DFB08(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_16E073C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 56) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_157A5D0(v13, v15, a3);
    }
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v18 = *(*(a1 + 80) + 8 * k + 8);
      *a2 = 26;
      v19 = *(v18 + 20);
      a2[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, a2 + 1);
      }

      else
      {
        v20 = a2 + 2;
      }

      a2 = sub_157A5D0(v18, v20, a3);
    }
  }

  v21 = *(a1 + 88);
  if (v21 < 1)
  {
    v24 = a2;
  }

  else
  {
    for (m = 0; m != v21; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v23 = *(*(a1 + 96) + 4 * m);
      *a2 = 32;
      a2[1] = v23;
      if (v23 > 0x7F)
      {
        a2[1] = v23 | 0x80;
        v25 = v23 >> 7;
        a2[2] = v23 >> 7;
        v24 = a2 + 3;
        if (v23 >= 0x4000)
        {
          LOBYTE(a2) = a2[2];
          do
          {
            *(v24 - 1) = a2 | 0x80;
            a2 = (v25 >> 7);
            *v24++ = v25 >> 7;
            v26 = v25 >> 14;
            v25 >>= 7;
          }

          while (v26);
        }
      }

      else
      {
        v24 = a2 + 2;
      }

      a2 = v24;
    }
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v24;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v24 >= v30)
  {
    v32 = v30;
    memcpy(v24, v31, v30);
    v24 += v32;
    return v24;
  }

  return sub_1957130(a3, v31, v30, v24);
}

uint64_t sub_16DFDEC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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
      v7 = sub_16E0A48(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  v9 = v2 + v8;
  v10 = *(a1 + 56);
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
      v14 = sub_157A6D0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 72);
  v16 = v9 + v15;
  v17 = *(a1 + 80);
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
      v21 = sub_157A6D0(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(*(a1 + 96) + 4 * v23);
      if (v25 < 0)
      {
        v26 = 10;
      }

      else
      {
        v26 = (9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6;
      }

      v24 += v26;
      ++v23;
    }

    while (v22 != v23);
  }

  else
  {
    v24 = 0;
  }

  result = v16 + v22 + v24;
  v28 = *(a1 + 8);
  if (v28)
  {
    v29 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v30 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v30 < 0)
    {
      v30 = *(v29 + 16);
    }

    result += v30;
  }

  *(a1 + 104) = result;
  return result;
}

void sub_16DFF8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_16E3668((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_15B48B8((a1 + 40), v11, (v10 + 8), v9, **(a1 + 56) - *(a1 + 48));
    v12 = *(a1 + 48) + v9;
    *(a1 + 48) = v12;
    v13 = *(a1 + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_15B48B8((a1 + 64), v16, (v15 + 8), v14, **(a1 + 80) - *(a1 + 72));
    v17 = *(a1 + 72) + v14;
    *(a1 + 72) = v17;
    v18 = *(a1 + 80);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 88);
  if (v19)
  {
    v20 = *(a1 + 88);
    sub_1958E5C((a1 + 88), v20 + v19);
    v21 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy((v21 + 4 * v20), *(a2 + 96), 4 * *(a2 + 88));
  }

  v22 = *(a2 + 8);
  if (v22)
  {

    sub_1957EF4((a1 + 8), (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16E014C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_157D31C(*(v3 + 88));
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

uint64_t sub_16E01B8(uint64_t a1)
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
  if (a1 != &off_277E560)
  {
    v6 = *(a1 + 88);
    if (v6)
    {
      sub_157C1B0(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15D73B4((a1 + 64));
  sub_1956ABC(a1 + 48);
  sub_15B472C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E0290(uint64_t a1)
{
  sub_16E01B8(a1);

  operator delete();
}

uint64_t sub_16E02C8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157A3FC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v5 = *(v1 + 72);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 80) + 8);
    do
    {
      v7 = *v6++;
      result = sub_157D4B4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 72) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_157C1EC(*(v1 + 88));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 88) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_16E0388(uint64_t a1, char *a2, int32x2_t *a3)
{
  v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v39, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v39 + 1;
    v8 = *v39;
    if (*v39 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v39, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v39 + 2;
      }
    }

    v39 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 18)
      {
        v19 = v7 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v39 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_157B8A8(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v39;
          }

          v19 = sub_221EA2C(a3, v23, v20);
          v39 = v19;
          if (!v19)
          {
            goto LABEL_73;
          }

          if (*a3 <= v19 || *v19 != 18)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_60;
    }

    if (v8 != 10)
    {
      goto LABEL_60;
    }

    *(a1 + 16) |= 1u;
    v31 = *(a1 + 88);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_157D924(v33);
      v31 = v34;
      *(a1 + 88) = v34;
      v7 = v39;
    }

    v35 = sub_2226FF4(a3, v31, v7);
LABEL_67:
    v39 = v35;
    if (!v35)
    {
      goto LABEL_73;
    }

LABEL_68:
    if (sub_195ADC0(a3, &v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 == 24)
    {
      v25 = v7 - 1;
      while (1)
      {
        v39 = v25 + 1;
        v26 = v25[1];
        if (v26 < 0)
        {
          v27 = (v25[2] << 7) + v26;
          v26 = (v27 - 128);
          if (v25[2] < 0)
          {
            v25 = sub_19587DC((v25 + 1), (v27 - 128));
            v26 = v28;
          }

          else
          {
            v25 += 3;
          }
        }

        else
        {
          v25 += 2;
        }

        v39 = v25;
        v29 = *(a1 + 48);
        if (v29 == *(a1 + 52))
        {
          v30 = v29 + 1;
          sub_1959094((a1 + 48), v29 + 1);
          *(*(a1 + 56) + 8 * v29) = v26;
          v25 = v39;
        }

        else
        {
          *(*(a1 + 56) + 8 * v29) = v26;
          v30 = v29 + 1;
        }

        *(a1 + 48) = v30;
        if (!v25)
        {
          goto LABEL_73;
        }

        if (*a3 <= v25 || *v25 != 24)
        {
          goto LABEL_68;
        }
      }
    }

    if (v8 == 26)
    {
      v35 = sub_1958938((a1 + 48), v7, a3);
      goto LABEL_67;
    }
  }

  else if (v11 == 4)
  {
    if (v8 == 33)
    {
      v5 |= 2u;
      *(a1 + 96) = *v7;
      v39 = v7 + 8;
      goto LABEL_68;
    }
  }

  else if (v11 == 5 && v8 == 42)
  {
    v12 = v7 - 1;
    while (1)
    {
      v13 = (v12 + 1);
      v39 = v12 + 1;
      v14 = *(a1 + 80);
      if (v14 && (v15 = *(a1 + 72), v15 < *v14))
      {
        *(a1 + 72) = v15 + 1;
        v16 = *&v14[2 * v15 + 2];
      }

      else
      {
        v17 = sub_157D9B8(*(a1 + 64));
        v16 = sub_19593CC(a1 + 64, v17);
        v13 = v39;
      }

      v12 = sub_2227084(a3, v16, v13);
      v39 = v12;
      if (!v12)
      {
        goto LABEL_73;
      }

      if (*a3 <= v12 || *v12 != 42)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_60:
  if (v8)
  {
    v36 = (v8 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v37 = *(a1 + 8);
    if (v37)
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v7 = v39;
    }

    v35 = sub_1952690(v8, v38, v7, a3);
    goto LABEL_67;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_73:
  v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

char *sub_16E073C(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 88);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_157C8A0(v7, v9, a3);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v13 = *(v12 + 20);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_157A5D0(v12, v14, a3);
    }
  }

  v15 = *(a1 + 48);
  if (v15 < 1)
  {
    v18 = v4;
  }

  else
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v17 = *(*(a1 + 56) + 8 * j);
      *v4 = 24;
      v4[1] = v17;
      if (v17 > 0x7F)
      {
        v4[1] = v17 | 0x80;
        v19 = v17 >> 7;
        v4[2] = v17 >> 7;
        v18 = v4 + 3;
        if (v17 >= 0x4000)
        {
          LOBYTE(v4) = v4[2];
          do
          {
            *(v18 - 1) = v4 | 0x80;
            v4 = (v19 >> 7);
            *v18++ = v19 >> 7;
            v20 = v19 >> 14;
            v19 >>= 7;
          }

          while (v20);
        }
      }

      else
      {
        v18 = v4 + 2;
      }

      v4 = v18;
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v21 = *(a1 + 96);
    *v18 = 33;
    *(v18 + 1) = v21;
    v18 += 9;
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    for (k = 0; k != v22; ++k)
    {
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v24 = *(*(a1 + 80) + 8 * k + 8);
      *v18 = 42;
      v25 = *(v24 + 20);
      v18[1] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, v18 + 1);
      }

      else
      {
        v26 = v18 + 2;
      }

      v18 = sub_157D6B0(v24, v26, a3);
    }
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v18;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v18 >= v30)
  {
    v32 = v30;
    memcpy(v18, v31, v30);
    v18 += v32;
    return v18;
  }

  return sub_1957130(a3, v31, v30, v18);
}

uint64_t sub_16E0A48(uint64_t a1)
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
      v7 = sub_157A6D0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = sub_1959F14((a1 + 48));
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
      v15 = sub_157D798(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 16);
  if ((v16 & 3) != 0)
  {
    if (v16)
    {
      v17 = sub_157CE54(*(a1 + 88));
      v10 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v16 & 2) != 0)
    {
      v10 += 9;
    }
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v10 += v21;
  }

  *(a1 + 20) = v10;
  return v10;
}

void sub_16E0B9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B48B8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1959094((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 8 * v10), *(a2 + 56), 8 * *(a2 + 48));
  }

  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = *(a2 + 80);
    v14 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_15D79FC((a1 + 64), v14, (v13 + 8), v12, **(a1 + 80) - *(a1 + 72));
    v15 = *(a1 + 72) + v12;
    *(a1 + 72) = v15;
    v16 = *(a1 + 80);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 16);
  if ((v17 & 3) != 0)
  {
    if (v17)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 88);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_157D924(v20);
        *(a1 + 88) = v18;
      }

      if (*(a2 + 88))
      {
        v21 = *(a2 + 88);
      }

      else
      {
        v21 = &off_2777810;
      }

      sub_157D090(v18, v21);
    }

    if ((v17 & 2) != 0)
    {
      *(a1 + 96) = *(a2 + 96);
    }

    *(a1 + 16) |= v17;
  }

  v22 = *(a2 + 8);
  if (v22)
  {

    sub_1957EF4((a1 + 8), (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16E0D68(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_157D31C(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_16E0DA8(uint64_t a1)
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

  if (a1 != &off_277E5C8 && *(a1 + 24))
  {
    sub_140254C();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E0E60(uint64_t a1)
{
  sub_16E0DA8(a1);

  operator delete();
}

uint64_t sub_16E0E98(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1402588(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_16E0EF4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v18, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v18 + 1;
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v18 + 2;
      }
    }

    v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_14050A4(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2201B80(a3, v14, v6);
    }

    else
    {
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v18;
        }

        return 0;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
}

char *sub_16E1038(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 10;
    v7 = *(v6 + 44);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_1403020(v6, v8, a3);
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 31);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
  }

  else
  {
    v13 = (v11 + 8);
  }

  if ((*a3 - v4) >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_16E1144(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_1403980(*(a1 + 24));
    result = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    result = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    result += v6;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_16E11C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v5 = *(a1 + 24);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_14050A4(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_276FAB8;
    }

    sub_1403E5C(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16E126C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_140441C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_16E12AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700C18;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_16E1350(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700C98;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

uint64_t sub_16E1400(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700D18;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = a1;
  *(result + 104) = 0;
  return result;
}

double sub_16E14B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2700D98;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = a1;
  result = 0.0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  return result;
}

void *sub_16E1570(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2700E18;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_16E2724(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16C91D4();
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E27A8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16CB154(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E282C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16CC040(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E28B0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16D0254();
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_16E2934(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_16D0D9C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_16E29B0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_16E29C0(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_16D1038(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_13BA5F8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_16E2A3C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_16D1168(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_1681048(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16E2AB8(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_16D14F0(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_16E2B34(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16E2BB0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15AB278(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E2C34(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16D1F24(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E2CB8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16D1598(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E2D3C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_15AE76C(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_16E2DB8(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_16E2DC8(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_16D48F0(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_16E2E44(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16E2E54(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_16D4848(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_16E2ED0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16E2EE0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16D4A3C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_16E2F64(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_16D5A1C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_166E820(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16E2FE0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16D5B5C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_16E3064(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_16D6C1C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_16E30E0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

__n128 sub_16E30F0(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v12 = a1[10];
  v13 = a1[11];
  *(a1 + 5) = *(a2 + 80);
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  v14 = a1[12];
  v15 = a1[13];
  *(a1 + 6) = *(a2 + 96);
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  v16 = a1[14];
  v17 = a1[15];
  *(a1 + 7) = *(a2 + 112);
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  v18 = a1[16];
  v19 = a1[17];
  *(a1 + 8) = *(a2 + 128);
  *(a2 + 128) = v18;
  *(a2 + 136) = v19;
  v20 = a1[18];
  v21 = a1[19];
  *(a1 + 9) = *(a2 + 144);
  *(a2 + 144) = v20;
  *(a2 + 152) = v21;
  v22 = a1[20];
  v23 = a1[21];
  result = *(a2 + 160);
  *(a1 + 10) = result;
  *(a2 + 160) = v22;
  *(a2 + 168) = v23;
  v25 = a1[22];
  a1[22] = *(a2 + 176);
  *(a2 + 176) = v25;
  return result;
}

void sub_16E31B4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16D7490(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E3238(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16DD180(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E32BC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16D9EB4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E3340(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_16DD848(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_16E33BC(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_16E33CC(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_16DDE34(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E54B4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16E3448(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_16DDAF8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_16E34C4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_16E34D4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16DE740(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E3558(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16E01B8(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_16E35DC(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_16E1350(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_16E3658(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_16E3668(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_16E14B8(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_16E36E4(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_16E37AC()
{

  operator new();
}

void sub_16E37C4()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(19, v0, v3);
}

void sub_16E3804()
{
  dword_278E5C8 = 101;
  qword_278E5D0 = &off_2775678;
  sub_194F72C(&off_2788950, 101, 11, 0, 0, &off_2775678);
  dword_278E5D8 = 100;
  qword_278E5E0 = &off_277E288;
  sub_194F72C(&off_276D680, 100, 11, 1, 0, &off_277E288);
  dword_278E5E8 = 100;
  qword_278E5F0 = 0;
  sub_194EE44(&off_2789CA0, 100, 4, 1, 0);
  dword_278E5F8 = 1003;
  qword_278E600 = &off_277E2B0;
  sub_194F72C(&off_27868A0, 1003, 11, 1, 0, &off_277E2B0);
  dword_278E608 = 1000;
  qword_278E610 = &off_276E160;
  sub_194F72C(&off_278AB30, 1000, 11, 0, 0, &off_276E160);
  dword_278E618 = 1001;
  qword_278E620 = &off_277E2D0;
  sub_194F72C(&off_278AB30, 1001, 11, 0, 0, &off_277E2D0);
  dword_278E628 = 1002;
  qword_278E630 = &off_277E738;
  sub_194F72C(&off_278AB30, 1002, 11, 0, 0, &off_277E738);
  dword_278E638 = 1000;
  qword_278E640 = &off_276E188;
  sub_194F72C(&off_278AD90, 1000, 11, 0, 0, &off_276E188);
  dword_278E648 = 1001;
  qword_278E650 = &off_2777780;
  sub_194F72C(&off_278AD90, 1001, 11, 0, 0, &off_2777780);
  dword_278E658 = 1002;
  qword_278E660 = &off_277E358;
  sub_194F72C(&off_278AD90, 1002, 11, 1, 0, &off_277E358);
  dword_278E668 = 1003;
  qword_278E670 = &off_277E3D8;
  sub_194F72C(&off_278AD90, 1003, 11, 0, 0, &off_277E3D8);
  dword_278E678 = 1004;
  qword_278E680 = &off_277E380;
  sub_194F72C(&off_278AD90, 1004, 11, 1, 0, &off_277E380);
  dword_278E688 = 1005;
  qword_278E690 = &off_276A5A0;
  sub_194F72C(&off_278AD90, 1005, 11, 0, 0, &off_276A5A0);
  dword_278E698 = 100;
  qword_278E6A0 = &unk_234CDB0;
  sub_194EE44(&off_2787CC0, 100, 9, 1, 0);
  dword_278E6A8 = 100;
  qword_278E6B0 = &unk_234CDC8;
  sub_194EE44(&off_2789B88, 100, 9, 1, 0);
  dword_278E6B8 = 100;
  qword_278E6C0 = &off_277E418;
  sub_194F72C(&off_2787EA8, 100, 11, 0, 0, &off_277E418);
  dword_278E6C8 = 100;
  qword_278E6D0 = &off_277E418;
  sub_194F72C(&off_2788E90, 100, 11, 0, 0, &off_277E418);
  dword_278E6D8 = 100;
  qword_278E6E0 = 0;
  sub_194EE44(&off_2787C80, 100, 1, 0, 0);
  dword_278E6E8 = 101;
  qword_278E6F0 = 0;
  sub_194EE44(&off_2787C80, 101, 1, 0, 0);
  dword_278E6F8 = 102;
  qword_278E700 = 0;
  sub_194EE44(&off_2787C80, 102, 1, 0, 0);
  dword_278E708 = 103;
  qword_278E710 = 0;
  sub_194EE44(&off_2787C80, 103, 1, 0, 0);
  qword_278E718 = 104;
  sub_194EE44(&off_2787C80, 104, 5, 0, 0);
  dword_278E720 = 105;
  qword_278E728 = &unk_234CDE0;
  sub_194EE44(&off_2787C80, 105, 9, 0, 0);
  qword_278E730 = 106;
  sub_194EE44(&off_2787C80, 106, 5, 0, 0);
  dword_278E738 = 107;
  qword_278E740 = &off_277E650;
  sub_194F72C(&off_2787C80, 107, 11, 0, 0, &off_277E650);
  dword_278E748 = 108;
  qword_278E750 = 0;
  sub_194EE44(&off_2787C80, 108, 1, 0, 0);
  dword_278E758 = 109;
  qword_278E760 = &unk_234CDF8;
  sub_194EE44(&off_2787C80, 109, 9, 0, 0);
  dword_278E768 = 1050;
  qword_278E770 = &unk_234CE10;
  sub_194EE44(&off_278B870, 1050, 9, 0, 0);
  qword_278E778 = 101;
  sub_194F628(&off_2787EA8, 101, 14, 0, 0, sub_16DDED0);
  dword_278E780 = 102;
  qword_278E788 = &off_277E4F0;
  sub_194F72C(&off_2787EA8, 102, 11, 0, 0, &off_277E4F0);
  dword_278E790 = 103;
  qword_278E798 = &off_277E448;
  sub_194F72C(&off_2787EA8, 103, 11, 0, 0, &off_277E448);
  dword_278E7A0 = 1004;
  qword_278E7A8 = &off_277E5C8;

  sub_194F72C(&off_27868A0, 1004, 11, 0, 0, &off_277E5C8);
}

uint64_t sub_16E3E8C()
{
  qword_27DC4A8 = "LEXICALMIXEDSEMANTIC";
  unk_27DC4B0 = 7;
  dword_27DC4B8 = 1;
  qword_27DC4C0 = "MIXEDSEMANTIC";
  unk_27DC4C8 = 5;
  dword_27DC4D0 = 0;
  qword_27DC4D8 = "SEMANTIC";
  unk_27DC4E0 = 8;
  dword_27DC4E8 = 2;
  qword_27DC4F0 = "ATTRIBUTEBRANDCATEGORYCATEGORY_BROWSECATEGORY_BUSINESS_ATTRIBUTECATEGORY_COLLECTIONCATEGORY_DEPARTMENTCATEGORY_DIRECT_LINKCATEGORY_EVENTCATEGORY_PHOTOCATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  *algn_27DC4F8 = 9;
  dword_27DC500 = 9;
  qword_27DC508 = "BRANDCATEGORYCATEGORY_BROWSECATEGORY_BUSINESS_ATTRIBUTECATEGORY_COLLECTIONCATEGORY_DEPARTMENTCATEGORY_DIRECT_LINKCATEGORY_EVENTCATEGORY_PHOTOCATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC510 = 5;
  result = 6;
  dword_27DC518 = 6;
  qword_27DC520 = "CATEGORYCATEGORY_BROWSECATEGORY_BUSINESS_ATTRIBUTECATEGORY_COLLECTIONCATEGORY_DEPARTMENTCATEGORY_DIRECT_LINKCATEGORY_EVENTCATEGORY_PHOTOCATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC528 = 8;
  dword_27DC530 = 2;
  qword_27DC538 = "CATEGORY_BROWSECATEGORY_BUSINESS_ATTRIBUTECATEGORY_COLLECTIONCATEGORY_DEPARTMENTCATEGORY_DIRECT_LINKCATEGORY_EVENTCATEGORY_PHOTOCATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC540 = 15;
  dword_27DC548 = 16;
  qword_27DC550 = "CATEGORY_BUSINESS_ATTRIBUTECATEGORY_COLLECTIONCATEGORY_DEPARTMENTCATEGORY_DIRECT_LINKCATEGORY_EVENTCATEGORY_PHOTOCATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC558 = 27;
  dword_27DC560 = 17;
  qword_27DC568 = "CATEGORY_COLLECTIONCATEGORY_DEPARTMENTCATEGORY_DIRECT_LINKCATEGORY_EVENTCATEGORY_PHOTOCATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC570 = 19;
  dword_27DC578 = 18;
  qword_27DC580 = "CATEGORY_DEPARTMENTCATEGORY_DIRECT_LINKCATEGORY_EVENTCATEGORY_PHOTOCATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC588 = 19;
  dword_27DC590 = 26;
  qword_27DC598 = "CATEGORY_DIRECT_LINKCATEGORY_EVENTCATEGORY_PHOTOCATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC5A0 = 20;
  dword_27DC5A8 = 19;
  qword_27DC5B0 = "CATEGORY_EVENTCATEGORY_PHOTOCATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC5B8 = 14;
  dword_27DC5C0 = 20;
  qword_27DC5C8 = "CATEGORY_PHOTOCATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC5D0 = 14;
  dword_27DC5D8 = 21;
  qword_27DC5E0 = "CATEGORY_RATINGCATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC5E8 = 15;
  dword_27DC5F0 = 22;
  qword_27DC5F8 = "CATEGORY_SERVICECATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC600 = 16;
  dword_27DC608 = 23;
  qword_27DC610 = "CATEGORY_STATCATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC618 = 13;
  dword_27DC620 = 24;
  qword_27DC628 = "CATEGORY_WALLETCHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC630 = 15;
  dword_27DC638 = 25;
  qword_27DC640 = "CHAINDATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC648 = 5;
  dword_27DC650 = 3;
  qword_27DC658 = "DATA_AB_KEYWORDGEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC660 = 15;
  dword_27DC668 = 15;
  qword_27DC670 = "GEOIGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC678 = 3;
  dword_27DC680 = 5;
  qword_27DC688 = "IGNOREKEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC690 = 6;
  dword_27DC698 = 0;
  qword_27DC6A0 = "KEYWORDLATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC6A8 = 7;
  dword_27DC6B0 = 11;
  qword_27DC6B8 = "LATENT_BRANDNAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC6C0 = 12;
  dword_27DC6C8 = 12;
  qword_27DC6D0 = "NAMEPHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC6D8 = 4;
  dword_27DC6E0 = 1;
  qword_27DC6E8 = "PHONEPROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  unk_27DC6F0 = 5;
  dword_27DC6F8 = 8;
  qword_27DC700 = "PROXIMITYQUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  qword_27DC708 = 9;
  dword_27DC710 = 4;
  qword_27DC718 = "QUERYSYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  qword_27DC720 = 5;
  dword_27DC728 = 10;
  qword_27DC730 = "SYSTEMTRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  qword_27DC738 = 6;
  dword_27DC740 = 7;
  qword_27DC748 = "TRANSLATION_CATEGORYTRANSLATION_PROXIMITY";
  qword_27DC750 = 20;
  dword_27DC758 = 13;
  qword_27DC760 = "TRANSLATION_PROXIMITY";
  qword_27DC768 = 21;
  dword_27DC770 = 14;
  qword_27DC790 = "STRUCTURED_SPAN_DATA_OPERATOR_NONESTRUCTURED_SPAN_DATA_OPERATOR_OR";
  unk_27DC798 = 34;
  qword_27DC7A8 = "STRUCTURED_SPAN_DATA_OPERATOR_OR";
  unk_27DC7B0 = 32;
  qword_27DC778 = "STRUCTURED_SPAN_DATA_OPERATOR_ANDSTRUCTURED_SPAN_DATA_OPERATOR_NONESTRUCTURED_SPAN_DATA_OPERATOR_OR";
  unk_27DC780 = 33;
  dword_27DC788 = 1;
  dword_27DC7A0 = 0;
  dword_27DC7B8 = 2;
  qword_27DC7D8 = "FALLBACK_TYPE_NONEFALLBACK_TYPE_PREF_CAT_FOR_BRANDFALLBACK_TYPE_RELATED_CATEGORY_FOR_CATEGORY";
  qword_27DC7F0 = "FALLBACK_TYPE_PREF_CAT_FOR_BRANDFALLBACK_TYPE_RELATED_CATEGORY_FOR_CATEGORY";
  unk_27DC7F8 = 32;
  qword_27DC808 = "FALLBACK_TYPE_RELATED_CATEGORY_FOR_CATEGORY";
  unk_27DC810 = 43;
  qword_27DC7C0 = "FALLBACK_TYPE_NAMEFALLBACK_TYPE_NONEFALLBACK_TYPE_PREF_CAT_FOR_BRANDFALLBACK_TYPE_RELATED_CATEGORY_FOR_CATEGORY";
  *algn_27DC7C8 = 18;
  dword_27DC7D0 = 1;
  qword_27DC7E0 = 18;
  dword_27DC7E8 = 0;
  dword_27DC800 = 2;
  dword_27DC818 = 3;
  qword_27DC838 = "ENABLEDENABLED_STRICT";
  unk_27DC840 = 7;
  qword_27DC850 = "ENABLED_STRICT";
  unk_27DC858 = 14;
  qword_27DC820 = "DISABLEDENABLEDENABLED_STRICT";
  *algn_27DC828 = 8;
  dword_27DC830 = 0;
  dword_27DC848 = 1;
  dword_27DC860 = 2;
  qword_27DC880 = "SAR_IN_NAVSAR_NON_NAV";
  unk_27DC888 = 10;
  qword_27DC898 = "SAR_NON_NAV";
  unk_27DC8A0 = 11;
  qword_27DC868 = "NORMALSAR_IN_NAVSAR_NON_NAV";
  unk_27DC870 = 6;
  dword_27DC878 = 0;
  dword_27DC890 = 1;
  dword_27DC8A8 = 2;
  qword_27DC8E0 = "FILTER_QUERY_ORFILTER_QUERY_TERM";
  unk_27DC8E8 = 15;
  qword_27DC8B0 = "FILTER_QUERY_ANDFILTER_QUERY_NOTFILTER_QUERY_ORFILTER_QUERY_TERM";
  qword_27DC8B8 = 16;
  dword_27DC8C0 = 0;
  qword_27DC8C8 = "FILTER_QUERY_NOTFILTER_QUERY_ORFILTER_QUERY_TERM";
  unk_27DC8D0 = 16;
  dword_27DC8D8 = 3;
  dword_27DC8F0 = 1;
  qword_27DC8F8 = "FILTER_QUERY_TERM";
  unk_27DC900 = 17;
  dword_27DC908 = 2;
  qword_27DC928 = "FILTER_QUERY_VALUE_RANGEFILTER_QUERY_VALUE_STRING";
  unk_27DC930 = 24;
  qword_27DC940 = "FILTER_QUERY_VALUE_STRING";
  unk_27DC948 = 25;
  qword_27DC910 = "FILTER_QUERY_VALUE_NUMERICFILTER_QUERY_VALUE_RANGEFILTER_QUERY_VALUE_STRING";
  *algn_27DC918 = 26;
  dword_27DC920 = 1;
  dword_27DC938 = 2;
  dword_27DC950 = 0;
  qword_27DC970 = "HIKE_TYPE_OUT_AND_BACKHIKE_TYPE_POINT_TO_POINTHIKE_TYPE_UNKNOWN";
  qword_27DC988 = "HIKE_TYPE_POINT_TO_POINTHIKE_TYPE_UNKNOWN";
  unk_27DC990 = 24;
  qword_27DC9A0 = "HIKE_TYPE_UNKNOWN";
  unk_27DC9A8 = 17;
  qword_27DC958 = "HIKE_TYPE_LOOPHIKE_TYPE_OUT_AND_BACKHIKE_TYPE_POINT_TO_POINTHIKE_TYPE_UNKNOWN";
  unk_27DC960 = 14;
  dword_27DC968 = 1;
  qword_27DC978 = 22;
  dword_27DC980 = 2;
  dword_27DC998 = 3;
  dword_27DC9B0 = 0;
  qword_27DC9D0 = "JAPANESESTANDARDWHITESPACE";
  unk_27DC9D8 = 8;
  qword_27DC9E8 = "STANDARDWHITESPACE";
  unk_27DC9F0 = 8;
  qword_27DCA00 = "WHITESPACE";
  unk_27DCA08 = 10;
  qword_27DC9B8 = "CHINESEJAPANESESTANDARDWHITESPACE";
  unk_27DC9C0 = 7;
  dword_27DC9C8 = 3;
  dword_27DC9E0 = 2;
  dword_27DC9F8 = 1;
  dword_27DCA10 = 0;
  qword_27DCA30 = "DISTANCE_TIERED_RELEVANCEDISTANCE_TO_DEVICE_LOCATIONEV_PLUG_SPEED_FAST_TO_SLOWPRICE_RANGE_ASCENDINGPRICE_RANGE_DESCENDINGRANKER_DISABLEDRATINGRELEVANCEVENDOR_RATING";
  unk_27DCA38 = 25;
  qword_27DCA60 = "EV_PLUG_SPEED_FAST_TO_SLOWPRICE_RANGE_ASCENDINGPRICE_RANGE_DESCENDINGRANKER_DISABLEDRATINGRELEVANCEVENDOR_RATING";
  unk_27DCA68 = 26;
  qword_27DCA78 = "PRICE_RANGE_ASCENDINGPRICE_RANGE_DESCENDINGRANKER_DISABLEDRATINGRELEVANCEVENDOR_RATING";
  unk_27DCA80 = 21;
  qword_27DCA90 = "PRICE_RANGE_DESCENDINGRANKER_DISABLEDRATINGRELEVANCEVENDOR_RATING";
  unk_27DCA98 = 22;
  qword_27DCAA8 = "RANKER_DISABLEDRATINGRELEVANCEVENDOR_RATING";
  unk_27DCAB0 = 15;
  qword_27DCAC0 = "RATINGRELEVANCEVENDOR_RATING";
  unk_27DCAC8 = 6;
  qword_27DCAD8 = "RELEVANCEVENDOR_RATING";
  unk_27DCAE0 = 9;
  qword_27DCAF0 = "VENDOR_RATING";
  unk_27DCAF8 = 13;
  qword_27DCA18 = "DISTANCEDISTANCE_TIERED_RELEVANCEDISTANCE_TO_DEVICE_LOCATIONEV_PLUG_SPEED_FAST_TO_SLOWPRICE_RANGE_ASCENDINGPRICE_RANGE_DESCENDINGRANKER_DISABLEDRATINGRELEVANCEVENDOR_RATING";
  unk_27DCA20 = 8;
  dword_27DCA28 = 2;
  dword_27DCA40 = 9;
  qword_27DCA48 = "DISTANCE_TO_DEVICE_LOCATIONEV_PLUG_SPEED_FAST_TO_SLOWPRICE_RANGE_ASCENDINGPRICE_RANGE_DESCENDINGRANKER_DISABLEDRATINGRELEVANCEVENDOR_RATING";
  unk_27DCA50 = 27;
  dword_27DCA58 = 6;
  dword_27DCA70 = 8;
  dword_27DCA88 = 4;
  dword_27DCAA0 = 5;
  dword_27DCAB8 = 3;
  dword_27DCAD0 = 1;
  dword_27DCAE8 = 0;
  dword_27DCB00 = 7;
  qword_27DCB50 = "AUTO_COMPLETE_ANALYSIS_REWRITE_ANALYSIS_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_ANALYSIS_INTERPRETATION_TOKEN_IMPORTANCEAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATION_EMBEDDINGAUTO_COMPLETE_NOREWRITE_ABAUTO_COMPLETE_WITH_EARLY_CLASSIFIER_AND_TAGGERAUTO_COMPLETE_WITH_QUERY_INTERPRETATIONAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCB68 = "AUTO_COMPLETE_ANALYSIS_REWRITE_ANALYSIS_INTERPRETATION_TOKEN_IMPORTANCEAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATION_EMBEDDINGAUTO_COMPLETE_NOREWRITE_ABAUTO_COMPLETE_WITH_EARLY_CLASSIFIER_AND_TAGGERAUTO_COMPLETE_WITH_QUERY_INTERPRETATIONAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCB70 = 71;
  qword_27DCB80 = "AUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATION_EMBEDDINGAUTO_COMPLETE_NOREWRITE_ABAUTO_COMPLETE_WITH_EARLY_CLASSIFIER_AND_TAGGERAUTO_COMPLETE_WITH_QUERY_INTERPRETATIONAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCB88 = 45;
  qword_27DCB38 = "AUTO_COMPLETE_ANALYSIS_FUZZYV2_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_ANALYSIS_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_ANALYSIS_INTERPRETATION_TOKEN_IMPORTANCEAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATION_EMBEDDINGAUTO_COMPLETE_NOREWRITE_ABAUTO_COMPLETE_WITH_EARLY_CLASSIFIER_AND_TAGGERAUTO_COMPLETE_WITH_QUERY_INTERPRETATIONAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCB40 = 45;
  dword_27DCB90 = 24;
  qword_27DCB98 = "AUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATION_EMBEDDINGAUTO_COMPLETE_NOREWRITE_ABAUTO_COMPLETE_WITH_EARLY_CLASSIFIER_AND_TAGGERAUTO_COMPLETE_WITH_QUERY_INTERPRETATIONAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCBA0 = 55;
  qword_27DCBB0 = "AUTO_COMPLETE_NOREWRITE_ABAUTO_COMPLETE_WITH_EARLY_CLASSIFIER_AND_TAGGERAUTO_COMPLETE_WITH_QUERY_INTERPRETATIONAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCBB8 = 26;
  dword_27DCBA8 = 26;
  qword_27DCBC8 = "AUTO_COMPLETE_WITH_EARLY_CLASSIFIER_AND_TAGGERAUTO_COMPLETE_WITH_QUERY_INTERPRETATIONAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCC10 = "AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCC18 = 47;
  qword_27DCBF8 = "AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCC00 = 47;
  qword_27DCC28 = "AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  dword_27DCC38 = 25;
  qword_27DCC40 = "AUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCC48 = 51;
  qword_27DCC58 = "COMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCC70 = "DISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCC88 = "GEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCCB8 = "PARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCCD0 = "QUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCCD8 = 42;
  qword_27DCB08 = "AC_POI_VECTORIZEAUTO_COMPLETEAUTO_COMPLETE_ANALYSIS_FUZZYV2_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_ANALYSIS_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_ANALYSIS_INTERPRETATION_TOKEN_IMPORTANCEAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATION_EMBEDDINGAUTO_COMPLETE_NOREWRITE_ABAUTO_COMPLETE_WITH_EARLY_CLASSIFIER_AND_TAGGERAUTO_COMPLETE_WITH_QUERY_INTERPRETATIONAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCB10 = 16;
  qword_27DCBD0 = 46;
  dword_27DCCE0 = 32;
  qword_27DCCE8 = "QUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCCF0 = 46;
  qword_27DCD00 = "QUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCD18 = "QUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCD30 = "QUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  dword_27DCD40 = 35;
  qword_27DCD48 = "SEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCD60 = "SEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCD78 = "SEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCB20 = "AUTO_COMPLETEAUTO_COMPLETE_ANALYSIS_FUZZYV2_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_ANALYSIS_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_ANALYSIS_INTERPRETATION_TOKEN_IMPORTANCEAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATIONAUTO_COMPLETE_ANALYSIS_REWRITE_INTERPRETATION_EMBEDDINGAUTO_COMPLETE_NOREWRITE_ABAUTO_COMPLETE_WITH_EARLY_CLASSIFIER_AND_TAGGERAUTO_COMPLETE_WITH_QUERY_INTERPRETATIONAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCB28 = 13;
  dword_27DCB18 = 37;
  dword_27DCB30 = 1;
  dword_27DCB48 = 10;
  qword_27DCB58 = 54;
  dword_27DCCF8 = 33;
  qword_27DCD80 = 33;
  qword_27DCD90 = "SEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCDA8 = "SEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  dword_27DCB60 = 27;
  dword_27DCDB8 = 23;
  qword_27DCDC0 = "SEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCBE0 = "AUTO_COMPLETE_WITH_QUERY_INTERPRETATIONAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FOR_QISAUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2AUTO_COMPLETE_WITH_QUERY_INTERPRETATION_FUZZYV2_AC_TAGAUTO_COMPLETE_WITH_SPELLER_AND_QUERY_INTERPRETATIONCOMPONENT_TEST_PLAN_GENERICDISPLAY_NAMEGEO_CODING_PLANNONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCBE8 = 39;
  dword_27DCB78 = 29;
  dword_27DCBC0 = 11;
  dword_27DCBD8 = 6;
  dword_27DCBF0 = 7;
  dword_27DCC08 = 12;
  dword_27DCC20 = 8;
  qword_27DCC30 = 54;
  dword_27DCC50 = 9;
  qword_27DCC60 = 27;
  dword_27DCC68 = 13;
  qword_27DCC78 = 12;
  dword_27DCC80 = 4;
  qword_27DCC90 = 15;
  qword_27DCDC8 = 34;
  dword_27DCDD0 = 34;
  qword_27DCDD8 = "SEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCCA0 = "NONEPARSECQUERY_PROCESSING_WORKFLOW_TYPE_ENRICHMENTSQUERY_PROCESSING_WORKFLOW_TYPE_FULL_PROCESSINGQUERY_PROCESSING_WORKFLOW_TYPE_NORMALIZEQUERY_PROCESSING_WORKFLOW_TYPE_REWRITEQUERY_UNDERSTANDING_TYPE_TAXONOMY_SEARCHSEARCHSEARCH_POI_VECTORIZESEARCH_WITHOUT_POI_SEARCH_SPELLERSEARCH_WITH_CLASSIFIER_SPELLERSEARCH_WITH_COMBINED_REWRITESSEARCH_WITH_COMBINED_REWRITES_LITESEARCH_WITH_QUESTION_REWRITETEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  unk_27DCCA8 = 4;
  dword_27DCC98 = 28;
  dword_27DCCB0 = 0;
  qword_27DCCC0 = 6;
  dword_27DCCC8 = 22;
  qword_27DCD08 = 40;
  qword_27DCDE0 = 28;
  qword_27DCDF0 = "TEST_QUERY_ANALYSIS_PROCESSORTEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  dword_27DCD10 = 30;
  qword_27DCDB0 = 29;
  qword_27DCDF8 = 29;
  qword_27DCE08 = "TEST_QUERY_CLASSIFICATION_PROCESSOR_WITHOUT_COMPLETIONTEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCD20 = 38;
  qword_27DCE10 = 54;
  qword_27DCE20 = "TEST_QUERY_INTERPRETATIONS_PROCESSORTEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCE38 = "TEST_QUERY_REWRITE_PROCESSOR_FUZZY_V2TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  dword_27DCD28 = 31;
  qword_27DCD38 = 40;
  qword_27DCD50 = 6;
  dword_27DCD58 = 2;
  qword_27DCD68 = 20;
  qword_27DCE40 = 37;
  qword_27DCE50 = "TEST_QUERY_REWRITE_PROCESSOR_SYNONYMTEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  dword_27DCD70 = 36;
  dword_27DCD88 = 5;
  qword_27DCD98 = 30;
  dword_27DCDA0 = 3;
  dword_27DCDE8 = 21;
  dword_27DCE00 = 17;
  dword_27DCE18 = 19;
  qword_27DCE28 = 36;
  dword_27DCE30 = 18;
  dword_27DCE48 = 14;
  qword_27DCE58 = 36;
  dword_27DCE60 = 15;
  qword_27DCE68 = "TEST_QUERY_REWRITE_PROCESSOR_TRANSLITERATIONTEST_RBO_QU_PROCESSOR";
  qword_27DCE70 = 44;
  dword_27DCE78 = 16;
  qword_27DCE80 = "TEST_RBO_QU_PROCESSOR";
  qword_27DCE88 = 21;
  dword_27DCE90 = 20;
  qword_27DCEB0 = "TERM_ATTRIBUTETERM_BUSINESSTERM_CATEGORYTERM_IGNORETERM_PLACETERM_PRODUCTTERM_PROPERTYTERM_REVIEWTERM_TRANSIT";
  unk_27DCEB8 = 14;
  qword_27DCEA0 = 14;
  qword_27DCEE0 = "TERM_CATEGORYTERM_IGNORETERM_PLACETERM_PRODUCTTERM_PROPERTYTERM_REVIEWTERM_TRANSIT";
  unk_27DCEE8 = 13;
  qword_27DCF28 = "TERM_PRODUCTTERM_PROPERTYTERM_REVIEWTERM_TRANSIT";
  qword_27DCF40 = "TERM_PROPERTYTERM_REVIEWTERM_TRANSIT";
  unk_27DCF48 = 13;
  qword_27DCEC8 = "TERM_BUSINESSTERM_CATEGORYTERM_IGNORETERM_PLACETERM_PRODUCTTERM_PROPERTYTERM_REVIEWTERM_TRANSIT";
  unk_27DCED0 = 13;
  qword_27DCF58 = "TERM_REVIEWTERM_TRANSIT";
  qword_27DCEF8 = "TERM_IGNORETERM_PLACETERM_PRODUCTTERM_PROPERTYTERM_REVIEWTERM_TRANSIT";
  qword_27DCF00 = 11;
  qword_27DCF60 = 11;
  dword_27DCF68 = 8;
  qword_27DCF10 = "TERM_PLACETERM_PRODUCTTERM_PROPERTYTERM_REVIEWTERM_TRANSIT";
  unk_27DCF18 = 10;
  qword_27DCE98 = "TERM_ARBITRARYTERM_ATTRIBUTETERM_BUSINESSTERM_CATEGORYTERM_IGNORETERM_PLACETERM_PRODUCTTERM_PROPERTYTERM_REVIEWTERM_TRANSIT";
  dword_27DCEA8 = 0;
  dword_27DCEC0 = 5;
  dword_27DCED8 = 2;
  dword_27DCEF0 = 3;
  dword_27DCF08 = 4;
  dword_27DCF20 = 1;
  qword_27DCF30 = 12;
  dword_27DCF38 = 7;
  dword_27DCF50 = 6;
  qword_27DCF70 = "TERM_TRANSIT";
  unk_27DCF78 = 12;
  dword_27DCF80 = 9;
  qword_27DCFA0 = "INFLECTION_COMPOUNDINGINFLECTION_PLURALITYINFLECTION_SPELLINGINFLECTION_SYNONYM";
  unk_27DCFA8 = 22;
  qword_27DCFB8 = "INFLECTION_PLURALITYINFLECTION_SPELLINGINFLECTION_SYNONYM";
  unk_27DCFC0 = 20;
  qword_27DCFD0 = "INFLECTION_SPELLINGINFLECTION_SYNONYM";
  unk_27DCFD8 = 19;
  qword_27DCF88 = "INFLECTION_AS_ISINFLECTION_COMPOUNDINGINFLECTION_PLURALITYINFLECTION_SPELLINGINFLECTION_SYNONYM";
  unk_27DCF90 = 16;
  dword_27DCF98 = 0;
  dword_27DCFB0 = 2;
  dword_27DCFC8 = 1;
  dword_27DCFE0 = 4;
  qword_27DCFE8 = "INFLECTION_SYNONYM";
  unk_27DCFF0 = 18;
  dword_27DCFF8 = 3;
  qword_27DD000 = "APPLE_PAYTAPSUNKNOWN";
  *algn_27DD008 = 9;
  dword_27DD010 = 2;
  qword_27DD018 = "TAPSUNKNOWN";
  unk_27DD020 = 4;
  dword_27DD028 = 1;
  qword_27DD030 = "UNKNOWN";
  unk_27DD038 = 7;
  dword_27DD040 = 0;
  qword_27DD048 = "SetTimeSeriesTopN";
  unk_27DD050 = 3;
  dword_27DD058 = 2;
  qword_27DD060 = "TimeSeriesTopN";
  unk_27DD068 = 10;
  dword_27DD070 = 1;
  qword_27DD078 = "TopN";
  unk_27DD080 = 4;
  dword_27DD088 = 0;
  qword_27DD090 = "DELETEINSERTREPLACE";
  *algn_27DD098 = 6;
  dword_27DD0A0 = 2;
  qword_27DD0A8 = "INSERTREPLACE";
  unk_27DD0B0 = 6;
  dword_27DD0B8 = 1;
  qword_27DD0C0 = "REPLACE";
  unk_27DD0C8 = 7;
  dword_27DD0D0 = 0;
  qword_27DD108 = "FEATURE_TYPE_LOCALFEATURE_TYPE_QUERYFEATURE_TYPE_QUERY_BUSINESSFEATURE_TYPE_TEMPORALFEATURE_TYPE_UNKNOWN";
  qword_27DD110 = 18;
  qword_27DD120 = "FEATURE_TYPE_QUERYFEATURE_TYPE_QUERY_BUSINESSFEATURE_TYPE_TEMPORALFEATURE_TYPE_UNKNOWN";
  unk_27DD128 = 18;
  qword_27DD0F0 = "FEATURE_TYPE_INTERPRETATIONFEATURE_TYPE_LOCALFEATURE_TYPE_QUERYFEATURE_TYPE_QUERY_BUSINESSFEATURE_TYPE_TEMPORALFEATURE_TYPE_UNKNOWN";
  qword_27DD0F8 = 27;
  qword_27DD138 = "FEATURE_TYPE_QUERY_BUSINESSFEATURE_TYPE_TEMPORALFEATURE_TYPE_UNKNOWN";
  unk_27DD140 = 27;
  qword_27DD150 = "FEATURE_TYPE_TEMPORALFEATURE_TYPE_UNKNOWN";
  unk_27DD158 = 21;
  qword_27DD0D8 = "FEATURE_TYPE_BUSINESSFEATURE_TYPE_INTERPRETATIONFEATURE_TYPE_LOCALFEATURE_TYPE_QUERYFEATURE_TYPE_QUERY_BUSINESSFEATURE_TYPE_TEMPORALFEATURE_TYPE_UNKNOWN";
  unk_27DD0E0 = 21;
  qword_27DD168 = "FEATURE_TYPE_UNKNOWN";
  unk_27DD170 = 20;
  dword_27DD0E8 = 1;
  dword_27DD100 = 5;
  dword_27DD118 = 2;
  dword_27DD130 = 4;
  dword_27DD148 = 6;
  dword_27DD160 = 3;
  dword_27DD178 = 0;
  qword_27DD180 = "SEARCH_ENTRY_POINT_TYPE_AC_TAP_ADDRESSSEARCH_ENTRY_POINT_TYPE_AC_TAP_BUSINESSSEARCH_ENTRY_POINT_TYPE_AC_TAP_GUIDESEARCH_ENTRY_POINT_TYPE_AC_TAP_PUBLISHERSEARCH_ENTRY_POINT_TYPE_AC_TAP_QUERYSEARCH_ENTRY_POINT_TYPE_CATEGORY_SEARCHSEARCH_ENTRY_POINT_TYPE_SEARCHSEARCH_ENTRY_POINT_TYPE_UNKNOWN";
  *algn_27DD188 = 38;
  qword_27DD1C8 = "SEARCH_ENTRY_POINT_TYPE_AC_TAP_PUBLISHERSEARCH_ENTRY_POINT_TYPE_AC_TAP_QUERYSEARCH_ENTRY_POINT_TYPE_CATEGORY_SEARCHSEARCH_ENTRY_POINT_TYPE_SEARCHSEARCH_ENTRY_POINT_TYPE_UNKNOWN";
  unk_27DD1D0 = 40;
  dword_27DD1D8 = 7;
  qword_27DD1E0 = "SEARCH_ENTRY_POINT_TYPE_AC_TAP_QUERYSEARCH_ENTRY_POINT_TYPE_CATEGORY_SEARCHSEARCH_ENTRY_POINT_TYPE_SEARCHSEARCH_ENTRY_POINT_TYPE_UNKNOWN";
  unk_27DD1E8 = 36;
  qword_27DD1B0 = "SEARCH_ENTRY_POINT_TYPE_AC_TAP_GUIDESEARCH_ENTRY_POINT_TYPE_AC_TAP_PUBLISHERSEARCH_ENTRY_POINT_TYPE_AC_TAP_QUERYSEARCH_ENTRY_POINT_TYPE_CATEGORY_SEARCHSEARCH_ENTRY_POINT_TYPE_SEARCHSEARCH_ENTRY_POINT_TYPE_UNKNOWN";
  unk_27DD1B8 = 36;
  qword_27DD1F8 = "SEARCH_ENTRY_POINT_TYPE_CATEGORY_SEARCHSEARCH_ENTRY_POINT_TYPE_SEARCHSEARCH_ENTRY_POINT_TYPE_UNKNOWN";
  unk_27DD200 = 39;
  qword_27DD198 = "SEARCH_ENTRY_POINT_TYPE_AC_TAP_BUSINESSSEARCH_ENTRY_POINT_TYPE_AC_TAP_GUIDESEARCH_ENTRY_POINT_TYPE_AC_TAP_PUBLISHERSEARCH_ENTRY_POINT_TYPE_AC_TAP_QUERYSEARCH_ENTRY_POINT_TYPE_CATEGORY_SEARCHSEARCH_ENTRY_POINT_TYPE_SEARCHSEARCH_ENTRY_POINT_TYPE_UNKNOWN";
  unk_27DD1A0 = 39;
  qword_27DD210 = "SEARCH_ENTRY_POINT_TYPE_SEARCHSEARCH_ENTRY_POINT_TYPE_UNKNOWN";
  unk_27DD218 = 30;
  qword_27DD228 = "SEARCH_ENTRY_POINT_TYPE_UNKNOWN";
  unk_27DD230 = 31;
  dword_27DD190 = 4;
  dword_27DD1A8 = 3;
  dword_27DD1C0 = 6;
  dword_27DD1F0 = 5;
  dword_27DD208 = 2;
  dword_27DD220 = 1;
  dword_27DD238 = 0;
  qword_27DD240 = "DYM_TYPE_GEO_ONLYDYM_TYPE_UNKNOWN";
  *algn_27DD248 = 17;
  dword_27DD250 = 1;
  qword_27DD258 = "DYM_TYPE_UNKNOWN";
  unk_27DD260 = 16;
  dword_27DD268 = 0;
  qword_27DD2A0 = "NEURALNONEPERCEPTRONQISTREE_BASED";
  unk_27DD2A8 = 6;
  qword_27DD270 = "AC_TAPGEONEURALNONEPERCEPTRONQISTREE_BASED";
  *algn_27DD278 = 6;
  dword_27DD298 = 6;
  dword_27DD2B0 = 5;
  qword_27DD2B8 = "NONEPERCEPTRONQISTREE_BASED";
  unk_27DD2C0 = 4;
  dword_27DD280 = 4;
  dword_27DD2E0 = 1;
  qword_27DD2E8 = "QISTREE_BASED";
  unk_27DD2F0 = 3;
  qword_27DD288 = "GEONEURALNONEPERCEPTRONQISTREE_BASED";
  unk_27DD290 = 3;
  dword_27DD2F8 = 3;
  qword_27DD300 = "TREE_BASED";
  unk_27DD308 = 10;
  qword_27DD2D0 = "PERCEPTRONQISTREE_BASED";
  unk_27DD2D8 = 10;
  dword_27DD310 = 2;
  dword_27DD2C8 = 0;
  return result;
}

uint64_t sub_16E48B0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      result = sub_16E4E44(*(a1 + 48));
    }

    if ((v3 & 2) != 0)
    {
      v4 = *(a1 + 56);
      v5 = *(v4 + 8);
      result = v4 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v5)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v3 & 0xFC) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
  }

  if ((v3 & 0x1F00) != 0)
  {
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0x100000000;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

void sub_16E4964(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    if (v4)
    {
      *(a1 + 40) |= 1u;
      v6 = *(a1 + 48);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_16F5828(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_277E5E8;
      }

      sub_16E527C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 40) |= 2u;
    v10 = *(a1 + 56);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_16F5B5C(v12);
      *(a1 + 56) = v10;
    }

    if (*(a2 + 56))
    {
      v13 = *(a2 + 56);
    }

    else
    {
      v13 = &off_277E718;
    }

    sub_12B9D50(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(a1 + 88) = *(a2 + 88);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 40) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 100) = *(a2 + 100);
      goto LABEL_11;
    }

LABEL_44:
    *(a1 + 96) = *(a2 + 96);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x1F00) == 0)
  {
    goto LABEL_20;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 104) = *(a2 + 104);
    if ((v4 & 0x200) == 0)
    {
LABEL_15:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_48;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  *(a1 + 112) = *(a2 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_49:
    *(a1 + 128) = *(a2 + 128);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_48:
  *(a1 + 120) = *(a2 + 120);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_49;
  }

LABEL_17:
  if ((v4 & 0x1000) != 0)
  {
LABEL_18:
    *(a1 + 132) = *(a2 + 132);
  }

LABEL_19:
  *(a1 + 40) |= v4;
LABEL_20:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16E4B4C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 48);
      result = sub_195228C(v3 + 16);
      if (result)
      {
        return (~*(v3 + 40) & 3) == 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_16E4C08(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_2701288;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_16E4C74(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_16E4CA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_2701288;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  return a1;
}

void sub_16E4D50(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_16E4D90(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E4E0C(void *a1)
{
  sub_16E4D90(a1);

  operator delete();
}

unsigned __int8 *sub_16E4E44(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if ((*(a1 + 40) & 7) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_16E4EAC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v21, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v21 + 1;
    v8 = *v21;
    if (*v21 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v21, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v21 + 2;
      }
    }

    v21 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 25)
      {
        goto LABEL_13;
      }

      v17 = *v7;
      v15 = v7 + 8;
      v5 |= 4u;
      *(a1 + 64) = v17;
LABEL_24:
      v21 = v15;
      goto LABEL_29;
    }

    if (v11 == 2)
    {
      if (v8 != 17)
      {
        goto LABEL_13;
      }

      v16 = *v7;
      v15 = v7 + 8;
      v5 |= 2u;
      *(a1 + 56) = v16;
      goto LABEL_24;
    }

    if (v11 == 1 && v8 == 9)
    {
      v18 = *v7;
      v15 = v7 + 8;
      v5 |= 1u;
      *(a1 + 48) = v18;
      goto LABEL_24;
    }

LABEL_13:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    if (v8 - 800 > 0x63F)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v20 = sub_11F1920((a1 + 8));
        v7 = v21;
      }

      v14 = sub_1952690(v8, v20, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_277E5E8, (a1 + 8), a3);
    }

    v21 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }

LABEL_29:
    if (sub_195ADC0(a3, &v21, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_34:
  v21 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v21;
}

char *sub_16E5070(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 48);
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 56);
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 4) != 0)
  {
LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v9 = *(a1 + 64);
    *v4 = 25;
    *(v4 + 1) = v9;
    v4 += 9;
  }

LABEL_14:
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 300, v4, a3);
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v4;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 31);
  if (v13 < 0)
  {
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (v12 + 8);
  }

  if (*a3 - v4 >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_16E51F0(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  v4 = 9;
  if ((v3 & 1) == 0)
  {
    v4 = 0;
  }

  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  v5 = v4 + v2;
  if ((~v3 & 3) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v2 + 18;
  }

  if ((v3 & 4) != 0)
  {
    result = v6 + 9;
  }

  else
  {
    result = v6;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    result += v10;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_16E527C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 40) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 64) = *(a2 + 64);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_16E5324(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_16E4E44(a1);

    sub_16E527C(a1, a2);
  }
}

uint64_t sub_16E5370(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    return (~*(a1 + 40) & 3) == 0;
  }

  return result;
}

void *sub_16E53BC(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_2701308;
  result[1] = v3;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_16E53EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2701308;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_16E5468(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_16E549C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E5510(void *a1)
{
  sub_16E549C(a1);

  operator delete();
}

uint64_t sub_16E5548(uint64_t a1)
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

char *sub_16E556C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
  {
    goto LABEL_28;
  }

  while (1)
  {
    v6 = v18 + 1;
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v18 + 2;
      }
    }

    v18 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 21)
      {
        v15 = *v6;
        v14 = v6 + 4;
        v5 |= 2u;
        *(a1 + 28) = v15;
LABEL_22:
        v18 = v14;
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 13)
    {
      v16 = *v6;
      v14 = v6 + 4;
      v5 |= 1u;
      *(a1 + 24) = v16;
      goto LABEL_22;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v18;
    }

    v18 = sub_1952690(v7, v13, v6, a3);
    if (!v18)
    {
      goto LABEL_29;
    }

LABEL_23:
    if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
    {
      goto LABEL_28;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_28;
  }

LABEL_29:
  v18 = 0;
LABEL_28:
  *(a1 + 16) |= v5;
  return v18;
}

char *sub_16E56D0(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 28);
    *v4 = 21;
    *(v4 + 1) = v8;
    v4 += 5;
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 31);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
  }

  else
  {
    v13 = (v11 + 8);
  }

  if (*a3 - v4 >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_16E57E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  v3 = (~v1 & 3) == 0;
  v4 = 10;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v4 += v8;
  }

  *(a1 + 20) = v4;
  return v4;
}

std::string *sub_16E5844(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_16E5548(result);

    return sub_128F8FC(v4, a2);
  }

  return result;
}

double sub_16E58B4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_2701388;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 1;
  return result;
}

uint64_t sub_16E590C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2701388;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_11F1A54((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 56);
  v13 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v13;
  *(a1 + 56) = v12;
  return a1;
}

void sub_16E5A44(_Unwind_Exception *a1)
{
  sub_12E6204(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_16E5A8C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_12E6204((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E5B38(uint64_t a1)
{
  sub_16E5A8C(a1);

  operator delete();
}

unsigned __int8 *sub_16E5B70(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if (v5)
  {
    v6 = *(v1 + 6) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

  if ((v5 & 0x7E) != 0)
  {
    v1[88] = 0;
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 23) = 1;
  }

  v8 = v1[8];
  v7 = v1 + 8;
  *(v7 + 2) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_16E5C40(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v38, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v38 + 1);
    v8 = **v38;
    if (**v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v38 + 2);
      }
    }

    *v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 8)
    {
      if (v8 >> 3 > 6)
      {
        if (v11 == 7)
        {
          if (v8 == 57)
          {
            v29 = *v7;
            v12 = v7 + 2;
            v5 |= 8u;
            *(a1 + 72) = v29;
            goto LABEL_47;
          }
        }

        else if (v11 == 8 && v8 == 65)
        {
          v17 = *v7;
          v12 = v7 + 2;
          v5 |= 0x10u;
          *(a1 + 80) = v17;
          goto LABEL_47;
        }
      }

      else if (v11 == 5)
      {
        if (v8 == 41)
        {
          v22 = *v7;
          v12 = v7 + 2;
          v5 |= 2u;
          *(a1 + 56) = v22;
          goto LABEL_47;
        }
      }

      else if (v11 == 6 && v8 == 49)
      {
        v13 = *v7;
        v12 = v7 + 2;
        v5 |= 4u;
        *(a1 + 64) = v13;
LABEL_47:
        *v38 = v12;
        goto LABEL_61;
      }

      goto LABEL_53;
    }

    if (v8 >> 3 <= 0xA)
    {
      if (v11 == 9)
      {
        if (v8 == 74)
        {
          v23 = v7 - 1;
          while (1)
          {
            v24 = (v23 + 1);
            *v38 = v23 + 1;
            v25 = *(a1 + 40);
            if (v25 && (v26 = *(a1 + 32), v26 < *v25))
            {
              *(a1 + 32) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = sub_16F5828(*(a1 + 24));
              v27 = sub_19593CC(a1 + 24, v28);
              v24 = *v38;
            }

            v23 = sub_21F4D60(a3, v27, v24);
            *v38 = v23;
            if (!v23)
            {
              goto LABEL_71;
            }

            if (*a3 <= v23 || *v23 != 74)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_53;
      }

      if (v11 != 10 || v8 != 80)
      {
        goto LABEL_53;
      }

      v15 = v7 + 1;
      v14 = *v7;
      if (v14 < 0)
      {
        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          *v38 = sub_19587DC(v7, v14);
          if (!*v38)
          {
            goto LABEL_71;
          }

          goto LABEL_21;
        }

        v15 = v7 + 2;
      }

      *v38 = v15;
LABEL_21:
      if ((v14 - 1) > 0xC)
      {
        sub_12E8488();
      }

      else
      {
        *(a1 + 16) |= 0x40u;
        *(a1 + 92) = v14;
      }

      goto LABEL_61;
    }

    if (v11 != 11)
    {
      break;
    }

    if (v8 != 88)
    {
      goto LABEL_53;
    }

    v5 |= 0x20u;
    v31 = v7 + 1;
    v30 = *v7;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_52;
    }

    v32 = *v31;
    v30 = (v32 << 7) + v30 - 128;
    if ((v32 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_52:
      *v38 = v31;
      *(a1 + 88) = v30 != 0;
      goto LABEL_61;
    }

    v36 = sub_19587DC(v7, v30);
    *v38 = v36;
    *(a1 + 88) = v37 != 0;
    if (!v36)
    {
      goto LABEL_71;
    }

LABEL_61:
    if (sub_195ADC0(a3, v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 12 && v8 == 98)
  {
    *(a1 + 16) |= 1u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v20 = sub_194DB04((a1 + 48), v19);
    v21 = sub_1958890(v20, *v38, a3);
LABEL_60:
    *v38 = v21;
    if (!v21)
    {
      goto LABEL_71;
    }

    goto LABEL_61;
  }

LABEL_53:
  if (v8)
  {
    v33 = (v8 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v7 = *v38;
    }

    v21 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  *v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v38;
}

char *sub_16E5FE0(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
    *v4 = 41;
    *(v4 + 1) = v7;
    v4 += 9;
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 64);
  *v4 = 49;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 72);
  *v4 = 57;
  *(v4 + 1) = v9;
  v4 += 9;
  if ((v6 & 0x10) != 0)
  {
LABEL_15:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 80);
    *v4 = 65;
    *(v4 + 1) = v10;
    v4 += 9;
  }

LABEL_18:
  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 74;
      v14 = *(v13 + 44);
      v4[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v4 + 1);
      }

      else
      {
        v15 = v4 + 2;
      }

      v4 = sub_16E5070(v13, v15, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v17 = *(a1 + 92);
    *v4 = 80;
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v4[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v4[2] = v17 >> 7;
      v16 = v4 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v16 - 1) = v4 | 0x80;
          v4 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v4 + 2;
    }
  }

  else
  {
    v16 = v4;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v20 = *(a1 + 88);
    *v16 = 88;
    v16[1] = v20;
    v16 += 2;
  }

  if (v6)
  {
    v16 = sub_128AEEC(a3, 12, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v16);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v16;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if (*a3 - v16 >= v24)
  {
    v26 = v24;
    memcpy(v16, v25, v24);
    v16 += v26;
    return v16;
  }

  return sub_1957130(a3, v25, v24, v16);
}

uint64_t sub_16E62F4(uint64_t a1)
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
      v7 = sub_16E51F0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 0x7F) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v12 = v2 + 9;
    if ((v8 & 2) == 0)
    {
      v12 = v2;
    }

    if ((v8 & 4) != 0)
    {
      v12 += 9;
    }

    if ((v8 & 8) != 0)
    {
      v12 += 9;
    }

    if ((v8 & 0x10) != 0)
    {
      v12 += 9;
    }

    v2 = v12 + ((v8 >> 4) & 2);
    if ((v8 & 0x40) != 0)
    {
      v13 = *(a1 + 92);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 11;
      }

      v2 += v15;
    }
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v2 += v19;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_16E645C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_11F1A54((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x7F) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 48), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 64) = *(a2 + 64);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 72) = *(a2 + 72);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 80) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v9;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 92) = *(a2 + 92);
      goto LABEL_13;
    }

LABEL_25:
    *(a1 + 88) = *(a2 + 88);
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_16E65C8(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_16E5B70(a1);

    sub_16E645C(a1, a2);
  }
}

BOOL sub_16E661C(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if (!sub_195228C(v4 + 16))
    {
      break;
    }

    --v2;
  }

  while ((~*(v4 + 40) & 3) == 0);
  return v3 < 1;
}

__n128 sub_16E668C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  LOBYTE(v9) = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v9;
  LODWORD(v9) = *(a1 + 92);
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = v9;
  return result;
}

uint64_t sub_16E6730(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2701408;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1567650((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_16E6820(_Unwind_Exception *a1)
{
  sub_15658B0(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_16E6868(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15658B0(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E68E8(void *a1)
{
  sub_16E6868(a1);

  operator delete();
}

uint64_t sub_16E6920(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E5548(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 0xF) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_16E69B0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v27 + 1;
    v8 = *v27;
    if (*v27 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v27, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v27 + 2;
      }
    }

    v27 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 13)
        {
          v23 = *v7;
          v19 = v7 + 4;
          v5 |= 1u;
          *(a1 + 48) = v23;
          goto LABEL_34;
        }
      }

      else if (v11 == 2 && v8 == 21)
      {
        v20 = *v7;
        v19 = v7 + 4;
        v5 |= 2u;
        *(a1 + 52) = v20;
LABEL_34:
        v27 = v19;
        goto LABEL_35;
      }
    }

    else if (v11 == 3)
    {
      if (v8 == 29)
      {
        v21 = *v7;
        v19 = v7 + 4;
        v5 |= 4u;
        *(a1 + 56) = v21;
        goto LABEL_34;
      }
    }

    else if (v11 == 4)
    {
      if (v8 == 37)
      {
        v22 = *v7;
        v19 = v7 + 4;
        v5 |= 8u;
        *(a1 + 60) = v22;
        goto LABEL_34;
      }
    }

    else if (v11 == 5 && v8 == 42)
    {
      v12 = v7 - 1;
      while (1)
      {
        v13 = (v12 + 1);
        v27 = v12 + 1;
        v14 = *(a1 + 40);
        if (v14 && (v15 = *(a1 + 32), v15 < *v14))
        {
          *(a1 + 32) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          v17 = sub_16F5884(*(a1 + 24));
          v16 = sub_19593CC(a1 + 24, v17);
          v13 = v27;
        }

        v12 = sub_21F9F18(a3, v16, v13);
        v27 = v12;
        if (!v12)
        {
          goto LABEL_48;
        }

        if (*a3 <= v12 || *v12 != 42)
        {
          goto LABEL_35;
        }
      }
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v7 = v27;
    }

    v27 = sub_1952690(v8, v26, v7, a3);
    if (!v27)
    {
      goto LABEL_48;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v27 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

char *sub_16E6BFC(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 52);
  *v4 = 21;
  *(v4 + 1) = v8;
  v4 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 56);
  *v4 = 29;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 60);
    *v4 = 37;
    *(v4 + 1) = v10;
    v4 += 5;
  }

LABEL_18:
  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 42;
      v14 = *(v13 + 20);
      v4[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v4 + 1);
      }

      else
      {
        v15 = v4 + 2;
      }

      v4 = sub_16E56D0(v13, v15, a3);
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v4;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if (*a3 - v4 >= v19)
  {
    v21 = v19;
    memcpy(v4, v20, v19);
    v4 += v21;
    return v4;
  }

  return sub_1957130(a3, v20, v19, v4);
}

uint64_t sub_16E6E30(uint64_t a1)
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
      v7 = sub_16E57E8(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 0xF) != 0)
  {
    v9 = v2 + 5;
    if ((v8 & 1) == 0)
    {
      v9 = v2;
    }

    if ((v8 & 2) != 0)
    {
      v9 += 5;
    }

    if ((v8 & 4) != 0)
    {
      v9 += 5;
    }

    if ((v8 & 8) != 0)
    {
      v2 = v9 + 5;
    }

    else
    {
      v2 = v9;
    }
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_16E6F14(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1567650(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0xF) != 0)
  {
    if (v9)
    {
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
      goto LABEL_10;
    }

LABEL_17:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v9 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_16E7028(uint64_t a1)
{
  v1 = *(a1 + 32);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 40) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

void *sub_16E7070(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_2701488;
  result[1] = v3;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_16E70AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2701488;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  *(a1 + 32) = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 32), (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
  }

  return a1;
}

void sub_16E7188(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_16E71BC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E7274(uint64_t a1)
{
  sub_16E71BC(a1);

  operator delete();
}

uint64_t sub_16E72AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_16E7328(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_16E74A8(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_16E7590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_16E7664(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_16E72AC(result);

    return sub_12F5A34(v4, a2);
  }

  return result;
}

uint64_t sub_16E76B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a2 + 24);
  *(a2 + 24) = *(result + 24);
  *(result + 24) = v3;
  v4 = *(a2 + 32);
  *(a2 + 32) = *(result + 32);
  *(result + 32) = v4;
  return result;
}

uint64_t sub_16E770C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E77C4(uint64_t a1)
{
  sub_16E770C(a1);

  operator delete();
}

uint64_t sub_16E77FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_16E7878(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_16E79F8(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_16E7AE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_16E7BCC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2701588;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_16E7C48(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_16E7C78(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E7CEC(void *a1)
{
  sub_16E7C78(a1);

  operator delete();
}

uint64_t sub_16E7D24(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_16E7D3C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v17, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v17 + 1;
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v17, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v17 + 2;
      }
    }

    v17 = v6;
    if (v7 == 8)
    {
      v14 = v6 + 1;
      v13 = *v6;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if (v15 < 0)
      {
        v17 = sub_19587DC(v6, v13);
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        v14 = v6 + 2;
LABEL_19:
        v17 = v14;
      }

      if (v13 > 2)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v13;
      }

      continue;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v17;
      }

      return 0;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v17;
    }

    v17 = sub_1952690(v7, v12, v6, a3);
    if (!v17)
    {
      return 0;
    }
  }

  return v17;
}

char *sub_16E7EA4(uint64_t a1, char *__dst, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v6;
    if (v6 > 0x7F)
    {
      __dst[1] = v6 | 0x80;
      v7 = v6 >> 7;
      __dst[2] = v6 >> 7;
      v5 = __dst + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = __dst[2];
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v5++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v5 = __dst + 2;
    }
  }

  else
  {
    v5 = __dst;
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v5;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 31);
  if (v13 < 0)
  {
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (v12 + 8);
  }

  if (*a3 - v5 >= v13)
  {
    v15 = v13;
    memcpy(v5, v14, v13);
    v5 += v15;
    return v5;
  }

  return sub_1957130(a3, v14, v13, v5);
}

uint64_t sub_16E7FCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v1 += v6;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_16E8050(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_2701608;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 116) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 132) = 1;
  return a1;
}

void sub_16E80D4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_16E8104(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_2701608;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  v6 = *(a2 + 40);
  if (v6)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  return a1;
}

uint64_t sub_16E82A0(uint64_t a1)
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

  if (a1 != &off_277E738)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_16E4D90(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_16E7C78(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E8378(uint64_t a1)
{
  sub_16E82A0(a1);

  operator delete();
}

char *sub_16E83B0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v45, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v45 + 1;
    v8 = *v45;
    if (*v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v45 + 2;
      }
    }

    v45 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_59;
        }

        *(a1 + 40) |= 1u;
        v11 = *(a1 + 48);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v11 = sub_16F5828(v13);
          *(a1 + 48) = v11;
          v7 = v45;
        }

        v14 = sub_21F4D60(a3, v11, v7);
        goto LABEL_68;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_59;
        }

        v30 = v7 + 1;
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          v45 = sub_19587DC(v7, v29);
          if (!v45)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v30 = v7 + 2;
LABEL_43:
          v45 = v30;
        }

        if ((v29 - 1) > 3)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 40) |= 0x1000u;
          *(a1 + 132) = v29;
        }

        goto LABEL_69;
      case 3u:
        if (v8 != 25)
        {
          goto LABEL_59;
        }

        v24 = *v7;
        v15 = v7 + 8;
        v5 |= 4u;
        *(a1 + 64) = v24;
        goto LABEL_58;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_59;
        }

        v5 |= 0x40u;
        v26 = v7 + 1;
        LODWORD(v25) = *v7;
        if ((v25 & 0x80) == 0)
        {
          goto LABEL_36;
        }

        v27 = *v26;
        v25 = v25 + (v27 << 7) - 128;
        if (v27 < 0)
        {
          v43 = sub_19587DC(v7, v25);
          v45 = v43;
          *(a1 + 96) = v44;
          if (!v43)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_36:
          v45 = v26;
          *(a1 + 96) = v25;
        }

        goto LABEL_69;
      case 5u:
        if (v8 != 41)
        {
          goto LABEL_59;
        }

        v17 = *v7;
        v15 = v7 + 8;
        v5 |= 8u;
        *(a1 + 72) = v17;
        goto LABEL_58;
      case 6u:
        if (v8 != 49)
        {
          goto LABEL_59;
        }

        v32 = *v7;
        v15 = v7 + 8;
        v5 |= 0x10u;
        *(a1 + 80) = v32;
        goto LABEL_58;
      case 7u:
        if (v8 != 57)
        {
          goto LABEL_59;
        }

        v33 = *v7;
        v15 = v7 + 8;
        v5 |= 0x20u;
        *(a1 + 88) = v33;
        goto LABEL_58;
      case 8u:
        if (v8 != 65)
        {
          goto LABEL_59;
        }

        v28 = *v7;
        v15 = v7 + 8;
        v5 |= 0x100u;
        *(a1 + 104) = v28;
        goto LABEL_58;
      case 9u:
        if (v8 != 73)
        {
          goto LABEL_59;
        }

        v37 = *v7;
        v15 = v7 + 8;
        v5 |= 0x200u;
        *(a1 + 112) = v37;
        goto LABEL_58;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_59;
        }

        v5 |= 0x80u;
        v22 = v7 + 1;
        LODWORD(v21) = *v7;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v23 = *v22;
        v21 = v21 + (v23 << 7) - 128;
        if (v23 < 0)
        {
          v41 = sub_19587DC(v7, v21);
          v45 = v41;
          *(a1 + 100) = v42;
          if (!v41)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v22 = v7 + 2;
LABEL_29:
          v45 = v22;
          *(a1 + 100) = v21;
        }

        goto LABEL_69;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_59;
        }

        *(a1 + 40) |= 2u;
        v34 = *(a1 + 56);
        if (!v34)
        {
          v35 = *(a1 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_16F5B5C(v36);
          *(a1 + 56) = v34;
          v7 = v45;
        }

        v14 = sub_2235E14(a3, v34, v7);
        goto LABEL_68;
      case 0xCu:
        if (v8 != 97)
        {
          goto LABEL_59;
        }

        v16 = *v7;
        v15 = v7 + 8;
        v5 |= 0x400u;
        *(a1 + 120) = v16;
LABEL_58:
        v45 = v15;
        goto LABEL_69;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_59;
        }

        v19 = v7 + 1;
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v45 = sub_19587DC(v7, v18);
          if (!v45)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v19 = v7 + 2;
LABEL_22:
          v45 = v19;
        }

        if (v18 > 1)
        {
          sub_144E0C4();
        }

        else
        {
          *(a1 + 40) |= 0x800u;
          *(a1 + 128) = v18;
        }

        goto LABEL_69;
      default:
LABEL_59:
        if (v8)
        {
          v38 = (v8 & 7) == 4;
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          if (v8 - 800 > 0x31F)
          {
            v39 = *(a1 + 8);
            if (v39)
            {
              v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v40 = sub_11F1920((a1 + 8));
              v7 = v45;
            }

            v14 = sub_1952690(v8, v40, v7, a3);
          }

          else
          {
            v14 = sub_19525AC((a1 + 16), v8, v7, &off_277E738, (a1 + 8), a3);
          }

LABEL_68:
          v45 = v14;
          if (!v14)
          {
            goto LABEL_84;
          }

LABEL_69:
          if (sub_195ADC0(a3, &v45, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_84:
          v45 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return v45;
    }
  }
}

char *sub_16E886C(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *a2 = 10;
    v7 = *(v6 + 44);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_16E5070(v6, v8, a3);
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 132);
    *a2 = 16;
    a2[1] = v10;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      a2[2] = v10 >> 7;
      v9 = a2 + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = a2[2];
        do
        {
          *(v9 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v9++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v9 = a2 + 2;
    }
  }

  else
  {
    v9 = a2;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v14 = *(a1 + 64);
    *v9 = 25;
    *(v9 + 1) = v14;
    v9 += 9;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v16 = *(a1 + 96);
    *v9 = 32;
    v9[1] = v16;
    if (v16 > 0x7F)
    {
      v9[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v9[2] = v16 >> 7;
      v15 = v9 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v9) = v9[2];
        do
        {
          *(v15 - 1) = v9 | 0x80;
          v9 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v9 + 2;
    }
  }

  else
  {
    v15 = v9;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 72);
    *v15 = 41;
    *(v15 + 1) = v20;
    v15 += 9;
    if ((v5 & 0x10) == 0)
    {
LABEL_32:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_32;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v21 = *(a1 + 80);
  *v15 = 49;
  *(v15 + 1) = v21;
  v15 += 9;
  if ((v5 & 0x20) == 0)
  {
LABEL_33:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v22 = *(a1 + 88);
  *v15 = 57;
  *(v15 + 1) = v22;
  v15 += 9;
  if ((v5 & 0x100) == 0)
  {
LABEL_34:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_35;
    }

LABEL_49:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v24 = *(a1 + 112);
    *v15 = 73;
    *(v15 + 1) = v24;
    v15 += 9;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_52;
  }

LABEL_46:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v23 = *(a1 + 104);
  *v15 = 65;
  *(v15 + 1) = v23;
  v15 += 9;
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_49;
  }

LABEL_35:
  if ((v5 & 0x80) == 0)
  {
LABEL_36:
    v19 = v15;
    goto LABEL_59;
  }

LABEL_52:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v25 = *(a1 + 100);
  *v15 = 80;
  v15[1] = v25;
  if (v25 > 0x7F)
  {
    v15[1] = v25 | 0x80;
    v26 = v25 >> 7;
    v15[2] = v25 >> 7;
    v19 = v15 + 3;
    if (v25 >= 0x4000)
    {
      LOBYTE(v27) = v15[2];
      do
      {
        *(v19 - 1) = v27 | 0x80;
        v27 = v26 >> 7;
        *v19++ = v26 >> 7;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
    }
  }

  else
  {
    v19 = v15 + 2;
  }

LABEL_59:
  if ((v5 & 2) == 0)
  {
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_61;
    }

LABEL_69:
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v33 = *(a1 + 120);
    *v19 = 97;
    *(v19 + 1) = v33;
    v19 += 9;
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_72;
  }

  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v30 = *(a1 + 56);
  *v19 = 90;
  v31 = *(v30 + 20);
  v19[1] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v19 + 1);
  }

  else
  {
    v32 = v19 + 2;
  }

  v19 = sub_16E7EA4(v30, v32, a3);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_69;
  }

LABEL_61:
  if ((v5 & 0x800) == 0)
  {
LABEL_62:
    v29 = v19;
    goto LABEL_79;
  }

LABEL_72:
  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v34 = *(a1 + 128);
  *v19 = 104;
  v19[1] = v34;
  if (v34 > 0x7F)
  {
    v19[1] = v34 | 0x80;
    v35 = v34 >> 7;
    v19[2] = v34 >> 7;
    v29 = v19 + 3;
    if (v34 >= 0x4000)
    {
      LOBYTE(v19) = v19[2];
      do
      {
        *(v29 - 1) = v19 | 0x80;
        v19 = (v35 >> 7);
        *v29++ = v35 >> 7;
        v36 = v35 >> 14;
        v35 >>= 7;
      }

      while (v36);
    }
  }

  else
  {
    v29 = v19 + 2;
  }

LABEL_79:
  if (*(a1 + 26))
  {
    v29 = sub_1953428(a1 + 16, 100, 200, v29, a3);
  }

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v29;
  }

  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 31);
  if (v40 < 0)
  {
    v41 = *(v39 + 8);
    v40 = *(v39 + 16);
  }

  else
  {
    v41 = (v39 + 8);
  }

  if (*a3 - v29 >= v40)
  {
    v42 = v40;
    memcpy(v29, v41, v40);
    v29 += v42;
    return v29;
  }

  return sub_1957130(a3, v41, v40, v29);
}

uint64_t sub_16E8DA4(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = sub_16E51F0(*(a1 + 48));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v3 = *(a1 + 40);
  }

  if ((v3 & 0xFE) != 0)
  {
    if ((v3 & 2) != 0)
    {
      v5 = sub_16E7FCC(*(a1 + 56));
      v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6 = v2 + 9;
    if ((v3 & 4) == 0)
    {
      v6 = v2;
    }

    if ((v3 & 8) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v2 = v6 + 9;
    }

    else
    {
      v2 = v6;
    }

    if ((v3 & 0x40) != 0)
    {
      v7 = *(a1 + 96);
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v7 >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 11;
      }

      v2 += v9;
    }

    if ((v3 & 0x80) != 0)
    {
      v10 = *(a1 + 100);
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 11;
      }

      v2 += v12;
    }
  }

  if ((v3 & 0x1F00) != 0)
  {
    v13 = v2 + 9;
    if ((v3 & 0x100) == 0)
    {
      v13 = v2;
    }

    if ((v3 & 0x200) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v2 = v13 + 9;
    }

    else
    {
      v2 = v13;
    }

    if ((v3 & 0x800) != 0)
    {
      v14 = *(a1 + 128);
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 11;
      }

      v2 += v16;
    }

    if ((v3 & 0x1000) != 0)
    {
      v17 = *(a1 + 132);
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v17 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 11;
      }

      v2 += v19;
    }
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v2 += v23;
  }

  *(a1 + 44) = v2;
  return v2;
}

void sub_16E8FA0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_16E48B0(a1);

    sub_16E4964(a1, a2);
  }
}

void *sub_16E8FFC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1564410(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E907C(void *a1)
{
  sub_16E8FFC(a1);

  operator delete();
}

unsigned __int8 *sub_16E90B4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E979C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = v1[8];
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_16E9130(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  if ((sub_195ADC0(a3, &v19, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v19 + 1;
      v6 = *v19;
      if (*v19 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v19, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v19 + 2;
        }
      }

      v19 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          v19 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_16F5CD4(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_220D038(a3, v16, v13);
          v19 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_23;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v11 = sub_11F1920((a1 + 8));
        v5 = v19;
      }

      v19 = sub_1952690(v6, v11, v5, a3);
      if (!v19)
      {
        return 0;
      }

LABEL_23:
      if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
      {
        return v19;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v19;
    }

    return 0;
  }

  return v19;
}