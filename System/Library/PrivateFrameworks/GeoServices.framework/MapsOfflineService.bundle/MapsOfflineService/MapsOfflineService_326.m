char *sub_13803B4(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 264);
    *v4 = 10;
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_152C800(v7, v9, a3);
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 272);
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

    v4 = sub_16EE2C4(v10, v12, a3);
  }

  v13 = *(a1 + 24);
  if (v13 < 1)
  {
    v16 = v4;
  }

  else
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 32) + 4 * i);
      *v4 = 24;
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v4[1] = v15 | 0x80;
        v17 = v15 >> 7;
        v4[2] = v15 >> 7;
        v16 = v4 + 3;
        if (v15 >= 0x4000)
        {
          LOBYTE(v4) = v4[2];
          do
          {
            *(v16 - 1) = v4 | 0x80;
            v4 = (v17 >> 7);
            *v16++ = v17 >> 7;
            v18 = v17 >> 14;
            v17 >>= 7;
          }

          while (v18);
        }
      }

      else
      {
        v16 = v4 + 2;
      }

      v4 = v16;
    }
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v19 = *(a1 + 280);
    *v16 = 34;
    v20 = *(v19 + 44);
    v16[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v16 + 1);
    }

    else
    {
      v21 = v16 + 2;
    }

    v16 = sub_152C800(v19, v21, a3);
    if ((v6 & 1) == 0)
    {
LABEL_29:
      if ((v6 & 2) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_29;
  }

  v16 = sub_128AEEC(a3, 5, *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL, v16);
  if ((v6 & 2) == 0)
  {
LABEL_30:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

LABEL_40:
  v16 = sub_128AEEC(a3, 6, *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL, v16);
  if ((v6 & 0x1000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

LABEL_41:
  if (*a3 <= v16)
  {
    v16 = sub_225EB68(a3, v16);
  }

  v22 = *(a1 + 288);
  *v16 = 58;
  v23 = *(v22 + 20);
  v16[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v16 + 1);
  }

  else
  {
    v24 = v16 + 2;
  }

  v16 = sub_16E5FE0(v22, v24, a3);
  if ((v6 & 0x40000) != 0)
  {
LABEL_47:
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v25 = *(a1 + 336);
    *v16 = 69;
    *(v16 + 1) = v25;
    v16 += 5;
  }

LABEL_50:
  v26 = *(a1 + 48);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v28 = *(*(a1 + 56) + 8 * j + 8);
      *v16 = 74;
      v29 = *(v28 + 20);
      v16[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v16 + 1);
      }

      else
      {
        v30 = v16 + 2;
      }

      v16 = sub_137BA68(v28, v30, a3);
    }
  }

  v31 = *(a1 + 72);
  if (v31 >= 1)
  {
    v32 = 8;
    do
    {
      v16 = sub_1355F54(a3, 10, *(*(a1 + 80) + v32), v16);
      v32 += 8;
      --v31;
    }

    while (v31);
  }

  if ((v6 & 4) != 0)
  {
    v16 = sub_128AEEC(a3, 11, *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL, v16);
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v33 = *(a1 + 296);
    *v16 = 98;
    v34 = *(v33 + 44);
    v16[1] = v34;
    if (v34 > 0x7F)
    {
      v35 = sub_19575D0(v34, v16 + 1);
    }

    else
    {
      v35 = v16 + 2;
    }

    v16 = sub_16E5070(v33, v35, a3);
  }

  v36 = *(a1 + 88);
  if (v36 < 1)
  {
    v39 = v16;
  }

  else
  {
    for (k = 0; k != v36; ++k)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v38 = *(*(a1 + 96) + 4 * k);
      *v16 = 104;
      v16[1] = v38;
      if (v38 > 0x7F)
      {
        v16[1] = v38 | 0x80;
        v40 = v38 >> 7;
        v16[2] = v38 >> 7;
        v39 = v16 + 3;
        if (v38 >= 0x4000)
        {
          LOBYTE(v41) = v16[2];
          do
          {
            *(v39 - 1) = v41 | 0x80;
            v41 = v40 >> 7;
            *v39++ = v40 >> 7;
            v42 = v40 >> 14;
            v40 >>= 7;
          }

          while (v42);
        }
      }

      else
      {
        v39 = v16 + 2;
      }

      v16 = v39;
    }
  }

  v43 = *(a1 + 104);
  if (v43 < 1)
  {
    v46 = v39;
  }

  else
  {
    for (m = 0; m != v43; ++m)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v45 = *(*(a1 + 112) + 4 * m);
      *v39 = 112;
      v39[1] = v45;
      if (v45 > 0x7F)
      {
        v39[1] = v45 | 0x80;
        v47 = v45 >> 7;
        v39[2] = v45 >> 7;
        v46 = v39 + 3;
        if (v45 >= 0x4000)
        {
          LOBYTE(v48) = v39[2];
          do
          {
            *(v46 - 1) = v48 | 0x80;
            v48 = v47 >> 7;
            *v46++ = v47 >> 7;
            v49 = v47 >> 14;
            v47 >>= 7;
          }

          while (v49);
        }
      }

      else
      {
        v46 = v39 + 2;
      }

      v39 = v46;
    }
  }

  v50 = *(a1 + 128);
  if (v50)
  {
    for (n = 0; n != v50; ++n)
    {
      if (*a3 <= v46)
      {
        v46 = sub_225EB68(a3, v46);
      }

      v52 = *(*(a1 + 136) + 8 * n + 8);
      *v46 = 122;
      v53 = *(v52 + 20);
      v46[1] = v53;
      if (v53 > 0x7F)
      {
        v54 = sub_19575D0(v53, v46 + 1);
      }

      else
      {
        v54 = v46 + 2;
      }

      v46 = sub_137C390(v52, v54, a3);
    }
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v56 = *(a1 + 304);
    *v46 = 386;
    v57 = *(v56 + 44);
    v46[2] = v57;
    if (v57 > 0x7F)
    {
      v58 = sub_19575D0(v57, v46 + 2);
    }

    else
    {
      v58 = v46 + 3;
    }

    v46 = sub_16E5070(v56, v58, a3);
    if ((v6 & 0x8000) == 0)
    {
LABEL_104:
      if ((v6 & 0x10000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_120;
    }
  }

  else if ((v6 & 0x8000) == 0)
  {
    goto LABEL_104;
  }

  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v59 = *(a1 + 312);
  *v46 = 394;
  v60 = *(v59 + 28);
  v46[2] = v60;
  if (v60 > 0x7F)
  {
    v61 = sub_19575D0(v60, v46 + 2);
  }

  else
  {
    v61 = v46 + 3;
  }

  v46 = sub_1540418(v59, v61, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_105:
    if ((v6 & 8) == 0)
    {
      goto LABEL_106;
    }

LABEL_126:
    v46 = sub_128AEEC(a3, 19, *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL, v46);
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_127;
  }

LABEL_120:
  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v62 = *(a1 + 320);
  *v46 = 402;
  v63 = *(v62 + 20);
  v46[2] = v63;
  if (v63 > 0x7F)
  {
    v64 = sub_19575D0(v63, v46 + 2);
  }

  else
  {
    v64 = v46 + 3;
  }

  v46 = sub_15480D4(v62, v64, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_126;
  }

LABEL_106:
  if ((v6 & 0x80000) == 0)
  {
LABEL_107:
    v55 = v46;
    goto LABEL_134;
  }

LABEL_127:
  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v65 = *(a1 + 340);
  *v46 = 416;
  v46[2] = v65;
  if (v65 > 0x7F)
  {
    v46[2] = v65 | 0x80;
    v66 = v65 >> 7;
    v46[3] = v65 >> 7;
    v55 = v46 + 4;
    if (v65 >= 0x4000)
    {
      LOBYTE(v46) = v46[3];
      do
      {
        *(v55 - 1) = v46 | 0x80;
        v46 = (v66 >> 7);
        *v55++ = v66 >> 7;
        v67 = v66 >> 14;
        v66 >>= 7;
      }

      while (v67);
    }
  }

  else
  {
    v55 = v46 + 3;
  }

LABEL_134:
  if ((v6 & 0x10) != 0)
  {
    v55 = sub_128AEEC(a3, 21, *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL, v55);
    if ((v6 & 0x20) == 0)
    {
LABEL_136:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_142;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_136;
  }

  v55 = sub_128AEEC(a3, 22, *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL, v55);
  if ((v6 & 0x40) == 0)
  {
LABEL_137:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_143;
  }

LABEL_142:
  v55 = sub_128AEEC(a3, 23, *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL, v55);
  if ((v6 & 0x80) == 0)
  {
LABEL_138:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_144;
  }

LABEL_143:
  v55 = sub_128AEEC(a3, 24, *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL, v55);
  if ((v6 & 0x20000) == 0)
  {
    goto LABEL_150;
  }

LABEL_144:
  if (*a3 <= v55)
  {
    v55 = sub_225EB68(a3, v55);
  }

  v68 = *(a1 + 328);
  *v55 = 458;
  v69 = *(v68 + 20);
  v55[2] = v69;
  if (v69 > 0x7F)
  {
    v70 = sub_19575D0(v69, v55 + 2);
  }

  else
  {
    v70 = v55 + 3;
  }

  v55 = sub_16E5FE0(v68, v70, a3);
LABEL_150:
  v71 = *(a1 + 152);
  if (v71)
  {
    for (ii = 0; ii != v71; ++ii)
    {
      if (*a3 <= v55)
      {
        v55 = sub_225EB68(a3, v55);
      }

      v73 = *(*(a1 + 160) + 8 * ii + 8);
      *v55 = 466;
      v74 = *(v73 + 20);
      v55[2] = v74;
      if (v74 > 0x7F)
      {
        v75 = sub_19575D0(v74, v55 + 2);
      }

      else
      {
        v75 = v55 + 3;
      }

      v55 = sub_137CAC8(v73, v75, a3);
    }
  }

  v76 = *(a1 + 176);
  if (v76)
  {
    for (jj = 0; jj != v76; ++jj)
    {
      if (*a3 <= v55)
      {
        v55 = sub_225EB68(a3, v55);
      }

      v78 = *(*(a1 + 184) + 8 * jj + 8);
      *v55 = 498;
      v79 = *(v78 + 20);
      v55[2] = v79;
      if (v79 > 0x7F)
      {
        v80 = sub_19575D0(v79, v55 + 2);
      }

      else
      {
        v80 = v55 + 3;
      }

      v55 = sub_137E528(v78, v80, a3);
    }
  }

  if ((v6 & 0x100000) != 0)
  {
    if (*a3 <= v55)
    {
      v55 = sub_225EB68(a3, v55);
    }

    v82 = *(a1 + 344);
    *v55 = 504;
    v55[2] = v82;
    if (v82 > 0x7F)
    {
      v55[2] = v82 | 0x80;
      v83 = v82 >> 7;
      v55[3] = v82 >> 7;
      v81 = v55 + 4;
      if (v82 >= 0x4000)
      {
        LOBYTE(v84) = v55[3];
        do
        {
          *(v81 - 1) = v84 | 0x80;
          v84 = v83 >> 7;
          *v81++ = v83 >> 7;
          v85 = v83 >> 14;
          v83 >>= 7;
        }

        while (v85);
      }
    }

    else
    {
      v81 = v55 + 3;
    }
  }

  else
  {
    v81 = v55;
  }

  if ((v6 & 0x200000) != 0)
  {
    if (*a3 <= v81)
    {
      v81 = sub_225EB68(a3, v81);
    }

    v87 = *(a1 + 348);
    *v81 = 640;
    v81[2] = v87;
    if (v87 > 0x7F)
    {
      v81[2] = v87 | 0x80;
      v88 = v87 >> 7;
      v81[3] = v87 >> 7;
      v86 = v81 + 4;
      if (v87 >= 0x4000)
      {
        LOBYTE(v89) = v81[3];
        do
        {
          *(v86 - 1) = v89 | 0x80;
          v89 = v88 >> 7;
          *v86++ = v88 >> 7;
          v90 = v88 >> 14;
          v88 >>= 7;
        }

        while (v90);
      }
    }

    else
    {
      v86 = v81 + 3;
    }
  }

  else
  {
    v86 = v81;
  }

  if ((v6 & 0x100) != 0)
  {
    v86 = sub_128AEEC(a3, 33, *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL, v86);
  }

  v91 = *(a1 + 8);
  if ((v91 & 1) == 0)
  {
    return v86;
  }

  v93 = v91 & 0xFFFFFFFFFFFFFFFCLL;
  v94 = *(v93 + 31);
  if (v94 < 0)
  {
    v95 = *(v93 + 8);
    v94 = *(v93 + 16);
  }

  else
  {
    v95 = (v93 + 8);
  }

  if ((*a3 - v86) >= v94)
  {
    v96 = v94;
    memcpy(v86, v95, v94);
    v86 += v96;
    return v86;
  }

  return sub_1957130(a3, v95, v94, v86);
}

uint64_t sub_1380F38(uint64_t a1)
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
      v14 = sub_137BD28(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 72);
  v16 = v9 + v15;
  if (v15 >= 1)
  {
    v17 = (*(a1 + 80) + 8);
    do
    {
      v18 = *v17++;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v16 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      --v15;
    }

    while (v15);
  }

  v21 = *(a1 + 88);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(*(a1 + 96) + 4 * v23);
      if (v24 < 0)
      {
        v25 = 10;
      }

      else
      {
        v25 = (9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6;
      }

      v22 += v25;
      ++v23;
    }

    while (v21 != v23);
  }

  else
  {
    v22 = 0;
  }

  v26 = *(a1 + 104);
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(*(a1 + 112) + 4 * v27);
      if (v29 < 0)
      {
        v30 = 10;
      }

      else
      {
        v30 = (9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6;
      }

      v28 += v30;
      ++v27;
    }

    while (v26 != v27);
  }

  else
  {
    v28 = 0;
  }

  v31 = *(a1 + 128);
  v32 = v16 + v21 + v22 + v26 + v28 + v31;
  v33 = *(a1 + 136);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_137C4E0(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 152);
  v39 = v32 + 2 * v38;
  v40 = *(a1 + 160);
  if (v40)
  {
    v41 = (v40 + 8);
  }

  else
  {
    v41 = 0;
  }

  if (v38)
  {
    v42 = 8 * v38;
    do
    {
      v43 = *v41++;
      v44 = sub_137CD84(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 176);
  v46 = v39 + 2 * v45;
  v47 = *(a1 + 184);
  if (v47)
  {
    v48 = (v47 + 8);
  }

  else
  {
    v48 = 0;
  }

  if (v45)
  {
    v49 = 8 * v45;
    do
    {
      v50 = *v48++;
      v51 = sub_137E944(v50);
      v46 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6);
      v49 -= 8;
    }

    while (v49);
  }

  v52 = *(a1 + 16);
  if (!v52)
  {
    goto LABEL_66;
  }

  if (v52)
  {
    v61 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
    v62 = *(v61 + 23);
    v63 = *(v61 + 8);
    if ((v62 & 0x80u) == 0)
    {
      v63 = v62;
    }

    v46 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v52 & 2) == 0)
    {
LABEL_57:
      if ((v52 & 4) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_95;
    }
  }

  else if ((v52 & 2) == 0)
  {
    goto LABEL_57;
  }

  v64 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v46 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v52 & 4) == 0)
  {
LABEL_58:
    if ((v52 & 8) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_98;
  }

LABEL_95:
  v67 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
  v68 = *(v67 + 23);
  v69 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v69 = v68;
  }

  v46 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v52 & 8) == 0)
  {
LABEL_59:
    if ((v52 & 0x10) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_101;
  }

LABEL_98:
  v70 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v46 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 0x10) == 0)
  {
LABEL_60:
    if ((v52 & 0x20) == 0)
    {
      goto LABEL_61;
    }

LABEL_104:
    v76 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
    v77 = *(v76 + 23);
    v78 = *(v76 + 8);
    if ((v77 & 0x80u) == 0)
    {
      v78 = v77;
    }

    v46 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v52 & 0x40) == 0)
    {
LABEL_62:
      if ((v52 & 0x80) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_63;
    }

    goto LABEL_107;
  }

LABEL_101:
  v73 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
  v74 = *(v73 + 23);
  v75 = *(v73 + 8);
  if ((v74 & 0x80u) == 0)
  {
    v75 = v74;
  }

  v46 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 0x20) != 0)
  {
    goto LABEL_104;
  }

LABEL_61:
  if ((v52 & 0x40) == 0)
  {
    goto LABEL_62;
  }

LABEL_107:
  v79 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
  v80 = *(v79 + 23);
  v81 = *(v79 + 8);
  if ((v80 & 0x80u) == 0)
  {
    v81 = v80;
  }

  v46 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 0x80) != 0)
  {
LABEL_63:
    v53 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
    v54 = *(v53 + 23);
    v55 = *(v53 + 8);
    if ((v54 & 0x80u) == 0)
    {
      v55 = v54;
    }

    v46 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_66:
  if ((v52 & 0xFF00) == 0)
  {
    goto LABEL_76;
  }

  if ((v52 & 0x100) != 0)
  {
    v82 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
    v83 = *(v82 + 23);
    v84 = *(v82 + 8);
    if ((v83 & 0x80u) == 0)
    {
      v84 = v83;
    }

    v46 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v52 & 0x200) == 0)
    {
LABEL_69:
      if ((v52 & 0x400) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_115;
    }
  }

  else if ((v52 & 0x200) == 0)
  {
    goto LABEL_69;
  }

  v85 = sub_152D208(*(a1 + 264));
  v46 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v52 & 0x400) == 0)
  {
LABEL_70:
    if ((v52 & 0x800) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_116;
  }

LABEL_115:
  v86 = sub_16EE474(*(a1 + 272));
  v46 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v52 & 0x800) == 0)
  {
LABEL_71:
    if ((v52 & 0x1000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_117;
  }

LABEL_116:
  v87 = sub_152D208(*(a1 + 280));
  v46 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v52 & 0x1000) == 0)
  {
LABEL_72:
    if ((v52 & 0x2000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_118;
  }

LABEL_117:
  v88 = sub_16E62F4(*(a1 + 288));
  v46 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v52 & 0x2000) == 0)
  {
LABEL_73:
    if ((v52 & 0x4000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_119;
  }

LABEL_118:
  v89 = sub_16E51F0(*(a1 + 296));
  v46 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v52 & 0x4000) == 0)
  {
LABEL_74:
    if ((v52 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_119:
  v90 = sub_16E51F0(*(a1 + 304));
  v46 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 0x8000) != 0)
  {
LABEL_75:
    v56 = sub_1541FC0(*(a1 + 312));
    v46 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_76:
  if ((v52 & 0x3F0000) == 0)
  {
    goto LABEL_87;
  }

  if ((v52 & 0x10000) != 0)
  {
    v57 = sub_1548710(*(a1 + 320));
    v46 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v52 & 0x20000) != 0)
  {
    v58 = sub_16E62F4(*(a1 + 328));
    v46 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v52 & 0x40000) != 0)
  {
    v46 += 5;
  }

  if ((v52 & 0x80000) != 0)
  {
    v91 = *(a1 + 340);
    v92 = ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v91 >= 0)
    {
      v93 = v92;
    }

    else
    {
      v93 = 12;
    }

    v46 += v93;
    if ((v52 & 0x100000) == 0)
    {
LABEL_85:
      if ((v52 & 0x200000) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }
  }

  else if ((v52 & 0x100000) == 0)
  {
    goto LABEL_85;
  }

  v46 += ((9 * (__clz(*(a1 + 344) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 0x200000) != 0)
  {
LABEL_86:
    v46 += ((9 * (__clz(*(a1 + 348) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_87:
  v59 = *(a1 + 8);
  if (v59)
  {
    v94 = v59 & 0xFFFFFFFFFFFFFFFCLL;
    v95 = *((v59 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v95 < 0)
    {
      v95 = *(v94 + 16);
    }

    v46 += v95;
  }

  *(a1 + 20) = v46;
  return v46;
}

void sub_1381740(uint64_t a1, uint64_t a2)
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
    sub_13B4FC8((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
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
    sub_1201B48(a1 + 64, v15, (v14 + 8), v13, **(a1 + 80) - *(a1 + 72));
    v16 = *(a1 + 72) + v13;
    *(a1 + 72) = v16;
    v17 = *(a1 + 80);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 88);
  if (v18)
  {
    v19 = *(a1 + 88);
    sub_1958E5C((a1 + 88), v19 + v18);
    v20 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy((v20 + 4 * v19), *(a2 + 96), 4 * *(a2 + 88));
  }

  v21 = *(a2 + 104);
  if (v21)
  {
    v22 = *(a1 + 104);
    sub_1958E5C((a1 + 104), v22 + v21);
    v23 = *(a1 + 112);
    *(a1 + 104) += *(a2 + 104);
    memcpy((v23 + 4 * v22), *(a2 + 112), 4 * *(a2 + 104));
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B5054((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 152);
  if (v29)
  {
    v30 = *(a2 + 160);
    v31 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B50E0((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 176);
  if (v34)
  {
    v35 = *(a2 + 184);
    v36 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_13B515C((a1 + 168), v36, (v35 + 8), v34, **(a1 + 184) - *(a1 + 176));
    v37 = *(a1 + 176) + v34;
    *(a1 + 176) = v37;
    v38 = *(a1 + 184);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 16);
  if (!v39)
  {
    goto LABEL_56;
  }

  if (v39)
  {
    v40 = *(a2 + 192);
    *(a1 + 16) |= 1u;
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    sub_194EA1C((a1 + 192), (v40 & 0xFFFFFFFFFFFFFFFELL), v42);
    if ((v39 & 2) == 0)
    {
LABEL_25:
      if ((v39 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_25;
  }

  v43 = *(a2 + 200);
  *(a1 + 16) |= 2u;
  v44 = *(a1 + 8);
  v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
  if (v44)
  {
    v45 = *v45;
  }

  sub_194EA1C((a1 + 200), (v43 & 0xFFFFFFFFFFFFFFFELL), v45);
  if ((v39 & 4) == 0)
  {
LABEL_26:
    if ((v39 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_38:
  v46 = *(a2 + 208);
  *(a1 + 16) |= 4u;
  v47 = *(a1 + 8);
  v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
  if (v47)
  {
    v48 = *v48;
  }

  sub_194EA1C((a1 + 208), (v46 & 0xFFFFFFFFFFFFFFFELL), v48);
  if ((v39 & 8) == 0)
  {
LABEL_27:
    if ((v39 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_41:
  v49 = *(a2 + 216);
  *(a1 + 16) |= 8u;
  v50 = *(a1 + 8);
  v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
  if (v50)
  {
    v51 = *v51;
  }

  sub_194EA1C((a1 + 216), (v49 & 0xFFFFFFFFFFFFFFFELL), v51);
  if ((v39 & 0x10) == 0)
  {
LABEL_28:
    if ((v39 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_47:
    v55 = *(a2 + 232);
    *(a1 + 16) |= 0x20u;
    v56 = *(a1 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    sub_194EA1C((a1 + 232), (v55 & 0xFFFFFFFFFFFFFFFELL), v57);
    if ((v39 & 0x40) == 0)
    {
LABEL_30:
      if ((v39 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    goto LABEL_50;
  }

LABEL_44:
  v52 = *(a2 + 224);
  *(a1 + 16) |= 0x10u;
  v53 = *(a1 + 8);
  v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
  if (v53)
  {
    v54 = *v54;
  }

  sub_194EA1C((a1 + 224), (v52 & 0xFFFFFFFFFFFFFFFELL), v54);
  if ((v39 & 0x20) != 0)
  {
    goto LABEL_47;
  }

LABEL_29:
  if ((v39 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_50:
  v58 = *(a2 + 240);
  *(a1 + 16) |= 0x40u;
  v59 = *(a1 + 8);
  v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
  if (v59)
  {
    v60 = *v60;
  }

  sub_194EA1C((a1 + 240), (v58 & 0xFFFFFFFFFFFFFFFELL), v60);
  if ((v39 & 0x80) != 0)
  {
LABEL_53:
    v61 = *(a2 + 248);
    *(a1 + 16) |= 0x80u;
    v62 = *(a1 + 8);
    v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
    if (v62)
    {
      v63 = *v63;
    }

    sub_194EA1C((a1 + 248), (v61 & 0xFFFFFFFFFFFFFFFELL), v63);
  }

LABEL_56:
  if ((v39 & 0xFF00) == 0)
  {
    goto LABEL_126;
  }

  if ((v39 & 0x100) != 0)
  {
    v64 = *(a2 + 256);
    *(a1 + 16) |= 0x100u;
    v65 = *(a1 + 8);
    v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
    if (v65)
    {
      v66 = *v66;
    }

    sub_194EA1C((a1 + 256), (v64 & 0xFFFFFFFFFFFFFFFELL), v66);
  }

  if ((v39 & 0x200) != 0)
  {
    *(a1 + 16) |= 0x200u;
    v67 = *(a1 + 264);
    if (!v67)
    {
      v68 = *(a1 + 8);
      v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
      if (v68)
      {
        v69 = *v69;
      }

      v67 = sub_1550F20(v69);
      *(a1 + 264) = v67;
    }

    if (*(a2 + 264))
    {
      v70 = *(a2 + 264);
    }

    else
    {
      v70 = &off_2776328;
    }

    sub_152D77C(v67, v70);
    if ((v39 & 0x400) == 0)
    {
LABEL_63:
      if ((v39 & 0x800) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_82;
    }
  }

  else if ((v39 & 0x400) == 0)
  {
    goto LABEL_63;
  }

  *(a1 + 16) |= 0x400u;
  v71 = *(a1 + 272);
  if (!v71)
  {
    v72 = *(a1 + 8);
    v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
    if (v72)
    {
      v73 = *v73;
    }

    v71 = sub_16F5F38(v73);
    *(a1 + 272) = v71;
  }

  if (*(a2 + 272))
  {
    v74 = *(a2 + 272);
  }

  else
  {
    v74 = &off_277E980;
  }

  sub_121721C(v71, v74);
  if ((v39 & 0x800) == 0)
  {
LABEL_64:
    if ((v39 & 0x1000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_90;
  }

LABEL_82:
  *(a1 + 16) |= 0x800u;
  v75 = *(a1 + 280);
  if (!v75)
  {
    v76 = *(a1 + 8);
    v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
    if (v76)
    {
      v77 = *v77;
    }

    v75 = sub_1550F20(v77);
    *(a1 + 280) = v75;
  }

  if (*(a2 + 280))
  {
    v78 = *(a2 + 280);
  }

  else
  {
    v78 = &off_2776328;
  }

  sub_152D77C(v75, v78);
  if ((v39 & 0x1000) != 0)
  {
LABEL_90:
    *(a1 + 16) |= 0x1000u;
    v79 = *(a1 + 288);
    if (!v79)
    {
      v80 = *(a1 + 8);
      v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
      if (v80)
      {
        v81 = *v81;
      }

      sub_16F58FC(v81);
      *(a1 + 288) = v79;
    }

    if (*(a2 + 288))
    {
      v82 = *(a2 + 288);
    }

    else
    {
      v82 = &off_277E650;
    }

    sub_16E645C(v79, v82);
  }

LABEL_98:
  if ((v39 & 0x2000) != 0)
  {
    *(a1 + 16) |= 0x2000u;
    v83 = *(a1 + 296);
    if (!v83)
    {
      v84 = *(a1 + 8);
      v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
      if (v84)
      {
        v85 = *v85;
      }

      v83 = sub_16F5828(v85);
      *(a1 + 296) = v83;
    }

    if (*(a2 + 296))
    {
      v86 = *(a2 + 296);
    }

    else
    {
      v86 = &off_277E5E8;
    }

    sub_16E527C(v83, v86);
    if ((v39 & 0x4000) == 0)
    {
LABEL_100:
      if ((v39 & 0x8000) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_118;
    }
  }

  else if ((v39 & 0x4000) == 0)
  {
    goto LABEL_100;
  }

  *(a1 + 16) |= 0x4000u;
  v87 = *(a1 + 304);
  if (!v87)
  {
    v88 = *(a1 + 8);
    v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
    if (v88)
    {
      v89 = *v89;
    }

    v87 = sub_16F5828(v89);
    *(a1 + 304) = v87;
  }

  if (*(a2 + 304))
  {
    v90 = *(a2 + 304);
  }

  else
  {
    v90 = &off_277E5E8;
  }

  sub_16E527C(v87, v90);
  if ((v39 & 0x8000) != 0)
  {
LABEL_118:
    *(a1 + 16) |= 0x8000u;
    v91 = *(a1 + 312);
    if (!v91)
    {
      v92 = *(a1 + 8);
      v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
      if (v92)
      {
        v93 = *v93;
      }

      sub_1551D64(v93);
      *(a1 + 312) = v91;
    }

    if (*(a2 + 312))
    {
      v94 = *(a2 + 312);
    }

    else
    {
      v94 = &off_27769A8;
    }

    sub_1542CDC(v91, v94);
  }

LABEL_126:
  if ((v39 & 0x3F0000) == 0)
  {
    goto LABEL_135;
  }

  if ((v39 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v96 = *(a1 + 320);
    if (!v96)
    {
      v97 = *(a1 + 8);
      v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
      if (v97)
      {
        v98 = *v98;
      }

      sub_155218C(v98);
      *(a1 + 320) = v96;
    }

    if (*(a2 + 320))
    {
      v99 = *(a2 + 320);
    }

    else
    {
      v99 = &off_2776D50;
    }

    sub_14D3AD8(v96, v99);
    if ((v39 & 0x20000) == 0)
    {
LABEL_129:
      if ((v39 & 0x40000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_155;
    }
  }

  else if ((v39 & 0x20000) == 0)
  {
    goto LABEL_129;
  }

  *(a1 + 16) |= 0x20000u;
  v100 = *(a1 + 328);
  if (!v100)
  {
    v101 = *(a1 + 8);
    v102 = (v101 & 0xFFFFFFFFFFFFFFFCLL);
    if (v101)
    {
      v102 = *v102;
    }

    sub_16F58FC(v102);
    *(a1 + 328) = v100;
  }

  if (*(a2 + 328))
  {
    v103 = *(a2 + 328);
  }

  else
  {
    v103 = &off_277E650;
  }

  sub_16E645C(v100, v103);
  if ((v39 & 0x40000) == 0)
  {
LABEL_130:
    if ((v39 & 0x80000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(a1 + 336) = *(a2 + 336);
  if ((v39 & 0x80000) == 0)
  {
LABEL_131:
    if ((v39 & 0x100000) == 0)
    {
      goto LABEL_132;
    }

LABEL_157:
    *(a1 + 344) = *(a2 + 344);
    if ((v39 & 0x200000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

LABEL_156:
  *(a1 + 340) = *(a2 + 340);
  if ((v39 & 0x100000) != 0)
  {
    goto LABEL_157;
  }

LABEL_132:
  if ((v39 & 0x200000) != 0)
  {
LABEL_133:
    *(a1 + 348) = *(a2 + 348);
  }

LABEL_134:
  *(a1 + 16) |= v39;
LABEL_135:
  v95 = *(a2 + 8);
  if (v95)
  {

    sub_1957EF4((a1 + 8), (v95 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1381F54(uint64_t a1)
{
  result = sub_1382088(a1 + 40);
  if (result)
  {
    v3 = *(a1 + 128);
    while (v3 >= 1)
    {
      v4 = *(*(a1 + 136) + 8 * v3--);
      if ((*(v4 + 16) & 1) == 0)
      {
        return 0;
      }
    }

    v5 = *(a1 + 176);
    while (v5 >= 1)
    {
      v6 = v5 - 1;
      v7 = sub_137EDD4(*(*(a1 + 184) + 8 * v5));
      v5 = v6;
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    v8 = *(a1 + 16);
    if ((v8 & 0x200) != 0)
    {
      result = sub_152DE60(*(a1 + 264));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
    }

    if ((v8 & 0x400) != 0)
    {
      result = sub_16EE510(*(a1 + 272));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
    }

    if ((v8 & 0x800) != 0)
    {
      result = sub_152DE60(*(a1 + 280));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
    }

    if ((v8 & 0x1000) != 0)
    {
      result = sub_16E6614(*(a1 + 288));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
    }

    if ((v8 & 0x2000) != 0)
    {
      result = sub_16E5370(*(a1 + 296));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
    }

    if ((v8 & 0x4000) != 0)
    {
      result = sub_16E5370(*(a1 + 304));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
    }

    if ((v8 & 0x8000) != 0)
    {
      result = sub_1543A14(*(a1 + 312));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
    }

    if ((v8 & 0x10000) != 0)
    {
      result = sub_14D3EC8(*(a1 + 320));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
    }

    if ((v8 & 0x20000) == 0)
    {
      return 1;
    }

    result = sub_16E6614(*(a1 + 328));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1382088(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 16) + 8;
  do
  {
    v3 = *(v2 + 8 * (v1 - 1));
    result = (*(v3 + 16) & 3) == 3;
    if ((*(v3 + 16) & 3) != 3)
    {
      break;
    }

    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    while (v5 >= 1)
    {
      v7 = *(v6 + 8 * v5--);
      if ((~*(v7 + 16) & 7) != 0)
      {
        return 0;
      }
    }

    v9 = __OFSUB__(v1, 2);
    v8 = v1 - 2 < 0;
    --v1;
  }

  while (v8 == v9);
  return result;
}

void *sub_1382114(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = &off_26D8E10;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = &qword_278E990;
  a1[10] = &qword_278E990;
  a1[11] = &qword_278E990;
  a1[12] = 0;
  return a1;
}

void sub_1382194(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_13821C4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
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

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (a1 != &off_276D1C0 && *(a1 + 96))
  {
    sub_16F8B5C();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_13B4E4C((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13822D4(uint64_t a1)
{
  sub_13821C4(a1);

  operator delete();
}

uint64_t sub_138230C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_137F224(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v10 + 23) & 0x80000000) == 0)
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  **v10 = 0;
  *(v10 + 8) = 0;
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  v11 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v11 + 23) & 0x80000000) == 0)
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = sub_16F8B98(*(a1 + 96));
    goto LABEL_11;
  }

  **v11 = 0;
  *(v11 + 8) = 0;
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_138244C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  if (sub_195ADC0(a3, v31, a3[11].i32[1]))
  {
    return *v31;
  }

  while (1)
  {
    v6 = (*v31 + 1);
    v7 = **v31;
    if (**v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v31 + 2);
      }
    }

    *v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          v22 = v6 - 1;
          while (1)
          {
            v23 = v22 + 1;
            *v31 = v22 + 1;
            v24 = *(a1 + 64);
            if (v24 && (v25 = *(a1 + 56), v25 < *v24))
            {
              *(a1 + 56) = v25 + 1;
              v26 = *&v24[2 * v25 + 2];
            }

            else
            {
              sub_1383608(*(a1 + 48));
              v26 = sub_19593CC(a1 + 48, v27);
              v23 = *v31;
            }

            v22 = sub_22027E0(a3, v26, v23);
            *v31 = v22;
            if (!v22)
            {
              goto LABEL_60;
            }

            if (*a3 <= v22 || *v22 != 10)
            {
              goto LABEL_36;
            }
          }
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 40) |= 1u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 72);
        goto LABEL_34;
      }

      goto LABEL_48;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 40) |= 4u;
        v20 = *(a1 + 8);
        v17 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v17 = *v17;
        }

        v18 = (a1 + 88);
LABEL_34:
        v21 = sub_194DB04(v18, v17);
        v14 = sub_1958890(v21, *v31, a3);
        goto LABEL_35;
      }

      goto LABEL_48;
    }

    if (v10 != 201 || v7 != 74)
    {
      goto LABEL_48;
    }

    *(a1 + 40) |= 8u;
    v11 = *(a1 + 96);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_16F9FEC(v13);
      *(a1 + 96) = v11;
      v6 = *v31;
    }

    v14 = sub_2201EE0(a3, v11, v6);
LABEL_35:
    *v31 = v14;
    if (!v14)
    {
      goto LABEL_60;
    }

LABEL_36:
    if (sub_195ADC0(a3, v31, a3[11].i32[1]))
    {
      return *v31;
    }
  }

  if (v7 == 26)
  {
    *(a1 + 40) |= 2u;
    v19 = *(a1 + 8);
    v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v17 = *v17;
    }

    v18 = (a1 + 80);
    goto LABEL_34;
  }

LABEL_48:
  if (v7)
  {
    v28 = (v7 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    if (v7 - 800 > 0x31F)
    {
      v29 = *(a1 + 8);
      if (v29)
      {
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v30 = sub_11F1920((a1 + 8));
        v6 = *v31;
      }

      v14 = sub_1952690(v7, v30, v6, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v7, v6, &off_276D1C0, (a1 + 8), a3);
    }

    goto LABEL_35;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v31;
  }

LABEL_60:
  *v31 = 0;
  return *v31;
}

char *sub_1382740(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 64) + 8 * i + 8);
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

      a2 = sub_13803B4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    a2 = sub_128AEEC(a3, 2, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v11 & 2) == 0)
    {
LABEL_11:
      if ((v11 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_11;
  }

  a2 = sub_128AEEC(a3, 3, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v11 & 4) != 0)
  {
LABEL_12:
    a2 = sub_128AEEC(a3, 4, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

LABEL_13:
  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 100, 200, a2, a3);
  }

  if ((v11 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v12 = *(a1 + 96);
    *a2 = 3274;
    v13 = *(v12 + 20);
    a2[2] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, a2 + 2);
    }

    else
    {
      v14 = a2 + 3;
    }

    a2 = sub_16F8E64(v12, v14, a3);
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return a2;
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

  if ((*a3 - a2) >= v18)
  {
    v20 = v18;
    memcpy(a2, v19, v18);
    a2 += v20;
    return a2;
  }

  return sub_1957130(a3, v19, v18, a2);
}

uint64_t sub_1382978(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
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
      v9 = sub_1380F38(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
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

LABEL_18:
    v17 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_21;
  }

  v14 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v10 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:
  v20 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v4 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
LABEL_12:
    v11 = sub_16F903C(*(a1 + 96));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_13:
  v12 = *(a1 + 8);
  if (v12)
  {
    v23 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v4 += v24;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1382B3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B51E8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_27;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v13 = *(a2 + 80);
    *(a1 + 40) |= 2u;
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 80), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v10 = *(a2 + 72);
  *(a1 + 40) |= 1u;
  v11 = *(a1 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  sub_194EA1C((a1 + 72), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
  if ((v9 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v9 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_16:
  v16 = *(a2 + 88);
  *(a1 + 40) |= 4u;
  v17 = *(a1 + 8);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  sub_194EA1C((a1 + 88), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v9 & 8) != 0)
  {
LABEL_19:
    *(a1 + 40) |= 8u;
    v19 = *(a1 + 96);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_16F9FEC(v21);
      *(a1 + 96) = v19;
    }

    if (*(a2 + 96))
    {
      v22 = *(a2 + 96);
    }

    else
    {
      v22 = &off_277ED18;
    }

    sub_1645A7C(v19, v22);
  }

LABEL_27:
  sub_225EA0C(a1 + 16, a2 + 16);
  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4((a1 + 8), (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1382D08(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1381F54(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_1382D80(uint64_t a1)
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

void sub_1382E20(uint64_t a1)
{
  sub_1382D80(a1);

  operator delete();
}

uint64_t sub_1382E58(uint64_t a1)
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

uint64_t sub_1382EA0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v24, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v24 + 1);
    v7 = **v24;
    if (**v24 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v24, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v24 + 2);
      }
    }

    *v24 = v6;
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v18 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v18;
        v21 = (v20 << 7) + v19;
        LODWORD(v19) = v21 - 128;
        if (v20 < 0)
        {
          *v24 = sub_19587DC(v6, (v21 - 128));
          if (!*v24)
          {
            goto LABEL_39;
          }

          LODWORD(v19) = v22;
        }

        else
        {
          v18 = v6 + 2;
LABEL_28:
          *v24 = v18;
        }

        if (sub_14CB318(v19))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v19;
        }

        else
        {
          sub_12E8450();
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
          return *v24;
        }

LABEL_39:
        *v24 = 0;
        return *v24;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = *v24;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_23;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v24, a3);
LABEL_23:
    *v24 = v14;
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  return *v24;
}

char *sub_1383070(uint64_t a1, char *__dst, void *a3)
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

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v14)
  {
    v16 = v14;
    memcpy(v6, v15, v14);
    v6 += v16;
    return v6;
  }

  return sub_1957130(a3, v15, v14, v6);
}

uint64_t sub_13831B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
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

LABEL_13:
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

uint64_t sub_1383294(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D8A90;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_1383310(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D8B10;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_13833AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D8B90;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  return result;
}

void *sub_1383434(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D8C10;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_13834B0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D8C90;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 1;
  return result;
}

void *sub_138354C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D8D10;
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
  result[14] = 0;
  result[15] = 0;
  return result;
}

double sub_1383608(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_137EE74(v2, a1, 0);
}

void *sub_1383668(uint64_t a1)
{
  if (!a1)
  {

    sub_13B5274();
  }

  return sub_1382114(v3, a1, 0);
}

uint64_t sub_13836C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D8E90;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_138374C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    goto LABEL_15;
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

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1383840(uint64_t a1)
{
  sub_138374C(a1);

  operator delete();
}

uint64_t sub_1383878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    goto LABEL_27;
  }

  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_27;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_12:
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  if ((v1 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_20:
  v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v8 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v8)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1383998(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v18 = *(a1 + 8);
          v12 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v12 = *v12;
          }

          v13 = (a1 + 24);
          goto LABEL_36;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v12 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v12 = *v12;
        }

        v13 = (a1 + 32);
        goto LABEL_36;
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v12 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v12 = *v12;
        }

        v13 = (a1 + 40);
        goto LABEL_36;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v17 = *(a1 + 8);
        v12 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_36;
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      *(a1 + 16) |= 0x10u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 56);
LABEL_36:
      v19 = sub_194DB04(v13, v12);
      v20 = sub_1958890(v19, *v25, a3);
      goto LABEL_37;
    }

    if (v7)
    {
      v21 = (v7 & 7) == 4;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v25;
      }

LABEL_50:
      *v25 = 0;
      return *v25;
    }

    v22 = *(a1 + 8);
    if (v22)
    {
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v23 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v20 = sub_1952690(v7, v23, v6, a3);
LABEL_37:
    *v25 = v20;
    if (!v20)
    {
      goto LABEL_50;
    }
  }

  return *v25;
}

char *sub_1383BD4(uint64_t a1, char *__dst, void *a3)
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

      goto LABEL_11;
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
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    v4 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_7:
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

uint64_t sub_1383D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_18;
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
  if ((v1 & 4) != 0)
  {
    v14 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v17 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_15:
    v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v12 = *(a1 + 8);
  if (v12)
  {
    v20 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v2 += v21;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_1383EDC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) == 0)
  {
    goto LABEL_23;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    size = result->__r_.__value_.__l.__size_;
    v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v7 = *v7;
    }

    result = sub_194EA1C(&result[1], (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v9 = v3->__r_.__value_.__l.__size_;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  v11 = *(a2 + 40);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v12 = v3->__r_.__value_.__l.__size_;
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_17:
  v14 = *(a2 + 48);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v15 = v3->__r_.__value_.__l.__size_;
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  result = sub_194EA1C(&v3[2], (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) != 0)
  {
LABEL_20:
    v17 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v18 = v3->__r_.__value_.__l.__size_;
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  }

LABEL_23:
  v20 = *(a2 + 8);
  if (v20)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1384060(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_1383878(result);

    return sub_1383EDC(v4, a2);
  }

  return result;
}

void *sub_13840C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D8F10;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  return result;
}

uint64_t sub_138415C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26D8F90;
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

void sub_13841D8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_138420C(void *a1)
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

void sub_1384280(void *a1)
{
  sub_138420C(a1);

  operator delete();
}

uint64_t sub_13842B8(uint64_t a1)
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

char *sub_13842DC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v21 + 1;
    v7 = *v21;
    if (*v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v21 + 2;
      }
    }

    v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v15 = v6 + 1;
        v14 = *v6;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v21 = sub_19587DC(v6, v14);
          if (!v21)
          {
            return 0;
          }
        }

        else
        {
          v15 = v6 + 2;
LABEL_24:
          v21 = v15;
        }

        if (v14 > 3)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 28) = v14;
        }

        continue;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v18 = v6 + 1;
      v17 = *v6;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if (v19 < 0)
      {
        v21 = sub_19587DC(v6, v17);
        if (!v21)
        {
          return 0;
        }
      }

      else
      {
        v18 = v6 + 2;
LABEL_30:
        v21 = v18;
      }

      if (v17 > 1)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v17;
      }

      continue;
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
        return v21;
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
      v6 = v21;
    }

    v21 = sub_1952690(v7, v13, v6, a3);
    if (!v21)
    {
      return 0;
    }
  }

  return v21;
}

char *sub_13844CC(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_138467C(uint64_t a1)
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

uint64_t sub_138474C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26D9010;
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

void sub_13847C8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_13847F8(void *a1)
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

void sub_138486C(void *a1)
{
  sub_13847F8(a1);

  operator delete();
}

uint64_t sub_13848A4(uint64_t a1)
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

char *sub_13848BC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v19, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v19 + 1;
    v7 = *v19;
    if (*v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v19 + 2;
      }
    }

    v19 = v6;
    if (v7 == 8)
    {
      v13 = v6 + 1;
      v14 = *v6;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v13;
      v16 = (v15 << 7) + v14;
      LODWORD(v14) = v16 - 128;
      if (v15 < 0)
      {
        v19 = sub_19587DC(v6, (v16 - 128));
        if (!v19)
        {
          return 0;
        }

        LODWORD(v14) = v17;
      }

      else
      {
        v13 = v6 + 2;
LABEL_19:
        v19 = v13;
      }

      if (sub_1470AE4(v14))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v14;
      }

      else
      {
        sub_12E8450();
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
        return v19;
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
      v6 = v19;
    }

    v19 = sub_1952690(v7, v12, v6, a3);
    if (!v19)
    {
      return 0;
    }
  }

  return v19;
}

char *sub_1384A34(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1384B5C(uint64_t a1)
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

uint64_t sub_1384BE0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26D9090;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_1384CE8(uint64_t a1)
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
  if (a1 != &off_276D2D0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_13847F8(v6);
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

void sub_1384DA0(uint64_t a1)
{
  sub_1384CE8(a1);

  operator delete();
}

uint64_t sub_1384DD8(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    v2 = *(result + 24);
    v3 = *(v2 + 8);
    result = v2 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v3)
    {
      result = sub_1957EA8(result);
    }
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

char *sub_1384E48(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v22 = sub_19587DC(v6, v18);
          if (!v22)
          {
            return 0;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_30:
          v22 = v19;
        }

        if (v18 > 1)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v18;
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
          return v22;
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
        v6 = v22;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_25;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_1392270(v17);
      *(a1 + 24) = v15;
      v6 = v22;
    }

    v14 = sub_2202870(a3, v15, v6);
LABEL_25:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_1385014(uint64_t a1, char *__dst, _DWORD *a3)
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
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_1384A34(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v6;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v6 >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_13851A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1384B5C(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
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

std::string *sub_1385268(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v7 = *v7;
        }

        data = sub_1392270(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_276D2B0;
      }

      result = sub_12B9D50(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1385350(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26D9110;
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

void sub_13853CC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_13853FC(void *a1)
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

void sub_1385470(void *a1)
{
  sub_13853FC(a1);

  operator delete();
}

uint64_t sub_13854A8(uint64_t a1)
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

char *sub_13854CC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v25 + 1;
    v8 = *v25;
    if (*v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v25 + 2;
      }
    }

    v25 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_24:
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
    v25 = v21;
    *(a1 + 28) = v22;
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_29:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_28:
      v25 = v18;
      *(a1 + 24) = v19;
      goto LABEL_29;
    }

    v23 = sub_1958770(v7, v19);
    v25 = v23;
    *(a1 + 24) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
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
      v7 = v25;
    }

    v25 = sub_1952690(v8, v14, v7, a3);
    if (!v25)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_38:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_13856B0(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1385860(uint64_t a1)
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

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_1385914(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26D9190;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  v6 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v6;
  return a1;
}

uint64_t sub_1385A20(uint64_t a1)
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
  if (a1 != &off_276D318)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_13853FC(v6);
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

void sub_1385AD8(uint64_t a1)
{
  sub_1385A20(a1);

  operator delete();
}

uint64_t sub_1385B10(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_13854A8(*(result + 24));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 32) = 0;
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

char *sub_1385B7C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 16)
        {
          v14 = v7 + 1;
          v13 = *v7;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v31 = sub_19587DC(v7, v13);
            if (!v31)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v14 = v7 + 2;
LABEL_17:
            v31 = v14;
          }

          if (v13 > 3)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 36) = v13;
          }

          goto LABEL_48;
        }

        goto LABEL_40;
      }

      if (v8 != 8)
      {
        goto LABEL_40;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v31 = sub_19587DC(v7, v19);
          if (!v31)
          {
            goto LABEL_61;
          }

          goto LABEL_32;
        }

        v20 = v7 + 2;
      }

      v31 = v20;
LABEL_32:
      if (v19 > 4)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v19;
      }

      goto LABEL_48;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_40;
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
      v31 = v17;
      *(a1 + 40) = v16 != 0;
      goto LABEL_48;
    }

    v29 = sub_19587DC(v7, v16);
    v31 = v29;
    *(a1 + 40) = v30 != 0;
    if (!v29)
    {
      goto LABEL_61;
    }

LABEL_48:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 24);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_1392368(v24);
      *(a1 + 24) = v22;
      v7 = v31;
    }

    v25 = sub_2202900(a3, v22, v7);
LABEL_47:
    v31 = v25;
    if (!v25)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

LABEL_40:
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
      v7 = v31;
    }

    v25 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_47;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_1385E64(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 36);
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

    v15 = *(a1 + 24);
    *v11 = 26;
    v16 = *(v15 + 20);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_13856B0(v15, v17, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v18 = *(a1 + 40);
    *v11 = 32;
    v11[1] = v18;
    v11 += 2;
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v22)
  {
    v24 = v22;
    memcpy(v11, v23, v22);
    v11 += v24;
    return v11;
  }

  return sub_1957130(a3, v23, v22, v11);
}

uint64_t sub_13860BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
    goto LABEL_11;
  }

  v5 = sub_1385860(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v8 = *(a1 + 36);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v9;
  }

  result = v3 + ((v2 >> 2) & 2);
LABEL_17:
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

std::string *sub_13861C4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v8 = *v8;
        }

        data = sub_1392368(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276D2F8;
      }

      result = sub_128F8FC(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_21;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
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
      v3[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
      goto LABEL_7;
    }

LABEL_21:
    HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
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

uint64_t sub_13862D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D9210;
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
    sub_13B5684((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_1386460(uint64_t a1)
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
  if (a1 != &off_276D348)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1385A20(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_13B53F0(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1386524(uint64_t a1)
{
  sub_1386460(a1);

  operator delete();
}

uint64_t sub_138655C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_138655C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    result = sub_1385B10(*(v1 + 48));
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_13865F8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v31, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v31 + 1;
    v7 = *v31;
    if (*v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v31 + 2;
      }
    }

    v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 24)
        {
          v25 = v6 + 1;
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_42;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v31 = sub_19587DC(v6, v24);
            if (!v31)
            {
              return 0;
            }
          }

          else
          {
            v25 = v6 + 2;
LABEL_42:
            v31 = v25;
          }

          if (v24 > 2)
          {
            sub_1313740();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 60) = v24;
          }

          continue;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        v16 = v6 - 1;
        while (1)
        {
          v31 = v16 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_1392460(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
          }

          v16 = sub_2202A20(a3, v19);
          v31 = v16;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 34)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_45;
    }

    if (v10 == 1)
    {
      if (v7 == 8)
      {
        v22 = v6 + 1;
        v21 = *v6;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          v31 = sub_19587DC(v6, v21);
          if (!v31)
          {
            return 0;
          }
        }

        else
        {
          v22 = v6 + 2;
LABEL_35:
          v31 = v22;
        }

        if (v21 > 3)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 56) = v21;
        }

        continue;
      }

LABEL_45:
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
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v31;
        }

        return 0;
      }

      v28 = *(a1 + 8);
      if (v28)
      {
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v29 = sub_11F1920((a1 + 8));
        v6 = v31;
      }

      v15 = sub_1952690(v7, v29, v6, a3);
      goto LABEL_52;
    }

    if (v10 != 2 || v7 != 18)
    {
      goto LABEL_45;
    }

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

      v12 = sub_13923E0(v14);
      *(a1 + 48) = v12;
      v6 = v31;
    }

    v15 = sub_2202990(a3, v12, v6);
LABEL_52:
    v31 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_53:
    ;
  }

  return v31;
}

char *sub_13868DC(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
    *a2 = 8;
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      a2[2] = v7 >> 7;
      v6 = a2 + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = a2[2];
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
      v6 = a2 + 2;
    }
  }

  else
  {
    v6 = a2;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 48);
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_1385E64(v11, v13, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 60);
    *v6 = 24;
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v6[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v6[2] = v15 >> 7;
      v14 = v6 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v14 - 1) = v6 | 0x80;
          v6 = (v16 >> 7);
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v6 + 2;
    }
  }

  else
  {
    v14 = v6;
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v20 = *(*(a1 + 40) + 8 * i + 8);
      *v14 = 34;
      v21 = *(v20 + 20);
      v14[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v14 + 1);
      }

      else
      {
        v22 = v14 + 2;
      }

      v14 = sub_13868DC(v20, v22, a3);
    }
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v14;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = *(v25 + 31);
  if (v26 < 0)
  {
    v27 = *(v25 + 8);
    v26 = *(v25 + 16);
  }

  else
  {
    v27 = (v25 + 8);
  }

  if (*a3 - v14 >= v26)
  {
    v28 = v26;
    memcpy(v14, v27, v26);
    v14 += v28;
    return v14;
  }

  return sub_1957130(a3, v27, v26, v14);
}

uint64_t sub_1386B8C(uint64_t a1)
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
      v7 = sub_1386B8C(v6);
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
    goto LABEL_23;
  }

  if (v8)
  {
    v9 = sub_13860BC(*(a1 + 48));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(a1 + 56);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v11;
  if ((v8 & 4) != 0)
  {
LABEL_19:
    v12 = *(a1 + 60);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v13;
  }

LABEL_23:
  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_1386CE4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_13B5684(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

        data = sub_13923E0(v13);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_276D318;
      }

      result = sub_13861C4(data, v14);
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
        HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
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

void *sub_1386E40(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_26D9290;
  v4 = *(a2 + 16);
  a1[2] = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4(a1 + 1, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  a1[3] = 0;
  return a1;
}

uint64_t sub_1386F40(uint64_t a1)
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
  if (a1 != &off_276D388)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1386460(v6);
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

void sub_1386FF8(uint64_t a1)
{
  sub_1386F40(a1);

  operator delete();
}

uint64_t sub_1387030(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_138655C(*(result + 24));
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

char *sub_138708C(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_1392460(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2202A20(a3, v14, v6);
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

char *sub_13871D0(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    v7 = *(v6 + 20);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_13868DC(v6, v8, a3);
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

uint64_t sub_13872DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_1386B8C(*(a1 + 24));
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

std::string *sub_138735C(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    data = result[1].__r_.__value_.__l.__data_;
    if (!data)
    {
      size = v3->__r_.__value_.__l.__size_;
      v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v7 = *v7;
      }

      data = sub_1392460(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_276D348;
    }

    result = sub_1386CE4(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_138741C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  *(result + 24) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1387434(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  *(result + 24) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_138744C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D9310;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1958E5C((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 4 * *(a2 + 24));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    sub_1957EF4(v4, (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  if ((v8 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v8 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v8 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v8 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v8 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  v9 = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = v9;
  return a1;
}

uint64_t sub_1387718(uint64_t a1)
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

  sub_13877A4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_13877A4(uint64_t (***result)()))()
{
  if (result != &off_276D3A8)
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      sub_1388E74(v2);
      operator delete();
    }

    v3 = v1[6];
    if (v3)
    {
      sub_1389470(v3);
      operator delete();
    }

    v4 = v1[7];
    if (v4)
    {
      sub_1389888(v4);
      operator delete();
    }

    v5 = v1[8];
    if (v5)
    {
      sub_13960FC(v5);
      operator delete();
    }

    v6 = v1[9];
    if (v6)
    {
      sub_1389DE4(v6);
      operator delete();
    }

    result = v1[10];
    if (result)
    {
      sub_1396850(result);

      operator delete();
    }
  }

  return result;
}

void sub_13878A8(uint64_t a1)
{
  sub_1387718(a1);

  operator delete();
}

uint64_t sub_13878E0(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    result = sub_1387A30(*(v1 + 48));
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v3 = *(v1 + 56);
    v4 = *(v3 + 8);
    result = v3 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v4)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_10;
  }

  result = sub_13879D0(*(result + 40));
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ((v2 & 8) != 0)
  {
    v5 = *(v1 + 64);
    v6 = *(v5 + 8);
    result = v5 + 8;
    *(result + 8) = 0;
    *(result + 24) = 0;
    if (v6)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_1387A8C(*(v1 + 72));
  }

  if ((v2 & 0x20) != 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v7 + 8);
    result = v7 + 8;
    *(result + 8) = 0;
    *(result + 24) = 0;
    if (v8)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_18:
  if ((v2 & 0xC0) != 0)
  {
    *(v1 + 92) = 0;
    *(v1 + 88) = 0;
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

unsigned __int8 *sub_13879D0(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_144692C(*(result + 3));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

uint64_t sub_1387A30(uint64_t a1)
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
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1387A74(uint64_t a1)
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

uint64_t sub_1387A8C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v3 = *(result + 24);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1389F24(*(v1 + 32));
    }

    if ((v2 & 4) != 0)
    {
      result = sub_1389FBC(*(v1 + 40));
    }
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

char *sub_1387B1C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v47 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v47, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v47 + 1;
    v9 = *v47;
    if (*v47 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v47, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v47 + 2;
      }
    }

    v47 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 <= 4)
    {
      break;
    }

    if (v9 >> 3 <= 6)
    {
      if (v13 == 5)
      {
        if (v9 == 42)
        {
          *(a1 + 16) |= 8u;
          v33 = *(a1 + 64);
          if (!v33)
          {
            v34 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v7)
            {
              v34 = *v34;
            }

            v33 = sub_13AE4CC(v34);
            *(a1 + 64) = v33;
            v8 = v47;
          }

          v16 = sub_2202C60(a3, v33, v8);
          goto LABEL_101;
        }
      }

      else if (v13 == 6 && v9 == 50)
      {
        *(a1 + 16) |= 0x10u;
        v23 = *(a1 + 72);
        if (!v23)
        {
          v24 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v24 = *v24;
          }

          sub_13927A0(v24);
          v23 = v25;
          *(a1 + 72) = v25;
          v8 = v47;
        }

        v16 = sub_2202CF0(a3, v23, v8);
        goto LABEL_101;
      }

      goto LABEL_94;
    }

    if (v13 != 7)
    {
      if (v13 != 8)
      {
        if (v13 == 9 && v9 == 74)
        {
          *(a1 + 16) |= 0x20u;
          v14 = *(a1 + 80);
          if (!v14)
          {
            v15 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v7)
            {
              v15 = *v15;
            }

            v14 = sub_13AE574(v15);
            *(a1 + 80) = v14;
            v8 = v47;
          }

          v16 = sub_2202D80(a3, v14, v8);
          goto LABEL_101;
        }

        goto LABEL_94;
      }

      if (v9 != 64)
      {
        if (v9 == 66)
        {
          *&v48 = a1 + 24;
          *(&v48 + 1) = sub_1388098;
          v49 = a1 + 8;
          v50 = 8;
          v16 = sub_1216588(a3, v8, &v48);
          goto LABEL_101;
        }

        goto LABEL_94;
      }

      v35 = v8 - 1;
      while (2)
      {
        v47 = v35 + 1;
        v36 = v35[1];
        v37 = v35 + 2;
        if (v36 < 0)
        {
          v38 = *v37;
          v39 = (v38 << 7) + v36;
          LODWORD(v36) = v39 - 128;
          if ((v38 & 0x80000000) == 0)
          {
            v37 = v35 + 3;
            goto LABEL_76;
          }

          v47 = sub_19587DC((v35 + 1), (v39 - 128));
          if (!v47)
          {
            goto LABEL_108;
          }

          LODWORD(v36) = v42;
        }

        else
        {
LABEL_76:
          v47 = v37;
        }

        if (v36 > 3)
        {
          sub_13B67EC();
        }

        else
        {
          v40 = *(a1 + 24);
          if (v40 == *(a1 + 28))
          {
            v41 = v40 + 1;
            sub_1958E5C((a1 + 24), v40 + 1);
            *(*(a1 + 32) + 4 * v40) = v36;
          }

          else
          {
            *(*(a1 + 32) + 4 * v40) = v36;
            v41 = v40 + 1;
          }

          *(a1 + 24) = v41;
        }

        v35 = v47;
        if (*a3 <= v47 || *v47 != 64)
        {
          goto LABEL_102;
        }

        continue;
      }
    }

    if (v9 != 56)
    {
      goto LABEL_94;
    }

    v5 |= 0x80u;
    v31 = v8 + 1;
    v30 = *v8;
    if (v30 < 0)
    {
      v32 = *v31;
      v30 = (v32 << 7) + v30 - 128;
      if (v32 < 0)
      {
        v43 = sub_19587DC(v8, v30);
        v47 = v43;
        *(a1 + 92) = v44 != 0;
        if (!v43)
        {
          goto LABEL_108;
        }

        goto LABEL_102;
      }

      v31 = v8 + 2;
    }

    v47 = v31;
    *(a1 + 92) = v30 != 0;
LABEL_102:
    if (sub_195ADC0(a3, &v47, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v9 >> 3 <= 2)
  {
    if (v13 == 1)
    {
      if (v9 == 10)
      {
        *(a1 + 16) |= 1u;
        v26 = *(a1 + 40);
        if (!v26)
        {
          v27 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v27 = *v27;
          }

          v26 = sub_1392628(v27);
          *(a1 + 40) = v26;
          v8 = v47;
        }

        v16 = sub_2202AB0(a3, v26, v8);
        goto LABEL_101;
      }
    }

    else if (v13 == 2 && v9 == 18)
    {
      *(a1 + 16) |= 2u;
      v18 = *(a1 + 48);
      if (!v18)
      {
        v19 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v19 = *v19;
        }

        v18 = sub_13926A4(v19);
        *(a1 + 48) = v18;
        v8 = v47;
      }

      v16 = sub_2202B40(a3, v18, v8);
      goto LABEL_101;
    }

    goto LABEL_94;
  }

  if (v13 != 3)
  {
    if (v13 != 4 || v9 != 32)
    {
      goto LABEL_94;
    }

    v21 = v8 + 1;
    v20 = *v8;
    if (v20 < 0)
    {
      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if (v22 < 0)
      {
        v47 = sub_19587DC(v8, v20);
        if (!v47)
        {
          goto LABEL_108;
        }

        goto LABEL_38;
      }

      v21 = v8 + 2;
    }

    v47 = v21;
LABEL_38:
    if (v20 > 3)
    {
      sub_12E8500();
    }

    else
    {
      *(a1 + 16) |= 0x40u;
      *(a1 + 88) = v20;
    }

    goto LABEL_102;
  }

  if (v9 == 26)
  {
    *(a1 + 16) |= 4u;
    v28 = *(a1 + 56);
    if (!v28)
    {
      v29 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v7)
      {
        v29 = *v29;
      }

      v28 = sub_1392728(v29);
      *(a1 + 56) = v28;
      v8 = v47;
    }

    v16 = sub_2202BD0(a3, v28, v8);
LABEL_101:
    v47 = v16;
    if (!v16)
    {
      goto LABEL_108;
    }

    goto LABEL_102;
  }

LABEL_94:
  if (v9)
  {
    v45 = (v9 & 7) == 4;
  }

  else
  {
    v45 = 1;
  }

  if (!v45)
  {
    if (*v7)
    {
      v46 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v46 = sub_11F1920((a1 + 8));
      v8 = v47;
    }

    v16 = sub_1952690(v9, v46, v8, a3);
    goto LABEL_101;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_108:
    v47 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v47;
}

char *sub_13880A4(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 40);
    *v4 = 10;
    v9 = *(v8 + 20);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_1389130(v8, v10, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_18:
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(a1 + 56);
      *v4 = 26;
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

      v4 = sub_1389AA8(v14, v16, a3);
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
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

  v11 = *(a1 + 48);
  *v4 = 18;
  v12 = *(v11 + 20);
  v4[1] = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, v4 + 1);
  }

  else
  {
    v13 = v4 + 2;
  }

  v4 = sub_1389680(v11, v13, a3);
  if ((v6 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 & 0x40) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 88);
  *v4 = 32;
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    v4[2] = v17 >> 7;
    v7 = v4 + 3;
    if (v17 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v18 >> 7);
        *v7++ = v18 >> 7;
        v19 = v18 >> 14;
        v18 >>= 7;
      }

      while (v19);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_31:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v20 = *(a1 + 64);
    *v7 = 42;
    v21 = *(v20 + 48);
    v7[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v7 + 1);
    }

    else
    {
      v22 = v7 + 2;
    }

    v7 = sub_1396484(v20, v22, a3);
    if ((v6 & 0x10) == 0)
    {
LABEL_33:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_33;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v23 = *(a1 + 72);
  *v7 = 50;
  v24 = *(v23 + 20);
  v7[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v7 + 1);
  }

  else
  {
    v25 = v7 + 2;
  }

  v7 = sub_138A2A0(v23, v25, a3);
  if ((v6 & 0x80) != 0)
  {
LABEL_47:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v26 = *(a1 + 92);
    *v7 = 56;
    v7[1] = v26;
    v7 += 2;
  }

LABEL_50:
  v27 = *(a1 + 24);
  if (v27 < 1)
  {
    v30 = v7;
  }

  else
  {
    for (i = 0; i != v27; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v29 = *(*(a1 + 32) + 4 * i);
      *v7 = 64;
      v7[1] = v29;
      if (v29 > 0x7F)
      {
        v7[1] = v29 | 0x80;
        v31 = v29 >> 7;
        v7[2] = v29 >> 7;
        v30 = v7 + 3;
        if (v29 >= 0x4000)
        {
          LOBYTE(v7) = v7[2];
          do
          {
            *(v30 - 1) = v7 | 0x80;
            v7 = (v31 >> 7);
            *v30++ = v31 >> 7;
            v32 = v31 >> 14;
            v31 >>= 7;
          }

          while (v32);
        }
      }

      else
      {
        v30 = v7 + 2;
      }

      v7 = v30;
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v33 = *(a1 + 80);
    *v30 = 74;
    v34 = *(v33 + 48);
    v30[1] = v34;
    if (v34 > 0x7F)
    {
      v35 = sub_19575D0(v34, v30 + 1);
    }

    else
    {
      v35 = v30 + 2;
    }

    v30 = sub_1396C4C(v33, v35, a3);
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v30;
  }

  v38 = v36 & 0xFFFFFFFFFFFFFFFCLL;
  v39 = *(v38 + 31);
  if (v39 < 0)
  {
    v40 = *(v38 + 8);
    v39 = *(v38 + 16);
  }

  else
  {
    v40 = (v38 + 8);
  }

  if (*a3 - v30 >= v39)
  {
    v41 = v39;
    memcpy(v30, v40, v39);
    v30 += v41;
    return v30;
  }

  return sub_1957130(a3, v40, v39, v30);
}

uint64_t sub_138853C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4 + v2;
  v8 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  if (v8)
  {
    v9 = sub_13892BC(*(a1 + 40));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_1389748(*(a1 + 48));
  v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = sub_1389BD0(*(a1 + 56));
  v7 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = sub_139667C(*(a1 + 64));
  v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = sub_138A50C(*(a1 + 72));
  v7 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) == 0)
  {
LABEL_16:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_28;
    }

LABEL_24:
    v15 = *(a1 + 88);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v16;
    goto LABEL_28;
  }

LABEL_23:
  v14 = sub_1396E44(*(a1 + 80));
  v7 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_28:
  v7 += (v8 >> 6) & 2;
LABEL_29:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v7 += v20;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_1388770(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 16);
  if (v8)
  {
    if (v8)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 40);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_1392628(v12);
        *(a1 + 40) = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_276D408;
      }

      sub_1388A2C(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_34;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_13926A4(v16);
      *(a1 + 48) = v14;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &off_276D430;
    }

    sub_132DE2C(v14, v17);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 56);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1392728(v20);
      *(a1 + 56) = v18;
    }

    if (*(a2 + 56))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = &off_276D450;
    }

    sub_12A7358(v18, v21);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 64);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_13AE4CC(v24);
      *(a1 + 64) = v22;
    }

    if (*(a2 + 64))
    {
      v25 = *(a2 + 64);
    }

    else
    {
      v25 = &off_276D8D8;
    }

    sub_1319618(v22, v25);
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_58;
    }

LABEL_50:
    *(a1 + 16) |= 0x10u;
    v26 = *(a1 + 72);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_13927A0(v28);
      *(a1 + 72) = v26;
    }

    if (*(a2 + 72))
    {
      v29 = *(a2 + 72);
    }

    else
    {
      v29 = &off_276D470;
    }

    sub_1388AFC(v26, v29);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_66;
    }

LABEL_58:
    *(a1 + 16) |= 0x20u;
    v30 = *(a1 + 80);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_13AE574(v32);
      *(a1 + 80) = v30;
    }

    if (*(a2 + 80))
    {
      v33 = *(a2 + 80);
    }

    else
    {
      v33 = &off_276D910;
    }

    sub_1319618(v30, v33);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v8;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 92) = *(a2 + 92);
      goto LABEL_13;
    }

LABEL_66:
    *(a1 + 88) = *(a2 + 88);
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1388A2C(uint64_t a1, uint64_t a2)
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

        v5 = sub_1447C28(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2771340;
      }

      sub_1447A58(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1388AFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        v6 = sub_1392924(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276D500;
      }

      sub_12A7358(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_28;
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

      v10 = sub_1392820(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_276D4A8;
    }

    sub_138A648(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_28:
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

      v14 = sub_13928A8(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_276D4D8;
    }

    sub_138A758(v14, v17);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1388C74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (*(v3 + 16))
    {
      result = sub_1447C10(*(v3 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_1388CFC(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1388CCC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_1447C10(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1388CFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a1 + 32);
    if ((*(v3 + 16) & 2) != 0)
    {
      result = sub_16E5370(*(v3 + 32));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  v5 = *(a1 + 40);
  if ((*(v5 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(v5 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1388D70(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26D9390;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_1388E74(uint64_t a1)
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

  if (a1 != &off_276D408 && *(a1 + 24))
  {
    sub_14468F0();
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

void sub_1388F2C(uint64_t a1)
{
  sub_1388E74(a1);

  operator delete();
}

char *sub_1388F64(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
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
          v22 = sub_19587DC(v6, v15);
          if (!v22)
          {
            return 0;
          }
        }

        else
        {
          v16 = v6 + 2;
LABEL_23:
          v22 = v16;
        }

        if (v15 > 2)
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
          return v22;
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
        v6 = v22;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_31;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v18 = *(a1 + 24);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1447C28(v20);
      *(a1 + 24) = v18;
      v6 = v22;
    }

    v14 = sub_2202E10(a3, v18, v6);
LABEL_31:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_1389130(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 10;
    v7 = *(v6 + 44);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_14470C4(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
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

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v9;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v9 >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_13892BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1447824(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
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

uint64_t sub_1389394(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D9410;
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
  }

  return a1;
}

void sub_1389440(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1389470(uint64_t a1)
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

void sub_1389510(uint64_t a1)
{
  sub_1389470(a1);

  operator delete();
}

uint64_t sub_1389548(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v18 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v18, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v18 + 1);
    v7 = **v18;
    if (**v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v18 + 2);
      }
    }

    *v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v16 = sub_194DB04((a1 + 24), v15);
      v13 = sub_1958890(v16, *v18, a3);
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
          return *v18;
        }

LABEL_24:
        *v18 = 0;
        return *v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = *v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    *v18 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  return *v18;
}

char *sub_1389680(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if (*a3 - v4 >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}