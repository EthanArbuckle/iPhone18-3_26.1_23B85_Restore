uint64_t sub_128FDFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
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

void *sub_128FECC(void *a1)
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

void sub_128FF40(void *a1)
{
  sub_128FECC(a1);

  operator delete();
}

char *sub_128FF78(uint64_t a1, char *a2, int32x2_t *a3)
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
    LODWORD(v19) = *v7;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = v19 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v31 = v20;
      *(a1 + 32) = v19;
      goto LABEL_35;
    }

    v29 = sub_19587DC(v7, v19);
    v31 = v29;
    *(a1 + 32) = v30;
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
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v31 = v17;
      *(a1 + 28) = v16;
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v16);
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
    v23 = v7 + 1;
    LODWORD(v22) = *v7;
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v23;
    v22 = v22 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_34:
      v31 = v23;
      *(a1 + 24) = v22;
      goto LABEL_35;
    }

    v27 = sub_19587DC(v7, v22);
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

char *sub_12901B4(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          v11 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v15;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if (*a3 - v15 >= v22)
  {
    v24 = v22;
    memcpy(v15, v23, v22);
    v15 += v24;
    return v15;
  }

  return sub_1957130(a3, v23, v22, v15);
}

uint64_t sub_12903EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_19;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
  if ((v1 & 4) != 0)
  {
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
  }

LABEL_19:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_12904F0(void *a1)
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

void sub_1290564(void *a1)
{
  sub_12904F0(a1);

  operator delete();
}

char *sub_129059C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v144 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v144, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v144 + 1;
    v8 = *v144;
    if (*v144 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v144, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v144 + 2;
      }
    }

    v144 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_138;
        }

        v5 |= 1u;
        v11 = v7 + 1;
        v12 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v12 = v12 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v11 = v7 + 2;
LABEL_12:
          v144 = v11;
          *(a1 + 24) = v12;
          goto LABEL_145;
        }

        v116 = sub_1958770(v7, v12);
        v144 = v116;
        *(a1 + 24) = v117;
        if (v116)
        {
          goto LABEL_145;
        }

        goto LABEL_202;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_138;
        }

        v5 |= 2u;
        v50 = v7 + 1;
        v51 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        v52 = *v50;
        v51 = v51 + (v52 << 7) - 128;
        if (v52 < 0)
        {
          v118 = sub_1958770(v7, v51);
          v144 = v118;
          *(a1 + 28) = v119;
          if (!v118)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_77:
          v144 = v50;
          *(a1 + 28) = v51;
        }

        goto LABEL_145;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_138;
        }

        v5 |= 4u;
        v38 = v7 + 1;
        v39 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v40 = *v38;
        v39 = v39 + (v40 << 7) - 128;
        if (v40 < 0)
        {
          v108 = sub_1958770(v7, v39);
          v144 = v108;
          *(a1 + 32) = v109;
          if (!v108)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v38 = v7 + 2;
LABEL_57:
          v144 = v38;
          *(a1 + 32) = v39;
        }

        goto LABEL_145;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_138;
        }

        v5 |= 8u;
        v44 = v7 + 1;
        v45 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        v46 = *v44;
        v45 = v45 + (v46 << 7) - 128;
        if (v46 < 0)
        {
          v112 = sub_1958770(v7, v45);
          v144 = v112;
          *(a1 + 36) = v113;
          if (!v112)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v44 = v7 + 2;
LABEL_67:
          v144 = v44;
          *(a1 + 36) = v45;
        }

        goto LABEL_145;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_138;
        }

        v5 |= 0x10u;
        v23 = v7 + 1;
        v24 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if (v25 < 0)
        {
          v98 = sub_1958770(v7, v24);
          v144 = v98;
          *(a1 + 40) = v99;
          if (!v98)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_32:
          v144 = v23;
          *(a1 + 40) = v24;
        }

        goto LABEL_145;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_138;
        }

        v5 |= 0x20u;
        v59 = v7 + 1;
        v60 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        v61 = *v59;
        v60 = v60 + (v61 << 7) - 128;
        if (v61 < 0)
        {
          v124 = sub_1958770(v7, v60);
          v144 = v124;
          *(a1 + 44) = v125;
          if (!v124)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v59 = v7 + 2;
LABEL_92:
          v144 = v59;
          *(a1 + 44) = v60;
        }

        goto LABEL_145;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_138;
        }

        v5 |= 0x40u;
        v68 = v7 + 1;
        v69 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_107;
        }

        v70 = *v68;
        v69 = v69 + (v70 << 7) - 128;
        if (v70 < 0)
        {
          v130 = sub_1958770(v7, v69);
          v144 = v130;
          *(a1 + 48) = v131;
          if (!v130)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v68 = v7 + 2;
LABEL_107:
          v144 = v68;
          *(a1 + 48) = v69;
        }

        goto LABEL_145;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_138;
        }

        v5 |= 0x80u;
        v47 = v7 + 1;
        v48 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        v49 = *v47;
        v48 = v48 + (v49 << 7) - 128;
        if (v49 < 0)
        {
          v114 = sub_1958770(v7, v48);
          v144 = v114;
          *(a1 + 52) = v115;
          if (!v114)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v47 = v7 + 2;
LABEL_72:
          v144 = v47;
          *(a1 + 52) = v48;
        }

        goto LABEL_145;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_138;
        }

        v5 |= 0x100u;
        v77 = v7 + 1;
        v78 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_122;
        }

        v79 = *v77;
        v78 = v78 + (v79 << 7) - 128;
        if (v79 < 0)
        {
          v136 = sub_1958770(v7, v78);
          v144 = v136;
          *(a1 + 56) = v137;
          if (!v136)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v77 = v7 + 2;
LABEL_122:
          v144 = v77;
          *(a1 + 56) = v78;
        }

        goto LABEL_145;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_138;
        }

        v5 |= 0x200u;
        v29 = v7 + 1;
        v30 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v31 = *v29;
        v30 = v30 + (v31 << 7) - 128;
        if (v31 < 0)
        {
          v102 = sub_1958770(v7, v30);
          v144 = v102;
          *(a1 + 60) = v103;
          if (!v102)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_42:
          v144 = v29;
          *(a1 + 60) = v30;
        }

        goto LABEL_145;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_138;
        }

        v5 |= 0x400u;
        v74 = v7 + 1;
        v75 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_117;
        }

        v76 = *v74;
        v75 = v75 + (v76 << 7) - 128;
        if (v76 < 0)
        {
          v134 = sub_1958770(v7, v75);
          v144 = v134;
          *(a1 + 64) = v135;
          if (!v134)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v74 = v7 + 2;
LABEL_117:
          v144 = v74;
          *(a1 + 64) = v75;
        }

        goto LABEL_145;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_138;
        }

        v5 |= 0x800u;
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
          v96 = sub_1958770(v7, v21);
          v144 = v96;
          *(a1 + 68) = v97;
          if (!v96)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_27:
          v144 = v20;
          *(a1 + 68) = v21;
        }

        goto LABEL_145;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_138;
        }

        v5 |= 0x1000u;
        v26 = v7 + 1;
        v27 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v28 = *v26;
        v27 = v27 + (v28 << 7) - 128;
        if (v28 < 0)
        {
          v100 = sub_1958770(v7, v27);
          v144 = v100;
          *(a1 + 72) = v101;
          if (!v100)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_37:
          v144 = v26;
          *(a1 + 72) = v27;
        }

        goto LABEL_145;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_138;
        }

        v5 |= 0x2000u;
        v65 = v7 + 1;
        v66 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_102;
        }

        v67 = *v65;
        v66 = v66 + (v67 << 7) - 128;
        if (v67 < 0)
        {
          v128 = sub_1958770(v7, v66);
          v144 = v128;
          *(a1 + 76) = v129;
          if (!v128)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v65 = v7 + 2;
LABEL_102:
          v144 = v65;
          *(a1 + 76) = v66;
        }

        goto LABEL_145;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_138;
        }

        v5 |= 0x4000u;
        v17 = v7 + 1;
        v18 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v17;
        v18 = v18 + (v19 << 7) - 128;
        if (v19 < 0)
        {
          v94 = sub_1958770(v7, v18);
          v144 = v94;
          *(a1 + 80) = v95;
          if (!v94)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v17 = v7 + 2;
LABEL_22:
          v144 = v17;
          *(a1 + 80) = v18;
        }

        goto LABEL_145;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_138;
        }

        v5 |= 0x8000u;
        v41 = v7 + 1;
        v42 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        v43 = *v41;
        v42 = v42 + (v43 << 7) - 128;
        if (v43 < 0)
        {
          v110 = sub_1958770(v7, v42);
          v144 = v110;
          *(a1 + 84) = v111;
          if (!v110)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v41 = v7 + 2;
LABEL_62:
          v144 = v41;
          *(a1 + 84) = v42;
        }

        goto LABEL_145;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_138;
        }

        v5 |= 0x10000u;
        v14 = v7 + 1;
        v15 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v14;
        v15 = v15 + (v16 << 7) - 128;
        if (v16 < 0)
        {
          v92 = sub_1958770(v7, v15);
          v144 = v92;
          *(a1 + 88) = v93;
          if (!v92)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_17:
          v144 = v14;
          *(a1 + 88) = v15;
        }

        goto LABEL_145;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_138;
        }

        v5 |= 0x20000u;
        v53 = v7 + 1;
        v54 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

        v55 = *v53;
        v54 = v54 + (v55 << 7) - 128;
        if (v55 < 0)
        {
          v120 = sub_1958770(v7, v54);
          v144 = v120;
          *(a1 + 92) = v121;
          if (!v120)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v53 = v7 + 2;
LABEL_82:
          v144 = v53;
          *(a1 + 92) = v54;
        }

        goto LABEL_145;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_138;
        }

        v5 |= 0x40000u;
        v71 = v7 + 1;
        v72 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_112;
        }

        v73 = *v71;
        v72 = v72 + (v73 << 7) - 128;
        if (v73 < 0)
        {
          v132 = sub_1958770(v7, v72);
          v144 = v132;
          *(a1 + 96) = v133;
          if (!v132)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v71 = v7 + 2;
LABEL_112:
          v144 = v71;
          *(a1 + 96) = v72;
        }

        goto LABEL_145;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_138;
        }

        v5 |= 0x80000u;
        v83 = v7 + 1;
        v84 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_132;
        }

        v85 = *v83;
        v84 = v84 + (v85 << 7) - 128;
        if (v85 < 0)
        {
          v140 = sub_1958770(v7, v84);
          v144 = v140;
          *(a1 + 100) = v141;
          if (!v140)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v83 = v7 + 2;
LABEL_132:
          v144 = v83;
          *(a1 + 100) = v84;
        }

        goto LABEL_145;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_138;
        }

        v5 |= 0x100000u;
        v56 = v7 + 1;
        v57 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_87;
        }

        v58 = *v56;
        v57 = v57 + (v58 << 7) - 128;
        if (v58 < 0)
        {
          v122 = sub_1958770(v7, v57);
          v144 = v122;
          *(a1 + 104) = v123;
          if (!v122)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v56 = v7 + 2;
LABEL_87:
          v144 = v56;
          *(a1 + 104) = v57;
        }

        goto LABEL_145;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_138;
        }

        v5 |= 0x200000u;
        v62 = v7 + 1;
        v63 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_97;
        }

        v64 = *v62;
        v63 = v63 + (v64 << 7) - 128;
        if (v64 < 0)
        {
          v126 = sub_1958770(v7, v63);
          v144 = v126;
          *(a1 + 108) = v127;
          if (!v126)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v62 = v7 + 2;
LABEL_97:
          v144 = v62;
          *(a1 + 108) = v63;
        }

        goto LABEL_145;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_138;
        }

        v5 |= 0x400000u;
        v80 = v7 + 1;
        v81 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_127;
        }

        v82 = *v80;
        v81 = v81 + (v82 << 7) - 128;
        if (v82 < 0)
        {
          v138 = sub_1958770(v7, v81);
          v144 = v138;
          *(a1 + 112) = v139;
          if (!v138)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v80 = v7 + 2;
LABEL_127:
          v144 = v80;
          *(a1 + 112) = v81;
        }

        goto LABEL_145;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_138;
        }

        v5 |= 0x800000u;
        v86 = v7 + 1;
        v87 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_137;
        }

        v88 = *v86;
        v87 = v87 + (v88 << 7) - 128;
        if (v88 < 0)
        {
          v142 = sub_1958770(v7, v87);
          v144 = v142;
          *(a1 + 116) = v143;
          if (!v142)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v86 = v7 + 2;
LABEL_137:
          v144 = v86;
          *(a1 + 116) = v87;
        }

        goto LABEL_145;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_138;
        }

        v5 |= 0x1000000u;
        v35 = v7 + 1;
        v36 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v37 = *v35;
        v36 = v36 + (v37 << 7) - 128;
        if (v37 < 0)
        {
          v106 = sub_1958770(v7, v36);
          v144 = v106;
          *(a1 + 120) = v107;
          if (!v106)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v35 = v7 + 2;
LABEL_52:
          v144 = v35;
          *(a1 + 120) = v36;
        }

        goto LABEL_145;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_138;
        }

        v5 |= 0x2000000u;
        v32 = v7 + 1;
        v33 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v34 = *v32;
        v33 = v33 + (v34 << 7) - 128;
        if (v34 < 0)
        {
          v104 = sub_1958770(v7, v33);
          v144 = v104;
          *(a1 + 124) = v105;
          if (!v104)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_47:
          v144 = v32;
          *(a1 + 124) = v33;
        }

        goto LABEL_145;
      default:
LABEL_138:
        if (v8)
        {
          v89 = (v8 & 7) == 4;
        }

        else
        {
          v89 = 1;
        }

        if (!v89)
        {
          v90 = *(a1 + 8);
          if (v90)
          {
            v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v91 = sub_11F1920((a1 + 8));
            v7 = v144;
          }

          v144 = sub_1952690(v8, v91, v7, a3);
          if (!v144)
          {
            goto LABEL_202;
          }

LABEL_145:
          if (sub_195ADC0(a3, &v144, a3[11].i32[1]))
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
LABEL_202:
          v144 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v144;
    }
  }
}

char *sub_12910A8(uint64_t a1, char *__dst, _DWORD *a3)
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
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
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
      v15 = v11 + 2;
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
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
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
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 40);
    *v19 = 40;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          LODWORD(v19) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 44);
    *v24 = 48;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 48);
    *v28 = 56;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v33 - 1) = v28 | 0x80;
          LODWORD(v28) = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v28 + 2;
    }
  }

  else
  {
    v33 = v28;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 52);
    *v33 = 64;
    v33[1] = v38;
    if (v38 > 0x7F)
    {
      v33[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v33[2] = v38 >> 7;
      v37 = v33 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v40) = v33[2];
        do
        {
          *(v37 - 1) = v40 | 0x80;
          v40 = v39 >> 7;
          *v37++ = v39 >> 7;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v37 = v33 + 2;
    }
  }

  else
  {
    v37 = v33;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v43 = *(a1 + 56);
    *v37 = 72;
    v37[1] = v43;
    if (v43 > 0x7F)
    {
      v37[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v37[2] = v43 >> 7;
      v42 = v37 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v37) = v37[2];
        do
        {
          *(v42 - 1) = v37 | 0x80;
          LODWORD(v37) = v44 >> 7;
          *v42++ = v44 >> 7;
          v45 = v44 >> 14;
          v44 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v42 = v37 + 2;
    }
  }

  else
  {
    v42 = v37;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v47 = *(a1 + 60);
    *v42 = 80;
    v42[1] = v47;
    if (v47 > 0x7F)
    {
      v42[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v42[2] = v47 >> 7;
      v46 = v42 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v49) = v42[2];
        do
        {
          *(v46 - 1) = v49 | 0x80;
          v49 = v48 >> 7;
          *v46++ = v48 >> 7;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v46 = v42 + 2;
    }
  }

  else
  {
    v46 = v42;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v52 = *(a1 + 64);
    *v46 = 88;
    v46[1] = v52;
    if (v52 > 0x7F)
    {
      v46[1] = v52 | 0x80;
      v53 = v52 >> 7;
      v46[2] = v52 >> 7;
      v51 = v46 + 3;
      if (v52 >= 0x4000)
      {
        LOBYTE(v46) = v46[2];
        do
        {
          *(v51 - 1) = v46 | 0x80;
          LODWORD(v46) = v53 >> 7;
          *v51++ = v53 >> 7;
          v54 = v53 >> 14;
          v53 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v51 = v46 + 2;
    }
  }

  else
  {
    v51 = v46;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v56 = *(a1 + 68);
    *v51 = 96;
    v51[1] = v56;
    if (v56 > 0x7F)
    {
      v51[1] = v56 | 0x80;
      v57 = v56 >> 7;
      v51[2] = v56 >> 7;
      v55 = v51 + 3;
      if (v56 >= 0x4000)
      {
        LOBYTE(v58) = v51[2];
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
      v55 = v51 + 2;
    }
  }

  else
  {
    v55 = v51;
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v55)
    {
      v55 = sub_225EB68(a3, v55);
    }

    v61 = *(a1 + 72);
    *v55 = 104;
    v55[1] = v61;
    if (v61 > 0x7F)
    {
      v55[1] = v61 | 0x80;
      v62 = v61 >> 7;
      v55[2] = v61 >> 7;
      v60 = v55 + 3;
      if (v61 >= 0x4000)
      {
        LOBYTE(v55) = v55[2];
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
      v60 = v55 + 2;
    }
  }

  else
  {
    v60 = v55;
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v65 = *(a1 + 76);
    *v60 = 112;
    v60[1] = v65;
    if (v65 > 0x7F)
    {
      v60[1] = v65 | 0x80;
      v66 = v65 >> 7;
      v60[2] = v65 >> 7;
      v64 = v60 + 3;
      if (v65 >= 0x4000)
      {
        LOBYTE(v67) = v60[2];
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
      v64 = v60 + 2;
    }
  }

  else
  {
    v64 = v60;
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v70 = *(a1 + 80);
    *v64 = 120;
    v64[1] = v70;
    if (v70 > 0x7F)
    {
      v64[1] = v70 | 0x80;
      v71 = v70 >> 7;
      v64[2] = v70 >> 7;
      v69 = v64 + 3;
      if (v70 >= 0x4000)
      {
        LOBYTE(v64) = v64[2];
        do
        {
          *(v69 - 1) = v64 | 0x80;
          LODWORD(v64) = v71 >> 7;
          *v69++ = v71 >> 7;
          v72 = v71 >> 14;
          v71 >>= 7;
        }

        while (v72);
      }
    }

    else
    {
      v69 = v64 + 2;
    }
  }

  else
  {
    v69 = v64;
  }

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v74 = *(a1 + 84);
    *v69 = 384;
    v69[2] = v74;
    if (v74 > 0x7F)
    {
      v69[2] = v74 | 0x80;
      v75 = v74 >> 7;
      v69[3] = v74 >> 7;
      v73 = v69 + 4;
      if (v74 >= 0x4000)
      {
        LOBYTE(v76) = v69[3];
        do
        {
          *(v73 - 1) = v76 | 0x80;
          v76 = v75 >> 7;
          *v73++ = v75 >> 7;
          v77 = v75 >> 14;
          v75 >>= 7;
        }

        while (v77);
      }
    }

    else
    {
      v73 = v69 + 3;
    }
  }

  else
  {
    v73 = v69;
  }

  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v73)
    {
      v73 = sub_225EB68(a3, v73);
    }

    v79 = *(a1 + 88);
    *v73 = 392;
    v73[2] = v79;
    if (v79 > 0x7F)
    {
      v73[2] = v79 | 0x80;
      v80 = v79 >> 7;
      v73[3] = v79 >> 7;
      v78 = v73 + 4;
      if (v79 >= 0x4000)
      {
        LOBYTE(v73) = v73[3];
        do
        {
          *(v78 - 1) = v73 | 0x80;
          LODWORD(v73) = v80 >> 7;
          *v78++ = v80 >> 7;
          v81 = v80 >> 14;
          v80 >>= 7;
        }

        while (v81);
      }
    }

    else
    {
      v78 = v73 + 3;
    }
  }

  else
  {
    v78 = v73;
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v83 = *(a1 + 92);
    *v78 = 400;
    v78[2] = v83;
    if (v83 > 0x7F)
    {
      v78[2] = v83 | 0x80;
      v84 = v83 >> 7;
      v78[3] = v83 >> 7;
      v82 = v78 + 4;
      if (v83 >= 0x4000)
      {
        LOBYTE(v85) = v78[3];
        do
        {
          *(v82 - 1) = v85 | 0x80;
          v85 = v84 >> 7;
          *v82++ = v84 >> 7;
          v86 = v84 >> 14;
          v84 >>= 7;
        }

        while (v86);
      }
    }

    else
    {
      v82 = v78 + 3;
    }
  }

  else
  {
    v82 = v78;
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v82)
    {
      v82 = sub_225EB68(a3, v82);
    }

    v88 = *(a1 + 96);
    *v82 = 408;
    v82[2] = v88;
    if (v88 > 0x7F)
    {
      v82[2] = v88 | 0x80;
      v89 = v88 >> 7;
      v82[3] = v88 >> 7;
      v87 = v82 + 4;
      if (v88 >= 0x4000)
      {
        LOBYTE(v82) = v82[3];
        do
        {
          *(v87 - 1) = v82 | 0x80;
          LODWORD(v82) = v89 >> 7;
          *v87++ = v89 >> 7;
          v90 = v89 >> 14;
          v89 >>= 7;
        }

        while (v90);
      }
    }

    else
    {
      v87 = v82 + 3;
    }
  }

  else
  {
    v87 = v82;
  }

  if ((v5 & 0x80000) != 0)
  {
    if (*a3 <= v87)
    {
      v87 = sub_225EB68(a3, v87);
    }

    v92 = *(a1 + 100);
    *v87 = 416;
    v87[2] = v92;
    if (v92 > 0x7F)
    {
      v87[2] = v92 | 0x80;
      v93 = v92 >> 7;
      v87[3] = v92 >> 7;
      v91 = v87 + 4;
      if (v92 >= 0x4000)
      {
        LOBYTE(v94) = v87[3];
        do
        {
          *(v91 - 1) = v94 | 0x80;
          v94 = v93 >> 7;
          *v91++ = v93 >> 7;
          v95 = v93 >> 14;
          v93 >>= 7;
        }

        while (v95);
      }
    }

    else
    {
      v91 = v87 + 3;
    }
  }

  else
  {
    v91 = v87;
  }

  if ((v5 & 0x100000) != 0)
  {
    if (*a3 <= v91)
    {
      v91 = sub_225EB68(a3, v91);
    }

    v97 = *(a1 + 104);
    *v91 = 424;
    v91[2] = v97;
    if (v97 > 0x7F)
    {
      v91[2] = v97 | 0x80;
      v98 = v97 >> 7;
      v91[3] = v97 >> 7;
      v96 = v91 + 4;
      if (v97 >= 0x4000)
      {
        LOBYTE(v91) = v91[3];
        do
        {
          *(v96 - 1) = v91 | 0x80;
          LODWORD(v91) = v98 >> 7;
          *v96++ = v98 >> 7;
          v99 = v98 >> 14;
          v98 >>= 7;
        }

        while (v99);
      }
    }

    else
    {
      v96 = v91 + 3;
    }
  }

  else
  {
    v96 = v91;
  }

  if ((v5 & 0x200000) != 0)
  {
    if (*a3 <= v96)
    {
      v96 = sub_225EB68(a3, v96);
    }

    v101 = *(a1 + 108);
    *v96 = 432;
    v96[2] = v101;
    if (v101 > 0x7F)
    {
      v96[2] = v101 | 0x80;
      v102 = v101 >> 7;
      v96[3] = v101 >> 7;
      v100 = v96 + 4;
      if (v101 >= 0x4000)
      {
        LOBYTE(v103) = v96[3];
        do
        {
          *(v100 - 1) = v103 | 0x80;
          v103 = v102 >> 7;
          *v100++ = v102 >> 7;
          v104 = v102 >> 14;
          v102 >>= 7;
        }

        while (v104);
      }
    }

    else
    {
      v100 = v96 + 3;
    }
  }

  else
  {
    v100 = v96;
  }

  if ((v5 & 0x400000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v106 = *(a1 + 112);
    *v100 = 440;
    v100[2] = v106;
    if (v106 > 0x7F)
    {
      v100[2] = v106 | 0x80;
      v107 = v106 >> 7;
      v100[3] = v106 >> 7;
      v105 = v100 + 4;
      if (v106 >= 0x4000)
      {
        LOBYTE(v100) = v100[3];
        do
        {
          *(v105 - 1) = v100 | 0x80;
          LODWORD(v100) = v107 >> 7;
          *v105++ = v107 >> 7;
          v108 = v107 >> 14;
          v107 >>= 7;
        }

        while (v108);
      }
    }

    else
    {
      v105 = v100 + 3;
    }
  }

  else
  {
    v105 = v100;
  }

  if ((v5 & 0x800000) != 0)
  {
    if (*a3 <= v105)
    {
      v105 = sub_225EB68(a3, v105);
    }

    v110 = *(a1 + 116);
    *v105 = 448;
    v105[2] = v110;
    if (v110 > 0x7F)
    {
      v105[2] = v110 | 0x80;
      v111 = v110 >> 7;
      v105[3] = v110 >> 7;
      v109 = v105 + 4;
      if (v110 >= 0x4000)
      {
        LOBYTE(v112) = v105[3];
        do
        {
          *(v109 - 1) = v112 | 0x80;
          v112 = v111 >> 7;
          *v109++ = v111 >> 7;
          v113 = v111 >> 14;
          v111 >>= 7;
        }

        while (v113);
      }
    }

    else
    {
      v109 = v105 + 3;
    }
  }

  else
  {
    v109 = v105;
  }

  if ((v5 & 0x1000000) != 0)
  {
    if (*a3 <= v109)
    {
      v109 = sub_225EB68(a3, v109);
    }

    v115 = *(a1 + 120);
    *v109 = 456;
    v109[2] = v115;
    if (v115 > 0x7F)
    {
      v109[2] = v115 | 0x80;
      v116 = v115 >> 7;
      v109[3] = v115 >> 7;
      v114 = v109 + 4;
      if (v115 >= 0x4000)
      {
        LOBYTE(v109) = v109[3];
        do
        {
          *(v114 - 1) = v109 | 0x80;
          LODWORD(v109) = v116 >> 7;
          *v114++ = v116 >> 7;
          v117 = v116 >> 14;
          v116 >>= 7;
        }

        while (v117);
      }
    }

    else
    {
      v114 = v109 + 3;
    }
  }

  else
  {
    v114 = v109;
  }

  if ((v5 & 0x2000000) != 0)
  {
    if (*a3 <= v114)
    {
      v114 = sub_225EB68(a3, v114);
    }

    v119 = *(a1 + 124);
    *v114 = 464;
    v114[2] = v119;
    if (v119 > 0x7F)
    {
      v114[2] = v119 | 0x80;
      v120 = v119 >> 7;
      v114[3] = v119 >> 7;
      v118 = v114 + 4;
      if (v119 >= 0x4000)
      {
        LOBYTE(v121) = v114[3];
        do
        {
          *(v118 - 1) = v121 | 0x80;
          v121 = v120 >> 7;
          *v118++ = v120 >> 7;
          v122 = v120 >> 14;
          v120 >>= 7;
        }

        while (v122);
      }
    }

    else
    {
      v118 = v114 + 3;
    }
  }

  else
  {
    v118 = v114;
  }

  v123 = *(a1 + 8);
  if ((v123 & 1) == 0)
  {
    return v118;
  }

  v125 = v123 & 0xFFFFFFFFFFFFFFFCLL;
  v126 = *(v125 + 31);
  if (v126 < 0)
  {
    v127 = *(v125 + 8);
    v126 = *(v125 + 16);
  }

  else
  {
    v127 = (v125 + 8);
  }

  if (*a3 - v118 >= v126)
  {
    v128 = v126;
    memcpy(v118, v127, v126);
    v118 += v128;
    return v118;
  }

  return sub_1957130(a3, v127, v126, v118);
}

uint64_t sub_1291EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_15;
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
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_12:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_13:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_46:
  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v1 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v1 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x200) == 0)
    {
LABEL_18:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_50;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x400) == 0)
  {
LABEL_19:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x800) == 0)
  {
LABEL_20:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x1000) == 0)
  {
LABEL_21:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x2000) == 0)
  {
LABEL_22:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  v2 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x4000) == 0)
  {
LABEL_23:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_54:
  v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x8000) != 0)
  {
LABEL_24:
    v2 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v1 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v1 & 0x10000) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v1 & 0x20000) == 0)
    {
LABEL_28:
      if ((v1 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_58;
    }
  }

  else if ((v1 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v2 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x40000) == 0)
  {
LABEL_29:
    if ((v1 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  v2 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x80000) == 0)
  {
LABEL_30:
    if ((v1 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  v2 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x100000) == 0)
  {
LABEL_31:
    if ((v1 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  v2 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x200000) == 0)
  {
LABEL_32:
    if ((v1 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  v2 += ((9 * (__clz(*(a1 + 108) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x400000) == 0)
  {
LABEL_33:
    if ((v1 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_62:
  v2 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x800000) != 0)
  {
LABEL_34:
    v2 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if ((v1 & 0x3000000) != 0)
  {
    if ((v1 & 0x1000000) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v1 & 0x2000000) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 124) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
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

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_12923CC(uint64_t a1)
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

void sub_129246C(uint64_t a1)
{
  sub_12923CC(a1);

  operator delete();
}

uint64_t sub_12924A4(uint64_t a1)
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

  if ((v1 & 6) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
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

uint64_t sub_12924F8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v30, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v30 + 1);
    v8 = **v30;
    if (**v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v30 + 2);
      }
    }

    *v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v21 = v7 + 1;
      LODWORD(v20) = *v7;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_30;
      }

      v22 = *v21;
      v20 = v20 + (v22 << 7) - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_30:
        *v30 = v21;
        *(a1 + 40) = v20;
        goto LABEL_35;
      }

      v28 = sub_19587DC(v7, v20);
      *v30 = v28;
      *(a1 + 40) = v29;
      if (!v28)
      {
        goto LABEL_44;
      }

      goto LABEL_35;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_34:
      *v30 = v24;
      *(a1 + 32) = v23;
      goto LABEL_35;
    }

    v26 = sub_19587DC(v7, v23);
    *v30 = v26;
    *(a1 + 32) = v27;
    if (!v26)
    {
      goto LABEL_44;
    }

LABEL_35:
    if (sub_195ADC0(a3, v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = sub_194DB04((a1 + 24), v18);
    v16 = sub_1958890(v19, *v30, a3);
LABEL_24:
    *v30 = v16;
    if (!v16)
    {
      goto LABEL_44;
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
      v7 = *v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_24;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_44:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_1292724(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 40);
    *v6 = 24;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v14) = v6[2];
        do
        {
          *(v11 - 1) = v14 | 0x80;
          v14 = v13 >> 7;
          *v11++ = v13 >> 7;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
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

uint64_t sub_12928F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_15;
  }

  if (v1)
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 4) != 0)
  {
    v6 = *(a1 + 40);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
  }

LABEL_15:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_12929D8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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
LABEL_6:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1292AC0(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956ABC(a1 + 48);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1292B88(uint64_t a1)
{
  sub_1292AC0(a1);

  operator delete();
}

uint64_t sub_1292BC0(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v1 & 0x3C) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1292C54(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v41, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v41 + 1);
    v8 = **v41;
    if (**v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v41 + 2);
      }
    }

    *v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v8 >> 3 > 6)
      {
        if (v11 == 7)
        {
          if (v8 != 56)
          {
            goto LABEL_65;
          }

          v5 |= 0x10u;
          v28 = v7 + 1;
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if ((v29 & 0x80000000) == 0)
          {
            v28 = v7 + 2;
LABEL_50:
            *v41 = v28;
            *(a1 + 100) = v27 != 0;
            goto LABEL_73;
          }

          v32 = sub_19587DC(v7, v27);
          *v41 = v32;
          *(a1 + 100) = v33 != 0;
          if (!v32)
          {
            goto LABEL_78;
          }
        }

        else
        {
          if (v11 != 8 || v8 != 64)
          {
            goto LABEL_65;
          }

          v5 |= 0x20u;
          v20 = v7 + 1;
          LODWORD(v19) = *v7;
          if ((v19 & 0x80) == 0)
          {
            goto LABEL_33;
          }

          v21 = *v20;
          v19 = v19 + (v21 << 7) - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = v7 + 2;
LABEL_33:
            *v41 = v20;
            *(a1 + 104) = v19;
            goto LABEL_73;
          }

          v36 = sub_19587DC(v7, v19);
          *v41 = v36;
          *(a1 + 104) = v37;
          if (!v36)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        if (v11 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 2u;
            v25 = *(a1 + 8);
            v17 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v25)
            {
              v17 = *v17;
            }

            v18 = (a1 + 80);
LABEL_43:
            v26 = sub_194DB04(v18, v17);
            v12 = sub_1958890(v26, *v41, a3);
LABEL_72:
            *v41 = v12;
            if (!v12)
            {
              goto LABEL_78;
            }

            goto LABEL_73;
          }

          goto LABEL_65;
        }

        if (v11 != 6 || v8 != 48)
        {
          goto LABEL_65;
        }

        v5 |= 8u;
        v14 = v7 + 1;
        LODWORD(v13) = *v7;
        if ((v13 & 0x80) == 0)
        {
          goto LABEL_20;
        }

        v15 = *v14;
        v13 = v13 + (v15 << 7) - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = v7 + 2;
LABEL_20:
          *v41 = v14;
          *(a1 + 96) = v13;
          goto LABEL_73;
        }

        v34 = sub_19587DC(v7, v13);
        *v41 = v34;
        *(a1 + 96) = v35;
        if (!v34)
        {
          goto LABEL_78;
        }
      }

      goto LABEL_73;
    }

    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 != 2)
      {
        goto LABEL_65;
      }

      if (v8 == 18)
      {
        v12 = sub_1958928((a1 + 24), v7, a3);
        goto LABEL_72;
      }

      if (v8 != 16)
      {
        goto LABEL_65;
      }

      v42 = sub_128A7C8(v41);
      sub_1950044((a1 + 24), &v42);
LABEL_63:
      if (!*v41)
      {
        goto LABEL_78;
      }

      goto LABEL_73;
    }

    if (v8 != 8)
    {
      goto LABEL_65;
    }

    v5 |= 4u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_38:
      *v41 = v23;
      *(a1 + 88) = v22;
      goto LABEL_73;
    }

    v30 = sub_19587DC(v7, v22);
    *v41 = v30;
    *(a1 + 88) = v31;
    if (!v30)
    {
      goto LABEL_78;
    }

LABEL_73:
    if (sub_195ADC0(a3, v41, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4 && v8 == 34)
    {
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v18 = (a1 + 72);
      goto LABEL_43;
    }

    goto LABEL_65;
  }

  if (v8 == 26)
  {
    v12 = sub_1958908((a1 + 48), v7, a3);
    goto LABEL_72;
  }

  if (v8 == 24)
  {
    LODWORD(v42) = sub_128A7C8(v41);
    sub_194FE98((a1 + 48), &v42);
    goto LABEL_63;
  }

LABEL_65:
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
    v39 = *(a1 + 8);
    if (v39)
    {
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v40 = sub_11F1920((a1 + 8));
      v7 = *v41;
    }

    v12 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_72;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_78:
  *v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v41;
}

char *sub_129304C(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 88);
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

  v11 = *(a1 + 40);
  if (v11 >= 1)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    *v6 = 18;
    v12 = v6 + 1;
    if (v11 >= 0x80)
    {
      do
      {
        *v12++ = v11 | 0x80;
        v47 = v11 >> 14;
        v11 >>= 7;
      }

      while (v47);
      v6 = v12 - 1;
    }

    v13 = v6 + 2;
    *v12 = v11;
    v14 = *(a1 + 32);
    v15 = &v14[*(a1 + 24)];
    do
    {
      if (*a3 <= v13)
      {
        v13 = sub_225EB68(a3, v13);
      }

      v17 = *v14++;
      v16 = v17;
      *v13 = v17;
      if (v17 > 0x7F)
      {
        *v13 = v16 | 0x80;
        v18 = v16 >> 7;
        v13[1] = v16 >> 7;
        v6 = v13 + 2;
        if (v16 >= 0x4000)
        {
          LOBYTE(v19) = v13[1];
          do
          {
            *(v6 - 1) = v19 | 0x80;
            v19 = v18 >> 7;
            *v6++ = v18 >> 7;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
        }
      }

      else
      {
        v6 = v13 + 1;
      }

      v13 = v6;
    }

    while (v14 < v15);
  }

  v21 = *(a1 + 64);
  if (v21 >= 1)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    *v6 = 26;
    v22 = v6 + 1;
    if (v21 >= 0x80)
    {
      do
      {
        *v22++ = v21 | 0x80;
        v48 = v21 >> 14;
        v21 >>= 7;
      }

      while (v48);
      v6 = v22 - 1;
    }

    v23 = v6 + 2;
    *v22 = v21;
    v24 = *(a1 + 56);
    v25 = &v24[*(a1 + 48)];
    do
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v27 = *v24++;
      v26 = v27;
      *v23 = v27;
      if (v27 > 0x7F)
      {
        *v23 = v26 | 0x80;
        v28 = v26 >> 7;
        v23[1] = v26 >> 7;
        v6 = v23 + 2;
        if (v26 >= 0x4000)
        {
          LOBYTE(v29) = v23[1];
          do
          {
            *(v6 - 1) = v29 | 0x80;
            v29 = v28 >> 7;
            *v6++ = v28 >> 7;
            v30 = v28 >> 14;
            v28 >>= 7;
          }

          while (v30);
        }
      }

      else
      {
        v6 = v23 + 1;
      }

      v23 = v6;
    }

    while (v24 < v25);
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v6 = sub_128AEEC(a3, 5, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_42;
  }

  v6 = sub_128AEEC(a3, 4, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  if ((v5 & 8) == 0)
  {
LABEL_39:
    v31 = v6;
    goto LABEL_49;
  }

LABEL_42:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v32 = *(a1 + 96);
  *v6 = 48;
  v6[1] = v32;
  if (v32 > 0x7F)
  {
    v6[1] = v32 | 0x80;
    v33 = v32 >> 7;
    v6[2] = v32 >> 7;
    v31 = v6 + 3;
    if (v32 >= 0x4000)
    {
      LOBYTE(v34) = v6[2];
      do
      {
        *(v31 - 1) = v34 | 0x80;
        v34 = v33 >> 7;
        *v31++ = v33 >> 7;
        v35 = v33 >> 14;
        v33 >>= 7;
      }

      while (v35);
    }
  }

  else
  {
    v31 = v6 + 2;
  }

LABEL_49:
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v36 = *(a1 + 100);
    *v31 = 56;
    v31[1] = v36;
    v31 += 2;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v38 = *(a1 + 104);
    *v31 = 64;
    v31[1] = v38;
    if (v38 > 0x7F)
    {
      v31[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v31[2] = v38 >> 7;
      v37 = v31 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v40) = v31[2];
        do
        {
          *(v37 - 1) = v40 | 0x80;
          v40 = v39 >> 7;
          *v37++ = v39 >> 7;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v37 = v31 + 2;
    }
  }

  else
  {
    v37 = v31;
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v37;
  }

  v44 = v42 & 0xFFFFFFFFFFFFFFFCLL;
  v45 = *(v44 + 31);
  if (v45 < 0)
  {
    v46 = *(v44 + 8);
    v45 = *(v44 + 16);
  }

  else
  {
    v46 = (v44 + 8);
  }

  if (*a3 - v37 >= v45)
  {
    v49 = v45;
    memcpy(v37, v46, v45);
    v37 += v49;
    return v37;
  }

  return sub_1957130(a3, v46, v45, v37);
}

uint64_t sub_12934E0(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 40) = v3;
  v5 = v4 + v2;
  v6 = sub_1959E04((a1 + 48));
  if (v6)
  {
    v7 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v8;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 64) = v7;
  result = v5 + v6;
  v10 = *(a1 + 16);
  if ((v10 & 0x3F) == 0)
  {
    goto LABEL_34;
  }

  if (v10)
  {
    v11 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_15:
      if ((v10 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  result += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_16:
    if ((v10 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_24:
  result += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_25:
  v17 = *(a1 + 96);
  if (v17 < 0)
  {
    v18 = 11;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v18;
LABEL_29:
  result += (v10 >> 3) & 2;
  if ((v10 & 0x20) != 0)
  {
    v19 = *(a1 + 104);
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v19 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 11;
    }

    result += v21;
  }

LABEL_34:
  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    result += v24;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_12936FC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1959094(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 8 * data_low), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[2], v9 + v8);
    v10 = v3[2].__r_.__value_.__l.__size_;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((v10 + 4 * v9), *(a2 + 56), 4 * *(a2 + 48));
  }

  v11 = *(a2 + 16);
  if ((v11 & 0x3F) != 0)
  {
    if (v11)
    {
      v13 = *(a2 + 72);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v14 = v3->__r_.__value_.__l.__size_;
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      result = sub_194EA1C(&v3[3], (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v11 & 2) == 0)
      {
LABEL_8:
        if ((v11 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_24;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_8;
    }

    v16 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v17 = v3->__r_.__value_.__l.__size_;
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
    if ((v11 & 4) == 0)
    {
LABEL_9:
      if ((v11 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_24:
    v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    if ((v11 & 8) == 0)
    {
LABEL_10:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_25:
    LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
    if ((v11 & 0x10) == 0)
    {
LABEL_11:
      if ((v11 & 0x20) == 0)
      {
LABEL_13:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v11;
        goto LABEL_14;
      }

LABEL_12:
      LODWORD(v3[4].__r_.__value_.__r.__words[1]) = *(a2 + 104);
      goto LABEL_13;
    }

LABEL_26:
    v3[4].__r_.__value_.__s.__data_[4] = *(a2 + 100);
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12938C4(void *a1)
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

void sub_1293938(void *a1)
{
  sub_12938C4(a1);

  operator delete();
}

char *sub_1293970(uint64_t a1, char *a2, int32x2_t *a3)
{
  v99 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v99, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v99 + 1;
    v8 = *v99;
    if (*v99 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v99, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v99 + 2;
      }
    }

    v99 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_93;
        }

        v5 |= 1u;
        v11 = v7 + 1;
        v12 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v12 = v12 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v11 = v7 + 2;
LABEL_12:
          v99 = v11;
          *(a1 + 24) = v12;
          goto LABEL_100;
        }

        v81 = sub_1958770(v7, v12);
        v99 = v81;
        *(a1 + 24) = v82;
        if (v81)
        {
          goto LABEL_100;
        }

        goto LABEL_139;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_93;
        }

        v5 |= 2u;
        v26 = v7 + 1;
        v27 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v28 = *v26;
        v27 = v27 + (v28 << 7) - 128;
        if (v28 < 0)
        {
          v73 = sub_1958770(v7, v27);
          v99 = v73;
          *(a1 + 28) = v74;
          if (!v73)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_37:
          v99 = v26;
          *(a1 + 28) = v27;
        }

        goto LABEL_100;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_93;
        }

        v5 |= 4u;
        v38 = v7 + 1;
        v39 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v40 = *v38;
        v39 = v39 + (v40 << 7) - 128;
        if (v40 < 0)
        {
          v83 = sub_1958770(v7, v39);
          v99 = v83;
          *(a1 + 32) = v84;
          if (!v83)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v38 = v7 + 2;
LABEL_57:
          v99 = v38;
          *(a1 + 32) = v39;
        }

        goto LABEL_100;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_93;
        }

        v5 |= 8u;
        v35 = v7 + 1;
        v36 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v37 = *v35;
        v36 = v36 + (v37 << 7) - 128;
        if (v37 < 0)
        {
          v79 = sub_1958770(v7, v36);
          v99 = v79;
          *(a1 + 36) = v80;
          if (!v79)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v35 = v7 + 2;
LABEL_52:
          v99 = v35;
          *(a1 + 36) = v36;
        }

        goto LABEL_100;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_93;
        }

        v5 |= 0x10u;
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
          v69 = sub_1958770(v7, v21);
          v99 = v69;
          *(a1 + 40) = v70;
          if (!v69)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_27:
          v99 = v20;
          *(a1 + 40) = v21;
        }

        goto LABEL_100;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_93;
        }

        v5 |= 0x20u;
        v29 = v7 + 1;
        v30 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v31 = *v29;
        v30 = v30 + (v31 << 7) - 128;
        if (v31 < 0)
        {
          v75 = sub_1958770(v7, v30);
          v99 = v75;
          *(a1 + 44) = v76;
          if (!v75)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_42:
          v99 = v29;
          *(a1 + 44) = v30;
        }

        goto LABEL_100;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_93;
        }

        v5 |= 0x40u;
        v41 = v7 + 1;
        v42 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        v43 = *v41;
        v42 = v42 + (v43 << 7) - 128;
        if (v43 < 0)
        {
          v85 = sub_1958770(v7, v42);
          v99 = v85;
          *(a1 + 48) = v86;
          if (!v85)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v41 = v7 + 2;
LABEL_62:
          v99 = v41;
          *(a1 + 48) = v42;
        }

        goto LABEL_100;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_93;
        }

        v5 |= 0x80u;
        v44 = v7 + 1;
        v45 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        v46 = *v44;
        v45 = v45 + (v46 << 7) - 128;
        if (v46 < 0)
        {
          v87 = sub_1958770(v7, v45);
          v99 = v87;
          *(a1 + 52) = v88;
          if (!v87)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v44 = v7 + 2;
LABEL_67:
          v99 = v44;
          *(a1 + 52) = v45;
        }

        goto LABEL_100;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_93;
        }

        v5 |= 0x100u;
        v56 = v7 + 1;
        v57 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_87;
        }

        v58 = *v56;
        v57 = v57 + (v58 << 7) - 128;
        if (v58 < 0)
        {
          v95 = sub_1958770(v7, v57);
          v99 = v95;
          *(a1 + 56) = v96;
          if (!v95)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v56 = v7 + 2;
LABEL_87:
          v99 = v56;
          *(a1 + 56) = v57;
        }

        goto LABEL_100;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_93;
        }

        v5 |= 0x200u;
        v53 = v7 + 1;
        v54 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

        v55 = *v53;
        v54 = v54 + (v55 << 7) - 128;
        if (v55 < 0)
        {
          v93 = sub_1958770(v7, v54);
          v99 = v93;
          *(a1 + 60) = v94;
          if (!v93)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v53 = v7 + 2;
LABEL_82:
          v99 = v53;
          *(a1 + 60) = v54;
        }

        goto LABEL_100;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_93;
        }

        v5 |= 0x800u;
        v17 = v7 + 1;
        v18 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v17;
        v18 = v18 + (v19 << 7) - 128;
        if (v19 < 0)
        {
          v67 = sub_1958770(v7, v18);
          v99 = v67;
          *(a1 + 68) = v68;
          if (!v67)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v17 = v7 + 2;
LABEL_22:
          v99 = v17;
          *(a1 + 68) = v18;
        }

        goto LABEL_100;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_93;
        }

        v5 |= 0x1000u;
        v32 = v7 + 1;
        v33 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v34 = *v32;
        v33 = v33 + (v34 << 7) - 128;
        if (v34 < 0)
        {
          v77 = sub_1958770(v7, v33);
          v99 = v77;
          *(a1 + 72) = v78;
          if (!v77)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_47:
          v99 = v32;
          *(a1 + 72) = v33;
        }

        goto LABEL_100;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_93;
        }

        v5 |= 0x2000u;
        v23 = v7 + 1;
        v24 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if (v25 < 0)
        {
          v71 = sub_1958770(v7, v24);
          v99 = v71;
          *(a1 + 76) = v72;
          if (!v71)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_32:
          v99 = v23;
          *(a1 + 76) = v24;
        }

        goto LABEL_100;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_93;
        }

        v5 |= 0x4000u;
        v14 = v7 + 1;
        v15 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v14;
        v15 = v15 + (v16 << 7) - 128;
        if (v16 < 0)
        {
          v65 = sub_1958770(v7, v15);
          v99 = v65;
          *(a1 + 80) = v66;
          if (!v65)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_17:
          v99 = v14;
          *(a1 + 80) = v15;
        }

        goto LABEL_100;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_93;
        }

        v5 |= 0x8000u;
        v47 = v7 + 1;
        v48 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        v49 = *v47;
        v48 = v48 + (v49 << 7) - 128;
        if (v49 < 0)
        {
          v89 = sub_1958770(v7, v48);
          v99 = v89;
          *(a1 + 84) = v90;
          if (!v89)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v47 = v7 + 2;
LABEL_72:
          v99 = v47;
          *(a1 + 84) = v48;
        }

        goto LABEL_100;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_93;
        }

        v5 |= 0x10000u;
        v50 = v7 + 1;
        v51 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        v52 = *v50;
        v51 = v51 + (v52 << 7) - 128;
        if (v52 < 0)
        {
          v91 = sub_1958770(v7, v51);
          v99 = v91;
          *(a1 + 88) = v92;
          if (!v91)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_77:
          v99 = v50;
          *(a1 + 88) = v51;
        }

        goto LABEL_100;
      case 0x1Bu:
        if (v8 != 216)
        {
          goto LABEL_93;
        }

        v5 |= 0x400u;
        v59 = v7 + 1;
        v60 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        v61 = *v59;
        v60 = v60 + (v61 << 7) - 128;
        if (v61 < 0)
        {
          v97 = sub_1958770(v7, v60);
          v99 = v97;
          *(a1 + 64) = v98;
          if (!v97)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v59 = v7 + 2;
LABEL_92:
          v99 = v59;
          *(a1 + 64) = v60;
        }

        goto LABEL_100;
      default:
LABEL_93:
        if (v8)
        {
          v62 = (v8 & 7) == 4;
        }

        else
        {
          v62 = 1;
        }

        if (!v62)
        {
          v63 = *(a1 + 8);
          if (v63)
          {
            v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v64 = sub_11F1920((a1 + 8));
            v7 = v99;
          }

          v99 = sub_1952690(v8, v64, v7, a3);
          if (!v99)
          {
            goto LABEL_139;
          }

LABEL_100:
          if (sub_195ADC0(a3, &v99, a3[11].i32[1]))
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
LABEL_139:
          v99 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v99;
    }
  }
}

char *sub_1294144(uint64_t a1, char *__dst, _DWORD *a3)
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
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
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
      v15 = v11 + 2;
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
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
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
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 40);
    *v19 = 40;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          LODWORD(v19) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 44);
    *v24 = 48;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 48);
    *v28 = 56;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v33 - 1) = v28 | 0x80;
          LODWORD(v28) = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v28 + 2;
    }
  }

  else
  {
    v33 = v28;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 52);
    *v33 = 64;
    v33[1] = v38;
    if (v38 > 0x7F)
    {
      v33[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v33[2] = v38 >> 7;
      v37 = v33 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v40) = v33[2];
        do
        {
          *(v37 - 1) = v40 | 0x80;
          v40 = v39 >> 7;
          *v37++ = v39 >> 7;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v37 = v33 + 2;
    }
  }

  else
  {
    v37 = v33;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v43 = *(a1 + 56);
    *v37 = 72;
    v37[1] = v43;
    if (v43 > 0x7F)
    {
      v37[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v37[2] = v43 >> 7;
      v42 = v37 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v37) = v37[2];
        do
        {
          *(v42 - 1) = v37 | 0x80;
          LODWORD(v37) = v44 >> 7;
          *v42++ = v44 >> 7;
          v45 = v44 >> 14;
          v44 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v42 = v37 + 2;
    }
  }

  else
  {
    v42 = v37;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v47 = *(a1 + 60);
    *v42 = 80;
    v42[1] = v47;
    if (v47 > 0x7F)
    {
      v42[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v42[2] = v47 >> 7;
      v46 = v42 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v49) = v42[2];
        do
        {
          *(v46 - 1) = v49 | 0x80;
          v49 = v48 >> 7;
          *v46++ = v48 >> 7;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v46 = v42 + 2;
    }
  }

  else
  {
    v46 = v42;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v52 = *(a1 + 68);
    *v46 = 424;
    v46[2] = v52;
    if (v52 > 0x7F)
    {
      v46[2] = v52 | 0x80;
      v53 = v52 >> 7;
      v46[3] = v52 >> 7;
      v51 = v46 + 4;
      if (v52 >= 0x4000)
      {
        LOBYTE(v46) = v46[3];
        do
        {
          *(v51 - 1) = v46 | 0x80;
          LODWORD(v46) = v53 >> 7;
          *v51++ = v53 >> 7;
          v54 = v53 >> 14;
          v53 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v51 = v46 + 3;
    }
  }

  else
  {
    v51 = v46;
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v56 = *(a1 + 72);
    *v51 = 432;
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

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v55)
    {
      v55 = sub_225EB68(a3, v55);
    }

    v61 = *(a1 + 76);
    *v55 = 440;
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

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v65 = *(a1 + 80);
    *v60 = 448;
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

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v70 = *(a1 + 84);
    *v64 = 456;
    v64[2] = v70;
    if (v70 > 0x7F)
    {
      v64[2] = v70 | 0x80;
      v71 = v70 >> 7;
      v64[3] = v70 >> 7;
      v69 = v64 + 4;
      if (v70 >= 0x4000)
      {
        LOBYTE(v64) = v64[3];
        do
        {
          *(v69 - 1) = v64 | 0x80;
          LODWORD(v64) = v71 >> 7;
          *v69++ = v71 >> 7;
          v72 = v71 >> 14;
          v71 >>= 7;
        }

        while (v72);
      }
    }

    else
    {
      v69 = v64 + 3;
    }
  }

  else
  {
    v69 = v64;
  }

  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v74 = *(a1 + 88);
    *v69 = 464;
    v69[2] = v74;
    if (v74 > 0x7F)
    {
      v69[2] = v74 | 0x80;
      v75 = v74 >> 7;
      v69[3] = v74 >> 7;
      v73 = v69 + 4;
      if (v74 >= 0x4000)
      {
        LOBYTE(v76) = v69[3];
        do
        {
          *(v73 - 1) = v76 | 0x80;
          v76 = v75 >> 7;
          *v73++ = v75 >> 7;
          v77 = v75 >> 14;
          v75 >>= 7;
        }

        while (v77);
      }
    }

    else
    {
      v73 = v69 + 3;
    }
  }

  else
  {
    v73 = v69;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v73)
    {
      v73 = sub_225EB68(a3, v73);
    }

    v79 = *(a1 + 64);
    *v73 = 472;
    v73[2] = v79;
    if (v79 > 0x7F)
    {
      v73[2] = v79 | 0x80;
      v80 = v79 >> 7;
      v73[3] = v79 >> 7;
      v78 = v73 + 4;
      if (v79 >= 0x4000)
      {
        LOBYTE(v73) = v73[3];
        do
        {
          *(v78 - 1) = v73 | 0x80;
          LODWORD(v73) = v80 >> 7;
          *v78++ = v80 >> 7;
          v81 = v80 >> 14;
          v80 >>= 7;
        }

        while (v81);
      }
    }

    else
    {
      v78 = v73 + 3;
    }
  }

  else
  {
    v78 = v73;
  }

  v82 = *(a1 + 8);
  if ((v82 & 1) == 0)
  {
    return v78;
  }

  v84 = v82 & 0xFFFFFFFFFFFFFFFCLL;
  v85 = *(v84 + 31);
  if (v85 < 0)
  {
    v86 = *(v84 + 8);
    v85 = *(v84 + 16);
  }

  else
  {
    v86 = (v84 + 8);
  }

  if (*a3 - v78 >= v85)
  {
    v87 = v85;
    memcpy(v78, v86, v85);
    v78 += v87;
    return v78;
  }

  return sub_1957130(a3, v86, v85, v78);
}

uint64_t sub_1294AD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_15;
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
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_12:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_13:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_33:
  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v1 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v1 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x200) == 0)
    {
LABEL_18:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_37;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x400) == 0)
  {
LABEL_19:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x800) == 0)
  {
LABEL_20:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x1000) == 0)
  {
LABEL_21:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x2000) == 0)
  {
LABEL_22:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  v2 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x4000) == 0)
  {
LABEL_23:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_41:
  v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x8000) != 0)
  {
LABEL_24:
    v2 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v1 & 0x10000) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 2;
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

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

double sub_1294E1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26CD600;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = a1;
  *(v2 + 120) = &qword_278E990;
  *(v2 + 128) = &qword_278E990;
  result = 0.0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 178) = 0u;
  return result;
}

uint64_t sub_1294F00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CD680;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

uint64_t sub_1294FBC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CD700;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 64) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 69) = 0;
  return result;
}

uint64_t sub_1295074(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CD780;
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

uint64_t sub_1295120(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26CD800;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

double sub_12951A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26CD880;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  return result;
}

void *sub_1295230(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26CD900;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_12952A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26CD980;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1295324(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26CDA00;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  return result;
}

uint64_t sub_12953AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26CDA80;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1295434(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CDB00;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

double sub_12954F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26CDB80;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 76) = 0u;
  return result;
}

void *sub_1295578(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12A487C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12955F8(void *a1)
{
  sub_1295578(a1);

  operator delete();
}

uint64_t sub_1295630(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1295C04(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_12956AC(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_129792C(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F3EC0(a3, v16, v13);
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

char *sub_129583C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
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

      __dst = sub_12964A8(v8, v10, a3);
    }
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

uint64_t sub_129597C(uint64_t a1)
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
      v7 = sub_1296B14(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

std::string *sub_1295A24(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_12A4984(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1295AF8(uint64_t a1)
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

  v5 = (a1 + 168);
  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956AFC((a1 + 144));
  sub_1956AFC((a1 + 120));
  sub_12A4900((a1 + 96));
  sub_1956AFC((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1295BCC(uint64_t a1)
{
  sub_1295AF8(a1);

  operator delete();
}

uint64_t sub_1295C04(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  sub_12A41D0(a1 + 48);
  sub_12A41D0(a1 + 72);
  v2 = *(a1 + 104);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 112) + 8);
    do
    {
      v4 = *v3++;
      sub_1297298(v4);
      --v2;
    }

    while (v2);
    *(a1 + 104) = 0;
  }

  sub_12A41D0(a1 + 120);
  result = sub_12A41D0(a1 + 144);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

  if ((v6 & 0x1E) != 0)
  {
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_1295CE8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v86 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v86, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v86 + 1);
    v8 = **v86;
    if (**v86 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v86, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v86 + 2);
      }
    }

    *v86 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 > 8)
    {
      if (v11 == 9)
      {
        if (v8 == 74)
        {
          v69 = v7 - 1;
          while (1)
          {
            v70 = v69 + 1;
            *v86 = v69 + 1;
            v71 = *(a1 + 112);
            if (v71 && (v72 = *(a1 + 104), v72 < *v71))
            {
              *(a1 + 104) = v72 + 1;
              v73 = *&v71[2 * v72 + 2];
            }

            else
            {
              v74 = sub_1297A04(*(a1 + 96));
              v73 = sub_19593CC(a1 + 96, v74);
              v70 = *v86;
            }

            v69 = sub_21F3F50(a3, v73, v70);
            *v86 = v69;
            if (!v69)
            {
              goto LABEL_139;
            }

            if (*a3 <= v69 || *v69 != 74)
            {
              goto LABEL_126;
            }
          }
        }
      }

      else if (v11 == 10)
      {
        if (v8 == 82)
        {
          v55 = v7 - 1;
          while (1)
          {
            v56 = (v55 + 1);
            *v86 = v55 + 1;
            v57 = *(a1 + 136);
            if (v57 && (v58 = *(a1 + 128), v58 < *v57))
            {
              *(a1 + 128) = v58 + 1;
              v59 = *&v57[2 * v58 + 2];
            }

            else
            {
              v60 = *(a1 + 120);
              if (!v60)
              {
                operator new();
              }

              *v62 = v61;
              v62[1] = sub_195A650;
              *v61 = 0;
              v61[1] = 0;
              v61[2] = 0;
              v59 = sub_19593CC(a1 + 120, v61);
              v56 = *v86;
            }

            v55 = sub_1958890(v59, v56, a3);
            *v86 = v55;
            if (!v55)
            {
              goto LABEL_139;
            }

            if (*a3 <= v55 || *v55 != 82)
            {
              goto LABEL_126;
            }
          }
        }
      }

      else if (v11 == 11 && v8 == 90)
      {
        v23 = v7 - 1;
        while (1)
        {
          v24 = (v23 + 1);
          *v86 = v23 + 1;
          v25 = *(a1 + 160);
          if (v25 && (v26 = *(a1 + 152), v26 < *v25))
          {
            *(a1 + 152) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            v28 = *(a1 + 144);
            if (!v28)
            {
              operator new();
            }

            *v30 = v29;
            v30[1] = sub_195A650;
            *v29 = 0;
            v29[1] = 0;
            v29[2] = 0;
            v27 = sub_19593CC(a1 + 144, v29);
            v24 = *v86;
          }

          v23 = sub_1958890(v27, v24, a3);
          *v86 = v23;
          if (!v23)
          {
            goto LABEL_139;
          }

          if (*a3 <= v23 || *v23 != 90)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_118;
    }

    if (v11 != 6)
    {
      if (v11 == 7)
      {
        if (v8 == 58)
        {
          v47 = v7 - 1;
          while (1)
          {
            v48 = (v47 + 1);
            *v86 = v47 + 1;
            v49 = *(a1 + 64);
            if (v49 && (v50 = *(a1 + 56), v50 < *v49))
            {
              *(a1 + 56) = v50 + 1;
              v51 = *&v49[2 * v50 + 2];
            }

            else
            {
              v52 = *(a1 + 48);
              if (!v52)
              {
                operator new();
              }

              *v54 = v53;
              v54[1] = sub_195A650;
              *v53 = 0;
              v53[1] = 0;
              v53[2] = 0;
              v51 = sub_19593CC(a1 + 48, v53);
              v48 = *v86;
            }

            v47 = sub_1958890(v51, v48, a3);
            *v86 = v47;
            if (!v47)
            {
              goto LABEL_139;
            }

            if (*a3 <= v47 || *v47 != 58)
            {
              goto LABEL_126;
            }
          }
        }
      }

      else if (v11 == 8 && v8 == 66)
      {
        v12 = v7 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          *v86 = v12 + 1;
          v14 = *(a1 + 88);
          if (v14 && (v15 = *(a1 + 80), v15 < *v14))
          {
            *(a1 + 80) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = *(a1 + 72);
            if (!v17)
            {
              operator new();
            }

            *v19 = v18;
            v19[1] = sub_195A650;
            *v18 = 0;
            v18[1] = 0;
            v18[2] = 0;
            v16 = sub_19593CC(a1 + 72, v18);
            v13 = *v86;
          }

          v12 = sub_1958890(v16, v13, a3);
          *v86 = v12;
          if (!v12)
          {
            goto LABEL_139;
          }

          if (*a3 <= v12 || *v12 != 66)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_118;
    }

    if (v8 != 48)
    {
      goto LABEL_118;
    }

    v5 |= 0x10u;
    v66 = v7 + 1;
    v67 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_107;
    }

    v68 = *v66;
    v67 = v67 + (v68 << 7) - 128;
    if ((v68 & 0x80000000) == 0)
    {
      v66 = v7 + 2;
LABEL_107:
      *v86 = v66;
      *(a1 + 188) = v67;
      goto LABEL_126;
    }

    v84 = sub_1958770(v7, v67);
    *v86 = v84;
    *(a1 + 188) = v85;
    if (!v84)
    {
      goto LABEL_139;
    }

LABEL_126:
    if (sub_195ADC0(a3, v86, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_118;
      }

      v5 |= 2u;
      v63 = v7 + 1;
      v64 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      v65 = *v63;
      v64 = v64 + (v65 << 7) - 128;
      if ((v65 & 0x80000000) == 0)
      {
        v63 = v7 + 2;
LABEL_102:
        *v86 = v63;
        *(a1 + 176) = v64;
        goto LABEL_126;
      }

      v82 = sub_1958770(v7, v64);
      *v86 = v82;
      *(a1 + 176) = v83;
      if (!v82)
      {
        goto LABEL_139;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_118;
      }

      v5 |= 4u;
      v44 = v7 + 1;
      v45 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      v46 = *v44;
      v45 = v45 + (v46 << 7) - 128;
      if ((v46 & 0x80000000) == 0)
      {
        v44 = v7 + 2;
LABEL_73:
        *v86 = v44;
        *(a1 + 180) = v45;
        goto LABEL_126;
      }

      v78 = sub_1958770(v7, v45);
      *v86 = v78;
      *(a1 + 180) = v79;
      if (!v78)
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_118;
      }

      v5 |= 8u;
      v20 = v7 + 1;
      v21 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v22 = *v20;
      v21 = v21 + (v22 << 7) - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_32:
        *v86 = v20;
        *(a1 + 184) = v21;
        goto LABEL_126;
      }

      v80 = sub_1958770(v7, v21);
      *v86 = v80;
      *(a1 + 184) = v81;
      if (!v80)
      {
        goto LABEL_139;
      }
    }

    goto LABEL_126;
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 18)
    {
      goto LABEL_118;
    }

    *(a1 + 16) |= 1u;
    v32 = *(a1 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v34 = sub_194DB04((a1 + 168), v33);
    v35 = sub_1958890(v34, *v86, a3);
LABEL_125:
    *v86 = v35;
    if (!v35)
    {
      goto LABEL_139;
    }

    goto LABEL_126;
  }

  if (v8 == 10)
  {
    v36 = v7 - 1;
    while (1)
    {
      v37 = (v36 + 1);
      *v86 = v36 + 1;
      v38 = *(a1 + 40);
      if (v38 && (v39 = *(a1 + 32), v39 < *v38))
      {
        *(a1 + 32) = v39 + 1;
        v40 = *&v38[2 * v39 + 2];
      }

      else
      {
        v41 = *(a1 + 24);
        if (!v41)
        {
          operator new();
        }

        *v43 = v42;
        v43[1] = sub_195A650;
        *v42 = 0;
        v42[1] = 0;
        v42[2] = 0;
        v40 = sub_19593CC(a1 + 24, v42);
        v37 = *v86;
      }

      v36 = sub_1958890(v40, v37, a3);
      *v86 = v36;
      if (!v36)
      {
        goto LABEL_139;
      }

      if (*a3 <= v36 || *v36 != 10)
      {
        goto LABEL_126;
      }
    }
  }

LABEL_118:
  if (v8)
  {
    v75 = (v8 & 7) == 4;
  }

  else
  {
    v75 = 1;
  }

  if (!v75)
  {
    v76 = *(a1 + 8);
    if (v76)
    {
      v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v77 = sub_11F1920((a1 + 8));
      v7 = *v86;
    }

    v35 = sub_1952690(v8, v77, v7, a3);
    goto LABEL_125;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_139:
  *v86 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v86;
}

char *sub_12964A8(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - __dst + 14 < v9)
      {
        __dst = sub_1957480(a3, 1, v8, __dst);
      }

      else
      {
        *__dst = 10;
        __dst[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = __dst + 2;
        memcpy(__dst + 2, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    __dst = sub_128AEEC(a3, 2, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 176);
    *__dst = 24;
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      __dst[1] = v13 | 0x80;
      v14 = v13 >> 7;
      __dst[2] = v13 >> 7;
      v12 = __dst + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = __dst[2];
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
      v12 = __dst + 2;
    }
  }

  else
  {
    v12 = __dst;
  }

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 180);
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
        LOBYTE(v20) = v12[2];
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
      v17 = v12 + 2;
    }
  }

  else
  {
    v17 = v12;
  }

  if ((v11 & 8) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v23 = *(a1 + 184);
    *v17 = 40;
    v17[1] = v23;
    if (v23 > 0x7F)
    {
      v17[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v17[2] = v23 >> 7;
      v22 = v17 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v22 - 1) = v17 | 0x80;
          LODWORD(v17) = v24 >> 7;
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v17 + 2;
    }
  }

  else
  {
    v22 = v17;
  }

  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 188);
    *v22 = 48;
    v22[1] = v27;
    if (v27 > 0x7F)
    {
      v22[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[2] = v27 >> 7;
      v26 = v22 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v22[2];
        do
        {
          *(v26 - 1) = v29 | 0x80;
          v29 = v28 >> 7;
          *v26++ = v28 >> 7;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v26 = v22 + 2;
    }
  }

  else
  {
    v26 = v22;
  }

  v31 = *(a1 + 56);
  if (v31 >= 1)
  {
    v32 = 8;
    do
    {
      v33 = *(*(a1 + 64) + v32);
      v34 = *(v33 + 23);
      if (v34 < 0 && (v34 = v33[1], v34 > 127) || *a3 - v26 + 14 < v34)
      {
        v26 = sub_1957480(a3, 7, v33, v26);
      }

      else
      {
        *v26 = 58;
        v26[1] = v34;
        if (*(v33 + 23) < 0)
        {
          v33 = *v33;
        }

        v35 = v26 + 2;
        memcpy(v35, v33, v34);
        v26 = &v35[v34];
      }

      v32 += 8;
      --v31;
    }

    while (v31);
  }

  v36 = *(a1 + 80);
  if (v36 >= 1)
  {
    v37 = 8;
    do
    {
      v38 = *(*(a1 + 88) + v37);
      v39 = *(v38 + 23);
      if (v39 < 0 && (v39 = v38[1], v39 > 127) || *a3 - v26 + 14 < v39)
      {
        v26 = sub_1957480(a3, 8, v38, v26);
      }

      else
      {
        *v26 = 66;
        v26[1] = v39;
        if (*(v38 + 23) < 0)
        {
          v38 = *v38;
        }

        v40 = v26 + 2;
        memcpy(v40, v38, v39);
        v26 = &v40[v39];
      }

      v37 += 8;
      --v36;
    }

    while (v36);
  }

  v41 = *(a1 + 104);
  if (v41)
  {
    for (i = 0; i != v41; ++i)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v43 = *(*(a1 + 112) + 8 * i + 8);
      *v26 = 74;
      v44 = *(v43 + 20);
      v26[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v26 + 1);
      }

      else
      {
        v45 = v26 + 2;
      }

      v26 = sub_1297518(v43, v45, a3);
    }
  }

  v46 = *(a1 + 128);
  if (v46 >= 1)
  {
    v47 = 8;
    do
    {
      v48 = *(*(a1 + 136) + v47);
      v49 = *(v48 + 23);
      if (v49 < 0 && (v49 = v48[1], v49 > 127) || *a3 - v26 + 14 < v49)
      {
        v26 = sub_1957480(a3, 10, v48, v26);
      }

      else
      {
        *v26 = 82;
        v26[1] = v49;
        if (*(v48 + 23) < 0)
        {
          v48 = *v48;
        }

        v50 = v26 + 2;
        memcpy(v50, v48, v49);
        v26 = &v50[v49];
      }

      v47 += 8;
      --v46;
    }

    while (v46);
  }

  v51 = *(a1 + 152);
  if (v51 >= 1)
  {
    v52 = 8;
    do
    {
      v53 = *(*(a1 + 160) + v52);
      v54 = *(v53 + 23);
      if (v54 < 0 && (v54 = v53[1], v54 > 127) || *a3 - v26 + 14 < v54)
      {
        v26 = sub_1957480(a3, 11, v53, v26);
      }

      else
      {
        *v26 = 90;
        v26[1] = v54;
        if (*(v53 + 23) < 0)
        {
          v53 = *v53;
        }

        v55 = v26 + 2;
        memcpy(v55, v53, v54);
        v26 = &v55[v54];
      }

      v52 += 8;
      --v51;
    }

    while (v51);
  }

  v56 = *(a1 + 8);
  if ((v56 & 1) == 0)
  {
    return v26;
  }

  v58 = v56 & 0xFFFFFFFFFFFFFFFCLL;
  v59 = *(v58 + 31);
  if (v59 < 0)
  {
    v60 = *(v58 + 8);
    v59 = *(v58 + 16);
  }

  else
  {
    v60 = (v58 + 8);
  }

  if (*a3 - v26 >= v59)
  {
    v61 = v59;
    memcpy(v26, v60, v59);
    v26 += v61;
    return v26;
  }

  return sub_1957130(a3, v60, v59, v26);
}

uint64_t sub_1296B14(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v3 = (*(a1 + 40) + 8);
    v4 = *(a1 + 32);
    do
    {
      v5 = *v3++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = *(a1 + 56);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = (*(a1 + 64) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 80);
  v15 = v9 + v14;
  if (v14 >= 1)
  {
    v16 = (*(a1 + 88) + 8);
    do
    {
      v17 = *v16++;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v15 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      --v14;
    }

    while (v14);
  }

  v20 = *(a1 + 104);
  v21 = v15 + v20;
  v22 = *(a1 + 112);
  if (v22)
  {
    v23 = (v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = 8 * v20;
    do
    {
      v25 = *v23++;
      v26 = sub_1297680(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(a1 + 128);
  v28 = v21 + v27;
  if (v27 >= 1)
  {
    v29 = (*(a1 + 136) + 8);
    do
    {
      v30 = *v29++;
      v31 = *(v30 + 23);
      v32 = *(v30 + 8);
      if ((v31 & 0x80u) == 0)
      {
        v32 = v31;
      }

      v28 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6);
      --v27;
    }

    while (v27);
  }

  v33 = *(a1 + 152);
  result = v28 + v33;
  if (v33 >= 1)
  {
    v35 = (*(a1 + 160) + 8);
    do
    {
      v36 = *v35++;
      v37 = *(v36 + 23);
      v38 = *(v36 + 8);
      if ((v37 & 0x80u) == 0)
      {
        v38 = v37;
      }

      result += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6);
      --v33;
    }

    while (v33);
  }

  v39 = *(a1 + 16);
  if ((v39 & 0x1F) == 0)
  {
    goto LABEL_41;
  }

  if (v39)
  {
    v41 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(v41 + 23);
    v43 = *(v41 + 8);
    if ((v42 & 0x80u) == 0)
    {
      v43 = v42;
    }

    result += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v39 & 2) == 0)
    {
LABEL_37:
      if ((v39 & 4) == 0)
      {
        goto LABEL_38;
      }

LABEL_47:
      result += ((9 * (__clz(*(a1 + 180) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v39 & 8) == 0)
      {
LABEL_39:
        if ((v39 & 0x10) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      goto LABEL_48;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_37;
  }

  result += ((9 * (__clz(*(a1 + 176) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v39 & 4) != 0)
  {
    goto LABEL_47;
  }

LABEL_38:
  if ((v39 & 8) == 0)
  {
    goto LABEL_39;
  }

LABEL_48:
  result += ((9 * (__clz(*(a1 + 184) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v39 & 0x10) != 0)
  {
LABEL_40:
    result += ((9 * (__clz(*(a1 + 188) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_41:
  v40 = *(a1 + 8);
  if (v40)
  {
    v44 = v40 & 0xFFFFFFFFFFFFFFFCLL;
    v45 = *((v40 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v45 < 0)
    {
      v45 = *(v44 + 16);
    }

    result += v45;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_1296E78(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1201B48(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(&v3[2], *(a2 + 56));
    result = sub_1201B48(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(&v3[3], *(a2 + 80));
    result = sub_1201B48(&v3[3], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(&v3[4], *(a2 + 104));
    result = sub_12A4A10(v3 + 4, v21, (v20 + 8), v19, *v3[4].__r_.__value_.__r.__words[2] - LODWORD(v3[4].__r_.__value_.__r.__words[1]));
    v22 = LODWORD(v3[4].__r_.__value_.__r.__words[1]) + v19;
    LODWORD(v3[4].__r_.__value_.__r.__words[1]) = v22;
    v23 = v3[4].__r_.__value_.__r.__words[2];
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(&v3[5], *(a2 + 128));
    result = sub_1201B48(&v3[5], v26, (v25 + 8), v24, *v3[5].__r_.__value_.__r.__words[2] - LODWORD(v3[5].__r_.__value_.__r.__words[1]));
    v27 = LODWORD(v3[5].__r_.__value_.__r.__words[1]) + v24;
    LODWORD(v3[5].__r_.__value_.__r.__words[1]) = v27;
    v28 = v3[5].__r_.__value_.__r.__words[2];
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 152);
  if (v29)
  {
    v30 = *(a2 + 160);
    v31 = sub_19592E8(&v3[6], *(a2 + 152));
    result = sub_1201B48(&v3[6], v31, (v30 + 8), v29, *v3[6].__r_.__value_.__r.__words[2] - LODWORD(v3[6].__r_.__value_.__r.__words[1]));
    v32 = LODWORD(v3[6].__r_.__value_.__r.__words[1]) + v29;
    LODWORD(v3[6].__r_.__value_.__r.__words[1]) = v32;
    v33 = v3[6].__r_.__value_.__r.__words[2];
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 16);
  if ((v34 & 0x1F) != 0)
  {
    if (v34)
    {
      v36 = *(a2 + 168);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v38 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v38 = *v38;
      }

      result = sub_194EA1C(&v3[7], (v36 & 0xFFFFFFFFFFFFFFFELL), v38);
      if ((v34 & 2) == 0)
      {
LABEL_22:
        if ((v34 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_35;
      }
    }

    else if ((v34 & 2) == 0)
    {
      goto LABEL_22;
    }

    LODWORD(v3[7].__r_.__value_.__r.__words[1]) = *(a2 + 176);
    if ((v34 & 4) == 0)
    {
LABEL_23:
      if ((v34 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_36;
    }

LABEL_35:
    HIDWORD(v3[7].__r_.__value_.__r.__words[1]) = *(a2 + 180);
    if ((v34 & 8) == 0)
    {
LABEL_24:
      if ((v34 & 0x10) == 0)
      {
LABEL_26:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v34;
        goto LABEL_27;
      }

LABEL_25:
      HIDWORD(v3[7].__r_.__value_.__r.__words[2]) = *(a2 + 188);
      goto LABEL_26;
    }

LABEL_36:
    LODWORD(v3[7].__r_.__value_.__r.__words[2]) = *(a2 + 184);
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_27:
  v35 = *(a2 + 8);
  if (v35)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12971A8(uint64_t a1)
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

void sub_1297260(uint64_t a1)
{
  sub_12971A8(a1);

  operator delete();
}

uint64_t sub_1297298(uint64_t a1)
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
  if ((v1 & 0xC) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1297320(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v25, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v25 + 1);
    v8 = **v25;
    if (**v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v25 + 2);
      }
    }

    *v25 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 25)
        {
          goto LABEL_29;
        }

        v21 = *v7;
        v16 = v7 + 2;
        v5 |= 4u;
        *(a1 + 40) = v21;
      }

      else
      {
        if (v11 != 4 || v8 != 33)
        {
          goto LABEL_29;
        }

        v17 = *v7;
        v16 = v7 + 2;
        v5 |= 8u;
        *(a1 + 48) = v17;
      }

      *v25 = v16;
      goto LABEL_37;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v18 = *(a1 + 8);
        v14 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v14 = *v14;
        }

        v15 = (a1 + 24);
        goto LABEL_25;
      }
    }

    else if (v11 == 2 && v8 == 18)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v15 = (a1 + 32);
LABEL_25:
      v19 = sub_194DB04(v15, v14);
      v20 = sub_1958890(v19, *v25, a3);
      goto LABEL_36;
    }

LABEL_29:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v7 = *v25;
    }

    v20 = sub_1952690(v8, v24, v7, a3);
LABEL_36:
    *v25 = v20;
    if (!v20)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (sub_195ADC0(a3, v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_42:
  *v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v25;
}

char *sub_1297518(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_8:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 40);
  *v4 = 25;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 8) != 0)
  {
LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 48);
    *v4 = 33;
    *(v4 + 1) = v8;
    v4 += 9;
  }

LABEL_14:
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

uint64_t sub_1297680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
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
  if ((v1 & 4) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 8) != 0)
  {
    v3 = v2 + 9;
  }

  else
  {
    v3 = v2;
  }

LABEL_17:
  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_129776C(std::string *result, uint64_t a2)
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

        goto LABEL_18;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3->__r_.__value_.__l.__size_;
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
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

LABEL_18:
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

uint64_t sub_129788C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CDC00;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_129792C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CDC80;
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
  result[12] = a1;
  result[13] = 0;
  result[14] = 0;
  result[15] = a1;
  result[16] = 0;
  result[17] = 0;
  result[18] = a1;
  result[19] = 0;
  result[20] = 0;
  result[22] = 0;
  result[23] = 0;
  result[21] = &qword_278E990;
  return result;
}

void *sub_1297A04(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26CDD00;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_1297A8C(uint64_t a1)
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

  if (a1 != &off_2768A08 && *(a1 + 120))
  {
    sub_1351924();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956AFC((a1 + 96));
  sub_1956AFC((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1297B64(uint64_t a1)
{
  sub_1297A8C(a1);

  operator delete();
}

uint64_t sub_1297B9C(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  sub_12A41D0(a1 + 48);
  sub_12A41D0(a1 + 72);
  result = sub_12A41D0(a1 + 96);
  v3 = *(a1 + 16);
  if (v3)
  {
    result = sub_1351960(*(a1 + 120));
  }

  if ((v3 & 0x7E) != 0)
  {
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1297C28(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v76 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v76, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v76 + 1);
    v8 = **v76;
    if (**v76 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v76, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v76 + 2);
      }
    }

    *v76 = v7;
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
          *(a1 + 16) |= 1u;
          v29 = *(a1 + 120);
          if (!v29)
          {
            v30 = *(a1 + 8);
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
            if (v30)
            {
              v31 = *v31;
            }

            sub_135517C(v31);
            v29 = v32;
            *(a1 + 120) = v32;
            v7 = *v76;
          }

          v33 = sub_21F3FE0(a3, v29, v7);
LABEL_110:
          *v76 = v33;
          if (!v33)
          {
            goto LABEL_124;
          }

          goto LABEL_111;
        }

        goto LABEL_103;
      }

      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_103;
      }

      v5 |= 2u;
      v27 = (v7 + 1);
      LODWORD(v26) = *v7;
      if ((v26 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      v28 = *v27;
      v26 = v26 + (v28 << 7) - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = (v7 + 2);
LABEL_47:
        *v76 = v27;
        *(a1 + 128) = v26;
        goto LABEL_111;
      }

      v68 = sub_19587DC(v7, v26);
      *v76 = v68;
      *(a1 + 128) = v69;
      if (!v68)
      {
        goto LABEL_124;
      }
    }

    else if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_103;
      }

      v5 |= 4u;
      v47 = (v7 + 1);
      LODWORD(v46) = *v7;
      if ((v46 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      v48 = *v47;
      v46 = v46 + (v48 << 7) - 128;
      if ((v48 & 0x80000000) == 0)
      {
        v47 = (v7 + 2);
LABEL_78:
        *v76 = v47;
        *(a1 + 132) = v46;
        goto LABEL_111;
      }

      v74 = sub_19587DC(v7, v46);
      *v76 = v74;
      *(a1 + 132) = v75;
      if (!v74)
      {
        goto LABEL_124;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_103;
      }

      v5 |= 8u;
      v35 = (v7 + 1);
      LODWORD(v34) = *v7;
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_58;
      }

      v36 = *v35;
      v34 = v34 + (v36 << 7) - 128;
      if ((v36 & 0x80000000) == 0)
      {
        v35 = (v7 + 2);
LABEL_58:
        *v76 = v35;
        *(a1 + 136) = v34;
        goto LABEL_111;
      }

      v70 = sub_19587DC(v7, v34);
      *v76 = v70;
      *(a1 + 136) = v71;
      if (!v70)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_103;
      }

      v5 |= 0x10u;
      v21 = (v7 + 1);
      LODWORD(v20) = *v7;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      v22 = *v21;
      v20 = v20 + (v22 << 7) - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (v7 + 2);
LABEL_32:
        *v76 = v21;
        *(a1 + 140) = v20;
        goto LABEL_111;
      }

      v72 = sub_19587DC(v7, v20);
      *v76 = v72;
      *(a1 + 140) = v73;
      if (!v72)
      {
        goto LABEL_124;
      }
    }

LABEL_111:
    if (sub_195ADC0(a3, v76, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 8)
  {
    if (v11 != 9)
    {
      if (v11 == 10)
      {
        if (v8 != 81)
        {
          goto LABEL_103;
        }

        v45 = *v7;
        v23 = v7 + 8;
        v5 |= 0x20u;
        *(a1 + 144) = v45;
      }

      else
      {
        if (v11 != 11 || v8 != 89)
        {
          goto LABEL_103;
        }

        v24 = *v7;
        v23 = v7 + 8;
        v5 |= 0x40u;
        *(a1 + 152) = v24;
      }

      *v76 = v23;
      goto LABEL_111;
    }

    if (v8 == 74)
    {
      v57 = (v7 - 1);
      while (1)
      {
        v58 = (v57 + 1);
        *v76 = v57 + 1;
        v59 = *(a1 + 112);
        if (v59 && (v60 = *(a1 + 104), v60 < *v59))
        {
          *(a1 + 104) = v60 + 1;
          v61 = *&v59[2 * v60 + 2];
        }

        else
        {
          v62 = *(a1 + 96);
          if (!v62)
          {
            operator new();
          }

          *v64 = v63;
          v64[1] = sub_195A650;
          *v63 = 0;
          v63[1] = 0;
          v63[2] = 0;
          v61 = sub_19593CC(a1 + 96, v63);
          v58 = *v76;
        }

        v57 = sub_1958890(v61, v58, a3);
        *v76 = v57;
        if (!v57)
        {
          goto LABEL_124;
        }

        if (*a3 <= v57 || *v57 != 74)
        {
          goto LABEL_111;
        }
      }
    }
  }

  else if (v11 == 6)
  {
    if (v8 == 50)
    {
      v49 = (v7 - 1);
      while (1)
      {
        v50 = (v49 + 1);
        *v76 = v49 + 1;
        v51 = *(a1 + 40);
        if (v51 && (v52 = *(a1 + 32), v52 < *v51))
        {
          *(a1 + 32) = v52 + 1;
          v53 = *&v51[2 * v52 + 2];
        }

        else
        {
          v54 = *(a1 + 24);
          if (!v54)
          {
            operator new();
          }

          *v56 = v55;
          v56[1] = sub_195A650;
          *v55 = 0;
          v55[1] = 0;
          v55[2] = 0;
          v53 = sub_19593CC(a1 + 24, v55);
          v50 = *v76;
        }

        v49 = sub_1958890(v53, v50, a3);
        *v76 = v49;
        if (!v49)
        {
          goto LABEL_124;
        }

        if (*a3 <= v49 || *v49 != 50)
        {
          goto LABEL_111;
        }
      }
    }
  }

  else if (v11 == 7)
  {
    if (v8 == 58)
    {
      v37 = (v7 - 1);
      while (1)
      {
        v38 = (v37 + 1);
        *v76 = v37 + 1;
        v39 = *(a1 + 64);
        if (v39 && (v40 = *(a1 + 56), v40 < *v39))
        {
          *(a1 + 56) = v40 + 1;
          v41 = *&v39[2 * v40 + 2];
        }

        else
        {
          v42 = *(a1 + 48);
          if (!v42)
          {
            operator new();
          }

          *v44 = v43;
          v44[1] = sub_195A650;
          *v43 = 0;
          v43[1] = 0;
          v43[2] = 0;
          v41 = sub_19593CC(a1 + 48, v43);
          v38 = *v76;
        }

        v37 = sub_1958890(v41, v38, a3);
        *v76 = v37;
        if (!v37)
        {
          goto LABEL_124;
        }

        if (*a3 <= v37 || *v37 != 58)
        {
          goto LABEL_111;
        }
      }
    }
  }

  else if (v11 == 8 && v8 == 66)
  {
    v12 = (v7 - 1);
    while (1)
    {
      v13 = (v12 + 1);
      *v76 = v12 + 1;
      v14 = *(a1 + 88);
      if (v14 && (v15 = *(a1 + 80), v15 < *v14))
      {
        *(a1 + 80) = v15 + 1;
        v16 = *&v14[2 * v15 + 2];
      }

      else
      {
        v17 = *(a1 + 72);
        if (!v17)
        {
          operator new();
        }

        *v19 = v18;
        v19[1] = sub_195A650;
        *v18 = 0;
        v18[1] = 0;
        v18[2] = 0;
        v16 = sub_19593CC(a1 + 72, v18);
        v13 = *v76;
      }

      v12 = sub_1958890(v16, v13, a3);
      *v76 = v12;
      if (!v12)
      {
        goto LABEL_124;
      }

      if (*a3 <= v12 || *v12 != 66)
      {
        goto LABEL_111;
      }
    }
  }

LABEL_103:
  if (v8)
  {
    v65 = (v8 & 7) == 4;
  }

  else
  {
    v65 = 1;
  }

  if (!v65)
  {
    v66 = *(a1 + 8);
    if (v66)
    {
      v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v67 = sub_11F1920((a1 + 8));
      v7 = *v76;
    }

    v33 = sub_1952690(v8, v67, v7, a3);
    goto LABEL_110;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_124:
  *v76 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v76;
}

char *sub_12982D0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 120);
    *__dst = 10;
    v7 = *(v6 + 20);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_1352584(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 128);
    *__dst = 16;
    __dst[1] = v10;
    if (v10 > 0x7F)
    {
      __dst[1] = v10 | 0x80;
      v11 = v10 >> 7;
      __dst[2] = v10 >> 7;
      v9 = __dst + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = __dst[2];
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
      v9 = __dst + 2;
    }
  }

  else
  {
    v9 = __dst;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 132);
    *v9 = 24;
    v9[1] = v15;
    if (v15 > 0x7F)
    {
      v9[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v9[2] = v15 >> 7;
      v14 = v9 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v9) = v9[2];
        do
        {
          *(v14 - 1) = v9 | 0x80;
          v9 = (v16 >> 7);
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v9 + 2;
    }
  }

  else
  {
    v14 = v9;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v19 = *(a1 + 136);
    *v14 = 32;
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v14[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v14[2] = v19 >> 7;
      v18 = v14 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v14) = v14[2];
        do
        {
          *(v18 - 1) = v14 | 0x80;
          v14 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v14 + 2;
    }
  }

  else
  {
    v18 = v14;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 140);
    *v18 = 40;
    v18[1] = v23;
    if (v23 > 0x7F)
    {
      v18[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v18[2] = v23 >> 7;
      v22 = v18 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v18[2];
        do
        {
          *(v22 - 1) = v25 | 0x80;
          v25 = v24 >> 7;
          *v22++ = v24 >> 7;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v22 = v18 + 2;
    }
  }

  else
  {
    v22 = v18;
  }

  v27 = *(a1 + 32);
  if (v27 >= 1)
  {
    v28 = 8;
    do
    {
      v29 = *(*(a1 + 40) + v28);
      v30 = *(v29 + 23);
      if (v30 < 0 && (v30 = v29[1], v30 > 127) || *a3 - v22 + 14 < v30)
      {
        v22 = sub_1957480(a3, 6, v29, v22);
      }

      else
      {
        *v22 = 50;
        v22[1] = v30;
        if (*(v29 + 23) < 0)
        {
          v29 = *v29;
        }

        v31 = v22 + 2;
        memcpy(v31, v29, v30);
        v22 = &v31[v30];
      }

      v28 += 8;
      --v27;
    }

    while (v27);
  }

  v32 = *(a1 + 56);
  if (v32 >= 1)
  {
    v33 = 8;
    do
    {
      v34 = *(*(a1 + 64) + v33);
      v35 = *(v34 + 23);
      if (v35 < 0 && (v35 = v34[1], v35 > 127) || *a3 - v22 + 14 < v35)
      {
        v22 = sub_1957480(a3, 7, v34, v22);
      }

      else
      {
        *v22 = 58;
        v22[1] = v35;
        if (*(v34 + 23) < 0)
        {
          v34 = *v34;
        }

        v36 = v22 + 2;
        memcpy(v36, v34, v35);
        v22 = &v36[v35];
      }

      v33 += 8;
      --v32;
    }

    while (v32);
  }

  v37 = *(a1 + 80);
  if (v37 >= 1)
  {
    v38 = 8;
    do
    {
      v39 = *(*(a1 + 88) + v38);
      v40 = *(v39 + 23);
      if (v40 < 0 && (v40 = v39[1], v40 > 127) || *a3 - v22 + 14 < v40)
      {
        v22 = sub_1957480(a3, 8, v39, v22);
      }

      else
      {
        *v22 = 66;
        v22[1] = v40;
        if (*(v39 + 23) < 0)
        {
          v39 = *v39;
        }

        v41 = v22 + 2;
        memcpy(v41, v39, v40);
        v22 = &v41[v40];
      }

      v38 += 8;
      --v37;
    }

    while (v37);
  }

  v42 = *(a1 + 104);
  if (v42 >= 1)
  {
    v43 = 8;
    do
    {
      v44 = *(*(a1 + 112) + v43);
      v45 = *(v44 + 23);
      if (v45 < 0 && (v45 = v44[1], v45 > 127) || *a3 - v22 + 14 < v45)
      {
        v22 = sub_1957480(a3, 9, v44, v22);
      }

      else
      {
        *v22 = 74;
        v22[1] = v45;
        if (*(v44 + 23) < 0)
        {
          v44 = *v44;
        }

        v46 = v22 + 2;
        memcpy(v46, v44, v45);
        v22 = &v46[v45];
      }

      v43 += 8;
      --v42;
    }

    while (v42);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v47 = *(a1 + 144);
    *v22 = 81;
    *(v22 + 1) = v47;
    v22 += 9;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v48 = *(a1 + 152);
    *v22 = 89;
    *(v22 + 1) = v48;
    v22 += 9;
  }

  v49 = *(a1 + 8);
  if ((v49 & 1) == 0)
  {
    return v22;
  }

  v51 = v49 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v22 >= v52)
  {
    v54 = v52;
    memcpy(v22, v53, v52);
    v22 += v54;
    return v22;
  }

  return sub_1957130(a3, v53, v52, v22);
}