uint64_t sub_17FF454(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v20 = sub_1797A98(*(a1 + 64));
    v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_137;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v21 = sub_179E704(*(a1 + 72));
  v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_138;
  }

LABEL_137:
  v22 = sub_179F4BC(*(a1 + 80));
  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_139;
  }

LABEL_138:
  v23 = sub_17A046C(*(a1 + 88));
  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_140:
    v25 = sub_17BD1FC(*(a1 + 104));
    v2 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_141;
  }

LABEL_139:
  v24 = sub_17A24CC(*(a1 + 96));
  v2 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_140;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_141:
  v26 = sub_17BEB7C(*(a1 + 112));
  v2 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    v4 = sub_17C4E0C(*(a1 + 120));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    v27 = sub_17C3204(*(a1 + 128));
    v2 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_145;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v28 = sub_17B28E0(*(a1 + 136));
  v2 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_146;
  }

LABEL_145:
  v29 = sub_17AACF0(*(a1 + 144));
  v2 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_147;
  }

LABEL_146:
  v30 = sub_17C8FD4(*(a1 + 152));
  v2 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_148;
  }

LABEL_147:
  v31 = sub_1868D18(*(a1 + 160));
  v2 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_149;
  }

LABEL_148:
  v32 = sub_17CB10C(*(a1 + 168));
  v2 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_149:
  v33 = sub_17CD318(*(a1 + 176));
  v2 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    v5 = sub_153C388(*(a1 + 184));
    v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    v34 = sub_17B4C04(*(a1 + 192));
    v2 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_153;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  v35 = sub_17CECB8(*(a1 + 200));
  v2 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_154;
  }

LABEL_153:
  v36 = sub_17CF788(*(a1 + 208));
  v2 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_155;
  }

LABEL_154:
  v37 = sub_17D4AA8(*(a1 + 216));
  v2 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_156;
  }

LABEL_155:
  v38 = sub_17B5604(*(a1 + 224));
  v2 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_157;
  }

LABEL_156:
  v39 = sub_17BC254(*(a1 + 232));
  v2 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_157:
  v40 = sub_17D71E8(*(a1 + 240));
  v2 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    v6 = sub_17B05D0(*(a1 + 248));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v92 = sub_17DB964(*(a1 + 256));
    v2 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_220;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  v93 = sub_17DCC34(*(a1 + 264));
  v2 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_221;
  }

LABEL_220:
  v94 = sub_17E2E58(*(a1 + 272));
  v2 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_222;
  }

LABEL_221:
  v95 = sub_17A3294(*(a1 + 280));
  v2 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_223;
  }

LABEL_222:
  v96 = sub_17A4570(*(a1 + 288));
  v2 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_224:
    v98 = sub_17A6148(*(a1 + 304));
    v2 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_225;
  }

LABEL_223:
  v97 = sub_17A55E8(*(a1 + 296));
  v2 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_224;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_225:
  v99 = sub_17C0734(*(a1 + 312));
  v2 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_40:
  v7 = *(a1 + 44);
  if (!v7)
  {
    goto LABEL_50;
  }

  if (v7)
  {
    v41 = sub_17E6DC8(*(a1 + 320));
    v2 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 2) == 0)
    {
LABEL_43:
      if ((v7 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_161;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_43;
  }

  v42 = sub_17E768C(*(a1 + 328));
  v2 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 4) == 0)
  {
LABEL_44:
    if ((v7 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_162;
  }

LABEL_161:
  v43 = sub_17E86C0(*(a1 + 336));
  v2 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 8) == 0)
  {
LABEL_45:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_163;
  }

LABEL_162:
  v44 = sub_17EA4E4(*(a1 + 344));
  v2 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x10) == 0)
  {
LABEL_46:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_164;
  }

LABEL_163:
  v45 = sub_1869600(*(a1 + 352));
  v2 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x20) == 0)
  {
LABEL_47:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_165;
  }

LABEL_164:
  v46 = sub_17EB344(*(a1 + 360));
  v2 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x40) == 0)
  {
LABEL_48:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_165:
  v47 = sub_17ED73C(*(a1 + 368));
  v2 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x80) != 0)
  {
LABEL_49:
    v8 = sub_17EDED8(*(a1 + 376));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_50:
  if ((v7 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v7 & 0x100) != 0)
  {
    v48 = sub_17EE7C4(*(a1 + 384));
    v2 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x200) == 0)
    {
LABEL_53:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_169;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  v49 = sub_17EBD10(*(a1 + 392));
  v2 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x400) == 0)
  {
LABEL_54:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_170;
  }

LABEL_169:
  v50 = sub_17EC448(*(a1 + 400));
  v2 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x800) == 0)
  {
LABEL_55:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_171;
  }

LABEL_170:
  v51 = sub_1920C44(*(a1 + 408));
  v2 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x1000) == 0)
  {
LABEL_56:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_172;
  }

LABEL_171:
  v52 = sub_17ECD78(*(a1 + 416));
  v2 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x2000) == 0)
  {
LABEL_57:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_173;
  }

LABEL_172:
  v53 = sub_17E56D8(*(a1 + 424));
  v2 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x4000) == 0)
  {
LABEL_58:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_173:
  v54 = sub_17E64C8(*(a1 + 432));
  v2 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x8000) != 0)
  {
LABEL_59:
    v9 = sub_17C7CB4(*(a1 + 440));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_60:
  if ((v7 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v7 & 0x10000) != 0)
  {
    v55 = sub_17C15A0(*(a1 + 448));
    v2 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x20000) == 0)
    {
LABEL_63:
      if ((v7 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_177;
    }
  }

  else if ((v7 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  v56 = sub_13935B0(*(a1 + 456));
  v2 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x40000) == 0)
  {
LABEL_64:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_178;
  }

LABEL_177:
  v57 = sub_191CAC4(*(a1 + 464));
  v2 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x80000) == 0)
  {
LABEL_65:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_179;
  }

LABEL_178:
  v58 = sub_17EFAC8(*(a1 + 472));
  v2 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x100000) == 0)
  {
LABEL_66:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_180;
  }

LABEL_179:
  v59 = sub_179CFF8(*(a1 + 480));
  v2 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x200000) == 0)
  {
LABEL_67:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_181;
  }

LABEL_180:
  v60 = sub_17F1D20(*(a1 + 488));
  v2 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x400000) == 0)
  {
LABEL_68:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_181:
  v61 = sub_191D7E8(*(a1 + 496));
  v2 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x800000) != 0)
  {
LABEL_69:
    v10 = sub_1851FE0(*(a1 + 504));
    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_70:
  if (!HIBYTE(v7))
  {
    goto LABEL_79;
  }

  if ((v7 & 0x1000000) != 0)
  {
    v100 = sub_1853FB8(*(a1 + 512));
    v2 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v7 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_228;
    }
  }

  else if ((v7 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  v101 = sub_1417BC4(*(a1 + 520));
  v2 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_229;
  }

LABEL_228:
  v102 = sub_1815E44(*(a1 + 528));
  v2 += v102 + ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_230;
  }

LABEL_229:
  v103 = sub_1816C08(*(a1 + 536));
  v2 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_231;
  }

LABEL_230:
  v104 = sub_18198AC(*(a1 + 544));
  v2 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x20000000) == 0)
  {
LABEL_77:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_232:
    v106 = sub_17B5F88(*(a1 + 560));
    v2 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_233;
  }

LABEL_231:
  v105 = sub_181EAC0(*(a1 + 552));
  v2 += v105 + ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_232;
  }

LABEL_78:
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_233:
  v107 = sub_17B67C0(*(a1 + 568));
  v2 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_79:
  v11 = *(a1 + 48);
  if (!v11)
  {
    goto LABEL_89;
  }

  if (v11)
  {
    v62 = sub_17B76E8(*(a1 + 576));
    v2 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 2) == 0)
    {
LABEL_82:
      if ((v11 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_185;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_82;
  }

  v63 = sub_13935B0(*(a1 + 584));
  v2 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 4) == 0)
  {
LABEL_83:
    if ((v11 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_186;
  }

LABEL_185:
  v64 = sub_1852EA0(*(a1 + 592));
  v2 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 8) == 0)
  {
LABEL_84:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_187;
  }

LABEL_186:
  v65 = sub_182ED00(*(a1 + 600));
  v2 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x10) == 0)
  {
LABEL_85:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_188;
  }

LABEL_187:
  v66 = sub_174C0B8(*(a1 + 608));
  v2 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x20) == 0)
  {
LABEL_86:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_189;
  }

LABEL_188:
  v67 = sub_181B1C0(*(a1 + 616));
  v2 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x40) == 0)
  {
LABEL_87:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_189:
  v68 = sub_181D93C(*(a1 + 624));
  v2 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x80) != 0)
  {
LABEL_88:
    v12 = sub_181E09C(*(a1 + 632));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_89:
  if ((v11 & 0xFF00) == 0)
  {
    goto LABEL_99;
  }

  if ((v11 & 0x100) != 0)
  {
    v69 = sub_17CD318(*(a1 + 640));
    v2 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x200) == 0)
    {
LABEL_92:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_193;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_92;
  }

  v70 = sub_17B80F8(*(a1 + 648));
  v2 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x400) == 0)
  {
LABEL_93:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_194;
  }

LABEL_193:
  v71 = sub_1854520(*(a1 + 656));
  v2 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x800) == 0)
  {
LABEL_94:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_195;
  }

LABEL_194:
  v72 = sub_181C364(*(a1 + 664));
  v2 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x1000) == 0)
  {
LABEL_95:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_196;
  }

LABEL_195:
  v73 = sub_182F524(*(a1 + 672));
  v2 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x2000) == 0)
  {
LABEL_96:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_197;
  }

LABEL_196:
  v74 = sub_17D83DC(*(a1 + 680));
  v2 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x4000) == 0)
  {
LABEL_97:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_197:
  v75 = sub_181D1E8(*(a1 + 688));
  v2 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x8000) != 0)
  {
LABEL_98:
    v13 = sub_17D0250(*(a1 + 696));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_99:
  if ((v11 & 0xFF0000) == 0)
  {
    goto LABEL_109;
  }

  if ((v11 & 0x10000) != 0)
  {
    v76 = sub_17D26C4(*(a1 + 704));
    v2 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x20000) == 0)
    {
LABEL_102:
      if ((v11 & 0x40000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_201;
    }
  }

  else if ((v11 & 0x20000) == 0)
  {
    goto LABEL_102;
  }

  v77 = sub_17D3240(*(a1 + 712));
  v2 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x40000) == 0)
  {
LABEL_103:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_202;
  }

LABEL_201:
  v78 = sub_182DB2C(*(a1 + 720));
  v2 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x80000) == 0)
  {
LABEL_104:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_203;
  }

LABEL_202:
  v79 = sub_185BAFC(*(a1 + 728));
  v2 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x100000) == 0)
  {
LABEL_105:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_204;
  }

LABEL_203:
  v80 = sub_17BA970(*(a1 + 736));
  v2 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x200000) == 0)
  {
LABEL_106:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_205;
  }

LABEL_204:
  v81 = sub_17DAE64(*(a1 + 744));
  v2 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x400000) == 0)
  {
LABEL_107:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_205:
  v82 = sub_17D13B0(*(a1 + 752));
  v2 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x800000) != 0)
  {
LABEL_108:
    v14 = sub_184AFE4(*(a1 + 760));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_109:
  if (!HIBYTE(v11))
  {
    goto LABEL_118;
  }

  if ((v11 & 0x1000000) != 0)
  {
    v108 = sub_185CFA8(*(a1 + 768));
    v2 += v108 + ((9 * (__clz(v108 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x2000000) == 0)
    {
LABEL_112:
      if ((v11 & 0x4000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_236;
    }
  }

  else if ((v11 & 0x2000000) == 0)
  {
    goto LABEL_112;
  }

  v109 = sub_17BB51C(*(a1 + 776));
  v2 += v109 + ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x4000000) == 0)
  {
LABEL_113:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_237;
  }

LABEL_236:
  v110 = sub_183D770(*(a1 + 784));
  v2 += v110 + ((9 * (__clz(v110 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x8000000) == 0)
  {
LABEL_114:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_238;
  }

LABEL_237:
  v111 = sub_1828E7C(*(a1 + 792));
  v2 += v111 + ((9 * (__clz(v111 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x10000000) == 0)
  {
LABEL_115:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_239;
  }

LABEL_238:
  v112 = sub_181F6EC(*(a1 + 800));
  v2 += v112 + ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x20000000) == 0)
  {
LABEL_116:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_240:
    v114 = sub_18251DC(*(a1 + 816));
    v2 += v114 + ((9 * (__clz(v114 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_241;
  }

LABEL_239:
  v113 = sub_18202A4(*(a1 + 808));
  v2 += v113 + ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x40000000) != 0)
  {
    goto LABEL_240;
  }

LABEL_117:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_241:
  v115 = sub_17DA048(*(a1 + 824));
  v2 += v115 + ((9 * (__clz(v115 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_118:
  v15 = *(a1 + 52);
  if (!v15)
  {
    goto LABEL_128;
  }

  if (v15)
  {
    v83 = sub_1820E4C(*(a1 + 832));
    v2 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v15 & 2) == 0)
    {
LABEL_121:
      if ((v15 & 4) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_209;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_121;
  }

  v84 = sub_1821D4C(*(a1 + 840));
  v2 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 4) == 0)
  {
LABEL_122:
    if ((v15 & 8) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_210;
  }

LABEL_209:
  v85 = sub_1822BE0(*(a1 + 848));
  v2 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 8) == 0)
  {
LABEL_123:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_211;
  }

LABEL_210:
  v86 = sub_18235F8(*(a1 + 856));
  v2 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x10) == 0)
  {
LABEL_124:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_212;
  }

LABEL_211:
  v87 = sub_184CFE8(*(a1 + 864));
  v2 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x20) == 0)
  {
LABEL_125:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_213;
  }

LABEL_212:
  v88 = sub_1823F04(*(a1 + 872));
  v2 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x40) == 0)
  {
LABEL_126:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_213:
  v89 = sub_17C6698(*(a1 + 880));
  v2 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x80) != 0)
  {
LABEL_127:
    v16 = sub_17C729C(*(a1 + 888));
    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_128:
  if ((v15 & 0x700) == 0)
  {
    goto LABEL_133;
  }

  if ((v15 & 0x100) != 0)
  {
    v90 = sub_182FF34(*(a1 + 896));
    v2 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v15 & 0x200) == 0)
    {
LABEL_131:
      if ((v15 & 0x400) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_132;
    }
  }

  else if ((v15 & 0x200) == 0)
  {
    goto LABEL_131;
  }

  v91 = sub_184E434(*(a1 + 904));
  v2 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x400) != 0)
  {
LABEL_132:
    v17 = sub_1826A7C(*(a1 + 912));
    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_133:
  v18 = *(a1 + 8);
  if (v18)
  {
    v116 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v117 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v117 < 0)
    {
      v117 = *(v116 + 16);
    }

    v2 += v117;
  }

  *(a1 + 56) = v2;
  return v2;
}

void sub_1800AF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    goto LABEL_75;
  }

  if (v4)
  {
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 64);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_185D55C(v7);
      *(a1 + 64) = v5;
    }

    if (*(a2 + 64))
    {
      v8 = *(a2 + 64);
    }

    else
    {
      v8 = &off_2782358;
    }

    sub_17983D8(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(a1 + 40) |= 2u;
  v9 = *(a1 + 72);
  if (!v9)
  {
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v9 = sub_185D940(v11);
    *(a1 + 72) = v9;
  }

  if (*(a2 + 72))
  {
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = &off_2782768;
  }

  sub_179E8C0(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_27:
  *(a1 + 40) |= 4u;
  v13 = *(a1 + 80);
  if (!v13)
  {
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_185D9F8(v15);
    *(a1 + 80) = v13;
  }

  if (*(a2 + 80))
  {
    v16 = *(a2 + 80);
  }

  else
  {
    v16 = &off_2782800;
  }

  sub_179F564(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_35:
  *(a1 + 40) |= 8u;
  v17 = *(a1 + 88);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_185DAF4(v19);
    *(a1 + 88) = v17;
  }

  if (*(a2 + 88))
  {
    v20 = *(a2 + 88);
  }

  else
  {
    v20 = &off_2782860;
  }

  sub_17A058C(v17, v20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_43:
  *(a1 + 40) |= 0x10u;
  v21 = *(a1 + 96);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_185DCB4(v23);
    *(a1 + 96) = v21;
  }

  if (*(a2 + 96))
  {
    v24 = *(a2 + 96);
  }

  else
  {
    v24 = &off_2782930;
  }

  sub_17A2650(v21, v24);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_51:
  *(a1 + 40) |= 0x20u;
  v25 = *(a1 + 104);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    v25 = sub_185F28C(v27);
    *(a1 + 104) = v25;
  }

  if (*(a2 + 104))
  {
    v28 = *(a2 + 104);
  }

  else
  {
    v28 = &off_2783528;
  }

  sub_17BD384(v25, v28);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

LABEL_59:
  *(a1 + 40) |= 0x40u;
  v29 = *(a1 + 112);
  if (!v29)
  {
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v29 = sub_185F3C8(v31);
    *(a1 + 112) = v29;
  }

  if (*(a2 + 112))
  {
    v32 = *(a2 + 112);
  }

  else
  {
    v32 = &off_27835F8;
  }

  sub_17BECF0(v29, v32);
  if ((v4 & 0x80) != 0)
  {
LABEL_67:
    *(a1 + 40) |= 0x80u;
    v33 = *(a1 + 120);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_185F924(v35);
      *(a1 + 120) = v33;
    }

    if (*(a2 + 120))
    {
      v36 = *(a2 + 120);
    }

    else
    {
      v36 = &off_27838B0;
    }

    sub_179AFF4(v33, v36);
  }

LABEL_75:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_149;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v37 = *(a1 + 128);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      v37 = sub_185F788(v39);
      *(a1 + 128) = v37;
    }

    if (*(a2 + 128))
    {
      v40 = *(a2 + 128);
    }

    else
    {
      v40 = &off_27837E8;
    }

    sub_17C3340(v37, v40);
    if ((v4 & 0x200) == 0)
    {
LABEL_78:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_101;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  *(a1 + 40) |= 0x200u;
  v41 = *(a1 + 136);
  if (!v41)
  {
    v42 = *(a1 + 8);
    v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
    if (v42)
    {
      v43 = *v43;
    }

    v41 = sub_185E974(v43);
    *(a1 + 136) = v41;
  }

  if (*(a2 + 136))
  {
    v44 = *(a2 + 136);
  }

  else
  {
    v44 = &off_2782F78;
  }

  sub_17B2C0C(v41, v44);
  if ((v4 & 0x400) == 0)
  {
LABEL_79:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_109;
  }

LABEL_101:
  *(a1 + 40) |= 0x400u;
  v45 = *(a1 + 144);
  if (!v45)
  {
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    v45 = sub_185E560(v47);
    *(a1 + 144) = v45;
  }

  if (*(a2 + 144))
  {
    v48 = *(a2 + 144);
  }

  else
  {
    v48 = &off_2782C98;
  }

  sub_17AAEBC(v45, v48);
  if ((v4 & 0x800) == 0)
  {
LABEL_80:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(a1 + 40) |= 0x800u;
  v49 = *(a1 + 152);
  if (!v49)
  {
    v50 = *(a1 + 8);
    v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
    if (v50)
    {
      v51 = *v51;
    }

    v49 = sub_185FE68(v51);
    *(a1 + 152) = v49;
  }

  if (*(a2 + 152))
  {
    v52 = *(a2 + 152);
  }

  else
  {
    v52 = &off_2783AA8;
  }

  sub_17C91B4(v49, v52);
  if ((v4 & 0x1000) == 0)
  {
LABEL_81:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_125;
  }

LABEL_117:
  *(a1 + 40) |= 0x1000u;
  v53 = *(a1 + 160);
  if (!v53)
  {
    v54 = *(a1 + 8);
    v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (v54)
    {
      v55 = *v55;
    }

    v53 = sub_1869074(v55);
    *(a1 + 160) = v53;
  }

  if (*(a2 + 160))
  {
    v56 = *(a2 + 160);
  }

  else
  {
    v56 = &off_2787AD8;
  }

  sub_1802D4C(v53, v56);
  if ((v4 & 0x2000) == 0)
  {
LABEL_82:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_133;
  }

LABEL_125:
  *(a1 + 40) |= 0x2000u;
  v57 = *(a1 + 168);
  if (!v57)
  {
    v58 = *(a1 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    v57 = sub_185FFF0(v59);
    *(a1 + 168) = v57;
  }

  if (*(a2 + 168))
  {
    v60 = *(a2 + 168);
  }

  else
  {
    v60 = &off_2783B88;
  }

  sub_1436AB4(v57, v60);
  if ((v4 & 0x4000) == 0)
  {
LABEL_83:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_141;
  }

LABEL_133:
  *(a1 + 40) |= 0x4000u;
  v61 = *(a1 + 176);
  if (!v61)
  {
    v62 = *(a1 + 8);
    v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
    if (v62)
    {
      v63 = *v63;
    }

    v61 = sub_1860104(v63);
    *(a1 + 176) = v61;
  }

  if (*(a2 + 176))
  {
    v64 = *(a2 + 176);
  }

  else
  {
    v64 = &off_2783C80;
  }

  sub_17CD440(v61, v64);
  if ((v4 & 0x8000) != 0)
  {
LABEL_141:
    *(a1 + 40) |= 0x8000u;
    v65 = *(a1 + 184);
    if (!v65)
    {
      v66 = *(a1 + 8);
      v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
      if (v66)
      {
        v67 = *v67;
      }

      v65 = sub_1551A70(v67);
      *(a1 + 184) = v65;
    }

    if (*(a2 + 184))
    {
      v68 = *(a2 + 184);
    }

    else
    {
      v68 = &off_2776880;
    }

    sub_144F404(v65, v68);
  }

LABEL_149:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_223;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v69 = *(a1 + 192);
    if (!v69)
    {
      v70 = *(a1 + 8);
      v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
      if (v70)
      {
        v71 = *v71;
      }

      v69 = sub_185EB00(v71);
      *(a1 + 192) = v69;
    }

    if (*(a2 + 192))
    {
      v72 = *(a2 + 192);
    }

    else
    {
      v72 = &off_2783108;
    }

    sub_17B4CAC(v69, v72);
    if ((v4 & 0x20000) == 0)
    {
LABEL_152:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_175;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_152;
  }

  *(a1 + 40) |= 0x20000u;
  v73 = *(a1 + 200);
  if (!v73)
  {
    v74 = *(a1 + 8);
    v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
    if (v74)
    {
      v75 = *v75;
    }

    v73 = sub_186030C(v75);
    *(a1 + 200) = v73;
  }

  if (*(a2 + 200))
  {
    v76 = *(a2 + 200);
  }

  else
  {
    v76 = &off_2783D90;
  }

  sub_17CED88(v73, v76);
  if ((v4 & 0x40000) == 0)
  {
LABEL_153:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_183;
  }

LABEL_175:
  *(a1 + 40) |= 0x40000u;
  v77 = *(a1 + 208);
  if (!v77)
  {
    v78 = *(a1 + 8);
    v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
    if (v78)
    {
      v79 = *v79;
    }

    v77 = sub_1860420(v79);
    *(a1 + 208) = v77;
  }

  if (*(a2 + 208))
  {
    v80 = *(a2 + 208);
  }

  else
  {
    v80 = &off_2783DE0;
  }

  sub_17CF8BC(v77, v80);
  if ((v4 & 0x80000) == 0)
  {
LABEL_154:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_191;
  }

LABEL_183:
  *(a1 + 40) |= 0x80000u;
  v81 = *(a1 + 216);
  if (!v81)
  {
    v82 = *(a1 + 8);
    v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
    if (v82)
    {
      v83 = *v83;
    }

    v81 = sub_1860960(v83);
    *(a1 + 216) = v81;
  }

  if (*(a2 + 216))
  {
    v84 = *(a2 + 216);
  }

  else
  {
    v84 = &off_2784040;
  }

  sub_17D4D70(v81, v84);
  if ((v4 & 0x100000) == 0)
  {
LABEL_155:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_199;
  }

LABEL_191:
  *(a1 + 40) |= 0x100000u;
  v85 = *(a1 + 224);
  if (!v85)
  {
    v86 = *(a1 + 8);
    v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
    if (v86)
    {
      v87 = *v87;
    }

    v85 = sub_185EC18(v87);
    *(a1 + 224) = v85;
  }

  if (*(a2 + 224))
  {
    v88 = *(a2 + 224);
  }

  else
  {
    v88 = &off_2783150;
  }

  sub_17B56AC(v85, v88);
  if ((v4 & 0x200000) == 0)
  {
LABEL_156:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_207;
  }

LABEL_199:
  *(a1 + 40) |= 0x200000u;
  v89 = *(a1 + 232);
  if (!v89)
  {
    v90 = *(a1 + 8);
    v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
    if (v90)
    {
      v91 = *v91;
    }

    v89 = sub_185F1B8(v91);
    *(a1 + 232) = v89;
  }

  if (*(a2 + 232))
  {
    v92 = *(a2 + 232);
  }

  else
  {
    v92 = &off_27834C0;
  }

  sub_17BC394(v89, v92);
  if ((v4 & 0x400000) == 0)
  {
LABEL_157:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_215;
  }

LABEL_207:
  *(a1 + 40) |= 0x400000u;
  v93 = *(a1 + 240);
  if (!v93)
  {
    v94 = *(a1 + 8);
    v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
    if (v94)
    {
      v95 = *v95;
    }

    v93 = sub_1860AC8(v95);
    *(a1 + 240) = v93;
  }

  if (*(a2 + 240))
  {
    v96 = *(a2 + 240);
  }

  else
  {
    v96 = &off_2784138;
  }

  sub_17D7460(v93, v96);
  if ((v4 & 0x800000) != 0)
  {
LABEL_215:
    *(a1 + 40) |= 0x800000u;
    v97 = *(a1 + 248);
    if (!v97)
    {
      v98 = *(a1 + 8);
      v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
      if (v98)
      {
        v99 = *v99;
      }

      v97 = sub_185E820(v99);
      *(a1 + 248) = v97;
    }

    if (*(a2 + 248))
    {
      v100 = *(a2 + 248);
    }

    else
    {
      v100 = &off_2782E80;
    }

    sub_17B0890(v97, v100);
  }

LABEL_223:
  if (!HIBYTE(v4))
  {
    goto LABEL_297;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(a1 + 40) |= 0x1000000u;
    v101 = *(a1 + 256);
    if (!v101)
    {
      v102 = *(a1 + 8);
      v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
      if (v102)
      {
        v103 = *v103;
      }

      v101 = sub_1860E20(v103);
      *(a1 + 256) = v101;
    }

    if (*(a2 + 256))
    {
      v104 = *(a2 + 256);
    }

    else
    {
      v104 = &off_2784368;
    }

    sub_17DBAB0(v101, v104);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_226:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_249;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_226;
  }

  *(a1 + 40) |= 0x2000000u;
  v105 = *(a1 + 264);
  if (!v105)
  {
    v106 = *(a1 + 8);
    v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
    if (v106)
    {
      v107 = *v107;
    }

    v105 = sub_1860FA8(v107);
    *(a1 + 264) = v105;
  }

  if (*(a2 + 264))
  {
    v108 = *(a2 + 264);
  }

  else
  {
    v108 = &off_27843B8;
  }

  sub_17DCD14(v105, v108);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_227:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_257;
  }

LABEL_249:
  *(a1 + 40) |= 0x4000000u;
  v109 = *(a1 + 272);
  if (!v109)
  {
    v110 = *(a1 + 8);
    v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
    if (v110)
    {
      v111 = *v111;
    }

    v109 = sub_1861658(v111);
    *(a1 + 272) = v109;
  }

  if (*(a2 + 272))
  {
    v112 = *(a2 + 272);
  }

  else
  {
    v112 = &off_2784608;
  }

  sub_17E3100(v109, v112);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_228:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_265;
  }

LABEL_257:
  *(a1 + 40) |= 0x8000000u;
  v113 = *(a1 + 280);
  if (!v113)
  {
    v114 = *(a1 + 8);
    v115 = (v114 & 0xFFFFFFFFFFFFFFFCLL);
    if (v114)
    {
      v115 = *v115;
    }

    v113 = sub_185DD6C(v115);
    *(a1 + 280) = v113;
  }

  if (*(a2 + 280))
  {
    v116 = *(a2 + 280);
  }

  else
  {
    v116 = &off_27829E0;
  }

  sub_14B7610(v113, v116);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_229:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_273;
  }

LABEL_265:
  *(a1 + 40) |= 0x10000000u;
  v117 = *(a1 + 288);
  if (!v117)
  {
    v118 = *(a1 + 8);
    v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
    if (v118)
    {
      v119 = *v119;
    }

    v117 = sub_185DF08(v119);
    *(a1 + 288) = v117;
  }

  if (*(a2 + 288))
  {
    v120 = *(a2 + 288);
  }

  else
  {
    v120 = &off_2782A50;
  }

  sub_17A461C(v117, v120);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_230:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_281;
  }

LABEL_273:
  *(a1 + 40) |= 0x20000000u;
  v121 = *(a1 + 296);
  if (!v121)
  {
    v122 = *(a1 + 8);
    v123 = (v122 & 0xFFFFFFFFFFFFFFFCLL);
    if (v122)
    {
      v123 = *v123;
    }

    v121 = sub_185E080(v123);
    *(a1 + 296) = v121;
  }

  if (*(a2 + 296))
  {
    v124 = *(a2 + 296);
  }

  else
  {
    v124 = &off_2782AB0;
  }

  sub_17A5690(v121, v124);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_231:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_297;
    }

    goto LABEL_289;
  }

LABEL_281:
  *(a1 + 40) |= 0x40000000u;
  v125 = *(a1 + 304);
  if (!v125)
  {
    v126 = *(a1 + 8);
    v127 = (v126 & 0xFFFFFFFFFFFFFFFCLL);
    if (v126)
    {
      v127 = *v127;
    }

    v125 = sub_185E198(v127);
    *(a1 + 304) = v125;
  }

  if (*(a2 + 304))
  {
    v128 = *(a2 + 304);
  }

  else
  {
    v128 = &off_2782AF8;
  }

  sub_17A6260(v125, v128);
  if ((v4 & 0x80000000) != 0)
  {
LABEL_289:
    *(a1 + 40) |= 0x80000000;
    v129 = *(a1 + 312);
    if (!v129)
    {
      v130 = *(a1 + 8);
      v131 = (v130 & 0xFFFFFFFFFFFFFFFCLL);
      if (v130)
      {
        v131 = *v131;
      }

      v129 = sub_185F504(v131);
      *(a1 + 312) = v129;
    }

    if (*(a2 + 312))
    {
      v132 = *(a2 + 312);
    }

    else
    {
      v132 = &off_27836D8;
    }

    sub_17C0874(v129, v132);
  }

LABEL_297:
  v133 = *(a2 + 44);
  if (!v133)
  {
    goto LABEL_371;
  }

  if (v133)
  {
    *(a1 + 44) |= 1u;
    v134 = *(a1 + 320);
    if (!v134)
    {
      v135 = *(a1 + 8);
      v136 = (v135 & 0xFFFFFFFFFFFFFFFCLL);
      if (v135)
      {
        v136 = *v136;
      }

      v134 = sub_1861944(v136);
      *(a1 + 320) = v134;
    }

    if (*(a2 + 320))
    {
      v137 = *(a2 + 320);
    }

    else
    {
      v137 = &off_2784828;
    }

    sub_132DE2C(v134, v137);
    if ((v133 & 2) == 0)
    {
LABEL_300:
      if ((v133 & 4) == 0)
      {
        goto LABEL_301;
      }

      goto LABEL_323;
    }
  }

  else if ((v133 & 2) == 0)
  {
    goto LABEL_300;
  }

  *(a1 + 44) |= 2u;
  v138 = *(a1 + 328);
  if (!v138)
  {
    v139 = *(a1 + 8);
    v140 = (v139 & 0xFFFFFFFFFFFFFFFCLL);
    if (v139)
    {
      v140 = *v140;
    }

    v138 = sub_1861A40(v140);
    *(a1 + 328) = v138;
  }

  if (*(a2 + 328))
  {
    v141 = *(a2 + 328);
  }

  else
  {
    v141 = &off_2784860;
  }

  sub_12A9C84(v138, v141);
  if ((v133 & 4) == 0)
  {
LABEL_301:
    if ((v133 & 8) == 0)
    {
      goto LABEL_302;
    }

    goto LABEL_331;
  }

LABEL_323:
  *(a1 + 44) |= 4u;
  v142 = *(a1 + 336);
  if (!v142)
  {
    v143 = *(a1 + 8);
    v144 = (v143 & 0xFFFFFFFFFFFFFFFCLL);
    if (v143)
    {
      v144 = *v144;
    }

    v142 = sub_1861B5C(v144);
    *(a1 + 336) = v142;
  }

  if (*(a2 + 336))
  {
    v145 = *(a2 + 336);
  }

  else
  {
    v145 = &off_27848B0;
  }

  sub_17E8910(v142, v145);
  if ((v133 & 8) == 0)
  {
LABEL_302:
    if ((v133 & 0x10) == 0)
    {
      goto LABEL_303;
    }

    goto LABEL_339;
  }

LABEL_331:
  *(a1 + 44) |= 8u;
  v146 = *(a1 + 344);
  if (!v146)
  {
    v147 = *(a1 + 8);
    v148 = (v147 & 0xFFFFFFFFFFFFFFFCLL);
    if (v147)
    {
      v148 = *v148;
    }

    v146 = sub_1861C8C(v148);
    *(a1 + 344) = v146;
  }

  if (*(a2 + 344))
  {
    v149 = *(a2 + 344);
  }

  else
  {
    v149 = &off_27849A0;
  }

  sub_17EA5E0(v146, v149);
  if ((v133 & 0x10) == 0)
  {
LABEL_303:
    if ((v133 & 0x20) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_347;
  }

LABEL_339:
  *(a1 + 44) |= 0x10u;
  v150 = *(a1 + 352);
  if (!v150)
  {
    v151 = *(a1 + 8);
    v152 = (v151 & 0xFFFFFFFFFFFFFFFCLL);
    if (v151)
    {
      v152 = *v152;
    }

    v150 = sub_1869838(v152);
    *(a1 + 352) = v150;
  }

  if (*(a2 + 352))
  {
    v153 = *(a2 + 352);
  }

  else
  {
    v153 = &off_2787B70;
  }

  sub_1425F24(v150, v153);
  if ((v133 & 0x20) == 0)
  {
LABEL_304:
    if ((v133 & 0x40) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_355;
  }

LABEL_347:
  *(a1 + 44) |= 0x20u;
  v154 = *(a1 + 360);
  if (!v154)
  {
    v155 = *(a1 + 8);
    v156 = (v155 & 0xFFFFFFFFFFFFFFFCLL);
    if (v155)
    {
      v156 = *v156;
    }

    v154 = sub_1861D64(v156);
    *(a1 + 360) = v154;
  }

  if (*(a2 + 360))
  {
    v157 = *(a2 + 360);
  }

  else
  {
    v157 = &off_2784A20;
  }

  sub_17EB458(v154, v157);
  if ((v133 & 0x40) == 0)
  {
LABEL_305:
    if ((v133 & 0x80) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_363;
  }

LABEL_355:
  *(a1 + 44) |= 0x40u;
  v158 = *(a1 + 368);
  if (!v158)
  {
    v159 = *(a1 + 8);
    v160 = (v159 & 0xFFFFFFFFFFFFFFFCLL);
    if (v159)
    {
      v160 = *v160;
    }

    v158 = sub_18621A0(v160);
    *(a1 + 368) = v158;
  }

  if (*(a2 + 368))
  {
    v161 = *(a2 + 368);
  }

  else
  {
    v161 = &off_2784B58;
  }

  sub_129776C(v158, v161);
  if ((v133 & 0x80) != 0)
  {
LABEL_363:
    *(a1 + 44) |= 0x80u;
    v162 = *(a1 + 376);
    if (!v162)
    {
      v163 = *(a1 + 8);
      v164 = (v163 & 0xFFFFFFFFFFFFFFFCLL);
      if (v163)
      {
        v164 = *v164;
      }

      v162 = sub_18622A0(v164);
      *(a1 + 376) = v162;
    }

    if (*(a2 + 376))
    {
      v165 = *(a2 + 376);
    }

    else
    {
      v165 = &off_2784BA8;
    }

    sub_12C70A0(v162, v165);
  }

LABEL_371:
  if ((v133 & 0xFF00) == 0)
  {
    goto LABEL_445;
  }

  if ((v133 & 0x100) != 0)
  {
    *(a1 + 44) |= 0x100u;
    v166 = *(a1 + 384);
    if (!v166)
    {
      v167 = *(a1 + 8);
      v168 = (v167 & 0xFFFFFFFFFFFFFFFCLL);
      if (v167)
      {
        v168 = *v168;
      }

      v166 = sub_1862390(v168);
      *(a1 + 384) = v166;
    }

    if (*(a2 + 384))
    {
      v169 = *(a2 + 384);
    }

    else
    {
      v169 = &off_2784BE0;
    }

    sub_138A648(v166, v169);
    if ((v133 & 0x200) == 0)
    {
LABEL_374:
      if ((v133 & 0x400) == 0)
      {
        goto LABEL_375;
      }

      goto LABEL_397;
    }
  }

  else if ((v133 & 0x200) == 0)
  {
    goto LABEL_374;
  }

  *(a1 + 44) |= 0x200u;
  v170 = *(a1 + 392);
  if (!v170)
  {
    v171 = *(a1 + 8);
    v172 = (v171 & 0xFFFFFFFFFFFFFFFCLL);
    if (v171)
    {
      v172 = *v172;
    }

    v170 = sub_1861E78(v172);
    *(a1 + 392) = v170;
  }

  if (*(a2 + 392))
  {
    v173 = *(a2 + 392);
  }

  else
  {
    v173 = &off_2784A78;
  }

  sub_17EBDB8(v170, v173);
  if ((v133 & 0x400) == 0)
  {
LABEL_375:
    if ((v133 & 0x800) == 0)
    {
      goto LABEL_376;
    }

    goto LABEL_405;
  }

LABEL_397:
  *(a1 + 44) |= 0x400u;
  v174 = *(a1 + 400);
  if (!v174)
  {
    v175 = *(a1 + 8);
    v176 = (v175 & 0xFFFFFFFFFFFFFFFCLL);
    if (v175)
    {
      v176 = *v176;
    }

    v174 = sub_1861F90(v176);
    *(a1 + 400) = v174;
  }

  if (*(a2 + 400))
  {
    v177 = *(a2 + 400);
  }

  else
  {
    v177 = &off_2784AC0;
  }

  sub_12B9D50(v174, v177);
  if ((v133 & 0x800) == 0)
  {
LABEL_376:
    if ((v133 & 0x1000) == 0)
    {
      goto LABEL_377;
    }

    goto LABEL_413;
  }

LABEL_405:
  *(a1 + 44) |= 0x800u;
  v178 = *(a1 + 408);
  if (!v178)
  {
    v179 = *(a1 + 8);
    v180 = (v179 & 0xFFFFFFFFFFFFFFFCLL);
    if (v179)
    {
      v180 = *v180;
    }

    v178 = sub_19294A4(v180);
    *(a1 + 408) = v178;
  }

  if (*(a2 + 408))
  {
    v181 = *(a2 + 408);
  }

  else
  {
    v181 = &off_278BC98;
  }

  sub_1802F44(v178, v181);
  if ((v133 & 0x1000) == 0)
  {
LABEL_377:
    if ((v133 & 0x2000) == 0)
    {
      goto LABEL_378;
    }

    goto LABEL_421;
  }

LABEL_413:
  *(a1 + 44) |= 0x1000u;
  v182 = *(a1 + 416);
  if (!v182)
  {
    v183 = *(a1 + 8);
    v184 = (v183 & 0xFFFFFFFFFFFFFFFCLL);
    if (v183)
    {
      v184 = *v184;
    }

    v182 = sub_1862084(v184);
    *(a1 + 416) = v182;
  }

  if (*(a2 + 416))
  {
    v185 = *(a2 + 416);
  }

  else
  {
    v185 = &off_2784AF8;
  }

  sub_17ECE70(v182, v185);
  if ((v133 & 0x2000) == 0)
  {
LABEL_378:
    if ((v133 & 0x4000) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_429;
  }

LABEL_421:
  *(a1 + 44) |= 0x2000u;
  v186 = *(a1 + 424);
  if (!v186)
  {
    v187 = *(a1 + 8);
    v188 = (v187 & 0xFFFFFFFFFFFFFFFCLL);
    if (v187)
    {
      v188 = *v188;
    }

    v186 = sub_18617B4(v188);
    *(a1 + 424) = v186;
  }

  if (*(a2 + 424))
  {
    v189 = *(a2 + 424);
  }

  else
  {
    v189 = &off_2784730;
  }

  sub_17E5834(v186, v189);
  if ((v133 & 0x4000) == 0)
  {
LABEL_379:
    if ((v133 & 0x8000) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_437;
  }

LABEL_429:
  *(a1 + 44) |= 0x4000u;
  v190 = *(a1 + 432);
  if (!v190)
  {
    v191 = *(a1 + 8);
    v192 = (v191 & 0xFFFFFFFFFFFFFFFCLL);
    if (v191)
    {
      v192 = *v192;
    }

    v190 = sub_186186C(v192);
    *(a1 + 432) = v190;
  }

  if (*(a2 + 432))
  {
    v193 = *(a2 + 432);
  }

  else
  {
    v193 = &off_27847D0;
  }

  sub_128F948(v190, v193);
  if ((v133 & 0x8000) != 0)
  {
LABEL_437:
    *(a1 + 44) |= 0x8000u;
    v194 = *(a1 + 440);
    if (!v194)
    {
      v195 = *(a1 + 8);
      v196 = (v195 & 0xFFFFFFFFFFFFFFFCLL);
      if (v195)
      {
        v196 = *v196;
      }

      v194 = sub_185FDB0(v196);
      *(a1 + 440) = v194;
    }

    if (*(a2 + 440))
    {
      v197 = *(a2 + 440);
    }

    else
    {
      v197 = &off_2783A38;
    }

    sub_17C7D84(v194, v197);
  }

LABEL_445:
  if ((v133 & 0xFF0000) == 0)
  {
    goto LABEL_519;
  }

  if ((v133 & 0x10000) != 0)
  {
    *(a1 + 44) |= 0x10000u;
    v198 = *(a1 + 448);
    if (!v198)
    {
      v199 = *(a1 + 8);
      v200 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
      if (v199)
      {
        v200 = *v200;
      }

      v198 = sub_185F5BC(v200);
      *(a1 + 448) = v198;
    }

    if (*(a2 + 448))
    {
      v201 = *(a2 + 448);
    }

    else
    {
      v201 = &off_2783780;
    }

    sub_14B7610(v198, v201);
    if ((v133 & 0x20000) == 0)
    {
LABEL_448:
      if ((v133 & 0x40000) == 0)
      {
        goto LABEL_449;
      }

      goto LABEL_471;
    }
  }

  else if ((v133 & 0x20000) == 0)
  {
    goto LABEL_448;
  }

  *(a1 + 44) |= 0x20000u;
  v202 = *(a1 + 456);
  if (!v202)
  {
    v203 = *(a1 + 8);
    v204 = (v203 & 0xFFFFFFFFFFFFFFFCLL);
    if (v203)
    {
      v204 = *v204;
    }

    v202 = sub_13AE264(v204);
    *(a1 + 456) = v202;
  }

  if (*(a2 + 456))
  {
    v205 = *(a2 + 456);
  }

  else
  {
    v205 = &off_276D790;
  }

  sub_1393658(v202, v205);
  if ((v133 & 0x40000) == 0)
  {
LABEL_449:
    if ((v133 & 0x80000) == 0)
    {
      goto LABEL_450;
    }

    goto LABEL_479;
  }

LABEL_471:
  *(a1 + 44) |= 0x40000u;
  v206 = *(a1 + 464);
  if (!v206)
  {
    v207 = *(a1 + 8);
    v208 = (v207 & 0xFFFFFFFFFFFFFFFCLL);
    if (v207)
    {
      v208 = *v208;
    }

    v206 = sub_191F8BC(v208);
    *(a1 + 464) = v206;
  }

  if (*(a2 + 464))
  {
    v209 = *(a2 + 464);
  }

  else
  {
    v209 = &off_278BAE0;
  }

  sub_18031A0(v206, v209);
  if ((v133 & 0x80000) == 0)
  {
LABEL_450:
    if ((v133 & 0x100000) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_487;
  }

LABEL_479:
  *(a1 + 44) |= 0x80000u;
  v210 = *(a1 + 472);
  if (!v210)
  {
    v211 = *(a1 + 8);
    v212 = (v211 & 0xFFFFFFFFFFFFFFFCLL);
    if (v211)
    {
      v212 = *v212;
    }

    v210 = sub_1862594(v212);
    *(a1 + 472) = v210;
  }

  if (*(a2 + 472))
  {
    v213 = *(a2 + 472);
  }

  else
  {
    v213 = &off_2784C40;
  }

  sub_17EFB98(v210, v213);
  if ((v133 & 0x100000) == 0)
  {
LABEL_451:
    if ((v133 & 0x200000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_495;
  }

LABEL_487:
  *(a1 + 44) |= 0x100000u;
  v214 = *(a1 + 480);
  if (!v214)
  {
    v215 = *(a1 + 8);
    v216 = (v215 & 0xFFFFFFFFFFFFFFFCLL);
    if (v215)
    {
      v216 = *v216;
    }

    v214 = sub_185D888(v216);
    *(a1 + 480) = v214;
  }

  if (*(a2 + 480))
  {
    v217 = *(a2 + 480);
  }

  else
  {
    v217 = &off_27826D0;
  }

  sub_179D14C(v214, v217);
  if ((v133 & 0x200000) == 0)
  {
LABEL_452:
    if ((v133 & 0x400000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_503;
  }

LABEL_495:
  *(a1 + 44) |= 0x200000u;
  v218 = *(a1 + 488);
  if (!v218)
  {
    v219 = *(a1 + 8);
    v220 = (v219 & 0xFFFFFFFFFFFFFFFCLL);
    if (v219)
    {
      v220 = *v220;
    }

    v218 = sub_1862754(v220);
    *(a1 + 488) = v218;
  }

  if (*(a2 + 488))
  {
    v221 = *(a2 + 488);
  }

  else
  {
    v221 = &off_2784CB0;
  }

  sub_17F1F9C(v218, v221);
  if ((v133 & 0x400000) == 0)
  {
LABEL_453:
    if ((v133 & 0x800000) == 0)
    {
      goto LABEL_519;
    }

    goto LABEL_511;
  }

LABEL_503:
  *(a1 + 44) |= 0x400000u;
  v222 = *(a1 + 496);
  if (!v222)
  {
    v223 = *(a1 + 8);
    v224 = (v223 & 0xFFFFFFFFFFFFFFFCLL);
    if (v223)
    {
      v224 = *v224;
    }

    v222 = sub_191FA80(v224);
    *(a1 + 496) = v222;
  }

  if (*(a2 + 496))
  {
    v225 = *(a2 + 496);
  }

  else
  {
    v225 = &off_278BB88;
  }

  sub_1803330(v222, v225);
  if ((v133 & 0x800000) != 0)
  {
LABEL_511:
    *(a1 + 44) |= 0x800000u;
    v226 = *(a1 + 504);
    if (!v226)
    {
      v227 = *(a1 + 8);
      v228 = (v227 & 0xFFFFFFFFFFFFFFFCLL);
      if (v227)
      {
        v228 = *v228;
      }

      v226 = sub_1866134(v228);
      *(a1 + 504) = v226;
    }

    if (*(a2 + 504))
    {
      v229 = *(a2 + 504);
    }

    else
    {
      v229 = &off_27873B0;
    }

    sub_1803460(v226, v229);
  }

LABEL_519:
  if (!HIBYTE(v133))
  {
    goto LABEL_593;
  }

  if ((v133 & 0x1000000) != 0)
  {
    *(a1 + 44) |= 0x1000000u;
    v230 = *(a1 + 512);
    if (!v230)
    {
      v231 = *(a1 + 8);
      v232 = (v231 & 0xFFFFFFFFFFFFFFFCLL);
      if (v231)
      {
        v232 = *v232;
      }

      v230 = sub_1866248(v232);
      *(a1 + 512) = v230;
    }

    if (*(a2 + 512))
    {
      v233 = *(a2 + 512);
    }

    else
    {
      v233 = &off_27874D0;
    }

    sub_1803528(v230, v233);
    if ((v133 & 0x2000000) == 0)
    {
LABEL_522:
      if ((v133 & 0x4000000) == 0)
      {
        goto LABEL_523;
      }

      goto LABEL_545;
    }
  }

  else if ((v133 & 0x2000000) == 0)
  {
    goto LABEL_522;
  }

  *(a1 + 44) |= 0x2000000u;
  v234 = *(a1 + 520);
  if (!v234)
  {
    v235 = *(a1 + 8);
    v236 = (v235 & 0xFFFFFFFFFFFFFFFCLL);
    if (v235)
    {
      v236 = *v236;
    }

    sub_141BF4C(v236);
    *(a1 + 520) = v234;
  }

  if (*(a2 + 520))
  {
    v237 = *(a2 + 520);
  }

  else
  {
    v237 = &off_2770220;
  }

  sub_1417E40(v234, v237);
  if ((v133 & 0x4000000) == 0)
  {
LABEL_523:
    if ((v133 & 0x8000000) == 0)
    {
      goto LABEL_524;
    }

    goto LABEL_553;
  }

LABEL_545:
  *(a1 + 44) |= 0x4000000u;
  v238 = *(a1 + 528);
  if (!v238)
  {
    v239 = *(a1 + 8);
    v240 = (v239 & 0xFFFFFFFFFFFFFFFCLL);
    if (v239)
    {
      v240 = *v240;
    }

    v238 = sub_1862B98(v240);
    *(a1 + 528) = v238;
  }

  if (*(a2 + 528))
  {
    v241 = *(a2 + 528);
  }

  else
  {
    v241 = &off_27856F0;
  }

  sub_18035F0(v238, v241);
  if ((v133 & 0x8000000) == 0)
  {
LABEL_524:
    if ((v133 & 0x10000000) == 0)
    {
      goto LABEL_525;
    }

    goto LABEL_561;
  }

LABEL_553:
  *(a1 + 44) |= 0x8000000u;
  v242 = *(a1 + 536);
  if (!v242)
  {
    v243 = *(a1 + 8);
    v244 = (v243 & 0xFFFFFFFFFFFFFFFCLL);
    if (v243)
    {
      v244 = *v244;
    }

    v242 = sub_1862BF4(v244);
    *(a1 + 536) = v242;
  }

  if (*(a2 + 536))
  {
    v245 = *(a2 + 536);
  }

  else
  {
    v245 = &off_2785748;
  }

  sub_180375C(v242, v245);
  if ((v133 & 0x10000000) == 0)
  {
LABEL_525:
    if ((v133 & 0x20000000) == 0)
    {
      goto LABEL_526;
    }

    goto LABEL_569;
  }

LABEL_561:
  *(a1 + 44) |= 0x10000000u;
  v246 = *(a1 + 544);
  if (!v246)
  {
    v247 = *(a1 + 8);
    v248 = (v247 & 0xFFFFFFFFFFFFFFFCLL);
    if (v247)
    {
      v248 = *v248;
    }

    v246 = sub_1862C50(v248);
    *(a1 + 544) = v246;
  }

  if (*(a2 + 544))
  {
    v249 = *(a2 + 544);
  }

  else
  {
    v249 = &off_27857C0;
  }

  sub_1803954(v246, v249);
  if ((v133 & 0x20000000) == 0)
  {
LABEL_526:
    if ((v133 & 0x40000000) == 0)
    {
      goto LABEL_527;
    }

    goto LABEL_577;
  }

LABEL_569:
  *(a1 + 44) |= 0x20000000u;
  v250 = *(a1 + 552);
  if (!v250)
  {
    v251 = *(a1 + 8);
    v252 = (v251 & 0xFFFFFFFFFFFFFFFCLL);
    if (v251)
    {
      v252 = *v252;
    }

    v250 = sub_1862FD4(v252);
    *(a1 + 552) = v250;
  }

  if (*(a2 + 552))
  {
    v253 = *(a2 + 552);
  }

  else
  {
    v253 = &off_2785C00;
  }

  sub_18041E0(v250, v253);
  if ((v133 & 0x40000000) == 0)
  {
LABEL_527:
    if ((v133 & 0x80000000) == 0)
    {
      goto LABEL_593;
    }

    goto LABEL_585;
  }

LABEL_577:
  *(a1 + 44) |= 0x40000000u;
  v254 = *(a1 + 560);
  if (!v254)
  {
    v255 = *(a1 + 8);
    v256 = (v255 & 0xFFFFFFFFFFFFFFFCLL);
    if (v255)
    {
      v256 = *v256;
    }

    v254 = sub_185ECEC(v256);
    *(a1 + 560) = v254;
  }

  if (*(a2 + 560))
  {
    v257 = *(a2 + 560);
  }

  else
  {
    v257 = &off_27831B0;
  }

  sub_17B6034(v254, v257);
  if ((v133 & 0x80000000) != 0)
  {
LABEL_585:
    *(a1 + 44) |= 0x80000000;
    v258 = *(a1 + 568);
    if (!v258)
    {
      v259 = *(a1 + 8);
      v260 = (v259 & 0xFFFFFFFFFFFFFFFCLL);
      if (v259)
      {
        v260 = *v260;
      }

      v258 = sub_185ED48(v260);
      *(a1 + 568) = v258;
    }

    if (*(a2 + 568))
    {
      v261 = *(a2 + 568);
    }

    else
    {
      v261 = &off_27831F8;
    }

    sub_17B686C(v258, v261);
  }

LABEL_593:
  v262 = *(a2 + 48);
  if (!v262)
  {
    goto LABEL_667;
  }

  if (v262)
  {
    *(a1 + 48) |= 1u;
    v263 = *(a1 + 576);
    if (!v263)
    {
      v264 = *(a1 + 8);
      v265 = (v264 & 0xFFFFFFFFFFFFFFFCLL);
      if (v264)
      {
        v265 = *v265;
      }

      v263 = sub_185EE28(v265);
      *(a1 + 576) = v263;
    }

    if (*(a2 + 576))
    {
      v266 = *(a2 + 576);
    }

    else
    {
      v266 = &off_2783240;
    }

    sub_17B77A4(v263, v266);
    if ((v262 & 2) == 0)
    {
LABEL_596:
      if ((v262 & 4) == 0)
      {
        goto LABEL_597;
      }

      goto LABEL_619;
    }
  }

  else if ((v262 & 2) == 0)
  {
    goto LABEL_596;
  }

  *(a1 + 48) |= 2u;
  v267 = *(a1 + 584);
  if (!v267)
  {
    v268 = *(a1 + 8);
    v269 = (v268 & 0xFFFFFFFFFFFFFFFCLL);
    if (v268)
    {
      v269 = *v269;
    }

    v267 = sub_13AE264(v269);
    *(a1 + 584) = v267;
  }

  if (*(a2 + 584))
  {
    v270 = *(a2 + 584);
  }

  else
  {
    v270 = &off_276D790;
  }

  sub_1393658(v267, v270);
  if ((v262 & 4) == 0)
  {
LABEL_597:
    if ((v262 & 8) == 0)
    {
      goto LABEL_598;
    }

    goto LABEL_627;
  }

LABEL_619:
  *(a1 + 48) |= 4u;
  v271 = *(a1 + 592);
  if (!v271)
  {
    v272 = *(a1 + 8);
    v273 = (v272 & 0xFFFFFFFFFFFFFFFCLL);
    if (v272)
    {
      v273 = *v273;
    }

    v271 = sub_1866190(v273);
    *(a1 + 592) = v271;
  }

  if (*(a2 + 592))
  {
    v274 = *(a2 + 592);
  }

  else
  {
    v274 = &off_27873F8;
  }

  sub_1804308(v271, v274);
  if ((v262 & 8) == 0)
  {
LABEL_598:
    if ((v262 & 0x10) == 0)
    {
      goto LABEL_599;
    }

    goto LABEL_635;
  }

LABEL_627:
  *(a1 + 48) |= 8u;
  v275 = *(a1 + 600);
  if (!v275)
  {
    v276 = *(a1 + 8);
    v277 = (v276 & 0xFFFFFFFFFFFFFFFCLL);
    if (v276)
    {
      v277 = *v277;
    }

    v275 = sub_1864050(v277);
    *(a1 + 600) = v275;
  }

  if (*(a2 + 600))
  {
    v278 = *(a2 + 600);
  }

  else
  {
    v278 = &off_2786490;
  }

  sub_1804554(v275, v278);
  if ((v262 & 0x10) == 0)
  {
LABEL_599:
    if ((v262 & 0x20) == 0)
    {
      goto LABEL_600;
    }

    goto LABEL_643;
  }

LABEL_635:
  *(a1 + 48) |= 0x10u;
  v279 = *(a1 + 608);
  if (!v279)
  {
    v280 = *(a1 + 8);
    v281 = (v280 & 0xFFFFFFFFFFFFFFFCLL);
    if (v280)
    {
      v281 = *v281;
    }

    v279 = sub_174DF14(v281);
    *(a1 + 608) = v279;
  }

  if (*(a2 + 608))
  {
    v282 = *(a2 + 608);
  }

  else
  {
    v282 = &off_2780C98;
  }

  sub_174C264(v279, v282);
  if ((v262 & 0x20) == 0)
  {
LABEL_600:
    if ((v262 & 0x40) == 0)
    {
      goto LABEL_601;
    }

    goto LABEL_651;
  }

LABEL_643:
  *(a1 + 48) |= 0x20u;
  v283 = *(a1 + 616);
  if (!v283)
  {
    v284 = *(a1 + 8);
    v285 = (v284 & 0xFFFFFFFFFFFFFFFCLL);
    if (v284)
    {
      v285 = *v285;
    }

    v283 = sub_1862CAC(v285);
    *(a1 + 616) = v283;
  }

  if (*(a2 + 616))
  {
    v286 = *(a2 + 616);
  }

  else
  {
    v286 = &off_27859D0;
  }

  sub_1804678(v283, v286);
  if ((v262 & 0x40) == 0)
  {
LABEL_601:
    if ((v262 & 0x80) == 0)
    {
      goto LABEL_667;
    }

    goto LABEL_659;
  }

LABEL_651:
  *(a1 + 48) |= 0x40u;
  v287 = *(a1 + 624);
  if (!v287)
  {
    v288 = *(a1 + 8);
    v289 = (v288 & 0xFFFFFFFFFFFFFFFCLL);
    if (v288)
    {
      v289 = *v289;
    }

    v287 = sub_1862EF0(v289);
    *(a1 + 624) = v287;
  }

  if (*(a2 + 624))
  {
    v290 = *(a2 + 624);
  }

  else
  {
    v290 = &off_2785B80;
  }

  sub_18049C0(v287, v290);
  if ((v262 & 0x80) != 0)
  {
LABEL_659:
    *(a1 + 48) |= 0x80u;
    v291 = *(a1 + 632);
    if (!v291)
    {
      v292 = *(a1 + 8);
      v293 = (v292 & 0xFFFFFFFFFFFFFFFCLL);
      if (v292)
      {
        v293 = *v293;
      }

      v291 = sub_1862F4C(v293);
      *(a1 + 632) = v291;
    }

    if (*(a2 + 632))
    {
      v294 = *(a2 + 632);
    }

    else
    {
      v294 = &off_2785BC8;
    }

    sub_1804A88(v291, v294);
  }

LABEL_667:
  if ((v262 & 0xFF00) == 0)
  {
    goto LABEL_741;
  }

  if ((v262 & 0x100) != 0)
  {
    *(a1 + 48) |= 0x100u;
    v295 = *(a1 + 640);
    if (!v295)
    {
      v296 = *(a1 + 8);
      v297 = (v296 & 0xFFFFFFFFFFFFFFFCLL);
      if (v296)
      {
        v297 = *v297;
      }

      v295 = sub_1860104(v297);
      *(a1 + 640) = v295;
    }

    if (*(a2 + 640))
    {
      v298 = *(a2 + 640);
    }

    else
    {
      v298 = &off_2783C80;
    }

    sub_17CD440(v295, v298);
    if ((v262 & 0x200) == 0)
    {
LABEL_670:
      if ((v262 & 0x400) == 0)
      {
        goto LABEL_671;
      }

      goto LABEL_693;
    }
  }

  else if ((v262 & 0x200) == 0)
  {
    goto LABEL_670;
  }

  *(a1 + 48) |= 0x200u;
  v299 = *(a1 + 648);
  if (!v299)
  {
    v300 = *(a1 + 8);
    v301 = (v300 & 0xFFFFFFFFFFFFFFFCLL);
    if (v300)
    {
      v301 = *v301;
    }

    v299 = sub_185EE84(v301);
    *(a1 + 648) = v299;
  }

  if (*(a2 + 648))
  {
    v302 = *(a2 + 648);
  }

  else
  {
    v302 = &off_2783298;
  }

  sub_17B81F4(v299, v302);
  if ((v262 & 0x400) == 0)
  {
LABEL_671:
    if ((v262 & 0x800) == 0)
    {
      goto LABEL_672;
    }

    goto LABEL_701;
  }

LABEL_693:
  *(a1 + 48) |= 0x400u;
  v303 = *(a1 + 656);
  if (!v303)
  {
    v304 = *(a1 + 8);
    v305 = (v304 & 0xFFFFFFFFFFFFFFFCLL);
    if (v304)
    {
      v305 = *v305;
    }

    v303 = sub_18662A4(v305);
    *(a1 + 656) = v303;
  }

  if (*(a2 + 656))
  {
    v306 = *(a2 + 656);
  }

  else
  {
    v306 = &off_2787518;
  }

  sub_1804BD0(v303, v306);
  if ((v262 & 0x800) == 0)
  {
LABEL_672:
    if ((v262 & 0x1000) == 0)
    {
      goto LABEL_673;
    }

    goto LABEL_709;
  }

LABEL_701:
  *(a1 + 48) |= 0x800u;
  v307 = *(a1 + 664);
  if (!v307)
  {
    v308 = *(a1 + 8);
    v309 = (v308 & 0xFFFFFFFFFFFFFFFCLL);
    if (v308)
    {
      v309 = *v309;
    }

    v307 = sub_1862D84(v309);
    *(a1 + 664) = v307;
  }

  if (*(a2 + 664))
  {
    v310 = *(a2 + 664);
  }

  else
  {
    v310 = &off_2785AC0;
  }

  sub_1804C8C(v307, v310);
  if ((v262 & 0x1000) == 0)
  {
LABEL_673:
    if ((v262 & 0x2000) == 0)
    {
      goto LABEL_674;
    }

    goto LABEL_717;
  }

LABEL_709:
  *(a1 + 48) |= 0x1000u;
  v311 = *(a1 + 672);
  if (!v311)
  {
    v312 = *(a1 + 8);
    v313 = (v312 & 0xFFFFFFFFFFFFFFFCLL);
    if (v312)
    {
      v313 = *v313;
    }

    v311 = sub_18640AC(v313);
    *(a1 + 672) = v311;
  }

  if (*(a2 + 672))
  {
    v314 = *(a2 + 672);
  }

  else
  {
    v314 = &off_27864F0;
  }

  sub_1804DC4(v311, v314);
  if ((v262 & 0x2000) == 0)
  {
LABEL_674:
    if ((v262 & 0x4000) == 0)
    {
      goto LABEL_675;
    }

    goto LABEL_725;
  }

LABEL_717:
  *(a1 + 48) |= 0x2000u;
  v315 = *(a1 + 680);
  if (!v315)
  {
    v316 = *(a1 + 8);
    v317 = (v316 & 0xFFFFFFFFFFFFFFFCLL);
    if (v316)
    {
      v317 = *v317;
    }

    v315 = sub_1860B24(v317);
    *(a1 + 680) = v315;
  }

  if (*(a2 + 680))
  {
    v318 = *(a2 + 680);
  }

  else
  {
    v318 = &off_27841B0;
  }

  sub_17D855C(v315, v318);
  if ((v262 & 0x4000) == 0)
  {
LABEL_675:
    if ((v262 & 0x8000) == 0)
    {
      goto LABEL_741;
    }

    goto LABEL_733;
  }

LABEL_725:
  *(a1 + 48) |= 0x4000u;
  v319 = *(a1 + 688);
  if (!v319)
  {
    v320 = *(a1 + 8);
    v321 = (v320 & 0xFFFFFFFFFFFFFFFCLL);
    if (v320)
    {
      v321 = *v321;
    }

    v319 = sub_1862E68(v321);
    *(a1 + 688) = v319;
  }

  if (*(a2 + 688))
  {
    v322 = *(a2 + 688);
  }

  else
  {
    v322 = &off_2785B48;
  }

  sub_1804ED4(v319, v322);
  if ((v262 & 0x8000) != 0)
  {
LABEL_733:
    *(a1 + 48) |= 0x8000u;
    v323 = *(a1 + 696);
    if (!v323)
    {
      v324 = *(a1 + 8);
      v325 = (v324 & 0xFFFFFFFFFFFFFFFCLL);
      if (v324)
      {
        v325 = *v325;
      }

      v323 = sub_18604F4(v325);
      *(a1 + 696) = v323;
    }

    if (*(a2 + 696))
    {
      v326 = *(a2 + 696);
    }

    else
    {
      v326 = &off_2783E40;
    }

    sub_17D02FC(v323, v326);
  }

LABEL_741:
  if ((v262 & 0xFF0000) == 0)
  {
    goto LABEL_815;
  }

  if ((v262 & 0x10000) != 0)
  {
    *(a1 + 48) |= 0x10000u;
    v327 = *(a1 + 704);
    if (!v327)
    {
      v328 = *(a1 + 8);
      v329 = (v328 & 0xFFFFFFFFFFFFFFFCLL);
      if (v328)
      {
        v329 = *v329;
      }

      v327 = sub_186073C(v329);
      *(a1 + 704) = v327;
    }

    if (*(a2 + 704))
    {
      v330 = *(a2 + 704);
    }

    else
    {
      v330 = &off_2783F50;
    }

    sub_17D2778(v327, v330);
    if ((v262 & 0x20000) == 0)
    {
LABEL_744:
      if ((v262 & 0x40000) == 0)
      {
        goto LABEL_745;
      }

      goto LABEL_767;
    }
  }

  else if ((v262 & 0x20000) == 0)
  {
    goto LABEL_744;
  }

  *(a1 + 48) |= 0x20000u;
  v331 = *(a1 + 712);
  if (!v331)
  {
    v332 = *(a1 + 8);
    v333 = (v332 & 0xFFFFFFFFFFFFFFFCLL);
    if (v332)
    {
      v333 = *v333;
    }

    v331 = sub_1860810(v333);
    *(a1 + 712) = v331;
  }

  if (*(a2 + 712))
  {
    v334 = *(a2 + 712);
  }

  else
  {
    v334 = &off_2783FB8;
  }

  sub_17D32D8(v331, v334);
  if ((v262 & 0x40000) == 0)
  {
LABEL_745:
    if ((v262 & 0x80000) == 0)
    {
      goto LABEL_746;
    }

    goto LABEL_775;
  }

LABEL_767:
  *(a1 + 48) |= 0x40000u;
  v335 = *(a1 + 720);
  if (!v335)
  {
    v336 = *(a1 + 8);
    v337 = (v336 & 0xFFFFFFFFFFFFFFFCLL);
    if (v336)
    {
      v337 = *v337;
    }

    v335 = sub_1863F20(v337);
    *(a1 + 720) = v335;
  }

  if (*(a2 + 720))
  {
    v338 = *(a2 + 720);
  }

  else
  {
    v338 = &off_27863E8;
  }

  sub_1805038(v335, v338);
  if ((v262 & 0x80000) == 0)
  {
LABEL_746:
    if ((v262 & 0x100000) == 0)
    {
      goto LABEL_747;
    }

    goto LABEL_783;
  }

LABEL_775:
  *(a1 + 48) |= 0x80000u;
  v339 = *(a1 + 728);
  if (!v339)
  {
    v340 = *(a1 + 8);
    v341 = (v340 & 0xFFFFFFFFFFFFFFFCLL);
    if (v340)
    {
      v341 = *v341;
    }

    v339 = sub_1866C60(v341);
    *(a1 + 728) = v339;
  }

  if (*(a2 + 728))
  {
    v342 = *(a2 + 728);
  }

  else
  {
    v342 = &off_2787970;
  }

  sub_1805170(v339, v342);
  if ((v262 & 0x100000) == 0)
  {
LABEL_747:
    if ((v262 & 0x200000) == 0)
    {
      goto LABEL_748;
    }

    goto LABEL_791;
  }

LABEL_783:
  *(a1 + 48) |= 0x100000u;
  v343 = *(a1 + 736);
  if (!v343)
  {
    v344 = *(a1 + 8);
    v345 = (v344 & 0xFFFFFFFFFFFFFFFCLL);
    if (v344)
    {
      v345 = *v345;
    }

    v343 = sub_185EF98(v345);
    *(a1 + 736) = v343;
  }

  if (*(a2 + 736))
  {
    v346 = *(a2 + 736);
  }

  else
  {
    v346 = &off_27833D0;
  }

  sub_17BAA78(v343, v346);
  if ((v262 & 0x200000) == 0)
  {
LABEL_748:
    if ((v262 & 0x400000) == 0)
    {
      goto LABEL_749;
    }

    goto LABEL_799;
  }

LABEL_791:
  *(a1 + 48) |= 0x200000u;
  v347 = *(a1 + 744);
  if (!v347)
  {
    v348 = *(a1 + 8);
    v349 = (v348 & 0xFFFFFFFFFFFFFFFCLL);
    if (v348)
    {
      v349 = *v349;
    }

    v347 = sub_1860D7C(v349);
    *(a1 + 744) = v347;
  }

  if (*(a2 + 744))
  {
    v350 = *(a2 + 744);
  }

  else
  {
    v350 = &off_2784320;
  }

  sub_17DAF5C(v347, v350);
  if ((v262 & 0x400000) == 0)
  {
LABEL_749:
    if ((v262 & 0x800000) == 0)
    {
      goto LABEL_815;
    }

    goto LABEL_807;
  }

LABEL_799:
  *(a1 + 48) |= 0x400000u;
  v351 = *(a1 + 752);
  if (!v351)
  {
    v352 = *(a1 + 8);
    v353 = (v352 & 0xFFFFFFFFFFFFFFFCLL);
    if (v352)
    {
      v353 = *v353;
    }

    v351 = sub_18605C8(v353);
    *(a1 + 752) = v351;
  }

  if (*(a2 + 752))
  {
    v354 = *(a2 + 752);
  }

  else
  {
    v354 = &off_2783EA0;
  }

  sub_17D162C(v351, v354);
  if ((v262 & 0x800000) != 0)
  {
LABEL_807:
    *(a1 + 48) |= 0x800000u;
    v355 = *(a1 + 760);
    if (!v355)
    {
      v356 = *(a1 + 8);
      v357 = (v356 & 0xFFFFFFFFFFFFFFFCLL);
      if (v356)
      {
        v357 = *v357;
      }

      v355 = sub_1865A94(v357);
      *(a1 + 760) = v355;
    }

    if (*(a2 + 760))
    {
      v358 = *(a2 + 760);
    }

    else
    {
      v358 = &off_2787070;
    }

    sub_180522C(v355, v358);
  }

LABEL_815:
  if (!HIBYTE(v262))
  {
    goto LABEL_889;
  }

  if ((v262 & 0x1000000) != 0)
  {
    *(a1 + 48) |= 0x1000000u;
    v359 = *(a1 + 768);
    if (!v359)
    {
      v360 = *(a1 + 8);
      v361 = (v360 & 0xFFFFFFFFFFFFFFFCLL);
      if (v360)
      {
        v361 = *v361;
      }

      v359 = sub_1866DD4(v361);
      *(a1 + 768) = v359;
    }

    if (*(a2 + 768))
    {
      v362 = *(a2 + 768);
    }

    else
    {
      v362 = &off_2787A20;
    }

    sub_180543C(v359, v362);
    if ((v262 & 0x2000000) == 0)
    {
LABEL_818:
      if ((v262 & 0x4000000) == 0)
      {
        goto LABEL_819;
      }

      goto LABEL_841;
    }
  }

  else if ((v262 & 0x2000000) == 0)
  {
    goto LABEL_818;
  }

  *(a1 + 48) |= 0x2000000u;
  v363 = *(a1 + 776);
  if (!v363)
  {
    v364 = *(a1 + 8);
    v365 = (v364 & 0xFFFFFFFFFFFFFFFCLL);
    if (v364)
    {
      v365 = *v365;
    }

    v363 = sub_185F06C(v365);
    *(a1 + 776) = v363;
  }

  if (*(a2 + 776))
  {
    v366 = *(a2 + 776);
  }

  else
  {
    v366 = &off_2783450;
  }

  sub_17BB5D0(v363, v366);
  if ((v262 & 0x4000000) == 0)
  {
LABEL_819:
    if ((v262 & 0x8000000) == 0)
    {
      goto LABEL_820;
    }

    goto LABEL_849;
  }

LABEL_841:
  *(a1 + 48) |= 0x4000000u;
  v367 = *(a1 + 784);
  if (!v367)
  {
    v368 = *(a1 + 8);
    v369 = (v368 & 0xFFFFFFFFFFFFFFFCLL);
    if (v368)
    {
      v369 = *v369;
    }

    v367 = sub_1864C18(v369);
    *(a1 + 784) = v367;
  }

  if (*(a2 + 784))
  {
    v370 = *(a2 + 784);
  }

  else
  {
    v370 = &off_2786A68;
  }

  sub_1805530(v367, v370);
  if ((v262 & 0x8000000) == 0)
  {
LABEL_820:
    if ((v262 & 0x10000000) == 0)
    {
      goto LABEL_821;
    }

    goto LABEL_857;
  }

LABEL_849:
  *(a1 + 48) |= 0x8000000u;
  v371 = *(a1 + 792);
  if (!v371)
  {
    v372 = *(a1 + 8);
    v373 = (v372 & 0xFFFFFFFFFFFFFFFCLL);
    if (v372)
    {
      v373 = *v373;
    }

    v371 = sub_18639F4(v373);
    *(a1 + 792) = v371;
  }

  if (*(a2 + 792))
  {
    v374 = *(a2 + 792);
  }

  else
  {
    v374 = &off_27861A0;
  }

  sub_1805668(v371, v374);
  if ((v262 & 0x10000000) == 0)
  {
LABEL_821:
    if ((v262 & 0x20000000) == 0)
    {
      goto LABEL_822;
    }

    goto LABEL_865;
  }

LABEL_857:
  *(a1 + 48) |= 0x10000000u;
  v375 = *(a1 + 800);
  if (!v375)
  {
    v376 = *(a1 + 8);
    v377 = (v376 & 0xFFFFFFFFFFFFFFFCLL);
    if (v376)
    {
      v377 = *v377;
    }

    v375 = sub_1863030(v377);
    *(a1 + 800) = v375;
  }

  if (*(a2 + 800))
  {
    v378 = *(a2 + 800);
  }

  else
  {
    v378 = &off_2785C60;
  }

  sub_18057BC(v375, v378);
  if ((v262 & 0x20000000) == 0)
  {
LABEL_822:
    if ((v262 & 0x40000000) == 0)
    {
      goto LABEL_823;
    }

    goto LABEL_873;
  }

LABEL_865:
  *(a1 + 48) |= 0x20000000u;
  v379 = *(a1 + 808);
  if (!v379)
  {
    v380 = *(a1 + 8);
    v381 = (v380 & 0xFFFFFFFFFFFFFFFCLL);
    if (v380)
    {
      v381 = *v381;
    }

    v379 = sub_18630E8(v381);
    *(a1 + 808) = v379;
  }

  if (*(a2 + 808))
  {
    v382 = *(a2 + 808);
  }

  else
  {
    v382 = &off_2785CF0;
  }

  sub_1805990(v379, v382);
  if ((v262 & 0x40000000) == 0)
  {
LABEL_823:
    if ((v262 & 0x80000000) == 0)
    {
      goto LABEL_889;
    }

    goto LABEL_881;
  }

LABEL_873:
  *(a1 + 48) |= 0x40000000u;
  v383 = *(a1 + 816);
  if (!v383)
  {
    v384 = *(a1 + 8);
    v385 = (v384 & 0xFFFFFFFFFFFFFFFCLL);
    if (v384)
    {
      v385 = *v385;
    }

    v383 = sub_1863600(v385);
    *(a1 + 816) = v383;
  }

  if (*(a2 + 816))
  {
    v386 = *(a2 + 816);
  }

  else
  {
    v386 = &off_2785FC8;
  }

  sub_1805A44(v383, v386);
  if ((v262 & 0x80000000) != 0)
  {
LABEL_881:
    *(a1 + 48) |= 0x80000000;
    v387 = *(a1 + 824);
    if (!v387)
    {
      v388 = *(a1 + 8);
      v389 = (v388 & 0xFFFFFFFFFFFFFFFCLL);
      if (v388)
      {
        v389 = *v389;
      }

      v387 = sub_1860C80(v389);
      *(a1 + 824) = v387;
    }

    if (*(a2 + 824))
    {
      v390 = *(a2 + 824);
    }

    else
    {
      v390 = &off_27842B8;
    }

    sub_17DA0D4(v387, v390);
  }

LABEL_889:
  v391 = *(a2 + 52);
  if (!v391)
  {
    goto LABEL_963;
  }

  if (v391)
  {
    *(a1 + 52) |= 1u;
    v392 = *(a1 + 832);
    if (!v392)
    {
      v393 = *(a1 + 8);
      v394 = (v393 & 0xFFFFFFFFFFFFFFFCLL);
      if (v393)
      {
        v394 = *v394;
      }

      v392 = sub_18631A0(v394);
      *(a1 + 832) = v392;
    }

    if (*(a2 + 832))
    {
      v395 = *(a2 + 832);
    }

    else
    {
      v395 = &off_2785D58;
    }

    sub_1805BC4(v392, v395);
    if ((v391 & 2) == 0)
    {
LABEL_892:
      if ((v391 & 4) == 0)
      {
        goto LABEL_893;
      }

      goto LABEL_915;
    }
  }

  else if ((v391 & 2) == 0)
  {
    goto LABEL_892;
  }

  *(a1 + 52) |= 2u;
  v396 = *(a1 + 840);
  if (!v396)
  {
    v397 = *(a1 + 8);
    v398 = (v397 & 0xFFFFFFFFFFFFFFFCLL);
    if (v397)
    {
      v398 = *v398;
    }

    v396 = sub_1863258(v398);
    *(a1 + 840) = v396;
  }

  if (*(a2 + 840))
  {
    v399 = *(a2 + 840);
  }

  else
  {
    v399 = &off_2785DD8;
  }

  sub_1805CE0(v396, v399);
  if ((v391 & 4) == 0)
  {
LABEL_893:
    if ((v391 & 8) == 0)
    {
      goto LABEL_894;
    }

    goto LABEL_923;
  }

LABEL_915:
  *(a1 + 52) |= 4u;
  v400 = *(a1 + 848);
  if (!v400)
  {
    v401 = *(a1 + 8);
    v402 = (v401 & 0xFFFFFFFFFFFFFFFCLL);
    if (v401)
    {
      v402 = *v402;
    }

    v400 = sub_1863310(v402);
    *(a1 + 848) = v400;
  }

  if (*(a2 + 848))
  {
    v403 = *(a2 + 848);
  }

  else
  {
    v403 = &off_2785E88;
  }

  sub_1805E7C(v400, v403);
  if ((v391 & 8) == 0)
  {
LABEL_894:
    if ((v391 & 0x10) == 0)
    {
      goto LABEL_895;
    }

    goto LABEL_931;
  }

LABEL_923:
  *(a1 + 52) |= 8u;
  v404 = *(a1 + 856);
  if (!v404)
  {
    v405 = *(a1 + 8);
    v406 = (v405 & 0xFFFFFFFFFFFFFFFCLL);
    if (v405)
    {
      v406 = *v406;
    }

    v404 = sub_18633C8(v406);
    *(a1 + 856) = v404;
  }

  if (*(a2 + 856))
  {
    v407 = *(a2 + 856);
  }

  else
  {
    v407 = &off_2785F00;
  }

  sub_14B7610(v404, v407);
  if ((v391 & 0x10) == 0)
  {
LABEL_895:
    if ((v391 & 0x20) == 0)
    {
      goto LABEL_896;
    }

    goto LABEL_939;
  }

LABEL_931:
  *(a1 + 52) |= 0x10u;
  v408 = *(a1 + 864);
  if (!v408)
  {
    v409 = *(a1 + 8);
    v410 = (v409 & 0xFFFFFFFFFFFFFFFCLL);
    if (v409)
    {
      v410 = *v410;
    }

    v408 = sub_1865C68(v410);
    *(a1 + 864) = v408;
  }

  if (*(a2 + 864))
  {
    v411 = *(a2 + 864);
  }

  else
  {
    v411 = &off_2787188;
  }

  sub_1805F90(v408, v411);
  if ((v391 & 0x20) == 0)
  {
LABEL_896:
    if ((v391 & 0x40) == 0)
    {
      goto LABEL_897;
    }

    goto LABEL_947;
  }

LABEL_939:
  *(a1 + 52) |= 0x20u;
  v412 = *(a1 + 872);
  if (!v412)
  {
    v413 = *(a1 + 8);
    v414 = (v413 & 0xFFFFFFFFFFFFFFFCLL);
    if (v413)
    {
      v414 = *v414;
    }

    v412 = sub_1863480(v414);
    *(a1 + 872) = v412;
  }

  if (*(a2 + 872))
  {
    v415 = *(a2 + 872);
  }

  else
  {
    v415 = &off_2785F68;
  }

  sub_1659F1C(v412, v415);
  if ((v391 & 0x40) == 0)
  {
LABEL_897:
    if ((v391 & 0x80) == 0)
    {
      goto LABEL_963;
    }

    goto LABEL_955;
  }

LABEL_947:
  *(a1 + 52) |= 0x40u;
  v416 = *(a1 + 880);
  if (!v416)
  {
    v417 = *(a1 + 8);
    v418 = (v417 & 0xFFFFFFFFFFFFFFFCLL);
    if (v417)
    {
      v418 = *v418;
    }

    v416 = sub_185FAFC(v418);
    *(a1 + 880) = v416;
  }

  if (*(a2 + 880))
  {
    v419 = *(a2 + 880);
  }

  else
  {
    v419 = &off_27839A8;
  }

  sub_17C6740(v416, v419);
  if ((v391 & 0x80) != 0)
  {
LABEL_955:
    *(a1 + 52) |= 0x80u;
    v420 = *(a1 + 888);
    if (!v420)
    {
      v421 = *(a1 + 8);
      v422 = (v421 & 0xFFFFFFFFFFFFFFFCLL);
      if (v421)
      {
        v422 = *v422;
      }

      v420 = sub_185FC98(v422);
      *(a1 + 888) = v420;
    }

    if (*(a2 + 888))
    {
      v423 = *(a2 + 888);
    }

    else
    {
      v423 = &off_27839F0;
    }

    sub_17C7344(v420, v423);
  }

LABEL_963:
  if ((v391 & 0x700) == 0)
  {
    goto LABEL_992;
  }

  if ((v391 & 0x100) != 0)
  {
    *(a1 + 52) |= 0x100u;
    v424 = *(a1 + 896);
    if (!v424)
    {
      v425 = *(a1 + 8);
      v426 = (v425 & 0xFFFFFFFFFFFFFFFCLL);
      if (v425)
      {
        v426 = *v426;
      }

      v424 = sub_1864164(v426);
      *(a1 + 896) = v424;
    }

    if (*(a2 + 896))
    {
      v427 = *(a2 + 896);
    }

    else
    {
      v427 = &off_2786560;
    }

    sub_1805990(v424, v427);
    if ((v391 & 0x200) == 0)
    {
LABEL_966:
      if ((v391 & 0x400) == 0)
      {
        goto LABEL_992;
      }

      goto LABEL_984;
    }
  }

  else if ((v391 & 0x200) == 0)
  {
    goto LABEL_966;
  }

  *(a1 + 52) |= 0x200u;
  v428 = *(a1 + 904);
  if (!v428)
  {
    v429 = *(a1 + 8);
    v430 = (v429 & 0xFFFFFFFFFFFFFFFCLL);
    if (v429)
    {
      v430 = *v430;
    }

    v428 = sub_1865D20(v430);
    *(a1 + 904) = v428;
  }

  if (*(a2 + 904))
  {
    v431 = *(a2 + 904);
  }

  else
  {
    v431 = &off_2787238;
  }

  sub_1806058(v428, v431);
  if ((v391 & 0x400) != 0)
  {
LABEL_984:
    *(a1 + 52) |= 0x400u;
    v432 = *(a1 + 912);
    if (!v432)
    {
      v433 = *(a1 + 8);
      v434 = (v433 & 0xFFFFFFFFFFFFFFFCLL);
      if (v433)
      {
        v434 = *v434;
      }

      v432 = sub_18637E0(v434);
      *(a1 + 912) = v432;
    }

    if (*(a2 + 912))
    {
      v435 = *(a2 + 912);
    }

    else
    {
      v435 = &off_2786070;
    }

    sub_1806120(v432, v435);
  }

LABEL_992:
  sub_225EA0C(a1 + 16, a2 + 16);
  v436 = *(a2 + 8);
  if (v436)
  {

    sub_1957EF4((a1 + 8), (v436 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1802D4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1942A68((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1942AF4((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1942B80((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B326C((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  if (*(a2 + 40))
  {
    v24 = *(a2 + 144);
    *(a1 + 40) |= 1u;
    *(a1 + 144) = v24;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((a1 + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1802F44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_194792C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_19479B8((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0x3F) != 0)
  {
    if (v14)
    {
      *(a1 + 40) |= 1u;
      v16 = *(a1 + 96);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_1929630(v18);
        *(a1 + 96) = v16;
      }

      if (*(a2 + 96))
      {
        v19 = *(a2 + 96);
      }

      else
      {
        v19 = &off_278BDC8;
      }

      sub_1920E90(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_36;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 40) |= 2u;
    v20 = *(a1 + 104);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_192996C(v22);
      *(a1 + 104) = v20;
    }

    if (*(a2 + 104))
    {
      v23 = *(a2 + 104);
    }

    else
    {
      v23 = &off_278C0D0;
    }

    sub_1920FF8(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_44;
    }

LABEL_36:
    *(a1 + 40) |= 4u;
    v24 = *(a1 + 112);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_1929500(v26);
      *(a1 + 112) = v24;
    }

    if (*(a2 + 112))
    {
      v27 = *(a2 + 112);
    }

    else
    {
      v27 = &off_278BD20;
    }

    sub_19210F8(v24, v27);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(a1 + 120) = *(a2 + 120);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
LABEL_15:
        *(a1 + 40) |= v14;
        goto LABEL_16;
      }

LABEL_14:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_15;
    }

LABEL_45:
    *(a1 + 124) = *(a2 + 124);
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18031A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_19474D0((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v11 = *(a1 + 72);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_155A57C(v13);
        *(a1 + 72) = v11;
      }

      if (*(a2 + 72))
      {
        v14 = *(a2 + 72);
      }

      else
      {
        v14 = &off_27771C8;
      }

      sub_1554CF0(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(a1 + 40) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 88) = *(a2 + 88);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 40) |= 2u;
    v15 = *(a1 + 80);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_155A8BC(v17);
      *(a1 + 80) = v15;
    }

    if (*(a2 + 80))
    {
      v18 = *(a2 + 80);
    }

    else
    {
      v18 = &off_2777350;
    }

    sub_1558F14(v15, v18);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1803330(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v5 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v8 = *(a1 + 32);
      if (!v8)
      {
        v9 = *(a1 + 8);
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_191FB08(v10);
        *(a1 + 32) = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_278BBB8;
      }

      sub_191D8FC(v8, v11);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_191FB08(v14);
        *(a1 + 40) = v12;
      }

      if (*(a2 + 40))
      {
        v15 = *(a2 + 40);
      }

      else
      {
        v15 = &off_278BBB8;
      }

      sub_191D8FC(v12, v15);
    }
  }

  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((a1 + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1803460(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193E67C((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1803528(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193E708((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18035F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193DA38((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_185D55C(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_2782358;
      }

      sub_17983D8(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 40) |= 2u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_185D940(v16);
        *(a1 + 80) = v14;
      }

      if (*(a2 + 80))
      {
        v17 = *(a2 + 80);
      }

      else
      {
        v17 = &off_2782768;
      }

      sub_179E8C0(v14, v17);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_180375C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13EC520((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 0x3F) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v11 = *(a1 + 72);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_16F5A54(v13);
        *(a1 + 72) = v11;
      }

      if (*(a2 + 72))
      {
        v14 = *(a2 + 72);
      }

      else
      {
        v14 = &off_277E6F0;
      }

      sub_12F5A34(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_33;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 40) |= 2u;
    v15 = *(a1 + 80);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_16F5A54(v17);
      *(a1 + 80) = v15;
    }

    if (*(a2 + 80))
    {
      v18 = *(a2 + 80);
    }

    else
    {
      v18 = &off_277E6F0;
    }

    sub_12F5A34(v15, v18);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_41;
    }

LABEL_33:
    *(a1 + 40) |= 4u;
    v19 = *(a1 + 88);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_185F7E4(v21);
      *(a1 + 88) = v19;
    }

    if (*(a2 + 88))
    {
      v22 = *(a2 + 88);
    }

    else
    {
      v22 = &off_2783848;
    }

    sub_13F0A84(v19, v22);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 96) = *(a2 + 96);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
LABEL_12:
        *(a1 + 40) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_12;
    }

LABEL_42:
    *(a1 + 104) = *(a2 + 104);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1803954(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B326C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B326C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_166F898((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_193DAC4((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B326C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 176);
  if (v29)
  {
    v30 = *(a2 + 184);
    v31 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_13B6038((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 200);
  if (v34)
  {
    v35 = *(a2 + 208);
    v36 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_13B326C((a1 + 192), v36, (v35 + 8), v34, **(a1 + 208) - *(a1 + 200));
    v37 = *(a1 + 200) + v34;
    *(a1 + 200) = v37;
    v38 = *(a1 + 208);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 224);
  if (v39)
  {
    v40 = *(a2 + 232);
    v41 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_13B326C((a1 + 216), v41, (v40 + 8), v39, **(a1 + 232) - *(a1 + 224));
    v42 = *(a1 + 224) + v39;
    *(a1 + 224) = v42;
    v43 = *(a1 + 232);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 248);
  if (v44)
  {
    v45 = *(a2 + 256);
    v46 = sub_19592E8(a1 + 240, *(a2 + 248));
    sub_193DB50((a1 + 240), v46, (v45 + 8), v44, **(a1 + 256) - *(a1 + 248));
    v47 = *(a1 + 248) + v44;
    *(a1 + 248) = v47;
    v48 = *(a1 + 256);
    if (*v48 < v47)
    {
      *v48 = v47;
    }
  }

  v49 = *(a2 + 272);
  if (v49)
  {
    v50 = *(a2 + 280);
    v51 = sub_19592E8(a1 + 264, *(a2 + 272));
    sub_13B326C((a1 + 264), v51, (v50 + 8), v49, **(a1 + 280) - *(a1 + 272));
    v52 = *(a1 + 272) + v49;
    *(a1 + 272) = v52;
    v53 = *(a1 + 280);
    if (*v53 < v52)
    {
      *v53 = v52;
    }
  }

  v54 = *(a2 + 296);
  if (v54)
  {
    v55 = *(a2 + 304);
    v56 = sub_19592E8(a1 + 288, *(a2 + 296));
    sub_13B326C((a1 + 288), v56, (v55 + 8), v54, **(a1 + 304) - *(a1 + 296));
    v57 = *(a1 + 296) + v54;
    *(a1 + 296) = v57;
    v58 = *(a1 + 304);
    if (*v58 < v57)
    {
      *v58 = v57;
    }
  }

  v59 = *(a2 + 320);
  if (v59)
  {
    v60 = *(a2 + 328);
    v61 = sub_19592E8(a1 + 312, *(a2 + 320));
    sub_13B326C((a1 + 312), v61, (v60 + 8), v59, **(a1 + 328) - *(a1 + 320));
    v62 = *(a1 + 320) + v59;
    *(a1 + 320) = v62;
    v63 = *(a1 + 328);
    if (*v63 < v62)
    {
      *v63 = v62;
    }
  }

  v64 = *(a2 + 344);
  if (v64)
  {
    v65 = *(a2 + 352);
    v66 = sub_19592E8(a1 + 336, *(a2 + 344));
    sub_13B326C((a1 + 336), v66, (v65 + 8), v64, **(a1 + 352) - *(a1 + 344));
    v67 = *(a1 + 344) + v64;
    *(a1 + 344) = v67;
    v68 = *(a1 + 352);
    if (*v68 < v67)
    {
      *v68 = v67;
    }
  }

  v69 = *(a2 + 368);
  if (v69)
  {
    v70 = *(a2 + 376);
    v71 = sub_19592E8(a1 + 360, *(a2 + 368));
    sub_13B326C((a1 + 360), v71, (v70 + 8), v69, **(a1 + 376) - *(a1 + 368));
    v72 = *(a1 + 368) + v69;
    *(a1 + 368) = v72;
    v73 = *(a1 + 376);
    if (*v73 < v72)
    {
      *v73 = v72;
    }
  }

  v74 = *(a2 + 392);
  if (v74)
  {
    v75 = *(a2 + 400);
    v76 = sub_19592E8(a1 + 384, *(a2 + 392));
    sub_193DBCC((a1 + 384), v76, (v75 + 8), v74, **(a1 + 400) - *(a1 + 392));
    v77 = *(a1 + 392) + v74;
    *(a1 + 392) = v77;
    v78 = *(a1 + 400);
    if (*v78 < v77)
    {
      *v78 = v77;
    }
  }

  v79 = *(a2 + 416);
  if (v79)
  {
    v80 = *(a2 + 424);
    v81 = sub_19592E8(a1 + 408, *(a2 + 416));
    sub_166F898((a1 + 408), v81, (v80 + 8), v79, **(a1 + 424) - *(a1 + 416));
    v82 = *(a1 + 416) + v79;
    *(a1 + 416) = v82;
    v83 = *(a1 + 424);
    if (*v83 < v82)
    {
      *v83 = v82;
    }
  }

  v84 = *(a2 + 440);
  if (v84)
  {
    v85 = *(a2 + 448);
    v86 = sub_19592E8(a1 + 432, *(a2 + 440));
    sub_13B326C((a1 + 432), v86, (v85 + 8), v84, **(a1 + 448) - *(a1 + 440));
    v87 = *(a1 + 440) + v84;
    *(a1 + 440) = v87;
    v88 = *(a1 + 448);
    if (*v88 < v87)
    {
      *v88 = v87;
    }
  }

  v89 = *(a2 + 40);
  if (v89)
  {
    if (v89)
    {
      v90 = *(a2 + 456);
      *(a1 + 40) |= 1u;
      v91 = *(a1 + 8);
      v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
      if (v91)
      {
        v92 = *v92;
      }

      sub_194EA1C((a1 + 456), (v90 & 0xFFFFFFFFFFFFFFFELL), v92);
    }

    if ((v89 & 2) != 0)
    {
      v93 = *(a2 + 464);
      *(a1 + 40) |= 2u;
      v94 = *(a1 + 8);
      v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
      if (v94)
      {
        v95 = *v95;
      }

      sub_194EA1C((a1 + 464), (v93 & 0xFFFFFFFFFFFFFFFELL), v95);
    }

    if ((v89 & 4) != 0)
    {
      *(a1 + 40) |= 4u;
      v97 = *(a1 + 472);
      if (!v97)
      {
        v98 = *(a1 + 8);
        v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
        if (v98)
        {
          v99 = *v99;
        }

        v97 = sub_191BA60(v99);
        *(a1 + 472) = v97;
      }

      if (*(a2 + 472))
      {
        v100 = *(a2 + 472);
      }

      else
      {
        v100 = &off_278B870;
      }

      sub_17A8DBC(v97, v100);
      if ((v89 & 8) == 0)
      {
LABEL_63:
        if ((v89 & 0x10) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_95;
      }
    }

    else if ((v89 & 8) == 0)
    {
      goto LABEL_63;
    }

    *(a1 + 40) |= 8u;
    v101 = *(a1 + 480);
    if (!v101)
    {
      v102 = *(a1 + 8);
      v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
      if (v102)
      {
        v103 = *v103;
      }

      v101 = sub_191BA60(v103);
      *(a1 + 480) = v101;
    }

    if (*(a2 + 480))
    {
      v104 = *(a2 + 480);
    }

    else
    {
      v104 = &off_278B870;
    }

    sub_17A8DBC(v101, v104);
    if ((v89 & 0x10) == 0)
    {
LABEL_64:
      if ((v89 & 0x20) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_103;
    }

LABEL_95:
    *(a1 + 40) |= 0x10u;
    v105 = *(a1 + 488);
    if (!v105)
    {
      v106 = *(a1 + 8);
      v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
      if (v106)
      {
        v107 = *v107;
      }

      v105 = sub_1866190(v107);
      *(a1 + 488) = v105;
    }

    if (*(a2 + 488))
    {
      v108 = *(a2 + 488);
    }

    else
    {
      v108 = &off_27873F8;
    }

    sub_1804308(v105, v108);
    if ((v89 & 0x20) == 0)
    {
LABEL_65:
      if ((v89 & 0x40) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_111;
    }

LABEL_103:
    *(a1 + 40) |= 0x20u;
    v109 = *(a1 + 496);
    if (!v109)
    {
      v110 = *(a1 + 8);
      v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
      if (v110)
      {
        v111 = *v111;
      }

      v109 = sub_1860AC8(v111);
      *(a1 + 496) = v109;
    }

    if (*(a2 + 496))
    {
      v112 = *(a2 + 496);
    }

    else
    {
      v112 = &off_2784138;
    }

    sub_17D7460(v109, v112);
    if ((v89 & 0x40) == 0)
    {
LABEL_66:
      if ((v89 & 0x80) == 0)
      {
LABEL_68:
        *(a1 + 40) |= v89;
        goto LABEL_69;
      }

LABEL_67:
      *(a1 + 512) = *(a2 + 512);
      goto LABEL_68;
    }

LABEL_111:
    *(a1 + 504) = *(a2 + 504);
    if ((v89 & 0x80) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_69:
  if ((v89 & 0x300) != 0)
  {
    if ((v89 & 0x100) != 0)
    {
      *(a1 + 516) = *(a2 + 516);
    }

    if ((v89 & 0x200) != 0)
    {
      *(a1 + 520) = *(a2 + 520);
    }

    *(a1 + 40) |= v89;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v96 = *(a2 + 8);
  if (v96)
  {

    sub_1957EF4((a1 + 8), (v96 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18041E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B6038((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v10 + v9);
    v11 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v11 + 4 * v10), *(a2 + 80), 4 * *(a2 + 72));
  }

  if (*(a2 + 40))
  {
    v12 = *(a2 + 88);
    *(a1 + 40) |= 1u;
    *(a1 + 88) = v12;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804308(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B6038((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B326C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0x1F) != 0)
  {
    if (v14)
    {
      *(a1 + 40) |= 1u;
      v16 = *(a1 + 96);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_191BA60(v18);
        *(a1 + 96) = v16;
      }

      if (*(a2 + 96))
      {
        v19 = *(a2 + 96);
      }

      else
      {
        v19 = &off_278B870;
      }

      sub_17A8DBC(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_35;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 40) |= 2u;
    v20 = *(a1 + 104);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_1860AC8(v22);
      *(a1 + 104) = v20;
    }

    if (*(a2 + 104))
    {
      v23 = *(a2 + 104);
    }

    else
    {
      v23 = &off_2784138;
    }

    sub_17D7460(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(a1 + 40) |= 4u;
    v24 = *(a1 + 112);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5A54(v26);
      *(a1 + 112) = v24;
    }

    if (*(a2 + 112))
    {
      v27 = *(a2 + 112);
    }

    else
    {
      v27 = &off_277E6F0;
    }

    sub_12F5A34(v24, v27);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
LABEL_14:
        *(a1 + 40) |= v14;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 124) = *(a2 + 124);
      goto LABEL_14;
    }

LABEL_43:
    *(a1 + 120) = *(a2 + 120);
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804554(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193DF90((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_1201B48(a1 + 64, v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804678(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_166F898((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B326C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_13B326C((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_193DB50((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B326C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 40);
  if ((v29 & 0x1F) != 0)
  {
    if (v29)
    {
      v31 = *(a2 + 168);
      *(a1 + 40) |= 1u;
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_194EA1C((a1 + 168), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
      if ((v29 & 2) == 0)
      {
LABEL_19:
        if ((v29 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_39;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 40) |= 2u;
    v34 = *(a1 + 176);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_191BA60(v36);
      *(a1 + 176) = v34;
    }

    if (*(a2 + 176))
    {
      v37 = *(a2 + 176);
    }

    else
    {
      v37 = &off_278B870;
    }

    sub_17A8DBC(v34, v37);
    if ((v29 & 4) == 0)
    {
LABEL_20:
      if ((v29 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(a1 + 40) |= 4u;
    v38 = *(a1 + 184);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_1861C30(v40);
      *(a1 + 184) = v38;
    }

    if (*(a2 + 184))
    {
      v41 = *(a2 + 184);
    }

    else
    {
      v41 = &off_2784940;
    }

    sub_17E9AD0(v38, v41);
    if ((v29 & 8) == 0)
    {
LABEL_21:
      if ((v29 & 0x10) == 0)
      {
LABEL_23:
        *(a1 + 40) |= v29;
        goto LABEL_24;
      }

LABEL_22:
      *(a1 + 193) = *(a2 + 193);
      goto LABEL_23;
    }

LABEL_47:
    *(a1 + 192) = *(a2 + 192);
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  sub_225EA0C(a1 + 16, a2 + 16);
  v30 = *(a2 + 8);
  if (v30)
  {

    sub_1957EF4((a1 + 8), (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18049C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_13B6038((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_1804A88(std::string *result, uint64_t a2)
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
      v3[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_18:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v12 = v3[1].__r_.__value_.__r.__words[2];
    if (!v12)
    {
      v13 = v3->__r_.__value_.__l.__size_;
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_16F5884(v14);
      v3[1].__r_.__value_.__r.__words[2] = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_277E630;
    }

    result = sub_128F8FC(v12, v15);
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

void sub_1804BD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1680F40((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804C8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193D3A8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_1860AC8(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_2784138;
      }

      sub_17D7460(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804DC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 3) != 0)
  {
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

        v5 = sub_191BA60(v7);
        *(a1 + 48) = v5;
      }

      if (*(a2 + 48))
      {
        v8 = *(a2 + 48);
      }

      else
      {
        v8 = &off_278B870;
      }

      sub_17A8DBC(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
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

        sub_14BAE64(v11);
        *(a1 + 56) = v9;
      }

      if (*(a2 + 56))
      {
        v12 = *(a2 + 56);
      }

      else
      {
        v12 = &off_2771738;
      }

      sub_144EF20(v9, v12);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804ED4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_24;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

LABEL_13:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) != 0)
  {
LABEL_16:
    *(a1 + 16) |= 8u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_186117C(v16);
      *(a1 + 48) = v14;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &off_2784458;
    }

    sub_17DEBF8(v14, v17);
  }

LABEL_24:
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805038(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193DF04((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_1863EA8(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_27863C8;
      }

      sub_128F8FC(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805170(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_193E810((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_180522C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B326C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_193E3D0((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0xF) == 0)
  {
    goto LABEL_25;
  }

  if ((v14 & 1) == 0)
  {
    if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v18 = *(a2 + 104);
    *(a1 + 40) |= 2u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 104), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v15 = *(a2 + 96);
  *(a1 + 40) |= 1u;
  v16 = *(a1 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  sub_194EA1C((a1 + 96), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
  if ((v14 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v14 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  v21 = *(a2 + 112);
  *(a1 + 40) |= 4u;
  v22 = *(a1 + 8);
  v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
  if (v22)
  {
    v23 = *v23;
  }

  sub_194EA1C((a1 + 112), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
  if ((v14 & 8) != 0)
  {
LABEL_22:
    v24 = *(a2 + 120);
    *(a1 + 40) |= 8u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 120), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
  }

LABEL_25:
  sub_225EA0C(a1 + 16, a2 + 16);
  v27 = *(a2 + 8);
  if (v27)
  {

    sub_1957EF4((a1 + 8), (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_180543C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_193E89C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805530(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193E098((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_1864A9C(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_27869A0;
      }

      sub_128F948(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805668(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193DDEC((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B6038((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      *(a1 + 96) = *(a2 + 96);
    }

    if ((v14 & 2) != 0)
    {
      *(a1 + 100) = *(a2 + 100);
    }

    *(a1 + 40) |= v14;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18057BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x3F) != 0)
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

        v6 = sub_16F5A54(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_277E6F0;
      }

      sub_12F5A34(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_30;
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

      v10 = sub_16F5A54(v12);
      *(a1 + 56) = v10;
    }

    if (*(a2 + 56))
    {
      v13 = *(a2 + 56);
    }

    else
    {
      v13 = &off_277E6F0;
    }

    sub_12F5A34(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 40) |= 4u;
    v14 = *(a1 + 64);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_16F5A54(v16);
      *(a1 + 64) = v14;
    }

    if (*(a2 + 64))
    {
      v17 = *(a2 + 64);
    }

    else
    {
      v17 = &off_277E6F0;
    }

    sub_12F5A34(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 40) |= 8u;
    v18 = *(a1 + 72);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_185F924(v20);
      *(a1 + 72) = v18;
    }

    if (*(a2 + 72))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = &off_27838B0;
    }

    sub_179AFF4(v18, v21);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 40) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 84) = *(a2 + 84);
      goto LABEL_9;
    }

LABEL_46:
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805990(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 48);
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

      v5 = sub_191BA60(v7);
      *(a1 + 48) = v5;
      v4 = *(a2 + 48);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_278B870;
    }

    sub_17A8DBC(v5, v8);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805A44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48(a1 + 40, v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_13118C0((a1 + 64), v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a2 + 104);
    v16 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_13118C0((a1 + 88), v16, (v15 + 8), v14, **(a1 + 104) - *(a1 + 96));
    v17 = *(a1 + 96) + v14;
    *(a1 + 96) = v17;
    v18 = *(a1 + 104);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805BC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B6038((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 40))
  {
    v9 = *(a2 + 72);
    *(a1 + 40) |= 1u;
    v10 = *(a1 + 72);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_191BA60(v12);
      *(a1 + 72) = v10;
      v9 = *(a2 + 72);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_278B870;
    }

    sub_17A8DBC(v10, v13);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805CE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B6038((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B6038((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_13B6038((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  if (*(a2 + 40))
  {
    v19 = *(a2 + 120);
    *(a1 + 40) |= 1u;
    *(a1 + 120) = v19;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805E7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x1F) != 0)
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

        sub_14BAE64(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_2771738;
      }

      sub_144EF20(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 60) = *(a2 + 60);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 40) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 68) = *(a2 + 68);
      goto LABEL_8;
    }

LABEL_23:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805F90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193E4D8((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1806058(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193E564((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1806120(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48(a1 + 40, v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_193DCD4((a1 + 64), v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1806244(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_17F8280(a1);

    sub_1800AF0(a1, a2);
  }
}

uint64_t sub_1806290(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    result = sub_1798CE8(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 2) != 0)
  {
    result = sub_179EAF4(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 4) != 0)
  {
    v4 = *(a1 + 80);
    v5 = *(v4 + 24);
    while (v5 >= 1)
    {
      v6 = v5 - 1;
      v7 = sub_16F0144(*(*(v4 + 32) + 8 * v5));
      v5 = v6;
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 8) != 0)
  {
    result = sub_17A0860(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x10) != 0)
  {
    result = sub_17A27EC(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x20) != 0)
  {
    result = sub_195228C(*(a1 + 104) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x40) != 0)
  {
    result = sub_17BEEB8(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x80) != 0)
  {
    result = sub_195228C(*(a1 + 120) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_17C34A0(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x200) != 0)
  {
    result = sub_17B2F64(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x400) != 0)
  {
    result = sub_17AB0F0(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x800) != 0)
  {
    result = sub_17C9334(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x1000) != 0)
  {
    result = sub_195228C(*(a1 + 160) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x2000) != 0)
  {
    result = sub_195228C(*(a1 + 168) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x4000) != 0)
  {
    result = sub_17CD580(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x8000) != 0)
  {
    result = sub_144F674(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x10000) != 0)
  {
    v8 = *(a1 + 192);
    v9 = *(v8 + 24);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_1416118(*(*(v8 + 32) + 8 * v9));
      result = 0;
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x20000) != 0)
  {
    result = sub_12B329C(*(a1 + 200) + 24);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x40000) != 0)
  {
    result = sub_195228C(*(a1 + 208) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x80000) != 0)
  {
    result = sub_17D501C(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x100000) != 0)
  {
    result = sub_195228C(*(a1 + 224) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x200000) != 0)
  {
    result = sub_195228C(*(a1 + 232) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x400000) != 0)
  {
    result = sub_17D78EC(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x800000) != 0)
  {
    result = sub_17B0BA8(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = sub_17DBD24(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x4000000) != 0)
  {
    result = sub_17E33E4(*(a1 + 272));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x8000000) != 0)
  {
    result = sub_195228C(*(a1 + 280) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x10000000) != 0)
  {
    result = sub_195228C(*(a1 + 288) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x40000000) != 0)
  {
    result = sub_17A63A8(*(a1 + 304));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if (v3 < 0)
  {
    result = sub_17C09EC(*(a1 + 312));
    if (!result)
    {
      return result;
    }
  }

  v12 = *(a1 + 44);
  if ((v12 & 4) != 0)
  {
    result = sub_17E8B40(*(a1 + 336));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 8) != 0)
  {
    result = sub_17EA704(*(a1 + 344));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x10) != 0)
  {
    result = sub_195228C(*(a1 + 352) + 16);
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x20) != 0)
  {
    result = sub_17EB5B0(*(a1 + 360));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x100) != 0)
  {
    v13 = *(a1 + 384);
    if ((*(v13 + 16) & 2) != 0)
    {
      result = sub_16E5370(*(v13 + 32));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 44);
    }
  }

  if ((v12 & 0x800) != 0)
  {
    result = sub_1806BA8(*(a1 + 408));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x2000) != 0)
  {
    result = sub_17E59C8(*(a1 + 424));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x8000) != 0)
  {
    result = sub_17C7E60(*(a1 + 440));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x10000) != 0)
  {
    result = sub_195228C(*(a1 + 448) + 16);
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x20000) != 0)
  {
    result = sub_1393714(*(a1 + 456));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x40000) != 0)
  {
    result = sub_195228C(*(a1 + 464) + 16);
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x100000) != 0)
  {
    result = sub_179D2B8(*(a1 + 480));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x200000) != 0)
  {
    result = sub_17F2290(*(a1 + 488));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x400000) != 0)
  {
    result = sub_1806C78(*(a1 + 496));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x800000) == 0)
  {
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_142;
  }

  v14 = *(a1 + 504);
  result = sub_195228C(v14 + 16);
  if (!result)
  {
    return result;
  }

  result = sub_185208C(v14 + 40);
  if (!result)
  {
    return result;
  }

  v12 = *(a1 + 44);
  if ((v12 & 0x1000000) != 0)
  {
LABEL_142:
    result = sub_1806D18(*(a1 + 512));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

LABEL_147:
  if ((v12 & 0x2000000) != 0)
  {
    result = sub_14180F4(*(a1 + 520));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x4000000) != 0)
  {
    result = sub_1806D84(*(a1 + 528));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x8000000) != 0)
  {
    result = sub_1806E08(*(a1 + 536));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x10000000) != 0)
  {
    result = sub_1806E7C(*(a1 + 544));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x20000000) != 0)
  {
    result = sub_1806FA0(*(a1 + 552));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x40000000) != 0)
  {
    result = sub_17B60FC(*(a1 + 560));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if (v12 < 0)
  {
    result = sub_17B6934(*(a1 + 568));
    if (!result)
    {
      return result;
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    result = sub_195228C(*(a1 + 576) + 16);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 2) != 0)
  {
    result = sub_1393714(*(a1 + 584));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 4) != 0)
  {
    result = sub_1807008(*(a1 + 592));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 8) == 0)
  {
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_178;
  }

  v16 = *(a1 + 600);
  result = sub_195228C(v16 + 16);
  if (!result)
  {
    return result;
  }

  result = sub_182EE00(v16 + 40);
  if (!result)
  {
    return result;
  }

  v15 = *(a1 + 48);
  if ((v15 & 0x10) != 0)
  {
LABEL_178:
    result = sub_174C680(*(a1 + 608));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

LABEL_183:
  if ((v15 & 0x20) != 0)
  {
    result = sub_18070D8(*(a1 + 616));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x40) != 0)
  {
    result = sub_1807160(*(a1 + 624));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x80) != 0)
  {
    v17 = *(a1 + 632);
    if ((*(v17 + 16) & 4) != 0)
    {
      result = sub_16E5890(*(v17 + 40));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 48);
    }
  }

  if ((v15 & 0x100) != 0)
  {
    result = sub_17CD580(*(a1 + 640));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x200) != 0)
  {
    result = sub_17B8318(*(a1 + 648));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x400) != 0)
  {
    v18 = *(a1 + 656);
    v19 = *(v18 + 24);
    while (v19 >= 1)
    {
      v20 = v19 - 1;
      v21 = sub_195228C(*(*(v18 + 32) + 8 * v19) + 16);
      result = 0;
      v19 = v20;
      if ((v21 & 1) == 0)
      {
        return result;
      }
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x800) != 0)
  {
    result = sub_1807254(*(a1 + 664));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x1000) != 0)
  {
    result = sub_18072A4(*(a1 + 672));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x2000) != 0)
  {
    result = sub_17D86D8(*(a1 + 680));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x4000) != 0)
  {
    v22 = *(a1 + 688);
    if ((*(v22 + 16) & 8) != 0)
    {
      result = sub_17DEE14(*(v22 + 48));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 48);
    }
  }

  if ((v15 & 0x8000) != 0)
  {
    result = sub_195228C(*(a1 + 696) + 16);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x10000) != 0)
  {
    v23 = *(a1 + 704);
    result = sub_195228C(v23 + 16);
    if (!result)
    {
      return result;
    }

    result = sub_160938C(v23 + 48);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_228;
    }
  }

  else if ((v15 & 0x20000) == 0)
  {
    goto LABEL_228;
  }

  result = sub_195228C(*(a1 + 712) + 16);
  if (!result)
  {
    return result;
  }

  v15 = *(a1 + 48);
LABEL_228:
  if ((v15 & 0x40000) != 0)
  {
    result = sub_180732C(*(a1 + 720));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x80000) != 0)
  {
    v24 = *(a1 + 728);
    v25 = *(v24 + 24);
    while (v25 >= 1)
    {
      v26 = v25 - 1;
      v27 = sub_195228C(*(*(v24 + 32) + 8 * v25) + 16);
      result = 0;
      v25 = v26;
      if ((v27 & 1) == 0)
      {
        return result;
      }
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x100000) != 0)
  {
    result = sub_17BABB8(*(a1 + 736));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x200000) != 0)
  {
    result = sub_17DB074(*(a1 + 744));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x400000) != 0)
  {
    result = sub_195228C(*(a1 + 752) + 16);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x800000) != 0)
  {
    result = sub_18073F0(*(a1 + 760));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x1000000) != 0)
  {
    v28 = *(a1 + 768);
    v29 = *(v28 + 32);
    while (v29 >= 1)
    {
      v30 = v29 - 1;
      v31 = sub_185C9CC(*(*(v28 + 40) + 8 * v29));
      result = 0;
      v29 = v30;
      if ((v31 & 1) == 0)
      {
        return result;
      }
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x2000000) != 0)
  {
    result = sub_195228C(*(a1 + 776) + 16);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x4000000) != 0)
  {
    result = sub_18074B0(*(a1 + 784));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x8000000) != 0)
  {
    result = sub_180751C(*(a1 + 792));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x10000000) != 0)
  {
    result = sub_18075A8(*(a1 + 800));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x20000000) != 0)
  {
    result = sub_18075F0(*(a1 + 808));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x40000000) != 0)
  {
    result = sub_195228C(*(a1 + 816) + 16);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x80000000) == 0 || (result = sub_17DA188(*(a1 + 824)), result))
  {
    v32 = *(a1 + 52);
    if (v32)
    {
      result = sub_180763C(*(a1 + 832));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 2) != 0)
    {
      result = sub_18076AC(*(a1 + 840));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 4) != 0)
    {
      result = sub_1807760(*(a1 + 848));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 8) != 0)
    {
      result = sub_195228C(*(a1 + 856) + 16);
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 0x10) != 0)
    {
      result = sub_18077AC(*(a1 + 864));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 0x100) != 0)
    {
      result = sub_1807818(*(a1 + 896));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 0x200) != 0)
    {
      result = sub_180785C(*(a1 + 904));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 0x400) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 912) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1806BA8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1447C10(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 80);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_1922250(*(*(a1 + 88) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      result = sub_1921188(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 2) != 0)
    {
      result = sub_195228C(*(a1 + 104) + 16);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 4) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 112) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1806C78(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_195228C(*(a1 + 32) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = sub_195228C(*(a1 + 40) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1806CCC(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {

    return sub_185208C(a1 + 40);
  }

  return result;
}

BOOL sub_1806D18(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_195228C(*(*(a1 + 56) + 8 * v2) + 16);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_1806D84(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1806E08(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      result = sub_1798CE8(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 40);
    }

    if ((v6 & 2) == 0)
    {
      return 1;
    }

    result = sub_179EAF4(*(a1 + 80));
    if (result)
    {
      return 1;
    }
  }

  return result;
}