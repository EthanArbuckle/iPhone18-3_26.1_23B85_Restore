BOOL sub_1D663D3A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v5 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v8 = (v7 ^ v6) & 1;
    if (v7 == 2 || v8 != 0)
    {
      return 0;
    }
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v10 = *(a1 + 64);
  v11 = *(a2 + 64);
  result = (v10 | v11) == 0;
  if (v10)
  {
    if (v11)
    {

      v13 = sub_1D663D3A4(v10, v11);

      return v13 & 1;
    }
  }

  return result;
}

BOOL _s8NewsFeed024FormatAnimationNodeBasicD0C2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&__src[0] = *(a1 + 16);
  *(&__src[0] + 1) = v4;
  *&__src[1] = v5;
  *(&__src[1] + 1) = v6;
  *&__src[2] = v7;
  *(&__src[2] + 1) = v8;
  LOBYTE(__src[3]) = v9;
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  *&__dst[0] = *(a2 + 16);
  *(&__dst[0] + 1) = v10;
  *&__dst[1] = v11;
  *(&__dst[1] + 1) = v12;
  *&__dst[2] = v13;
  *(&__dst[2] + 1) = v14;
  LOBYTE(__dst[3]) = v15;
  sub_1D62B753C(*&__src[0], v4, v5, v6, v7, v8, v9);
  sub_1D62B753C(*&__dst[0], v10, v11, v12, v13, v14, v15);
  v16 = _s8NewsFeed26FormatAnimationNodeKeyPathO2eeoiySbAC_ACtFZ_0(__src, __dst);
  sub_1D62B4A44(*&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), __dst[3]);
  sub_1D62B4A44(*&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), __src[3]);
  if (!v16)
  {
    return 0;
  }

  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  v19 = *(a1 + 88);
  v21 = *(a2 + 72);
  v20 = *(a2 + 80);
  v22 = *(a2 + 88);
  if (v19 == 255)
  {
    sub_1D6189668(*(a1 + 72), *(a1 + 80), 255);
    if (v22 != 255)
    {
      goto LABEL_14;
    }

    sub_1D6189668(v21, v20, 255);
    sub_1D60107F0(v18, v17, 255);
  }

  else
  {
    *&__src[0] = *(a1 + 72);
    *(&__src[0] + 1) = v17;
    LOBYTE(__src[1]) = v19;
    if (v22 == 255)
    {
LABEL_12:
      sub_1D6189668(v18, v17, v19);
      sub_1D6189668(v21, v20, 255);
      sub_1D6189668(v18, v17, v19);
      sub_1D5D2F2C8(v18, v17, v19 & 1);
LABEL_15:
      sub_1D60107F0(v18, v17, v19);
      sub_1D60107F0(v21, v20, v22);
      return 0;
    }

    *&__dst[0] = v21;
    *(&__dst[0] + 1) = v20;
    LOBYTE(__dst[1]) = v22 & 1;
    sub_1D6189668(v18, v17, v19);
    sub_1D6189668(v21, v20, v22);
    sub_1D6189668(v18, v17, v19);
    v23 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(__src, __dst);
    sub_1D5D2F2C8(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
    sub_1D5D2F2C8(*&__src[0], *(&__src[0] + 1), __src[1]);
    sub_1D60107F0(v18, v17, v19);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *(a1 + 96);
  v17 = *(a1 + 104);
  v19 = *(a1 + 112);
  v21 = *(a2 + 96);
  v20 = *(a2 + 104);
  v22 = *(a2 + 112);
  if (v19 != 255)
  {
    *&__src[0] = *(a1 + 96);
    *(&__src[0] + 1) = v17;
    LOBYTE(__src[1]) = v19;
    if (v22 != 255)
    {
      *&__dst[0] = v21;
      *(&__dst[0] + 1) = v20;
      LOBYTE(__dst[1]) = v22 & 1;
      sub_1D6189668(v18, v17, v19);
      sub_1D6189668(v21, v20, v22);
      sub_1D6189668(v18, v17, v19);
      v24 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(__src, __dst);
      sub_1D5D2F2C8(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
      sub_1D5D2F2C8(*&__src[0], *(&__src[0] + 1), __src[1]);
      sub_1D60107F0(v18, v17, v19);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

  sub_1D6189668(*(a1 + 96), *(a1 + 104), 255);
  if (v22 != 255)
  {
LABEL_14:
    sub_1D6189668(v21, v20, v22);
    goto LABEL_15;
  }

  sub_1D6189668(v21, v20, 255);
  sub_1D60107F0(v18, v17, 255);
LABEL_19:
  v27 = *(a1 + 200);
  v28 = *(a1 + 232);
  v88[6] = *(a1 + 216);
  v89[0] = v28;
  *(v89 + 9) = *(a1 + 241);
  v29 = *(a1 + 136);
  v30 = *(a1 + 168);
  v88[2] = *(a1 + 152);
  v88[3] = v30;
  v31 = *(a1 + 184);
  v88[5] = v27;
  v88[4] = v31;
  v32 = *(a1 + 120);
  v88[1] = v29;
  v88[0] = v32;
  v33 = *(a2 + 200);
  v34 = *(a2 + 232);
  v90[6] = *(a2 + 216);
  v91[0] = v34;
  *(v91 + 9) = *(a2 + 241);
  v35 = *(a2 + 136);
  v36 = *(a2 + 168);
  v90[2] = *(a2 + 152);
  v90[3] = v36;
  v37 = *(a2 + 184);
  v90[5] = v33;
  v90[4] = v37;
  v38 = *(a2 + 120);
  v90[1] = v35;
  v90[0] = v38;
  v39 = *(a1 + 200);
  v40 = *(a1 + 232);
  __src[6] = *(a1 + 216);
  __src[7] = v40;
  *(&__src[7] + 9) = *(a1 + 241);
  v41 = *(a1 + 136);
  v42 = *(a1 + 168);
  __src[2] = *(a1 + 152);
  __src[3] = v42;
  v43 = *(a1 + 184);
  __src[5] = v39;
  __src[4] = v43;
  __src[0] = *(a1 + 120);
  __src[1] = v41;
  *(&__src[16] + 9) = *(a2 + 241);
  v44 = *(a2 + 200);
  v45 = *(a2 + 232);
  __src[15] = *(a2 + 216);
  __src[16] = v45;
  v46 = *(a2 + 136);
  v47 = *(a2 + 168);
  __src[11] = *(a2 + 152);
  __src[12] = v47;
  v48 = *(a2 + 184);
  __src[14] = v44;
  __src[13] = v48;
  v49 = *(a2 + 120);
  __src[10] = v46;
  __src[9] = v49;
  v50 = *(a1 + 200);
  v51 = *(a1 + 232);
  v92[6] = *(a1 + 216);
  v93[0] = v51;
  *(v93 + 9) = *(a1 + 241);
  v52 = *(a1 + 136);
  v53 = *(a1 + 168);
  v92[2] = *(a1 + 152);
  v92[3] = v53;
  v92[4] = *(a1 + 184);
  v92[5] = v50;
  v92[0] = *(a1 + 120);
  v92[1] = v52;
  if (sub_1D60486AC(v92) == 1)
  {
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) == 1)
    {
      v85 = __src[6];
      v86[0] = __src[7];
      *(v86 + 9) = *(&__src[7] + 9);
      v81 = __src[2];
      v82 = __src[3];
      v83 = __src[4];
      v84 = __src[5];
      v79 = __src[0];
      v80 = __src[1];
      v54 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v88, &v70, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v90, &v70, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v54, sub_1D5C34D84);
      sub_1D66615F8(&v79, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v54, sub_1D5C34D84);
      return 1;
    }

    v56 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v88, &v79, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v90, &v79, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v56, sub_1D5C34D84);
  }

  else
  {
    v85 = __src[6];
    v86[0] = __src[7];
    *(v86 + 9) = *(&__src[7] + 9);
    v81 = __src[2];
    v82 = __src[3];
    v83 = __src[4];
    v84 = __src[5];
    v79 = __src[0];
    v80 = __src[1];
    v76 = __src[6];
    v77[0] = __src[7];
    *(v77 + 9) = *(&__src[7] + 9);
    v72 = __src[2];
    v73 = __src[3];
    v74 = __src[4];
    v75 = __src[5];
    v70 = __src[0];
    v71 = __src[1];
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) != 1)
    {
      v68 = __src[15];
      v69[0] = __src[16];
      *(v69 + 9) = *(&__src[16] + 9);
      v64 = __src[11];
      v65 = __src[12];
      v66 = __src[13];
      v67 = __src[14];
      v62 = __src[9];
      v63 = __src[10];
      v57 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v88, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v90, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v57, sub_1D5C34D84);
      sub_1D5D355B8(&v79, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v57, sub_1D5C34D84);
      v25 = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v70, &v62);
      v58[6] = v68;
      v59[0] = v69[0];
      *(v59 + 9) = *(v69 + 9);
      v58[2] = v64;
      v58[3] = v65;
      v58[4] = v66;
      v58[5] = v67;
      v58[0] = v62;
      v58[1] = v63;
      sub_1D62B49F0(v58);
      v60[6] = v76;
      v61[0] = v77[0];
      *(v61 + 9) = *(v77 + 9);
      v60[2] = v72;
      v60[3] = v73;
      v60[4] = v74;
      v60[5] = v75;
      v60[0] = v70;
      v60[1] = v71;
      sub_1D62B49F0(v60);
      v68 = __src[6];
      v69[0] = __src[7];
      *(v69 + 9) = *(&__src[7] + 9);
      v64 = __src[2];
      v65 = __src[3];
      v66 = __src[4];
      v67 = __src[5];
      v62 = __src[0];
      v63 = __src[1];
      sub_1D66615F8(&v62, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v57, sub_1D5C34D84);
      return v25;
    }

    v68 = __src[6];
    v69[0] = __src[7];
    *(v69 + 9) = *(&__src[7] + 9);
    v64 = __src[2];
    v65 = __src[3];
    v66 = __src[4];
    v67 = __src[5];
    v62 = __src[0];
    v63 = __src[1];
    v55 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v88, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v90, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v55, sub_1D5C34D84);
    sub_1D5D355B8(&v79, v60, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v55, sub_1D5C34D84);
    sub_1D62B49F0(&v62);
  }

  memcpy(__dst, __src, 0x119uLL);
  sub_1D5D35558(__dst, &qword_1EC889AE0, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, sub_1D66F49B8);
  return 0;
}

uint64_t _s8NewsFeed025FormatAnimationNodeSpringD0C2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&__src[0] = *(a1 + 16);
  *(&__src[0] + 1) = v4;
  *&__src[1] = v5;
  *(&__src[1] + 1) = v6;
  *&__src[2] = v7;
  *(&__src[2] + 1) = v8;
  LOBYTE(__src[3]) = v9;
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  *&__dst[0] = *(a2 + 16);
  *(&__dst[0] + 1) = v10;
  *&__dst[1] = v11;
  *(&__dst[1] + 1) = v12;
  *&__dst[2] = v13;
  *(&__dst[2] + 1) = v14;
  LOBYTE(__dst[3]) = v15;
  sub_1D62B753C(*&__src[0], v4, v5, v6, v7, v8, v9);
  sub_1D62B753C(*&__dst[0], v10, v11, v12, v13, v14, v15);
  v16 = _s8NewsFeed26FormatAnimationNodeKeyPathO2eeoiySbAC_ACtFZ_0(__src, __dst);
  sub_1D62B4A44(*&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), __dst[3]);
  sub_1D62B4A44(*&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), __src[3]);
  if (!v16)
  {
    goto LABEL_16;
  }

  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  v19 = *(a1 + 88);
  v21 = *(a2 + 72);
  v20 = *(a2 + 80);
  v22 = *(a2 + 88);
  if (v19 == 255)
  {
    sub_1D6189668(*(a1 + 72), *(a1 + 80), 255);
    if (v22 != 255)
    {
LABEL_14:
      sub_1D6189668(v21, v20, v22);
      goto LABEL_15;
    }

    sub_1D6189668(v21, v20, 255);
    sub_1D60107F0(v18, v17, 255);
  }

  else
  {
    *&__src[0] = *(a1 + 72);
    *(&__src[0] + 1) = v17;
    LOBYTE(__src[1]) = v19;
    if (v22 == 255)
    {
LABEL_12:
      sub_1D6189668(v18, v17, v19);
      sub_1D6189668(v21, v20, 255);
      sub_1D6189668(v18, v17, v19);
      sub_1D5D2F2C8(v18, v17, v19 & 1);
LABEL_15:
      sub_1D60107F0(v18, v17, v19);
      sub_1D60107F0(v21, v20, v22);
      goto LABEL_16;
    }

    *&__dst[0] = v21;
    *(&__dst[0] + 1) = v20;
    LOBYTE(__dst[1]) = v22 & 1;
    sub_1D6189668(v18, v17, v19);
    sub_1D6189668(v21, v20, v22);
    sub_1D6189668(v18, v17, v19);
    v23 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(__src, __dst);
    sub_1D5D2F2C8(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
    sub_1D5D2F2C8(*&__src[0], *(&__src[0] + 1), __src[1]);
    sub_1D60107F0(v18, v17, v19);
    if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v18 = *(a1 + 96);
  v17 = *(a1 + 104);
  v19 = *(a1 + 112);
  v21 = *(a2 + 96);
  v20 = *(a2 + 104);
  v22 = *(a2 + 112);
  if (v19 == 255)
  {
    sub_1D6189668(*(a1 + 96), *(a1 + 104), 255);
    if (v22 == 255)
    {
      sub_1D6189668(v21, v20, 255);
      sub_1D60107F0(v18, v17, 255);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  *&__src[0] = *(a1 + 96);
  *(&__src[0] + 1) = v17;
  LOBYTE(__src[1]) = v19;
  if (v22 == 255)
  {
    goto LABEL_12;
  }

  *&__dst[0] = v21;
  *(&__dst[0] + 1) = v20;
  LOBYTE(__dst[1]) = v22 & 1;
  sub_1D6189668(v18, v17, v19);
  sub_1D6189668(v21, v20, v22);
  sub_1D6189668(v18, v17, v19);
  v24 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(__src, __dst);
  sub_1D5D2F2C8(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
  sub_1D5D2F2C8(*&__src[0], *(&__src[0] + 1), __src[1]);
  sub_1D60107F0(v18, v17, v19);
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v27 = *(a1 + 120);
  v25 = *(a2 + 120);
  if (v27)
  {
    if (!v25)
    {
      return v25 & 1;
    }

    v28 = sub_1D633A310(v27, v25);

    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_16;
    }
  }

  v29 = *(a1 + 128);
  v25 = *(a2 + 128);
  if (v29)
  {
    if (!v25)
    {
      return v25 & 1;
    }

    v30 = sub_1D633A310(v29, v25);

    if ((v30 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_16;
    }
  }

  v31 = *(a1 + 136);
  v25 = *(a2 + 136);
  if (v31)
  {
    if (!v25)
    {
      return v25 & 1;
    }

    v32 = sub_1D633A310(v31, v25);

    if ((v32 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_16;
    }
  }

  v33 = *(a1 + 144);
  v25 = *(a2 + 144);
  if (v33)
  {
    if (!v25)
    {
      return v25 & 1;
    }

    v34 = sub_1D633A310(v33, v25);

    if ((v34 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (!v25)
  {

LABEL_43:
    v35 = *(a1 + 232);
    v36 = *(a1 + 264);
    v95[6] = *(a1 + 248);
    v96[0] = v36;
    *(v96 + 9) = *(a1 + 273);
    v37 = *(a1 + 168);
    v38 = *(a1 + 200);
    v95[2] = *(a1 + 184);
    v95[3] = v38;
    v39 = *(a1 + 216);
    v95[5] = v35;
    v95[4] = v39;
    v40 = *(a1 + 152);
    v95[1] = v37;
    v95[0] = v40;
    v41 = *(a2 + 232);
    v42 = *(a2 + 264);
    v97[6] = *(a2 + 248);
    v98[0] = v42;
    *(v98 + 9) = *(a2 + 273);
    v43 = *(a2 + 168);
    v44 = *(a2 + 200);
    v97[2] = *(a2 + 184);
    v97[3] = v44;
    v45 = *(a2 + 216);
    v97[5] = v41;
    v97[4] = v45;
    v46 = *(a2 + 152);
    v97[1] = v43;
    v97[0] = v46;
    v47 = *(a1 + 232);
    v48 = *(a1 + 264);
    __src[6] = *(a1 + 248);
    __src[7] = v48;
    *(&__src[7] + 9) = *(a1 + 273);
    v49 = *(a1 + 168);
    v50 = *(a1 + 200);
    __src[2] = *(a1 + 184);
    __src[3] = v50;
    v51 = *(a1 + 216);
    __src[5] = v47;
    __src[4] = v51;
    __src[0] = *(a1 + 152);
    __src[1] = v49;
    *(&__src[16] + 9) = *(a2 + 273);
    v52 = *(a2 + 232);
    v53 = *(a2 + 264);
    __src[15] = *(a2 + 248);
    __src[16] = v53;
    v54 = *(a2 + 168);
    v55 = *(a2 + 200);
    __src[11] = *(a2 + 184);
    __src[12] = v55;
    v56 = *(a2 + 216);
    __src[14] = v52;
    __src[13] = v56;
    v57 = *(a2 + 152);
    __src[10] = v54;
    __src[9] = v57;
    v58 = *(a1 + 232);
    v59 = *(a1 + 264);
    v99[6] = *(a1 + 248);
    v100[0] = v59;
    *(v100 + 9) = *(a1 + 273);
    v60 = *(a1 + 168);
    v61 = *(a1 + 200);
    v99[2] = *(a1 + 184);
    v99[3] = v61;
    v99[4] = *(a1 + 216);
    v99[5] = v58;
    v99[0] = *(a1 + 152);
    v99[1] = v60;
    if (sub_1D60486AC(v99) == 1)
    {
      __dst[6] = __src[15];
      __dst[7] = __src[16];
      *(&__dst[7] + 9) = *(&__src[16] + 9);
      __dst[2] = __src[11];
      __dst[3] = __src[12];
      __dst[4] = __src[13];
      __dst[5] = __src[14];
      __dst[0] = __src[9];
      __dst[1] = __src[10];
      if (sub_1D60486AC(__dst) == 1)
      {
        v92 = __src[6];
        v93[0] = __src[7];
        *(v93 + 9) = *(&__src[7] + 9);
        v88 = __src[2];
        v89 = __src[3];
        v90 = __src[4];
        v91 = __src[5];
        v86 = __src[0];
        v87 = __src[1];
        v25 = MEMORY[0x1E69E6720];
        sub_1D5D355B8(v95, &v77, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
        sub_1D5D355B8(v97, &v77, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v25, sub_1D5C34D84);
        sub_1D66615F8(&v86, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v25, sub_1D5C34D84);
        LOBYTE(v25) = 1;
        return v25 & 1;
      }

      v63 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v95, &v86, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v97, &v86, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v63, sub_1D5C34D84);
    }

    else
    {
      v92 = __src[6];
      v93[0] = __src[7];
      *(v93 + 9) = *(&__src[7] + 9);
      v88 = __src[2];
      v89 = __src[3];
      v90 = __src[4];
      v91 = __src[5];
      v86 = __src[0];
      v87 = __src[1];
      v83 = __src[6];
      v84[0] = __src[7];
      *(v84 + 9) = *(&__src[7] + 9);
      v79 = __src[2];
      v80 = __src[3];
      v81 = __src[4];
      v82 = __src[5];
      v77 = __src[0];
      v78 = __src[1];
      __dst[6] = __src[15];
      __dst[7] = __src[16];
      *(&__dst[7] + 9) = *(&__src[16] + 9);
      __dst[2] = __src[11];
      __dst[3] = __src[12];
      __dst[4] = __src[13];
      __dst[5] = __src[14];
      __dst[0] = __src[9];
      __dst[1] = __src[10];
      if (sub_1D60486AC(__dst) != 1)
      {
        v75 = __src[15];
        v76[0] = __src[16];
        *(v76 + 9) = *(&__src[16] + 9);
        v71 = __src[11];
        v72 = __src[12];
        v73 = __src[13];
        v74 = __src[14];
        v69 = __src[9];
        v70 = __src[10];
        v64 = MEMORY[0x1E69E6720];
        sub_1D5D355B8(v95, v67, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
        sub_1D5D355B8(v97, v67, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v64, sub_1D5C34D84);
        sub_1D5D355B8(&v86, v67, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v64, sub_1D5C34D84);
        LOBYTE(v25) = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v77, &v69);
        v65[6] = v75;
        v66[0] = v76[0];
        *(v66 + 9) = *(v76 + 9);
        v65[2] = v71;
        v65[3] = v72;
        v65[4] = v73;
        v65[5] = v74;
        v65[0] = v69;
        v65[1] = v70;
        sub_1D62B49F0(v65);
        v67[6] = v83;
        v68[0] = v84[0];
        *(v68 + 9) = *(v84 + 9);
        v67[2] = v79;
        v67[3] = v80;
        v67[4] = v81;
        v67[5] = v82;
        v67[0] = v77;
        v67[1] = v78;
        sub_1D62B49F0(v67);
        v75 = __src[6];
        v76[0] = __src[7];
        *(v76 + 9) = *(&__src[7] + 9);
        v71 = __src[2];
        v72 = __src[3];
        v73 = __src[4];
        v74 = __src[5];
        v69 = __src[0];
        v70 = __src[1];
        sub_1D66615F8(&v69, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v64, sub_1D5C34D84);
        return v25 & 1;
      }

      v75 = __src[6];
      v76[0] = __src[7];
      *(v76 + 9) = *(&__src[7] + 9);
      v71 = __src[2];
      v72 = __src[3];
      v73 = __src[4];
      v74 = __src[5];
      v69 = __src[0];
      v70 = __src[1];
      v62 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v95, v67, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v97, v67, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v62, sub_1D5C34D84);
      sub_1D5D355B8(&v86, v67, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v62, sub_1D5C34D84);
      sub_1D62B49F0(&v69);
    }

    memcpy(__dst, __src, 0x119uLL);
    sub_1D5D35558(__dst, &qword_1EC889AE0, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, sub_1D66F49B8);
  }

LABEL_16:
  LOBYTE(v25) = 0;
  return v25 & 1;
}

BOOL _s8NewsFeed024FormatAnimationNodeGroupD0C2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D633DB70(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 104);
  v5 = *(a1 + 136);
  v67[6] = *(a1 + 120);
  v68[0] = v5;
  *(v68 + 9) = *(a1 + 145);
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v67[2] = *(a1 + 56);
  v67[3] = v7;
  v8 = *(a1 + 88);
  v67[5] = v4;
  v67[4] = v8;
  v9 = *(a1 + 24);
  v67[1] = v6;
  v67[0] = v9;
  v10 = *(a2 + 104);
  v11 = *(a2 + 136);
  v69[6] = *(a2 + 120);
  v70[0] = v11;
  *(v70 + 9) = *(a2 + 145);
  v12 = *(a2 + 40);
  v13 = *(a2 + 72);
  v69[2] = *(a2 + 56);
  v69[3] = v13;
  v14 = *(a2 + 88);
  v69[5] = v10;
  v69[4] = v14;
  v15 = *(a2 + 24);
  v69[1] = v12;
  v69[0] = v15;
  v16 = *(a1 + 104);
  v17 = *(a1 + 136);
  __src[6] = *(a1 + 120);
  __src[7] = v17;
  *(&__src[7] + 9) = *(a1 + 145);
  v18 = *(a1 + 40);
  v19 = *(a1 + 72);
  __src[2] = *(a1 + 56);
  __src[3] = v19;
  v20 = *(a1 + 88);
  __src[5] = v16;
  __src[4] = v20;
  __src[0] = *(a1 + 24);
  __src[1] = v18;
  *(&__src[16] + 9) = *(a2 + 145);
  v21 = *(a2 + 104);
  v22 = *(a2 + 136);
  __src[15] = *(a2 + 120);
  __src[16] = v22;
  v23 = *(a2 + 40);
  v24 = *(a2 + 72);
  __src[11] = *(a2 + 56);
  __src[12] = v24;
  v25 = *(a2 + 88);
  __src[14] = v21;
  __src[13] = v25;
  v26 = *(a2 + 24);
  __src[10] = v23;
  __src[9] = v26;
  v27 = *(a1 + 104);
  v28 = *(a1 + 136);
  v71[6] = *(a1 + 120);
  v72[0] = v28;
  *(v72 + 9) = *(a1 + 145);
  v29 = *(a1 + 40);
  v30 = *(a1 + 72);
  v71[2] = *(a1 + 56);
  v71[3] = v30;
  v71[4] = *(a1 + 88);
  v71[5] = v27;
  v71[0] = *(a1 + 24);
  v71[1] = v29;
  if (sub_1D60486AC(v71) != 1)
  {
    v64 = __src[6];
    v65[0] = __src[7];
    *(v65 + 9) = *(&__src[7] + 9);
    v60 = __src[2];
    v61 = __src[3];
    v62 = __src[4];
    v63 = __src[5];
    v58 = __src[0];
    v59 = __src[1];
    v55 = __src[6];
    v56[0] = __src[7];
    *(v56 + 9) = *(&__src[7] + 9);
    v51 = __src[2];
    v52 = __src[3];
    v53 = __src[4];
    v54 = __src[5];
    v49 = __src[0];
    v50 = __src[1];
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) != 1)
    {
      v47 = __src[15];
      v48[0] = __src[16];
      *(v48 + 9) = *(&__src[16] + 9);
      v43 = __src[11];
      v44 = __src[12];
      v45 = __src[13];
      v46 = __src[14];
      v41 = __src[9];
      v42 = __src[10];
      v35 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v67, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v69, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v35, sub_1D5C34D84);
      sub_1D5D355B8(&v58, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v35, sub_1D5C34D84);
      v32 = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v49, &v41);
      v37[6] = v47;
      v38[0] = v48[0];
      *(v38 + 9) = *(v48 + 9);
      v37[2] = v43;
      v37[3] = v44;
      v37[4] = v45;
      v37[5] = v46;
      v37[0] = v41;
      v37[1] = v42;
      sub_1D62B49F0(v37);
      v39[6] = v55;
      v40[0] = v56[0];
      *(v40 + 9) = *(v56 + 9);
      v39[2] = v51;
      v39[3] = v52;
      v39[4] = v53;
      v39[5] = v54;
      v39[0] = v49;
      v39[1] = v50;
      sub_1D62B49F0(v39);
      v47 = __src[6];
      v48[0] = __src[7];
      *(v48 + 9) = *(&__src[7] + 9);
      v43 = __src[2];
      v44 = __src[3];
      v45 = __src[4];
      v46 = __src[5];
      v41 = __src[0];
      v42 = __src[1];
      sub_1D66615F8(&v41, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v35, sub_1D5C34D84);
      return v32;
    }

    v47 = __src[6];
    v48[0] = __src[7];
    *(v48 + 9) = *(&__src[7] + 9);
    v43 = __src[2];
    v44 = __src[3];
    v45 = __src[4];
    v46 = __src[5];
    v41 = __src[0];
    v42 = __src[1];
    v33 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v67, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v69, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v33, sub_1D5C34D84);
    sub_1D5D355B8(&v58, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v33, sub_1D5C34D84);
    sub_1D62B49F0(&v41);
    goto LABEL_9;
  }

  __dst[6] = __src[15];
  __dst[7] = __src[16];
  *(&__dst[7] + 9) = *(&__src[16] + 9);
  __dst[2] = __src[11];
  __dst[3] = __src[12];
  __dst[4] = __src[13];
  __dst[5] = __src[14];
  __dst[0] = __src[9];
  __dst[1] = __src[10];
  if (sub_1D60486AC(__dst) != 1)
  {
    v34 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v67, &v58, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v69, &v58, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v34, sub_1D5C34D84);
LABEL_9:
    memcpy(__dst, __src, 0x119uLL);
    sub_1D5D35558(__dst, &qword_1EC889AE0, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, sub_1D66F49B8);
    return 0;
  }

  v64 = __src[6];
  v65[0] = __src[7];
  *(v65 + 9) = *(&__src[7] + 9);
  v60 = __src[2];
  v61 = __src[3];
  v62 = __src[4];
  v63 = __src[5];
  v58 = __src[0];
  v59 = __src[1];
  v31 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v67, &v49, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v69, &v49, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v31, sub_1D5C34D84);
  sub_1D66615F8(&v58, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v31, sub_1D5C34D84);
  return 1;
}

uint64_t _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_29;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v8 = 0;
    if (*(a2 + 64))
    {
      return v8 & 1;
    }

    if (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
    {
      return v8 & 1;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 72);
  swift_beginAccess();
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_29;
    }

    v13 = sub_1D633DB70(v12, v11);

    if ((v13 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v11)
  {
    goto LABEL_29;
  }

  v14 = *(a2 + 80) | (*(a2 + 84) << 32);
  if (*(a1 + 84) == 255)
  {
    if (BYTE4(v14) == 255)
    {
LABEL_27:
      swift_beginAccess();
      v15 = *(a1 + 88);
      swift_beginAccess();
      v16 = *(a2 + 88);

      v8 = sub_1D6353A1C(v15, v16);

      return v8 & 1;
    }

LABEL_29:
    v8 = 0;
    return v8 & 1;
  }

  if (BYTE4(v14) == 255)
  {
    goto LABEL_29;
  }

  if (!*(a1 + 84))
  {
    if (BYTE4(v14))
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if (*(a1 + 84) == 1)
  {
    if (BYTE4(v14) != 1)
    {
      goto LABEL_29;
    }

LABEL_36:
    if (*(a1 + 80) != *(a2 + 80))
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (*(a1 + 80))
  {
    if (*(a1 + 80) == 1)
    {
      v8 = 0;
      if (BYTE4(v14) == 2 && *(a2 + 80) == 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v8 = 0;
      if (BYTE4(v14) == 2 && *(a2 + 80) == 2)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v8 = 0;
    if (BYTE4(v14) == 2 && !*(a2 + 80))
    {
      goto LABEL_27;
    }
  }

  return v8 & 1;
}

uint64_t _s8NewsFeed23FormatWebEmbedNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_22;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_22;
  }

  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a2 + 48);
  v11 = *(a2 + 56);
  v13 = *(a2 + 64);
  if (v10 <= 0xFD)
  {
    v27 = *(a1 + 48);
    v28 = v8;
    v29 = v10;
    if (v13 > 0xFD)
    {
      goto LABEL_20;
    }

    v24 = v12;
    v25 = v11;
    v26 = v13;
    sub_1D5ED34B0(v9, v8, v10);
    sub_1D5ED34B0(v12, v11, v13);
    sub_1D5ED34B0(v9, v8, v10);
    v14 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v27, &v24);
    sub_1D5ED34A0(v24, v25, v26);
    sub_1D5ED34A0(v27, v28, v29);
    sub_1D5ED348C(v9, v8, v10);
    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1D5ED34B0(*(a1 + 48), *(a1 + 56), *(a1 + 64));
    sub_1D5ED34B0(v12, v11, v13);
    if (v13 <= 0xFD)
    {
      goto LABEL_21;
    }

    sub_1D5ED348C(v9, v8, v10);
  }

  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *(a1 + 88);
  v12 = *(a2 + 72);
  v11 = *(a2 + 80);
  v13 = *(a2 + 88);
  if (v10 > 0xFD)
  {
    sub_1D5ED34B0(*(a1 + 72), *(a1 + 80), *(a1 + 88));
    sub_1D5ED34B0(v12, v11, v13);
    if (v13 > 0xFD)
    {
      sub_1D5ED348C(v9, v8, v10);
      goto LABEL_25;
    }

LABEL_21:
    sub_1D5ED348C(v9, v8, v10);
    sub_1D5ED348C(v12, v11, v13);
    goto LABEL_22;
  }

  v27 = *(a1 + 72);
  v28 = v8;
  v29 = v10;
  if (v13 > 0xFD)
  {
LABEL_20:
    sub_1D5ED34B0(v9, v8, v10);
    sub_1D5ED34B0(v12, v11, v13);
    sub_1D5ED34B0(v9, v8, v10);
    sub_1D5ED34A0(v9, v8, v10);
    goto LABEL_21;
  }

  v24 = v12;
  v25 = v11;
  v26 = v13;
  sub_1D5ED34B0(v9, v8, v10);
  sub_1D5ED34B0(v12, v11, v13);
  sub_1D5ED34B0(v9, v8, v10);
  v17 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v27, &v24);
  sub_1D5ED34A0(v24, v25, v26);
  sub_1D5ED34A0(v27, v28, v29);
  sub_1D5ED348C(v9, v8, v10);
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v18 = *(a1 + 89);
  v19 = *(a2 + 89);
  if (v18 != 2)
  {
    v15 = 0;
    if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
    {
      return v15 & 1;
    }

    goto LABEL_30;
  }

  if (v19 != 2)
  {
LABEL_22:
    v15 = 0;
    return v15 & 1;
  }

LABEL_30:
  v20 = *(a1 + 90);
  v21 = *(a2 + 90);
  if (v20 == 2)
  {
    if (v21 == 2)
    {
LABEL_35:
      swift_beginAccess();
      v22 = *(a1 + 96);
      swift_beginAccess();
      v23 = *(a2 + 96);

      v15 = sub_1D6352518(v22, v23);

      return v15 & 1;
    }

    goto LABEL_22;
  }

  v15 = 0;
  if (v21 != 2 && ((v21 ^ v20) & 1) == 0)
  {
    goto LABEL_35;
  }

  return v15 & 1;
}

BOOL _s8NewsFeed28FormatSupplementaryNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);

  v13 = sub_1D6351B68(v11, v12);

  if (!v13)
  {
    return 0;
  }

  v14 = *(a1 + 64);
  v15 = *(a1 + 72) | (*(a1 + 74) << 16);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72) | (*(a2 + 74) << 16);
  if (*(a1 + 74) == 255)
  {
    sub_1D62B7DCC(*(a1 + 64), *(a1 + 72) | (*(a1 + 74) << 16));
    sub_1D62B7DCC(v16, v17);
    if (BYTE2(v17) == 255)
    {
      sub_1D62B6F70(v14, v15);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v24 = *(a1 + 64);
  v25 = v15;
  v26 = BYTE2(v15);
  if (BYTE2(v17) == 255)
  {
    sub_1D62B7DCC(v14, v15);
    sub_1D62B7DCC(v16, v17);
    sub_1D62B7DCC(v14, v15);
    sub_1D610CA74(v14, v15, SBYTE2(v15), sub_1D60CF6A8, sub_1D60CF6DC);
LABEL_22:
    sub_1D62B6F70(v14, v15);
    sub_1D62B6F70(v16, v17);
    return 0;
  }

  v21 = v16;
  v22 = v17;
  v23 = BYTE2(v17);
  sub_1D62B7DCC(v14, v15);
  sub_1D62B7DCC(v16, v17);
  sub_1D62B7DCC(v14, v15);
  v18 = _s8NewsFeed31FormatSupplementaryNodePinTraitO2eeoiySbAC_ACtFZ_0(&v24, &v21);
  sub_1D610CA74(v21, v22, v23, sub_1D60CF6A8, sub_1D60CF6DC);
  sub_1D610CA74(v24, v25, v26, sub_1D60CF6A8, sub_1D60CF6DC);
  sub_1D62B6F70(v14, v15);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v19 = *(a1 + 75);
  v20 = *(a2 + 75);
  result = v20 == 3 && v19 == 3;
  if (v19 != 3 && v20 != 3)
  {
    if (v19 == 2)
    {
      if (v20 == 2)
      {
        return 1;
      }
    }

    else if (v20 != 2)
    {
      return ((v20 ^ v19) & 1) == 0;
    }

    return 0;
  }

  return result;
}

uint64_t _s8NewsFeed19FormatMicaNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D6353D90(v8, v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = sub_1D633A310(v11, v12);

    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v12)
    {
      goto LABEL_23;
    }
  }

  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = sub_1D633C9E8(v14, v15);

    if ((v16 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v15)
  {
    goto LABEL_23;
  }

  v20 = *(a1 + 72);
  v19 = *(a1 + 80);
  v21 = *(a1 + 88);
  v23 = *(a2 + 72);
  v22 = *(a2 + 80);
  v24 = *(a2 + 88);
  if (v21 <= 0xFD)
  {
    *&v65 = *(a1 + 72);
    *(&v65 + 1) = v19;
    LOBYTE(v66) = v21;
    if (v24 <= 0xFD)
    {
      *v77 = v23;
      *&v77[8] = v22;
      v77[16] = v24;
      sub_1D5ED34B0(v20, v19, v21);
      sub_1D5ED34B0(v23, v22, v24);
      sub_1D5ED34B0(v20, v19, v21);
      v25 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v65, v77);
      sub_1D5ED34A0(*v77, *&v77[8], v77[16]);
      sub_1D5ED34A0(v65, *(&v65 + 1), v66);
      sub_1D5ED348C(v20, v19, v21);
      if ((v25 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    sub_1D5ED34B0(v20, v19, v21);
    sub_1D5ED34B0(v23, v22, v24);
    sub_1D5ED34B0(v20, v19, v21);
    sub_1D5ED34A0(v20, v19, v21);
LABEL_30:
    sub_1D5ED348C(v20, v19, v21);
    sub_1D5ED348C(v23, v22, v24);
    v17 = 0;
    return v17 & 1;
  }

  sub_1D5ED34B0(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  sub_1D5ED34B0(v23, v22, v24);
  if (v24 <= 0xFD)
  {
    goto LABEL_30;
  }

  sub_1D5ED348C(v20, v19, v21);
LABEL_32:
  v26 = *(a1 + 112);
  v27 = *(a1 + 144);
  v84 = *(a1 + 128);
  v85 = v27;
  v28 = *(a1 + 144);
  v86 = *(a1 + 160);
  v29 = *(a1 + 112);
  v83[0] = *(a1 + 96);
  v83[1] = v29;
  v30 = *(a2 + 112);
  v31 = *(a2 + 144);
  v89 = *(a2 + 128);
  v90 = v31;
  v32 = *(a2 + 144);
  v91 = *(a2 + 160);
  v33 = *(a2 + 112);
  v88[0] = *(a2 + 96);
  v88[1] = v33;
  v80 = v84;
  v81 = v28;
  v82 = *(a1 + 160);
  v78 = v83[0];
  v79 = v26;
  *&v77[23] = v30;
  *&v77[39] = v89;
  *&v77[55] = v32;
  *&v77[71] = *(a2 + 160);
  v87 = *(a1 + 176);
  v92 = *(a2 + 176);
  v34 = v87;
  *&v77[7] = v88[0];
  v35 = v92;
  if (v87 == 254)
  {
    if (v92 == 254)
    {
      v36 = *(a1 + 144);
      v67 = *(a1 + 128);
      v68 = v36;
      v69 = *(a1 + 160);
      v37 = *(a1 + 112);
      v65 = *(a1 + 96);
      v66 = v37;
      v70 = -2;
      v38 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v83, &v59, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v88, &v59, &qword_1EDF33718, &type metadata for FormatShadow, v38, sub_1D5C34D84);
      sub_1D66615F8(&v65, &qword_1EDF33718, &type metadata for FormatShadow, v38, sub_1D5C34D84);
      goto LABEL_40;
    }

    v42 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v83, &v65, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v88, &v65, &qword_1EDF33718, &type metadata for FormatShadow, v42, sub_1D5C34D84);
LABEL_38:
    v67 = v80;
    v68 = v81;
    v69 = v82;
    v65 = v78;
    v66 = v79;
    v73 = *&v77[32];
    v74 = *&v77[48];
    *v75 = *&v77[64];
    v71 = *v77;
    v70 = v34;
    *&v75[15] = *&v77[79];
    v72 = *&v77[16];
    v76 = v35;
    sub_1D5D35558(&v65, &qword_1EC8822D8, &qword_1EDF33718, &type metadata for FormatShadow, sub_1D66F49B8);
    v17 = 0;
    return v17 & 1;
  }

  v39 = *(a1 + 144);
  v67 = *(a1 + 128);
  v68 = v39;
  v69 = *(a1 + 160);
  v40 = *(a1 + 112);
  v65 = *(a1 + 96);
  v66 = v40;
  v70 = v87;
  v64 = v87;
  v61 = v67;
  v62 = v39;
  v63 = v69;
  v59 = v65;
  v60 = v40;
  if (v92 == 254)
  {
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v58 = v70;
    v53 = v65;
    v54 = v66;
    v41 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v83, v51, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v88, v51, &qword_1EDF33718, &type metadata for FormatShadow, v41, sub_1D5C34D84);
    sub_1D5D355B8(&v65, v51, &qword_1EDF33718, &type metadata for FormatShadow, v41, sub_1D5C34D84);
    sub_1D601144C(&v53);
    goto LABEL_38;
  }

  v43 = *(a2 + 144);
  v55 = *(a2 + 128);
  v56 = v43;
  v57 = *(a2 + 160);
  v44 = *(a2 + 112);
  v53 = *(a2 + 96);
  v54 = v44;
  v58 = v92;
  v45 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v83, v51, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v88, v51, &qword_1EDF33718, &type metadata for FormatShadow, v45, sub_1D5C34D84);
  sub_1D5D355B8(&v65, v51, &qword_1EDF33718, &type metadata for FormatShadow, v45, sub_1D5C34D84);
  v46 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v59, &v53);
  v49[2] = v55;
  v49[3] = v56;
  v49[4] = v57;
  v50 = v58;
  v49[0] = v53;
  v49[1] = v54;
  sub_1D601144C(v49);
  v51[2] = v61;
  v51[3] = v62;
  v51[4] = v63;
  v52 = v64;
  v51[0] = v59;
  v51[1] = v60;
  sub_1D601144C(v51);
  v55 = v80;
  v56 = v81;
  v57 = v82;
  v53 = v78;
  v54 = v79;
  v58 = v34;
  sub_1D66615F8(&v53, &qword_1EDF33718, &type metadata for FormatShadow, v45, sub_1D5C34D84);
  if (v46)
  {
LABEL_40:
    v47 = *(a1 + 177);
    v48 = *(a2 + 177);
    if (v47 == 2)
    {
      if (v48 == 2)
      {
        v17 = 1;
        return v17 & 1;
      }
    }

    else if (v48 != 2)
    {
      v17 = v48 ^ v47 ^ 1;
      return v17 & 1;
    }
  }

LABEL_23:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s8NewsFeed25FormatIssueCoverNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D635151C(v8, v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = sub_1D633A310(v11, v12);

    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v12)
    {
      goto LABEL_23;
    }
  }

  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = sub_1D633C9E8(v14, v15);

    if ((v16 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v15)
  {
    goto LABEL_23;
  }

  v20 = *(a1 + 72);
  v19 = *(a1 + 80);
  v21 = *(a1 + 88);
  v23 = *(a2 + 72);
  v22 = *(a2 + 80);
  v24 = *(a2 + 88);
  if (v21 > 0xFD)
  {
    sub_1D5ED34B0(*(a1 + 72), *(a1 + 80), *(a1 + 88));
    sub_1D5ED34B0(v23, v22, v24);
    if (v24 > 0xFD)
    {
      sub_1D5ED348C(v20, v19, v21);
      goto LABEL_32;
    }

LABEL_30:
    sub_1D5ED348C(v20, v19, v21);
    sub_1D5ED348C(v23, v22, v24);
    v17 = 0;
    return v17 & 1;
  }

  *&v67 = *(a1 + 72);
  *(&v67 + 1) = v19;
  LOBYTE(v68) = v21;
  if (v24 > 0xFD)
  {
    sub_1D5ED34B0(v20, v19, v21);
    sub_1D5ED34B0(v23, v22, v24);
    sub_1D5ED34B0(v20, v19, v21);
    sub_1D5ED34A0(v20, v19, v21);
    goto LABEL_30;
  }

  *v79 = v23;
  *&v79[8] = v22;
  v79[16] = v24;
  sub_1D5ED34B0(v20, v19, v21);
  sub_1D5ED34B0(v23, v22, v24);
  sub_1D5ED34B0(v20, v19, v21);
  v25 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v67, v79);
  sub_1D5ED34A0(*v79, *&v79[8], v79[16]);
  sub_1D5ED34A0(v67, *(&v67 + 1), v68);
  sub_1D5ED348C(v20, v19, v21);
  if ((v25 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_32:
  v26 = *(a1 + 112);
  v27 = *(a1 + 144);
  v86 = *(a1 + 128);
  v87 = v27;
  v28 = *(a1 + 144);
  v88 = *(a1 + 160);
  v29 = *(a1 + 112);
  v85[0] = *(a1 + 96);
  v85[1] = v29;
  v30 = *(a2 + 112);
  v31 = *(a2 + 144);
  v91 = *(a2 + 128);
  v92 = v31;
  v32 = *(a2 + 144);
  v93 = *(a2 + 160);
  v33 = *(a2 + 112);
  v90[0] = *(a2 + 96);
  v90[1] = v33;
  v82 = v86;
  v83 = v28;
  v84 = *(a1 + 160);
  v80 = v85[0];
  v81 = v26;
  *&v79[23] = v30;
  *&v79[39] = v91;
  *&v79[55] = v32;
  *&v79[71] = *(a2 + 160);
  v89 = *(a1 + 176);
  v94 = *(a2 + 176);
  v34 = v89;
  *&v79[7] = v90[0];
  v35 = v94;
  if (v89 != 254)
  {
    v39 = *(a1 + 144);
    v69 = *(a1 + 128);
    v70 = v39;
    v71 = *(a1 + 160);
    v40 = *(a1 + 112);
    v67 = *(a1 + 96);
    v68 = v40;
    v72 = v89;
    v66 = v89;
    v63 = v69;
    v64 = v39;
    v65 = v71;
    v61 = v67;
    v62 = v40;
    if (v94 != 254)
    {
      v43 = *(a2 + 144);
      v57 = *(a2 + 128);
      v58 = v43;
      v59 = *(a2 + 160);
      v44 = *(a2 + 112);
      v55 = *(a2 + 96);
      v56 = v44;
      v60 = v94;
      v45 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v85, v53, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v90, v53, &qword_1EDF33718, &type metadata for FormatShadow, v45, sub_1D5C34D84);
      sub_1D5D355B8(&v67, v53, &qword_1EDF33718, &type metadata for FormatShadow, v45, sub_1D5C34D84);
      v46 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v61, &v55);
      v51[2] = v57;
      v51[3] = v58;
      v51[4] = v59;
      v52 = v60;
      v51[0] = v55;
      v51[1] = v56;
      sub_1D601144C(v51);
      v53[2] = v63;
      v53[3] = v64;
      v53[4] = v65;
      v54 = v66;
      v53[0] = v61;
      v53[1] = v62;
      sub_1D601144C(v53);
      v57 = v82;
      v58 = v83;
      v59 = v84;
      v55 = v80;
      v56 = v81;
      v60 = v34;
      sub_1D66615F8(&v55, &qword_1EDF33718, &type metadata for FormatShadow, v45, sub_1D5C34D84);
      if ((v46 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

    v57 = v69;
    v58 = v70;
    v59 = v71;
    v60 = v72;
    v55 = v67;
    v56 = v68;
    v41 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v85, v53, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v90, v53, &qword_1EDF33718, &type metadata for FormatShadow, v41, sub_1D5C34D84);
    sub_1D5D355B8(&v67, v53, &qword_1EDF33718, &type metadata for FormatShadow, v41, sub_1D5C34D84);
    sub_1D601144C(&v55);
LABEL_38:
    v69 = v82;
    v70 = v83;
    v71 = v84;
    v67 = v80;
    v68 = v81;
    v75 = *&v79[32];
    v76 = *&v79[48];
    *v77 = *&v79[64];
    v73 = *v79;
    v72 = v34;
    *&v77[15] = *&v79[79];
    v74 = *&v79[16];
    v78 = v35;
    sub_1D5D35558(&v67, &qword_1EC8822D8, &qword_1EDF33718, &type metadata for FormatShadow, sub_1D66F49B8);
    v17 = 0;
    return v17 & 1;
  }

  if (v94 != 254)
  {
    v42 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v85, &v67, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v90, &v67, &qword_1EDF33718, &type metadata for FormatShadow, v42, sub_1D5C34D84);
    goto LABEL_38;
  }

  v36 = *(a1 + 144);
  v69 = *(a1 + 128);
  v70 = v36;
  v71 = *(a1 + 160);
  v37 = *(a1 + 112);
  v67 = *(a1 + 96);
  v68 = v37;
  v72 = -2;
  v38 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v85, &v61, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v90, &v61, &qword_1EDF33718, &type metadata for FormatShadow, v38, sub_1D5C34D84);
  sub_1D66615F8(&v67, &qword_1EDF33718, &type metadata for FormatShadow, v38, sub_1D5C34D84);
LABEL_40:
  v47 = *(a1 + 177);
  v48 = *(a2 + 177);
  if (v47 == 2)
  {
    if (v48 == 2)
    {
LABEL_45:
      swift_beginAccess();
      v49 = *(a1 + 184);
      swift_beginAccess();
      v50 = *(a2 + 184);

      v17 = sub_1D633D840(v49, v50);

      return v17 & 1;
    }
  }

  else if (v48 != 2 && ((v48 ^ v47) & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_23:
  v17 = 0;
  return v17 & 1;
}

BOOL _s8NewsFeed20FormatGroupNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D6353478(v8, v9);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = sub_1D633A310(v11, v12);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v12)
    {
      return 0;
    }
  }

  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = sub_1D633C9E8(v14, v15);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  v19 = *(a1 + 88);
  v21 = *(a2 + 72);
  v20 = *(a2 + 80);
  v22 = *(a2 + 88);
  if (v19 > 0xFD)
  {
    sub_1D5ED34B0(*(a1 + 72), *(a1 + 80), *(a1 + 88));
    sub_1D5ED34B0(v21, v20, v22);
    if (v22 > 0xFD)
    {
      sub_1D5ED348C(v18, v17, v19);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  *&__src[0] = *(a1 + 72);
  *(&__src[0] + 1) = v17;
  LOBYTE(__src[1]) = v19;
  if (v22 > 0xFD)
  {
    sub_1D5ED34B0(v18, v17, v19);
    sub_1D5ED34B0(v21, v20, v22);
    sub_1D5ED34B0(v18, v17, v19);
    sub_1D5ED34A0(v18, v17, v19);
LABEL_28:
    sub_1D5ED348C(v18, v17, v19);
    sub_1D5ED348C(v21, v20, v22);
    return 0;
  }

  *&__dst[0] = v21;
  *(&__dst[0] + 1) = v20;
  LOBYTE(__dst[1]) = v22;
  sub_1D5ED34B0(v18, v17, v19);
  sub_1D5ED34B0(v21, v20, v22);
  sub_1D5ED34B0(v18, v17, v19);
  v23 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(__src, __dst);
  sub_1D5ED34A0(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
  sub_1D5ED34A0(*&__src[0], *(&__src[0] + 1), __src[1]);
  sub_1D5ED348C(v18, v17, v19);
  if (v23)
  {
LABEL_30:
    v24 = *(a1 + 112);
    v25 = *(a1 + 144);
    v162 = *(a1 + 128);
    v163 = v25;
    v26 = *(a1 + 144);
    v164 = *(a1 + 160);
    v27 = *(a1 + 112);
    v161[0] = *(a1 + 96);
    v161[1] = v27;
    v28 = *(a2 + 112);
    v29 = *(a2 + 144);
    v167 = *(a2 + 128);
    v168 = v29;
    v30 = *(a2 + 144);
    v169 = *(a2 + 160);
    v31 = *(a2 + 112);
    v166[0] = *(a2 + 96);
    v166[1] = v31;
    v106 = v162;
    v107 = v26;
    v108 = *(a1 + 160);
    v104 = v161[0];
    v105 = v24;
    *(&__dst[1] + 7) = v28;
    *(&__dst[2] + 7) = v167;
    *(&__dst[3] + 7) = v30;
    *(&__dst[4] + 7) = *(a2 + 160);
    v165 = *(a1 + 176);
    v170 = *(a2 + 176);
    v32 = v165;
    *(__dst + 7) = v166[0];
    v33 = v170;
    if (v165 == 254)
    {
      if (v170 == 254)
      {
        v34 = *(a1 + 144);
        __src[2] = *(a1 + 128);
        __src[3] = v34;
        __src[4] = *(a1 + 160);
        v35 = *(a1 + 96);
        __src[1] = *(a1 + 112);
        __src[0] = v35;
        LOBYTE(__src[5]) = -2;
        v36 = MEMORY[0x1E69E6720];
        sub_1D5D355B8(v161, &v150, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
        sub_1D5D355B8(v166, &v150, &qword_1EDF33718, &type metadata for FormatShadow, v36, sub_1D5C34D84);
        sub_1D66615F8(__src, &qword_1EDF33718, &type metadata for FormatShadow, v36, sub_1D5C34D84);
LABEL_41:
        v51 = *(a1 + 177);
        v52 = *(a2 + 177);
        if (v51 == 2)
        {
          if (v52 != 2)
          {
            return 0;
          }
        }

        else if (v52 == 2 || ((v52 ^ v51) & 1) != 0)
        {
          return 0;
        }

        v53 = *(a1 + 178);
        v54 = *(a2 + 178);
        if (v53 == 2)
        {
          if (v54 != 2)
          {
            return 0;
          }
        }

        else if (v54 == 2 || ((v54 ^ v53) & 1) != 0)
        {
          return 0;
        }

        v55 = *(a1 + 296);
        v56 = *(a1 + 328);
        v136 = *(a1 + 312);
        v137 = v56;
        v57 = *(a1 + 232);
        v58 = *(a1 + 264);
        v59 = *(a1 + 280);
        v132 = *(a1 + 248);
        v133 = v58;
        v60 = *(a1 + 264);
        v61 = *(a1 + 280);
        v135 = *(a1 + 296);
        v134 = v59;
        v62 = *(a1 + 200);
        v128 = *(a1 + 184);
        v129 = v62;
        v63 = *(a1 + 216);
        v131 = v57;
        v130 = v63;
        v64 = *(a2 + 296);
        v65 = *(a2 + 328);
        v147 = *(a2 + 312);
        v148 = v65;
        v66 = *(a2 + 232);
        v68 = *(a2 + 264);
        v67 = *(a2 + 280);
        v143 = *(a2 + 248);
        v144 = v68;
        v69 = *(a2 + 280);
        v70 = *(a2 + 264);
        v146 = *(a2 + 296);
        v145 = v69;
        v71 = *(a2 + 200);
        v139 = *(a2 + 184);
        v140 = v71;
        v72 = *(a2 + 216);
        v142 = v66;
        v141 = v72;
        v73 = *(a1 + 296);
        v74 = *(a1 + 328);
        __src[8] = *(a1 + 312);
        __src[9] = v74;
        v75 = *(a1 + 232);
        v76 = *(a1 + 264);
        __src[4] = *(a1 + 248);
        __src[5] = v76;
        v77 = *(a1 + 280);
        __src[7] = v73;
        __src[6] = v77;
        v78 = *(a1 + 200);
        __src[0] = *(a1 + 184);
        __src[1] = v78;
        v79 = *(a1 + 216);
        __src[3] = v75;
        __src[2] = v79;
        v80 = *(a2 + 328);
        *(&__src[18] + 8) = v147;
        *(&__src[19] + 8) = v80;
        *(&__src[16] + 8) = v67;
        *(&__src[17] + 8) = v64;
        *(&__src[13] + 8) = *(a2 + 232);
        *(&__src[14] + 8) = *(a2 + 248);
        v138 = *(a1 + 344);
        v149 = *(a2 + 344);
        LOWORD(__src[10]) = *(a1 + 344);
        WORD4(__src[20]) = *(a2 + 344);
        *(&__src[15] + 8) = v70;
        *(&__src[10] + 8) = *(a2 + 184);
        *(&__src[11] + 8) = *(a2 + 200);
        *(&__src[12] + 8) = *(a2 + 216);
        v81 = *(a1 + 328);
        v158 = v136;
        v159 = v81;
        v160 = *(a1 + 344);
        v154 = *(a1 + 248);
        v155 = v60;
        v82 = *(a1 + 232);
        v157 = v55;
        v156 = v61;
        v83 = *(a1 + 200);
        v150 = *(a1 + 184);
        v151 = v83;
        v84 = *(a1 + 216);
        v153 = v82;
        v152 = v84;
        if (sub_1D60081E0(&v150) == 1)
        {
          __dst[8] = *(&__src[18] + 8);
          __dst[9] = *(&__src[19] + 8);
          LOWORD(__dst[10]) = WORD4(__src[20]);
          __dst[4] = *(&__src[14] + 8);
          __dst[5] = *(&__src[15] + 8);
          __dst[6] = *(&__src[16] + 8);
          __dst[7] = *(&__src[17] + 8);
          __dst[0] = *(&__src[10] + 8);
          __dst[1] = *(&__src[11] + 8);
          __dst[2] = *(&__src[12] + 8);
          __dst[3] = *(&__src[13] + 8);
          if (sub_1D60081E0(__dst) == 1)
          {
            v124 = __src[8];
            v125 = __src[9];
            v126 = __src[10];
            v120 = __src[4];
            v121 = __src[5];
            v123 = __src[7];
            v122 = __src[6];
            v116 = __src[0];
            v117 = __src[1];
            v119 = __src[3];
            v118 = __src[2];
            v85 = MEMORY[0x1E69E6720];
            sub_1D5D355B8(&v128, &v104, &qword_1EDF2D860, &type metadata for FormatVisualEffect, MEMORY[0x1E69E6720], sub_1D5C34D84);
            sub_1D5D355B8(&v139, &v104, &qword_1EDF2D860, &type metadata for FormatVisualEffect, v85, sub_1D5C34D84);
            sub_1D66615F8(&v116, &qword_1EDF2D860, &type metadata for FormatVisualEffect, v85, sub_1D5C34D84);
            return 1;
          }

          v87 = MEMORY[0x1E69E6720];
          sub_1D5D355B8(&v128, &v116, &qword_1EDF2D860, &type metadata for FormatVisualEffect, MEMORY[0x1E69E6720], sub_1D5C34D84);
          sub_1D5D355B8(&v139, &v116, &qword_1EDF2D860, &type metadata for FormatVisualEffect, v87, sub_1D5C34D84);
        }

        else
        {
          v124 = __src[8];
          v125 = __src[9];
          v120 = __src[4];
          v121 = __src[5];
          v123 = __src[7];
          v122 = __src[6];
          v116 = __src[0];
          v117 = __src[1];
          v119 = __src[3];
          v118 = __src[2];
          v112 = __src[8];
          v113 = __src[9];
          v108 = __src[4];
          v109 = __src[5];
          v110 = __src[6];
          v111 = __src[7];
          v104 = __src[0];
          v105 = __src[1];
          v126 = __src[10];
          v114 = __src[10];
          v106 = __src[2];
          v107 = __src[3];
          __dst[8] = *(&__src[18] + 8);
          __dst[9] = *(&__src[19] + 8);
          LOWORD(__dst[10]) = WORD4(__src[20]);
          __dst[4] = *(&__src[14] + 8);
          __dst[5] = *(&__src[15] + 8);
          __dst[6] = *(&__src[16] + 8);
          __dst[7] = *(&__src[17] + 8);
          __dst[0] = *(&__src[10] + 8);
          __dst[1] = *(&__src[11] + 8);
          __dst[2] = *(&__src[12] + 8);
          __dst[3] = *(&__src[13] + 8);
          if (sub_1D60081E0(__dst) != 1)
          {
            v101 = *(&__src[18] + 8);
            v102 = *(&__src[19] + 8);
            v103 = WORD4(__src[20]);
            v97 = *(&__src[14] + 8);
            v98 = *(&__src[15] + 8);
            v99 = *(&__src[16] + 8);
            v100 = *(&__src[17] + 8);
            v93 = *(&__src[10] + 8);
            v94 = *(&__src[11] + 8);
            v95 = *(&__src[12] + 8);
            v96 = *(&__src[13] + 8);
            v88 = MEMORY[0x1E69E6720];
            sub_1D5D355B8(&v128, v91, &qword_1EDF2D860, &type metadata for FormatVisualEffect, MEMORY[0x1E69E6720], sub_1D5C34D84);
            sub_1D5D355B8(&v139, v91, &qword_1EDF2D860, &type metadata for FormatVisualEffect, v88, sub_1D5C34D84);
            sub_1D5D355B8(&v116, v91, &qword_1EDF2D860, &type metadata for FormatVisualEffect, v88, sub_1D5C34D84);
            v45 = _s8NewsFeed18FormatVisualEffectO2eeoiySbAC_ACtFZ_0(&v104, &v93);
            v89[8] = v101;
            v89[9] = v102;
            v90 = v103;
            v89[4] = v97;
            v89[5] = v98;
            v89[6] = v99;
            v89[7] = v100;
            v89[0] = v93;
            v89[1] = v94;
            v89[2] = v95;
            v89[3] = v96;
            sub_1D60113F8(v89);
            v91[8] = v112;
            v91[9] = v113;
            v92 = v114;
            v91[4] = v108;
            v91[5] = v109;
            v91[6] = v110;
            v91[7] = v111;
            v91[0] = v104;
            v91[1] = v105;
            v91[2] = v106;
            v91[3] = v107;
            sub_1D60113F8(v91);
            v101 = __src[8];
            v102 = __src[9];
            v103 = __src[10];
            v97 = __src[4];
            v98 = __src[5];
            v99 = __src[6];
            v100 = __src[7];
            v93 = __src[0];
            v94 = __src[1];
            v95 = __src[2];
            v96 = __src[3];
            sub_1D66615F8(&v93, &qword_1EDF2D860, &type metadata for FormatVisualEffect, v88, sub_1D5C34D84);
            return v45;
          }

          v101 = __src[8];
          v102 = __src[9];
          v103 = __src[10];
          v97 = __src[4];
          v98 = __src[5];
          v99 = __src[6];
          v100 = __src[7];
          v93 = __src[0];
          v94 = __src[1];
          v95 = __src[2];
          v96 = __src[3];
          v86 = MEMORY[0x1E69E6720];
          sub_1D5D355B8(&v128, v91, &qword_1EDF2D860, &type metadata for FormatVisualEffect, MEMORY[0x1E69E6720], sub_1D5C34D84);
          sub_1D5D355B8(&v139, v91, &qword_1EDF2D860, &type metadata for FormatVisualEffect, v86, sub_1D5C34D84);
          sub_1D5D355B8(&v116, v91, &qword_1EDF2D860, &type metadata for FormatVisualEffect, v86, sub_1D5C34D84);
          sub_1D60113F8(&v93);
        }

        memcpy(__dst, __src, 0x14AuLL);
        v41 = &unk_1EC8822E0;
        v42 = &qword_1EDF2D860;
        v43 = &type metadata for FormatVisualEffect;
        v44 = __dst;
        goto LABEL_37;
      }

      v40 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v161, __src, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v166, __src, &qword_1EDF33718, &type metadata for FormatShadow, v40, sub_1D5C34D84);
    }

    else
    {
      v37 = *(a1 + 144);
      __src[2] = *(a1 + 128);
      __src[3] = v37;
      __src[4] = *(a1 + 160);
      v38 = *(a1 + 96);
      __src[1] = *(a1 + 112);
      __src[0] = v38;
      LOBYTE(__src[5]) = v165;
      LOBYTE(v155) = v165;
      v152 = __src[2];
      v153 = v37;
      v154 = __src[4];
      v150 = v38;
      v151 = __src[1];
      if (v170 != 254)
      {
        v47 = *(a2 + 144);
        v141 = *(a2 + 128);
        v142 = v47;
        v143 = *(a2 + 160);
        v48 = *(a2 + 96);
        v140 = *(a2 + 112);
        v139 = v48;
        LOBYTE(v144) = v170;
        v49 = MEMORY[0x1E69E6720];
        sub_1D5D355B8(v161, &v128, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
        sub_1D5D355B8(v166, &v128, &qword_1EDF33718, &type metadata for FormatShadow, v49, sub_1D5C34D84);
        sub_1D5D355B8(__src, &v128, &qword_1EDF33718, &type metadata for FormatShadow, v49, sub_1D5C34D84);
        v50 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v150, &v139);
        v118 = v141;
        v119 = v142;
        v120 = v143;
        LOBYTE(v121) = v144;
        v116 = v139;
        v117 = v140;
        sub_1D601144C(&v116);
        v130 = v152;
        v131 = v153;
        v132 = v154;
        LOBYTE(v133) = v155;
        v128 = v150;
        v129 = v151;
        sub_1D601144C(&v128);
        v141 = v106;
        v142 = v107;
        v143 = v108;
        v140 = v105;
        v139 = v104;
        LOBYTE(v144) = v32;
        sub_1D66615F8(&v139, &qword_1EDF33718, &type metadata for FormatShadow, v49, sub_1D5C34D84);
        if ((v50 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_41;
      }

      v141 = __src[2];
      v142 = __src[3];
      v143 = __src[4];
      LOBYTE(v144) = __src[5];
      v139 = __src[0];
      v140 = __src[1];
      v39 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v161, &v128, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v166, &v128, &qword_1EDF33718, &type metadata for FormatShadow, v39, sub_1D5C34D84);
      sub_1D5D355B8(__src, &v128, &qword_1EDF33718, &type metadata for FormatShadow, v39, sub_1D5C34D84);
      sub_1D601144C(&v139);
    }

    __src[2] = v106;
    __src[3] = v107;
    __src[4] = v108;
    __src[1] = v105;
    __src[0] = v104;
    *(&__src[7] + 1) = __dst[2];
    *(&__src[8] + 1) = __dst[3];
    *(&__src[9] + 1) = __dst[4];
    *(&__src[5] + 1) = __dst[0];
    LOBYTE(__src[5]) = v32;
    *&__src[10] = *(&__dst[4] + 15);
    *(&__src[6] + 1) = __dst[1];
    BYTE8(__src[10]) = v33;
    v41 = &qword_1EC8822D8;
    v42 = &qword_1EDF33718;
    v43 = &type metadata for FormatShadow;
    v44 = __src;
LABEL_37:
    sub_1D5D35558(v44, v41, v42, v43, sub_1D66F49B8);
  }

  return 0;
}

uint64_t _s8NewsFeed24FormatGroupNodeMaskStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_25;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D635324C(v8, v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

  v11 = *(a1 + 72);
  v12 = *(a1 + 104);
  v108[2] = *(a1 + 88);
  v108[3] = v12;
  v109 = *(a1 + 120);
  v108[0] = *(a1 + 56);
  v108[1] = v11;
  v13 = *(a2 + 72);
  v14 = *(a2 + 104);
  v110[2] = *(a2 + 88);
  v110[3] = v14;
  v111 = *(a2 + 120);
  v110[0] = *(a2 + 56);
  v110[1] = v13;
  v15 = *(a1 + 72);
  v62 = *(a1 + 56);
  v63 = v15;
  v16 = *(a1 + 104);
  v64 = *(a1 + 88);
  v65 = v16;
  v17 = v109;
  v18 = *(a2 + 72);
  *&v90[7] = *(a2 + 56);
  *&v90[23] = v18;
  v19 = *(a2 + 104);
  *&v90[39] = *(a2 + 88);
  *&v90[55] = v19;
  v20 = v111;
  if (v109 == 255)
  {
    if (v111 != 255)
    {
      v34 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v108, &v80, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v110, &v80, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, v34, sub_1D5C34D84);
      goto LABEL_23;
    }

    v24 = *(a1 + 72);
    v80 = *(a1 + 56);
    v81 = v24;
    v25 = *(a1 + 104);
    v82 = *(a1 + 88);
    v83 = v25;
    v84[0] = -1;
    v26 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v108, &v102, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v110, &v102, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, v26, sub_1D5C34D84);
    sub_1D66615F8(&v80, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, v26, sub_1D5C34D84);
LABEL_18:
    v31 = *(a1 + 128);
    v32 = *(a2 + 128);
    if (v31)
    {
      if (!v32)
      {
        goto LABEL_25;
      }

      v33 = sub_1D633C9E8(v31, v32);

      if ((v33 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v32)
    {
      goto LABEL_25;
    }

    v40 = *(a1 + 184);
    v98 = *(a1 + 168);
    v99 = v40;
    v100 = *(a1 + 200);
    v101 = *(a1 + 216);
    v41 = *(a1 + 152);
    v96 = *(a1 + 136);
    v97 = v41;
    v42 = *(a2 + 184);
    v104 = *(a2 + 168);
    v105 = v42;
    v106 = *(a2 + 200);
    v107 = *(a2 + 216);
    v43 = *(a2 + 152);
    v102 = *(a2 + 136);
    v103 = v43;
    v44 = *(a1 + 152);
    v45 = *(a1 + 184);
    v93 = *(a1 + 168);
    v94 = v45;
    v95 = *(a1 + 200);
    v91 = *(a1 + 136);
    v92 = v44;
    v46 = v101;
    v47 = *(a2 + 152);
    v48 = *(a2 + 184);
    *&v90[39] = *(a2 + 168);
    *&v90[55] = v48;
    *&v90[71] = *(a2 + 200);
    *&v90[7] = *(a2 + 136);
    *&v90[23] = v47;
    v49 = v107;
    if (v101 == 254)
    {
      if (v107 == 254)
      {
        v50 = *(a1 + 152);
        v51 = *(a1 + 184);
        v82 = *(a1 + 168);
        v83 = v51;
        *v84 = *(a1 + 200);
        v80 = *(a1 + 136);
        v81 = v50;
        v84[16] = -2;
        v52 = MEMORY[0x1E69E6720];
        sub_1D5D355B8(&v96, &v74, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
        sub_1D5D355B8(&v102, &v74, &qword_1EDF33718, &type metadata for FormatShadow, v52, sub_1D5C34D84);
        sub_1D66615F8(&v80, &qword_1EDF33718, &type metadata for FormatShadow, v52, sub_1D5C34D84);
        v38 = 1;
        return v38 & 1;
      }

      v56 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(&v96, &v80, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(&v102, &v80, &qword_1EDF33718, &type metadata for FormatShadow, v56, sub_1D5C34D84);
    }

    else
    {
      v53 = *(a1 + 152);
      v54 = *(a1 + 184);
      v82 = *(a1 + 168);
      v83 = v54;
      *v84 = *(a1 + 200);
      v80 = *(a1 + 136);
      v81 = v53;
      v84[16] = v101;
      v79 = v101;
      v76 = v82;
      v77 = v54;
      v78 = *v84;
      v74 = v80;
      v75 = v53;
      if (v107 != 254)
      {
        v57 = *(a2 + 152);
        v58 = *(a2 + 184);
        v70 = *(a2 + 168);
        v71 = v58;
        v72 = *(a2 + 200);
        v68 = *(a2 + 136);
        v69 = v57;
        v73 = v107;
        v59 = MEMORY[0x1E69E6720];
        sub_1D5D355B8(&v96, &v62, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
        sub_1D5D355B8(&v102, &v62, &qword_1EDF33718, &type metadata for FormatShadow, v59, sub_1D5C34D84);
        sub_1D5D355B8(&v80, &v62, &qword_1EDF33718, &type metadata for FormatShadow, v59, sub_1D5C34D84);
        v38 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v74, &v68);
        v60[2] = v70;
        v60[3] = v71;
        v60[4] = v72;
        v61 = v73;
        v60[0] = v68;
        v60[1] = v69;
        sub_1D601144C(v60);
        v64 = v76;
        v65 = v77;
        v66 = v78;
        v67 = v79;
        v62 = v74;
        v63 = v75;
        sub_1D601144C(&v62);
        v70 = v93;
        v71 = v94;
        v72 = v95;
        v68 = v91;
        v69 = v92;
        v73 = v46;
        sub_1D66615F8(&v68, &qword_1EDF33718, &type metadata for FormatShadow, v59, sub_1D5C34D84);
        return v38 & 1;
      }

      v70 = v82;
      v71 = v83;
      v72 = *v84;
      v73 = v84[16];
      v68 = v80;
      v69 = v81;
      v55 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(&v96, &v62, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(&v102, &v62, &qword_1EDF33718, &type metadata for FormatShadow, v55, sub_1D5C34D84);
      sub_1D5D355B8(&v80, &v62, &qword_1EDF33718, &type metadata for FormatShadow, v55, sub_1D5C34D84);
      sub_1D601144C(&v68);
    }

    v82 = v93;
    v83 = v94;
    *v84 = v95;
    v80 = v91;
    v81 = v92;
    v84[16] = v46;
    *v87 = *&v90[32];
    *&v87[16] = *&v90[48];
    *v88 = *&v90[64];
    *&v88[15] = *&v90[79];
    v85 = *v90;
    v86 = *&v90[16];
    v89 = v49;
    v35 = &qword_1EC8822D8;
    v36 = &qword_1EDF33718;
    v37 = &type metadata for FormatShadow;
    goto LABEL_24;
  }

  v21 = *(a1 + 72);
  v80 = *(a1 + 56);
  v81 = v21;
  v22 = *(a1 + 104);
  v82 = *(a1 + 88);
  v83 = v22;
  v84[0] = v109;
  LOBYTE(v106) = v109;
  v104 = v82;
  v105 = v22;
  v102 = v80;
  v103 = v21;
  if (v111 == 255)
  {
    v98 = v82;
    v99 = v83;
    LOBYTE(v100) = v84[0];
    v96 = v80;
    v97 = v81;
    v23 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v108, &v74, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v110, &v74, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, v23, sub_1D5C34D84);
    sub_1D5D355B8(&v80, &v74, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, v23, sub_1D5C34D84);
    sub_1D61992B0(&v96);
LABEL_23:
    v80 = v62;
    v81 = v63;
    v82 = v64;
    v83 = v65;
    v84[0] = v17;
    v85 = *&v90[16];
    v86 = *&v90[32];
    *v87 = *&v90[48];
    *&v87[15] = *&v90[63];
    *&v84[1] = *v90;
    v87[23] = v20;
    v35 = &unk_1EC889B20;
    v36 = &qword_1EDF273F0;
    v37 = &type metadata for FormatGroupNodeMaskPath;
LABEL_24:
    sub_1D5D35558(&v80, v35, v36, v37, sub_1D66F49B8);
    goto LABEL_25;
  }

  v27 = *(a2 + 72);
  v96 = *(a2 + 56);
  v97 = v27;
  v28 = *(a2 + 104);
  v98 = *(a2 + 88);
  v99 = v28;
  LOBYTE(v100) = v111;
  v29 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v108, &v74, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v110, &v74, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, v29, sub_1D5C34D84);
  sub_1D5D355B8(&v80, &v74, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, v29, sub_1D5C34D84);
  v30 = _s8NewsFeed23FormatGroupNodeMaskPathO2eeoiySbAC_ACtFZ_0(&v102, &v96);
  v70 = v98;
  v71 = v99;
  LOBYTE(v72) = v100;
  v68 = v96;
  v69 = v97;
  sub_1D61992B0(&v68);
  v76 = v104;
  v77 = v105;
  LOBYTE(v78) = v106;
  v74 = v102;
  v75 = v103;
  sub_1D61992B0(&v74);
  v96 = v62;
  v97 = v63;
  v98 = v64;
  v99 = v65;
  LOBYTE(v100) = v17;
  sub_1D66615F8(&v96, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, v29, sub_1D5C34D84);
  if (v30)
  {
    goto LABEL_18;
  }

LABEL_25:
  v38 = 0;
  return v38 & 1;
}

uint64_t _s8NewsFeed27FormatProgressViewNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_29;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D6351398(v8, v9);

  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_29;
    }

    v13 = sub_1D633A310(v11, v12);

    if ((v13 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v12)
    {
      goto LABEL_29;
    }
  }

  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
  if ((~v14 & 0xF000000000000007) != 0)
  {
    v23 = *(a1 + 64);
    if ((~v15 & 0xF000000000000007) == 0)
    {
LABEL_27:
      sub_1D5CFCFAC(v14);
      sub_1D5CFCFAC(v15);
      sub_1D5CFCFAC(v14);

      goto LABEL_28;
    }

    v22 = v15;
    sub_1D5CFCFAC(v14);
    sub_1D5CFCFAC(v15);
    sub_1D5CFCFAC(v14);
    v16 = static FormatColor.== infix(_:_:)(&v23, &v22);

    sub_1D5C84FF4(v14);
    if ((v16 & 1) == 0)
    {
LABEL_29:
      v17 = 0;
      return v17 & 1;
    }
  }

  else
  {
    sub_1D5CFCFAC(*(a1 + 64));
    sub_1D5CFCFAC(v15);
    if ((~v15 & 0xF000000000000007) != 0)
    {
LABEL_28:
      sub_1D5C84FF4(v14);
      sub_1D5C84FF4(v15);
      goto LABEL_29;
    }

    sub_1D5C84FF4(v14);
  }

  v14 = *(a1 + 72);
  v15 = *(a2 + 72);
  if ((~v14 & 0xF000000000000007) != 0)
  {
    v23 = *(a1 + 72);
    if ((~v15 & 0xF000000000000007) == 0)
    {
      goto LABEL_27;
    }

    v22 = v15;
    sub_1D5CFCFAC(v14);
    sub_1D5CFCFAC(v15);
    sub_1D5CFCFAC(v14);
    v19 = static FormatColor.== infix(_:_:)(&v23, &v22);

    sub_1D5C84FF4(v14);
    if (v19)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_1D5CFCFAC(*(a1 + 72));
  sub_1D5CFCFAC(v15);
  if ((~v15 & 0xF000000000000007) != 0)
  {
    goto LABEL_28;
  }

  sub_1D5C84FF4(v14);
LABEL_32:
  v20 = *(a1 + 80);
  v17 = v20 == 2;
  v21 = *(a2 + 80);
  if (v21 != 2)
  {
    v17 = 0;
  }

  if (v20 != 2 && v21 != 2)
  {
    v17 = v21 ^ v20 ^ 1;
  }

  return v17 & 1;
}

uint64_t _s8NewsFeed30FormatSponsoredBannerNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D63510A0(v8, v9);

  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    v22 = *(a1 + 56);
    if ((~v12 & 0xF000000000000007) == 0)
    {
      goto LABEL_21;
    }

    v21 = v12;
    sub_1D5CFCFAC(v11);
    sub_1D5CFCFAC(v12);
    sub_1D5CFCFAC(v11);
    v13 = static FormatColor.== infix(_:_:)(&v22, &v21);

    sub_1D5C84FF4(v11);
    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_1D5CFCFAC(*(a1 + 56));
    sub_1D5CFCFAC(v12);
    if ((~v12 & 0xF000000000000007) != 0)
    {
      goto LABEL_22;
    }

    sub_1D5C84FF4(v11);
  }

  v11 = *(a1 + 64);
  v12 = *(a2 + 64);
  if ((~v11 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(*(a1 + 64));
    sub_1D5CFCFAC(v12);
    if ((~v12 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v11);
      goto LABEL_26;
    }

LABEL_22:
    sub_1D5C84FF4(v11);
    sub_1D5C84FF4(v12);
    goto LABEL_23;
  }

  v22 = *(a1 + 64);
  if ((~v12 & 0xF000000000000007) == 0)
  {
LABEL_21:
    sub_1D5CFCFAC(v11);
    sub_1D5CFCFAC(v12);
    sub_1D5CFCFAC(v11);

    goto LABEL_22;
  }

  v21 = v12;
  sub_1D5CFCFAC(v11);
  sub_1D5CFCFAC(v12);
  sub_1D5CFCFAC(v11);
  v16 = static FormatColor.== infix(_:_:)(&v22, &v21);

  sub_1D5C84FF4(v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  v17 = *(a1 + 72);
  v18 = *(a2 + 72);
  if (v17 == 2)
  {
    if (v18 == 2)
    {
LABEL_31:
      v19 = *(a1 + 80);
      v20 = *(a2 + 80);
      if (v19 == 2)
      {
        sub_1D5D0A59C(2uLL);
        if (v20 == 2)
        {
          sub_1D5D0A59C(2uLL);
          sub_1D5D0A5AC(2uLL);
          v14 = 1;
          return v14 & 1;
        }

        sub_1D5D0A59C(v20);
      }

      else
      {
        v22 = v19;
        if (v20 != 2)
        {
          v21 = v20;
          sub_1D5D0A59C(v19);
          sub_1D5D0A59C(v20);
          sub_1D5D0A59C(v19);
          v14 = _s8NewsFeed39FormatSponsoredBannerUserInterfaceStyleO2eeoiySbAC_ACtFZ_0(&v22, &v21);
          sub_1D5D0A58C(v21);
          sub_1D5D0A58C(v22);
          sub_1D5D0A5AC(v19);
          return v14 & 1;
        }

        sub_1D5D0A59C(v19);
        sub_1D5D0A59C(2uLL);
        sub_1D5D0A59C(v19);
        sub_1D5D0A58C(v19);
      }

      sub_1D5D0A5AC(v19);
      sub_1D5D0A5AC(v20);
    }

LABEL_23:
    v14 = 0;
    return v14 & 1;
  }

  v14 = 0;
  if (v18 != 2 && ((v18 ^ v17) & 1) == 0)
  {
    goto LABEL_31;
  }

  return v14 & 1;
}

uint64_t _s8NewsFeed09FormatTagB0C2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  result = *(a2 + 56);
  if ((*(a1 + 56) & 1) == 0)
  {
    return (*(a1 + 48) == *(a2 + 48)) & ~result;
  }

  return result;
}

uint64_t _s8NewsFeed15FormatPrintNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = a1[5];
  v8 = a2[5];
  if (v7)
  {
    if (v8 && (a1[4] == a2[4] && v7 == v8 || (sub_1D72646CC() & 1) != 0))
    {
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    return v11 & 1;
  }

  if (v8)
  {
    goto LABEL_13;
  }

LABEL_11:
  swift_beginAccess();
  v9 = a1[6];
  swift_beginAccess();
  v10 = a2[6];

  v11 = sub_1D5E21BD8(v9, v10);

  return v11 & 1;
}

uint64_t _s8NewsFeed23FormatFlexBoxNodeLayoutC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);

  v8 = sub_1D6366360(v4, v5, v6, v7);

  if ((v8 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  swift_beginAccess();
  v11 = *(a2 + 40);
  v12 = *(a2 + 32);

  if ((sub_1D6DD8574(v10, v12) & 1) == 0)
  {
    goto LABEL_18;
  }

  v13 = sub_1D634E170(v9, v11);

  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 56);
  v17 = *(a2 + 48);

  v18 = sub_1D6366208(v15, v14, v17, v16);

  if ((v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v19 = *(a1 + 72);
  v20 = *(a1 + 64);
  swift_beginAccess();
  v21 = *(a2 + 72);
  v22 = *(a2 + 64);

  if ((sub_1D6DD5208(v20, v22) & 1) == 0)
  {
    goto LABEL_18;
  }

  v23 = sub_1D634DD64(v19, v21);

  if ((v23 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v24 = *(a1 + 88);
  v25 = *(a1 + 80);
  swift_beginAccess();
  v26 = *(a2 + 88);
  v27 = *(a2 + 80);

  if ((sub_1D6DD6754(v25, v27) & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = sub_1D634DA7C(v24, v26);

  if ((v28 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v29 = *(a1 + 104);
  v30 = *(a1 + 96);
  swift_beginAccess();
  v31 = *(a2 + 104);
  v32 = *(a2 + 96);

  if ((sub_1D6DD7868(v30, v32) & 1) == 0)
  {
LABEL_18:

    v52 = 0;
    goto LABEL_19;
  }

  v33 = sub_1D634D8B4(v29, v31);

  if ((v33 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v35 = *(a1 + 112);
  v34 = *(a1 + 120);
  swift_beginAccess();
  v36 = *(a2 + 112);
  v37 = *(a2 + 120);

  if ((sub_1D633A310(v35, v36) & 1) == 0)
  {
    goto LABEL_17;
  }

  v38 = sub_1D634D564(v34, v37);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if ((v38 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v40 = *(a1 + 128);
  v39 = *(a1 + 136);
  swift_beginAccess();
  v41 = *(a2 + 128);
  v42 = *(a2 + 136);

  if ((sub_1D633A310(v40, v41) & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v43 = sub_1D634D564(v39, v42);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if (v43)
  {
    swift_beginAccess();
    v44 = *(a1 + 144);
    v45 = *(a1 + 152);
    v46 = *(a1 + 160);
    v47 = *(a1 + 168);
    swift_beginAccess();
    v48 = *(a2 + 144);
    v49 = *(a2 + 152);
    v50 = *(a2 + 160);
    v51 = *(a2 + 168);
    sub_1D5C75A4C(v44, v45, v46);

    sub_1D5C75A4C(v48, v49, v50);

    v52 = sub_1D6366044(v44, v45, v46, v47, v48, v49, v50, v51);
    sub_1D5D2F2C8(v48, v49, v50);

    sub_1D5D2F2C8(v44, v45, v46);
LABEL_19:

    return v52 & 1;
  }

LABEL_16:
  v52 = 0;
  return v52 & 1;
}

uint64_t _s8NewsFeed30FormatAccessibilityLayoutValueC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (v5 = sub_1D72646CC(), v6 = 0, (v5 & 1) != 0))
  {
    v9 = *(a1 + 32);
    v8 = *(a2 + 32);
    v6 = _s8NewsFeed24FormatAccessibilityValueO2eeoiySbAC_ACtFZ_0(&v9, &v8);
  }

  return v6 & 1;
}

uint64_t _s8NewsFeed25FormatSponsoredBannerNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_15;
  }

  v61 = *(a1 + 32);
  v55 = *(a2 + 32);
  sub_1D5C82CD8(v61);
  sub_1D5C82CD8(v55);
  v7 = static FormatSize.== infix(_:_:)(&v61, &v55);
  sub_1D5C92A8C(v55);
  sub_1D5C92A8C(v61);
  if ((v7 & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v9)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v61 = *(a1 + 56);
  v18 = v61;
  swift_beginAccess();
  v55 = *(a2 + 56);
  v19 = v55;
  sub_1D5EB1500(v18);
  sub_1D5EB1500(v19);
  LOBYTE(v18) = static FormatVisibility.== infix(_:_:)(&v61, &v55);
  sub_1D5EB15C4(v55);
  sub_1D5EB15C4(v61);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v20 = *(a1 + 64);
  swift_beginAccess();
  if (v20 != *(a2 + 64))
  {
    goto LABEL_15;
  }

  v23 = *(a1 + 80);
  v24 = *(a2 + 80);
  if (v23 <= 0xFD)
  {
    v25 = *(a2 + 72);
    v61 = *(a1 + 72);
    LOBYTE(v62) = v23;
    if (v24 > 0xFD)
    {
      goto LABEL_15;
    }

    v55 = v25;
    LOBYTE(v56) = v24;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v61, &v55) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v24 <= 0xFD)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v26 = *(a1 + 88);
  swift_beginAccess();
  v27 = *(a2 + 88);

  v28 = sub_1D5BFC390(v26, v27);

  if (v28)
  {
    swift_beginAccess();
    v29 = *(a1 + 96);
    swift_beginAccess();
    v30 = *(a2 + 96);
    if (v29)
    {
      if (!v30)
      {
        goto LABEL_15;
      }

      v32 = _s8NewsFeed30FormatSponsoredBannerNodeStyleC2eeoiySbAC_ACtFZ_0(v31, v30);

      if ((v32 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v30)
    {
      goto LABEL_15;
    }

    v34 = *(a1 + 104);
    v33 = *(a1 + 112);
    v36 = *(a1 + 120);
    v35 = *(a1 + 128);
    v37 = *(a1 + 136);
    v38 = *(a1 + 144);
    v40 = *(a2 + 104);
    v39 = *(a2 + 112);
    v41 = *(a2 + 120);
    v54 = *(a2 + 128);
    v43 = *(a2 + 136);
    v42 = *(a2 + 144);
    if (v34)
    {
      v61 = v34;
      v62 = v33;
      v63 = v36;
      v64 = v35;
      v65 = v37;
      v66 = v38;
      if (v40)
      {
        v55 = v40;
        v56 = v39;
        v57 = v41;
        v58 = v54;
        v59 = v43;
        v60 = v42;
        v50 = v43;
        v44 = v37;
        v52 = v37;
        sub_1D5EB1D80(v34, v33, v36, v35, v37);
        sub_1D5EB1D80(v40, v39, v41, v54, v50);
        sub_1D5EB1D80(v34, v33, v36, v35, v44);
        v21 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v61, &v55);
        v45 = v59;

        sub_1D5CBF568(v45);

        v46 = v65;

        sub_1D5CBF568(v46);

        sub_1D5EB2398(v34, v33, v36, v35, v52);
        return v21 & 1;
      }

      v49 = v35;
      v51 = v35;
      v47 = v37;
      sub_1D5EB1D80(v34, v33, v36, v49, v37);
      v48 = v51;
      sub_1D5EB1D80(0, v39, v41, v54, v43);
      sub_1D5EB1D80(v34, v33, v36, v51, v47);

      sub_1D5CBF568(v47);
    }

    else
    {
      v53 = v37;
      sub_1D5EB1D80(0, v33, v36, v35, v37);
      if (!v40)
      {
        sub_1D5EB1D80(0, v39, v41, v54, v43);
        sub_1D5EB2398(0, v33, v36, v35, v53);
        v21 = 1;
        return v21 & 1;
      }

      sub_1D5EB1D80(v40, v39, v41, v54, v43);
      v48 = v35;
      v47 = v53;
    }

    sub_1D5EB2398(v34, v33, v36, v48, v47);
    sub_1D5EB2398(v40, v39, v41, v54, v43);
  }

LABEL_15:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s8NewsFeed22FormatProgressViewNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  *&v104[0] = *(a1 + 32);
  swift_beginAccess();
  *&v102[0] = *(a2 + 32);
  sub_1D5C82CD8(*&v104[0]);
  sub_1D5C82CD8(*&v102[0]);
  v7 = static FormatSize.== infix(_:_:)(v104, v102);
  sub_1D5C92A8C(*&v102[0]);
  sub_1D5C92A8C(*&v104[0]);
  if ((v7 & 1) == 0)
  {
    goto LABEL_42;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_42;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v9)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v17 & 1) == 0)
  {
    goto LABEL_42;
  }

  v18 = *(a1 + 88);
  v98[1] = *(a1 + 72);
  v98[2] = v18;
  v99[0] = *(a1 + 104);
  *(v99 + 15) = *(a1 + 119);
  v98[0] = *(a1 + 56);
  v19 = *(a1 + 72);
  v20 = *(a1 + 104);
  v97[0] = *(a1 + 88);
  v97[1] = v20;
  *(&v97[1] + 15) = *(a1 + 119);
  v95 = *(a1 + 56);
  v96 = v19;
  v21 = *(a2 + 56);
  v22 = *(a2 + 72);
  v23 = *(a2 + 88);
  v24 = *(a2 + 104);
  *(v101 + 15) = *(a2 + 119);
  v100[2] = v23;
  v101[0] = v24;
  v100[0] = v21;
  v100[1] = v22;
  v25 = *(a2 + 72);
  v26 = *(a2 + 104);
  v94[0] = *(a2 + 88);
  v94[1] = v26;
  *(&v94[1] + 15) = *(a2 + 119);
  v92 = *(a2 + 56);
  v93 = v25;
  sub_1D62B62D8(v98, v90);
  sub_1D62B62D8(v100, v90);
  v27 = _s8NewsFeed29FormatProgressViewNodeContentV2eeoiySbAC_ACtFZ_0(&v95, &v92);
  v102[2] = v94[0];
  v103[0] = v94[1];
  *(v103 + 15) = *(&v94[1] + 15);
  v102[0] = v92;
  v102[1] = v93;
  sub_1D62B6334(v102);
  v104[1] = v96;
  v104[2] = v97[0];
  v105[0] = v97[1];
  *(v105 + 15) = *(&v97[1] + 15);
  v104[0] = v95;
  sub_1D62B6334(v104);
  if ((v27 & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v28 = *(a1 + 128);
  swift_beginAccess();
  if (v28 != *(a2 + 128))
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v29 = *(a1 + 136);
  swift_beginAccess();
  v30 = *(a2 + 136);
  if (v29)
  {
    if (!v30)
    {
      goto LABEL_42;
    }

    v32 = _s8NewsFeed27FormatProgressViewNodeStyleC2eeoiySbAC_ACtFZ_0(v31, v30);

    if ((v32 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v30)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v33 = *(a1 + 160);
  v88[0] = *(a1 + 144);
  v88[1] = v33;
  v35 = *(a1 + 144);
  v34 = *(a1 + 160);
  v89[0] = *(a1 + 176);
  *(v89 + 9) = *(a1 + 185);
  v85 = v35;
  v86 = v34;
  *v87 = *(a1 + 176);
  *&v87[9] = *(a1 + 185);
  swift_beginAccess();
  v36 = *(a2 + 160);
  v90[0] = *(a2 + 144);
  v90[1] = v36;
  v38 = *(a2 + 144);
  v37 = *(a2 + 160);
  v91[0] = *(a2 + 176);
  *(v91 + 9) = *(a2 + 185);
  v82 = v38;
  v83 = v37;
  *v84 = *(a2 + 176);
  *&v84[9] = *(a2 + 185);
  sub_1D66AD764(v88, v81);
  sub_1D66AD764(v90, v81);
  v39 = _s8NewsFeed18FormatProgressKindO2eeoiySbAC_ACtFZ_0(&v85, &v82);
  v92 = v82;
  v93 = v83;
  v94[0] = *v84;
  *(v94 + 9) = *&v84[9];
  sub_1D62B63E4(&v92);
  v95 = v85;
  v96 = v86;
  v97[0] = *v87;
  *(v97 + 9) = *&v87[9];
  sub_1D62B63E4(&v95);
  if ((v39 & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  *&v85 = *(a1 + 208);
  v40 = v85;
  swift_beginAccess();
  *&v82 = *(a2 + 208);
  v41 = v82;
  sub_1D5EB1500(v40);
  sub_1D5EB1500(v41);
  LOBYTE(v40) = static FormatVisibility.== infix(_:_:)(&v85, &v82);
  sub_1D5EB15C4(v82);
  sub_1D5EB15C4(v85);
  if ((v40 & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v42 = *(a1 + 216);
  swift_beginAccess();
  v43 = *(a2 + 216);

  v44 = sub_1D5BFC390(v42, v43);

  if ((v44 & 1) == 0)
  {
    goto LABEL_42;
  }

  v45 = *(a1 + 232);
  v46 = *(a2 + 232);
  if (v45 <= 0xFD)
  {
    v47 = *(a2 + 224);
    *&v85 = *(a1 + 224);
    BYTE8(v85) = v45;
    if (v46 > 0xFD)
    {
      goto LABEL_42;
    }

    *&v82 = v47;
    BYTE8(v82) = v46;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v85, &v82) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v46 <= 0xFD)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v48 = *(a1 + 240);
  v49 = *(a1 + 248);
  swift_beginAccess();
  v50 = *(a2 + 248);
  if (!v49)
  {
    if (!v50)
    {
      goto LABEL_35;
    }

LABEL_42:
    v66 = 0;
    return v66 & 1;
  }

  if (!v50 || (v48 != *(a2 + 240) || v49 != v50) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_35:
  v52 = *(a1 + 256);
  v51 = *(a1 + 264);
  v53 = *(a1 + 272);
  v54 = *(a1 + 280);
  v55 = *(a1 + 288);
  v56 = *(a1 + 296);
  v57 = *(a2 + 256);
  v58 = *(a2 + 264);
  v60 = *(a2 + 272);
  v59 = *(a2 + 280);
  v61 = *(a2 + 288);
  v79 = v53;
  v80 = *(a2 + 296);
  if (!v52)
  {
    v69 = 0;
    v70 = v51;
    v78 = v54;
    v71 = v55;
    sub_1D5EB1D80(0, v51, v53, v54, v55);
    if (!v57)
    {
      sub_1D5EB1D80(0, v58, v60, v59, v61);
      sub_1D5EB2398(0, v70, v79, v78, v71);
      v66 = 1;
      return v66 & 1;
    }

    v62 = v57;
    sub_1D5EB1D80(v57, v58, v60, v59, v61);
    goto LABEL_41;
  }

  *&v85 = v52;
  *(&v85 + 1) = v51;
  *&v86 = v53;
  *(&v86 + 1) = v54;
  *v87 = v55;
  *&v87[8] = v56;
  v62 = v57;
  if (!v57)
  {
    v72 = v51;
    v73 = v53;
    v74 = v54;
    v75 = v55;
    sub_1D5EB1D80(v52, v51, v53, v54, v55);
    sub_1D5EB1D80(0, v58, v60, v59, v61);
    sub_1D5EB1D80(v52, v72, v73, v74, v75);
    v78 = v74;

    v70 = v72;

    v69 = v52;

    v71 = v75;
    sub_1D5CBF568(v75);

LABEL_41:
    sub_1D5EB2398(v69, v70, v79, v78, v71);
    sub_1D5EB2398(v62, v58, v60, v59, v61);
    goto LABEL_42;
  }

  *&v82 = v57;
  *(&v82 + 1) = v58;
  *&v83 = v60;
  *(&v83 + 1) = v59;
  *v84 = v61;
  *&v84[8] = v80;
  v77 = v51;
  v63 = v51;
  v64 = v54;
  v65 = v55;
  sub_1D5EB1D80(v52, v51, v53, v54, v55);
  sub_1D5EB1D80(v62, v58, v60, v59, v61);
  sub_1D5EB1D80(v52, v63, v79, v64, v65);
  v66 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v85, &v82);
  v67 = *v84;

  sub_1D5CBF568(v67);

  v68 = *v87;

  sub_1D5CBF568(v68);

  sub_1D5EB2398(v52, v77, v79, v64, v65);
  return v66 & 1;
}

uint64_t _s8NewsFeed22FormatLayeredMediaNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_27;
  }

  v64 = *(a1 + 32);
  v58 = *(a2 + 32);

  v7 = _s8NewsFeed29FormatLayeredMediaNodeContentO2eeoiySbAC_ACtFZ_0(&v64, &v58);

  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_27;
    }

    type metadata accessor for FormatLayeredMediaNodeStyle();

    v10 = _s8NewsFeed27FormatLayeredMediaNodeStyleC2eeoiySbAC_ACtFZ_0(v8, v9);

    if (!v10)
    {
      goto LABEL_27;
    }
  }

  else if (v9)
  {
    goto LABEL_27;
  }

  v11 = *(a1 + 48);
  v12 = *(a2 + 48);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v11, v12);

    if ((v13 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v12)
  {
    goto LABEL_27;
  }

  v64 = *(a1 + 56);
  v58 = *(a2 + 56);
  v14 = v58;
  sub_1D5C82CD8(v64);
  sub_1D5C82CD8(v14);
  LOBYTE(v14) = static FormatSize.== infix(_:_:)(&v64, &v58);
  sub_1D5C92A8C(v58);
  sub_1D5C92A8C(v64);
  if (v14)
  {
    v15 = *(a1 + 64);
    v16 = *(a2 + 64);
    if (v15)
    {
      if (!v16)
      {
        goto LABEL_27;
      }

      v17 = *(v15 + 16);
      v18 = *(v16 + 16);
      swift_beginAccess();
      v19 = *(v17 + 16);
      swift_beginAccess();
      v20 = *(v18 + 16);

      v21 = sub_1D5E1F5F0(v19, v20);

      if ((v21 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v16)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v22 = *(a1 + 72);
    swift_beginAccess();
    v23 = *(a2 + 72);

    v24 = sub_1D6344A40(v22, v23, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

    if ((v24 & 1) == 0)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v25 = *(a1 + 80);
    swift_beginAccess();
    if (v25 != *(a2 + 80))
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v64 = *(a1 + 88);
    v26 = v64;
    swift_beginAccess();
    v58 = *(a2 + 88);
    v27 = v58;
    sub_1D5EB1500(v26);
    sub_1D5EB1500(v27);
    LOBYTE(v26) = static FormatVisibility.== infix(_:_:)(&v64, &v58);
    sub_1D5EB15C4(v58);
    sub_1D5EB15C4(v64);
    if ((v26 & 1) == 0)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v28 = *(a1 + 96);
    swift_beginAccess();
    if (v28 != *(a2 + 96))
    {
      goto LABEL_27;
    }

    v31 = *(a1 + 112);
    v32 = *(a2 + 112);
    if (v31 <= 0xFD)
    {
      v33 = *(a2 + 104);
      v64 = *(a1 + 104);
      LOBYTE(v65) = v31;
      if (v32 > 0xFD)
      {
        goto LABEL_27;
      }

      v58 = v33;
      LOBYTE(v59) = v32;
      if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v64, &v58) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v32 <= 0xFD)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v34 = *(a1 + 120);
    swift_beginAccess();
    v35 = *(a2 + 120);

    v36 = sub_1D5BFC390(v34, v35);

    if (v36)
    {
      v38 = *(a1 + 128);
      v37 = *(a1 + 136);
      v39 = *(a1 + 144);
      v40 = *(a1 + 152);
      v41 = *(a1 + 160);
      v42 = *(a1 + 168);
      v44 = *(a2 + 128);
      v43 = *(a2 + 136);
      v46 = *(a2 + 144);
      v45 = *(a2 + 152);
      v48 = *(a2 + 160);
      v47 = *(a2 + 168);
      v57 = v41;
      v55 = v39;
      v56 = v40;
      v54 = v37;
      if (v38)
      {
        v49 = *(a1 + 128);
        v64 = v49;
        v65 = v37;
        v66 = v39;
        v67 = v40;
        v68 = v41;
        v69 = v42;
        v53 = v38;
        if (v44)
        {
          v58 = v44;
          v59 = v43;
          v60 = v46;
          v61 = v45;
          v62 = v48;
          v63 = v47;
          v50 = v38;
          sub_1D5EB1D80(v38, v37, v39, v40, v41);
          sub_1D5EB1D80(v44, v43, v46, v45, v48);
          sub_1D5EB1D80(v50, v54, v55, v56, v57);
          v29 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v64, &v58);
          v51 = v62;

          sub_1D5CBF568(v51);

          v52 = v68;

          sub_1D5CBF568(v52);

          sub_1D5EB2398(v53, v54, v55, v56, v57);
          return v29 & 1;
        }

        sub_1D5EB1D80(v38, v37, v39, v40, v41);
        sub_1D5EB1D80(0, v43, v46, v45, v48);
        sub_1D5EB1D80(v53, v54, v55, v56, v57);

        sub_1D5CBF568(v57);
      }

      else
      {
        v49 = 0;
        sub_1D5EB1D80(0, v37, v39, v40, v41);
        if (!v44)
        {
          sub_1D5EB1D80(0, v43, v46, v45, v48);
          sub_1D5EB2398(0, v54, v55, v56, v57);
          v29 = 1;
          return v29 & 1;
        }

        sub_1D5EB1D80(v44, v43, v46, v45, v48);
      }

      sub_1D5EB2398(v49, v54, v55, v56, v57);
      sub_1D5EB2398(v44, v43, v46, v45, v48);
    }
  }

LABEL_27:
  v29 = 0;
  return v29 & 1;
}

uint64_t _s8NewsFeed22FormatItemBindingsNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (v6 || (sub_1D72646CC()) && (a1[4] == a2[4] ? (v7 = a1[5] == a2[5]) : (v7 = 0), (v7 || (sub_1D72646CC()) && (swift_beginAccess(), v8 = a1[6], swift_beginAccess(), v9 = a2[6], , , v10 = sub_1D5BFC390(v8, v9), , , (v10) && (swift_beginAccess(), v11 = a1[7], swift_beginAccess(), v12 = a2[7], , , v13 = sub_1D635B244(v11, v12, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption), , , (v13) && (swift_beginAccess(), v14 = a1[8], swift_beginAccess(), v15 = a2[8], , , v16 = sub_1D633E5BC(v14, v15), , , (v16)))
  {
    swift_beginAccess();
    v17 = a1[9];
    swift_beginAccess();
    v18 = a2[9];

    v19 = sub_1D633E44C(v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t _s8NewsFeed21FormatVideoPlayerNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_42;
  }

  v130 = *(a1 + 32);
  v123 = *(a2 + 32);
  sub_1D5C82CD8(v130);
  sub_1D5C82CD8(v123);
  v7 = static FormatSize.== infix(_:_:)(&v130, &v123);
  sub_1D5C92A8C(v123);
  sub_1D5C92A8C(v130);
  if ((v7 & 1) == 0)
  {
    goto LABEL_42;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_42;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v9)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v17 & 1) == 0)
  {
    goto LABEL_42;
  }

  v18 = *(a1 + 56);
  v19 = *(a2 + 56);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_42;
    }

    type metadata accessor for FormatVideoPlayerNodeStyle();

    v20 = sub_1D665108C(v18, v19, sub_1D62B7C6C, _s8NewsFeed26FormatVideoPlayerNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0, sub_1D62B7CC8);

    if ((v20 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v19)
  {
    goto LABEL_42;
  }

  v21 = *(a1 + 64);
  v22 = *(a2 + 64);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_42;
    }

    v23 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v21, v22);

    if ((v23 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v22)
  {
    goto LABEL_42;
  }

  v130 = *(a1 + 72);
  v123 = *(a2 + 72);

  v24 = static FormatVideoPlayerContent.== infix(_:_:)(&v130, &v123);

  if ((v24 & 1) == 0)
  {
    goto LABEL_42;
  }

  v130 = *(a1 + 80);
  v123 = *(a2 + 80);

  v25 = static FormatAsyncImageContent.== infix(_:_:)(&v130, &v123);

  if ((v25 & 1) == 0)
  {
    goto LABEL_42;
  }

  v26 = *(a1 + 88);
  v27 = *(a2 + 88);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_42;
    }

    type metadata accessor for FormatImageNodeStyle();

    v28 = _s8NewsFeed20FormatImageNodeStyleC2eeoiySbAC_ACtFZ_0(v26, v27);

    if ((v28 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v27)
  {
    goto LABEL_42;
  }

  v30 = *(a1 + 96);
  v29 = *(a1 + 104);
  v31 = *(a1 + 112);
  v32 = *(a1 + 120);
  v34 = *(a1 + 128);
  v33 = *(a1 + 136);
  v35 = *(a1 + 144);
  v37 = *(a2 + 96);
  v36 = *(a2 + 104);
  v39 = *(a2 + 112);
  v38 = *(a2 + 120);
  v112 = *(a2 + 128);
  v116 = v36;
  v108 = *(a2 + 136);
  v110 = *(a2 + 144);
  v120 = v38;
  if (v31 == 1)
  {
    v40 = *(a2 + 112);
    sub_1D62B7B54(v30, v29, 1, v32, v34, v33, v35);
    if (v40 == 1)
    {
      sub_1D62B7B54(v37, v116, 1, v120, v112, v108, v110);
      sub_1D62B7BE0(v30, v29, 1, v32, v34, v33, v35);
      goto LABEL_38;
    }

    v105 = v37;
    v107 = v40;
    v50 = v37;
    v51 = v40;
    v47 = v112;
    v48 = v108;
    v49 = v110;
    sub_1D62B7B54(v50, v116, v51, v120, v112, v108, v110);
    v42 = 1;
LABEL_36:
    sub_1D62B7BE0(v30, v29, v42, v32, v34, v33, v35);
    sub_1D62B7BE0(v105, v116, v107, v120, v47, v48, v49);
    goto LABEL_42;
  }

  v130 = *(a1 + 96);
  v131 = v29;
  v132 = v31;
  v133 = v32;
  v134 = v34;
  v135 = v33;
  v136 = v35;
  v105 = v37;
  v107 = v39;
  if (v39 == 1)
  {
    v41 = v36;
    v42 = v31;
    v43 = v38;
    sub_1D62B7B54(v30, v29, v31, v32, v34, v33, v35);
    v44 = v37;
    v45 = v41;
    v46 = v43;
    v47 = v112;
    v48 = v108;
    v49 = v110;
    sub_1D62B7B54(v44, v45, 1, v46, v112, v108, v110);
    sub_1D62B7B54(v30, v29, v42, v32, v34, v33, v35);

    sub_1D5CBF568(v29);

    sub_1D5D2F2C8(v34, v33, v35 & 1);
    goto LABEL_36;
  }

  v123 = v37;
  v124 = v36;
  v125 = v39;
  v126 = v38;
  v127 = v112;
  v128 = v108;
  v129 = v110 & 1;
  v103 = v30;
  v104 = v31;
  v101 = v29;
  v102 = v34;
  v52 = v29;
  v53 = v31;
  sub_1D62B7B54(v30, v52, v31, v32, v34, v33, v35);
  sub_1D62B7B54(v37, v116, v107, v120, v112, v108, v110);
  v54 = v34;
  v55 = v33;
  v56 = v33;
  v57 = v35;
  sub_1D62B7B54(v30, v101, v53, v32, v54, v55, v35);
  v121 = _s8NewsFeed31FormatVideoPlayerOverlayContentV2eeoiySbAC_ACtFZ_0(&v130, &v123);
  v58 = v124;
  v59 = v127;
  v117 = v128;
  v113 = v129;

  sub_1D5CBF568(v58);

  sub_1D5D2F2C8(v59, v117, v113);
  v60 = v131;
  v61 = v134;
  v118 = v135;
  v114 = v136;

  sub_1D5CBF568(v60);

  sub_1D5D2F2C8(v61, v118, v114);
  sub_1D62B7BE0(v103, v101, v104, v32, v102, v56, v57);
  if ((v121 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v62 = *(a1 + 160);
  v63 = *(a1 + 168);
  v64 = *(a1 + 176);
  v130 = *(a1 + 152);
  v131 = v62;
  v132 = v63;
  LOBYTE(v133) = v64;
  v66 = *(a2 + 160);
  v67 = *(a2 + 168);
  v68 = *(a2 + 176);
  v123 = *(a2 + 152);
  v65 = v123;
  v124 = v66;
  v125 = v67;
  LOBYTE(v126) = v68;
  sub_1D60AFDB4(v130, v62, v63, v64);
  sub_1D60AFDB4(v65, v66, v67, v68);
  LOBYTE(v65) = _s8NewsFeed21FormatVideoPlayerLiveO2eeoiySbAC_ACtFZ_0(&v130, &v123);
  sub_1D60AFE14(v123, v124, v125, v126);
  sub_1D60AFE14(v130, v131, v132, v133);
  if ((v65 & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v69 = *(a1 + 184);
  swift_beginAccess();
  if (v69 != *(a2 + 184))
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v130 = *(a1 + 192);
  v70 = v130;
  swift_beginAccess();
  v123 = *(a2 + 192);
  v71 = v123;
  sub_1D5EB1500(v70);
  sub_1D5EB1500(v71);
  LOBYTE(v70) = static FormatVisibility.== infix(_:_:)(&v130, &v123);
  sub_1D5EB15C4(v123);
  sub_1D5EB15C4(v130);
  if ((v70 & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v72 = *(a1 + 200);
  swift_beginAccess();
  if (v72 != *(a2 + 200))
  {
    goto LABEL_42;
  }

  v75 = *(a1 + 216);
  v76 = *(a2 + 216);
  if (v75 <= 0xFD)
  {
    v77 = *(a2 + 208);
    v130 = *(a1 + 208);
    LOBYTE(v131) = v75;
    if (v76 > 0xFD)
    {
      goto LABEL_42;
    }

    v123 = v77;
    LOBYTE(v124) = v76;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v130, &v123) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v76 <= 0xFD)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v78 = *(a1 + 224);
  swift_beginAccess();
  v79 = *(a2 + 224);

  v80 = sub_1D5BFC390(v78, v79);

  if ((v80 & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v81 = *(a1 + 232);
  v82 = *(a1 + 240);
  swift_beginAccess();
  v83 = *(a2 + 240);
  if (v82)
  {
    if (!v83 || (v81 != *(a2 + 232) || v82 != v83) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v83)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v85 = *(a1 + 248);
  v84 = *(a1 + 256);
  v86 = *(a1 + 264);
  swift_beginAccess();
  v88 = *(a2 + 248);
  v87 = *(a2 + 256);
  v89 = *(a2 + 264);
  if (v86 != 255)
  {
    v130 = v85;
    v131 = v84;
    LOBYTE(v132) = v86;
    if (v89 != 255)
    {
      v123 = v88;
      v124 = v87;
      LOBYTE(v125) = v89 & 1;
      sub_1D6189668(v85, v84, v86);
      sub_1D6189668(v88, v87, v89);
      sub_1D6189668(v85, v84, v86);
      v90 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v130, &v123);
      sub_1D5D2F2C8(v123, v124, v125);
      sub_1D5D2F2C8(v130, v131, v132);
      sub_1D60107F0(v85, v84, v86);
      if ((v90 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_66;
    }

    sub_1D6189668(v85, v84, v86);
    sub_1D6189668(v88, v87, 255);
    sub_1D6189668(v85, v84, v86);
    sub_1D5D2F2C8(v85, v84, v86 & 1);
LABEL_64:
    sub_1D60107F0(v85, v84, v86);
    sub_1D60107F0(v88, v87, v89);
    goto LABEL_42;
  }

  sub_1D6189668(v85, v84, 255);
  if (v89 != 255)
  {
    sub_1D6189668(v88, v87, v89);
    goto LABEL_64;
  }

  sub_1D6189668(v88, v87, 255);
  sub_1D60107F0(v85, v84, 255);
LABEL_66:
  v91 = *(a1 + 272);
  v92 = *(a1 + 280);
  v93 = *(a1 + 288);
  v115 = *(a1 + 296);
  v119 = *(a1 + 304);
  v122 = *(a1 + 312);
  v94 = *(a2 + 272);
  v95 = *(a2 + 280);
  v96 = *(a2 + 288);
  v97 = *(a2 + 296);
  v109 = *(a2 + 304);
  v111 = *(a2 + 312);
  v98 = v91;
  if (v91)
  {
    v130 = v91;
    v131 = v92;
    v132 = v93;
    v133 = v115;
    v134 = v119;
    v135 = v122;
    v106 = v92;
    if (v94)
    {
      v123 = v94;
      v124 = v95;
      v125 = v96;
      v126 = v97;
      v127 = v109;
      v128 = v111;
      sub_1D5EB1D80(v91, v92, v93, v115, v119);
      sub_1D5EB1D80(v94, v95, v96, v97, v109);
      sub_1D5EB1D80(v98, v92, v93, v115, v119);
      v73 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v130, &v123);
      v99 = v127;

      sub_1D5CBF568(v99);

      v100 = v134;

      sub_1D5CBF568(v100);

      sub_1D5EB2398(v98, v106, v93, v115, v119);
      return v73 & 1;
    }

    sub_1D5EB1D80(v91, v92, v93, v115, v119);
    sub_1D5EB1D80(0, v95, v96, v97, v109);
    sub_1D5EB1D80(v98, v92, v93, v115, v119);

    sub_1D5CBF568(v119);
  }

  else
  {
    sub_1D5EB1D80(0, v92, v93, v115, v119);
    if (!v94)
    {
      sub_1D5EB1D80(0, v95, v96, v97, v109);
      sub_1D5EB2398(0, v92, v93, v115, v119);
      v73 = 1;
      return v73 & 1;
    }

    sub_1D5EB1D80(v94, v95, v96, v97, v109);
  }

  sub_1D5EB2398(v98, v92, v93, v115, v119);
  sub_1D5EB2398(v94, v95, v96, v97, v109);
LABEL_42:
  v73 = 0;
  return v73 & 1;
}

uint64_t _s8NewsFeed21FormatPuzzleEmbedNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_64;
  }

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7)
  {
    if (!v8 || (*(a1 + 32) != *(a2 + 32) || v7 != v8) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v8)
  {
    goto LABEL_64;
  }

  swift_beginAccess();
  *&v80 = *(a1 + 48);
  swift_beginAccess();
  *&v98[0] = *(a2 + 48);
  sub_1D5C82CD8(v80);
  sub_1D5C82CD8(*&v98[0]);
  v9 = static FormatSize.== infix(_:_:)(&v80, v98);
  sub_1D5C92A8C(*&v98[0]);
  sub_1D5C92A8C(v80);
  if ((v9 & 1) == 0)
  {
    goto LABEL_64;
  }

  v10 = *(a1 + 56);
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_64;
    }

    v12 = *(v10 + 16);
    v13 = *(v11 + 16);
    swift_beginAccess();
    v14 = *(v12 + 16);
    swift_beginAccess();
    v15 = *(v13 + 16);

    v16 = sub_1D5E1F5F0(v14, v15);

    if ((v16 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v11)
  {
    goto LABEL_64;
  }

  swift_beginAccess();
  v17 = *(a1 + 64);
  swift_beginAccess();
  v18 = *(a2 + 64);

  v19 = sub_1D6344A40(v17, v18, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v19 & 1) == 0)
  {
    goto LABEL_64;
  }

  *&v80 = *(a1 + 72);
  *&v98[0] = *(a2 + 72);

  v20 = _s8NewsFeed28FormatPuzzleEmbedNodeContentO2eeoiySbAC_ACtFZ_0(&v80, v98);

  if (!v20)
  {
    goto LABEL_64;
  }

  v21 = *(a1 + 80);
  v22 = *(a2 + 80);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_64;
    }

    swift_beginAccess();
    v23 = *(v21 + 16);
    swift_beginAccess();
    v24 = *(v22 + 16);

    v25 = sub_1D5E1FD58(v23, v24);

    if ((v25 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v22)
  {
    goto LABEL_64;
  }

  swift_beginAccess();
  v26 = *(a1 + 88);
  swift_beginAccess();
  if (v26 != *(a2 + 88))
  {
    goto LABEL_64;
  }

  swift_beginAccess();
  v27 = *(a1 + 112);
  v94 = *(a1 + 96);
  v95 = v27;
  v28 = *(a1 + 144);
  v96 = *(a1 + 128);
  v97 = v28;
  swift_beginAccess();
  v29 = *(a2 + 112);
  v98[0] = *(a2 + 96);
  v98[1] = v29;
  v30 = *(a2 + 112);
  v31 = *(a2 + 144);
  v99 = *(a2 + 128);
  v100 = v31;
  v91 = v95;
  v92 = v96;
  v93 = v97;
  v32 = v94;
  v33 = v98[0];
  v88 = v30;
  v89 = v99;
  v90 = *(a2 + 144);
  if (!*(&v94 + 1))
  {
    if (!*(&v98[0] + 1))
    {
      v80 = v94;
      v81 = v95;
      v82 = v96;
      v83 = v97;
      v39 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(&v94, &v76, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v98, &v76, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v39, sub_1D5C34D84);
      sub_1D66615F8(&v80, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v39, sub_1D5C34D84);
      goto LABEL_36;
    }

    v37 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v94, &v80, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v98, &v80, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v37, sub_1D5C34D84);
LABEL_34:
    v80 = v32;
    v81 = v91;
    v82 = v92;
    v83 = v93;
    v84 = v33;
    v85 = v88;
    v86 = v89;
    v87 = v90;
    sub_1D5D35558(&v80, &unk_1EC889B00, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, sub_1D66F49B8);
    goto LABEL_64;
  }

  v80 = v94;
  v81 = v95;
  v82 = v96;
  v83 = v97;
  v76 = v94;
  v77 = v95;
  v78 = v96;
  v79 = v97;
  if (!*(&v98[0] + 1))
  {
    v72 = v80;
    v73 = v81;
    v74 = v82;
    v75 = v83;
    v38 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v94, v71, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v98, v71, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v38, sub_1D5C34D84);
    sub_1D5D355B8(&v80, v71, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v38, sub_1D5C34D84);
    sub_1D66B0388(&v72);
    goto LABEL_34;
  }

  v34 = *(a2 + 128);
  v73 = *(a2 + 112);
  v74 = v34;
  v75 = *(a2 + 144);
  v72 = v98[0];
  v35 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(&v94, v71, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v98, v71, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v35, sub_1D5C34D84);
  sub_1D5D355B8(&v80, v71, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v35, sub_1D5C34D84);
  v36 = _s8NewsFeed26FormatPuzzleEmbedNodeStyleV2eeoiySbAC_ACtFZ_0(&v76, &v72);
  v70[0] = v72;
  v70[1] = v73;
  v70[2] = v74;
  v70[3] = v75;
  sub_1D66B0388(v70);
  v71[0] = v76;
  v71[1] = v77;
  v71[2] = v78;
  v71[3] = v79;
  sub_1D66B0388(v71);
  v72 = v32;
  v73 = v91;
  v74 = v92;
  v75 = v93;
  sub_1D66615F8(&v72, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v35, sub_1D5C34D84);
  if (!v36)
  {
    goto LABEL_64;
  }

LABEL_36:
  swift_beginAccess();
  *&v80 = *(a1 + 160);
  v40 = v80;
  swift_beginAccess();
  *&v76 = *(a2 + 160);
  v41 = v76;
  sub_1D5EB1500(v40);
  sub_1D5EB1500(v41);
  LOBYTE(v40) = static FormatVisibility.== infix(_:_:)(&v80, &v76);
  sub_1D5EB15C4(v76);
  sub_1D5EB15C4(v80);
  if ((v40 & 1) == 0)
  {
    goto LABEL_64;
  }

  swift_beginAccess();
  v42 = *(a1 + 168);
  swift_beginAccess();
  v43 = *(a2 + 168);

  v44 = sub_1D5BFC390(v42, v43);

  if ((v44 & 1) == 0)
  {
    goto LABEL_64;
  }

  v45 = *(a1 + 184);
  v46 = *(a2 + 184);
  if (v45 <= 0xFD)
  {
    v47 = *(a2 + 176);
    *&v80 = *(a1 + 176);
    BYTE8(v80) = v45;
    if (v46 > 0xFD)
    {
      goto LABEL_64;
    }

    *&v76 = v47;
    BYTE8(v76) = v46;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v80, &v76) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v46 <= 0xFD)
  {
    goto LABEL_64;
  }

  swift_beginAccess();
  v48 = *(a1 + 192);
  v49 = *(a1 + 200);
  swift_beginAccess();
  v50 = *(a2 + 200);
  if (v49)
  {
    if (!v50 || (v48 != *(a2 + 192) || v49 != v50) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v50)
  {
    goto LABEL_64;
  }

  v51 = *(a1 + 216);
  v52 = *(a2 + 216);
  if (!v51)
  {
    if (!v52)
    {
      goto LABEL_57;
    }

LABEL_64:
    v62 = 0;
    return v62 & 1;
  }

  if (!v52 || (*(a1 + 208) != *(a2 + 208) || v51 != v52) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_57:
  v53 = *(a1 + 224);
  v54 = *(a1 + 232);
  v55 = *(a1 + 240);
  v68 = *(a1 + 248);
  v69 = *(a1 + 256);
  v67 = *(a1 + 264);
  v56 = *(a2 + 224);
  v57 = *(a2 + 232);
  v58 = *(a2 + 240);
  v59 = *(a2 + 248);
  v66 = *(a2 + 256);
  v60 = v53;
  if (!v53)
  {
    sub_1D5EB1D80(0, v54, v55, v68, v69);
    if (!v56)
    {
      sub_1D5EB1D80(0, v57, v58, v59, v66);
      sub_1D5EB2398(0, v54, v55, v68, v69);
      v62 = 1;
      return v62 & 1;
    }

    sub_1D5EB1D80(v56, v57, v58, v59, v66);
    goto LABEL_63;
  }

  *&v80 = v53;
  *(&v80 + 1) = v54;
  *&v81 = v55;
  *(&v81 + 1) = v68;
  *&v82 = v69;
  *(&v82 + 1) = v67;
  if (!v56)
  {
    sub_1D5EB1D80(v53, v54, v55, v68, v69);
    sub_1D5EB1D80(0, v57, v58, v59, v66);
    sub_1D5EB1D80(v60, v54, v55, v68, v69);

    sub_1D5CBF568(v69);

LABEL_63:
    sub_1D5EB2398(v60, v54, v55, v68, v69);
    sub_1D5EB2398(v56, v57, v58, v59, v66);
    goto LABEL_64;
  }

  *&v76 = v56;
  *(&v76 + 1) = v57;
  *&v77 = v58;
  *(&v77 + 1) = v59;
  v78 = v66;
  sub_1D5EB1D80(v53, v54, v55, v68, v69);
  sub_1D5EB1D80(v56, v57, v58, v59, v66);
  v61 = v55;
  sub_1D5EB1D80(v60, v54, v55, v68, v69);
  v62 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v80, &v76);
  v63 = v78;

  sub_1D5CBF568(v63);

  v64 = v82;

  sub_1D5CBF568(v64);

  sub_1D5EB2398(v60, v54, v61, v68, v69);
  return v62 & 1;
}

uint64_t sub_1D6646378(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_1D72646CC()) && (a1[4] == a2[4] ? (v5 = a1[5] == a2[5]) : (v5 = 0), (v5 || (sub_1D72646CC()) && (swift_beginAccess(), v6 = a1[6], swift_beginAccess(), v7 = a2[6], , , v8 = sub_1D5BFC390(v6, v7), , , (v8) && (swift_beginAccess(), v9 = a1[7], swift_beginAccess(), v10 = a2[7], , , v11 = sub_1D6339F3C(v9, v10), , , (v11)))
  {
    swift_beginAccess();
    v13 = a1[8];
    v12 = a1[9];
    swift_beginAccess();
    if (v13 == a2[8] && v12 == a2[9])
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1D72646CC();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D6646524(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_1D72646CC()) && ((swift_beginAccess(), v5 = a1[4], v6 = a1[5], swift_beginAccess(), v5 == a2[4]) ? (v7 = v6 == a2[5]) : (v7 = 0), (v7 || (sub_1D72646CC()) && (swift_beginAccess(), v8 = a1[6], swift_beginAccess(), v9 = a2[6], , , v10 = sub_1D5BFC390(v8, v9), , , (v10)))
  {
    swift_beginAccess();
    v11 = a1[7];
    swift_beginAccess();
    v12 = a2[7];

    v13 = sub_1D6339F3C(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t _s8NewsFeed28FormatScoreDataVisualizationC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_1D72646CC()) && (a1[4] == a2[4] ? (v5 = a1[5] == a2[5]) : (v5 = 0), (v5 || (sub_1D72646CC()) && (swift_beginAccess(), v6 = a1[6], swift_beginAccess(), v7 = a2[6], , , v8 = sub_1D5BFC390(v6, v7), , , (v8) && (swift_beginAccess(), v9 = a1[7], swift_beginAccess(), v10 = a2[7], , , v11 = sub_1D6339F3C(v9, v10), , , (v11) && ((swift_beginAccess(), v12 = a1[8], v13 = a1[9], swift_beginAccess(), v12 == a2[8]) && v13 == a2[9] || (sub_1D72646CC())))
  {
    swift_beginAccess();
    v14 = a1[10];
    swift_beginAccess();
    v15 = a2[10];

    v16 = sub_1D5E2A8C8(v14, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _s8NewsFeed9FormatTagC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_1D72646CC()) && (swift_beginAccess(), v5 = a1[4], swift_beginAccess(), v6 = a2[4], , , v7 = sub_1D5BFC390(v5, v6), , , (v7))
  {
    swift_beginAccess();
    v8 = a1[5];
    swift_beginAccess();
    v9 = a2[5];

    v10 = sub_1D6339F3C(v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t _s8NewsFeed20FormatSwitchNodeCaseC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v10[0] = *(a1 + 16);
  v9[0] = *(a2 + 16);

  v4 = static FormatExpression.== infix(_:_:)(v10, v9);

  if (v4)
  {
    swift_beginAccess();
    v5 = *(a1 + 24);
    swift_beginAccess();
    v6 = *(a2 + 24);

    v7 = sub_1D633E44C(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t _s8NewsFeed20FormatIssueCoverNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_27;
  }

  v66 = *(a1 + 32);
  v60 = *(a2 + 32);
  sub_1D5C82CD8(v66);
  sub_1D5C82CD8(v60);
  v7 = static FormatSize.== infix(_:_:)(&v66, &v60);
  sub_1D5C92A8C(v60);
  sub_1D5C92A8C(v66);
  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_27;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v9)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if (v17)
  {
    v18 = *(a1 + 56);
    v19 = *(a2 + 56);
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_27;
      }

      v20 = _s8NewsFeed25FormatIssueCoverNodeStyleC2eeoiySbAC_ACtFZ_0(v18, v19);

      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v19)
    {
      goto LABEL_27;
    }

    v21 = *(a1 + 64);
    v22 = *(a2 + 64);
    if (v21)
    {
      if (!v22)
      {
        goto LABEL_27;
      }

      v23 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v21, v22);

      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v22)
    {
      goto LABEL_27;
    }

    v66 = *(a1 + 72);
    v60 = *(a2 + 72);

    v24 = _s8NewsFeed23FormatIssueCoverContentO2eeoiySbAC_ACtFZ_0(&v66, &v60);

    if ((v24 & 1) == 0)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v25 = *(a1 + 80);
    swift_beginAccess();
    if (v25 != *(a2 + 80))
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v66 = *(a1 + 88);
    v26 = v66;
    swift_beginAccess();
    v60 = *(a2 + 88);
    v27 = v60;
    sub_1D5EB1500(v26);
    sub_1D5EB1500(v27);
    LOBYTE(v26) = static FormatVisibility.== infix(_:_:)(&v66, &v60);
    sub_1D5EB15C4(v60);
    sub_1D5EB15C4(v66);
    if ((v26 & 1) == 0)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v28 = *(a1 + 96);
    swift_beginAccess();
    if (v28 != *(a2 + 96))
    {
      goto LABEL_27;
    }

    v31 = *(a1 + 112);
    v32 = *(a2 + 112);
    if (v31 <= 0xFD)
    {
      v33 = *(a2 + 104);
      v66 = *(a1 + 104);
      LOBYTE(v67) = v31;
      if (v32 > 0xFD)
      {
        goto LABEL_27;
      }

      v60 = v33;
      LOBYTE(v61) = v32;
      if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v66, &v60) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v32 <= 0xFD)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v34 = *(a1 + 120);
    swift_beginAccess();
    v35 = *(a2 + 120);

    v36 = sub_1D5BFC390(v34, v35);

    if (v36)
    {
      v37 = 0x6874646977;
      if (*(a1 + 128))
      {
        if (*(a1 + 128) == 1)
        {
          v38 = 0xE600000000000000;
          v39 = 0x746867696568;
        }

        else
        {
          v38 = 0xE400000000000000;
          v39 = 1702521203;
        }
      }

      else
      {
        v38 = 0xE500000000000000;
        v39 = 0x6874646977;
      }

      if (*(a2 + 128))
      {
        if (*(a2 + 128) == 1)
        {
          v40 = 0xE600000000000000;
          v37 = 0x746867696568;
        }

        else
        {
          v40 = 0xE400000000000000;
          v37 = 1702521203;
        }
      }

      else
      {
        v40 = 0xE500000000000000;
      }

      if (v39 == v37 && v38 == v40)
      {
      }

      else
      {
        v41 = sub_1D72646CC();

        if ((v41 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v43 = *(a1 + 136);
      v42 = *(a1 + 144);
      v44 = *(a1 + 152);
      v45 = *(a1 + 160);
      v46 = *(a1 + 168);
      v47 = *(a1 + 176);
      v49 = *(a2 + 136);
      v48 = *(a2 + 144);
      v51 = *(a2 + 152);
      v50 = *(a2 + 160);
      v53 = *(a2 + 168);
      v52 = *(a2 + 176);
      v58 = v45;
      v59 = v46;
      v56 = v42;
      v57 = v44;
      if (v43)
      {
        v66 = *(a1 + 136);
        v67 = v42;
        v68 = v44;
        v69 = v45;
        v70 = v46;
        v71 = v47;
        if (v49)
        {
          v60 = v49;
          v61 = v48;
          v62 = v51;
          v63 = v50;
          v64 = v53;
          v65 = v52;
          sub_1D5EB1D80(v43, v42, v44, v45, v46);
          sub_1D5EB1D80(v49, v48, v51, v50, v53);
          sub_1D5EB1D80(v43, v56, v57, v58, v59);
          v29 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v66, &v60);
          v54 = v64;

          sub_1D5CBF568(v54);

          v55 = v70;

          sub_1D5CBF568(v55);

          sub_1D5EB2398(v43, v56, v57, v58, v59);
          return v29 & 1;
        }

        sub_1D5EB1D80(v43, v42, v44, v45, v46);
        sub_1D5EB1D80(0, v48, v51, v50, v53);
        sub_1D5EB1D80(v43, v56, v57, v58, v59);

        sub_1D5CBF568(v59);
      }

      else
      {
        sub_1D5EB1D80(0, v42, v44, v45, v46);
        if (!v49)
        {
          sub_1D5EB1D80(0, v48, v51, v50, v53);
          sub_1D5EB2398(0, v56, v57, v58, v59);
          v29 = 1;
          return v29 & 1;
        }

        sub_1D5EB1D80(v49, v48, v51, v50, v53);
      }

      sub_1D5EB2398(v43, v56, v57, v58, v59);
      sub_1D5EB2398(v49, v48, v51, v50, v53);
    }
  }

LABEL_27:
  v29 = 0;
  return v29 & 1;
}

uint64_t _s8NewsFeed20FormatBreakpointNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (v6 || (sub_1D72646CC()) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (sub_1D72646CC()))
  {
    v7 = *(a1 + 112);
    v8 = *(a1 + 144);
    v40 = *(a1 + 128);
    v41 = v8;
    v9 = *(a1 + 80);
    v37[0] = *(a1 + 64);
    v37[1] = v9;
    v10 = *(a1 + 112);
    v12 = *(a1 + 64);
    v11 = *(a1 + 80);
    v38 = *(a1 + 96);
    v39 = v10;
    v13 = *(a1 + 144);
    v34 = v40;
    v35 = v13;
    v30 = v12;
    v31 = v11;
    v32 = v38;
    v33 = v7;
    v14 = *(a2 + 80);
    v43[0] = *(a2 + 64);
    v43[1] = v14;
    v15 = *(a2 + 112);
    v16 = *(a2 + 144);
    v46 = *(a2 + 128);
    v47 = v16;
    v17 = *(a2 + 112);
    v18 = *(a2 + 64);
    v19 = *(a2 + 80);
    v44 = *(a2 + 96);
    v45 = v17;
    v20 = *(a2 + 144);
    v27 = v46;
    v28 = v20;
    v42 = *(a1 + 160);
    v36 = *(a1 + 160);
    v48 = *(a2 + 160);
    v29 = *(a2 + 160);
    v23 = v18;
    v24 = v19;
    v25 = v44;
    v26 = v15;
    sub_1D5C5C4CC(v37, v51);
    sub_1D5C5C4CC(v43, v51);
    v21 = static FormatSourceMapNode.== infix(_:_:)(&v30, &v23);
    v49[4] = v27;
    v49[5] = v28;
    v50 = v29;
    v49[0] = v23;
    v49[1] = v24;
    v49[2] = v25;
    v49[3] = v26;
    sub_1D5C5C540(v49);
    v51[4] = v34;
    v51[5] = v35;
    v52 = v36;
    v51[0] = v30;
    v51[1] = v31;
    v51[2] = v32;
    v51[3] = v33;
    sub_1D5C5C540(v51);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t _s8NewsFeed19FormatStateViewNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v56[0] = *(a1 + 32);
  swift_beginAccess();
  v53[0] = *(a2 + 32);
  sub_1D5C82CD8(v56[0]);
  sub_1D5C82CD8(v53[0]);
  v7 = static FormatSize.== infix(_:_:)(v56, v53);
  sub_1D5C92A8C(v53[0]);
  sub_1D5C92A8C(v56[0]);
  if ((v7 & 1) == 0)
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v9)
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v17 & 1) == 0 || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((sub_1D634B03C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v18 = *(a1 + 80);
  swift_beginAccess();
  if (v18 != *(a2 + 80))
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v56[0] = *(a1 + 88);
  v19 = v56[0];
  swift_beginAccess();
  v53[0] = *(a2 + 88);
  v20 = v53[0];
  sub_1D5EB1500(v19);
  sub_1D5EB1500(v20);
  LOBYTE(v19) = static FormatVisibility.== infix(_:_:)(v56, v53);
  sub_1D5EB15C4(v53[0]);
  sub_1D5EB15C4(v56[0]);
  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v21 = *(a1 + 96);
  swift_beginAccess();
  if (v21 != *(a2 + 96))
  {
    goto LABEL_20;
  }

  v24 = *(a1 + 104);
  v25 = *(a2 + 104);
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_20;
    }

    v26 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v24, v25);

    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v25)
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v27 = *(a1 + 112);
  swift_beginAccess();
  v28 = *(a2 + 112);

  v29 = sub_1D5BFC390(v27, v28);

  if (v29)
  {
    v31 = *(a1 + 120);
    v30 = *(a1 + 128);
    v33 = *(a1 + 136);
    v32 = *(a1 + 144);
    v34 = *(a1 + 152);
    v35 = *(a1 + 160);
    v37 = *(a2 + 120);
    v36 = *(a2 + 128);
    v39 = *(a2 + 136);
    v38 = *(a2 + 144);
    v41 = *(a2 + 152);
    v40 = *(a2 + 160);
    if (v31)
    {
      v56[0] = v31;
      v56[1] = v30;
      v56[2] = v33;
      v56[3] = v32;
      v57 = v34;
      v58 = v35;
      if (v37)
      {
        v53[0] = v37;
        v53[1] = v36;
        v53[2] = v39;
        v53[3] = v38;
        v54 = v41;
        v55 = v40;
        v50 = v30;
        v51 = v38;
        v42 = v34;
        sub_1D5EB1D80(v31, v30, v33, v32, v34);
        sub_1D5EB1D80(v37, v36, v39, v51, v41);
        v43 = v30;
        v44 = v33;
        v45 = v33;
        v46 = v42;
        sub_1D5EB1D80(v31, v43, v44, v32, v42);
        v22 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v56, v53);
        v47 = v54;

        sub_1D5CBF568(v47);

        v48 = v57;

        sub_1D5CBF568(v48);

        sub_1D5EB2398(v31, v50, v45, v32, v46);
        return v22 & 1;
      }

      v49 = v34;
      sub_1D5EB1D80(v31, v30, v33, v32, v34);
      sub_1D5EB1D80(0, v36, v39, v38, v41);
      sub_1D5EB1D80(v31, v30, v33, v32, v49);

      v52 = v49;
      sub_1D5CBF568(v49);
    }

    else
    {
      v52 = v34;
      sub_1D5EB1D80(0, v30, v33, v32, v34);
      if (!v37)
      {
        sub_1D5EB1D80(0, v36, v39, v38, v41);
        sub_1D5EB2398(0, v30, v33, v32, v52);
        v22 = 1;
        return v22 & 1;
      }

      sub_1D5EB1D80(v37, v36, v39, v38, v41);
    }

    sub_1D5EB2398(v31, v30, v33, v32, v52);
    sub_1D5EB2398(v37, v36, v39, v38, v41);
  }

LABEL_20:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s8NewsFeed19FormatAuxiliaryNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (v6 || (sub_1D72646CC()) && (swift_beginAccess(), v7 = *(a1 + 32), swift_beginAccess(), v8 = *(a2 + 32), , , v9 = sub_1D633E44C(v7, v8), , , (v9) && (swift_beginAccess(), v10 = *(a1 + 40), swift_beginAccess(), v11 = *(a2 + 40), , , v12 = sub_1D5BFC390(v10, v11), , , (v12) && (swift_beginAccess(), v13 = *(a1 + 48), swift_beginAccess(), v14 = *(a2 + 48), , , v15 = sub_1D635B244(v13, v14, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption), , , (v15))
  {
    swift_beginAccess();
    v16 = *(a1 + 56);
    swift_beginAccess();
    v17 = v16 ^ *(a2 + 56) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t _s8NewsFeed19FormatAdMetricsNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_28;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_28;
  }

  v49[0] = *(a1 + 48);
  v46[0] = *(a2 + 48);
  sub_1D5C82CD8(v49[0]);
  sub_1D5C82CD8(v46[0]);
  v8 = static FormatSize.== infix(_:_:)(v49, v46);
  sub_1D5C92A8C(v46[0]);
  sub_1D5C92A8C(v49[0]);
  if ((v8 & 1) == 0)
  {
    goto LABEL_28;
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = *(v9 + 16);
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);
    swift_beginAccess();
    v14 = *(v12 + 16);

    v15 = sub_1D5E1F5F0(v13, v14);

    if ((v15 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v10)
  {
LABEL_28:
    v38 = 0;
    return v38 & 1;
  }

  swift_beginAccess();
  v16 = *(a1 + 64);
  swift_beginAccess();
  v17 = *(a2 + 64);

  v18 = sub_1D6344A40(v16, v17, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v18 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v19 = *(a1 + 72);
  swift_beginAccess();
  if (v19 != *(a2 + 72))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v49[0] = *(a1 + 80);
  v20 = v49[0];
  swift_beginAccess();
  v46[0] = *(a2 + 80);
  v21 = v46[0];
  sub_1D5EB1500(v20);
  sub_1D5EB1500(v21);
  LOBYTE(v20) = static FormatVisibility.== infix(_:_:)(v49, v46);
  sub_1D5EB15C4(v46[0]);
  sub_1D5EB15C4(v49[0]);
  if ((v20 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v22 = *(a1 + 88);
  swift_beginAccess();
  if (v22 != *(a2 + 88))
  {
    goto LABEL_28;
  }

  v24 = *(a1 + 96);
  v23 = *(a1 + 104);
  v25 = *(a1 + 112);
  v26 = *(a1 + 120);
  v28 = *(a1 + 128);
  v27 = *(a1 + 136);
  v30 = *(a2 + 96);
  v29 = *(a2 + 104);
  v31 = *(a2 + 112);
  v45 = *(a2 + 120);
  v32 = *(a2 + 128);
  v33 = *(a2 + 136);
  if (!v24)
  {
    v44 = v32;
    sub_1D5EB1D80(0, v23, v25, v26, v28);
    if (!v30)
    {
      sub_1D5EB1D80(0, v29, v31, v45, v44);
      sub_1D5EB2398(0, v23, v25, v26, v28);
      v38 = 1;
      return v38 & 1;
    }

    sub_1D5EB1D80(v30, v29, v31, v45, v44);
    goto LABEL_27;
  }

  v49[0] = v24;
  v49[1] = v23;
  v49[2] = v25;
  v49[3] = v26;
  v50 = v28;
  v51 = v27;
  if (!v30)
  {
    v41 = v32;
    sub_1D5EB1D80(v24, v23, v25, v26, v28);
    v44 = v41;
    sub_1D5EB1D80(0, v29, v31, v45, v41);
    sub_1D5EB1D80(v24, v23, v25, v26, v28);

    sub_1D5CBF568(v28);

LABEL_27:
    sub_1D5EB2398(v24, v23, v25, v26, v28);
    sub_1D5EB2398(v30, v29, v31, v45, v44);
    goto LABEL_28;
  }

  v46[0] = v30;
  v46[1] = v29;
  v46[2] = v31;
  v46[3] = v45;
  v47 = v32;
  v48 = v33;
  v34 = v26;
  v43 = v31;
  v35 = v26;
  v36 = v28;
  v37 = v32;
  sub_1D5EB1D80(v24, v23, v25, v34, v36);
  sub_1D5EB1D80(v30, v29, v43, v45, v37);
  sub_1D5EB1D80(v24, v23, v25, v35, v36);
  v38 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v49, v46);
  v39 = v47;

  sub_1D5CBF568(v39);

  v40 = v50;

  sub_1D5CBF568(v40);

  sub_1D5EB2398(v24, v23, v25, v35, v36);
  return v38 & 1;
}

uint64_t _s8NewsFeed18FormatWebEmbedNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_34;
  }

  v67 = *(a1 + 32);
  v61 = *(a2 + 32);

  v7 = static FormatWebEmbedNodeContent.== infix(_:_:)(&v67, &v61);

  if ((v7 & 1) == 0)
  {
    goto LABEL_34;
  }

  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (v8)
  {
    if (!v9 || (*(a1 + 40) != *(a2 + 40) || v8 != v9) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v9)
  {
    goto LABEL_34;
  }

  v10 = *(a1 + 56);
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_34;
    }

    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1FD58(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v11)
  {
    goto LABEL_34;
  }

  v67 = *(a1 + 64);
  v61 = *(a2 + 64);
  v15 = v61;
  sub_1D5C82CD8(v67);
  sub_1D5C82CD8(v15);
  LOBYTE(v15) = static FormatSize.== infix(_:_:)(&v67, &v61);
  sub_1D5C92A8C(v61);
  sub_1D5C92A8C(v67);
  if ((v15 & 1) == 0)
  {
    goto LABEL_34;
  }

  v16 = *(a1 + 72);
  v17 = *(a2 + 72);
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_34;
    }

    v18 = *(v16 + 16);
    v19 = *(v17 + 16);
    swift_beginAccess();
    v20 = *(v18 + 16);
    swift_beginAccess();
    v21 = *(v19 + 16);

    v22 = sub_1D5E1F5F0(v20, v21);

    if ((v22 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v17)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v23 = *(a1 + 80);
  swift_beginAccess();
  v24 = *(a2 + 80);

  v25 = sub_1D6344A40(v23, v24, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v25 & 1) == 0)
  {
    goto LABEL_34;
  }

  v26 = *(a1 + 88);
  v27 = *(a2 + 88);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_34;
    }

    v28 = _s8NewsFeed23FormatWebEmbedNodeStyleC2eeoiySbAC_ACtFZ_0(v26, v27);

    if ((v28 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v27)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v29 = *(a1 + 96);
  swift_beginAccess();
  if (v29 != *(a2 + 96))
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v67 = *(a1 + 104);
  v30 = v67;
  swift_beginAccess();
  v61 = *(a2 + 104);
  v31 = v61;
  sub_1D5EB1500(v30);
  sub_1D5EB1500(v31);
  LOBYTE(v30) = static FormatVisibility.== infix(_:_:)(&v67, &v61);
  sub_1D5EB15C4(v61);
  sub_1D5EB15C4(v67);
  if ((v30 & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v32 = *(a1 + 112);
  swift_beginAccess();
  if (v32 != *(a2 + 112))
  {
    goto LABEL_34;
  }

  v35 = *(a1 + 128);
  v36 = *(a2 + 128);
  if (v35 <= 0xFD)
  {
    v37 = *(a2 + 120);
    v67 = *(a1 + 120);
    LOBYTE(v68) = v35;
    if (v36 > 0xFD)
    {
      goto LABEL_34;
    }

    v61 = v37;
    LOBYTE(v62) = v36;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v67, &v61) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v36 <= 0xFD)
  {
    goto LABEL_34;
  }

  v38 = *(a1 + 144);
  v39 = *(a2 + 144);
  if (v38)
  {
    if (!v39 || (*(a1 + 136) != *(a2 + 136) || v38 != v39) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v39)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v40 = *(a1 + 152);
  swift_beginAccess();
  v41 = *(a2 + 152);

  v42 = sub_1D5BFC390(v40, v41);

  if ((v42 & 1) == 0)
  {
    goto LABEL_34;
  }

  v43 = *(a1 + 160);
  v56 = *(a1 + 168);
  v57 = *(a1 + 176);
  v58 = *(a1 + 184);
  v59 = *(a1 + 200);
  v60 = *(a1 + 192);
  v45 = *(a2 + 160);
  v44 = *(a2 + 168);
  v46 = *(a2 + 176);
  v47 = *(a2 + 184);
  v48 = *(a2 + 192);
  v54 = *(a2 + 200);
  v49 = v43;
  if (v43)
  {
    v67 = *(a1 + 160);
    v68 = v56;
    v69 = v57;
    v70 = v58;
    v71 = v60;
    v72 = v59;
    if (v45)
    {
      v61 = v45;
      v62 = v44;
      v63 = v46;
      v64 = v47;
      v65 = v48;
      v66 = v54;
      sub_1D5EB1D80(v43, v56, v57, v58, v60);
      sub_1D5EB1D80(v45, v44, v46, v47, v48);
      sub_1D5EB1D80(v49, v56, v57, v58, v60);
      v55 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v67, &v61);
      v50 = v65;

      sub_1D5CBF568(v50);

      v51 = v71;

      sub_1D5CBF568(v51);

      sub_1D5EB2398(v49, v56, v57, v58, v60);
      if ((v55 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_58;
    }

    sub_1D5EB1D80(v43, v56, v57, v58, v60);
    sub_1D5EB1D80(0, v44, v46, v47, v48);
    sub_1D5EB1D80(v49, v56, v57, v58, v60);

    sub_1D5CBF568(v60);

LABEL_56:
    sub_1D5EB2398(v49, v56, v57, v58, v60);
    sub_1D5EB2398(v45, v44, v46, v47, v48);
    goto LABEL_34;
  }

  sub_1D5EB1D80(0, v56, v57, v58, v60);
  if (v45)
  {
    sub_1D5EB1D80(v45, v44, v46, v47, v48);
    goto LABEL_56;
  }

  sub_1D5EB1D80(0, v44, v46, v47, v48);
  sub_1D5EB2398(0, v56, v57, v58, v60);
LABEL_58:
  v52 = *(a1 + 208);
  v53 = *(a2 + 208);
  if (v52 == 2)
  {
    sub_1D5D0A59C(2uLL);
    if (v53 == 2)
    {
      sub_1D5D0A59C(2uLL);
      sub_1D5D0A5AC(2uLL);
      v33 = 1;
      return v33 & 1;
    }

    sub_1D5D0A59C(v53);
  }

  else
  {
    v67 = v52;
    if (v53 != 2)
    {
      v61 = v53;
      sub_1D5D0A59C(v52);
      sub_1D5D0A59C(v53);
      sub_1D5D0A59C(v52);
      v33 = _s8NewsFeed27FormatWebEmbedNodeRenderingO2eeoiySbAC_ACtFZ_0(&v67, &v61);
      sub_1D5D0A58C(v61);
      sub_1D5D0A58C(v67);
      sub_1D5D0A5AC(v52);
      return v33 & 1;
    }

    sub_1D5D0A59C(v52);
    sub_1D5D0A59C(2uLL);
    sub_1D5D0A59C(v52);
    sub_1D5D0A58C(v52);
  }

  sub_1D5D0A5AC(v52);
  sub_1D5D0A5AC(v53);
LABEL_34:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s8NewsFeed18FormatVariableNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0 || (swift_beginAccess(), v7 = a1[4], swift_beginAccess(), v8 = a2[4], , , v9 = sub_1D634CD10(v7, v8), , , (v9 & 1) == 0))
  {
    v25 = 0;
    return v25 & 1;
  }

  v11 = a1[5];
  v10 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  v15 = a1[9];
  v14 = a1[10];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v32 = a2[8];
  v19 = a2[9];
  v20 = a2[10];
  if (!v11)
  {
    v31 = v19;
    sub_1D5EB1D80(0, v10, v12, v13, v15);
    if (!v17)
    {
      sub_1D5EB1D80(0, v16, v18, v32, v31);
      sub_1D5EB2398(0, v10, v12, v13, v15);
      v25 = 1;
      return v25 & 1;
    }

    sub_1D5EB1D80(v17, v16, v18, v32, v31);
    goto LABEL_14;
  }

  v36[0] = v11;
  v36[1] = v10;
  v36[2] = v12;
  v36[3] = v13;
  v37 = v15;
  v38 = v14;
  if (!v17)
  {
    v28 = v19;
    sub_1D5EB1D80(v11, v10, v12, v13, v15);
    v31 = v28;
    sub_1D5EB1D80(0, v16, v18, v32, v28);
    sub_1D5EB1D80(v11, v10, v12, v13, v15);

    sub_1D5CBF568(v15);

LABEL_14:
    sub_1D5EB2398(v11, v10, v12, v13, v15);
    sub_1D5EB2398(v17, v16, v18, v32, v31);
    v25 = 0;
    return v25 & 1;
  }

  v33[0] = v17;
  v33[1] = v16;
  v33[2] = v18;
  v33[3] = v32;
  v34 = v19;
  v35 = v20;
  v21 = v13;
  v30 = v18;
  v22 = v13;
  v23 = v15;
  v24 = v19;
  sub_1D5EB1D80(v11, v10, v12, v21, v23);
  sub_1D5EB1D80(v17, v16, v30, v32, v24);
  sub_1D5EB1D80(v11, v10, v12, v22, v23);
  v25 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v36, v33);
  v26 = v34;

  sub_1D5CBF568(v26);

  v27 = v37;

  sub_1D5CBF568(v27);

  sub_1D5EB2398(v11, v10, v12, v22, v23);
  return v25 & 1;
}

uint64_t _s8NewsFeed18FormatGeometryNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v7 = a1[5];
  v8 = a2[5];
  if (v7)
  {
    if (!v8 || (a1[4] != a2[4] || v7 != v8) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v8)
  {
LABEL_18:
    v28 = 0;
    return v28 & 1;
  }

  swift_beginAccess();
  v9 = a1[6];
  swift_beginAccess();
  if ((sub_1D5BF1C0C(v9, a2[6]) & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v10 = a1[7];
  swift_beginAccess();
  v11 = a2[7];

  v12 = sub_1D633E44C(v10, v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = a1[8];
  v13 = a1[9];
  v15 = a1[10];
  v16 = a1[11];
  v18 = a1[12];
  v17 = a1[13];
  v20 = a2[8];
  v19 = a2[9];
  v21 = a2[10];
  v35 = a2[11];
  v22 = a2[12];
  v23 = a2[13];
  if (!v14)
  {
    v34 = v22;
    sub_1D5EB1D80(0, v13, v15, v16, v18);
    if (!v20)
    {
      sub_1D5EB1D80(0, v19, v21, v35, v34);
      sub_1D5EB2398(0, v13, v15, v16, v18);
      v28 = 1;
      return v28 & 1;
    }

    sub_1D5EB1D80(v20, v19, v21, v35, v34);
    goto LABEL_23;
  }

  v39[0] = v14;
  v39[1] = v13;
  v39[2] = v15;
  v39[3] = v16;
  v40 = v18;
  v41 = v17;
  if (!v20)
  {
    v32 = v22;
    sub_1D5EB1D80(v14, v13, v15, v16, v18);
    v34 = v32;
    sub_1D5EB1D80(0, v19, v21, v35, v32);
    sub_1D5EB1D80(v14, v13, v15, v16, v18);

    sub_1D5CBF568(v18);

LABEL_23:
    sub_1D5EB2398(v14, v13, v15, v16, v18);
    sub_1D5EB2398(v20, v19, v21, v35, v34);
    v28 = 0;
    return v28 & 1;
  }

  v36[0] = v20;
  v36[1] = v19;
  v36[2] = v21;
  v36[3] = v35;
  v37 = v22;
  v38 = v23;
  v24 = v16;
  v33 = v21;
  v25 = v16;
  v26 = v18;
  v27 = v22;
  sub_1D5EB1D80(v14, v13, v15, v24, v26);
  sub_1D5EB1D80(v20, v19, v33, v35, v27);
  sub_1D5EB1D80(v14, v13, v15, v25, v26);
  v28 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v39, v36);
  v29 = v37;

  sub_1D5CBF568(v29);

  v30 = v40;

  sub_1D5CBF568(v30);

  sub_1D5EB2398(v14, v13, v15, v25, v26);
  return v28 & 1;
}

uint64_t _s8NewsFeed18FormatContentThemeC2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1D635B244(a1[2], a2[2], sub_1D5C2AB28, sub_1D5C2AB28, sub_1D6B1A454, sub_1D5C2AB28) & 1) == 0 || (sub_1D6339F3C(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a2[4];

  return sub_1D5BFC390(v4, v5);
}

uint64_t _s8NewsFeed17FormatOptionsNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0 || (swift_beginAccess(), v7 = a1[4], swift_beginAccess(), v8 = a2[4], , , v9 = sub_1D634CD10(v7, v8), , , (v9 & 1) == 0) || (swift_beginAccess(), v10 = a1[5], swift_beginAccess(), v11 = a2[5], , , v12 = sub_1D633E44C(v10, v11), , , (v12 & 1) == 0))
  {
    v28 = 0;
    return v28 & 1;
  }

  v14 = a1[6];
  v13 = a1[7];
  v15 = a1[8];
  v16 = a1[9];
  v18 = a1[10];
  v17 = a1[11];
  v20 = a2[6];
  v19 = a2[7];
  v21 = a2[8];
  v35 = a2[9];
  v22 = a2[10];
  v23 = a2[11];
  if (!v14)
  {
    v34 = v22;
    sub_1D5EB1D80(0, v13, v15, v16, v18);
    if (!v20)
    {
      sub_1D5EB1D80(0, v19, v21, v35, v34);
      sub_1D5EB2398(0, v13, v15, v16, v18);
      v28 = 1;
      return v28 & 1;
    }

    sub_1D5EB1D80(v20, v19, v21, v35, v34);
    goto LABEL_16;
  }

  v39[0] = v14;
  v39[1] = v13;
  v39[2] = v15;
  v39[3] = v16;
  v40 = v18;
  v41 = v17;
  if (!v20)
  {
    v32 = v22;
    sub_1D5EB1D80(v14, v13, v15, v16, v18);
    v34 = v32;
    sub_1D5EB1D80(0, v19, v21, v35, v32);
    sub_1D5EB1D80(v14, v13, v15, v16, v18);

    sub_1D5CBF568(v18);

LABEL_16:
    sub_1D5EB2398(v14, v13, v15, v16, v18);
    sub_1D5EB2398(v20, v19, v21, v35, v34);
    v28 = 0;
    return v28 & 1;
  }

  v36[0] = v20;
  v36[1] = v19;
  v36[2] = v21;
  v36[3] = v35;
  v37 = v22;
  v38 = v23;
  v24 = v16;
  v33 = v21;
  v25 = v16;
  v26 = v18;
  v27 = v22;
  sub_1D5EB1D80(v14, v13, v15, v24, v26);
  sub_1D5EB1D80(v20, v19, v33, v35, v27);
  sub_1D5EB1D80(v14, v13, v15, v25, v26);
  v28 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v39, v36);
  v29 = v37;

  sub_1D5CBF568(v29);

  v30 = v40;

  sub_1D5CBF568(v30);

  sub_1D5EB2398(v14, v13, v15, v25, v26);
  return v28 & 1;
}

uint64_t _s8NewsFeed17FormatFlexBoxNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v7 = a1[4];
  v8 = a1[5];
  swift_beginAccess();
  v9 = a2[5];
  if (v8)
  {
    if (!v9 || (v7 != a2[4] || v8 != v9) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v9)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v10 = a1[6];
  v11 = a1[7];
  swift_beginAccess();
  v12 = a2[7];
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

LABEL_35:
    v16 = 0;
    return v16 & 1;
  }

  if (!v12 || (v10 != a2[6] || v11 != v12) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_20:
  swift_beginAccess();
  v53[0] = a1[8];
  swift_beginAccess();
  v50[0] = a2[8];
  sub_1D5C82CD8(v53[0]);
  sub_1D5C82CD8(v50[0]);
  v13 = static FormatSize.== infix(_:_:)(v53, v50);
  sub_1D5C92A8C(v50[0]);
  sub_1D5C92A8C(v53[0]);
  if ((v13 & 1) == 0)
  {
    goto LABEL_35;
  }

  v14 = a1[10];
  v15 = a2[10];
  if (v14)
  {
    if (v15)
    {
      if ((a1[9] != a2[9] || v14 != v15) && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_30:
      swift_beginAccess();
      v17 = a1[11];
      swift_beginAccess();
      v18 = a2[11];

      v19 = sub_1D6344A40(v17, v18, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

      if ((v19 & 1) == 0)
      {
        goto LABEL_35;
      }

      swift_beginAccess();
      v20 = a1[12];
      swift_beginAccess();
      v21 = a2[12];

      v22 = _s8NewsFeed23FormatFlexBoxNodeLayoutC2eeoiySbAC_ACtFZ_0(v20, v21);

      if ((v22 & 1) == 0)
      {
        goto LABEL_35;
      }

      v23 = a1[13];
      v24 = a1[14];
      v26 = a1[15];
      v25 = a1[16];
      v27 = a1[17];
      v28 = a1[18];
      v30 = a2[13];
      v29 = a2[14];
      v31 = a2[16];
      v47 = v29;
      v48 = a2[15];
      v32 = a2[17];
      v46 = a2[18];
      if (v23)
      {
        v53[0] = a1[13];
        v53[1] = v24;
        v53[2] = v26;
        v53[3] = v25;
        v54 = v27;
        v55 = v28;
        if (v30)
        {
          v50[0] = v30;
          v50[1] = v29;
          v50[2] = v48;
          v50[3] = v31;
          v51 = v32;
          v52 = v46;
          v45 = v23;
          v43 = v30;
          v44 = v24;
          sub_1D5EB1D80(v23, v24, v26, v25, v27);
          sub_1D5EB1D80(v43, v47, v48, v31, v32);
          sub_1D5EB1D80(v45, v24, v26, v25, v27);
          v49 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v53, v50);
          v33 = v51;

          sub_1D5CBF568(v33);

          v34 = v54;

          sub_1D5CBF568(v34);

          sub_1D5EB2398(v45, v44, v26, v25, v27);
          if ((v49 & 1) == 0)
          {
            goto LABEL_35;
          }

LABEL_42:
          swift_beginAccess();
          v41 = a1[19];
          swift_beginAccess();
          v42 = a2[19];

          v16 = sub_1D633E44C(v41, v42);

          return v16 & 1;
        }

        v38 = v23;
        v36 = 0;
        v39 = v29;
        sub_1D5EB1D80(v23, v24, v26, v25, v27);
        v40 = v39;
        v37 = v31;
        sub_1D5EB1D80(0, v40, v48, v31, v32);
        sub_1D5EB1D80(v38, v24, v26, v25, v27);

        sub_1D5CBF568(v27);
      }

      else
      {
        v36 = a2[13];
        sub_1D5EB1D80(0, v24, v26, v25, v27);
        if (!v36)
        {
          sub_1D5EB1D80(0, v47, v48, v31, v32);
          sub_1D5EB2398(0, v24, v26, v25, v27);
          goto LABEL_42;
        }

        v37 = v31;
        sub_1D5EB1D80(v36, v47, v48, v31, v32);
        v38 = 0;
      }

      sub_1D5EB2398(v38, v24, v26, v25, v27);
      sub_1D5EB2398(v36, v47, v48, v37, v32);
      v16 = 0;
      return v16 & 1;
    }
  }

  else if (!v15)
  {

    goto LABEL_30;
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t _s8NewsFeed16FormatRepeatNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((v8 & 1) == 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      sub_1D66F4EAC(*(a1 + 32), 0);
      sub_1D66F4EAC(v9, 0);
      if ((v9 ^ v7))
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

LABEL_17:
    sub_1D66F4EA0(v9, v10);
    sub_1D66F4EAC(v7, v8);
    sub_1D66F4EAC(v9, v10);
    sub_1D66F4EAC(v7, v8);
    goto LABEL_18;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_17;
  }

  sub_1D66F4EA0(*(a2 + 32), 1);
  sub_1D66F4EA0(v7, 1);
  sub_1D66F4EA0(v9, 1);
  sub_1D66F4EA0(v7, 1);
  v11 = sub_1D633D10C(v7, v9);
  sub_1D66F4EAC(v7, 1);
  sub_1D66F4EAC(v9, 1);
  sub_1D66F4EAC(v9, 1);
  sub_1D66F4EAC(v7, 1);
  if ((v11 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(a1 + 48);
  v13 = *(a2 + 48);
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = sub_1D633D10C(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v13)
    {
      goto LABEL_18;
    }
  }

  v17 = *(a1 + 56);
  v18 = *(a2 + 56);
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_18;
    }

    v19 = sub_1D633D10C(v17, v18);

    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_18;
    }
  }

  v20 = *(a1 + 64);
  v21 = *(a2 + 64);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = sub_1D633D10C(v20, v21);

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v21)
    {
      goto LABEL_18;
    }
  }

  v23 = *(a1 + 80);
  v24 = *(a2 + 80);
  if (v23)
  {
    if (!v24 || (*(a1 + 72) != *(a2 + 72) || v23 != v24) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_41:
    swift_beginAccess();
    v25 = *(a1 + 88);
    swift_beginAccess();
    v26 = *(a2 + 88);

    v15 = sub_1D633E44C(v25, v26);

    return v15 & 1;
  }

  if (!v24)
  {
    goto LABEL_41;
  }

LABEL_18:
  v15 = 0;
  return v15 & 1;
}

uint64_t _s8NewsFeed16FormatPuzzleTypeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v30[-v6];
  v8 = type metadata accessor for FormatPuzzleType.Overrides(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30[-v14];
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_1D72646CC()) && (v16 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides, swift_beginAccess(), sub_1D665F27C(a1 + v16, v7, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault), sub_1D5C8F76C(v7, v15, type metadata accessor for FormatPuzzleType.Overrides), v17 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides, swift_beginAccess(), sub_1D665F27C(a2 + v17, v7, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault), sub_1D5C8F76C(v7, v11, type metadata accessor for FormatPuzzleType.Overrides), v18 = static FormatPuzzleType.Overrides.== infix(_:_:)(v15, v11), sub_1D5D2CFE8(v11, type metadata accessor for FormatPuzzleType.Overrides), sub_1D5D2CFE8(v15, type metadata accessor for FormatPuzzleType.Overrides), (v18) && (v19 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__selectors, swift_beginAccess(), v20 = *(a1 + v19), v21 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__selectors, swift_beginAccess(), v22 = *(a2 + v21), , , v23 = sub_1D5BFC390(v20, v22), , , (v23))
  {
    v24 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__properties;
    swift_beginAccess();
    v25 = *(a1 + v24);
    v26 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__properties;
    swift_beginAccess();
    v27 = *(a2 + v26);

    v28 = sub_1D6339F3C(v25, v27);
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t _s8NewsFeed16FormatCustomNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_38;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_38;
  }

  v56[0] = *(a1 + 56);
  v53[0] = *(a2 + 56);
  sub_1D5C82CD8(v56[0]);
  sub_1D5C82CD8(v53[0]);
  v8 = static FormatSize.== infix(_:_:)(v56, v53);
  sub_1D5C92A8C(v53[0]);
  sub_1D5C92A8C(v56[0]);
  if ((v8 & 1) == 0)
  {
    goto LABEL_38;
  }

  v9 = *(a1 + 64);
  v10 = *(a2 + 64);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_38;
    }

    v11 = *(v9 + 16);
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);
    swift_beginAccess();
    v14 = *(v12 + 16);

    v15 = sub_1D5E1F5F0(v13, v14);

    if ((v15 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v10)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v16 = *(a1 + 72);
  swift_beginAccess();
  v17 = *(a2 + 72);

  v18 = sub_1D6344A40(v16, v17, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v18 & 1) == 0)
  {
    goto LABEL_38;
  }

  v19 = *(a1 + 80);
  v20 = *(a2 + 80);
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_38;
    }

    type metadata accessor for FormatCustomNodeStyle();

    v21 = _s8NewsFeed21FormatCustomNodeStyleC2eeoiySbAC_ACtFZ_0(v19, v20);

    if ((v21 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v20)
  {
    goto LABEL_38;
  }

  v22 = *(a1 + 88);
  v23 = *(a2 + 88);
  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_28;
    }

LABEL_38:
    v41 = 0;
    return v41 & 1;
  }

  if (!v23)
  {
    goto LABEL_38;
  }

  v24 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v22, v23);

  if ((v24 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_28:
  swift_beginAccess();
  v25 = *(a1 + 96);
  swift_beginAccess();
  if (v25 != *(a2 + 96))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v56[0] = *(a1 + 104);
  v26 = v56[0];
  swift_beginAccess();
  v53[0] = *(a2 + 104);
  v27 = v53[0];
  sub_1D5EB1500(v26);
  sub_1D5EB1500(v27);
  LOBYTE(v26) = static FormatVisibility.== infix(_:_:)(v56, v53);
  sub_1D5EB15C4(v53[0]);
  sub_1D5EB15C4(v56[0]);
  if ((v26 & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v28 = *(a1 + 112);
  swift_beginAccess();
  if (v28 != *(a2 + 112))
  {
    goto LABEL_38;
  }

  v30 = *(a1 + 120);
  v29 = *(a1 + 128);
  v32 = *(a1 + 136);
  v31 = *(a1 + 144);
  v33 = *(a1 + 152);
  v34 = *(a1 + 160);
  v36 = *(a2 + 120);
  v35 = *(a2 + 128);
  v37 = *(a2 + 136);
  v52 = *(a2 + 144);
  v39 = *(a2 + 152);
  v38 = *(a2 + 160);
  if (!v30)
  {
    v51 = v33;
    sub_1D5EB1D80(0, v29, v32, v31, v33);
    if (!v36)
    {
      sub_1D5EB1D80(0, v35, v37, v52, v39);
      sub_1D5EB2398(0, v29, v32, v31, v51);
      v41 = 1;
      return v41 & 1;
    }

    sub_1D5EB1D80(v36, v35, v37, v52, v39);
    v45 = v31;
    v44 = v51;
    goto LABEL_37;
  }

  v56[0] = v30;
  v56[1] = v29;
  v56[2] = v32;
  v56[3] = v31;
  v57 = v33;
  v58 = v34;
  if (!v36)
  {
    v46 = v31;
    v49 = v31;
    v44 = v33;
    sub_1D5EB1D80(v30, v29, v32, v46, v33);
    v45 = v49;
    sub_1D5EB1D80(0, v35, v37, v52, v39);
    sub_1D5EB1D80(v30, v29, v32, v49, v44);

    sub_1D5CBF568(v44);

LABEL_37:
    sub_1D5EB2398(v30, v29, v32, v45, v44);
    sub_1D5EB2398(v36, v35, v37, v52, v39);
    goto LABEL_38;
  }

  v53[0] = v36;
  v53[1] = v35;
  v53[2] = v37;
  v53[3] = v52;
  v54 = v39;
  v55 = v38;
  v48 = v39;
  v40 = v33;
  v50 = v33;
  sub_1D5EB1D80(v30, v29, v32, v31, v33);
  sub_1D5EB1D80(v36, v35, v37, v52, v48);
  sub_1D5EB1D80(v30, v29, v32, v31, v40);
  v41 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v56, v53);
  v42 = v54;

  sub_1D5CBF568(v42);

  v43 = v57;

  sub_1D5CBF568(v43);

  sub_1D5EB2398(v30, v29, v32, v31, v50);
  return v41 & 1;
}

uint64_t _s8NewsFeed15FormatVideoNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_27;
  }

  *&v99 = *(a1 + 32);
  *&v133 = *(a2 + 32);
  sub_1D5C82CD8(v99);
  sub_1D5C82CD8(v133);
  v7 = static FormatSize.== infix(_:_:)(&v99, &v133);
  sub_1D5C92A8C(v133);
  sub_1D5C92A8C(v99);
  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_27;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v9)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v17 & 1) == 0)
  {
    goto LABEL_27;
  }

  v18 = *(a1 + 56);
  v19 = *(a2 + 56);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_27;
    }

    type metadata accessor for FormatVideoNodeStyle();

    v20 = sub_1D665108C(v18, v19, sub_1D62B7AA4, _s8NewsFeed20FormatVideoNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0, sub_1D62B7B00);

    if ((v20 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v19)
  {
    goto LABEL_27;
  }

  v21 = *(a1 + 64);
  v22 = *(a2 + 64);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_27;
    }

    v23 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v21, v22);

    if ((v23 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v22)
  {
    goto LABEL_27;
  }

  *&v99 = *(a1 + 72);
  *&v133 = *(a2 + 72);

  v24 = static FormatVideoNodeContent.== infix(_:_:)(&v99, &v133);

  if ((v24 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v25 = *(a1 + 80);
  swift_beginAccess();
  if (v25 != *(a2 + 80))
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  *&v99 = *(a1 + 88);
  v26 = v99;
  swift_beginAccess();
  *&v133 = *(a2 + 88);
  v27 = v133;
  sub_1D5EB1500(v26);
  sub_1D5EB1500(v27);
  LOBYTE(v26) = static FormatVisibility.== infix(_:_:)(&v99, &v133);
  sub_1D5EB15C4(v133);
  sub_1D5EB15C4(v99);
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v28 = *(a1 + 96);
  swift_beginAccess();
  if (v28 != *(a2 + 96))
  {
    goto LABEL_27;
  }

  v31 = *(a1 + 112);
  v32 = *(a2 + 112);
  if (v31 <= 0xFD)
  {
    v33 = *(a2 + 104);
    *&v99 = *(a1 + 104);
    BYTE8(v99) = v31;
    if (v32 > 0xFD)
    {
      goto LABEL_27;
    }

    *&v133 = v33;
    BYTE8(v133) = v32;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v99, &v133) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v32 <= 0xFD)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v34 = *(a1 + 120);
  swift_beginAccess();
  v35 = *(a2 + 120);

  v36 = sub_1D5BFC390(v34, v35);

  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

  v37 = *(a1 + 176);
  v38 = *(a1 + 208);
  v130 = *(a1 + 192);
  v131 = v38;
  v39 = *(a1 + 144);
  v126 = *(a1 + 128);
  v127 = v39;
  v40 = *(a1 + 176);
  v128 = *(a1 + 160);
  v129 = v40;
  v41 = *(a2 + 128);
  v42 = v41;
  v134 = *(a2 + 144);
  v133 = v41;
  v43 = *(a2 + 192);
  v44 = *(a2 + 160);
  v45 = *(a2 + 176);
  v138 = *(a2 + 208);
  v137 = v43;
  v46 = *(a2 + 176);
  v47 = *(a2 + 192);
  v48 = *(a2 + 160);
  v135 = v44;
  v136 = v46;
  v124 = v126;
  v49 = *(a1 + 208);
  v121 = v130;
  v122 = v49;
  v119 = v128;
  v120 = v37;
  v132 = *(a1 + 224);
  v139 = *(a2 + 224);
  v125 = *(a1 + 144);
  v50 = *(&v127 + 1);
  v123 = *(a1 + 224);
  *&v118[23] = *(a2 + 144);
  *&v118[7] = v42;
  v51 = *(&v134 + 1);
  v52 = *(a2 + 208);
  v117 = *(a2 + 224);
  v115 = v47;
  v116 = v52;
  v113 = v48;
  v114 = v45;
  if (BYTE8(v127) != 254)
  {
    v56 = *(a1 + 144);
    v99 = *(a1 + 128);
    *&v100 = v56;
    *(&v100 + 1) = *(&v127 + 1);
    v57 = *(a1 + 208);
    v103 = *(a1 + 192);
    v104 = v57;
    v105 = *(a1 + 224);
    v58 = *(a1 + 176);
    v101 = *(a1 + 160);
    v102 = v58;
    v96 = v103;
    v97 = v57;
    v98 = v105;
    v94 = v101;
    v95 = v58;
    v92 = v99;
    v93 = v100;
    if (BYTE8(v134) != 254)
    {
      v85 = *(a2 + 128);
      v91 = *(a2 + 224);
      v61 = *(a2 + 144);
      v62 = *(a2 + 208);
      v89 = *(a2 + 192);
      v90 = v62;
      v63 = *(a2 + 176);
      v87 = *(a2 + 160);
      v88 = v63;
      *&v86 = v61;
      *(&v86 + 1) = *(&v134 + 1);
      v64 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(&v126, v83, &qword_1EC8854C8, &type metadata for FormatVideoProperties, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(&v133, v83, &qword_1EC8854C8, &type metadata for FormatVideoProperties, v64, sub_1D5C34D84);
      sub_1D5D355B8(&v99, v83, &qword_1EC8854C8, &type metadata for FormatVideoProperties, v64, sub_1D5C34D84);
      v65 = _s8NewsFeed21FormatVideoPropertiesV2eeoiySbAC_ACtFZ_0(&v92, &v85);
      v81[4] = v89;
      v81[5] = v90;
      v82 = v91;
      v81[0] = v85;
      v81[1] = v86;
      v81[2] = v87;
      v81[3] = v88;
      sub_1D62B61EC(v81);
      v83[4] = v96;
      v83[5] = v97;
      v84 = v98;
      v83[0] = v92;
      v83[1] = v93;
      v83[2] = v94;
      v83[3] = v95;
      sub_1D62B61EC(v83);
      v85 = v124;
      *&v86 = v125;
      *(&v86 + 1) = v50;
      v89 = v121;
      v90 = v122;
      v91 = v123;
      v87 = v119;
      v88 = v120;
      sub_1D66615F8(&v85, &qword_1EC8854C8, &type metadata for FormatVideoProperties, v64, sub_1D5C34D84);
      if (!v65)
      {
        goto LABEL_27;
      }

      goto LABEL_43;
    }

    v89 = v103;
    v90 = v104;
    v91 = v105;
    v85 = v99;
    v86 = v100;
    v87 = v101;
    v88 = v102;
    v59 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v126, v83, &qword_1EC8854C8, &type metadata for FormatVideoProperties, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(&v133, v83, &qword_1EC8854C8, &type metadata for FormatVideoProperties, v59, sub_1D5C34D84);
    sub_1D5D355B8(&v99, v83, &qword_1EC8854C8, &type metadata for FormatVideoProperties, v59, sub_1D5C34D84);
    sub_1D62B61EC(&v85);
LABEL_41:
    v99 = v124;
    v103 = v121;
    v104 = v122;
    v101 = v119;
    v102 = v120;
    *&v106[15] = *&v118[15];
    *v106 = *v118;
    v108 = v113;
    v111 = v116;
    *&v100 = v125;
    *(&v100 + 1) = v50;
    v105 = v123;
    v107 = v51;
    v112 = v117;
    v110 = v115;
    v109 = v114;
    sub_1D5D35558(&v99, &unk_1EC889AF8, &qword_1EC8854C8, &type metadata for FormatVideoProperties, sub_1D66F49B8);
    goto LABEL_27;
  }

  if (BYTE8(v134) != 254)
  {
    v60 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v126, &v99, &qword_1EC8854C8, &type metadata for FormatVideoProperties, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(&v133, &v99, &qword_1EC8854C8, &type metadata for FormatVideoProperties, v60, sub_1D5C34D84);
    goto LABEL_41;
  }

  v99 = *(a1 + 128);
  *&v100 = *(a1 + 144);
  *(&v100 + 1) = *(&v127 + 1);
  v53 = *(a1 + 208);
  v103 = *(a1 + 192);
  v104 = v53;
  v105 = *(a1 + 224);
  v54 = *(a1 + 176);
  v101 = *(a1 + 160);
  v102 = v54;
  v55 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(&v126, &v92, &qword_1EC8854C8, &type metadata for FormatVideoProperties, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(&v133, &v92, &qword_1EC8854C8, &type metadata for FormatVideoProperties, v55, sub_1D5C34D84);
  sub_1D66615F8(&v99, &qword_1EC8854C8, &type metadata for FormatVideoProperties, v55, sub_1D5C34D84);
LABEL_43:
  v66 = *(a1 + 232);
  v67 = *(a1 + 240);
  v68 = *(a1 + 248);
  v79 = *(a1 + 256);
  v80 = *(a1 + 264);
  v78 = *(a1 + 272);
  v69 = *(a2 + 232);
  v70 = *(a2 + 240);
  v71 = *(a2 + 248);
  v72 = *(a2 + 256);
  v77 = *(a2 + 264);
  v73 = v66;
  if (v66)
  {
    *&v99 = v66;
    *(&v99 + 1) = v67;
    *&v100 = v68;
    *(&v100 + 1) = v79;
    *&v101 = v80;
    *(&v101 + 1) = v78;
    if (v69)
    {
      *&v92 = v69;
      *(&v92 + 1) = v70;
      *&v93 = v71;
      *(&v93 + 1) = v72;
      v94 = v77;
      sub_1D5EB1D80(v66, v67, v68, v79, v80);
      sub_1D5EB1D80(v69, v70, v71, v72, v77);
      v74 = v68;
      sub_1D5EB1D80(v73, v67, v68, v79, v80);
      v29 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v99, &v92);
      v75 = v94;

      sub_1D5CBF568(v75);

      v76 = v101;

      sub_1D5CBF568(v76);

      sub_1D5EB2398(v73, v67, v74, v79, v80);
      return v29 & 1;
    }

    sub_1D5EB1D80(v66, v67, v68, v79, v80);
    sub_1D5EB1D80(0, v70, v71, v72, v77);
    sub_1D5EB1D80(v73, v67, v68, v79, v80);

    sub_1D5CBF568(v80);
  }

  else
  {
    sub_1D5EB1D80(0, v67, v68, v79, v80);
    if (!v69)
    {
      sub_1D5EB1D80(0, v70, v71, v72, v77);
      sub_1D5EB2398(0, v67, v68, v79, v80);
      v29 = 1;
      return v29 & 1;
    }

    sub_1D5EB1D80(v69, v70, v71, v72, v77);
  }

  sub_1D5EB2398(v73, v67, v68, v79, v80);
  sub_1D5EB2398(v69, v70, v71, v72, v77);
LABEL_27:
  v29 = 0;
  return v29 & 1;
}

uint64_t _s8NewsFeed15FormatResetNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (v6 || (sub_1D72646CC()) && (swift_beginAccess(), v7 = a1[4], swift_beginAccess(), v8 = a2[4], , , v9 = sub_1D5BFC390(v7, v8), , , (v9) && (swift_beginAccess(), v10 = a1[5], swift_beginAccess(), v11 = a2[5], , , sub_1D5E218E4(v10, v11), v13 = v12, , , (v13))
  {
    swift_beginAccess();
    v14 = a1[6];
    swift_beginAccess();
    v15 = a2[6];

    v16 = sub_1D633E44C(v14, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _s8NewsFeed19FormatGroupNodeMaskC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = _s8NewsFeed24FormatGroupNodeMaskStyleC2eeoiySbAC_ACtFZ_0(v4, v5);

    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v5)
  {
    goto LABEL_13;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_13:
    v13 = 0;
    return v13 & 1;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v7, v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  swift_beginAccess();
  v16[0] = a1[4];
  swift_beginAccess();
  v15[0] = a2[4];
  sub_1D5C82CD8(v16[0]);
  sub_1D5C82CD8(v15[0]);
  v10 = static FormatSize.== infix(_:_:)(v16, v15);
  sub_1D5C92A8C(v15[0]);
  sub_1D5C92A8C(v16[0]);
  if ((v10 & 1) == 0)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v11 = a1[5];
  swift_beginAccess();
  v12 = a2[5];

  v13 = sub_1D6344A40(v11, v12, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  return v13 & 1;
}

uint64_t _s8NewsFeed15FormatGroupNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v65 = *(a1 + 32);
  swift_beginAccess();
  v59 = *(a2 + 32);
  sub_1D5C82CD8(v65);
  sub_1D5C82CD8(v59);
  v7 = static FormatSize.== infix(_:_:)(&v65, &v59);
  sub_1D5C92A8C(v59);
  sub_1D5C92A8C(v65);
  if ((v7 & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v9)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v17 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v18 = *(a1 + 56);
  swift_beginAccess();
  if (v18 != *(a2 + 56))
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v65 = *(a1 + 64);
  v19 = v65;
  swift_beginAccess();
  v59 = *(a2 + 64);
  v20 = v59;
  sub_1D5EB1500(v19);
  sub_1D5EB1500(v20);
  LOBYTE(v19) = static FormatVisibility.== infix(_:_:)(&v65, &v59);
  sub_1D5EB15C4(v59);
  sub_1D5EB15C4(v65);
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v21 = *(a1 + 72);
  swift_beginAccess();
  if (v21 != *(a2 + 72))
  {
    goto LABEL_16;
  }

  v24 = *(a1 + 80);
  v25 = *(a2 + 80);
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_16;
    }

    v26 = _s8NewsFeed20FormatGroupNodeStyleC2eeoiySbAC_ACtFZ_0(v24, v25);

    if (!v26)
    {
      goto LABEL_16;
    }
  }

  else if (v25)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v27 = *(a1 + 88);
  swift_beginAccess();
  v28 = *(a2 + 88);

  v29 = sub_1D633E44C(v27, v28);

  if (v29)
  {
    v30 = *(a1 + 104);
    v31 = *(a2 + 104);
    if (v30 <= 0xFD)
    {
      v32 = *(a2 + 96);
      v65 = *(a1 + 96);
      LOBYTE(v66) = v30;
      if (v31 > 0xFD)
      {
        goto LABEL_16;
      }

      v59 = v32;
      LOBYTE(v60) = v31;
      if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v65, &v59) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v31 <= 0xFD)
    {
      goto LABEL_16;
    }

    swift_beginAccess();
    v33 = *(a1 + 112);
    swift_beginAccess();
    v34 = *(a2 + 112);

    v35 = sub_1D5BFC390(v33, v34);

    if (v35)
    {
      v36 = *(a1 + 120);
      v37 = *(a2 + 120);
      if (v36)
      {
        if (!v37)
        {
          goto LABEL_16;
        }

        v38 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v36, v37);

        if ((v38 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v37)
      {
        goto LABEL_16;
      }

      swift_beginAccess();
      v39 = *(a1 + 128);
      swift_beginAccess();
      v40 = *(a2 + 128);
      if (v39)
      {
        if (!v40)
        {
          goto LABEL_16;
        }

        v42 = _s8NewsFeed19FormatGroupNodeMaskC2eeoiySbAC_ACtFZ_0(v41, v40);

        if ((v42 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v40)
      {
        goto LABEL_16;
      }

      v43 = *(a1 + 136);
      v44 = *(a1 + 144);
      v45 = *(a1 + 152);
      v56 = *(a1 + 160);
      v57 = *(a1 + 168);
      v58 = *(a1 + 176);
      v46 = *(a2 + 136);
      v47 = *(a2 + 144);
      v48 = *(a2 + 152);
      v49 = *(a2 + 160);
      v54 = *(a2 + 168);
      v55 = *(a2 + 176);
      v50 = v43;
      if (v43)
      {
        v65 = v43;
        v66 = v44;
        v67 = v45;
        v68 = v56;
        v69 = v57;
        v70 = v58;
        v53 = v44;
        if (v46)
        {
          v59 = v46;
          v60 = v47;
          v61 = v48;
          v62 = v49;
          v63 = v54;
          v64 = v55;
          sub_1D5EB1D80(v43, v44, v45, v56, v57);
          sub_1D5EB1D80(v46, v47, v48, v49, v54);
          sub_1D5EB1D80(v50, v44, v45, v56, v57);
          v22 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v65, &v59);
          v51 = v63;

          sub_1D5CBF568(v51);

          v52 = v69;

          sub_1D5CBF568(v52);

          sub_1D5EB2398(v50, v53, v45, v56, v57);
          return v22 & 1;
        }

        sub_1D5EB1D80(v43, v44, v45, v56, v57);
        sub_1D5EB1D80(0, v47, v48, v49, v54);
        sub_1D5EB1D80(v50, v44, v45, v56, v57);

        sub_1D5CBF568(v57);
      }

      else
      {
        sub_1D5EB1D80(0, v44, v45, v56, v57);
        if (!v46)
        {
          sub_1D5EB1D80(0, v47, v48, v49, v54);
          sub_1D5EB2398(0, v44, v45, v56, v57);
          v22 = 1;
          return v22 & 1;
        }

        sub_1D5EB1D80(v46, v47, v48, v49, v54);
      }

      sub_1D5EB2398(v50, v44, v45, v56, v57);
      sub_1D5EB2398(v46, v47, v48, v49, v54);
    }
  }

LABEL_16:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s8NewsFeed15FormatFrameNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0 || (v37[0] = a1[4], v34[0] = a2[4], sub_1D5C82CD8(v37[0]), sub_1D5C82CD8(v34[0]), v7 = static FormatSize.== infix(_:_:)(v37, v34), sub_1D5C92A8C(v34[0]), sub_1D5C92A8C(v37[0]), (v7 & 1) == 0) || (swift_beginAccess(), v8 = a1[5], swift_beginAccess(), v9 = a2[5], , , v10 = sub_1D6344A40(v8, v9, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88), , , (v10 & 1) == 0))
  {
    v26 = 0;
    return v26 & 1;
  }

  v12 = a1[6];
  v11 = a1[7];
  v13 = a1[8];
  v14 = a1[9];
  v16 = a1[10];
  v15 = a1[11];
  v18 = a2[6];
  v17 = a2[7];
  v19 = a2[8];
  v33 = a2[9];
  v20 = a2[10];
  v21 = a2[11];
  if (!v12)
  {
    v32 = v20;
    sub_1D5EB1D80(0, v11, v13, v14, v16);
    if (!v18)
    {
      sub_1D5EB1D80(0, v17, v19, v33, v32);
      sub_1D5EB2398(0, v11, v13, v14, v16);
      v26 = 1;
      return v26 & 1;
    }

    sub_1D5EB1D80(v18, v17, v19, v33, v32);
    goto LABEL_16;
  }

  v37[0] = v12;
  v37[1] = v11;
  v37[2] = v13;
  v37[3] = v14;
  v38 = v16;
  v39 = v15;
  if (!v18)
  {
    v30 = v20;
    sub_1D5EB1D80(v12, v11, v13, v14, v16);
    v32 = v30;
    sub_1D5EB1D80(0, v17, v19, v33, v30);
    sub_1D5EB1D80(v12, v11, v13, v14, v16);

    sub_1D5CBF568(v16);

LABEL_16:
    sub_1D5EB2398(v12, v11, v13, v14, v16);
    sub_1D5EB2398(v18, v17, v19, v33, v32);
    v26 = 0;
    return v26 & 1;
  }

  v34[0] = v18;
  v34[1] = v17;
  v34[2] = v19;
  v34[3] = v33;
  v35 = v20;
  v36 = v21;
  v22 = v14;
  v31 = v19;
  v23 = v14;
  v24 = v16;
  v25 = v20;
  sub_1D5EB1D80(v12, v11, v13, v22, v24);
  sub_1D5EB1D80(v18, v17, v31, v33, v25);
  sub_1D5EB1D80(v12, v11, v13, v23, v24);
  v26 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v37, v34);
  v27 = v35;

  sub_1D5CBF568(v27);

  v28 = v38;

  sub_1D5CBF568(v28);

  sub_1D5EB2398(v12, v11, v13, v23, v24);
  return v26 & 1;
}

uint64_t _s8NewsFeed15FormatBlockNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (v6 || (sub_1D72646CC()) && ((swift_beginAccess(), v7 = *(a1 + 32), v8 = *(a1 + 40), swift_beginAccess(), v7 == *(a2 + 32)) && v8 == *(a2 + 40) || (sub_1D72646CC()) && (swift_beginAccess(), v9 = *(a1 + 48), swift_beginAccess(), v9 == *(a2 + 48)) && (swift_beginAccess(), v10 = *(a1 + 56), swift_beginAccess(), v11 = *(a2 + 56), , , v12 = sub_1D635B244(v10, v11, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption), , , (v12))
  {
    swift_beginAccess();
    v13 = *(a1 + 64);
    swift_beginAccess();
    v14 = *(a2 + 64);

    v15 = sub_1D5BFC390(v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t _s8NewsFeed14FormatMicaNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_26;
  }

  *&__src[0] = *(a1 + 32);
  *&__dst[0] = *(a2 + 32);
  sub_1D5C82CD8(*&__src[0]);
  sub_1D5C82CD8(*&__dst[0]);
  v7 = static FormatSize.== infix(_:_:)(__src, __dst);
  sub_1D5C92A8C(*&__dst[0]);
  sub_1D5C92A8C(*&__src[0]);
  if ((v7 & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v17 & 1) == 0)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + 56);
  v19 = *(a2 + 56);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_26;
    }

    v20 = _s8NewsFeed19FormatMicaNodeStyleC2eeoiySbAC_ACtFZ_0(v18, v19);

    if ((v20 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v19)
  {
    goto LABEL_26;
  }

  *&__src[0] = *(a1 + 64);
  *&__dst[0] = *(a2 + 64);

  v21 = static FormatMicaNodeContent.== infix(_:_:)(__src, __dst);

  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = *(a1 + 152);
  v23 = *(a1 + 184);
  v118[6] = *(a1 + 168);
  v119[0] = v23;
  *(v119 + 9) = *(a1 + 193);
  v24 = *(a1 + 88);
  v25 = *(a1 + 120);
  v118[2] = *(a1 + 104);
  v118[3] = v25;
  v26 = *(a1 + 136);
  v118[5] = v22;
  v118[4] = v26;
  v27 = *(a1 + 72);
  v118[1] = v24;
  v118[0] = v27;
  v28 = *(a2 + 152);
  v29 = *(a2 + 184);
  v120[6] = *(a2 + 168);
  v121[0] = v29;
  *(v121 + 9) = *(a2 + 193);
  v30 = *(a2 + 88);
  v31 = *(a2 + 120);
  v120[2] = *(a2 + 104);
  v120[3] = v31;
  v32 = *(a2 + 136);
  v120[5] = v28;
  v120[4] = v32;
  v33 = *(a2 + 72);
  v120[1] = v30;
  v120[0] = v33;
  v34 = *(a1 + 152);
  v35 = *(a1 + 184);
  __src[6] = *(a1 + 168);
  __src[7] = v35;
  *(&__src[7] + 9) = *(a1 + 193);
  v36 = *(a1 + 88);
  v37 = *(a1 + 120);
  __src[2] = *(a1 + 104);
  __src[3] = v37;
  v38 = *(a1 + 136);
  __src[5] = v34;
  __src[4] = v38;
  v39 = *(a1 + 72);
  __src[1] = v36;
  __src[0] = v39;
  *(&__src[16] + 9) = *(a2 + 193);
  v40 = *(a2 + 152);
  v41 = *(a2 + 184);
  __src[15] = *(a2 + 168);
  __src[16] = v41;
  v42 = *(a2 + 88);
  v43 = *(a2 + 120);
  __src[11] = *(a2 + 104);
  __src[12] = v43;
  v44 = *(a2 + 136);
  __src[14] = v40;
  __src[13] = v44;
  v45 = *(a2 + 72);
  __src[10] = v42;
  __src[9] = v45;
  v46 = *(a1 + 152);
  v47 = *(a1 + 184);
  v122[6] = *(a1 + 168);
  v123[0] = v47;
  *(v123 + 9) = *(a1 + 193);
  v48 = *(a1 + 88);
  v49 = *(a1 + 120);
  v122[2] = *(a1 + 104);
  v122[3] = v49;
  v50 = *(a1 + 136);
  v122[5] = v46;
  v122[4] = v50;
  v51 = *(a1 + 72);
  v122[1] = v48;
  v122[0] = v51;
  if (sub_1D60486AC(v122) == 1)
  {
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) == 1)
    {
      v115 = __src[6];
      v116[0] = __src[7];
      *(v116 + 9) = *(&__src[7] + 9);
      v111 = __src[2];
      v112 = __src[3];
      v114 = __src[5];
      v113 = __src[4];
      v110 = __src[1];
      v109 = __src[0];
      v52 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v118, &v100, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v120, &v100, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v52, sub_1D5C34D84);
      sub_1D66615F8(&v109, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v52, sub_1D5C34D84);
      goto LABEL_29;
    }

    v54 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v118, &v109, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v120, &v109, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v54, sub_1D5C34D84);
LABEL_25:
    memcpy(__dst, __src, 0x119uLL);
    sub_1D5D35558(__dst, &qword_1EC889AE0, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, sub_1D66F49B8);
    goto LABEL_26;
  }

  v115 = __src[6];
  v116[0] = __src[7];
  *(v116 + 9) = *(&__src[7] + 9);
  v111 = __src[2];
  v112 = __src[3];
  v114 = __src[5];
  v113 = __src[4];
  v110 = __src[1];
  v109 = __src[0];
  v106 = __src[6];
  v107[0] = __src[7];
  *(v107 + 9) = *(&__src[7] + 9);
  v102 = __src[2];
  v103 = __src[3];
  v104 = __src[4];
  v105 = __src[5];
  v100 = __src[0];
  v101 = __src[1];
  __dst[6] = __src[15];
  __dst[7] = __src[16];
  *(&__dst[7] + 9) = *(&__src[16] + 9);
  __dst[2] = __src[11];
  __dst[3] = __src[12];
  __dst[4] = __src[13];
  __dst[5] = __src[14];
  __dst[0] = __src[9];
  __dst[1] = __src[10];
  if (sub_1D60486AC(__dst) == 1)
  {
    v98 = __src[6];
    v99[0] = __src[7];
    *(v99 + 9) = *(&__src[7] + 9);
    v94 = __src[2];
    v95 = __src[3];
    v96 = __src[4];
    v97 = __src[5];
    v92 = __src[0];
    v93 = __src[1];
    v53 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v118, v90, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v120, v90, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v53, sub_1D5C34D84);
    sub_1D5D355B8(&v109, v90, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v53, sub_1D5C34D84);
    sub_1D62B49F0(&v92);
    goto LABEL_25;
  }

  v98 = __src[15];
  v99[0] = __src[16];
  *(v99 + 9) = *(&__src[16] + 9);
  v94 = __src[11];
  v95 = __src[12];
  v96 = __src[13];
  v97 = __src[14];
  v92 = __src[9];
  v93 = __src[10];
  v57 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v118, v90, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v120, v90, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v57, sub_1D5C34D84);
  sub_1D5D355B8(&v109, v90, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v57, sub_1D5C34D84);
  v58 = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v100, &v92);
  v88[6] = v98;
  v89[0] = v99[0];
  *(v89 + 9) = *(v99 + 9);
  v88[2] = v94;
  v88[3] = v95;
  v88[4] = v96;
  v88[5] = v97;
  v88[0] = v92;
  v88[1] = v93;
  sub_1D62B49F0(v88);
  v90[6] = v106;
  v91[0] = v107[0];
  *(v91 + 9) = *(v107 + 9);
  v90[2] = v102;
  v90[3] = v103;
  v90[4] = v104;
  v90[5] = v105;
  v90[0] = v100;
  v90[1] = v101;
  sub_1D62B49F0(v90);
  v98 = __src[6];
  v99[0] = __src[7];
  *(v99 + 9) = *(&__src[7] + 9);
  v94 = __src[2];
  v95 = __src[3];
  v96 = __src[4];
  v97 = __src[5];
  v92 = __src[0];
  v93 = __src[1];
  sub_1D66615F8(&v92, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v57, sub_1D5C34D84);
  if (!v58)
  {
    goto LABEL_26;
  }

LABEL_29:
  swift_beginAccess();
  v59 = *(a1 + 212);
  v60 = *(a1 + 216);
  swift_beginAccess();
  v61 = *(a2 + 212);
  v62 = *(a2 + 216);
  if (!v60)
  {
    if (*(a2 + 216))
    {
      goto LABEL_26;
    }

LABEL_34:
    if (v59 != v61)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  if (v60 == 1)
  {
    if (v62 != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (v59 == 0.0)
  {
    if (v62 != 2 || v61 != 0.0)
    {
      goto LABEL_26;
    }
  }

  else if (LODWORD(v59) == 1)
  {
    if (v62 != 2 || LODWORD(v61) != 1)
    {
      goto LABEL_26;
    }
  }

  else if (v62 != 2 || LODWORD(v61) != 2)
  {
    goto LABEL_26;
  }

LABEL_46:
  swift_beginAccess();
  v63 = *(a1 + 224);
  swift_beginAccess();
  if (v63 != *(a2 + 224))
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  *&__src[0] = *(a1 + 232);
  v64 = *&__src[0];
  swift_beginAccess();
  *&__dst[0] = *(a2 + 232);
  v65 = *&__dst[0];
  sub_1D5EB1500(v64);
  sub_1D5EB1500(v65);
  LOBYTE(v64) = static FormatVisibility.== infix(_:_:)(__src, __dst);
  sub_1D5EB15C4(*&__dst[0]);
  sub_1D5EB15C4(*&__src[0]);
  if ((v64 & 1) == 0)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v66 = *(a1 + 240);
  swift_beginAccess();
  if (v66 != *(a2 + 240))
  {
    goto LABEL_26;
  }

  v67 = *(a1 + 256);
  v68 = *(a2 + 256);
  if (v67 <= 0xFD)
  {
    v69 = *(a2 + 248);
    *&__src[0] = *(a1 + 248);
    BYTE8(__src[0]) = v67;
    if (v68 > 0xFD)
    {
      goto LABEL_26;
    }

    *&__dst[0] = v69;
    BYTE8(__dst[0]) = v68;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(__src, __dst) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v68 <= 0xFD)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v70 = *(a1 + 264);
  swift_beginAccess();
  v71 = *(a2 + 264);

  v72 = sub_1D5BFC390(v70, v71);

  if (v72)
  {
    v73 = *(a1 + 272);
    v74 = *(a1 + 280);
    v75 = *(a1 + 288);
    v86 = *(a1 + 296);
    v87 = *(a1 + 304);
    v85 = *(a1 + 312);
    v76 = *(a2 + 272);
    v77 = *(a2 + 280);
    v78 = *(a2 + 288);
    v79 = *(a2 + 296);
    v84 = *(a2 + 304);
    v80 = v73;
    if (v73)
    {
      *&__src[0] = v73;
      *(&__src[0] + 1) = v74;
      *&__src[1] = v75;
      *(&__src[1] + 1) = v86;
      *&__src[2] = v87;
      *(&__src[2] + 1) = v85;
      if (v76)
      {
        *&__dst[0] = v76;
        *(&__dst[0] + 1) = v77;
        *&__dst[1] = v78;
        *(&__dst[1] + 1) = v79;
        __dst[2] = v84;
        sub_1D5EB1D80(v73, v74, v75, v86, v87);
        sub_1D5EB1D80(v76, v77, v78, v79, v84);
        v81 = v75;
        sub_1D5EB1D80(v80, v74, v75, v86, v87);
        v55 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(__src, __dst);
        v82 = *&__dst[2];

        sub_1D5CBF568(v82);

        v83 = *&__src[2];

        sub_1D5CBF568(v83);

        sub_1D5EB2398(v80, v74, v81, v86, v87);
        return v55 & 1;
      }

      sub_1D5EB1D80(v73, v74, v75, v86, v87);
      sub_1D5EB1D80(0, v77, v78, v79, v84);
      sub_1D5EB1D80(v80, v74, v75, v86, v87);

      sub_1D5CBF568(v87);
    }

    else
    {
      sub_1D5EB1D80(0, v74, v75, v86, v87);
      if (!v76)
      {
        sub_1D5EB1D80(0, v77, v78, v79, v84);
        sub_1D5EB2398(0, v74, v75, v86, v87);
        v55 = 1;
        return v55 & 1;
      }

      sub_1D5EB1D80(v76, v77, v78, v79, v84);
    }

    sub_1D5EB2398(v80, v74, v75, v86, v87);
    sub_1D5EB2398(v76, v77, v78, v79, v84);
  }

LABEL_26:
  v55 = 0;
  return v55 & 1;
}

uint64_t _s8NewsFeed13FormatSnippetC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v7 = a1[4];
  v8 = a1[5];
  swift_beginAccess();
  v9 = a2[5];
  if (v8)
  {
    if (!v9 || (v7 != a2[4] || v8 != v9) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v9)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v10 = a1[6];
  v11 = a1[7];
  swift_beginAccess();
  v12 = a2[7];
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

LABEL_24:
    v24 = 0;
    return v24 & 1;
  }

  if (!v12 || (v10 != a2[6] || v11 != v12) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  swift_beginAccess();
  v13 = a1[8];
  swift_beginAccess();
  v14 = a2[8];

  v15 = sub_1D633E44C(v13, v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v16 = a1[9];
  swift_beginAccess();
  v17 = a2[9];

  v18 = sub_1D635B244(v16, v17, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption);

  if ((v18 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v19 = a1[10];
  swift_beginAccess();
  v20 = a2[10];

  v21 = sub_1D5BFC390(v19, v20);

  if ((v21 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v22 = a1[11];
  swift_beginAccess();
  v23 = a2[11];

  v24 = sub_1D63491BC(v22, v23);

  return v24 & 1;
}

uint64_t _s8NewsFeed13FormatArticleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33[-v6];
  v8 = type metadata accessor for FormatArticleOverrides();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33[-v14];
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_1D72646CC()) && (v16 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides, swift_beginAccess(), sub_1D665F27C(a1 + v16, v7, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault), sub_1D5C8F76C(v7, v15, type metadata accessor for FormatArticleOverrides), v17 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides, swift_beginAccess(), sub_1D665F27C(a2 + v17, v7, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault), sub_1D5C8F76C(v7, v11, type metadata accessor for FormatArticleOverrides), v18 = _s8NewsFeed22FormatArticleOverridesV2eeoiySbAC_ACtFZ_0(v15, v11), sub_1D5D2CFE8(v11, type metadata accessor for FormatArticleOverrides), sub_1D5D2CFE8(v15, type metadata accessor for FormatArticleOverrides), v18) && (v19 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors, swift_beginAccess(), v20 = *(a1 + v19), v21 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors, swift_beginAccess(), v22 = *(a2 + v21), , , v23 = sub_1D5BFC390(v20, v22), , , (v23) && (v24 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties, swift_beginAccess(), v25 = *(a1 + v24), v26 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties, swift_beginAccess(), v27 = *(a2 + v26), , , v28 = sub_1D6339F3C(v25, v27), , , (v28))
  {
    v29 = *(a1 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
    v30 = *(a2 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
    v31 = (v29 | v30) == 0;
    if (v29 && v30)
    {

      v31 = _s8NewsFeed13FormatArticleC2eeoiySbAC_ACtFZ_0(v29, v30);
    }
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t _s8NewsFeed12FormatRecipeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v30[-v6];
  v8 = type metadata accessor for FormatRecipeOverrides();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30[-v14];
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_1D72646CC()) && (v16 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides, swift_beginAccess(), sub_1D665F27C(a1 + v16, v7, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault), sub_1D5C8F76C(v7, v15, type metadata accessor for FormatRecipeOverrides), v17 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides, swift_beginAccess(), sub_1D665F27C(a2 + v17, v7, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault), sub_1D5C8F76C(v7, v11, type metadata accessor for FormatRecipeOverrides), v18 = _s8NewsFeed21FormatRecipeOverridesV2eeoiySbAC_ACtFZ_0(v15, v11), sub_1D5D2CFE8(v11, type metadata accessor for FormatRecipeOverrides), sub_1D5D2CFE8(v15, type metadata accessor for FormatRecipeOverrides), v18) && (v19 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors, swift_beginAccess(), v20 = *(a1 + v19), v21 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors, swift_beginAccess(), v22 = *(a2 + v21), , , v23 = sub_1D5BFC390(v20, v22), , , (v23))
  {
    v24 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties;
    swift_beginAccess();
    v25 = *(a1 + v24);
    v26 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties;
    swift_beginAccess();
    v27 = *(a2 + v26);

    v28 = sub_1D6339F3C(v25, v27);
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t _s8NewsFeed12FormatPuzzleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (v5 = 0, (sub_1D72646CC() & 1) != 0))
  {
    swift_beginAccess();
    v6 = *(a1 + 112);
    v7 = *(a1 + 144);
    v53 = *(a1 + 128);
    v54 = v7;
    v8 = *(a1 + 144);
    v55 = *(a1 + 160);
    v9 = *(a1 + 48);
    v10 = *(a1 + 80);
    v49 = *(a1 + 64);
    v50 = v10;
    v11 = *(a1 + 80);
    v12 = *(a1 + 112);
    v51 = *(a1 + 96);
    v52 = v12;
    v13 = *(a1 + 48);
    v48[0] = *(a1 + 32);
    v48[1] = v13;
    v45 = v53;
    v46 = v8;
    v47 = *(a1 + 160);
    v41 = v49;
    v42 = v11;
    v43 = v51;
    v44 = v6;
    v39 = v48[0];
    v40 = v9;
    swift_beginAccess();
    v14 = *(a2 + 112);
    v15 = *(a2 + 144);
    v61 = *(a2 + 128);
    v62 = v15;
    v16 = *(a2 + 144);
    v63 = *(a2 + 160);
    v17 = *(a2 + 48);
    v18 = *(a2 + 80);
    v57 = *(a2 + 64);
    v58 = v18;
    v19 = *(a2 + 80);
    v20 = *(a2 + 112);
    v59 = *(a2 + 96);
    v60 = v20;
    v21 = *(a2 + 48);
    v56[0] = *(a2 + 32);
    v56[1] = v21;
    v36 = v61;
    v37 = v16;
    v38 = *(a2 + 160);
    v32 = v57;
    v33 = v19;
    v34 = v59;
    v35 = v14;
    v30 = v56[0];
    v31 = v17;
    v22 = _s8NewsFeed12FormatPuzzleC9OverridesV2eeoiySbAE_AEtFZ_0(&v39, &v30);
    v64[6] = v36;
    v64[7] = v37;
    v64[8] = v38;
    v64[2] = v32;
    v64[3] = v33;
    v64[4] = v34;
    v64[5] = v35;
    v64[0] = v30;
    v64[1] = v31;
    sub_1D5E9E6F8(v48, v29);
    sub_1D5E9E6F8(v56, v29);
    sub_1D6702788(v64);
    v65[6] = v45;
    v65[7] = v46;
    v65[8] = v47;
    v65[2] = v41;
    v65[3] = v42;
    v65[4] = v43;
    v65[5] = v44;
    v65[0] = v39;
    v65[1] = v40;
    sub_1D6702788(v65);
    if (v22 & 1) != 0 && (swift_beginAccess(), v23 = *(a1 + 176), swift_beginAccess(), v24 = *(a2 + 176), , , v25 = sub_1D5BFC390(v23, v24), , , (v25))
    {
      swift_beginAccess();
      v26 = *(a1 + 184);
      swift_beginAccess();
      v27 = *(a2 + 184);

      v5 = sub_1D6339F3C(v26, v27);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t _s8NewsFeed11FormatIssueC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (sub_1D72646CC()) && (v5 = *(a1 + 56), v18 = *(a1 + 32), v19 = *(a1 + 40), v20 = v5, v6 = *(a2 + 56), v15 = *(a2 + 32), v16 = *(a2 + 40), v17 = v6, v7 = _s8NewsFeed16FormatAudioTrackV9OverridesV2eeoiySbAE_AEtFZ_0(&v18, &v15), , , , , , , , , (v7) && (swift_beginAccess(), v8 = *(a1 + 64), swift_beginAccess(), v9 = *(a2 + 64), , , v10 = sub_1D5BFC390(v8, v9), , , (v10))
  {
    swift_beginAccess();
    v11 = *(a1 + 72);
    swift_beginAccess();
    v12 = *(a2 + 72);

    v13 = sub_1D6339F3C(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t _s8NewsFeed11FormatBlockC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_1D72646CC()) && (swift_beginAccess(), v5 = a1[4], swift_beginAccess(), v6 = a2[4], , , v7 = sub_1D633E44C(v5, v6), , , (v7) && (swift_beginAccess(), v8 = a1[5], swift_beginAccess(), v9 = a2[5], , , v10 = sub_1D635B244(v8, v9, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption), , , (v10))
  {
    swift_beginAccess();
    v11 = a1[6];
    swift_beginAccess();
    v12 = a2[6];

    v13 = sub_1D5BFC390(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t _s8NewsFeed16FormatButtonNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v76 = *(a1 + 32);
  swift_beginAccess();
  v70 = *(a2 + 32);
  sub_1D5C82CD8(v76);
  sub_1D5C82CD8(v70);
  v7 = static FormatSize.== infix(_:_:)(&v76, &v70);
  sub_1D5C92A8C(v70);
  sub_1D5C92A8C(v76);
  if ((v7 & 1) == 0)
  {
    goto LABEL_35;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_35;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v9)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v17 & 1) == 0)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v18 = *(a1 + 56);
  swift_beginAccess();
  if (v18 != *(a2 + 56))
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v76 = *(a1 + 64);
  v19 = v76;
  swift_beginAccess();
  v70 = *(a2 + 64);
  v20 = v70;
  sub_1D5EB1500(v19);
  sub_1D5EB1500(v20);
  LOBYTE(v19) = static FormatVisibility.== infix(_:_:)(&v76, &v70);
  sub_1D5EB15C4(v70);
  sub_1D5EB15C4(v76);
  if ((v19 & 1) == 0)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v21 = *(a1 + 72);
  swift_beginAccess();
  if (v21 != *(a2 + 72))
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v22 = *(a1 + 80);
  swift_beginAccess();
  v23 = *(a2 + 80);

  v24 = sub_1D633E44C(v22, v23);

  if ((v24 & 1) == 0)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v25 = *(a1 + 88);
  swift_beginAccess();
  v26 = *(a2 + 88);

  v27 = sub_1D634F3EC(v25, v26);

  if ((v27 & 1) == 0)
  {
    goto LABEL_35;
  }

  v76 = *(a1 + 96);
  v70 = *(a2 + 96);

  v28 = static FormatButtonNodeAction.== infix(_:_:)(&v76, &v70);

  if ((v28 & 1) == 0)
  {
    goto LABEL_35;
  }

  v29 = *(a1 + 104);
  v30 = *(a2 + 104);
  if ((~v29 & 0xF000000000000007) != 0)
  {
    v76 = *(a1 + 104);
    if ((~v30 & 0xF000000000000007) == 0)
    {
      goto LABEL_33;
    }

    v70 = v30;
    sub_1D5CFCFAC(v29);
    sub_1D5CFCFAC(v30);
    sub_1D5CFCFAC(v29);
    v31 = static FormatTextContent.== infix(_:_:)(&v76, &v70);

    sub_1D5C84FF4(v29);
    if ((v31 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    sub_1D5CFCFAC(*(a1 + 104));
    sub_1D5CFCFAC(v30);
    if ((~v30 & 0xF000000000000007) != 0)
    {
      goto LABEL_34;
    }

    sub_1D5C84FF4(v29);
  }

  v29 = *(a1 + 112);
  v30 = *(a2 + 112);
  if ((~v29 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(*(a1 + 112));
    sub_1D5CFCFAC(v30);
    if ((~v30 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v29);
      goto LABEL_29;
    }

LABEL_34:
    sub_1D5C84FF4(v29);
    sub_1D5C84FF4(v30);
    goto LABEL_35;
  }

  v76 = *(a1 + 112);
  if ((~v30 & 0xF000000000000007) == 0)
  {
LABEL_33:
    sub_1D5CFCFAC(v29);
    sub_1D5CFCFAC(v30);
    sub_1D5CFCFAC(v29);

    goto LABEL_34;
  }

  v70 = v30;
  sub_1D5CFCFAC(v29);
  sub_1D5CFCFAC(v30);
  sub_1D5CFCFAC(v29);
  v32 = static FormatButtonNodeAction.== infix(_:_:)(&v76, &v70);

  sub_1D5C84FF4(v29);
  if ((v32 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  v29 = *(a1 + 120);
  v30 = *(a2 + 120);
  if ((~v29 & 0xF000000000000007) != 0)
  {
    v76 = *(a1 + 120);
    if ((~v30 & 0xF000000000000007) != 0)
    {
      v70 = v30;
      sub_1D5CFCFAC(v29);
      sub_1D5CFCFAC(v30);
      sub_1D5CFCFAC(v29);
      v35 = static FormatTextContent.== infix(_:_:)(&v76, &v70);

      sub_1D5C84FF4(v29);
      if ((v35 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    goto LABEL_33;
  }

  sub_1D5CFCFAC(*(a1 + 120));
  sub_1D5CFCFAC(v30);
  if ((~v30 & 0xF000000000000007) != 0)
  {
    goto LABEL_34;
  }

  sub_1D5C84FF4(v29);
LABEL_38:
  v36 = *(a1 + 136);
  v37 = *(a2 + 136);
  if (v36 <= 0xFD)
  {
    v38 = *(a2 + 128);
    v76 = *(a1 + 128);
    LOBYTE(v77) = v36;
    if (v37 > 0xFD)
    {
      goto LABEL_35;
    }

    v70 = v38;
    LOBYTE(v71) = v37;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v76, &v70) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v37 <= 0xFD)
  {
    goto LABEL_35;
  }

  v39 = *(a1 + 144);
  v40 = *(a2 + 144);
  if (v39)
  {
    if (!v40)
    {
      goto LABEL_35;
    }

    v41 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v39, v40);

    if ((v41 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v40)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v42 = *(a1 + 152);
  swift_beginAccess();
  v43 = *(a2 + 152);

  v44 = sub_1D5BFC390(v42, v43);

  if (v44)
  {
    swift_beginAccess();
    v45 = *(a1 + 160);
    v46 = *(a1 + 168);
    swift_beginAccess();
    v47 = *(a2 + 168);
    if (v46)
    {
      if (!v47 || (v45 != *(a2 + 160) || v46 != v47) && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v47)
    {
      goto LABEL_35;
    }

    swift_beginAccess();
    v48 = *(a1 + 176);
    swift_beginAccess();
    v49 = *(a2 + 176);

    v50 = sub_1D5D6174C(v48, v49, MEMORY[0x1E69D6A58], &qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);

    if (v50)
    {
      swift_beginAccess();
      v51 = *(a1 + 184);
      swift_beginAccess();
      v52 = *(a2 + 184);

      v53 = sub_1D634EB4C(v51, v52);

      if (v53)
      {
        v54 = *(a1 + 192);
        v55 = *(a1 + 200);
        v56 = *(a1 + 208);
        v67 = *(a1 + 216);
        v68 = *(a1 + 224);
        v69 = *(a1 + 232);
        v57 = *(a2 + 192);
        v58 = *(a2 + 200);
        v59 = *(a2 + 208);
        v60 = *(a2 + 216);
        v65 = *(a2 + 224);
        v66 = *(a2 + 232);
        v61 = v54;
        if (v54)
        {
          v76 = v54;
          v77 = v55;
          v78 = v56;
          v79 = v67;
          v80 = v68;
          v81 = v69;
          v64 = v55;
          if (v57)
          {
            v70 = v57;
            v71 = v58;
            v72 = v59;
            v73 = v60;
            v74 = v65;
            v75 = v66;
            sub_1D5EB1D80(v54, v55, v56, v67, v68);
            sub_1D5EB1D80(v57, v58, v59, v60, v65);
            sub_1D5EB1D80(v61, v55, v56, v67, v68);
            v33 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v76, &v70);
            v62 = v74;

            sub_1D5CBF568(v62);

            v63 = v80;

            sub_1D5CBF568(v63);

            sub_1D5EB2398(v61, v64, v56, v67, v68);
            return v33 & 1;
          }

          sub_1D5EB1D80(v54, v55, v56, v67, v68);
          sub_1D5EB1D80(0, v58, v59, v60, v65);
          sub_1D5EB1D80(v61, v55, v56, v67, v68);

          sub_1D5CBF568(v68);
        }

        else
        {
          sub_1D5EB1D80(0, v55, v56, v67, v68);
          if (!v57)
          {
            sub_1D5EB1D80(0, v58, v59, v60, v65);
            sub_1D5EB2398(0, v55, v56, v67, v68);
            v33 = 1;
            return v33 & 1;
          }

          sub_1D5EB1D80(v57, v58, v59, v60, v65);
        }

        sub_1D5EB2398(v61, v55, v56, v67, v68);
        sub_1D5EB2398(v57, v58, v59, v60, v65);
      }
    }
  }

LABEL_35:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s8NewsFeed23FormatAccessibilityNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v7 = *(a1 + 40);
  v68 = *(a1 + 32);
  LOBYTE(v69) = v7;
  swift_beginAccess();
  v8 = *(a2 + 40);
  v60 = *(a2 + 32);
  LOBYTE(v61) = v8;
  sub_1D5D07778(v68, v7);
  sub_1D5D07778(v60, v8);
  v9 = _s8NewsFeed27FormatAccessibilityPropertyO2eeoiySbAC_ACtFZ_0(&v68, &v60);
  sub_1D5D06D9C(v60, v61);
  sub_1D5D06D9C(v68, v69);
  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v53 = *(a1 + 56);
  v54 = *(a1 + 64);
  v55 = *(a1 + 72);
  v51 = *(a1 + 48);
  v52 = *(a1 + 80);
  v58 = *(a1 + 88);
  v10 = *(a1 + 98);
  v11 = *(a1 + 96) | (*(a1 + 98) << 16);
  swift_beginAccess();
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  v15 = *(a2 + 64);
  v14 = *(a2 + 72);
  v17 = *(a2 + 80);
  v16 = *(a2 + 88);
  v18 = *(a2 + 96) | (*(a2 + 98) << 16);
  v50 = v13;
  if ((v10 >> 1) <= 0x7Eu)
  {
    v68 = v51;
    v69 = v53;
    v70 = v54;
    v71 = v55;
    v72 = v52;
    v73 = v58;
    v74 = v11;
    v75 = BYTE2(v11);
    if (((v18 >> 17) & 0x7F) == 0x7F)
    {
      v49 = v12;
      v20 = v15;
      v21 = v14;
      v22 = v17;
      v23 = v16;
      sub_1D6046038(v51, v53, v54, v55, v52, v58, v11);
      v26 = v13;
      v25 = v49;
      sub_1D6046038(v26, v49, v20, v21, v22, v23, v18);
      sub_1D6046038(v51, v53, v54, v55, v52, v58, v11);
      sub_1D5D0A678(v51, v53, v54, v55, v52, v58, v11);
      goto LABEL_12;
    }

    v60 = v13;
    v61 = v12;
    v62 = v15;
    v63 = v14;
    v64 = v17;
    v65 = v16;
    v66 = v18;
    v67 = BYTE2(v18);
    v28 = v16;
    sub_1D6046038(v51, v53, v54, v55, v52, v58, v11);
    sub_1D6046038(v13, v12, v15, v14, v17, v28, v18);
    sub_1D6046038(v51, v53, v54, v55, v52, v58, v11);
    v29 = static FormatComputedInvalidation.== infix(_:_:)(&v68, &v60);
    sub_1D5D0A678(v60, v61, v62, v63, v64, v65, v66 | (v67 << 16));
    sub_1D5D0A678(v68, v69, v70, v71, v72, v73, v74 | (v75 << 16));
    sub_1D5C67600(v51, v53, v54, v55, v52, v58, v11);
    if (v29)
    {
LABEL_14:
      v31 = *(a1 + 104);
      v30 = *(a1 + 112);
      v32 = *(a1 + 120);
      v33 = *(a1 + 128);
      v35 = *(a1 + 136);
      v34 = *(a1 + 144);
      v37 = *(a2 + 104);
      v36 = *(a2 + 112);
      v38 = *(a2 + 120);
      v59 = *(a2 + 128);
      v39 = *(a2 + 136);
      v40 = *(a2 + 144);
      if (v31)
      {
        v68 = v31;
        v69 = v30;
        v70 = v32;
        v71 = v33;
        v72 = v35;
        v73 = v34;
        if (v37)
        {
          v60 = v37;
          v61 = v36;
          v62 = v38;
          v63 = v59;
          v64 = v39;
          v65 = v40;
          v41 = v33;
          v56 = v38;
          v42 = v33;
          v43 = v35;
          v44 = v39;
          sub_1D5EB1D80(v31, v30, v32, v41, v43);
          sub_1D5EB1D80(v37, v36, v56, v59, v44);
          sub_1D5EB1D80(v31, v30, v32, v42, v43);
          v27 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v68, &v60);
          v45 = v64;

          sub_1D5CBF568(v45);

          v46 = v72;

          sub_1D5CBF568(v46);

          sub_1D5EB2398(v31, v30, v32, v42, v43);
          return v27 & 1;
        }

        v48 = v39;
        sub_1D5EB1D80(v31, v30, v32, v33, v35);
        v57 = v48;
        sub_1D5EB1D80(0, v36, v38, v59, v48);
        sub_1D5EB1D80(v31, v30, v32, v33, v35);

        sub_1D5CBF568(v35);
      }

      else
      {
        v57 = v39;
        sub_1D5EB1D80(0, v30, v32, v33, v35);
        if (!v37)
        {
          sub_1D5EB1D80(0, v36, v38, v59, v57);
          sub_1D5EB2398(0, v30, v32, v33, v35);
          v27 = 1;
          return v27 & 1;
        }

        sub_1D5EB1D80(v37, v36, v38, v59, v57);
      }

      sub_1D5EB2398(v31, v30, v32, v33, v35);
      sub_1D5EB2398(v37, v36, v38, v59, v57);
      v27 = 0;
      return v27 & 1;
    }

LABEL_17:
    v27 = 0;
    return v27 & 1;
  }

  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  v21 = *(a2 + 72);
  v22 = *(a2 + 80);
  v23 = *(a2 + 88);
  sub_1D6046038(v51, v53, v54, v55, v52, v58, v11);
  v24 = v13;
  v25 = v19;
  sub_1D6046038(v24, v19, v20, v21, v22, v23, v18);
  if (((v18 >> 17) & 0x7F) == 0x7F)
  {
    sub_1D5C67600(v51, v53, v54, v55, v52, v58, v11);
    goto LABEL_14;
  }

LABEL_12:
  sub_1D5C67600(v51, v53, v54, v55, v52, v58, v11);
  sub_1D5C67600(v50, v25, v20, v21, v22, v23, v18);
  v27 = 0;
  return v27 & 1;
}