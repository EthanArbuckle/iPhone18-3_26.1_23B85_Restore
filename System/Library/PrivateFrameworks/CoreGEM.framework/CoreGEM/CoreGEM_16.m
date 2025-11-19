uint64_t sub_2454472F8(uint64_t a1, int a2, int a3)
{
  sub_245445FB0(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {
    result = sub_2454460B8(a1, 1, 64, a2);
    if (!result)
    {
      return sub_2454460B8(a1, 0, ~(-1 << a2), a3);
    }
  }

  return result;
}

uint64_t sub_24544736C(uint64_t a1, unsigned __int8 *a2)
{
  sub_245445FB0(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v5 = *a2;

    return sub_2454460B8(a1, 0, 63, v5);
  }

  return result;
}

uint64_t sub_2454473CC(uint64_t a1, int a2)
{
  sub_245445FB0(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {

    return sub_2454460B8(a1, 0, 63, a2);
  }

  return result;
}

uint64_t sub_24544742C(uint64_t a1, _BYTE *a2)
{
  sub_245446038(a1);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {

    return sub_245446150(a1, 0, 0x3Fu, a2);
  }

  return result;
}

uint64_t sub_245447488(uint64_t a1, void *a2)
{
  v3 = sub_245446474(a1, 0, 0, 0x40u, a2, 1);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_Ver");
  }

  return v4;
}

uint64_t sub_2454474E4(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x40u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Ver");
  }

  return v3;
}

uint64_t sub_245447538(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2 - 20;
  sub_245445FB0(a1, v4 < 5);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_8:
    sub_245445D98(v8, v6, v7, "asn1PE_StatusCode");
    return v5;
  }

  v9 = *a2;
  if (v4 > 4)
  {
    v8 = sub_2454460B8(a1, 0, 19, v9);
  }

  else
  {
    v8 = sub_2454473CC(a1, (v9 - 20));
  }

  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_8;
  }

  return v5;
}

uint64_t sub_2454475EC(uint64_t a1, _BYTE *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
LABEL_8:
    sub_245445D98(v8, v6, v7, "asn1PD_StatusCode");
    return v5;
  }

  v11 = 0;
  if (v4)
  {
    v5 = sub_24544742C(a1, &v11);
    v9 = v11 + 20;
  }

  else
  {
    v5 = sub_245446150(a1, 0, 0x13u, &v11);
    v9 = v11;
  }

  *a2 = v9;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
    goto LABEL_8;
  }

  return v5;
}

uint64_t sub_2454476A8(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_9:
    sub_245445D98(v7, v5, v6, "asn1PE_SUPLEND");
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

  if (*a2)
  {
    v7 = sub_245469E18(a1, (a2 + 16));
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
    v7 = sub_245447538(a1, (a2 + 456));
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

  v7 = sub_245447488(a1, (a2 + 464));
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  return v4;
}

uint64_t sub_245447820(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_9:
    sub_245445D98(v8, v6, v7, "asn1PD_SUPLEND");
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
    goto LABEL_9;
  }

  *(a2 + 4) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_9;
  }

  *(a2 + 8) = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_9;
  }

  if (*a2)
  {
    v8 = sub_245469EEC(a1, a2 + 16);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (*(a2 + 4))
  {
    v8 = sub_2454475EC(a1, (a2 + 456));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (*(a2 + 8))
  {
    v8 = sub_2454474E4(a1, (a2 + 464));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (!v9)
  {
    return 0;
  }

  v8 = sub_245446F9C(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  return v5;
}

void sub_2454479C0(uint64_t a1, int a2)
{
  if (a2 == 3 && *(a1 + 124) == 2)
  {
    if (*(a1 + 216) == 1)
    {
      if (!*(a1 + 220) && *(a1 + 128) == 2)
      {
        sub_2454479C0(a1, 1);
      }

      *(a1 + 216) = 0;
    }

    sub_245447FE8(a1, 0);
    if (*(a1 + 128) == 2 && *(a1 + 141) == 1)
    {
      *(a1 + 176) = 0;
      sub_2454479C0(a1, 1);
    }
  }

  else if ((a2 | 2) != 3)
  {
    goto LABEL_14;
  }

  if (*(a1 + 128) == 2)
  {
    *(a1 + 128) = 1;
    *(a1 + 136) = -1;
    *(a1 + 140) = 0;
    *(a1 + 142) = 0;
    *(a1 + 144) = 0;
    *(a1 + 148) = 0;
  }

LABEL_14:
  if ((a2 & 0xFFFFFFFE) == 2 && *(a1 + 152) == 2)
  {
    *(a1 + 152) = 1;
    *(a1 + 160) = -1;
    *(a1 + 164) = 0;
    *(a1 + 166) = 0;
    *(a1 + 168) = 0;
    *(a1 + 172) = 0;
  }

  if (*(a1 + 128) != 2)
  {
    *(a1 + 124) = 1;
  }
}

void sub_245447AEC(uint64_t a1, int *a2, int a3, _DWORD *a4, uint64_t a5, _BYTE *a6, _BYTE *a7, char a8)
{
  v13 = *(a1 + 124);
  if (!a5)
  {
    v19 = 1;
    if (v13)
    {
      v15 = 0;
      v16 = 0;
      a3 = 0;
LABEL_18:
      v18 = 1;
      goto LABEL_25;
    }

LABEL_12:
    LOBYTE(v18) = 1;
    goto LABEL_50;
  }

  if (!v13)
  {
    LOBYTE(v19) = 1;
    goto LABEL_12;
  }

  v15 = *a2;
  v16 = a2[1];
  if (*a5 != 3)
  {
    if (!*a5)
    {
      v17 = *(a1 + 128);
      if (v17)
      {
        if (v17 != 1)
        {
          v29 = a8;
          if (v17 == 2)
          {
            v18 = 1;
            v19 = sub_245447D3C(a1, 1, v15, v16);
LABEL_24:
            a8 = v29;
            goto LABEL_25;
          }

          v21 = 339;
          goto LABEL_23;
        }

        v19 = 0;
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  v20 = *(a1 + 152);
  if (!v20)
  {
LABEL_17:
    v19 = 1;
    goto LABEL_18;
  }

  if (v20 != 1)
  {
    v29 = a8;
    if (v20 == 2)
    {
      v18 = sub_245447D3C(a1, 2, v15, v16);
      v19 = 1;
      goto LABEL_24;
    }

    v21 = 362;
LABEL_23:
    sub_245479990(v21, "lpc.c");
    v19 = 1;
    v18 = 1;
    goto LABEL_24;
  }

  v18 = 0;
  v19 = 1;
LABEL_25:
  v22 = 0;
  if (v19)
  {
    v23 = v18 == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  if (a4 && v24)
  {
    v22 = *a4 != 0;
  }

  v25 = 0;
  v26 = 0;
  if (a5 && !v19)
  {
    *(a1 + 132) = v15;
    *(a1 + 136) = v16;
    v25 = (a1 + 132);
    *(a1 + 140) = a3;
    v27 = *(a5 + 4);
    *(a1 + 144) = v27;
    if (v27 == 2)
    {
      v28 = *(a5 + 12);
      *(a1 + 149) = v28;
      *(a1 + 148) = 0;
      if (v22)
      {
        *(a1 + 149) = v28 - 1;
      }
    }

    *(a1 + 128) = 2;
    v26 = 1;
  }

  if (a5 && !v18)
  {
    *(a1 + 156) = v15;
    *(a1 + 160) = v16;
    v25 = (a1 + 156);
    *(a1 + 164) = a3;
    *(a1 + 168) = *(a5 + 4);
    *(a1 + 152) = 2;
    v26 = 1;
  }

  if (a5 && v26)
  {
    if (*a5 == 3)
    {
      sub_2454519F8(a1, a5);
    }

    else
    {
      sub_2454490F8(a1, a5, v25, a8);
    }

    if (*(a1 + 124) == 1)
    {
      *(a1 + 124) = 2;
    }
  }

LABEL_50:
  *a6 = v19;
  *a7 = v18;
}

uint64_t sub_245447D3C(uint64_t a1, int a2, int a3, int a4)
{
  v5 = a1 + 132;
  v6 = 156;
  if (a2 == 1)
  {
    v6 = 132;
  }

  else
  {
    v5 = a1 + 156;
  }

  v7 = *(a1 + v6);
  if (v7 == a3 && *(v5 + 4) == a4)
  {
    return 0;
  }

  if (a3 == 1 && v7 != 1)
  {
    return 1;
  }

  if (a2 == 1)
  {
    if (!*(a1 + 176))
    {
      *(a1 + 176) = 1;
    }

    bzero(v12, 0x230uLL);
    v12[416] = 1;
    v10 = (a1 + 142);
    v9 = *(a1 + 142);
    v13 = *(a1 + 132);
    if (!v9 && !*(a1 + 141))
    {
      v14 = &v13;
      v15 = v12;
      sub_245449A34(a1, &v14);
    }

    *(a1 + 132) = 0xFFFFFFFF00000000;
    *(a1 + 140) = 0;
  }

  else
  {
    bzero(v12, 0x230uLL);
    v12[552] = 1;
    v11 = *(a1 + 156);
    v15 = v12;
    v13 = v11;
    v14 = &v13;
    sub_245449A34(a1, &v14);
    *(a1 + 156) = 0xFFFFFFFF00000000;
    *(a1 + 164) = 0;
    v10 = (a1 + 166);
  }

  result = 0;
  *v10 = 0;
  return result;
}

void sub_245447E7C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v10 = a2;
  if (!*(a1 + 124))
  {
    v9 = 568;
LABEL_15:

    sub_245479990(v9, "lpc.c");
    return;
  }

  if ((a3 - 1) > 1)
  {
    v9 = 562;
    goto LABEL_15;
  }

  v5 = 152;
  if (a3 == 1)
  {
    v5 = 128;
  }

  v6 = a1 + v5;
  if (*v6 != 2)
  {
    v9 = 556;
    goto LABEL_15;
  }

  if (*(v6 + 4) != a2)
  {
    v9 = 551;
    goto LABEL_15;
  }

  if (a3 == 2)
  {
    goto LABEL_24;
  }

  if (a4 == 1 && !*(a1 + 176))
  {
    v8 = 1;
LABEL_23:
    *(a1 + 176) = v8;
LABEL_24:
    sub_2454479C0(a1, a3);
    if (!a4)
    {
      sub_245447FE8(a1, &v10);
    }

    return;
  }

  if (!a4)
  {
    v8 = 0;
    goto LABEL_23;
  }

  sub_2454479C0(a1, a3);
}

void sub_245447FE8(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 200);
  if (!v2)
  {
    return;
  }

  if (a2)
  {
    if (*(a1 + 184) != *a2 || *(a1 + 188) != a2[1])
    {
      return;
    }

    goto LABEL_14;
  }

  if (*(a1 + 193) != 1)
  {
    v5 = 2469;
LABEL_13:
    sub_245479990(v5, "lpc.c");
    goto LABEL_14;
  }

  v4 = *(a1 + 196);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      if (!*v2)
      {
        sub_2454479C0(a1, 1);
      }

      goto LABEL_14;
    }

    v5 = 2463;
    goto LABEL_13;
  }

LABEL_14:
  v6 = *(a1 + 200);
  if (v6)
  {
    free(v6);
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
}

uint64_t sub_2454480AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 124);
  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v10 = 0;
    v9 = 0;
    if (!*a2 && *(a1 + 128) != 2)
    {
      sub_245479990(1148, "lpc.c");
      return 1;
    }

    sub_2454516C4(a2);
    if (*a2)
    {
      goto LABEL_7;
    }

    if (*(a2 + 4))
    {
      v9 = *(a1 + 132);
      v10 = *(a1 + 140);
LABEL_10:
      v6 = 1;
      sub_2454479C0(a1, 1);
      goto LABEL_11;
    }

    if ((*(a2 + 8) & 1) != 0 && (*(a2 + 72) | 2) != 2)
    {
      sub_245479990(1277, "lpc.c");
      v7 = *(a1 + 144);
    }

    else
    {
      v7 = *(a1 + 144);
      if (v7 == 2)
      {
        ++*(a1 + 148);
        v9 = *(a1 + 132);
        v10 = *(a1 + 140);
        goto LABEL_21;
      }
    }

    v9 = *(a1 + 132);
    v10 = *(a1 + 140);
    if (!v7)
    {
      if (!*(a2 + 81))
      {
        goto LABEL_10;
      }

LABEL_7:
      v6 = 0;
LABEL_11:
      sub_245448244(a1, a2, &v9, 0, v6);
      return 0;
    }

    if (v7 != 2)
    {
      goto LABEL_7;
    }

LABEL_21:
    v8 = *(a1 + 149);
    if (v8 != 255 && *(a1 + 148) >= v8)
    {
      if (!*(a1 + 176))
      {
        *(a1 + 176) = 1;
      }

      goto LABEL_10;
    }

    goto LABEL_7;
  }

  return 0;
}

void sub_245448244(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  bzero(v13, 0x230uLL);
  if (*(a3 + 9))
  {
    *(a2 + 80) = a5 != 0;
  }

  else
  {
    v13[320] = 1;
    v9 = a2[3];
    v16 = a2[2];
    v17 = v9;
    v18 = a2[4];
    v10 = a2[1];
    v14 = *a2;
    v15 = v10;
    v19 = *(a2 + 10);
    v12[0] = a3;
    v12[1] = v13;
    sub_245449A34(a1, v12);
    v11 = *(a2 + 8);
    if (v11)
    {
      free(v11);
      *(a2 + 8) = 0;
    }
  }
}

uint64_t sub_2454482FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 124);
  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*a2 == 3 && *(a1 + 152) != 2)
    {
      sub_245479990(1350, "lpc.c");
      return 1;
    }

    sub_245451720(a2);
    v6 = *(a2 + 4);
    v7 = *(a1 + 156);
    v8 = *(a1 + 164);
    if (v6)
    {
      sub_2454479C0(a1, 2);
    }

    sub_2454483B8(a1, a2, &v7);
  }

  return 0;
}

void sub_2454483B8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  bzero(v21, 0x230uLL);
  v21[417] = 1;
  v6 = a2[5];
  v26 = a2[4];
  v27 = v6;
  v7 = a2[7];
  v28 = a2[6];
  v29 = v7;
  v8 = a2[1];
  v22 = *a2;
  v23 = v8;
  v9 = a2[3];
  v24 = a2[2];
  v25 = v9;
  v20[0] = a3;
  v20[1] = v21;
  sub_245449A34(a1, v20);
  v10 = *(a2 + 9);
  if (v10)
  {
    free(v10);
    *(a2 + 9) = 0;
  }

  v11 = *(a2 + 11);
  if (v11)
  {
    free(v11);
    *(a2 + 11) = 0;
  }

  v12 = *(a2 + 13);
  if (v12)
  {
    if (!*(a2 + 96))
    {
      goto LABEL_18;
    }

    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(a2 + 13);
      if (*(v15 + v13 + 52) == 1)
      {
        if (*(v15 + v13 + 53))
        {
          v16 = v15 + v13;
          v17 = *(v15 + v13 + 56);
          if (v17)
          {
            free(v17);
            *(v16 + 56) = 0;
            v15 = *(a2 + 13);
          }
        }
      }

      if (*(v15 + v13 + 64) == 1 && *(v15 + v13 + 65))
      {
        v18 = v15 + v13;
        v19 = *(v15 + v13 + 72);
        if (v19)
        {
          free(v19);
          *(v18 + 72) = 0;
        }
      }

      ++v14;
      v13 += 80;
    }

    while (v14 < *(a2 + 96));
    v12 = *(a2 + 13);
    if (v12)
    {
LABEL_18:
      free(v12);
      *(a2 + 13) = 0;
    }
  }
}

double sub_245448500(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 116) = -1;
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
  *v2 = 0;
  v2[1] = 0;
  *(a1 + 72) = v2;
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
  *v3 = 0;
  v3[1] = 0;
  *(a1 + 96) = v3;
  *(a1 + 232) = 1;
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 120) = 1;
  *a1 = 1;
  return result;
}

void sub_2454485A8(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  LODWORD(size) = 0;
  if (*(a1 + 4))
  {
    if (*(a1 + 45) == 1)
    {
      v4 = *(a2 + 24);
      if (v4 && *(a2 + 16) == 5)
      {
        if (((v4 + 1) & 3) != 0)
        {
          LOBYTE(v14) = *(v4 + 4);
          BYTE1(v14) = *(v4 + 3);
          BYTE2(v14) = *(v4 + 2);
          HIBYTE(v14) = *(v4 + 1);
        }

        else
        {
          v14 = bswap32(*(v4 + 1));
        }

        v6 = *(a2 + 8);
        if (v6 && (v7 = *a2, *a2 >= 1))
        {
          if (v6)
          {
            LOBYTE(size) = v6[1];
            BYTE1(size) = *v6;
          }

          else
          {
            LOWORD(size) = bswap32(*v6) >> 16;
          }

          if (size == v7 - 2)
          {
            v8 = malloc_type_calloc(1uLL, size, 0x57089378uLL);
            bzero(v8, size);
            v12 = v8;
            memcpy(v8, (*(a2 + 8) + 2), size);
            sub_245449690(a1, &v13, 0, &size);
            if (v12)
            {
              free(v12);
              v12 = 0;
            }

            v9 = *(a2 + 24);
            if (v9)
            {
              free(v9);
              *(a2 + 24) = 0;
            }

            v10 = *(a2 + 8);
            if (v10)
            {
              free(v10);
              *(a2 + 8) = 0;
            }

            return;
          }

          v5 = 478;
        }

        else
        {
          v5 = 486;
        }
      }

      else
      {
        v5 = 448;
      }
    }

    else
    {
      v5 = 500;
    }
  }

  else
  {
    v5 = 495;
  }

  sub_245479990(v5, "lpp_if.c");
}

void sub_245448798(uint64_t a1, int a2, char a3, int a4, const void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v16[0] = 1;
  v10 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14) = 0;
    _os_log_debug_impl(&dword_245396000, v10, OS_LOG_TYPE_DEBUG, "#posp,lpp,lpp_t_supl_pos_trigger", &v14, 2u);
  }

  if (!*(a1 + 4))
  {
    goto LABEL_11;
  }

  if (!a5 || a4 < 1)
  {
    sub_245479990(608, "lpp_if.c");
    sub_245479990(609, "lpp_if.c");
LABEL_11:
    sub_245449E8C(a1, a2, 1, 0, 0);
    goto LABEL_12;
  }

  v16[1] = a2;
  v11 = malloc_type_calloc(1uLL, a4 & 0x7FFFFFFF, 0x57089378uLL);
  bzero(v11, a4 & 0x7FFFFFFF);
  v15 = v11;
  v14 = a4;
  memcpy(v11, a5, a4 & 0x7FFFFFFF);
  v12 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v18 = a4;
    _os_log_debug_impl(&dword_245396000, v12, OS_LOG_TYPE_DEBUG, "#posp,lpp,lpp_t_supl_pos_trigger,calling lpp_process_downlink_message,airMsgLen,%d", buf, 8u);
  }

  sub_245449690(a1, v16, a3, &v14);
  if (v15)
  {
    free(v15);
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_24544896C(uint64_t a1, int a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  bzero(v30, 0x368uLL);
  v28 = 0u;
  v29 = 0u;
  *__src = 0u;
  v27 = 0u;
  v24 = 0u;
  *size = 0u;
  v22 = 0;
  v23 = 0;
  v21 = 0xFFFFFFFF00000000;
  v13 = a5 | a7;
  if (!(a5 | a7))
  {
LABEL_19:
    if (a4)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (a5)
  {
    sub_2454524C4(a5);
  }

  v22 = a5;
  v23 = a7;
  if (a4 == 1)
  {
    LODWORD(v21) = 1;
    HIDWORD(v21) = a2;
    v14 = **(a1 + 72);
    if (v14)
    {
      while (*(v14 + 4) != 1 || *(v14 + 5) != a2)
      {
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = sub_2454525E0(a1, &v21, a3, 255, 0);
      if (!v14)
      {
        goto LABEL_25;
      }
    }

    v20 = 1;
    v15 = v14[24];
    HIBYTE(v20) = v14[24];
    v16 = **(v14 + 5);
    if (v16)
    {
      while (v16[16] != 1 || v16[17] != v15)
      {
        v16 = *v16;
        if (!v16)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_15;
    }

LABEL_14:
    v16 = sub_24544A168(v14, &v20, 6u);
    if (v16)
    {
LABEL_15:
      *(v16 + 6) = 1;
      goto LABEL_17;
    }

LABEL_25:
    sub_245479990(882, "lpp_if.c");
    goto LABEL_26;
  }

  v31 = 1;
  v32 = 0;
  v33 = 2;
  v34 = 0;
  v16 = v30;
LABEL_17:
  if (sub_24544BB5C(a1, v16, &v22, &v27) == 1)
  {
    v17 = v28;
    size[0] = v28;
    *(v28 + 5) = 0;
    *(v17 + 9) = 0;
    v13 = sub_24547903C(4, 7u, __src, 0, &size[1], v17, 0, 0) == 0;
    goto LABEL_19;
  }

  v13 = 0;
  if (a4)
  {
LABEL_20:
    if (v13)
    {
      sub_245449FC8(a1, SHIDWORD(v21), 0, &size[1]);
      goto LABEL_27;
    }

LABEL_26:
    HIDWORD(v21) = a2;
    sub_245449FC8(a1, a2, 1, 0);
    sub_245479990(924, "lpp_if.c");
    goto LABEL_27;
  }

LABEL_23:
  v18 = LODWORD(size[1]);
  if (LODWORD(size[1]))
  {
    v19 = malloc_type_calloc(1uLL, LODWORD(size[1]), 0x57089378uLL);
    bzero(v19, v18);
    memcpy(v19, __src[0], SLODWORD(size[1]));
  }

LABEL_27:
  sub_24545438C(size);
}

void sub_245448BE4(uint64_t a1, int a2, char a3)
{
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  *size = 0u;
  *__src = 0u;
  v16 = 1;
  v17 = a2;
  v4 = **(a1 + 72);
  if (v4)
  {
    while (*(v4 + 4) != 1 || *(v4 + 5) != a2)
    {
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v15[0] = 1;
  }

  else
  {
LABEL_5:
    v4 = sub_2454525E0(a1, &v16, a3, 255, 0);
    v15[0] = 1;
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  v5 = v4[24];
  v15[1] = v4[24];
  v6 = **(v4 + 5);
  if (v6)
  {
    while (v6[16] != 1 || v6[17] != v5)
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v6 = sub_24544A168(v4, v15, 5u);
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  *(v6 + 6) = 1;
  if (sub_24544B9D8(a1, v6, 0, &v13) == 1)
  {
    v7 = *&v14[0];
    *(*&v14[0] + 5) = 0;
    *(v7 + 9) = 0;
    LODWORD(size[1]) = 0;
    if (sub_24547903C(4, 7u, __src, 0, &size[1], v7, 0, 0))
    {
      sub_245479990(1016, "lpp_if.c");
      v8 = 1;
      v9 = __src[0];
    }

    else
    {
      v4[113] = 1;
      v10 = LODWORD(size[1]);
      v9 = malloc_type_calloc(1uLL, LODWORD(size[1]), 0x57089378uLL);
      bzero(v9, v10);
      memcpy(v9, __src[0], SLODWORD(size[1]));
      v8 = 0;
      __src[0] = v9;
    }
  }

  else
  {
    v9 = 0;
    LODWORD(size[1]) = 0;
    __src[0] = 0;
    v8 = 1;
  }

  sub_245449DE4(a1, v17, v8, size[1], v9);
LABEL_19:
  sub_24545438C(v14);
}

void sub_245448DD0(uint64_t a1, int a2)
{
  v3 = **(a1 + 72);
  if (v3)
  {
    while (*(v3 + 16) != 1 || *(v3 + 20) != a2)
    {
      v3 = *v3;
      if (!v3)
      {
        return;
      }
    }

    sub_2454527F0(a1, v3);
  }
}

void sub_245448E0C(uint64_t a1, __int128 *a2, __int128 *a3, char a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = BYTE4(a5);
  v22 = *MEMORY[0x277D85DE8];
  *&v19 = 0x8000000080000000;
  *(&v19 + 1) = 0xFFFF00007FFFFFFFLL;
  LOWORD(v20[0]) = 255;
  WORD4(v20[0]) = -1;
  BYTE10(v20[0]) = -1;
  *(v20 + 2) = -1;
  BYTE6(v20[0]) = -1;
  memset(v20 + 11, 0, 32);
  v21 = 0;
  v17 = 0;
  v18 = 0;
  if ((a4 & 3) != 0)
  {
    v10 = a2[1];
    v19 = *a2;
    v20[0] = v10;
    v11 = *(a2 + 43);
    v12 = *a3;
    v13 = a3[1];
    v20[1] = a2[2];
    *(&v20[1] + 11) = v11;
    v20[3] = v12;
    v20[4] = v13;
    v14 = &v19;
    v17 = &v19;
    v21 = a4;
    if ((a4 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if ((a4 & 4) != 0)
  {
LABEL_3:
    v18 = a7;
  }

LABEL_4:
  if ((a5 & 0xFFFFFFFE) == 2)
  {
    if (v14)
    {
      sub_2454524C4(v14);
    }

    v16[0] = v8;
    v16[1] = a6;
    sub_2454515E4(a1, &v17, v16);
  }

  else
  {
    sub_245479990(1145, "lpp_if.c");
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_245448F48(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  *(&v16 + 4) = 0xFFFFFFFFLL;
  BYTE12(v16) = -1;
  *&v17 = 0xFF00000000;
  BYTE8(v17) = -1;
  if ((a3 & 0xFFFFFFFE) == 2 && BYTE4(a3) <= 1u)
  {
    v11[0] = BYTE4(a3);
    v11[1] = a4;
  }

  else
  {
    sub_245479990(1268, "lpp_if.c");
  }

  bzero(v12, 0x230uLL);
  v12[0] = 1;
  v13 = *a2;
  v22 = *(a2 + 264);
  v23 = a2[67];
  v6 = *(a2 + 70);
  v26 = *(a2 + 37);
  v24 = *(a2 + 272);
  v25 = v6;
  if ((v13 - 1) < 2)
  {
    v18 = *(a2 + 17);
    v19 = *(a2 + 21);
    *v20 = *(a2 + 25);
    *(&v20[3] + 2) = *(a2 + 114);
    v14 = *(a2 + 1);
    v15 = *(a2 + 5);
    v16 = *(a2 + 9);
    v17 = *(a2 + 13);
LABEL_9:
    v27[0] = v11;
    v27[1] = v12;
    sub_245449A34(a1, v27);
    return;
  }

  if (!v13)
  {
    v7 = *(a2 + 12);
    *&v20[27] = *(a2 + 13);
    v8 = *(a2 + 15);
    *&v20[31] = *(a2 + 14);
    *&v20[35] = v8;
    v9 = *(a2 + 8);
    *&v20[11] = *(a2 + 9);
    v10 = *(a2 + 11);
    *&v20[15] = *(a2 + 10);
    *&v20[19] = v10;
    *&v20[23] = v7;
    v21 = *(a2 + 32);
    *&v20[7] = v9;
    goto LABEL_9;
  }

  sub_245479990(1293, "lpp_if.c");
}

void sub_2454490F8(uint64_t a1, _OWORD *a2, uint64_t *a3, char a4)
{
  if (a3 && *(a1 + 176))
  {
    v7 = *a3;
    *(a1 + 192) = *(a3 + 2);
    *(a1 + 184) = v7;
    v8 = malloc_type_calloc(1uLL, 0x1CuLL, 0x57089378uLL);
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *v8 = 0;
    *(v8 + 6) = 0;
    *(a1 + 200) = v8;
    *(a1 + 208) = a4;
    *(a1 + 196) = 2;
    v9 = *(a2 + 12);
    *v8 = *a2;
    *(v8 + 12) = v9;
  }

  else
  {
    v10 = sub_2453B4548();
    sub_2453B4FFC(v10, a2);
    v11 = sub_2454616D4();
    v12 = 1000 * *(a2 + 12);

    sub_245461AD4(v11, v12, 1);
  }
}

void sub_2454491C4(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v33[20] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1;
      memset(&__str, 0, sizeof(__str));
      v23 = *MEMORY[0x277D82818];
      v5 = *(MEMORY[0x277D82818] + 64);
      v6 = *(MEMORY[0x277D82818] + 72);
      do
      {
        sub_2453A2FDC(buf);
        v7 = *&v28[2];
        *(&v29 + *(*&v28[2] - 24)) = *(&v29 + *(*&v28[2] - 24)) & 0xFFFFFFB5 | 8;
        *(v31 + *(v7 - 24) + 6) = 2;
        v8 = &v28[*(v7 - 24) + 2];
        if (*(v8 + 36) == -1)
        {
          std::ios_base::getloc(&v28[*(v7 - 24) + 2]);
          v9 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
          (v9->__vftable[2].~facet_0)(v9, 32);
          std::locale::~locale(&v24);
        }

        *(v8 + 36) = 48;
        MEMORY[0x245D69F60](&v28[2], *v4);
        std::stringbuf::str();
        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v24;
        }

        else
        {
          v10 = v24.__r_.__value_.__r.__words[0];
        }

        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v24.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v10, size);
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        *buf = v23;
        *&buf[*(v23 - 24)] = v5;
        *&v28[2] = v6;
        v29 = MEMORY[0x277D82878] + 16;
        if (v32 < 0)
        {
          operator delete(*(&v31[6] + 6));
        }

        v29 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v30);
        std::iostream::~basic_iostream();
        MEMORY[0x245D6A070](v33);
        ++v4;
        --v3;
      }

      while (v3);
      v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        v13 = __str.__r_.__value_.__l.__size_ / 0x1F4;
        v14 = __str.__r_.__value_.__l.__size_ % 0x1F4;
      }

      else
      {
        v13 = 0;
        v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      v15 = 0;
      if (v14)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = v13;
      }

      if (a3)
      {
        v17 = "In";
      }

      else
      {
        v17 = "Out";
      }

      v18 = 1;
      if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_29;
      }

      while (v15 < v12)
      {
        while (1)
        {
          std::string::basic_string(&v24, &__str, v15, 0x1F4uLL, buf);
          v19 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
          {
            v20 = &v24;
            if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = v24.__r_.__value_.__r.__words[0];
            }

            *buf = 134284291;
            *&buf[4] = v18;
            v27 = 2049;
            *v28 = v16;
            *&v28[8] = 2081;
            v29 = v20;
            v30 = 2081;
            v31[0] = v17;
            _os_log_impl(&dword_245396000, v19, OS_LOG_TYPE_DEFAULT, "#lpp,#cplane,#pdu,%{private}zu,of,%{private}zu,%{private}s,%{private}s", buf, 0x2Au);
          }

          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }

          v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          v15 += 500;
          ++v18;
          if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            break;
          }

LABEL_29:
          if (v15 >= __str.__r_.__value_.__l.__size_)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
            goto LABEL_39;
          }
        }
      }
    }
  }

LABEL_39:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_245449624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  std::locale::~locale(&a13);
  sub_245445890(&a25, MEMORY[0x277D82818]);
  MEMORY[0x245D6A070](v25 + 128);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_245449690(uint64_t a1, _DWORD *a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 && (v6 = *a4) != 0)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    *&v16 = v4;
    DWORD2(v15) = v6;
    v10 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
    bzero(v10, 0xA28uLL);
    *&v15 = v10;
    v13 = sub_245478E8C(4u, 7u, v4, v6, v10, 0, v12, 0, 0);
    v11 = sub_2454525A0(a1, a2, a3, v13, v10);
    if (v11)
    {
      (*(v11 + 6))(a1, v11, a4, &v13, &v14);
      v10 = v15;
    }

    else
    {
      sub_245479990(176, "lpp_control.c");
    }

    sub_2454554AC(v10, &unk_278E53388);
    free(v15);
  }

  else
  {

    sub_245479990(126, "lpp_control.c");
  }
}

void sub_245449800(uint64_t a1, int a2)
{
  if (*(a1 + 4) == 2)
  {
    v3 = **(a1 + 72);
    if (v3)
    {
      v5 = 0;
      do
      {
        while (1)
        {
          v6 = v3;
          v3 = *v3;
          if (a2 <= 1)
          {
            break;
          }

          if (a2 == 2)
          {
            if (!*(v6 + 115))
            {
              goto LABEL_14;
            }

            goto LABEL_17;
          }

          if (a2 == 3)
          {
            if (v5 == 1 || !*(v6 + 16))
            {
              goto LABEL_14;
            }

            goto LABEL_17;
          }

LABEL_13:
          if (v5 == 1)
          {
            goto LABEL_14;
          }

LABEL_17:
          v5 = 0;
          if (!v3)
          {
            return;
          }
        }

        if (a2)
        {
          if (a2 == 1)
          {
            v5 = *(v6 + 114);
          }

          goto LABEL_13;
        }

LABEL_14:
        sub_2454527F0(a1, v6);
        v5 = 1;
      }

      while (v3);
    }
  }
}

void sub_2454498C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    if (*(a1 + 45) == 1)
    {
      v5 = (*a3 + 2);
      v6 = malloc_type_calloc(1uLL, v5, 0x57089378uLL);
      bzero(v6, v5);
      v7 = *a3;
      *v6 = bswap32(*a3) >> 16;
      if (v6)
      {
        v7 = *a3;
      }

      memcpy(v6 + 1, *(a3 + 8), v7);
      v8 = malloc_type_calloc(1uLL, 5uLL, 0x57089378uLL);
      v9 = v8;
      *(v8 + 1) = 0;
      *v8 = 4;
      v10 = *(a2 + 4);
      if (((v8 + 1) & 3) != 0)
      {
        v8[4] = v10;
        v8[3] = BYTE1(*(a2 + 4));
        v8[2] = *(a2 + 6);
        v8[1] = *(a2 + 7);
      }

      else
      {
        *(v8 + 1) = bswap32(v10);
      }

      sub_24547AB04(*a3, *(a3 + 8));
      free(v9);

      free(v6);
    }

    else
    {

      sub_245479990(357, "lpp_control.c");
    }
  }
}

void sub_245449A34(uint64_t a1, void *a2)
{
  v2 = **(a1 + 72);
  if (!v2)
  {
LABEL_5:
    sub_245479990(699, "lpp_control.c");
    return;
  }

  while (*(v2 + 4) != **a2 || *(v2 + 5) != *(*a2 + 4))
  {
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  v3 = a2[1];
  if (*v3 == 1)
  {
    if (*(v2 + 110))
    {
      v4 = *v2[5];
      if (v4)
      {
        while (*(v4 + 16) != *(v2 + 104) || *(v4 + 17) != *(v2 + 105))
        {
          v4 = *v4;
          if (!v4)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    if ((*(v3 + 416) == 1 || *(v3 + 320) == 1 && !*(v3 + 328)) && *(v2 + 111))
    {
      for (i = *v2[5]; i; i = *i)
      {
        if (*(i + 16) == *(v2 + 106) && *(i + 17) == *(v2 + 107))
        {
          break;
        }
      }
    }

    else
    {
      i = 0;
    }

    if ((*(v3 + 552) == 1 || *(v3 + 417) == 1 && *(v3 + 424) == 3) && *(v2 + 112))
    {
      for (j = *v2[5]; j; j = *j)
      {
        if (*(j + 16) == *(v2 + 108) && *(j + 17) == *(v2 + 109))
        {
          break;
        }
      }
    }

    else
    {
      j = 0;
    }

    if (j)
    {
      v4 = j;
    }

    else
    {
      v4 = i;
    }

    if (v4)
    {
LABEL_37:
      sub_24544AAC8(a1, v4, 7, v3);
      return;
    }
  }

LABEL_38:
  sub_245479990(694, "lpp_control.c");
}

void sub_245449BCC(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 4);
    v9[0] = 67109376;
    v9[1] = v8;
    v10 = 1024;
    v11 = a2;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#posp,#lpp,entered lpp_state_control,state,%d,event,%d", v9, 0xEu);
  }

  v5 = *(a1 + 4);
  if (v5 == 2)
  {
    if (a2 == 1 && !**(a1 + 72))
    {
      *(a1 + 4) = 1;
      v6 = 2;
      goto LABEL_13;
    }
  }

  else if (v5 == 1)
  {
    if (!a2)
    {
      *(a1 + 4) = 2;
      v6 = 1;
      goto LABEL_13;
    }
  }

  else if (!v5 && a2 == 2)
  {
    *(a1 + 4) = 1;
    v6 = 0;
LABEL_13:
    sub_245451DB0(v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_245449D00(uint64_t a1, _DWORD *a2)
{
  v4 = **(a1 + 96);
  while (v4)
  {
    while (1)
    {
      v5 = v4;
      v4 = *v4;
      if (a2)
      {
        break;
      }

      v6 = *(v5 + 5);
LABEL_8:
      sub_245452408(*(v5[3] + 32), v6);
      v7 = v5[3];
      v8 = v7[1];
      if (v8)
      {
        free(v8);
        v7[1] = 0;
        v7 = v5[3];
      }

      v9 = v7[3];
      if (!v9 || (free(v9), v7[3] = 0, (v7 = v5[3]) != 0))
      {
        free(v7);
        v5[3] = 0;
      }

      sub_245453ED0(*(a1 + 96), v5);
      free(v5);
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    if (*a2 == *(v5 + 4))
    {
      v6 = a2[1];
      if (v6 == *(v5 + 5))
      {
        goto LABEL_8;
      }
    }
  }

LABEL_14:
  if (!a2)
  {
    *(a1 + 104) = 0;
  }
}

void sub_245449DE4(int a1, int a2, int a3, int a4, char *__src)
{
  __p = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  v8 = a3 != 0;
  v7 = a2;
  sub_2453ADF3C(&__p, __src, &__src[a4], a4);
  v12 = 0;
  v6 = sub_245443760();
  sub_245443A2C(v6, &v7);
  if (__src)
  {
    free(__src);
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_245449E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245449E8C(uint64_t a1, int a2, int a3, int a4, char *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  __p = 0;
  v13 = 0;
  v14 = 0;
  v9 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v19 = a2;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&dword_245396000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp SessionID,%u,result,%u", buf, 0xEu);
  }

  v15 = a3 != 0;
  v16 = a2;
  v17 = 0;
  sub_2453ADF3C(&__p, a5, &a5[a4], a4);
  sub_245443760();
  v10 = sub_24546A68C();
  sub_24546B598(v10, &__p);
  if (a5)
  {
    free(a5);
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_245449FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245449FC8(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  v6 = 0;
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      v9 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        v13[0] = 67109376;
        v13[1] = a2;
        LOWORD(__p) = 1024;
        *(&__p + 2) = 0;
        _os_log_impl(&dword_245396000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp SessionID,%u,result,%u", v13, 0xEu);
      }

      v10 = *a4;
      v6 = malloc_type_calloc(1uLL, v10, 0x57089378uLL);
      bzero(v6, v10);
      sub_2454683F0("send_lpm_supl_ad_rsp", 143, v6, *a4, *(a4 + 1), *a4);
      v8 = *a4;
    }
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  v13[0] = a2;
  v17 = a3 != 0;
  v18 = 0;
  sub_2453ADF3C(&__p, v6, v6 + v8, v8);
  v11 = sub_245443760();
  sub_245443890(v11, v13);
  if (v6)
  {
    free(v6);
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v12 = *MEMORY[0x277D85DE8];
}

char *sub_24544A168(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  if (!a1)
  {
    v7 = 1243;
LABEL_9:
    sub_245479990(v7, "lpp_transaction.c");
    return 0;
  }

  if (!a2)
  {
    v7 = 1248;
    goto LABEL_9;
  }

  if (*a2 == 1)
  {
    v8 = 0;
    if (a3 > 5)
    {
      if (a3 == 7)
      {
        v6 = 0;
        v5 = 5;
      }

      else
      {
        if (a3 != 6)
        {
          return v8;
        }

        v6 = sub_24544A31C;
        v5 = 2;
      }
    }

    else if (a3 == 1)
    {
      ++*(a1 + 24);
      v6 = sub_24544A31C;
      v5 = 3;
    }

    else
    {
      if (a3 != 5)
      {
        return v8;
      }

      v5 = 1;
      v6 = 0;
    }

    goto LABEL_21;
  }

  if (*a2 || a3 >= 3)
  {
    return 0;
  }

  v5 = dword_24548B11C[a3];
  v6 = qword_28585A4C8[a3];
LABEL_21:
  v8 = malloc_type_calloc(1uLL, 0x368uLL, 0x57089378uLL);
  bzero(v8, 0x368uLL);
  v10 = *a2;
  *(v8 + 8) = *a2;
  if (v10 == 1)
  {
    v11 = *(a1 + 24);
    v8[17] = v11;
    v8[18] = 1;
    *(a1 + 24) = v11 + 1;
  }

  *(v8 + 5) = v5;
  *(v8 + 28) = *(a1 + 16);
  *(v8 + 6) = 0;
  *(v8 + 108) = v6;
  sub_245453E88(*(a1 + 40), v8);
  sub_245451EF4(v8, 0, 0);
  return v8;
}

void sub_24544A31C(uint64_t a1, _DWORD *a2)
{
  if ((a2[5] & 0xFFFFFFFE) == 2)
  {
    v2 = **(a1 + 72);
    if (v2)
    {
      while (*(v2 + 4) != a2[7] || *(v2 + 5) != a2[8])
      {
        v2 = *v2;
        if (!v2)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      sub_245479990(4155, "lpp_transaction.c");
    }
  }

  else
  {
    sub_245479990(4162, "lpp_transaction.c");
  }
}

void sub_24544A394(uint64_t a1, _DWORD *a2, int a3)
{
  if (a2[5] != 4)
  {
    v7 = 4020;
    goto LABEL_8;
  }

  v4 = **(a1 + 72);
  if (!v4)
  {
LABEL_6:
    v7 = 4011;
LABEL_8:

    sub_245479990(v7, "lpp_transaction.c");
    return;
  }

  while (*(v4 + 4) != a2[7] || *(v4 + 5) != a2[8])
  {
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  v9 = 0;
  v16 = 0;
  v10 = a2 + 12;
  v15 = 0;
LABEL_12:
  v11 = v4 + 2 * v8 + 105;
  do
  {
    if (v10[v8] == 1)
    {
      v10[v8] = 4;
      *(v11 - 1) = 0;
      *(v4 + v8 + 110) = 0;
      v9 = 1;
      *(&v15 + v8) = 1;
      if (v8++ != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    ++v8;
    v11 += 2;
  }

  while (v8 != 3);
  if ((v9 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v13 = 0;
  v14 = v4[2];
  do
  {
    if (*(&v15 + v13) == 1)
    {
      sub_245447E7C(a1, v14, v13, a3);
    }

    ++v13;
  }

  while (v13 != 3);
LABEL_24:
  a2[6] = 2;

  sub_24544E4E4(a2);
}

void sub_24544A530(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *(a2 + 24);
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      *(a2 + 24) = 2;

      sub_245451EF4(a2, v6, 2);
      return;
    }

    v7 = *(a2 + 864);
    if (v7)
    {
      v7(a1, a2, a3, a4);
      *(a2 + 864) = 0;
    }
  }

  *(a2 + 24) = 2;
  sub_245451EF4(a2, v6, 2);
  v8 = **(a1 + 72);
  if (v8)
  {
    while (*(v8 + 16) != *(a2 + 28) || *(v8 + 20) != *(a2 + 32))
    {
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    sub_245453960(a1, v8, (a2 + 16));
  }

  else
  {
LABEL_9:

    sub_245479990(1516, "lpp_transaction.c");
  }
}

uint64_t sub_24544A660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v30 = 1574;
    goto LABEL_69;
  }

  if (!a3 || (v4 = *(a3 + 16)) == 0)
  {
    v30 = 1580;
LABEL_69:
    sub_245479990(v30, "lpp_transaction.c");
    return 0;
  }

  v8 = (v4 + 24);
  v7 = *(v4 + 6);
  if (v7 == 7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 8;
  }

  if (v7 == 6)
  {
    v10 = 4;
  }

  else
  {
    v10 = v9;
  }

  if (v7 == 4)
  {
    v11 = 2;
  }

  else
  {
    v11 = v10;
  }

  if (v7 == 3)
  {
    v12 = 1;
  }

  else
  {
    v12 = 8;
  }

  if (v7)
  {
    v13 = v7 == 3;
  }

  else
  {
    v13 = 1;
  }

  if (!v7)
  {
    v12 = 0;
  }

  v14 = v7 <= 3;
  v15 = v7 > 3 && v7 == 4;
  if (v7 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = v7 == 4;
  }

  if (v14)
  {
    v17 = v12;
  }

  else
  {
    v17 = v11;
  }

  v18 = **(a2 + 40);
  if (v18)
  {
    v19 = *v4;
    v20 = **(a2 + 40);
    while (v20[16] != v19 || v20[17] != v4[1])
    {
      v20 = *v20;
      if (!v20)
      {
        while (1)
        {
          if (*(v18 + 16) == v19)
          {
            v21 = v16 ? dword_24548B11C[v17] : 6;
            if (*(v18 + 5) == v21 && *(v18 + 6) == 2)
            {
              break;
            }
          }

          v18 = *v18;
          if (!v18)
          {
            goto LABEL_42;
          }
        }

        v20 = v18;
        goto LABEL_73;
      }
    }

    if (*(v20 + 6) != 2)
    {
      goto LABEL_75;
    }

LABEL_73:
    sub_24544AA28(a1, v20);
    if (!v15)
    {
      goto LABEL_74;
    }

    goto LABEL_43;
  }

LABEL_42:
  if (v15)
  {
LABEL_43:
    if (*(a2 + 16) != 1)
    {
      v22 = *(a2 + 40);
      v23 = *v22;
      if (*v22)
      {
        v24 = 0;
        v25 = *v22;
        do
        {
          if (*(v25 + 20) == 4 && *(v25 + 24) == 1)
          {
            ++v24;
          }

          v25 = *v25;
        }

        while (v25);
        if (v24)
        {
          do
          {
            if (*(v23 + 20) == 4 && *(v23 + 24) == 1)
            {
              v26 = *v23;
              v27 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
              bzero(v27, 0xA28uLL);
              v27[1] = 257;
              *v27 = *(v23 + 16);
              *(v27 + 2592) = 1;
              *(v27 + 6) = 5;
              *(v27 + 9) = 1;
              *(v27 + 6) = 1;
              *(v27 + 8) = 0;
              *(v27 + 10) = 0;
              *(v27 + 144) = 1;
              *(v27 + 97) = 256;
              v34[0] = 0u;
              v34[2] = 0u;
              v34[1] = v27;
              v28 = **(a1 + 72);
              if (v28)
              {
                while (*(v28 + 4) != *(v23 + 28) || *(v28 + 5) != *(v23 + 32))
                {
                  v28 = *v28;
                  if (!v28)
                  {
                    goto LABEL_60;
                  }
                }

                (v28[7])(a1);
              }

LABEL_60:
              sub_24544AA28(a1, v23);
              --v24;
            }

            else
            {
              v26 = *v23;
            }

            if (v26)
            {
              v29 = v24 == 0;
            }

            else
            {
              v29 = 1;
            }

            v23 = v26;
          }

          while (!v29);
        }
      }
    }
  }

LABEL_74:
  v20 = sub_24544A168(a2, *(a3 + 16), v17);
  if (v20)
  {
LABEL_75:
    v32 = *(v20 + 5);
    if (v32)
    {
      if (!*(a2 + 113) && *(a2 + 16) != 1)
      {
        LOWORD(v34[0]) = 1;
        v33 = sub_24544A168(a2, v34, 5u);
        if (v33)
        {
          sub_24544AAC8(a1, v33, 5, 0);
          *(a2 + 113) = 1;
        }

        v32 = *(v20 + 5);
      }

      if (v32 == 3)
      {
        v20[40] = *(*(a3 + 16) + 3);
      }

      else if (v32 == 2)
      {
        v20[41] = *(*(a3 + 16) + 3);
      }
    }

    else
    {
      *(a2 + 113) = 1;
    }

    sub_24544AAC8(a1, v20, v17, v8);
  }

  return 5;
}

void sub_24544AA28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = **(a1 + 72);
    if (v3)
    {
      while (*(v3 + 4) != *(a2 + 28) || *(v3 + 5) != *(a2 + 32))
      {
        v3 = *v3;
        if (!v3)
        {
          goto LABEL_6;
        }
      }

      sub_24544A530();
      sub_245453ED0(v3[5], a2);
    }

    else
    {
LABEL_6:
      sub_24544A530();
    }

    free(a2);
  }
}

void sub_24544AAC8(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v8 = qword_2813CF020;
  if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_40:
    v11 = 1729;
    goto LABEL_41;
  }

  *buf = 0;
  _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#posp,#lpp,entered lpp_transaction_act", buf, 2u);
  if (!a2)
  {
    goto LABEL_40;
  }

LABEL_3:
  v27 = 0;
  *buf = 0u;
  memset(v26, 0, sizeof(v26));
  v10 = *(a2 + 20);
  if (v10 == 6)
  {
    v11 = 1740;
LABEL_41:
    sub_245479990(v11, "lpp_transaction.c");
    return;
  }

  v12 = *(a2 + 24);
  v13 = *(*(&off_278E36E70 + v10) + 8 * v12 + a3);
  if (v13 == 2)
  {
    sub_245479990(1770, "lpp_transaction.c");
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (v13 == 1)
  {
    v15 = 1;
    sub_24544A530(a1, a2, 1, 1u);
    v16 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
    bzero(v16, 0xA28uLL);
    *(&v26[0] + 1) = v16;
    *(v16 + 2) = 1;
    *v16 = *(a2 + 16);
    *(v16 + 9) = 0;
    *(v16 + 3) = 0;
    *(v16 + 2592) = 1;
    *(v16 + 4) = 0;
    *(v16 + 6) = 7;
    *(v16 + 8) = 0;
    v16[20] = 256;
    buf[0] = 1;
    goto LABEL_19;
  }

  if (v13)
  {
    goto LABEL_18;
  }

  if (!v12)
  {
    *(a2 + 24) = 1;
  }

  if ((a3 & 0xF8) != 0)
  {
    goto LABEL_18;
  }

  v14 = 0;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 != 4)
      {
        v14 = 1;
        buf[0] = 1;
        sub_24544B9D8(a1, a2, v9, &buf[8]);
        goto LABEL_56;
      }

LABEL_47:
      sub_24544A530(a1, a2, 1, 2u);
      goto LABEL_48;
    }

    if (a3 == 6)
    {
      v14 = 1;
      buf[0] = 1;
      sub_24544BB5C(a1, a2, a4, &buf[8]);
      goto LABEL_56;
    }

    if (a3 != 7)
    {
      goto LABEL_56;
    }

    v23 = sub_24544E63C(a1, a2, a4, buf);
LABEL_54:
    v14 = v23;
    goto LABEL_56;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      goto LABEL_47;
    }

    buf[0] = 1;
    v23 = sub_24544D3EC(a1, a2, a4, &buf[8]);
    goto LABEL_54;
  }

  if (!a3)
  {
    v14 = 1;
    buf[0] = 1;
    sub_24544AEF0(a1, a2, a4, &buf[8]);
    goto LABEL_56;
  }

  if (a3 == 1)
  {
    buf[0] = 1;
    sub_24544C844(a1, a2, a4);
LABEL_48:
    v14 = 0;
  }

LABEL_56:
  v15 = v14 != 0;
LABEL_19:
  v17 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v24 = 0;
    _os_log_debug_impl(&dword_245396000, v17, OS_LOG_TYPE_DEBUG, "#posp,#lpp,calling lpp_mon_transaction", v24, 2u);
  }

  sub_245451EF4(a2, v12, *(a2 + 24));
  v18 = buf[0];
  if (v15)
  {
    if (buf[0])
    {
      v19 = 0;
      do
      {
        v20 = **(a1 + 72);
        if (v20)
        {
          while (*(v20 + 4) != *(a2 + 28) || *(v20 + 5) != *(a2 + 32))
          {
            v20 = *v20;
            if (!v20)
            {
              goto LABEL_30;
            }
          }

          (v20[7])(a1);
          LODWORD(v18) = buf[0];
        }

LABEL_30:
        ++v19;
      }

      while (v19 < v18);
    }
  }

  else
  {
    if (buf[0])
    {
      v21 = 0;
      v22 = v26 + 1;
      do
      {
        if (*v22)
        {
          free(*v22);
          *v22 = 0;
        }

        ++v21;
        v22 += 6;
      }

      while (v21 < v18);
    }

    if (*(a2 + 24) == 2)
    {
      sub_24544AA28(a1, a2);
    }
  }
}

void sub_24544AEF0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
  bzero(v8, 0xA28uLL);
  *(a4 + 16) = v8;
  *(v8 + 2592) = 1;
  *(v8 + 6) = 1;
  v9 = *(a4 + 16);
  *(v9 + 2) = 1;
  *v9 = *(a2 + 16);
  v10 = *(a4 + 16);
  *(v10 + 3) = 1;
  *(v10 + 6) = 1;
  *(v10 + 8) = 256;
  if (*(a3 + 8))
  {
    *(v10 + 32) = 1;
  }

  else
  {
    *(v10 + 32) = 0;
    if (*(a3 + 16))
    {
      *(v10 + 40) = 1;
    }

    else
    {
      *(v10 + 40) = 0;
      *(v10 + 80) = 0;
      if ((a1[8] || a1[10] || a1[46]) && *(a3 + 52) == 1)
      {
        *(v10 + 320) = 1;
        *(v10 + 248) = *(a3 + 50);
        *(v10 + 112) = *(a3 + 49);
        if ((((a1[11] | a1[9]) | a1[47]) & 6) != 0 && *(a3 + 51) == 1)
        {
          *(v10 + 260) = 1;
          *(v10 + 265) = 1;
        }

        else
        {
          *(v10 + 260) = 0;
          *(v10 + 265) = 0;
        }
      }

      else
      {
        *(v10 + 320) = 0;
      }

      if (a1[44] != 1 || (v11 = *(a3 + 68), v11 != 1))
      {
        LOBYTE(v11) = 0;
      }

      *(v10 + 472) = v11;
      if (a1[61] != 1 || (v12 = *(a3 + 136), v12 != 1))
      {
        LOBYTE(v12) = 0;
      }

      *(v10 + 832) = v12;
      *(v10 + 504) = 0;
      *(v10 + 1032) = 0;
      *(v10 + 1224) = 0;
      *(v10 + 1400) = 0;
      *(v10 + 1464) = 0;
      sub_24544B0A8(a1, v10 + 48);
    }
  }

  sub_245451EF4(a2, *(a2 + 24), 2);
  *(a2 + 24) = 2;
}

void sub_24544B0A8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 272) == 1)
  {
    v4 = *(a1 + 8) == 1;
    if (*(a1 + 8) == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    if (*(a1 + 10) == 1)
    {
      v4 = v5;
    }

    if (*(a1 + 46) == 1)
    {
      v6 = (v4 + 1);
    }

    else
    {
      v6 = v4;
    }

    if (*(a2 + 64) == 1 && v6 != 0)
    {
      *(a2 + 56) = v6;
      *(a2 + 60) = 1;
      v8 = malloc_type_calloc(1uLL, 0xA0uLL, 0x57089378uLL);
      *(v8 + 8) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 136) = 0u;
      *(v8 + 19) = 0;
      *v8 = 0;
      *(a2 + 40) = v8;
      *(a2 + 48) = v8;
      if (v6 >= 2u)
      {
        v9 = v6 - 1;
        do
        {
          v10 = malloc_type_calloc(1uLL, 0xA0uLL, 0x57089378uLL);
          *v10 = 0u;
          v10[1] = 0u;
          v10[2] = 0u;
          v10[3] = 0u;
          v10[4] = 0u;
          v10[5] = 0u;
          v10[6] = 0u;
          v10[7] = 0u;
          v10[8] = 0u;
          v10[9] = 0u;
          **(a2 + 48) = v10;
          *(a2 + 48) = v10;
          --v9;
        }

        while (v9);
        v8 = *(a2 + 40);
      }

      if (*(a1 + 8) == 1)
      {
        v8[8] = 0;
        v8[32] = 0;
        sub_245453F34((v8 + 40), 3uLL, *(a1 + 9));
        sub_245453F34((v8 + 56), 8uLL, 0x80u);
        *(v8 + 129) = 0;
        v8 = *v8;
      }

      if (*(a1 + 10) == 1)
      {
        v8[8] = 4;
        v8[32] = 0;
        sub_245453F34((v8 + 40), 3uLL, *(a1 + 11));
        sub_245453F34((v8 + 56), 8uLL, 0x80u);
        *(v8 + 129) = 0;
        v8 = *v8;
      }

      if (*(a1 + 46) == 1)
      {
        v8[8] = 5;
        v8[32] = 0;
        sub_245453F34((v8 + 40), 3uLL, *(a1 + 47));
        sub_245453F34((v8 + 56), 8uLL, 0x80u);
        *(v8 + 129) = 0;
      }
    }

    if (*(a2 + 200) == 1)
    {
      v11 = *(a1 + 50) & 1;
      *(a2 + 112) = v11;
      v12 = *(a1 + 8) == 1;
      if (*(a1 + 10) == 1)
      {
        v12 = 5;
      }

      if (*(a1 + 46) == 1)
      {
        v13 = 6;
      }

      else
      {
        v13 = v12;
      }

      if (v13 && v6)
      {
        if (v11)
        {
          *(a2 + 72) = v13;
          *(a2 + 76) = 1;
          v14 = malloc_type_calloc(1uLL, v13, 0x57089378uLL);
          bzero(v14, v13);
          *(a2 + 80) = v14;
          if (*(a1 + 8) == 1)
          {
            *v14 = 1;
          }

          if (*(a1 + 10) == 1)
          {
            *(*(a2 + 80) + 4) = 1;
          }

          if (*(a1 + 46) == 1)
          {
            *(*(a2 + 80) + 5) = 1;
          }

          *(a2 + 104) = 0;
        }

        else
        {
          *(a2 + 104) = 0;
          *(a2 + 88) = 0u;
          *(a2 + 72) = 0u;
        }

        v15 = *(a1 + 50);
        *(a2 + 120) = (v15 & 2) != 0;
        if ((v15 & 4) != 0)
        {
          *(a2 + 144) = 1;
          sub_245453F34(a2 + 128, 1uLL, 1u);
        }

        else
        {
          *(a2 + 128) = 0;
          *(a2 + 136) = 0;
          *(a2 + 144) = 0;
        }

        *(a2 + 152) = 0;
        *(a2 + 192) = v6;
        *(a2 + 196) = 1;
        v16 = malloc_type_calloc(1uLL, 0x270uLL, 0x57089378uLL);
        bzero(v16 + 8, 0x268uLL);
        *v16 = 0;
        *(a2 + 176) = v16;
        *(a2 + 184) = v16;
        if (v6 >= 2u)
        {
          v17 = v6 - 1;
          do
          {
            v18 = malloc_type_calloc(1uLL, 0x270uLL, 0x57089378uLL);
            bzero(v18, 0x270uLL);
            **(a2 + 184) = v18;
            *(a2 + 184) = v18;
            --v17;
          }

          while (v17);
          v16 = *(a2 + 176);
        }

        if (*(a1 + 8) == 1)
        {
          v16[8] = 0;
          v16[10] = 0;
          v16[16] = 0;
          v16[72] = 0;
          if (*(a1 + 52))
          {
            v16[128] = 1;
            v16[96] = 1;
            v19 = malloc_type_calloc(1uLL, 2uLL, 0x57089378uLL);
            *v19 = 0;
            *(v16 + 11) = v19;
            *(v16 + 10) = 0x100000002;
            v19[1] |= 1u;
            v16[120] = 1;
            v20 = malloc_type_calloc(1uLL, 2uLL, 0x57089378uLL);
            *v20 = 0;
            *(v16 + 14) = v20;
            *(v16 + 13) = 0x100000002;
            v20[1] |= 1u;
          }

          else
          {
            v16[128] = 0;
            *(v16 + 6) = 0u;
            *(v16 + 7) = 0u;
            *(v16 + 5) = 0u;
          }

          v21 = 0;
          v16[144] = 0;
          v22 = 149;
          v23 = *(a1 + 52);
          if ((*(a1 + 9) & 1) != 0 && (v23 & 4) != 0)
          {
            v21 = 1;
            v16[149] = 1;
            v16[146] = 1;
            v22 = 148;
          }

          v16[v22] = v21;
          if ((v23 & 8) != 0)
          {
            v16[176] = 1;
            v16[168] = 1;
            v24 = malloc_type_calloc(1uLL, 2uLL, 0x57089378uLL);
            *v24 = 0;
            *(v16 + 20) = v24;
            *(v16 + 19) = 0x100000002;
            v24[1] |= 1u;
          }

          else
          {
            *(v16 + 19) = 0;
            *(v16 + 20) = 0;
            v16[176] = 0;
            *(v16 + 21) = 0;
          }

          if ((*(a1 + 52) & 0x10) != 0)
          {
            v16[208] = 1;
            v16[200] = 1;
            v25 = malloc_type_calloc(1uLL, 1uLL, 0x57089378uLL);
            *v25 = 0;
            *(v16 + 24) = v25;
            *(v16 + 23) = 0x100000001;
            *v25 |= 1u;
          }

          else
          {
            *(v16 + 23) = 0;
            *(v16 + 24) = 0;
            v16[208] = 0;
            *(v16 + 25) = 0;
          }

          v16[136] = (*(a1 + 52) & 2) != 0;
          v16[216] = 0;
          v16 = *v16;
        }

        if (*(a1 + 10) == 1)
        {
          v16[8] = 4;
          v16[10] = 0;
          v26 = *(a1 + 54);
          v16[16] = (v26 & 0x20) != 0;
          v16[72] = 0;
          if (v26)
          {
            v16[128] = 1;
            v16[96] = 1;
            v27 = malloc_type_calloc(1uLL, 4uLL, 0x57089378uLL);
            *v27 = 0;
            *(v16 + 11) = v27;
            *(v16 + 10) = 0x100000004;
            v27[3] |= 1u;
            v16[120] = 1;
            v28 = malloc_type_calloc(1uLL, 4uLL, 0x57089378uLL);
            *v28 = 0;
            *(v16 + 14) = v28;
            *(v16 + 13) = 0x100000004;
            v28[3] |= 1u;
          }

          else
          {
            v16[128] = 0;
            *(v16 + 6) = 0u;
            *(v16 + 7) = 0u;
            *(v16 + 5) = 0u;
          }

          v29 = *(a1 + 54);
          v16[136] = (v29 & 2) != 0;
          v16[144] = (v29 & 0x40) != 0;
          v30 = *(a1 + 11) & ((v29 & 4) >> 2);
          v16[149] = *(a1 + 11) & ((v29 & 4) >> 2);
          v16[148] = v30;
          v16[146] = v30;
          if ((v29 & 8) != 0)
          {
            v16[176] = 1;
            v16[168] = 1;
            v31 = malloc_type_calloc(1uLL, 5uLL, 0x57089378uLL);
            *v31 = 0;
            v31[4] = 0;
            *(v16 + 20) = v31;
            *(v16 + 19) = 0x100000005;
            v31[4] |= 1u;
          }

          else
          {
            *(v16 + 19) = 0;
            *(v16 + 20) = 0;
            v16[176] = 0;
            *(v16 + 21) = 0;
          }

          if ((*(a1 + 54) & 0x10) != 0)
          {
            v16[208] = 1;
            v16[200] = 1;
            v32 = malloc_type_calloc(1uLL, 3uLL, 0x57089378uLL);
            *v32 = 0;
            v32[2] = 0;
            *(v16 + 24) = v32;
            *(v16 + 23) = 0x100000003;
            v32[2] |= 1u;
          }

          else
          {
            *(v16 + 23) = 0;
            *(v16 + 24) = 0;
            v16[208] = 0;
            *(v16 + 25) = 0;
          }

          v16[216] = (*(a1 + 54) & 0x80) != 0;
          v16 = *v16;
        }

        if (*(a1 + 46) == 1)
        {
          v16[8] = 5;
          v16[10] = 0;
          v33 = *(a1 + 56);
          v16[16] = (v33 & 0x20) != 0;
          v16[72] = 0;
          if (v33)
          {
            v16[128] = 1;
            v16[96] = 1;
            v34 = malloc_type_calloc(1uLL, 6uLL, 0x57089378uLL);
            *v34 = 0;
            v34[2] = 0;
            *(v16 + 11) = v34;
            *(v16 + 10) = 0x100000006;
            *(v34 + 5) |= 1u;
            v16[120] = 1;
            v35 = malloc_type_calloc(1uLL, 6uLL, 0x57089378uLL);
            *v35 = 0;
            v35[2] = 0;
            *(v16 + 14) = v35;
            *(v16 + 13) = 0x100000006;
            *(v35 + 5) |= 1u;
          }

          else
          {
            v16[128] = 0;
            *(v16 + 6) = 0u;
            *(v16 + 7) = 0u;
            *(v16 + 5) = 0u;
          }

          v36 = 0;
          v37 = *(a1 + 56);
          v16[136] = (v37 & 2) != 0;
          v16[144] = (v37 & 0x40) != 0;
          if (v37 & 4) != 0 && (*(a1 + 47))
          {
            v36 = 1;
            v16[146] = 1;
            v16[148] = 1;
          }

          v16[149] = v36;
          if ((v37 & 8) != 0)
          {
            v16[176] = 1;
            v16[168] = 1;
            v38 = malloc_type_calloc(1uLL, 7uLL, 0x57089378uLL);
            *v38 = 0;
            *(v38 + 3) = 0;
            *(v16 + 20) = v38;
            *(v16 + 19) = 0x100000007;
            v38[6] |= 1u;
          }

          else
          {
            *(v16 + 19) = 0;
            *(v16 + 20) = 0;
            v16[176] = 0;
            *(v16 + 21) = 0;
          }

          if ((*(a1 + 56) & 0x10) != 0)
          {
            v16[208] = 1;
            v16[200] = 1;
            v39 = malloc_type_calloc(1uLL, 5uLL, 0x57089378uLL);
            *v39 = 0;
            v39[4] = 0;
            *(v16 + 24) = v39;
            *(v16 + 23) = 0x100000005;
            v39[4] |= 1u;
          }

          else
          {
            *(v16 + 23) = 0;
            *(v16 + 24) = 0;
            v16[208] = 0;
            *(v16 + 25) = 0;
          }

          v16[216] = 0;
          v16[272] = (*(a1 + 56) & 0x80) != 0;
        }

        if (*(a2 + 212) == 1)
        {
          v40 = *(a1 + 59);
          *(a2 + 201) = v40 & 1;
          *(a2 + 202) = (v40 & 2) != 0;
          *(a2 + 203) = (v40 & 4) != 0;
          *(a2 + 204) = 0;
          *(a2 + 205) = (v40 & 0x10) != 0;
          *(a2 + 206) = (v40 & 0x20) != 0;
        }

        if (*(a2 + 217) == 1)
        {
          v41 = *(a1 + 58);
          *(a2 + 213) = v41 & 1;
          *(a2 + 214) = (v41 & 2) != 0;
          *(a2 + 215) = (v41 & 4) != 0;
          *(a2 + 216) = (v41 & 8) != 0;
        }
      }
    }
  }

  if (*(a2 + 424) == 1)
  {
    sub_245453F34(a2 + 400, 3uLL, 7u);
    *(a2 + 416) = 256;
  }

  if (*(a2 + 784) == 1)
  {
    if (*(a1 + 64))
    {
      v42 = 3;
    }

    else
    {
      v42 = 0;
    }

    if (*(a1 + 65))
    {
      v43 = v42 | 0xC;
    }

    else
    {
      v43 = v42;
    }

    if (*(a1 + 65))
    {
      v44 = 4;
    }

    else
    {
      v44 = 2 * (*(a1 + 64) != 0);
    }

    sub_245453F34(a2 + 760, v44, v43);
    *(a2 + 777) = 0;
    *(a2 + 779) = 0;
  }
}

uint64_t sub_24544B9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
  bzero(v7, 0xA28uLL);
  *(a4 + 16) = v7;
  *(v7 + 2592) = 1;
  *(v7 + 6) = 1;
  v8 = *(a4 + 16);
  *(v8 + 2) = 1;
  *v8 = *(a2 + 16);
  v9 = *(a4 + 16);
  *(v9 + 3) = 1;
  *(v9 + 6) = 1;
  *(v9 + 8) = 256;
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 80) = 0;
  if (*(a1 + 8) || *(a1 + 10) || *(a1 + 46))
  {
    *(v9 + 320) = 1;
    *(v9 + 248) = 1;
    *(v9 + 112) = 1;
    if ((((*(a1 + 11) | *(a1 + 9)) | *(a1 + 47)) & 6) != 0)
    {
      *(v9 + 260) = 1;
      *(v9 + 265) = 1;
    }

    else
    {
      *(v9 + 260) = 0;
      *(v9 + 265) = 0;
    }
  }

  else
  {
    *(v9 + 320) = 0;
  }

  v11 = 0;
  if (*(a1 + 44) == 1)
  {
    v10 = **(a1 + 72);
    if (v10)
    {
      if (*(v10 + 16) != 1)
      {
        v11 = 1;
      }
    }
  }

  *(v9 + 472) = v11;
  *(v9 + 504) = 0;
  *(v9 + 832) = *(a1 + 61) == 1;
  *(v9 + 1032) = 0;
  *(v9 + 1224) = 0;
  *(v9 + 1400) = 0;
  *(v9 + 1464) = 0;
  sub_24544B0A8(a1, v9 + 48);
  sub_245451EF4(a2, *(a2 + 24), 2);
  *(a2 + 24) = 2;
  return 1;
}

uint64_t sub_24544BB5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
  bzero(v8, 0xA28uLL);
  *(a4 + 16) = v8;
  if (!*(a2 + 18))
  {
    goto LABEL_8;
  }

  v9 = **(a1 + 72);
  if (v9)
  {
    while (*(v9 + 4) != *(a2 + 28) || *(v9 + 5) != *(a2 + 32))
    {
      v9 = *v9;
      if (!v9)
      {
        sub_245479990(2233, "lpp_transaction.c");
        if (v8)
        {
          goto LABEL_60;
        }

        return 1;
      }
    }

LABEL_8:
    *(v8 + 2592) = 1;
    *(v8 + 4) = 0;
    *(v8 + 6) = 2;
    v10 = *(a4 + 16);
    *(v10 + 2) = 1;
    *v10 = *(a2 + 16);
    v11 = *(a4 + 16);
    if (!*(a2 + 18))
    {
      *(v11 + 1) = 0;
    }

    *(v11 + 3) = 0;
    *(v8 + 4) = 0;
    *(v8 + 6) = 2;
    *(v8 + 8) = 0;
    *(v8 + 10) = 0;
    *(v8 + 232) = 1;
    if (*(a1 + 108) == 4)
    {
      *(v8 + 224) = 1;
      v8[22] = 0x100000003;
      v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
      *v12 = 0;
      v12[1] = 0;
      v8[20] = v12;
      v8[21] = v12;
      v13 = 2;
      do
      {
        v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
        *v14 = 0;
        v14[1] = 0;
        *v8[21] = v14;
        v8[21] = v14;
        --v13;
      }

      while (v13);
      v15 = *(a1 + 84) == 1;
      if (*(a1 + 84) == 1)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      *(v8 + 50) = v16;
      *(v8 + 51) = 1;
      if (v15)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
      *v18 = 0;
      v18[1] = 0;
      v8[23] = v18;
      v8[24] = v18;
      v19 = v17 - 1;
      do
      {
        v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
        *v20 = 0;
        v20[1] = 0;
        *v8[24] = v20;
        v8[24] = v20;
        --v19;
      }

      while (v19);
      if (*(a1 + 80) <= 0x3E7u && *(a1 + 82) <= 0x3E7u)
      {
        sub_24544C7B4(*(a1 + 80), v8[20], v8[23]);
      }

      sub_245454158(*(a1 + 88), 0x24uLL, (v8 + 26));
    }

    else
    {
      *(v8 + 112) = 1;
      sub_2454540B4(*(a1 + 88), 0x1CuLL, (v8 + 12));
      v8[8] = 0x100000003;
      v21 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
      *v21 = 0;
      v21[1] = 0;
      v8[6] = v21;
      v8[7] = v21;
      v22 = 2;
      do
      {
        v23 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
        *v23 = 0;
        v23[1] = 0;
        *v8[7] = v23;
        v8[7] = v23;
        --v22;
      }

      while (v22);
      v24 = *(a1 + 84) == 1;
      if (*(a1 + 84) == 1)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      *(v8 + 22) = v25;
      *(v8 + 23) = 1;
      if (v24)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v27 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
      *v27 = 0;
      v27[1] = 0;
      v8[9] = v27;
      v8[10] = v27;
      v28 = v26 - 1;
      do
      {
        v29 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
        *v29 = 0;
        v29[1] = 0;
        *v8[10] = v29;
        v8[10] = v29;
        --v28;
      }

      while (v28);
      if (*(a1 + 80) <= 0x3E7u && *(a1 + 82) <= 0x3E7u)
      {
        v30 = *(a1 + 80);
        v31 = v8[6];
        v32 = v8[9];
        v33 = v30 >> 16;
        *(v31 + 8) = v30 / 0x64u;
        v34 = *v31;
        v34[8] = v30 % 0x64u / 0xA;
        *(*v34 + 8) = v30 % 0x64u % 0xA;
        if (HIDWORD(v30) == 1)
        {
          v32[8] = WORD1(v30) / 0x64u;
          LOWORD(v33) = WORD1(v30) % 0x64u;
          v32 = *v32;
        }

        v32[8] = v33 / 0xAu;
        *(*v32 + 8) = v33 % 0xAu;
      }
    }

    if (*a3)
    {
      v35 = *(*a3 + 96);
      v36 = *(a1 + 10);
      v37 = (v35 & 1) == 0 || *(a1 + 8) == 0;
      v38 = v37;
      v39 = *(a2 + 40);
      if (!v37)
      {
        v39 |= 1u;
        *(a2 + 40) = v39;
      }

      v40 = (v35 & 2) == 0 || v36 == 0;
      v41 = v40;
      if (!v40)
      {
        *(a2 + 40) = v39 | 2;
LABEL_61:
        *(v8 + 504) = 1;
        if ((v38 & 1) != 0 || (v43 = *a3, v44 = *(*a3 + 12), (v44 & 0x64) == 0))
        {
          if ((v41 & 1) != 0 || (v43 = *a3, (*(*a3 + 64) & 7) == 0))
          {
            v53 = 54;
LABEL_86:
            LOBYTE(v8[v53]) = 0;
            if ((v38 & 1) == 0)
            {
              v60 = *a3;
              v61 = *(*a3 + 12);
              if ((v61 & 0x19A) != 0)
              {
                v62 = *(v60 + 84);
                goto LABEL_92;
              }
            }

            if ((v41 & 1) == 0)
            {
              v60 = *a3;
              v62 = *(*a3 + 84);
              if (v62)
              {
                v61 = *(v60 + 12);
LABEL_92:
                *(v8 + 464) = 1;
                if (v61)
                {
                  v63 = v62 + 1;
                }

                else
                {
                  v63 = v62;
                }

                if (v63)
                {
                  *(v8 + 115) = 1;
                  *(v8 + 114) = v63;
                  v64 = malloc_type_calloc(1uLL, 0x428uLL, 0x57089378uLL);
                  bzero(v64 + 1, 0x420uLL);
                  *v64 = 0;
                  v8[55] = v64;
                  v8[56] = v64;
                  if (v63 != 1)
                  {
                    v65 = v63 - 1;
                    do
                    {
                      v66 = malloc_type_calloc(1uLL, 0x428uLL, 0x57089378uLL);
                      bzero(v66, 0x428uLL);
                      *v8[56] = v66;
                      v8[56] = v66;
                      --v65;
                    }

                    while (v65);
                  }
                }

                v67 = v8[55];
                if (!v61)
                {
                  goto LABEL_125;
                }

                *(v67 + 8) = 0;
                *(v67 + 10) = 0;
                *(v67 + 40) = 0;
                *(v67 + 96) = 0;
                if ((*(v60 + 12) & 8) != 0)
                {
                  *(v67 + 192) = 1;
                  *(v67 + 104) = 0;
                  *(v67 + 112) = *(v60 + 14);
                  *(v67 + 114) = *(v60 + 16);
                  *(v67 + 115) = *(v60 + 18);
                  v68 = (v67 + 144);
                  if (*(v60 + 17))
                  {
                    *v68 = 1;
                    if (*(v60 + 17))
                    {
                      *(v67 + 140) = 1;
                      *(v67 + 136) = *(v60 + 17);
                      v70 = malloc_type_calloc(1uLL, 0x28uLL, 0x57089378uLL);
                      *(v70 + 8) = 0u;
                      *(v70 + 24) = 0u;
                      *(v67 + 120) = v70;
                      v71 = (v67 + 120);
                      *v70 = 0;
                      *(v67 + 128) = *(v67 + 120);
                      LODWORD(v72) = *(v60 + 17);
                      if (v72 >= 2)
                      {
                        v73 = 1;
                        do
                        {
                          v74 = malloc_type_calloc(1uLL, 0x28uLL, 0x57089378uLL);
                          *v74 = 0u;
                          v74[1] = 0u;
                          *(v74 + 4) = 0;
                          **(v67 + 128) = v74;
                          *(v67 + 128) = **(v67 + 128);
                          ++v73;
                          v72 = *(v60 + 17);
                        }

                        while (v73 < v72);
                      }

                      if (v72)
                      {
                        v75 = 0;
                        do
                        {
                          v71 = *v71;
                          *(v71 + 8) = *(v60 + v75 + 27);
                          sub_2454541F8((v71 + 2), 0xBuLL, *(v60 + v75 + 43));
                          *(v71 + 8) = 16908546;
                          ++v75;
                        }

                        while (v75 < *(v60 + 17));
                      }
                    }

                    goto LABEL_116;
                  }
                }

                else
                {
                  v68 = (v67 + 192);
                }

                *v68 = 0;
LABEL_116:
                v76 = 0;
                v77 = *(v60 + 12);
                *(v67 + 200) = HIBYTE(v77) & 1;
                *(v67 + 288) = 0;
                if ((v77 & 0x80) != 0)
                {
                  *(v67 + 289) = 0;
                  v76 = 1;
                }

                *(v67 + 292) = v76;
                if (v77)
                {
                  *(v67 + 293) = 258;
                  v78 = 1;
                }

                else
                {
                  v78 = 0;
                }

                *(v67 + 295) = v78;
                if ((v77 & 2) != 0)
                {
                  *(v67 + 296) = 257;
                  v79 = 1;
                }

                else
                {
                  v79 = 0;
                }

                *(v67 + 298) = v79;
                *(v67 + 304) = 0;
                v67 = *v67;
LABEL_125:
                if (*(v60 + 84))
                {
                  v80 = 0;
                  v81 = *(v60 + 88);
                  v82 = 37;
                  v119 = v60;
                  do
                  {
                    v83 = (v81 + 136 * v80);
                    *(v67 + 8) = byte_24548AEB0[*v83];
                    *(v67 + 10) = 0;
                    v84 = *(v83 + 8);
                    if (*(v83 + 8))
                    {
                      *(v67 + 40) = 1;
                      *(v67 + 32) = v84;
                      *(v67 + 36) = 1;
                      v85 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
                      *v85 = 0;
                      v85[1] = 0;
                      *(v67 + 16) = v85;
                      *(v67 + 24) = v85;
                      LODWORD(v86) = *(v67 + 32);
                      if (v86 >= 2)
                      {
                        v87 = 1;
                        do
                        {
                          v88 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
                          *v88 = 0;
                          v88[1] = 0;
                          **(v67 + 24) = v88;
                          *(v67 + 24) = v88;
                          ++v87;
                          v86 = *(v67 + 32);
                        }

                        while (v87 < v86);
                      }

                      if (v86 >= 1)
                      {
                        v89 = 0;
                        v90 = *(v67 + 16);
                        v91 = *(v83 + 2);
                        do
                        {
                          *(v90 + 4) = *(v91 + 2 * v89);
                          v90 = *v90;
                          ++v89;
                        }

                        while (v86 > v89);
                      }

                      v81 = *(v60 + 88);
                    }

                    v92 = v81 + 136 * v80;
                    if (*(v92 + 105) == 1)
                    {
                      *(v67 + 192) = 1;
                      *(v67 + 104) = 0;
                      *(v67 + 112) = *(v92 + 112);
                      *(v67 + 114) = *(v92 + 114);
                      *(v67 + 115) = *(v92 + 115);
                      if (*(v92 + 116))
                      {
                        *(v67 + 144) = 1;
                        LODWORD(v93) = *(v92 + 116);
                        if (*(v92 + 116))
                        {
                          *(v67 + 140) = 1;
                          *(v67 + 136) = *(v92 + 116);
                          v94 = malloc_type_calloc(1uLL, 0x28uLL, 0x57089378uLL);
                          *(v94 + 8) = 0u;
                          *(v94 + 24) = 0u;
                          *(v67 + 120) = v94;
                          *v94 = 0;
                          *(v67 + 128) = *(v67 + 120);
                          LODWORD(v93) = *(v92 + 116);
                          if (v93 >= 2)
                          {
                            v95 = 1;
                            do
                            {
                              v96 = malloc_type_calloc(1uLL, 0x28uLL, 0x57089378uLL);
                              *v96 = 0u;
                              v96[1] = 0u;
                              *(v96 + 4) = 0;
                              **(v67 + 128) = v96;
                              *(v67 + 128) = **(v67 + 128);
                              ++v95;
                              v93 = *(v92 + 116);
                            }

                            while (v95 < v93);
                          }

                          if (v93)
                          {
                            v97 = 0;
                            v98 = 0;
                            v99 = *(v67 + 120);
                            do
                            {
                              v100 = *(v92 + 120) + v97;
                              v99[8] = *v100;
                              sub_2454541F8((v99 + 16), 0xBuLL, *(v100 + 2));
                              v99[33] = 1;
                              v101 = *(v67 + 8);
                              if ((v101 & 0xFE) == 4)
                              {
                                v99[32] = v101;
                                v99[34] = v101;
                              }

                              v99[35] = 1;
                              ++v98;
                              v93 = *(v92 + 116);
                              v97 += 4;
                            }

                            while (v98 < v93);
                            v60 = v119;
                          }
                        }

                        *(v67 + 136) = v93;
                        *(v67 + 140) = 1;
                      }

                      else
                      {
                        *(v67 + 144) = 0;
                      }

                      v81 = *(v60 + 88);
                    }

                    v102 = v81 + 136 * v80;
                    v103 = *(v102 + 4);
                    if (v103)
                    {
                      *(v67 + 200) = 1;
                    }

                    if (*(v102 + 24) == 1)
                    {
                      *(v67 + 288) = 1;
                      *(v67 + 208) = *(v102 + 28);
                      v104 = *(v102 + 32);
                      if (v104)
                      {
                        *(v67 + 212) = 1;
                        *(v67 + 210) = v104;
                      }

                      *(v67 + 213) = *(v102 + 35);
                      sub_245453F34(v67 + 216, 8uLL, *(v102 + 34));
                      v105 = *(v102 + 36);
                      if (*(v102 + 36))
                      {
                        *(v67 + 280) = 1;
                        *(v67 + 276) = 1;
                        *(v67 + 272) = v105;
                        v106 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
                        *v106 = 0;
                        v106[1] = 0;
                        *(v67 + 256) = v106;
                        *(v67 + 264) = v106;
                        LODWORD(v107) = *(v102 + 36);
                        if (v107 >= 2)
                        {
                          v108 = 1;
                          do
                          {
                            v109 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
                            *v109 = 0;
                            v109[1] = 0;
                            **(v67 + 264) = v109;
                            *(v67 + 264) = v109;
                            ++v108;
                            v107 = *(v102 + 36);
                          }

                          while (v108 < v107);
                        }

                        if (v107)
                        {
                          v110 = *(v67 + 256);
                          v111 = v107;
                          v112 = (v81 + v82);
                          do
                          {
                            v113 = *v112++;
                            *(v110 + 8) = v113;
                            v110 = *v110;
                            --v111;
                          }

                          while (v111);
                        }

                        *(v67 + 272) = v107;
                        *(v67 + 276) = 1;
                      }

                      else
                      {
                        *(v67 + 280) = 0;
                      }

                      v81 = *(v60 + 88);
                      v103 = *(v81 + 136 * v80 + 4);
                    }

                    if ((v103 & 8) != 0)
                    {
                      *(v67 + 292) = 1;
                      *(v67 + 289) = 0;
                    }

                    v114 = (v81 + 136 * v80);
                    if (v114[104] == 1)
                    {
                      *(v67 + 300) = 1;
                      *(v67 + 304) = 1;
                    }

                    if ((v103 & 0x12) != 0 && v114[128] == 1)
                    {
                      v116 = v114[132];
                      if ((v116 | 2) == 7)
                      {
                        *(v67 + 293) = v116;
                        *(v67 + 294) = 257;
                      }

                      v117 = v114[131];
                      if (v117 == 5 || v117 == 3)
                      {
                        *(v67 + 296) = v117;
                        *(v67 + 297) = 257;
                      }
                    }

                    *(v67 + 96) = 0;
                    *(v67 + 360) = (*(v81 + 136 * v80 + 4) & 0x20) != 0;
                    v67 = *v67;
                    ++v80;
                    v82 += 136;
                  }

                  while (v80 < *(v60 + 84));
                }

                goto LABEL_104;
              }
            }

            v42 = 58;
LABEL_103:
            LOBYTE(v8[v42]) = 0;
LABEL_104:
            *(v8 + 544) = 0;
            *(v8 + 576) = 0;
            *(v8 + 584) = 0;
            *(v8 + 672) = 0;
            return 1;
          }

          LOBYTE(v44) = *(v43 + 12);
        }

        *(v8 + 432) = 1;
        *(v8 + 272) = 0;
        v45 = ((v44 & 0x40) != 0) + *(v43 + 65);
        if (v45)
        {
          *(v8 + 65) = 1;
          *(v8 + 64) = v45;
          v46 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
          *v46 = 0;
          v46[1] = 0;
          v8[30] = v46;
          v8[31] = v46;
          if (v45 != 1)
          {
            v47 = 1 - v45;
            do
            {
              v48 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
              *v48 = 0;
              v48[1] = 0;
              *v8[31] = v48;
              v8[31] = v48;
            }

            while (!__CFADD__(v47++, 1));
          }
        }

        v50 = v8[30];
        v51 = *(v43 + 12);
        if ((v51 & 0x40) != 0)
        {
          *(v8 + 272) = 1;
          *(v50 + 8) = 0;
          *(v8 + 132) = 257;
          *(v8 + 267) = 0;
          v52 = *(v43 + 64);
          if (v52)
          {
            v50 = *v50;
            goto LABEL_77;
          }
        }

        else
        {
          v52 = *(v43 + 64);
          if (v52)
          {
            *(v8 + 272) = 1;
            *(v8 + 265) = 0;
LABEL_77:
            v54 = *(v43 + 80);
            *(v8 + 267) = v54;
            *(v8 + 266) = v54;
            v55 = *(v8 + 64) != 0;
            v56 = *(v43 + 65);
            if (*(v43 + 65))
            {
              v57 = *(v43 + 72);
              do
              {
                v58 = *v57++;
                *(v50 + 8) = byte_24548AEB0[v58];
                v50 = *v50;
                --v56;
              }

              while (v56);
            }

            *(v8 + 64) = v55;
          }
        }

        *(v8 + 280) = (v51 & 0x20 | v52 & 2) != 0;
        if (((v51 | v52) & 4) != 0)
        {
          *(v8 + 328) = 1;
          *(v8 + 312) = 0;
          v59 = *(v43 + 81);
          *(v8 + 304) = v59;
          if (v59 == 1)
          {
            sub_245453F34((v8 + 36), 2uLL, *(v43 + 82));
          }
        }

        else
        {
          *(v8 + 328) = 0;
        }

        v53 = 42;
        goto LABEL_86;
      }

      if (v39)
      {
        goto LABEL_61;
      }
    }

    v42 = 63;
    goto LABEL_103;
  }

  sub_245479990(2233, "lpp_transaction.c");
LABEL_60:
  free(v8);
  return 1;
}

unint64_t sub_24544C7B4(unint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = result >> 16;
  *(a2 + 8) = result / 0x64u;
  v4 = *a2;
  v4[8] = result % 0x64u / 0xA;
  *(*v4 + 8) = result % 0x64u % 0xA;
  if (HIDWORD(result) == 1)
  {
    a3[8] = WORD1(result) / 0x64u;
    LOWORD(v3) = WORD1(result) % 0x64u;
    a3 = *a3;
  }

  a3[8] = v3 / 0xAu;
  *(*a3 + 8) = v3 % 0xAu;
  return result;
}

void sub_24544C844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 112) = 0;
  *(a1 + 116) = -1;
  v6 = *(a2 + 20);
  if (v6 == 3)
  {
    v7 = *(a2 + 40);
  }

  else
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(a2 + 41);
    }
  }

  if (*a3 == 3 && !*(a3 + 8) && !*(a3 + 16))
  {
    if ((*(a1 + 8) || *(a1 + 10) || *(a1 + 46)) && *(a3 + 832) == 1)
    {
      if (*(a3 + 720) == 1)
      {
        sub_24544C974(a1, (a3 + 80), a2);
      }

      if (*(a3 + 752) == 1)
      {
        sub_24544CC84(a1, (a3 + 728), a2);
      }

      v8 = *(a2 + 20);
      if (v8 == 3)
      {
        v7 = *(a2 + 40);
      }

      else if (v8 == 2)
      {
        v7 = *(a2 + 41);
      }
    }

    *(a1 + 112) = 0;
    *(a1 + 116) = -1;
  }

  if (*(a2 + 24) == 1 && v7 == 1)
  {
    sub_245451EF4(a2, 1, 2);
    *(a2 + 24) = 2;
  }
}

void sub_24544C974(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = 0;
  LOWORD(v29[0]) = -1;
  BYTE2(v29[0]) = -1;
  DWORD1(v29[0]) = -1;
  BYTE4(v29[3]) = 127;
  BYTE8(v29[0]) = -1;
  HIDWORD(v29[0]) = 0;
  DWORD2(v29[1]) = -1;
  *&v29[1] = 0;
  *(&v29[2] + 4) = 0;
  *(&v29[1] + 12) = 0;
  *(&v29[2] + 12) = 2;
  DWORD2(v29[3]) = 0;
  WORD6(v29[3]) = -1;
  BYTE14(v29[3]) = -1;
  LODWORD(v30) = -1;
  WORD2(v30) = -1;
  BYTE8(v30) = 0;
  do
  {
    v7 = v29 + v6;
    v7[74] = -1;
    *(v7 + 19) = -1;
    v7[80] = -1;
    v6 += 8;
  }

  while (v6 != 128);
  BYTE10(v38) = -1;
  *&v39 = 0;
  v8 = 2;
  if (*(a1 + 108) == 4)
  {
    v8 = 3;
  }

  v9 = v8 | (*(a3 + 28) << 32);
  v10 = *(a3 + 32);
  if (a2[112] == 1 && (*(a1 + 50) & 1) != 0)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    memset(v29, 0, sizeof(v29));
    v20 = *a2;
    if (v20 == 5)
    {
      v23 = *(a1 + 46);
    }

    else
    {
      if (v20 != 4)
      {
        if (!*a2 && *(a1 + 8) == 1)
        {
          sub_2454507A0(a1, a2, v29, 1);
          v21 = *(a3 + 16);
          v22 = *(a3 + 17);
          v25 = 1;
          v26 = v21;
          v27 = v22;
          v28[0] = 0;
          *(v28 + 7) = 0;
          v51 = v9;
          v52 = v10;
          v45 = v36;
          v46 = v37;
          v47 = v38;
          v48 = v39;
          *&v42[64] = v32;
          *&v42[80] = v33;
          v43 = v34;
          v44 = v35;
          *v42 = v29[2];
          *&v42[16] = v29[3];
          *&v42[32] = v30;
          *&v42[48] = v31;
          v40 = v29[0];
          v41 = v29[1];
          sub_24546BA70(&v40, &v51);
        }

        goto LABEL_7;
      }

      v23 = *(a1 + 10);
    }

    if (v23 == 1)
    {
      sub_2454507A0(a1, a2, &v25, 0);
    }
  }

LABEL_7:
  if (a2[140] == 1 && (*(a1 + 50) & 2) != 0)
  {
    v11 = sub_245450D9C(a1, a3);
    v12 = a2[116];
    v13 = *(a2 + 66);
    v14 = a2[134];
    v15 = a2[128];
    v16 = *(a2 + 65);
    v17 = *(a2 + 135);
    HIBYTE(v40) = 0;
    *(&v40 + 13) = 0;
    memset(&v42[2], 0, 86);
    v18 = *(a3 + 16);
    v19 = *(a3 + 17);
    v51 = 1;
    v52 = v18;
    v53 = v19;
    memset(v54, 0, sizeof(v54));
    v49 = v9;
    v50 = v10;
    *&v40 = 0;
    DWORD2(v40) = 590335;
    BYTE12(v40) = v12;
    *&v41 = *(a2 + 15);
    WORD4(v41) = v13;
    BYTE10(v41) = v14;
    BYTE11(v41) = v15;
    HIDWORD(v41) = v16;
    *v42 = v17;
    sub_24546C8A8(&v40, v11, &v49);
  }

  if (a2[200] == 1 && (*(a1 + 50) & 4) != 0 && a2[168] == 1)
  {
    sub_245450D9C(a1, a3);
    sub_245453FDC((a2 + 144), *(a2 + 36), v24);
  }
}

void sub_24544CC84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 4);
  if ((v3 - 1) > 0xF)
  {
    goto LABEL_91;
  }

  v4 = a3;
  v7 = 0;
  v8 = 2;
  if (*(a1 + 108) == 4)
  {
    v8 = 3;
  }

  v53 = *(a3 + 32);
  v51 = v8 | (*(a3 + 28) << 32);
  v9 = a2;
  do
  {
    v9 = *v9;
    if (*(v9 + 120) == 1 && !*(v9 + 8) && *(a1 + 8) == 1 && (*(a1 + 52) & 1) != 0)
    {
      v10 = *(v9 + 28);
      if (v10 < 1)
      {
        sub_245479990(8576, "lpp_transaction.c");
      }

      else
      {
        v57 = v4;
        v11 = v9 + 12;
        if (v10 >= 0x10)
        {
          v12 = 16;
        }

        else
        {
          v12 = *(v9 + 28);
        }

        v13 = malloc_type_calloc(1uLL, 100 * v12, 0x57089378uLL);
        bzero(v13, 100 * v12);
        v14 = 0;
        v15 = 0;
        v55 = v13;
        do
        {
          v11 = *v11;
          *v13 = *(v11 + 8);
          *(v13 + 1) = 0;
          v13[1] = 0;
          sub_245453FDC((v11 + 2), *(v11 + 4), v13 + 6);
          v13[6] >>= 2;
          sub_245454048(v11 + 8, *(v11 + 8), v13 + 4);
          if (*(v11 + 12) == 1 && *(v11 + 26) == 1)
          {
            *(v13 + 15) = *(v11 + 28);
            *(v13 + 16) = *(v11 + 58);
            *(v13 + 17) = *(v11 + 30);
            *(v13 + 9) = *(v11 + 16);
            *(v13 + 14) = *(v11 + 68);
            v13[5] = *(v11 + 112);
            v13[66] = *(v11 + 113);
            *(v13 + 32) = *(v11 + 57);
            *(v13 + 22) = *(v11 + 29);
            *(v13 + 21) = *(v11 + 60);
            *(v13 + 11) = *(v11 + 31);
            *(v13 + 23) = *(v11 + 32);
            *(v13 + 13) = *(v11 + 33);
            *(v13 + 48) = *(v11 + 68);
            *(v13 + 15) = *(v11 + 35);
            *(v13 + 20) = *(v11 + 36);
            *(v13 + 18) = *(v11 + 37);
            *(v13 + 20) = *(v11 + 76);
            *(v13 + 38) = *(v11 + 77);
            *(v13 + 28) = *(v11 + 78);
            *(v13 + 42) = *(v11 + 79);
            *(v13 + 34) = *(v11 + 80);
            *(v13 + 24) = *(v11 + 81);
            if (*(v11 + 188) == 1)
            {
              v13[4] = *(v11 + 164);
              v13[10] = *(v11 + 165);
              v13[67] = *(v11 + 184);
              *(v13 + 12) = v11[21];
              *(v13 + 5) = *(v11 + 44);
              *(v13 + 6) = *(v11 + 90);
            }

            ++v15;
            v13 += 100;
          }

          else
          {
            sub_245479990(8557, "lpp_transaction.c");
          }

          ++v14;
        }

        while (v14 < v12);
        if (v15)
        {
          LOBYTE(__src) = v15;
          *(&__src + 1) = 0;
          DWORD1(__src) = 0;
          *(&__src + 1) = v55;
          *&v61 = 0;
          v4 = v57;
          sub_245453D28(a1, &__src, v51, v53, v57);
        }

        else
        {
          v4 = v57;
          if (v55)
          {
            free(v55);
          }
        }
      }

      v3 = *(a2 + 4);
    }

    ++v7;
  }

  while (v3 > v7);
  bzero(&__src, 0x2A8uLL);
  if (v3 <= 0)
  {
    goto LABEL_91;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v56 = 0;
  v58 = 0;
  v54 = 0;
  v19 = 0;
  v20 = a2;
  do
  {
    v20 = *v20;
    if (*(v20 + 152) == 1)
    {
      v21 = *(v20 + 8);
      if (*(v20 + 8))
      {
        if (v21 == 5)
        {
          if (*(a1 + 46) != 1 || (*(a1 + 56) & 2) == 0 || v58 || v18 > 4)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v21 != 4 || *(a1 + 10) != 1 || (*(a1 + 54) & 2) == 0 || v54 || v18 >= 5)
          {
            goto LABEL_63;
          }

          v54 = 1;
        }

        v22 = &__src + 136 * v18;
        ++v17;
        ++v18;
        *v22 = dword_24548AEC4[*(v20 + 8)];
        v23 = v21 == 5;
        v24 = v58;
        if (v23)
        {
          v24 = 1;
        }

        v58 = v24;
        v25 = *(v20 + 36);
        v22[4] = v25;
        if (v25)
        {
          v52 = v18;
          v26 = v17;
          v27 = 0;
          v28 = v20 + 16;
          do
          {
            v28 = *v28;
            v29 = *(v28 + 8);
            v22[v27 + 69] = -1;
            v22[v27 + 5] = v29;
            if (*(v28 + 56) == 1)
            {
              sub_245453FDC((v28 + 2), *(v28 + 4), &v22[v27 + 69]);
              LOBYTE(v25) = v22[4];
            }

            ++v27;
          }

          while (v27 < v25);
          v17 = v26;
LABEL_52:
          v18 = v52;
        }
      }

      else
      {
        if (*(a1 + 8) != 1 || (*(a1 + 52) & 2) == 0 || v19 || v56 > 4)
        {
LABEL_63:
          sub_245479990(9007, "lpp_transaction.c");
          goto LABEL_64;
        }

        ++v56;
        v30 = *(v20 + 144);
        if (v30 <= 0x10)
        {
          v52 = v18;
          v19 = 1;
          v31 = malloc_type_calloc(1uLL, v30, 0x57089378uLL);
          bzero(v31, v30);
          if (v30)
          {
            v32 = v20 + 16;
            do
            {
              v32 = *v32;
              *v31++ = *(v32 + 8);
              v19 = 1;
              --v30;
            }

            while (v30);
          }

          goto LABEL_52;
        }

        sub_245479990(9002, "lpp_transaction.c");
        v19 = 1;
      }
    }

LABEL_64:
    v33 = *(a2 + 4);
    if (v16 > 4)
    {
      break;
    }

    ++v16;
  }

  while (v33 > v16);
  if ((v17 - 1) <= 4u)
  {
    v34 = malloc_type_calloc(1uLL, 136 * v17, 0x57089378uLL);
    memcpy(v34, &__src, 136 * v17);
    v33 = *(a2 + 4);
  }

  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  __src = 0u;
  if (v33 >= 1)
  {
    v35 = 0;
    v36 = 0;
    p_src = &__src;
    v38 = a2;
    while (1)
    {
      v38 = *v38;
      if (*(v38 + 392) == 1)
      {
        if (*(v38 + 8) == 4 && *(a1 + 10) == 1 && (*(a1 + 54) & 0x80) != 0)
        {
          if (*(v38 + 90) == 1)
          {
            v59 = v36;
            v40 = v38[46];
            *p_src = 3;
            v41 = *(v38 + 96);
            *(p_src + 8) = v41;
            v42 = 4 * v41;
            v43 = malloc_type_calloc(1uLL, v42, 0x57089378uLL);
            bzero(v43, v42);
            *(p_src + 2) = v43;
            if (*(p_src + 8))
            {
              v44 = 0;
              v45 = 0;
              do
              {
                v46 = *(v40 + 4);
                *(v43 + v44) = *(v40 + 8);
                sub_245453FDC((v40 + 2), v46, v43 + v44 + 1);
                v47 = *(v40 + 57);
                v43 = *(p_src + 2);
                *(v43 + v44 + 2) = v47;
                if (v47 == 1)
                {
                  *(v43 + v44 + 3) = *(v40 + 56);
                }

                v40 = *v40;
                ++v45;
                v44 += 4;
              }

              while (v45 < *(p_src + 8));
            }

            v36 = v59 + 1;
            p_src = (p_src + 24);
            goto LABEL_78;
          }

          v39 = 9469;
        }

        else
        {
          v39 = 9474;
        }

        sub_245479990(v39, "lpp_transaction.c");
      }

LABEL_78:
      if (v35 <= 4 && *(a2 + 4) > ++v35)
      {
        continue;
      }

      if ((v36 - 1) <= 4u)
      {
        v48 = 8 * ((3 * v36) & 0x1F);
        v49 = malloc_type_calloc(1uLL, v48, 0x57089378uLL);
        memcpy(v49, &__src, v48);
      }

      break;
    }
  }

LABEL_91:
  v50 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24544D3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 20) != 4)
  {
    v16 = 2658;
LABEL_16:
    sub_245479990(v16, "lpp_transaction.c");
    return 0;
  }

  if (*a3 != 4)
  {
    v16 = 2663;
    goto LABEL_16;
  }

  v8 = (a2 + 48);
  v58[0] = 0;
  v57 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  memset(v51, 0, 28);
  *(a2 + 152) = 0;
  v9 = **(a1 + 72);
  if (!v9)
  {
LABEL_8:
    sub_245479990(2701, "lpp_transaction.c");
    LOBYTE(v12) = 0;
    v13 = 0;
    v14 = 0xFF000000FFLL;
    v11 = -1;
    v15 = 1;
    goto LABEL_9;
  }

  v10 = *(a2 + 28);
  while (1)
  {
    if (*(v9 + 4) == v10)
    {
      v11 = *(v9 + 5);
      if (v11 == *(a2 + 32))
      {
        break;
      }
    }

    v9 = *v9;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  if (v10 == 1)
  {
    v19 = *(v9 + 64);
  }

  else
  {
    v19 = 0;
  }

  if (*(a3 + 8) || *(a3 + 16) || *(a3 + 92) != 1)
  {
    goto LABEL_31;
  }

  v20 = *(a3 + 120);
  if (v20 == 1)
  {
    *v8 = 1;
    if (!*(a1 + 8) && !*(a1 + 10) && !*(a1 + 46))
    {
      *v8 = 2;
    }
  }

  else if (!*(a3 + 120) && !*(a3 + 152) && !*(a3 + 312))
  {
LABEL_31:
    v15 = 0;
    LOBYTE(v12) = 0;
    v13 = 0;
    v14 = 0xFF000000FFLL;
    v11 = -1;
    goto LABEL_9;
  }

  if (*(a3 + 152) == 1)
  {
    *(a2 + 52) = 1;
    if (!*(a1 + 44) || *(a1 + 108) != 3)
    {
      *(a2 + 52) = 2;
    }
  }

  if (*(a3 + 312) == 1)
  {
    *(a2 + 56) = 1;
    if (!*(a1 + 61) || *(a1 + 108) != 4)
    {
      *(a2 + 56) = 2;
    }
  }

  if (*v8 != 1)
  {
    if (*(a2 + 52) == 1 || *(a2 + 56) == 1)
    {
      v22 = (a2 + 52);
      v49 = 0;
LABEL_55:
      v23 = sub_24544E078(a1, (a3 + 24), v8, v51);
      goto LABEL_56;
    }

    if (v10)
    {
      v15 = 0;
      v13 = 0;
      v14 = 0xFF000000FFLL;
      v11 = -1;
LABEL_118:
      LOBYTE(v12) = 1;
      goto LABEL_9;
    }

    if (*(a1 + 108) == 4)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v48 = *(a3 + 24);
    if (v48 > 1)
    {
      if (v48 == 3)
      {
        goto LABEL_117;
      }

      if (v48 != 2)
      {
LABEL_116:
        v10 = 2;
        goto LABEL_117;
      }
    }

    else if (*(a3 + 24))
    {
      if (v48 != 1)
      {
        goto LABEL_116;
      }

LABEL_117:
      *(a2 + 60) = v10;
      sub_245453D9C(a1, v14, v11, 2, a2);
      v15 = 0;
      v13 = 0;
      goto LABEL_118;
    }

    if (v20 == 1)
    {
      if (*(a3 + 115) == 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      goto LABEL_117;
    }

    goto LABEL_116;
  }

  v22 = (a2 + 52);
  v49 = sub_24544DB04(a1, (a3 + 24), v8, &v52);
  if (*(a2 + 52) == 1 || *(a2 + 56) == 1)
  {
    goto LABEL_55;
  }

  v23 = 0;
LABEL_56:
  v12 = 0;
  v24 = v9 + 110;
  v25 = v9 + 105;
  v26 = 48;
  v27 = v9 + 110;
  do
  {
    if (*(a2 + v26) == 1 && *v27 && *v25 != *(a2 + 17))
    {
      v12 = 2;
      *(a2 + v26) = 2;
    }

    v26 += 4;
    v25 += 2;
    ++v27;
  }

  while (v26 != 60);
  if (*v8 == 1)
  {
    v28 = *(a2 + 76);
    v29 = *(a2 + 52);
    if (v28 == 2 && (v29 == 1 || *(a2 + 56) == 1))
    {
      *(a2 + 144) = 1;
      v30 = malloc_type_calloc(1uLL, 0x44uLL, 0x57089378uLL);
      v30[16] = 0;
      *(v30 + 2) = 0u;
      *(v30 + 3) = 0u;
      *v30 = 0u;
      *(v30 + 1) = 0u;
      *(a2 + 128) = v30;
      v31 = v53;
      v32 = v54;
      v33 = v55;
      v30[16] = v56;
      *(v30 + 2) = v32;
      *(v30 + 3) = v33;
      *(v30 + 1) = v31;
      *v30 = v52;
      BYTE4(v52) = v52;
      LODWORD(v52) = 0;
      v34 = malloc_type_calloc(1uLL, 0x1CuLL, 0x57089378uLL);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a2 + 136) = v34;
      v38 = v51[0];
      *(v34 + 12) = *(v51 + 12);
      *v34 = v38;
      DWORD1(v51[0]) = 0;
      v39 = v51[1];
      *(&v51[0] + 1) = 0xFF0000000002;
      LODWORD(v51[1]) = 0;
      BYTE12(v51[0]) = v39;
      v40 = *(a2 + 48);
      v29 = *(a2 + 52);
      v50 = v9[2];
      if (v40 != 1)
      {
LABEL_74:
        v42 = v51;
        if (v29 != 1 && *(a2 + 56) != 1)
        {
          v42 = 0;
        }

        sub_245447AEC(a1, &v50, v19, v37, v42, &v57 + 1, v58, v36);
        v13 = *v8 == 1;
        if (*v8 == 1)
        {
          v43 = 2;
          if (*(a1 + 108) == 4)
          {
            v43 = 3;
          }

          v11 = HIDWORD(v50);
          v14 = v43 | (v50 << 32);
          LODWORD(v52) = 1000 * v52;
        }

        else
        {
          v14 = 0xFF000000FFLL;
          v11 = -1;
        }

        v44 = 0;
        v45 = v9 + 105;
        v46 = &v57;
        do
        {
          if (v8[v44] == 1)
          {
            if (*v46 == 1)
            {
              LOBYTE(v12) = 0;
              v8[v44] = 2;
            }

            else
            {
              *(v45 - 1) = *(a2 + 16);
              *v24 = 1;
            }
          }

          ++v44;
          ++v24;
          v45 += 2;
          v46 = (v46 + 1);
        }

        while (v44 != 3);
        v15 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v35 = v28 == 2;
      v50 = v9[2];
    }

    v37 = &v52;
    v36 = v35;
    goto LABEL_74;
  }

  v29 = *v22;
  if (*v22 == 1)
  {
    v41 = *(v9 + 4);
LABEL_73:
    v37 = 0;
    v36 = *(a2 + 76) == 2;
    v50 = __PAIR64__(*(v9 + 5), v41);
    goto LABEL_74;
  }

  v41 = *(v9 + 4);
  if (*(a2 + 56) == 1)
  {
    goto LABEL_73;
  }

  v15 = 0;
  if (v23)
  {
    v47 = v23;
  }

  else
  {
    v47 = v12;
  }

  if (v49)
  {
    v12 = v49;
  }

  else
  {
    v12 = v47;
  }

  v14 = 0xFF000000FFLL;
  v11 = -1;
  v13 = 0;
  if (!v41 && v12 == 1)
  {
    if (*(a1 + 108) == 4)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v11 = *(v9 + 5);
    sub_245453D9C(a1, v14, v11, 2, a2);
    v15 = 0;
    v13 = 0;
  }

LABEL_9:
  if (*v8 == 1 || *(a2 + 52) == 1 || *(a2 + 56) == 1)
  {
    if (v13)
    {
      sub_245453BB8(a1, &v52, v14, v11, a2);
    }

    return 0;
  }

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
    v21 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
    bzero(v21, 0xA28uLL);
    *(a4 + 16) = v21;
    v21[1] = 257;
    *v21 = *(a2 + 16);
    *(v21 + 2592) = 1;
    *(v21 + 6) = 5;
    *(v21 + 9) = 1;
    *(v21 + 6) = 1;
    *(v21 + 8) = 0;
    *(v21 + 10) = 0;
    *(v21 + 144) = 1;
    *(v21 + 98) = 1;
    *(v21 + 97) = v12;
  }

  if (*(a2 + 24) == 1)
  {
    sub_245451EF4(a2, 1, 2);
  }

  *(a2 + 24) = 2;
  sub_24544E4E4(a2);
  return v17;
}

uint64_t sub_24544DB04(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = *a2;
  LOBYTE(v10) = 1;
  if (v9 > 1)
  {
    if (v9 == 3)
    {
      v11 = 1;
      goto LABEL_13;
    }

    if (v9 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (*a2)
  {
    v11 = 1;
    if (v9 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v10 = a2[96];
  if (v10 != 1 || (v8 = a2[91], v8 != 1))
  {
    LOBYTE(v8) = 1;
LABEL_11:
    v11 = 0;
    LOBYTE(v10) = v8;
    v8 = 2;
    goto LABEL_13;
  }

  v11 = 2;
LABEL_13:
  *(a4 + 64) = v8;
  *(a4 + 44) = v11;
  *(a4 + 52) = 0;
  *(a4 + 43) = -1;
  if (a2[96] == 1 && *(a2 + 18) >= 1)
  {
    if (**(a2 + 10))
    {
      *(a3 + 16) = 1;
      if (a1[8] == 1 && ((a1[9] >> *(a4 + 64)) & 1) != 0)
      {
        *(a3 + 22) = 1;
        *(a4 + 54) |= 1u;
        *(a4 + 52) |= 1u;
      }
    }

    if (*(a2 + 18) >= 5)
    {
      if (*(*(a2 + 10) + 4))
      {
        *(a3 + 17) = 1;
        if (a1[10] == 1 && ((a1[11] >> *(a4 + 64)) & 1) != 0)
        {
          *(a3 + 23) = 1;
          *(a4 + 54) |= 0x20u;
          *(a4 + 52) |= 1u;
        }
      }

      if (*(a2 + 18) >= 6)
      {
        if (*(*(a2 + 10) + 5))
        {
          *(a3 + 18) = 1;
          if (a1[46] == 1 && ((a1[47] >> *(a4 + 64)) & 1) != 0)
          {
            *(a3 + 24) = 1;
            *(a4 + 54) |= 0x40u;
            *(a4 + 52) |= 1u;
          }
        }
      }
    }
  }

  if (!*(a3 + 22) && !*(a3 + 23) && !*(a3 + 24))
  {
    if (*(a3 + 16) || *(a3 + 17) || *(a3 + 18))
    {
      *a3 = 2;
    }

    goto LABEL_61;
  }

  if ((v10 & 1) == 0)
  {
LABEL_61:
    *a3 = 2;
    return 1;
  }

  *(a3 + 12) = *(a4 + 64);
  *(a4 + 59) = a2[91];
  *(a4 + 56) = 0;
  *(a4 + 58) = 0;
  if (a2[40] == 1 && a2[22] == 1)
  {
    v12 = a2[7];
    *a4 = 0;
    *(a4 + 42) = 0;
    v13 = (a4 + 42);
    if (v12 != 1)
    {
      *(a3 + 28) = 0;
      v14 = a2[17];
      *(a4 + 4) = v14;
      if (a1[49] == 1 && a2[19] == 1 && (v15 = a2[18], v14 > v15))
      {
        *(a4 + 43) = v15;
        if (*(a3 + 22) == 1 || *(a3 + 23) == 1 || *(a3 + 24) == 1)
        {
          *(a3 + 104) = 1;
          *(a3 + 116) = 4;
        }
      }

      else
      {
        *(a4 + 43) = -1;
        *(a3 + 104) = 0;
      }

      goto LABEL_63;
    }
  }

  else
  {
    if (a2[7] != 1)
    {
      result = 0;
      *a3 = 2;
      return result;
    }

    *a4 = 0;
    *(a4 + 42) = 0;
    v13 = (a4 + 42);
  }

  if (a2[6])
  {
    v16 = a2[4];
    if (a2[4])
    {
      v17 = sub_2454509A4(a2[6]);
      *a4 = v17;
      if (v17)
      {
        *(a3 + 28) = 2;
        v18 = 1 << v16;
        if (v16 == 7)
        {
          LOBYTE(v18) = -1;
        }

        if (a2[5] == 1)
        {
          v19 = v18;
        }

        else
        {
          v19 = -1;
        }

        *(a3 + 97) = v19;
        *(a3 + 98) = 0;
        *v13 = v19;
      }

LABEL_63:
      *(a4 + 36) = 2;
      if (a2[9] == 1)
      {
        v21 = a2[8];
        if (v21 <= 1)
        {
          if (v21 == 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          if (a2[8])
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          *(a4 + 36) = v23;
        }
      }

      if (a2[12] == 1)
      {
        *(a4 + 8) = a2[10];
        *(a4 + 16) = a2[11];
      }

      v24 = a2[13];
      *(a4 + 20) = v24;
      if (v24 == 1 && a2[16] == 1)
      {
        *(a4 + 24) = a2[14];
        *(a4 + 28) = a2[15];
      }

      *(a4 + 12) = a2[23];
      *(a4 + 32) = 2;
      if (a2[42] == 1)
      {
        v25 = a2[41];
        if (v25 <= 2)
        {
          *(a4 + 32) = v25;
        }
      }

      *(a4 + 40) = -1;
      if (a2[54] != 1)
      {
        goto LABEL_100;
      }

      *(a4 + 40) = 0;
      if (a2[43] == 1 && (a1[59] & 1) != 0)
      {
        v26 = 1;
        *(a4 + 40) = 1;
      }

      else
      {
        v26 = 0;
      }

      if (a2[44] == 1 && (a1[59] & 2) != 0)
      {
        v26 |= 2u;
        *(a4 + 40) = v26;
      }

      if (a2[45] == 1 && (a1[59] & 4) != 0)
      {
        v26 |= 4u;
        *(a4 + 40) = v26;
      }

      if (a2[47] == 1 && (a1[59] & 0x10) != 0)
      {
        v26 |= 0x10u;
        *(a4 + 40) = v26;
      }

      if (a2[48] == 1 && (a1[59] & 0x20) != 0)
      {
        v27 = v26 | 0x20;
      }

      else
      {
        if (v26)
        {
LABEL_100:
          *(a4 + 41) = -1;
          if (a2[59] != 1)
          {
            return 0;
          }

          *(a4 + 41) = 0;
          if (a2[55] == 1 && (a1[58] & 1) != 0)
          {
            v28 = 1;
            *(a4 + 41) = 1;
          }

          else
          {
            v28 = 0;
          }

          if (a2[56] == 1 && (a1[58] & 2) != 0)
          {
            v28 |= 2u;
            *(a4 + 41) = v28;
          }

          if (a2[57] == 1 && (a1[58] & 4) != 0)
          {
            v28 |= 4u;
            *(a4 + 41) = v28;
          }

          if (a2[58] != 1 || (a1[58] & 8) == 0)
          {
            return 0;
          }

          result = 0;
          *(a4 + 41) = v28 | 8;
          return result;
        }

        v27 = a1[59];
      }

      *(a4 + 40) = v27;
      goto LABEL_100;
    }
  }

  result = 2;
  if (*a3 == 1)
  {
    *a3 = 2;
  }

  return result;
}

uint64_t sub_24544E078(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  if (v8 > 1)
  {
    if (v8 == 3)
    {
      goto LABEL_11;
    }

    if (v8 != 2)
    {
LABEL_26:
      *(a3 + 4) = 0x200000002;
      return 1;
    }

LABEL_7:
    if (*(a3 + 4) == 1)
    {
      *(a3 + 4) = 2;
    }

    if (*(a3 + 8) == 1)
    {
      *(a3 + 8) = 2;
    }

    return 1;
  }

  if (!*a2)
  {
    goto LABEL_7;
  }

  if (v8 != 1)
  {
    goto LABEL_26;
  }

LABEL_11:
  *(a3 + 12) = 0;
  v9 = a2[40];
  if ((v9 != 1 || a2[22] != 1) && a2[7] != 1 && a2[3] != 1)
  {
    result = 0;
    *(a3 + 4) = 0x200000002;
    return result;
  }

  if (a2[3] == 1)
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 8) = 1;
    *(a4 + 16) = 1;
    *(a4 + 4) = 1;
    *(a4 + 12) = a2[1];
    *(a4 + 16) = a2[2];
    v9 = a2[40];
  }

  if (v9 == 1 && a2[22] == 1)
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 8) = 2;
    *(a4 + 12) = -255;
    *(a4 + 4) = 0;
    v10 = a2[17];
    *(a4 + 12) = v10;
    if (a1[49] == 1 && a2[19] == 1 && (v11 = a2[18], v10 > v11))
    {
      *(a4 + 13) = v11;
      if (*(a3 + 4) == 1)
      {
        *(a3 + 108) = 1;
        *(a3 + 120) = 4;
      }

      if (*(a3 + 8) != 1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *(a4 + 13) = -1;
      *(a3 + 108) = 0;
    }

    *(a3 + 112) = 0;
  }

LABEL_32:
  if (a2[7] != 1)
  {
    v13 = *(a4 + 4);
    if (v13 == 1)
    {
      v14 = *(a3 + 4);
      if (v14 == 1)
      {
        if (*(a4 + 12))
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
          *(a3 + 4) = 2;
        }
      }

      if (*(a3 + 8) == 1)
      {
        *(a3 + 8) = 2;
      }

      v13 = 1;
LABEL_56:
      if (v14 == 1)
      {
        v18 = *(a2 + 28);
        if (v18 >= 1)
        {
          v19 = *(a2 + 15);
          if (*v19)
          {
            *(a4 + 21) = 1;
          }

          if (v18 != 1)
          {
            if (v19[1])
            {
              *(a4 + 22) = 1;
            }

            if (v18 >= 3 && v19[2])
            {
              *(a4 + 23) = 1;
            }
          }
        }

        if (*(a4 + 21) || *(a4 + 22) || (v20 = *(a4 + 23), *(a4 + 23)))
        {
          v20 = 1;
        }

        else
        {
          *(a3 + 4) = 2;
        }
      }

      else
      {
        v20 = 0;
        if (*(a3 + 8) != 1)
        {
          return 0;
        }
      }

      if (*(a3 + 8) == 1)
      {
        v21 = *(a2 + 68);
        if (v21 >= 1)
        {
          v22 = *(a2 + 35);
          if (*v22 && a1[64])
          {
            *(a4 + 24) = 1;
          }

          if (v21 != 1)
          {
            if (v22[1] && a1[64])
            {
              *(a4 + 25) = 1;
            }

            if (v21 >= 3)
            {
              if (v22[2] && a1[65])
              {
                *(a4 + 26) = 1;
              }

              if (v21 != 3 && v22[3] && a1[65])
              {
                *(a4 + 27) = 1;
              }
            }
          }
        }

        if (*(a4 + 24) || *(a4 + 25) || *(a4 + 26) || *(a4 + 27))
        {
          v23 = 1;
          goto LABEL_96;
        }

        *(a3 + 8) = 2;
      }

      v23 = 0;
      if (v20)
      {
LABEL_96:
        if (*a3 != 1)
        {
          if (v13 == 1)
          {
            *(a3 + 28) = 1;
          }

          else if (v13)
          {
            *(a3 + 28) = 2;
            *(a3 + 97) = *(a4 + 12);
          }

          else
          {
            *(a3 + 28) = 0;
            *(a3 + 97) = 0;
          }
        }

        if (v20)
        {
          result = 0;
          *a4 = 0;
          return result;
        }

        if (v23)
        {
          result = 0;
          *a4 = 3;
          return result;
        }
      }

      return 0;
    }

LABEL_51:
    v14 = *(a3 + 4);
    goto LABEL_56;
  }

  if (a2[6] && a2[4] && *(a3 + 8) != 1)
  {
    *(a4 + 4) = xmmword_24548AEA0;
    v15 = 255;
    if (a2[5] == 1)
    {
      v16 = a2[4];
      if (v16 == 7)
      {
        v15 = 255;
      }

      else
      {
        v15 = 1 << v16;
      }

      v17 = 12;
    }

    else
    {
      v17 = 16;
    }

    *(a4 + v17) = v15;
    *(a4 + 16) = sub_2454509A4(a2[6]);
    v13 = 2;
    goto LABEL_51;
  }

  if (*(a3 + 4) == 1)
  {
    *(a3 + 4) = 2;
  }

  result = 2;
  if (*(a3 + 8) == 1)
  {
    *(a3 + 8) = 2;
  }

  return result;
}

void sub_24544E4E4(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 20) == 4)
  {
    if (*(a1 + 24) == 2)
    {
      v2 = *(a1 + 128);
      if (v2)
      {
        free(v2);
        *(a1 + 128) = 0;
      }

      v3 = *(a1 + 136);
      if (v3)
      {
        free(v3);
        *(a1 + 136) = 0;
      }

      v4 = *(a1 + 80);
      if (v4)
      {
        free(v4);
        *(a1 + 80) = 0;
      }

      sub_2454542A8((a1 + 88));
      sub_2454542A8((a1 + 112));
      *(a1 + 40) = 0;
      sub_2454542F4((a1 + 96));
      sub_2454542F4((a1 + 120));

      sub_245454340((a1 + 104));
      return;
    }

    v5 = 4084;
  }

  else
  {
    v5 = 4093;
  }

  sub_245479990(v5, "lpp_transaction.c");
}

BOOL sub_24544E5DC(void *a1)
{
  result = 1;
  if (!a1[4])
  {
    v2 = a1[5];
    if (!v2 || *(v2 + 352) != 1 && *(v2 + 176) != 1)
    {
      v3 = a1[6];
      if (!v3 || *(v3 + 184) != 1)
      {
        v4 = a1[7];
        if (!v4 || *(v4 + 216) != 1)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24544E63C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  *a4 = 0;
  if (*(a2 + 20) != 4)
  {
    v11 = 3454;
    goto LABEL_9;
  }

  v5 = **(a1 + 72);
  if (!v5)
  {
LABEL_7:
    v11 = 3474;
LABEL_9:
    sub_245479990(v11, "lpp_transaction.c");
    return 0;
  }

  v9 = (a2 + 48);
  v10 = *(a2 + 28);
  while (*(v5 + 4) != v10 || *(v5 + 5) != *(a2 + 32))
  {
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v10 == 1)
  {
    v14 = *(v5 + 64);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == 1)
  {
    if (*v9 == 1)
    {
      v15 = *(a3 + 8);
      v16 = *(a2 + 60);
      if (v15 == v16 || v15 == 1 && (v16 - 1) <= 1)
      {
        if (*(a2 + 152) == 1)
        {
          if (*(a3 + 272) == 1)
          {
            *(a2 + 164) = 2;
LABEL_26:
            if (*(a2 + 168) != 3)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

          *(a2 + 164) = 3;
        }

        else
        {
          if (*(a2 + 156) != 1)
          {
LABEL_31:
            if (!*(a2 + 40))
            {
              *(a2 + 40) = 1;
            }

            sub_24544F570(a1, v9, a3, 0);
            goto LABEL_34;
          }

          if (*(a2 + 164) != 3)
          {
            goto LABEL_26;
          }
        }

LABEL_30:
        sub_24544F570(a1, a2 + 48, a3, 1);
        goto LABEL_31;
      }

      v17 = 3576;
    }

    else
    {
      v17 = 3582;
    }

    sub_245479990(v17, "lpp_transaction.c");
  }

LABEL_34:
  if (*(a3 + 416) || *(a3 + 320) || *(a3 + 552) || *(a3 + 417))
  {
    if (*(a2 + 52) == 1)
    {
      if (*(a3 + 416) == 1)
      {
        *(a2 + 52) = 3;
        *(a2 + 156) = 0;
      }

      else if (*(a3 + 320) == 1 && !*(a3 + 328))
      {
        if (*(a2 + 156) == 1)
        {
          if (*(a3 + 409) == 1)
          {
            *(a2 + 168) = 2;
          }

          else
          {
            *(a2 + 168) = 3;
            sub_2454501F0(a1, v9, a3 + 328, 1);
          }
        }

        if (!*(a2 + 40))
        {
          *(a2 + 40) = 1;
        }

        sub_2454501F0(a1, v9, a3 + 328, 0);
      }
    }

    if (*(a2 + 56) == 1)
    {
      if (*(a3 + 552) == 1)
      {
        *(a2 + 56) = 3;
        *(a2 + 160) = 0;
      }

      else if (*(a3 + 417) == 1 && *(a3 + 424) == 3)
      {
        if (!*(a2 + 40))
        {
          *(a2 + 40) = 1;
        }

        sub_245450560(a1, v9, a3 + 424);
      }
    }
  }

  v118 = 0;
  v119[0] = 0;
  v18 = *(a2 + 76);
  if (v18 != 1)
  {
    if (!v18)
    {
      v19 = *(a2 + 60);
      if (v19)
      {
        v20 = 1;
      }

      else
      {
        v20 = *(a2 + 88) == 0;
      }

      if (!v20 || (v19 - 1) <= 1)
      {
        v21 = *(a2 + 152);
        if ((!v21 || v21 == 1 && *(a2 + 164) == 3) && *v9 == 1)
        {
          *v9 = 5;
        }
      }

      if (*(a2 + 96))
      {
        v22 = *(a2 + 156);
        if ((!v22 || v22 == 1 && *(a2 + 168) == 3) && *(a2 + 52) == 1)
        {
          *(a2 + 52) = 5;
        }
      }

      if (*(a2 + 104) && *(a2 + 56) == 1)
      {
        *(a2 + 56) = 5;
      }

      if (*v9 == 1 || *(a2 + 52) == 1 || *(a2 + 56) == 1)
      {
        v23 = *(a2 + 152);
        if (v23 != 1 && *(a2 + 156) != 1 && *(a2 + 160) != 1 || *(a2 + 164) == 4 || *(a2 + 168) == 4)
        {
          goto LABEL_271;
        }
      }

      else
      {
        v23 = *(a2 + 152);
      }

      if (v23 == 1 || *(a2 + 156) == 1 || *(a2 + 160) == 1)
      {
        v40 = *(a2 + 80);
        if (!v40)
        {
          v40 = malloc_type_calloc(1uLL, 0x60uLL, 0x57089378uLL);
          *v40 = 0u;
          *(v40 + 1) = 0u;
          *(v40 + 2) = 0u;
          *(v40 + 3) = 0u;
          *(v40 + 4) = 0u;
          *(v40 + 5) = 0u;
          *(a2 + 80) = v40;
        }

        v41 = *(a2 + 164);
        if (v41 == 2)
        {
          *(v40 + 51) = 257;
          if (*(a2 + 152) == 1)
          {
            *(a2 + 164) = 4;
          }

          goto LABEL_139;
        }

        v42 = *(a2 + 168);
        if (v42 == 2 || (v43 = *(a2 + 172), v43 == 2))
        {
          *(v40 + 51) = 257;
LABEL_139:
          if (*(a2 + 156) == 1 && *(a2 + 168) == 2)
          {
            *(a2 + 168) = 4;
          }

          goto LABEL_173;
        }

        v40[52] = 1;
        if (v41 == 3 || v42 == 3 || v43 == 3)
        {
          v40[51] = 0;
        }
      }

LABEL_173:
      if (sub_24544E5DC(v9) || *(a2 + 80))
      {
        goto LABEL_175;
      }

      if (*(a2 + 88) || *(a2 + 96) || *(a2 + 104))
      {
        v94 = malloc_type_calloc(1uLL, 0x60uLL, 0x57089378uLL);
        *v94 = 0u;
        *(v94 + 1) = 0u;
        *(v94 + 4) = 0u;
        *(v94 + 5) = 0u;
        *(v94 + 2) = 0u;
        *(v94 + 3) = 0u;
        *(a2 + 80) = v94;
        v32 = 5;
        *(v94 + 49) = 258;
        goto LABEL_176;
      }

LABEL_103:
      v32 = 6;
      goto LABEL_176;
    }

    if (*v9 == 1)
    {
      v27 = (a2 + 144);
      if (*(a2 + 144) == 1)
      {
        v114 = v14;
        memset(v120, 0, 3);
        v28 = *(a2 + 88);
        if (v28)
        {
          v29 = 0;
          v30 = 0;
          v31 = v9;
          *v9 = 5;
        }

        else
        {
          v31 = v9;
          v29 = 1;
          v30 = 1;
        }

LABEL_143:
        v44 = *(a2 + 96);
        if (v44 && *(a2 + 52) == 1)
        {
          *(a2 + 52) = 5;
        }

        if (sub_24544E5DC(v31))
        {
          if (!v30 && (*(v28 + 352) == 1 || *(v28 + 176) == 1) && *(a2 + 52) == 1)
          {
            v45 = 0;
            HIBYTE(v120[0]) = 1;
            *(a2 + 52) = 5;
            v46 = v5[2];
            do
            {
              if (*(v120 + v45) == 1)
              {
                sub_245447E7C(a1, v46, v45, 1);
              }

              ++v45;
            }

            while (v45 != 3);
            v44 = *(a2 + 96);
          }

          if (v44 && *(v44 + 184) == 1 && *v31 == 1)
          {
            v47 = 0;
            *(v120 + 1) = 0;
            *v31 = 5;
            LOBYTE(v120[0]) = 1;
            v48 = v5[2];
            do
            {
              if (*(v120 + v47) == 1)
              {
                sub_245447E7C(a1, v48, v47, 0);
              }

              ++v47;
            }

            while (v47 != 3);
          }
        }

        else
        {
          if (v29)
          {
            v49 = 1;
            v32 = 6;
LABEL_229:
            v9 = v31;
LABEL_230:
            if (*v27)
            {
              goto LABEL_270;
            }

            v96 = *(a2 + 128);
            if (v96 && *v9 == 5)
            {
              *v9 = 1;
            }

            v97 = *(a2 + 52);
            if (v97 == 5)
            {
              v98 = *(a2 + 136);
              if (v98)
              {
                v97 = 1;
                *(a2 + 52) = 1;
                *v98 = 0;
                v99 = *(a2 + 48) == 1;
                goto LABEL_244;
              }

              v99 = *v9;
              if (*v9 == 1)
              {
                v97 = 5;
                goto LABEL_244;
              }
            }

            else
            {
              v99 = *v9;
              if (*v9 == 1)
              {
                goto LABEL_244;
              }

              if (v97 == 1)
              {
                goto LABEL_243;
              }
            }

            if (*(a2 + 56) != 1)
            {
              goto LABEL_270;
            }

LABEL_243:
            v99 = 0;
LABEL_244:
            v100 = *(a2 + 145);
            if (v100 != 255)
            {
              *(a2 + 145) = v100 - 1;
            }

            v101 = 0;
            if (v99)
            {
              v102 = v96;
            }

            else
            {
              v102 = 0;
            }

            if (v97 == 1)
            {
              v101 = *(a2 + 136);
            }

            sub_245447AEC(a1, v5 + 4, v114, v102, v101, &v118 + 1, v119, 0);
            if (*v9 == 1)
            {
              v103 = *(a2 + 128);
              if (v103)
              {
                v104 = 2;
                if (*(a1 + 108) == 4)
                {
                  v104 = 3;
                }

                v105 = v104 | (*(v5 + 16) << 32);
                v106 = *(v5 + 5);
                *v103 *= 1000;
                sub_245453BB8(a1, v103, v105, v106, a2);
              }
            }

            for (i = 0; i != 3; ++i)
            {
              if (*(v9 + i) == 1 && v119[i - 2] == 1)
              {
                *(v9 + i) = 3;
              }
            }

            if (*v9 == 1 && (*(a2 + 52) == 1 || *(a2 + 56) == 1))
            {
              v108 = *(a2 + 128);
              if (!v108)
              {
LABEL_268:
                v110 = *(a2 + 136);
                if (v110)
                {
                  free(v110);
                  *(a2 + 136) = 0;
                }

LABEL_270:
                if ((v49 & 1) == 0)
                {
LABEL_176:
                  if (v32 == 6)
                  {
                    v89 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
                    bzero(v89, 0xA28uLL);
                    *(a4 + 3) = v89;
                    *(v89 + 6) = 6;
                    *(v89 + 8) = 0;
                    *(v89 + 10) = 0;
                    *(v89 + 24) = 258;
                    LOBYTE(v88) = 1;
                    *a4 = 1;
                  }

                  else
                  {
                    if (*(a2 + 40))
                    {
                      v115 = v9;
                      v50 = 0;
                      v51 = a2 + 88;
                      v52 = 24;
                      do
                      {
                        v53 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
                        bzero(v53, 0xA28uLL);
                        *&a4[v52] = v53;
                        bzero(v53 + 24, 0xA08uLL);
                        *(v53 + 6) = 5;
                        if (*(v51 - 8))
                        {
                          v53[144] = 1;
                          v54 = *(v51 - 8);
                          v55 = v54[1];
                          *(v53 + 3) = *v54;
                          *(v53 + 4) = v55;
                          v56 = v54[2];
                          v57 = v54[3];
                          v58 = v54[5];
                          *(v53 + 7) = v54[4];
                          *(v53 + 8) = v58;
                          *(v53 + 5) = v56;
                          *(v53 + 6) = v57;
                          v59 = *(v51 - 8);
                          if (v59)
                          {
                            free(v59);
                            *(v51 - 8) = 0;
                          }
                        }

                        if (*v51)
                        {
                          v53[544] = 1;
                          memcpy(v53 + 152, *v51, 0x188uLL);
                          if (*v51)
                          {
                            free(*v51);
                            *v51 = 0;
                          }
                        }

                        else if (*(v51 + 24) && (*(v51 + 76) == 3 || *(v51 + 80) == 3 || *(v51 + 84) == 3))
                        {
                          v53[544] = 1;
                          memcpy(v53 + 152, *(v51 + 24), 0x188uLL);
                          v60 = *(v51 + 24);
                          if (v60)
                          {
                            free(v60);
                            *(v51 + 24) = 0;
                          }
                        }

                        else if (*(v51 - 40) == 2)
                        {
                          v53[544] = 1;
                          v53[540] = 1;
                          *(v53 + 127) = 1;
                          v53[512] = 0;
                        }

                        if (*(v51 + 8))
                        {
                          v53[1336] = 1;
                          v61 = *(v51 + 8);
                          v62 = *v61;
                          v63 = v61[2];
                          *(v53 + 1112) = v61[1];
                          *(v53 + 1128) = v63;
                          *(v53 + 1096) = v62;
                          v64 = v61[3];
                          v65 = v61[4];
                          v66 = v61[6];
                          *(v53 + 1176) = v61[5];
                          *(v53 + 1192) = v66;
                          *(v53 + 1144) = v64;
                          *(v53 + 1160) = v65;
                          v67 = v61[7];
                          v68 = v61[8];
                          v69 = v61[10];
                          *(v53 + 1240) = v61[9];
                          *(v53 + 1256) = v69;
                          *(v53 + 1208) = v67;
                          *(v53 + 1224) = v68;
                          v70 = v61[11];
                          v71 = v61[12];
                          v72 = v61[14];
                          *(v53 + 1304) = v61[13];
                          *(v53 + 1320) = v72;
                          *(v53 + 1272) = v70;
                          *(v53 + 1288) = v71;
                          v73 = *(v51 + 8);
                          if (v73)
                          {
                            free(v73);
                            *(v51 + 8) = 0;
                          }
                        }

                        else if (*(v51 + 32))
                        {
                          v53[1336] = 1;
                          v74 = *(v51 + 32);
                          v75 = *v74;
                          v76 = v74[2];
                          *(v53 + 1112) = v74[1];
                          *(v53 + 1128) = v76;
                          *(v53 + 1096) = v75;
                          v77 = v74[3];
                          v78 = v74[4];
                          v79 = v74[6];
                          *(v53 + 1176) = v74[5];
                          *(v53 + 1192) = v79;
                          *(v53 + 1144) = v77;
                          *(v53 + 1160) = v78;
                          v80 = v74[7];
                          v81 = v74[8];
                          v82 = v74[10];
                          *(v53 + 1240) = v74[9];
                          *(v53 + 1256) = v82;
                          *(v53 + 1208) = v80;
                          *(v53 + 1224) = v81;
                          v83 = v74[11];
                          v84 = v74[12];
                          v85 = v74[14];
                          *(v53 + 1304) = v74[13];
                          *(v53 + 1320) = v85;
                          *(v53 + 1272) = v83;
                          *(v53 + 1288) = v84;
                          v86 = *(v51 + 32);
                          if (v86)
                          {
                            free(v86);
                            *(v51 + 32) = 0;
                          }
                        }

                        else if (*(v51 - 36) == 2)
                        {
                          v53[1336] = 1;
                          v53[1332] = 1;
                          *(v53 + 321) = 1;
                          v53[1288] = 0;
                        }

                        if (*(v51 + 16))
                        {
                          v53[2128] = 1;
                          memcpy(v53 + 1864, *(v51 + 16), 0x108uLL);
                          v87 = *(v51 + 16);
                          if (v87)
                          {
                            free(v87);
                            *(v51 + 16) = 0;
                          }
                        }

                        else if (*(v51 - 32) == 2)
                        {
                          v53[2128] = 1;
                          v53[2124] = 1;
                          *(v53 + 521) = 1;
                          v53[2088] = 0;
                        }

                        LOBYTE(v88) = *a4 + 1;
                        *a4 = v88;
                        ++v50;
                        v52 += 48;
                        v51 += 136;
                      }

                      while (v50 < *(a2 + 40));
                      v9 = v115;
                    }

                    else
                    {
                      LOBYTE(v88) = *a4;
                    }

                    if (!v88)
                    {
                      goto LABEL_220;
                    }
                  }

                  v90 = 0;
                  v91 = 24;
                  do
                  {
                    v92 = *&a4[v91];
                    *(v92 + 2) = 1;
                    *v92 = *(a2 + 16);
                    if (*(a2 + 48) != 1 && *(a2 + 52) != 1 && *(a2 + 56) != 1)
                    {
                      *(v92 + 3) = v90 == v88 - 1;
                    }

                    *(v92 + 2592) = 1;
                    *(v92 + 16) = 0;
                    *(v92 + 24) = v32;
                    v93 = *&a4[v91];
                    if ((*(v93 + 24) - 5) <= 1)
                    {
                      *(v93 + 8) = 256;
                      *(v93 + 6) = 1;
                    }

                    ++v90;
                    v88 = *a4;
                    v91 += 48;
                  }

                  while (v90 < v88);
LABEL_220:
                  v12 = 1;
                  goto LABEL_272;
                }

                goto LABEL_271;
              }

              *(a2 + 148) = *v108;
            }

            v109 = *(a2 + 128);
            if (v109)
            {
              free(v109);
              *(a2 + 128) = 0;
            }

            goto LABEL_268;
          }

          v9 = v31;
          if (*(a2 + 52) == 1 || *(a2 + 56) == 1)
          {
            v49 = 1;
            v32 = 6;
            goto LABEL_230;
          }

          v95 = *(a2 + 80);
          if (!v95)
          {
            v95 = malloc_type_calloc(1uLL, 0x60uLL, 0x57089378uLL);
            *v95 = 0u;
            v95[1] = 0u;
            v95[2] = 0u;
            v95[3] = 0u;
            v95[4] = 0u;
            v95[5] = 0u;
            *(a2 + 80) = v95;
          }

          *(v95 + 32) = 0;
          *(v95 + 24) = 768;
          *(v95 + 50) = 1;
        }

        v49 = 0;
        *(a2 + 144) = 0;
        v32 = 5;
        goto LABEL_229;
      }

      if (*(a2 + 52) == 1 || *(a2 + 56) == 1)
      {
        goto LABEL_271;
      }
    }

    else
    {
      if (*(a2 + 52) != 1 && *(a2 + 56) != 1)
      {
        goto LABEL_103;
      }

      v27 = (a2 + 144);
      if (*(a2 + 144) == 1)
      {
        v114 = v14;
        v31 = v9;
        v29 = 0;
        memset(v120, 0, 3);
        v28 = *(a2 + 88);
        v30 = v28 == 0;
        goto LABEL_143;
      }
    }

    if (!*(a2 + 88) && !*(a2 + 96) && !*(a2 + 104))
    {
      goto LABEL_271;
    }

    v33 = *(a2 + 146) + 1;
    *(a2 + 146) = v33;
    v34 = *(a2 + 145);
    if (v34 != 255 && v34 <= v33)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v117 = 0;
      do
      {
        if (*(v9 + v35) == 1)
        {
          if (!v35)
          {
            v36 = 1;
            v37 = 1;
          }

          *(v9 + v35) = 5;
        }

        v35 += 4;
      }

      while (v35 != 12);
      v116 = v36;
      if (v37 == 1)
      {
        v38 = 0;
        v39 = v5[2];
        do
        {
          if (*(&v116 + v38) == 1)
          {
            sub_245447E7C(a1, v39, v38, 0);
          }

          ++v38;
        }

        while (v38 != 3);
      }
    }

    if (sub_24544E5DC(v9))
    {
      goto LABEL_175;
    }

    v25 = *(a2 + 80);
    if (!v25)
    {
      v25 = malloc_type_calloc(1uLL, 0x60uLL, 0x57089378uLL);
      *v25 = 0u;
      v25[1] = 0u;
      v25[2] = 0u;
      v25[3] = 0u;
      v25[4] = 0u;
      v25[5] = 0u;
      *(a2 + 80) = v25;
    }

    *(v25 + 32) = 0;
    v26 = 768;
    goto LABEL_126;
  }

  v24 = *(a2 + 96);
  if (v24)
  {
    if (*(v24 + 184) == 1)
    {
LABEL_175:
      v32 = 5;
      goto LABEL_176;
    }

    v25 = *(a2 + 80);
    if (!v25)
    {
      v25 = malloc_type_calloc(1uLL, 0x60uLL, 0x57089378uLL);
      *v25 = 0u;
      v25[1] = 0u;
      v25[2] = 0u;
      v25[3] = 0u;
      v25[4] = 0u;
      v25[5] = 0u;
      *(a2 + 80) = v25;
    }

    *(v25 + 32) = 0;
    v26 = 512;
LABEL_126:
    *(v25 + 24) = v26;
    *(v25 + 50) = 1;
    *(v25 + 52) = 0;
    goto LABEL_175;
  }

  if (*(a2 + 52) != 5)
  {
    goto LABEL_103;
  }

LABEL_271:
  sub_245479990(3827, "lpp_transaction.c");
  v12 = 0;
LABEL_272:
  v111 = v5 + 110;
  v112 = v5 + 105;
  for (j = 48; j != 60; j += 4)
  {
    if (*(a2 + j) != 1 && *(v112 - 1) == *(a2 + 16) && *v112 == *(a2 + 17))
    {
      *(v112 - 1) = 0;
      *v111 = 0;
    }

    ++v111;
    v112 += 2;
  }

  if (*v9 != 1 && *(a2 + 52) != 1 && *(a2 + 56) != 1)
  {
    sub_245451EF4(a2, *(a2 + 24), 2);
    *(a2 + 24) = 2;
    sub_24544E4E4(a2);
  }

  return v12;
}

void sub_24544F570(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a2 || !a3)
  {
    return;
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    free(v8);
    *(a2 + 32) = 0;
  }

  if (a4 == 1)
  {
    v9 = 64;
  }

  else
  {
    v9 = 40;
  }

  sub_2454542A8((a2 + v9));
  v10 = *(a2 + 12);
  if ((v10 - 1) < 2)
  {
    v11 = *(a3 + 276);
    if (v11 != 1)
    {
      if (v11)
      {
        v22 = malloc_type_calloc(1uLL, 0x188uLL, 0x57089378uLL);
        *v22 = 0u;
        v22[1] = 0u;
        v22[2] = 0u;
        v22[3] = 0u;
        v22[4] = 0u;
        v22[5] = 0u;
        v22[6] = 0u;
        v22[7] = 0u;
        v22[8] = 0u;
        v22[9] = 0u;
        v22[10] = 0u;
        v22[11] = 0u;
        v22[12] = 0u;
        v22[13] = 0u;
        v22[14] = 0u;
        v22[15] = 0u;
        v22[16] = 0u;
        v22[17] = 0u;
        v22[18] = 0u;
        v22[19] = 0u;
        v22[20] = 0u;
        v22[21] = 0u;
        v22[22] = 0u;
        v22[23] = 0u;
        *(v22 + 48) = 0;
        *(a2 + v9) = v22;
        *(v22 + 388) = 1;
        *(v22 + 360) = 1;
        *(v22 + 89) = 1;
        return;
      }

      if ((*(a2 + 22) != 1 || (*(a3 + 128) & 1) == 0) && (*(a2 + 23) != 1 || (*(a3 + 128) & 0x10) == 0) && (*(a2 + 24) != 1 || (*(a3 + 128) & 0x20) == 0))
      {
LABEL_68:
        v34 = malloc_type_calloc(1uLL, 0x60uLL, 0x57089378uLL);
        *v34 = 0u;
        v34[1] = 0u;
        v34[2] = 0u;
        v34[3] = 0u;
        v34[4] = 0u;
        v34[5] = 0u;
        *(a2 + 32) = v34;
        v35 = *(a3 + 46);
        *(v34 + 48) = v35;
        if (v35 != 1)
        {
          goto LABEL_77;
        }

        if (*(a3 + 60) == 1)
        {
          if (*(a3 + 72) == 1)
          {
            *(v34 + 9) = 3;
            *(v34 + 20) = *(a3 + 48);
            *(*(a2 + 32) + 42) = *(a3 + 50);
            *(*(a2 + 32) + 45) = *(a3 + 68);
            *(*(a2 + 32) + 44) = *(a3 + 64);
            *(*(a2 + 32) + 46) = *(a3 + 56);
            *(*(a2 + 32) + 47) = *(a3 + 76);
            goto LABEL_77;
          }

          *(v34 + 9) = 1;
          *(v34 + 20) = *(a3 + 48);
          *(*(a2 + 32) + 42) = *(a3 + 50);
          *(*(a2 + 32) + 45) = *(a3 + 68);
          v36 = *(a3 + 64);
        }

        else
        {
          if (*(a3 + 52) != 1)
          {
            *(v34 + 20) = *(a3 + 48);
            *(*(a2 + 32) + 42) = *(a3 + 50);
LABEL_77:
            v37 = *(a2 + 32);
            if (!v37)
            {
              goto LABEL_97;
            }

            *(v37 + 50) = 0;
            *(v37 + 32) = 1;
            v38 = *(a3 + 22);
            if (v38 <= 4)
            {
              if (*(a3 + 22))
              {
                if (v38 == 1)
                {
                  *v37 = 1;
                  *(v37 + 8) = *(a3 + 24);
                  *(*(a2 + 32) + 12) = *(a3 + 28);
                  *(*(a2 + 32) + 16) = *(a3 + 32);
                  *(*(a2 + 32) + 20) = *(a3 + 44);
                }

                else if (v38 == 3)
                {
                  *v37 = 2;
                  *(v37 + 8) = *(a3 + 24);
                  *(*(a2 + 32) + 12) = *(a3 + 28);
                  *(*(a2 + 32) + 16) = *(a3 + 32);
                  *(*(a2 + 32) + 20) = *(a3 + 36);
                  *(*(a2 + 32) + 21) = *(a3 + 37);
                  *(*(a2 + 32) + 22) = *(a3 + 38);
                  *(*(a2 + 32) + 23) = *(a3 + 45);
                }
              }

              else
              {
                *v37 = 0;
                *(v37 + 8) = *(a3 + 24);
                *(*(a2 + 32) + 12) = *(a3 + 28);
                *(*(a2 + 32) + 16) = *(a3 + 32);
              }

              goto LABEL_97;
            }

            if (*(a3 + 22) > 8u)
            {
              if (v38 == 9)
              {
                *v37 = 5;
                *(v37 + 8) = *(a3 + 24);
                *(*(a2 + 32) + 12) = *(a3 + 28);
                *(*(a2 + 32) + 16) = *(a3 + 32);
                *(*(a2 + 32) + 20) = *(a3 + 39);
                *(*(a2 + 32) + 22) = *(a3 + 40);
                *(*(a2 + 32) + 24) = *(a3 + 36);
                *(*(a2 + 32) + 25) = *(a3 + 37);
                *(*(a2 + 32) + 26) = *(a3 + 38);
                *(*(a2 + 32) + 27) = *(a3 + 44);
                *(*(a2 + 32) + 28) = *(a3 + 45);
LABEL_97:
                v40 = *(a2 + 32);
                if (*(a1 + 60) == 1)
                {
                  *(v40 + 72) = 1;
                  if (*(a3 + 288))
                  {
                    *(v40 + 88) = 1;
                    v41 = malloc_type_calloc(1uLL, 0xEuLL, 0x57089378uLL);
                    *v41 = 0;
                    *(v41 + 6) = 0;
                    v42 = *(a3 + 290);
                    v43 = *(a3 + 292);
                    v44 = *(a3 + 294);
                    v58 = *(a3 + 296);
                    v59 = *(a3 + 298);
                    v45 = *(a3 + 288) / 0xAu;
                    snprintf(__str, 2uLL, "%.1d", *(a3 + 288) % 0xAu);
                    snprintf(v61, 2uLL, "%.1d", (v45 - 10 * ((6554 * v45) >> 16)));
                    *v41 = v61[0];
                    v41[1] = __str[0];
                    snprintf(__str, 2uLL, "%.1d", v42 % 0xAu);
                    snprintf(v61, 2uLL, "%.1d", (v42 / 0xAu - 10 * ((6554 * (v42 / 0xAu)) >> 16)));
                    v41[2] = v61[0];
                    v41[3] = __str[0];
                    snprintf(__str, 2uLL, "%.1d", v43 % 0xAu);
                    snprintf(v61, 2uLL, "%.1d", (v43 / 0xAu - 10 * ((6554 * (v43 / 0xAu)) >> 16)));
                    v41[4] = v61[0];
                    v41[5] = __str[0];
                    snprintf(__str, 2uLL, "%.1d", v44 % 0xAu);
                    snprintf(v61, 2uLL, "%.1d", (v44 / 0xAu - 10 * ((6554 * (v44 / 0xAu)) >> 16)));
                    v41[6] = v61[0];
                    v41[7] = __str[0];
                    snprintf(__str, 2uLL, "%.1d", v58 % 0xAu);
                    snprintf(v61, 2uLL, "%.1d", (v58 / 0xAu - 10 * ((6554 * (v58 / 0xAu)) >> 16)));
                    v41[8] = v61[0];
                    v41[9] = __str[0];
                    snprintf(__str, 2uLL, "%.1d", v59 % 0xAu);
                    snprintf(v61, 2uLL, "%.1d", (v59 / 0xAu - 10 * ((6554 * (v59 / 0xAu)) >> 16)));
                    v41[10] = v61[0];
                    v41[11] = __str[0];
                    *(v41 + 6) = 90;
                    *(*(a2 + 32) + 80) = v41;
                  }

                  else
                  {
                    *(v40 + 88) = 0;
                  }
                }

                else
                {
                  *(v40 + 72) = 0;
                }

                return;
              }

              if (v38 != 10)
              {
                goto LABEL_97;
              }

              v39 = 6;
            }

            else
            {
              if (v38 != 5)
              {
                if (v38 == 8)
                {
                  *v37 = 4;
                  *(v37 + 8) = *(a3 + 24);
                  *(*(a2 + 32) + 12) = *(a3 + 28);
                  *(*(a2 + 32) + 16) = *(a3 + 32);
                  *(*(a2 + 32) + 20) = *(a3 + 39);
                  *(*(a2 + 32) + 22) = *(a3 + 40);
                }

                goto LABEL_97;
              }

              v39 = 3;
            }

            *v37 = v39;
            goto LABEL_97;
          }

          *(v34 + 9) = 2;
          *(v34 + 20) = *(a3 + 48);
          *(*(a2 + 32) + 42) = *(a3 + 50);
          LOBYTE(v36) = *(a3 + 56);
        }

        *(*(a2 + 32) + 44) = v36;
        goto LABEL_77;
      }

      v12 = malloc_type_calloc(1uLL, 0x188uLL, 0x57089378uLL);
      v13 = v12;
      *v12 = 0u;
      v12[1] = 0u;
      v12[2] = 0u;
      v12[3] = 0u;
      v12[4] = 0u;
      v12[5] = 0u;
      v12[6] = 0u;
      v12[7] = 0u;
      v12[8] = 0u;
      v12[9] = 0u;
      v12[10] = 0u;
      v12[11] = 0u;
      v12[12] = 0u;
      v12[13] = 0u;
      v12[14] = 0u;
      v12[15] = 0u;
      v12[16] = 0u;
      v12[17] = 0u;
      v12[18] = 0u;
      v12[19] = 0u;
      v12[20] = 0u;
      v12[21] = 0u;
      v12[22] = 0u;
      v12[23] = 0u;
      *(v12 + 48) = 0;
      *(a2 + v9) = v12;
      *(v12 + 352) = 1;
      if ((*(a2 + 22) != 1 || (v14 = *(a3 + 128)) == 0) && (*(a2 + 23) != 1 || (v14 = *(a3 + 128)) == 0))
      {
        if (*(a2 + 24) != 1)
        {
          goto LABEL_33;
        }

        v14 = *(a3 + 128);
        if (!v14)
        {
          goto LABEL_33;
        }
      }

      v15 = v14 & 1;
      if ((v14 & 0x10) != 0)
      {
        v15 = 5;
      }

      v16 = (v14 & 0x20) != 0 ? 6 : v15;
      if (!v16)
      {
        goto LABEL_33;
      }

      *(v12 + 85) = 1;
      *(v12 + 84) = v16;
      v17 = malloc_type_calloc(1uLL, v16, 0x57089378uLL);
      bzero(v17, v16);
      *(v13 + 43) = v17;
      v18 = *(a3 + 128);
      if (v18)
      {
        *v17 = 1;
        v18 = *(a3 + 128);
        if ((v18 & 0x10) == 0)
        {
LABEL_31:
          if ((v18 & 0x20) != 0)
          {
LABEL_32:
            *(*(v13 + 43) + 5) = 1;
          }

LABEL_33:
          v19 = *(a3 + 124);
          if (v19 == 5)
          {
            *(v13 + 46) = *(a3 + 16) % 0x36EE80u;
            *(v13 + 190) = 0;
            v20 = *(a3 + 20);
            if (v20 == 255)
            {
              v21 = 0;
            }

            else
            {
              *(v13 + 191) = v20;
              v21 = 1;
            }

            v31 = 0;
            *(v13 + 192) = v21;
          }

          else
          {
            *(v13 + 46) = *(a3 + 116);
            v24 = *(a3 + 120);
            if (v24 == 0xFFFF)
            {
              v25 = 0;
            }

            else
            {
              *(v13 + 94) = v24;
              v25 = 1;
            }

            *(v13 + 190) = v25;
            v32 = *(a3 + 122);
            if (v32 == 255)
            {
              v33 = 0;
            }

            else
            {
              *(v13 + 191) = v32;
              v33 = 1;
            }

            *(v13 + 192) = v33;
            v31 = byte_24548AEB7[v19];
          }

          *(v13 + 193) = v31;
          *(v13 + 328) = 0;
          goto LABEL_68;
        }
      }

      else if ((*(a3 + 128) & 0x10) == 0)
      {
        goto LABEL_31;
      }

      *(*(v13 + 43) + 4) = 1;
      if ((*(a3 + 128) & 0x20) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_38;
  }

  if (v10)
  {

    sub_245479990(6688, "lpp_transaction.c");
  }

  else
  {
    if (*(a3 + 276))
    {
LABEL_38:
      if (*a2 == 1)
      {
        *a2 = 4;
      }

      return;
    }

    if ((*(a3 + 136) & 1) != 0 && !*(a3 + 144) || (*(a3 + 136) & 2) != 0 && !*(a3 + 240))
    {
      v26 = 1;
      v27 = malloc_type_calloc(1uLL, 0x188uLL, 0x57089378uLL);
      v28 = v27;
      *v27 = 0u;
      v27[1] = 0u;
      v27[2] = 0u;
      v27[3] = 0u;
      v27[4] = 0u;
      v27[5] = 0u;
      v27[6] = 0u;
      v27[7] = 0u;
      v27[8] = 0u;
      v27[9] = 0u;
      v27[10] = 0u;
      v27[11] = 0u;
      v27[12] = 0u;
      v27[13] = 0u;
      v27[14] = 0u;
      v27[15] = 0u;
      v27[16] = 0u;
      v27[17] = 0u;
      v27[18] = 0u;
      v27[19] = 0u;
      v27[20] = 0u;
      v27[21] = 0u;
      v27[22] = 0u;
      v27[23] = 0u;
      *(v27 + 48) = 0;
      *(a2 + v9) = v27;
      *(v27 + 176) = 1;
      v29 = *(a3 + 136);
      if (v29)
      {
        if (*(a3 + 144))
        {
          v30 = 0;
          v26 = 1;
        }

        else
        {
          if (*(a3 + 156) == 1)
          {
            *v27 = *(a3 + 160);
            v46 = *(a3 + 167);
          }

          else
          {
            *v27 = *(a3 + 148) % 0x36EE80u;
            v46 = *(a3 + 152);
          }

          if (v46 != 255)
          {
            *(v27 + 8) = 1;
            *(v27 + 7) = v46;
          }

          v47 = *(a3 + 164);
          v26 = 0;
          if (v47 == 0xFFFF)
          {
            *(v27 + 6) = 0;
            v30 = 1;
          }

          else
          {
            v30 = 1;
            *(v27 + 6) = 1;
            *(v27 + 2) = v47;
          }
        }
      }

      else
      {
        v30 = 0;
      }

      if ((v29 & 2) != 0)
      {
        v48 = *(a3 + 256);
        if (v48)
        {
          if (!*(a3 + 240))
          {
            if (v26)
            {
              if (*(a3 + 242) == 1)
              {
                v49 = byte_24548AEB7[*(a3 + 244)];
              }

              else
              {
                v49 = 3;
              }

              *(v27 + 9) = v49;
              *v27 = *(a3 + 248);
              v50 = *(a3 + 255);
              if (v50 == 255)
              {
                v51 = 0;
              }

              else
              {
                *(v27 + 7) = v50;
                v51 = 1;
              }

              *(v27 + 8) = v51;
              v52 = *(a3 + 252);
              if (v52 == 0xFFFF)
              {
                *(v27 + 6) = 0;
              }

              else
              {
                *(v27 + 6) = 1;
                *(v27 + 2) = v52;
              }
            }

            v30 += v48;
          }
        }
      }

      if (v30)
      {
        v53 = v30;
        *(v27 + 42) = v30;
        *(v27 + 43) = 1;
        v54 = malloc_type_calloc(1uLL, 0x28uLL, 0x57089378uLL);
        *(v54 + 8) = 0u;
        *(v54 + 24) = 0u;
        *(v28 + 19) = v54;
        *v54 = 0;
        *(v28 + 20) = v54;
        if (v53 != 1)
        {
          v55 = v53 - 1;
          do
          {
            v56 = malloc_type_calloc(1uLL, 0x28uLL, 0x57089378uLL);
            *v56 = 0u;
            v56[1] = 0u;
            *(v56 + 4) = 0;
            **(v28 + 20) = v56;
            *(v28 + 20) = v56;
            --v55;
          }

          while (v55);
        }

        if ((*(a3 + 136) & 1) != 0 && !*(a3 + 144))
        {
          sub_2454509C8(*(v28 + 19), a3 + 8);
          v57 = 1;
          if ((*(a3 + 136) & 2) == 0)
          {
            return;
          }
        }

        else
        {
          v57 = 0;
          if ((*(a3 + 136) & 2) == 0)
          {
            return;
          }
        }

        if (!*(a3 + 240))
        {

          sub_245450B0C(v28 + 19, a3 + 8, v57);
        }
      }
    }

    else if ((*(a3 + 136) & 1) != 0 && *(a3 + 144) || (*(a3 + 136) & 2) != 0 && *(a3 + 240))
    {
      v23 = malloc_type_calloc(1uLL, 0x188uLL, 0x57089378uLL);
      *v23 = 0u;
      v23[1] = 0u;
      v23[2] = 0u;
      v23[3] = 0u;
      v23[4] = 0u;
      v23[5] = 0u;
      v23[6] = 0u;
      v23[7] = 0u;
      v23[8] = 0u;
      v23[9] = 0u;
      v23[10] = 0u;
      v23[11] = 0u;
      v23[12] = 0u;
      v23[13] = 0u;
      v23[14] = 0u;
      v23[15] = 0u;
      v23[16] = 0u;
      v23[17] = 0u;
      v23[18] = 0u;
      v23[19] = 0u;
      v23[20] = 0u;
      v23[21] = 0u;
      v23[22] = 0u;
      v23[23] = 0u;
      *(v23 + 48) = 0;
      *(a2 + v9) = v23;
      *(v23 + 388) = 1;
      *(v23 + 89) = 1;
      *(v23 + 360) = 1;
    }
  }
}

void sub_2454501F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = 48;
  if (a4 == 1)
  {
    v8 = 72;
  }

  sub_2454542F4((a2 + v8));
  v9 = *(a3 + 4);
  if (v9 == 7)
  {
    v12 = 5;
    goto LABEL_17;
  }

  if (v9)
  {
    if (a4 == 1)
    {
      v13 = (a2 + 72);
      if (!*(a2 + 72))
      {
LABEL_13:
        v14 = malloc_type_calloc(1uLL, 0xF0uLL, 0x57089378uLL);
        *v14 = 0u;
        v14[1] = 0u;
        v14[2] = 0u;
        v14[3] = 0u;
        v14[4] = 0u;
        v14[5] = 0u;
        v14[6] = 0u;
        v14[7] = 0u;
        v14[8] = 0u;
        v14[9] = 0u;
        v14[12] = 0u;
        v14[13] = 0u;
        v14[14] = 0u;
        v14[10] = 0u;
        v14[11] = 0u;
        *v13 = v14;
        *(a2 + 4) = 4;
        *(v14 + 236) = 1;
        *(v14 + 47) = 1;
LABEL_14:
        *(v14 + 192) = 0;
        return;
      }
    }

    else
    {
      v13 = (a2 + 48);
      if (!*(a2 + 48))
      {
        goto LABEL_13;
      }
    }

    v12 = 4;
LABEL_17:
    *(a2 + 4) = v12;
    return;
  }

  if (*(a3 + 8))
  {
    if ((*(a3 + 81) & 1) == 0)
    {
      if (a4 == 1)
      {
        v11 = *(a2 + 72);
        v10 = (a2 + 72);
        if (!v11)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = *(a2 + 48);
        v10 = (a2 + 48);
        if (!v20)
        {
LABEL_27:
          v14 = malloc_type_calloc(1uLL, 0xF0uLL, 0x57089378uLL);
          *v14 = 0u;
          v14[1] = 0u;
          v14[2] = 0u;
          v14[3] = 0u;
          v14[4] = 0u;
          v14[5] = 0u;
          v14[6] = 0u;
          v14[7] = 0u;
          v14[8] = 0u;
          v14[9] = 0u;
          v14[12] = 0u;
          v14[13] = 0u;
          v14[14] = 0u;
          v14[10] = 0u;
          v14[11] = 0u;
          *v10 = v14;
          *(v14 + 236) = 1;
          *(v14 + 47) = 1;
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    if (a4 == 1)
    {
      v16 = *(a2 + 72);
      v15 = (a2 + 72);
      if (v16)
      {
        return;
      }
    }

    else
    {
      v17 = *(a2 + 48);
      v15 = (a2 + 48);
      if (v17)
      {
        return;
      }
    }

    v18 = malloc_type_calloc(1uLL, 0xF0uLL, 0x57089378uLL);
    v19 = v18;
    v18[8] = 0u;
    v18[9] = 0u;
    v18[6] = 0u;
    v18[7] = 0u;
    v18[4] = 0u;
    v18[5] = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    *v18 = 0u;
    v18[1] = 0u;
    v18[12] = 0u;
    v18[13] = 0u;
    v18[14] = 0u;
    v18[10] = 0u;
    v18[11] = 0u;
    *v15 = v18;
    *(v18 + 184) = 1;
    *(v18 + 152) = 0;
    if (*(a3 + 16) == 1)
    {
      if (*(a3 + 64))
      {
        *(v18 + 152) = 1;
      }

      else
      {
        *(v18 + 22) = 0x100000001;
        v21 = malloc_type_calloc(1uLL, 0xA0uLL, 0x57089378uLL);
        *(v21 + 8) = 0u;
        v18 = v21 + 8;
        *(v21 + 24) = 0u;
        *(v21 + 40) = 0u;
        *(v21 + 56) = 0u;
        *(v21 + 72) = 0u;
        *(v21 + 88) = 0u;
        *(v21 + 104) = 0u;
        *(v21 + 120) = 0u;
        *(v21 + 136) = 0u;
        *(v21 + 19) = 0;
        *v21 = 0;
        *(v19 + 20) = v21;
        *(v19 + 21) = v21;
      }

      sub_245450E20(v18, a3 + 20);
    }

    if (*(a3 + 64))
    {
      *(v19 + 184) = 1;
      v22 = *(a3 + 60);
      if (v22 >= 0x20)
      {
        v22 = 32;
      }

      *(v19 + 44) = v22;
      if (*(a1 + 62))
      {
        v23 = *(a1 + 63);
        if (v22 > v23)
        {
          *(v19 + 44) = v23;
          v22 = v23;
        }
      }

      if (v22)
      {
        *(v19 + 45) = 1;
        v24 = malloc_type_calloc(1uLL, 0xA0uLL, 0x57089378uLL);
        *(v24 + 8) = 0u;
        *(v24 + 24) = 0u;
        *(v24 + 40) = 0u;
        *(v24 + 56) = 0u;
        *(v24 + 72) = 0u;
        *(v24 + 88) = 0u;
        *(v24 + 104) = 0u;
        *(v24 + 120) = 0u;
        *(v24 + 136) = 0u;
        *(v24 + 19) = 0;
        *v24 = 0;
        *(v19 + 20) = v24;
        *(v19 + 21) = v24;
        LODWORD(v25) = *(v19 + 44);
        if (v25 >= 2)
        {
          v26 = 1;
          do
          {
            v27 = malloc_type_calloc(1uLL, 0xA0uLL, 0x57089378uLL);
            *v27 = 0u;
            v27[1] = 0u;
            v27[2] = 0u;
            v27[3] = 0u;
            v27[4] = 0u;
            v27[5] = 0u;
            v27[6] = 0u;
            v27[7] = 0u;
            v27[8] = 0u;
            v27[9] = 0u;
            **(v19 + 21) = v27;
            *(v19 + 21) = v27;
            ++v26;
            v25 = *(v19 + 44);
          }

          while (v26 < v25);
        }

        if (v25 >= 1)
        {
          v28 = 0;
          v29 = v19 + 10;
          v30 = *(a3 + 64);
          do
          {
            v29 = *v29;
            sub_245450E20((v29 + 1), v30);
            ++v28;
            v30 += 40;
          }

          while (*(v19 + 44) > v28);
        }
      }
    }
  }
}

void sub_245450560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_245454340((a2 + 56));
  if (*(a3 + 4))
  {
    v6 = malloc_type_calloc(1uLL, 0x108uLL, 0x57089378uLL);
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 9) = 0u;
    *(v6 + 10) = 0u;
    *(v6 + 11) = 0u;
    *(v6 + 12) = 0u;
    *(v6 + 13) = 0u;
    *(v6 + 14) = 0u;
    *(v6 + 15) = 0u;
    *(v6 + 32) = 0;
    *(a2 + 56) = v6;
    *(a2 + 8) = 4;
LABEL_4:
    *(v6 + 216) = 0;
    *(v6 + 260) = 1;
    v6[55] = 1;
    *(v6 + 224) = 0;
    return;
  }

  v7 = *(a3 + 8);
  v8 = malloc_type_calloc(1uLL, 0x108uLL, 0x57089378uLL);
  v6 = v8;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 8) = 0u;
  *(v8 + 9) = 0u;
  *(v8 + 10) = 0u;
  *(v8 + 11) = 0u;
  *(v8 + 12) = 0u;
  *(v8 + 13) = 0u;
  *(v8 + 14) = 0u;
  *(v8 + 15) = 0u;
  *(v8 + 32) = 0;
  *(a2 + 56) = v8;
  if (v7)
  {
    goto LABEL_4;
  }

  *(v8 + 216) = 1;
  *(v8 + 208) = 0;
  sub_2454510F4(v8, a3 + 16);
  if (*(a3 + 104))
  {
    v9 = *(a3 + 96);
    if (*(a3 + 96))
    {
      *(v6 + 208) = 1;
      v10 = v9 >= 0x20 ? 32 : v9;
      v6[50] = v10;
      if (!*(a1 + 66) || (v11 = *(a1 + 67), v10 <= v11) || (v6[50] = v11) != 0)
      {
        v6[51] = 1;
        v12 = malloc_type_calloc(1uLL, 0xC0uLL, 0x57089378uLL);
        *(v12 + 8) = 0u;
        *(v12 + 24) = 0u;
        *(v12 + 40) = 0u;
        *(v12 + 56) = 0u;
        *(v12 + 72) = 0u;
        *(v12 + 88) = 0u;
        *(v12 + 104) = 0u;
        *(v12 + 120) = 0u;
        *(v12 + 136) = 0u;
        *(v12 + 152) = 0u;
        *(v12 + 168) = 0u;
        *(v12 + 23) = 0;
        *v12 = 0;
        *(v6 + 23) = v12;
        *(v6 + 24) = v12;
        LODWORD(v13) = v6[50];
        if (v13 >= 2)
        {
          v14 = 1;
          do
          {
            v15 = malloc_type_calloc(1uLL, 0xC0uLL, 0x57089378uLL);
            *v15 = 0u;
            v15[1] = 0u;
            v15[2] = 0u;
            v15[3] = 0u;
            v15[4] = 0u;
            v15[5] = 0u;
            v15[6] = 0u;
            v15[7] = 0u;
            v15[8] = 0u;
            v15[9] = 0u;
            v15[10] = 0u;
            v15[11] = 0u;
            **(v6 + 24) = v15;
            *(v6 + 24) = v15;
            ++v14;
            v13 = v6[50];
          }

          while (v14 < v13);
        }

        if (v13 >= 1)
        {
          v16 = 0;
          v17 = v6 + 46;
          v18 = *(a3 + 104);
          do
          {
            v17 = *v17;
            sub_2454510F4((v17 + 1), v18);
            ++v16;
            v18 += 80;
          }

          while (v6[50] > v16);
        }
      }
    }
  }
}

uint64_t sub_2454507A0(uint64_t result, unsigned __int8 *a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v6 = *(a2 + 1);
    v7 = ((v6 - ((9363 * v6) >> 16)) >> 1) + ((9363 * v6) >> 16);
    *a3 = (v7 >> 2) & 0x3FF;
    v8 = 1000 * *(a2 + 1) + 86400000 * (v6 - 7 * (v7 >> 2));
    *(a3 + 4) = v8;
    if (a2[10] == 1)
    {
      v8 += *(a2 + 4);
      *(a3 + 4) = v8;
    }

    *(a3 + 186) = 0u;
    *(a3 + 170) = 0u;
    *(a3 + 154) = 0u;
    *(a3 + 138) = 0u;
    *(a3 + 122) = 0u;
    *(a3 + 106) = 0u;
    *(a3 + 90) = 0u;
    *(a3 + 74) = 0u;
    if (a2[64] == 1 && (v9 = *(a2 + 14) - 1, v9 <= 0x3F))
    {
      v10 = a2 + 40;
      if (v9 >= 0xF)
      {
        v9 = 15;
      }

      v11 = v9 + 1;
      v12 = a3 + 80;
      v13 = v11;
      do
      {
        v10 = *v10;
        *(v12 - 6) = v10[8] - 1;
        *(v12 - 4) = *(v10 + 5);
        *(v12 - 2) = v10[12];
        *(v12 - 1) = *(v10 + 13);
        v12 += 8;
        --v13;
      }

      while (v13);
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    *(a3 + 72) = v11;
    v16 = -1;
    if (a2[73] == 1)
    {
      v16 = a2[72];
    }

    *(a3 + 8) = v16;
    *(result + 112) = v8;
    *(result + 116) = v16;
    *(a3 + 2) = -1;
  }

  else
  {
    v14 = *a2;
    *(a3 + 16) = byte_24548AEBD[v14];
    *a3 = 1;
    *(a3 + 2) = *(a2 + 1) & 0x1FFF;
    *(a3 + 8) = *(a2 + 1);
    if (a2[10] == 1)
    {
      v15 = *(a2 + 4);
    }

    else
    {
      v15 = 0;
    }

    *(a3 + 12) = v15;
    if (v14 == 4 && a2[32] == 1)
    {
      result = sub_245453FDC((a2 + 16), *(a2 + 4), (a3 + 20));
    }

    else
    {
      *(a3 + 20) = 0;
    }

    v17 = -1;
    if (a2[73] == 1)
    {
      if (a2[104])
      {
        v17 = -1;
      }

      else
      {
        v17 = a2[72];
      }
    }

    *(a3 + 14) = v17;
    *(a3 + 4) = -1;
  }

  return result;
}

uint64_t sub_2454509A4(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_24548B128[a1 - 1];
  }
}

uint64_t sub_2454509C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0x100000001;
  result = malloc_type_calloc(1uLL, 0x28uLL, 0x57089378uLL);
  *(result + 9) = 0;
  *(result + 25) = 0;
  *(result + 17) = 0;
  *(result + 32) = 0;
  *result = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = result;
  *(result + 8) = 0;
  v5 = *(a2 + 216);
  if (v5 == 255)
  {
    v6 = 0;
  }

  else
  {
    *(result + 11) = v5;
    v6 = 1;
  }

  *(result + 12) = v6;
  if (*(a2 + 217))
  {
    *(result + 32) = *(a2 + 217);
    *(result + 36) = 1;
    result = malloc_type_calloc(1uLL, 0x30uLL, 0x57089378uLL);
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    v7 = *(a1 + 16);
    *(v7 + 16) = result;
    *(v7 + 24) = result;
    LODWORD(v8) = *(a2 + 217);
    if (v8 >= 2)
    {
      v9 = 1;
      do
      {
        result = malloc_type_calloc(1uLL, 0x30uLL, 0x57089378uLL);
        *result = 0u;
        *(result + 16) = 0u;
        *(result + 32) = 0u;
        v7 = *(a1 + 16);
        **(v7 + 24) = result;
        *(v7 + 24) = result;
        ++v9;
        v8 = *(a2 + 217);
      }

      while (v9 < v8);
    }

    if (v8)
    {
      v10 = 0;
      v11 = *(a2 + 224);
      v12 = (v7 + 16);
      do
      {
        v12 = *v12;
        result = sub_245451554((v12 + 1), v11);
        ++v10;
        v11 += 36;
      }

      while (v10 < *(a2 + 217));
    }
  }

  return result;
}

void sub_245450B0C(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  if (a3 == 1)
  {
    v4 = *a1;
  }

  if (*(a2 + 248))
  {
    v5 = 0;
    v6 = *(a2 + 256);
    do
    {
      v7 = *(v6 + 16 * v5);
      v4 = *v4;
      *(v4 + 8) = byte_24548AEB0[v7];
      if (v7 != 3 && v7 != 5)
      {
        sub_245479990(1167, "lpp_transaction.c");
        v6 = *(a2 + 256);
      }

      if (*(v6 + 16 * v5 + 4))
      {
        *(v4 + 8) = *(v6 + 16 * v5 + 4);
        *(v4 + 9) = 1;
        v9 = malloc_type_calloc(1uLL, 0x28uLL, 0x57089378uLL);
        *(v9 + 8) = 0u;
        *(v9 + 24) = 0u;
        v4[2] = v9;
        v10 = v4 + 2;
        *v9 = 0;
        v4[3] = v9;
        v6 = *(a2 + 256);
        LODWORD(v11) = *(v6 + 16 * v5 + 4);
        if (v11 >= 2)
        {
          v12 = 1;
          do
          {
            v13 = malloc_type_calloc(1uLL, 0x28uLL, 0x57089378uLL);
            *v13 = 0u;
            v13[1] = 0u;
            *(v13 + 4) = 0;
            *v4[3] = v13;
            v4[3] = v13;
            ++v12;
            v6 = *(a2 + 256);
            v11 = *(v6 + 16 * v5 + 4);
          }

          while (v12 < v11);
        }

        if (v11)
        {
          v14 = 0;
          do
          {
            v15 = 0;
            v10 = *v10;
            *(v10 + 8) = 0;
            v16 = (*(v6 + 16 * v5 + 8) + 16 * v14);
            v17 = v16[4];
            *(v10 + 12) = v17;
            if (v17 == 1)
            {
              v15 = v16[5];
            }

            *(v10 + 11) = v15;
            if (v16[6])
            {
              *(v10 + 8) = v16[6];
              *(v10 + 9) = 1;
              v18 = malloc_type_calloc(1uLL, 0x30uLL, 0x57089378uLL);
              *(v18 + 8) = 0u;
              *(v18 + 24) = 0u;
              *(v18 + 5) = 0;
              v10[2] = v18;
              v19 = v10 + 2;
              *v18 = 0;
              v10[3] = v18;
              v6 = *(a2 + 256);
              v20 = *(v6 + 16 * v5 + 8);
              LODWORD(v21) = *(v20 + 16 * v14 + 6);
              if (v21 >= 2)
              {
                v22 = 1;
                do
                {
                  v23 = malloc_type_calloc(1uLL, 0x30uLL, 0x57089378uLL);
                  *v23 = 0u;
                  v23[1] = 0u;
                  v23[2] = 0u;
                  *v10[3] = v23;
                  v10[3] = v23;
                  ++v22;
                  v6 = *(a2 + 256);
                  v20 = *(v6 + 16 * v5 + 8);
                  v21 = *(v20 + 16 * v14 + 6);
                }

                while (v22 < v21);
              }

              if (v21)
              {
                v24 = 0;
                v25 = *(v20 + 16 * v14 + 8);
                do
                {
                  v19 = *v19;
                  sub_245451554((v19 + 1), v25);
                  ++v24;
                  v25 += 36;
                  v6 = *(a2 + 256);
                }

                while (v24 < *(*(v6 + 16 * v5 + 8) + 16 * v14 + 6));
              }
            }

            ++v14;
          }

          while (v14 < *(v6 + 16 * v5 + 4));
        }
      }

      ++v5;
    }

    while (v5 < *(a2 + 248));
  }
}

uint64_t sub_245450D9C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 == 2)
  {
    return *(a2 + 40);
  }

  if (v2 == 3)
  {
    v3 = a1[8] == 1;
    if (a1[8] == 1)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    if (a1[10] == 1)
    {
      v3 = v4;
    }

    if (a1[46] == 1)
    {
      return v3 | 4u;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    sub_245479990(7631, "lpp_transaction.c");
    return 0;
  }
}

uint64_t sub_245450E20(uint64_t result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  v4 = *(a2 + 12);
  *(result + 80) = v4;
  if (v4 == 1)
  {
    *(result + 56) = 0;
    *(result + 24) = 0x100000003;
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
    *v5 = 0;
    v5[1] = 0;
    *(v3 + 8) = v5;
    *(v3 + 16) = v5;
    v6 = 2;
    do
    {
      v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
      *v7 = 0;
      v7[1] = 0;
      **(v3 + 16) = v7;
      *(v3 + 16) = v7;
      --v6;
    }

    while (v6);
    v8 = *(v3 + 8);
    v9 = *(a2 + 16);
    *(v8 + 8) = v9 / 0x64u;
    v10 = *v8;
    v9 %= 0x64u;
    v10[8] = v9 / 0xAu;
    *(*v10 + 8) = v9 % 0xAu;
    v11 = *(a2 + 18);
    v12 = *(a2 + 20) == 1;
    if (*(a2 + 20) == 1)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    *(v3 + 48) = v13;
    *(v3 + 52) = 1;
    if (v12)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
    *v15 = 0;
    v15[1] = 0;
    *(v3 + 32) = v15;
    *(v3 + 40) = v15;
    v16 = v14 - 1;
    do
    {
      v17 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
      *v17 = 0;
      v17[1] = 0;
      **(v3 + 40) = v17;
      *(v3 + 40) = v17;
      --v16;
    }

    while (v16);
    v18 = *(v3 + 32);
    if (*(a2 + 20) == 1)
    {
      v18[8] = (5243 * (v11 >> 2)) >> 17;
      v11 = *(a2 + 18) - 100 * ((5243 * (*(a2 + 18) >> 2)) >> 17);
      v18 = *v18;
    }

    v18[8] = v11 / 0xAu;
    *(*v18 + 8) = v11 % 0xAu;
    result = sub_2454540B4(*(a2 + 24), 0x1CuLL, v3 + 64);
  }

  v19 = *(a2 + 8);
  if (v19 >= 0x10000)
  {
    *(v3 + 120) = 1;
    *(v3 + 116) = v19;
    LOWORD(v19) = -1;
  }

  *(v3 + 82) = v19;
  v20 = *(a2 + 28);
  *(v3 + 104) = v20;
  if (v20 == 1)
  {
    result = sub_2454541F8(v3 + 88, 0xAuLL, *(a2 + 30));
  }

  *(v3 + 106) = 0;
  *(v3 + 108) = 0;
  *(v3 + 146) = 0;
  *(v3 + 148) = 0;
  *(v3 + 112) = 0;
  v21 = *(a2 + 32);
  if (v21 != 255)
  {
    if (v21 > 0x61)
    {
      if (v21 < 0xFFEF)
      {
        goto LABEL_25;
      }

      v22 = 0;
      *(v3 + 146) = 1;
      *(v3 + 145) = v21;
    }

    else
    {
      *(v3 + 106) = 1;
      v22 = v21;
    }

    *(v3 + 105) = v22;
  }

LABEL_25:
  v23 = *(a2 + 34);
  if (v23 != 255)
  {
    if (v23 > 0x22)
    {
      if (v23 <= 0xFFE1 && v23 - 35 > 0xB)
      {
        goto LABEL_32;
      }

      v24 = 0;
      *(v3 + 148) = 1;
      *(v3 + 147) = v23;
      *(v3 + 108) = 0;
    }

    else
    {
      *(v3 + 108) = 1;
      v24 = v23;
    }

    *(v3 + 107) = v24;
  }

LABEL_32:
  v25 = *(a2 + 36);
  if (v25 != 0xFFFF)
  {
    *(v3 + 112) = 1;
    *(v3 + 110) = v25;
  }

  return result;
}

void sub_2454510F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 2))
  {
    if (*(a2 + 4))
    {
      *(a1 + 4) = 1;
    }

    else
    {
      *(a1 + 4) = 0;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    sub_245479990(10799, "lpp_transaction.c");
    *(a1 + 4) = 0;
    *(a1 + 8) = 0;
  }

  if (*(a2 + 12) == 1)
  {
    *(a1 + 32) = 0x100000003;
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
    *v4 = 0;
    v4[1] = 0;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    v5 = 2;
    do
    {
      v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
      *v6 = 0;
      v6[1] = 0;
      **(a1 + 24) = v6;
      *(a1 + 24) = v6;
      --v5;
    }

    while (v5);
    v7 = *(a2 + 20) == 1;
    if (*(a2 + 20) == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *(a1 + 56) = v8;
    *(a1 + 60) = 1;
    if (v7)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
    *v10 = 0;
    v10[1] = 0;
    *(a1 + 40) = v10;
    *(a1 + 48) = v10;
    v11 = v9 - 1;
    do
    {
      v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
      *v12 = 0;
      v12[1] = 0;
      **(a1 + 48) = v12;
      *(a1 + 48) = v12;
      --v11;
    }

    while (v11);
    sub_24544C7B4(*(a2 + 16), *(a1 + 16), *(a1 + 40));
    sub_245454158(*(a2 + 24), 0x24uLL, a1 + 64);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 80) = v13;
  v14 = *(a2 + 28);
  *(a1 + 104) = v14;
  if (v14 == 1)
  {
    sub_2454541F8(a1 + 88, 0xAuLL, *(a2 + 30));
  }

  *(a1 + 106) = 0;
  *(a1 + 108) = 0;
  *(a1 + 111) = 0;
  *(a1 + 113) = 0;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 32) == 1)
  {
    *(a1 + 109) = 1;
    v15 = *(a2 + 34);
    if (v15)
    {
      v16 = *(a2 + 36);
      if (v16 != 255)
      {
        *(a1 + 105) = v16;
        *(a1 + 106) = v15;
      }
    }

    v17 = *(a2 + 38);
    if (v17)
    {
      v18 = *(a2 + 40);
      if (v18 != 255)
      {
        *(a1 + 107) = v18;
        *(a1 + 108) = v17;
      }
    }
  }

  if (*(a2 + 42) == 1)
  {
    *(a1 + 114) = 1;
    v19 = *(a2 + 44);
    if (v19)
    {
      v20 = *(a2 + 46);
      if (v20 != 255)
      {
        *(a1 + 110) = v20;
        *(a1 + 111) = v19;
      }
    }

    v21 = *(a2 + 48);
    if (v21)
    {
      v22 = *(a2 + 50);
      if (v22 != 255)
      {
        *(a1 + 112) = v22;
        *(a1 + 113) = v21;
      }
    }
  }

  if (*(a2 + 52) == 1)
  {
    v23 = *(a2 + 53);
    *(a1 + 136) = v23;
    *(a1 + 144) = 1;
    if (v23 < 0x41)
    {
      if (!v23)
      {
        goto LABEL_52;
      }
    }

    else
    {
      *(a1 + 136) = 64;
    }

    *(a1 + 140) = 1;
    v24 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
    *v24 = 0;
    v24[1] = 0;
    *(a1 + 120) = v24;
    *(a1 + 128) = v24;
    LODWORD(v25) = *(a1 + 136);
    if (v25 >= 2)
    {
      v26 = 1;
      do
      {
        v27 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
        *v27 = 0;
        v27[1] = 0;
        **(a1 + 128) = v27;
        *(a1 + 128) = v27;
        ++v26;
        v25 = *(a1 + 136);
      }

      while (v26 < v25);
    }

    if (v25 >= 1)
    {
      v28 = 0;
      v29 = (a1 + 120);
      v30 = (*(a2 + 56) + 8);
      do
      {
        v29 = *v29;
        *(v29 + 10) = 0;
        *(v29 + 12) = 0;
        *(v29 + 8) = *(v30 - 8);
        v31 = *(v30 - 6);
        if (v31)
        {
          v32 = *(v30 - 2);
          if (v32 != 255)
          {
            *(v29 + 9) = v32;
            *(v29 + 10) = v31;
          }
        }

        v33 = *(v30 - 2);
        if (v33)
        {
          v34 = *v30;
          if (v34 != 255)
          {
            *(v29 + 11) = v34;
            *(v29 + 12) = v33;
          }
        }

        ++v28;
        v30 += 5;
      }

      while (v25 > v28);
    }
  }

LABEL_52:
  if (*(a2 + 64) != 1)
  {
    return;
  }

  v35 = *(a2 + 65);
  *(a1 + 168) = v35;
  *(a1 + 176) = 1;
  if (v35 < 0x41)
  {
    if (!v35)
    {
      return;
    }
  }

  else
  {
    *(a1 + 168) = 64;
  }

  *(a1 + 172) = 1;
  v36 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
  *v36 = 0;
  v36[1] = 0;
  *(a1 + 152) = v36;
  *(a1 + 160) = v36;
  LODWORD(v37) = *(a1 + 168);
  if (v37 >= 2)
  {
    v38 = 1;
    do
    {
      v39 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
      *v39 = 0;
      v39[1] = 0;
      **(a1 + 160) = v39;
      *(a1 + 160) = v39;
      ++v38;
      v37 = *(a1 + 168);
    }

    while (v38 < v37);
  }

  if (v37 >= 1)
  {
    v40 = 0;
    v41 = (a1 + 152);
    v42 = (*(a2 + 72) + 8);
    do
    {
      v41 = *v41;
      *(v41 + 10) = 0;
      *(v41 + 12) = 0;
      *(v41 + 8) = *(v42 - 8);
      v43 = *(v42 - 6);
      if (v43)
      {
        v44 = *(v42 - 2);
        if (v44 != 255)
        {
          *(v41 + 9) = v44;
          *(v41 + 10) = v43;
        }
      }

      v45 = *(v42 - 2);
      if (v45)
      {
        v46 = *v42;
        if (v46 != 255)
        {
          *(v41 + 11) = v46;
          *(v41 + 12) = v45;
        }
      }

      ++v40;
      v42 += 5;
    }

    while (v37 > v40);
  }
}

uint64_t sub_245451554(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 2) = *(a2 + 8);
  v2 = *(a2 + 20);
  *(result + 4) = *(a2 + 20);
  if (v2 == 1)
  {
    *(result + 3) = *(a2 + 24);
  }

  v3 = *(a2 + 16);
  *(result + 8) = *(a2 + 12);
  if (v3 == 255)
  {
    v4 = 0;
  }

  else
  {
    *(result + 12) = v3;
    v4 = 1;
  }

  *(result + 13) = v4;
  *(result + 14) = *(a2 + 9);
  *(result + 18) = 1;
  *(result + 16) = *(a2 + 2);
  v5 = *(a2 + 28);
  *(result + 24) = *(a2 + 28);
  if (v5 == 1)
  {
    v6 = *(a2 + 32);
  }

  else
  {
    v6 = 0;
  }

  *(result + 20) = v6;
  return result;
}

void sub_2454515E4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = **(a1 + 72);
  if (v4)
  {
    while (*(v4 + 16) != *a3 || *(v4 + 20) != a3[1])
    {
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v7 = 1;
    v6 = sub_24544A168(v4, &v7, 6u);
    if (v6)
    {
      sub_24544AAC8(a1, v6, 6, a2);
    }

    else
    {
      sub_245479990(12673, "lpp_transaction.c");
    }
  }

  else
  {
LABEL_5:

    sub_245479990(12679, "lpp_transaction.c");
  }
}

void sub_2454516C4(uint64_t a1)
{
  if (*(a1 + 60))
  {
    v1 = malloc_type_calloc(1uLL, 0x25CuLL, 0x57089378uLL);
    bzero(v1, 0x25CuLL);

    free(v1);
  }
}

void sub_245451720(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 96))
  {
    v2 = malloc_type_calloc(1uLL, 0x4B8uLL, 0x57089378uLL);
    bzero(v2, 0x4B8uLL);
    v3 = *(a1 + 96);
    if (*(a1 + 96))
    {
      *v2 = v3;
      if (v3 >= 0xF)
      {
        v3 = 15;
      }

      memcpy(v2 + 8, *(a1 + 104), 80 * v3);
    }

    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 96);
      v15 = 67109120;
      v16 = v6;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#cplane,nmeas,%d", &v15, 8u);
      v4 = qword_2813CF018;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 69);
      v8 = *(a1 + 56);
      v9 = *(a1 + 52);
      v10 = *(a1 + 46);
      v11 = *(a1 + 40);
      v12 = *(a1 + 34);
      v13 = *(a1 + 32);
      v14 = *(a1 + 16);
      v15 = 67110912;
      v16 = v7;
      v17 = 1024;
      v18 = v10;
      v19 = 1024;
      v20 = v14;
      v21 = 1024;
      v22 = v11;
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = v12;
      v27 = 1024;
      v28 = v9;
      v29 = 1024;
      v30 = v8;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#cplane,scell,num_of_ssb_Index,%d,sfn,%d,pci,%d,cell_id,%d,mcc,%d,mnc,%d,rsrp,%d,rsrq,%d", &v15, 0x32u);
    }

    free(v2);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2454518D4(uint64_t a1, uint64_t a2)
{
  if (sub_2454480AC(a1, a2))
  {
    v3 = *(a2 + 64);
    if (v3)
    {
      free(v3);
      *(a2 + 64) = 0;
    }
  }
}

void sub_24545190C(uint64_t a1, uint64_t a2)
{
  if (sub_2454482FC(a1, a2))
  {
    v3 = *(a2 + 104);
    if (v3)
    {
      if (!*(a2 + 96))
      {
        goto LABEL_15;
      }

      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a2 + 104);
        if (*(v6 + v4 + 52) == 1)
        {
          if (*(v6 + v4 + 53))
          {
            v7 = v6 + v4;
            v8 = *(v6 + v4 + 56);
            if (v8)
            {
              free(v8);
              *(v7 + 56) = 0;
              v6 = *(a2 + 104);
            }
          }
        }

        if (*(v6 + v4 + 64) == 1)
        {
          if (*(v6 + v4 + 65))
          {
            v9 = v6 + v4;
            v10 = *(v6 + v4 + 72);
            if (v10)
            {
              free(v10);
              *(v9 + 72) = 0;
            }
          }
        }

        ++v5;
        v4 += 80;
      }

      while (v5 < *(a2 + 96));
      v3 = *(a2 + 104);
      if (v3)
      {
LABEL_15:
        free(v3);
        *(a2 + 104) = 0;
      }
    }

    v11 = *(a2 + 72);
    if (v11)
    {
      free(v11);
      *(a2 + 72) = 0;
    }

    v12 = *(a2 + 88);
    if (v12)
    {
      free(v12);
      *(a2 + 88) = 0;
    }
  }
}

void sub_2454519F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2453B4548();
  sub_2453B4FFC(v3, a2);
  v4 = sub_2454616D4();
  v5 = 1000 * *(a2 + 12);

  sub_245461AD4(v4, v5, 0);
}

void sub_245451A48(uint64_t a1, int __val)
{
  switch(__val)
  {
    case 0:
      v3 = "LPP_INACTIVE";
      goto LABEL_7;
    case 1:
      v3 = "LPP_IDLE";
      goto LABEL_7;
    case 2:
      v3 = "LPP_ACTIVE";
LABEL_7:

      sub_2453B414C(a1, v3);
      return;
  }

  std::to_string(&v6, __val);
  v4 = std::string::insert(&v6, 0, "unknown ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&v4->__r_.__value_.__l + 2);
  *a1 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_245451B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245451B2C(uint64_t a1, int __val)
{
  switch(__val)
  {
    case 2:
      v3 = "TRANSACTION_TERMINATED";
      goto LABEL_7;
    case 1:
      v3 = "TRANSACTION_ACTIVE";
      goto LABEL_7;
    case 0:
      v3 = "TRANSACTION_INITIAL";
LABEL_7:

      sub_2453B414C(a1, v3);
      return;
  }

  std::to_string(&v6, __val);
  v4 = std::string::insert(&v6, 0, "unknown ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&v4->__r_.__value_.__l + 2);
  *a1 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_245451BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245451C10(uint64_t a1, int __val)
{
  if (__val == 1)
  {
    v3 = "LASN_Initiator_targetDevice";
    goto LABEL_5;
  }

  if (!__val)
  {
    v3 = "LASN_Initiator_locationServer";
LABEL_5:

    sub_2453B414C(a1, v3);
    return;
  }

  std::to_string(&v6, __val);
  v4 = std::string::insert(&v6, 0, "unknown ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&v4->__r_.__value_.__l + 2);
  *a1 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_245451CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245451CE0(uint64_t a1, int __val)
{
  if (__val == 1)
  {
    v3 = "USER_PLANE";
    goto LABEL_5;
  }

  if (!__val)
  {
    v3 = "CONTROL_PLANE";
LABEL_5:

    sub_2453B414C(a1, v3);
    return;
  }

  std::to_string(&v6, __val);
  v4 = std::string::insert(&v6, 0, "unknown ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&v4->__r_.__value_.__l + 2);
  *a1 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_245451D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245451DB0(int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    sub_245451A48(v10, a1);
    v4 = v11;
    v5 = v10[0];
    sub_245451A48(__p, a1);
    v6 = v10;
    if (v4 < 0)
    {
      v6 = v5;
    }

    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315394;
    v13 = v6;
    v14 = 2080;
    v15 = v7;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "#posp,#lpp,#lpp_state,current_state,%s,next_state,%s", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_245451ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245451EF4(uint64_t a1, int a2, int a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    sub_245451C10(v28, *(a1 + 16));
    if (v29 >= 0)
    {
      v8 = v28;
    }

    else
    {
      v8 = v28[0];
    }

    v9 = *(a1 + 17);
    sub_245451CE0(v26, *(a1 + 28));
    if (v27 >= 0)
    {
      v10 = v26;
    }

    else
    {
      v10 = v26[0];
    }

    v11 = *(a1 + 32);
    sub_245451B2C(v24, a2);
    if (v25 >= 0)
    {
      v12 = v24;
    }

    else
    {
      v12 = v24[0];
    }

    sub_245451B2C(v22, a3);
    v13 = v23;
    v14 = v22[0];
    v15 = *(a1 + 20);
    if (v15 > 5)
    {
      std::to_string(&v30, v15);
      v16 = std::string::insert(&v30, 0, "unknown ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v21 = v16->__r_.__value_.__r.__words[2];
      *__p = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_2453B414C(__p, off_278E36EA0[v15]);
    }

    v18 = v22;
    if (v13 < 0)
    {
      v18 = v14;
    }

    v19 = __p;
    *buf = 136316674;
    if (v21 < 0)
    {
      v19 = __p[0];
    }

    v32 = v8;
    v33 = 1024;
    v34 = v9;
    v35 = 2080;
    v36 = v10;
    v37 = 1024;
    v38 = v11;
    v39 = 2080;
    v40 = v12;
    v41 = 2080;
    v42 = v18;
    v43 = 2080;
    v44 = v19;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, " #posp,#lpp,#lpp_transaction,trasaction_initiator,%s,transaction_id,%d,session_type,%s,session_id,%d,current_transaction_state,%s,next_transaction_state,%s,transaction_type,%s", buf, 0x40u);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_245452150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}