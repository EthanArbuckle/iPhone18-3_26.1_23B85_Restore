uint64_t sub_15A8FD4(uint64_t a1)
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
      v7 = sub_158F7FC(v6);
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
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v10);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v12;
      ++v10;
    }

    while (v8 != v10);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 72) + 4 * v14);
      if (v16 < 0)
      {
        v17 = 10;
      }

      else
      {
        v17 = (9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6;
      }

      v15 += v17;
      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = *(a1 + 88);
  v19 = v2 + v8 + v9 + v15 + 2 * (v18 + v13);
  v20 = *(a1 + 96);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = sub_1590114(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(a1 + 16);
  if (!v25)
  {
    goto LABEL_41;
  }

  if (v25)
  {
    v38 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(v38 + 23);
    v40 = *(v38 + 8);
    if ((v39 & 0x80u) == 0)
    {
      v40 = v39;
    }

    v19 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v25 & 2) == 0)
    {
LABEL_34:
      if ((v25 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_84;
    }
  }

  else if ((v25 & 2) == 0)
  {
    goto LABEL_34;
  }

  v41 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v41 + 23);
  v43 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v43 = v42;
  }

  v19 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 4) == 0)
  {
LABEL_35:
    if ((v25 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

LABEL_84:
  v44 = sub_158EDE4(*(a1 + 120));
  v19 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 8) == 0)
  {
LABEL_36:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  v45 = sub_1591474(*(a1 + 128));
  v19 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 0x10) == 0)
  {
LABEL_37:
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_87:
    v47 = sub_159657C(*(a1 + 144));
    v19 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v25 & 0x40) == 0)
    {
LABEL_39:
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    goto LABEL_88;
  }

LABEL_86:
  v46 = sub_1591FF0(*(a1 + 136));
  v19 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 0x20) != 0)
  {
    goto LABEL_87;
  }

LABEL_38:
  if ((v25 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_88:
  v48 = sub_159D96C(*(a1 + 152));
  v19 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 0x80) != 0)
  {
LABEL_40:
    v26 = sub_159E700(*(a1 + 160));
    v19 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_41:
  if ((v25 & 0xFF00) == 0)
  {
    goto LABEL_51;
  }

  if ((v25 & 0x100) != 0)
  {
    v49 = sub_15A0EB0(*(a1 + 168));
    v19 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v25 & 0x200) == 0)
    {
LABEL_44:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_92;
    }
  }

  else if ((v25 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v50 = sub_15A2910(*(a1 + 176));
  v19 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x400) == 0)
  {
LABEL_45:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  v51 = sub_15A3110(*(a1 + 184));
  v19 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x800) == 0)
  {
LABEL_46:
    if ((v25 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_94;
  }

LABEL_93:
  v52 = sub_15A3A10(*(a1 + 192));
  v19 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x1000) == 0)
  {
LABEL_47:
    if ((v25 & 0x2000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_95;
  }

LABEL_94:
  v53 = sub_15A434C(*(a1 + 200));
  v19 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x2000) == 0)
  {
LABEL_48:
    if ((v25 & 0x4000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_96;
  }

LABEL_95:
  v54 = sub_15A4AC4(*(a1 + 208));
  v19 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x4000) == 0)
  {
LABEL_49:
    if ((v25 & 0x8000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_96:
  v55 = sub_15A1C70(*(a1 + 216));
  v19 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x8000) != 0)
  {
LABEL_50:
    v27 = sub_15925C0(*(a1 + 224));
    v19 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_51:
  if ((v25 & 0xFF0000) == 0)
  {
    goto LABEL_61;
  }

  if ((v25 & 0x10000) != 0)
  {
    v56 = sub_15A66C4(*(a1 + 232));
    v19 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v25 & 0x20000) == 0)
    {
LABEL_54:
      if ((v25 & 0x40000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_100;
    }
  }

  else if ((v25 & 0x20000) == 0)
  {
    goto LABEL_54;
  }

  v57 = sub_1593080(*(a1 + 240));
  v19 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x40000) == 0)
  {
LABEL_55:
    if ((v25 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_101;
  }

LABEL_100:
  v58 = sub_15A434C(*(a1 + 248));
  v19 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x80000) == 0)
  {
LABEL_56:
    if ((v25 & 0x100000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_102;
  }

LABEL_101:
  v59 = sub_15974F4(*(a1 + 256));
  v19 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x100000) == 0)
  {
LABEL_57:
    if ((v25 & 0x200000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_103;
  }

LABEL_102:
  v60 = sub_15974F4(*(a1 + 264));
  v19 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x200000) == 0)
  {
LABEL_58:
    if ((v25 & 0x400000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_104;
  }

LABEL_103:
  v61 = sub_1598244(*(a1 + 272));
  v19 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x400000) == 0)
  {
LABEL_59:
    if ((v25 & 0x800000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_104:
  v62 = sub_159531C(*(a1 + 280));
  v19 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x800000) != 0)
  {
LABEL_60:
    v28 = sub_1593B18(*(a1 + 288));
    v19 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_61:
  if (HIBYTE(v25))
  {
    if ((v25 & 0x1000000) != 0)
    {
      v29 = sub_159A65C(*(a1 + 296));
      v19 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v25 & 0x2000000) != 0)
    {
      v30 = sub_15942A4(*(a1 + 304));
      v19 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v31 = v19 + 9;
    if ((v25 & 0x4000000) == 0)
    {
      v31 = v19;
    }

    if ((v25 & 0x8000000) != 0)
    {
      v32 = *(a1 + 320);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 11;
      }

      v31 += v34;
    }

    v35 = v31 + ((v25 >> 28) & 2) + ((v25 >> 27) & 2) + ((v25 >> 29) & 2);
    if ((v25 & 0x80000000) == 0)
    {
      v19 = v35;
    }

    else
    {
      v19 = v35 + 3;
    }
  }

  v36 = *(a1 + 8);
  if (v36)
  {
    v63 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = *((v36 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v64 < 0)
    {
      v64 = *(v63 + 16);
    }

    v19 += v64;
  }

  *(a1 + 20) = v19;
  return v19;
}

void sub_15A9780(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B65D8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

  v12 = *(a2 + 64);
  if (v12)
  {
    v13 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v13 + v12);
    v14 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v14 + 4 * v13), *(a2 + 72), 4 * *(a2 + 64));
  }

  v15 = *(a2 + 88);
  if (v15)
  {
    v16 = *(a2 + 96);
    v17 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_15B6664((a1 + 80), v17, (v16 + 8), v15, **(a1 + 96) - *(a1 + 88));
    v18 = *(a1 + 88) + v15;
    *(a1 + 88) = v18;
    v19 = *(a1 + 96);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 16);
  if (!v20)
  {
    goto LABEL_75;
  }

  if (v20)
  {
    v21 = *(a2 + 104);
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 104), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
    if ((v20 & 2) == 0)
    {
LABEL_14:
      if ((v20 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((v20 & 2) == 0)
  {
    goto LABEL_14;
  }

  v24 = *(a2 + 112);
  *(a1 + 16) |= 2u;
  v25 = *(a1 + 8);
  v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
  if (v25)
  {
    v26 = *v26;
  }

  sub_194EA1C((a1 + 112), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
  if ((v20 & 4) == 0)
  {
LABEL_15:
    if ((v20 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_27:
  *(a1 + 16) |= 4u;
  v27 = *(a1 + 120);
  if (!v27)
  {
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_15ACEF0(v29);
    *(a1 + 120) = v27;
  }

  if (*(a2 + 120))
  {
    v30 = *(a2 + 120);
  }

  else
  {
    v30 = &off_2777E78;
  }

  sub_158EF34(v27, v30);
  if ((v20 & 8) == 0)
  {
LABEL_16:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_35:
  *(a1 + 16) |= 8u;
  v31 = *(a1 + 128);
  if (!v31)
  {
    v32 = *(a1 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v31 = sub_15AD104(v33);
    *(a1 + 128) = v31;
  }

  if (*(a2 + 128))
  {
    v34 = *(a2 + 128);
  }

  else
  {
    v34 = &off_2777EE0;
  }

  sub_1591724(v31, v34);
  if ((v20 & 0x10) == 0)
  {
LABEL_17:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_51:
    *(a1 + 16) |= 0x20u;
    v39 = *(a1 + 144);
    if (!v39)
    {
      v40 = *(a1 + 8);
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      v39 = sub_15AD608(v41);
      *(a1 + 144) = v39;
    }

    if (*(a2 + 144))
    {
      v42 = *(a2 + 144);
    }

    else
    {
      v42 = &off_27780C8;
    }

    sub_1596914(v39, v42);
    if ((v20 & 0x40) == 0)
    {
LABEL_19:
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }

    goto LABEL_59;
  }

LABEL_43:
  *(a1 + 16) |= 0x10u;
  v35 = *(a1 + 136);
  if (!v35)
  {
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_15AD1C0(v37);
    *(a1 + 136) = v35;
  }

  if (*(a2 + 136))
  {
    v38 = *(a2 + 136);
  }

  else
  {
    v38 = &off_2777F70;
  }

  sub_1592098(v35, v38);
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_18:
  if ((v20 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_59:
  *(a1 + 16) |= 0x40u;
  v43 = *(a1 + 152);
  if (!v43)
  {
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_15ADD2C(v45);
    *(a1 + 152) = v43;
  }

  if (*(a2 + 152))
  {
    v46 = *(a2 + 152);
  }

  else
  {
    v46 = &off_2778348;
  }

  sub_159DA84(v43, v46);
  if ((v20 & 0x80) != 0)
  {
LABEL_67:
    *(a1 + 16) |= 0x80u;
    v47 = *(a1 + 160);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_15ADDB4(v49);
      *(a1 + 160) = v47;
    }

    if (*(a2 + 160))
    {
      v50 = *(a2 + 160);
    }

    else
    {
      v50 = &off_2778378;
    }

    sub_159E8A4(v47, v50);
  }

LABEL_75:
  if ((v20 & 0xFF00) == 0)
  {
    goto LABEL_149;
  }

  if ((v20 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v51 = *(a1 + 168);
    if (!v51)
    {
      v52 = *(a1 + 8);
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
      if (v52)
      {
        v53 = *v53;
      }

      v51 = sub_15ADF48(v53);
      *(a1 + 168) = v51;
    }

    if (*(a2 + 168))
    {
      v54 = *(a2 + 168);
    }

    else
    {
      v54 = &off_27783E8;
    }

    sub_15A1054(v51, v54);
    if ((v20 & 0x200) == 0)
    {
LABEL_78:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_101;
    }
  }

  else if ((v20 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  *(a1 + 16) |= 0x200u;
  v55 = *(a1 + 176);
  if (!v55)
  {
    v56 = *(a1 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    v55 = sub_15AE0C8(v57);
    *(a1 + 176) = v55;
  }

  if (*(a2 + 176))
  {
    v58 = *(a2 + 176);
  }

  else
  {
    v58 = &off_27784B8;
  }

  sub_15A2B0C(v55, v58);
  if ((v20 & 0x400) == 0)
  {
LABEL_79:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_109;
  }

LABEL_101:
  *(a1 + 16) |= 0x400u;
  v59 = *(a1 + 184);
  if (!v59)
  {
    v60 = *(a1 + 8);
    v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
    if (v60)
    {
      v61 = *v61;
    }

    v59 = sub_15AE154(v61);
    *(a1 + 184) = v59;
  }

  if (*(a2 + 184))
  {
    v62 = *(a2 + 184);
  }

  else
  {
    v62 = &off_27784F8;
  }

  sub_12EB184(v59, v62);
  if ((v20 & 0x800) == 0)
  {
LABEL_80:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(a1 + 16) |= 0x800u;
  v63 = *(a1 + 192);
  if (!v63)
  {
    v64 = *(a1 + 8);
    v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
    if (v64)
    {
      v65 = *v65;
    }

    v63 = sub_15AE1DC(v65);
    *(a1 + 192) = v63;
  }

  if (*(a2 + 192))
  {
    v66 = *(a2 + 192);
  }

  else
  {
    v66 = &off_2778528;
  }

  sub_15A3C0C(v63, v66);
  if ((v20 & 0x1000) == 0)
  {
LABEL_81:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_125;
  }

LABEL_117:
  *(a1 + 16) |= 0x1000u;
  v67 = *(a1 + 200);
  if (!v67)
  {
    v68 = *(a1 + 8);
    v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
    if (v68)
    {
      v69 = *v69;
    }

    v67 = sub_15AE288(v69);
    *(a1 + 200) = v67;
  }

  if (*(a2 + 200))
  {
    v70 = *(a2 + 200);
  }

  else
  {
    v70 = &off_2778578;
  }

  sub_15A4464(v67, v70);
  if ((v20 & 0x2000) == 0)
  {
LABEL_82:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_133;
  }

LABEL_125:
  *(a1 + 16) |= 0x2000u;
  v71 = *(a1 + 208);
  if (!v71)
  {
    v72 = *(a1 + 8);
    v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
    if (v72)
    {
      v73 = *v73;
    }

    v71 = sub_15AE310(v73);
    *(a1 + 208) = v71;
  }

  if (*(a2 + 208))
  {
    v74 = *(a2 + 208);
  }

  else
  {
    v74 = &off_27785A8;
  }

  sub_128E5DC(v71, v74);
  if ((v20 & 0x4000) == 0)
  {
LABEL_83:
    if ((v20 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_141;
  }

LABEL_133:
  *(a1 + 16) |= 0x4000u;
  v75 = *(a1 + 216);
  if (!v75)
  {
    v76 = *(a1 + 8);
    v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
    if (v76)
    {
      v77 = *v77;
    }

    sub_15AE000(v77);
    *(a1 + 216) = v75;
  }

  if (*(a2 + 216))
  {
    v78 = *(a2 + 216);
  }

  else
  {
    v78 = &off_2778448;
  }

  sub_15A1DF8(v75, v78);
  if ((v20 & 0x8000) != 0)
  {
LABEL_141:
    *(a1 + 16) |= 0x8000u;
    v79 = *(a1 + 224);
    if (!v79)
    {
      v80 = *(a1 + 8);
      v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
      if (v80)
      {
        v81 = *v81;
      }

      v79 = sub_15AD260(v81);
      *(a1 + 224) = v79;
    }

    if (*(a2 + 224))
    {
      v82 = *(a2 + 224);
    }

    else
    {
      v82 = &off_2777FA0;
    }

    sub_1592098(v79, v82);
  }

LABEL_149:
  if ((v20 & 0xFF0000) == 0)
  {
    goto LABEL_224;
  }

  if ((v20 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v83 = *(a1 + 232);
    if (!v83)
    {
      v84 = *(a1 + 8);
      v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
      if (v84)
      {
        v85 = *v85;
      }

      v83 = sub_15AE52C(v85);
      *(a1 + 232) = v83;
    }

    if (*(a2 + 232))
    {
      v86 = *(a2 + 232);
    }

    else
    {
      v86 = &off_2778640;
    }

    sub_15A685C(v83, v86);
    if ((v20 & 0x20000) == 0)
    {
LABEL_152:
      if ((v20 & 0x40000) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_170;
    }
  }

  else if ((v20 & 0x20000) == 0)
  {
    goto LABEL_152;
  }

  *(a1 + 16) |= 0x20000u;
  v87 = *(a1 + 240);
  if (!v87)
  {
    v88 = *(a1 + 8);
    v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
    if (v88)
    {
      v89 = *v89;
    }

    v87 = sub_15AD300(v89);
    *(a1 + 240) = v87;
  }

  if (*(a2 + 240))
  {
    v90 = *(a2 + 240);
  }

  else
  {
    v90 = &off_2777FD0;
  }

  sub_159320C(v87, v90);
  if ((v20 & 0x40000) != 0)
  {
LABEL_170:
    *(a1 + 16) |= 0x40000u;
    v91 = *(a1 + 248);
    if (!v91)
    {
      v92 = *(a1 + 8);
      v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
      if (v92)
      {
        v93 = *v93;
      }

      v91 = sub_15AE288(v93);
      *(a1 + 248) = v91;
    }

    if (*(a2 + 248))
    {
      v94 = *(a2 + 248);
    }

    else
    {
      v94 = &off_2778578;
    }

    sub_15A4464(v91, v94);
  }

LABEL_178:
  if ((v20 & 0x80000) != 0)
  {
    *(a1 + 16) |= 0x80000u;
    v95 = *(a1 + 256);
    if (!v95)
    {
      v96 = *(a1 + 8);
      v97 = (v96 & 0xFFFFFFFFFFFFFFFCLL);
      if (v96)
      {
        v97 = *v97;
      }

      v95 = sub_15AD754(v97);
      *(a1 + 256) = v95;
    }

    if (*(a2 + 256))
    {
      v98 = *(a2 + 256);
    }

    else
    {
      v98 = &off_2778168;
    }

    sub_159759C(v95, v98);
    if ((v20 & 0x100000) == 0)
    {
LABEL_180:
      if ((v20 & 0x200000) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_200;
    }
  }

  else if ((v20 & 0x100000) == 0)
  {
    goto LABEL_180;
  }

  *(a1 + 16) |= 0x100000u;
  v99 = *(a1 + 264);
  if (!v99)
  {
    v100 = *(a1 + 8);
    v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
    if (v100)
    {
      v101 = *v101;
    }

    v99 = sub_15AD754(v101);
    *(a1 + 264) = v99;
  }

  if (*(a2 + 264))
  {
    v102 = *(a2 + 264);
  }

  else
  {
    v102 = &off_2778168;
  }

  sub_159759C(v99, v102);
  if ((v20 & 0x200000) == 0)
  {
LABEL_181:
    if ((v20 & 0x400000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_208;
  }

LABEL_200:
  *(a1 + 16) |= 0x200000u;
  v103 = *(a1 + 272);
  if (!v103)
  {
    v104 = *(a1 + 8);
    v105 = (v104 & 0xFFFFFFFFFFFFFFFCLL);
    if (v104)
    {
      v105 = *v105;
    }

    sub_15AD87C(v105);
    *(a1 + 272) = v103;
  }

  if (*(a2 + 272))
  {
    v106 = *(a2 + 272);
  }

  else
  {
    v106 = &off_2778198;
  }

  sub_159839C(v103, v106);
  if ((v20 & 0x400000) == 0)
  {
LABEL_182:
    if ((v20 & 0x800000) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_216;
  }

LABEL_208:
  *(a1 + 16) |= 0x400000u;
  v107 = *(a1 + 280);
  if (!v107)
  {
    v108 = *(a1 + 8);
    v109 = (v108 & 0xFFFFFFFFFFFFFFFCLL);
    if (v108)
    {
      v109 = *v109;
    }

    v107 = sub_15AD568(v109);
    *(a1 + 280) = v107;
  }

  if (*(a2 + 280))
  {
    v110 = *(a2 + 280);
  }

  else
  {
    v110 = &off_2778098;
  }

  sub_15953C4(v107, v110);
  if ((v20 & 0x800000) != 0)
  {
LABEL_216:
    *(a1 + 16) |= 0x800000u;
    v111 = *(a1 + 288);
    if (!v111)
    {
      v112 = *(a1 + 8);
      v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
      if (v112)
      {
        v113 = *v113;
      }

      v111 = sub_15AD3A8(v113);
      *(a1 + 288) = v111;
    }

    if (*(a2 + 288))
    {
      v114 = *(a2 + 288);
    }

    else
    {
      v114 = &off_2778028;
    }

    sub_1593C3C(v111, v114);
  }

LABEL_224:
  if (!HIBYTE(v20))
  {
    goto LABEL_234;
  }

  if ((v20 & 0x1000000) != 0)
  {
    *(a1 + 16) |= 0x1000000u;
    v116 = *(a1 + 296);
    if (!v116)
    {
      v117 = *(a1 + 8);
      v118 = (v117 & 0xFFFFFFFFFFFFFFFCLL);
      if (v117)
      {
        v118 = *v118;
      }

      v116 = sub_15ADA70(v118);
      *(a1 + 296) = v116;
    }

    if (*(a2 + 296))
    {
      v119 = *(a2 + 296);
    }

    else
    {
      v119 = &off_27781F0;
    }

    sub_159A704(v116, v119);
    if ((v20 & 0x2000000) == 0)
    {
LABEL_227:
      if ((v20 & 0x4000000) == 0)
      {
        goto LABEL_228;
      }

      goto LABEL_254;
    }
  }

  else if ((v20 & 0x2000000) == 0)
  {
    goto LABEL_227;
  }

  *(a1 + 16) |= 0x2000000u;
  v120 = *(a1 + 304);
  if (!v120)
  {
    v121 = *(a1 + 8);
    v122 = (v121 & 0xFFFFFFFFFFFFFFFCLL);
    if (v121)
    {
      v122 = *v122;
    }

    v120 = sub_15AD430(v122);
    *(a1 + 304) = v120;
  }

  if (*(a2 + 304))
  {
    v123 = *(a2 + 304);
  }

  else
  {
    v123 = &off_2778060;
  }

  sub_1593C3C(v120, v123);
  if ((v20 & 0x4000000) == 0)
  {
LABEL_228:
    if ((v20 & 0x8000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_255;
  }

LABEL_254:
  *(a1 + 312) = *(a2 + 312);
  if ((v20 & 0x8000000) == 0)
  {
LABEL_229:
    if ((v20 & 0x10000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_256;
  }

LABEL_255:
  *(a1 + 320) = *(a2 + 320);
  if ((v20 & 0x10000000) == 0)
  {
LABEL_230:
    if ((v20 & 0x20000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_257;
  }

LABEL_256:
  *(a1 + 324) = *(a2 + 324);
  if ((v20 & 0x20000000) == 0)
  {
LABEL_231:
    if ((v20 & 0x40000000) == 0)
    {
      goto LABEL_232;
    }

LABEL_258:
    *(a1 + 326) = *(a2 + 326);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_233;
    }

LABEL_259:
    *(a1 + 327) = *(a2 + 327);
    goto LABEL_233;
  }

LABEL_257:
  *(a1 + 325) = *(a2 + 325);
  if ((v20 & 0x40000000) != 0)
  {
    goto LABEL_258;
  }

LABEL_232:
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_259;
  }

LABEL_233:
  *(a1 + 16) |= v20;
LABEL_234:
  v115 = *(a2 + 8);
  if (v115)
  {

    sub_1957EF4((a1 + 8), (v115 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15AA198(uint64_t a1)
{
  result = sub_15AA428(a1 + 24);
  if (result)
  {
    result = sub_15AA48C(a1 + 80);
    if (result)
    {
      v3 = *(a1 + 16);
      if ((v3 & 4) != 0)
      {
        v8 = *(a1 + 120);
        v9 = *(v8 + 56);
        v10 = *(v8 + 64);
        while (v9 >= 1)
        {
          v11 = *(v10 + 8 * v9--);
          if ((~*(v11 + 16) & 3) != 0)
          {
            return 0;
          }
        }
      }

      if ((v3 & 8) == 0 || (result = sub_1591ABC(*(a1 + 128)), result))
      {
        if ((v3 & 0x10) != 0)
        {
          v4 = *(a1 + 136);
          v5 = *(v4 + 24);
          while (v5 >= 1)
          {
            v6 = v5 - 1;
            v7 = sub_1544084(*(*(v4 + 32) + 8 * v5));
            v5 = v6;
            if (!v7)
            {
              return 0;
            }
          }

          v3 = *(a1 + 16);
        }

        if ((v3 & 0x20) != 0)
        {
          v17 = *(a1 + 144);
          v18 = *(v17 + 80);
          v19 = *(v17 + 88);
          while (v18 >= 1)
          {
            result = 0;
            v20 = *(v19 + 8 * v18--);
            if ((~*(v20 + 16) & 3) != 0)
            {
              return result;
            }
          }
        }

        if ((v3 & 0x40) != 0)
        {
          v12 = *(a1 + 152);
          if ((*(v12 + 16) & 2) != 0)
          {
            v25 = *(v12 + 32);
            v26 = *(v25 + 80);
            v27 = *(v25 + 88);
            while (v26 >= 1)
            {
              result = 0;
              v28 = *(v27 + 8 * v26--);
              if ((~*(v28 + 16) & 3) != 0)
              {
                return result;
              }
            }
          }
        }

        if ((v3 & 0x100) != 0)
        {
          v21 = *(a1 + 168);
          v22 = *(v21 + 32);
          v23 = *(v21 + 40);
          while (v22 >= 1)
          {
            result = 0;
            v24 = *(v23 + 8 * v22--);
            if ((~*(v24 + 16) & 3) != 0)
            {
              return result;
            }
          }
        }

        if ((v3 & 0x1000) == 0 || (result = sub_15A4574(*(a1 + 200)), result))
        {
          if ((v3 & 0x4000) != 0)
          {
            result = sub_15A1FD0(*(a1 + 216) + 80);
            if (!result)
            {
              return result;
            }

            v3 = *(a1 + 16);
          }

          if ((v3 & 0x8000) != 0)
          {
            v13 = *(a1 + 224);
            v14 = *(v13 + 24);
            while (v14 >= 1)
            {
              v15 = v14 - 1;
              v16 = sub_1544084(*(*(v13 + 32) + 8 * v14));
              result = 0;
              v14 = v15;
              if (!v16)
              {
                return result;
              }
            }

            v3 = *(a1 + 16);
          }

          if ((v3 & 0x10000) != 0)
          {
            result = sub_15A6A2C(*(a1 + 232));
            if (!result)
            {
              return result;
            }

            v3 = *(a1 + 16);
          }

          if ((v3 & 0x20000) != 0)
          {
            result = sub_159352C(*(a1 + 240));
            if (!result)
            {
              return result;
            }

            v3 = *(a1 + 16);
          }

          if ((v3 & 0x40000) == 0 || (result = sub_15A4574(*(a1 + 248)), result))
          {
            if ((v3 & 0x200000) != 0)
            {
              v29 = *(a1 + 272);
              v30 = *(v29 + 32);
              v31 = *(v29 + 40);
              while (v30 >= 1)
              {
                result = 0;
                v32 = *(v31 + 8 * v30--);
                if ((*(v32 + 16) & 4) == 0)
                {
                  return result;
                }
              }
            }

            if ((v3 & 0x400000) != 0)
            {
              v33 = *(a1 + 280);
              v34 = *(v33 + 24);
              v35 = *(v33 + 32);
              while (v34 >= 1)
              {
                v36 = v34 - 1;
                v37 = sub_1594EA8(*(v35 + 8 * v34));
                result = 0;
                v34 = v36;
                if (!v37)
                {
                  return result;
                }
              }
            }

            if ((v3 & 0x1000000) == 0)
            {
              return 1;
            }

            result = sub_159A7C8(*(a1 + 296) + 16);
            if (result)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_15AA428(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v2 = v1--;
      v3 = *(*(a1 + 16) + 8 + 8 * v1);
      v4 = *(v3 + 56);
      v5 = *(v3 + 64);
      while (v4 >= 1)
      {
        v6 = *(v5 + 8 * v4--);
        if ((~*(v6 + 16) & 3) != 0)
        {
          return 0;
        }
      }
    }

    while (v2 >= 2);
  }

  return 1;
}

uint64_t sub_15AA48C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v2 = v1--;
      v3 = *(*(a1 + 16) + 8 + 8 * v1);
      v4 = *(v3 + 48);
      v5 = *(v3 + 56);
      while (v4 >= 1)
      {
        v6 = *(v5 + 8 * v4--);
        if ((~*(v6 + 16) & 3) != 0)
        {
          return 0;
        }
      }
    }

    while (v2 >= 2);
  }

  return 1;
}

uint64_t sub_15AA500(uint64_t a1)
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

void sub_15AA5B8(uint64_t a1)
{
  sub_15AA500(a1);

  operator delete();
}

uint64_t sub_15AA5F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

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
  if ((v1 & 0xFC) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 44) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15AA680(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v53 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v53, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v53 + 1);
    v8 = **v53;
    if (**v53 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v53, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v53 + 2);
      }
    }

    *v53 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_70;
        }

        v5 |= 0x10u;
        v29 = v7 + 1;
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_50;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = v7 + 2;
LABEL_50:
          *v53 = v29;
          *(a1 + 42) = v28 != 0;
          goto LABEL_78;
        }

        v49 = sub_19587DC(v7, v28);
        *v53 = v49;
        *(a1 + 42) = v50 != 0;
        if (!v49)
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_70;
        }

        v5 |= 0x20u;
        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
LABEL_33:
          *v53 = v20;
          *(a1 + 43) = v19 != 0;
          goto LABEL_78;
        }

        v45 = sub_19587DC(v7, v19);
        *v53 = v45;
        *(a1 + 43) = v46 != 0;
        if (!v45)
        {
          goto LABEL_99;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_70;
      }

      v5 |= 4u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_45:
        *v53 = v26;
        *(a1 + 40) = v25 != 0;
        goto LABEL_78;
      }

      v47 = sub_19587DC(v7, v25);
      *v53 = v47;
      *(a1 + 40) = v48 != 0;
      if (!v47)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_70;
      }

      v5 |= 8u;
      v17 = v7 + 1;
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_26:
        *v53 = v17;
        *(a1 + 41) = v16 != 0;
        goto LABEL_78;
      }

      v43 = sub_19587DC(v7, v16);
      *v53 = v43;
      *(a1 + 41) = v44 != 0;
      if (!v43)
      {
        goto LABEL_99;
      }
    }

LABEL_78:
    if (sub_195ADC0(a3, v53, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 6)
  {
    if (v11 != 7)
    {
      if (v11 != 8)
      {
        if (v11 == 9 && v8 == 74)
        {
          *(a1 + 16) |= 2u;
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v14 = (a1 + 32);
          goto LABEL_40;
        }

        goto LABEL_70;
      }

      if (v8 != 64)
      {
        goto LABEL_70;
      }

      v38 = v7 + 1;
      v37 = *v7;
      if (v37 < 0)
      {
        v39 = *v38;
        v37 = (v39 << 7) + v37 - 128;
        if (v39 < 0)
        {
          *v53 = sub_19587DC(v7, v37);
          if (!*v53)
          {
            goto LABEL_99;
          }

          goto LABEL_68;
        }

        v38 = v7 + 2;
      }

      *v53 = v38;
LABEL_68:
      if (v37 > 0x16)
      {
        sub_13B67EC();
      }

      else
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 52) = v37;
      }

      goto LABEL_78;
    }

    if (v8 != 56)
    {
      goto LABEL_70;
    }

    v32 = v7 + 1;
    v31 = *v7;
    if (v31 < 0)
    {
      v33 = *v32;
      v31 = (v33 << 7) + v31 - 128;
      if (v33 < 0)
      {
        *v53 = sub_19587DC(v7, v31);
        if (!*v53)
        {
          goto LABEL_99;
        }

        goto LABEL_56;
      }

      v32 = v7 + 2;
    }

    *v53 = v32;
LABEL_56:
    if (v31 > 3)
    {
      sub_13137F8();
    }

    else
    {
      *(a1 + 16) |= 0x80u;
      *(a1 + 48) = v31;
    }

    goto LABEL_78;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_70;
    }

    v5 |= 0x40u;
    v35 = v7 + 1;
    v34 = *v7;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_62;
    }

    v36 = *v35;
    v34 = (v36 << 7) + v34 - 128;
    if ((v36 & 0x80000000) == 0)
    {
      v35 = v7 + 2;
LABEL_62:
      *v53 = v35;
      *(a1 + 44) = v34 != 0;
      goto LABEL_78;
    }

    v51 = sub_19587DC(v7, v34);
    *v53 = v51;
    *(a1 + 44) = v52 != 0;
    if (!v51)
    {
      goto LABEL_99;
    }

    goto LABEL_78;
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v13 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v13 = *v13;
    }

    v14 = (a1 + 24);
LABEL_40:
    v23 = sub_194DB04(v14, v13);
    v24 = sub_1958890(v23, *v53, a3);
LABEL_77:
    *v53 = v24;
    if (!v24)
    {
      goto LABEL_99;
    }

    goto LABEL_78;
  }

LABEL_70:
  if (v8)
  {
    v40 = (v8 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = *(a1 + 8);
    if (v41)
    {
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v7 = *v53;
    }

    v24 = sub_1952690(v8, v42, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_99:
  *v53 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v53;
}

char *sub_15AAB78(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 40);
    *v4 = 8;
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 41);
  *v4 = 16;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 42);
  *v4 = 24;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 43);
  *v4 = 32;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_24:
    v4 = sub_128AEEC(a3, 6, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 44);
  *v4 = 40;
  v4[1] = v12;
  v4 += 2;
  if (v6)
  {
    goto LABEL_24;
  }

LABEL_7:
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    v7 = v4;
    goto LABEL_32;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 48);
  *v4 = 56;
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v4[1] = v13 | 0x80;
    v14 = v13 >> 7;
    v4[2] = v13 >> 7;
    v7 = v4 + 3;
    if (v13 >= 0x4000)
    {
      LOBYTE(v15) = v4[2];
      do
      {
        *(v7 - 1) = v15 | 0x80;
        v15 = v14 >> 7;
        *v7++ = v14 >> 7;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_32:
  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 52);
    *v7 = 64;
    v7[1] = v18;
    if (v18 > 0x7F)
    {
      v7[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v7[2] = v18 >> 7;
      v17 = v7 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v7[2];
        do
        {
          *(v17 - 1) = v20 | 0x80;
          v20 = v19 >> 7;
          *v17++ = v19 >> 7;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v17 = v7 + 2;
    }
  }

  else
  {
    v17 = v7;
  }

  if ((v6 & 2) != 0)
  {
    v17 = sub_128AEEC(a3, 9, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v17);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v17;
  }

  v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v24 + 31);
  if (v25 < 0)
  {
    v26 = *(v24 + 8);
    v25 = *(v24 + 16);
  }

  else
  {
    v26 = (v24 + 8);
  }

  if ((*a3 - v17) >= v25)
  {
    v27 = v25;
    memcpy(v17, v26, v25);
    v17 += v27;
    return v17;
  }

  return sub_1957130(a3, v26, v25, v17);
}

uint64_t sub_15AAE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if (v1)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v10.i64[0] = 0x200000002;
  v10.i64[1] = 0x200000002;
  v3 = v2 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_2339AA0), v10)) + ((v1 >> 5) & 2);
  if ((v1 & 0x80) != 0)
  {
    v11 = *(a1 + 48);
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 11;
    }

    v3 += v13;
  }

LABEL_17:
  if ((v1 & 0x100) != 0)
  {
    v14 = *(a1 + 52);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v15;
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

    v3 += v19;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_15AB004(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      v7 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v9 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v9 = *v9;
      }

      result = sub_194EA1C(&result[1], (v7 & 0xFFFFFFFFFFFFFFFELL), v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v10 = *(a2 + 32);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v11 = v3->__r_.__value_.__l.__size_;
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    v3[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_25:
    v3[1].__r_.__value_.__s.__data_[17] = *(a2 + 41);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    v3[1].__r_.__value_.__s.__data_[18] = *(a2 + 42);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    v3[1].__r_.__value_.__s.__data_[19] = *(a2 + 43);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      goto LABEL_11;
    }

LABEL_28:
    v3[1].__r_.__value_.__s.__data_[20] = *(a2 + 44);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 52);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15AB17C(uint64_t a1)
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

  if (a1 != &off_2778838)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_15A6ABC(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_15AA500(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_15B4DD8((a1 + 96));
  sub_15B506C((a1 + 72));
  sub_15B5828((a1 + 48));
  sub_15B5828((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15AB27C(uint64_t a1)
{
  sub_15AB17C(a1);

  operator delete();
}

uint64_t sub_15AB2B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_158C7A4(v4);
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
      result = sub_158C7A4(v7);
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
      result = sub_157DB4C(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = sub_157E0B4(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      result = sub_15A6ED0(*(v1 + 120));
    }

    if ((v14 & 2) != 0)
    {
      result = sub_15AA5F0(*(v1 + 128));
    }
  }

  v16 = *(v1 + 8);
  v15 = v1 + 8;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_1957EA8(v15);
  }

  return result;
}

char *sub_15AB3D0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v48 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v48, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v48 + 1;
    v7 = *v48;
    if (*v48 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v48, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v48 + 2;
      }
    }

    v48 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 2u;
          v29 = *(a1 + 128);
          if (!v29)
          {
            v30 = *(a1 + 8);
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
            if (v30)
            {
              v31 = *v31;
            }

            v29 = sub_15AE6E4(v31);
            *(a1 + 128) = v29;
            v6 = v48;
          }

          v16 = sub_222121C(a3, v29, v6);
          goto LABEL_76;
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          v38 = v6 - 1;
          while (1)
          {
            v39 = (v38 + 1);
            v48 = v38 + 1;
            v40 = *(a1 + 88);
            if (v40 && (v41 = *(a1 + 80), v41 < *v40))
            {
              *(a1 + 80) = v41 + 1;
              v42 = *&v40[2 * v41 + 2];
            }

            else
            {
              v43 = sub_15AC0D4(*(a1 + 72));
              v42 = sub_19593CC(a1 + 72, v43);
              v39 = v48;
            }

            v38 = sub_221FCBC(a3, v42, v39);
            v48 = v38;
            if (!v38)
            {
              return 0;
            }

            if (*a3 <= v38 || *v38 != 42)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        v17 = v6 - 1;
        while (1)
        {
          v18 = (v17 + 1);
          v48 = v17 + 1;
          v19 = *(a1 + 112);
          if (v19 && (v20 = *(a1 + 104), v20 < *v19))
          {
            *(a1 + 104) = v20 + 1;
            v21 = *&v19[2 * v20 + 2];
          }

          else
          {
            v22 = sub_15AC14C(*(a1 + 96));
            v21 = sub_19593CC(a1 + 96, v22);
            v18 = v48;
          }

          v17 = sub_221F9EC(a3, v21, v18);
          v48 = v17;
          if (!v17)
          {
            return 0;
          }

          if (*a3 <= v17 || *v17 != 50)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        v23 = v6 - 1;
        while (1)
        {
          v24 = (v23 + 1);
          v48 = v23 + 1;
          v25 = *(a1 + 40);
          if (v25 && (v26 = *(a1 + 32), v26 < *v25))
          {
            *(a1 + 32) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            v28 = sub_15ACDCC(*(a1 + 24));
            v27 = sub_19593CC(a1 + 24, v28);
            v24 = v48;
          }

          v23 = sub_22210FC(a3, v27, v24);
          v48 = v23;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 10)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v32 = v6 - 1;
        while (1)
        {
          v33 = (v32 + 1);
          v48 = v32 + 1;
          v34 = *(a1 + 64);
          if (v34 && (v35 = *(a1 + 56), v35 < *v34))
          {
            *(a1 + 56) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            v37 = sub_15ACDCC(*(a1 + 48));
            v36 = sub_19593CC(a1 + 48, v37);
            v33 = v48;
          }

          v32 = sub_22210FC(a3, v36, v33);
          v48 = v32;
          if (!v32)
          {
            return 0;
          }

          if (*a3 <= v32 || *v32 != 18)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 120);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        sub_15AE5E0(v14);
        v12 = v15;
        *(a1 + 120) = v15;
        v6 = v48;
      }

      v16 = sub_222118C(a3, v12, v6);
      goto LABEL_76;
    }

    if (v7)
    {
      v44 = (v7 & 7) == 4;
    }

    else
    {
      v44 = 1;
    }

    if (v44)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v48;
      }

      return 0;
    }

    v45 = *(a1 + 8);
    if (v45)
    {
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v46 = sub_11F1920((a1 + 8));
      v6 = v48;
    }

    v16 = sub_1952690(v7, v46, v6, a3);
LABEL_76:
    v48 = v16;
    if (!v16)
    {
      return 0;
    }

LABEL_77:
    ;
  }

  return v48;
}

char *sub_15AB7D0(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_158D038(v8, v10, a3);
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

      __dst = sub_158D038(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v17 = *(a1 + 120);
    *__dst = 26;
    v18 = *(v17 + 20);
    __dst[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, __dst + 1);
    }

    else
    {
      v19 = __dst + 2;
    }

    __dst = sub_15A8108(v17, v19, a3);
  }

  if ((v16 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v20 = *(a1 + 128);
    *__dst = 34;
    v21 = *(v20 + 20);
    __dst[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, __dst + 1);
    }

    else
    {
      v22 = __dst + 2;
    }

    __dst = sub_15AAB78(v20, v22, a3);
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    for (k = 0; k != v23; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v25 = *(*(a1 + 88) + 8 * k + 8);
      *__dst = 42;
      v26 = *(v25 + 20);
      __dst[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, __dst + 1);
      }

      else
      {
        v27 = __dst + 2;
      }

      __dst = sub_157DD18(v25, v27, a3);
    }
  }

  v28 = *(a1 + 104);
  if (v28)
  {
    for (m = 0; m != v28; ++m)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v30 = *(*(a1 + 112) + 8 * m + 8);
      *__dst = 50;
      v31 = *(v30 + 20);
      __dst[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, __dst + 1);
      }

      else
      {
        v32 = __dst + 2;
      }

      __dst = sub_157E2B0(v30, v32, a3);
    }
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return __dst;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  if ((*a3 - __dst) >= v36)
  {
    v38 = v36;
    memcpy(__dst, v37, v36);
    __dst += v38;
    return __dst;
  }

  return sub_1957130(a3, v37, v36, __dst);
}

uint64_t sub_15ABB68(uint64_t a1)
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
      v7 = sub_158D7DC(v6);
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
      v14 = sub_158D7DC(v13);
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
      v21 = sub_157DEC4(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + v22;
  v24 = *(a1 + 112);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_157E398(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 16);
  if ((v29 & 3) != 0)
  {
    if (v29)
    {
      v30 = sub_15A8FD4(*(a1 + 120));
      v23 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v29 & 2) != 0)
    {
      v31 = sub_15AAE98(*(a1 + 128));
      v23 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v32 = *(a1 + 8);
  if (v32)
  {
    v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v32 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v23 += v35;
  }

  *(a1 + 20) = v23;
  return v23;
}

void sub_15ABD6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B66F0((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_15B66F0((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_15B5EFC((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_15B5C60((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if ((v24 & 3) != 0)
  {
    if (v24)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 120);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        sub_15AE5E0(v27);
        *(a1 + 120) = v25;
      }

      if (*(a2 + 120))
      {
        v28 = *(a2 + 120);
      }

      else
      {
        v28 = &off_27786B8;
      }

      sub_15A9780(v25, v28);
    }

    if ((v24 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v29 = *(a1 + 128);
      if (!v29)
      {
        v30 = *(a1 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        v29 = sub_15AE6E4(v31);
        *(a1 + 128) = v29;
      }

      if (*(a2 + 128))
      {
        v32 = *(a2 + 128);
      }

      else
      {
        v32 = &off_2778800;
      }

      sub_15AB004(v29, v32);
    }
  }

  v33 = *(a2 + 8);
  if (v33)
  {

    sub_1957EF4((a1 + 8), (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15ABFE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_158E0B0(*(*(a1 + 40) + 8 * v2));
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
    v7 = sub_158E0B0(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = *(*(a1 + 88) + 8 * v8--);
    if ((~*(v9 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 104);
  while (v10 >= 1)
  {
    v11 = *(*(a1 + 112) + 8 * v10--);
    if ((~*(v11 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_15AA198(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_15AC0D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F1230;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_15AC14C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F12B0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_15AC1D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F1330;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_15AC274(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F13B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_15AC2FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F1430;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

void *sub_15AC3A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F14B0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_15AC43C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_15800F4(v2, a1, 0);
}

uint64_t sub_15AC49C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F15B0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = a1;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = a1;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = a1;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = &qword_278E990;
  *(result + 168) = &qword_278E990;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 176) = &qword_278E990;
  *(result + 199) = 0;
  return result;
}

void *sub_15AC578(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F1630;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[6] = 0;
  result[7] = 0;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_15AC620(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F16B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15AC6A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F1730;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

void *sub_15AC75C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F17B0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

double sub_15AC7E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26F1830;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t sub_15AC864(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F18B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = &qword_278E990;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_15AC8F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F1930;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

void *sub_15AC998(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F19B0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[6] = 0;
  result[7] = 0;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_15ACA24(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F1A30;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

double sub_15ACAAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26F1AB0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  return result;
}

void *sub_15ACB48(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F1B30;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_15ACBC0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F1BB0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_15ACC38(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F1C30;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_15ACCC0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F1CB0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_15ACD44(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F1D30;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15ACDCC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F1DB0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  return result;
}

uint64_t sub_15ACE74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F1E30;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_15ACEF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26F1EB0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 84) = 0u;
  return result;
}

void *sub_15ACFA8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F1F30;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = 0;
  return result;
}

void *sub_15AD058(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F1FB0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = a1;
  result[6] = 0;
  result[7] = 0;
  result[8] = &qword_278E990;
  return result;
}

uint64_t sub_15AD104(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2030;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 124) = 0u;
  *(result + 140) = 1;
  return result;
}

uint64_t sub_15AD1C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F20B0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15AD260(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2130;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_15AD300(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F21B0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = a1;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = a1;
  result[10] = 0;
  return result;
}

uint64_t sub_15AD3A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F2230;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_15AD430(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F22B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  return result;
}

void *sub_15AD4B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2330;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = 0;
  return result;
}

uint64_t sub_15AD568(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F23B0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_15AD608(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2430;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = a1;
  result[10] = 0;
  result[11] = 0;
  result[12] = &qword_278E990;
  result[13] = &qword_278E990;
  result[14] = &qword_278E990;
  result[15] = &qword_278E990;
  result[16] = &qword_278E990;
  result[17] = 0;
  result[18] = 0;
  result[19] = 0;
  return result;
}

uint64_t sub_15AD6CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F24B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_15AD754(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2530;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15AD7F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F25B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

double sub_15AD87C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26F2630;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  return result;
}

uint64_t sub_15AD92C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F26B0;
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
  *(result + 96) = &qword_278E990;
  *(result + 104) = &qword_278E990;
  *(result + 112) = &qword_278E990;
  *(result + 120) = &qword_278E990;
  *(result + 128) = &qword_278E990;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  return result;
}

uint64_t sub_15AD9F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F2730;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_15ADA70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F27B0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15ADB10(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2830;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = 0;
  *(result + 88) = 1;
  return result;
}

uint64_t sub_15ADBC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F28B0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_15ADC74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2930;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

uint64_t sub_15ADD2C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F29B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15ADDB4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2A30;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = &qword_278E990;
  *(result + 104) = 0;
  return result;
}

int64x2_t sub_15ADE6C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26F2AB0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = a1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = a1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = &qword_278E990;
  *(v2 + 120) = &qword_278E990;
  *(v2 + 128) = &qword_278E990;
  *(v2 + 136) = &qword_278E990;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(v2 + 216) = result;
  return result;
}

uint64_t sub_15ADF48(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2B30;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = 0;
  *(result + 92) = 0;
  return result;
}

double sub_15AE000(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = 0.0;
  *v2 = off_26F2BB0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = a1;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  return result;
}

void *sub_15AE0C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F2C30;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[6] = 0;
  result[7] = 0;
  result[5] = &qword_278E990;
  return result;
}

void *sub_15AE154(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F2CB0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

void *sub_15AE1DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2D30;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  return result;
}

uint64_t sub_15AE288(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F2DB0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15AE310(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F2E30;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15AE398(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F2EB0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_15AE418(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F2F30;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_15AE4B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F2FB0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_15AE52C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F3030;
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
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

double sub_15AE5E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26F30B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = a1;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = &qword_278E990;
  *(v2 + 112) = &qword_278E990;
  result = 0.0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  return result;
}

void *sub_15AE6E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F3130;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

double sub_15AE76C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26F31B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  result = 0.0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  return result;
}

uint64_t sub_15AE830(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15AE8D0(uint64_t a1)
{
  sub_15AE830(a1);

  operator delete();
}

uint64_t sub_15AE908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 0xE) != 0)
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

uint64_t sub_15AE95C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v35, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v35 + 1);
    v8 = **v35;
    if (**v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v35 + 2);
      }
    }

    *v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_34;
        }

        v5 |= 4u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v24 = v7 + 2;
LABEL_33:
          *v35 = v24;
          *(a1 + 40) = v23;
          goto LABEL_42;
        }

        v33 = sub_19587DC(v7, v23);
        *v35 = v33;
        *(a1 + 40) = v34;
        if (!v33)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_34;
        }

        v5 |= 8u;
        v17 = v7 + 1;
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = v7 + 2;
LABEL_24:
          *v35 = v17;
          *(a1 + 48) = v16;
          goto LABEL_42;
        }

        v29 = sub_19587DC(v7, v16);
        *v35 = v29;
        *(a1 + 48) = v30;
        if (!v29)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_42;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_34;
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
      *v35 = v14;
      *(a1 + 32) = v13;
      goto LABEL_42;
    }

    v31 = sub_19587DC(v7, v13);
    *v35 = v31;
    *(a1 + 32) = v32;
    if (!v31)
    {
      goto LABEL_53;
    }

LABEL_42:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v22 = sub_1958890(v21, *v35, a3);
LABEL_41:
    *v35 = v22;
    if (!v22)
    {
      goto LABEL_53;
    }

    goto LABEL_42;
  }

LABEL_34:
  if (v8)
  {
    v26 = (v8 & 7) == 4;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v28 = sub_11F1920((a1 + 8));
      v7 = *v35;
    }

    v22 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_15AEBF8(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 16;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = v4[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = v4 + 2;
    }
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 40);
    *v7 = 24;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v7[2];
        do
        {
          *(v12 - 1) = v15 | 0x80;
          v15 = v14 >> 7;
          *v12++ = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 48);
    *v12 = 32;
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v12[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v12[2] = v18 >> 7;
      v17 = v12 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v17 - 1) = v12 | 0x80;
          v12 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v12 + 2;
    }
  }

  else
  {
    v17 = v12;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v17;
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

  if (*a3 - v17 >= v24)
  {
    v26 = v24;
    memcpy(v17, v25, v24);
    v17 += v26;
    return v17;
  }

  return sub_1957130(a3, v25, v24, v17);
}

uint64_t sub_15AEE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_12:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_13:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v2 += v9;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_15AEF54(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v8 = *v8;
      }

      result = sub_194EA1C(&result[1], (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_16:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_15AF04C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F3230;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_15AF0D4(uint64_t a1)
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
  if (a1 != &off_27788C0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_15B1C80(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15AF18C(uint64_t a1)
{
  sub_15AF0D4(a1);

  operator delete();
}

char *sub_15AF1C4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v28 + 1;
    v8 = *v28;
    if (*v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v28 + 2;
      }
    }

    v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 17)
        {
          v14 = *v7;
          v13 = v7 + 8;
          v5 |= 2u;
          *(a1 + 32) = v14;
LABEL_19:
          v28 = v13;
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (v8 != 10)
      {
        goto LABEL_31;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 24);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_15B234C(v18);
        *(a1 + 24) = v16;
        v7 = v28;
      }

      v19 = sub_221ECFC(a3, v16, v7);
LABEL_38:
      v28 = v19;
      if (!v19)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_31;
    }

    v5 |= 4u;
    v20 = v7 + 1;
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v28 = v20;
      *(a1 + 40) = v21;
      goto LABEL_39;
    }

    v26 = sub_1958770(v7, v21);
    v28 = v26;
    *(a1 + 40) = v27;
    if (!v26)
    {
      goto LABEL_46;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 37)
  {
    v15 = *v7;
    v13 = v7 + 4;
    v5 |= 8u;
    *(a1 + 44) = v15;
    goto LABEL_19;
  }

LABEL_31:
  if (v8)
  {
    v23 = (v8 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v7 = v28;
    }

    v19 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_38;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

char *sub_15AF3F0(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
    *__dst = 17;
    *(__dst + 1) = v10;
    __dst += 9;
    if ((v5 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 24);
  *__dst = 10;
  v8 = *(v7 + 20);
  __dst[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, __dst + 1);
  }

  else
  {
    v9 = __dst + 2;
  }

  __dst = sub_15B1F3C(v7, v9, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v11 = *(a1 + 40);
  *__dst = 24;
  __dst[1] = v11;
  if (v11 > 0x7F)
  {
    __dst[1] = v11 | 0x80;
    v12 = v11 >> 7;
    __dst[2] = v11 >> 7;
    v6 = __dst + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = __dst[2];
      do
      {
        *(v6 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v6++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_21:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 44);
    *v6 = 37;
    *(v6 + 1) = v15;
    v6 += 5;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v19)
  {
    v21 = v19;
    memcpy(v6, v20, v19);
    v6 += v21;
    return v6;
  }

  return sub_1957130(a3, v20, v19, v6);
}

uint64_t sub_15AF5F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v5 = sub_15B20A0(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 8) != 0)
    {
      result = v3 + 5;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

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
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_15AF6D0(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15AF770(uint64_t a1)
{
  sub_15AF6D0(a1);

  operator delete();
}

uint64_t sub_15AF7A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 24) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15AF7F0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].i32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].i32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 17)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 2;
    goto LABEL_24;
  }

LABEL_11:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_15AF97C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 17;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if (*a3 - v4 >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_15AFA7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 9;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_15AFB2C(uint64_t a1)
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
  if (a1 != &off_27788F0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15B1C80(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15B677C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15AFBF0(uint64_t a1)
{
  sub_15AFB2C(a1);

  operator delete();
}

uint64_t sub_15AFC28(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15AF7A8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_1580044(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_15AFCBC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 48);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_15B234C(v24);
        *(a1 + 48) = v22;
        v7 = v36;
      }

      v25 = sub_221ECFC(a3, v22, v7);
LABEL_48:
      v36 = v25;
      if (!v25)
      {
        goto LABEL_58;
      }

      goto LABEL_49;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_41;
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
      v36 = v14;
      *(a1 + 56) = v13 != 0;
      goto LABEL_49;
    }

    v32 = sub_19587DC(v7, v13);
    v36 = v32;
    *(a1 + 56) = v33 != 0;
    if (!v32)
    {
      goto LABEL_58;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 4u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_40:
      v36 = v27;
      *(a1 + 57) = v26 != 0;
      goto LABEL_49;
    }

    v34 = sub_19587DC(v7, v26);
    v36 = v34;
    *(a1 + 57) = v35 != 0;
    if (!v34)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v11 == 4 && v8 == 34)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      v36 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_15B0504(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = v36;
      }

      v16 = sub_22212AC(a3, v20, v17);
      v36 = v16;
      if (!v16)
      {
        goto LABEL_58;
      }

      if (*a3 <= v16 || *v16 != 34)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_41:
  if (v8)
  {
    v29 = (v8 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v7 = v36;
    }

    v25 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_15AFFB4(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_15B1F3C(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
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

  v10 = *(a1 + 56);
  *v4 = 16;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_14:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 57);
    *v4 = 24;
    v4[1] = v11;
    v4 += 2;
  }

LABEL_17:
  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 34;
      v15 = *(v14 + 20);
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v4 + 1);
      }

      else
      {
        v16 = v4 + 2;
      }

      v4 = sub_15AF97C(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v20)
  {
    v22 = v20;
    memcpy(v4, v21, v20);
    v4 += v22;
    return v4;
  }

  return sub_1957130(a3, v21, v20, v4);
}

uint64_t sub_15B01D8(uint64_t a1)
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
      v7 = sub_15AFA7C(v6);
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v9 = sub_15B20A0(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += ((v8 >> 1) & 2) + (v8 & 2);
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

std::string *sub_15B02D0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15B6800(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[2].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v13 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v13 = *v13;
        }

        data = sub_15B234C(v13);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_27789A0;
      }

      result = sub_1581C8C(data, v14);
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
        v3[2].__r_.__value_.__s.__data_[9] = *(a2 + 57);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v3[2].__r_.__value_.__s.__data_[8] = *(a2 + 56);
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

uint64_t sub_15B0414(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

double sub_15B0488(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26F32B0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void *sub_15B0504(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F3330;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_15B0588(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F33B0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_15B062C(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15B06CC(uint64_t a1)
{
  sub_15B062C(a1);

  operator delete();
}

uint64_t sub_15B0704(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 24) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15B074C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v22 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v22, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v22 + 1);
    v7 = **v22;
    if (**v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v22 + 2);
      }
    }

    *v22 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v16 = v6 + 1;
        v15 = *v6;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          *v22 = sub_19587DC(v6, v15);
          if (!*v22)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v16 = v6 + 2;
LABEL_23:
          *v22 = v16;
        }

        if (v15 > 3)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v15;
        }

        continue;
      }

LABEL_12:
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
          return *v22;
        }

LABEL_38:
        *v22 = 0;
        return *v22;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = *v22;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_29;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v20 = sub_194DB04((a1 + 24), v19);
    v14 = sub_1958890(v20, *v22, a3);
LABEL_29:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  return *v22;
}

char *sub_15B090C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 16;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = v4[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = v4 + 2;
    }
  }

  else
  {
    v7 = v4;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v15)
  {
    v17 = v15;
    memcpy(v7, v16, v15);
    v7 += v17;
    return v7;
  }

  return sub_1957130(a3, v16, v15, v7);
}

uint64_t sub_15B0A58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  result = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v7 = *(a1 + 32);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

uint64_t sub_15B0AE4(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_15B0A58(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(a1 + 32);
    v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 10;
    }

    result = v4 + v5 + v8 + 2;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_15B0BD4(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (a1 != &off_2778930)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_15B176C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_15B687C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15B0CC8(uint64_t a1)
{
  sub_15B0BD4(a1);

  operator delete();
}

uint64_t sub_15B0D00(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15B0704(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v9 + 23) & 0x80000000) == 0)
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_15B0E08(*(v1 + 64));
    goto LABEL_10;
  }

  **v9 = 0;
  *(v9 + 8) = 0;
  if ((v5 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_15B0E08(uint64_t a1)
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

uint64_t sub_15B0E2C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v35, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v35 + 1);
    v8 = **v35;
    if (**v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v35 + 2);
      }
    }

    *v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_44;
        }

        *(a1 + 16) |= 1u;
        v28 = *(a1 + 8);
        v18 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v18 = *v18;
        }

        v19 = (a1 + 48);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_44;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = (a1 + 56);
      }

      v29 = sub_194DB04(v19, v18);
      v15 = sub_1958890(v29, *v35, a3);
      goto LABEL_51;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_44;
    }

    v5 |= 8u;
    LODWORD(v20) = *v7;
    if ((v20 & 0x80000000) == 0)
    {
      v21 = v7 + 1;
LABEL_56:
      *v35 = v21;
      *(a1 + 72) = v20;
      goto LABEL_52;
    }

    v20 = (v7[1] << 7) + v20 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v21 = v7 + 2;
      goto LABEL_56;
    }

    v33 = sub_19587DC(v7, v20);
    *v35 = v33;
    *(a1 + 72) = v34;
    if (!v33)
    {
      goto LABEL_62;
    }

LABEL_52:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 == 34)
    {
      v22 = v7 - 1;
      while (1)
      {
        v23 = v22 + 1;
        *v35 = v22 + 1;
        v24 = *(a1 + 40);
        if (v24 && (v25 = *(a1 + 32), v25 < *v24))
        {
          *(a1 + 32) = v25 + 1;
          v26 = *&v24[2 * v25 + 2];
        }

        else
        {
          v27 = sub_15B21A0(*(a1 + 24));
          v26 = sub_19593CC(a1 + 24, v27);
          v23 = *v35;
        }

        v22 = sub_222133C(a3, v26, v23);
        *v35 = v22;
        if (!v22)
        {
          goto LABEL_62;
        }

        if (*a3 <= v22 || *v22 != 34)
        {
          goto LABEL_52;
        }
      }
    }
  }

  else if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 4u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_15B22D4(v14);
      *(a1 + 64) = v12;
      v7 = *v35;
    }

    v15 = sub_22213CC(a3, v12, v7);
LABEL_51:
    *v35 = v15;
    if (!v15)
    {
      goto LABEL_62;
    }

    goto LABEL_52;
  }

LABEL_44:
  if (v8)
  {
    v30 = (v8 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v7 = *v35;
    }

    v15 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_51;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_62:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_15B112C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 8) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 72);
  *v4 = 24;
  v4[1] = v8;
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v9 = v8 >> 7;
    v4[2] = v8 >> 7;
    v7 = v4 + 3;
    if (v8 >= 0x4000)
    {
      LOBYTE(v10) = v4[2];
      do
      {
        *(v7 - 1) = v10 | 0x80;
        v10 = v9 >> 7;
        *v7++ = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_14:
  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *v7 = 34;
      v15 = *(v14 + 20);
      v7[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v7 + 1);
      }

      else
      {
        v16 = v7 + 2;
      }

      v7 = sub_15B090C(v14, v16, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 64);
    *v7 = 42;
    v18 = *(v17 + 20);
    v7[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v7 + 1);
    }

    else
    {
      v19 = v7 + 2;
    }

    v7 = sub_15B1A04(v17, v19, a3);
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v7;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  if (*a3 - v7 >= v23)
  {
    v25 = v23;
    memcpy(v7, v24, v23);
    v7 += v25;
    return v7;
  }

  return sub_1957130(a3, v24, v23, v7);
}

uint64_t sub_15B139C(uint64_t a1)
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
      v7 = sub_15B0AE4(v6);
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_26;
  }

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
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = sub_15B1BB4(*(a1 + 64));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v16 = *(a1 + 72);
  if (v16 < 0)
  {
    v17 = 11;
  }

  else
  {
    v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v17;
LABEL_26:
  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v2 += v21;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_15B154C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15B6984(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
      v11 = *(a2 + 48);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v13 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v13 = *v13;
      }

      result = sub_194EA1C(&v3[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v15 = v3->__r_.__value_.__l.__size_;
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
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
      LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_21:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v17 = v3[2].__r_.__value_.__r.__words[2];
    if (!v17)
    {
      v18 = v3->__r_.__value_.__l.__size_;
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_15B22D4(v19);
      v3[2].__r_.__value_.__r.__words[2] = v17;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = &off_2778980;
    }

    result = sub_128F8FC(v17, v20);
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

BOOL sub_15B16F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 40) + 8 * v1--);
    if ((~*(v2 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  return (*(a1 + 16) & 4) == 0 || (~*(*(a1 + 64) + 16) & 3) == 0;
}

void *sub_15B176C(void *a1)
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

void sub_15B17E0(void *a1)
{
  sub_15B176C(a1);

  operator delete();
}

char *sub_15B1818(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v23, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v23 + 1;
    v8 = *v23;
    if (*v23 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v23, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v23 + 2;
      }
    }

    v23 = v7;
    if (v8 >> 3 == 2)
    {
      if (v8 == 16)
      {
        v5 |= 2u;
        LODWORD(v15) = *v7;
        if ((v15 & 0x80000000) != 0)
        {
          v15 = (v7[1] << 7) + v15 - 128;
          if (v7[1] < 0)
          {
            v19 = sub_19587DC(v7, v15);
            v23 = v19;
            *(a1 + 28) = v20;
            if (!v19)
            {
              goto LABEL_40;
            }

            goto LABEL_31;
          }

          v16 = v7 + 2;
        }

        else
        {
          v16 = v7 + 1;
        }

        v23 = v16;
        *(a1 + 28) = v15;
        goto LABEL_31;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 8)
    {
      v5 |= 1u;
      LODWORD(v17) = *v7;
      if ((v17 & 0x80000000) != 0)
      {
        v17 = (v7[1] << 7) + v17 - 128;
        if (v7[1] < 0)
        {
          v21 = sub_19587DC(v7, v17);
          v23 = v21;
          *(a1 + 24) = v22;
          if (!v21)
          {
            goto LABEL_40;
          }

          goto LABEL_31;
        }

        v18 = v7 + 2;
      }

      else
      {
        v18 = v7 + 1;
      }

      v23 = v18;
      *(a1 + 24) = v17;
      goto LABEL_31;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v23;
    }

    v23 = sub_1952690(v8, v14, v7, a3);
    if (!v23)
    {
      goto LABEL_40;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v23, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_40:
  v23 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

char *sub_15B1A04(uint64_t a1, char *__dst, _DWORD *a3)
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

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v18)
  {
    v20 = v18;
    memcpy(v11, v19, v18);
    v11 += v20;
    return v11;
  }

  return sub_1957130(a3, v19, v18, v11);
}

uint64_t sub_15B1BB4(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_13695F4(a1);
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v3 = 12;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v5 = *(a1 + 28);
    if (v5 < 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    result = v3 + v6;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_15B1C80(uint64_t a1)
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
  sub_15B6900((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15B1D2C(uint64_t a1)
{
  sub_15B1C80(a1);

  operator delete();
}

uint64_t sub_15B1D64(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v25, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v25 + 1);
    v7 = **v25;
    if (**v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v25 + 2);
      }
    }

    *v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = sub_194DB04((a1 + 48), v16);
        v14 = sub_1958890(v17, *v25, a3);
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v18 = v6 - 1;
      while (1)
      {
        v19 = v18 + 1;
        *v25 = v18 + 1;
        v20 = *(a1 + 40);
        if (v20 && (v21 = *(a1 + 32), v21 < *v20))
        {
          *(a1 + 32) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          v23 = sub_15B2228(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = *v25;
        }

        v18 = sub_222145C(a3, v22, v19);
        *v25 = v18;
        if (!v18)
        {
          break;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_33;
        }
      }

LABEL_38:
      *v25 = 0;
      return *v25;
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
        return *v25;
      }

      goto LABEL_38;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_23:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_15B1F3C(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_15B112C(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    __dst = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_15B20A0(uint64_t a1)
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
      v7 = sub_15B139C(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_15B21A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F3430;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_15B2228(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F34B0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

void *sub_15B22D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F3530;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_15B234C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F35B0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void sub_15B472C(void *a1)
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
          sub_157A324(*v3);
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

void sub_15B47B0(void *a1)
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
          sub_157A780(*v3);
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

void sub_15B4834(void *a1)
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
          sub_157AC34(*v3);
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

std::string *sub_15B48B8(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_157B8A8(v9);
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
      result = sub_13120E8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_15B4934(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_157B92C(v9);
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
      result = sub_15B49B0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_15B49C0(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_157B9A8(v9);
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
      result = sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15B4A3C(void *a1)
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
          sub_157EB00(*v3);
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

void sub_15B4AC0(void *a1)
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
          sub_157F144(*v3);
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

void sub_15B4B44(void *a1)
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
          sub_157F96C(*v3);
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

void sub_15B4BC8(void *a1)
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
          sub_15AE830(*v3);
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

void sub_15B4C4C(void *a1)
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
          sub_15837D4(*v3);
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

void sub_15B4CD0(void *a1)
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
          sub_15878A8();
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

void sub_15B4D54(void *a1)
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
          sub_158E1B8(*v3);
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

void sub_15B4DD8(void *a1)
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
          sub_157DFC4(*v3);
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

void sub_15B4E5C(void *a1)
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
          sub_1579EC8(*v3);
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

void sub_15B4EE0(void *a1)
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
          sub_15AFB2C(*v3);
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

void sub_15B4F64(void *a1)
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
          sub_15AF0D4(*v3);
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

void sub_15B4FE8(void *a1)
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
          sub_157E494(*v3);
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

void sub_15B506C(void *a1)
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
          sub_157DAA0(*v3);
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

void sub_15B50F0(void *a1)
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
          sub_15943E0(*v3);
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

void sub_15B5174(void *a1)
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
          sub_1596C94(*v3);
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

void sub_15B51F8(void *a1)
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
          sub_1597670(*v3);
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

void sub_15B527C(void *a1)
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
          sub_1599CA8(*v3);
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

void sub_15B5300(void *a1)
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
          sub_1598564(*v3);
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

void sub_15B5384(void *a1)
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
          sub_159C470(*v3);
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

void sub_15B5408(void *a1)
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
          sub_159EA90(*v3);
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

void sub_15B548C(void *a1)
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
          sub_15B1C80(*v3);
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

void sub_15B5510(void *a1)
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
          sub_15A4BE4(*v3);
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

void sub_15B5594(void *a1)
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
          sub_140254C();
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

void sub_15B5618(void *a1)
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
          sub_15A53A8(*v3);
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

void sub_15B569C(void *a1)
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
          sub_15A5B0C(*v3);
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