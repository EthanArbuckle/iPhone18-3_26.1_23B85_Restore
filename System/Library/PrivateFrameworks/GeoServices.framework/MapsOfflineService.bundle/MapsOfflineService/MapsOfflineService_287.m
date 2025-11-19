__n128 sub_11B2D88(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 <= *a1)
  {
    if (v6 > v5)
    {
      v11 = *a2;
      *v38 = a2[1];
      *&v38[16] = a2[2];
      result = *(a3 + 28);
      v12 = a3[1];
      *a2 = *a3;
      a2[1] = v12;
      *(a2 + 28) = result;
      *a3 = v11;
      a3[1] = *v38;
      result.n128_u64[1] = *&v38[20];
      *(a3 + 28) = *&v38[12];
      if (*a2 > *a1)
      {
        v14 = *a1;
        *v39 = a1[1];
        *&v39[16] = a1[2];
        result = *(a2 + 28);
        v15 = a2[1];
        *a1 = *a2;
        a1[1] = v15;
        *(a1 + 28) = result;
        *a2 = v14;
        a2[1] = *v39;
        result.n128_u64[1] = *&v39[20];
        *(a2 + 28) = *&v39[12];
      }
    }
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a1[1];
      v8 = *a1;
      *v48 = HIDWORD(v7);
      *&v48[4] = a1[2];
      v9 = *(a3 + 28);
      v10 = a3[1];
      *a1 = *a3;
      a1[1] = v10;
      *(a1 + 28) = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = v7;
      result.n128_u64[1] = *&v48[8];
      *(a3 + 28) = *v48;
      goto LABEL_10;
    }

    v16 = *a1;
    *v40 = a1[1];
    *&v40[16] = a1[2];
    result = *(a2 + 28);
    v17 = a2[1];
    *a1 = *a2;
    a1[1] = v17;
    *(a1 + 28) = result;
    *a2 = v16;
    a2[1] = *v40;
    result.n128_u64[1] = *&v40[20];
    *(a2 + 28) = *&v40[12];
    if (*a3 > *a2)
    {
      v7 = a2[1];
      v8 = *a2;
      *v48 = HIDWORD(v7);
      *&v48[4] = a2[2];
      v18 = *(a3 + 28);
      v19 = a3[1];
      *a2 = *a3;
      a2[1] = v19;
      *(a2 + 28) = v18;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    v20 = *a3;
    *v41 = a3[1];
    *&v41[16] = a3[2];
    result = *(a4 + 28);
    v21 = a4[1];
    *a3 = *a4;
    a3[1] = v21;
    *(a3 + 28) = result;
    *a4 = v20;
    a4[1] = *v41;
    result.n128_u64[1] = *&v41[20];
    *(a4 + 28) = *&v41[12];
    if (*a3 > *a2)
    {
      v22 = *a2;
      *v42 = a2[1];
      *&v42[16] = a2[2];
      result = *(a3 + 28);
      v23 = a3[1];
      *a2 = *a3;
      a2[1] = v23;
      *(a2 + 28) = result;
      *a3 = v22;
      a3[1] = *v42;
      result.n128_u64[1] = *&v42[20];
      *(a3 + 28) = *&v42[12];
      if (*a2 > *a1)
      {
        v24 = *a1;
        *v43 = a1[1];
        *&v43[16] = a1[2];
        result = *(a2 + 28);
        v25 = a2[1];
        *a1 = *a2;
        a1[1] = v25;
        *(a1 + 28) = result;
        *a2 = v24;
        a2[1] = *v43;
        result.n128_u64[1] = *&v43[20];
        *(a2 + 28) = *&v43[12];
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 > *a4)
  {
    v26 = *a4;
    *v44 = a4[1];
    *&v44[16] = a4[2];
    v27 = *(a5 + 28);
    v28 = a5[1];
    *a4 = *a5;
    a4[1] = v28;
    *(a4 + 28) = v27;
    *a5 = v26;
    a5[1] = *v44;
    result.n128_u64[1] = *&v44[20];
    *(a5 + 28) = *&v44[12];
    result.n128_u64[0] = *a4;
    if (*a4 > *a3)
    {
      v29 = *a3;
      *v45 = a3[1];
      *&v45[16] = a3[2];
      v30 = *(a4 + 28);
      v31 = a4[1];
      *a3 = *a4;
      a3[1] = v31;
      *(a3 + 28) = v30;
      *a4 = v29;
      a4[1] = *v45;
      result.n128_u64[1] = *&v45[20];
      *(a4 + 28) = *&v45[12];
      result.n128_u64[0] = *a3;
      if (*a3 > *a2)
      {
        v32 = *a2;
        *v46 = a2[1];
        *&v46[16] = a2[2];
        v33 = *(a3 + 28);
        v34 = a3[1];
        *a2 = *a3;
        a2[1] = v34;
        *(a2 + 28) = v33;
        *a3 = v32;
        a3[1] = *v46;
        result.n128_u64[1] = *&v46[20];
        *(a3 + 28) = *&v46[12];
        result.n128_u64[0] = *a2;
        if (*a2 > *a1)
        {
          v35 = *a1;
          *v47 = a1[1];
          *&v47[16] = a1[2];
          v36 = *(a2 + 28);
          v37 = a2[1];
          *a1 = *a2;
          a1[1] = v37;
          *(a1 + 28) = v36;
          *a2 = v35;
          a2[1] = *v47;
          result = *&v47[12];
          *(a2 + 28) = *&v47[12];
        }
      }
    }
  }

  return result;
}

BOOL sub_11B3024(__int128 *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1 + 3;
      v7 = *(a1 + 6);
      v8 = *(a2 - 6);
      v3 = a2 - 3;
      v9 = v8;
      if (v7 > *a1)
      {
        if (v9 > v7)
        {
LABEL_12:
          v10 = a1[1];
          v11 = *a1;
          *v79 = HIDWORD(v10);
          *&v79[4] = a1[2];
          v12 = *(v3 + 28);
          v13 = v3[1];
          *a1 = *v3;
          a1[1] = v13;
          *(a1 + 28) = v12;
LABEL_13:
          *v3 = v11;
          v3[1] = v10;
          *(v3 + 28) = *v79;
          return 1;
        }

        v41 = *a1;
        *v72 = a1[1];
        *&v72[16] = a1[2];
        v42 = a1[4];
        *a1 = *v6;
        a1[1] = v42;
        *(a1 + 28) = *(a1 + 76);
        *v6 = v41;
        a1[4] = *v72;
        *(a1 + 76) = *&v72[12];
        if (*v3 > *(a1 + 6))
        {
          v10 = a1[4];
          v11 = *v6;
          *v79 = HIDWORD(v10);
          *&v79[4] = a1[5];
          v43 = *(v3 + 28);
          v44 = v3[1];
          *v6 = *v3;
          a1[4] = v44;
          *(a1 + 76) = v43;
          goto LABEL_13;
        }

        return 1;
      }

      if (v9 <= v7)
      {
        return 1;
      }

      v30 = *v6;
      *v67 = a1[4];
      *&v67[16] = a1[5];
      v31 = *(v3 + 28);
      v32 = v3[1];
      *v6 = *v3;
      a1[4] = v32;
      *(a1 + 76) = v31;
      *v3 = v30;
      v3[1] = *v67;
      *(v3 + 28) = *&v67[12];
LABEL_49:
      if (*(a1 + 6) > *a1)
      {
        v64 = *a1;
        *v78 = a1[1];
        *&v78[16] = a1[2];
        v65 = v6[1];
        *a1 = *v6;
        a1[1] = v65;
        *(a1 + 28) = *(v6 + 28);
        *v6 = v64;
        v6[1] = *v78;
        *(v6 + 28) = *&v78[12];
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_11B2D88(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        return 1;
      }

      goto LABEL_14;
    }

    v6 = a1 + 3;
    v22 = *(a1 + 6);
    v23 = a1 + 6;
    v24 = *(a1 + 12);
    v25 = (a2 - 3);
    v26 = *a1;
    if (v22 <= *a1)
    {
      if (v24 > v22)
      {
        v37 = *v6;
        *v70 = a1[4];
        *&v70[16] = a1[5];
        v38 = a1[7];
        *v6 = *v23;
        a1[4] = v38;
        *(a1 + 76) = *(a1 + 124);
        *v23 = v37;
        a1[7] = *v70;
        *(a1 + 124) = *&v70[12];
        if (*v6 > v26)
        {
          v39 = *a1;
          *v71 = a1[1];
          *&v71[16] = a1[2];
          v40 = a1[4];
          *a1 = *v6;
          a1[1] = v40;
          *(a1 + 28) = *(a1 + 76);
          *v6 = v39;
          a1[4] = *v71;
          *(a1 + 76) = *&v71[12];
        }
      }

      goto LABEL_46;
    }

    if (v24 <= v22)
    {
      v56 = *a1;
      *v75 = a1[1];
      *&v75[16] = a1[2];
      v57 = a1[4];
      *a1 = *v6;
      a1[1] = v57;
      *(a1 + 28) = *(a1 + 76);
      *v6 = v56;
      a1[4] = *v75;
      *(a1 + 76) = *&v75[12];
      if (v24 <= *(a1 + 6))
      {
        goto LABEL_46;
      }

      v27 = a1[4];
      v28 = *v6;
      *v81 = HIDWORD(v27);
      *&v81[4] = a1[5];
      v58 = a1[7];
      *v6 = *v23;
      a1[4] = v58;
      *(a1 + 76) = *(a1 + 124);
    }

    else
    {
      v27 = a1[1];
      v28 = *a1;
      *v81 = HIDWORD(v27);
      *&v81[4] = a1[2];
      v29 = a1[7];
      *a1 = *v23;
      a1[1] = v29;
      *(a1 + 28) = *(a1 + 124);
    }

    *v23 = v28;
    a1[7] = v27;
    *(a1 + 124) = *v81;
LABEL_46:
    if (*v25 <= *v23)
    {
      return 1;
    }

    v59 = *v23;
    *v76 = a1[7];
    *&v76[16] = a1[8];
    v60 = *(a2 - 20);
    v61 = *(a2 - 2);
    *v23 = *v25;
    a1[7] = v61;
    *(a1 + 124) = v60;
    *v25 = v59;
    *(a2 - 2) = *v76;
    *(a2 - 20) = *&v76[12];
    if (*v23 <= *v6)
    {
      return 1;
    }

    v62 = *v6;
    *v77 = a1[4];
    *&v77[16] = a1[5];
    v63 = a1[7];
    *v6 = *v23;
    a1[4] = v63;
    *(a1 + 76) = *(a1 + 124);
    *v23 = v62;
    a1[7] = *v77;
    *(a1 + 124) = *&v77[12];
    goto LABEL_49;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = *(a2 - 6);
    v3 = a2 - 3;
    if (v4 <= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v14 = a1 + 6;
  v15 = *(a1 + 12);
  v16 = a1 + 3;
  v17 = *(a1 + 6);
  v18 = *a1;
  if (v17 <= *a1)
  {
    if (v15 > v17)
    {
      v33 = *v16;
      *v68 = a1[4];
      *&v68[16] = a1[5];
      v34 = a1[7];
      *v16 = *v14;
      a1[4] = v34;
      *(a1 + 76) = *(a1 + 124);
      *v14 = v33;
      a1[7] = *v68;
      *(a1 + 124) = *&v68[12];
      if (*v16 > v18)
      {
        v35 = *a1;
        *v69 = a1[1];
        *&v69[16] = a1[2];
        v36 = a1[4];
        *a1 = *v16;
        a1[1] = v36;
        *(a1 + 28) = *(a1 + 76);
        *v16 = v35;
        a1[4] = *v69;
        *(a1 + 76) = *&v69[12];
      }
    }
  }

  else
  {
    if (v15 <= v17)
    {
      v45 = *a1;
      *v73 = a1[1];
      *&v73[16] = a1[2];
      v46 = a1[4];
      *a1 = *v16;
      a1[1] = v46;
      *(a1 + 28) = *(a1 + 76);
      *v16 = v45;
      a1[4] = *v73;
      *(a1 + 76) = *&v73[12];
      if (v15 <= *(a1 + 6))
      {
        goto LABEL_33;
      }

      v19 = a1[4];
      v20 = *v16;
      *v80 = HIDWORD(v19);
      *&v80[4] = a1[5];
      v47 = a1[7];
      *v16 = *v14;
      a1[4] = v47;
      *(a1 + 76) = *(a1 + 124);
    }

    else
    {
      v19 = a1[1];
      v20 = *a1;
      *v80 = HIDWORD(v19);
      *&v80[4] = a1[2];
      v21 = a1[7];
      *a1 = *v14;
      a1[1] = v21;
      *(a1 + 28) = *(a1 + 124);
    }

    *v14 = v20;
    a1[7] = v19;
    *(a1 + 124) = *v80;
  }

LABEL_33:
  v48 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v49 = 0;
  v50 = 0;
  while (1)
  {
    v52 = *v48;
    if (*v48 > *v14)
    {
      v66 = *(v48 + 8);
      v74 = *(v48 + 24);
      v82 = *(v48 + 5);
      v53 = v49;
      do
      {
        v54 = a1 + v53;
        v55 = *(a1 + v53 + 112);
        *(v54 + 9) = *(a1 + v53 + 96);
        *(v54 + 10) = v55;
        *(v54 + 172) = *(a1 + v53 + 124);
        if (v53 == -96)
        {
          v51 = a1;
          goto LABEL_36;
        }

        v53 -= 48;
      }

      while (v52 > *(v54 + 6));
      v51 = a1 + v53 + 144;
LABEL_36:
      *v51 = v52;
      *(v51 + 8) = v66;
      *(v51 + 24) = v74;
      *(v51 + 40) = v82;
      if (++v50 == 8)
      {
        return v48 + 3 == a2;
      }
    }

    v14 = v48;
    v49 += 48;
    v48 += 3;
    if (v48 == a2)
    {
      return 1;
    }
  }
}

void sub_11B352C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v4 + 48 * a2;
      v10 = 48 * a2;
      v11 = (v4 + 32);
      do
      {
        *(v11 - 4) = 0x7FEFFFFFFFFFFFFFLL;
        *(v11 - 3) = 0xFFFFFFFF00000000;
        *(v11 - 2) = -1;
        *(v11 - 1) = 0;
        *(v11 - 2) = 0x7FFFFFFF;
        *v11 = -1;
        v11[1] = 0;
        v11 += 6;
        v10 -= 48;
      }

      while (v10);
      *(a1 + 8) = v9;
    }

    else
    {
      *(a1 + 8) = v4;
    }
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x555555555555555)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 48 * v5;
    v13 = 48 * a2;
    v14 = 48 * v5 + 48 * a2;
    v15 = (48 * v5 + 16);
    do
    {
      *(v15 - 2) = 0x7FEFFFFFFFFFFFFFLL;
      *(v15 - 1) = 0xFFFFFFFF00000000;
      *v15 = -1;
      v15[1] = 0;
      *(v15 + 2) = 0x7FFFFFFF;
      v15[2] = -1;
      v15[3] = 0;
      v15 += 6;
      v13 -= 48;
    }

    while (v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

__n128 sub_11B377C(uint64_t a1, uint64_t a2)
{
  *a2 = off_2675CF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_11B37AC(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5[1];
  if (v6 <= 6)
  {
    v7 = qword_22B0EE8[v6];
    v8 = *v5;
    v9 = *a2;
    if (*v5[2] == 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (*(v8 + 64 + v7 + 2))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v7 = 101;
  v8 = *v5;
  v9 = *a2;
  if (*v5[2] != 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = sub_2B51D8(*(v8 + 8), v9);
  v11 = (v10 - *v10);
  if (*v11 >= 0x9Bu)
  {
    v12 = v11[77];
    if (v12)
    {
      if ((*(v10 + v12) & 8) != 0)
      {
        return 0;
      }
    }
  }

LABEL_9:
  v13 = *(a1 + 16);
  if (*(*v13 + 125) != 1 || *a3 == -1 && a3[1] == -1 || (sub_3B8540(**v13, a3) & 1) != 0)
  {
    return 1;
  }

  result = 0;
  ++**(v13 + 8);
  return result;
}

uint64_t sub_11B38D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing11RoadSnapper14snap_candidateERKNS0_12WaterSnapperERKNS0_15LocationDetailsENS0_11FerryOptionENS_4data13SnapPointTypeEbRKNSt3__113unordered_setINS9_17TypeSafeObjectRefINS9_16RoadSegmentIdTagEEENSB_4hashISF_EENSB_8equal_toISF_EENSB_9allocatorISF_EEEEbE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing11RoadSnapper14snap_candidateERKNS0_12WaterSnapperERKNS0_15LocationDetailsENS0_11FerryOptionENS_4data13SnapPointTypeEbRKNSt3__113unordered_setINS9_17TypeSafeObjectRefINS9_16RoadSegmentIdTagEEENSB_4hashISF_EENSB_8equal_toISF_EENSB_9allocatorISF_EEEEbE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing11RoadSnapper14snap_candidateERKNS0_12WaterSnapperERKNS0_15LocationDetailsENS0_11FerryOptionENS_4data13SnapPointTypeEbRKNSt3__113unordered_setINS9_17TypeSafeObjectRefINS9_16RoadSegmentIdTagEEENSB_4hashISF_EENSB_8equal_toISF_EENSB_9allocatorISF_EEEEbE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing11RoadSnapper14snap_candidateERKNS0_12WaterSnapperERKNS0_15LocationDetailsENS0_11FerryOptionENS_4data13SnapPointTypeEbRKNSt3__113unordered_setINS9_17TypeSafeObjectRefINS9_16RoadSegmentIdTagEEENSB_4hashISF_EENSB_8equal_toISF_EENSB_9allocatorISF_EEEEbE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_11B39D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_2675D78;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_11B3A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing11RoadSnapper14snap_candidateERKNS0_12WaterSnapperERKNS0_15LocationDetailsENS0_11FerryOptionENS_4data13SnapPointTypeEbRKNSt3__113unordered_setINS9_17TypeSafeObjectRefINS9_16RoadSegmentIdTagEEENSB_4hashISF_EENSB_8equal_toISF_EENSB_9allocatorISF_EEEEbE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing11RoadSnapper14snap_candidateERKNS0_12WaterSnapperERKNS0_15LocationDetailsENS0_11FerryOptionENS_4data13SnapPointTypeEbRKNSt3__113unordered_setINS9_17TypeSafeObjectRefINS9_16RoadSegmentIdTagEEENSB_4hashISF_EENSB_8equal_toISF_EENSB_9allocatorISF_EEEEbE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing11RoadSnapper14snap_candidateERKNS0_12WaterSnapperERKNS0_15LocationDetailsENS0_11FerryOptionENS_4data13SnapPointTypeEbRKNSt3__113unordered_setINS9_17TypeSafeObjectRefINS9_16RoadSegmentIdTagEEENSB_4hashISF_EENSB_8equal_toISF_EENSB_9allocatorISF_EEEEbE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing11RoadSnapper14snap_candidateERKNS0_12WaterSnapperERKNS0_15LocationDetailsENS0_11FerryOptionENS_4data13SnapPointTypeEbRKNSt3__113unordered_setINS9_17TypeSafeObjectRefINS9_16RoadSegmentIdTagEEENSB_4hashISF_EENSB_8equal_toISF_EENSB_9allocatorISF_EEEEbE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_11B3A94(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t *sub_11B3B20(uint64_t *result, _DWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 2;
    v8 = (v6 >> 2) + 1;
    if (v8 >> 62)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(4 * v7) = *a2;
    v12 = 4 * v7 + 4;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

void sub_11B3C44(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = (a2 - 136);
    v307 = (a2 - 408);
    v308 = (a2 - 272);
    v9 = a1;
    v309 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = a2 - v9;
          v11 = 0xF0F0F0F0F0F0F0F1 * ((a2 - v9) >> 3);
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                sub_11B55E0(a1, (a1 + 136), v8);
                return;
              case 4:
                sub_11B55E0(a1, (a1 + 136), (a1 + 272));
                if (*(a2 - 32) < *(a1 + 376))
                {
                  *&v315[8] = *(a1 + 288);
                  v121 = *(a1 + 272);
                  *v315 = *(a1 + 280);
                  v122 = *(a1 + 308);
                  *v324 = *(a1 + 292);
                  *&v324[16] = v122;
                  *&v324[29] = *(a1 + 321);
                  v123 = *(a1 + 344);
                  v124 = *(a1 + 368);
                  v125 = (a1 + 296);
                  v126 = *(a1 + 352);
                  *(a1 + 360) = 0;
                  *(a1 + 368) = 0;
                  *(a1 + 352) = 0;
                  *(a1 + 272) = *(a2 - 136);
                  v127 = *(a2 - 120);
                  *(a1 + 280) = *(a2 - 128);
                  *(a1 + 288) = v127;
                  v128 = *(a2 - 112);
                  v129 = *(a2 - 96);
                  *(a1 + 321) = *(a2 - 87);
                  *(a1 + 296) = v128;
                  *(a1 + 312) = v129;
                  *(a1 + 344) = *(a2 - 64);
                  v130 = *(a2 - 40);
                  *(a1 + 352) = *(a2 - 56);
                  *(a1 + 368) = v130;
                  *(a2 - 136) = v121;
                  v131 = *v315;
                  *(a2 - 120) = *&v315[8];
                  *(a2 - 128) = v131;
                  v132 = *&v324[4];
                  v133 = *&v324[20];
                  *(a2 - 87) = *&v324[29];
                  *(a2 - 112) = v132;
                  *(a2 - 96) = v133;
                  *(a2 - 64) = v123;
                  *(a2 - 56) = v126;
                  *(a2 - 40) = v124;
                  v134 = *(a1 + 376);
                  v135 = *(a1 + 400);
                  v136 = *(a1 + 384);
                  *(a1 + 392) = 0;
                  *(a1 + 400) = 0;
                  *(a1 + 384) = 0;
                  *(a1 + 376) = *(a2 - 32);
                  *(a1 + 384) = *(a2 - 24);
                  *(a1 + 400) = *(a2 - 8);
                  *(a2 - 32) = v134;
                  *(a2 - 24) = v136;
                  *(a2 - 8) = v135;
                  if (*(a1 + 376) < *(a1 + 240))
                  {
                    v137 = (a1 + 144);
                    v138 = *(a1 + 136);
                    *v315 = *(a1 + 144);
                    *&v315[8] = *(a1 + 152);
                    v139 = *(a1 + 172);
                    *v324 = *(a1 + 156);
                    *&v324[16] = v139;
                    *&v324[29] = *(a1 + 185);
                    LODWORD(v139) = *(a1 + 208);
                    v140 = *(a1 + 232);
                    v141 = *(a1 + 280);
                    v143 = *(a1 + 264);
                    v142 = *(a1 + 272);
                    *(a1 + 136) = v142;
                    *(a1 + 144) = v141;
                    *(a1 + 152) = *(a1 + 288);
                    v144 = *v125;
                    v145 = *(a1 + 312);
                    *(a1 + 185) = *(a1 + 321);
                    *(a1 + 160) = v144;
                    *(a1 + 176) = v145;
                    v146 = *(a1 + 344);
                    *(a1 + 208) = v146;
                    v147 = *v315;
                    *(a1 + 288) = *&v315[8];
                    *(a1 + 280) = v147;
                    v148 = *(a1 + 360);
                    v149 = *(a1 + 368);
                    v150 = *(a1 + 352);
                    v151 = *&v324[4];
                    v152 = *&v324[20];
                    *(a1 + 321) = *&v324[29];
                    *v125 = v151;
                    *(a1 + 312) = v152;
                    *(a1 + 344) = v139;
                    v153 = *(a1 + 216);
                    *(a1 + 216) = v150;
                    *(a1 + 224) = v148;
                    *(a1 + 232) = v149;
                    *(a1 + 352) = v153;
                    *(a1 + 368) = v140;
                    LODWORD(v153) = *(a1 + 240);
                    LODWORD(v151) = *(a1 + 376);
                    *(a1 + 240) = v151;
                    v154 = *(a1 + 384);
                    v155 = *(a1 + 392);
                    v156 = *(a1 + 400);
                    *(a1 + 264) = v156;
                    *(a1 + 272) = v138;
                    *(a1 + 376) = v153;
                    v157 = *(a1 + 248);
                    *(a1 + 248) = v154;
                    *(a1 + 256) = v155;
                    *(a1 + 384) = v157;
                    LODWORD(v157) = *(a1 + 104);
                    *(a1 + 400) = v143;
                    if (*&v151 < *&v157)
                    {
                      v158 = *a1;
                      *v315 = *(a1 + 8);
                      *&v315[8] = *(a1 + 16);
                      v159 = *(a1 + 36);
                      *v324 = *(a1 + 20);
                      *&v324[16] = v159;
                      *&v324[29] = *(a1 + 49);
                      v160 = *(a1 + 72);
                      v161 = *(a1 + 96);
                      v162 = *v137;
                      *a1 = v142;
                      *(a1 + 8) = v162;
                      *(a1 + 16) = *(a1 + 152);
                      v163 = *(a1 + 160);
                      v164 = *(a1 + 176);
                      *(a1 + 49) = *(a1 + 185);
                      *(a1 + 40) = v164;
                      *(a1 + 24) = v163;
                      *(a1 + 72) = v146;
                      *(a1 + 96) = v149;
                      v165 = *v315;
                      *(a1 + 152) = *&v315[8];
                      *v137 = v165;
                      v166 = *&v324[4];
                      v167 = *&v324[20];
                      *(a1 + 185) = *&v324[29];
                      *(a1 + 160) = v166;
                      *(a1 + 176) = v167;
                      *(a1 + 208) = v160;
                      v168 = *(a1 + 80);
                      *(a1 + 80) = v150;
                      *(a1 + 88) = v148;
                      *(a1 + 216) = v168;
                      *(a1 + 232) = v161;
                      LODWORD(v168) = *(a1 + 104);
                      v169 = *(a1 + 128);
                      *(a1 + 104) = *(a1 + 240);
                      *(a1 + 128) = v156;
                      *(a1 + 136) = v158;
                      *(a1 + 240) = v168;
                      v170 = *(a1 + 112);
                      *(a1 + 112) = v154;
                      *(a1 + 120) = v155;
                      *(a1 + 248) = v170;
                      *(a1 + 264) = v169;
                    }
                  }
                }

                return;
              case 5:
                sub_11B5B20(a1, a1 + 136, a1 + 272, (a1 + 408), v8);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              if (*(a2 - 32) < *(a1 + 104))
              {
                v105 = *a1;
                v106 = *(a1 + 8);
                *&v315[8] = *(a1 + 16);
                *v315 = v106;
                v107 = *(a1 + 36);
                *v324 = *(a1 + 20);
                *&v324[16] = v107;
                *&v324[29] = *(a1 + 49);
                v108 = *(a1 + 72);
                v109 = *(a1 + 96);
                v110 = *(a1 + 80);
                *(a1 + 88) = 0;
                *(a1 + 96) = 0;
                *(a1 + 80) = 0;
                *a1 = *(a2 - 136);
                v111 = *(a2 - 128);
                *(a1 + 16) = *(a2 - 120);
                *(a1 + 8) = v111;
                v112 = *(a2 - 87);
                v113 = *(a2 - 96);
                *(a1 + 24) = *(a2 - 112);
                *(a1 + 49) = v112;
                *(a1 + 40) = v113;
                *(a1 + 72) = *(a2 - 64);
                v114 = *(a2 - 40);
                *(a1 + 80) = *(a2 - 56);
                *(a1 + 96) = v114;
                *(a2 - 136) = v105;
                v115 = *v315;
                *(a2 - 120) = *&v315[8];
                *(a2 - 128) = v115;
                v116 = *&v324[4];
                v117 = *&v324[20];
                *(a2 - 87) = *&v324[29];
                *(a2 - 112) = v116;
                *(a2 - 96) = v117;
                *(a2 - 64) = v108;
                *(a2 - 56) = v110;
                *(a2 - 40) = v109;
                v118 = *(a1 + 104);
                v119 = *(a1 + 128);
                v120 = *(a1 + 112);
                *(a1 + 120) = 0;
                *(a1 + 128) = 0;
                *(a1 + 112) = 0;
                *(a1 + 104) = *(a2 - 32);
                *(a1 + 112) = *(a2 - 24);
                *(a1 + 128) = *(a2 - 8);
                *(a2 - 32) = v118;
                *(a2 - 24) = v120;
                *(a2 - 8) = v119;
              }

              return;
            }
          }

          if (v10 <= 3263)
          {
            if (a4)
            {
              if (a1 != a2)
              {
                v171 = a1 + 136;
                if (a1 + 136 != a2)
                {
                  v172 = a1;
                  do
                  {
                    v174 = v171;
                    v175 = *(v172 + 240);
                    if (v175 < *(v172 + 104))
                    {
                      *v324 = *v171;
                      v176 = *(v171 + 16);
                      v177 = *(v171 + 32);
                      v178 = *(v171 + 48);
                      v326 = *(v171 + 64);
                      *&v324[32] = v177;
                      v325 = v178;
                      *&v324[16] = v176;
                      v327 = *(v172 + 208);
                      *v328 = *(v172 + 216);
                      v329 = *(v172 + 232);
                      *(v172 + 216) = 0;
                      *(v172 + 224) = 0;
                      *(v172 + 232) = 0;
                      v330 = v175;
                      *__p = *(v172 + 248);
                      v332 = *(v172 + 264);
                      *(v172 + 248) = 0;
                      *(v172 + 256) = 0;
                      v179 = v171;
                      *(v172 + 264) = 0;
                      do
                      {
                        v180 = v172;
                        *v179 = *v172;
                        *(v179 + 16) = *(v172 + 16);
                        *(v179 + 8) = *(v172 + 8);
                        *(v179 + 24) = *(v172 + 24);
                        *(v179 + 40) = *(v172 + 40);
                        *(v179 + 49) = *(v172 + 49);
                        *(v179 + 72) = *(v172 + 72);
                        v181 = *(v179 + 80);
                        if (v181)
                        {
                          v182 = (v179 + 88);
                          v183 = *(v179 + 88);
                          v184 = *(v179 + 80);
                          if (v183 != v181)
                          {
                            do
                            {
                              v185 = *(v183 - 9);
                              v183 -= 4;
                              if (v185 < 0)
                              {
                                operator delete(*v183);
                              }
                            }

                            while (v183 != v181);
                            v184 = *(v179 + 80);
                          }

                          *v182 = v181;
                          operator delete(v184);
                          *v182 = 0;
                          *(v179 + 96) = 0;
                        }

                        *(v179 + 80) = *(v180 + 80);
                        *(v179 + 96) = *(v180 + 96);
                        *(v180 + 80) = 0;
                        *(v180 + 88) = 0;
                        *(v180 + 96) = 0;
                        *(v179 + 104) = *(v180 + 104);
                        v186 = *(v179 + 112);
                        if (v186)
                        {
                          v187 = (v179 + 120);
                          v188 = *(v179 + 120);
                          v189 = *(v179 + 112);
                          if (v188 != v186)
                          {
                            do
                            {
                              v190 = *(v188 - 9);
                              v188 -= 4;
                              if (v190 < 0)
                              {
                                operator delete(*v188);
                              }
                            }

                            while (v188 != v186);
                            v189 = *(v179 + 112);
                          }

                          *v187 = v186;
                          operator delete(v189);
                          *v187 = 0;
                          *(v179 + 128) = 0;
                        }

                        *(v179 + 112) = *(v180 + 112);
                        *(v179 + 128) = *(v180 + 128);
                        *(v180 + 112) = 0;
                        *(v180 + 120) = 0;
                        *(v180 + 128) = 0;
                        if (v180 == a1)
                        {
                          sub_11B0CA4(a1, v324);
                          v191 = __p[0];
                          a2 = v309;
                          if (!__p[0])
                          {
                            goto LABEL_126;
                          }

                          goto LABEL_129;
                        }

                        v172 = v180 - 136;
                        v179 = v180;
                      }

                      while (v330 < *(v180 - 32));
                      sub_11B0CA4(v180, v324);
                      v191 = __p[0];
                      a2 = v309;
                      if (!__p[0])
                      {
LABEL_126:
                        v192 = v328[0];
                        if (!v328[0])
                        {
                          goto LABEL_104;
                        }

                        goto LABEL_136;
                      }

LABEL_129:
                      v193 = __p[1];
                      if (__p[1] == v191)
                      {
                        __p[1] = v191;
                        operator delete(v191);
                        v192 = v328[0];
                        if (!v328[0])
                        {
                          goto LABEL_104;
                        }

                        goto LABEL_136;
                      }

                      do
                      {
                        v194 = *(v193 - 9);
                        v193 -= 4;
                        if (v194 < 0)
                        {
                          operator delete(*v193);
                        }
                      }

                      while (v193 != v191);
                      __p[1] = v191;
                      operator delete(__p[0]);
                      v192 = v328[0];
                      if (v328[0])
                      {
LABEL_136:
                        v195 = v328[1];
                        v173 = v192;
                        if (v328[1] != v192)
                        {
                          do
                          {
                            v196 = *(v195 - 9);
                            v195 -= 4;
                            if (v196 < 0)
                            {
                              operator delete(*v195);
                            }
                          }

                          while (v195 != v192);
                          v173 = v328[0];
                        }

                        v328[1] = v192;
                        operator delete(v173);
                      }
                    }

LABEL_104:
                    v171 = v174 + 136;
                    v172 = v174;
                  }

                  while (v174 + 136 != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v281 = a1 + 136;
              while (v281 != a2)
              {
                v283 = v281;
                v284 = *(a1 + 240);
                if (v284 < *(a1 + 104))
                {
                  *v324 = *v281;
                  v285 = *(v281 + 16);
                  v286 = *(v281 + 32);
                  v287 = *(v281 + 48);
                  v326 = *(v281 + 64);
                  *&v324[32] = v286;
                  v325 = v287;
                  *&v324[16] = v285;
                  v327 = *(a1 + 208);
                  *v328 = *(a1 + 216);
                  v329 = *(a1 + 232);
                  *(a1 + 216) = 0;
                  *(a1 + 224) = 0;
                  *(a1 + 232) = 0;
                  v330 = v284;
                  *__p = *(a1 + 248);
                  v332 = *(a1 + 264);
                  *(a1 + 248) = 0;
                  *(a1 + 256) = 0;
                  v288 = v281;
                  *(a1 + 264) = 0;
                  do
                  {
                    v290 = a1;
                    *v288 = *a1;
                    *(v288 + 16) = *(a1 + 16);
                    *(v288 + 8) = *(a1 + 8);
                    *(v288 + 24) = *(a1 + 24);
                    *(v288 + 40) = *(a1 + 40);
                    *(v288 + 49) = *(a1 + 49);
                    *(v288 + 72) = *(a1 + 72);
                    v291 = *(v288 + 80);
                    if (v291)
                    {
                      v292 = (v288 + 88);
                      v293 = *(v288 + 88);
                      v294 = *(v288 + 80);
                      if (v293 != v291)
                      {
                        do
                        {
                          v295 = *(v293 - 9);
                          v293 -= 4;
                          if (v295 < 0)
                          {
                            operator delete(*v293);
                          }
                        }

                        while (v293 != v291);
                        v294 = *(v288 + 80);
                      }

                      *v292 = v291;
                      operator delete(v294);
                      *v292 = 0;
                      *(v288 + 96) = 0;
                    }

                    *(v288 + 80) = *(v290 + 80);
                    *(v288 + 96) = *(v290 + 96);
                    *(v290 + 80) = 0;
                    *(v290 + 88) = 0;
                    *(v290 + 96) = 0;
                    *(v288 + 104) = *(v290 + 104);
                    v296 = *(v288 + 112);
                    if (v296)
                    {
                      v297 = (v288 + 120);
                      v298 = *(v288 + 120);
                      v289 = *(v288 + 112);
                      if (v298 != v296)
                      {
                        do
                        {
                          v299 = *(v298 - 9);
                          v298 -= 4;
                          if (v299 < 0)
                          {
                            operator delete(*v298);
                          }
                        }

                        while (v298 != v296);
                        v289 = *(v288 + 112);
                      }

                      *v297 = v296;
                      operator delete(v289);
                      *v297 = 0;
                      *(v288 + 128) = 0;
                    }

                    *(v288 + 112) = *(v290 + 112);
                    *(v288 + 128) = *(v290 + 128);
                    *(v290 + 112) = 0;
                    *(v290 + 120) = 0;
                    *(v290 + 128) = 0;
                    a1 = v290 - 136;
                    v288 = v290;
                  }

                  while (v330 < *(v290 - 32));
                  sub_11B0CA4(v290, v324);
                  v300 = __p[0];
                  a2 = v309;
                  if (__p[0])
                  {
                    v301 = __p[1];
                    v302 = __p[0];
                    if (__p[1] != __p[0])
                    {
                      do
                      {
                        v303 = *(v301 - 9);
                        v301 -= 4;
                        if (v303 < 0)
                        {
                          operator delete(*v301);
                        }
                      }

                      while (v301 != v300);
                      v302 = __p[0];
                    }

                    __p[1] = v300;
                    operator delete(v302);
                  }

                  v304 = v328[0];
                  if (v328[0])
                  {
                    v305 = v328[1];
                    v282 = v328[0];
                    if (v328[1] != v328[0])
                    {
                      do
                      {
                        v306 = *(v305 - 9);
                        v305 -= 4;
                        if (v306 < 0)
                        {
                          operator delete(*v305);
                        }
                      }

                      while (v305 != v304);
                      v282 = v328[0];
                    }

                    v328[1] = v304;
                    operator delete(v282);
                  }
                }

                v281 = v283 + 136;
                a1 = v283;
              }
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v197 = v12 >> 1;
              v198 = v12 >> 1;
              do
              {
                v200 = v198;
                if (v197 >= v198)
                {
                  v201 = (2 * v198) | 1;
                  v202 = a1 + 136 * v201;
                  if (2 * v200 + 2 < v11 && *(v202 + 104) < *(v202 + 240))
                  {
                    v202 += 136;
                    v201 = 2 * v200 + 2;
                  }

                  v203 = a1 + 136 * v200;
                  v204 = *(v203 + 104);
                  if (*(v202 + 104) >= v204)
                  {
                    *v324 = *v203;
                    v205 = *(v203 + 16);
                    v206 = *(v203 + 32);
                    v207 = *(v203 + 48);
                    v326 = *(v203 + 64);
                    *&v324[32] = v206;
                    v325 = v207;
                    *&v324[16] = v205;
                    v327 = *(v203 + 72);
                    *v328 = *(v203 + 80);
                    v329 = *(v203 + 96);
                    *(v203 + 88) = 0;
                    *(v203 + 96) = 0;
                    *(v203 + 80) = 0;
                    v330 = v204;
                    *__p = *(v203 + 112);
                    v332 = *(v203 + 128);
                    *(v203 + 112) = 0;
                    *(v203 + 120) = 0;
                    *(v203 + 128) = 0;
                    do
                    {
                      v208 = v202;
                      sub_11B0CA4(v203, v202);
                      if (v197 < v201)
                      {
                        break;
                      }

                      v209 = 2 * v201;
                      v201 = (2 * v201) | 1;
                      v202 = a1 + 136 * v201;
                      v210 = v209 + 2;
                      if (v210 < v11 && *(v202 + 104) < *(v202 + 240))
                      {
                        v202 += 136;
                        v201 = v210;
                      }

                      v203 = v208;
                    }

                    while (*(v202 + 104) >= v204);
                    sub_11B0CA4(v208, v324);
                    v211 = __p[0];
                    if (__p[0])
                    {
                      v212 = __p[1];
                      v213 = __p[0];
                      if (__p[1] != __p[0])
                      {
                        do
                        {
                          v214 = *(v212 - 9);
                          v212 -= 4;
                          if (v214 < 0)
                          {
                            operator delete(*v212);
                          }
                        }

                        while (v212 != v211);
                        v213 = __p[0];
                      }

                      __p[1] = v211;
                      operator delete(v213);
                    }

                    v215 = v328[0];
                    if (v328[0])
                    {
                      v216 = v328[1];
                      v199 = v328[0];
                      if (v328[1] != v328[0])
                      {
                        do
                        {
                          v217 = *(v216 - 9);
                          v216 -= 4;
                          if (v217 < 0)
                          {
                            operator delete(*v216);
                          }
                        }

                        while (v216 != v215);
                        v199 = v328[0];
                      }

                      v328[1] = v215;
                      operator delete(v199);
                    }
                  }
                }

                v198 = v200 - 1;
              }

              while (v200);
              v218 = 0xF0F0F0F0F0F0F0F1 * (v10 >> 3);
              v219 = v309;
              do
              {
                v310 = v219;
                v222 = 0;
                *v315 = *a1;
                v223 = *(a1 + 16);
                v224 = *(a1 + 32);
                v225 = *(a1 + 48);
                v317 = *(a1 + 64);
                *&v315[32] = v224;
                v316 = v225;
                *&v315[16] = v223;
                v318 = *(a1 + 72);
                *v319 = *(a1 + 80);
                v320 = *(a1 + 96);
                *(a1 + 88) = 0;
                *(a1 + 96) = 0;
                *(a1 + 80) = 0;
                v321 = *(a1 + 104);
                *v322 = *(a1 + 112);
                v323 = *(a1 + 128);
                *(a1 + 112) = 0;
                *(a1 + 120) = 0;
                v226 = a1;
                *(a1 + 128) = 0;
                do
                {
                  v228 = v226 + 136 * v222;
                  v229 = v228 + 136;
                  if (2 * v222 + 2 >= v218)
                  {
                    v222 = (2 * v222) | 1;
                  }

                  else
                  {
                    v230 = *(v228 + 240);
                    v231 = *(v228 + 376);
                    v232 = v228 + 272;
                    if (v230 >= v231)
                    {
                      v222 = (2 * v222) | 1;
                    }

                    else
                    {
                      v229 = v232;
                      v222 = 2 * v222 + 2;
                    }
                  }

                  *v226 = *v229;
                  v233 = *(v229 + 8);
                  *(v226 + 16) = *(v229 + 16);
                  *(v226 + 8) = v233;
                  v234 = *(v229 + 24);
                  v235 = *(v229 + 40);
                  *(v226 + 49) = *(v229 + 49);
                  *(v226 + 40) = v235;
                  *(v226 + 24) = v234;
                  *(v226 + 72) = *(v229 + 72);
                  v237 = (v226 + 80);
                  v236 = *(v226 + 80);
                  if (v236)
                  {
                    v238 = *(v226 + 88);
                    v239 = *(v226 + 80);
                    if (v238 != v236)
                    {
                      do
                      {
                        v240 = *(v238 - 9);
                        v238 -= 4;
                        if (v240 < 0)
                        {
                          operator delete(*v238);
                        }
                      }

                      while (v238 != v236);
                      v239 = *v237;
                    }

                    *(v226 + 88) = v236;
                    operator delete(v239);
                    *v237 = 0;
                    *(v226 + 88) = 0;
                    *(v226 + 96) = 0;
                  }

                  *(v226 + 80) = *(v229 + 80);
                  *(v226 + 96) = *(v229 + 96);
                  *(v229 + 80) = 0;
                  *(v229 + 88) = 0;
                  *(v229 + 96) = 0;
                  v242 = (v226 + 112);
                  v241 = *(v226 + 112);
                  *(v226 + 104) = *(v229 + 104);
                  if (v241)
                  {
                    v243 = *(v226 + 120);
                    v227 = v241;
                    if (v243 != v241)
                    {
                      do
                      {
                        v244 = *(v243 - 9);
                        v243 -= 4;
                        if (v244 < 0)
                        {
                          operator delete(*v243);
                        }
                      }

                      while (v243 != v241);
                      v227 = *v242;
                    }

                    *(v226 + 120) = v241;
                    operator delete(v227);
                    *v242 = 0;
                    *(v226 + 120) = 0;
                    *(v226 + 128) = 0;
                  }

                  *(v226 + 112) = *(v229 + 112);
                  *(v226 + 128) = *(v229 + 128);
                  *(v229 + 112) = 0;
                  *(v229 + 120) = 0;
                  *(v229 + 128) = 0;
                  v226 = v229;
                }

                while (v222 <= ((v218 - 2) >> 1));
                v219 = v310 - 136;
                if (v229 == v310 - 136)
                {
                  sub_11B0CA4(v229, v315);
                }

                else
                {
                  sub_11B0CA4(v229, v310 - 136);
                  sub_11B0CA4(v219, v315);
                  v245 = v229 - a1 + 136;
                  if (v245 >= 137)
                  {
                    v246 = (-2 - 0xF0F0F0F0F0F0F0FLL * (v245 >> 3)) >> 1;
                    v247 = a1 + 136 * v246;
                    v248 = *(v229 + 104);
                    if (*(v247 + 104) < v248)
                    {
                      *v324 = *v229;
                      v249 = *(v229 + 16);
                      v250 = *(v229 + 32);
                      v251 = *(v229 + 48);
                      v326 = *(v229 + 64);
                      *&v324[32] = v250;
                      v325 = v251;
                      *&v324[16] = v249;
                      v327 = *(v229 + 72);
                      *v328 = *(v229 + 80);
                      v329 = *(v229 + 96);
                      *(v229 + 88) = 0;
                      *(v229 + 96) = 0;
                      *(v229 + 80) = 0;
                      v330 = v248;
                      *__p = *(v229 + 112);
                      v332 = *(v229 + 128);
                      *(v229 + 112) = 0;
                      *(v229 + 120) = 0;
                      *(v229 + 128) = 0;
                      do
                      {
                        v252 = v247;
                        *v229 = *v247;
                        v253 = *(v247 + 8);
                        *(v229 + 16) = *(v252 + 16);
                        *(v229 + 8) = v253;
                        v254 = *(v252 + 24);
                        v255 = *(v252 + 40);
                        *(v229 + 49) = *(v252 + 49);
                        *(v229 + 40) = v255;
                        *(v229 + 24) = v254;
                        *(v229 + 72) = *(v252 + 72);
                        v257 = (v229 + 80);
                        v256 = *(v229 + 80);
                        if (v256)
                        {
                          v258 = *(v229 + 88);
                          v259 = *(v229 + 80);
                          if (v258 != v256)
                          {
                            do
                            {
                              v260 = *(v258 - 9);
                              v258 -= 4;
                              if (v260 < 0)
                              {
                                operator delete(*v258);
                              }
                            }

                            while (v258 != v256);
                            v259 = *v257;
                          }

                          *(v229 + 88) = v256;
                          operator delete(v259);
                          *v257 = 0;
                          *(v229 + 88) = 0;
                          *(v229 + 96) = 0;
                        }

                        *(v229 + 80) = *(v252 + 80);
                        *(v229 + 96) = *(v252 + 96);
                        *(v252 + 80) = 0;
                        *(v252 + 88) = 0;
                        *(v252 + 96) = 0;
                        v262 = (v229 + 112);
                        v261 = *(v229 + 112);
                        *(v229 + 104) = *(v252 + 104);
                        if (v261)
                        {
                          v263 = *(v229 + 120);
                          v264 = v261;
                          if (v263 != v261)
                          {
                            do
                            {
                              v265 = *(v263 - 9);
                              v263 -= 4;
                              if (v265 < 0)
                              {
                                operator delete(*v263);
                              }
                            }

                            while (v263 != v261);
                            v264 = *v262;
                          }

                          *(v229 + 120) = v261;
                          operator delete(v264);
                          *v262 = 0;
                          *(v229 + 120) = 0;
                          *(v229 + 128) = 0;
                        }

                        *(v229 + 112) = *(v252 + 112);
                        *(v229 + 128) = *(v252 + 128);
                        *(v252 + 112) = 0;
                        *(v252 + 120) = 0;
                        *(v252 + 128) = 0;
                        if (!v246)
                        {
                          break;
                        }

                        v246 = (v246 - 1) >> 1;
                        v247 = a1 + 136 * v246;
                        v229 = v252;
                      }

                      while (*(v247 + 104) < v248);
                      sub_11B0CA4(v252, v324);
                      v266 = __p[0];
                      if (__p[0])
                      {
                        v267 = __p[1];
                        v268 = __p[0];
                        if (__p[1] != __p[0])
                        {
                          do
                          {
                            v269 = *(v267 - 9);
                            v267 -= 4;
                            if (v269 < 0)
                            {
                              operator delete(*v267);
                            }
                          }

                          while (v267 != v266);
                          v268 = __p[0];
                        }

                        __p[1] = v266;
                        operator delete(v268);
                      }

                      v270 = v328[0];
                      if (v328[0])
                      {
                        v271 = v328[1];
                        v272 = v328[0];
                        if (v328[1] != v328[0])
                        {
                          do
                          {
                            v273 = *(v271 - 9);
                            v271 -= 4;
                            if (v273 < 0)
                            {
                              operator delete(*v271);
                            }
                          }

                          while (v271 != v270);
                          v272 = v328[0];
                        }

                        v328[1] = v270;
                        operator delete(v272);
                      }
                    }
                  }
                }

                v274 = v322[0];
                if (v322[0])
                {
                  v275 = v322[1];
                  v276 = v322[0];
                  if (v322[1] != v322[0])
                  {
                    do
                    {
                      v277 = *(v275 - 9);
                      v275 -= 4;
                      if (v277 < 0)
                      {
                        operator delete(*v275);
                      }
                    }

                    while (v275 != v274);
                    v276 = v322[0];
                  }

                  v322[1] = v274;
                  operator delete(v276);
                }

                v278 = v319[0];
                if (v319[0])
                {
                  v279 = v319[1];
                  v220 = v319[0];
                  if (v319[1] != v319[0])
                  {
                    do
                    {
                      v280 = *(v279 - 9);
                      v279 -= 4;
                      if (v280 < 0)
                      {
                        operator delete(*v279);
                      }
                    }

                    while (v279 != v278);
                    v220 = v319[0];
                  }

                  v319[1] = v278;
                  operator delete(v220);
                }
              }

              while (v218-- > 2);
            }

            return;
          }

          v13 = v11 >> 1;
          v14 = a1 + 136 * (v11 >> 1);
          if (v10 < 0x4401)
          {
            sub_11B55E0(v14, a1, v8);
            --a3;
            if (a4)
            {
LABEL_19:
              v32 = *(a1 + 104);
              break;
            }
          }

          else
          {
            sub_11B55E0(a1, v14, v8);
            v15 = 136 * v13;
            sub_11B55E0((a1 + 136), (v15 + a1 - 136), v308);
            sub_11B55E0((a1 + 272), (a1 + 136 + v15), v307);
            sub_11B55E0((v15 + a1 - 136), v14, (a1 + 136 + v15));
            v16 = *a1;
            *v315 = *(a1 + 8);
            *&v315[8] = *(a1 + 16);
            v17 = *(a1 + 36);
            *v324 = *(a1 + 20);
            *&v324[16] = v17;
            *&v324[29] = *(a1 + 49);
            v18 = *(a1 + 72);
            v19 = *v14;
            v20 = *(v14 + 8);
            *(a1 + 16) = *(v14 + 16);
            v21 = *(a1 + 96);
            v22 = *(a1 + 80);
            *(a1 + 80) = 0;
            *(a1 + 88) = 0;
            *(a1 + 96) = 0;
            *a1 = v19;
            *(a1 + 8) = v20;
            v23 = *(v14 + 24);
            v24 = *(v14 + 40);
            *(a1 + 49) = *(v14 + 49);
            *(a1 + 40) = v24;
            *(a1 + 24) = v23;
            *(a1 + 72) = *(v14 + 72);
            v25 = *(v14 + 96);
            *(a1 + 80) = *(v14 + 80);
            *(a1 + 96) = v25;
            *v14 = v16;
            v26 = *v315;
            *(v14 + 16) = *&v315[8];
            *(v14 + 8) = v26;
            v27 = *&v324[4];
            v28 = *&v324[20];
            *(v14 + 49) = *&v324[29];
            *(v14 + 40) = v28;
            *(v14 + 24) = v27;
            *(v14 + 72) = v18;
            *(v14 + 80) = v22;
            *(v14 + 96) = v21;
            v29 = *(a1 + 104);
            v30 = *(a1 + 128);
            v31 = *(a1 + 112);
            *(a1 + 120) = 0;
            *(a1 + 128) = 0;
            *(a1 + 112) = 0;
            *(a1 + 104) = *(v14 + 104);
            *(a1 + 112) = *(v14 + 112);
            *(a1 + 128) = *(v14 + 128);
            *(v14 + 104) = v29;
            *(v14 + 112) = v31;
            *(v14 + 128) = v30;
            --a3;
            if (a4)
            {
              goto LABEL_19;
            }
          }

          v32 = *(a1 + 104);
          if (*(a1 - 32) < v32)
          {
            break;
          }

          *v324 = *a1;
          v33 = *(a1 + 16);
          v34 = *(a1 + 32);
          v35 = *(a1 + 48);
          v326 = *(a1 + 64);
          *&v324[32] = v34;
          v325 = v35;
          *&v324[16] = v33;
          v327 = *(a1 + 72);
          *v328 = *(a1 + 80);
          v329 = *(a1 + 96);
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          *(a1 + 80) = 0;
          v330 = *(a1 + 104);
          v36 = v330;
          *__p = *(a1 + 112);
          v332 = *(a1 + 128);
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
          if (v36 >= *(a2 - 32))
          {
            v77 = a1 + 136;
            do
            {
              v9 = v77;
              if (v77 >= a2)
              {
                break;
              }

              v78 = *(v77 + 104);
              v77 += 136;
            }

            while (v36 >= v78);
          }

          else
          {
            v37 = a1;
            do
            {
              v9 = v37 + 136;
              v38 = *(v37 + 240);
              v37 += 136;
            }

            while (v36 >= v38);
          }

          v79 = a2;
          if (v9 < a2)
          {
            v80 = a2;
            do
            {
              v79 = v80 - 136;
              v81 = *(v80 - 32);
              v80 -= 136;
            }

            while (v36 < v81);
          }

          while (v9 < v79)
          {
            v82 = *v9;
            v314 = *(v9 + 16);
            v312 = *(v9 + 8);
            v83 = *(v9 + 36);
            *v315 = *(v9 + 20);
            *&v315[16] = v83;
            *&v315[29] = *(v9 + 49);
            v84 = *(v9 + 72);
            v85 = *(v9 + 96);
            v86 = *(v9 + 80);
            *(v9 + 88) = 0;
            *(v9 + 96) = 0;
            *(v9 + 80) = 0;
            *v9 = *v79;
            v87 = *(v79 + 8);
            *(v9 + 16) = *(v79 + 16);
            *(v9 + 8) = v87;
            v88 = *(v79 + 40);
            v89 = *(v79 + 49);
            *(v9 + 24) = *(v79 + 24);
            *(v9 + 49) = v89;
            *(v9 + 40) = v88;
            *(v9 + 72) = *(v79 + 72);
            v90 = *(v79 + 96);
            *(v9 + 80) = *(v79 + 80);
            *(v9 + 96) = v90;
            *v79 = v82;
            *(v79 + 16) = v314;
            *(v79 + 8) = v312;
            *(v79 + 49) = *&v315[29];
            v91 = *&v315[20];
            *(v79 + 24) = *&v315[4];
            *(v79 + 40) = v91;
            *(v79 + 72) = v84;
            *(v79 + 80) = v86;
            *(v79 + 96) = v85;
            v92 = *(v9 + 104);
            v93 = *(v9 + 128);
            v94 = *(v9 + 112);
            *(v9 + 120) = 0;
            *(v9 + 128) = 0;
            *(v9 + 112) = 0;
            *(v9 + 104) = *(v79 + 104);
            *(v9 + 112) = *(v79 + 112);
            *(v9 + 128) = *(v79 + 128);
            *(v79 + 104) = v92;
            *(v79 + 112) = v94;
            *(v79 + 128) = v93;
            do
            {
              v95 = *(v9 + 240);
              v9 += 136;
            }

            while (v330 >= v95);
            do
            {
              v96 = *(v79 - 32);
              v79 -= 136;
            }

            while (v330 < v96);
          }

          if (v9 - 136 != a1)
          {
            sub_11B0CA4(a1, v9 - 136);
          }

          sub_11B0CA4(v9 - 136, v324);
          v97 = __p[0];
          if (__p[0])
          {
            v98 = __p[1];
            v99 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v100 = *(v98 - 9);
                v98 -= 4;
                if (v100 < 0)
                {
                  operator delete(*v98);
                }
              }

              while (v98 != v97);
              v99 = __p[0];
            }

            __p[1] = v97;
            operator delete(v99);
          }

          v101 = v328[0];
          if (v328[0])
          {
            v102 = v328[1];
            v103 = v328[0];
            if (v328[1] != v328[0])
            {
              do
              {
                v104 = *(v102 - 9);
                v102 -= 4;
                if (v104 < 0)
                {
                  operator delete(*v102);
                }
              }

              while (v102 != v101);
              v103 = v328[0];
            }

            v328[1] = v101;
            operator delete(v103);
          }

          a4 = 0;
        }

        v39 = 0;
        *v324 = *a1;
        v40 = *(a1 + 16);
        v41 = *(a1 + 32);
        v42 = *(a1 + 48);
        v326 = *(a1 + 64);
        *&v324[32] = v41;
        v325 = v42;
        LODWORD(v42) = *(a1 + 72);
        *v328 = *(a1 + 80);
        v329 = *(a1 + 96);
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 80) = 0;
        v43 = *(a1 + 112);
        v332 = *(a1 + 128);
        *&v324[16] = v40;
        v327 = v42;
        v330 = v32;
        *__p = v43;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        do
        {
          v44 = *(a1 + v39 + 240);
          v39 += 136;
        }

        while (v44 < v32);
        v45 = a1 + v39;
        v46 = a2;
        if (v39 == 136)
        {
          while (v45 < a2)
          {
            v47 = a2 - 136;
            v49 = *(a2 - 32);
            a2 -= 136;
            if (v49 < v32)
            {
              goto LABEL_27;
            }
          }

          v47 = a2;
LABEL_36:
          v67 = v45 - 136;
          if (v45 - 136 == a1)
          {
            goto LABEL_38;
          }

LABEL_37:
          sub_11B0CA4(a1, v67);
          goto LABEL_38;
        }

        do
        {
          v47 = v46 - 136;
          v48 = *(v46 - 32);
          v46 -= 136;
        }

        while (v48 >= v32);
LABEL_27:
        if (v45 >= v47)
        {
          goto LABEL_36;
        }

        v50 = (a1 + v39);
        v51 = v47;
        do
        {
          v52 = *v50;
          v313 = *(v50 + 4);
          v311 = v50[1];
          v53 = *(v50 + 36);
          *v315 = *(v50 + 20);
          *&v315[16] = v53;
          *&v315[29] = *(v50 + 49);
          v54 = *(v50 + 18);
          v55 = v50[12];
          v56 = *(v50 + 5);
          v50[11] = 0;
          v50[12] = 0;
          v50[10] = 0;
          *v50 = *v51;
          v57 = *(v51 + 8);
          *(v50 + 4) = *(v51 + 16);
          v50[1] = v57;
          v58 = *(v51 + 40);
          v59 = *(v51 + 49);
          *(v50 + 3) = *(v51 + 24);
          *(v50 + 49) = v59;
          *(v50 + 5) = v58;
          *(v50 + 18) = *(v51 + 72);
          v60 = *(v51 + 96);
          *(v50 + 5) = *(v51 + 80);
          v50[12] = v60;
          *v51 = v52;
          *(v51 + 16) = v313;
          *(v51 + 8) = v311;
          *(v51 + 49) = *&v315[29];
          v61 = *&v315[20];
          *(v51 + 24) = *&v315[4];
          *(v51 + 40) = v61;
          *(v51 + 72) = v54;
          *(v51 + 80) = v56;
          *(v51 + 96) = v55;
          v62 = *(v50 + 26);
          v63 = v50[16];
          v64 = *(v50 + 7);
          v50[15] = 0;
          v50[16] = 0;
          v50[14] = 0;
          *(v50 + 26) = *(v51 + 104);
          *(v50 + 7) = *(v51 + 112);
          v50[16] = *(v51 + 128);
          *(v51 + 104) = v62;
          *(v51 + 112) = v64;
          *(v51 + 128) = v63;
          do
          {
            v65 = *(v50 + 60);
            v50 += 17;
          }

          while (v65 < v330);
          do
          {
            v66 = *(v51 - 32);
            v51 -= 136;
          }

          while (v66 >= v330);
        }

        while (v50 < v51);
        v67 = (v50 - 17);
        if (v50 - 17 != a1)
        {
          goto LABEL_37;
        }

LABEL_38:
        sub_11B0CA4(v67, v324);
        v68 = __p[0];
        if (__p[0])
        {
          v69 = __p[1];
          v70 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              v71 = *(v69 - 9);
              v69 -= 4;
              if (v71 < 0)
              {
                operator delete(*v69);
              }
            }

            while (v69 != v68);
            v70 = __p[0];
          }

          __p[1] = v68;
          operator delete(v70);
        }

        v72 = v328[0];
        if (v328[0])
        {
          v73 = v328[1];
          v74 = v328[0];
          if (v328[1] != v328[0])
          {
            do
            {
              v75 = *(v73 - 9);
              v73 -= 4;
              if (v75 < 0)
              {
                operator delete(*v73);
              }
            }

            while (v73 != v72);
            v74 = v328[0];
          }

          v328[1] = v72;
          operator delete(v74);
        }

        a2 = v309;
        if (v45 >= v47)
        {
          break;
        }

LABEL_57:
        sub_11B3C44(a1, v67, a3, a4 & 1);
        a4 = 0;
        v9 = v67 + 136;
      }

      v76 = sub_11B62B8(a1, v67);
      v9 = v67 + 136;
      if (sub_11B62B8(v67 + 136, v309))
      {
        break;
      }

      if (!v76)
      {
        goto LABEL_57;
      }
    }

    a2 = v67;
    if (!v76)
    {
      continue;
    }

    break;
  }
}

float sub_11B54A4(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v15 = (*a1)[1];
  v16 = *(*a1 + 4);
  *v17 = *(*a1 + 20);
  *&v17[16] = *(*a1 + 36);
  *&v17[29] = *(*a1 + 49);
  v5 = *(*a1 + 18);
  v6 = (*a1)[12];
  v7 = *(*a1 + 5);
  v2[11] = 0;
  v2[12] = 0;
  v2[10] = 0;
  *v2 = *v3;
  v8 = *(v3 + 16);
  v2[1] = *(v3 + 8);
  *(v2 + 4) = v8;
  v9 = *(v3 + 49);
  v10 = *(v3 + 40);
  *(v2 + 3) = *(v3 + 24);
  *(v2 + 5) = v10;
  *(v2 + 49) = v9;
  *(v2 + 18) = *(v3 + 72);
  v11 = *(v3 + 96);
  *(v2 + 5) = *(v3 + 80);
  v2[12] = v11;
  *v3 = v4;
  *(v3 + 8) = v15;
  *(v3 + 16) = v16;
  *(v3 + 24) = *&v17[4];
  *(v3 + 40) = *&v17[20];
  *(v3 + 49) = *&v17[29];
  *(v3 + 72) = v5;
  *(v3 + 80) = v7;
  *(v3 + 96) = v6;
  result = *(v2 + 26);
  v13 = v2[16];
  v14 = *(v2 + 7);
  v2[15] = 0;
  v2[16] = 0;
  v2[14] = 0;
  *(v2 + 26) = *(v3 + 104);
  *(v2 + 7) = *(v3 + 112);
  v2[16] = *(v3 + 128);
  *(v3 + 104) = result;
  *(v3 + 112) = v14;
  *(v3 + 128) = v13;
  return result;
}

uint64_t *sub_11B55E0(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 26);
  v4 = *(a3 + 26);
  if (v3 >= *(result + 26))
  {
    if (v4 < v3)
    {
      v16 = a2 + 1;
      v17 = *a2;
      v62 = a2[1];
      v67 = *(a2 + 4);
      *v72 = *(a2 + 20);
      *&v72[16] = *(a2 + 36);
      *&v72[29] = *(a2 + 49);
      v18 = *(a2 + 18);
      v19 = a2[12];
      v20 = *(a2 + 5);
      a2[11] = 0;
      a2[12] = 0;
      a2[10] = 0;
      *a2 = *a3;
      v21 = *(a3 + 4);
      a2[1] = a3[1];
      *(a2 + 4) = v21;
      v22 = *(a3 + 49);
      v23 = *(a3 + 5);
      *(a2 + 3) = *(a3 + 3);
      *(a2 + 5) = v23;
      *(a2 + 49) = v22;
      *(a2 + 18) = *(a3 + 18);
      v24 = a3[12];
      *(a2 + 5) = *(a3 + 5);
      a2[12] = v24;
      *a3 = v17;
      a3[1] = v62;
      *(a3 + 4) = v67;
      *(a3 + 3) = *&v72[4];
      *(a3 + 5) = *&v72[20];
      *(a3 + 49) = *&v72[29];
      *(a3 + 18) = v18;
      *(a3 + 5) = v20;
      a3[12] = v19;
      v25 = *(a2 + 26);
      v26 = a2[16];
      v27 = *(a2 + 7);
      a2[15] = 0;
      a2[16] = 0;
      a2[14] = 0;
      *(a2 + 26) = *(a3 + 26);
      *(a2 + 7) = *(a3 + 7);
      a2[16] = a3[16];
      *(a3 + 26) = v25;
      *(a3 + 7) = v27;
      a3[16] = v26;
      if (*(a2 + 26) < *(result + 26))
      {
        v28 = *result;
        v63 = result[1];
        v68 = *(result + 4);
        *v73 = *(result + 20);
        *&v73[16] = *(result + 36);
        *&v73[29] = *(result + 49);
        v29 = *(result + 18);
        v30 = result[12];
        v31 = *(result + 5);
        result[11] = 0;
        result[12] = 0;
        result[10] = 0;
        *result = *a2;
        v32 = *(a2 + 4);
        result[1] = *v16;
        *(result + 4) = v32;
        v33 = *(a2 + 49);
        v34 = *(a2 + 5);
        *(result + 3) = *(a2 + 3);
        *(result + 5) = v34;
        *(result + 49) = v33;
        *(result + 18) = *(a2 + 18);
        v35 = a2[12];
        *(result + 5) = *(a2 + 5);
        result[12] = v35;
        *a2 = v28;
        *v16 = v63;
        *(a2 + 4) = v68;
        *(a2 + 3) = *&v73[4];
        *(a2 + 5) = *&v73[20];
        *(a2 + 49) = *&v73[29];
        *(a2 + 18) = v29;
        *(a2 + 5) = v31;
        a2[12] = v30;
        v36 = *(result + 26);
        v37 = result[16];
        v38 = *(result + 7);
        result[15] = 0;
        result[16] = 0;
        result[14] = 0;
        *(result + 26) = *(a2 + 26);
        *(result + 7) = *(a2 + 7);
        result[16] = a2[16];
        *(a2 + 26) = v36;
        *(a2 + 7) = v38;
        a2[16] = v37;
      }
    }
  }

  else
  {
    if (v4 >= v3)
    {
      v39 = *result;
      v64 = result[1];
      v69 = *(result + 4);
      *v74 = *(result + 20);
      *&v74[16] = *(result + 36);
      *&v74[29] = *(result + 49);
      v40 = *(result + 18);
      v41 = result[12];
      v42 = *(result + 5);
      result[11] = 0;
      result[12] = 0;
      result[10] = 0;
      *result = *a2;
      v43 = a2 + 1;
      v44 = a2[1];
      *(result + 4) = *(a2 + 4);
      result[1] = v44;
      v45 = *(a2 + 3);
      v46 = *(a2 + 5);
      *(result + 49) = *(a2 + 49);
      *(result + 5) = v46;
      *(result + 3) = v45;
      v47 = *(a2 + 5);
      *(result + 18) = *(a2 + 18);
      v48 = a2[12];
      *(result + 5) = v47;
      result[12] = v48;
      *a2 = v39;
      a2[1] = v64;
      *(a2 + 4) = v69;
      *(a2 + 3) = *&v74[4];
      *(a2 + 5) = *&v74[20];
      *(a2 + 49) = *&v74[29];
      *(a2 + 18) = v40;
      *(a2 + 5) = v42;
      a2[12] = v41;
      v49 = *(result + 26);
      v50 = result[16];
      v51 = *(result + 7);
      result[15] = 0;
      result[16] = 0;
      result[14] = 0;
      v52 = *(a2 + 7);
      *(result + 26) = *(a2 + 26);
      *(result + 7) = v52;
      result[16] = a2[16];
      *(a2 + 26) = v49;
      *(a2 + 7) = v51;
      a2[16] = v50;
      if (*(a3 + 26) >= v49)
      {
        return result;
      }

      v53 = *a2;
      v65 = *v43;
      v70 = *(a2 + 4);
      *v75 = *(a2 + 20);
      *&v75[16] = *(a2 + 36);
      *&v75[29] = *(a2 + 49);
      v54 = *(a2 + 18);
      v55 = a2[12];
      v56 = *(a2 + 5);
      a2[11] = 0;
      a2[12] = 0;
      a2[10] = 0;
      *a2 = *a3;
      v57 = a3[1];
      *(a2 + 4) = *(a3 + 4);
      *v43 = v57;
      v58 = *(a3 + 3);
      v59 = *(a3 + 5);
      *(a2 + 49) = *(a3 + 49);
      *(a2 + 5) = v59;
      *(a2 + 3) = v58;
      *(a2 + 18) = *(a3 + 18);
      v60 = a3[12];
      *(a2 + 5) = *(a3 + 5);
      a2[12] = v60;
      *a3 = v53;
      a3[1] = v65;
      *(a3 + 4) = v70;
      *(a3 + 3) = *&v75[4];
      *(a3 + 5) = *&v75[20];
      *(a3 + 49) = *&v75[29];
      *(a3 + 18) = v54;
      *(a3 + 5) = v56;
      a3[12] = v55;
      v13 = *(a2 + 26);
      v14 = a2[16];
      v15 = *(a2 + 7);
      a2[14] = 0;
      a2[15] = 0;
      a2[16] = 0;
      *(a2 + 26) = *(a3 + 26);
      *(a2 + 7) = *(a3 + 7);
      a2[16] = a3[16];
    }

    else
    {
      v5 = *result;
      v61 = result[1];
      v66 = *(result + 4);
      *v71 = *(result + 20);
      *&v71[16] = *(result + 36);
      *&v71[29] = *(result + 49);
      v6 = *(result + 18);
      v7 = result[12];
      v8 = *(result + 5);
      result[11] = 0;
      result[12] = 0;
      result[10] = 0;
      *result = *a3;
      v9 = a3[1];
      *(result + 4) = *(a3 + 4);
      result[1] = v9;
      v10 = *(a3 + 3);
      v11 = *(a3 + 5);
      *(result + 49) = *(a3 + 49);
      *(result + 5) = v11;
      *(result + 3) = v10;
      *(result + 18) = *(a3 + 18);
      v12 = a3[12];
      *(result + 5) = *(a3 + 5);
      result[12] = v12;
      *a3 = v5;
      a3[1] = v61;
      *(a3 + 4) = v66;
      *(a3 + 3) = *&v71[4];
      *(a3 + 5) = *&v71[20];
      *(a3 + 49) = *&v71[29];
      *(a3 + 18) = v6;
      *(a3 + 5) = v8;
      a3[12] = v7;
      v13 = *(result + 26);
      v14 = result[16];
      v15 = *(result + 7);
      result[15] = 0;
      result[16] = 0;
      result[14] = 0;
      *(result + 26) = *(a3 + 26);
      *(result + 7) = *(a3 + 7);
      result[16] = a3[16];
    }

    *(a3 + 26) = v13;
    *(a3 + 7) = v15;
    a3[16] = v14;
  }

  return result;
}

float sub_11B5B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_11B55E0(a1, a2, a3);
  if (*(a4 + 26) < *(a3 + 104))
  {
    v10 = (a3 + 8);
    v11 = *a3;
    v92 = *(a3 + 8);
    v99 = *(a3 + 16);
    *v106 = *(a3 + 20);
    *&v106[16] = *(a3 + 36);
    *&v106[29] = *(a3 + 49);
    v12 = *(a3 + 72);
    v13 = *(a3 + 96);
    v14 = *(a3 + 80);
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0;
    *a3 = *a4;
    v15 = *(a4 + 4);
    *(a3 + 8) = a4[1];
    *(a3 + 16) = v15;
    v16 = *(a4 + 49);
    v17 = *(a4 + 5);
    *(a3 + 24) = *(a4 + 3);
    *(a3 + 40) = v17;
    *(a3 + 49) = v16;
    *(a3 + 72) = *(a4 + 18);
    v18 = a4[12];
    *(a3 + 80) = *(a4 + 5);
    *(a3 + 96) = v18;
    *a4 = v11;
    a4[1] = v92;
    *(a4 + 4) = v99;
    *(a4 + 3) = *&v106[4];
    *(a4 + 5) = *&v106[20];
    *(a4 + 49) = *&v106[29];
    *(a4 + 18) = v12;
    *(a4 + 5) = v14;
    a4[12] = v13;
    v19 = *(a3 + 104);
    v20 = *(a3 + 128);
    v21 = *(a3 + 112);
    *(a3 + 120) = 0;
    *(a3 + 128) = 0;
    *(a3 + 112) = 0;
    *(a3 + 104) = *(a4 + 26);
    *(a3 + 112) = *(a4 + 7);
    *(a3 + 128) = a4[16];
    *(a4 + 26) = v19;
    *(a4 + 7) = v21;
    a4[16] = v20;
    if (*(a3 + 104) < *(a2 + 104))
    {
      v22 = (a2 + 8);
      v23 = *a2;
      v93 = *(a2 + 8);
      v100 = *(a2 + 16);
      *v107 = *(a2 + 20);
      *&v107[16] = *(a2 + 36);
      *&v107[29] = *(a2 + 49);
      v24 = *(a2 + 72);
      v25 = *(a2 + 96);
      v26 = *(a2 + 80);
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *a2 = *a3;
      v27 = *(a3 + 16);
      *(a2 + 8) = *v10;
      *(a2 + 16) = v27;
      v28 = *(a3 + 49);
      v29 = *(a3 + 40);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 40) = v29;
      *(a2 + 49) = v28;
      *(a2 + 72) = *(a3 + 72);
      v30 = *(a3 + 96);
      *(a2 + 80) = *(a3 + 80);
      *(a2 + 96) = v30;
      *a3 = v23;
      *v10 = v93;
      *(a3 + 16) = v100;
      *(a3 + 24) = *&v107[4];
      *(a3 + 40) = *&v107[20];
      *(a3 + 49) = *&v107[29];
      *(a3 + 72) = v24;
      *(a3 + 80) = v26;
      *(a3 + 96) = v25;
      v31 = *(a2 + 104);
      v32 = *(a2 + 128);
      v33 = *(a2 + 112);
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 112) = 0;
      *(a2 + 104) = *(a3 + 104);
      *(a2 + 112) = *(a3 + 112);
      *(a2 + 128) = *(a3 + 128);
      *(a3 + 104) = v31;
      *(a3 + 112) = v33;
      *(a3 + 128) = v32;
      if (*(a2 + 104) < *(a1 + 104))
      {
        v34 = *a1;
        v94 = *(a1 + 8);
        v101 = *(a1 + 16);
        *v108 = *(a1 + 20);
        *&v108[16] = *(a1 + 36);
        *&v108[29] = *(a1 + 49);
        v35 = *(a1 + 72);
        v36 = *(a1 + 96);
        v37 = *(a1 + 80);
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 80) = 0;
        *a1 = *a2;
        v38 = *(a2 + 16);
        *(a1 + 8) = *v22;
        *(a1 + 16) = v38;
        v39 = *(a2 + 49);
        v40 = *(a2 + 40);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = v40;
        *(a1 + 49) = v39;
        *(a1 + 72) = *(a2 + 72);
        v41 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v41;
        *a2 = v34;
        *v22 = v94;
        *(a2 + 16) = v101;
        *(a2 + 24) = *&v108[4];
        *(a2 + 40) = *&v108[20];
        *(a2 + 49) = *&v108[29];
        *(a2 + 72) = v35;
        *(a2 + 80) = v37;
        *(a2 + 96) = v36;
        v42 = *(a1 + 104);
        v43 = *(a1 + 128);
        v44 = *(a1 + 112);
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        *(a1 + 112) = 0;
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 128) = *(a2 + 128);
        *(a2 + 104) = v42;
        *(a2 + 112) = v44;
        *(a2 + 128) = v43;
      }
    }
  }

  result = *(a5 + 26);
  if (result < *(a4 + 26))
  {
    v46 = a4 + 1;
    v47 = *a4;
    v95 = a4[1];
    v102 = *(a4 + 4);
    *v109 = *(a4 + 20);
    *&v109[16] = *(a4 + 36);
    *&v109[29] = *(a4 + 49);
    v48 = *(a4 + 18);
    v49 = a4[12];
    v50 = *(a4 + 5);
    a4[11] = 0;
    a4[12] = 0;
    a4[10] = 0;
    *a4 = *a5;
    v51 = *(a5 + 4);
    a4[1] = a5[1];
    *(a4 + 4) = v51;
    v52 = *(a5 + 49);
    v53 = *(a5 + 5);
    *(a4 + 3) = *(a5 + 3);
    *(a4 + 5) = v53;
    *(a4 + 49) = v52;
    *(a4 + 18) = *(a5 + 18);
    v54 = a5[12];
    *(a4 + 5) = *(a5 + 5);
    a4[12] = v54;
    *a5 = v47;
    a5[1] = v95;
    *(a5 + 4) = v102;
    *(a5 + 3) = *&v109[4];
    *(a5 + 5) = *&v109[20];
    *(a5 + 49) = *&v109[29];
    *(a5 + 18) = v48;
    *(a5 + 5) = v50;
    a5[12] = v49;
    v55 = *(a4 + 26);
    v56 = a4[16];
    v57 = *(a4 + 7);
    a4[15] = 0;
    a4[16] = 0;
    a4[14] = 0;
    *(a4 + 26) = *(a5 + 26);
    *(a4 + 7) = *(a5 + 7);
    a4[16] = a5[16];
    *(a5 + 26) = v55;
    *(a5 + 7) = v57;
    a5[16] = v56;
    result = *(a4 + 26);
    if (result < *(a3 + 104))
    {
      v58 = (a3 + 8);
      v59 = *a3;
      v96 = *(a3 + 8);
      v103 = *(a3 + 16);
      *v110 = *(a3 + 20);
      *&v110[16] = *(a3 + 36);
      *&v110[29] = *(a3 + 49);
      v60 = *(a3 + 72);
      v61 = *(a3 + 96);
      v62 = *(a3 + 80);
      *(a3 + 88) = 0;
      *(a3 + 96) = 0;
      *(a3 + 80) = 0;
      *a3 = *a4;
      v63 = *(a4 + 4);
      *(a3 + 8) = *v46;
      *(a3 + 16) = v63;
      v64 = *(a4 + 49);
      v65 = *(a4 + 5);
      *(a3 + 24) = *(a4 + 3);
      *(a3 + 40) = v65;
      *(a3 + 49) = v64;
      *(a3 + 72) = *(a4 + 18);
      v66 = a4[12];
      *(a3 + 80) = *(a4 + 5);
      *(a3 + 96) = v66;
      *a4 = v59;
      *v46 = v96;
      *(a4 + 4) = v103;
      *(a4 + 3) = *&v110[4];
      *(a4 + 5) = *&v110[20];
      *(a4 + 49) = *&v110[29];
      *(a4 + 18) = v60;
      *(a4 + 5) = v62;
      a4[12] = v61;
      v67 = *(a3 + 104);
      v68 = *(a3 + 128);
      v69 = *(a3 + 112);
      *(a3 + 120) = 0;
      *(a3 + 128) = 0;
      *(a3 + 112) = 0;
      *(a3 + 104) = *(a4 + 26);
      *(a3 + 112) = *(a4 + 7);
      *(a3 + 128) = a4[16];
      *(a4 + 26) = v67;
      *(a4 + 7) = v69;
      a4[16] = v68;
      result = *(a3 + 104);
      if (result < *(a2 + 104))
      {
        v70 = (a2 + 8);
        v71 = *a2;
        v97 = *(a2 + 8);
        v104 = *(a2 + 16);
        *v111 = *(a2 + 20);
        *&v111[16] = *(a2 + 36);
        *&v111[29] = *(a2 + 49);
        v72 = *(a2 + 72);
        v73 = *(a2 + 96);
        v74 = *(a2 + 80);
        *(a2 + 88) = 0;
        *(a2 + 96) = 0;
        *(a2 + 80) = 0;
        *a2 = *a3;
        v75 = *(a3 + 16);
        *(a2 + 8) = *v58;
        *(a2 + 16) = v75;
        v76 = *(a3 + 49);
        v77 = *(a3 + 40);
        *(a2 + 24) = *(a3 + 24);
        *(a2 + 40) = v77;
        *(a2 + 49) = v76;
        *(a2 + 72) = *(a3 + 72);
        v78 = *(a3 + 96);
        *(a2 + 80) = *(a3 + 80);
        *(a2 + 96) = v78;
        *a3 = v71;
        *v58 = v97;
        *(a3 + 16) = v104;
        *(a3 + 24) = *&v111[4];
        *(a3 + 40) = *&v111[20];
        *(a3 + 49) = *&v111[29];
        *(a3 + 72) = v72;
        *(a3 + 80) = v74;
        *(a3 + 96) = v73;
        v79 = *(a2 + 104);
        v80 = *(a2 + 128);
        v81 = *(a2 + 112);
        *(a2 + 120) = 0;
        *(a2 + 128) = 0;
        *(a2 + 112) = 0;
        *(a2 + 104) = *(a3 + 104);
        *(a2 + 112) = *(a3 + 112);
        *(a2 + 128) = *(a3 + 128);
        *(a3 + 104) = v79;
        *(a3 + 112) = v81;
        *(a3 + 128) = v80;
        result = *(a2 + 104);
        if (result < *(a1 + 104))
        {
          v82 = *a1;
          v98 = *(a1 + 8);
          v105 = *(a1 + 16);
          *v112 = *(a1 + 20);
          *&v112[16] = *(a1 + 36);
          *&v112[29] = *(a1 + 49);
          v83 = *(a1 + 72);
          v84 = *(a1 + 96);
          v85 = *(a1 + 80);
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          *(a1 + 80) = 0;
          *a1 = *a2;
          v86 = *(a2 + 16);
          *(a1 + 8) = *v70;
          *(a1 + 16) = v86;
          v87 = *(a2 + 49);
          v88 = *(a2 + 40);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 40) = v88;
          *(a1 + 49) = v87;
          *(a1 + 72) = *(a2 + 72);
          v89 = *(a2 + 96);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 96) = v89;
          *a2 = v82;
          *v70 = v98;
          *(a2 + 16) = v105;
          *(a2 + 24) = *&v112[4];
          *(a2 + 40) = *&v112[20];
          *(a2 + 49) = *&v112[29];
          *(a2 + 72) = v83;
          *(a2 + 80) = v85;
          *(a2 + 96) = v84;
          result = *(a1 + 104);
          v90 = *(a1 + 128);
          v91 = *(a1 + 112);
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
          *(a1 + 112) = 0;
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 128) = *(a2 + 128);
          *(a2 + 104) = result;
          *(a2 + 112) = v91;
          *(a2 + 128) = v90;
        }
      }
    }
  }

  return result;
}

BOOL sub_11B62B8(uint64_t a1, uint64_t a2)
{
  v4 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_11B55E0(a1, (a1 + 136), (a2 - 136));
        break;
      case 4:
        v68 = a1 + 136;
        v69 = a1;
        sub_11B55E0(a1, (a1 + 136), (a1 + 272));
        if (*(a2 - 32) < *(a1 + 376))
        {
          v35 = *(a1 + 272);
          v70 = *(a1 + 280);
          v71 = *(a1 + 288);
          v36 = *(a1 + 308);
          *v72 = *(a1 + 292);
          *&v72[16] = v36;
          *&v72[29] = *(a1 + 321);
          v37 = *(a1 + 344);
          v38 = *(a1 + 368);
          v39 = (a1 + 296);
          v40 = *(a1 + 352);
          *(a1 + 360) = 0;
          *(a1 + 368) = 0;
          *(a1 + 352) = 0;
          *(a1 + 272) = *(a2 - 136);
          v41 = *(a2 - 120);
          *(a1 + 280) = *(a2 - 128);
          *(a1 + 288) = v41;
          v42 = *(a2 - 87);
          v43 = *(a2 - 96);
          *(a1 + 296) = *(a2 - 112);
          *(a1 + 312) = v43;
          *(a1 + 321) = v42;
          *(a1 + 344) = *(a2 - 64);
          v44 = *(a2 - 40);
          *(a1 + 352) = *(a2 - 56);
          *(a1 + 368) = v44;
          v45 = v70;
          *(a2 - 136) = v35;
          *(a2 - 128) = v45;
          *(a2 - 120) = v71;
          v46 = *&v72[20];
          *(a2 - 112) = *&v72[4];
          *(a2 - 96) = v46;
          *(a2 - 87) = *&v72[29];
          *(a2 - 64) = v37;
          *(a2 - 56) = v40;
          *(a2 - 40) = v38;
          v47 = *(a1 + 376);
          v48 = *(a1 + 400);
          v49 = *(a1 + 384);
          *(a1 + 392) = 0;
          *(a1 + 400) = 0;
          *(a1 + 384) = 0;
          *(a1 + 376) = *(a2 - 32);
          *(a1 + 384) = *(a2 - 24);
          *(a1 + 400) = *(a2 - 8);
          *(a2 - 32) = v47;
          *(a2 - 24) = v49;
          *(a2 - 8) = v48;
          v50 = *(a1 + 376);
          v51 = *(a1 + 240);
          if (v50 < v51)
          {
            v52 = *(a1 + 136);
            v70 = *(a1 + 144);
            v71 = *(a1 + 152);
            v53 = *(a1 + 172);
            *v72 = *(a1 + 156);
            *&v72[16] = v53;
            *&v72[29] = *(a1 + 185);
            v54 = *(a1 + 208);
            v55 = *(a1 + 280);
            v56 = *(a1 + 288);
            *(a1 + 288) = v71;
            *(a1 + 280) = v70;
            v57 = *(a1 + 264);
            *(a1 + 136) = *(a1 + 272);
            *(a1 + 144) = v55;
            v58 = *(a1 + 232);
            *(a1 + 152) = v56;
            v59 = *v39;
            v60 = *(a1 + 312);
            *(a1 + 185) = *(a1 + 321);
            *(a1 + 160) = v59;
            *(a1 + 176) = v60;
            *(a1 + 208) = *(a1 + 344);
            v61 = *(a1 + 352);
            *(a1 + 232) = *(a1 + 368);
            v62 = *&v72[4];
            v63 = *&v72[20];
            *(a1 + 321) = *&v72[29];
            *v39 = v62;
            *(a1 + 312) = v63;
            *(a1 + 344) = v54;
            v64 = *(a1 + 216);
            *(a1 + 216) = v61;
            *(a1 + 352) = v64;
            *(a1 + 368) = v58;
            *(a1 + 240) = v50;
            v65 = *(a1 + 384);
            *(a1 + 264) = *(a1 + 400);
            *(a1 + 272) = v52;
            *(a1 + 376) = v51;
            v66 = *(a1 + 248);
            *(a1 + 248) = v65;
            *(a1 + 384) = v66;
            LODWORD(v66) = *(a1 + 104);
            *(a1 + 400) = v57;
            if (v50 < *&v66)
            {
              sub_11B54A4(&v69, &v68);
            }
          }
        }

        return 1;
      case 5:
        sub_11B5B20(a1, a1 + 136, a1 + 272, (a1 + 408), (a2 - 136));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 32) < *(a1 + 104))
    {
      v5 = *a1;
      v70 = *(a1 + 8);
      v71 = *(a1 + 16);
      v6 = *(a1 + 36);
      *v72 = *(a1 + 20);
      *&v72[16] = v6;
      *&v72[29] = *(a1 + 49);
      v7 = *(a1 + 72);
      v8 = *(a1 + 96);
      v9 = *(a1 + 80);
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = 0;
      *a1 = *(a2 - 136);
      v10 = *(a2 - 120);
      *(a1 + 8) = *(a2 - 128);
      *(a1 + 16) = v10;
      v11 = *(a2 - 87);
      v12 = *(a2 - 96);
      *(a1 + 24) = *(a2 - 112);
      *(a1 + 40) = v12;
      *(a1 + 49) = v11;
      *(a1 + 72) = *(a2 - 64);
      v13 = *(a2 - 40);
      *(a1 + 80) = *(a2 - 56);
      *(a1 + 96) = v13;
      v14 = v70;
      *(a2 - 136) = v5;
      *(a2 - 128) = v14;
      *(a2 - 120) = v71;
      v15 = *&v72[20];
      *(a2 - 112) = *&v72[4];
      *(a2 - 96) = v15;
      *(a2 - 87) = *&v72[29];
      *(a2 - 64) = v7;
      *(a2 - 56) = v9;
      *(a2 - 40) = v8;
      v16 = *(a1 + 104);
      v17 = *(a1 + 128);
      v18 = *(a1 + 112);
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 112) = 0;
      *(a1 + 104) = *(a2 - 32);
      *(a1 + 112) = *(a2 - 24);
      *(a1 + 128) = *(a2 - 8);
      *(a2 - 32) = v16;
      *(a2 - 24) = v18;
      *(a2 - 8) = v17;
    }

    return 1;
  }

LABEL_11:
  v19 = a1 + 272;
  sub_11B55E0(a1, (a1 + 136), (a1 + 272));
  v20 = a1 + 408;
  if (a1 + 408 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (*(v20 + 104) < *(v19 + 104))
    {
      v24 = *(v20 + 48);
      *&v72[32] = *(v20 + 32);
      v73 = v24;
      v74 = *(v20 + 64);
      v25 = *(v20 + 16);
      *v72 = *v20;
      *&v72[16] = v25;
      v75 = *(v20 + 72);
      *__p = *(v20 + 80);
      v77 = *(v20 + 96);
      *(v20 + 80) = 0;
      *(v20 + 88) = 0;
      *(v20 + 96) = 0;
      v78 = *(v20 + 104);
      *v79 = *(v20 + 112);
      v80 = *(v20 + 128);
      *(v20 + 112) = 0;
      *(v20 + 120) = 0;
      v26 = v21;
      *(v20 + 128) = 0;
      while (1)
      {
        sub_11B0CA4(a1 + v26 + 408, a1 + v26 + 272);
        if (v26 == -272)
        {
          break;
        }

        v27 = *(a1 + v26 + 240);
        v26 -= 136;
        if (v78 >= v27)
        {
          sub_11B0CA4(a1 + v26 + 408, v72);
          v28 = v79[0];
          if (!v79[0])
          {
            goto LABEL_31;
          }

          goto LABEL_24;
        }
      }

      sub_11B0CA4(a1, v72);
      v28 = v79[0];
      if (!v79[0])
      {
        goto LABEL_31;
      }

LABEL_24:
      v29 = v79[1];
      v30 = v28;
      if (v79[1] != v28)
      {
        do
        {
          v31 = *(v29 - 9);
          v29 -= 4;
          if (v31 < 0)
          {
            operator delete(*v29);
          }
        }

        while (v29 != v28);
        v30 = v79[0];
      }

      v79[1] = v28;
      operator delete(v30);
LABEL_31:
      v32 = __p[0];
      if (__p[0])
      {
        v33 = __p[1];
        v23 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v34 = *(v33 - 9);
            v33 -= 4;
            if (v34 < 0)
            {
              operator delete(*v33);
            }
          }

          while (v33 != v32);
          v23 = __p[0];
        }

        __p[1] = v32;
        operator delete(v23);
      }

      if (++v22 == 8)
      {
        return v20 + 136 == a2;
      }
    }

    v19 = v20;
    v21 += 136;
    v20 += 136;
    if (v20 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_11B68C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_2675E08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_11B6904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing11RoadSnapper20snap_to_nearest_roadERKNS0_15LocationDetailsENS_4data13SnapPointTypeEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing11RoadSnapper20snap_to_nearest_roadERKNS0_15LocationDetailsENS_4data13SnapPointTypeEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing11RoadSnapper20snap_to_nearest_roadERKNS0_15LocationDetailsENS_4data13SnapPointTypeEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing11RoadSnapper20snap_to_nearest_roadERKNS0_15LocationDetailsENS_4data13SnapPointTypeEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

double sub_11B697C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v16);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 != v5)
  {
    v6 = *(a1 + 8);
    while (*v6 != 1)
    {
      v6 += 240;
      if (v6 == v5)
      {
        goto LABEL_9;
      }
    }

    v7 = *(a1 + 8);
    do
    {
      if (*v7 == 2)
      {
        sub_CF3D08(&v15, 0xEEEEEEEEEEEEEEEFLL * ((v5 - v4) >> 4));
      }

      v7 += 240;
    }

    while (v7 != v5);
  }

LABEL_9:
  v14.n128_u64[0] = 1;
  v14.n128_u64[1] = &off_2669FE0;
  sub_434934(v10, &v14);
  *a2 = 0;
  result = *v10;
  v9 = *__p;
  *(a2 + 8) = *v10;
  *(a2 + 24) = v9;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  return result;
}

void sub_11B7358(_Unwind_Exception *a1)
{
  sub_11ABFD0(&STACK[0x290]);
  if (STACK[0x348])
  {
    operator delete(STACK[0x348]);
    sub_CF41AC(&STACK[0x360]);
    _Unwind_Resume(a1);
  }

  sub_CF41AC(&STACK[0x360]);
  _Unwind_Resume(a1);
}

uint64_t sub_11B7468(void *a1, uint64_t *a2)
{
  result = sub_11D76B0(a1);
  if (result)
  {
    v5 = sub_3AF6B4(a1);

    return sub_11D782C(a2, v5, (a2 + 16));
  }

  return result;
}

uint64_t sub_11B74C4(unsigned int **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *a1 + 1;
  if (*a1 != v2 && v3 != v2)
  {
    while (1)
    {
      v5 = *v3 - 17;
      if (v5 > 0x15)
      {
        v6 = -1;
        v7 = *v1 - 17;
        if (v7 <= 0x15)
        {
          goto LABEL_6;
        }

LABEL_13:
        if (v6 != -1)
        {
          v1 = v3;
        }

        if (++v3 == v2)
        {
          return *v1;
        }
      }

      else
      {
        v6 = dword_22B0F20[v5];
        v7 = *v1 - 17;
        if (v7 > 0x15)
        {
          goto LABEL_13;
        }

LABEL_6:
        if (v6 < dword_22B0F20[v7])
        {
          v1 = v3;
        }

        if (++v3 == v2)
        {
          return *v1;
        }
      }
    }
  }

  return *v1;
}

uint64_t sub_11B7558(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 48) = 0u;
  v5 = (a1 + 48);
  *(a1 + 96) = 0u;
  *(a1 + 109) = 0u;
  v6 = (a1 + 24);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v7 = (a1 + 72);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_11B76B0((a1 + 96), a3);
  v8 = *a2;
  v9 = a2[1];
  if (v8 != v9)
  {
    v10 = *(v8 + 72);
    v11 = *(v8 + 80);
    if (v10 != v11)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = *(v8 + 96);
    if (!v13)
    {
      v14 = v7;
LABEL_17:
      sub_11B76B0(v14, v8);
      goto LABEL_4;
    }

    v14 = v6;
    if (v13 == 1)
    {
      goto LABEL_17;
    }

    v14 = v5;
    if (v13 == 2)
    {
      goto LABEL_17;
    }

LABEL_4:
    while (1)
    {
      v8 += 176;
      if (v8 == v9)
      {
        break;
      }

      v10 = *(v8 + 72);
      v11 = *(v8 + 80);
      if (v10 == v11)
      {
        goto LABEL_12;
      }

LABEL_6:
      while (*v10 > 6u || ((1 << *v10) & 0x49) == 0)
      {
        if (++v10 == v11)
        {
          goto LABEL_12;
        }
      }

      sub_11B76B0(a1, v8);
    }
  }

  return a1;
}

void sub_11B7678(_Unwind_Exception *a1)
{
  sub_48C9A4(v4);
  sub_48C9A4(v5);
  sub_48C9A4(v2);
  sub_48C9A4(v3);
  sub_48C9A4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_11B76B0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_D4E5B4(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(v3 + 63) = *(a2 + 63);
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    *(v3 + 72) = 0;
    *(v3 + 16) = v4;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    v8 = *(a2 + 72);
    v7 = *(a2 + 80);
    if (v7 != v8)
    {
      if (((v7 - v8) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v9 = *(a2 + 96);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 96) = v9;
    v10 = *(a2 + 120);
    *(v3 + 136) = *(a2 + 136);
    *(v3 + 120) = v10;
    sub_81988((v3 + 152), a2 + 152);
    result = v3 + 176;
    a1[1] = v3 + 176;
  }

  a1[1] = result;
  return result;
}

void sub_11B77B8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 80) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_11B77E0(uint64_t *result)
{
  if ((result[15] & 1) != 0 || (*(result + 120) = 1, *result == result[1]))
  {
    if ((*(result + 121) & 1) == 0)
    {
      v1 = result + 3;
      v2 = result[3];
      *(result + 121) = 1;
      if (v2 != result[4])
      {
        return v1;
      }
    }

    if ((*(result + 122) & 1) == 0)
    {
      v1 = result + 6;
      v3 = result[6];
      *(result + 122) = 1;
      if (v3 != result[7])
      {
        return v1;
      }
    }

    if ((*(result + 123) & 1) == 0)
    {
      v1 = result + 9;
      v4 = result[9];
      *(result + 123) = 1;
      if (v4 != result[10])
      {
        return v1;
      }
    }

    if ((*(result + 124) & 1) == 0)
    {
      *(result + 124) = 1;
      result += 12;
      return result;
    }

    v1 = &qword_27C3FC8;
    if (atomic_load_explicit(&qword_27C3FC0, memory_order_acquire))
    {
      return v1;
    }

    if (__cxa_guard_acquire(&qword_27C3FC0))
    {
      qword_27C3FD0 = 0;
      unk_27C3FD8 = 0;
      qword_27C3FC8 = 0;
      __cxa_guard_release(&qword_27C3FC0);
    }

    return &qword_27C3FC8;
  }

  return result;
}

uint64_t sub_11B7914(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    return (*(a1 + 121) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_11B7938(_BYTE *a1)
{
  if ((a1[121] & 1) != 0 || (a1[122] & 1) != 0 || a1[123] == 1)
  {
    return (a1[124] ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_11B796C(uint64_t a1, void *a2, char a3)
{
  *a1 = sub_3AF6B4(a2);
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = sub_11D76B0(a2);
  return a1;
}

void sub_11B79EC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a2 + 52) != 1 || *(a4 + 50) >> 5 > 0x464u || *a3 > *(a2 + 72) || *(a4 + 56) < *(a2 + 64) && (*(a2 + 124) & 1) == 0 && *(a4 + 65) != 1)
  {
    return;
  }

  sub_2B79D0(*a1, a3[4], &v23);
  sub_31BF20(&v23, &v26);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  LOWORD(v4) = *(a4 + 50);
  v9 = sub_4A7FF4(&v26, 0, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 2) - 1, a4, 0, 0x7FFFFFFFFFFFFFFFLL, 1);
  v10 = v4 / 100.0;
  v11 = v26 + 12 * v9;
  v12 = v11[3];
  v13 = v12 - *v11;
  if (v12 != *v11)
  {
    v17 = v11[4];
    v16 = v11[1];
    goto LABEL_13;
  }

  v14 = a3;
  j = a1;
  v16 = v11[1];
  v17 = v11[4];
  i = 0.0;
  if (v16 != v17)
  {
LABEL_13:
    v19 = --v13;
    if (v13 < -v13)
    {
      v19 = v13;
    }

      ;
    }

    v14 = a3;
      ;
    }
  }

    ;
  }

    ;
  }

  sub_11B7E18(j, v14, 256);
  sub_11B7E18(a1, a3, 257);
  if (*(a2 + 124) == 1)
  {
    v21 = *(a4 + 48);
    if (v21 >> 5 <= 0x464)
    {
      v22 = v21 / 100.0;
      v23 = v22;
    }
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }
}

void sub_11B7DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11B7E18(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a3;
  v5 = *(a1 + 8);
  if (*(a1 + 8))
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        return 0;
      }

      v6 = sub_2B51D8(*a1, *(a2 + 32));
      if ((a3 & 0x100) != 0)
      {
        v7 = (v6 - *v6);
        v8 = *v7;
        if (v4)
        {
          if (v8 >= 0x47)
          {
            v9 = v7[35];
            if (v9)
            {
              return (*(v6 + v9) & 2) != 0;
            }
          }
        }

        else if (v8 >= 0x47)
        {
          v31 = v7[35];
          if (v31)
          {
            return (*(v6 + v31) & 1) != 0;
          }
        }

        return 0;
      }

      v26 = (v6 - *v6);
      if (*v26 < 0x47u)
      {
        return 0;
      }

      v27 = v26[35];
      if (!v27)
      {
        return 0;
      }

      v28 = *(v6 + v27);
      if ((v28 & 1) == 0)
      {
        return (v28 >> 1) & 1;
      }

      return 1;
    }

    v11 = sub_2B51D8(*a1, *(a2 + 32));
    if ((a3 & 0x100) != 0)
    {
      v12 = (v11 - *v11);
      v13 = *v12;
      if (v4)
      {
        if (v13 < 0x39)
        {
          return 0;
        }

        v14 = v12[28];
        if (!v14)
        {
          return 0;
        }

        v15 = *(v11 + v14);
        if ((v15 & 2) != 0)
        {
          return 1;
        }
      }

      else
      {
        if (v13 < 0x39)
        {
          return 0;
        }

        v29 = v12[28];
        if (!v29)
        {
          return 0;
        }

        v15 = *(v11 + v29);
        if (v15)
        {
          return 1;
        }
      }

      if ((v15 & 7) == 4)
      {
        return 1;
      }

      if ((v15 & 3) != 0)
      {
        return 0;
      }
    }

    else
    {
      v20 = (v11 - *v11);
      if (*v20 < 0x39u)
      {
        return 0;
      }

      v21 = v20[28];
      if (!v21)
      {
        return 0;
      }

      v15 = *(v11 + v21);
      if ((v15 & 3) != 0 || (v15 & 7) == 4)
      {
        return 1;
      }
    }

    return (v15 >> 5) & 1;
  }

  v16 = sub_2B51D8(*a1, *(a2 + 32));
  if ((a3 & 0x100) != 0)
  {
    v17 = (v16 - *v16);
    v18 = *v17;
    if (v4)
    {
      if (v18 >= 0x9B)
      {
        v19 = v17[77];
        if (v19)
        {
          return (*(v16 + v19) & 2) != 0;
        }
      }
    }

    else if (v18 >= 0x9B)
    {
      v30 = v17[77];
      if (v30)
      {
        return (*(v16 + v30) & 1) != 0;
      }
    }

    return 0;
  }

  v23 = (v16 - *v16);
  if (*v23 >= 0x9Bu)
  {
    v24 = v23[77];
    if (v24)
    {
      v25 = *(v16 + v24);
      if ((v25 & 1) == 0)
      {
        return (v25 >> 1) & 1;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_11B807C(uint64_t *a1, uint64_t a2, int *a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v7 = sub_11BA474(a1, a2, a3);
    a1[1] = v7;
    return v7 - 32;
  }

  else
  {
    v5 = *a3;
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[1], *a2, *(a2 + 8));
    }

    else
    {
      v6 = *a2;
      *(v4 + 16) = *(a2 + 16);
      *v4 = v6;
    }

    *(v4 + 24) = v5;
    a1[1] = v4 + 32;
    a1[1] = v4 + 32;
    return v4;
  }
}

void sub_11B811C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v10 = sub_11B8D20(a1 + 16, a3, a4, a5);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  v11 = sub_2B51D8(*a1, a2[4]);
  v12 = (v11 - *v11);
  if (*v12 >= 0x9Bu)
  {
    v13 = v12[77];
    if (v13)
    {
      if ((*(v11 + v13) & 8) != 0)
      {
        v14 = *(v10 + 1);
        v96 = 5;
        strcpy(__p, "ferry");
        v97 = v14;
        *a6 = v14 + *a6;
        if (*(a1 + 72))
        {
          sub_11B807C((a6 + 8), __p, &v97);
          if (v96 < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  v15 = a2[7] + *a2;
  v16 = *v10;
  v96 = 8;
  strcpy(__p, "distance");
  v17 = v15 / 100.0 * v16;
  v97 = v17;
  *a6 = *a6 + v17;
  if (*(a1 + 72))
  {
    sub_11B807C((a6 + 8), __p, &v97);
    if (v96 < 0)
    {
      operator delete(*__p);
    }
  }

  v18 = sub_2B51D8(*a1, a2[4]);
  v19 = (v18 - *v18);
  if (*v19 >= 0x2Fu && (v20 = v19[23]) != 0 && !*(v18 + v20))
  {
    v29 = *(v10 + 2);
    if (*a2 > v10[2])
    {
      v29 = *a2 / 100.0 * *(v10 + 6) + v29;
    }

    v96 = 7;
    strcpy(__p, "freeway");
    v97 = v29;
    *a6 = v29 + *a6;
    if (*(a1 + 72))
    {
      goto LABEL_116;
    }
  }

  else
  {
    v21 = sub_2B51D8(*a1, a2[4]);
    v22 = (v21 - *v21);
    if (*v22 >= 0x2Fu)
    {
      v23 = v22[23];
      if (v23)
      {
        v24 = *(v21 + v23);
        v25 = v24 > 0x2A;
        v26 = (1 << v24) & 0x50426810004;
        if (!v25 && v26 != 0)
        {
          v28 = *(v10 + 7);
          if (*a2 > v10[4])
          {
            v28 = *a2 / 100.0 * *(v10 + 10) + v28;
          }

          v96 = 4;
          strcpy(__p, "ramp");
          v97 = v28;
          *a6 = v28 + *a6;
          if (*(a1 + 72))
          {
LABEL_116:
            sub_11B807C((a6 + 8), __p, &v97);
            if (v96 < 0)
            {
              operator delete(*__p);
            }
          }
        }
      }
    }
  }

  v30 = sub_2B51D8(*a1, a2[4]);
  v31 = (v30 - *v30);
  if (*v31 >= 0x9Bu && (v32 = v31[77]) != 0 && (*(v30 + v32 + 1) & 8) != 0)
  {
    v37 = *(v10 + 12);
    v96 = 6;
    strcpy(__p, "tunnel");
    v97 = v37;
    *a6 = v37 + *a6;
    if ((*(a1 + 72) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v33 = sub_2B51D8(*a1, a2[4]);
    v34 = (v33 - *v33);
    if (*v34 < 0x9Bu)
    {
      goto LABEL_31;
    }

    v35 = v34[77];
    if (!v35)
    {
      goto LABEL_31;
    }

    if ((*(v33 + v35 + 1) & 4) == 0)
    {
      goto LABEL_31;
    }

    v36 = *(v10 + 11);
    v96 = 6;
    strcpy(__p, "bridge");
    v97 = v36;
    *a6 = v36 + *a6;
    if ((*(a1 + 72) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  sub_11B807C((a6 + 8), __p, &v97);
  if (v96 < 0)
  {
    operator delete(*__p);
  }

LABEL_31:
  if ((sub_11B7E18(a1, a2, 0) & 1) == 0)
  {
    v38 = *(v10 + 20);
    v96 = 21;
    strcpy(__p, "non_navigable_segment");
    v97 = v38;
    *a6 = v38 + *a6;
    if (*(a1 + 72))
    {
      sub_11B807C((a6 + 8), __p, &v97);
      if (v96 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v39 = sub_2B51D8(*a1, a2[4]);
  v40 = (v39 - *v39);
  v41 = *v40;
  if (v41 < 0x9B)
  {
    if (v41 < 0x39)
    {
      goto LABEL_42;
    }
  }

  else if (v40[77] && (*(v39 + v40[77]) & 3) != 0)
  {
    goto LABEL_42;
  }

  v42 = v40[28];
  if (v42)
  {
    v43 = *(v39 + v42);
    if ((v43 & 0x23) != 0 || (v43 & 7) == 4)
    {
      v44 = *(v10 + 21);
      v45 = *a2;
      v96 = 20;
      strcpy(__p, "walking_only_segment");
      v46 = v45 / 100.0 * v44;
      v97 = v46;
      *a6 = *a6 + v46;
      if (*(a1 + 72))
      {
        sub_11B807C((a6 + 8), __p, &v97);
        if (v96 < 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

LABEL_42:
  v47 = *a1;
  v48 = sub_2B51D8(*a1, a2[4]);
  v49 = (v48 - *v48);
  if (*v49 >= 0x9Bu)
  {
    v50 = v49[77];
    if (v50)
    {
      if ((*(v48 + v50) & 3) != 0)
      {
        goto LABEL_66;
      }
    }
  }

  v51 = sub_2B51D8(v47, a2[4]);
  v52 = (v51 - *v51);
  if (*v52 < 0x39u)
  {
    goto LABEL_66;
  }

  v53 = v52[28];
  if (!v53)
  {
    goto LABEL_66;
  }

  v54 = *(v51 + v53);
  if ((v54 & 0x23) == 0 && (v54 & 7) != 4)
  {
    goto LABEL_66;
  }

  v55 = sub_2B51D8(v47, a2[4]);
  v56 = (v55 - *v55);
  if (*v56 >= 0x47u)
  {
    v57 = v56[35];
    if (v57)
    {
      if ((*(v55 + v57) & 3) != 0)
      {
        goto LABEL_66;
      }
    }
  }

  v58 = sub_2B51D8(*a1, a2[4]);
  v59 = (v58 - *v58);
  if (*v59 < 0x2Fu)
  {
    goto LABEL_66;
  }

  v60 = v59[23];
  if (!v60 || *(v58 + v60) != 44)
  {
    goto LABEL_66;
  }

  if ((*(v10 + 92) & 1) == 0)
  {
    v61 = sub_2B51D8(*a1, a2[4]);
    v62 = (v61 - *v61);
    v63 = *v62;
    if (v63 < 0x5F)
    {
      LODWORD(v64) = 0;
    }

    else
    {
      v64 = v62[47];
      if (v62[47])
      {
        LODWORD(v64) = *(v61 + v64 + *(v61 + v64));
      }

      if (v63 >= 0x61)
      {
        v65 = v62[48];
        if (v65)
        {
          LODWORD(v65) = *(v61 + v65 + *(v61 + v65));
        }

LABEL_64:
        if (v65 + v64)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }
    }

    LODWORD(v65) = 0;
    goto LABEL_64;
  }

LABEL_65:
  v66 = *(v10 + 22);
  v96 = 21;
  strcpy(__p, "sidewalk_walking_only");
  v97 = v66;
  *a6 = v66 + *a6;
  if (*(a1 + 72))
  {
    sub_11B807C((a6 + 8), __p, &v97);
    if (v96 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_66:
  v67 = sub_2B51D8(*a1, a2[4]);
  v68 = (v67 - *v67);
  if (*v68 >= 0x2Fu)
  {
    v69 = v68[23];
    if (v69)
    {
      if (*(v67 + v69) == 10)
      {
        v70 = *(v10 + 24);
        v96 = 18;
        strcpy(__p, "logical_connection");
        v97 = v70;
        *a6 = v70 + *a6;
        if (*(a1 + 72))
        {
          sub_11B807C((a6 + 8), __p, &v97);
          if (v96 < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  v71 = sub_2B51D8(*a1, a2[4]);
  v72 = (v71 - *v71);
  if (*v72 >= 0x45u)
  {
    v73 = v72[34];
    if (v73)
    {
      if (*(v71 + v73) == 3)
      {
        v74 = *(v10 + 25);
        v96 = 11;
        strcpy(__p, "underground");
        v97 = v74;
        *a6 = v74 + *a6;
        if (*(a1 + 72))
        {
          sub_11B807C((a6 + 8), __p, &v97);
          if (v96 < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  v75 = sub_2B51D8(*a1, a2[4]);
  v76 = (v75 - *v75);
  if (*v76 >= 0x45u)
  {
    v77 = v76[34];
    if (v77)
    {
      if (*(v75 + v77) == 1)
      {
        v78 = *(v10 + 26);
        v96 = 6;
        strcpy(__p, "indoor");
        v97 = v78;
        *a6 = v78 + *a6;
        if (*(a1 + 72))
        {
          sub_11B807C((a6 + 8), __p, &v97);
          if (v96 < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  v79 = sub_2B51D8(*a1, a2[4]);
  v80 = (v79 - *v79);
  if (*v80 >= 0x45u)
  {
    v81 = v80[34];
    if (v81)
    {
      if (*(v79 + v81) == 2)
      {
        v82 = *(v10 + 27);
        v96 = 7;
        strcpy(__p, "covered");
        v97 = v82;
        *a6 = v82 + *a6;
        if (*(a1 + 72))
        {
          sub_11B807C((a6 + 8), __p, &v97);
          if (v96 < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  v83 = sub_2B51D8(*a1, a2[4]);
  v84 = (v83 - *v83);
  if (*v84 >= 0x9Bu)
  {
    v85 = v84[77];
    if (v85)
    {
      if ((*(v83 + v85 + 2) & 4) != 0)
      {
        v86 = *(v10 + 28);
        v87 = *(v10 + 29);
        v96 = 12;
        v88 = *a2;
        strcpy(__p, "terminal_use");
        v89 = v88 / 100.0 * v87 + v86;
        v97 = v89;
        *a6 = *a6 + v89;
        if (*(a1 + 72))
        {
          sub_11B807C((a6 + 8), __p, &v97);
          if (v96 < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  v90 = sub_2B51D8(*a1, a2[4]);
  v91 = (v90 - *v90);
  if (*v91 >= 0x2Fu)
  {
    v92 = v91[23];
    if (v92)
    {
      if (*(v90 + v92) == 9)
      {
        v93 = *(v10 + 30);
        v96 = 6;
        strcpy(__p, "stairs");
        v97 = v93;
        *a6 = v93 + *a6;
        if (*(a1 + 72))
        {
          sub_11B807C((a6 + 8), __p, &v97);
          if (v96 < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  sub_11B79EC(a1, v10, a2, a3);
  v96 = 9;
  strcpy(__p, "direction");
  v97 = v94;
  *a6 = v94 + *a6;
  if (*(a1 + 72))
  {
    sub_11B807C((a6 + 8), __p, &v97);
    if (v96 < 0)
    {
      operator delete(*__p);
    }
  }
}

void sub_11B8C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_11B1354(v14);
    _Unwind_Resume(a1);
  }

  sub_11B1354(v14);
  _Unwind_Resume(a1);
}

uint64_t *sub_11B8D20(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a2 + 72) == *(a2 + 80))
  {
    if (a3 > 3)
    {
      if (a3 != 4)
      {
        if (a3 == 6)
        {
          v8 = 3;
          goto LABEL_3;
        }

        goto LABEL_75;
      }
    }

    else
    {
      if (a3 == 1)
      {
        if (a4)
        {
          v8 = 5;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_3;
      }

      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v8 = 1;
          goto LABEL_3;
        }

LABEL_75:
        v8 = 0;
        goto LABEL_3;
      }
    }

    v8 = 2;
    goto LABEL_3;
  }

  v8 = 4;
LABEL_3:
  v42 = v8;
  v9 = *(a1 + 24);
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v8;
    if (v9 <= v8)
    {
      v11 = v8 % *(a1 + 24);
    }
  }

  else
  {
    v11 = (v9 - 1) & v8;
  }

  v12 = *(*(a1 + 16) + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_28:
    v16 = *a1;
    v41 = 10;
    strcpy(v40, "SnapScorer");
    __p = 0uLL;
    v39 = 0;
    v17 = sub_3AEC94(v16, v40, &__p);
    v18 = __p;
    if (__p)
    {
      v19 = *(&__p + 1);
      v20 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          v21 = *(v19 - 1);
          v19 -= 3;
          if (v21 < 0)
          {
            operator delete(*v19);
          }
        }

        while (v19 != v18);
        v20 = __p;
      }

      *(&__p + 1) = v18;
      operator delete(v20);
    }

    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    v23 = *(a2 + 72);
    v22 = *(a2 + 80);
    HIBYTE(v39) = 8;
    strcpy(&__p, "any_mode");
    v24 = sub_5F5AC(v17, &__p);
    sub_11B92D8(v24, a3, v23 != v22, a4, v40);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p);
      v25 = *(a1 + 8);
      if (*(a1 + 8))
      {
LABEL_40:
        if (v25 == 2)
        {
          HIBYTE(v37) = 7;
          LODWORD(v36[0]) = 1802264951;
          v26 = 26987;
        }

        else
        {
          if (v25 != 3)
          {
            v36[0] = 0;
            v36[1] = 0;
            v37 = 0;
LABEL_48:
            v27 = sub_5F5AC(v17, v36);
            sub_11B92D8(v27, a3, v23 != v22, a4, &__p);
            if (SHIBYTE(v37) < 0)
            {
              operator delete(v36[0]);
            }

            sub_5FC7C(v40, &__p);
            v36[0] = &v42;
            sub_11BA630();
          }

          HIBYTE(v37) = 7;
          LODWORD(v36[0]) = 1818458467;
          v26 = 26988;
        }

LABEL_46:
        *(v36 + 3) = v26 | 0x676E0000;
        HIBYTE(v36[0]) = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v25 = *(a1 + 8);
      if (*(a1 + 8))
      {
        goto LABEL_40;
      }
    }

    HIBYTE(v37) = 7;
    LODWORD(v36[0]) = 1986622052;
    v26 = 26998;
    goto LABEL_46;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v13[1];
      if (v15 == v8)
      {
        if (*(v13 + 4) == v8)
        {
          goto LABEL_51;
        }
      }

      else if ((v15 & (v9 - 1)) != v11)
      {
        goto LABEL_28;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v14 >= v9)
    {
      v14 %= v9;
    }

    if (v14 != v11)
    {
      goto LABEL_28;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_28;
    }
  }

  if (*(v13 + 4) != v8)
  {
    goto LABEL_18;
  }

LABEL_51:
  v28 = vcnt_s8(v9);
  v28.i16[0] = vaddlv_u8(v28);
  if (v28.u32[0] > 1uLL)
  {
    v29 = v8;
    if (v9 <= v8)
    {
      v29 = v8 % v9;
    }
  }

  else
  {
    v29 = (v9 - 1) & v8;
  }

  v30 = *(*(a1 + 16) + 8 * v29);
  if (!v30 || (v31 = *v30) == 0)
  {
LABEL_79:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v28.u32[0] < 2uLL)
  {
    v32 = v9 - 1;
    while (1)
    {
      v34 = v31[1];
      if (v34 == v8)
      {
        if (*(v31 + 4) == v8)
        {
          return v31 + 3;
        }
      }

      else if ((v34 & v32) != v29)
      {
        goto LABEL_79;
      }

      v31 = *v31;
      if (!v31)
      {
        goto LABEL_79;
      }
    }
  }

  while (2)
  {
    v33 = v31[1];
    if (v33 != v8)
    {
      if (v33 >= v9)
      {
        v33 %= v9;
      }

      if (v33 != v29)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    }

    if (*(v31 + 4) != v8)
    {
LABEL_60:
      v31 = *v31;
      if (!v31)
      {
        goto LABEL_79;
      }

      continue;
    }

    return v31 + 3;
  }
}

void sub_11B9258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_5C010(&a17);
  sub_5C010(&__p);
  _Unwind_Resume(a1);
}

void sub_11B92B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_11B92D8(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  if ((atomic_load_explicit(&qword_27C3FE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C3FE0))
  {
    sub_5F328(&unk_27C3FE8);
    __cxa_guard_release(&qword_27C3FE0);
  }

  HIBYTE(v21) = 9;
  strcpy(&__p, "any_point");
  v10 = sub_5FAAC(a1, &__p, &unk_27C3FE8);
  sub_5ADDC(a5, v10);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
    if (!a3)
    {
      goto LABEL_10;
    }

LABEL_6:
    HIBYTE(v21) = 12;
    strcpy(&__p, "access_point");
    v11 = sub_5FC3C(a1, &__p);
    if (SHIBYTE(v21) < 0)
    {
      v13 = v11;
      operator delete(__p);
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    else if (!v11)
    {
      goto LABEL_10;
    }

    HIBYTE(v21) = 12;
    strcpy(&__p, "access_point");
    v12 = sub_5F5AC(a1, &__p);
    sub_5FC7C(a5, v12);
    goto LABEL_28;
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_10:
  __p = 0uLL;
  v21 = 0;
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 != 2 && a2 != 3)
      {
        goto LABEL_21;
      }

LABEL_19:
      HIBYTE(v21) = 11;
      *(&__p + 7) = 1852795252;
      *&__p = *"destination";
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  switch(a2)
  {
    case 4:
      goto LABEL_19;
    case 6:
      HIBYTE(v21) = 14;
      qmemcpy(&__p, "transit_entity", 14);
      break;
    case 5:
LABEL_18:
      HIBYTE(v21) = 6;
      qmemcpy(&__p, "origin", 6);
      break;
  }

LABEL_21:
  v14 = sub_5FAAC(a1, &__p, &unk_27C3FE8);
  sub_5FC7C(a5, v14);
  if (a2 != 1 || !a4)
  {
LABEL_28:
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return;
    }

LABEL_31:
    operator delete(__p);
    return;
  }

  v19 = 14;
  strcpy(v18, "reroute_origin");
  v15 = sub_5FC3C(a1, v18);
  if (v19 < 0)
  {
    v16 = v15;
    operator delete(v18[0]);
    if (!v16)
    {
      goto LABEL_28;
    }
  }

  else if (!v15)
  {
    goto LABEL_28;
  }

  v19 = 14;
  strcpy(v18, "reroute_origin");
  v17 = sub_5F5AC(a1, v18);
  sub_5FC7C(a5, v17);
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v18[0]);
  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_31;
  }
}

void sub_11B95F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_5C010(v20);
  _Unwind_Resume(a1);
}

void sub_11B963C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11BA25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_11BA2E0(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4)
  {
    return v2[5];
  }

  if (v3 == 3)
  {
    return v2[5];
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_11BA43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11BA474(uint64_t *a1, uint64_t a2, int *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 32 * v3;
  v9 = *a3;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
    *(v8 + 24) = v9;
    v10 = v8 + 32;
    v11 = *a1;
    v12 = a1[1];
    v13 = v8 + *a1 - v12;
    if (*a1 == v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
    *(v8 + 24) = v9;
    v10 = v8 + 32;
    v11 = *a1;
    v12 = a1[1];
    v13 = v8 + *a1 - v12;
    if (*a1 == v12)
    {
      goto LABEL_21;
    }
  }

  v14 = v11;
  v15 = v13;
  do
  {
    v16 = *v14;
    *(v15 + 16) = *(v14 + 2);
    *v15 = v16;
    *(v14 + 1) = 0;
    *(v14 + 2) = 0;
    *v14 = 0;
    *(v15 + 24) = *(v14 + 6);
    v14 += 2;
    v15 += 32;
  }

  while (v14 != v12);
  do
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    v11 += 32;
  }

  while (v11 != v12);
  v11 = *a1;
LABEL_21:
  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_11BA61C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4BB0B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_11BA7BC(uint64_t a1, unint64_t a2, int *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }

    else
    {
      v5 = a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
    v6 = *(*a1 + 8 * v5);
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  v7 = *v6;
  if (v7)
  {
    v8 = *a3;
    if (v4.u32[0] < 2uLL)
    {
      while (1)
      {
        v9 = v7[1];
        if (v9 == a2)
        {
          if (*(v7 + 4) == v8)
          {
            return v7;
          }
        }

        else if ((v9 & (v3 - 1)) != v5)
        {
          goto LABEL_23;
        }

        v7 = *v7;
        if (!v7)
        {
          goto LABEL_23;
        }
      }
    }

    do
    {
      v10 = v7[1];
      if (v10 == a2)
      {
        if (*(v7 + 4) == v8)
        {
          return v7;
        }
      }

      else
      {
        if (v10 >= v3)
        {
          v10 %= v3;
        }

        if (v10 != v5)
        {
          break;
        }
      }

      v7 = *v7;
    }

    while (v7);
  }

LABEL_23:
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (v3 && (v12 * v3) >= v11)
  {
    return 0;
  }

  v13 = 1;
  if (v3 >= 3)
  {
    v13 = (v3 & (v3 - 1)) != 0;
  }

  v14 = v13 | (2 * v3);
  v15 = vcvtps_u32_f32(v11 / v12);
  if (v14 <= v15)
  {
    prime = v15;
  }

  else
  {
    prime = v14;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    v17 = a1;
    prime = std::__next_prime(prime);
    a1 = v17;
    v3 = *(v17 + 8);
  }

  if (prime <= v3)
  {
    if (prime >= v3)
    {
      return 0;
    }

    v18 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v3 < 3 || (v19 = vcnt_s8(v3), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
    {
      v21 = a1;
      v22 = prime;
      v23 = std::__next_prime(v18);
      a1 = v21;
      if (v22 <= v23)
      {
        prime = v23;
      }

      else
      {
        prime = v22;
      }

      if (prime >= v3)
      {
        return 0;
      }
    }

    else
    {
      v20 = 1 << -__clz(v18 - 1);
      if (v18 >= 2)
      {
        v18 = v20;
      }

      if (prime <= v18)
      {
        prime = v18;
      }

      if (prime >= v3)
      {
        return 0;
      }
    }
  }

  sub_B07C(a1, prime);
  return 0;
}

void sub_11BAE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11BAE44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *a1 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 72) = 0;
  *(a1 + 16) = v7;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *(a2 + 72);
  v10 = *(a2 + 80);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v12;
  v13 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v13;
  sub_81988((a1 + 152), a2 + 152);
  *(a1 + 176) = sub_3AF6B4(a3);
  v14 = sub_3B1C94(a3);
  *(a1 + 192) = 0;
  *(a1 + 184) = v14;
  *(a1 + 216) = 0;
  *(a1 + 228) = 0;
  *(a1 + 220) = 0;
  *(a1 + 236) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  *(a1 + 240) = vnegq_f64(v15);
  v26 = 12;
  strcpy(v25, "WaterSnapper");
  __p[0] = 0;
  __p[1] = 0;
  *&v24 = 0;
  v16 = sub_3AEC94(a3, v25, __p);
  v17 = __p[0];
  if (__p[0])
  {
    v18 = __p[1];
    v19 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v20 = *(v18 - 1);
        v18 -= 3;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v17);
      v19 = __p[0];
    }

    __p[1] = v17;
    operator delete(v19);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  BYTE7(v24) = 8;
  strcpy(__p, "standard");
  v21 = sub_5F5AC(v16, __p);
  sub_5ADDC(v25, v21);
  if (SBYTE7(v24) < 0)
  {
    operator delete(__p[0]);
  }

  v22 = sub_5F5AC(v16, a4);
  sub_5FC7C(v25, v22);
  sub_11BA9E4();
}

void sub_11BB168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_6BB60(&__p);
  v25 = *v23;
  if (*v23)
  {
    v22[25] = v25;
    operator delete(v25);
  }

  sub_44D36C(v22);
  _Unwind_Resume(a1);
}

void sub_11BB20C(_DWORD *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  if (a2 && (*a1 & a1[1]) != -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_2B6218(&__p, a2);
    v3 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
    v4 = vdupq_n_s32(1u);
    v5 = v3 + 1;
    v6 = 32;
    do
    {
      v5[-1] = v4;
      *v5 = v4;
      v5 += 2;
      v6 -= 8;
    }

    while (v6);
    sub_58168(*a1 >> 17, a1[1] >> 17);
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_11BC054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _Unwind_Exception *exception_objecta, uint64_t a37, void *__p, uint64_t a39)
{
  if (exception_objecta)
  {
    free(exception_objecta);
    if (!v39)
    {
LABEL_3:
      v41 = __p;
      if (!__p)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v39)
  {
    goto LABEL_3;
  }

  operator delete(v39);
  v41 = __p;
  if (!__p)
  {
LABEL_4:
    v42 = a22;
    if (!a22)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v41);
  v42 = a22;
  if (!a22)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  *(a19 + 8) = v42;
  operator delete(v42);
  _Unwind_Resume(exception_object);
}

BOOL sub_11BC238(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = *(a1 + 248);
  v5 = v4 / 100;
  v6 = v4 % 100;
  if (v4 < 0)
  {
    v7 = -50;
  }

  else
  {
    v7 = 50;
  }

  LODWORD(a4) = *(a2 + 40);
  return *a2 + *&a4 > (v5 + (((5243 * (v7 + v6)) >> 19) + ((5243 * (v7 + v6)) >> 31)));
}

void sub_11BC508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    v22 = a17;
    if (!a17)
    {
LABEL_3:
      v23 = a20;
      if (!a20)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v23);
      goto LABEL_8;
    }
  }

  else
  {
    v22 = a17;
    if (!a17)
    {
      goto LABEL_3;
    }
  }

  operator delete(v22);
  v23 = a20;
  if (!a20)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_11BC594(uint64_t a1, void *a2, char a3, double a4, double a5)
{
  *v55 = 0u;
  *__p = 0u;
  v57 = 1065353216;
  v7 = *(a1 + 192);
  v6 = *(a1 + 200);
  if (v7 != v6)
  {
    v11 = 0;
    v12 = 0;
    v52 = *(a1 + 200);
    while (1)
    {
      if (*v7 > a4)
      {
        goto LABEL_61;
      }

      v17 = *(a1 + 232);
      if (v17 < a5)
      {
        v17 = a5;
      }

      if (*v7 > v17)
      {
        break;
      }

LABEL_8:
      v7 += 48;
      if (v7 == v6)
      {
        goto LABEL_61;
      }
    }

    v18 = *(v7 + 8);
    v19 = sub_11BCBD8(*(a1 + 184), v18);
    v20 = (v19 - *v19);
    if (*v20 < 7u)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20[3];
      if (v21)
      {
        v21 = *&v21[v19];
      }
    }

    v54 = v21;
    v22 = -1 - 0x5555555555555555 * ((a2[1] - *a2) >> 2);
    if (!v22)
    {
      goto LABEL_29;
    }

    v53 = v12;
    v23 = 0;
    v24 = 0;
    do
    {
      if (v23 >= 2)
      {
        v25 = 0;
        ++v24;
      }

      else
      {
        v26 = *(a1 + 184);
        v27 = sub_41224(a2, v24++);
        v28 = sub_41224(a2, v24);
        v25 = sub_11BC9FC(v26, v27, v28, v18);
      }

      v23 += v25;
    }

    while (v24 != v22);
    v12 = v53;
    v6 = v52;
    if (v23 > 0)
    {
      v29 = 1;
      if (v23 == 1 && (a3 & 1) == 0)
      {
        if (v55[1])
        {
          v30 = vcnt_s8(v55[1]);
          v30.i16[0] = vaddlv_u8(v30);
          if (v30.u32[0] > 1uLL)
          {
            v31 = v54;
            if (v54 >= v55[1])
            {
              v31 = v54 % v55[1];
            }
          }

          else
          {
            v31 = (v55[1] - 1) & v54;
          }

          v32 = *(v55[0] + v31);
          if (v32)
          {
            v33 = *v32;
            if (v33)
            {
              if (v30.u32[0] < 2uLL)
              {
                while (1)
                {
                  v35 = v33[1];
                  if (v54 == v35)
                  {
                    if (v33[2] == v54)
                    {
                      goto LABEL_48;
                    }
                  }

                  else if ((v35 & (v55[1] - 1)) != v31)
                  {
                    goto LABEL_49;
                  }

                  v29 = 0;
                  v33 = *v33;
                  if (!v33)
                  {
                    goto LABEL_50;
                  }
                }
              }

              while (1)
              {
                v34 = v33[1];
                if (v54 == v34)
                {
                  if (v33[2] == v54)
                  {
LABEL_48:
                    v29 = 1;
                    goto LABEL_50;
                  }
                }

                else
                {
                  if (v34 >= v55[1])
                  {
                    v34 %= v55[1];
                  }

                  if (v34 != v31)
                  {
                    break;
                  }
                }

                v29 = 0;
                v33 = *v33;
                if (!v33)
                {
                  goto LABEL_50;
                }
              }
            }
          }
        }

LABEL_49:
        v29 = 0;
      }

LABEL_50:
      sub_11BD20C(v55, &v54);
      if (v29)
      {
        goto LABEL_51;
      }
    }

    else
    {
LABEL_29:
      if (v11)
      {
LABEL_51:
        v36 = sub_11BCBD8(*(a1 + 184), v18);
        v37 = (v36 - *v36);
        if (*v37 >= 9u && (v38 = v37[4]) != 0)
        {
          v39 = *(v36 + v38);
        }

        else
        {
          v39 = 0;
        }

        v40 = sub_11BCBD8(*(a1 + 184), v18);
        v41 = (v40 - *v40);
        if (*v41 < 0xBu)
        {
          LODWORD(v42) = 0;
        }

        else
        {
          v42 = v41[5];
          if (v42)
          {
            LODWORD(v42) = *(v40 + v42);
          }
        }

        v12 = (v39 + v12 + v42);
        v11 = 1;
LABEL_4:
        v13 = *(a1 + 240);
        v14 = v13 / 100;
        v15 = v13 % 100;
        if (v13 < 0)
        {
          v16 = -50;
        }

        else
        {
          v16 = 50;
        }

        if (v14 + (((5243 * (v16 + v15)) >> 19) + ((5243 * (v16 + v15)) >> 31)) <= v12)
        {
          v47 = *(a1 + 248);
          v48 = v47 / 100;
          v49 = v47 % 100;
          if (v47 < 0)
          {
            v50 = -50;
          }

          else
          {
            v50 = 50;
          }

          v12 = v48 + ((5243 * (v50 + v49)) >> 19) + ((5243 * (v50 + v49)) >> 31);
          v43 = __p[0];
          if (__p[0])
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_8;
      }
    }

    v11 = 0;
    goto LABEL_4;
  }

  v12 = 0;
LABEL_61:
  v43 = __p[0];
  if (__p[0])
  {
    do
    {
LABEL_62:
      v44 = *v43;
      operator delete(v43);
      v43 = v44;
    }

    while (v44);
  }

LABEL_63:
  v45 = v55[0];
  v55[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v12;
}

void sub_11BC9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_11BC9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_11BC9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_11BC9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11BC9FC(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v5 = sub_11BCBD8(a1, a4);
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return 0;
  }

  v7 = v6[2];
  if (!v6[2])
  {
    return 0;
  }

  v33 = v5;
  v8 = *(v5 + v7);
  v9 = v5 + v7 + v8;
  v10 = *(v9 + 2);
  v11 = *(v9 + 3);
  v12 = sub_57A90(v4);
  v13 = v4 & ~(-1 << (v12 & 0xFE));
  v14 = sub_581D8(v13);
  v15 = sub_581D8(v13 >> 1);
  v16 = 1 << -(v12 >> 1);
  if (v12 < 2)
  {
    v16 = -2;
  }

  v17 = (v16 * v14 + 4 * v10);
  LODWORD(v18) = v16 * v15 + 4 * v11;
  if (v18 >= 0xFFFFFFFE)
  {
    v18 = 4294967294;
  }

  else
  {
    v18 = v18;
  }

  v38 = v17 | (v18 << 32);
  v39 = 0x7FFFFFFF;
  v19 = *v9;
  v20 = 0;
  v21 = (*v9 - 1);
  if (v19 != 1)
  {
    v22 = (v33 + v8 + v7 + 10);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v25 = sub_57A90(v4);
      v26 = v4 & ~(-1 << (v25 & 0xFE));
      v27 = sub_581D8(v26);
      v28 = sub_581D8(v26 >> 1);
      v29 = 1 << -(v25 >> 1);
      if (v25 < 2)
      {
        v29 = -2;
      }

      v30 = (v29 * v27 + 4 * v23);
      LODWORD(v31) = v29 * v28 + 4 * v24;
      if (v31 >= 0xFFFFFFFE)
      {
        v31 = 4294967294;
      }

      else
      {
        v31 = v31;
      }

      v36 = v30 | (v31 << 32);
      v37 = 0x7FFFFFFF;
      v20 = (v20 + sub_3BA74(&v38, &v36, a2, a3));
      if (v20 == 2)
      {
        break;
      }

      v22 += 2;
      v38 = v36;
      v39 = v37;
      --v21;
    }

    while (v21);
  }

  return v20;
}

uint64_t sub_11BCBD8(uint64_t a1, unint64_t a2)
{
  v3 = sub_11BCD14(a1 + 16, a2, 1);
  if (!v3 || (v4 = &v3[-*v3], *v4 < 5u) || (v5 = *(v4 + 2)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v12, a2);
    sub_23E08("Water body access could not find quad node ", &v12, &v13);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v13;
    }

    else
    {
      v9 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v11 = sub_2D390(exception, v9, size);
  }

  v6 = &v3[4 * HIDWORD(a2) + v5 + *&v3[v5]];
  return v6 + 4 + *(v6 + 4);
}

void sub_11BCCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_11BCD14(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 976) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 984) = v3;
    v4 = *(a1 + 992);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1000) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1008) = v3;
    v4 = *(a1 + 1016);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1024) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1032) = v3;
    v4 = *(a1 + 1040);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1048) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1056) = v3;
    v4 = *(a1 + 1064);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 1032);
    v8 = *(a1 + 1008);
    v9 = *(a1 + 984);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 984);
    }

    v11 = 40;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 1008);
    }

    v13 = 41;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 1032);
    }

    v15 = *(a1 + 1056);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 42;
    }

    v18 = sub_2D52A4(*a1, 10, a2, 1);
    v19 = 43;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_11BCEE8(v21);
  return 0;
}

uint64_t sub_11BCEE8(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0xAu);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_11BCFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_11BD014(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = (a1 - *a1);
  if (*v3 >= 5u)
  {
    v4 = v3[2];
    if (v4)
    {
      v5 = *(a1 + v4);
      v6 = *(a1 + v4 + v5);
      if (v6)
      {
        v9 = 4 * v6;
        v10 = (a1 + v5 + v4 + 6);
        do
        {
          v12 = *(v10 - 1);
          v13 = *v10;
          v14 = sub_57A90(a2);
          v15 = a2 & ~(-1 << (v14 & 0xFE));
          v16 = sub_581D8(v15);
          v17 = sub_581D8(v15 >> 1);
          v18 = 1 << -(v14 >> 1);
          if (v14 < 2)
          {
            v18 = -2;
          }

          v19 = (v18 * v16 + 4 * v12);
          LODWORD(v20) = v18 * v17 + 4 * v13;
          if (v20 >= 0xFFFFFFFE)
          {
            v20 = 4294967294;
          }

          else
          {
            v20 = v20;
          }

          v21 = v19 | (v20 << 32);
          v22 = *(a3 + 8);
          v23 = *(a3 + 16);
          if (v22 < v23)
          {
            *v22 = v21;
            *(v22 + 8) = 0x7FFFFFFF;
            v11 = v22 + 12;
          }

          else
          {
            v24 = *a3;
            v25 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *a3) >> 2);
            v26 = v25 + 1;
            if (v25 + 1 > 0x1555555555555555)
            {
              sub_1794();
            }

            v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 2);
            if (2 * v27 > v26)
            {
              v26 = 2 * v27;
            }

            if (v27 >= 0xAAAAAAAAAAAAAAALL)
            {
              v28 = 0x1555555555555555;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              if (v28 <= 0x1555555555555555)
              {
                operator new();
              }

              sub_1808();
            }

            v29 = 4 * ((v22 - *a3) >> 2);
            *v29 = v21;
            *(v29 + 8) = 0x7FFFFFFF;
            v11 = 12 * v25 + 12;
            v30 = (12 * v25 - (v22 - v24));
            memcpy(v30, v24, v22 - v24);
            *a3 = v30;
            *(a3 + 8) = v11;
            *(a3 + 16) = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          v10 += 2;
          *(a3 + 8) = v11;
          v9 -= 4;
        }

        while (v9);
      }
    }
  }
}

void *sub_11BD20C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_11BD540(uint64_t a1, uint64_t a2)
{
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  v4 = vnegq_f64(v3);
  *(a1 + 8) = v4;
  *(a1 + 24) = v4;
  HIBYTE(v13[2]) = 14;
  strcpy(v13, "TransitSnapper");
  __p = 0;
  v11 = 0;
  v12 = 0;
  v5 = sub_3AEC94(a2, v13, &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v11;
    v8 = __p;
    if (v11 != __p)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v11 = v6;
    operator delete(v8);
  }

  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }

  HIBYTE(v13[2]) = 20;
  strcpy(v13, "enable_stop_snapping");
  *a1 = sub_5F9D0(v5, v13);
  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }

  operator new();
}

void sub_11BD940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (*(v16 - 41) < 0)
  {
    operator delete(*(v16 - 64));
  }

  _Unwind_Resume(exception_object);
}

double sub_11BDA58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  sub_11BDBA4(a1, a2, a3, a4, a5, v10);
  if (v10[0] == 1)
  {
    sub_93AFE8(a6, v11);
    if (v10[0])
    {
      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      if (v12)
      {
        v13 = v12;
        operator delete(v12);
      }

      sub_49AEC0(v11);
    }
  }

  else
  {
    result = 0.0;
    *(a6 + 8) = 0u;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *(a6 + 88) = 0u;
    *(a6 + 104) = 0u;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    *a6 = -1;
    *(a6 + 8) = 0x7FFFFFFF;
    *(a6 + 16) = -1;
    *(a6 + 24) = -1;
    *(a6 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    *(a6 + 48) = -1935635296;
    *(a6 + 56) = 0;
    *(a6 + 63) = 0;
    *(a6 + 72) = 0;
    *(a6 + 80) = 0;
    *(a6 + 88) = 0;
    *(a6 + 96) = 0;
    *(a6 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(a6 + 112) = 100;
    *(a6 + 120) = 0;
    *(a6 + 128) = 0;
    *(a6 + 136) = vnegq_f64(v8);
    *(a6 + 216) = 0;
    *(a6 + 200) = 0u;
    *(a6 + 184) = 0u;
    *(a6 + 168) = 0u;
    *(a6 + 152) = 0u;
    *(a6 + 224) = 1;
    *(a6 + 228) = 0u;
    v9 = (a6 + 228);
    *(v9 + 44) = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
  }

  return result;
}

void sub_11BDB90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D519FC(va);
  _Unwind_Resume(a1);
}

void *sub_11BDBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v110 = 0uLL;
  LODWORD(v112) = 0;
  v111 = 0;
  *(&v112 + 1) = 0x7FFFFFFFFFFFFFFFLL;
  v113 = 100;
  v114 = 0uLL;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v115 = vnegq_f64(v11);
  memset(v116, 0, sizeof(v116));
  v117 = 0u;
  v118 = 0;
  *v119 = 1;
  memset(&v119[4], 0, 60);
  v12 = *(a2 + 48);
  v108 = *(a2 + 32);
  *v109 = v12;
  *&v109[15] = *(a2 + 63);
  v13 = *(a2 + 16);
  v106 = *a2;
  v107 = v13;
  if (&v106 != a2)
  {
    sub_146EC(&v110, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  }

  v112 = *(a2 + 96);
  v113 = *(a2 + 112);
  v114 = *(a2 + 120);
  v115 = *(a2 + 136);
  sub_3E428(v116, a2 + 152);
  *v119 = a5;
  v14 = sub_E67C38(a2);
  v95 = a5;
  if (v14 != -1)
  {
    sub_11BE774(a1, v14, a2, &v96);
    if (v99 == 1)
    {
      v15 = *&v119[24];
      if (*&v119[24] >= *&v119[32])
      {
        v17 = *&v119[16];
        v18 = 0xCCCCCCCCCCCCCCCDLL * ((*&v119[24] - *&v119[16]) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0x666666666666666)
        {
          sub_1794();
        }

        if (0x999999999999999ALL * ((*&v119[32] - *&v119[16]) >> 3) > v19)
        {
          v19 = 0x999999999999999ALL * ((*&v119[32] - *&v119[16]) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*&v119[32] - *&v119[16]) >> 3) >= 0x333333333333333)
        {
          v20 = 0x666666666666666;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          if (v20 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v21 = 8 * ((*&v119[24] - *&v119[16]) >> 3);
        v22 = v97;
        *v21 = v96;
        *(v21 + 16) = v22;
        *(v21 + 32) = v98;
        v16 = 40 * v18 + 40;
        v23 = (v21 - (v15 - v17));
        memcpy(v23, v17, v15 - v17);
        *&v119[16] = v23;
        *&v119[24] = v16;
        *&v119[32] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        **&v119[24] = v96;
        *(v15 + 16) = v97;
        *(v15 + 32) = v98;
        v16 = v15 + 40;
      }

      *&v119[24] = v16;
    }
  }

  v24 = *&v119[16];
  v25 = *&v119[24];
  if (*&v119[16] != *&v119[24])
  {
    goto LABEL_41;
  }

  v27 = *a4;
  v26 = a4[1];
  if (*a4 != v26)
  {
    do
    {
      v30 = *v27;
      v29 = (v27 + 1);
      sub_11BE774(a1, v30, v29, &v96);
      if (v99 == 1)
      {
        v31 = *&v119[24];
        if (*&v119[24] < *&v119[32])
        {
          **&v119[24] = v96;
          *(v31 + 16) = v97;
          *(v31 + 32) = v98;
          v28 = v31 + 40;
        }

        else
        {
          v32 = *&v119[16];
          v33 = 0xCCCCCCCCCCCCCCCDLL * ((*&v119[24] - *&v119[16]) >> 3);
          v34 = v33 + 1;
          if (v33 + 1 > 0x666666666666666)
          {
            sub_1794();
          }

          if (0x999999999999999ALL * ((*&v119[32] - *&v119[16]) >> 3) > v34)
          {
            v34 = 0x999999999999999ALL * ((*&v119[32] - *&v119[16]) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((*&v119[32] - *&v119[16]) >> 3) >= 0x333333333333333)
          {
            v35 = 0x666666666666666;
          }

          else
          {
            v35 = v34;
          }

          if (v35)
          {
            if (v35 <= 0x666666666666666)
            {
              operator new();
            }

            sub_1808();
          }

          v36 = 8 * ((*&v119[24] - *&v119[16]) >> 3);
          v37 = v97;
          *v36 = v96;
          *(v36 + 16) = v37;
          *(v36 + 32) = v98;
          v28 = 40 * v33 + 40;
          v38 = 40 * v33 - (v31 - v32);
          memcpy((v36 - (v31 - v32)), v32, v31 - v32);
          *&v119[16] = v38;
          *&v119[24] = v28;
          *&v119[32] = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        *&v119[24] = v28;
      }

      v27 = (v29 + 16);
    }

    while (v27 != v26);
    v24 = *&v119[16];
    v25 = *&v119[24];
  }

  if (v24 != v25)
  {
LABEL_41:
    v39 = v106;
    *(a6 + 24) = v107;
    v40 = v108;
    *(a6 + 56) = *v109;
    *a6 = 1;
    *(a6 + 71) = *&v109[15];
    v41 = v116[0];
    *(a6 + 96) = v111;
    *(a6 + 120) = v113;
    *(a6 + 160) = v41;
    v42 = v118;
    *(a6 + 200) = v116[5];
    *(a6 + 40) = v40;
    *(a6 + 8) = v39;
    *(a6 + 80) = v110;
    v111 = 0;
    v110 = 0uLL;
    *(a6 + 104) = v112;
    v43 = v115;
    *(a6 + 128) = v114;
    *(a6 + 144) = v43;
    v44 = *&v116[3];
    *(a6 + 168) = *&v116[1];
    memset(v116, 0, 24);
    *(a6 + 184) = v44;
    v116[3] = 0;
    v116[4] = 0;
    *(a6 + 208) = v117;
    *(a6 + 224) = v42;
    v116[5] = 0;
    v117 = 0uLL;
    v118 = 0;
    *(a6 + 232) = *v119;
    *(a6 + 248) = v24;
    *(a6 + 256) = v25;
    v45 = *&v119[56];
    *(a6 + 264) = *&v119[32];
    memset(&v119[16], 0, 24);
    *(a6 + 272) = *&v119[40];
    *(a6 + 288) = v45;
    memset(&v119[40], 0, 24);
    goto LABEL_42;
  }

  sub_11BEAA4(a1, a2, v95, &v106);
  v24 = *&v119[16];
  v25 = *&v119[24];
  if (*&v119[16] != *&v119[24])
  {
    v47 = *&v119[16];
    while (*(v47 + 24) < 1.0)
    {
      v47 += 40;
      if (v47 == *&v119[24])
      {
        goto LABEL_49;
      }
    }

    goto LABEL_41;
  }

LABEL_49:
  sub_11BFA44(a1, a2, &v104);
  v48 = v104;
  v49 = v105;
  if (v104 != v105)
  {
    v50 = *&v119[24];
    do
    {
      while (v50 < *&v119[32])
      {
        v51 = *v48;
        v52 = v48[1];
        *(v50 + 32) = *(v48 + 4);
        *v50 = v51;
        *(v50 + 16) = v52;
        v50 += 40;
        *&v119[24] = v50;
        v48 = (v48 + 40);
        if (v48 == v49)
        {
          goto LABEL_65;
        }
      }

      v53 = *&v119[16];
      v54 = 0xCCCCCCCCCCCCCCCDLL * ((v50 - *&v119[16]) >> 3);
      v55 = v54 + 1;
      if (v54 + 1 > 0x666666666666666)
      {
        sub_1794();
      }

      if (0x999999999999999ALL * ((*&v119[32] - *&v119[16]) >> 3) > v55)
      {
        v55 = 0x999999999999999ALL * ((*&v119[32] - *&v119[16]) >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*&v119[32] - *&v119[16]) >> 3) >= 0x333333333333333)
      {
        v56 = 0x666666666666666;
      }

      else
      {
        v56 = v55;
      }

      if (v56)
      {
        if (v56 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v57 = v50;
      v58 = 8 * ((v50 - *&v119[16]) >> 3);
      v59 = *v48;
      v60 = v48[1];
      *(v58 + 32) = *(v48 + 4);
      *v58 = v59;
      *(v58 + 16) = v60;
      v50 = 40 * v54 + 40;
      v61 = 40 * v54 - (v57 - v53);
      memcpy((v58 - (v57 - v53)), v53, v57 - v53);
      *&v119[16] = v61;
      *&v119[24] = v50;
      *&v119[32] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      *&v119[24] = v50;
      v48 = (v48 + 40);
    }

    while (v48 != v49);
  }

LABEL_65:
  v122 = 0u;
  v123 = 0u;
  v124 = 1065353216;
  v120 = -1;
  v121 = 0x7FFFFFFF;
  sub_11ABFD4((a1 + 72), a2, a3, v95, &v96);
  v62 = v123;
  if (v123)
  {
    do
    {
      v63 = *v62;
      operator delete(v62);
      v62 = v63;
    }

    while (v63);
  }

  v64 = v122;
  *&v122 = 0;
  if (v64)
  {
    operator delete(v64);
  }

  if (v96 == 1)
  {
    v65 = v100;
    if ((vmovn_s64(vceqq_s64(v100, vdupq_laneq_s64(v100, 1))).u8[0] & 1) == 0)
    {
      v66 = v116[3];
      if (v116[3])
      {
        v67 = v116[4];
        v68 = v116[3];
        if (v116[4] != v116[3])
        {
          do
          {
            v70 = *(v67 - 24);
            if (v70)
            {
              v71 = *(v67 - 16);
              v69 = *(v67 - 24);
              if (v71 != v70)
              {
                do
                {
                  v72 = *(v71 - 9);
                  v71 -= 4;
                  if (v72 < 0)
                  {
                    operator delete(*v71);
                  }
                }

                while (v71 != v70);
                v69 = *(v67 - 24);
              }

              *(v67 - 16) = v70;
              operator delete(v69);
            }

            v67 -= 104;
          }

          while (v67 != v66);
          v68 = v116[3];
        }

        v116[4] = v66;
        operator delete(v68);
        v65 = v100;
      }

      *&v116[3] = v65;
      v116[5] = v101;
      v101 = 0;
      v100 = 0uLL;
      v73 = v117;
      if (v117)
      {
        v74 = *(&v117 + 1);
        v75 = v117;
        if (*(&v117 + 1) != v117)
        {
          do
          {
            v77 = *(v74 - 24);
            if (v77)
            {
              v78 = *(v74 - 16);
              v76 = *(v74 - 24);
              if (v78 != v77)
              {
                do
                {
                  v79 = *(v78 - 9);
                  v78 -= 4;
                  if (v79 < 0)
                  {
                    operator delete(*v78);
                  }
                }

                while (v78 != v77);
                v76 = *(v74 - 24);
              }

              *(v74 - 16) = v77;
              operator delete(v76);
            }

            v74 -= 104;
          }

          while (v74 != v73);
          v75 = v117;
        }

        *(&v117 + 1) = v73;
        operator delete(v75);
      }

      v117 = v102;
      v118 = v103;
      v103 = 0;
      v102 = 0uLL;
    }
  }

  v80 = *&v119[16];
  v81 = *&v119[24];
  v82 = *&v119[40];
  v83 = *&v119[48];
  if (*&v119[16] == *&v119[24] && *&v119[40] == *&v119[48] && v116[3] == v116[4])
  {
    v92 = v96;
    if ((v96 & 1) != 0 || DWORD2(v96) != 24)
    {
      if (v95 >= 3)
      {
        v93 = 18;
      }

      else
      {
        v93 = qword_22B0F78[v95];
      }
    }

    else
    {
      v93 = 24;
    }

    *a6 = 0;
    *(a6 + 8) = v93;
    *(a6 + 16) = &off_2669FE0;
    if (!v92)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  v84 = v106;
  *(a6 + 24) = v107;
  v85 = v108;
  *(a6 + 56) = *v109;
  *a6 = 1;
  *(a6 + 71) = *&v109[15];
  v86 = v116[0];
  *(a6 + 96) = v111;
  *(a6 + 120) = v113;
  *(a6 + 160) = v86;
  v87 = v118;
  *(a6 + 200) = v116[5];
  *(a6 + 40) = v85;
  *(a6 + 8) = v84;
  *(a6 + 80) = v110;
  v111 = 0;
  v110 = 0uLL;
  *(a6 + 104) = v112;
  v88 = v115;
  *(a6 + 128) = v114;
  *(a6 + 144) = v88;
  v89 = *&v116[3];
  *(a6 + 168) = *&v116[1];
  memset(v116, 0, 24);
  *(a6 + 184) = v89;
  v116[3] = 0;
  v116[4] = 0;
  *(a6 + 208) = v117;
  *(a6 + 224) = v87;
  v116[5] = 0;
  v117 = 0uLL;
  v118 = 0;
  *(a6 + 232) = *v119;
  *(a6 + 248) = v80;
  *(a6 + 256) = v81;
  v90 = *&v119[32];
  v91 = *&v119[56];
  memset(&v119[16], 0, 24);
  *(a6 + 264) = v90;
  *(a6 + 272) = v82;
  *(a6 + 280) = v83;
  *(a6 + 288) = v91;
  memset(&v119[40], 0, 24);
  if (v96)
  {
LABEL_105:
    sub_49AEC0(&v96 + 1);
  }

LABEL_106:
  if (v104)
  {
    operator delete(v104);
  }

  if (*&v119[40])
  {
    *&v119[48] = *&v119[40];
    operator delete(*&v119[40]);
  }

LABEL_42:
  if (*&v119[16])
  {
    *&v119[24] = *&v119[16];
    operator delete(*&v119[16]);
  }

  return sub_49AEC0(&v106);
}

void sub_11BE714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, uint64_t a45)
{
  sub_11BD8(v45 - 144);
  if (__p)
  {
    operator delete(__p);
    sub_93ABFC(&a45);
    _Unwind_Resume(a1);
  }

  sub_93ABFC(&a45);
  _Unwind_Resume(a1);
}

unint64_t sub_11BE774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2C7A60(*(a1 + 64), a2, a3);
  v8 = result;
  if (v7 > 8)
  {
    if (v7 != 10)
    {
      if (v7 != 9)
      {
        goto LABEL_56;
      }

      v35 = result;
      result = sub_11BFF20(*(a1 + 56), &v35);
      if (!result)
      {
        goto LABEL_56;
      }

      v16 = v35;
      if (*(a1 + 3))
      {
        v17 = *(a1 + 48);
        v18 = sub_93D480(*(a1 + 56), v35, 0, "station");
        v19 = v18 + *(v18 - *v18 + 6);
        v20 = *v19;
        LODWORD(v19) = *(v19 + 4);
        if (v19 >= 0xFFFFFFFE)
        {
          v19 = 4294967294;
        }

        else
        {
          v19 = v19;
        }

        v36 = v20 | (v19 << 32);
        v37 = 0x7FFFFFFF;
        result = sub_3B8540(v17, &v36);
        if (!result)
        {
          goto LABEL_56;
        }

        v16 = v35;
      }

      if (v16)
      {
        v21 = HIDWORD(v35);
        v22 = v16 << 32;
        if (HIDWORD(v35) == -1)
        {
          v22 = 0;
          v21 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v22 = 0;
        v21 = 0xFFFFFFFFLL;
      }

      *a4 = 2;
      v34 = v21 | v22;
LABEL_55:
      *(a4 + 4) = v34;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0x3FF0000000000000;
      *(a4 + 32) = 0;
      *(a4 + 40) = 1;
      return result;
    }

    if (*(a1 + 3))
    {
      v30 = *(a1 + 48);
      v31 = sub_502FF8(*(a1 + 56), result, 0, "stop");
      v32 = v31 + *(v31 - *v31 + 6);
      v33 = *v32;
      LODWORD(v32) = *(v32 + 4);
      v32 = v32 >= 0xFFFFFFFE ? 4294967294 : v32;
      v36 = v33 | (v32 << 32);
      v37 = 0x7FFFFFFF;
      result = sub_3B8540(v30, &v36);
      if (!result)
      {
        goto LABEL_56;
      }
    }

    if (v8)
    {
      v27 = HIDWORD(v8);
    }

    else
    {
      v27 = 0xFFFFFFFFLL;
    }

    v28 = HIDWORD(v8) == 0xFFFFFFFF || v8 == 0;
    v29 = v8 << 32;
    *a4 = 0;
LABEL_52:
    if (v28)
    {
      v29 = 0;
    }

    v34 = v29 | v27;
    goto LABEL_55;
  }

  if (v7 == 1)
  {
    if (*(a1 + 3))
    {
      v23 = *(a1 + 48);
      v24 = sub_503310(*(a1 + 56), result, 0, "access point");
      v25 = v24 + *(v24 - *v24 + 14);
      v26 = *v25;
      LODWORD(v25) = *(v25 + 4);
      v25 = v25 >= 0xFFFFFFFE ? 4294967294 : v25;
      v36 = v26 | (v25 << 32);
      v37 = 0x7FFFFFFF;
      result = sub_3B8540(v23, &v36);
      if (!result)
      {
        goto LABEL_56;
      }
    }

    if (v8)
    {
      v27 = HIDWORD(v8);
    }

    else
    {
      v27 = 0xFFFFFFFFLL;
    }

    v28 = HIDWORD(v8) == 0xFFFFFFFF || v8 == 0;
    v29 = v8 << 32;
    *a4 = 3;
    goto LABEL_52;
  }

  if (v7 != 4)
  {
    goto LABEL_56;
  }

  v35 = result;
  result = sub_11C0120(*(a1 + 56), &v35);
  if (!result)
  {
    goto LABEL_56;
  }

  v9 = v35;
  if (*(a1 + 3))
  {
    v10 = *(a1 + 48);
    v11 = sub_93D2F4(*(a1 + 56), v35, 0, "hall");
    v12 = v11 + *(v11 - *v11 + 6);
    v13 = *v12;
    LODWORD(v12) = *(v12 + 4);
    if (v12 >= 0xFFFFFFFE)
    {
      v12 = 4294967294;
    }

    else
    {
      v12 = v12;
    }

    v36 = v13 | (v12 << 32);
    v37 = 0x7FFFFFFF;
    result = sub_3B8540(v10, &v36);
    if (result)
    {
      v9 = v35;
      goto LABEL_11;
    }

LABEL_56:
    *a4 = 0;
    *(a4 + 40) = 0;
    return result;
  }

LABEL_11:
  if (v9)
  {
    v14 = HIDWORD(v35);
    v15 = v9 << 32;
    if (HIDWORD(v35) == -1)
    {
      v15 = 0;
      v14 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0xFFFFFFFFLL;
  }

  *a4 = 1;
  *(a4 + 4) = v14 | v15;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0x3FF0000000000000;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  return result;
}

void sub_11BEAA4(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = a1;
  if (*(a1 + 1) == 1)
  {
    v7 = sub_E67C38(a2);
    v8 = 0;
    if (a3 == 1)
    {
      v9 = a2;
      if (v7 == -1)
      {
        if (*(a2 + 72) == *(a2 + 80))
        {
          v8 = *(v5 + 2);
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v9 = a2;
    }

    v65 = v9;
    sub_11C1274();
    *v70 = 0u;
    *__p = 0u;
    v72 = 1065353216;
    v11 = v73;
    v10 = v74;
    v67 = v5;
    v12 = 0;
    if (v73 != v74)
    {
      do
      {
        v13 = *(v11 + 1);
        v14 = sub_11C4B38(*(v5 + 56), v13, 0, "station polygon");
        v15 = *(v14 + *(v14 - *v14 + 4));
        v68 = v15;
        if (*(v5 + 3))
        {
          v16 = *(v5 + 48);
          v17 = sub_93D480(*(v5 + 56), v15, 0, "station");
          v18 = v17 + *(v17 - *v17 + 6);
          v19 = *v18;
          LODWORD(v18) = *(v18 + 4);
          v18 = v18 >= 0xFFFFFFFE ? 4294967294 : v18;
          v75 = v19 | (v18 << 32);
          LODWORD(v76) = 0x7FFFFFFF;
          if ((sub_3B8540(v16, &v75) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v20 = *v11 > 0.0 ? 0.0 : 1.0;
        v12 |= *v11 <= 0.0;
        if (!(v8 & 1 | (*v11 <= 0.0)))
        {
          goto LABEL_11;
        }

        if (sub_11BFF20(*(v5 + 56), &v68))
        {
          sub_11C4CC4(v70, &v68);
          v21 = sub_11C4B38(*(v67 + 56), v13, 0, "station polygon");
          v22 = (v21 - *v21);
          if (*v22 < 0xBu || (v23 = v22[5]) == 0 || (v24 = *(v21 + v23), v24 < 2))
          {
            if (!v68 || (v25 = HIDWORD(v68), HIDWORD(v68) == -1))
            {
              v26 = 0;
              v25 = 0xFFFFFFFFLL;
              v27 = *v11 * 100.0;
              if (v27 < 0.0)
              {
                goto LABEL_31;
              }

LABEL_28:
              v28 = v27;
              if (v27 < 4.50359963e15)
              {
                v29 = (v27 + v27) + 1;
                goto LABEL_33;
              }
            }

            else
            {
              v26 = v68 << 32;
              v27 = *v11 * 100.0;
              if (v27 >= 0.0)
              {
                goto LABEL_28;
              }

LABEL_31:
              v28 = v27;
              if (v27 > -4.50359963e15)
              {
                v29 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
LABEL_33:
                v28 = (v29 >> 1);
              }
            }

            if (v28 >= 9.22337204e18)
            {
              v31 = 0x7FFFFFFFFFFFFFFELL;
              v32 = v25 | v26;
              v33 = a4;
              v34 = a4[31];
              v35 = a4[32];
              if (v34 < v35)
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (v27 >= 0.0)
              {
                if (v27 < 4.50359963e15)
                {
                  v30 = (v27 + v27) + 1;
LABEL_50:
                  v27 = (v30 >> 1);
                }
              }

              else if (v27 > -4.50359963e15)
              {
                v30 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
                goto LABEL_50;
              }

              v31 = v27;
              v32 = v25 | v26;
              v33 = a4;
              v34 = a4[31];
              v35 = a4[32];
              if (v34 < v35)
              {
LABEL_52:
                *v34 = 2;
                *(v34 + 4) = v32;
                *(v34 + 16) = v31;
                *(v34 + 24) = v20;
                v40 = v34 + 40;
                *(v34 + 32) = 0;
                v5 = v67;
LABEL_56:
                a4[31] = v40;
                goto LABEL_11;
              }
            }

            v36 = v33[30];
            v37 = 0xCCCCCCCCCCCCCCCDLL * ((v34 - v36) >> 3) + 1;
            if (v37 > 0x666666666666666)
            {
              sub_1794();
            }

            v38 = 0xCCCCCCCCCCCCCCCDLL * ((v35 - v36) >> 3);
            if (2 * v38 > v37)
            {
              v37 = 2 * v38;
            }

            if (v38 >= 0x333333333333333)
            {
              v39 = 0x666666666666666;
            }

            else
            {
              v39 = v37;
            }

            if (v39)
            {
              if (v39 <= 0x666666666666666)
              {
                operator new();
              }

              sub_1808();
            }

            v41 = 8 * ((v34 - v36) >> 3);
            *v41 = 2;
            *(v41 + 4) = v32;
            *(v41 + 16) = v31;
            *(v41 + 24) = v20;
            *(v41 + 32) = 0;
            v40 = v41 + 40;
            v42 = (v41 - (v34 - v36));
            memcpy(v42, v36, v34 - v36);
            a4[30] = v42;
            a4[31] = v40;
            a4[32] = 0;
            if (v36)
            {
              operator delete(v36);
            }

            v5 = v67;
            goto LABEL_56;
          }

          if (v24 == 2)
          {
            v44 = a4[34];
            v43 = a4[35];
            if (v44 >= v43)
            {
              v46 = a4[33];
              v47 = v44 - v46;
              v48 = (v44 - v46) >> 3;
              v49 = v48 + 1;
              if ((v48 + 1) >> 61)
              {
                sub_1794();
              }

              v50 = v43 - v46;
              if (v50 >> 2 > v49)
              {
                v49 = v50 >> 2;
              }

              if (v50 >= 0x7FFFFFFFFFFFFFF8)
              {
                v51 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v51 = v49;
              }

              if (v51)
              {
                if (!(v51 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *(8 * v48) = v68;
              v45 = 8 * v48 + 8;
              memcpy(0, v46, v47);
              a4[33] = 0;
              a4[34] = v45;
              a4[35] = 0;
              if (v46)
              {
                operator delete(v46);
              }

              v5 = v67;
            }

            else
            {
              v5 = v67;
              *v44 = v68;
              v45 = (v44 + 8);
            }

            a4[34] = v45;
            goto LABEL_11;
          }
        }

        v5 = v67;
LABEL_11:
        v11 += 6;
      }

      while (v11 != v10);
    }

    if ((v12 & 1) == 0 && ((v8 ^ 1) & 1) == 0)
    {
      sub_11C1758(*(v5 + 56), v65, *(v5 + 40), &v68);
      v52 = v68;
      v64 = v69;
      if (v68 != v69)
      {
        do
        {
          v53 = *(v5 + 56);
          v54 = sub_503310(v53, v52[3] | (v52[2] << 32), 0, "access point");
          v55 = (v54 - *v54);
          if (*v55 >= 0x11u)
          {
            v56 = v55[8];
            if (v56)
            {
              v57 = (v54 + v56 + *(v54 + v56));
              v58 = *v57;
              if (v58)
              {
                v59 = 8 * v58;
                v60 = v57 + 1;
                do
                {
                  if (*(v53 + 3888) != 1 || sub_2D5204(*(v53 + 3872)))
                  {
                    operator new();
                  }

                  v60 += 2;
                  v59 -= 8;
                }

                while (v59);
                v5 = v67;
              }
            }
          }

          v52 += 12;
        }

        while (v52 != v64);
        v52 = v68;
      }

      if (v52)
      {
        v69 = v52;
        operator delete(v52);
      }
    }

    v61 = __p[0];
    if (__p[0])
    {
      do
      {
        v62 = *v61;
        operator delete(v61);
        v61 = v62;
      }

      while (v62);
    }

    v63 = v70[0];
    v70[0] = 0;
    if (v63)
    {
      operator delete(v63);
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }
  }
}

void sub_11BF970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_11BD8(&a17);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a24 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_11BFA44(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  v5 = *(a2 + 40) * 100.0;
  if (v5 >= 0.0)
  {
    v6 = *(a2 + 40) * 100.0;
    if (v5 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v5 + v5) + 1;
  }

  else
  {
    v6 = *(a2 + 40) * 100.0;
    if (v5 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
  }

  v6 = (v7 >> 1);
LABEL_7:
  if (v6 < 9.22337204e18)
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (*a1 != 1)
    {
      return;
    }
  }

  else
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (*a1 != 1)
    {
      return;
    }
  }

  sub_11C02DC(*(a1 + 56), a2, *(a1 + 40), &v35);
  v8 = v35;
  v9 = v36;
  if (v35 != v36)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v8 + 3) | (*(v8 + 2) << 32);
      v12 = sub_502FF8(*(a1 + 56), v11, 0, "stop");
      v13 = *(v12 + *(v12 - *v12 + 12));
      if (v13 <= 0xFFFFFFFEFFFFFFFFLL && v13 != 0)
      {
        v15 = sub_93D480(*(a1 + 56), v13, 0, "station");
        v16 = (v15 - *v15);
        if (*v16 >= 0xBu)
        {
          v17 = v16[5];
          if (v17)
          {
            if (*(v15 + v17 + *(v15 + v17)))
            {
              goto LABEL_15;
            }
          }
        }
      }

      if (*(a1 + 3))
      {
        v18 = *(a1 + 48);
        v19 = sub_502FF8(*(a1 + 56), v11, 0, "stop");
        v20 = v19 + *(v19 - *v19 + 6);
        v21 = *v20;
        LODWORD(v20) = *(v20 + 4);
        v20 = v20 >= 0xFFFFFFFE ? 4294967294 : v20;
        v37 = v21 | (v20 << 32);
        v38 = 0x7FFFFFFF;
        if ((sub_3B8540(v18, &v37) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v22 = *v8 * 100.0;
      if (v22 >= 0.0)
      {
        v23 = *v8 * 100.0;
        if (v22 >= 4.50359963e15)
        {
          goto LABEL_34;
        }

        v24 = (v22 + v22) + 1;
      }

      else
      {
        v23 = *v8 * 100.0;
        if (v22 <= -4.50359963e15)
        {
          goto LABEL_34;
        }

        v24 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
      }

      v23 = (v24 >> 1);
LABEL_34:
      if (v23 >= 9.22337204e18)
      {
        v26 = 0x7FFFFFFFFFFFFFFELL;
        v27 = a3[2];
        if (v10 >= v27)
        {
          goto LABEL_44;
        }

        goto LABEL_13;
      }

      if (v22 >= 0.0)
      {
        if (v22 >= 4.50359963e15)
        {
          goto LABEL_43;
        }

        v25 = (v22 + v22) + 1;
      }

      else
      {
        if (v22 <= -4.50359963e15)
        {
          goto LABEL_43;
        }

        v25 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
      }

      v22 = (v25 >> 1);
LABEL_43:
      v26 = v22;
      v27 = a3[2];
      if (v10 >= v27)
      {
LABEL_44:
        v28 = *a3;
        v29 = v10 - *a3;
        v30 = 0xCCCCCCCCCCCCCCCDLL * (v29 >> 3) + 1;
        if (v30 > 0x666666666666666)
        {
          sub_1794();
        }

        v31 = 0xCCCCCCCCCCCCCCCDLL * ((v27 - v28) >> 3);
        if (2 * v31 > v30)
        {
          v30 = 2 * v31;
        }

        if (v31 >= 0x333333333333333)
        {
          v32 = 0x666666666666666;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          if (v32 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v33 = 8 * (v29 >> 3);
        *v33 = 0;
        *(v33 + 4) = v8[1];
        *(v33 + 16) = v26;
        *(v33 + 24) = 0;
        *(v33 + 32) = 0;
        v10 = v33 + 40;
        v34 = v33 - v29;
        memcpy((v33 - v29), v28, v29);
        *a3 = v34;
        a3[1] = v10;
        a3[2] = 0;
        if (v28)
        {
          operator delete(v28);
        }

        goto LABEL_14;
      }

LABEL_13:
      *v10 = 0;
      *(v10 + 4) = v8[1];
      *(v10 + 16) = v26;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      v10 += 40;
LABEL_14:
      a3[1] = v10;
LABEL_15:
      v8 += 6;
      if (v8 == v9)
      {
        v8 = v35;
        break;
      }
    }
  }

  if (v8)
  {
    v36 = v8;
    operator delete(v8);
  }
}

void sub_11BFECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (!*v11)
  {
    _Unwind_Resume(exception_object);
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

uint64_t sub_11BFF20(uint64_t a1, unint64_t *a2)
{
  v3 = sub_93D480(a1, *a2, 0, "station");
  v4 = (v3 - *v3);
  if (*v4 < 0xDu)
  {
    return 0;
  }

  v5 = v4[6];
  if (!v5)
  {
    return 0;
  }

  v6 = (v3 + v5 + *(v3 + v5));
  v7 = *v6;
  if (!v7)
  {
    return 0;
  }

  v8 = 8 * v7;
  v9 = v6 + 1;
  do
  {
    if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
    {
      operator new();
    }

    v9 += 2;
    v8 -= 8;
  }

  while (v8);
  return 0;
}

void sub_11C0100(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11C0120(uint64_t a1, unint64_t *a2)
{
  v3 = sub_93D2F4(a1, *a2, 0, "hall");
  v4 = (v3 - *v3);
  if (*v4 < 0xDu)
  {
    return 0;
  }

  v5 = v4[6];
  if (!v5)
  {
    return 0;
  }

  v6 = (v3 + v5 + *(v3 + v5));
  v7 = *v6;
  if (!v7)
  {
    return 0;
  }

  v8 = 8 * v7;
  v9 = v6 + 1;
  do
  {
    if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
    {
      operator new();
    }

    v9 += 2;
    v8 -= 8;
  }

  while (v8);
  return 0;
}

void sub_11C02C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11C02DC@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if (*(result + 3872) && a3 && (*a2 & a2[1]) != -1)
  {
    sub_2B6218(&v4, a3);
    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return result;
}

void sub_11C11A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_1959728(&a49);
  if (v49)
  {
    operator delete(v49);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (!a19)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

void sub_11C1274()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v0 + 3880);
  v16 = *(v0 + 3872);
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_3BFF0C(v18, &v16);
  v10 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  sub_11C283C(v18, v6, v22, v4, v2, 0, &v14);
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  if (v15 != v14)
  {
    if (((v15 - v14) >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  v11 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }
}

void sub_11C16D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_BA4254(va);
  _Unwind_Resume(a1);
}

void sub_11C16E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_11C16FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
    v17 = __p;
    if (!__p)
    {
LABEL_3:
      sub_BA4254(&a14);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v17 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v17);
  sub_BA4254(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_11C1758@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if (*(result + 3872) && a3 && (*a2 & a2[1]) != -1)
  {
    sub_2B6218(&v4, a3);
    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return result;
}

void sub_11C261C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_1959728(&a49);
  if (v49)
  {
    operator delete(v49);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (!a19)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

void sub_11C26F0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[2];
    *(v3 + 1) = a2[1];
    *(v3 + 2) = v6;
    *v3 = v5;
    v7 = (v3 + 48);
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (&v3[-*a1] >> 4);
  v10 = v9 + 1;
  if (v9 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x2AAAAAAAAAAAAAALL)
  {
    v12 = 0x555555555555555;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = (16 * (&v3[-*a1] >> 4));
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v13[2] = a2[2];
  v7 = 48 * v9 + 48;
  v15 = 48 * v9 - (v3 - v8);
  memcpy(v13 - (v3 - v8), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

void sub_11C283C(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v8 = 0x7FFFFFFFFFFFFFFELL;
  if (a5 < 0x7FFFFFFFFFFFFFFELL)
  {
    v8 = a5;
  }

  v9[4] = v8;
  v10 = a6;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v20 = 0;
  v21 = 0;
  __p = 0;
  *v11 = 0u;
  v12 = 0u;
  if (*a2 == -1 && a2[1] == -1)
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
  }

  else
  {
    sub_11C2958(v9);
    sub_11C3608(v9, a7);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }
}

void sub_11C2958(uint64_t a1)
{
  LODWORD(v179) = 0;
  sub_2D1C68((a1 + 56), &v179, (a1 + 32));
  LODWORD(v177) = 1;
  *&v179 = 0;
  sub_2D1C68((a1 + 56), &v177, &v179);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 != v3)
  {
    v5 = *(a1 + 88);
    v4 = *(a1 + 96);
    v6 = *(a1 + 24);
    do
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= v6)
      {
        return;
      }

      v7 = *v2;
      v8 = *(v2 + 1);
      v9 = v3 - v2;
      if (v9 >= 2)
      {
        v10 = 0;
        v179 = *v2;
        v11 = v2;
        do
        {
          v12 = &v11[v10 + 1];
          v13 = (2 * v10) | 1;
          v14 = 2 * v10 + 2;
          if (v14 < v9)
          {
            v15 = *(v12 + 8);
            v16 = *(v12 + 24);
            v12 += 16 * (v15 > v16);
            if (v15 > v16)
            {
              v13 = v14;
            }
          }

          *v11 = *v12;
          v11 = v12;
          v10 = v13;
        }

        while (v13 <= ((v9 - 2) >> 1));
        v17 = v3 - 1;
        if (v12 == v17)
        {
          *v12 = v179;
        }

        else
        {
          *v12 = *v17;
          *v17 = v179;
          v18 = (v12 - v2 + 16) >> 4;
          v39 = v18 < 2;
          v19 = v18 - 2;
          if (!v39)
          {
            v20 = v19 >> 1;
            v21 = &v2[v19 >> 1];
            v22 = *(v12 + 8);
            if (*(v21 + 8) > v22)
            {
              v23 = *v12;
              do
              {
                v24 = v12;
                v12 = v21;
                *v24 = *v21;
                if (!v20)
                {
                  break;
                }

                v20 = (v20 - 1) >> 1;
                v21 = &v2[v20];
              }

              while (*(v21 + 8) > v22);
              *v12 = v23;
              *(v12 + 8) = v22;
            }
          }
        }

        v3 = *(a1 + 64);
      }

      *(a1 + 64) = v3 - 1;
      *(a1 + 48) = v8;
      if (v7)
      {
        sub_11C3DD8(a1, v7);
      }

      while (1)
      {
        v25 = *(a1 + 152);
        v26 = *(a1 + 160);
        if (v25 == v26)
        {
          break;
        }

        v27 = *(v25 + 1);
        if (v27 > *(a1 + 48))
        {
          break;
        }

        v28 = *v25;
        v29 = *(v25 + 2);
        if (v26 - v25 >= 25)
        {
          v30 = 0;
          v31 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3);
          v179 = *v25;
          v180 = *(v25 + 2);
          v32 = v25;
          do
          {
            v34 = &v32[3 * v30 + 3];
            v35 = (2 * v30) | 1;
            v36 = 2 * v30 + 2;
            if (v36 < v31)
            {
              v37 = *(v34 + 8);
              v38 = *(v34 + 32);
              v39 = v37 <= v38;
              v40 = v37 <= v38 ? 0 : 24;
              v34 += v40;
              if (!v39)
              {
                v35 = v36;
              }
            }

            v33 = *v34;
            v32[2] = *(v34 + 16);
            *v32 = v33;
            v32 = v34;
            v30 = v35;
          }

          while (v35 <= ((v31 - 2) >> 1));
          v41 = v26 - 24;
          if (v34 == v41)
          {
            v51 = v179;
            *(v34 + 16) = v180;
            *v34 = v51;
          }

          else
          {
            v42 = *v41;
            *(v34 + 16) = *(v41 + 2);
            *v34 = v42;
            *v41 = v179;
            *(v41 + 2) = v180;
            v43 = v34 - v25 + 24;
            if (v43 >= 25)
            {
              v44 = (-2 - 0x5555555555555555 * (v43 >> 3)) >> 1;
              v45 = &v25[24 * v44];
              v46 = *(v34 + 8);
              if (*(v45 + 1) > v46)
              {
                v47 = *v34;
                v48 = *(v34 + 16);
                do
                {
                  v49 = v34;
                  v34 = v45;
                  v50 = *v45;
                  *(v49 + 16) = *(v45 + 2);
                  *v49 = v50;
                  if (!v44)
                  {
                    break;
                  }

                  v44 = (v44 - 1) >> 1;
                  v45 = &v25[24 * v44];
                }

                while (*(v45 + 1) > v46);
                *v34 = v47;
                *(v34 + 8) = v46;
                *(v34 + 16) = v48;
              }
            }
          }

          v26 = *(a1 + 160);
        }

        *(a1 + 160) = v26 - 24;
        v52 = *(a1 + 128);
        v53 = *(a1 + 136);
        if (v52 >= v53)
        {
          v57 = *(a1 + 120);
          v58 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v57) >> 3) + 1;
          if (v58 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_176:
            sub_1794();
          }

          v59 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v57) >> 3);
          if (2 * v59 > v58)
          {
            v58 = 2 * v59;
          }

          if (v59 >= 0x555555555555555)
          {
            v60 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v60 = v58;
          }

          if (v60)
          {
            if (v60 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            goto LABEL_174;
          }

          v61 = (8 * ((v52 - v57) >> 3));
          *v61 = v28;
          v61[1] = v27;
          v61[2] = v29;
          v54 = v61 + 3;
          v62 = v61 - (v52 - v57);
          memcpy(v62, v57, v52 - v57);
          *(a1 + 120) = v62;
          *(a1 + 128) = v54;
          *(a1 + 136) = 0;
          if (v57)
          {
            operator delete(v57);
          }

          *(a1 + 128) = v54;
          v55 = *(a1 + 120);
          v56 = v54 - v55;
          if (v54 - v55 >= 25)
          {
LABEL_60:
            v63 = (-2 - 0x5555555555555555 * (v56 >> 3)) >> 1;
            v64 = (v55 + 24 * v63);
            v65 = *(v54 - 1);
            if (v64[2] > v65)
            {
              v66 = v54 - 3;
              v179 = *(v54 - 3);
              do
              {
                v67 = v66;
                v66 = v64;
                v68 = *v64;
                v67[2] = v64[2];
                *v67 = v68;
                if (!v63)
                {
                  break;
                }

                v63 = (v63 - 1) >> 1;
                v64 = (v55 + 24 * v63);
              }

              while (v64[2] > v65);
              *v66 = v179;
              v66[2] = v65;
            }
          }
        }

        else
        {
          *v52 = v28;
          *(v52 + 1) = v27;
          v54 = v52 + 24;
          *(v52 + 2) = v29;
          *(a1 + 128) = v52 + 24;
          v55 = *(a1 + 120);
          v56 = v54 - v55;
          if (v54 - v55 >= 25)
          {
            goto LABEL_60;
          }
        }
      }

      while (1)
      {
        v69 = *(a1 + 120);
        v70 = *(a1 + 128);
        if (v69 == v70)
        {
          break;
        }

        v71 = *(v69 + 2);
        if (v71 >= *(a1 + 48))
        {
          break;
        }

        v73 = *v69;
        v72 = *(v69 + 1);
        if (v70 - v69 >= 25)
        {
          v74 = 0;
          v75 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v69) >> 3);
          v179 = *v69;
          v180 = *(v69 + 2);
          v76 = v69;
          do
          {
            v78 = &v76[3 * v74 + 3];
            v79 = (2 * v74) | 1;
            v80 = 2 * v74 + 2;
            if (v80 < v75)
            {
              v81 = *(v78 + 16);
              v82 = *(v78 + 40);
              v83 = v81 <= v82;
              v84 = v81 <= v82 ? 0 : 24;
              v78 += v84;
              if (!v83)
              {
                v79 = v80;
              }
            }

            v77 = *v78;
            v76[2] = *(v78 + 16);
            *v76 = v77;
            v76 = v78;
            v74 = v79;
          }

          while (v79 <= ((v75 - 2) >> 1));
          v85 = v70 - 24;
          if (v78 == v85)
          {
            v93 = v179;
            *(v78 + 16) = v180;
            *v78 = v93;
          }

          else
          {
            v86 = *v85;
            *(v78 + 16) = *(v85 + 2);
            *v78 = v86;
            *v85 = v179;
            *(v85 + 2) = v180;
            v87 = v78 - v69 + 24;
            if (v87 >= 25)
            {
              v88 = (-2 - 0x5555555555555555 * (v87 >> 3)) >> 1;
              v89 = &v69[24 * v88];
              v90 = *(v78 + 16);
              if (*(v89 + 2) > v90)
              {
                v177 = *v78;
                do
                {
                  v91 = v78;
                  v78 = v89;
                  v92 = *v89;
                  *(v91 + 16) = *(v89 + 2);
                  *v91 = v92;
                  if (!v88)
                  {
                    break;
                  }

                  v88 = (v88 - 1) >> 1;
                  v89 = &v69[24 * v88];
                }

                while (*(v89 + 2) > v90);
                *v78 = v177;
                *(v78 + 16) = v90;
              }
            }
          }

          v70 = *(a1 + 128);
        }

        *(a1 + 128) = v70 - 24;
        v94 = *(a1 + 96);
        v95 = *(a1 + 104);
        if (v94 < v95)
        {
          *v94 = v73;
          *(v94 + 1) = v72;
          v96 = v94 + 24;
          *(v94 + 2) = v71;
          *(a1 + 96) = v94 + 24;
          v97 = *(a1 + 88);
          v98 = v96 - v97;
          if (v96 - v97 < 25)
          {
            continue;
          }

LABEL_102:
          v105 = (-2 - 0x5555555555555555 * (v98 >> 3)) >> 1;
          v106 = (v97 + 24 * v105);
          v107 = *(v96 - 2);
          if (v106[1] > v107)
          {
            v110 = *(v96 - 3);
            v109 = v96 - 3;
            v108 = v110;
            v111 = v109[2];
            do
            {
              v112 = v109;
              v109 = v106;
              v113 = *v106;
              v112[2] = v106[2];
              *v112 = v113;
              if (!v105)
              {
                break;
              }

              v105 = (v105 - 1) >> 1;
              v106 = (v97 + 24 * v105);
            }

            while (v106[1] > v107);
            *v109 = v108;
            v109[1] = v107;
            v109[2] = v111;
          }

          continue;
        }

        v99 = *(a1 + 88);
        v100 = 0xAAAAAAAAAAAAAAABLL * ((v94 - v99) >> 3) + 1;
        if (v100 > 0xAAAAAAAAAAAAAAALL)
        {
LABEL_175:
          sub_1794();
        }

        v101 = 0xAAAAAAAAAAAAAAABLL * ((v95 - v99) >> 3);
        if (2 * v101 > v100)
        {
          v100 = 2 * v101;
        }

        if (v101 >= 0x555555555555555)
        {
          v102 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v102 = v100;
        }

        if (v102)
        {
          if (v102 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_174;
        }

        v103 = (8 * ((v94 - v99) >> 3));
        *v103 = v73;
        v103[1] = v72;
        v103[2] = v71;
        v96 = v103 + 3;
        v104 = v103 - (v94 - v99);
        memcpy(v104, v99, v94 - v99);
        *(a1 + 88) = v104;
        *(a1 + 96) = v96;
        *(a1 + 104) = 0;
        if (v99)
        {
          operator delete(v99);
        }

        *(a1 + 96) = v96;
        v97 = *(a1 + 88);
        v98 = v96 - v97;
        if (v96 - v97 >= 25)
        {
          goto LABEL_102;
        }
      }

      while (2)
      {
        v5 = *(a1 + 88);
        v4 = *(a1 + 96);
        v6 = *(a1 + 24);
        v114 = v70 - v69;
        if (v70 != v69)
        {
          v115 = 0xAAAAAAAAAAAAAAABLL * (v114 >> 3);
          if (v115 - 0x5555555555555555 * ((v4 - v5) >> 3) >= v6 && *(v69 + 1) < *(v69 + 2))
          {
            v116 = *v69;
            v178 = *(v69 + 2);
            v177 = v116;
            if (v114 >= 25)
            {
              v117 = 0;
              v118 = *v69;
              v180 = *(v69 + 2);
              v179 = v118;
              v119 = v69;
              do
              {
                v121 = &v119[3 * v117 + 3];
                v122 = (2 * v117) | 1;
                v123 = 2 * v117 + 2;
                if (v123 < v115)
                {
                  v124 = *(v121 + 16);
                  v125 = *(v121 + 40);
                  v126 = v124 <= v125;
                  v127 = v124 <= v125 ? 0 : 24;
                  v121 += v127;
                  if (!v126)
                  {
                    v122 = v123;
                  }
                }

                v120 = *v121;
                v119[2] = *(v121 + 16);
                *v119 = v120;
                v119 = v121;
                v117 = v122;
              }

              while (v122 <= ((v115 - 2) >> 1));
              v128 = v70 - 24;
              if (v121 == v128)
              {
                v137 = v179;
                *(v121 + 16) = v180;
                *v121 = v137;
              }

              else
              {
                v129 = *v128;
                *(v121 + 16) = *(v128 + 2);
                *v121 = v129;
                v130 = v179;
                *(v128 + 2) = v180;
                *v128 = v130;
                v131 = v121 - v69 + 24;
                if (v131 >= 25)
                {
                  v132 = (-2 - 0x5555555555555555 * (v131 >> 3)) >> 1;
                  v133 = &v69[24 * v132];
                  v134 = *(v121 + 16);
                  if (*(v133 + 2) > v134)
                  {
                    v181 = *v121;
                    do
                    {
                      v135 = v121;
                      v121 = v133;
                      v136 = *v133;
                      *(v135 + 16) = *(v133 + 2);
                      *v135 = v136;
                      if (!v132)
                      {
                        break;
                      }

                      v132 = (v132 - 1) >> 1;
                      v133 = &v69[24 * v132];
                    }

                    while (*(v133 + 2) > v134);
                    *v121 = v181;
                    *(v121 + 16) = v134;
                  }
                }
              }

              v70 = *(a1 + 128);
            }

            *(a1 + 128) = v70 - 24;
            v138 = sub_11C4328(a1, &v177);
            *&v181 = v138;
            v182 = v138;
            v139 = *(a1 + 48);
            if (v139 <= v138)
            {
              if (v139 >= v138)
              {
                v146 = *(a1 + 128);
                v145 = *(a1 + 136);
                if (v146 >= v145)
                {
                  v154 = *(a1 + 120);
                  v155 = 0xAAAAAAAAAAAAAAABLL * ((v146 - v154) >> 3) + 1;
                  if (v155 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_176;
                  }

                  v156 = 0xAAAAAAAAAAAAAAABLL * ((v145 - v154) >> 3);
                  if (2 * v156 > v155)
                  {
                    v155 = 2 * v156;
                  }

                  if (v156 >= 0x555555555555555)
                  {
                    v157 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v157 = v155;
                  }

                  if (v157)
                  {
                    if (v157 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

LABEL_174:
                    sub_1808();
                  }

                  v169 = (8 * ((v146 - v154) >> 3));
                  *v169 = v177;
                  v169[1] = v138;
                  v169[2] = v138;
                  v147 = v169 + 3;
                  v170 = v169 - (v146 - v154);
                  memcpy(v170, v154, v146 - v154);
                  *(a1 + 120) = v170;
                  *(a1 + 128) = v147;
                  *(a1 + 136) = 0;
                  if (v154)
                  {
                    operator delete(v154);
                  }

                  *(a1 + 128) = v147;
                  v148 = *(a1 + 120);
                  v149 = v147 - v148;
                  if (v147 - v148 < 25)
                  {
                    goto LABEL_108;
                  }
                }

                else
                {
                  *v146 = v177;
                  *(v146 + 1) = v138;
                  *(v146 + 2) = v138;
                  v147 = v146 + 24;
                  *(a1 + 128) = v146 + 24;
                  v148 = *(a1 + 120);
                  v149 = &v146[-v148 + 24];
                  if (v149 < 25)
                  {
                    goto LABEL_108;
                  }
                }

                v171 = (-2 - 0x5555555555555555 * (v149 >> 3)) >> 1;
                v172 = (v148 + 24 * v171);
                v173 = *(v147 - 1);
                if (v172[2] > v173)
                {
                  v174 = v147 - 3;
                  v179 = *(v147 - 3);
                  do
                  {
                    v175 = v174;
                    v174 = v172;
                    v176 = *v172;
                    v175[2] = v172[2];
                    *v175 = v176;
                    if (!v171)
                    {
                      break;
                    }

                    v171 = (v171 - 1) >> 1;
                    v172 = (v148 + 24 * v171);
                  }

                  while (v172[2] > v173);
                  *v174 = v179;
                  v174[2] = v173;
                }

                goto LABEL_108;
              }

              sub_2D2348(a1 + 152, &v177, &v181, &v182);
            }

            else
            {
              v141 = *(a1 + 96);
              v140 = *(a1 + 104);
              if (v141 >= v140)
              {
                v150 = *(a1 + 88);
                v151 = 0xAAAAAAAAAAAAAAABLL * ((v141 - v150) >> 3) + 1;
                if (v151 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_175;
                }

                v152 = 0xAAAAAAAAAAAAAAABLL * ((v140 - v150) >> 3);
                if (2 * v152 > v151)
                {
                  v151 = 2 * v152;
                }

                if (v152 >= 0x555555555555555)
                {
                  v153 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v153 = v151;
                }

                if (v153)
                {
                  if (v153 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  goto LABEL_174;
                }

                v158 = (8 * ((v141 - v150) >> 3));
                *v158 = v177;
                v158[1] = v138;
                v158[2] = v138;
                v142 = v158 + 3;
                v159 = v158 - (v141 - v150);
                memcpy(v159, v150, v141 - v150);
                *(a1 + 88) = v159;
                *(a1 + 96) = v142;
                *(a1 + 104) = 0;
                if (v150)
                {
                  operator delete(v150);
                }

                *(a1 + 96) = v142;
                v143 = *(a1 + 88);
                v144 = v142 - v143;
                if (v142 - v143 >= 25)
                {
LABEL_160:
                  v160 = (-2 - 0x5555555555555555 * (v144 >> 3)) >> 1;
                  v161 = (v143 + 24 * v160);
                  v162 = *(v142 - 2);
                  if (v161[1] > v162)
                  {
                    v165 = *(v142 - 3);
                    v164 = v142 - 3;
                    v163 = v165;
                    v166 = v164[2];
                    do
                    {
                      v167 = v164;
                      v164 = v161;
                      v168 = *v161;
                      v167[2] = v161[2];
                      *v167 = v168;
                      if (!v160)
                      {
                        break;
                      }

                      v160 = (v160 - 1) >> 1;
                      v161 = (v143 + 24 * v160);
                    }

                    while (v161[1] > v162);
                    *v164 = v163;
                    v164[1] = v162;
                    v164[2] = v166;
                  }
                }
              }

              else
              {
                *v141 = v177;
                *(v141 + 1) = v138;
                *(v141 + 2) = v138;
                v142 = v141 + 24;
                *(a1 + 96) = v141 + 24;
                v143 = *(a1 + 88);
                v144 = &v141[-v143 + 24];
                if (v144 >= 25)
                {
                  goto LABEL_160;
                }
              }
            }

LABEL_108:
            v69 = *(a1 + 120);
            v70 = *(a1 + 128);
            continue;
          }
        }

        break;
      }

      v2 = *(a1 + 56);
      v3 = *(a1 + 64);
    }

    while (v2 != v3);
  }
}