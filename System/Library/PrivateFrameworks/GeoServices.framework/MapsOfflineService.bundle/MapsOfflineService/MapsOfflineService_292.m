uint64_t sub_11FE9B4(uint64_t a1)
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
      v7 = sub_11F8948(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
    v8 = *(a1 + 56);
    v9 = v2 + v8;
    if (v8 < 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = v8;
    if (v8 < 1)
    {
      goto LABEL_23;
    }
  }

  v10 = *(a1 + 64);
  if (v8 == 1)
  {
    v11 = 0;
LABEL_19:
    v19 = (v10 + 8 * v11 + 8);
    v20 = v8 - v11;
    do
    {
      v21 = *v19++;
      v22 = *(v21 + 23);
      v23 = *(v21 + 8);
      if ((v22 & 0x80u) == 0)
      {
        v23 = v22;
      }

      v9 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      --v20;
    }

    while (v20);
    goto LABEL_23;
  }

  v12 = 0;
  v11 = v8 & 0x7FFFFFFE;
  v13 = v10 + 16;
  v14 = v11;
  do
  {
    v15 = *(v13 - 8);
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    v18 = *(*v13 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    if (*(*v13 + 23) >= 0)
    {
      v18 = *(*v13 + 23);
    }

    v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
    v12 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
    v13 += 16;
    v14 -= 2;
  }

  while (v14);
  v9 += v12;
  if (v11 != v8)
  {
    goto LABEL_19;
  }

LABEL_23:
  v24 = *(a1 + 80);
  v25 = v9 + 2 * v24;
  v26 = *(a1 + 88);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = sub_16E51F0(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = sub_1959E5C((a1 + 96));
  v32 = *(a1 + 120);
  v33 = v31 + v25 + 2 * (v32 + *(a1 + 96));
  if (v32 >= 1)
  {
    v34 = *(a1 + 128);
    if (v32 == 1)
    {
      v35 = 0;
LABEL_39:
      v43 = (v34 + 8 * v35 + 8);
      v44 = v32 - v35;
      do
      {
        v45 = *v43++;
        v46 = *(v45 + 23);
        v47 = *(v45 + 8);
        if ((v46 & 0x80u) == 0)
        {
          v47 = v46;
        }

        v33 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6);
        --v44;
      }

      while (v44);
      goto LABEL_43;
    }

    v36 = 0;
    v35 = v32 & 0x7FFFFFFE;
    v37 = v34 + 16;
    v38 = v35;
    do
    {
      v39 = *(v37 - 8);
      v40 = *(v39 + 23);
      v41 = *(v39 + 8);
      v42 = *(*v37 + 8);
      if ((v40 & 0x80u) == 0)
      {
        v41 = v40;
      }

      if (*(*v37 + 23) >= 0)
      {
        v42 = *(*v37 + 23);
      }

      v33 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      v36 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v37 += 16;
      v38 -= 2;
    }

    while (v38);
    v33 += v36;
    if (v35 != v32)
    {
      goto LABEL_39;
    }
  }

LABEL_43:
  v48 = *(a1 + 144);
  v49 = v33 + 2 * v48;
  if (v48 < 1)
  {
    goto LABEL_57;
  }

  v50 = *(a1 + 152);
  if (v48 == 1)
  {
    v51 = 0;
LABEL_53:
    v59 = (v50 + 8 * v51 + 8);
    v60 = v48 - v51;
    do
    {
      v61 = *v59++;
      v62 = *(v61 + 23);
      v63 = *(v61 + 8);
      if ((v62 & 0x80u) == 0)
      {
        v63 = v62;
      }

      v49 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
      --v60;
    }

    while (v60);
    goto LABEL_57;
  }

  v52 = 0;
  v51 = v48 & 0x7FFFFFFE;
  v53 = v50 + 16;
  v54 = v51;
  do
  {
    v55 = *(v53 - 8);
    v56 = *(v55 + 23);
    v57 = *(v55 + 8);
    v58 = *(*v53 + 8);
    if ((v56 & 0x80u) == 0)
    {
      v57 = v56;
    }

    if (*(*v53 + 23) >= 0)
    {
      v58 = *(*v53 + 23);
    }

    v49 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6);
    v52 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6);
    v53 += 16;
    v54 -= 2;
  }

  while (v54);
  v49 += v52;
  if (v51 != v48)
  {
    goto LABEL_53;
  }

LABEL_57:
  v64 = *(a1 + 168);
  v65 = v49 + 2 * v64;
  if (v64 < 1)
  {
    goto LABEL_71;
  }

  v66 = *(a1 + 176);
  if (v64 == 1)
  {
    v67 = 0;
LABEL_67:
    v75 = (v66 + 8 * v67 + 8);
    v76 = v64 - v67;
    do
    {
      v77 = *v75++;
      v78 = *(v77 + 23);
      v79 = *(v77 + 8);
      if ((v78 & 0x80u) == 0)
      {
        v79 = v78;
      }

      v65 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6);
      --v76;
    }

    while (v76);
    goto LABEL_71;
  }

  v68 = 0;
  v67 = v64 & 0x7FFFFFFE;
  v69 = v66 + 16;
  v70 = v67;
  do
  {
    v71 = *(v69 - 8);
    v72 = *(v71 + 23);
    v73 = *(v71 + 8);
    v74 = *(*v69 + 8);
    if ((v72 & 0x80u) == 0)
    {
      v73 = v72;
    }

    if (*(*v69 + 23) >= 0)
    {
      v74 = *(*v69 + 23);
    }

    v65 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6);
    v68 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6);
    v69 += 16;
    v70 -= 2;
  }

  while (v70);
  v65 += v68;
  if (v67 != v64)
  {
    goto LABEL_67;
  }

LABEL_71:
  v80 = *(a1 + 16);
  if (!v80)
  {
    goto LABEL_81;
  }

  if (v80)
  {
    v84 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    v85 = *(v84 + 23);
    v86 = *(v84 + 8);
    if ((v85 & 0x80u) == 0)
    {
      v86 = v85;
    }

    v65 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v80 & 2) == 0)
    {
LABEL_74:
      if ((v80 & 4) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_103;
    }
  }

  else if ((v80 & 2) == 0)
  {
    goto LABEL_74;
  }

  v87 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
  v88 = *(v87 + 23);
  v89 = *(v87 + 8);
  if ((v88 & 0x80u) == 0)
  {
    v89 = v88;
  }

  v65 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v80 & 4) == 0)
  {
LABEL_75:
    if ((v80 & 8) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_106;
  }

LABEL_103:
  v90 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
  v91 = *(v90 + 23);
  v92 = *(v90 + 8);
  if ((v91 & 0x80u) == 0)
  {
    v92 = v91;
  }

  v65 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v80 & 8) == 0)
  {
LABEL_76:
    if ((v80 & 0x10) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_107;
  }

LABEL_106:
  v93 = sub_11FC984(*(a1 + 208));
  v65 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v80 & 0x10) == 0)
  {
LABEL_77:
    if ((v80 & 0x20) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_108;
  }

LABEL_107:
  v94 = sub_16E51F0(*(a1 + 216));
  v65 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v80 & 0x20) == 0)
  {
LABEL_78:
    if ((v80 & 0x40) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_125;
  }

LABEL_108:
  v95 = *(a1 + 224);
  v96 = *(v95 + 16);
  if ((v96 & 3) == 0)
  {
    v97 = 0;
    goto LABEL_123;
  }

  if (v96)
  {
    v97 = ((9 * (__clz(*(v95 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v96 & 2) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

  v97 = 0;
  if ((v96 & 2) != 0)
  {
LABEL_122:
    v97 += ((9 * (__clz(*(v95 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_123:
  v101 = *(v95 + 8);
  if (v101)
  {
    v106 = v101 & 0xFFFFFFFFFFFFFFFCLL;
    v107 = *((v101 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v107 < 0)
    {
      v107 = *(v106 + 16);
    }

    v97 += v107;
  }

  *(v95 + 20) = v97;
  v65 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v80 & 0x40) == 0)
  {
LABEL_79:
    if ((v80 & 0x80) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_125:
  v102 = sub_154C490(*(a1 + 232));
  v65 += v102 + ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v80 & 0x80) != 0)
  {
LABEL_80:
    v65 += ((9 * (__clz(*(a1 + 240) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_81:
  if ((v80 & 0xFF00) == 0)
  {
    goto LABEL_95;
  }

  if ((v80 & 0x100) != 0)
  {
    v65 += ((9 * (__clz(*(a1 + 244) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v80 & 0x200) == 0)
    {
LABEL_84:
      if ((v80 & 0x400) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_114;
    }
  }

  else if ((v80 & 0x200) == 0)
  {
    goto LABEL_84;
  }

  v65 += ((9 * (__clz(*(a1 + 248) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v80 & 0x400) == 0)
  {
LABEL_85:
    if ((v80 & 0x800) == 0)
    {
      goto LABEL_86;
    }

LABEL_118:
    v65 += ((9 * (__clz(*(a1 + 256) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v80 & 0x1000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_114:
  v98 = *(a1 + 252);
  v99 = ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v98 >= 0)
  {
    v100 = v99;
  }

  else
  {
    v100 = 12;
  }

  v65 += v100;
  if ((v80 & 0x800) != 0)
  {
    goto LABEL_118;
  }

LABEL_86:
  if ((v80 & 0x1000) != 0)
  {
LABEL_87:
    v65 += ((9 * (__clz(*(a1 + 260) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_88:
  v81 = v65 + 3;
  if ((v80 & 0x2000) == 0)
  {
    v81 = v65;
  }

  if ((v80 & 0x4000) != 0)
  {
    v81 += 3;
  }

  if ((v80 & 0x8000) != 0)
  {
    v65 = v81 + 3;
  }

  else
  {
    v65 = v81;
  }

LABEL_95:
  v82 = *(a1 + 8);
  if (v82)
  {
    v103 = v82 & 0xFFFFFFFFFFFFFFFCLL;
    v104 = *((v82 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v104 < 0)
    {
      v104 = *(v103 + 16);
    }

    v105 = v104 + v65;
    *(a1 + 20) = v105;
    return v105;
  }

  else
  {
    *(a1 + 20) = v65;
    return v65;
  }
}

void sub_11FF274(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201C98((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48(a1 + 48, v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_11F1A54((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a1 + 96);
    sub_1958E5C((a1 + 96), v20 + v19);
    v21 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy((v21 + 4 * v20), *(a2 + 104), 4 * *(a2 + 96));
  }

  v22 = *(a2 + 120);
  if (v22)
  {
    v23 = *(a2 + 128);
    v24 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_1201B48(a1 + 112, v24, (v23 + 8), v22, **(a1 + 128) - *(a1 + 120));
    v25 = *(a1 + 120) + v22;
    *(a1 + 120) = v25;
    v26 = *(a1 + 128);
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  v27 = *(a2 + 144);
  if (v27)
  {
    v28 = *(a2 + 152);
    v29 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_1201B48(a1 + 136, v29, (v28 + 8), v27, **(a1 + 152) - *(a1 + 144));
    v30 = *(a1 + 144) + v27;
    *(a1 + 144) = v30;
    v31 = *(a1 + 152);
    if (*v31 < v30)
    {
      *v31 = v30;
    }
  }

  v32 = *(a2 + 168);
  if (v32)
  {
    v33 = *(a2 + 176);
    v34 = sub_19592E8(a1 + 160, *(a2 + 168));
    sub_1201B48(a1 + 160, v34, (v33 + 8), v32, **(a1 + 176) - *(a1 + 168));
    v35 = *(a1 + 168) + v32;
    *(a1 + 168) = v35;
    v36 = *(a1 + 176);
    if (*v36 < v35)
    {
      *v36 = v35;
    }
  }

  v37 = *(a2 + 16);
  if (v37)
  {
    if ((v37 & 1) == 0)
    {
      if ((v37 & 2) == 0)
      {
        goto LABEL_24;
      }

LABEL_31:
      v41 = *(a2 + 192);
      *(a1 + 16) |= 2u;
      v42 = *(a1 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        sub_194EA1C((a1 + 192), (v41 & 0xFFFFFFFFFFFFFFFELL), *v43);
        if ((v37 & 4) != 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_194EA1C((a1 + 192), (v41 & 0xFFFFFFFFFFFFFFFELL), v43);
        if ((v37 & 4) != 0)
        {
          goto LABEL_33;
        }
      }

LABEL_25:
      if ((v37 & 8) == 0)
      {
        goto LABEL_26;
      }

LABEL_35:
      *(a1 + 16) |= 8u;
      v47 = *(a1 + 208);
      if (!v47)
      {
        v48 = *(a1 + 8);
        v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v49 = *v49;
        }

        sub_12005F8(v49);
        *(a1 + 208) = v47;
      }

      if (*(a2 + 208))
      {
        v50 = *(a2 + 208);
      }

      else
      {
        v50 = &off_27344E8;
      }

      sub_11FCCCC(v47, v50);
      if ((v37 & 0x10) == 0)
      {
LABEL_27:
        if ((v37 & 0x20) == 0)
        {
LABEL_65:
          if ((v37 & 0x40) != 0)
          {
            *(a1 + 16) |= 0x40u;
            v61 = *(a1 + 232);
            if (!v61)
            {
              v62 = *(a1 + 8);
              v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
              if (v62)
              {
                v63 = *v63;
              }

              v61 = sub_155248C(v63);
              *(a1 + 232) = v61;
            }

            if (*(a2 + 232))
            {
              v64 = *(a2 + 232);
            }

            else
            {
              v64 = &off_2776F70;
            }

            sub_121721C(v61, v64);
          }

          if ((v37 & 0x80) != 0)
          {
            *(a1 + 240) = *(a2 + 240);
          }

          *(a1 + 16) |= v37;
          goto LABEL_77;
        }

LABEL_51:
        *(a1 + 16) |= 0x20u;
        v55 = *(a1 + 224);
        if (!v55)
        {
          v56 = *(a1 + 8);
          v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
          if (v56)
          {
            v57 = *v57;
          }

          v55 = sub_12006B8(v57);
          *(a1 + 224) = v55;
        }

        v58 = *(a2 + 224);
        if (!v58)
        {
          v58 = &off_2734568;
        }

        v59 = *(v58 + 4);
        if ((v59 & 3) != 0)
        {
          if (v59)
          {
            *(v55 + 24) = v58[3];
          }

          if ((v59 & 2) != 0)
          {
            *(v55 + 32) = *(v58 + 8);
          }

          *(v55 + 16) |= v59;
        }

        v60 = v58[1];
        if (v60)
        {
          sub_1957EF4((v55 + 8), (v60 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        goto LABEL_65;
      }

LABEL_43:
      *(a1 + 16) |= 0x10u;
      v51 = *(a1 + 216);
      if (!v51)
      {
        v52 = *(a1 + 8);
        v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v53 = *v53;
        }

        v51 = sub_16F5828(v53);
        *(a1 + 216) = v51;
      }

      if (*(a2 + 216))
      {
        v54 = *(a2 + 216);
      }

      else
      {
        v54 = &off_277E5E8;
      }

      sub_16E527C(v51, v54);
      if ((v37 & 0x20) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_51;
    }

    v38 = *(a2 + 184);
    *(a1 + 16) |= 1u;
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      sub_194EA1C((a1 + 184), (v38 & 0xFFFFFFFFFFFFFFFELL), *v40);
      if ((v37 & 2) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_194EA1C((a1 + 184), (v38 & 0xFFFFFFFFFFFFFFFELL), v40);
      if ((v37 & 2) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_24:
    if ((v37 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_33:
    v44 = *(a2 + 200);
    *(a1 + 16) |= 4u;
    v45 = *(a1 + 8);
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      sub_194EA1C((a1 + 200), (v44 & 0xFFFFFFFFFFFFFFFELL), *v46);
      if ((v37 & 8) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_194EA1C((a1 + 200), (v44 & 0xFFFFFFFFFFFFFFFELL), v46);
      if ((v37 & 8) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_26:
    if ((v37 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

LABEL_77:
  if ((v37 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v37 & 0x100) != 0)
  {
    *(a1 + 244) = *(a2 + 244);
    if ((v37 & 0x200) == 0)
    {
LABEL_80:
      if ((v37 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_94;
    }
  }

  else if ((v37 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(a1 + 248) = *(a2 + 248);
  if ((v37 & 0x400) == 0)
  {
LABEL_81:
    if ((v37 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(a1 + 252) = *(a2 + 252);
  if ((v37 & 0x800) == 0)
  {
LABEL_82:
    if ((v37 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(a1 + 256) = *(a2 + 256);
  if ((v37 & 0x1000) == 0)
  {
LABEL_83:
    if ((v37 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(a1 + 260) = *(a2 + 260);
  if ((v37 & 0x2000) == 0)
  {
LABEL_84:
    if ((v37 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

LABEL_98:
    *(a1 + 265) = *(a2 + 265);
    if ((v37 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_97:
  *(a1 + 264) = *(a2 + 264);
  if ((v37 & 0x4000) != 0)
  {
    goto LABEL_98;
  }

LABEL_85:
  if ((v37 & 0x8000) != 0)
  {
LABEL_86:
    *(a1 + 266) = *(a2 + 266);
  }

LABEL_87:
  *(a1 + 16) |= v37;
LABEL_88:
  v65 = *(a2 + 8);
  if (v65)
  {

    sub_1957EF4((a1 + 8), (v65 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11FF850(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
LABEL_18:
    v13 = *(a1 + 80);
    while (v13 >= 1)
    {
      v14 = v13 - 1;
      v15 = sub_16E5370(*(*(a1 + 88) + 8 * v13));
      v13 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 16) & 8) != 0)
    {
      v16 = *(a1 + 208);
      v17 = *(v16 + 80);
      if (v17 >= 1)
      {
        do
        {
          v20 = *(*(v16 + 88) + 8 * v17);
          if ((*(v20 + 16) & 2) != 0)
          {
            result = sub_16E5370(*(v20 + 32));
            if (!result)
            {
              return result;
            }
          }
        }

        while (v17-- > 1);
      }

      if (*(v16 + 16))
      {
        v18 = *(v16 + 96);
        v19 = *(v18 + 32);
        if (v19 >= 1)
        {
          do
          {
            v21 = *(*(v18 + 40) + 8 * v19);
            if (*(v21 + 16))
            {
              result = sub_16E4B4C(*(v21 + 24));
              if (!result)
              {
                return result;
              }
            }
          }

          while (v19-- > 1);
        }
      }
    }

    if ((*(a1 + 16) & 0x10) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(a1 + 216));
    if (result)
    {
      return 1;
    }

    return result;
  }

  while (1)
  {
    --v2;
    v3 = *(*(a1 + 40) + 8 * v2 + 8);
    v4 = *(v3 + 32);
    if (v4 >= 1)
    {
      break;
    }

LABEL_3:
    v5 = *(v3 + 72);
    if (v5 >= 1)
    {
      while (1)
      {
        v9 = *(*(v3 + 80) + 8 * (v5 - 1) + 8);
        if ((*(v9 + 16) & 2) != 0)
        {
          v10 = *(v9 + 120);
          v11 = *(v10 + 24);
          if (v11 >= 1)
          {
            break;
          }
        }

LABEL_10:
        if (v5-- <= 1)
        {
          goto LABEL_4;
        }
      }

      while (1)
      {
        v12 = *(*(v10 + 32) + 8 * v11);
        if (*(v12 + 16))
        {
          result = sub_16E4B4C(*(v12 + 24));
          if (!result)
          {
            return result;
          }
        }

        if (v11-- <= 1)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_4:
    if (v2 <= 0)
    {
      goto LABEL_18;
    }
  }

  while (1)
  {
    v6 = *(*(v3 + 40) + 8 * v4);
    if (*(v6 + 16))
    {
      result = sub_16E5370(*(v6 + 24));
      if (!result)
      {
        return result;
      }
    }

    if (v4-- <= 1)
    {
      goto LABEL_3;
    }
  }
}

double sub_11FFA80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2676728;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 1;
  return result;
}

uint64_t sub_11FFB04(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26767A8;
  *(result + 8) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 40) = 0;
  return result;
}

double sub_11FFBAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2676828;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_11FFC2C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26768A8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_11FFCA8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2676928;
  *(result + 16) = 0;
  return result;
}

void *sub_11FFD20(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26769A8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

uint64_t sub_11FFDD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2676A28;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_11FFE78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2676AA8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_11FFEF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2676B28;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_11FFFA0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2676BA8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = &qword_278E990;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t sub_1200064(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2676C28;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_12000E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2676CA8;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1200158(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2676D28;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_12001D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_2676DA8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = a1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = a1;
  result = 0.0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  return result;
}

double sub_12002B0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2676E28;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_1200330(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2676EA8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_12003D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2676F28;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1200454(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2676FA8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_12004D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2677028;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

double sub_1200578(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26770A8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_12005F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_2677128;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  return result;
}

uint64_t sub_12006B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26771A8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1200734(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_2677228;
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
  *(v2 + 96) = 0;
  *(v2 + 104) = a1;
  *(v2 + 112) = a1;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = a1;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = a1;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = &qword_278E990;
  *(v2 + 192) = &qword_278E990;
  *(v2 + 200) = &qword_278E990;
  result = 0.0;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 251) = 0u;
  return result;
}

void sub_1201154(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_11FFA80(v9);
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
      sub_12011D0(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_12011E0(uint64_t *result, uint64_t *a2, std::string **a3, int a4, int a5)
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
      result = sub_11FFCA8(v9);
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
      result = sub_120125C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_120125C(std::string *result, uint64_t a2)
{
  size = result->__r_.__value_.__l.__size_;
  if (size)
  {
    return sub_1957EF4((a2 + 8), (size & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t *sub_1201278(uint64_t *result, uint64_t *a2, std::string **a3, int a4, int a5)
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
      result = sub_11FFE78(v9);
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
      result = sub_12012F4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12012F4(std::string *result, uint64_t a2)
{
  v2 = result->__r_.__value_.__r.__words[2];
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
    *(a2 + 32) = result[1].__r_.__value_.__l.__size_;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a2 + 24) = result[1].__r_.__value_.__l.__data_;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    *(a2 + 40) = result[1].__r_.__value_.__r.__words[2];
  }

LABEL_6:
  *(a2 + 16) |= v2;
LABEL_7:
  size = result->__r_.__value_.__l.__size_;
  if (size)
  {
    return sub_1957EF4((a2 + 8), (size & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1201358(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_11FFD20(v9);
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
      result = sub_12013D4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_12013E4(uint64_t *result, uint64_t *a2, std::string **a3, int a4, int a5)
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
      result = sub_11FFDD8(v9);
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
      result = sub_1201460(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1201460(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = result->__r_.__value_.__r.__words[2];
  if (v4)
  {
    v5 = (a2 + 16);
    v6 = *(a2 + 16);
    sub_1959094((a2 + 16), v6 + v4);
    v7 = *(a2 + 24);
    *v5 += LODWORD(v3->__r_.__value_.__r.__words[2]);
    result = memcpy((v7 + 8 * v6), v3[1].__r_.__value_.__l.__data_, 8 * SLODWORD(v3->__r_.__value_.__r.__words[2]));
  }

  size = v3->__r_.__value_.__l.__size_;
  if (size)
  {

    return sub_1957EF4((a2 + 8), (size & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t *sub_1201504(uint64_t *result, uint64_t *a2, std::string **a3, int a4, int a5)
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
      result = sub_11FFEF8(v9);
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
      result = sub_1201580(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1201580(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1].__r_.__value_.__r.__words[1];
  if (v4)
  {
    v5 = result[1].__r_.__value_.__r.__words[2];
    v6 = sub_19592E8(a2 + 24, v4);
    result = sub_1201278((a2 + 24), v6, (v5 + 8), v4, **(a2 + 40) - *(a2 + 32));
    v7 = *(a2 + 32) + v4;
    *(a2 + 32) = v7;
    v8 = *(a2 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (v3->__r_.__value_.__s.__data_[16])
  {
    data = v3[2].__r_.__value_.__l.__data_;
    *(a2 + 16) |= 1u;
    *(a2 + 48) = data;
  }

  size = v3->__r_.__value_.__l.__size_;
  if (size)
  {

    return sub_1957EF4((a2 + 8), (size & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void sub_1201658(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_11FFBAC(v9);
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
      sub_12016D4(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_12016E4(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_11FFFA0(v9);
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
      sub_1201760(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_1201770(uint64_t *result, uint64_t *a2, std::string **a3, int a4, int a5)
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
      result = sub_1200064(v9);
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
      result = sub_12017EC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12017EC(std::string *result, uint64_t a2)
{
  v2 = result->__r_.__value_.__r.__words[2];
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      *(a2 + 24) = result[1].__r_.__value_.__l.__data_;
    }

    if ((v2 & 2) != 0)
    {
      *(a2 + 32) = result[1].__r_.__value_.__r.__words[1];
    }

    *(a2 + 16) |= v2;
  }

  size = result->__r_.__value_.__l.__size_;
  if (size)
  {
    return sub_1957EF4((a2 + 8), (size & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t *sub_1201838(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BE658(v9);
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
      result = sub_12018B4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12018C4(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_12002B0(v9);
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
      sub_1201940(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_1201950(uint64_t *result, uint64_t *a2, std::string **a3, int a4, int a5)
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
      result = sub_12003D8(v9);
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
      result = sub_12019CC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12019CC(std::string *result, uint64_t a2)
{
  v2 = result->__r_.__value_.__r.__words[2];
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
    *(a2 + 28) = HIDWORD(result[1].__r_.__value_.__r.__words[0]);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a2 + 24) = result[1].__r_.__value_.__l.__data_;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    *(a2 + 32) = result[1].__r_.__value_.__r.__words[1];
  }

LABEL_6:
  *(a2 + 16) |= v2;
LABEL_7:
  size = result->__r_.__value_.__l.__size_;
  if (size)
  {
    return sub_1957EF4((a2 + 8), (size & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1201A30(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_12004D0(v9);
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
      result = sub_1201AAC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1201ABC(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_1200578(v9);
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
      sub_1201B38(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1201B48(uint64_t result, uint64_t *a2, const void **a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  if (a5 < a4)
  {
    v8 = *result;
    if (!*result)
    {
      operator new();
    }

    v9 = &a2[a5];
    v10 = a4 - a5;
    do
    {
      *v11 = result;
      v11[1] = sub_195A650;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 0;
      *v9++ = result;
      --v10;
    }

    while (v10);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v14 = *a3;
      result = *v7;
      if (*v7 != *a3)
      {
        v15 = v14[23];
        if (*(result + 23) < 0)
        {
          if ((v15 & 0x80u) == 0)
          {
            v12 = *a3;
          }

          else
          {
            v12 = *v14;
          }

          if ((v15 & 0x80u) == 0)
          {
            v13 = v14[23];
          }

          else
          {
            v13 = *(v14 + 1);
          }

          result = sub_13B38(result, v12, v13);
        }

        else if ((v14[23] & 0x80) != 0)
        {
          result = sub_13A68(result, *v14, *(v14 + 1));
        }

        else
        {
          v16 = *v14;
          *(result + 16) = *(v14 + 2);
          *result = v16;
        }
      }

      ++v7;
      ++a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1201C98(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_12001D4(v9);
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
      sub_1201D14(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1201D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v12 = *(v11 + 28) + a11;
  *(v11 + 28) = v12;
  *v11 = *(v11 + 8) + (v12 & (v12 >> 31));
}

void sub_1201D84(int a1@<W8>)
{
  v2 = *(v1 + 28) + a1;
  *(v1 + 28) = v2;
  *v1 = *(v1 + 8) + (v2 & (v2 >> 31));
}

uint64_t sub_1201EE8(uint64_t a1, std::string::size_type a2)
{

  return sub_1952690(v4, a2, v3, v2);
}

uint64_t sub_1201F38(uint64_t a1, std::string::size_type a2)
{

  return sub_1952690(v4, a2, v3, v2);
}

void sub_1201FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v12 = *(v11 + 28) + a11;
  *(v11 + 28) = v12;
  *v11 = *(v11 + 8) + (v12 & (v12 >> 31));
}

uint64_t sub_1202048@<X0>(uint64_t a1@<X8>)
{

  return sub_1958824(a1, v1);
}

char *sub_120210C(uint64_t a1, int a2)
{
  v4 = *(v2 + 92);

  return sub_225EF0C(v2, a2, v4);
}

uint64_t sub_1202124(uint64_t a1)
{

  return sub_19593CC(v1 + 24, a1);
}

void sub_1202268()
{

  operator new();
}

uint64_t sub_1202280(uint64_t a1)
{

  return sub_194E780(a1, 24, v1);
}

uint64_t sub_1202298(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26774D0;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  return result;
}

void *sub_12022CC(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if ((v4 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(v2);
  }

  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  v5 = a1[1];
  if ((v5 & 2) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      if (*v6)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v6)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_1202370(void *a1)
{
  sub_12022CC(a1);

  operator delete();
}

uint64_t sub_12023A8(uint64_t a1)
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

char *sub_12023BC(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 16);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*a3 <= __dst)
      {
        v10 = a1;
        v11 = __dst;
        v12 = a3;
        v13 = sub_225EB68(a3, v11);
        a3 = v12;
        __dst = v13;
        a1 = v10;
        v6 = *(*(v10 + 24) + 8 * i);
        *__dst = 8;
        __dst[1] = v6;
        if (v6 > 0x7F)
        {
LABEL_7:
          __dst[1] = v6 | 0x80;
          v7 = v6 >> 7;
          __dst[2] = v6 >> 7;
          __dst += 3;
          if (v6 >= 0x4000)
          {
            v8 = v6 >> 7;
            do
            {
              *(__dst - 1) = v8 | 0x80;
              v8 = v7 >> 7;
              *__dst++ = v7 >> 7;
              v9 = v7 >> 14;
              v7 >>= 7;
            }

            while (v9);
          }

          continue;
        }
      }

      else
      {
        v6 = *(*(a1 + 24) + 8 * i);
        *__dst = 8;
        __dst[1] = v6;
        if (v6 > 0x7F)
        {
          goto LABEL_7;
        }
      }

      __dst += 2;
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  v19 = v17;
  if (*a3 - __dst < v17)
  {

    return sub_1957130(a3, v18, v17, __dst);
  }

  else
  {
    memcpy(__dst, v18, v17);
    return &__dst[v19];
  }
}

uint64_t sub_1202544(uint64_t a1)
{
  result = sub_1959F14((a1 + 16)) + *(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    result += v5;
    *(a1 + 32) = result;
  }

  else
  {
    *(a1 + 32) = result;
  }

  return result;
}

std::string *sub_12025A4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__r.__words[2];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1959094(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[8 * v6], *(a2 + 24), 8 * *(a2 + 16));
  }

  v8 = *(a2 + 8);
  if (v8)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12026BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26774D0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

void *sub_12027BC(void *a1)
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

void sub_120285C(void *a1)
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

uint64_t sub_120291C(uint64_t a1)
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

char *sub_1202944(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1202BE4(uint64_t a1)
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

std::string *sub_1202CBC(std::string *result, uint64_t a2)
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

void *sub_1202D8C(void *a1)
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

void sub_1202E2C(void *a1)
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

uint64_t sub_1202EEC(uint64_t a1)
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

char *sub_1202F04(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v5 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v5;
      v4 = *(v5 + 24);
      *v3 = 8;
      v3[1] = v4;
      if (v4 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v4;
      if (v4 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v4 | 0x80;
    v8 = v4 >> 7;
    v3[2] = v4 >> 7;
    v3 += 3;
    if (v4 >= 0x4000)
    {
      v9 = v4 >> 7;
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
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v3;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
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
  if (*a3 - v3 < v14)
  {

    return sub_1957130(a3, v15, v14, v3);
  }

  else
  {
    memcpy(v3, v15, v14);
    return &v3[v16];
  }
}

uint64_t sub_120304C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v1 = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      goto LABEL_8;
    }

LABEL_6:
    *(a1 + 20) = v1;
    return v1;
  }

  v3 = *(a1 + 24);
  if (v3 < 0)
  {
    v1 = 11;
    v2 = *(a1 + 8);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v1 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 8);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v6 < 0)
  {
    v6 = *(v5 + 16);
  }

  v7 = v6 + v1;
  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_12030C8(std::string *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    LODWORD(result[1].__r_.__value_.__l.__data_) = v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_120316C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
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

  sub_1203220(a1);
  v2 = *v3;
  if (*v3)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_5:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v5)
      {
LABEL_8:
        sub_194E188();
        operator delete();
      }
    }

    else if (v5)
    {
      goto LABEL_8;
    }
  }

  return a1;
}

uint64_t (***sub_1203220(uint64_t (***result)()))()
{
  if (result != &off_27346E8)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      v3 = v2[1];
      if ((v3 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v2 + 1);
        v3 = v2[1];
      }

      *v2 = off_27215B8;
      if ((v3 & 2) != 0)
      {
        v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
        if (v3)
        {
          if (*v4)
          {
LABEL_7:
            sub_194E188();
            operator delete();
          }
        }

        else if (v4)
        {
          goto LABEL_7;
        }
      }

      operator delete();
    }

    v5 = result[4];
    if (v5)
    {
      v6 = v5[1];
      if ((v6 & 1) != 0 && !*(v6 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v5 + 1);
        v6 = v5[1];
      }

      *v5 = off_27215B8;
      if ((v6 & 2) != 0)
      {
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          if (*v7)
          {
LABEL_14:
            sub_194E188();
            operator delete();
          }
        }

        else if (v7)
        {
          goto LABEL_14;
        }
      }

      operator delete();
    }

    v8 = result[5];
    if (v8)
    {
      sub_1208F40(v8);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_1208F40(result);

      operator delete();
    }
  }

  return result;
}

void sub_12033F8(uint64_t a1)
{
  sub_120316C(a1);

  operator delete();
}

uint64_t sub_1203430(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v3 = *(result + 24);
      if ((*(v3 + 16) & 7) != 0)
      {
        *(v3 + 32) = 0;
        *(v3 + 24) = 0;
      }

      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(v1 + 32);
      v6 = *(v5 + 8);
      result = v5 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v6)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = sub_12090A0(*(v1 + 40));
    }

    if ((v2 & 8) != 0)
    {
      result = sub_12090A0(*(v1 + 48));
    }
  }

  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
  }

  if ((v2 & 0x700) != 0)
  {
    *(v1 + 84) = 0;
    *(v1 + 76) = 0;
    *(v1 + 92) = 0;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

char *sub_1203538(uint64_t a1, char *__dst, _DWORD *a3)
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
    v8 = *(a1 + 56);
    *v7 = 16;
    v7[1] = v8;
    if (v8 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *(a1 + 56);
    *__dst = 16;
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
      *(result - 1) = v10 | 0x80;
      v10 = v9 >> 7;
      *result++ = v9 >> 7;
      v11 = v9 >> 14;
      v9 >>= 7;
    }

    while (v11);
  }

LABEL_10:
  if (v5)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v12 = *(a1 + 24);
    *result = 26;
    v13 = *(v12 + 20);
    result[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, result + 1);
    }

    else
    {
      v14 = result + 2;
    }

    result = sub_1202944(v12, v14, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v15 = *(a1 + 64);
      *result = 32;
      result[1] = v15;
      if (v15 <= 0x7F)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = *(a1 + 64);
      *result = 32;
      result[1] = v15;
      if (v15 <= 0x7F)
      {
LABEL_20:
        result += 2;
        goto LABEL_25;
      }
    }

    result[1] = v15 | 0x80;
    v16 = v15 >> 7;
    result[2] = v15 >> 7;
    result += 3;
    if (v15 >= 0x4000)
    {
      v17 = v15 >> 7;
      do
      {
        *(result - 1) = v16 | 0x80;
        v16 = v17 >> 7;
        *result++ = v17 >> 7;
        v18 = v17 >> 14;
        v17 >>= 7;
      }

      while (v18);
    }
  }

LABEL_25:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_33;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v19 = *(a1 + 68);
    *result = 40;
    result[1] = v19;
    if (v19 <= 0x7F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = *(a1 + 68);
    *result = 40;
    result[1] = v19;
    if (v19 <= 0x7F)
    {
LABEL_28:
      result += 2;
      goto LABEL_33;
    }
  }

  result[1] = v19 | 0x80;
  v20 = v19 >> 7;
  result[2] = v19 >> 7;
  result += 3;
  if (v19 >= 0x4000)
  {
    v21 = v19 >> 7;
    do
    {
      *(result - 1) = v20 | 0x80;
      v20 = v21 >> 7;
      *result++ = v21 >> 7;
      v22 = v21 >> 14;
      v21 >>= 7;
    }

    while (v22);
  }

LABEL_33:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_41;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v23 = *(a1 + 72);
    *result = 48;
    result[1] = v23;
    if (v23 <= 0x7F)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v23 = *(a1 + 72);
    *result = 48;
    result[1] = v23;
    if (v23 <= 0x7F)
    {
LABEL_36:
      result += 2;
      goto LABEL_41;
    }
  }

  result[1] = v23 | 0x80;
  v24 = v23 >> 7;
  result[2] = v23 >> 7;
  result += 3;
  if (v23 >= 0x4000)
  {
    v25 = v23 >> 7;
    do
    {
      *(result - 1) = v25 | 0x80;
      v25 = v24 >> 7;
      *result++ = v24 >> 7;
      v26 = v24 >> 14;
      v24 >>= 7;
    }

    while (v26);
  }

LABEL_41:
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_49;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v27 = *(a1 + 76);
    *result = 56;
    result[1] = v27;
    if (v27 <= 0x7F)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v27 = *(a1 + 76);
    *result = 56;
    result[1] = v27;
    if (v27 <= 0x7F)
    {
LABEL_44:
      result += 2;
      goto LABEL_49;
    }
  }

  result[1] = v27 | 0x80;
  v28 = v27 >> 7;
  result[2] = v27 >> 7;
  result += 3;
  if (v27 >= 0x4000)
  {
    v29 = v27 >> 7;
    do
    {
      *(result - 1) = v29 | 0x80;
      v29 = v28 >> 7;
      *result++ = v28 >> 7;
      v30 = v28 >> 14;
      v28 >>= 7;
    }

    while (v30);
  }

LABEL_49:
  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_51;
    }

LABEL_60:
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v34 = *(a1 + 40);
    *result = 74;
    v35 = *(v34 + 20);
    result[1] = v35;
    if (v35 > 0x7F)
    {
      v36 = sub_19575D0(v35, result + 1);
      result = sub_12090D4(v34, v36, a3);
      if ((v5 & 8) != 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      result = sub_12090D4(v34, result + 2, a3);
      if ((v5 & 8) != 0)
      {
        goto LABEL_66;
      }
    }

LABEL_52:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_72;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v31 = *(a1 + 32);
  *result = 66;
  v32 = *(v31 + 20);
  result[1] = v32;
  if (v32 > 0x7F)
  {
    v33 = sub_19575D0(v32, result + 1);
    result = sub_1202F04(v31, v33, a3);
    if ((v5 & 4) != 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    result = sub_1202F04(v31, result + 2, a3);
    if ((v5 & 4) != 0)
    {
      goto LABEL_60;
    }
  }

LABEL_51:
  if ((v5 & 8) == 0)
  {
    goto LABEL_52;
  }

LABEL_66:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v37 = *(a1 + 48);
  *result = 82;
  v38 = *(v37 + 20);
  result[1] = v38;
  if (v38 > 0x7F)
  {
    v39 = sub_19575D0(v38, result + 1);
    result = sub_12090D4(v37, v39, a3);
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_79;
    }
  }

  else
  {
    result = sub_12090D4(v37, result + 2, a3);
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_79;
    }
  }

LABEL_72:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v40 = *(a1 + 80);
    *result = 88;
    result[1] = v40;
    if (v40 <= 0x7F)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v40 = *(a1 + 80);
    *result = 88;
    result[1] = v40;
    if (v40 <= 0x7F)
    {
LABEL_74:
      result += 2;
      goto LABEL_79;
    }
  }

  result[1] = v40 | 0x80;
  v41 = v40 >> 7;
  result[2] = v40 >> 7;
  result += 3;
  if (v40 >= 0x4000)
  {
    v42 = v40 >> 7;
    do
    {
      *(result - 1) = v42 | 0x80;
      v42 = v41 >> 7;
      *result++ = v41 >> 7;
      v43 = v41 >> 14;
      v41 >>= 7;
    }

    while (v43);
  }

LABEL_79:
  if ((v5 & 0x400) == 0)
  {
    goto LABEL_87;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v44 = *(a1 + 88);
    *result = 96;
    result[1] = v44;
    if (v44 <= 0x7F)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v44 = *(a1 + 88);
    *result = 96;
    result[1] = v44;
    if (v44 <= 0x7F)
    {
LABEL_82:
      result += 2;
      goto LABEL_87;
    }
  }

  result[1] = v44 | 0x80;
  v45 = v44 >> 7;
  result[2] = v44 >> 7;
  result += 3;
  if (v44 >= 0x4000)
  {
    v46 = v44 >> 7;
    do
    {
      *(result - 1) = v46 | 0x80;
      v46 = v45 >> 7;
      *result++ = v45 >> 7;
      v47 = v45 >> 14;
      v45 >>= 7;
    }

    while (v47);
  }

LABEL_87:
  v48 = *(a1 + 8);
  if (v48)
  {
    v49 = v48 & 0xFFFFFFFFFFFFFFFCLL;
    v50 = *(v49 + 31);
    if (v50 < 0)
    {
      v51 = *(v49 + 8);
      v50 = *(v49 + 16);
    }

    else
    {
      v51 = (v49 + 8);
    }

    v52 = v50;
    if (*a3 - result < v50)
    {

      return sub_1957130(a3, v51, v50, result);
    }

    else
    {
      v53 = result;
      memcpy(result, v51, v50);
      return &v53[v52];
    }
  }

  return result;
}

uint64_t sub_1203BA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x700) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  if (v2)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 16);
    if ((v5 & 7) == 0)
    {
      v6 = 0;
      v7 = *(v4 + 8);
      if ((v7 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_60;
    }

    if (v5)
    {
      v6 = ((9 * (__clz(*(v4 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v5 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = 0;
      if ((v5 & 2) == 0)
      {
LABEL_15:
        if ((v5 & 4) != 0)
        {
          v6 += ((9 * (__clz(*(v4 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
          v7 = *(v4 + 8);
          if ((v7 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v7 = *(v4 + 8);
          if ((v7 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

LABEL_60:
        v21 = v7 & 0xFFFFFFFFFFFFFFFCLL;
        v22 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v22 < 0)
        {
          v22 = *(v21 + 16);
        }

        v6 += v22;
LABEL_19:
        *(v4 + 20) = v6;
        v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v2 & 2) == 0)
        {
          goto LABEL_28;
        }

LABEL_20:
        v8 = *(a1 + 32);
        if (*(v8 + 16))
        {
          v11 = *(v8 + 24);
          if (v11 < 0)
          {
            v9 = 11;
            v10 = *(v8 + 8);
            if (v10)
            {
LABEL_63:
              v23 = v10 & 0xFFFFFFFFFFFFFFFCLL;
              v24 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
              if (v24 < 0)
              {
                v24 = *(v23 + 16);
              }

              v9 += v24;
            }
          }

          else
          {
            v9 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
            v10 = *(v8 + 8);
            if (v10)
            {
              goto LABEL_63;
            }
          }
        }

        else
        {
          v9 = 0;
          v10 = *(v8 + 8);
          if (v10)
          {
            goto LABEL_63;
          }
        }

        *(v8 + 20) = v9;
        v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_28;
      }
    }

    v6 += ((9 * (__clz(*(v4 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_15;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_28:
  if ((v2 & 4) != 0)
  {
    v12 = sub_1209418(*(a1 + 40));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_30:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_30;
  }

  v13 = sub_1209418(*(a1 + 48));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_31:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_39;
  }

LABEL_38:
  v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_32:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_40;
  }

LABEL_39:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_33:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_41;
  }

LABEL_40:
  v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) == 0)
  {
LABEL_34:
    if ((v2 & 0x700) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

LABEL_41:
  v14 = *(a1 + 72);
  if (v14 < 0)
  {
    v3 += 11;
    if ((v2 & 0x700) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v3 += ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x700) == 0)
    {
      goto LABEL_49;
    }
  }

LABEL_45:
  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_55;
  }

  v17 = *(a1 + 76);
  if (v17 < 0)
  {
    v3 += 11;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_55;
    }

LABEL_47:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v3 += ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x200) == 0)
  {
    goto LABEL_47;
  }

LABEL_55:
  v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x400) != 0)
  {
LABEL_48:
    v3 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_49:
  v15 = *(a1 + 8);
  if (v15)
  {
    v18 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v20 = v19 + v3;
    *(a1 + 20) = v20;
    return v20;
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

std::string *sub_1203F8C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_17;
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    result = result[1].__r_.__value_.__l.__data_;
    if (!result)
    {
      size = v3->__r_.__value_.__l.__size_;
      v6 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v6 = *v6;
      }

      result = sub_1208254(v6);
      v3[1].__r_.__value_.__r.__words[0] = result;
    }

    v7 = *(a2 + 24);
    if (!v7)
    {
      v7 = &off_27346A0;
    }

    v8 = *(v7 + 4);
    if ((v8 & 7) == 0)
    {
LABEL_15:
      v9 = v7[1];
      if (v9)
      {
        result = sub_1957EF4(&result->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

LABEL_17:
      if ((v4 & 2) != 0)
      {
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
        result = v3[1].__r_.__value_.__l.__size_;
        if (!result)
        {
          v10 = v3->__r_.__value_.__l.__size_;
          v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
          if (v10)
          {
            v11 = *v11;
          }

          result = sub_12082D0(v11);
          v3[1].__r_.__value_.__l.__size_ = result;
        }

        v12 = *(a2 + 32);
        if (!v12)
        {
          v12 = &off_27346C8;
        }

        if (v12[2])
        {
          v13 = *(v12 + 6);
          LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
          LODWORD(result[1].__r_.__value_.__l.__data_) = v13;
        }

        v14 = v12[1];
        if (v14)
        {
          result = sub_1957EF4(&result->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }
      }

      if ((v4 & 4) != 0)
      {
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
        v16 = v3[1].__r_.__value_.__r.__words[2];
        if (!v16)
        {
          v17 = v3->__r_.__value_.__l.__size_;
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_12096B8(v18);
          v3[1].__r_.__value_.__r.__words[2] = v16;
        }

        if (*(a2 + 40))
        {
          v19 = *(a2 + 40);
        }

        else
        {
          v19 = &off_2734888;
        }

        result = sub_12095D8(v16, v19);
        if ((v4 & 8) == 0)
        {
LABEL_30:
          if ((v4 & 0x10) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_62;
        }
      }

      else if ((v4 & 8) == 0)
      {
        goto LABEL_30;
      }

      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
      data = v3[2].__r_.__value_.__l.__data_;
      if (!data)
      {
        v21 = v3->__r_.__value_.__l.__size_;
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        data = sub_12096B8(v22);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v23 = *(a2 + 48);
      }

      else
      {
        v23 = &off_2734888;
      }

      result = sub_12095D8(data, v23);
      if ((v4 & 0x10) == 0)
      {
LABEL_31:
        if ((v4 & 0x20) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_63;
      }

LABEL_62:
      v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
      if ((v4 & 0x20) == 0)
      {
LABEL_32:
        if ((v4 & 0x40) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_64;
      }

LABEL_63:
      LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
      if ((v4 & 0x40) == 0)
      {
LABEL_33:
        if ((v4 & 0x80) == 0)
        {
LABEL_35:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
          goto LABEL_36;
        }

LABEL_34:
        LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
        goto LABEL_35;
      }

LABEL_64:
      HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (v8)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(v7 + 6);
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
LABEL_14:
          LODWORD(result->__r_.__value_.__r.__words[2]) |= v8;
          goto LABEL_15;
        }

LABEL_13:
        LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(v7 + 8);
        goto LABEL_14;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(v7 + 7);
    if ((v8 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_36:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_42;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_39;
    }

LABEL_67:
    v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_67;
  }

LABEL_39:
  if ((v4 & 0x400) != 0)
  {
LABEL_40:
    v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
  }

LABEL_41:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
LABEL_42:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12042B0(void *a1)
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

void sub_1204350(void *a1)
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

uint64_t sub_1204410(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
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

char *sub_1204450(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v43 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v43;
      v5 = *(v43 + 24);
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
    v44 = a1;
    v12 = v3;
    v13 = a3;
    v14 = sub_225EB68(a3, v12);
    a3 = v13;
    v3 = v14;
    a1 = v44;
    v11 = *(v44 + 32);
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
  v15 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v16 = v11 >> 7;
    do
    {
      *(v3 - 1) = v16 | 0x80;
      v16 = v15 >> 7;
      *v3++ = v15 >> 7;
      v17 = v15 >> 14;
      v15 >>= 7;
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
    v45 = a1;
    v19 = v3;
    v20 = a3;
    v21 = sub_225EB68(a3, v19);
    a3 = v20;
    v3 = v21;
    a1 = v45;
    v18 = *(v45 + 40);
    *v3 = 24;
    v3[1] = v18;
    if (v18 <= 0x7F)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *(a1 + 40);
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
      *(v3 - 1) = v23 | 0x80;
      v23 = v22 >> 7;
      *v3++ = v22 >> 7;
      v24 = v22 >> 14;
      v22 >>= 7;
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
    v46 = a1;
    v26 = v3;
    v27 = a3;
    v28 = sub_225EB68(a3, v26);
    a3 = v27;
    v3 = v28;
    a1 = v46;
    v25 = *(v46 + 44);
    *v3 = 32;
    v3[1] = v25;
    if (v25 <= 0x7F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v25 = *(a1 + 44);
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
  v29 = v25 >> 7;
  v3[2] = v25 >> 7;
  v3 += 3;
  if (v25 >= 0x4000)
  {
    v30 = v25 >> 7;
    do
    {
      *(v3 - 1) = v30 | 0x80;
      v30 = v29 >> 7;
      *v3++ = v29 >> 7;
      v31 = v29 >> 14;
      v29 >>= 7;
    }

    while (v31);
  }

LABEL_33:
  if ((v4 & 0x10) != 0)
  {
    if (*a3 <= v3)
    {
      v38 = a1;
      v39 = v3;
      v40 = a3;
      v41 = sub_225EB68(a3, v39);
      a3 = v40;
      v3 = v41;
      a1 = v38;
    }

    v32 = *(a1 + 48);
    *v3 = 40;
    v3[1] = v32;
    v3 += 2;
  }

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

  v42 = v36;
  if (*a3 - v3 < v36)
  {

    return sub_1957130(a3, v37, v36, v3);
  }

  else
  {
    memcpy(v3, v37, v36);
    return &v3[v42];
  }
}

unint64_t sub_12047DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_20;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_19;
    }

LABEL_15:
    v5 = *(a1 + 44);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v6;
    goto LABEL_19;
  }

  v4 = *(a1 + 40);
  if ((v4 & 0x80000000) == 0)
  {
    v2 += ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v2 += 11;
  if ((v1 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v3 = v2 + ((v1 >> 3) & 2);
LABEL_20:
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v11 = v10 + v3;
    *(a1 + 20) = v11;
    return v11;
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

std::string *sub_12048FC(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
  }

LABEL_8:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_9:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12049EC(void *a1)
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

void sub_1204A8C(void *a1)
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

uint64_t sub_1204B4C(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
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

char *sub_1204B70(uint64_t a1, char *__dst, _DWORD *a3)
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
      *(v3 - 1) = v16 | 0x80;
      v16 = v15 >> 7;
      *v3++ = v15 >> 7;
      v17 = v15 >> 14;
      v15 >>= 7;
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
      *(v3 - 1) = v24 | 0x80;
      v24 = v23 >> 7;
      *v3++ = v23 >> 7;
      v25 = v23 >> 14;
      v23 >>= 7;
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

uint64_t sub_1204E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24);
      if (v4 < 0)
      {
        v2 = 11;
        if ((v1 & 2) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v2 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v1 & 2) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v2 = 0;
      if ((v1 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    v5 = *(a1 + 28);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v6;
LABEL_15:
    if ((v1 & 4) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
      v3 = *(a1 + 8);
      if ((v3 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v3 = *(a1 + 8);
      if ((v3 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v2 = 0;
  v3 = *(a1 + 8);
  if ((v3 & 1) == 0)
  {
LABEL_17:
    *(a1 + 20) = v2;
    return v2;
  }

LABEL_19:
  v8 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v9 < 0)
  {
    v9 = *(v8 + 16);
  }

  v10 = v9 + v2;
  *(a1 + 20) = v10;
  return v10;
}

std::string *sub_1204F00(std::string *result, uint64_t a2)
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
    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
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

void *sub_1204FD0(void *a1)
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

void sub_1205070(void *a1)
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

uint64_t sub_1205130(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1F) != 0)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
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

char *sub_1205170(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v46 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v46;
      v5 = *(v46 + 24);
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
    v47 = a1;
    v12 = v3;
    v13 = a3;
    v14 = sub_225EB68(a3, v12);
    a3 = v13;
    v3 = v14;
    a1 = v47;
    v11 = *(v47 + 32);
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
  v15 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v16 = v11 >> 7;
    do
    {
      *(v3 - 1) = v16 | 0x80;
      v16 = v15 >> 7;
      *v3++ = v15 >> 7;
      v17 = v15 >> 14;
      v15 >>= 7;
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
    v48 = a1;
    v19 = v3;
    v20 = a3;
    v21 = sub_225EB68(a3, v19);
    a3 = v20;
    v3 = v21;
    a1 = v48;
    v18 = *(v48 + 40);
    *v3 = 24;
    v3[1] = v18;
    if (v18 <= 0x7F)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *(a1 + 40);
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
      *(v3 - 1) = v23 | 0x80;
      v23 = v22 >> 7;
      *v3++ = v22 >> 7;
      v24 = v22 >> 14;
      v22 >>= 7;
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
    v49 = a1;
    v26 = v3;
    v27 = a3;
    v28 = sub_225EB68(a3, v26);
    a3 = v27;
    v3 = v28;
    a1 = v49;
    v25 = *(v49 + 44);
    *v3 = 32;
    v3[1] = v25;
    if (v25 <= 0x7F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v25 = *(a1 + 44);
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
  v29 = v25 >> 7;
  v3[2] = v25 >> 7;
  v3 += 3;
  if (v25 >= 0x4000)
  {
    v30 = v25 >> 7;
    do
    {
      *(v3 - 1) = v30 | 0x80;
      v30 = v29 >> 7;
      *v3++ = v29 >> 7;
      v31 = v29 >> 14;
      v29 >>= 7;
    }

    while (v31);
  }

LABEL_33:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_41;
  }

  if (*a3 <= v3)
  {
    v33 = a1;
    v34 = v3;
    v35 = a3;
    v36 = sub_225EB68(a3, v34);
    a3 = v35;
    v3 = v36;
    a1 = v33;
    v32 = *(v33 + 48);
    *v3 = 40;
    v3[1] = v32;
    if (v32 <= 0x7F)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v32 = *(a1 + 48);
    *v3 = 40;
    v3[1] = v32;
    if (v32 <= 0x7F)
    {
LABEL_36:
      v3 += 2;
      goto LABEL_41;
    }
  }

  v3[1] = v32 | 0x80;
  v37 = v32 >> 7;
  v3[2] = v32 >> 7;
  v3 += 3;
  if (v32 >= 0x4000)
  {
    v38 = v32 >> 7;
    do
    {
      *(v3 - 1) = v38 | 0x80;
      v38 = v37 >> 7;
      *v3++ = v37 >> 7;
      v39 = v37 >> 14;
      v37 >>= 7;
    }

    while (v39);
  }

LABEL_41:
  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v3;
  }

  v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
  v43 = *((v40 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v43 < 0)
  {
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
  }

  else
  {
    v44 = (v42 + 8);
  }

  v45 = v43;
  if (*a3 - v3 < v43)
  {

    return sub_1957130(a3, v44, v43, v3);
  }

  else
  {
    memcpy(v3, v44, v43);
    return &v3[v45];
  }
}

unint64_t sub_1205558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
        if ((v1 & 4) == 0)
        {
          if ((v1 & 8) == 0)
          {
            goto LABEL_11;
          }

LABEL_18:
          v6 = *(a1 + 44);
          if (v6 < 0)
          {
            v2 += 11;
            if ((v1 & 0x10) != 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v2 += ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
            if ((v1 & 0x10) != 0)
            {
              goto LABEL_22;
            }
          }

LABEL_12:
          v3 = *(a1 + 8);
          if ((v3 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_23;
        }

        v5 = *(a1 + 40);
        if (v5 < 0)
        {
          v2 += 11;
          if ((v1 & 8) != 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v2 += ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if ((v1 & 8) != 0)
          {
            goto LABEL_18;
          }
        }

LABEL_11:
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_12;
        }

LABEL_22:
        v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
        v3 = *(a1 + 8);
        if ((v3 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }
    }

    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_9;
  }

  v2 = 0;
  v3 = *(a1 + 8);
  if ((v3 & 1) == 0)
  {
LABEL_13:
    *(a1 + 20) = v2;
    return v2;
  }

LABEL_23:
  v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v8 < 0)
  {
    v8 = *(v7 + 16);
  }

  v9 = v8 + v2;
  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_12056A8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
  }

LABEL_8:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_9:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1205798(void *a1)
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

  sub_120584C(a1);
  v2 = *v3;
  if (*v3)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_5:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v5)
      {
LABEL_8:
        sub_194E188();
        operator delete();
      }
    }

    else if (v5)
    {
      goto LABEL_8;
    }
  }

  return a1;
}

uint64_t sub_120584C(uint64_t result)
{
  if (result != &off_27347E0)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      sub_120316C(result);
      operator delete();
    }

    v2 = v1[4];
    if (v2)
    {
      v3 = v2[1];
      if ((v3 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v2 + 1);
        v3 = v2[1];
      }

      *v2 = off_27215B8;
      if ((v3 & 2) != 0)
      {
        v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
        if (v3)
        {
          if (*v4)
          {
LABEL_9:
            sub_194E188();
            operator delete();
          }
        }

        else if (v4)
        {
          goto LABEL_9;
        }
      }

      operator delete();
    }

    v5 = v1[5];
    if (v5)
    {
      v6 = v5[1];
      if ((v6 & 1) != 0 && !*(v6 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v5 + 1);
        v6 = v5[1];
      }

      *v5 = off_27215B8;
      if ((v6 & 2) != 0)
      {
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          if (*v7)
          {
LABEL_16:
            sub_194E188();
            operator delete();
          }
        }

        else if (v7)
        {
          goto LABEL_16;
        }
      }

      operator delete();
    }

    v8 = v1[6];
    if (v8)
    {
      v9 = v8[1];
      if ((v9 & 1) != 0 && !*(v9 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v8 + 1);
        v9 = v8[1];
      }

      *v8 = off_27215B8;
      if ((v9 & 2) != 0)
      {
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          if (*v10)
          {
LABEL_23:
            sub_194E188();
            operator delete();
          }
        }

        else if (v10)
        {
          goto LABEL_23;
        }
      }

      operator delete();
    }
  }

  return result;
}

void sub_1205AA8(void *a1)
{
  sub_1205798(a1);

  operator delete();
}

uint64_t sub_1205AE0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      result = sub_1203430(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 32);
      if ((*(v3 + 16) & 0x1F) != 0)
      {
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        *(v3 + 48) = 0;
        *(v3 + 40) = 0;
      }

      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 4) != 0)
    {
      v5 = *(v1 + 40);
      if ((*(v5 + 16) & 7) != 0)
      {
        *(v5 + 24) = 0;
        *(v5 + 32) = 0;
      }

      v6 = *(v5 + 8);
      result = v5 + 8;
      *(result + 8) = 0;
      if (v6)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 8) != 0)
    {
      v7 = *(v1 + 48);
      if ((*(v7 + 16) & 0x1F) != 0)
      {
        *(v7 + 40) = 0u;
        *(v7 + 24) = 0u;
      }

      v8 = *(v7 + 8);
      result = v7 + 8;
      *(result + 8) = 0;
      if (v8)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v2 & 0x30) != 0)
  {
    *(v1 + 56) = 0;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

char *sub_1205BF4(uint64_t a1, char *__dst, _DWORD *a3)
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
    v8 = *(a1 + 56);
    *v7 = 8;
    v7[1] = v8;
    if (v8 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *(a1 + 56);
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
      *(result - 1) = v10 | 0x80;
      v10 = v9 >> 7;
      *result++ = v9 >> 7;
      v11 = v9 >> 14;
      v9 >>= 7;
    }

    while (v11);
  }

LABEL_10:
  if (v5)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v12 = *(a1 + 24);
    *result = 18;
    v13 = *(v12 + 20);
    result[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, result + 1);
    }

    else
    {
      v14 = result + 2;
    }

    result = sub_1203538(v12, v14, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v15 = *(a1 + 60);
      *result = 32;
      result[1] = v15;
      if (v15 <= 0x7F)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = *(a1 + 60);
      *result = 32;
      result[1] = v15;
      if (v15 <= 0x7F)
      {
LABEL_20:
        result += 2;
        goto LABEL_25;
      }
    }

    result[1] = v15 | 0x80;
    v16 = v15 >> 7;
    result[2] = v15 >> 7;
    result += 3;
    if (v15 >= 0x4000)
    {
      v17 = v15 >> 7;
      do
      {
        *(result - 1) = v16 | 0x80;
        v16 = v17 >> 7;
        *result++ = v17 >> 7;
        v18 = v17 >> 14;
        v17 >>= 7;
      }

      while (v18);
    }
  }

LABEL_25:
  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_27;
    }

LABEL_36:
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v23 = *(a1 + 40);
    *result = 50;
    v24 = *(v23 + 20);
    result[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, result + 1);
      result = sub_1204B70(v23, v25, a3);
      if ((v5 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      result = sub_1204B70(v23, result + 2, a3);
      if ((v5 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_28:
    v19 = *(a1 + 8);
    if ((v19 & 1) == 0)
    {
      return result;
    }

    goto LABEL_48;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v20 = *(a1 + 32);
  *result = 42;
  v21 = *(v20 + 20);
  result[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, result + 1);
    result = sub_1204450(v20, v22, a3);
    if ((v5 & 4) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    result = sub_1204450(v20, result + 2, a3);
    if ((v5 & 4) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_27:
  if ((v5 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_42:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v26 = *(a1 + 48);
  *result = 58;
  v27 = *(v26 + 20);
  result[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, result + 1);
    result = sub_1205170(v26, v28, a3);
    v19 = *(a1 + 8);
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = sub_1205170(v26, result + 2, a3);
    v19 = *(a1 + 8);
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

LABEL_48:
  v29 = v19 & 0xFFFFFFFFFFFFFFFCLL;
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
  if (*a3 - result < v30)
  {

    return sub_1957130(a3, v31, v30, result);
  }

  else
  {
    v33 = result;
    memcpy(result, v31, v30);
    return &v33[v32];
  }
}

uint64_t sub_1205F90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) != 0)
  {
    if (v2)
    {
      v5 = sub_1203BA0(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
LABEL_9:
        if ((v2 & 4) == 0)
        {
          if ((v2 & 8) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_34;
        }

        v8 = *(a1 + 40);
        v9 = *(v8 + 16);
        if ((v9 & 7) == 0)
        {
          v10 = 0;
          v11 = *(v8 + 8);
          if ((v11 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_43;
        }

        if (v9)
        {
          v12 = *(v8 + 24);
          if (v12 < 0)
          {
            v10 = 11;
            if ((v9 & 2) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v10 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
            if ((v9 & 2) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v10 = 0;
          if ((v9 & 2) == 0)
          {
            goto LABEL_29;
          }
        }

        v13 = *(v8 + 28);
        if (v13 < 0)
        {
          v14 = 11;
        }

        else
        {
          v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        v10 += v14;
LABEL_29:
        if ((v9 & 4) != 0)
        {
          v10 += ((9 * (__clz(*(v8 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
          v11 = *(v8 + 8);
          if ((v11 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v11 = *(v8 + 8);
          if ((v11 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

LABEL_43:
        v20 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v21 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v21 < 0)
        {
          v21 = *(v20 + 16);
        }

        v10 += v21;
LABEL_33:
        *(v8 + 20) = v10;
        v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v2 & 8) == 0)
        {
LABEL_11:
          if ((v2 & 0x10) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_35;
        }

LABEL_34:
        v15 = sub_1205558(*(a1 + 48));
        v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v2 & 0x10) == 0)
        {
LABEL_12:
          if ((v2 & 0x20) == 0)
          {
            goto LABEL_13;
          }

LABEL_39:
          v3 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
          v4 = *(a1 + 8);
          if ((v4 & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_40;
        }

LABEL_35:
        v16 = *(a1 + 56);
        if (v16 < 0)
        {
          v3 += 11;
          if ((v2 & 0x20) != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v3 += ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if ((v2 & 0x20) != 0)
          {
            goto LABEL_39;
          }
        }

LABEL_13:
        v4 = *(a1 + 8);
        if ((v4 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_40;
      }
    }

    v6 = sub_12047DC(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_9;
  }

  v3 = 0;
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    *(a1 + 20) = v3;
    return v3;
  }

LABEL_40:
  v17 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v18 < 0)
  {
    v18 = *(v17 + 16);
  }

  v19 = v18 + v3;
  *(a1 + 20) = v19;
  return v19;
}

void sub_1206234(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_65;
  }

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

      sub_120834C(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_27346E8;
    }

    sub_1203F8C(v5, v8);
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

      sub_12083D0(v11);
      *(a1 + 32) = v9;
    }

    v12 = *(a2 + 32);
    if (!v12)
    {
      v12 = &off_2734748;
    }

    v13 = *(v12 + 4);
    if ((v13 & 0x1F) == 0)
    {
      goto LABEL_26;
    }

    if (v13)
    {
      *(v9 + 24) = v12[3];
      if ((v13 & 2) == 0)
      {
LABEL_21:
        if ((v13 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_71;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_21;
    }

    *(v9 + 32) = v12[4];
    if ((v13 & 4) == 0)
    {
LABEL_22:
      if ((v13 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_72;
    }

LABEL_71:
    *(v9 + 40) = *(v12 + 10);
    if ((v13 & 8) == 0)
    {
LABEL_23:
      if ((v13 & 0x10) == 0)
      {
LABEL_25:
        *(v9 + 16) |= v13;
LABEL_26:
        v14 = v12[1];
        if (v14)
        {
          sub_1957EF4((v9 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        goto LABEL_28;
      }

LABEL_24:
      *(v9 + 48) = *(v12 + 48);
      goto LABEL_25;
    }

LABEL_72:
    *(v9 + 44) = *(v12 + 11);
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_28:
  if ((v4 & 4) == 0)
  {
    goto LABEL_43;
  }

  *(a1 + 16) |= 4u;
  v15 = *(a1 + 40);
  if (!v15)
  {
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v15 = sub_1208450(v17);
    *(a1 + 40) = v15;
  }

  v18 = *(a2 + 40);
  if (!v18)
  {
    v18 = &off_2734780;
  }

  v19 = *(v18 + 4);
  if ((v19 & 7) != 0)
  {
    if (v19)
    {
      *(v15 + 6) = *(v18 + 6);
      if ((v19 & 2) == 0)
      {
LABEL_38:
        if ((v19 & 4) == 0)
        {
LABEL_40:
          *(v15 + 4) |= v19;
          goto LABEL_41;
        }

LABEL_39:
        v15[4] = v18[4];
        goto LABEL_40;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_38;
    }

    *(v15 + 7) = *(v18 + 7);
    if ((v19 & 4) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_41:
  v20 = v18[1];
  if (v20)
  {
    sub_1957EF4(v15 + 1, (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

LABEL_43:
  if ((v4 & 8) != 0)
  {
    *(a1 + 16) |= 8u;
    v21 = *(a1 + 48);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_12084CC(v23);
      *(a1 + 48) = v21;
    }

    v24 = *(a2 + 48);
    if (!v24)
    {
      v24 = &off_27347A8;
    }

    v25 = *(v24 + 4);
    if ((v25 & 0x1F) == 0)
    {
      goto LABEL_58;
    }

    if (v25)
    {
      *(v21 + 24) = v24[3];
      if ((v25 & 2) == 0)
      {
LABEL_53:
        if ((v25 & 4) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_79;
      }
    }

    else if ((v25 & 2) == 0)
    {
      goto LABEL_53;
    }

    *(v21 + 32) = v24[4];
    if ((v25 & 4) == 0)
    {
LABEL_54:
      if ((v25 & 8) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_80;
    }

LABEL_79:
    *(v21 + 40) = *(v24 + 10);
    if ((v25 & 8) == 0)
    {
LABEL_55:
      if ((v25 & 0x10) == 0)
      {
LABEL_57:
        *(v21 + 16) |= v25;
LABEL_58:
        v26 = v24[1];
        if (v26)
        {
          sub_1957EF4((v21 + 8), (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        goto LABEL_60;
      }

LABEL_56:
      *(v21 + 48) = v24[6];
      goto LABEL_57;
    }

LABEL_80:
    *(v21 + 44) = *(v24 + 11);
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_60:
  if ((v4 & 0x10) != 0)
  {
    *(a1 + 56) = *(a2 + 56);
  }

  if ((v4 & 0x20) != 0)
  {
    *(a1 + 60) = *(a2 + 60);
  }

  *(a1 + 16) |= v4;
LABEL_65:
  v27 = *(a2 + 8);
  if (v27)
  {

    sub_1957EF4((a1 + 8), (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_12065AC(void *a1)
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
    v8 = (v5 + 2);
    v9 = *v5;
    if (v9 >= 1)
    {
      do
      {
        if (*v8)
        {
          sub_1205798(*v8);
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

void sub_12066F0(void *a1)
{
  sub_12065AC(a1);

  operator delete();
}

uint64_t sub_1206728(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1205AE0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_12067AC(uint64_t a1, char *__dst, _DWORD *a3)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    result = __dst;
    goto LABEL_10;
  }

  v6 = __dst;
  if (*a3 <= __dst)
  {
    v6 = sub_225EB68(a3, __dst);
    v7 = *(a1 + 48);
    *v6 = 8;
    v6[1] = v7;
    if (v7 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *(a1 + 48);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 <= 0x7F)
    {
LABEL_5:
      result = v6 + 2;
      goto LABEL_10;
    }
  }

  v6[1] = v7 | 0x80;
  v8 = v7 >> 7;
  v6[2] = v7 >> 7;
  result = v6 + 3;
  if (v7 >= 0x4000)
  {
    v9 = v7 >> 7;
    do
    {
      *(result - 1) = v9 | 0x80;
      v9 = v8 >> 7;
      *result++ = v8 >> 7;
      v10 = v8 >> 14;
      v8 >>= 7;
    }

    while (v10);
  }

LABEL_10:
  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *result = 18;
      v15 = *(v14 + 20);
      result[1] = v15;
      if (v15 <= 0x7F)
      {
        v13 = result + 2;
      }

      else
      {
        v13 = sub_19575D0(v15, result + 1);
      }

      result = sub_1205BF4(v14, v13, a3);
    }
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
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

    v20 = v18;
    if (*a3 - result < v18)
    {

      return sub_1957130(a3, v19, v18, result);
    }

    else
    {
      v21 = result;
      memcpy(result, v19, v18);
      return &v21[v20];
    }
  }

  return result;
}

uint64_t sub_1206984(uint64_t a1)
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

  if (!v2)
  {
    v2 = 0;
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v10 = *(a1 + 48);
    if (v10 < 0)
    {
      v2 += 11;
      v8 = *(a1 + 8);
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v2 += ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      v8 = *(a1 + 8);
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_15;
  }

  v5 = 8 * v2;
  do
  {
    v6 = *v4++;
    v7 = sub_1205F90(v6);
    v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
    v5 -= 8;
  }

  while (v5);
  if (*(a1 + 16))
  {
    goto LABEL_11;
  }

LABEL_8:
  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
LABEL_9:
    *(a1 + 20) = v2;
    return v2;
  }

LABEL_15:
  v11 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v12 < 0)
  {
    v12 = *(v11 + 16);
  }

  v13 = v12 + v2;
  *(a1 + 20) = v13;
  return v13;
}

void sub_1206A8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1208BBC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

void *sub_1206BD4(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if ((v4 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(v2);
  }

  v5 = a1[4];
  if (v5 && !a1[2])
  {
    v8 = (v5 + 2);
    v9 = *v5;
    if (v9 >= 1)
    {
      do
      {
        if (*v8)
        {
          sub_12065AC(*v8);
          operator delete();
        }

        ++v8;
        --v9;
      }

      while (v9);
      v5 = a1[4];
    }

    operator delete(v5);
    a1[4] = 0;
    *a1 = off_27215B8;
    v6 = a1[1];
    if ((v6 & 2) == 0)
    {
      return a1;
    }
  }

  else
  {
    a1[4] = 0;
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

void sub_1206D18(void *a1)
{
  sub_1206BD4(a1);

  operator delete();
}

uint64_t *sub_1206D50(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 1)
  {
    v2 = 0;
    v34 = a1;
    v3 = *(a1 + 32) + 8;
    do
    {
      v4 = *(v3 + 8 * v2);
      v5 = *(v4 + 32);
      if (v5 >= 1)
      {
        v6 = *(v4 + 40) + 8;
        do
        {
          v7 = *v6;
          v8 = *(*v6 + 16);
          if ((v8 & 0xF) != 0)
          {
            if (v8)
            {
              v9 = *(v7 + 24);
              v10 = *(v9 + 16);
              if ((v10 & 0xF) != 0)
              {
                if (v10)
                {
                  v11 = *(v9 + 24);
                  if ((*(v11 + 16) & 7) != 0)
                  {
                    *(v11 + 32) = 0;
                    *(v11 + 24) = 0;
                  }

                  v13 = *(v11 + 8);
                  v12 = v11 + 8;
                  *(v12 + 8) = 0;
                  if (v13)
                  {
                    sub_1957EA8(v12);
                  }
                }

                if ((v10 & 2) != 0)
                {
                  v14 = *(v9 + 32);
                  v16 = *(v14 + 8);
                  v15 = v14 + 8;
                  *(v15 + 16) = 0;
                  *(v15 + 8) = 0;
                  if (v16)
                  {
                    sub_1957EA8(v15);
                  }
                }

                if ((v10 & 4) != 0)
                {
                  sub_12090A0(*(v9 + 40));
                }

                if ((v10 & 8) != 0)
                {
                  sub_12090A0(*(v9 + 48));
                }
              }

              if ((v10 & 0xF0) != 0)
              {
                *(v9 + 56) = 0;
                *(v9 + 64) = 0;
                *(v9 + 72) = 0;
              }

              if ((v10 & 0x700) != 0)
              {
                *(v9 + 84) = 0;
                *(v9 + 76) = 0;
                *(v9 + 92) = 0;
              }

              v18 = *(v9 + 8);
              v17 = v9 + 8;
              *(v17 + 8) = 0;
              if (v18)
              {
                sub_1957EA8(v17);
              }
            }

            if ((v8 & 2) != 0)
            {
              v19 = *(v7 + 32);
              if ((*(v19 + 16) & 0x1F) != 0)
              {
                *(v19 + 24) = 0;
                *(v19 + 32) = 0;
                *(v19 + 48) = 0;
                *(v19 + 40) = 0;
              }

              v21 = *(v19 + 8);
              v20 = v19 + 8;
              *(v20 + 8) = 0;
              if (v21)
              {
                sub_1957EA8(v20);
              }
            }

            if ((v8 & 4) != 0)
            {
              v22 = *(v7 + 40);
              if ((*(v22 + 16) & 7) != 0)
              {
                *(v22 + 24) = 0;
                *(v22 + 32) = 0;
              }

              v24 = *(v22 + 8);
              v23 = v22 + 8;
              *(v23 + 8) = 0;
              if (v24)
              {
                sub_1957EA8(v23);
              }
            }

            if ((v8 & 8) != 0)
            {
              v25 = *(v7 + 48);
              if ((*(v25 + 16) & 0x1F) != 0)
              {
                *(v25 + 40) = 0u;
                *(v25 + 24) = 0u;
              }

              v27 = *(v25 + 8);
              v26 = v25 + 8;
              *(v26 + 8) = 0;
              if (v27)
              {
                sub_1957EA8(v26);
              }
            }
          }

          if ((v8 & 0x30) != 0)
          {
            *(v7 + 56) = 0;
          }

          v29 = *(v7 + 8);
          v28 = v7 + 8;
          *(v28 + 8) = 0;
          if (v29)
          {
            sub_1957EA8(v28);
          }

          v6 += 8;
          --v5;
        }

        while (v5);
        *(v4 + 32) = 0;
      }

      v31 = *(v4 + 8);
      v30 = v4 + 8;
      *(v30 + 40) = 0;
      *(v30 + 8) = 0;
      if (v31)
      {
        sub_1957EA8(v30);
      }

      ++v2;
    }

    while (v2 != v1);
    a1 = v34;
    *(v34 + 24) = 0;
  }

  v33 = *(a1 + 8);
  result = (a1 + 8);
  if (v33)
  {

    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1206FB0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = 0;
    result = __dst;
    do
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v9 = *(*(a1 + 32) + 8 * v6 + 8);
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

      result = sub_12067AC(v9, v8, a3);
      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    result = __dst;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
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

    v15 = v13;
    if (*a3 - result < v13)
    {

      return sub_1957130(a3, v14, v13, result);
    }

    else
    {
      v16 = result;
      memcpy(result, v14, v13);
      return &v16[v15];
    }
  }

  return result;
}

uint64_t sub_12070F0(uint64_t a1)
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
    v5 = &v4[v2];
    while (1)
    {
      v6 = *v4;
      v7 = *(*v4 + 32);
      v8 = *(*v4 + 40);
      if (v8)
      {
        v9 = (v8 + 8);
      }

      else
      {
        v9 = 0;
      }

      if (v7)
      {
        v10 = 8 * v7;
        do
        {
          v11 = *v9++;
          v12 = sub_1205F90(v11);
          v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
          v10 -= 8;
        }

        while (v10);
        if (*(v6 + 16))
        {
LABEL_15:
          v13 = *(v6 + 48);
          if (v13 < 0)
          {
            v14 = 11;
          }

          else
          {
            v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
          }

          v7 += v14;
        }
      }

      else
      {
        v7 = 0;
        if (*(v6 + 16))
        {
          goto LABEL_15;
        }
      }

      v15 = *(v6 + 8);
      if (v15)
      {
        v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
        v17 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v17 < 0)
        {
          v17 = *(v16 + 16);
        }

        v7 += v17;
      }

      *(v6 + 20) = v7;
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      if (++v4 == v5)
      {
        goto LABEL_26;
      }
    }
  }

  v2 = 0;
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

  *(a1 + 40) = v2;
  return v2;
}

void sub_120725C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1208C48((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

uint64_t sub_1207384(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
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

  sub_12074E0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  v5 = *(a1 + 40);
  if (v5 && !*(a1 + 24))
  {
    v8 = (v5 + 2);
    v9 = *v5;
    if (v9 >= 1)
    {
      do
      {
        if (*v8)
        {
          sub_1206BD4(*v8);
          operator delete();
        }

        ++v8;
        --v9;
      }

      while (v9);
      v5 = *(a1 + 40);
    }

    operator delete(v5);
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v6 = *(a1 + 8);
    if ((v6 & 2) == 0)
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v6 = *(a1 + 8);
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
LABEL_10:
      sub_194E188();
      operator delete();
    }
  }

  else if (v7)
  {
    goto LABEL_10;
  }

  return a1;
}

uint64_t (***sub_12074E0(uint64_t (***result)()))()
{
  if (result != &off_2734820)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      sub_1208F40(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_1208F40(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_1208F40(v4);
      operator delete();
    }

    result = v1[9];
    if (result)
    {
      sub_1208F40(result);

      operator delete();
    }
  }

  return result;
}

void sub_120758C(uint64_t a1)
{
  sub_1207384(a1);

  operator delete();
}

uint64_t sub_12075C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1206D50(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    result = sub_12090A0(*(v1 + 56));
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_19;
  }

  result = sub_12090A0(*(v1 + 48));
  if ((v5 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  result = sub_12090A0(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = sub_12090A0(*(v1 + 72));
  }

LABEL_11:
  if ((v5 & 0xF0) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
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

char *sub_12076CC(uint64_t a1, char *a2, _DWORD *a3)
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
      v10 = *(v9 + 40);
      result[1] = v10;
      if (v10 <= 0x7F)
      {
        v8 = result + 2;
      }

      else
      {
        v8 = sub_19575D0(v10, result + 1);
      }

      result = sub_1206FB0(v9, v8, a3);
      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    result = a2;
  }

  v11 = *(a1 + 16);
  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v12 = *(a1 + 80);
      *result = 16;
      result[1] = v12;
      if (v12 <= 0x7F)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = *(a1 + 80);
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
  }

LABEL_18:
  if ((v11 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v16 = *(a1 + 84);
    *result = 24;
    result[1] = v16;
    if (v16 <= 0x7F)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = *(a1 + 84);
    *result = 24;
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
      *(result - 1) = v18 | 0x80;
      v18 = v17 >> 7;
      *result++ = v17 >> 7;
      v19 = v17 >> 14;
      v17 >>= 7;
    }

    while (v19);
  }

LABEL_26:
  if (v11)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v20 = *(a1 + 48);
    *result = 34;
    v21 = *(v20 + 20);
    result[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, result + 1);
      result = sub_12090D4(v20, v22, a3);
      if ((v11 & 2) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      result = sub_12090D4(v20, result + 2, a3);
      if ((v11 & 2) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_28:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_42;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_28;
  }

LABEL_36:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v23 = *(a1 + 56);
  *result = 42;
  v24 = *(v23 + 20);
  result[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, result + 1);
    result = sub_12090D4(v23, v25, a3);
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    result = sub_12090D4(v23, result + 2, a3);
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_49;
    }
  }

LABEL_42:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v26 = *(a1 + 88);
    *result = 56;
    result[1] = v26;
    if (v26 <= 0x7F)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v26 = *(a1 + 88);
    *result = 56;
    result[1] = v26;
    if (v26 <= 0x7F)
    {
LABEL_44:
      result += 2;
      goto LABEL_49;
    }
  }

  result[1] = v26 | 0x80;
  v27 = v26 >> 7;
  result[2] = v26 >> 7;
  result += 3;
  if (v26 >= 0x4000)
  {
    v28 = v26 >> 7;
    do
    {
      *(result - 1) = v28 | 0x80;
      v28 = v27 >> 7;
      *result++ = v27 >> 7;
      v29 = v27 >> 14;
      v27 >>= 7;
    }

    while (v29);
  }

LABEL_49:
  if ((v11 & 0x80) == 0)
  {
    goto LABEL_57;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v30 = *(a1 + 92);
    *result = 64;
    result[1] = v30;
    if (v30 <= 0x7F)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v30 = *(a1 + 92);
    *result = 64;
    result[1] = v30;
    if (v30 <= 0x7F)
    {
LABEL_52:
      result += 2;
      goto LABEL_57;
    }
  }

  result[1] = v30 | 0x80;
  v31 = v30 >> 7;
  result[2] = v30 >> 7;
  result += 3;
  if (v30 >= 0x4000)
  {
    v32 = v30 >> 7;
    do
    {
      *(result - 1) = v31 | 0x80;
      v31 = v32 >> 7;
      *result++ = v32 >> 7;
      v33 = v32 >> 14;
      v32 >>= 7;
    }

    while (v33);
  }

LABEL_57:
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_65;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v34 = *(a1 + 96);
    *result = 72;
    result[1] = v34;
    if (v34 <= 0x7F)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v34 = *(a1 + 96);
    *result = 72;
    result[1] = v34;
    if (v34 <= 0x7F)
    {
LABEL_60:
      result += 2;
      goto LABEL_65;
    }
  }

  result[1] = v34 | 0x80;
  v35 = v34 >> 7;
  result[2] = v34 >> 7;
  result += 3;
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

LABEL_65:
  if ((v11 & 4) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v39 = *(a1 + 64);
    *result = 82;
    v40 = *(v39 + 20);
    result[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, result + 1);
      result = sub_12090D4(v39, v41, a3);
      if ((v11 & 8) != 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      result = sub_12090D4(v39, result + 2, a3);
      if ((v11 & 8) != 0)
      {
        goto LABEL_75;
      }
    }

LABEL_67:
    v38 = *(a1 + 8);
    if ((v38 & 1) == 0)
    {
      return result;
    }

    goto LABEL_81;
  }

  if ((v11 & 8) == 0)
  {
    goto LABEL_67;
  }

LABEL_75:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v42 = *(a1 + 72);
  *result = 90;
  v43 = *(v42 + 20);
  result[1] = v43;
  if (v43 > 0x7F)
  {
    v44 = sub_19575D0(v43, result + 1);
    result = sub_12090D4(v42, v44, a3);
    v38 = *(a1 + 8);
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = sub_12090D4(v42, result + 2, a3);
    v38 = *(a1 + 8);
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

LABEL_81:
  v45 = v38 & 0xFFFFFFFFFFFFFFFCLL;
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

    return sub_1957130(a3, v47, v46, result);
  }

  else
  {
    v49 = result;
    memcpy(result, v47, v46);
    return &v49[v48];
  }
}

uint64_t sub_1207CBC(uint64_t a1)
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

  if (!v2)
  {
    v2 = 0;
    v8 = *(a1 + 16);
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_10:
    if (v8)
    {
      v12 = sub_1209418(*(a1 + 48));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_27;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v13 = sub_1209418(*(a1 + 56));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

LABEL_27:
    v14 = sub_1209418(*(a1 + 64));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_14:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_28:
    v15 = sub_1209418(*(a1 + 72));
    v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_15:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_16;
      }

LABEL_37:
      v20 = *(a1 + 84);
      if (v20 < 0)
      {
        v2 += 11;
        if ((v8 & 0x40) != 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 += ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v8 & 0x40) != 0)
        {
          goto LABEL_41;
        }
      }

LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_29:
    v16 = *(a1 + 80);
    if (v16 < 0)
    {
      v2 += 11;
      if ((v8 & 0x20) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 += ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 0x20) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_16:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_41:
    v21 = *(a1 + 88);
    if (v21 < 0)
    {
      v2 += 11;
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v2 += ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    v2 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_19;
  }

  v5 = 8 * v2;
  do
  {
    v6 = *v4++;
    v7 = sub_12070F0(v6);
    v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
    v5 -= 8;
  }

  while (v5);
  v8 = *(a1 + 16);
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_19:
  if ((v8 & 0x100) != 0)
  {
    v11 = *(a1 + 96);
    if (v11 < 0)
    {
      v2 += 11;
      v9 = *(a1 + 8);
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v2 += ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      v9 = *(a1 + 8);
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v9 = *(a1 + 8);
    if ((v9 & 1) == 0)
    {
LABEL_21:
      *(a1 + 20) = v2;
      return v2;
    }
  }

  v17 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v18 < 0)
  {
    v18 = *(v17 + 16);
  }

  v19 = v18 + v2;
  *(a1 + 20) = v19;
  return v19;
}

void sub_1207F94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1208D9C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    if (v9)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 48);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_12096B8(v14);
        *(a1 + 48) = v12;
      }

      if (*(a2 + 48))
      {
        v15 = *(a2 + 48);
      }

      else
      {
        v15 = &off_2734888;
      }

      sub_12095D8(v12, v15);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_37;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v16 = *(a1 + 56);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_12096B8(v18);
      *(a1 + 56) = v16;
    }

    if (*(a2 + 56))
    {
      v19 = *(a2 + 56);
    }

    else
    {
      v19 = &off_2734888;
    }

    sub_12095D8(v16, v19);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(a1 + 16) |= 4u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_12096B8(v22);
      *(a1 + 64) = v20;
    }

    if (*(a2 + 64))
    {
      v23 = *(a2 + 64);
    }

    else
    {
      v23 = &off_2734888;
    }

    sub_12095D8(v20, v23);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(a1 + 16) |= 8u;
    v24 = *(a1 + 72);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_12096B8(v26);
      *(a1 + 72) = v24;
    }

    if (*(a2 + 72))
    {
      v27 = *(a2 + 72);
    }

    else
    {
      v27 = &off_2734888;
    }

    sub_12095D8(v24, v27);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(a1 + 80) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(a1 + 84) = *(a2 + 84);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 92) = *(a2 + 92);
      goto LABEL_14;
    }

LABEL_55:
    *(a1 + 88) = *(a2 + 88);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0x100) != 0)
  {
    v10 = *(a2 + 96);
    *(a1 + 16) |= 0x100u;
    *(a1 + 96) = v10;
  }

  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1208254(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2677568;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_12082D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26775E8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_120834C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2677668;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  return result;
}

double sub_12083D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26776E8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_1208450(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2677768;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_12084CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26777E8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_120854C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2677868;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

uint64_t sub_12085CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26778E8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_1208674(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2677968;
  *(result + 8) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 40) = 0;
  return result;
}

double sub_120871C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26779E8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  return result;
}

void sub_1208BBC(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_120854C(v9);
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
      sub_1208C38(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1208C48(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_12085CC(v9);
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
      sub_1208CC4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1208CC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = sub_19592E8(a2 + 24, v4);
    sub_1208BBC((a2 + 24), v6, (v5 + 8), v4, **(a2 + 40) - *(a2 + 32));
    v7 = *(a2 + 32) + v4;
    *(a2 + 32) = v7;
    v8 = *(a2 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a1 + 16))
  {
    v9 = *(a1 + 48);
    *(a2 + 16) |= 1u;
    *(a2 + 48) = v9;
  }

  v10 = *(a1 + 8);
  if (v10)
  {

    sub_1957EF4((a2 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1208D9C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1208674(v9);
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
      sub_1208E18(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1208E18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = sub_19592E8(a2 + 16, v4);
    sub_1208C48((a2 + 16), v6, (v5 + 8), v4, **(a2 + 32) - *(a2 + 24));
    v7 = *(a2 + 24) + v4;
    *(a2 + 24) = v7;
    v8 = *(a2 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a1 + 8);
  if (v9)
  {

    sub_1957EF4((a2 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1208F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v12 = *(v11 + 28) + a11;
  *(v11 + 28) = v12;
  *v11 = *(v11 + 8) + (v12 & (v12 >> 31));
}

void *sub_1208F40(void *a1)
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

void sub_1208FE0(void *a1)
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