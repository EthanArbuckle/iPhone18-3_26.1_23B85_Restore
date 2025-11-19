void sub_1461614(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    goto LABEL_51;
  }

  if (v4)
  {
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 48);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_14BB400(v7);
      *(a1 + 48) = v5;
    }

    if (*(a2 + 48))
    {
      v8 = *(a2 + 48);
    }

    else
    {
      v8 = &off_2771A98;
    }

    sub_14603E8(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(a1 + 40) |= 2u;
  v9 = *(a1 + 56);
  if (!v9)
  {
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v9 = sub_14BB3A4(v11);
    *(a1 + 56) = v9;
  }

  if (*(a2 + 56))
  {
    v12 = *(a2 + 56);
  }

  else
  {
    v12 = &off_27719E0;
  }

  sub_145F36C(v9, v12);
  if ((v4 & 4) != 0)
  {
LABEL_22:
    *(a1 + 40) |= 4u;
    v13 = *(a1 + 64);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_14BB2A0(v15);
      *(a1 + 64) = v13;
    }

    if (*(a2 + 64))
    {
      v16 = *(a2 + 64);
    }

    else
    {
      v16 = &off_2771990;
    }

    sub_132DE2C(v13, v16);
  }

LABEL_30:
  if ((v4 & 8) != 0)
  {
    *(a1 + 40) |= 8u;
    v17 = *(a1 + 72);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      sub_14BAE64(v19);
      *(a1 + 72) = v17;
    }

    if (*(a2 + 72))
    {
      v20 = *(a2 + 72);
    }

    else
    {
      v20 = &off_2771738;
    }

    sub_144EF20(v17, v20);
  }

  if ((v4 & 0x10) != 0)
  {
    *(a1 + 40) |= 0x10u;
    v21 = *(a1 + 80);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_14BAE64(v23);
      *(a1 + 80) = v21;
    }

    if (*(a2 + 80))
    {
      v24 = *(a2 + 80);
    }

    else
    {
      v24 = &off_2771738;
    }

    sub_144EF20(v21, v24);
  }

  if ((v4 & 0x20) == 0)
  {
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_65;
  }

  *(a1 + 40) |= 0x20u;
  v27 = *(a1 + 88);
  if (!v27)
  {
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v27 = sub_14BB0C4(v29);
    *(a1 + 88) = v27;
  }

  if (*(a2 + 88))
  {
    v30 = *(a2 + 88);
  }

  else
  {
    v30 = &off_2771880;
  }

  sub_145BD3C(v27, v30);
  if ((v4 & 0x40) != 0)
  {
LABEL_65:
    *(a1 + 40) |= 0x40u;
    v31 = *(a1 + 96);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_14BB0C4(v33);
      *(a1 + 96) = v31;
    }

    if (*(a2 + 96))
    {
      v34 = *(a2 + 96);
    }

    else
    {
      v34 = &off_2771880;
    }

    sub_145BD3C(v31, v34);
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_73;
    }

LABEL_51:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_50:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_51;
  }

LABEL_73:
  *(a1 + 40) |= 0x80u;
  v35 = *(a1 + 104);
  if (!v35)
  {
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_14BB1FC(v37);
    *(a1 + 104) = v35;
  }

  if (*(a2 + 104))
  {
    v38 = *(a2 + 104);
  }

  else
  {
    v38 = &off_2771938;
  }

  sub_145D660(v35, v38);
  if ((v4 & 0x100) != 0)
  {
LABEL_52:
    v25 = *(a2 + 112);
    *(a1 + 40) |= 0x100u;
    *(a1 + 112) = v25;
  }

LABEL_53:
  sub_225EA0C(a1 + 16, a2 + 16);
  v26 = *(a2 + 8);
  if (v26)
  {

    sub_1957EF4((a1 + 8), (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1461910(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      result = sub_1460620(*(a1 + 48));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 2) != 0)
    {
      result = sub_145F648(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_144F560(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_144F560(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20) != 0)
    {
      result = sub_145BFA4(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) != 0)
    {
      result = sub_145BFA4(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80) == 0)
    {
      return 1;
    }

    result = sub_145D86C(*(a1 + 104));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_14619DC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1461A58(void *a1)
{
  sub_14619DC(a1);

  operator delete();
}

uint64_t sub_1461A90(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1461AA4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  if (sub_195ADC0(a3, &v23, a3[11].i32[1]))
  {
    return v23;
  }

  v5 = (a1 + 8);
  while (1)
  {
    v6 = v23 + 1;
    v7 = *v23;
    if (*v23 < 0)
    {
      v8 = *v6;
      v9 = v7 + (v8 << 7);
      v7 = v9 - 128;
      if (v8 < 0)
      {
        v6 = sub_1958824(v23, v9 - 128);
        v7 = v10;
      }

      else
      {
        v6 = v23 + 2;
      }
    }

    v23 = v6;
    if ((v7 & 0xFFFFFFF8) != 8)
    {
      break;
    }

    if (v7 == 8)
    {
      v11 = v6 - 1;
      while (1)
      {
        v23 = v11 + 1;
        v12 = v11[1];
        v13 = v11 + 2;
        if (v12 < 0)
        {
          v14 = *v13;
          v15 = (v14 << 7) + v12;
          LODWORD(v12) = v15 - 128;
          if (v14 < 0)
          {
            v23 = sub_19587DC((v11 + 1), (v15 - 128));
            if (!v23)
            {
              return 0;
            }

            LODWORD(v12) = v18;
            goto LABEL_14;
          }

          v13 = v11 + 3;
        }

        v23 = v13;
LABEL_14:
        if (v12 > 1)
        {
          sub_12E8450();
        }

        else
        {
          v16 = *(a1 + 16);
          if (v16 == *(a1 + 20))
          {
            v17 = v16 + 1;
            sub_1958E5C((a1 + 16), v16 + 1);
            *(*(a1 + 24) + 4 * v16) = v12;
          }

          else
          {
            *(*(a1 + 24) + 4 * v16) = v12;
            v17 = v16 + 1;
          }

          *(a1 + 16) = v17;
        }

        v11 = v23;
        if (*a3 <= v23 || *v23 != 8)
        {
          goto LABEL_35;
        }
      }
    }

    if (v7 != 10)
    {
      break;
    }

    *&v24 = a1 + 16;
    *(&v24 + 1) = sub_144E254;
    v25 = a1 + 8;
    v26 = 1;
    v19 = sub_1216588(a3, v6, &v24);
LABEL_34:
    v23 = v19;
    if (!v19)
    {
      return 0;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v23, a3[11].i32[1]))
    {
      return v23;
    }
  }

  if (v7)
  {
    v20 = (v7 & 7) == 4;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    if (*v5)
    {
      v21 = (*v5 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v21 = sub_11F1920((a1 + 8));
      v6 = v23;
    }

    v19 = sub_1952690(v7, v21, v6, a3);
    goto LABEL_34;
  }

  if (!v6)
  {
    return 0;
  }

  a3[10].i32[0] = v7 - 1;
  return v23;
}

char *sub_1461CD4(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    v8 = a2;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v7 = *(*(a1 + 24) + 4 * i);
      *a2 = 8;
      a2[1] = v7;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v9 = v7 >> 7;
        a2[2] = v7 >> 7;
        v8 = a2 + 3;
        if (v7 >= 0x4000)
        {
          LOBYTE(v10) = a2[2];
          do
          {
            *(v8 - 1) = v10 | 0x80;
            v10 = v9 >> 7;
            *v8++ = v9 >> 7;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
        }
      }

      else
      {
        v8 = a2 + 2;
      }

      a2 = v8;
    }
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v8;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if (*a3 - v8 >= v15)
  {
    v17 = v15;
    memcpy(v8, v16, v15);
    v8 += v17;
    return v8;
  }

  return sub_1957130(a3, v16, v15, v8);
}

uint64_t sub_1461E24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 24) + 4 * v2);
      if (v4 < 0)
      {
        v5 = 10;
      }

      else
      {
        v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v5;
      ++v2;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = 0;
  }

  v6 = v3 + v1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v6 += v10;
  }

  *(a1 + 32) = v6;
  return v6;
}

void *sub_1461EC4(void *a1)
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

  sub_1461F48(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1461F48(uint64_t result)
{
  if (result != &off_2771BE0)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      sub_14659D4(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_1466D20(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_1468978(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_146A0AC(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_1469928(v6);
      operator delete();
    }

    v7 = v1[8];
    if (v7)
    {
      sub_14619DC(v7);
      operator delete();
    }

    result = v1[9];
    if (result)
    {
      sub_1464CC4(result);

      operator delete();
    }
  }

  return result;
}

void sub_1462074(void *a1)
{
  sub_1461EC4(a1);

  operator delete();
}

uint64_t sub_14620AC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_18;
  }

  if (v2)
  {
    result = sub_14621B4(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_14622CC(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = sub_1462388(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    result = sub_14624AC(*(v1 + 56));
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    v3 = *(v1 + 64);
    v4 = *(v3 + 8);
    result = v3 + 8;
    *(result + 8) = 0;
    if (v4)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_16;
  }

LABEL_12:
  result = sub_146245C(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_16:
  if ((v2 & 0x40) != 0)
  {
    result = sub_1462578(*(v1 + 72));
  }

LABEL_18:
  *(v1 + 80) = 0;
  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 113) = 0;
    *(v1 + 100) = 0u;
    *(v1 + 84) = 0u;
  }

  if ((v2 & 0x3F0000) != 0)
  {
    *(v1 + 132) = 0;
    *(v1 + 124) = 0;
    *(v1 + 140) = 0;
    *(v1 + 144) = 1;
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

uint64_t sub_14621B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
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
      result = sub_144E5CC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_144E5CC(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 7) != 0)
  {
    if (v11)
    {
      result = sub_16E979C(*(v1 + 96));
      if ((v11 & 2) == 0)
      {
LABEL_16:
        if ((v11 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

    result = sub_1453D98(*(v1 + 104));
    if ((v11 & 4) != 0)
    {
LABEL_17:
      result = sub_144E6A8(*(v1 + 112));
    }
  }

LABEL_18:
  if ((v11 & 0x18) != 0)
  {
    *(v1 + 120) = 0;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_14622CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
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
      result = sub_1466794(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = 0x100000000;
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

uint64_t sub_1462388(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1467C48(v4);
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
      result = sub_144E5CC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_144E5CC(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 88) = 0;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

uint64_t sub_146245C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 16);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_14624AC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1469288(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      result = sub_144E5CC(*(v1 + 56));
    }
  }

LABEL_11:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 56) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_1462578(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_144E5CC(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_144E5CC(*(v1 + 32));
    }
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

char *sub_14625E8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v98 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v98, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v98 + 1;
    v8 = *v98;
    if (*v98 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v98, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v98 + 2;
      }
    }

    v98 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_114;
        }

        v5 |= 0x80u;
        LODWORD(v11) = *v7;
        if ((v11 & 0x80000000) == 0)
        {
          v12 = v7 + 1;
LABEL_132:
          v98 = v12;
          *(a1 + 80) = v11;
          goto LABEL_122;
        }

        v11 = (v7[1] << 7) + v11 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v12 = v7 + 2;
          goto LABEL_132;
        }

        v84 = sub_19587DC(v7, v11);
        v98 = v84;
        *(a1 + 80) = v85;
        if (!v84)
        {
          goto LABEL_166;
        }

        goto LABEL_122;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_114;
        }

        v5 |= 0x100u;
        LODWORD(v39) = *v7;
        if ((v39 & 0x80000000) == 0)
        {
          v40 = v7 + 1;
LABEL_135:
          v98 = v40;
          *(a1 + 84) = v39;
          goto LABEL_122;
        }

        v39 = (v7[1] << 7) + v39 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v40 = v7 + 2;
          goto LABEL_135;
        }

        v86 = sub_19587DC(v7, v39);
        v98 = v86;
        *(a1 + 84) = v87;
        if (!v86)
        {
          goto LABEL_166;
        }

        goto LABEL_122;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_114;
        }

        *(a1 + 16) |= 1u;
        v31 = *(a1 + 24);
        if (!v31)
        {
          v32 = *(a1 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_14BB6FC(v33);
          *(a1 + 24) = v31;
          v7 = v98;
        }

        v16 = sub_220CBB8(a3, v31, v7);
        goto LABEL_121;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_114;
        }

        *(a1 + 16) |= 2u;
        v50 = *(a1 + 32);
        if (!v50)
        {
          v51 = *(a1 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          v50 = sub_14BB828(v52);
          *(a1 + 32) = v50;
          v7 = v98;
        }

        v16 = sub_220CC48(a3, v50, v7);
        goto LABEL_121;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_114;
        }

        *(a1 + 16) |= 4u;
        v53 = *(a1 + 40);
        if (!v53)
        {
          v54 = *(a1 + 8);
          v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
          if (v54)
          {
            v55 = *v55;
          }

          v53 = sub_14BB9FC(v55);
          *(a1 + 40) = v53;
          v7 = v98;
        }

        v16 = sub_220CCD8(a3, v53, v7);
        goto LABEL_121;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_114;
        }

        v5 |= 0x400u;
        LODWORD(v34) = *v7;
        if ((v34 & 0x80000000) == 0)
        {
          v35 = v7 + 1;
LABEL_129:
          v98 = v35;
          *(a1 + 96) = v34;
          goto LABEL_122;
        }

        v34 = (v7[1] << 7) + v34 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v35 = v7 + 2;
          goto LABEL_129;
        }

        v80 = sub_19587DC(v7, v34);
        v98 = v80;
        *(a1 + 96) = v81;
        if (!v80)
        {
          goto LABEL_166;
        }

        goto LABEL_122;
      case 8u:
        if (v8 != 65)
        {
          goto LABEL_114;
        }

        v42 = *v7;
        v41 = v7 + 8;
        v5 |= 0x200u;
        *(a1 + 88) = v42;
        goto LABEL_63;
      case 9u:
        if (v8 != 73)
        {
          goto LABEL_114;
        }

        v43 = *v7;
        v41 = v7 + 8;
        v5 |= 0x1000u;
        *(a1 + 104) = v43;
LABEL_63:
        v98 = v41;
        goto LABEL_122;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_114;
        }

        v60 = v7 + 1;
        v59 = *v7;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_95;
        }

        v61 = *v60;
        v59 = (v61 << 7) + v59 - 128;
        if (v61 < 0)
        {
          v98 = sub_19587DC(v7, v59);
          if (!v98)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v60 = v7 + 2;
LABEL_95:
          v98 = v60;
        }

        if (v59 > 0xE)
        {
          sub_156E728();
        }

        else
        {
          *(a1 + 16) |= 0x800u;
          *(a1 + 100) = v59;
        }

        goto LABEL_122;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_114;
        }

        v5 |= 0x2000u;
        v56 = v7 + 1;
        v57 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_90;
        }

        v58 = *v56;
        v57 = v57 + (v58 << 7) - 128;
        if (v58 < 0)
        {
          v92 = sub_1958770(v7, v57);
          v98 = v92;
          *(a1 + 112) = v93;
          if (!v92)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v56 = v7 + 2;
LABEL_90:
          v98 = v56;
          *(a1 + 112) = v57;
        }

        goto LABEL_122;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_114;
        }

        v5 |= 0x4000u;
        LODWORD(v23) = *v7;
        if ((v23 & 0x80000000) == 0)
        {
          v24 = v7 + 1;
LABEL_126:
          v98 = v24;
          *(a1 + 116) = v23;
          goto LABEL_122;
        }

        v23 = (v7[1] << 7) + v23 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v24 = v7 + 2;
          goto LABEL_126;
        }

        v76 = sub_19587DC(v7, v23);
        v98 = v76;
        *(a1 + 116) = v77;
        if (!v76)
        {
          goto LABEL_166;
        }

        goto LABEL_122;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_114;
        }

        v5 |= 0x8000u;
        v37 = v7 + 1;
        v36 = *v7;
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v38 = *v37;
        v36 = (v38 << 7) + v36 - 128;
        if (v38 < 0)
        {
          v82 = sub_19587DC(v7, v36);
          v98 = v82;
          *(a1 + 120) = v83 != 0;
          if (!v82)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v37 = v7 + 2;
LABEL_55:
          v98 = v37;
          *(a1 + 120) = v36 != 0;
        }

        goto LABEL_122;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_114;
        }

        *(a1 + 16) |= 8u;
        v25 = *(a1 + 48);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_14BBBD0(v27);
          *(a1 + 48) = v25;
          v7 = v98;
        }

        v16 = sub_220CD68(a3, v25, v7);
        goto LABEL_121;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_114;
        }

        v5 |= 0x10000u;
        v20 = v7 + 1;
        v21 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v22 = *v20;
        v21 = v21 + (v22 << 7) - 128;
        if (v22 < 0)
        {
          v74 = sub_1958770(v7, v21);
          v98 = v74;
          *(a1 + 124) = v75;
          if (!v74)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_27:
          v98 = v20;
          *(a1 + 124) = v21;
        }

        goto LABEL_122;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_114;
        }

        v5 |= 0x20000u;
        v44 = v7 + 1;
        v45 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

        v46 = *v44;
        v45 = v45 + (v46 << 7) - 128;
        if (v46 < 0)
        {
          v88 = sub_1958770(v7, v45);
          v98 = v88;
          *(a1 + 128) = v89;
          if (!v88)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v44 = v7 + 2;
LABEL_68:
          v98 = v44;
          *(a1 + 128) = v45;
        }

        goto LABEL_122;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_114;
        }

        v5 |= 0x40000u;
        v47 = v7 + 1;
        v48 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_73;
        }

        v49 = *v47;
        v48 = v48 + (v49 << 7) - 128;
        if (v49 < 0)
        {
          v90 = sub_1958770(v7, v48);
          v98 = v90;
          *(a1 + 132) = v91;
          if (!v90)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v47 = v7 + 2;
LABEL_73:
          v98 = v47;
          *(a1 + 132) = v48;
        }

        goto LABEL_122;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_114;
        }

        v5 |= 0x80000u;
        v65 = v7 + 1;
        v66 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_107;
        }

        v67 = *v65;
        v66 = v66 + (v67 << 7) - 128;
        if (v67 < 0)
        {
          v96 = sub_1958770(v7, v66);
          v98 = v96;
          *(a1 + 136) = v97;
          if (!v96)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v65 = v7 + 2;
LABEL_107:
          v98 = v65;
          *(a1 + 136) = v66;
        }

        goto LABEL_122;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_114;
        }

        v5 |= 0x100000u;
        v62 = v7 + 1;
        v63 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_102;
        }

        v64 = *v62;
        v63 = v63 + (v64 << 7) - 128;
        if (v64 < 0)
        {
          v94 = sub_1958770(v7, v63);
          v98 = v94;
          *(a1 + 140) = v95;
          if (!v94)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v62 = v7 + 2;
LABEL_102:
          v98 = v62;
          *(a1 + 140) = v63;
        }

        goto LABEL_122;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_114;
        }

        *(a1 + 16) |= 0x10u;
        v13 = *(a1 + 56);
        if (!v13)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_14BBB28(v15);
          *(a1 + 56) = v13;
          v7 = v98;
        }

        v16 = sub_220CDF8(a3, v13, v7);
        goto LABEL_121;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_114;
        }

        v5 |= 0x200000u;
        v29 = v7 + 1;
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_41;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if (v30 < 0)
        {
          v78 = sub_19587DC(v7, v28);
          v98 = v78;
          *(a1 + 144) = v79 != 0;
          if (!v78)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_41:
          v98 = v29;
          *(a1 + 144) = v28 != 0;
        }

        goto LABEL_122;
      case 0x16u:
        if (v8 != 178)
        {
          goto LABEL_114;
        }

        *(a1 + 16) |= 0x20u;
        v68 = *(a1 + 64);
        if (!v68)
        {
          v69 = *(a1 + 8);
          v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
          if (v69)
          {
            v70 = *v70;
          }

          v68 = sub_14BB4B8(v70);
          *(a1 + 64) = v68;
          v7 = v98;
        }

        v16 = sub_220CE88(a3, v68, v7);
        goto LABEL_121;
      case 0x17u:
        if (v8 != 186)
        {
          goto LABEL_114;
        }

        *(a1 + 16) |= 0x40u;
        v17 = *(a1 + 72);
        if (!v17)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v17 = sub_14BB5DC(v19);
          *(a1 + 72) = v17;
          v7 = v98;
        }

        v16 = sub_220CF18(a3, v17, v7);
        goto LABEL_121;
      default:
LABEL_114:
        if (v8)
        {
          v71 = (v8 & 7) == 4;
        }

        else
        {
          v71 = 1;
        }

        if (!v71)
        {
          v72 = *(a1 + 8);
          if (v72)
          {
            v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v73 = sub_11F1920((a1 + 8));
            v7 = v98;
          }

          v16 = sub_1952690(v8, v73, v7, a3);
LABEL_121:
          v98 = v16;
          if (!v16)
          {
            goto LABEL_166;
          }

LABEL_122:
          if (sub_195ADC0(a3, &v98, a3[11].i32[1]))
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
LABEL_166:
          v98 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v98;
    }
  }
}

char *sub_1462EF0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 80);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 84);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 24);
    *v11 = 26;
    v17 = *(v16 + 20);
    v11[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v11 + 1);
    }

    else
    {
      v18 = v11 + 2;
    }

    v11 = sub_1466008(v16, v18, a3);
    if ((v5 & 2) == 0)
    {
LABEL_21:
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }

LABEL_36:
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v22 = *(a1 + 40);
      *v11 = 42;
      v23 = *(v22 + 20);
      v11[1] = v23;
      if (v23 > 0x7F)
      {
        v24 = sub_19575D0(v23, v11 + 1);
      }

      else
      {
        v24 = v11 + 2;
      }

      v11 = sub_1468D90(v22, v24, a3);
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_21;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v19 = *(a1 + 32);
  *v11 = 34;
  v20 = *(v19 + 20);
  v11[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v11 + 1);
  }

  else
  {
    v21 = v11 + 2;
  }

  v11 = sub_1467388(v19, v21, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((v5 & 0x400) == 0)
  {
LABEL_23:
    v15 = v11;
    goto LABEL_49;
  }

LABEL_42:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v25 = *(a1 + 96);
  *v11 = 56;
  v11[1] = v25;
  if (v25 > 0x7F)
  {
    v11[1] = v25 | 0x80;
    v26 = v25 >> 7;
    v11[2] = v25 >> 7;
    v15 = v11 + 3;
    if (v25 >= 0x4000)
    {
      LOBYTE(v11) = v11[2];
      do
      {
        *(v15 - 1) = v11 | 0x80;
        v11 = (v26 >> 7);
        *v15++ = v26 >> 7;
        v27 = v26 >> 14;
        v26 >>= 7;
      }

      while (v27);
    }
  }

  else
  {
    v15 = v11 + 2;
  }

LABEL_49:
  if ((v5 & 0x200) == 0)
  {
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

LABEL_56:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v30 = *(a1 + 104);
    *v15 = 73;
    *(v15 + 1) = v30;
    v15 += 9;
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_59;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v29 = *(a1 + 88);
  *v15 = 65;
  *(v15 + 1) = v29;
  v15 += 9;
  if ((v5 & 0x1000) != 0)
  {
    goto LABEL_56;
  }

LABEL_51:
  if ((v5 & 0x800) == 0)
  {
LABEL_52:
    v28 = v15;
    goto LABEL_66;
  }

LABEL_59:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v31 = *(a1 + 100);
  *v15 = 80;
  v15[1] = v31;
  if (v31 > 0x7F)
  {
    v15[1] = v31 | 0x80;
    v32 = v31 >> 7;
    v15[2] = v31 >> 7;
    v28 = v15 + 3;
    if (v31 >= 0x4000)
    {
      LOBYTE(v15) = v15[2];
      do
      {
        *(v28 - 1) = v15 | 0x80;
        v15 = (v32 >> 7);
        *v28++ = v32 >> 7;
        v33 = v32 >> 14;
        v32 >>= 7;
      }

      while (v33);
    }
  }

  else
  {
    v28 = v15 + 2;
  }

LABEL_66:
  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v35 = *(a1 + 112);
    *v28 = 88;
    v28[1] = v35;
    if (v35 > 0x7F)
    {
      v28[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v28[2] = v35 >> 7;
      v34 = v28 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v37) = v28[2];
        do
        {
          *(v34 - 1) = v37 | 0x80;
          v37 = v36 >> 7;
          *v34++ = v36 >> 7;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v34 = v28 + 2;
    }
  }

  else
  {
    v34 = v28;
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v40 = *(a1 + 116);
    *v34 = 96;
    v34[1] = v40;
    if (v40 > 0x7F)
    {
      v34[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v34[2] = v40 >> 7;
      v39 = v34 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v34) = v34[2];
        do
        {
          *(v39 - 1) = v34 | 0x80;
          v34 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v34 + 2;
    }
  }

  else
  {
    v39 = v34;
  }

  if ((v5 & 0x8000) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_86;
    }

LABEL_91:
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v45 = *(a1 + 48);
    *v39 = 114;
    v46 = *(v45 + 40);
    v39[1] = v46;
    if (v46 > 0x7F)
    {
      v47 = sub_19575D0(v46, v39 + 1);
    }

    else
    {
      v47 = v39 + 2;
    }

    v39 = sub_146A348(v45, v47, a3);
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_97;
  }

  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v44 = *(a1 + 120);
  *v39 = 104;
  v39[1] = v44;
  v39 += 2;
  if ((v5 & 8) != 0)
  {
    goto LABEL_91;
  }

LABEL_86:
  if ((v5 & 0x10000) == 0)
  {
LABEL_87:
    v43 = v39;
    goto LABEL_104;
  }

LABEL_97:
  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v48 = *(a1 + 124);
  *v39 = 120;
  v39[1] = v48;
  if (v48 > 0x7F)
  {
    v39[1] = v48 | 0x80;
    v49 = v48 >> 7;
    v39[2] = v48 >> 7;
    v43 = v39 + 3;
    if (v48 >= 0x4000)
    {
      LOBYTE(v39) = v39[2];
      do
      {
        *(v43 - 1) = v39 | 0x80;
        LODWORD(v39) = v49 >> 7;
        *v43++ = v49 >> 7;
        v50 = v49 >> 14;
        v49 >>= 7;
      }

      while (v50);
    }
  }

  else
  {
    v43 = v39 + 2;
  }

LABEL_104:
  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v52 = *(a1 + 128);
    *v43 = 384;
    v43[2] = v52;
    if (v52 > 0x7F)
    {
      v43[2] = v52 | 0x80;
      v53 = v52 >> 7;
      v43[3] = v52 >> 7;
      v51 = v43 + 4;
      if (v52 >= 0x4000)
      {
        LOBYTE(v43) = v43[3];
        do
        {
          *(v51 - 1) = v43 | 0x80;
          LODWORD(v43) = v53 >> 7;
          *v51++ = v53 >> 7;
          v54 = v53 >> 14;
          v53 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v51 = v43 + 3;
    }
  }

  else
  {
    v51 = v43;
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v56 = *(a1 + 132);
    *v51 = 392;
    v51[2] = v56;
    if (v56 > 0x7F)
    {
      v51[2] = v56 | 0x80;
      v57 = v56 >> 7;
      v51[3] = v56 >> 7;
      v55 = v51 + 4;
      if (v56 >= 0x4000)
      {
        LOBYTE(v58) = v51[3];
        do
        {
          *(v55 - 1) = v58 | 0x80;
          v58 = v57 >> 7;
          *v55++ = v57 >> 7;
          v59 = v57 >> 14;
          v57 >>= 7;
        }

        while (v59);
      }
    }

    else
    {
      v55 = v51 + 3;
    }
  }

  else
  {
    v55 = v51;
  }

  if ((v5 & 0x80000) != 0)
  {
    if (*a3 <= v55)
    {
      v55 = sub_225EB68(a3, v55);
    }

    v61 = *(a1 + 136);
    *v55 = 400;
    v55[2] = v61;
    if (v61 > 0x7F)
    {
      v55[2] = v61 | 0x80;
      v62 = v61 >> 7;
      v55[3] = v61 >> 7;
      v60 = v55 + 4;
      if (v61 >= 0x4000)
      {
        LOBYTE(v55) = v55[3];
        do
        {
          *(v60 - 1) = v55 | 0x80;
          LODWORD(v55) = v62 >> 7;
          *v60++ = v62 >> 7;
          v63 = v62 >> 14;
          v62 >>= 7;
        }

        while (v63);
      }
    }

    else
    {
      v60 = v55 + 3;
    }
  }

  else
  {
    v60 = v55;
  }

  if ((v5 & 0x100000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v65 = *(a1 + 140);
    *v60 = 408;
    v60[2] = v65;
    if (v65 > 0x7F)
    {
      v60[2] = v65 | 0x80;
      v66 = v65 >> 7;
      v60[3] = v65 >> 7;
      v64 = v60 + 4;
      if (v65 >= 0x4000)
      {
        LOBYTE(v67) = v60[3];
        do
        {
          *(v64 - 1) = v67 | 0x80;
          v67 = v66 >> 7;
          *v64++ = v66 >> 7;
          v68 = v66 >> 14;
          v66 >>= 7;
        }

        while (v68);
      }
    }

    else
    {
      v64 = v60 + 3;
    }
  }

  else
  {
    v64 = v60;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v69 = *(a1 + 56);
    *v64 = 418;
    v70 = *(v69 + 20);
    v64[2] = v70;
    if (v70 > 0x7F)
    {
      v71 = sub_19575D0(v70, v64 + 2);
    }

    else
    {
      v71 = v64 + 3;
    }

    v64 = sub_1469CEC(v69, v71, a3);
    if ((v5 & 0x200000) == 0)
    {
LABEL_142:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_154;
    }
  }

  else if ((v5 & 0x200000) == 0)
  {
    goto LABEL_142;
  }

  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v72 = *(a1 + 144);
  *v64 = 424;
  v64[2] = v72;
  v64 += 3;
  if ((v5 & 0x20) == 0)
  {
LABEL_143:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_160;
  }

LABEL_154:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v73 = *(a1 + 64);
  *v64 = 434;
  v74 = *(v73 + 32);
  v64[2] = v74;
  if (v74 > 0x7F)
  {
    v75 = sub_19575D0(v74, v64 + 2);
  }

  else
  {
    v75 = v64 + 3;
  }

  v64 = sub_1461CD4(v73, v75, a3);
  if ((v5 & 0x40) != 0)
  {
LABEL_160:
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v76 = *(a1 + 72);
    *v64 = 442;
    v77 = *(v76 + 20);
    v64[2] = v77;
    if (v77 > 0x7F)
    {
      v78 = sub_19575D0(v77, v64 + 2);
    }

    else
    {
      v78 = v64 + 3;
    }

    v64 = sub_1464F68(v76, v78, a3);
  }

LABEL_166:
  v79 = *(a1 + 8);
  if ((v79 & 1) == 0)
  {
    return v64;
  }

  v81 = v79 & 0xFFFFFFFFFFFFFFFCLL;
  v82 = *(v81 + 31);
  if (v82 < 0)
  {
    v83 = *(v81 + 8);
    v82 = *(v81 + 16);
  }

  else
  {
    v83 = (v81 + 8);
  }

  if ((*a3 - v64) >= v82)
  {
    v84 = v82;
    memcpy(v64, v83, v82);
    v64 += v84;
    return v64;
  }

  return sub_1957130(a3, v83, v82, v64);
}

uint64_t sub_1463930(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (v2)
  {
    v4 = sub_1466484(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v5 = sub_1467938(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_1469058(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v7 = sub_146A430(*(a1 + 48));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = sub_1469F34(*(a1 + 56));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = sub_1461E24(*(a1 + 64));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = sub_14650E4(*(a1 + 72));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v11 = *(a1 + 80);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v12;
LABEL_24:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v13 = *(a1 + 84);
      if (v13 < 0)
      {
        v14 = 11;
      }

      else
      {
        v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v14;
    }

    v15 = v3 + 9;
    if ((v2 & 0x200) == 0)
    {
      v15 = v3;
    }

    if ((v2 & 0x400) != 0)
    {
      v16 = *(a1 + 96);
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v16 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 11;
      }

      v15 += v18;
    }

    if ((v2 & 0x800) != 0)
    {
      v19 = *(a1 + 100);
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 11;
      }

      v15 += v21;
    }

    if ((v2 & 0x1000) != 0)
    {
      v15 += 9;
    }

    if ((v2 & 0x2000) != 0)
    {
      v15 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x4000) != 0)
    {
      v22 = *(a1 + 116);
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v22 >= 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 11;
      }

      v15 += v24;
    }

    v3 = v15 + ((v2 >> 14) & 2);
  }

  if ((v2 & 0x3F0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 124) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x20000) == 0)
      {
LABEL_55:
        if ((v2 & 0x40000) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_65;
      }
    }

    else if ((v2 & 0x20000) == 0)
    {
      goto LABEL_55;
    }

    v3 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x40000) == 0)
    {
LABEL_56:
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_66;
    }

LABEL_65:
    v3 += ((9 * (__clz(*(a1 + 132) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x80000) == 0)
    {
LABEL_57:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

LABEL_66:
    v3 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x100000) == 0)
    {
LABEL_59:
      if ((v2 & 0x200000) != 0)
      {
        v3 += 3;
      }

      goto LABEL_61;
    }

LABEL_58:
    v3 += ((9 * (__clz(*(a1 + 140) | 1) ^ 0x1F) + 73) >> 6) + 2;
    goto LABEL_59;
  }

LABEL_61:
  v25 = *(a1 + 8);
  if (v25)
  {
    v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v3 += v28;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1463D50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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

        v6 = sub_14BB6FC(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2771CE0;
      }

      sub_1464110(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_52;
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

      v10 = sub_14BB828(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2771D60;
    }

    sub_14643AC(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_60;
    }

LABEL_52:
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_14BB9FC(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_2771DC8;
    }

    sub_146455C(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_68;
    }

LABEL_60:
    *(a1 + 16) |= 8u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_14BBBD0(v20);
      *(a1 + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_2771E78;
    }

    sub_13E88F4(v18, v21);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_76;
    }

LABEL_68:
    *(a1 + 16) |= 0x10u;
    v22 = *(a1 + 56);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_14BBB28(v24);
      *(a1 + 56) = v22;
    }

    if (*(a2 + 56))
    {
      v25 = *(a2 + 56);
    }

    else
    {
      v25 = &off_2771E30;
    }

    sub_14646EC(v22, v25);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_84;
    }

LABEL_76:
    *(a1 + 16) |= 0x20u;
    v26 = *(a1 + 64);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v26 = sub_14BB4B8(v28);
      *(a1 + 64) = v26;
    }

    if (*(a2 + 64))
    {
      v29 = *(a2 + 64);
    }

    else
    {
      v29 = &off_2771BB8;
    }

    sub_12EE670(v26, v29);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_84:
    *(a1 + 16) |= 0x40u;
    v30 = *(a1 + 72);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_14BB5DC(v32);
      *(a1 + 72) = v30;
    }

    if (*(a2 + 72))
    {
      v33 = *(a2 + 72);
    }

    else
    {
      v33 = &off_2771C78;
    }

    sub_1464858(v30, v33);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 84) = *(a2 + 84);
    if ((v4 & 0x200) == 0)
    {
LABEL_15:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_95;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  *(a1 + 88) = *(a2 + 88);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(a1 + 96) = *(a2 + 96);
  if ((v4 & 0x800) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(a1 + 100) = *(a2 + 100);
  if ((v4 & 0x1000) == 0)
  {
LABEL_18:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(a1 + 104) = *(a2 + 104);
  if ((v4 & 0x2000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

LABEL_99:
    *(a1 + 116) = *(a2 + 116);
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_98:
  *(a1 + 112) = *(a2 + 112);
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_99;
  }

LABEL_20:
  if ((v4 & 0x8000) != 0)
  {
LABEL_21:
    *(a1 + 120) = *(a2 + 120);
  }

LABEL_22:
  *(a1 + 16) |= v4;
LABEL_23:
  if ((v4 & 0x3F0000) == 0)
  {
    goto LABEL_32;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 124) = *(a2 + 124);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_103;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  *(a1 + 128) = *(a2 + 128);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(a1 + 132) = *(a2 + 132);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

LABEL_105:
    *(a1 + 140) = *(a2 + 140);
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_104:
  *(a1 + 136) = *(a2 + 136);
  if ((v4 & 0x100000) != 0)
  {
    goto LABEL_105;
  }

LABEL_29:
  if ((v4 & 0x200000) != 0)
  {
LABEL_30:
    *(a1 + 144) = *(a2 + 144);
  }

LABEL_31:
  *(a1 + 16) |= v4;
LABEL_32:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1464110(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144A454((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_144A454((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_144A454((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x1F) != 0)
  {
    if (v19)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 96);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_16F5CD4(v23);
        *(a1 + 96) = v21;
      }

      if (*(a2 + 96))
      {
        v24 = *(a2 + 96);
      }

      else
      {
        v24 = &off_277E7C0;
      }

      sub_16EA1A8(v21, v24);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_38;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v25 = *(a1 + 104);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_14BB658(v27);
      *(a1 + 104) = v25;
    }

    if (*(a2 + 104))
    {
      v28 = *(a2 + 104);
    }

    else
    {
      v28 = &off_2771CA0;
    }

    sub_145438C(v25, v28);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 16) |= 4u;
    v29 = *(a1 + 112);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_14BF484(v31);
      *(a1 + 112) = v29;
    }

    if (*(a2 + 112))
    {
      v32 = *(a2 + 112);
    }

    else
    {
      v32 = &off_2773AC8;
    }

    sub_144F194(v29, v32);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v19;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 124) = *(a2 + 124);
      goto LABEL_17;
    }

LABEL_46:
    *(a1 + 120) = *(a2 + 120);
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14643AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144A454((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1565D6C((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    if (v14)
    {
      *(a1 + 72) = *(a2 + 72);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_24;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 76) = *(a2 + 76);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 80) = *(a2 + 80);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(a1 + 84) = *(a2 + 84);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(a1 + 88) = *(a2 + 88);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 92) = *(a2 + 92);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v14;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 100) = *(a2 + 100);
      goto LABEL_17;
    }

LABEL_28:
    *(a1 + 96) = *(a2 + 96);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_146455C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1565E74((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_144A454((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_144A454((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  if (*(a2 + 16))
  {
    v19 = *(a2 + 96);
    *(a1 + 16) |= 1u;
    *(a1 + 96) = v19;
  }

  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14646EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1565F00((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 7) != 0)
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
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 64) = *(a2 + 64);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v14 = *(a1 + 56);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_14BAE64(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_2771738;
    }

    sub_144EF20(v14, v17);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1464858(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
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

        sub_14BAE64(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2771738;
      }

      sub_144EF20(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        sub_14BAE64(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_2771738;
      }

      sub_144EF20(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1464954(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1464A14(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    while (v5 >= 1)
    {
      v6 = v5 - 1;
      v7 = sub_144F560(*(*(v4 + 40) + 8 * v5));
      v5 = v6;
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_1464B34(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    v8 = *(a1 + 56);
    if ((*(v8 + 16) & 2) != 0)
    {
      result = sub_144F560(*(v8 + 56));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x40) == 0)
  {
    return 1;
  }

  result = sub_1464BE4(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1464A14(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_144F560(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = sub_144F560(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    result = sub_16EA33C(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 4) == 0)
  {
    return 1;
  }

  result = sub_144F5D0(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_1464ADC(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_144F560(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

BOOL sub_1464B34(uint64_t a1)
{
  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 80);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_144F560(*(*(a1 + 88) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

uint64_t sub_1464BB4(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1464BE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F560(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 sub_1464C30(void *a1, uint64_t a2)
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
  result = *(a2 + 96);
  *(a1 + 6) = result;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  v17 = a1[14];
  a1[14] = *(a2 + 112);
  *(a2 + 112) = v17;
  return result;
}

uint64_t sub_1464CC4(uint64_t a1)
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

  if (a1 != &off_2771C78)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1464D94(uint64_t a1)
{
  sub_1464CC4(a1);

  operator delete();
}

char *sub_1464DCC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v23, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v23 + 1;
    v7 = *v23;
    if (*v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v23 + 2;
      }
    }

    v23 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_14BAE64(v17);
          v15 = v18;
          *(a1 + 32) = v18;
LABEL_28:
          v6 = v23;
        }

LABEL_29:
        v14 = sub_22095B8(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_14BAE64(v20);
        v15 = v21;
        *(a1 + 24) = v21;
        goto LABEL_28;
      }

      goto LABEL_29;
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
        return v23;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v23;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

char *sub_1464F68(uint64_t a1, unint64_t __dst, unint64_t *a3)
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
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_14589F4(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_14589F4(v10, v12, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_14650E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v5 = sub_1458DB4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_14651C4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1563F6C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1465244(void *a1)
{
  sub_14651C4(a1);

  operator delete();
}

char *sub_146527C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v33, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v33 + 1;
    v7 = *v33;
    if (*v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v33 + 2;
      }
    }

    v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 24)
        {
          v24 = v6 + 1;
          v25 = *v6;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_43;
          }

          v26 = *v24;
          v27 = (v26 << 7) + v25;
          LODWORD(v25) = v27 - 128;
          if (v26 < 0)
          {
            v33 = sub_19587DC(v6, (v27 - 128));
            if (!v33)
            {
              return 0;
            }

            LODWORD(v25) = v31;
          }

          else
          {
            v24 = v6 + 2;
LABEL_43:
            v33 = v24;
          }

          if (sub_1454008(v25))
          {
            *(a1 + 16) |= 2u;
            *(a1 + 52) = v25;
          }

          else
          {
            sub_1313740();
          }

          continue;
        }
      }

      else if (v10 == 4 && v7 == 32)
      {
        v16 = v6 + 1;
        v15 = *v6;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v33 = sub_19587DC(v6, v15);
          if (!v33)
          {
            return 0;
          }
        }

        else
        {
          v16 = v6 + 2;
LABEL_26:
          v33 = v16;
        }

        if (v15 > 1)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 56) = v15;
        }

        continue;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        v18 = v6 - 1;
        while (1)
        {
          v19 = (v18 + 1);
          v33 = v18 + 1;
          v20 = *(a1 + 40);
          if (v20 && (v21 = *(a1 + 32), v21 < *v20))
          {
            *(a1 + 32) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_14BA608(*(a1 + 24));
            v22 = sub_19593CC(a1 + 24, v23);
            v19 = v33;
          }

          v18 = sub_220CFA8(a3, v22, v19);
          v33 = v18;
          if (!v18)
          {
            return 0;
          }

          if (*a3 <= v18 || *v18 != 10)
          {
            goto LABEL_53;
          }
        }
      }
    }

    else if (v10 == 2 && v7 == 16)
    {
      v13 = v6 + 1;
      v12 = *v6;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if (v14 < 0)
      {
        v33 = sub_19587DC(v6, v12);
        if (!v33)
        {
          return 0;
        }
      }

      else
      {
        v13 = v6 + 2;
LABEL_17:
        v33 = v13;
      }

      if (v12 > 1)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v12;
      }

      continue;
    }

    if (v7)
    {
      v28 = (v7 & 7) == 4;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v33;
      }

      return 0;
    }

    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v6 = v33;
    }

    v33 = sub_1952690(v7, v30, v6, a3);
    if (!v33)
    {
      return 0;
    }

LABEL_53:
    ;
  }

  return v33;
}

char *sub_1465594(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_1450DAC(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      __dst[1] = v13 | 0x80;
      v14 = v13 >> 7;
      __dst[2] = v13 >> 7;
      v12 = __dst + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v12 - 1) = __dst | 0x80;
          __dst = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = __dst + 2;
    }
  }

  else
  {
    v12 = __dst;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 52);
    *v12 = 24;
    v12[1] = v17;
    if (v17 > 0x7F)
    {
      v12[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[2] = v17 >> 7;
      v16 = v12 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v16 - 1) = v12 | 0x80;
          v12 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v12 + 2;
    }
  }

  else
  {
    v16 = v12;
  }

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 56);
    *v16 = 32;
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v16[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v16[2] = v21 >> 7;
      v20 = v16 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v23) = v16[2];
        do
        {
          *(v20 - 1) = v23 | 0x80;
          v23 = v22 >> 7;
          *v20++ = v22 >> 7;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v20 = v16 + 2;
    }
  }

  else
  {
    v20 = v16;
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v20;
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

  if (*a3 - v20 >= v28)
  {
    v30 = v28;
    memcpy(v20, v29, v28);
    v20 += v30;
    return v20;
  }

  return sub_1957130(a3, v29, v28, v20);
}

uint64_t sub_1465860(uint64_t a1)
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
      v7 = sub_1450FE8(v6);
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
  if ((v8 & 7) == 0)
  {
    goto LABEL_26;
  }

  if (v8)
  {
    v9 = *(a1 + 48);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v10;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v11 = *(a1 + 52);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v12;
  if ((v8 & 4) != 0)
  {
LABEL_22:
    v13 = *(a1 + 56);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v14;
  }

LABEL_26:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v2 += v18;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_14659D4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  if (a1 != &off_2771CE0)
  {
    if (*(a1 + 96))
    {
      sub_16E9760();
      operator delete();
    }

    v5 = *(a1 + 104);
    if (v5)
    {
      sub_14651C4(v5);
      operator delete();
    }

    v6 = *(a1 + 112);
    if (v6)
    {
      sub_14B64B0(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_144A1C8((a1 + 72));
  sub_144A1C8((a1 + 48));
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1465AE8(uint64_t a1)
{
  sub_14659D4(a1);

  operator delete();
}

char *sub_1465B20(uint64_t a1, char *a2, int32x2_t *a3)
{
  v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v54, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v54 + 1;
    v8 = *v54;
    if (*v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v54 + 2;
      }
    }

    v54 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 == 10)
          {
            v30 = v7 - 1;
            while (1)
            {
              v31 = (v30 + 1);
              v54 = v30 + 1;
              v32 = *(a1 + 40);
              if (v32 && (v33 = *(a1 + 32), v33 < *v32))
              {
                *(a1 + 32) = v33 + 1;
                v34 = *&v32[2 * v33 + 2];
              }

              else
              {
                sub_14BAE64(*(a1 + 24));
                v34 = sub_19593CC(a1 + 24, v35);
                v31 = v54;
              }

              v30 = sub_22095B8(a3, v34, v31);
              v54 = v30;
              if (!v30)
              {
                goto LABEL_99;
              }

              if (*a3 <= v30 || *v30 != 10)
              {
                goto LABEL_89;
              }
            }
          }
        }

        else if (v11 == 2 && v8 == 18)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            v54 = v13 + 1;
            v15 = *(a1 + 64);
            if (v15 && (v16 = *(a1 + 56), v16 < *v15))
            {
              *(a1 + 56) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 48));
              v17 = sub_19593CC(a1 + 48, v18);
              v14 = v54;
            }

            v13 = sub_22095B8(a3, v17, v14);
            v54 = v13;
            if (!v13)
            {
              goto LABEL_99;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_81;
      }

      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v39 = v7 - 1;
          while (1)
          {
            v40 = (v39 + 1);
            v54 = v39 + 1;
            v41 = *(a1 + 88);
            if (v41 && (v42 = *(a1 + 80), v42 < *v41))
            {
              *(a1 + 80) = v42 + 1;
              v43 = *&v41[2 * v42 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 72));
              v43 = sub_19593CC(a1 + 72, v44);
              v40 = v54;
            }

            v39 = sub_22095B8(a3, v43, v40);
            v54 = v39;
            if (!v39)
            {
              goto LABEL_99;
            }

            if (*a3 <= v39 || *v39 != 26)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_81;
      }

      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_81;
      }

      v22 = v7 + 1;
      v23 = *v7;
      if (v23 < 0)
      {
        v24 = *v22;
        v25 = (v24 << 7) + v23;
        LODWORD(v23) = v25 - 128;
        if (v24 < 0)
        {
          v54 = sub_19587DC(v7, (v25 - 128));
          if (!v54)
          {
            goto LABEL_99;
          }

          LODWORD(v23) = v53;
          goto LABEL_39;
        }

        v22 = v7 + 2;
      }

      v54 = v22;
LABEL_39:
      if (sub_1454008(v23))
      {
        *(a1 + 16) |= 8u;
        *(a1 + 120) = v23;
      }

      else
      {
        sub_12E85B8();
      }

      goto LABEL_89;
    }

    if (v8 >> 3 > 7)
    {
      if (v11 == 8)
      {
        if (v8 != 66)
        {
          goto LABEL_81;
        }

        *(a1 + 16) |= 2u;
        v45 = *(a1 + 104);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_14BB658(v47);
          *(a1 + 104) = v45;
          v7 = v54;
        }

        v29 = sub_220BF58(a3, v45, v7);
      }

      else
      {
        if (v11 != 9 || v8 != 74)
        {
          goto LABEL_81;
        }

        *(a1 + 16) |= 4u;
        v26 = *(a1 + 112);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          v26 = sub_14BF484(v28);
          *(a1 + 112) = v26;
          v7 = v54;
        }

        v29 = sub_2209138(a3, v26, v7);
      }

LABEL_88:
      v54 = v29;
      if (!v29)
      {
        goto LABEL_99;
      }

      goto LABEL_89;
    }

    if (v11 == 6)
    {
      break;
    }

    if (v11 != 7 || v8 != 56)
    {
      goto LABEL_81;
    }

    v5 |= 0x10u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_31:
      v54 = v19;
      *(a1 + 124) = v20;
      goto LABEL_89;
    }

    v51 = sub_1958770(v7, v20);
    v54 = v51;
    *(a1 + 124) = v52;
    if (!v51)
    {
      goto LABEL_99;
    }

LABEL_89:
    if (sub_195ADC0(a3, &v54, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 50)
  {
    *(a1 + 16) |= 1u;
    v36 = *(a1 + 96);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_16F5CD4(v38);
      *(a1 + 96) = v36;
      v7 = v54;
    }

    v29 = sub_220D038(a3, v36, v7);
    goto LABEL_88;
  }

LABEL_81:
  if (v8)
  {
    v48 = (v8 & 7) == 4;
  }

  else
  {
    v48 = 1;
  }

  if (!v48)
  {
    v49 = *(a1 + 8);
    if (v49)
    {
      v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v50 = sub_11F1920((a1 + 8));
      v7 = v54;
    }

    v29 = sub_1952690(v8, v50, v7, a3);
    goto LABEL_88;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_99:
  v54 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

char *sub_1466008(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_14589F4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
      *__dst = 18;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_14589F4(v13, v15, a3);
    }
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 88) + 8 * k + 8);
      *__dst = 26;
      v19 = *(v18 + 20);
      __dst[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, __dst + 1);
      }

      else
      {
        v20 = __dst + 2;
      }

      __dst = sub_14589F4(v18, v20, a3);
    }
  }

  v21 = *(a1 + 16);
  if ((v21 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v23 = *(a1 + 120);
    *__dst = 40;
    __dst[1] = v23;
    if (v23 > 0x7F)
    {
      __dst[1] = v23 | 0x80;
      v24 = v23 >> 7;
      __dst[2] = v23 >> 7;
      v22 = __dst + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v22 - 1) = __dst | 0x80;
          __dst = (v24 >> 7);
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = __dst + 2;
    }
  }

  else
  {
    v22 = __dst;
  }

  if (v21)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v26 = *(a1 + 96);
    *v22 = 50;
    v27 = *(v26 + 44);
    v22[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v22 + 1);
    }

    else
    {
      v28 = v22 + 2;
    }

    v22 = sub_16E9CA0(v26, v28, a3);
  }

  if ((v21 & 0x10) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v30 = *(a1 + 124);
    *v22 = 56;
    v22[1] = v30;
    if (v30 > 0x7F)
    {
      v22[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v22[2] = v30 >> 7;
      v29 = v22 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v22) = v22[2];
        do
        {
          *(v29 - 1) = v22 | 0x80;
          LODWORD(v22) = v31 >> 7;
          *v29++ = v31 >> 7;
          v32 = v31 >> 14;
          v31 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v29 = v22 + 2;
    }
  }

  else
  {
    v29 = v22;
  }

  if ((v21 & 2) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v33 = *(a1 + 104);
    *v29 = 66;
    v34 = *(v33 + 20);
    v29[1] = v34;
    if (v34 > 0x7F)
    {
      v35 = sub_19575D0(v34, v29 + 1);
    }

    else
    {
      v35 = v29 + 2;
    }

    v29 = sub_1465594(v33, v35, a3);
  }

  if ((v21 & 4) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v36 = *(a1 + 112);
    *v29 = 74;
    v37 = *(v36 + 44);
    v29[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v29 + 1);
    }

    else
    {
      v38 = v29 + 2;
    }

    v29 = sub_14B6D24(v36, v38, a3);
  }

  v39 = *(a1 + 8);
  if ((v39 & 1) == 0)
  {
    return v29;
  }

  v41 = v39 & 0xFFFFFFFFFFFFFFFCLL;
  v42 = *(v41 + 31);
  if (v42 < 0)
  {
    v43 = *(v41 + 8);
    v42 = *(v41 + 16);
  }

  else
  {
    v43 = (v41 + 8);
  }

  if ((*a3 - v29) >= v42)
  {
    v44 = v42;
    memcpy(v29, v43, v42);
    v29 += v44;
    return v29;
  }

  return sub_1957130(a3, v43, v42, v29);
}

uint64_t sub_1466484(uint64_t a1)
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
      v7 = sub_1458DB4(v6);
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
      v14 = sub_1458DB4(v13);
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
      v21 = sub_1458DB4(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x1F) == 0)
  {
    goto LABEL_28;
  }

  if (v22)
  {
    v25 = sub_16E9F88(*(a1 + 96));
    v16 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 2) == 0)
    {
LABEL_24:
      if ((v22 & 4) == 0)
      {
        goto LABEL_25;
      }

LABEL_32:
      v27 = sub_14B71B8(*(a1 + 112));
      v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 8) == 0)
      {
LABEL_26:
        if ((v22 & 0x10) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_33;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_24;
  }

  v26 = sub_1465860(*(a1 + 104));
  v16 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 4) != 0)
  {
    goto LABEL_32;
  }

LABEL_25:
  if ((v22 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_33:
  v28 = *(a1 + 120);
  v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v28 >= 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 11;
  }

  v16 += v30;
  if ((v22 & 0x10) != 0)
  {
LABEL_27:
    v16 += ((9 * (__clz(*(a1 + 124) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_28:
  v23 = *(a1 + 8);
  if (v23)
  {
    v31 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v32 < 0)
    {
      v32 = *(v31 + 16);
    }

    v16 += v32;
  }

  *(a1 + 20) = v16;
  return v16;
}

void *sub_14666E8(void *a1)
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

void sub_146675C(void *a1)
{
  sub_14666E8(a1);

  operator delete();
}

uint64_t sub_1466794(uint64_t a1)
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

char *sub_14667BC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v31 = v20;
      *(a1 + 32) = v19 != 0;
      goto LABEL_35;
    }

    v29 = sub_19587DC(v7, v19);
    v31 = v29;
    *(a1 + 32) = v30 != 0;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_25:
      v31 = v16;
      *(a1 + 28) = v17;
      goto LABEL_35;
    }

    v25 = sub_1958770(v7, v17);
    v31 = v25;
    *(a1 + 28) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_34:
      v31 = v22;
      *(a1 + 24) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
    v31 = v27;
    *(a1 + 24) = v28;
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
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

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v31;
    }

    v31 = sub_1952690(v8, v15, v7, a3);
    if (!v31)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_1466A14(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v15;
    v11 += 2;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v19)
  {
    v21 = v19;
    memcpy(v11, v20, v19);
    v11 += v21;
    return v11;
  }

  return sub_1957130(a3, v20, v19, v11);
}

uint64_t sub_1466BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
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
  v3 = v2 + ((v1 >> 1) & 2);
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

    v3 += v7;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1466CA4(std::string *result, uint64_t a2)
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
    result[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
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

void *sub_1466D20(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1563FF0(a1 + 6);
  sub_144A1C8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1466DAC(void *a1)
{
  sub_1466D20(a1);

  operator delete();
}

char *sub_1466DE4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v66 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v66, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v66 + 1;
    v8 = *v66;
    if (*v66 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v66, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v66 + 2;
      }
    }

    v66 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          v25 = v7 - 1;
          while (1)
          {
            v26 = (v25 + 1);
            v66 = v25 + 1;
            v27 = *(a1 + 40);
            if (v27 && (v28 = *(a1 + 32), v28 < *v27))
            {
              *(a1 + 32) = v28 + 1;
              v29 = *&v27[2 * v28 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 24));
              v29 = sub_19593CC(a1 + 24, v30);
              v26 = v66;
            }

            v25 = sub_22095B8(a3, v29, v26);
            v66 = v25;
            if (!v25)
            {
              goto LABEL_114;
            }

            if (*a3 <= v25 || *v25 != 10)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_85;
      }

      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_85;
      }

      v5 |= 1u;
      v19 = v7 + 1;
      v20 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      v21 = *v19;
      v20 = v20 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_35:
        v66 = v19;
        *(a1 + 72) = v20;
        goto LABEL_92;
      }

      v52 = sub_1958770(v7, v20);
      v66 = v52;
      *(a1 + 72) = v53;
      if (!v52)
      {
        goto LABEL_114;
      }
    }

    else
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_85;
        }

        v5 |= 2u;
        v34 = v7 + 1;
        v35 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        v36 = *v34;
        v35 = v35 + (v36 << 7) - 128;
        if ((v36 & 0x80000000) == 0)
        {
          v34 = v7 + 2;
LABEL_62:
          v66 = v34;
          *(a1 + 76) = v35;
          goto LABEL_92;
        }

        v58 = sub_1958770(v7, v35);
        v66 = v58;
        *(a1 + 76) = v59;
        if (!v58)
        {
          goto LABEL_114;
        }

        goto LABEL_92;
      }

      if (v11 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_85;
        }

        v41 = v7 + 1;
        v40 = *v7;
        if (v40 < 0)
        {
          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if ((v42 & 0x80000000) == 0)
          {
            v41 = v7 + 2;
            goto LABEL_72;
          }

          v66 = sub_19587DC(v7, v40);
          if (!v66)
          {
            goto LABEL_114;
          }
        }

        else
        {
LABEL_72:
          v66 = v41;
        }

        if (v40 > 4)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 16) |= 0x80u;
          *(a1 + 100) = v40;
        }

        goto LABEL_92;
      }

      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_85;
      }

      v5 |= 4u;
      v12 = v7 + 1;
      v13 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      v14 = *v12;
      v13 = v13 + (v14 << 7) - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v12 = v7 + 2;
LABEL_16:
        v66 = v12;
        *(a1 + 80) = v13;
        goto LABEL_92;
      }

      v62 = sub_1958770(v7, v13);
      v66 = v62;
      *(a1 + 80) = v63;
      if (!v62)
      {
        goto LABEL_114;
      }
    }

LABEL_92:
    if (sub_195ADC0(a3, &v66, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 8)
  {
    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_85;
      }

      v5 |= 8u;
      v31 = v7 + 1;
      v32 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      v33 = *v31;
      v32 = v32 + (v33 << 7) - 128;
      if ((v33 & 0x80000000) == 0)
      {
        v31 = v7 + 2;
LABEL_57:
        v66 = v31;
        *(a1 + 84) = v32;
        goto LABEL_92;
      }

      v56 = sub_1958770(v7, v32);
      v66 = v56;
      *(a1 + 84) = v57;
      if (!v56)
      {
        goto LABEL_114;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_85;
      }

      v5 |= 0x10u;
      v22 = v7 + 1;
      v23 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      v24 = *v22;
      v23 = v23 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_42:
        v66 = v22;
        *(a1 + 88) = v23;
        goto LABEL_92;
      }

      v54 = sub_1958770(v7, v23);
      v66 = v54;
      *(a1 + 88) = v55;
      if (!v54)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_92;
  }

  if (v11 == 9)
  {
    if (v8 != 72)
    {
      goto LABEL_85;
    }

    v5 |= 0x20u;
    v38 = v7 + 1;
    v37 = *v7;
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_67;
    }

    v39 = *v38;
    v37 = (v39 << 7) + v37 - 128;
    if ((v39 & 0x80000000) == 0)
    {
      v38 = v7 + 2;
LABEL_67:
      v66 = v38;
      *(a1 + 92) = v37 != 0;
      goto LABEL_92;
    }

    v60 = sub_19587DC(v7, v37);
    v66 = v60;
    *(a1 + 92) = v61 != 0;
    if (!v60)
    {
      goto LABEL_114;
    }

    goto LABEL_92;
  }

  if (v11 != 10)
  {
    if (v11 != 11 || v8 != 88)
    {
      goto LABEL_85;
    }

    v5 |= 0x40u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_25:
      v66 = v15;
      *(a1 + 96) = v16;
      goto LABEL_92;
    }

    v64 = sub_1958770(v7, v16);
    v66 = v64;
    *(a1 + 96) = v65;
    if (!v64)
    {
      goto LABEL_114;
    }

    goto LABEL_92;
  }

  if (v8 == 82)
  {
    v43 = v7 - 1;
    while (1)
    {
      v44 = (v43 + 1);
      v66 = v43 + 1;
      v45 = *(a1 + 64);
      if (v45 && (v46 = *(a1 + 56), v46 < *v45))
      {
        *(a1 + 56) = v46 + 1;
        v47 = *&v45[2 * v46 + 2];
      }

      else
      {
        v48 = sub_14BB7AC(*(a1 + 48));
        v47 = sub_19593CC(a1 + 48, v48);
        v44 = v66;
      }

      v43 = sub_220D0C8(a3, v47, v44);
      v66 = v43;
      if (!v43)
      {
        goto LABEL_114;
      }

      if (*a3 <= v43 || *v43 != 82)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_85:
  if (v8)
  {
    v49 = (v8 & 7) == 4;
  }

  else
  {
    v49 = 1;
  }

  if (!v49)
  {
    v50 = *(a1 + 8);
    if (v50)
    {
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v51 = sub_11F1920((a1 + 8));
      v7 = v66;
    }

    v66 = sub_1952690(v8, v51, v7, a3);
    if (!v66)
    {
      goto LABEL_114;
    }

    goto LABEL_92;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_114:
  v66 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v66;
}

char *sub_1467388(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_14589F4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 72);
    *__dst = 16;
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      __dst[1] = v13 | 0x80;
      v14 = v13 >> 7;
      __dst[2] = v13 >> 7;
      v12 = __dst + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v12 - 1) = __dst | 0x80;
          LODWORD(__dst) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = __dst + 2;
    }
  }

  else
  {
    v12 = __dst;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 76);
    *v12 = 24;
    v12[1] = v17;
    if (v17 > 0x7F)
    {
      v12[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[2] = v17 >> 7;
      v16 = v12 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v16 - 1) = v12 | 0x80;
          LODWORD(v12) = v18 >> 7;
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v12 + 2;
    }
  }

  else
  {
    v16 = v12;
  }

  if ((v11 & 0x80) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 100);
    *v16 = 32;
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v16[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v16[2] = v21 >> 7;
      v20 = v16 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v23) = v16[2];
        do
        {
          *(v20 - 1) = v23 | 0x80;
          v23 = v22 >> 7;
          *v20++ = v22 >> 7;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v20 = v16 + 2;
    }
  }

  else
  {
    v20 = v16;
  }

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v26 = *(a1 + 80);
    *v20 = 40;
    v20[1] = v26;
    if (v26 > 0x7F)
    {
      v20[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v20[2] = v26 >> 7;
      v25 = v20 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v20) = v20[2];
        do
        {
          *(v25 - 1) = v20 | 0x80;
          LODWORD(v20) = v27 >> 7;
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = v20 + 2;
    }
  }

  else
  {
    v25 = v20;
  }

  if ((v11 & 8) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v30 = *(a1 + 84);
    *v25 = 48;
    v25[1] = v30;
    if (v30 > 0x7F)
    {
      v25[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v25[2] = v30 >> 7;
      v29 = v25 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v32) = v25[2];
        do
        {
          *(v29 - 1) = v32 | 0x80;
          v32 = v31 >> 7;
          *v29++ = v31 >> 7;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v29 = v25 + 2;
    }
  }

  else
  {
    v29 = v25;
  }

  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v35 = *(a1 + 88);
    *v29 = 56;
    v29[1] = v35;
    if (v35 > 0x7F)
    {
      v29[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v29[2] = v35 >> 7;
      v34 = v29 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v29) = v29[2];
        do
        {
          *(v34 - 1) = v29 | 0x80;
          LODWORD(v29) = v36 >> 7;
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v29 + 2;
    }
  }

  else
  {
    v34 = v29;
  }

  if ((v11 & 0x20) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v38 = *(a1 + 92);
    *v34 = 72;
    v34[1] = v38;
    v34 += 2;
  }

  v39 = *(a1 + 56);
  if (v39)
  {
    for (j = 0; j != v39; ++j)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v41 = *(*(a1 + 64) + 8 * j + 8);
      *v34 = 82;
      v42 = *(v41 + 20);
      v34[1] = v42;
      if (v42 > 0x7F)
      {
        v43 = sub_19575D0(v42, v34 + 1);
      }

      else
      {
        v43 = v34 + 2;
      }

      v34 = sub_1466A14(v41, v43, a3);
    }
  }

  if ((v11 & 0x40) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v45 = *(a1 + 96);
    *v34 = 88;
    v34[1] = v45;
    if (v45 > 0x7F)
    {
      v34[1] = v45 | 0x80;
      v46 = v45 >> 7;
      v34[2] = v45 >> 7;
      v44 = v34 + 3;
      if (v45 >= 0x4000)
      {
        LOBYTE(v34) = v34[2];
        do
        {
          *(v44 - 1) = v34 | 0x80;
          LODWORD(v34) = v46 >> 7;
          *v44++ = v46 >> 7;
          v47 = v46 >> 14;
          v46 >>= 7;
        }

        while (v47);
      }
    }

    else
    {
      v44 = v34 + 2;
    }
  }

  else
  {
    v44 = v34;
  }

  v48 = *(a1 + 8);
  if ((v48 & 1) == 0)
  {
    return v44;
  }

  v50 = v48 & 0xFFFFFFFFFFFFFFFCLL;
  v51 = *(v50 + 31);
  if (v51 < 0)
  {
    v52 = *(v50 + 8);
    v51 = *(v50 + 16);
  }

  else
  {
    v52 = (v50 + 8);
  }

  if ((*a3 - v44) >= v51)
  {
    v53 = v51;
    memcpy(v44, v52, v51);
    v44 += v53;
    return v44;
  }

  return sub_1957130(a3, v52, v51, v44);
}

uint64_t sub_1467938(uint64_t a1)
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
      v7 = sub_1458DB4(v6);
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
      v14 = sub_1466BFC(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v15)
    {
      v9 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_18:
        if ((v15 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

    v9 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_19:
      if ((v15 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

LABEL_33:
    v9 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 8) == 0)
    {
LABEL_20:
      if ((v15 & 0x10) == 0)
      {
LABEL_22:
        v9 += (v15 >> 4) & 2;
        if ((v15 & 0x40) != 0)
        {
          v9 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        if ((v15 & 0x80) != 0)
        {
          v16 = *(a1 + 100);
          v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if (v16 >= 0)
          {
            v18 = v17;
          }

          else
          {
            v18 = 11;
          }

          v9 += v18;
        }

        goto LABEL_29;
      }

LABEL_21:
      v9 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_22;
    }

LABEL_34:
    v9 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_29:
  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v9 += v22;
  }

  *(a1 + 20) = v9;
  return v9;
}

void *sub_1467B90(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1564074(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1467C10(void *a1)
{
  sub_1467B90(a1);

  operator delete();
}

uint64_t sub_1467C48(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1468470(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 42) = 0;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1467CD0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v37 + 1;
    v8 = *v37;
    if (*v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v37 + 2;
      }
    }

    v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_40;
      }

      v5 |= 1u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_34:
        v37 = v23;
        *(a1 + 48) = v22 != 0;
        goto LABEL_47;
      }

      v33 = sub_19587DC(v7, v22);
      v37 = v33;
      *(a1 + 48) = v34 != 0;
      if (!v33)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_40;
      }

      v5 |= 2u;
      v14 = v7 + 1;
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_17:
        v37 = v14;
        *(a1 + 49) = v13 != 0;
        goto LABEL_47;
      }

      v31 = sub_19587DC(v7, v13);
      v37 = v31;
      *(a1 + 49) = v32 != 0;
      if (!v31)
      {
        goto LABEL_58;
      }
    }

LABEL_47:
    if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_40;
    }

    v5 |= 4u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_39:
      v37 = v26;
      *(a1 + 50) = v25 != 0;
      goto LABEL_47;
    }

    v35 = sub_19587DC(v7, v25);
    v37 = v35;
    *(a1 + 50) = v36 != 0;
    if (!v35)
    {
      goto LABEL_58;
    }

    goto LABEL_47;
  }

  if (v11 == 5 && v8 == 42)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      v37 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_14BB984(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = v37;
      }

      v16 = sub_220D158(a3, v20, v17);
      v37 = v16;
      if (!v16)
      {
        goto LABEL_58;
      }

      if (*a3 <= v16 || *v16 != 42)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_40:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = v37;
    }

    v37 = sub_1952690(v8, v30, v7, a3);
    if (!v37)
    {
      goto LABEL_58;
    }

    goto LABEL_47;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

char *sub_1467FE4(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
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

  v8 = *(a1 + 49);
  *v4 = 24;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v9 = *(a1 + 50);
    *v4 = 32;
    v4[1] = v9;
    v4 += 2;
  }

LABEL_14:
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
      *v4 = 42;
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

      v4 = sub_14686F8(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v17 + 31);
  if (v18 < 0)
  {
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
  }

  else
  {
    v19 = (v17 + 8);
  }

  if (*a3 - v4 >= v18)
  {
    v20 = v18;
    memcpy(v4, v19, v18);
    v4 += v20;
    return v4;
  }

  return sub_1957130(a3, v19, v18, v4);
}

uint64_t sub_14681DC(uint64_t a1)
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
      v7 = sub_14688B0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if ((*(a1 + 16) & 7) != 0)
  {
    result = v2 + (*(a1 + 16) & 2) + 2 * (*(a1 + 16) & 1) + ((*(a1 + 16) >> 1) & 2);
  }

  else
  {
    result = v2;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_14682A8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1565DF8(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      v3[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        v3[2].__r_.__value_.__s.__data_[2] = *(a2 + 50);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v3[2].__r_.__value_.__s.__data_[1] = *(a2 + 49);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_14683C4(void *a1)
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

void sub_1468438(void *a1)
{
  sub_14683C4(a1);

  operator delete();
}

uint64_t sub_1468470(uint64_t a1)
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

char *sub_1468494(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v22, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v22 + 1;
    v8 = *v22;
    if (*v22 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v22, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v22 + 2;
      }
    }

    v22 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v19 = v7 + 1;
    v20 = *v7;
    if (v20 < 0)
    {
      v20 = (*v19 << 7) + v20 - 128;
      if (*v19 < 0)
      {
        v19 = sub_19587DC(v7, v20);
      }

      else
      {
        v19 = v7 + 2;
      }
    }

    v22 = v19;
    *(a1 + 24) = -(v20 & 1) ^ (v20 >> 1);
    v5 = 1;
    if (!v19)
    {
      goto LABEL_40;
    }

LABEL_34:
    if (sub_195ADC0(a3, &v22, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v15 = v7 + 1;
    v16 = *v7;
    if (v16 < 0)
    {
      v17 = *v15;
      v18 = (v17 << 7) + v16;
      LODWORD(v16) = v18 - 128;
      if (v17 < 0)
      {
        v22 = sub_19587DC(v7, (v18 - 128));
        if (!v22)
        {
          goto LABEL_40;
        }

        LODWORD(v16) = v21;
        goto LABEL_25;
      }

      v15 = v7 + 2;
    }

    v22 = v15;
LABEL_25:
    if (sub_14686A4(v16))
    {
      *(a1 + 16) |= 2u;
      *(a1 + 28) = v16;
    }

    else
    {
      sub_12E8418();
    }

    goto LABEL_34;
  }

LABEL_12:
  if (v8)
  {
    v12 = (v8 & 7) == 4;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v22;
    }

    v22 = sub_1952690(v8, v14, v7, a3);
    if (!v22)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_40:
  v22 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

uint64_t sub_14686A4(int a1)
{
  result = 1;
  if (a1 <= 3)
  {
    if (a1 >= 3)
    {
      return 0;
    }
  }

  else if (((a1 - 4) > 0x3C || ((1 << (a1 - 4)) & 0x1000000010001011) == 0) && a1 != 128 && a1 != 256)
  {
    return 0;
  }

  return result;
}

char *sub_14686F8(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    v8 = (2 * v7) ^ (v7 >> 31);
    __dst[1] = (2 * v7) ^ (v7 >> 31);
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v6 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
        do
        {
          *(v6 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v6++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v6[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v6[2] = v13 >> 7;
      v12 = v6 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v12 - 1) = v6 | 0x80;
          v6 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v6 + 2;
    }
  }

  else
  {
    v12 = v6;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v12;
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

  if (*a3 - v12 >= v19)
  {
    v21 = v19;
    memcpy(v12, v20, v19);
    v12 += v21;
    return v12;
  }

  return sub_1957130(a3, v20, v19, v12);
}

uint64_t sub_14688B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (v1)
  {
    v2 = ((9 * (__clz((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 28);
  if (v3 < 0)
  {
    v4 = 11;
  }

  else
  {
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v4;
LABEL_11:
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1468978(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144A1C8(a1 + 9);
  sub_144A1C8(a1 + 6);
  sub_15640F8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1468A10(void *a1)
{
  sub_1468978(a1);

  operator delete();
}

char *sub_1468A48(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          v22 = v7 - 1;
          while (1)
          {
            v23 = (v22 + 1);
            v39 = v22 + 1;
            v24 = *(a1 + 40);
            if (v24 && (v25 = *(a1 + 32), v25 < *v24))
            {
              *(a1 + 32) = v25 + 1;
              v26 = *&v24[2 * v25 + 2];
            }

            else
            {
              v27 = sub_14BB8E8(*(a1 + 24));
              v26 = sub_19593CC(a1 + 24, v27);
              v23 = v39;
            }

            v22 = sub_220D1E8(a3, v26, v23);
            v39 = v22;
            if (!v22)
            {
              goto LABEL_64;
            }

            if (*a3 <= v22 || *v22 != 10)
            {
              goto LABEL_57;
            }
          }
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        v13 = v7 - 1;
        while (1)
        {
          v14 = (v13 + 1);
          v39 = v13 + 1;
          v15 = *(a1 + 64);
          if (v15 && (v16 = *(a1 + 56), v16 < *v15))
          {
            *(a1 + 56) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            sub_14BAE64(*(a1 + 48));
            v17 = sub_19593CC(a1 + 48, v18);
            v14 = v39;
          }

          v13 = sub_22095B8(a3, v17, v14);
          v39 = v13;
          if (!v13)
          {
            goto LABEL_64;
          }

          if (*a3 <= v13 || *v13 != 18)
          {
            goto LABEL_57;
          }
        }
      }

      goto LABEL_50;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_50;
    }

    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_29:
      v39 = v19;
      *(a1 + 96) = v20;
      v5 = 1;
      goto LABEL_57;
    }

    v37 = sub_1958770(v7, v20);
    v39 = v37;
    *(a1 + 96) = v38;
    v5 = 1;
    if (!v37)
    {
      goto LABEL_64;
    }

LABEL_57:
    if (sub_195ADC0(a3, &v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v28 = v7 - 1;
    while (1)
    {
      v29 = (v28 + 1);
      v39 = v28 + 1;
      v30 = *(a1 + 88);
      if (v30 && (v31 = *(a1 + 80), v31 < *v30))
      {
        *(a1 + 80) = v31 + 1;
        v32 = *&v30[2 * v31 + 2];
      }

      else
      {
        sub_14BAE64(*(a1 + 72));
        v32 = sub_19593CC(a1 + 72, v33);
        v29 = v39;
      }

      v28 = sub_22095B8(a3, v32, v29);
      v39 = v28;
      if (!v28)
      {
        goto LABEL_64;
      }

      if (*a3 <= v28 || *v28 != 26)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_50:
  if (v8)
  {
    v34 = (v8 & 7) == 4;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    v35 = *(a1 + 8);
    if (v35)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v7 = v39;
    }

    v39 = sub_1952690(v8, v36, v7, a3);
    if (!v39)
    {
      goto LABEL_64;
    }

    goto LABEL_57;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

char *sub_1468D90(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_1467FE4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
      *__dst = 18;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_14589F4(v13, v15, a3);
    }
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 88) + 8 * k + 8);
      *__dst = 26;
      v19 = *(v18 + 20);
      __dst[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, __dst + 1);
      }

      else
      {
        v20 = __dst + 2;
      }

      __dst = sub_14589F4(v18, v20, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v22 = *(a1 + 96);
    *__dst = 32;
    __dst[1] = v22;
    if (v22 > 0x7F)
    {
      __dst[1] = v22 | 0x80;
      v23 = v22 >> 7;
      __dst[2] = v22 >> 7;
      v21 = __dst + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v21 - 1) = __dst | 0x80;
          LODWORD(__dst) = v23 >> 7;
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = __dst + 2;
    }
  }

  else
  {
    v21 = __dst;
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v21;
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

  if ((*a3 - v21) >= v28)
  {
    v30 = v28;
    memcpy(v21, v29, v28);
    v21 += v30;
    return v21;
  }

  return sub_1957130(a3, v29, v28, v21);
}

uint64_t sub_1469058(uint64_t a1)
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
      v7 = sub_14681DC(v6);
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
      v14 = sub_1458DB4(v13);
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
      v21 = sub_1458DB4(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  if (*(a1 + 16))
  {
    v16 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v16 += v25;
  }

  *(a1 + 20) = v16;
  return v16;
}

void *sub_14691DC(void *a1)
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

void sub_1469250(void *a1)
{
  sub_14691DC(a1);

  operator delete();
}

uint64_t sub_1469288(uint64_t a1)
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

char *sub_14692AC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v36 + 1;
    v8 = *v36;
    if (*v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v36 + 2;
      }
    }

    v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 0x10)
    {
      break;
    }

    if (v11 == 17)
    {
      if (v8 != 136)
      {
        goto LABEL_35;
      }

      v5 |= 4u;
      v22 = v7 + 1;
      v23 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      v24 = *v22;
      v23 = v23 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_34:
        v36 = v22;
        *(a1 + 32) = v23;
        goto LABEL_42;
      }

      v34 = sub_1958770(v7, v23);
      v36 = v34;
      *(a1 + 32) = v35;
      if (!v34)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v11 != 18 || v8 != 144)
      {
        goto LABEL_35;
      }

      v5 |= 8u;
      v16 = v7 + 1;
      v17 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v16;
      v17 = v17 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_24:
        v36 = v16;
        *(a1 + 36) = v17;
        goto LABEL_42;
      }

      v28 = sub_1958770(v7, v17);
      v36 = v28;
      *(a1 + 36) = v29;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

LABEL_42:
    if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_35;
    }

    v5 |= 1u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_29:
      v36 = v19;
      *(a1 + 24) = v20;
      goto LABEL_42;
    }

    v32 = sub_1958770(v7, v20);
    v36 = v32;
    *(a1 + 24) = v33;
    if (!v32)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
    v13 = v7 + 1;
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_17:
      v36 = v13;
      *(a1 + 28) = v14;
      goto LABEL_42;
    }

    v30 = sub_1958770(v7, v14);
    v36 = v30;
    *(a1 + 28) = v31;
    if (!v30)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = v36;
    }

    v36 = sub_1952690(v8, v27, v7, a3);
    if (!v36)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_1469560(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 392;
    v11[2] = v16;
    if (v16 > 0x7F)
    {
      v11[2] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[3] = v16 >> 7;
      v15 = v11 + 4;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[3];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 3;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 36);
    *v15 = 400;
    v15[2] = v20;
    if (v20 > 0x7F)
    {
      v15[2] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[3] = v20 >> 7;
      v19 = v15 + 4;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[3];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 3;
    }
  }

  else
  {
    v19 = v15;
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v19;
  }

  v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = *(v26 + 31);
  if (v27 < 0)
  {
    v28 = *(v26 + 8);
    v27 = *(v26 + 16);
  }

  else
  {
    v28 = (v26 + 8);
  }

  if (*a3 - v19 >= v27)
  {
    v29 = v27;
    memcpy(v19, v28, v27);
    v19 += v29;
    return v19;
  }

  return sub_1957130(a3, v28, v27, v19);
}

uint64_t sub_146981C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_11;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 8) != 0)
  {
LABEL_10:
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_11:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_1469928(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2771E30)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_156417C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1469A00(uint64_t a1)
{
  sub_1469928(a1);

  operator delete();
}

uint64_t sub_1469A38(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v33, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v33 + 1);
    v7 = **v33;
    if (**v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v33 + 2);
      }
    }

    *v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4 && v7 == 34)
        {
          v17 = v6 - 1;
          while (1)
          {
            v18 = (v17 + 1);
            *v33 = v17 + 1;
            v19 = *(a1 + 40);
            if (v19 && (v20 = *(a1 + 32), v20 < *v19))
            {
              *(a1 + 32) = v20 + 1;
              v21 = *&v19[2 * v20 + 2];
            }

            else
            {
              v22 = sub_14BBAAC(*(a1 + 24));
              v21 = sub_19593CC(a1 + 24, v22);
              v18 = *v33;
            }

            v17 = sub_220D278(a3, v21, v18);
            *v33 = v17;
            if (!v17)
            {
              break;
            }

            if (*a3 <= v17 || *v17 != 34)
            {
              goto LABEL_50;
            }
          }

LABEL_58:
          *v33 = 0;
          return *v33;
        }

LABEL_42:
        if (v7)
        {
          v29 = (v7 & 7) == 4;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v33;
          }

          goto LABEL_58;
        }

        v30 = *(a1 + 8);
        if (v30)
        {
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v31 = sub_11F1920((a1 + 8));
          v6 = *v33;
        }

        v16 = sub_1952690(v7, v31, v6, a3);
        goto LABEL_49;
      }

      if (v7 != 26)
      {
        goto LABEL_42;
      }

      *(a1 + 16) |= 1u;
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v28 = sub_194DB04((a1 + 48), v27);
      v16 = sub_1958890(v28, *v33, a3);
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v24 = v6 + 1;
          v23 = *v6;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            *v33 = sub_19587DC(v6, v23);
            if (!*v33)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v24 = v6 + 2;
LABEL_35:
            *v33 = v24;
          }

          if (v23 > 2)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v23;
          }

          continue;
        }

        goto LABEL_42;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_42;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 56);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        sub_14BAE64(v14);
        v12 = v15;
        *(a1 + 56) = v15;
        v6 = *v33;
      }

      v16 = sub_22095B8(a3, v12, v6);
    }

LABEL_49:
    *v33 = v16;
    if (!v16)
    {
      goto LABEL_58;
    }

LABEL_50:
    ;
  }

  return *v33;
}