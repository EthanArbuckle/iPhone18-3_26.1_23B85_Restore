uint64_t sub_10003FB40(uint64_t a1)
{
  v2 = sub_1000605A4(a1 + 16);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = sub_1000469CC(a1 + 56, v5);
      v7 = *(v6 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v6 + 8);
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      ++v5;
    }

    while (v3 != v5);
  }

  v8 = *(a1 + 88);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_1000469CC(a1 + 80, v10);
      v12 = *(v11 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v10;
    }

    while (v8 != v10);
  }

  v13 = *(a1 + 112);
  v14 = v9 + 2 * v13;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = sub_1000469CC(a1 + 104, v15);
      v17 = *(v16 + 23);
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v16 + 8);
      }

      v14 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      ++v15;
    }

    while (v13 != v15);
  }

  v18 = *(a1 + 136);
  v19 = v14 + 2 * v18;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = sub_1000469CC(a1 + 128, v20);
      v22 = *(v21 + 23);
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v21 + 8);
      }

      v19 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      ++v20;
    }

    while (v18 != v20);
  }

  v23 = *(a1 + 40);
  if (!v23)
  {
    goto LABEL_33;
  }

  if (v23)
  {
    v58 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    v59 = *(v58 + 23);
    v60 = *(v58 + 8);
    if ((v59 & 0x80u) == 0)
    {
      v60 = v59;
    }

    v19 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_24:
      if ((v23 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_131;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_24;
  }

  v61 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  v62 = *(v61 + 23);
  v63 = *(v61 + 8);
  if ((v62 & 0x80u) == 0)
  {
    v63 = v62;
  }

  v19 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
LABEL_25:
    if ((v23 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_134;
  }

LABEL_131:
  v64 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v19 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 8) == 0)
  {
LABEL_26:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_137;
  }

LABEL_134:
  v67 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v68 = *(v67 + 23);
  v69 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v69 = v68;
  }

  v19 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x10) == 0)
  {
LABEL_27:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_140:
    v73 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
    v74 = *(v73 + 23);
    v75 = *(v73 + 8);
    if ((v74 & 0x80u) == 0)
    {
      v75 = v74;
    }

    v19 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x40) == 0)
    {
LABEL_29:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    goto LABEL_143;
  }

LABEL_137:
  v70 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v19 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_140;
  }

LABEL_28:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_143:
  v76 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
  v77 = *(v76 + 23);
  v78 = *(v76 + 8);
  if ((v77 & 0x80u) == 0)
  {
    v78 = v77;
  }

  v19 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x80) != 0)
  {
LABEL_30:
    v24 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v19 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_50;
  }

  if ((v23 & 0x100) != 0)
  {
    v79 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    v80 = *(v79 + 23);
    v81 = *(v79 + 8);
    if ((v80 & 0x80u) == 0)
    {
      v81 = v80;
    }

    v19 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x200) == 0)
    {
LABEL_36:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_154;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_36;
  }

  v82 = *(a1 + 224);
  v83 = ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v82 >= 0)
  {
    v84 = v83;
  }

  else
  {
    v84 = 11;
  }

  v19 += v84;
  if ((v23 & 0x400) == 0)
  {
LABEL_37:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_38;
    }

LABEL_158:
    v19 += ((9 * (__clz(*(a1 + 232) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v23 & 0x1000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

LABEL_154:
  v85 = *(a1 + 228);
  v86 = ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v85 >= 0)
  {
    v87 = v86;
  }

  else
  {
    v87 = 11;
  }

  v19 += v87;
  if ((v23 & 0x800) != 0)
  {
    goto LABEL_158;
  }

LABEL_38:
  if ((v23 & 0x1000) != 0)
  {
LABEL_39:
    v27 = *(a1 + 240);
    v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v27 >= 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 11;
    }

    v19 += v29;
  }

LABEL_43:
  v30 = v19 + 3;
  if ((v23 & 0x2000) == 0)
  {
    v30 = v19;
  }

  if ((v23 & 0x4000) != 0)
  {
    v30 += 3;
  }

  if ((v23 & 0x8000) != 0)
  {
    v19 = v30 + 3;
  }

  else
  {
    v19 = v30;
  }

LABEL_50:
  if ((v23 & 0xFF0000) != 0)
  {
    v31 = v19 + 3;
    if ((v23 & 0x10000) == 0)
    {
      v31 = v19;
    }

    if ((v23 & 0x20000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x40000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x80000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x100000) != 0)
    {
      v32 = *(a1 + 252);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 12;
      }

      v31 += v34;
    }

    if ((v23 & 0x200000) != 0)
    {
      v19 = v31 + 6;
    }

    else
    {
      v19 = v31;
    }

    if ((v23 & 0x400000) != 0)
    {
      v19 += ((9 * (__clz(*(a1 + 264) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v23 & 0x800000) != 0)
    {
      v35 = *(a1 + 272);
      v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v35 >= 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 11;
      }

      v19 += v37;
    }
  }

  if (!HIBYTE(v23))
  {
    goto LABEL_94;
  }

  if ((v23 & 0x1000000) != 0)
  {
    v38 = *(a1 + 276);
    v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v38 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 11;
    }

    v19 += v40;
  }

  v41 = v19 + 5;
  if ((v23 & 0x2000000) == 0)
  {
    v41 = v19;
  }

  if ((v23 & 0x4000000) != 0)
  {
    v42 = *(a1 + 284);
    v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v42 >= 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 11;
    }

    v41 += v44;
  }

  if ((v23 & 0x8000000) != 0)
  {
    v19 = v41 + 5;
  }

  else
  {
    v19 = v41;
  }

  if ((v23 & 0x10000000) == 0)
  {
    if ((v23 & 0x20000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_164:
    v91 = *(a1 + 296);
    v92 = ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v91 >= 0)
    {
      v93 = v92;
    }

    else
    {
      v93 = 12;
    }

    v19 += v93;
    if ((v23 & 0x40000000) == 0)
    {
LABEL_93:
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_172;
    }

    goto LABEL_168;
  }

  v88 = *(a1 + 292);
  v89 = ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v88 >= 0)
  {
    v90 = v89;
  }

  else
  {
    v90 = 12;
  }

  v19 += v90;
  if ((v23 & 0x20000000) != 0)
  {
    goto LABEL_164;
  }

LABEL_92:
  if ((v23 & 0x40000000) == 0)
  {
    goto LABEL_93;
  }

LABEL_168:
  v94 = *(a1 + 300);
  v95 = ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v94 >= 0)
  {
    v96 = v95;
  }

  else
  {
    v96 = 12;
  }

  v19 += v96;
  if ((v23 & 0x80000000) != 0)
  {
LABEL_172:
    v97 = *(a1 + 304);
    v98 = ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v97 >= 0)
    {
      v99 = v98;
    }

    else
    {
      v99 = 12;
    }

    v19 += v99;
  }

LABEL_94:
  v45 = *(a1 + 44);
  if (v45)
  {
    v46 = v19 + 3;
    if ((v45 & 1) == 0)
    {
      v46 = v19;
    }

    if ((v45 & 2) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 4) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 8) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x10) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x20) != 0)
    {
      v19 = v46 + 3;
    }

    else
    {
      v19 = v46;
    }

    if ((v45 & 0x40) != 0)
    {
      v47 = *(a1 + 316);
      v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v47 >= 0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 12;
      }

      v19 += v49;
    }

    if ((v45 & 0x80) != 0)
    {
      v50 = *(a1 + 320);
      v51 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v50 >= 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = 12;
      }

      v19 += v52;
    }
  }

  if ((v45 & 0x100) != 0)
  {
    v53 = *(a1 + 324);
    v54 = ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v53 >= 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 12;
    }

    v19 += v55;
  }

  v56 = *(a1 + 8);
  if (v56)
  {
    v100 = v56 & 0xFFFFFFFFFFFFFFFELL;
    v101 = *((v56 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v101 < 0)
    {
      v101 = *(v100 + 16);
    }

    v19 += v101;
  }

  *(a1 + 48) = v19;
  return v19;
}

uint64_t sub_1000403D0(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  {
    sub_10003D858();
  }

  return sub_100040458(a1, lpsrc);
}

uint64_t sub_100040458(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v36, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1671);
    v4 = sub_10004FD04(v36, "CHECK failed: (&from) != (this): ");
    sub_10004FE40(&v35, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v36);
  }

  sub_10008D64C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_10003CF68((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_100046C0C(a1 + 56, a2 + 56);
  sub_100046C0C(a1 + 80, a2 + 80);
  sub_100046C0C(a1 + 104, a2 + 104);
  result = sub_100046C0C(a1 + 128, a2 + 128);
  v14 = *(a2 + 40);
  if (!v14)
  {
    goto LABEL_47;
  }

  if (v14)
  {
    v15 = *(a2 + 152);
    *(a1 + 40) |= 1u;
    v16 = *(a1 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_10004C990((a1 + 152), (v15 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v14 & 2) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 160);
  *(a1 + 40) |= 2u;
  v18 = *(a1 + 8);
  if (v18)
  {
    v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_10004C990((a1 + 160), (v17 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v14 & 4) == 0)
  {
LABEL_17:
    if ((v14 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_29:
  v19 = *(a2 + 168);
  *(a1 + 40) |= 4u;
  v20 = *(a1 + 8);
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_10004C990((a1 + 168), (v19 & 0xFFFFFFFFFFFFFFFELL), v20);
  if ((v14 & 8) == 0)
  {
LABEL_18:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_32:
  v21 = *(a2 + 176);
  *(a1 + 40) |= 8u;
  v22 = *(a1 + 8);
  if (v22)
  {
    v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_10004C9B8((a1 + 176), (v21 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v14 & 0x10) == 0)
  {
LABEL_19:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_38:
    v25 = *(a2 + 192);
    *(a1 + 40) |= 0x20u;
    v26 = *(a1 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_10004C9B8((a1 + 192), (v25 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v14 & 0x40) == 0)
    {
LABEL_21:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_35:
  v23 = *(a2 + 184);
  *(a1 + 40) |= 0x10u;
  v24 = *(a1 + 8);
  if (v24)
  {
    v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_10004C9B8((a1 + 184), (v23 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_41:
  v27 = *(a2 + 200);
  *(a1 + 40) |= 0x40u;
  v28 = *(a1 + 8);
  if (v28)
  {
    v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_10004C9B8((a1 + 200), (v27 & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v14 & 0x80) != 0)
  {
LABEL_44:
    v29 = *(a2 + 208);
    *(a1 + 40) |= 0x80u;
    v30 = *(a1 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_10004C9B8((a1 + 208), (v29 & 0xFFFFFFFFFFFFFFFELL), v30);
  }

LABEL_47:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_58;
  }

  if ((v14 & 0x100) != 0)
  {
    v33 = *(a2 + 216);
    *(a1 + 40) |= 0x100u;
    v34 = *(a1 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_10004C990((a1 + 216), (v33 & 0xFFFFFFFFFFFFFFFELL), v34);
    if ((v14 & 0x200) == 0)
    {
LABEL_50:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_97;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  *(a1 + 224) = *(a2 + 224);
  if ((v14 & 0x400) == 0)
  {
LABEL_51:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(a1 + 228) = *(a2 + 228);
  if ((v14 & 0x800) == 0)
  {
LABEL_52:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(a1 + 232) = *(a2 + 232);
  if ((v14 & 0x1000) == 0)
  {
LABEL_53:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(a1 + 240) = *(a2 + 240);
  if ((v14 & 0x2000) == 0)
  {
LABEL_54:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

LABEL_101:
    *(a1 + 245) = *(a2 + 245);
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_100:
  *(a1 + 244) = *(a2 + 244);
  if ((v14 & 0x4000) != 0)
  {
    goto LABEL_101;
  }

LABEL_55:
  if ((v14 & 0x8000) != 0)
  {
LABEL_56:
    *(a1 + 246) = *(a2 + 246);
  }

LABEL_57:
  *(a1 + 40) |= v14;
LABEL_58:
  if ((v14 & 0xFF0000) == 0)
  {
    goto LABEL_69;
  }

  if ((v14 & 0x10000) != 0)
  {
    *(a1 + 247) = *(a2 + 247);
    if ((v14 & 0x20000) == 0)
    {
LABEL_61:
      if ((v14 & 0x40000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_105;
    }
  }

  else if ((v14 & 0x20000) == 0)
  {
    goto LABEL_61;
  }

  *(a1 + 248) = *(a2 + 248);
  if ((v14 & 0x40000) == 0)
  {
LABEL_62:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(a1 + 249) = *(a2 + 249);
  if ((v14 & 0x80000) == 0)
  {
LABEL_63:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(a1 + 250) = *(a2 + 250);
  if ((v14 & 0x100000) == 0)
  {
LABEL_64:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(a1 + 252) = *(a2 + 252);
  if ((v14 & 0x200000) == 0)
  {
LABEL_65:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

LABEL_109:
    *(a1 + 264) = *(a2 + 264);
    if ((v14 & 0x800000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_108:
  *(a1 + 256) = *(a2 + 256);
  if ((v14 & 0x400000) != 0)
  {
    goto LABEL_109;
  }

LABEL_66:
  if ((v14 & 0x800000) != 0)
  {
LABEL_67:
    *(a1 + 272) = *(a2 + 272);
  }

LABEL_68:
  *(a1 + 40) |= v14;
LABEL_69:
  if (!HIBYTE(v14))
  {
    goto LABEL_79;
  }

  if ((v14 & 0x1000000) != 0)
  {
    *(a1 + 276) = *(a2 + 276);
    if ((v14 & 0x2000000) == 0)
    {
LABEL_72:
      if ((v14 & 0x4000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_121;
    }
  }

  else if ((v14 & 0x2000000) == 0)
  {
    goto LABEL_72;
  }

  *(a1 + 280) = *(a2 + 280);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_73:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(a1 + 284) = *(a2 + 284);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_74:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(a1 + 288) = *(a2 + 288);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_75:
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(a1 + 292) = *(a2 + 292);
  if ((v14 & 0x20000000) == 0)
  {
LABEL_76:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_125:
    *(a1 + 300) = *(a2 + 300);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_126:
    *(a1 + 304) = *(a2 + 304);
    goto LABEL_78;
  }

LABEL_124:
  *(a1 + 296) = *(a2 + 296);
  if ((v14 & 0x40000000) != 0)
  {
    goto LABEL_125;
  }

LABEL_77:
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_78:
  *(a1 + 40) |= v14;
LABEL_79:
  v31 = *(a2 + 44);
  if (!v31)
  {
    goto LABEL_90;
  }

  if (v31)
  {
    *(a1 + 308) = *(a2 + 308);
    if ((v31 & 2) == 0)
    {
LABEL_82:
      if ((v31 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_113;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_82;
  }

  *(a1 + 309) = *(a2 + 309);
  if ((v31 & 4) == 0)
  {
LABEL_83:
    if ((v31 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(a1 + 310) = *(a2 + 310);
  if ((v31 & 8) == 0)
  {
LABEL_84:
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(a1 + 311) = *(a2 + 311);
  if ((v31 & 0x10) == 0)
  {
LABEL_85:
    if ((v31 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(a1 + 312) = *(a2 + 312);
  if ((v31 & 0x20) == 0)
  {
LABEL_86:
    if ((v31 & 0x40) == 0)
    {
      goto LABEL_87;
    }

LABEL_117:
    *(a1 + 316) = *(a2 + 316);
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_116:
  *(a1 + 313) = *(a2 + 313);
  if ((v31 & 0x40) != 0)
  {
    goto LABEL_117;
  }

LABEL_87:
  if ((v31 & 0x80) != 0)
  {
LABEL_88:
    *(a1 + 320) = *(a2 + 320);
  }

LABEL_89:
  *(a1 + 44) |= v31;
LABEL_90:
  if ((v31 & 0x100) != 0)
  {
    v32 = *(a2 + 324);
    *(a1 + 44) |= 0x100u;
    *(a1 + 324) = v32;
  }

  return result;
}

void sub_1000409B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000409CC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_10003E610(result);

    return sub_100040458(v4, a2);
  }

  return result;
}

float sub_100040A20(uint64_t a1, uint64_t a2)
{
  sub_10005A6F8(a1 + 16, a2 + 16);
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = sub_10003CF68((a2 + 8));
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_50;
    }

LABEL_5:
    v7 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
    if (v4)
    {
LABEL_6:
      v8 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 8;
LABEL_7:
      v9 = *(v8 + 16);
      v10 = *v8;
      v11 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v11;
      *v7 = v10;
      *(v7 + 16) = v9;
      goto LABEL_8;
    }

LABEL_50:
    v8 = sub_10003CF68((a1 + 8));
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v12;
  v13 = *(a1 + 44);
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = v13;
  sub_10003D500((a1 + 56), a2 + 56);
  sub_10003D500((a1 + 80), a2 + 80);
  sub_10003D500((a1 + 104), a2 + 104);
  sub_10003D500((a1 + 128), a2 + 128);
  v14 = *(a1 + 8);
  v15 = v14;
  if (v14)
  {
    v15 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 152) != &qword_1000B6A48 || *(a2 + 152) != &qword_1000B6A48)
  {
    v16 = sub_10004C9D8((a1 + 152), v15);
    v17 = sub_10004C9D8((a2 + 152), v15);
    v18 = v16[2];
    v19 = *v16;
    v20 = v17[2];
    *v16 = *v17;
    v16[2] = v20;
    *v17 = v19;
    v17[2] = v18;
    v14 = *v5;
  }

  v21 = v14 & 1;
  v22 = v14;
  if (v14)
  {
    v22 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 160) != &qword_1000B6A48 || *(a2 + 160) != &qword_1000B6A48)
  {
    v23 = sub_10004C9D8((a1 + 160), v22);
    v24 = sub_10004C9D8((a2 + 160), v22);
    v25 = v23[2];
    v26 = *v23;
    v27 = v24[2];
    *v23 = *v24;
    v23[2] = v27;
    *v24 = v26;
    v24[2] = v25;
    v14 = *v5;
    v21 = *v5 & 1;
  }

  if (v21)
  {
    v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 168) != &qword_1000B6A48 || *(a2 + 168) != &qword_1000B6A48)
  {
    v28 = sub_10004C9D8((a1 + 168), v14);
    v29 = sub_10004C9D8((a2 + 168), v14);
    v30 = v28[2];
    v31 = *v28;
    v32 = v29[2];
    *v28 = *v29;
    v28[2] = v32;
    *v29 = v31;
    v29[2] = v30;
  }

  v33 = *(a1 + 176);
  if (v33)
  {
    v34 = *(a2 + 176);
  }

  else
  {
    v34 = *(a2 + 176);
    if (!v34)
    {
      goto LABEL_27;
    }
  }

  *(a1 + 176) = v34;
  *(a2 + 176) = v33;
LABEL_27:
  v35 = *(a1 + 184);
  if (v35)
  {
    v36 = *(a2 + 184);
  }

  else
  {
    v36 = *(a2 + 184);
    if (!v36)
    {
      goto LABEL_31;
    }
  }

  *(a1 + 184) = v36;
  *(a2 + 184) = v35;
LABEL_31:
  v37 = *(a1 + 192);
  if (v37)
  {
    v38 = *(a2 + 192);
  }

  else
  {
    v38 = *(a2 + 192);
    if (!v38)
    {
      goto LABEL_35;
    }
  }

  *(a1 + 192) = v38;
  *(a2 + 192) = v37;
LABEL_35:
  v39 = *(a1 + 200);
  if (v39)
  {
    v40 = *(a2 + 200);
  }

  else
  {
    v40 = *(a2 + 200);
    if (!v40)
    {
      goto LABEL_39;
    }
  }

  *(a1 + 200) = v40;
  *(a2 + 200) = v39;
LABEL_39:
  v41 = *(a1 + 208);
  if (v41)
  {
    v42 = *(a2 + 208);
  }

  else
  {
    v42 = *(a2 + 208);
    if (!v42)
    {
      goto LABEL_43;
    }
  }

  *(a1 + 208) = v42;
  *(a2 + 208) = v41;
LABEL_43:
  v43 = *(a1 + 8);
  if (v43)
  {
    v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 216) != &qword_1000B6A48 || *(a2 + 216) != &qword_1000B6A48)
  {
    v44 = sub_10004C9D8((a1 + 216), v43);
    v45 = sub_10004C9D8((a2 + 216), v43);
    v46 = v44[2];
    v47 = *v44;
    v48 = v45[2];
    *v44 = *v45;
    v44[2] = v48;
    *v45 = v47;
    v45[2] = v46;
  }

  v49 = *(a1 + 224);
  v50 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v49;
  *(a2 + 232) = v50;
  v51 = *(a1 + 240);
  v52 = *(a1 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v51;
  *(a2 + 248) = v52;
  v53 = *(a1 + 256);
  v54 = *(a1 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = v53;
  *(a2 + 264) = v54;
  LODWORD(v53) = *(a1 + 272);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = v53;
  LODWORD(v53) = *(a1 + 276);
  *(a1 + 276) = *(a2 + 276);
  *(a2 + 276) = v53;
  v55 = *(a1 + 280);
  *(a1 + 280) = *(a2 + 280);
  *(a2 + 280) = v55;
  LODWORD(v53) = *(a1 + 284);
  *(a1 + 284) = *(a2 + 284);
  *(a2 + 284) = v53;
  result = *(a1 + 288);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = result;
  LODWORD(v53) = *(a1 + 292);
  *(a1 + 292) = *(a2 + 292);
  *(a2 + 292) = v53;
  LODWORD(v53) = *(a1 + 296);
  *(a1 + 296) = *(a2 + 296);
  *(a2 + 296) = v53;
  LODWORD(v53) = *(a1 + 300);
  *(a1 + 300) = *(a2 + 300);
  *(a2 + 300) = v53;
  LODWORD(v53) = *(a1 + 304);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 304) = v53;
  LOBYTE(v53) = *(a1 + 308);
  *(a1 + 308) = *(a2 + 308);
  *(a2 + 308) = v53;
  LOBYTE(v53) = *(a1 + 309);
  *(a1 + 309) = *(a2 + 309);
  *(a2 + 309) = v53;
  LOBYTE(v53) = *(a1 + 310);
  *(a1 + 310) = *(a2 + 310);
  *(a2 + 310) = v53;
  LOBYTE(v53) = *(a1 + 311);
  *(a1 + 311) = *(a2 + 311);
  *(a2 + 311) = v53;
  LOBYTE(v53) = *(a1 + 312);
  *(a1 + 312) = *(a2 + 312);
  *(a2 + 312) = v53;
  LOBYTE(v53) = *(a1 + 313);
  *(a1 + 313) = *(a2 + 313);
  *(a2 + 313) = v53;
  LODWORD(v53) = *(a1 + 316);
  *(a1 + 316) = *(a2 + 316);
  *(a2 + 316) = v53;
  LODWORD(v53) = *(a1 + 320);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 320) = v53;
  LODWORD(v53) = *(a1 + 324);
  *(a1 + 324) = *(a2 + 324);
  *(a2 + 324) = v53;
  return result;
}

uint64_t sub_100040EE0(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000AD7B0;
  *(a1 + 8) = a2;
  *(a1 + 16) = off_1000AD850;
  sub_100051448(a1 + 24, a2);
  *(a1 + 48) = 0;
  if (atomic_load_explicit(dword_1000B5820, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5820);
  }

  *(a1 + 56) = &qword_1000B6A48;
  *(a1 + 64) = &qword_1000B6A48;
  *(a1 + 72) = &qword_1000B6A48;
  *(a1 + 80) = 16843008;
  return a1;
}

uint64_t sub_100040FA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_1000AD7B0;
  *(a1 + 16) = off_1000AD850;
  *(a1 + 24) = 0;
  v5 = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = sub_10003CF68((a1 + 8));
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v8 >= 0)
    {
      v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v9, v10);
  }

  sub_10008D64C(v5, a2 + 24);
  *(a1 + 56) = &qword_1000B6A48;
  v11 = *(a2 + 48);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 48);
  }

  *(a1 + 64) = &qword_1000B6A48;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 48);
  }

  *(a1 + 72) = &qword_1000B6A48;
  if ((v11 & 4) != 0)
  {
    v14 = *v4;
    if (*v4)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v14);
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t sub_10004112C(uint64_t a1)
{
  sub_100041168(a1);
  sub_10003A468((a1 + 8));
  sub_100051530(a1 + 24);
  return a1;
}

uint64_t *sub_100041168(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1972);
    v3 = sub_10004FD04(v11, "CHECK failed: GetArena() == nullptr: ");
    sub_10004FE40(&v10, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

LABEL_4:
  if (*(a1 + 56) != &qword_1000B6A48)
  {
    v4 = sub_10003CD54((a1 + 56));
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  result = (a1 + 64);
  if (*(a1 + 64) != &qword_1000B6A48)
  {
    v6 = sub_10003CD54(result);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete();
  }

  v8 = *(a1 + 72);
  v7 = (a1 + 72);
  if (v8 != &qword_1000B6A48)
  {
    v9 = sub_10003CD54(v7);
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  return result;
}

void sub_1000412A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_1000412C8(uint64_t a1)
{
  sub_10004112C(a1);

  operator delete();
}

void sub_100041300(uint64_t a1)
{
  sub_10004112C(a1 - 16);

  operator delete();
}

void *sub_100041344()
{
  if (atomic_load_explicit(dword_1000B5820, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5820);
  }

  return &unk_1000B6860;
}

unsigned __int8 *sub_100041384(uint64_t a1)
{
  result = sub_100059758((a1 + 24));
  v3 = *(a1 + 48);
  if ((v3 & 7) != 0)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v4 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_17:
  if ((v3 & 0x78) != 0)
  {
    *(a1 + 80) = 16843008;
  }

  *(a1 + 48) = 0;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 31) < 0)
    {
      **(v8 + 8) = 0;
      *(v8 + 16) = 0;
    }

    else
    {
      *(v8 + 8) = 0;
      *(v8 + 31) = 0;
    }
  }

  return result;
}

uint64_t sub_100041494(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v41 = a2;
  v5 = 0;
  if ((sub_10003CE28(a3, v41, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v41 + 1);
      v8 = **v41;
      if ((**v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v21 = sub_10006E2E8(*v41, v9 - 128);
      *v41 = v21;
      if (!v21)
      {
        goto LABEL_76;
      }

      v7 = v21;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_57;
          }

          *(a1 + 48) |= 1u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 56);
LABEL_53:
          v28 = sub_10004C9D8(v24, v23);
          v29 = sub_10006E3A8(v28, *v41, a3);
          goto LABEL_54;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_57;
          }

          *(a1 + 48) |= 2u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 64);
          goto LABEL_53;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_57;
        }

        v5 |= 0x10u;
        v16 = v7 + 1;
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = v7 + 2;
LABEL_26:
          *v41 = v16;
          *(a1 + 81) = v15 != 0;
          goto LABEL_55;
        }

        v39 = sub_10006E2A0(v7, v15);
        *v41 = v39;
        *(a1 + 81) = v40 != 0;
        if (!v39)
        {
LABEL_76:
          *v41 = 0;
          goto LABEL_2;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(a1 + 48) |= 4u;
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = (a1 + 72);
            goto LABEL_53;
          }

LABEL_57:
          if (v8)
          {
            v30 = (v8 & 7) == 4;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x648)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v32 = (v31 & 0xFFFFFFFFFFFFFFFELL) + 8;
            }

            else
            {
              v32 = sub_10003CF68((a1 + 8));
              v7 = *v41;
            }

            v29 = sub_10006E88C(v8, v32, v7, a3);
          }

          else
          {
            v29 = sub_10005C01C((a1 + 24), v8, v7, &unk_1000B6860, (a1 + 8), a3);
          }

LABEL_54:
          *v41 = v29;
          if (!v29)
          {
            goto LABEL_76;
          }

          goto LABEL_55;
        }

        if (v10 != 200 || v8 != 64)
        {
          goto LABEL_57;
        }

        v5 |= 8u;
        v19 = v7 + 1;
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = v7 + 2;
LABEL_33:
          *v41 = v19;
          *(a1 + 80) = v18 != 0;
          goto LABEL_55;
        }

        v37 = sub_10006E2A0(v7, v18);
        *v41 = v37;
        *(a1 + 80) = v38 != 0;
        if (!v37)
        {
          goto LABEL_76;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_57;
        }

        v5 |= 0x20u;
        v26 = v7 + 1;
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = v7 + 2;
LABEL_44:
          *v41 = v26;
          *(a1 + 82) = v25 != 0;
          goto LABEL_55;
        }

        v33 = sub_10006E2A0(v7, v25);
        *v41 = v33;
        *(a1 + 82) = v34 != 0;
        if (!v33)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_57;
        }

        v5 |= 0x40u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_15:
          *v41 = v12;
          *(a1 + 83) = v11 != 0;
          goto LABEL_55;
        }

        v35 = sub_10006E2A0(v7, v11);
        *v41 = v35;
        *(a1 + 83) = v36 != 0;
        if (!v35)
        {
          goto LABEL_76;
        }
      }

LABEL_55:
      if (sub_10003CE28(a3, v41, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (*v41 + 2);
LABEL_6:
    *v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 48) |= v5;
  return *v41;
}

char *sub_10004188C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 48);
  if (v6)
  {
    v4 = sub_10003ABFC(a3, 1, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_10003ABFC(a3, 2, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_10004F000(a3, v4);
  }

  v7 = *(a1 + 81);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_10004F000(a3, v4);
  }

  v8 = *(a1 + 82);
  *v4 = 32;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_10004F000(a3, v4);
  }

  v9 = *(a1 + 83);
  *v4 = 40;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_10003ABFC(a3, 6, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_10004F000(a3, v4);
  }

  v10 = *(a1 + 80);
  *v4 = 3264;
  v4[2] = v10;
  v4 += 3;
LABEL_24:
  v11 = sub_10005D814(a1 + 24, 201, 0x20000000, v4, a3);
  v12 = v11;
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
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

  if ((*a3 - v11) >= v16)
  {
    v18 = v16;
    memcpy(v11, v17, v16);
    v12 += v18;
    return v12;
  }

  return sub_10004F118(a3, v17, v16, v11);
}

uint64_t sub_100041A9C(uint64_t a1)
{
  result = sub_1000605A4(a1 + 24);
  v3 = *(a1 + 48);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v12 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    result += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  result += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 4) != 0)
  {
LABEL_5:
    v4 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = result + 3;
  if ((v3 & 8) == 0)
  {
    v7 = result;
  }

  result = v7 + ((v3 >> 4) & 2) + ((v3 >> 3) & 2) + ((v3 >> 5) & 2);
LABEL_11:
  v8 = *(a1 + 8);
  if (v8)
  {
    v15 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v16 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 52) = result;
  return result;
}

void sub_100041BFC(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  {
    sub_10003D858();
  }

  sub_100041C84(a1, lpsrc);
}

void sub_100041C84(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2246);
    v4 = sub_10004FD04(v21, "CHECK failed: (&from) != (this): ");
    sub_10004FE40(&v20, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v21);
  }

  sub_10008D64C(a1 + 24, a2 + 24);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_10003CF68((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 48);
  if ((v13 & 0x7F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 56);
      *(a1 + 48) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_10004C990((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_30;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 64);
    *(a1 + 48) |= 2u;
    v17 = *(a1 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }

LABEL_30:
    v18 = *(a2 + 72);
    *(a1 + 48) |= 4u;
    v19 = *(a1 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 72), (v18 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(a1 + 80) = *(a2 + 80);
    if ((v13 & 0x10) == 0)
    {
LABEL_19:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 81) = *(a2 + 81);
    if ((v13 & 0x20) == 0)
    {
LABEL_20:
      if ((v13 & 0x40) == 0)
      {
LABEL_22:
        *(a1 + 48) |= v13;
        return;
      }

LABEL_21:
      *(a1 + 83) = *(a2 + 83);
      goto LABEL_22;
    }

LABEL_35:
    *(a1 + 82) = *(a2 + 82);
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }
}

void sub_100041E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100041E68(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_100041384(a1);

    sub_100041C84(a1, a2);
  }
}

uint64_t *sub_100041EBC(uint64_t a1, uint64_t a2)
{
  sub_10005A6F8(a1 + 24, a2 + 24);
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = sub_10003CF68((a2 + 8));
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_26:
      v10 = sub_10003CF68((a1 + 8));
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(a1 + 48);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 48) = v8;
    goto LABEL_9;
  }

  v9 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v10 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
LABEL_7:
  v11 = *(v10 + 16);
  v12 = *v10;
  v13 = *(v9 + 16);
  *v10 = *v9;
  *(v10 + 16) = v13;
  *v9 = v12;
  *(v9 + 16) = v11;
  v5 = *(a1 + 8);
  LODWORD(v11) = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  result = (a1 + 56);
  if (*(a1 + 56) != &qword_1000B6A48 || *(a2 + 56) != &qword_1000B6A48)
  {
    v16 = sub_10004C9D8(result, v14);
    result = sub_10004C9D8((a2 + 56), v14);
    v17 = v16[2];
    v18 = *v16;
    v19 = result[2];
    *v16 = *result;
    v16[2] = v19;
    *result = v18;
    result[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  v20 = v5;
  if (v7)
  {
    v20 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 64) != &qword_1000B6A48 || *(a2 + 64) != &qword_1000B6A48)
  {
    v21 = sub_10004C9D8((a1 + 64), v20);
    result = sub_10004C9D8((a2 + 64), v20);
    v22 = v21[2];
    v23 = *v21;
    v24 = result[2];
    *v21 = *result;
    v21[2] = v24;
    *result = v23;
    result[2] = v22;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 72) != &qword_1000B6A48 || *(a2 + 72) != &qword_1000B6A48)
  {
    v25 = sub_10004C9D8((a1 + 72), v5);
    result = sub_10004C9D8((a2 + 72), v5);
    v26 = v25[2];
    v27 = *v25;
    v28 = result[2];
    *v25 = *result;
    v25[2] = v28;
    *result = v27;
    result[2] = v26;
  }

  v29 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v29;
  v30 = *(a1 + 81);
  *(a1 + 81) = *(a2 + 81);
  *(a2 + 81) = v30;
  v31 = *(a1 + 82);
  *(a1 + 82) = *(a2 + 82);
  *(a2 + 82) = v31;
  v32 = *(a1 + 83);
  *(a1 + 83) = *(a2 + 83);
  *(a2 + 83) = v32;
  return result;
}

void *sub_100042140(void *a1, uint64_t a2)
{
  *a1 = off_1000AD890;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_1000B5858, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5858);
  }

  a1[3] = &qword_1000B6A48;
  a1[4] = &qword_1000B6A48;
  return a1;
}

uint64_t *sub_1000421B4(uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_1000AD890;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    v8 = sub_10003CF68(a1 + 1);
    v11 = *(v7 + 8);
    v10 = v7 + 8;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 8);
    }

    std::string::append(v8, v13, v14);
    v5 = *(a2 + 16);
  }

  a1[3] = &qword_1000B6A48;
  if (v5)
  {
    v15 = *v4;
    if (*v4)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990(a1 + 3, (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v15);
    v5 = *(a2 + 16);
  }

  a1[4] = &qword_1000B6A48;
  if ((v5 & 2) != 0)
  {
    v16 = *v4;
    if (*v4)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990(a1 + 4, (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v16);
  }

  return a1;
}

uint64_t sub_1000422B0(uint64_t a1)
{
  sub_1000422E4(a1);
  sub_10003A468((a1 + 8));
  return a1;
}

uint64_t *sub_1000422E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2362);
    v3 = sub_10004FD04(v10, "CHECK failed: GetArena() == nullptr: ");
    sub_10004FE40(&v9, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

LABEL_4:
  result = (a1 + 24);
  if (*(a1 + 24) != &qword_1000B6A48)
  {
    v5 = sub_10003CD54(result);
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  if (v7 != &qword_1000B6A48)
  {
    v8 = sub_10003CD54(v6);
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  return result;
}

void sub_1000423EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100042408(uint64_t a1)
{
  sub_1000422B0(a1);

  operator delete();
}

void *sub_100042448()
{
  if (atomic_load_explicit(dword_1000B5858, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5858);
  }

  return qword_1000B68B8;
}

uint64_t sub_100042488(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
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
  *(result + 16) = 0;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }

  return result;
}

uint64_t sub_100042524(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v20 = a2;
  for (i = a3[11].i32[1]; (sub_10003CE28(a3, v20, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v20 + 1);
    v7 = **v20;
    if ((**v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (*v20 + 2);
LABEL_6:
      *v20 = v6;
      goto LABEL_7;
    }

    v17 = sub_10006E2E8(*v20, v8 - 128);
    *v20 = v17;
    if (!v17)
    {
LABEL_34:
      *v20 = 0;
      return *v20;
    }

    v6 = v17;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = (a1 + 24);
LABEL_26:
      v16 = sub_10004C9D8(v15, v14);
      v13 = sub_10006E3A8(v16, *v20, a3);
      goto LABEL_27;
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
      a3[10].i32[0] = v7 - 1;
      return *v20;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFELL) + 8;
    }

    else
    {
      v12 = sub_10003CF68((a1 + 8));
      v6 = *v20;
    }

    v13 = sub_10006E88C(v7, v12, v6, a3);
LABEL_27:
    *v20 = v13;
    if (!v13)
    {
      goto LABEL_34;
    }
  }

  return *v20;
}

char *sub_1000426A8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_10003ABFC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_10003ABFC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
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

  if ((*a3 - v4) >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_10004F118(a3, v11, v10, v4);
}

uint64_t sub_100042790(uint64_t a1)
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
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_100042860(std::string *a1, char **lpsrc)
{
  v4 = **lpsrc;
  {
    sub_10003D858();
  }

  return sub_1000428E8(a1, lpsrc);
}

std::string *sub_1000428E8(std::string *result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2516);
    v4 = sub_10004FD04(v19, "CHECK failed: (&from) != (this): ");
    sub_10004FE40(&v18, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v19);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    size = v3->__r_.__value_.__l.__size_;
    if (size)
    {
      v9 = ((size & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_10003CF68(&v3->__r_.__value_.__l.__size_);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    result = std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 16);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 24);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v15 = v3->__r_.__value_.__l.__size_;
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = sub_10004C990(&v3[1], (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      v16 = *(a2 + 32);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v17 = v3->__r_.__value_.__l.__size_;
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      return sub_10004C990(&v3[1].__r_.__value_.__l.__size_, (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    }
  }

  return result;
}

void sub_100042A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

std::string *sub_100042A34(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_100042488(result);

    return sub_1000428E8(v4, a2);
  }

  return result;
}

__n128 sub_100042A88(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = sub_10003CF68((a2 + 8));
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_21:
      v10 = sub_10003CF68(v4);
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = v8;
    goto LABEL_9;
  }

  v9 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v10 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
  v11 = v10[1].n128_u64[0];
  result = *v10;
  v13 = *(v9 + 16);
  *v10 = *v9;
  v10[1].n128_u64[0] = v13;
  *v9 = result;
  *(v9 + 16) = v11;
  v5 = *(a1 + 8);
  LODWORD(v11) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  if (*(a1 + 24) != &qword_1000B6A48 || *(a2 + 24) != &qword_1000B6A48)
  {
    v15 = sub_10004C9D8((a1 + 24), v14);
    v16 = sub_10004C9D8((a2 + 24), v14);
    v17 = v15[1].n128_i64[0];
    result = *v15;
    v18 = v16[2];
    *v15 = *v16;
    v15[1].n128_u64[0] = v18;
    *v16 = result;
    v16[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 32) != &qword_1000B6A48 || *(a2 + 32) != &qword_1000B6A48)
  {
    v19 = sub_10004C9D8((a1 + 32), v5);
    v20 = sub_10004C9D8((a2 + 32), v5);
    v21 = v19[1].n128_i64[0];
    result = *v19;
    v22 = v20[2];
    *v19 = *v20;
    v19[1].n128_u64[0] = v22;
    *v20 = result;
    v20[2] = v21;
  }

  return result;
}

uint64_t sub_100042C50(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000AD910;
  *(a1 + 8) = a2;
  sub_100051448(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_1000B5838, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5838);
  }

  return a1;
}

void sub_100042CD0(_Unwind_Exception *a1)
{
  sub_100046E00(v2);
  sub_100051530(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_100042CF0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_1000AD910;
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  sub_100046EC0(a1 + 40, a2 + 40);
  *(a1 + 64) = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    if (*v4)
    {
      v7 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v7 = sub_10003CF68(v4);
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v8 >= 0)
    {
      v10 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v10, v11);
  }

  sub_10008D64C(v5, a2 + 16);
  return a1;
}

void sub_100042DC4(_Unwind_Exception *a1)
{
  sub_10003D264((v2 + 40));
  sub_100051530(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100042DF4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2589);
    v4 = sub_10004FD04(v7, "CHECK failed: GetArena() == nullptr: ");
    sub_10004FE40(&v6, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

LABEL_4:
  sub_10003A468(v3);
  sub_100046E00((a1 + 40));
  sub_100051530(a1 + 16);
  return a1;
}

void sub_100042E94(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  sub_10004BA50(a1);
}

void sub_100042EB8(uint64_t a1)
{
  sub_100042DF4(a1);

  operator delete();
}

void *sub_100042EF8()
{
  if (atomic_load_explicit(dword_1000B5838, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5838);
  }

  return &unk_1000B68E0;
}

uint64_t sub_100042F38(uint64_t a1)
{
  sub_100059758((a1 + 16));
  result = sub_100046AAC(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }

  return result;
}

char *sub_100042F94(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  if ((sub_10003CE28(a3, &v23, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v23 + 1;
      v6 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      v20 = sub_10006E2E8(v23, v7 - 128);
      v23 = v20;
      if (!v20)
      {
        return 0;
      }

      v5 = v20;
      v6 = v21;
LABEL_6:
      if (v6 == 10)
      {
        v10 = v5 - 1;
        while (1)
        {
          v11 = (v10 + 1);
          v23 = v10 + 1;
          v12 = *(a1 + 56);
          if (!v12)
          {
            break;
          }

          v17 = *(a1 + 48);
          v13 = *v12;
          if (v17 < *v12)
          {
            *(a1 + 48) = v17 + 1;
            v14 = *&v12[2 * v17 + 2];
            goto LABEL_20;
          }

          if (v13 == *(a1 + 52))
          {
            goto LABEL_16;
          }

LABEL_17:
          *v12 = v13 + 1;
          v14 = sub_100045BF0(*(a1 + 40));
          v15 = *(a1 + 48);
          v16 = *(a1 + 56) + 8 * v15;
          *(a1 + 48) = v15 + 1;
          *(v16 + 8) = v14;
          v11 = v23;
LABEL_20:
          v10 = sub_10008D144(a3, v14, v11);
          v23 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 10)
          {
            goto LABEL_30;
          }
        }

        v13 = *(a1 + 52);
LABEL_16:
        sub_10007BCC0(a1 + 40, v13 + 1);
        v12 = *(a1 + 56);
        v13 = *v12;
        goto LABEL_17;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        a3[10].i32[0] = v6 - 1;
        return v23;
      }

      if (v6 < 0x640)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v19 = (v18 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v19 = sub_10003CF68((a1 + 8));
          v5 = v23;
        }

        v9 = sub_10006E88C(v6, v19, v5, a3);
      }

      else
      {
        v9 = sub_10005C01C((a1 + 16), v6, v5, &unk_1000B68E0, (a1 + 8), a3);
      }

      v23 = v9;
      if (!v9)
      {
        return 0;
      }

LABEL_30:
      if (sub_10003CE28(a3, &v23, a3[11].i32[1]))
      {
        return v23;
      }
    }

    v5 = v23 + 2;
LABEL_5:
    v23 = v5;
    goto LABEL_6;
  }

  return v23;
}

char *sub_100043190(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_10004F000(a3, a2);
      }

      v8 = sub_1000467CC(a1 + 40, i);
      *a2 = 10;
      v9 = *(v8 + 20);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = sub_1000426A8(v8, v10, a3);
    }
  }

  v14 = sub_10005D814(a1 + 16, 200, 0x20000000, a2, a3);
  v15 = v14;
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v15;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
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

  if ((*a3 - v14) >= v19)
  {
    v21 = v19;
    memcpy(v14, v20, v19);
    v15 += v21;
    return v15;
  }

  return sub_10004F118(a3, v20, v19, v14);
}

uint64_t sub_100043314(uint64_t a1)
{
  v2 = sub_1000605A4(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
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
      v9 = sub_100042790(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v4 += v13;
  }

  *(a1 + 64) = v4;
  return v4;
}

uint64_t sub_1000433BC(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  {
    sub_10003D858();
  }

  return sub_100043444(a1, lpsrc);
}

uint64_t sub_100043444(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2724);
    v4 = sub_10004FD04(v15, "CHECK failed: (&from) != (this): ");
    sub_10004FE40(&v14, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  sub_10008D64C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_10003CF68((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  return sub_100046EC0(a1 + 40, a2 + 40);
}

void sub_10004351C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100043534(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_100042F38(result);

    return sub_100043444(v4, a2);
  }

  return result;
}

double sub_100043588(uint64_t a1, uint64_t a2)
{
  sub_10005A6F8(a1 + 16, a2 + 16);
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = sub_10003CF68((a2 + 8));
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_5:
    v7 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
    if (v4)
    {
LABEL_6:
      v8 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 8;
LABEL_7:
      v9 = *(v8 + 16);
      v10 = *v8;
      v11 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v11;
      *v7 = v10;
      *(v7 + 16) = v9;
      goto LABEL_8;
    }

LABEL_12:
    v8 = sub_10003CF68((a1 + 8));
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:

  *&result = sub_10003D500((a1 + 40), a2 + 40).n128_u64[0];
  return result;
}

void *sub_100043660(void *a1, uint64_t a2)
{
  *a1 = off_1000AD990;
  a1[1] = a2;
  sub_100051448((a1 + 2), a2);
  a1[5] = 0;
  if (atomic_load_explicit(dword_1000B5808, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5808);
  }

  a1[6] = &qword_1000B6A48;
  a1[7] = &_mh_execute_header;
  return a1;
}

uint64_t sub_1000436F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_1000AD990;
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = sub_10003CF68((a1 + 8));
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v8 >= 0)
    {
      v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v9, v10);
  }

  sub_10008D64C(v5, a2 + 16);
  *(a1 + 48) = &qword_1000B6A48;
  if (*(a2 + 40))
  {
    v11 = *v4;
    if (*v4)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_1000437FC(uint64_t a1)
{
  sub_100043838(a1);
  sub_10003A468((a1 + 8));
  sub_100051530(a1 + 16);
  return a1;
}

uint64_t sub_100043838(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2813);
    v3 = sub_10004FD04(v8, "CHECK failed: GetArena() == nullptr: ");
    sub_10004FE40(&v7, &v3->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v8);
  }

LABEL_4:
  v5 = *(v1 + 48);
  v4 = (v1 + 48);
  if (v5 != &qword_1000B6A48)
  {
    v6 = sub_10003CD54(v4);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete();
  }

  return result;
}

void sub_100043900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10004391C(uint64_t a1)
{
  sub_1000437FC(a1);

  operator delete();
}

void *sub_100043954()
{
  if (atomic_load_explicit(dword_1000B5808, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5808);
  }

  return qword_1000B6928;
}

unsigned __int8 *sub_100043994(uint64_t a1)
{
  result = sub_100059758((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  if ((v3 & 6) != 0)
  {
    *(a1 + 56) = &_mh_execute_header;
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 31) < 0)
    {
      **(v6 + 8) = 0;
      *(v6 + 16) = 0;
    }

    else
    {
      *(v6 + 8) = 0;
      *(v6 + 31) = 0;
    }
  }

  return result;
}

uint64_t sub_100043A2C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v23 = a2;
  v5 = 0;
  if ((sub_10003CE28(a3, v23, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v23 + 1);
      v8 = **v23;
      if ((**v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v19 = sub_10006E2E8(*v23, v9 - 128);
      *v23 = v19;
      if (!v19)
      {
        goto LABEL_44;
      }

      v7 = v19;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 24)
        {
          v15 = v7 + 1;
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if (v16 < 0)
          {
            *v23 = sub_10006E2A0(v7, v14);
            if (!*v23)
            {
LABEL_44:
              *v23 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v15 = v7 + 2;
LABEL_25:
            *v23 = v15;
          }

          if ((v14 - 1) > 5)
          {
            sub_10004743C((a1 + 8), v14);
          }

          else
          {
            *(a1 + 40) |= 4u;
            *(a1 + 60) = v14;
          }

          goto LABEL_37;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 21)
        {
          v5 |= 2u;
          *(a1 + 56) = *v7;
          *v23 = v7 + 1;
          goto LABEL_37;
        }
      }

      else if (v10 == 1 && v8 == 10)
      {
        *(a1 + 40) |= 1u;
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = sub_10004C9D8((a1 + 48), v17);
        v13 = sub_10006E3A8(v18, *v23, a3);
        goto LABEL_36;
      }

      if (v8)
      {
        v12 = (v8 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        a3[10].i32[0] = v8 - 1;
        goto LABEL_2;
      }

      if (v8 < 0x640)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v22 = (v21 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v22 = sub_10003CF68((a1 + 8));
          v7 = *v23;
        }

        v13 = sub_10006E88C(v8, v22, v7, a3);
      }

      else
      {
        v13 = sub_10005C01C((a1 + 16), v8, v7, qword_1000B6928, (a1 + 8), a3);
      }

LABEL_36:
      *v23 = v13;
      if (!v13)
      {
        goto LABEL_44;
      }

LABEL_37:
      if (sub_10003CE28(a3, v23, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (*v23 + 2);
LABEL_6:
    *v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return *v23;
}

char *sub_100043C74(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_10003ABFC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_10004F000(a3, v4);
  }

  v7 = *(a1 + 56);
  *v4 = 21;
  *(v4 + 1) = v7;
  v4 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = sub_10004F000(a3, v4);
    }

    v8 = *(a1 + 60);
    *v4 = 24;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
    }
  }

LABEL_18:
  v12 = sub_10005D814(a1 + 16, 200, 0x20000000, v4, a3);
  v13 = v12;
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - v12) >= v17)
  {
    v19 = v17;
    memcpy(v12, v18, v17);
    v13 += v19;
    return v13;
  }

  return sub_10004F118(a3, v18, v17, v12);
}

uint64_t sub_100043E1C(uint64_t a1)
{
  result = sub_1000605A4(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      result += 5;
    }

    if ((v3 & 4) != 0)
    {
      v7 = *(a1 + 60);
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
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_100043EF8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  {
    sub_10003D858();
  }

  sub_100043F80(a1, lpsrc);
}

void sub_100043F80(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3001);
    v4 = sub_10004FD04(v17, "CHECK failed: (&from) != (this): ");
    sub_10004FE40(&v16, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v17);
  }

  sub_10008D64C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_10003CF68((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 40);
  if ((v13 & 7) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_10004C990((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
LABEL_18:
          *(a1 + 40) |= v13;
          return;
        }

LABEL_17:
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_18;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v13 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }
}

void sub_1000440BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_1000440D4(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_100043994(a1);

    sub_100043F80(a1, a2);
  }
}

float sub_100044128(uint64_t a1, uint64_t a2)
{
  sub_10005A6F8(a1 + 16, a2 + 16);
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v8 = sub_10003CF68((a2 + 8));
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v7;
    goto LABEL_9;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
  if (v4)
  {
LABEL_6:
    v9 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 8;
    goto LABEL_7;
  }

LABEL_14:
  v9 = sub_10003CF68((a1 + 8));
LABEL_7:
  v10 = *(v9 + 16);
  v11 = *v9;
  v12 = *(v8 + 16);
  *v9 = *v8;
  *(v9 + 16) = v12;
  *v8 = v11;
  *(v8 + 16) = v10;
  v4 = *(a1 + 8);
  LODWORD(v10) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v10;
  if (v4)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_9:
  if (*(a1 + 48) != &qword_1000B6A48 || *(a2 + 48) != &qword_1000B6A48)
  {
    v13 = sub_10004C9D8((a1 + 48), v4);
    v14 = sub_10004C9D8((a2 + 48), v4);
    v15 = v13[2];
    v16 = *v13;
    v17 = v14[2];
    *v13 = *v14;
    v13[2] = v17;
    *v14 = v16;
    v14[2] = v15;
  }

  result = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = result;
  v19 = *(a1 + 60);
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = v19;
  return result;
}

uint64_t sub_1000442C0(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000ADA10;
  *(a1 + 8) = a2;
  *(a1 + 16) = off_1000ADB28;
  sub_100051448(a1 + 24, a2);
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (atomic_load_explicit(dword_1000B57D0, memory_order_acquire))
  {
    sub_10006967C(dword_1000B57D0);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_10004436C(_Unwind_Exception *a1)
{
  sub_10004706C(v2);
  sub_100051530(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_10004438C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_1000ADA10;
  *(a1 + 16) = off_1000ADB28;
  *(a1 + 24) = 0;
  v5 = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 76) = 0;
  *(a1 + 60) = 0;
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  sub_10004712C(a1 + 56, a2 + 56);
  v6 = *(a2 + 8);
  if (v6)
  {
    if (*v4)
    {
      v7 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v7 = sub_10003CF68(v4);
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v8 >= 0)
    {
      v10 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v10, v11);
  }

  sub_10008D64C(v5, a2 + 24);
  v12 = *(a2 + 48);
  if (v12)
  {
    if (!*(a2 + 80))
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4741);
      v13 = sub_10004FD04(v19, "CHECK failed: !value || trainer_spec_ != nullptr: ");
      sub_10004FE40(&v18, &v13->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
    }

    operator new();
  }

  *(a1 + 80) = 0;
  if ((v12 & 2) != 0)
  {
    if (!*(a2 + 88))
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4824);
      v14 = sub_10004FD04(v19, "CHECK failed: !value || normalizer_spec_ != nullptr: ");
      sub_10004FE40(&v18, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
    }

    operator new();
  }

  *(a1 + 88) = 0;
  if ((v12 & 4) != 0)
  {
    if (!*(a2 + 96))
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4907);
      v15 = sub_10004FD04(v19, "CHECK failed: !value || self_test_data_ != nullptr: ");
      sub_10004FE40(&v18, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
    }

    operator new();
  }

  *(a1 + 96) = 0;
  if ((v12 & 8) != 0)
  {
    if (!*(a2 + 104))
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4990);
      v16 = sub_10004FD04(v19, "CHECK failed: !value || denormalizer_spec_ != nullptr: ");
      sub_10004FE40(&v18, &v16->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
    }

    operator new();
  }

  *(a1 + 104) = 0;
  return a1;
}

void sub_100044688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  sub_10004706C((v3 + 56));
  sub_100051530(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_100044728(uint64_t a1)
{
  sub_10004476C(a1);
  sub_10003A468((a1 + 8));
  sub_10004706C((a1 + 56));
  sub_100051530(a1 + 24);
  return a1;
}

uint64_t sub_10004476C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3145);
    v3 = sub_10004FD04(v8, "CHECK failed: GetArena() == nullptr: ");
    sub_10004FE40(&v7, &v3->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v8);
  }

LABEL_4:
  if (v1 != &unk_1000B6968)
  {
    v4 = *(v1 + 80);
    if (v4)
    {
      sub_10003E2B8(v4);
      operator delete();
    }

    v5 = *(v1 + 88);
    if (v5)
    {
      sub_10004112C(v5);
      operator delete();
    }

    v6 = *(v1 + 96);
    if (v6)
    {
      sub_100042DF4(v6);
      operator delete();
    }

    result = *(v1 + 104);
    if (result)
    {
      sub_10004112C(result);
      operator delete();
    }
  }

  return result;
}

void sub_100044874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100044898(uint64_t a1)
{
  sub_100044728(a1);

  operator delete();
}

void sub_1000448D0(uint64_t a1)
{
  sub_100044728(a1 - 16);

  operator delete();
}

void *sub_10004490C()
{
  if (atomic_load_explicit(dword_1000B57D0, memory_order_acquire))
  {
    sub_10006967C(dword_1000B57D0);
  }

  return &unk_1000B6968;
}

uint64_t sub_10004494C(uint64_t a1)
{
  sub_100059758((a1 + 24));
  result = sub_100046B5C((a1 + 56));
  v3 = *(a1 + 48);
  if ((v3 & 0xF) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 80);
      if (!v4)
      {
        sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3178);
        v5 = sub_10004FD04(v15, "CHECK failed: trainer_spec_ != nullptr: ");
        sub_10004FE40(&v14, &v5->__r_.__value_.__l.__data_);
        sub_10004FE48(v15);
        v4 = *(a1 + 80);
      }

      result = sub_10003E610(v4);
    }

    if ((v3 & 2) != 0)
    {
      v6 = *(a1 + 88);
      if (!v6)
      {
        sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3182);
        v7 = sub_10004FD04(v15, "CHECK failed: normalizer_spec_ != nullptr: ");
        sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
        sub_10004FE48(v15);
        v6 = *(a1 + 88);
      }

      result = sub_100041384(v6);
    }

    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 96);
      if (!v8)
      {
        sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3186);
        v9 = sub_10004FD04(v15, "CHECK failed: self_test_data_ != nullptr: ");
        sub_10004FE40(&v14, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v15);
        v8 = *(a1 + 96);
      }

      result = sub_100042F38(v8);
    }

    if ((v3 & 8) != 0)
    {
      v10 = *(a1 + 104);
      if (!v10)
      {
        sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3190);
        v11 = sub_10004FD04(v15, "CHECK failed: denormalizer_spec_ != nullptr: ");
        sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
        sub_10004FE48(v15);
        v10 = *(a1 + 104);
      }

      result = sub_100041384(v10);
    }
  }

  *(a1 + 48) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 31) < 0)
    {
      **(v13 + 8) = 0;
      *(v13 + 16) = 0;
    }

    else
    {
      *(v13 + 8) = 0;
      *(v13 + 31) = 0;
    }
  }

  return result;
}

void sub_100044B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_100044B30(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  if ((sub_10003CE28(a3, &v32, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v32 + 1;
      v7 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      v28 = sub_10006E2E8(v32, v8 - 128);
      v32 = v28;
      if (!v28)
      {
        return 0;
      }

      v6 = v28;
      v7 = v29;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v9 == 3)
        {
          if (v7 == 26)
          {
            *(a1 + 48) |= 2u;
            v10 = *(a1 + 88);
            if (!v10)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = sub_100045B20(v16);
              *(a1 + 88) = v10;
LABEL_32:
              v6 = v32;
            }

LABEL_33:
            v15 = sub_10008D39C(a3, v10, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 4)
        {
          if (v7 == 34)
          {
            *(a1 + 48) |= 4u;
            v17 = *(a1 + 96);
            if (!v17)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = sub_100045CC0(v18);
              *(a1 + 96) = v17;
              v6 = v32;
            }

            v15 = sub_10008D464(a3, v17, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 5 && v7 == 42)
        {
          *(a1 + 48) |= 8u;
          v10 = *(a1 + 104);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v10 = sub_100045B20(v11);
            *(a1 + 104) = v10;
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        goto LABEL_54;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_54;
        }

        v19 = v6 - 1;
        while (2)
        {
          v20 = (v19 + 1);
          v32 = v19 + 1;
          v21 = *(a1 + 72);
          if (!v21)
          {
            v22 = *(a1 + 68);
            goto LABEL_44;
          }

          v26 = *(a1 + 64);
          v22 = *v21;
          if (v26 >= *v21)
          {
            if (v22 == *(a1 + 68))
            {
LABEL_44:
              sub_10007BCC0(a1 + 56, v22 + 1);
              v21 = *(a1 + 72);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = sub_100045D90(*(a1 + 56));
            v24 = *(a1 + 64);
            v25 = *(a1 + 72) + 8 * v24;
            *(a1 + 64) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v32;
          }

          else
          {
            *(a1 + 64) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
          }

          v19 = sub_10008D20C(a3, v23, v20);
          v32 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v9 == 2 && v7 == 18)
      {
        *(a1 + 48) |= 1u;
        v13 = *(a1 + 80);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = sub_100045A50(v14);
          *(a1 + 80) = v13;
          v6 = v32;
        }

        sub_10008D2D4(a3, v13, v6);
        goto LABEL_65;
      }

LABEL_54:
      if (v7)
      {
        v27 = (v7 & 7) == 4;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        a3[10].i32[0] = v7 - 1;
        return v32;
      }

      if (v7 < 0x640)
      {
        v30 = *(a1 + 8);
        if (v30)
        {
          v31 = (v30 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v31 = sub_10003CF68((a1 + 8));
          v6 = v32;
        }

        v15 = sub_10006E88C(v7, v31, v6, a3);
      }

      else
      {
        v15 = sub_10005C01C((a1 + 24), v7, v6, &unk_1000B6968, (a1 + 8), a3);
      }

LABEL_65:
      v32 = v15;
      if (!v15)
      {
        return 0;
      }

LABEL_66:
      if (sub_10003CE28(a3, &v32, a3[11].i32[1]))
      {
        return v32;
      }
    }

    v6 = v32 + 2;
LABEL_6:
    v32 = v6;
    goto LABEL_7;
  }

  return v32;
}

char *sub_100044E98(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_10004F000(a3, a2);
      }

      v8 = sub_10001828C(a1 + 56, i);
      *a2 = 10;
      v9 = *(v8 + 44);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = sub_100043C74(v8, v10, a3);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v15 = *(a1 + 80);
    *a2 = 18;
    v16 = *(v15 + 48);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = a2 + 3;
        do
        {
          *(v17 - 1) = v18 | 0x80;
          v19 = v18 >> 7;
          ++v17;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        *(v17 - 1) = v19;
      }

      else
      {
        a2[2] = v18;
        v17 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v16;
      v17 = a2 + 2;
    }

    a2 = sub_10003E9AC(v15, v17, a3);
    if ((v14 & 2) == 0)
    {
LABEL_15:
      if ((v14 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v21 = *(a1 + 88);
  *a2 = 26;
  v22 = *(v21 + 52);
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = a2 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      a2[2] = v24;
      v23 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v22;
    v23 = a2 + 2;
  }

  a2 = sub_10004188C(v21, v23, a3);
  if ((v14 & 4) == 0)
  {
LABEL_16:
    if ((v14 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v27 = *(a1 + 96);
  *a2 = 34;
  v28 = *(v27 + 64);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = sub_100043190(v27, v29, a3);
  if ((v14 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v33 = *(a1 + 104);
    *a2 = 42;
    v34 = *(v33 + 52);
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v35 = a2 + 3;
        do
        {
          *(v35 - 1) = v36 | 0x80;
          v37 = v36 >> 7;
          ++v35;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
        *(v35 - 1) = v37;
      }

      else
      {
        a2[2] = v36;
        v35 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v34;
      v35 = a2 + 2;
    }

    a2 = sub_10004188C(v33, v35, a3);
  }

LABEL_58:
  v39 = sub_10005D814(a1 + 24, 200, 0x20000000, a2, a3);
  v40 = v39;
  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v40;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if ((*a3 - v39) >= v44)
  {
    v46 = v44;
    memcpy(v39, v45, v44);
    v40 += v46;
    return v40;
  }

  return sub_10004F118(a3, v45, v44, v39);
}

uint64_t sub_100045290(uint64_t a1)
{
  v2 = sub_1000605A4(a1 + 24);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  v5 = *(a1 + 72);
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
      v9 = sub_100043E1C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 48);
  if ((v10 & 0xF) == 0)
  {
    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v15 = sub_100041A9C(*(a1 + 88));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v14 = sub_10003FB40(*(a1 + 80));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v10 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v16 = sub_100043314(*(a1 + 96));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
LABEL_12:
    v11 = sub_100041A9C(*(a1 + 104));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v4 += v18;
  }

  *(a1 + 52) = v4;
  return v4;
}

void sub_100045414(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  {
    sub_10003D858();
  }

  sub_10004549C(a1, lpsrc);
}

void sub_10004549C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3397);
    v4 = sub_10004FD04(v27, "CHECK failed: (&from) != (this): ");
    sub_10004FE40(&v26, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v27);
  }

  sub_10008D64C(a1 + 24, a2 + 24);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_10003CF68((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_10004712C(a1 + 56, a2 + 56);
  v13 = *(a2 + 48);
  if ((v13 & 0xF) != 0)
  {
    if (v13)
    {
      *(a1 + 48) |= 1u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = sub_100045A50(v15);
        *(a1 + 80) = v14;
      }

      if (*(a2 + 80))
      {
        v16 = *(a2 + 80);
      }

      else
      {
        v16 = &unk_1000B6718;
      }

      sub_100040458(v14, v16);
    }

    if ((v13 & 2) != 0)
    {
      *(a1 + 48) |= 2u;
      v17 = *(a1 + 88);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = sub_100045B20(v18);
        *(a1 + 88) = v17;
      }

      if (*(a2 + 88))
      {
        v19 = *(a2 + 88);
      }

      else
      {
        v19 = &unk_1000B6860;
      }

      sub_100041C84(v17, v19);
      if ((v13 & 4) == 0)
      {
LABEL_25:
        if ((v13 & 8) == 0)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    else if ((v13 & 4) == 0)
    {
      goto LABEL_25;
    }

    *(a1 + 48) |= 4u;
    v20 = *(a1 + 96);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = sub_100045CC0(v21);
      *(a1 + 96) = v20;
    }

    if (*(a2 + 96))
    {
      v22 = *(a2 + 96);
    }

    else
    {
      v22 = &unk_1000B68E0;
    }

    sub_100043444(v20, v22);
    if ((v13 & 8) != 0)
    {
LABEL_43:
      *(a1 + 48) |= 8u;
      v23 = *(a1 + 104);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = sub_100045B20(v24);
        *(a1 + 104) = v23;
      }

      if (*(a2 + 104))
      {
        v25 = *(a2 + 104);
      }

      else
      {
        v25 = &unk_1000B6860;
      }

      sub_100041C84(v23, v25);
    }
  }
}

void sub_1000456B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_1000456CC(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_10004494C(a1);

    sub_10004549C(a1, a2);
  }
}

uint64_t sub_100045718(uint64_t a1)
{
  result = sub_10005AABC(a1 + 24);
  if (!result)
  {
    return result;
  }

  result = sub_1000458FC(a1 + 56);
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4741);
      v5 = sub_10004FD04(v13, "CHECK failed: !value || trainer_spec_ != nullptr: ");
      sub_10004FE40(&v12, &v5->__r_.__value_.__l.__data_);
      sub_10004FE48(v13);
      v4 = *(a1 + 80);
    }

    result = sub_10005AABC(v4 + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 48);
  }

  if ((v3 & 2) != 0)
  {
    v6 = *(a1 + 88);
    if (!v6)
    {
      sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4824);
      v7 = sub_10004FD04(v13, "CHECK failed: !value || normalizer_spec_ != nullptr: ");
      sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v13);
      v6 = *(a1 + 88);
    }

    result = sub_10005AABC(v6 + 24);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 48);
  }

  if ((v3 & 4) == 0)
  {
LABEL_18:
    if ((v3 & 8) == 0)
    {
      return 1;
    }

    v10 = *(a1 + 104);
    if (!v10)
    {
      sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4990);
      v11 = sub_10004FD04(v13, "CHECK failed: !value || denormalizer_spec_ != nullptr: ");
      sub_10004FE40(&v12, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v13);
      v10 = *(a1 + 104);
    }

    result = sub_10005AABC(v10 + 24);
    if (result)
    {
      return 1;
    }

    return result;
  }

  v8 = *(a1 + 96);
  if (!v8)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4907);
    v9 = sub_10004FD04(v13, "CHECK failed: !value || self_test_data_ != nullptr: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
    v8 = *(a1 + 96);
  }

  result = sub_10005AABC(v8 + 16);
  if (result)
  {
    v3 = *(a1 + 48);
    goto LABEL_18;
  }

  return result;
}

void sub_1000458CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000458FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_10001828C(a1, v2);
  }

  while ((sub_10005AABC(v5 + 16) & 1) != 0);
  return v3 < 1;
}

__n128 sub_100045954(uint64_t a1, uint64_t a2)
{
  sub_10005A6F8(a1 + 24, a2 + 24);
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = sub_10003CF68((a2 + 8));
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

LABEL_10:
      v8 = sub_10003CF68((a1 + 8));
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v8 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 8;
LABEL_7:
  v9 = *(v8 + 16);
  v10 = *v8;
  v11 = *(v7 + 16);
  *v8 = *v7;
  *(v8 + 16) = v11;
  *v7 = v10;
  *(v7 + 16) = v9;
LABEL_8:
  v12 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v12;
  sub_10003D500((a1 + 56), a2 + 56);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  result = *(a2 + 96);
  *(a1 + 96) = result;
  *(a2 + 96) = v15;
  *(a2 + 104) = v16;
  return result;
}

uint64_t sub_100045A50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  v2 = sub_10004C500(a1, 328);
  sub_10003DDCC(v2, a1);
  return v2;
}

uint64_t sub_100045B20(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  v2 = sub_10004C500(a1, 88);
  sub_100040EE0(v2, a1);
  return v2;
}

void *sub_100045BF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  v2 = sub_10004C500(a1, 40);
  sub_100042140(v2, a1);
  return v2;
}

uint64_t sub_100045CC0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  v2 = sub_10004C500(a1, 72);
  sub_100042C50(v2, a1);
  return v2;
}

void *sub_100045D90(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  v2 = sub_10004C500(a1, 64);
  sub_100043660(v2, a1);
  return v2;
}

uint64_t sub_100045E60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  v2 = sub_10004C500(a1, 112);
  sub_1000442C0(v2, a1);
  return v2;
}

unint64_t sub_100046008(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1000B5920, memory_order_acquire);
    if (!result)
    {
      result = sub_10004C654(&off_1000B5908);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_10004606C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1000B58A0, memory_order_acquire);
    if (!result)
    {
      result = sub_10004C654(&off_1000B5888);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1000460D0(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1000B58C0, memory_order_acquire);
    if (!result)
    {
      result = sub_10004C654(&off_1000B58A8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_100046134(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1000B58E0, memory_order_acquire);
    if (!result)
    {
      result = sub_10004C654(&off_1000B58C8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_100046198(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1000B5900, memory_order_acquire);
    if (!result)
    {
      result = sub_10004C654(&off_1000B58E8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sub_1000461FC(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  return v1[248];
}

uint64_t sub_100046218(uint64_t a1)
{
  v1 = &unk_1000B6718;
  if (*(a1 + 80))
  {
    v1 = *(a1 + 80);
  }

  return (v1[40] >> 3) & 1;
}

void *sub_100046238(uint64_t a1, int a2)
{
  v2 = *(sub_10001828C(a1 + 56, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

char *sub_100046378(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    v1 = &unk_1000B6860;
  }

  return v1 + 16;
}

char *sub_100046394(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    v1 = &unk_1000B6860;
  }

  return v1 + 16;
}

uint64_t sub_1000463B0(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000463E4(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1000B5920, memory_order_acquire);
    if (!result)
    {
      result = sub_10004C654(&off_1000B5908);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_100046448(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1000B58A0, memory_order_acquire);
    if (!result)
    {
      result = sub_10004C654(&off_1000B5888);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1000464AC(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1000B58C0, memory_order_acquire);
    if (!result)
    {
      result = sub_10004C654(&off_1000B58A8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_100046510(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1000B58E0, memory_order_acquire);
    if (!result)
    {
      result = sub_10004C654(&off_1000B58C8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_100046574(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1000B5900, memory_order_acquire);
    if (!result)
    {
      result = sub_10004C654(&off_1000B58E8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sub_1000465D8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  return v1[248];
}

uint64_t sub_1000465F4(uint64_t a1)
{
  v1 = &unk_1000B6718;
  if (*(a1 + 64))
  {
    v1 = *(a1 + 64);
  }

  return (v1[40] >> 3) & 1;
}

uint64_t sub_100046614(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1000B6718;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void *sub_100046640(uint64_t a1, int a2)
{
  v2 = *(sub_10001828C(a1 + 40, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

char *sub_100046780(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v1 = &unk_1000B6860;
  }

  return v1 + 16;
}

char *sub_10004679C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    v1 = &unk_1000B6860;
  }

  return v1 + 16;
}

void sub_1000467B8(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_1000467CC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_10004688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_1000468AC(void *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  *a1 = v3;
  a1[1] = 0;
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v4 = a2[1];
    if (v4 < 0)
    {
      sub_10007D7E4(v4, "size_t to int conversion");
    }
  }

  a1[1] = v4;
  return a1;
}

uint64_t sub_100046908(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v4 = sub_10004FD04(v6, "CHECK failed: (n) >= (0): ");
    sub_10004FE40(&v5, &v4->__r_.__value_.__l.__data_);
    return sub_10004FE48(v6);
  }

  else if (v1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void sub_1000469B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000469CC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_100046A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100046AAC(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_10004FD04(v7, "CHECK failed: (n) >= (0): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_10004FE48(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3++;
      result = sub_100042488(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_100046B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100046B5C(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_10004FD04(v7, "CHECK failed: (n) >= (0): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_10004FE48(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_100043994(v4);
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_100046BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100046C0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_10004FD04(v11, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_10007C9A8(v3, v5);
    result = sub_100046CF8(v3, v7, (v6 + 8), v5, **(v3 + 16) - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = *(v3 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_100046CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

std::string *sub_100046CF8(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19;
      if (!v18)
      {
        operator new();
      }

      if (*(v18 + 24))
      {
        sub_100047484(v18 + 32);
      }

      v22 = sub_10004BF84(v18, 0x18uLL, sub_1000467B8);
      v22->__r_.__value_.__r.__words[0] = 0;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      ++v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_100046E00(uint64_t *a1)
{
  sub_100046E3C(a1);

  return sub_10003D264(a1);
}

void sub_100046E3C(void *a1)
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
          sub_1000422B0(*v3);
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

uint64_t sub_100046EC0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_10004FD04(v11, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_10007C9A8(v3, v5);
    result = sub_100046FAC(v3, v7, (v6 + 8), v5, **(v3 + 16) - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = *(v3 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_100046F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

std::string *sub_100046FAC(std::string *result, std::string **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_10004705C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_100045BF0(v18);
      result = sub_10004705C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_10004706C(uint64_t *a1)
{
  sub_1000470A8(a1);

  return sub_10003D264(a1);
}

void sub_1000470A8(void *a1)
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
          sub_1000437FC(*v3);
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

void sub_10004712C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_10004FD04(v11, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v10, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_10007C9A8(a1, v5);
    sub_100047218(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_100047200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100047218(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_1000472C8(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_100045D90(v18);
      sub_1000472C8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

unint64_t sub_100047304()
{

  return sub_10004BF84(v0, 0x18uLL, sub_1000467B8);
}

uint64_t *sub_10004737C()
{
  result = *(*(v0 + 32) + 32);
  v2 = *result;
  return result;
}

void *sub_1000473F4(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_100047424()
{

  operator new();
}

void sub_10004743C(unint64_t *a1, unint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_10003CF68(a1);
  }

  sub_10006E0C0(3, a2, v3);
}

void *sub_10004764C(void *a1, const char *a2, uint64_t a3)
{
  *a1 = off_1000ADDC0;
  v6 = a1 + 1;
  sub_10004AF14(a1 + 1);
  if (a3)
  {
    operator new();
  }

  a1[2] = &std::cin;
  if ((*(&std::cin + std::cin.__vftable[-2].~basic_istream_0 + 32) & 5) != 0)
  {
    v14 = 5;
    sub_1000177C0(&v15);
    sub_1000192F4(&v15, "", 1);
    v7 = strlen(a2);
    sub_1000192F4(&v15, a2, v7);
    sub_1000192F4(&v15, ": ", 3);
    v8 = __error();
    sub_100048D80(*v8);
    if ((v13 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v10 = v13;
    }

    else
    {
      v10 = __p[1];
    }

    sub_1000192F4(&v15, v9, v10);
    sub_1000145A8(&v14, &v19);
    sub_10004B134(v6, &v19);
    sub_10004AF1C(&v19);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    std::locale::~locale(v17);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  return a1;
}

void sub_1000478DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10004AF1C((v16 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100014638(&a15);
  sub_10004AF1C(v15);
  _Unwind_Resume(a1);
}

void sub_100047958(void *a1)
{
  sub_100047B9C(a1);

  operator delete();
}

BOOL sub_10004799C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v8, &std::ctype<char>::id);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v8);
  v6 = sub_100047C20(v3, a2, v5);
  return (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
}

BOOL sub_100047A80(uint64_t a1, std::string *a2)
{
  v2 = *(a1 + 16);
  if (v2 == &std::cin)
  {
    if (sub_100048804() <= 2)
    {
      v10 = 0;
      v3 = sub_1000192F4(&std::cerr, "filesystem.cc", 13);
      sub_1000192F4(v3, "(", 1);
      v4 = std::ostream::operator<<();
      v5 = sub_1000192F4(v4, ") ", 2);
      v6 = sub_1000192F4(v5, "LOG(", 4);
      v7 = sub_1000192F4(v6, "ERROR", 5);
      v8 = sub_1000192F4(v7, ") ", 2);
      sub_1000192F4(v8, "ReadAll is not supported for stdin.", 35);
      sub_1000179E8(&v10);
    }
  }

  else
  {
    sub_100047E14(a2, *(&v2[2].__gc_ + v2->__vftable[-2].~basic_istream_0), 0);
  }

  return v2 != &std::cin;
}

void *sub_100047B9C(void *a1)
{
  *a1 = off_1000ADDC0;
  v2 = a1[2];
  if (v2 != &std::cin && v2 != 0)
  {
    (v2->~basic_istream_0)(v2);
  }

  sub_10004AF1C(a1 + 1);
  return a1;
}

void *sub_100047C20(void *a1, uint64_t a2, unsigned __int8 a3)
{
  std::istream::sentry::sentry();
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_100047D84(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x100047D44);
  }

  __cxa_rethrow();
}

void sub_100047E14(std::string *a1, void *a2, void *a3)
{
  sub_100047E94(&__p, a2, a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::assign(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100047E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100047E94(std::string *a1, void *a2, void *a3)
{
  v11 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = sub_100047FF4(&v11);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(a1, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  return result;
}

void sub_100047FC4(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

BOOL sub_100047FF4(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

void *sub_100048074(void *a1, const char *a2, uint64_t a3)
{
  *a1 = off_1000ADE20;
  v6 = a1 + 1;
  sub_10004AF14(a1 + 1);
  if (a3)
  {
    operator new();
  }

  a1[2] = &std::cout;
  if ((*(&std::cout + std::cout.__vftable[-2].~basic_ostream_0 + 32) & 5) != 0)
  {
    v14 = 7;
    sub_1000177C0(&v15);
    sub_1000192F4(&v15, "", 1);
    v7 = strlen(a2);
    sub_1000192F4(&v15, a2, v7);
    sub_1000192F4(&v15, ": ", 3);
    v8 = __error();
    sub_100048D80(*v8);
    if ((v13 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v10 = v13;
    }

    else
    {
      v10 = __p[1];
    }

    sub_1000192F4(&v15, v9, v10);
    sub_1000145A8(&v14, &v19);
    sub_10004B134(v6, &v19);
    sub_10004AF1C(&v19);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    std::locale::~locale(v17);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  return a1;
}

void sub_100048308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10004AF1C((v16 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100014638(&a15);
  sub_10004AF1C(v15);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100048380(void (__cdecl ***a1)(std::ofstream *__hidden this)))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100048508(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100048544(void *a1)
{
  sub_10004866C(a1);

  operator delete();
}

BOOL sub_100048588(uint64_t a1)
{
  v2 = *(a1 + 16);
  std::ostream::write();
  return *(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) == 0;
}

uint64_t sub_1000485D8(uint64_t a1)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v3 = *(*a1 + 24);

    return v3(a1, "\n", 1);
  }

  return result;
}

void *sub_10004866C(void *a1)
{
  *a1 = off_1000ADE20;
  v2 = a1[2];
  if (v2 != &std::cout && v2 != 0)
  {
    (v2->~basic_ostream_0)(v2);
  }

  sub_10004AF1C(a1 + 1);
  return a1;
}

uint64_t sub_1000486F0(uint64_t result)
{
  if (result != -1)
  {
    atomic_store(result, &unk_1000B5928);
  }

  return result;
}

uint64_t sub_100048708()
{
  v0 = atomic_load(&unk_1000B5928);
  if (v0 != -1)
  {
    return atomic_load(&unk_1000B5928);
  }

  sub_100048790(&v3);
  v1 = std::random_device::operator()(&v3);
  std::random_device::~random_device(&v3);
  return v1;
}

void sub_100048768(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  std::random_device::~random_device(&a11);
  __cxa_begin_catch(a1);
  atomic_load(v12);
  __cxa_end_catch();
  JUMPOUT(0x100048754);
}

std::random_device *sub_100048790(std::random_device *a1)
{
  sub_100009A74(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1000487E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100048824(char *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if ((v3 & 0x80000000) == 0)
  {
    *a3 = 1;
    return *a1;
  }

  v5 = a2 - a1;
  if ((a2 - a1) >= 2)
  {
    if ((v3 & 0xE0) == 0xC0)
    {
      v6 = a1[1];
      if (v6 <= -65)
      {
        v7 = (v3 & 0x1F) << 6;
        if (v7 >= 0x80)
        {
          result = v7 | v6 & 0x3F;
          v8 = 2;
LABEL_8:
          *a3 = v8;
          return result;
        }
      }
    }

    else if (v5 != 2)
    {
      if ((v3 & 0xF0) == 0xE0)
      {
        v9 = a1[1];
        if (v9 <= -65)
        {
          v10 = a1[2];
          if (v10 <= -65)
          {
            v11 = (v3 & 0xF) << 12;
            v12 = v11 & 0xFFFFF03F | ((v9 & 0x3F) << 6);
            if (v12 >= 0x800 && ((v11 - 57344) < 0x102000 || v12 >> 11 <= 0x1A))
            {
              result = v11 & 0xFFFFF000 | ((v9 & 0x3F) << 6) | v10 & 0x3F;
              v8 = 3;
              goto LABEL_8;
            }
          }
        }
      }

      else if (v5 >= 4 && (v3 & 0xF8) == 0xF0)
      {
        v13 = a1[1];
        if (v13 <= -65)
        {
          v14 = a1[2];
          if (v14 <= -65)
          {
            v15 = a1[3];
            if (v15 <= -65)
            {
              v16 = ((v3 & 7) << 18) | ((v13 & 0x3F) << 12);
              if (v16 >= 0x10000)
              {
                result = v15 & 0x3F | ((v14 & 0x3F) << 6) | v16;
                if (v16 - 57344 < 0x102000 || result >> 11 <= 0x1A)
                {
                  v8 = 4;
                  goto LABEL_8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = 1;
  return 65533;
}

uint64_t sub_100048974(char *a1, uint64_t a2)
{
  v7 = 0;
  if (a2 < 1)
  {
    return 1;
  }

  v2 = a1;
  v3 = &a1[a2];
  while (1)
  {
    v4 = sub_100048824(v2, v3, &v7);
    v5 = v4 != 65533 || v7 == 3;
    if (!v5 || v4 >> 11 >= 0x1B && (v4 - 57344) >> 13 > 0x80)
    {
      break;
    }

    v2 += v7;
    if (v2 >= v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100048A0C(unsigned int a1, _BYTE *a2)
{
  if (a1 > 0x7F)
  {
    if (a1 > 0x7FF)
    {
      if (HIWORD(a1) <= 0x10u)
      {
        v3 = a1;
      }

      else
      {
        v3 = 65533;
      }

      v4 = v3 & 0x3F | 0x80;
      v5 = (v3 >> 6) & 0x3F | 0xFFFFFF80;
      if (HIWORD(v3))
      {
        a2[3] = v4;
        a2[2] = v5;
        a2[1] = (v3 >> 12) & 0x3F | 0x80;
        a1 = (v3 >> 18) | 0xFFFFFFF0;
        v2 = 4;
      }

      else
      {
        a2[2] = v4;
        a2[1] = v5;
        a1 = (v3 >> 12) | 0xFFFFFFE0;
        v2 = 3;
      }
    }

    else
    {
      a2[1] = a1 & 0x3F | 0x80;
      a1 = (a1 >> 6) | 0xFFFFFFC0;
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  *a2 = a1;
  return v2;
}

void sub_100048AAC(int a1@<W0>, std::string *a2@<X8>)
{
  v3 = a1;
  memset(&__p, 0, sizeof(__p));
  sub_1000494F0(&__p, &v3, &__p, 1uLL);
  sub_100048B30(&__p, a2);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100048B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100048B30@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  while (v3 != size)
  {
    v5 = sub_100048A0C(*v3, v6);
    result = std::string::append(a2, v6, v5);
    ++v3;
  }

  return result;
}

void sub_100048BC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100048BE0(char *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 >= 1)
  {
    v3 = a1;
    v5 = 0;
    v6 = &a1[a2];
    do
    {
      v16 = 0;
      v7 = sub_100048824(v3, v6, &v16);
      v8 = a3[2];
      if (v5 >= v8)
      {
        v9 = *a3;
        v10 = v5 - *a3;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          sub_100003F50();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_10000418C(a3, v14);
        }

        *(4 * v11) = v7;
        v5 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *a3;
        *a3 = 0;
        a3[1] = v5;
        a3[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v5 = v7;
        v5 += 4;
      }

      a3[1] = v5;
      v3 += v16;
    }

    while (v3 < v6);
  }
}

void sub_100048D1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100048D3C()
{
  off_1000B59E8();
  if ((*v0 & 1) == 0)
  {
    sub_100049564();
  }

  off_1000B59D0();
}

uint64_t sub_100048D80(int a1)
{
  strerror_r(a1, __strerrbuf, 0x3FFuLL);
  sub_1000177C0(&v4);
  v1 = strlen(__strerrbuf);
  v2 = sub_1000192F4(&v4, __strerrbuf, v1);
  sub_1000192F4(v2, " Error #", 8);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  std::locale::~locale(v6);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100048F64(void *__src@<X0>, size_t __len@<X1>, uint64_t a3@<X8>)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003DBC();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v33 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = v33;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (__len)
  {
    v7 = p_dst + __len;
    do
    {
      if (*p_dst == 34)
      {
        p_dst = (p_dst + 1);
        v8 = p_dst;
        v9 = p_dst;
        if (p_dst < v7)
        {
          v8 = p_dst;
          v9 = p_dst;
          do
          {
            v10 = *v9;
            if (v10 == 34)
            {
              v11 = *(v9 + 1);
              v9 = (v9 + 1);
              if (v11 != 34)
              {
                break;
              }
            }

            *v8++ = v10;
            v9 = (v9 + 1);
          }

          while (v9 < v7);
        }

        v12 = memchr(v9, 44, v7 - v9);
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = v7;
        }
      }

      else
      {
        v14 = memchr(p_dst, 44, v7 - p_dst);
        if (v14)
        {
          v13 = v14;
        }

        else
        {
          v13 = v7;
        }

        v8 = v13;
      }

      *v8 = 0;
      sub_100009A74(__p, p_dst);
      v16 = *(a3 + 8);
      v15 = *(a3 + 16);
      if (v16 >= v15)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_100003F50();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v19;
        }

        v34[4] = a3;
        if (v21)
        {
          sub_10000CB48(a3, v21);
        }

        v22 = 24 * v18;
        v23 = *__p;
        *(v22 + 16) = v31;
        *v22 = v23;
        __p[1] = 0;
        v31 = 0;
        __p[0] = 0;
        v24 = 24 * v18 + 24;
        v25 = *(a3 + 8) - *a3;
        v26 = 24 * v18 - v25;
        memcpy((v22 - v25), *a3, v25);
        v27 = *a3;
        *a3 = v26;
        *(a3 + 8) = v24;
        v28 = *(a3 + 16);
        *(a3 + 16) = 0;
        v34[2] = v27;
        v34[3] = v28;
        v34[0] = v27;
        v34[1] = v27;
        sub_10000D0AC(v34);
        v29 = SHIBYTE(v31);
        *(a3 + 8) = v24;
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v17 = *__p;
        *(v16 + 16) = v31;
        *v16 = v17;
        *(a3 + 8) = v16 + 24;
      }

      p_dst = (v13 + 1);
    }

    while ((v13 + 1) < v7);
    v5 = v33;
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100049208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10000CCE0(&__p);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_10004924C(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    sub_1000495E8();
  }

  return (a1 + a2 - 1) / a2 * a2;
}

void sub_100049274(std::string *this)
{
  LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if ((size & 3) != 0)
  {
    do
    {
      std::string::push_back(this, 0);
      LOBYTE(v3) = *(&this->__r_.__value_.__s + 23);
      if ((v3 & 0x80u) != 0)
      {
        v3 = this->__r_.__value_.__l.__size_;
      }
    }

    while ((v3 & 3) != 0);
  }
}

void *sub_1000492DC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    *a1 += a2;
    a1[1] = v6;

    return sub_10004AF14(a3);
  }

  else
  {
    v9 = 13;
    v7 = sub_1000177C0(&v10);
    sub_1000192F4(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.cc", 63);
    sub_1000192F4(&v10, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v10, ") [", 3);
    sub_1000192F4(&v10, "string.size() >= size", 21);
    sub_1000192F4(&v10, "] ", 2);
    sub_1000145A8(&v9, a3);
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    std::locale::~locale(v12);
    std::ostream::~ostream();
    return std::ios::~ios();
  }
}

uint64_t sub_1000494F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100004150(result, a4);
  }

  return result;
}

void sub_100049548(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100049564()
{
  sub_100048708();
  off_1000B59D0();
  *v2 = v3;
  do
  {
    v4 = v1(v0);
    *(v4 + 4 * v6) = v5;
  }

  while (v6 != 623);
  *(v1(v0) + 2496) = 0;
  off_1000B59E8();
  *v7 = 1;
}

uint64_t sub_100049614(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000362D0(a1);
  *v4 = off_1000ADE80;
  v4[1] = a2 + 16;
  sub_1000159B4(v4);
  return a1;
}

void *sub_10004967C(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sub_100013944(a1, a2, a3, a4);
  *result = off_1000ADE80;
  return result;
}

void sub_1000496B4(void *a1)
{
  sub_100014854(a1);

  operator delete();
}

void sub_1000496EC(uint64_t *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  (*(*a1 + 16))(v57);
  if (*&v57[0])
  {
    sub_10004AF1C(v57);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  sub_10004AF1C(v57);
  if (!a3)
  {
    goto LABEL_3;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v62 = 0uLL;
  if (a3 >> 59)
  {
    sub_100003F50();
  }

  sub_10004A570(v57, a3, 0, &__p);
  v10 = (*(&v57[0] + 1) - (v62 - __p));
  memcpy(v10, __p, v62 - __p);
  v11 = __p;
  v12 = *(&v62 + 1);
  __p = v10;
  v62 = v57[1];
  *&v57[1] = v11;
  *(&v57[1] + 1) = v12;
  *&v57[0] = v11;
  *(&v57[0] + 1) = v11;
  if (v11)
  {
    operator delete(v11);
  }

  memset(v59, 0, sizeof(v59));
  v60 = 1065353216;
  memset(v57 + 8, 0, 40);
  v58 = 256;
  v56[0] = a1;
  v56[1] = v57;
  v56[2] = &__p;
  v56[3] = &v65;
  v56[4] = v59;
  *&v57[0] = off_1000ADF98;
  v13 = 1;
  do
  {
    v64 = 0uLL;
    v14 = sub_10001E3C0(a1[2], a2, a3, &v63 + 8);
    *&v64 = a2;
    *(&v64 + 1) = v14;
    a3 -= v14;
    if (a3)
    {
      v15 = v13;
    }

    else
    {
      v15 = -1;
    }

    LODWORD(v63) = v13 - 2;
    DWORD1(v63) = v15;
    v16 = v62;
    if (v62 >= *(&v62 + 1))
    {
      v19 = (v62 - __p) >> 5;
      v20 = v19 + 1;
      if ((v19 + 1) >> 59)
      {
        sub_100003F50();
      }

      v21 = *(&v62 + 1) - __p;
      if ((*(&v62 + 1) - __p) >> 4 > v20)
      {
        v20 = v21 >> 4;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFE0)
      {
        v22 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      sub_10004A570(&v68, v22, v19, &__p);
      v23 = v70;
      v24 = v64;
      *v70 = v63;
      *(v23 + 16) = v24;
      *&v70 = v70 + 32;
      v25 = &v69[-(v62 - __p)];
      memcpy(v25, __p, v62 - __p);
      v26 = __p;
      v27 = *(&v62 + 1);
      __p = v25;
      v28 = v70;
      v62 = v70;
      *&v70 = v26;
      *(&v70 + 1) = v27;
      v68 = v26;
      v69 = v26;
      if (v26)
      {
        v55 = v28;
        operator delete(v26);
        v28 = v55;
      }

      v18 = v28;
    }

    else
    {
      v17 = v64;
      *v62 = v63;
      *(v16 + 16) = v17;
      v18 = (v16 + 32);
    }

    a2 += v14;
    *&v62 = v18;
    ++v13;
  }

  while (a3);
  if (__p != v18)
  {
    if ((v18 - __p) >= 0x21)
    {
      v29 = 1;
      do
      {
        sub_100049E54(v56, v29 - 1, v29);
        ++v29;
      }

      while (v29 < (v62 - __p) >> 5);
    }

    v30 = v65;
    v31 = v66;
    if (v65 == v66)
    {
LABEL_55:
      *(&v64 + 1) = 0;
      operator new();
    }

    v32 = 0;
    while (1)
    {
      v33 = *v30;
      v34 = v31 - v30;
      if (v34 >= 2)
      {
        v35 = 0;
        v36 = v30;
        do
        {
          v37 = v36;
          v36 += v35 + 1;
          v38 = 2 * v35;
          v35 = (2 * v35) | 1;
          v39 = v38 + 2;
          if (v39 < v34)
          {
            v40 = v36[1];
            v41 = *(*v36 + 2);
            v42 = *(v40 + 2);
            if (v41 < v42 || v41 == v42 && **v36 > *v40)
            {
              ++v36;
              v35 = v39;
            }
          }

          *v37 = *v36;
        }

        while (v35 <= ((v34 - 2) >> 1));
        v43 = v31 - 1;
        if (v36 == v43)
        {
          *v36 = v33;
        }

        else
        {
          *v36 = *v43;
          *v43 = v33;
          sub_10004A23C(v30, (v36 + 1), v36 + 1 - v30);
        }
      }

      --v66;
      v44 = *v33;
      v45 = *v33;
      v46 = __p;
      v47 = *(__p + 4 * v45 + 3);
      if (!v47)
      {
        goto LABEL_54;
      }

      v48 = v33[1];
      v49 = *(__p + 4 * v48 + 3);
      if (!v49 || v49 + v47 != *(v33 + 2))
      {
        goto LABEL_54;
      }

      if (a5 > 0.0)
      {
        if (a5 >= 1.0)
        {
          goto LABEL_54;
        }

        if (!v32)
        {
          sub_100048D3C();
          v32 = v50;
        }

        v51 = sub_100032C04(v32);
        if ((v51 + sub_100032C04(v32) * 4294967300.0) * 5.42101086e-20 < a5)
        {
          goto LABEL_54;
        }

        v46 = __p;
        v44 = *v33;
        v48 = v33[1];
        v45 = *v33;
      }

      v52 = &v46[8 * v45];
      v53 = &v46[8 * v48];
      *(v52 + 3) += *(v53 + 3);
      v54 = *(v53 + 1);
      *(v52 + 1) = v54;
      if ((v54 & 0x80000000) == 0)
      {
        v46[8 * v54] = v44;
      }

      *(v53 + 2) = "";
      *(v53 + 3) = 0;
      sub_100049E54(v56, *(__p + 8 * v45), v44);
      sub_100049E54(v56, *v33, *(__p + 8 * *v33 + 1));
LABEL_54:
      v30 = v65;
      v31 = v66;
      if (v65 == v66)
      {
        goto LABEL_55;
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_10004A170(v57);
  sub_100035910(v59);
  if (__p)
  {
    *&v62 = __p;
    operator delete(__p);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }
}

void sub_100049DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  sub_10004A620(&a33);
  sub_10004A170(&a18);
  sub_100035910(&a25);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  v35 = *(v33 - 208);
  if (v35)
  {
    *(v33 - 200) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

double sub_100049E54(uint64_t *a1, int a2, int a3)
{
  if (a2 != -1)
  {
    v37[14] = v3;
    v37[15] = v4;
    if (a3 != -1)
    {
      v6 = a2;
      v7 = *a1[2];
      v8 = v7 + 32 * a2;
      if ((*(v8 + 8) & 1) == 0)
      {
        v9 = a3;
        v10 = v7 + 32 * a3;
        if ((*(v10 + 8) & 1) == 0)
        {
          v11 = *a1;
          v12 = *(v8 + 16);
          v13 = *(v10 + 24) + *(v8 + 24);
          v37[0] = v12;
          v37[1] = v13;
          v14 = *(v11 + 40);
          v15 = *v14;
          if (v13)
          {
            v16 = 0;
            v17 = v13;
            while (1)
            {
              v18 = *v12++;
              v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v18;
              v15 = v14[v16];
              if ((v15 & 0x800000FF) != v18)
              {
                break;
              }

              if (!--v17)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            v19 = *v12;
            if (*v12)
            {
              v16 = 0;
              v20 = v12 + 1;
              while (1)
              {
                v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v19;
                v15 = v14[v16];
                if ((v15 & 0x800000FF) != v19)
                {
                  break;
                }

                v21 = *v20++;
                v19 = v21;
                if (!v21)
                {
                  goto LABEL_16;
                }
              }
            }

            else
            {
              v16 = 0;
LABEL_16:
              if ((v15 & 0x100) != 0)
              {
                v22 = v14[v16 ^ (v15 >> 10 << ((v15 >> 6) & 8))];
                v23 = a1[1];
                v24 = v23[5];
                v25 = v23[6];
                v26 = v23[4];
                if (v26 >= v25)
                {
                  v26 = 0;
                  ++v24;
                  v23[4] = 0;
                  v23[5] = v24;
                }

                v27 = v23[1];
                if (v24 == (v23[2] - v27) >> 3)
                {
                  is_mul_ok(v25, 0x18uLL);
                  operator new[]();
                }

                v28 = *(v27 + 8 * v24) + 24 * v26;
                v23[4] = v26 + 1;
                v36 = v28;
                *v28 = a2;
                *(v28 + 4) = a3;
                *(v28 + 8) = (*(*v11 + 136))(v11, v22 & 0x7FFFFFFF);
                *(v28 + 16) = v13;
                v29 = a1[3];
                sub_100038E80(v29, &v36);
                sub_10004A23C(*v29, v29[1], (v29[1] - *v29) >> 3);
                if ((*(**(v11 + 8) + 128))(*(v11 + 8), v22 & 0x7FFFFFFF))
                {
                  v31 = *a1[2];
                  v34 = *(v31 + 32 * v6 + 16);
                  v35 = *(v31 + 32 * v9 + 16);
                  v32 = a1[4];
                  v37[3] = v37;
                  v33 = sub_10004A2D8(v32, v37);
                  result = *&v34;
                  *(v33 + 2) = v34;
                  *(v33 + 3) = v35;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10004A114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10004A6A0();
  }

  return (*(*v4 + 48))(v4, v7, &v6);
}

void *sub_10004A170(void *a1)
{
  *a1 = off_1000ADF98;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        operator delete[]();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10004A23C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = (result + 8 * (v3 >> 1));
    v6 = *v5;
    v7 = *(a2 - 8);
    v8 = *(*v5 + 8);
    v9 = *(v7 + 8);
    if (v8 < v9 || v8 == v9 && *v6 > *v7)
    {
      *(a2 - 8) = v6;
      if (v3 >= 2)
      {
        v10 = (result + 8 * (v3 >> 1));
        while (1)
        {
          v11 = v4 - 1;
          v4 = (v4 - 1) >> 1;
          v5 = (result + 8 * v4);
          v12 = *v5;
          v13 = *(*v5 + 8);
          if (v13 >= v9 && (v13 != v9 || *v12 <= *v7))
          {
            break;
          }

          *v10 = v12;
          v10 = (result + 8 * v4);
          if (v11 <= 1)
          {
            goto LABEL_13;
          }
        }

        v5 = v10;
      }

LABEL_13:
      *v5 = v7;
    }
  }

  return result;
}

uint64_t **sub_10004A2D8(void *a1, uint64_t a2)
{
  v4 = sub_10004A548(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

void *sub_10004A570(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_100003E64();
  }

  *result = 0;
  result[1] = 32 * a3;
  result[2] = 32 * a3;
  result[3] = 0;
  return result;
}

void sub_10004A5E8(void *a1)
{
  sub_10004A170(a1);

  operator delete();
}

uint64_t sub_10004A620(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10004A6A0()
{
  exception = __cxa_allocate_exception(8uLL);
}

__n128 sub_10004A768(uint64_t a1, uint64_t a2)
{
  *a2 = off_1000ADFC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10004A7A0(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  *&v21 = *a2;
  *(&v21 + 1) = v4;
  v6 = *(a1 + 8);
  v7 = ((*v6)[14])(v6, v21, v4);
  if (v7 != -1 && ((*(*v6[1] + 128))(v6[1], v7) & 1) != 0 && (v8 = sub_10004A9A4(*(a1 + 24), &v21)) != 0)
  {
    v9 = v8;
    sub_10004A114(*(a1 + 16), v9[4], v9[5], v5);
    sub_10004A114(*(a1 + 16), v9[6], v9[7], v5);
  }

  else
  {
    v11 = *(v5 + 8);
    v10 = *(v5 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v5) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100003F50();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v5) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_100019068(v5, v16);
      }

      v17 = 24 * v13;
      *v17 = v21;
      *(v17 + 16) = v7;
      v12 = 24 * v13 + 24;
      v18 = *(v5 + 8) - *v5;
      v19 = v17 - v18;
      memcpy((v17 - v18), *v5, v18);
      v20 = *v5;
      *v5 = v19;
      *(v5 + 8) = v12;
      *(v5 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = v21;
      *(v11 + 16) = v7;
      v12 = v11 + 24;
    }

    *(v5 + 8) = v12;
  }
}

uint64_t sub_10004A958(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_10004A9A4(void *a1, uint64_t a2)
{
  v4 = sub_10004A548(a1, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL sub_10004AAB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_10004AB0C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10004AD64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004BA50(a1);
}

void sub_10004AD70()
{
  if (!dword_1000B69D8)
  {
    v0 = sub_10004ADD8(&std::cerr, "Program terminated with an unrecoverable error.");
    v1 = sub_10004AE20(v0);
    sub_10004AED8(v1);
    exit(-1);
  }

  dword_1000B69D8 = 2;
}

void *sub_10004ADD8(void *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1000192F4(a1, __s, v4);
}

void *sub_10004AE20(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t sub_10004AEDC(uint64_t result)
{
  if (!dword_1000B69D8)
  {
    v1 = result;
    sub_10004AED8(result);
    exit(v1);
  }

  dword_1000B69D8 = 2;
  return result;
}

uint64_t *sub_10004AF1C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10004B3C0(a1, v2);
  }

  return a1;
}

void sub_10004B060(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_10004B3C0(v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10004B084(void *result, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *result = 0;
  return result;
}

void sub_10004B134(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (*a2)
    {
      operator new();
    }

    *a1 = 0;
    if (v3)
    {

      sub_10004B3C0(a1, v3);
    }
  }
}

const char *sub_10004B23C(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return "";
  }

  result = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

std::string *sub_10004B268(uint64_t *a1, std::string::value_type *__s)
{
  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  v3 = (v2 + 8);

  return std::string::assign(v3, __s);
}

uint64_t sub_10004B2E4(unsigned int **a1)
{
  if (*a1)
  {
    return **a1;
  }

  else
  {
    return 0;
  }
}

std::string *sub_10004B2FC@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v4 = result;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *v3 - 1;
    if (v5 < 0x10)
    {
      std::string::assign(a2, off_1000AE048[v5]);
    }

    std::string::append(a2, ": ");
    v6 = *(v4->__r_.__value_.__r.__words[0] + 31);
    if (v6 >= 0)
    {
      v7 = (v4->__r_.__value_.__r.__words[0] + 8);
    }

    else
    {
      v7 = *(v4->__r_.__value_.__r.__words[0] + 8);
    }

    if (v6 >= 0)
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 31);
    }

    else
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 16);
    }

    return std::string::append(a2, v7, v8);
  }

  else
  {
    *(a2 + 23) = 2;
    strcpy(a2, "OK");
  }

  return result;
}

void sub_10004B3A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004B3C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    operator delete();
  }
}

void *sub_10004B420()
{
  if ((atomic_load_explicit(&qword_1000B6598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B6598))
  {
    operator new();
  }

  v0 = qword_1000B6590;

  return sub_10004B4F0(v0);
}

void *sub_10004B4F0(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_1000915D0;
    v2[2] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
}

void *sub_10004B554(void *a1, uint64_t a2)
{
  a1[4] = 0;
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = v4();
    v6 = v5;
    if (v5)
    {
      v7 = (*(*v5 + 32))(v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((v8 & 7) != 0)
  {
    sub_10004FCEC(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 97);
    v10 = sub_10004FD04(v16, "CHECK failed: (reinterpret_cast<uintptr_t>(mem) & 7) == (0): ");
    sub_10004FE40(&v15, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v16);
  }

  if (!v8 || v9 <= 0x87)
  {
    if (*a2 <= 0x88uLL)
    {
      v9 = 136;
    }

    else
    {
      v9 = *a2;
    }

    v8 = (*(a2 + 32))(v9);
  }

  v11 = 3;
  if (v8 != *(a2 + 16))
  {
    v11 = 1;
  }

  *v8 = v11;
  *(v8 + 8) = 24;
  *(v8 + 16) = v9;
  v12 = sub_10004B6D8(v8, 0x18uLL);
  a1[4] = v12;
  v13 = *(a2 + 32);
  *v12 = *a2;
  *(v12 + 16) = v13;
  *(v12 + 32) = v6;
  *(v8 + 8) += 40;
  sub_10004B768(a1, v7);
  sub_10004B7D0(a1, v8);
  return a1;
}

void sub_10004B6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004B6D8(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) < a2)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 111);
    v4 = sub_10004FD04(v7, "CHECK failed: n <= size_: ");
    sub_10004FE40(&v6, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  return a1 + a2;
}

void sub_10004B750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_10004B768(void *a1, unsigned int a2)
{
  result = sub_10004B420();
  add_explicit = *result;
  if ((*result & 0x1FF) == 0)
  {
    add_explicit = atomic_fetch_add_explicit(qword_1000B6A00, 0x200uLL, memory_order_relaxed);
  }

  *result = add_explicit + 2;
  a1[3] = add_explicit | a2;
  a1[1] = 0;
  *a1 = 0;
  a1[2] = 0;
  return result;
}