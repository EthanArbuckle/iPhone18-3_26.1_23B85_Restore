double sub_243958834(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  if (*a1)
  {
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    if (v3)
    {
      return result;
    }

    *a1 = xmmword_2856A2960;
    *(a1 + 2) = qword_2856A2970;
    v2 = sub_243959E38;
  }

  v4 = v2(*(a1 + 2), 152864);
  if (v4)
  {
    v6 = *a1;
    *(v4 + 21744) = *(a1 + 2);
    *(v4 + 21728) = v6;
    *(v4 + 21552) = 5;
    result = 0.0;
    *(v4 + 21520) = 0u;
    *(v4 + 21536) = 0u;
    *(v4 + 5132) = 201326604;
    *(v4 + 21612) = 0;
    *(v4 + 21604) = 0;
    *(v4 + 21712) = 0;
    *(v4 + 21560) = 0x400000001;
    *(v4 + 21568) = 8;
  }

  return result;
}

double sub_24395890C()
{
  v1 = xmmword_2856A2960;
  v2 = qword_2856A2970;
  return sub_243958834(&v1);
}

uint64_t sub_243958948(uint64_t a1)
{
  if (a1)
  {
    (*(a1 + 21736))(*(a1 + 21744), a1);
  }

  return 0;
}

uint64_t sub_243958978(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 5)
  {
    return 5;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*a2 != -47205081)
  {
    if (*a2 >> 4 != 25481893)
    {
      return -10;
    }

    if (a3 < 8)
    {
      return 8;
    }

    v12 = 0;
    *a1 = *(a2 + 4);
    v13 = 8;
    goto LABEL_41;
  }

  v5 = *(a2 + 4);
  v6 = v5 & 3;
  v7 = v5 >> 6;
  v8 = qword_243991898[v5 >> 6] + qword_243991878[v5 & 3] - ((v5 & 0x20) >> 5);
  if (v5 < 0x40 && (v5 & 0x20) != 0)
  {
    ++v8;
  }

  v3 = v8 + 6;
  if (v3 <= a3)
  {
    if ((v5 & 8) == 0)
    {
      if ((v5 & 0x20) != 0)
      {
        v10 = 0;
        v11 = 5;
LABEL_21:
        if ((v5 & 3) > 1)
        {
          if (v6 == 2)
          {
            v6 = *(a2 + v11);
            v11 += 2;
          }

          else
          {
            v6 = *(a2 + v11);
            v11 += 4;
          }
        }

        else if ((v5 & 3) != 0)
        {
          v6 = *(a2 + v11++);
        }

        if (v7 > 1)
        {
          if (v7 == 2)
          {
            v14 = *(a2 + v11);
          }

          else
          {
            v14 = *(a2 + v11);
          }
        }

        else if (v7)
        {
          v14 = *(a2 + v11) + 256;
        }

        else if ((v5 & 0x20) != 0)
        {
          v14 = *(a2 + v11);
        }

        else
        {
          v14 = 0;
        }

        if (!v10)
        {
          v10 = v14;
        }

        if (v10 > 0x8000000)
        {
          return -14;
        }

        *a1 = v14;
        v12 = (v5 >> 2) & 1;
        v13 = 16;
        *(a1 + 8) = v10;
        *(a1 + 12) = v6;
LABEL_41:
        v3 = 0;
        *(a1 + v13) = v12;
        return v3;
      }

      if (*(a2 + 5) <= 0x8Fu)
      {
        v10 = (1024 << (*(a2 + 5) >> 3)) + ((1024 << (*(a2 + 5) >> 3)) >> 3) * (*(a2 + 5) & 7);
        v11 = 6;
        goto LABEL_21;
      }
    }

    return -14;
  }

  return v3;
}

uint64_t sub_243958B14(unsigned __int16 *a1, char *a2, uint64_t a3, char *a4, unint64_t a5)
{
  if (a5 >> 17)
  {
    return -72;
  }

  if (a5 < 3)
  {
    return -20;
  }

  v12 = a1 + 10240;
  v13 = *a4;
  v14 = v13 >> 6;
  if (v13 >> 6 > 1)
  {
    v23 = (v13 >> 4) & 3;
    if (v14 != 2)
    {
      if (v23 == 2)
      {
        v30 = a4[1] | ((v13 & 0xF) << 8);
        v31 = 2;
      }

      else if (v23 == 3)
      {
        v5 = -20;
        if (a5 == 3)
        {
          return v5;
        }

        v30 = ((v13 & 0xF) << 16) | (a4[1] << 8) | a4[2];
        if (v30 > 0x20000)
        {
          return v5;
        }

        v31 = 3;
      }

      else
      {
        v30 = v13 & 0x1F;
        v31 = 1;
      }

      v28 = v30;
      v29 = a1 + 10880;
      memset(a1 + 10880, a4[v31], v30 + 8);
      *(a1 + 2715) = v29;
      *(a1 + 2719) = v28;
      v21 = v31 + 1;
      goto LABEL_39;
    }

    if (v23 == 2)
    {
      v24 = a4[1] | ((v13 & 0xF) << 8);
      v25 = 2;
    }

    else if (v23 == 3)
    {
      v24 = ((v13 & 0xF) << 16) | (a4[1] << 8) | a4[2];
      v25 = 3;
    }

    else
    {
      v24 = v13 & 0x1F;
      v25 = 1;
    }

    v28 = v24;
    v21 = v25 + v24;
    if (v21 + 8 <= a5)
    {
      v29 = &a4[v25];
      *(a1 + 2715) = &a4[v25];
      *(a1 + 2719) = v24;
      goto LABEL_39;
    }

    if (v21 > a5)
    {
      return -20;
    }

    v29 = a1 + 10880;
    memcpy(a1 + 10880, &a4[v25], v24);
  }

  else
  {
    if (!v14)
    {
      if (a5 < 5)
      {
        return -20;
      }

      v15 = (v13 >> 4) & 3;
      v16 = a4[1];
      if (v15 == 2)
      {
        v111 = a4[2];
        v20 = a4[3] | ((v111 & 0x3F) << 8);
        v21 = v20 + 4;
        if (v20 + 4 > a5)
        {
          return -20;
        }

        v19 = ((v13 & 0xF) << 10) | (4 * v16) | (v111 >> 6);
        v22 = 4;
      }

      else if (v15 == 3)
      {
        v17 = ((v13 & 0xF) << 14) | (v16 << 6);
        v18 = a4[2];
        v19 = v17 | (v18 >> 2);
        v5 = -20;
        if (v19 > 0x20000)
        {
          return v5;
        }

        v20 = (a4[3] << 8) | ((v18 & 3) << 16) | a4[4];
        v21 = v20 + 5;
        if (v20 + 5 > a5)
        {
          return v5;
        }

        v22 = 5;
      }

      else
      {
        v20 = a4[2] | ((v16 & 3) << 8);
        v21 = v20 + 3;
        if (v20 + 3 > a5)
        {
          return -20;
        }

        v19 = (v16 >> 2) & 0xFFFFFC3F | ((v13 & 0xF) << 6);
        if ((v13 & 0x10) != 0)
        {
          v112 = sub_243957644(a1 + 1283, a1 + 21760, v19, a4 + 3, v20);
          goto LABEL_123;
        }

        v22 = 3;
      }

      v112 = sub_2439587CC(a1 + 1283, a1 + 21760, v19, &a4[v22], v20);
LABEL_123:
      if (v112 > 0xFFFFFFFFFFFFFF88)
      {
        return -20;
      }

      *(a1 + 2715) = a1 + 10880;
      *(a1 + 2719) = v19;
      *(v12 + 282) = 1;
      *(a1 + v19 + 21760) = 0;
      v29 = *(a1 + 2715);
      v28 = *(a1 + 2719);
      goto LABEL_39;
    }

    if ((v13 & 0x30) != 0x10)
    {
      return -20;
    }

    if (!*(a1 + 5402))
    {
      return -30;
    }

    v26 = a4[1];
    v27 = a4[2] | ((v26 & 3) << 8);
    v21 = v27 + 3;
    if (v27 + 3 > a5)
    {
      return -20;
    }

    if (*(a1 + 5133) << 8 != 256)
    {
      return -20;
    }

    v28 = ((v13 & 0xF) << 6) | (v26 >> 2);
    v29 = a1 + 10880;
    if (sub_2439581A8(a1 + 10880, v28, a4 + 3, v27, (a1 + 2566)) > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }
  }

  *(a1 + 2715) = v29;
  *(a1 + 2719) = v28;
  *(v29 + v28) = 0;
LABEL_39:
  v32 = a5 - v21;
  if (a5 == v21)
  {
    return -72;
  }

  v33 = &a4[v21];
  v34 = &a2[a3];
  v35 = v29 + v28;
  v37 = v33 + 1;
  v36 = *v33;
  if (!*v33)
  {
    v58 = v29;
    v57 = a2;
    goto LABEL_111;
  }

  v38 = *(v12 + 283);
  if ((v36 & 0x80) != 0)
  {
    if (v36 == 255)
    {
      if (v32 < 3)
      {
        return -72;
      }

      v37 = v33 + 3;
      v36 = *(v33 + 1) + 32512;
    }

    else
    {
      if (v32 < 2)
      {
        return -72;
      }

      v37 = v33 + 2;
      v36 = (v33[1] | (v36 << 8)) - 0x8000;
    }
  }

  v39 = &a4[a5];
  if ((v37 + 4) > v39)
  {
    return -72;
  }

  v123 = v36;
  v119 = *(a1 + 2693);
  v120 = *(a1 + 2692);
  v121 = *(a1 + 2691);
  v122 = v34;
  v118 = v35;
  v42 = *v37;
  v40 = (v37 + 1);
  v41 = v42;
  v43 = sub_243956B28(a1, v42 >> 6, 0x23u, 9u, v40, v39 - v40, &unk_2439918B8, 6u, v38);
  if (v43 > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  v44 = v40 + v43;
  v45 = sub_243956B28((a1 + 1026), (v41 >> 4) & 3, 0x1Cu, 8u, (v40 + v43), v39 - (v40 + v43), &unk_243991900, 5u, v38);
  if (v45 > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  v46 = &v44[v45];
  v47 = sub_243956B28((a1 + 1540), (v41 >> 2) & 3, 0x34u, 9u, v46, v39 - v46, &unk_24399193A, 6u, v38);
  if (v47 > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  v5 = v46 + v47 - v33;
  if (v5 > 0xFFFFFFFFFFFFFF88)
  {
    return v5;
  }

  if (!v123)
  {
    v58 = v29;
    v57 = a2;
    goto LABEL_132;
  }

  v127 = 0u;
  memset(v128, 0, 24);
  v125 = 0u;
  v126 = 0u;
  *(v12 + 283) = 1;
  v48 = 80;
  v49 = 10780;
  memset(v124, 0, sizeof(v124));
  do
  {
    *(v124 + v48) = *&a1[v49];
    v48 += 8;
    v49 += 2;
  }

  while (v48 != 104);
  if (sub_243959D28(v124, v46 + v47, v39 - (v46 + v47)) > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  v115 = v12 + 540;
  v50 = *a1;
  v51 = *&v124[0] << SBYTE8(v124[0]) >> 1 >> (63 - v50);
  DWORD2(v124[0]) += v50;
  *&v125 = v51;
  sub_243950B88(v124);
  v52 = a1[1026];
  v53 = *&v124[0] << SBYTE8(v124[0]) >> 1 >> (63 - v52);
  DWORD2(v124[0]) += v52;
  *(&v125 + 1) = a1 + 2;
  *&v126 = v53;
  sub_243950B88(v124);
  v54 = a1[1540];
  v55 = *&v124[0] << SBYTE8(v124[0]) >> 1 >> (63 - v54);
  DWORD2(v124[0]) += v54;
  *(&v126 + 1) = a1 + 1028;
  *&v127 = v55;
  sub_243950B88(v124);
  v117 = (v122 - 8);
  *(&v127 + 1) = a1 + 1542;
  v56 = a2;
  while (1)
  {
    v57 = v56;
    v58 = v29;
    if (sub_243950B88(v124) == 3 || v123 == 0)
    {
      break;
    }

    v60 = *(&v125 + 1);
    v61 = v125;
    v62 = *(*(&v125 + 1) + 4 * v125 + 2);
    v63 = *(&v127 + 1);
    v64 = v127;
    v65 = *(*(&v127 + 1) + 4 * v127 + 2);
    v66 = *(&v126 + 1);
    v67 = v126;
    v68 = *(*(&v126 + 1) + 4 * v126 + 2);
    if (*(*(&v126 + 1) + 4 * v126 + 2))
    {
      v69 = dword_243991C6C[*(*(&v126 + 1) + 4 * v126 + 2)];
      v70 = *&v124[0] << SBYTE8(v124[0]) >> 1 >> (63 - v68);
      DWORD2(v124[0]) += v68;
      v71 = v70 + v69;
      if (v68 != 1)
      {
        *(v128 + 8) = v128[0];
LABEL_69:
        *&v128[0] = v71;
        goto LABEL_71;
      }
    }

    else
    {
      v71 = 0;
    }

    v72 = 1 - v71;
    if (v71 >= 2 || v62 != 0)
    {
      v72 = v71;
    }

    if (v72)
    {
      v71 = *(v128 + v72);
      if (v72 != 1)
      {
        *&v128[1] = *(&v128[0] + 1);
      }

      *(&v128[0] + 1) = *&v128[0];
      goto LABEL_69;
    }

    v71 = *&v128[0];
LABEL_71:
    v74 = dword_243991A34[v65];
    if (v65 < 0x20)
    {
      v75 = 0;
    }

    else
    {
      v75 = *&v124[0] << SBYTE8(v124[0]) >> 1 >> (63 - v74);
      DWORD2(v124[0]) += v74;
    }

    v76 = dword_2439919A4[v62];
    if (v62 < 0x10)
    {
      v77 = 0;
    }

    else
    {
      v77 = *&v124[0] << SBYTE8(v124[0]) >> 1 >> (63 - v76);
      DWORD2(v124[0]) += v76;
    }

    v78 = dword_243991B98[v65];
    v79 = dword_243991B08[v62];
    if ((v76 + v68 + v74) >= 0x20)
    {
      v80 = v71;
      sub_243950B88(v124);
      v71 = v80;
      v60 = *(&v125 + 1);
      v61 = v125;
      v63 = *(&v127 + 1);
      v64 = v127;
      v66 = *(&v126 + 1);
      v67 = v126;
    }

    v81 = v77 + v79;
    v82 = (v60 + 4 * v61);
    v83 = *v82;
    LODWORD(v82) = *(v82 + 3);
    v84 = *&v124[0] << SBYTE8(v124[0]) >> 1 >> (63 - v82);
    DWORD2(v124[0]) += v82;
    *&v125 = v84 + v83;
    v85 = (v63 + 4 * v64);
    v86 = *v85;
    LODWORD(v85) = *(v85 + 3);
    v87 = *&v124[0] << SBYTE8(v124[0]) >> 1 >> (63 - v85);
    DWORD2(v124[0]) += v85;
    *&v127 = v87 + v86;
    v88 = (v66 + 4 * v67);
    v89 = *v88;
    LODWORD(v88) = *(v88 + 3);
    v90 = *&v124[0] << SBYTE8(v124[0]) >> 1 >> (63 - v88);
    DWORD2(v124[0]) += v88;
    *&v126 = v90 + v89;
    v5 = -70;
    if (v81 + 8 > v122 - v57)
    {
      return v5;
    }

    v91 = v75 + v78;
    v92 = v81 + v91;
    if (v81 + v91 > v122 - v57)
    {
      return v5;
    }

    if (v81 > v118 - v29)
    {
      return -20;
    }

    --v123;
    v93 = &v57[v81];
    v5 = v81 + v91;
    v56 = &v57[v92];
    v29 = (v29 + v81);
    v94 = &v57[v81 - v71];
    do
    {
      v95 = *v58;
      v58 += 4;
      *v57 = v95;
      v57 += 8;
    }

    while (v57 < v93);
    if (v71 <= v93 - v121)
    {
      goto LABEL_90;
    }

    if (v71 > &v93[-v120])
    {
      return -20;
    }

    v96 = v81 + v91;
    v97 = v94 - v121;
    v98 = (v119 + v94 - v121);
    if (v98 + v91 > v119)
    {
      v116 = v71;
      memmove(v93, v98, v121 - v94);
      v93 -= v97;
      if (v93 > v117 || (v91 += v97, v91 <= 2))
      {
        v92 = v96;
        if (v93 < v56)
        {
          v108 = v121;
          do
          {
            v109 = *v108++;
            *v93++ = v109;
          }

          while (v93 < v56);
        }

        goto LABEL_104;
      }

      v94 = v121;
      v71 = v116;
      v92 = v96;
LABEL_90:
      if (v71 > 7)
      {
        *v93 = *v94;
      }

      else
      {
        v99 = dword_243991D00[v71];
        *v93 = *v94;
        v93[1] = v94[1];
        v93[2] = v94[2];
        v93[3] = v94[3];
        v100 = &v94[dword_243991CE0[v71]];
        *(v93 + 1) = *v100;
        v94 = &v100[-v99];
      }

      v101 = v93 + 8;
      v102 = v94 + 8;
      if (v56 <= (v122 - 13))
      {
        do
        {
          v107 = *v102;
          v102 += 8;
          *v101 = v107;
          v101 += 8;
        }

        while (v101 < &v93[v91]);
      }

      else
      {
        if (v101 < v117)
        {
          v103 = v93 + 8;
          v104 = v102;
          do
          {
            v105 = *v104++;
            *v103++ = v105;
          }

          while (v103 < v117);
          v102 += v117 - v101;
          v101 = v122 - 8;
        }

        while (v101 < v56)
        {
          v106 = *v102++;
          *v101++ = v106;
        }
      }

      goto LABEL_104;
    }

    memmove(v93, v98, v91);
    v92 = v96;
LABEL_104:
    if (v92 >= 0xFFFFFFFFFFFFFF89)
    {
      return v5;
    }
  }

  if (v123)
  {
    return -20;
  }

  v113 = 80;
  v114 = v115;
  do
  {
    *v114++ = *(v124 + v113);
    v113 += 8;
  }

  while (v113 != 104);
LABEL_132:
  v35 = v118;
  v34 = v122;
LABEL_111:
  v110 = v35 - v58;
  if (v35 - v58 > (v34 - v57))
  {
    return -70;
  }

  if (v35 != v58)
  {
    memcpy(v57, v58, v35 - v58);
    v57 += v110;
  }

  return v57 - a2;
}

uint64_t sub_243959564(void *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  sub_2439595FC(a1, a6, a7);
  v12 = a1[2690];
  if (v12 != a2)
  {
    a1[2693] = v12;
    a1[2692] = &a2[a1[2691] - v12];
    a1[2691] = a2;
    a1[2690] = a2;
  }

  return sub_2439598C4(a1, a2, a3, a4, a5);
}

uint64_t sub_2439595FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = 0;
  v30 = *MEMORY[0x277D85DE8];
  *(a1 + 21552) = 5;
  *(a1 + 5132) = 201326604;
  *(a1 + 21604) = 0;
  *(a1 + 21560) = 0x400000001;
  *(a1 + 21568) = 8;
  *(a1 + 21520) = 0u;
  *(a1 + 21536) = 0u;
  *(a1 + 21612) = 0;
  *(a1 + 21712) = 0;
  if (a2 && a3)
  {
    if (a3 <= 7 || *a2 != -332356553)
    {
      result = 0;
      *(a1 + 21536) = a2;
      *(a1 + 21528) = a2;
      v21 = a2 + a3;
LABEL_18:
      *(a1 + 21520) = v21;
      goto LABEL_19;
    }

    *(a1 + 21712) = *(a2 + 4);
    v7 = a2 + 8;
    v8 = a3 - 8;
    v9 = sub_243957C70((a1 + 5132), (a2 + 8), a3 - 8);
    if (v9 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_16;
    }

    v10 = v7 + v9;
    v27 = 0;
    v28 = 28;
    v11 = sub_24394EDA4(v29, &v28, &v27, (v7 + v9), v8 - v9);
    if (v11 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_16;
    }

    if (v27 >= 9)
    {
      goto LABEL_16;
    }

    v12 = v11;
    if (sub_24395360C((a1 + 2052), v29, v28, v27) > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_16;
    }

    v13 = a2 + a3;
    v27 = 0;
    v28 = 52;
    v14 = sub_24394EDA4(v29, &v28, &v27, (v10 + v12), a2 + a3 - (v10 + v12));
    if (v14 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_16;
    }

    if (v27 >= 0xA)
    {
      goto LABEL_16;
    }

    v15 = v14;
    if (sub_24395360C((a1 + 3080), v29, v28, v27) > 0xFFFFFFFFFFFFFF88 || (v16 = (v10 + v12 + v15), v27 = 0, v28 = 35, v17 = sub_24394EDA4(v29, &v28, &v27, v16, v13 - v16), v17 > 0xFFFFFFFFFFFFFF88) || v27 >= 0xA || (v18 = v17, sub_24395360C(a1, v29, v28, v27) > 0xFFFFFFFFFFFFFF88) || (v19 = (v16 + v18), v20 = v16 + v18 + 12, v20 > v13))
    {
LABEL_16:
      result = -30;
      goto LABEL_19;
    }

    v23 = *v19;
    *(a1 + 21560) = v23;
    result = -30;
    if (v23)
    {
      if (v8 > v23)
      {
        v24 = v19[1];
        *(a1 + 21564) = v24;
        if (v24)
        {
          if (v8 > v24)
          {
            v25 = v19[2];
            *(a1 + 21568) = v25;
            if (v25)
            {
              if (v8 > v25)
              {
                *(a1 + 21608) = 0x100000001;
                if (v20 - v7 <= 0xFFFFFFFFFFFFFF88)
                {
                  result = 0;
                  v26 = *(a1 + 21520);
                  *(a1 + 21544) = v26;
                  *(a1 + 21536) = v20 + *(a1 + 21528) - v26;
                  *(a1 + 21528) = v20;
                  v21 = v8 + v7;
                  goto LABEL_18;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2439598C4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 < 8)
  {
    return -72;
  }

  v7 = *(a4 + 4);
  v8 = *(qword_243991898 + ((v7 >> 3) & 0x18));
  if (v7 >= 0x40 || (v7 & 0x20) == 0)
  {
    v10 = v8 + qword_243991878[v7 & 3] - ((v7 & 0x20) >> 5);
  }

  else
  {
    v10 = v8 + qword_243991878[v7 & 3] - ((v7 & 0x20) >> 5) + 1;
  }

  v5 = v10 + 6;
  if (v10 + 6 <= 0xFFFFFFFFFFFFFF88)
  {
    if (v10 + 9 > a5)
    {
      return -72;
    }

    if (sub_243959C48(a1, a4, v5))
    {
      return -20;
    }

    v15 = (a4 + v5);
    __len = 0;
    v16 = a5 - v5;
    v17 = sub_243956A80((a4 + v5), a5 - v5, &__len);
    v18 = v17;
    if (v17 > 0xFFFFFFFFFFFFFF88)
    {
      return v17;
    }

    v19 = a4 + a5;
    v20 = &a2[a3];
    v21 = a2;
    do
    {
      v22 = v16 - 3;
      v23 = v16 - 3 >= v18;
      v16 = v16 - 3 - v18;
      if (!v23)
      {
        return -72;
      }

      v24 = (v15 + 3);
      v5 = -1;
      if (__len > 1)
      {
        if (__len != 2)
        {
          if (__len != 3)
          {
            return v5;
          }

          if (!v22)
          {
            return v21 - a2;
          }

          return -72;
        }

        v5 = HIDWORD(__len);
        if (v20 - v21 < HIDWORD(__len))
        {
          return -70;
        }

        if (!HIDWORD(__len))
        {
          goto LABEL_29;
        }

        memset(v21, *v24, HIDWORD(__len));
      }

      else
      {
        if (!__len)
        {
          v5 = sub_243958B14(a1, v21, v20 - v21, v24, v18);
          if (v5 > 0xFFFFFFFFFFFFFF88)
          {
            return v5;
          }

          goto LABEL_30;
        }

        if (__len != 1)
        {
          return v5;
        }

        if (v18 > v20 - v21)
        {
          return -70;
        }

        if (!v18)
        {
LABEL_29:
          v5 = 0;
          goto LABEL_30;
        }

        memcpy(v21, v24, v18);
        v5 = v18;
      }

LABEL_30:
      if (*(a1 + 21592))
      {
        sub_243902CD0(a1 + 21616, v21, v5);
      }

      v21 += v5;
      v15 = &v24[v18];
      __len = 0;
      v18 = sub_243956A80(v15, v19 - v15, &__len);
      v5 = v18;
    }

    while (v18 < 0xFFFFFFFFFFFFFF89);
  }

  return v5;
}

unint64_t sub_243959AF4(unint64_t result, unint64_t a2, unint64_t *a3, void *a4)
{
  if (a2 <= 7)
  {
    goto LABEL_2;
  }

  v7 = result;
  v8 = *(result + 4);
  v9 = *(qword_243991898 + ((v8 >> 3) & 0x18));
  if (v8 >= 0x40 || (v8 & 0x20) == 0)
  {
    v11 = v9 + qword_243991878[v8 & 3] - ((v8 & 0x20) >> 5);
  }

  else
  {
    v11 = v9 + qword_243991878[v8 & 3] - ((v8 & 0x20) >> 5) + 1;
  }

  v6 = v11 + 6;
  if (v6 >= 0xFFFFFFFFFFFFFF89)
  {
    goto LABEL_20;
  }

  if (*result != -47205081)
  {
    v6 = -10;
    goto LABEL_20;
  }

  if (v6 + 3 > a2)
  {
LABEL_2:
    v6 = -72;
LABEL_20:
    *a3 = v6;
LABEL_21:
    *a4 = -2;
    return result;
  }

  v12 = result + v6;
  v13 = a2 - v6;
  v17 = 0;
  result = sub_243956A80((result + v6), a2 - v6, &v17);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
LABEL_24:
    *a3 = result;
    goto LABEL_21;
  }

  v14 = 0;
  while (1)
  {
    v15 = v12 + 3;
    if (v17 == 3)
    {
      break;
    }

    v16 = v13 - 3 >= result;
    v13 = v13 - 3 - result;
    if (!v16)
    {
      result = -72;
      goto LABEL_24;
    }

    v12 = v15 + result;
    v17 = 0;
    result = sub_243956A80((v15 + result), v13, &v17);
    v14 += 0x20000;
    if (result >= 0xFFFFFFFFFFFFFF89)
    {
      goto LABEL_24;
    }
  }

  *a3 = v15 - v7;
  *a4 = v14;
  return result;
}

uint64_t sub_243959C48(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = (a1 + 20480);
  v5 = sub_243958978(a1 + 21576, a2, a3);
  v6 = v4[277];
  if (v6 && v4[308] != v6)
  {
    return -32;
  }

  if (v4[278])
  {
    sub_243902C88(a1 + 21616, 0);
  }

  return v5;
}

uint64_t sub_243959CBC(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      (*(*a1 + 21736))(*(*a1 + 21744));
    }

    if (*(a1 + 40))
    {
      (*(a1 + 144))(*(a1 + 152));
    }

    if (*(a1 + 64))
    {
      (*(a1 + 144))(*(a1 + 152));
    }

    (*(a1 + 144))(*(a1 + 152), a1);
  }

  return 0;
}

uint64_t sub_243959D28(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    *(a1 + 24) = a2;
    if (a3 >= 8)
    {
      *(a1 + 16) = &a2[a3 - 8];
      *a1 = *&a2[a3 - 8];
      if (a2[a3 - 1])
      {
        v3 = 8 - (__clz(a2[a3 - 1]) ^ 0x1F);
LABEL_21:
        *(a1 + 8) = v3;
        return a3;
      }

      goto LABEL_22;
    }

    *(a1 + 16) = a2;
    v4 = *a2;
    *a1 = v4;
    if (a3 > 4)
    {
      if (a3 != 5)
      {
        if (a3 != 6)
        {
          v4 |= a2[6] << 48;
          *a1 = v4;
        }

        v4 += a2[5] << 40;
        *a1 = v4;
      }

      v4 += a2[4] << 32;
      *a1 = v4;
    }

    else
    {
      if (a3 == 2)
      {
LABEL_18:
        *a1 = v4 + (a2[1] << 8);
        goto LABEL_19;
      }

      if (a3 == 3)
      {
LABEL_17:
        v4 += a2[2] << 16;
        *a1 = v4;
        goto LABEL_18;
      }

      if (a3 != 4)
      {
LABEL_19:
        if (a2[a3 - 1])
        {
          v3 = __clz(a2[a3 - 1]) - 8 * a3 + 41;
          goto LABEL_21;
        }

LABEL_22:
        *(a1 + 8) = 0;
        return -1;
      }
    }

    v4 += a2[3] << 24;
    *a1 = v4;
    goto LABEL_17;
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  return -72;
}

uint64_t sub_243959E48(int a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = HIWORD(a1);
  v4 = a1;
  if (a3 != 1)
  {
    if (!a2)
    {
      return 1;
    }

    if (a3 < 0x10)
    {
      for (; a3; --a3)
      {
        v9 = *a2++;
        v4 += v9;
        v3 += v4;
      }

      if (v4 > 0xFFF0)
      {
        v4 -= 65521;
      }

      v3 %= 0xFFF1uLL;
      return v4 | (v3 << 16);
    }

    if (a3 >> 4 >= 0x15B)
    {
      do
      {
        a3 -= 5552;
        v10 = -347;
        v11 = a2;
        do
        {
          v12 = v4 + *v11;
          v13 = v12 + v3;
          v14 = v12 + v11[1];
          v15 = v13 + v14;
          v16 = v14 + v11[2];
          v17 = v15 + v16;
          v18 = v16 + v11[3];
          v19 = v17 + v18;
          v20 = v18 + v11[4];
          v21 = v19 + v20;
          v22 = v20 + v11[5];
          v23 = v21 + v22;
          v24 = v22 + v11[6];
          v25 = v23 + v24;
          v26 = v24 + v11[7];
          v27 = v25 + v26;
          v28 = v26 + v11[8];
          v29 = v27 + v28;
          v30 = v28 + v11[9];
          v31 = v29 + v30;
          v32 = v30 + v11[10];
          v33 = v31 + v32;
          v34 = v32 + v11[11];
          v35 = v33 + v34;
          v36 = v34 + v11[12];
          v37 = v35 + v36;
          v38 = v36 + v11[13];
          v39 = v37 + v38;
          v40 = v38 + v11[14];
          v41 = v39 + v40;
          v4 = v40 + v11[15];
          v3 = v41 + v4;
          v11 += 16;
        }

        while (!__CFADD__(v10++, 1));
        a2 += 5552;
        v4 %= 0xFFF1uLL;
        v3 %= 0xFFF1uLL;
      }

      while (a3 >> 4 > 0x15A);
      if (!a3)
      {
        return v4 | (v3 << 16);
      }

      if (a3 < 0x10)
      {
        goto LABEL_30;
      }
    }

    do
    {
      a3 -= 16;
      v43 = v4 + *a2;
      v44 = v43 + v3;
      v45 = v43 + a2[1];
      v46 = v44 + v45;
      v47 = v45 + a2[2];
      v48 = v46 + v47;
      v49 = v47 + a2[3];
      v50 = v48 + v49;
      v51 = v49 + a2[4];
      v52 = v50 + v51;
      v53 = v51 + a2[5];
      v54 = v52 + v53;
      v55 = v53 + a2[6];
      v56 = v54 + v55;
      v57 = v55 + a2[7];
      v58 = v56 + v57;
      v59 = v57 + a2[8];
      v60 = v58 + v59;
      v61 = v59 + a2[9];
      v62 = v60 + v61;
      v63 = v61 + a2[10];
      v64 = v62 + v63;
      v65 = v63 + a2[11];
      v66 = v64 + v65;
      v67 = v65 + a2[12];
      v68 = v66 + v67;
      v69 = v67 + a2[13];
      v70 = v68 + v69;
      v71 = v69 + a2[14];
      v72 = v70 + v71;
      v4 = v71 + a2[15];
      v3 = v72 + v4;
      a2 += 16;
    }

    while (a3 > 0xF);
    if (a3)
    {
LABEL_30:
      do
      {
        v73 = *a2++;
        v4 += v73;
        v3 += v4;
        --a3;
      }

      while (a3);
    }

    v4 %= 0xFFF1uLL;
    v3 %= 0xFFF1uLL;
    return v4 | (v3 << 16);
  }

  v5 = a1 + *a2;
  if (v5 > 0xFFF0)
  {
    v5 -= 65521;
  }

  v6 = v5 + HIWORD(a1);
  if (v6 <= 0xFFF0)
  {
    v7 = v6 << 16;
  }

  else
  {
    v7 = (v6 << 16) - 4293984256u;
  }

  return v7 | v5;
}

uint64_t sub_24395A17C(int a1, unsigned __int8 *a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  _X20 = ~a1;
  if (a3 && (a2 & 7) != 0)
  {
    v5 = a2 + 1;
    do
    {
      v7 = *v3++;
      _W9 = v7;
      __asm { CRC32B          W20, W20, W9 }

      _X20 = _OFF;
      __asm { CRC32B          W20, W20, W9 }

      if (!--a3)
      {
        break;
      }
    }

    while ((v5++ & 7));
  }

  v14 = a3 >> 3;
  if (a3 >= 0x17610)
  {
    v15 = v3 + 31920;
    do
    {
      LODWORD(_X13) = 0;
      _W14 = 0;
      v18 = -31920;
      v19 = v15;
      do
      {
        _X17 = *&v3[v18 + 31920];
        _X0 = *v19;
        _X1 = *(v19 + 3990);
        __asm
        {
          CRC32X          W20, W20, X17
          CRC32X          W14, W14, X0
          CRC32X          W13, W13, X1
        }

        _X13 = _OFF;
        __asm { CRC32X          W13, W13, X1 }

        v19 += 8;
        v18 += 8;
      }

      while (v18);
      v24 = 0;
      v3 += 95760;
      for (i = 0x80000000; ; i >>= 1)
      {
        if ((i & 0xA10D3D0C) != 0)
        {
          v24 ^= _X20;
          if (((i - 1) & 0xA10D3D0C) == 0)
          {
            break;
          }
        }

        if (_X20)
        {
          LODWORD(_X20) = (_X20 >> 1) ^ 0xEDB88320;
        }

        else
        {
          LODWORD(_X20) = _X20 >> 1;
        }
      }

      LODWORD(v26) = 0;
      v27 = v24 ^ _W14;
      for (j = 0x80000000; ; j >>= 1)
      {
        if ((j & 0xA10D3D0C) != 0)
        {
          v26 = v26 ^ v27;
          if (((j - 1) & 0xA10D3D0C) == 0)
          {
            break;
          }
        }

        if (v27)
        {
          v27 = (v27 >> 1) ^ 0xEDB88320;
        }

        else
        {
          v27 >>= 1;
        }
      }

      v14 -= 11970;
      _X20 = _X13 ^ v26;
      v15 += 95760;
    }

    while (v14 > 0x2EC1);
  }

  v29 = a3 & 7;
  if (v14 >= 0x960)
  {
    LODWORD(_X24) = 0;
    _W25 = 0;
    v32 = v14 / 3u;
    if (v32 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v14 / 3u;
    }

    v34 = v3;
    do
    {
      _X11 = v34[v32];
      _X12 = v34[2 * v32];
      v38 = *v34++;
      _X13 = v38;
      __asm
      {
        CRC32X          W20, W20, X13
        CRC32X          W25, W25, X11
        CRC32X          W24, W24, X12
      }

      _X24 = _OFF;
      __asm { CRC32X          W24, W24, X12 }

      --v33;
    }

    while (v33);
    v40 = 3 * v32;
    v3 += 24 * v32;
    v41 = sub_24395A40C(v32, 6);
    v42 = 0;
    for (k = 0x80000000; ; k >>= 1)
    {
      if ((k & v41) != 0)
      {
        v42 ^= _X20;
        if (((k - 1) & v41) == 0)
        {
          break;
        }
      }

      if (_X20)
      {
        LODWORD(_X20) = (_X20 >> 1) ^ 0xEDB88320;
      }

      else
      {
        LODWORD(_X20) = _X20 >> 1;
      }
    }

    LODWORD(v45) = 0;
    v46 = v42 ^ _W25;
    for (m = 0x80000000; ; m >>= 1)
    {
      if ((m & v41) != 0)
      {
        v45 = v45 ^ v46;
        if (((m - 1) & v41) == 0)
        {
          break;
        }
      }

      if (v46)
      {
        v46 = (v46 >> 1) ^ 0xEDB88320;
      }

      else
      {
        v46 >>= 1;
      }
    }

    v14 -= v40;
    _X20 = _X24 ^ v45;
  }

  if (v14)
  {
    v48 = v3;
    v49 = v14;
    do
    {
      v51 = *v48++;
      _X10 = v51;
      __asm { CRC32X          W20, W20, X10 }

      _X20 = _OFF;
      __asm { CRC32X          W20, W20, X10 }

      --v49;
    }

    while (v49);
  }

  if (v29)
  {
    v53 = &v3[8 * v14];
    do
    {
      v55 = *v53++;
      _W9 = v55;
      __asm { CRC32B          W20, W20, W9 }

      _X20 = _OFF;
      __asm { CRC32B          W20, W20, W9 }

      --v29;
    }

    while (v29);
  }

  return _X20 ^ 0xFFFFFFFFLL;
}

uint64_t sub_24395A40C(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 0x80000000;
  }

  v2 = 0x80000000;
  do
  {
    if (a1)
    {
      LODWORD(v3) = 0;
      v5 = dword_243991D20[a2 & 0x1F];
      for (i = 0x80000000; ; i >>= 1)
      {
        if ((i & v5) != 0)
        {
          v3 = v3 ^ v2;
          if (((i - 1) & v5) == 0)
          {
            break;
          }
        }

        if (v2)
        {
          LODWORD(v2) = (v2 >> 1) ^ 0xEDB88320;
        }

        else
        {
          LODWORD(v2) = v2 >> 1;
        }
      }
    }

    else
    {
      v3 = v2;
    }

    ++a2;
    v2 = v3;
    v4 = a1 > 1;
    a1 >>= 1;
  }

  while (v4);
  return v3;
}

uint64_t sub_24395A49C(void *a1, unsigned int a2, int a3, unsigned int a4, int a5, unsigned int a6, _BYTE *a7, int a8)
{
  if (!a7)
  {
    return 4294967290;
  }

  result = 4294967290;
  if (a8 != 112 || *a7 != 49)
  {
    return result;
  }

  if (!a1)
  {
    return 4294967294;
  }

  v12 = a4;
  a1[6] = 0;
  v13 = a1[8];
  if (!v13)
  {
    v13 = sub_243960E2C;
    a1[8] = sub_243960E2C;
    a1[10] = 0;
  }

  if (!a1[9])
  {
    a1[9] = sub_243960E34;
  }

  if (a2 == -1)
  {
    v14 = 6;
  }

  else
  {
    v14 = a2;
  }

  if ((a4 & 0x80000000) == 0)
  {
    if (a4 < 0x10)
    {
      v16 = 0;
      v15 = 1;
    }

    else
    {
      v15 = 2;
      v16 = 1;
      v12 = a4 - 16;
    }

    goto LABEL_20;
  }

  if (a4 < 0xFFFFFFF1)
  {
    return 4294967294;
  }

  v15 = 0;
  v12 = -a4;
  v16 = 1;
LABEL_20:
  result = 4294967294;
  if (a6 <= 4 && v14 <= 9 && a3 == 8 && (a5 - 10) >= 0xFFFFFFF7 && (v12 - 16) >= 0xFFFFFFF8)
  {
    if (v12 != 8)
    {
      v16 = 0;
    }

    if ((v16 & 1) == 0)
    {
      v17 = v13(a1[10], 1, 5952);
      if (v17)
      {
        v18 = v17;
        if (v12 == 8)
        {
          v19 = 9;
        }

        else
        {
          v19 = v12;
        }

        a1[7] = v17;
        *v17 = a1;
        *(v17 + 8) = 42;
        *(v17 + 48) = v15;
        *(v17 + 56) = 0;
        *(v17 + 80) = 1 << v19;
        *(v17 + 84) = v19;
        *(v17 + 88) = (1 << v19) - 1;
        *(v17 + 132) = 128 << a5;
        *(v17 + 136) = a5 + 7;
        *(v17 + 140) = (128 << a5) - 1;
        *(v17 + 144) = (a5 + 9) / 3u;
        *(v17 + 96) = (a1[8])(a1[10]);
        *(v18 + 112) = (a1[8])(a1[10], *(v18 + 80), 2);
        *(v18 + 120) = (a1[8])(a1[10], *(v18 + 132), 2);
        *(v18 + 5944) = 0;
        *(v18 + 5896) = 64 << a5;
        v20 = (a1[8])(a1[10]);
        v21 = *(v18 + 5896);
        *(v18 + 16) = v20;
        *(v18 + 24) = 4 * v21;
        if (*(v18 + 96) && *(v18 + 112) && *(v18 + 120) && v20)
        {
          *(v18 + 5888) = v20 + v21;
          *(v18 + 5904) = 3 * v21 - 3;
          *(v18 + 196) = v14;
          *(v18 + 200) = a6;
          *(v18 + 72) = 8;

          return sub_24395A7FC(a1);
        }

        *(v18 + 8) = 666;
        a1[6] = "insufficient memory";
        sub_24395A74C(a1);
      }

      return 4294967292;
    }
  }

  return result;
}

uint64_t sub_24395A74C(uint64_t a1)
{
  if (sub_24395A8A0(a1))
  {
    return 4294967294;
  }

  v3 = *(a1 + 56);
  v4 = *(v3 + 8);
  if (*(v3 + 16))
  {
    (*(a1 + 72))(*(a1 + 80), *(v3 + 16));
    v3 = *(a1 + 56);
  }

  if (*(v3 + 120))
  {
    (*(a1 + 72))(*(a1 + 80), *(v3 + 120));
    v3 = *(a1 + 56);
  }

  if (*(v3 + 112))
  {
    (*(a1 + 72))(*(a1 + 80), *(v3 + 112));
    v3 = *(a1 + 56);
  }

  if (*(v3 + 96))
  {
    (*(a1 + 72))(*(a1 + 80), *(v3 + 96));
    v3 = *(a1 + 56);
  }

  (*(a1 + 72))(*(a1 + 80), v3);
  *(a1 + 56) = 0;
  if (v4 == 113)
  {
    return 4294967293;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24395A7FC(uint64_t a1)
{
  v2 = sub_24395AB5C(a1);
  if (!v2)
  {
    v3 = *(a1 + 56);
    *(v3 + 104) = 2 * *(v3 + 80);
    v4 = *(v3 + 120);
    v5 = 2 * (*(v3 + 132) - 1);
    *&v4[v5] = 0;
    bzero(v4, v5);
    v6 = (&unk_2856A2978 + 16 * *(v3 + 196));
    v7 = v6[2];
    *(v3 + 204) = *v6;
    *(v3 + 208) = v7;
    v8 = v6[1];
    *(v3 + 188) = v6[3];
    *(v3 + 192) = v8;
    *(v3 + 152) = 0;
    *(v3 + 5932) = 0;
    *(v3 + 180) = 0x200000000;
    *(v3 + 160) = 2;
    *(v3 + 168) = 0;
    *(v3 + 128) = 0;
  }

  return v2;
}

BOOL sub_24395A8A0(void *a1)
{
  result = 1;
  if (a1)
  {
    if (a1[8])
    {
      if (a1[9])
      {
        v1 = a1[7];
        if (v1)
        {
          if (*v1 == a1)
          {
            v3 = *(v1 + 8);
            v4 = (v3 - 57) > 0x38 || ((1 << (v3 - 57)) & 0x100400400011001) == 0;
            if (!v4 || v3 == 666 || v3 == 42)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_24395A91C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 180);
  v4 = vdup_n_s32(v2);
  do
  {
    v5 = *(a1 + 172);
    v6 = *(a1 + 104) - (v3 + v5);
    if (v5 >= v2 - 262 + *(a1 + 80))
    {
      memcpy(*(a1 + 96), (*(a1 + 96) + v2), v2 - v6);
      v7 = vsub_s32(*(a1 + 172), v4);
      *(a1 + 172) = v7;
      *(a1 + 152) -= v2;
      v5 = v7.i32[0];
      if (*(a1 + 5932) > v7.i32[0])
      {
        *(a1 + 5932) = v7.i32[0];
      }

      v8 = *(a1 + 80);
      v9 = *(a1 + 132);
      v10 = (*(a1 + 120) + 2 * v9 - 2);
      do
      {
        v11 = *v10;
        v12 = v11 >= v8;
        v13 = v11 - v8;
        if (!v12)
        {
          v13 = 0;
        }

        *v10-- = v13;
        LODWORD(v9) = v9 - 1;
      }

      while (v9);
      v14 = (*(a1 + 112) + 2 * v8 - 2);
      v15 = v8;
      do
      {
        v16 = *v14;
        v12 = v16 >= v8;
        v17 = v16 - v8;
        if (!v12)
        {
          v17 = 0;
        }

        *v14-- = v17;
        --v15;
      }

      while (v15);
      v6 += v2;
    }

    if (!*(*a1 + 8))
    {
      break;
    }

    v3 = *(a1 + 180) + sub_24395C290(*a1, (*(a1 + 96) + v5 + *(a1 + 180)), v6);
    *(a1 + 180) = v3;
    v18 = *(a1 + 5932);
    if (v18 + v3 >= 3)
    {
      v19 = *(a1 + 172) - v18;
      v20 = *(a1 + 96);
      v21 = *(v20 + v19);
      *(a1 + 128) = v21;
      v23 = *(a1 + 140);
      v22 = *(a1 + 144);
      v24 = ((v21 << v22) ^ *(v20 + v19 + 1)) & v23;
      *(a1 + 128) = v24;
      do
      {
        if (!v18)
        {
          break;
        }

        v24 = ((v24 << v22) ^ *(v20 + v19 + 2)) & v23;
        v25 = *(a1 + 120);
        *(*(a1 + 112) + 2 * (*(a1 + 88) & v19)) = *(v25 + 2 * v24);
        *(v25 + 2 * v24) = v19;
        *(a1 + 128) = v24;
        ++v19;
        *(a1 + 5932) = --v18;
      }

      while (v3 + v18 > 2);
    }
  }

  while (v3 <= 0x105 && *(*a1 + 8));
  v26 = *(a1 + 5944);
  v27 = *(a1 + 104);
  if (v27 > v26)
  {
    v28 = *(a1 + 180) + *(a1 + 172);
    if (v26 >= v28)
    {
      if (v28 + 258 <= v26)
      {
        return;
      }

      if (v28 + 258 - v26 >= v27 - v26)
      {
        v31 = v27 - v26;
      }

      else
      {
        v31 = v28 + 258 - v26;
      }

      bzero((*(a1 + 96) + v26), v31);
      v30 = *(a1 + 5944) + v31;
    }

    else
    {
      if (v27 - v28 >= 0x102)
      {
        v29 = 258;
      }

      else
      {
        v29 = v27 - v28;
      }

      bzero((*(a1 + 96) + v28), v29);
      v30 = v29 + v28;
    }

    *(a1 + 5944) = v30;
  }
}

uint64_t sub_24395AB5C(uint64_t a1)
{
  if (sub_24395A8A0(a1))
  {
    return 4294967294;
  }

  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 88) = 2;
  v3 = *(a1 + 56);
  *(v3 + 32) = *(v3 + 16);
  *(v3 + 40) = 0;
  v4 = *(v3 + 48);
  if (v4 < 0)
  {
    v4 = -v4;
    *(v3 + 48) = v4;
  }

  v5 = v4 == 2;
  if (v4 == 2)
  {
    v6 = 57;
  }

  else
  {
    v6 = 42;
  }

  *(v3 + 8) = v6;
  if (v5)
  {
    v7 = sub_24395A494(0, 0, 0);
  }

  else
  {
    v7 = sub_24395A174(0, 0, 0);
  }

  *(a1 + 96) = v7;
  *(v3 + 76) = -2;
  sub_24395F35C(v3);
  return 0;
}

uint64_t sub_24395AC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_24395A8A0(a1);
  result = 4294967294;
  if (a2 > 5 || v4)
  {
    return result;
  }

  if (!*(a1 + 24) || (v6 = *(a1 + 56), (v7 = *(a1 + 8)) != 0) && !*a1 || (v8 = *(v6 + 8), a2 != 4) && v8 == 666)
  {
    *(a1 + 48) = "stream error";
    return result;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_30;
  }

  v9 = *(v6 + 76);
  *(v6 + 76) = a2;
  if (*(v6 + 40))
  {
    sub_24395B78C(a1);
    if (!*(a1 + 32))
    {
      goto LABEL_160;
    }

    v8 = *(v6 + 8);
  }

  else if (!v7)
  {
    v11 = v9 <= 4 ? 0 : -9;
    v12 = a2 <= 4 ? 0 : -9;
    if (a2 != 4 && v12 + 2 * a2 <= v11 + 2 * v9)
    {
      goto LABEL_30;
    }
  }

  switch(v8)
  {
    case 42:
      if (!*(v6 + 48))
      {
        *(v6 + 8) = 113;
        goto LABEL_133;
      }

      if (*(v6 + 200) <= 1)
      {
        v13 = *(v6 + 196);
        if (v13 == 6)
        {
          v14 = 128;
        }

        else
        {
          v14 = 192;
        }

        if (v13 >= 6)
        {
          v15 = v14;
        }

        else
        {
          v15 = 64;
        }

        if (v13 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v16 = v10 | ((*(v6 + 84) << 12) - 30720);
      if (*(v6 + 172))
      {
        v16 |= 0x20u;
      }

      v17 = *(v6 + 16);
      v18 = *(v6 + 40);
      *(v6 + 40) = v18 + 1;
      *(v17 + v18) = BYTE1(v16);
      v19 = *(v6 + 16);
      v20 = *(v6 + 40);
      *(v6 + 40) = v20 + 1;
      *(v19 + v20) = ((v16 % 0x1F) | v16) ^ 0x1F;
      if (*(v6 + 172))
      {
        v21 = *(a1 + 96);
        v22 = v21 >> 16;
        v23 = *(v6 + 16);
        v24 = *(v6 + 40);
        *(v6 + 40) = v24 + 1;
        *(v23 + v24) = BYTE3(v21);
        v25 = *(v6 + 16);
        v26 = *(v6 + 40);
        *(v6 + 40) = v26 + 1;
        *(v25 + v26) = v22;
        v27 = *(a1 + 96);
        v28 = *(v6 + 16);
        v29 = *(v6 + 40);
        *(v6 + 40) = v29 + 1;
        *(v28 + v29) = BYTE1(v27);
        v30 = *(v6 + 16);
        v31 = *(v6 + 40);
        *(v6 + 40) = v31 + 1;
        *(v30 + v31) = v27;
      }

      *(a1 + 96) = sub_24395A174(0, 0, 0);
      *(v6 + 8) = 113;
      sub_24395B78C(a1);
      if (*(v6 + 40))
      {
        goto LABEL_160;
      }

      v8 = *(v6 + 8);
      break;
    case 666:
      if (!*(a1 + 8))
      {
        goto LABEL_134;
      }

LABEL_30:
      *(a1 + 48) = "buffer error";
      return 4294967291;
    case 57:
      *(a1 + 96) = sub_24395A494(0, 0, 0);
      v32 = *(v6 + 16);
      v33 = *(v6 + 40);
      *(v6 + 40) = v33 + 1;
      *(v32 + v33) = 31;
      v34 = *(v6 + 16);
      v35 = *(v6 + 40);
      *(v6 + 40) = v35 + 1;
      *(v34 + v35) = -117;
      v36 = *(v6 + 16);
      v37 = *(v6 + 40);
      *(v6 + 40) = v37 + 1;
      *(v36 + v37) = 8;
      v38 = *(v6 + 56);
      if (v38)
      {
        v39 = (*v38 != 0) | (2 * (*(v38 + 68) != 0)) | (4 * (*(v38 + 24) != 0)) | (8 * (*(v38 + 40) != 0)) | (16 * (*(v38 + 56) != 0));
        v40 = *(v6 + 16);
        v41 = *(v6 + 40);
        *(v6 + 40) = v41 + 1;
        *(v40 + v41) = v39;
        v42 = *(*(v6 + 56) + 8);
        v43 = *(v6 + 16);
        v44 = *(v6 + 40);
        *(v6 + 40) = v44 + 1;
        *(v43 + v44) = v42;
        v45 = *(*(v6 + 56) + 8) >> 8;
        v46 = *(v6 + 16);
        v47 = *(v6 + 40);
        *(v6 + 40) = v47 + 1;
        *(v46 + v47) = v45;
        v48 = *(*(v6 + 56) + 8) >> 16;
        v49 = *(v6 + 16);
        v50 = *(v6 + 40);
        *(v6 + 40) = v50 + 1;
        *(v49 + v50) = v48;
        v51 = *(*(v6 + 56) + 8) >> 24;
        v52 = *(v6 + 16);
        v53 = *(v6 + 40);
        *(v6 + 40) = v53 + 1;
        *(v52 + v53) = v51;
        v54 = *(v6 + 196);
        if (v54 == 9)
        {
          v55 = 2;
        }

        else if (*(v6 + 200) > 1 || v54 < 2)
        {
          v55 = 4;
        }

        else
        {
          v55 = 0;
        }

        v69 = *(v6 + 16);
        v70 = *(v6 + 40);
        *(v6 + 40) = v70 + 1;
        *(v69 + v70) = v55;
        v71 = *(*(v6 + 56) + 20);
        v72 = *(v6 + 16);
        v73 = *(v6 + 40);
        *(v6 + 40) = v73 + 1;
        *(v72 + v73) = v71;
        v74 = *(v6 + 56);
        if (*(v74 + 24))
        {
          v75 = *(v74 + 32);
          v76 = *(v6 + 16);
          v77 = *(v6 + 40);
          *(v6 + 40) = v77 + 1;
          *(v76 + v77) = v75;
          v78 = *(*(v6 + 56) + 32) >> 8;
          v79 = *(v6 + 16);
          v80 = *(v6 + 40);
          *(v6 + 40) = v80 + 1;
          *(v79 + v80) = v78;
          v74 = *(v6 + 56);
        }

        if (*(v74 + 68))
        {
          *(a1 + 96) = sub_24395A494(*(a1 + 96), *(v6 + 16), *(v6 + 40));
        }

        *(v6 + 64) = 0;
        *(v6 + 8) = 69;
        goto LABEL_76;
      }

      v56 = *(v6 + 16);
      v57 = *(v6 + 40);
      *(v6 + 40) = v57 + 1;
      *(v56 + v57) = 0;
      v58 = *(v6 + 16);
      v59 = *(v6 + 40);
      *(v6 + 40) = v59 + 1;
      *(v58 + v59) = 0;
      v60 = *(v6 + 16);
      v61 = *(v6 + 40);
      *(v6 + 40) = v61 + 1;
      *(v60 + v61) = 0;
      v62 = *(v6 + 16);
      v63 = *(v6 + 40);
      *(v6 + 40) = v63 + 1;
      *(v62 + v63) = 0;
      v64 = *(v6 + 16);
      v65 = *(v6 + 40);
      *(v6 + 40) = v65 + 1;
      *(v64 + v65) = 0;
      v66 = *(v6 + 196);
      if (v66 == 9)
      {
        v67 = 2;
      }

      else if (*(v6 + 200) > 1 || v66 < 2)
      {
        v67 = 4;
      }

      else
      {
        v67 = 0;
      }

      v82 = *(v6 + 16);
      v83 = *(v6 + 40);
      *(v6 + 40) = v83 + 1;
      *(v82 + v83) = v67;
      v84 = *(v6 + 16);
      v85 = *(v6 + 40);
      *(v6 + 40) = v85 + 1;
      *(v84 + v85) = 19;
      *(v6 + 8) = 113;
      sub_24395B78C(a1);
      if (*(v6 + 40))
      {
        goto LABEL_160;
      }

      v8 = *(v6 + 8);
      break;
  }

  if (v8 <= 90)
  {
    if (v8 != 69)
    {
      if (v8 != 73)
      {
        goto LABEL_133;
      }

      goto LABEL_92;
    }

LABEL_76:
    v86 = *(v6 + 56);
    v87 = *(v86 + 24);
    if (v87)
    {
      v88 = *(v6 + 40);
      v89 = *(v86 + 32);
      v90 = *(v6 + 64);
      v91 = (v89 - v90);
      v92 = *(v6 + 24);
      if (v88 + v91 > v92)
      {
        while (1)
        {
          v93 = v92 - v88;
          memcpy((*(v6 + 16) + v88), (*(*(v6 + 56) + 24) + *(v6 + 64)), (v92 - v88));
          v94 = *(v6 + 24);
          *(v6 + 40) = v94;
          if (*(*(v6 + 56) + 68))
          {
            v95 = v94 > v88;
          }

          else
          {
            v95 = 0;
          }

          if (v95)
          {
            *(a1 + 96) = sub_24395A494(*(a1 + 96), (*(v6 + 16) + v88), v94 - v88);
          }

          *(v6 + 64) += v93;
          sub_24395B78C(a1);
          if (*(v6 + 40))
          {
            goto LABEL_160;
          }

          v88 = 0;
          v91 = v91 - v93;
          v92 = *(v6 + 24);
          if (v92 >= v91)
          {
            v88 = 0;
            v90 = *(v6 + 64);
            v87 = *(*(v6 + 56) + 24);
            break;
          }
        }
      }

      memcpy((*(v6 + 16) + v88), (v87 + v90), v91);
      v96 = *(v6 + 40) + v91;
      *(v6 + 40) = v96;
      if (*(*(v6 + 56) + 68) && v96 > v88)
      {
        *(a1 + 96) = sub_24395A494(*(a1 + 96), (*(v6 + 16) + v88), v96 - v88);
      }

      *(v6 + 64) = 0;
    }

    *(v6 + 8) = 73;
LABEL_92:
    if (*(*(v6 + 56) + 40))
    {
      v97 = *(v6 + 40);
      do
      {
        v98 = *(v6 + 40);
        v99 = *(v6 + 56);
        if (v98 == *(v6 + 24))
        {
          if (*(v99 + 68))
          {
            v100 = v98 > v97;
          }

          else
          {
            v100 = 0;
          }

          if (v100)
          {
            *(a1 + 96) = sub_24395A494(*(a1 + 96), (*(v6 + 16) + v97), v98 - v97);
          }

          sub_24395B78C(a1);
          v97 = *(v6 + 40);
          if (v97)
          {
            goto LABEL_160;
          }

          v98 = 0;
          v99 = *(v6 + 56);
        }

        v101 = *(v99 + 40);
        v102 = *(v6 + 64);
        *(v6 + 64) = v102 + 1;
        LODWORD(v101) = *(v101 + v102);
        v103 = *(v6 + 16);
        *(v6 + 40) = v98 + 1;
        *(v103 + v98) = v101;
      }

      while (v101);
      if (*(*(v6 + 56) + 68))
      {
        v104 = *(v6 + 40);
        if (v104 > v97)
        {
          *(a1 + 96) = sub_24395A494(*(a1 + 96), (*(v6 + 16) + v97), v104 - v97);
        }
      }

      *(v6 + 64) = 0;
    }

    *(v6 + 8) = 91;
    goto LABEL_112;
  }

  if (v8 != 91)
  {
    if (v8 != 103)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

LABEL_112:
  if (*(*(v6 + 56) + 56))
  {
    v105 = *(v6 + 40);
    do
    {
      v106 = *(v6 + 40);
      v107 = *(v6 + 56);
      if (v106 == *(v6 + 24))
      {
        if (*(v107 + 68))
        {
          v108 = v106 > v105;
        }

        else
        {
          v108 = 0;
        }

        if (v108)
        {
          *(a1 + 96) = sub_24395A494(*(a1 + 96), (*(v6 + 16) + v105), v106 - v105);
        }

        sub_24395B78C(a1);
        v105 = *(v6 + 40);
        if (v105)
        {
          goto LABEL_160;
        }

        v106 = 0;
        v107 = *(v6 + 56);
      }

      v109 = *(v107 + 56);
      v110 = *(v6 + 64);
      *(v6 + 64) = v110 + 1;
      LODWORD(v109) = *(v109 + v110);
      v111 = *(v6 + 16);
      *(v6 + 40) = v106 + 1;
      *(v111 + v106) = v109;
    }

    while (v109);
    if (*(*(v6 + 56) + 68))
    {
      v112 = *(v6 + 40);
      if (v112 > v105)
      {
        *(a1 + 96) = sub_24395A494(*(a1 + 96), (*(v6 + 16) + v105), v112 - v105);
      }
    }
  }

  *(v6 + 8) = 103;
LABEL_128:
  if (*(*(v6 + 56) + 68))
  {
    v113 = *(v6 + 40);
    if ((v113 + 2) > *(v6 + 24))
    {
      sub_24395B78C(a1);
      v113 = *(v6 + 40);
      if (v113)
      {
        goto LABEL_160;
      }
    }

    v114 = *(a1 + 96);
    v115 = *(v6 + 16);
    *(v6 + 40) = v113 + 1;
    *(v115 + v113) = v114;
    v116 = *(a1 + 96) >> 8;
    v117 = *(v6 + 16);
    v118 = *(v6 + 40);
    *(v6 + 40) = v118 + 1;
    *(v117 + v118) = v116;
    *(a1 + 96) = sub_24395A494(0, 0, 0);
  }

  *(v6 + 8) = 113;
  sub_24395B78C(a1);
  if (*(v6 + 40))
  {
LABEL_160:
    result = 0;
    *(v6 + 76) = -1;
    return result;
  }

LABEL_133:
  if (*(a1 + 8))
  {
    goto LABEL_135;
  }

LABEL_134:
  if (*(v6 + 180))
  {
    goto LABEL_135;
  }

  if (!a2)
  {
    return 0;
  }

  if (*(v6 + 8) != 666)
  {
LABEL_135:
    v119 = *(v6 + 196);
    if (v119)
    {
      v120 = *(v6 + 200);
      if (v120 == 3)
      {
        v121 = sub_24395BEB4(v6, a2);
      }

      else if (v120 == 2)
      {
        v121 = sub_24395BCE0(v6, a2);
      }

      else
      {
        v121 = qword_2856A2978[2 * v119 + 1](v6, a2);
      }
    }

    else
    {
      v121 = sub_24395B824(v6, a2);
    }

    if ((v121 & 0xFFFFFFFE) == 2)
    {
      *(v6 + 8) = 666;
    }

    if ((v121 & 0xFFFFFFFD) != 0)
    {
      if (v121 != 1)
      {
        goto LABEL_158;
      }

      if (a2 != 5)
      {
        if (a2 == 1)
        {
          sub_24395F940(v6);
        }

        else
        {
          sub_24395F6F4(v6, 0, 0, 0);
          if (a2 == 3)
          {
            v122 = *(v6 + 120);
            v123 = 2 * (*(v6 + 132) - 1);
            *&v122[v123] = 0;
            bzero(v122, v123);
            if (!*(v6 + 180))
            {
              *(v6 + 172) = 0;
              *(v6 + 152) = 0;
              *(v6 + 5932) = 0;
            }
          }
        }
      }

      sub_24395B78C(a1);
      if (*(a1 + 32))
      {
        goto LABEL_158;
      }

      goto LABEL_160;
    }

    if (!*(a1 + 32))
    {
      goto LABEL_160;
    }

    return 0;
  }

LABEL_158:
  if (a2 != 4)
  {
    return 0;
  }

  v124 = *(v6 + 48);
  if (v124 < 1)
  {
    return 1;
  }

  v125 = *(a1 + 96);
  if (v124 == 2)
  {
    v126 = *(v6 + 16);
    v127 = *(v6 + 40);
    *(v6 + 40) = v127 + 1;
    *(v126 + v127) = v125;
    v128 = *(a1 + 96) >> 8;
    v129 = *(v6 + 16);
    v130 = *(v6 + 40);
    *(v6 + 40) = v130 + 1;
    *(v129 + v130) = v128;
    v131 = *(a1 + 96) >> 16;
    v132 = *(v6 + 16);
    v133 = *(v6 + 40);
    *(v6 + 40) = v133 + 1;
    *(v132 + v133) = v131;
    v134 = *(a1 + 96) >> 24;
    v135 = *(v6 + 16);
    v136 = *(v6 + 40);
    *(v6 + 40) = v136 + 1;
    *(v135 + v136) = v134;
    v137 = *(a1 + 16);
    v138 = *(v6 + 16);
    v139 = *(v6 + 40);
    *(v6 + 40) = v139 + 1;
    *(v138 + v139) = v137;
    v140 = *(a1 + 16) >> 8;
    v141 = *(v6 + 16);
    v142 = *(v6 + 40);
    *(v6 + 40) = v142 + 1;
    *(v141 + v142) = v140;
    v143 = *(a1 + 16) >> 16;
    v144 = *(v6 + 16);
    v145 = *(v6 + 40);
    *(v6 + 40) = v145 + 1;
    *(v144 + v145) = v143;
    v146 = *(a1 + 16) >> 24;
  }

  else
  {
    v147 = v125 >> 16;
    v148 = *(v6 + 16);
    v149 = *(v6 + 40);
    *(v6 + 40) = v149 + 1;
    *(v148 + v149) = BYTE3(v125);
    v150 = *(v6 + 16);
    v151 = *(v6 + 40);
    *(v6 + 40) = v151 + 1;
    *(v150 + v151) = v147;
    v146 = *(a1 + 96);
    v152 = *(v6 + 16);
    v153 = *(v6 + 40);
    *(v6 + 40) = v153 + 1;
    *(v152 + v153) = BYTE1(v146);
  }

  v154 = *(v6 + 16);
  v155 = *(v6 + 40);
  *(v6 + 40) = v155 + 1;
  *(v154 + v155) = v146;
  sub_24395B78C(a1);
  v156 = *(v6 + 48);
  if (v156 >= 1)
  {
    *(v6 + 48) = -v156;
  }

  return *(v6 + 40) == 0;
}

void *sub_24395B78C(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = sub_24395F8AC(v2);
  v4 = *(v2 + 40);
  v5 = *(a1 + 32);
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    result = memcpy(*(a1 + 24), *(v2 + 32), v6);
    *(a1 + 24) += v6;
    *(a1 + 40) += v6;
    *(a1 + 32) -= v6;
    v7 = *(v2 + 40) - v6;
    *(v2 + 32) += v6;
    *(v2 + 40) = v7;
    if (!v7)
    {
      *(v2 + 32) = *(v2 + 16);
    }
  }

  return result;
}

uint64_t sub_24395B824(uint64_t a1, int a2)
{
  if (*(a1 + 24) - 5 <= *(a1 + 80))
  {
    v4 = *(a1 + 24) - 5;
  }

  else
  {
    v4 = *(a1 + 80);
  }

  v5 = *(*a1 + 8);
  while (1)
  {
    v6 = *(a1 + 5940) + 42;
    v7 = *a1;
    v8 = *(*a1 + 32);
    if (v8 < v6 >> 3)
    {
      break;
    }

    v9 = v8 - (v6 >> 3);
    v10 = *(a1 + 172);
    v11 = *(a1 + 152);
    v12 = (v10 - v11);
    v13 = *(v7 + 8);
    v14 = v12 + v13;
    v15 = v12 + v13;
    v16 = v14 >= 0xFFFF ? 0xFFFF : v15;
    v17 = v16 >= v9 ? v9 : v16;
    if (v17 < v4)
    {
      v18 = v17 || a2 == 4;
      v19 = v18 && v17 == v15;
      if (!v19 || a2 == 0)
      {
        break;
      }
    }

    v22 = a2 == 4 && v17 == v15;
    sub_24395F6F4(a1, 0, 0, v22);
    *(*(a1 + 16) + *(a1 + 40) - 4) = v17;
    *(*(a1 + 16) + *(a1 + 40) - 2) = ~v17;
    sub_24395B78C(*a1);
    if (v10 != v11)
    {
      if (v12 >= v17)
      {
        v12 = v17;
      }

      else
      {
        v12 = v12;
      }

      memcpy(*(*a1 + 24), (*(a1 + 96) + *(a1 + 152)), v12);
      v23 = *a1;
      *(v23 + 24) = *(*a1 + 24) + v12;
      *(v23 + 32) -= v12;
      *(v23 + 40) += v12;
      *(a1 + 152) += v12;
      v17 -= v12;
    }

    if (v17)
    {
      sub_24395C290(*a1, *(*a1 + 24), v17);
      v24 = *a1;
      *(v24 + 24) = *(*a1 + 24) + v17;
      *(v24 + 32) -= v17;
      *(v24 + 40) += v17;
    }

    if (v22)
    {
      v25 = 0;
      v7 = *a1;
      goto LABEL_39;
    }
  }

  v25 = 1;
LABEL_39:
  v26 = *(v7 + 8);
  v27 = (v5 - v26);
  if (v5 == v26)
  {
    v28 = *(a1 + 172);
    v29 = *(a1 + 172);
  }

  else
  {
    v30 = *(a1 + 80);
    if (v27 >= v30)
    {
      *(a1 + 5928) = 2;
      memcpy(*(a1 + 96), (*v7 - v30), v30);
      v29 = *(a1 + 80);
      *(a1 + 172) = v29;
      *(a1 + 5932) = v29;
    }

    else
    {
      v31 = *(a1 + 172);
      if (*(a1 + 104) - v31 <= v27)
      {
        v32 = (v31 - v30);
        *(a1 + 172) = v32;
        memcpy(*(a1 + 96), (*(a1 + 96) + v30), v32);
        v33 = *(a1 + 5928);
        if (v33 <= 1)
        {
          *(a1 + 5928) = v33 + 1;
        }

        LODWORD(v31) = *(a1 + 172);
        if (*(a1 + 5932) > v31)
        {
          *(a1 + 5932) = v31;
        }
      }

      memcpy((*(a1 + 96) + v31), (**a1 - v27), v27);
      v29 = *(a1 + 172) + v27;
      *(a1 + 172) = v29;
      v34 = *(a1 + 5932);
      v35 = *(a1 + 80) - v34;
      if (v27 < v35)
      {
        v35 = v27;
      }

      *(a1 + 5932) = v35 + v34;
    }

    v28 = v29;
    *(a1 + 152) = v29;
  }

  if (*(a1 + 5944) < v28)
  {
    *(a1 + 5944) = v28;
  }

  if (!v25)
  {
    return 3;
  }

  if ((a2 | 4) != 4 && !*(*a1 + 8) && *(a1 + 152) == v28)
  {
    return 1;
  }

  v37 = *(a1 + 104) - v29;
  if (*(*a1 + 8) > v37)
  {
    v38 = *(a1 + 152);
    v39 = *(a1 + 80);
    v40 = v38 < v39;
    v41 = v38 - v39;
    if (!v40)
    {
      *(a1 + 152) = v41;
      v42 = v29 - v39;
      *(a1 + 172) = v42;
      memcpy(*(a1 + 96), (*(a1 + 96) + v39), v42);
      v43 = *(a1 + 5928);
      if (v43 <= 1)
      {
        *(a1 + 5928) = v43 + 1;
      }

      v37 += *(a1 + 80);
      v29 = *(a1 + 172);
      if (*(a1 + 5932) > v29)
      {
        *(a1 + 5932) = v29;
      }
    }
  }

  if (v37 >= *(*a1 + 8))
  {
    v37 = *(*a1 + 8);
  }

  if (v37)
  {
    sub_24395C290(*a1, (*(a1 + 96) + v29), v37);
    v29 = *(a1 + 172) + v37;
    *(a1 + 172) = v29;
    v44 = *(a1 + 5932);
    v45 = *(a1 + 80) - v44;
    if (v37 < v45)
    {
      v45 = v37;
    }

    *(a1 + 5932) = v45 + v44;
  }

  v46 = v29;
  if (*(a1 + 5944) < v29)
  {
    *(a1 + 5944) = v29;
  }

  LODWORD(v47) = 0xFFFF;
  if (*(a1 + 24) - ((*(a1 + 5940) + 42) >> 3) < 0xFFFF)
  {
    v47 = *(a1 + 24) - ((*(a1 + 5940) + 42) >> 3);
  }

  if (*(a1 + 80) >= v47)
  {
    v48 = v47;
  }

  else
  {
    v48 = *(a1 + 80);
  }

  v49 = *(a1 + 152);
  v50 = v46 - v49;
  if (v46 - v49 >= v48)
  {
LABEL_90:
    if (v50 >= v47)
    {
      v53 = v47;
    }

    else
    {
      v53 = v50;
    }

    if (a2 == 4)
    {
      v54 = v50 <= v47;
      if (*(*a1 + 8))
      {
        v55 = 0;
      }

      else
      {
        v55 = v54;
      }
    }

    else
    {
      v55 = 0;
    }

    sub_24395F6F4(a1, (*(a1 + 96) + v49), v53, v55);
    *(a1 + 152) += v53;
    sub_24395B78C(*a1);
    return (2 * v55);
  }

  result = 0;
  v52 = a2 == 4 || v46 != v49;
  if (a2 && v52)
  {
    if (*(*a1 + 8))
    {
      return 0;
    }

    goto LABEL_90;
  }

  return result;
}

uint64_t sub_24395BCE0(uint64_t a1, int a2)
{
  v4 = a1 + 212;
  while (1)
  {
    if (!*(a1 + 180))
    {
      sub_24395A91C(a1);
      if (!*(a1 + 180))
      {
        break;
      }
    }

    *(a1 + 160) = 0;
    v5 = *(*(a1 + 96) + *(a1 + 172));
    v6 = *(a1 + 5888);
    v7 = *(a1 + 5900);
    *(a1 + 5900) = v7 + 1;
    *(v6 + v7) = 0;
    v8 = *(a1 + 5888);
    v9 = *(a1 + 5900);
    *(a1 + 5900) = v9 + 1;
    *(v8 + v9) = 0;
    v10 = *(a1 + 5888);
    v11 = *(a1 + 5900);
    *(a1 + 5900) = v11 + 1;
    *(v10 + v11) = v5;
    ++*(v4 + 4 * v5);
    LODWORD(v10) = *(a1 + 5900);
    LODWORD(v11) = *(a1 + 5904);
    --*(a1 + 180);
    v12 = (*(a1 + 172) + 1);
    *(a1 + 172) = v12;
    if (v10 == v11)
    {
      v13 = *(a1 + 152);
      v14 = v13 < 0 ? 0 : (*(a1 + 96) + v13);
      sub_24395FA10(a1, v14, v12 - v13, 0);
      *(a1 + 152) = *(a1 + 172);
      sub_24395B78C(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  if (!a2)
  {
    return 0;
  }

  *(a1 + 5932) = 0;
  if (a2 != 4)
  {
    if (!*(a1 + 5900))
    {
      return 1;
    }

    v17 = *(a1 + 152);
    v18 = v17 < 0 ? 0 : (*(a1 + 96) + v17);
    sub_24395FA10(a1, v18, *(a1 + 172) - v17, 0);
    *(a1 + 152) = *(a1 + 172);
    sub_24395B78C(*a1);
    return *(*a1 + 32) != 0;
  }

  v15 = *(a1 + 152);
  if (v15 < 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = (*(a1 + 96) + v15);
  }

  sub_24395FA10(a1, v16, *(a1 + 172) - v15, 1);
  *(a1 + 152) = *(a1 + 172);
  sub_24395B78C(*a1);
  if (*(*a1 + 32))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_24395BEB4(uint64_t a1, int a2)
{
  v4 = a1 + 212;
  v5 = (a1 + 2504);
  while (1)
  {
    v6 = *(a1 + 180);
    if (v6 >= 0x103)
    {
      *(a1 + 160) = 0;
      v7 = *(a1 + 172);
      if (!*(a1 + 172))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    sub_24395A91C(a1);
    v6 = *(a1 + 180);
    if (!a2 && v6 < 0x103)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    *(a1 + 160) = 0;
    v7 = *(a1 + 172);
    if (v6 < 3 || !*(a1 + 172))
    {
LABEL_24:
      v18 = *(a1 + 5900);
LABEL_25:
      v19 = *(*(a1 + 96) + v7);
      v20 = *(a1 + 5888);
      *(a1 + 5900) = v18 + 1;
      *(v20 + v18) = 0;
      v21 = *(a1 + 5888);
      v22 = *(a1 + 5900);
      *(a1 + 5900) = v22 + 1;
      *(v21 + v22) = 0;
      v23 = *(a1 + 5888);
      v24 = *(a1 + 5900);
      *(a1 + 5900) = v24 + 1;
      *(v23 + v24) = v19;
      ++*(v4 + 4 * v19);
      v25 = *(a1 + 5900);
      v26 = *(a1 + 5904);
      --*(a1 + 180);
      v27 = *(a1 + 172) + 1;
      *(a1 + 172) = v27;
      goto LABEL_26;
    }

LABEL_10:
    v8 = (*(a1 + 96) + v7);
    v9 = *(v8 - 1);
    if (v9 != *v8 || v9 != v8[1] || v9 != v8[2])
    {
      goto LABEL_24;
    }

    v10 = 0;
    v11 = v8 + 258;
    while (1)
    {
      v12 = &v8[v10];
      if (v9 != v8[v10 + 3])
      {
        v17 = v12 + 3;
        goto LABEL_39;
      }

      if (v9 != v12[4])
      {
        v17 = v8 + v10 + 4;
        goto LABEL_39;
      }

      v13 = &v8[v10];
      if (v9 != v8[v10 + 5])
      {
        v17 = v13 + 5;
        goto LABEL_39;
      }

      if (v9 != v13[6])
      {
        v17 = v8 + v10 + 6;
        goto LABEL_39;
      }

      v14 = &v8[v10];
      if (v9 != v8[v10 + 7])
      {
        v17 = v14 + 7;
        goto LABEL_39;
      }

      if (v9 != v14[8])
      {
        v17 = v8 + v10 + 8;
        goto LABEL_39;
      }

      v15 = &v8[v10];
      if (v9 != v8[v10 + 9])
      {
        break;
      }

      v16 = v10 + 2;
      v10 += 8;
      if (v16 > 0xF9 || v9 != v15[10])
      {
        v17 = v8 + v10 + 2;
        goto LABEL_39;
      }
    }

    v17 = v15 + 9;
LABEL_39:
    v30 = v17 - v11 + 258;
    if (v30 < v6)
    {
      v6 = v30;
    }

    *(a1 + 160) = v6;
    v18 = *(a1 + 5900);
    v31 = v6 >= 3;
    v32 = v6 - 3;
    if (!v31)
    {
      goto LABEL_25;
    }

    v33 = *(a1 + 5888);
    *(a1 + 5900) = v18 + 1;
    *(v33 + v18) = 1;
    v34 = *(a1 + 5888);
    v35 = *(a1 + 5900);
    *(a1 + 5900) = v35 + 1;
    *(v34 + v35) = 0;
    v36 = *(a1 + 5888);
    v37 = *(a1 + 5900);
    *(a1 + 5900) = v37 + 1;
    *(v36 + v37) = v32;
    v38 = v4 + 4 * byte_243992968[v32];
    ++*(v38 + 1028);
    ++*v5;
    v25 = *(a1 + 5900);
    v26 = *(a1 + 5904);
    LODWORD(v38) = *(a1 + 160);
    *(a1 + 180) -= v38;
    v27 = *(a1 + 172) + v38;
    *(a1 + 172) = v27;
    *(a1 + 160) = 0;
LABEL_26:
    if (v25 == v26)
    {
      v28 = *(a1 + 152);
      v29 = v28 < 0 ? 0 : (*(a1 + 96) + v28);
      sub_24395FA10(a1, v29, v27 - v28, 0);
      *(a1 + 152) = *(a1 + 172);
      sub_24395B78C(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  *(a1 + 5932) = 0;
  if (a2 != 4)
  {
    if (!*(a1 + 5900))
    {
      return 1;
    }

    v41 = *(a1 + 152);
    v42 = v41 < 0 ? 0 : (*(a1 + 96) + v41);
    sub_24395FA10(a1, v42, *(a1 + 172) - v41, 0);
    *(a1 + 152) = *(a1 + 172);
    sub_24395B78C(*a1);
    return *(*a1 + 32) != 0;
  }

  v39 = *(a1 + 152);
  if (v39 < 0)
  {
    v40 = 0;
  }

  else
  {
    v40 = (*(a1 + 96) + v39);
  }

  sub_24395FA10(a1, v40, *(a1 + 172) - v39, 1);
  *(a1 + 152) = *(a1 + 172);
  sub_24395B78C(*a1);
  if (*(*a1 + 32))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

size_t sub_24395C290(uint64_t a1, void *__dst, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = v3;
  }

  if (v4)
  {
    *(a1 + 8) = v3 - v4;
    memcpy(__dst, *a1, v4);
    v7 = *(*(a1 + 56) + 48);
    if (v7 == 2)
    {
      v8 = sub_24395A494(*(a1 + 96), __dst, v4);
    }

    else
    {
      if (v7 != 1)
      {
LABEL_10:
        *a1 += v4;
        *(a1 + 16) += v4;
        return v4;
      }

      v8 = sub_24395A174(*(a1 + 96), __dst, v4);
    }

    *(a1 + 96) = v8;
    goto LABEL_10;
  }

  return v4;
}

uint64_t sub_24395C340(uint64_t a1, int a2)
{
  v4 = a1 + 212;
  v5 = a1 + 2504;
  while (1)
  {
    if (*(a1 + 180) > 0x105u)
    {
      goto LABEL_7;
    }

    sub_24395A91C(a1);
    v6 = *(a1 + 180);
    if (!a2 && v6 < 0x106)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    if (v6 < 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v7 = *(a1 + 172);
    v8 = ((*(a1 + 128) << *(a1 + 144)) ^ *(*(a1 + 96) + v7 + 2)) & *(a1 + 140);
    *(a1 + 128) = v8;
    v9 = *(a1 + 120);
    v10 = *(v9 + 2 * v8);
    *(*(a1 + 112) + 2 * (*(a1 + 88) & v7)) = v10;
    *(v9 + 2 * v8) = v7;
    if (!v10 || v7 - v10 > *(a1 + 80) - 262)
    {
LABEL_9:
      v11 = *(a1 + 160);
      goto LABEL_11;
    }

    v11 = sub_24395CC20(a1, v10);
    *(a1 + 160) = v11;
LABEL_11:
    if (v11 < 3)
    {
      v36 = *(*(a1 + 96) + *(a1 + 172));
      v37 = *(a1 + 5888);
      v38 = *(a1 + 5900);
      *(a1 + 5900) = v38 + 1;
      *(v37 + v38) = 0;
      v39 = *(a1 + 5888);
      v40 = *(a1 + 5900);
      *(a1 + 5900) = v40 + 1;
      *(v39 + v40) = 0;
      v41 = *(a1 + 5888);
      v42 = *(a1 + 5900);
      *(a1 + 5900) = v42 + 1;
      *(v41 + v42) = v36;
      ++*(v4 + 4 * v36);
      v23 = *(a1 + 5900);
      v24 = *(a1 + 5904);
      --*(a1 + 180);
      v35 = *(a1 + 172) + 1;
LABEL_20:
      *(a1 + 172) = v35;
      goto LABEL_22;
    }

    v12 = *(a1 + 172) - *(a1 + 176);
    v13 = *(a1 + 5888);
    v14 = *(a1 + 5900);
    *(a1 + 5900) = v14 + 1;
    *(v13 + v14) = v12;
    v15 = *(a1 + 5888);
    v16 = *(a1 + 5900);
    *(a1 + 5900) = v16 + 1;
    *(v15 + v16) = BYTE1(v12);
    v17 = *(a1 + 5888);
    v18 = *(a1 + 5900);
    *(a1 + 5900) = v18 + 1;
    *(v17 + v18) = v11 - 3;
    v19 = v12 - 1;
    v20 = v4 + 4 * byte_243992968[(v11 - 3)];
    ++*(v20 + 1028);
    v21 = (v19 >> 7) + 256;
    if ((v19 & 0xFF00) == 0)
    {
      v21 = v19;
    }

    v22 = 4 * byte_243992768[v21];
    ++*(v5 + v22);
    v23 = *(a1 + 5900);
    v24 = *(a1 + 5904);
    v25 = *(a1 + 160);
    v26 = *(a1 + 180) - v25;
    *(a1 + 180) = v26;
    if (v25 <= *(a1 + 192) && v26 >= 3)
    {
      *(a1 + 160) = v25 - 1;
      v27 = *(a1 + 96);
      v29 = *(a1 + 140);
      v28 = *(a1 + 144);
      v31 = *(a1 + 112);
      v30 = *(a1 + 120);
      v32 = *(a1 + 88);
      v33 = *(a1 + 128);
      v34 = v25 - 2;
      v35 = *(a1 + 172) + 1;
      do
      {
        *(a1 + 172) = v35;
        v33 = ((v33 << v28) ^ *(v27 + v35 + 2)) & v29;
        *(a1 + 128) = v33;
        *(v31 + 2 * (v32 & v35)) = *(v30 + 2 * v33);
        *(v30 + 2 * v33) = v35;
        *(a1 + 160) = v34--;
        ++v35;
      }

      while (v34 != -1);
      goto LABEL_20;
    }

    v35 = *(a1 + 172) + v25;
    *(a1 + 172) = v35;
    *(a1 + 160) = 0;
    v43 = *(a1 + 96);
    v44 = *(v43 + v35);
    *(a1 + 128) = v44;
    *(a1 + 128) = ((v44 << *(a1 + 144)) ^ *(v43 + v35 + 1)) & *(a1 + 140);
LABEL_22:
    if (v23 == v24)
    {
      v45 = *(a1 + 152);
      v46 = v45 < 0 ? 0 : (*(a1 + 96) + v45);
      sub_24395FA10(a1, v46, v35 - v45, 0);
      *(a1 + 152) = *(a1 + 172);
      sub_24395B78C(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  v48 = *(a1 + 172);
  if (v48 >= 2)
  {
    v49 = 2;
  }

  else
  {
    v49 = *(a1 + 172);
  }

  *(a1 + 5932) = v49;
  if (a2 == 4)
  {
    v50 = *(a1 + 152);
    if (v50 < 0)
    {
      v51 = 0;
    }

    else
    {
      v51 = (*(a1 + 96) + v50);
    }

    sub_24395FA10(a1, v51, v48 - v50, 1);
    *(a1 + 152) = *(a1 + 172);
    sub_24395B78C(*a1);
    if (*(*a1 + 32))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (*(a1 + 5900))
    {
      v52 = *(a1 + 152);
      v53 = v52 < 0 ? 0 : (*(a1 + 96) + v52);
      sub_24395FA10(a1, v53, v48 - v52, 0);
      *(a1 + 152) = *(a1 + 172);
      sub_24395B78C(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }

    return 1;
  }
}

uint64_t sub_24395C71C(uint64_t a1, int a2)
{
  v4 = a1 + 212;
  v5 = a1 + 2504;
  while (1)
  {
    if (*(a1 + 180) >= 0x106u)
    {
      v7 = *(a1 + 160);
      v8 = *(a1 + 176);
      goto LABEL_9;
    }

    sub_24395A91C(a1);
    v6 = *(a1 + 180);
    if (!a2 && v6 < 0x106)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    v7 = *(a1 + 160);
    v8 = *(a1 + 176);
    if (v6 <= 2)
    {
      *(a1 + 184) = v7;
      v9 = 2;
      *(a1 + 160) = 2;
      *(a1 + 164) = v8;
      goto LABEL_19;
    }

LABEL_9:
    v10 = *(a1 + 172);
    v11 = ((*(a1 + 128) << *(a1 + 144)) ^ *(*(a1 + 96) + v10 + 2)) & *(a1 + 140);
    *(a1 + 128) = v11;
    v12 = *(a1 + 120);
    v13 = *(v12 + 2 * v11);
    *(*(a1 + 112) + 2 * (*(a1 + 88) & v10)) = v13;
    *(v12 + 2 * v11) = v10;
    *(a1 + 184) = v7;
    v9 = 2;
    *(a1 + 160) = 2;
    *(a1 + 164) = v8;
    if (!v13)
    {
      goto LABEL_19;
    }

    if (v7 < *(a1 + 192) && v10 - v13 <= *(a1 + 80) - 262)
    {
      v9 = sub_24395CC20(a1, v13);
      *(a1 + 160) = v9;
      if (v9 <= 5)
      {
        if (*(a1 + 200) != 1)
        {
          if (v9 != 3)
          {
            goto LABEL_18;
          }

          if ((*(a1 + 172) - *(a1 + 176)) <= 0x1000)
          {
            v9 = 3;
            goto LABEL_18;
          }
        }

        v9 = 2;
        *(a1 + 160) = 2;
      }
    }

LABEL_18:
    v7 = *(a1 + 184);
LABEL_19:
    v14 = v7 - 3;
    if (v7 < 3 || v9 > v7)
    {
      if (*(a1 + 168))
      {
        v35 = *(*(a1 + 96) + (*(a1 + 172) - 1));
        v36 = *(a1 + 5888);
        v37 = *(a1 + 5900);
        *(a1 + 5900) = v37 + 1;
        *(v36 + v37) = 0;
        v38 = *(a1 + 5888);
        v39 = *(a1 + 5900);
        *(a1 + 5900) = v39 + 1;
        *(v38 + v39) = 0;
        v40 = *(a1 + 5888);
        v41 = *(a1 + 5900);
        *(a1 + 5900) = v41 + 1;
        *(v40 + v41) = v35;
        ++*(v4 + 4 * v35);
        if (*(a1 + 5900) == *(a1 + 5904))
        {
          v42 = *(a1 + 152);
          if (v42 < 0)
          {
            v43 = 0;
          }

          else
          {
            v43 = (*(a1 + 96) + v42);
          }

          sub_24395FA10(a1, v43, *(a1 + 172) - v42, 0);
          *(a1 + 152) = *(a1 + 172);
          sub_24395B78C(*a1);
        }

        ++*(a1 + 172);
        --*(a1 + 180);
        goto LABEL_40;
      }

      v44 = *(a1 + 172) + 1;
      *(a1 + 168) = 1;
      *(a1 + 172) = v44;
      --*(a1 + 180);
    }

    else
    {
      v15 = *(a1 + 172);
      v16 = v15 + *(a1 + 180) - 3;
      v17 = v15 + ~*(a1 + 164);
      v18 = *(a1 + 5888);
      v19 = *(a1 + 5900);
      *(a1 + 5900) = v19 + 1;
      *(v18 + v19) = v17;
      v20 = *(a1 + 5888);
      v21 = *(a1 + 5900);
      *(a1 + 5900) = v21 + 1;
      *(v20 + v21) = BYTE1(v17);
      v22 = *(a1 + 5888);
      v23 = *(a1 + 5900);
      *(a1 + 5900) = v23 + 1;
      *(v22 + v23) = v14;
      v24 = v17 - 1;
      v25 = v4 + 4 * byte_243992968[v14];
      ++*(v25 + 1028);
      v26 = (v24 >> 7) + 256;
      if ((v24 & 0xFF00) == 0)
      {
        v26 = v24;
      }

      v30 = 4 * byte_243992768[v26];
      ++*(v5 + v30);
      v27 = *(a1 + 5900);
      v28 = *(a1 + 5904);
      LODWORD(v30) = *(a1 + 184);
      *(a1 + 180) = *(a1 + 180) - v30 + 1;
      *(a1 + 184) = v30 - 2;
      v29 = v30 - 3;
      LODWORD(v30) = *(a1 + 172) + 1;
      do
      {
        *(a1 + 172) = v30;
        if (v30 <= v16)
        {
          v31 = ((*(a1 + 128) << *(a1 + 144)) ^ *(*(a1 + 96) + (v30 + 2))) & *(a1 + 140);
          *(a1 + 128) = v31;
          v32 = *(a1 + 120);
          *(*(a1 + 112) + 2 * (*(a1 + 88) & v30)) = *(v32 + 2 * v31);
          *(v32 + 2 * v31) = v30;
        }

        *(a1 + 184) = v29--;
        v30 = (v30 + 1);
      }

      while (v29 != -1);
      *(a1 + 160) = 2;
      *(a1 + 168) = 0;
      *(a1 + 172) = v30;
      if (v27 == v28)
      {
        v33 = *(a1 + 152);
        if (v33 < 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = (*(a1 + 96) + v33);
        }

        sub_24395FA10(a1, v34, v30 - v33, 0);
        *(a1 + 152) = *(a1 + 172);
        sub_24395B78C(*a1);
LABEL_40:
        if (!*(*a1 + 32))
        {
          return 0;
        }
      }
    }
  }

  if (*(a1 + 168))
  {
    v46 = *(*(a1 + 96) + (*(a1 + 172) - 1));
    v47 = *(a1 + 5888);
    v48 = *(a1 + 5900);
    *(a1 + 5900) = v48 + 1;
    *(v47 + v48) = 0;
    v49 = *(a1 + 5888);
    v50 = *(a1 + 5900);
    *(a1 + 5900) = v50 + 1;
    *(v49 + v50) = 0;
    v51 = *(a1 + 5888);
    v52 = *(a1 + 5900);
    *(a1 + 5900) = v52 + 1;
    *(v51 + v52) = v46;
    ++*(v4 + 4 * v46);
    *(a1 + 168) = 0;
  }

  v53 = *(a1 + 172);
  if (v53 >= 2)
  {
    v54 = 2;
  }

  else
  {
    v54 = *(a1 + 172);
  }

  *(a1 + 5932) = v54;
  if (a2 == 4)
  {
    v55 = *(a1 + 152);
    if (v55 < 0)
    {
      v56 = 0;
    }

    else
    {
      v56 = (*(a1 + 96) + v55);
    }

    sub_24395FA10(a1, v56, v53 - v55, 1);
    *(a1 + 152) = *(a1 + 172);
    sub_24395B78C(*a1);
    if (*(*a1 + 32))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (*(a1 + 5900))
    {
      v57 = *(a1 + 152);
      v58 = v57 < 0 ? 0 : (*(a1 + 96) + v57);
      sub_24395FA10(a1, v58, v53 - v57, 0);
      *(a1 + 152) = *(a1 + 172);
      sub_24395B78C(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }

    return 1;
  }
}

uint64_t sub_24395CC20(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 188);
  v3 = *(a1 + 184);
  v4 = *(a1 + 96);
  v5 = *(a1 + 172);
  v6 = (v4 + v5);
  v7 = *(a1 + 80) - 262;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = *(a1 + 112);
  v11 = *(a1 + 88);
  v12 = *(a1 + 180);
  v13 = v6[v3 - 1];
  v14 = v6[v3];
  v15 = *(a1 + 208);
  if (v3 >= *(a1 + 204))
  {
    v2 >>= 2;
  }

  if (v15 >= v12)
  {
    v15 = *(a1 + 180);
  }

  while (1)
  {
    v16 = (v4 + a2);
    v17 = &v16[v3];
    if (*v17 != v14 || *(v17 - 1) != v13 || *v16 != *v6 || v16[1] != v6[1])
    {
      goto LABEL_32;
    }

    v18 = 0;
    v19 = v4 + 5 + a2;
    while (1)
    {
      v20 = &v6[v18];
      if (v6[v18 + 3] != *(v19 + v18 - 2))
      {
        v26 = v20 + 3;
        goto LABEL_29;
      }

      if (v20[4] != *(v19 + v18 - 1))
      {
        v26 = v6 + v18 + 4;
        goto LABEL_29;
      }

      v21 = &v6[v18];
      if (v6[v18 + 5] != *(v19 + v18))
      {
        v26 = v21 + 5;
        goto LABEL_29;
      }

      if (v21[6] != *(v19 + v18 + 1))
      {
        v26 = v6 + v18 + 6;
        goto LABEL_29;
      }

      v22 = &v6[v18];
      if (v6[v18 + 7] != *(v19 + v18 + 2))
      {
        v26 = v22 + 7;
        goto LABEL_29;
      }

      if (v22[8] != *(v19 + v18 + 3))
      {
        v26 = v6 + v18 + 8;
        goto LABEL_29;
      }

      v23 = &v6[v18];
      if (v6[v18 + 9] != *(v19 + v18 + 4))
      {
        break;
      }

      v24 = v18 + 8;
      if ((v18 + 2) <= 0xF9)
      {
        v25 = *(v19 + v18 + 5);
        v18 += 8;
        if (v23[10] == v25)
        {
          continue;
        }
      }

      v26 = v6 + v24 + 2;
      goto LABEL_29;
    }

    v26 = v23 + 9;
LABEL_29:
    v27 = v26 - (v6 + 258);
    v28 = v26 - v6;
    if (v28 <= v3)
    {
      goto LABEL_32;
    }

    *(a1 + 176) = a2;
    if (v28 >= v15)
    {
      break;
    }

    v13 = v6[v27 + 257];
    v14 = v6[v28];
    LODWORD(v3) = v28;
LABEL_32:
    a2 = *(v10 + 2 * (a2 & v11));
    --v2;
    if (v9 >= a2 || v2 == 0)
    {
      goto LABEL_37;
    }
  }

  LODWORD(v3) = v28;
LABEL_37:
  if (v3 >= v12)
  {
    return v12;
  }

  else
  {
    return v3;
  }
}

double sub_24395CE30(void *a1)
{
  if (!sub_24395CEC4(a1))
  {
    v3 = a1[7];
    *(v3 + 40) = 0;
    a1[2] = 0;
    a1[5] = 0;
    a1[6] = 0;
    v4 = *(v3 + 16);
    if (v4)
    {
      a1[12] = v4 & 1;
    }

    *(v3 + 8) = 16180;
    *(v3 + 20) = 0xFFFFFFFF00000000;
    *(v3 + 28) = 0x8000;
    *(v3 + 144) = v3 + 1368;
    *(v3 + 104) = v3 + 1368;
    *(v3 + 112) = v3 + 1368;
    result = NAN;
    *(v3 + 48) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 7144) = 0xFFFFFFFF00000001;
  }

  return result;
}

double sub_24395CF0C(void *a1)
{
  if (!sub_24395CEC4(a1))
  {
    v3 = a1[7];
    *(v3 + 64) = 0;
    *(v3 + 60) = 0;

    return sub_24395CE30(a1);
  }

  return result;
}

double sub_24395CF64(uint64_t a1, unsigned int a2)
{
  if (!sub_24395CEC4(a1))
  {
    v5 = *(a1 + 56);
    if ((a2 & 0x80000000) != 0)
    {
      if (a2 < 0xFFFFFFF1)
      {
        return result;
      }

      v6 = 0;
      a2 = -a2;
    }

    else
    {
      v6 = (a2 >> 4) + 5;
      if (a2 < 0x30)
      {
        a2 &= 0xFu;
      }
    }

    if (a2 - 8 < 8 || !a2)
    {
      if (*(v5 + 72) && *(v5 + 56) != a2)
      {
        (*(a1 + 72))(*(a1 + 80));
        *(v5 + 72) = 0;
      }

      *(v5 + 16) = v6;
      *(v5 + 56) = a2;

      return sub_24395CF0C(a1);
    }
  }

  return result;
}

uint64_t sub_24395D02C(void *a1, unsigned int a2, _BYTE *a3, int a4)
{
  v4 = 4294967290;
  if (a3 && a4 == 112 && *a3 == 49)
  {
    if (a1)
    {
      a1[6] = 0;
      v7 = a1[8];
      if (!v7)
      {
        v7 = sub_243960E2C;
        a1[8] = sub_243960E2C;
        a1[10] = 0;
      }

      if (!a1[9])
      {
        a1[9] = sub_243960E34;
      }

      v8 = v7(a1[10], 1, 7160);
      if (v8)
      {
        v9 = v8;
        a1[7] = v8;
        *v8 = a1;
        *(v8 + 72) = 0;
        *(v8 + 8) = 16180;
        v10 = sub_24395CF64(a1, a2);
        v4 = v11;
        if (v11)
        {
          (a1[9])(a1[10], v9, v10);
          a1[7] = 0;
        }
      }

      else
      {
        return 4294967292;
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return v4;
}

uint64_t sub_24395D118(void *a1, unint64_t a2)
{
  v3 = a1;
  if (sub_24395CEC4(a1))
  {
    return 4294967294;
  }

  v5 = *(v3 + 24);
  if (!v5)
  {
    return 4294967294;
  }

  v6 = *v3;
  if (!*v3)
  {
    if (*(v3 + 8))
    {
      return 4294967294;
    }
  }

  v7 = *(v3 + 56);
  v8 = *(v7 + 8);
  if (v8 == 16191)
  {
    v8 = 16192;
    *(v7 + 8) = 16192;
  }

  v9 = *(v3 + 32);
  v10 = *(v7 + 80);
  v11 = (v7 + 152);
  v223 = v7 + 1368;
  v12 = *(v7 + 88);
  v224 = a2 - 5;
  v229 = *(v3 + 8);
  v230 = 0;
  v13 = v229;
  v14 = v9;
LABEL_8:
  v15 = v8 - 16180;
  v16 = -3;
  v17 = 1;
  switch(v15)
  {
    case 0:
      v18 = *(v7 + 16);
      if (!v18)
      {
        v53 = 16192;
        goto LABEL_395;
      }

      if (v12 <= 0xF)
      {
        v19 = v9;
        v9 = v12;
        do
        {
          if (!v13)
          {
            goto LABEL_401;
          }

          v20 = *v6++;
          v13 = (v13 - 1);
          v10 += v20 << v9;
          v21 = v9 + 8;
          v62 = v9 >= 8;
          v9 += 8;
        }

        while (!v62);
        v12 = v21;
        v9 = v19;
      }

      if ((v18 & 2) != 0 && v10 == 35615)
      {
        if (!*(v7 + 56))
        {
          *(v7 + 56) = 15;
        }

        v22 = sub_24395A494(0, 0, 0);
        *(v7 + 32) = v22;
        LOWORD(v231) = -29921;
        v23 = sub_24395A494(v22, &v231, 2u);
        v10 = 0;
        v12 = 0;
        *(v7 + 32) = v23;
        *(v7 + 8) = 16181;
        goto LABEL_319;
      }

      v99 = *(v7 + 48);
      if (v99)
      {
        *(v99 + 72) = -1;
      }

      if ((v18 & 1) == 0 || 0xEF7BDEF7BDEF7BDFLL * ((v10 << 8) + (v10 >> 8)) >= 0x842108421084211)
      {
        v45 = "incorrect header check";
        goto LABEL_394;
      }

      if ((v10 & 0xF) != 8)
      {
        goto LABEL_393;
      }

      v203 = v10 >> 4;
      v204 = v203 + 8;
      v205 = *(v7 + 56);
      if (!v205)
      {
        *(v7 + 56) = v204;
        v205 = v203 + 8;
      }

      if (v203 > 7 || v204 > v205)
      {
        v10 >>= 4;
        v12 = (v12 - 4);
        v45 = "invalid window size";
        goto LABEL_394;
      }

      *(v7 + 24) = 0;
      *(v7 + 28) = 256 << v203;
      v206 = sub_24395A174(0, 0, 0);
      v11 = (v7 + 152);
      v12 = 0;
      *(v7 + 32) = v206;
      *(v3 + 96) = v206;
      if ((v10 & 0x2000) != 0)
      {
        v207 = 16189;
      }

      else
      {
        v207 = 16191;
      }

      *(v7 + 8) = v207;
      v10 = 0;
      goto LABEL_396;
    case 1:
      if (v12 > 0xF)
      {
        goto LABEL_56;
      }

      v34 = v9;
      v9 = v12;
      do
      {
        if (!v13)
        {
          goto LABEL_404;
        }

        v43 = *v6++;
        v13 = (v13 - 1);
        v10 += v43 << v9;
        v44 = v9 + 8;
        v62 = v9 >= 8;
        v9 += 8;
      }

      while (!v62);
      v12 = v44;
      v9 = v34;
LABEL_56:
      *(v7 + 24) = v10;
      if (v10 == 8)
      {
        if ((v10 & 0xE000) != 0)
        {
          v45 = "unknown header flags set";
          goto LABEL_394;
        }

        v225 = a2;
        a2 = v14;
        v101 = *(v7 + 48);
        if (v101)
        {
          *v101 = (v10 >> 8) & 1;
        }

        v14 = v9;
        if ((v10 & 0x200) != 0 && (*(v7 + 16) & 4) != 0)
        {
          LOWORD(v231) = v10;
          v102 = sub_24395A494(*(v7 + 32), &v231, 2u);
          v11 = (v7 + 152);
          *(v7 + 32) = v102;
        }

        LODWORD(v12) = 0;
        v10 = 0;
        *(v7 + 8) = 16182;
LABEL_185:
        v9 = v12;
        do
        {
          if (!v13)
          {
            goto LABEL_403;
          }

          v103 = *v6++;
          LODWORD(v13) = v13 - 1;
          v10 += v103 << v9;
          v62 = v9 >= 0x18;
          v9 += 8;
        }

        while (!v62);
LABEL_189:
        v104 = *(v7 + 48);
        if (v104)
        {
          *(v104 + 8) = v10;
        }

        if ((*(v7 + 25) & 2) != 0 && (*(v7 + 16) & 4) != 0)
        {
          v231 = v10;
          v105 = sub_24395A494(*(v7 + 32), &v231, 4u);
          v11 = (v7 + 152);
          *(v7 + 32) = v105;
        }

        LODWORD(v12) = 0;
        v10 = 0;
        *(v7 + 8) = 16183;
LABEL_195:
        v9 = v12;
        do
        {
          if (!v13)
          {
            goto LABEL_403;
          }

          v106 = *v6++;
          v13 = (v13 - 1);
          v10 += v106 << v9;
          v62 = v9 >= 8;
          v9 += 8;
        }

        while (!v62);
LABEL_199:
        v107 = *(v7 + 48);
        if (v107)
        {
          *(v107 + 16) = v10;
          *(v107 + 20) = v10 >> 8;
        }

        if ((*(v7 + 25) & 2) != 0 && (*(v7 + 16) & 4) != 0)
        {
          LOWORD(v231) = v10;
          v108 = sub_24395A494(*(v7 + 32), &v231, 2u);
          v11 = (v7 + 152);
          *(v7 + 32) = v108;
        }

        v10 = 0;
        LODWORD(v12) = 0;
        v47 = 0;
        *(v7 + 8) = 16184;
        v46 = *(v7 + 24);
        v9 = v14;
        v14 = a2;
        a2 = v225;
        if ((v46 & 0x400) != 0)
        {
LABEL_207:
          v19 = v9;
          v9 = v12;
          do
          {
            if (!v13)
            {
              goto LABEL_401;
            }

            v110 = *v6++;
            v13 = (v13 - 1);
            v10 += v110 << v9;
            v62 = v9 >= 8;
            v9 += 8;
          }

          while (!v62);
          v9 = v19;
LABEL_212:
          *(v7 + 92) = v10;
          v111 = *(v7 + 48);
          if (v111)
          {
            *(v111 + 32) = v10;
          }

          if ((v46 & 0x200) != 0 && (*(v7 + 16) & 4) != 0)
          {
            LOWORD(v231) = v10;
            v112 = sub_24395A494(*(v7 + 32), &v231, 2u);
            v11 = (v7 + 152);
            v10 = 0;
            v47 = 0;
            *(v7 + 32) = v112;
          }

          else
          {
            v10 = 0;
            v47 = 0;
          }
        }

        else
        {
LABEL_205:
          v109 = *(v7 + 48);
          if (v109)
          {
            *(v109 + 24) = 0;
          }
        }

        *(v7 + 8) = 16185;
        v12 = v47;
LABEL_219:
        v113 = *(v7 + 24);
        if ((v113 & 0x400) == 0)
        {
          goto LABEL_236;
        }

        v114 = *(v7 + 92);
        if (v114 >= v13)
        {
          v115 = v13;
        }

        else
        {
          v115 = *(v7 + 92);
        }

        if (v115)
        {
          v116 = *(v7 + 48);
          if (v116)
          {
            v117 = *(v116 + 24);
            if (v117)
            {
              v119 = *(v116 + 32);
              v118 = *(v116 + 36);
              v120 = v119 - v114;
              if (v118 > v120)
              {
                if (v120 + v115 <= v118)
                {
                  v121 = v115;
                }

                else
                {
                  v121 = v118 - v120;
                }

                v220 = v14;
                v122 = v12;
                memcpy((v117 + v120), v6, v121);
                v12 = v122;
                v14 = v220;
                v11 = (v7 + 152);
                v113 = *(v7 + 24);
              }
            }
          }

          if ((v113 & 0x200) != 0 && (*(v7 + 16) & 4) != 0)
          {
            v221 = v14;
            v123 = v12;
            v124 = sub_24395A494(*(v7 + 32), v6, v115);
            v12 = v123;
            v14 = v221;
            v11 = (v7 + 152);
            *(v7 + 32) = v124;
          }

          v13 = v13 - v115;
          v6 += v115;
          v114 = *(v7 + 92) - v115;
          *(v7 + 92) = v114;
        }

        if (!v114)
        {
LABEL_236:
          *(v7 + 92) = 0;
          *(v7 + 8) = 16186;
LABEL_237:
          if ((*(v7 + 25) & 8) != 0)
          {
            if (!v13)
            {
              goto LABEL_414;
            }

            v219 = v9;
            v222 = v14;
            v126 = 0;
            do
            {
              v127 = v6[v126];
              v128 = *(v7 + 48);
              if (v128)
              {
                v129 = *(v128 + 40);
                if (v129)
                {
                  v130 = *(v7 + 92);
                  if (v130 < *(v128 + 48))
                  {
                    *(v7 + 92) = v130 + 1;
                    *(v129 + v130) = v127;
                  }
                }
              }

              ++v126;
              if (v127)
              {
                v131 = v126 >= v13;
              }

              else
              {
                v131 = 1;
              }
            }

            while (!v131);
            if ((*(v7 + 25) & 2) != 0 && (*(v7 + 16) & 4) != 0)
            {
              v132 = v12;
              v133 = sub_24395A494(*(v7 + 32), v6, v126);
              v12 = v132;
              v11 = (v7 + 152);
              *(v7 + 32) = v133;
            }

            v6 += v126;
            if (v127)
            {
              LODWORD(v13) = v13 - v126;
              v17 = v230;
              goto LABEL_410;
            }

            v13 = v13 - v126;
            a2 = a2;
            v9 = v219;
            v14 = v222;
          }

          else
          {
            v125 = *(v7 + 48);
            if (v125)
            {
              *(v125 + 40) = 0;
            }
          }

          *(v7 + 92) = 0;
          *(v7 + 8) = 16187;
LABEL_257:
          if ((*(v7 + 25) & 0x10) == 0)
          {
            v134 = *(v7 + 48);
            if (v134)
            {
              *(v134 + 56) = 0;
            }

            goto LABEL_276;
          }

          if (v13)
          {
            v219 = v9;
            v222 = v14;
            v135 = 0;
            do
            {
              v136 = v6[v135];
              v137 = *(v7 + 48);
              if (v137)
              {
                v138 = *(v137 + 56);
                if (v138)
                {
                  v139 = *(v7 + 92);
                  if (v139 < *(v137 + 64))
                  {
                    *(v7 + 92) = v139 + 1;
                    *(v138 + v139) = v136;
                  }
                }
              }

              ++v135;
              if (v136)
              {
                v140 = v135 >= v13;
              }

              else
              {
                v140 = 1;
              }
            }

            while (!v140);
            if ((*(v7 + 25) & 2) != 0 && (*(v7 + 16) & 4) != 0)
            {
              v228 = v12;
              v141 = sub_24395A494(*(v7 + 32), v6, v135);
              v12 = v228;
              v11 = (v7 + 152);
              *(v7 + 32) = v141;
            }

            v6 += v135;
            if (!v136)
            {
              v13 = v13 - v135;
              v9 = v9;
              v14 = v222;
LABEL_276:
              *(v7 + 8) = 16188;
LABEL_277:
              v142 = *(v7 + 24);
              if ((v142 & 0x200) != 0)
              {
                if (v12 <= 0xF)
                {
                  v19 = v9;
                  v9 = v12;
                  do
                  {
                    if (!v13)
                    {
                      goto LABEL_401;
                    }

                    v143 = *v6++;
                    v13 = (v13 - 1);
                    v10 += v143 << v9;
                    v144 = v9 + 8;
                    v62 = v9 >= 8;
                    v9 += 8;
                  }

                  while (!v62);
                  v12 = v144;
                  v9 = v19;
                }

                if ((*(v7 + 16) & 4) != 0 && v10 != *(v7 + 32))
                {
                  v45 = "header crc mismatch";
                  goto LABEL_394;
                }

                v10 = 0;
                v12 = 0;
              }

              v74 = v12;
              v145 = *(v7 + 48);
              if (v145)
              {
                *(v145 + 68) = (v142 >> 9) & 1;
                *(v145 + 72) = 1;
              }

              v146 = sub_24395A494(0, 0, 0);
              *(v7 + 32) = v146;
              *(v3 + 96) = v146;
              *(v7 + 8) = 16191;
              goto LABEL_290;
            }

            LODWORD(v13) = v13 - v135;
            v17 = v230;
LABEL_410:
            LODWORD(v9) = v219;
            LODWORD(v14) = v222;
            goto LABEL_415;
          }
        }

LABEL_414:
        v17 = v230;
        goto LABEL_415;
      }

LABEL_393:
      v45 = "unknown compression method";
      goto LABEL_394;
    case 2:
      v225 = a2;
      a2 = v14;
      v14 = v9;
      if (v12 > 0x1F)
      {
        goto LABEL_189;
      }

      goto LABEL_185;
    case 3:
      v225 = a2;
      a2 = v14;
      v14 = v9;
      if (v12 > 0xF)
      {
        goto LABEL_199;
      }

      goto LABEL_195;
    case 4:
      v46 = *(v7 + 24);
      if ((v46 & 0x400) == 0)
      {
        v47 = v12;
        goto LABEL_205;
      }

      if (v12 <= 0xF)
      {
        goto LABEL_207;
      }

      goto LABEL_212;
    case 5:
      goto LABEL_219;
    case 6:
      goto LABEL_237;
    case 7:
      goto LABEL_257;
    case 8:
      goto LABEL_277;
    case 9:
      v34 = v9;
      if (v12 > 0x1F)
      {
        goto LABEL_68;
      }

      v9 = v12;
      do
      {
        if (!v13)
        {
          goto LABEL_404;
        }

        v48 = *v6++;
        v13 = (v13 - 1);
        v10 += v48 << v9;
        v62 = v9 >= 0x18;
        v9 += 8;
      }

      while (!v62);
LABEL_68:
      LODWORD(v12) = 0;
      v49 = bswap32(v10);
      *(v7 + 32) = v49;
      *(v3 + 96) = v49;
      *(v7 + 8) = 16190;
      v10 = 0;
      v9 = v34;
LABEL_69:
      if (!*(v7 + 20))
      {
        *(v3 + 24) = v5;
        *(v3 + 32) = v9;
        *v3 = v6;
        *(v3 + 8) = v13;
        *(v7 + 80) = v10;
        result = 2;
        *(v7 + 88) = v12;
        return result;
      }

      v50 = v14;
      v51 = v12;
      v52 = sub_24395A174(0, 0, 0);
      LODWORD(v12) = v51;
      v14 = v50;
      v11 = (v7 + 152);
      *(v7 + 32) = v52;
      *(v3 + 96) = v52;
      *(v7 + 8) = 16191;
LABEL_71:
      if (v224 < 2)
      {
        goto LABEL_414;
      }

LABEL_72:
      if (*(v7 + 12))
      {
        v10 >>= v12 & 7;
        v12 = v12 & 0xFFFFFFF8;
        v53 = 16206;
        goto LABEL_395;
      }

      if (v12 <= 2)
      {
        if (!v13)
        {
          v16 = v230;
LABEL_413:
          v17 = v16;
          goto LABEL_415;
        }

        v54 = *v6++;
        v13 = (v13 - 1);
        v10 += v54 << v12;
        LODWORD(v12) = v12 | 8;
      }

      *(v7 + 12) = v10 & 1;
      v55 = (v10 >> 1) & 3;
      if (v55 > 1)
      {
        if (v55 == 2)
        {
          v56 = 16196;
        }

        else
        {
          *(v3 + 48) = "invalid block type";
          v56 = 16209;
        }
      }

      else
      {
        if (v55)
        {
          *(v7 + 104) = &unk_243991DDE;
          *(v7 + 112) = &unk_2439925DE;
          *(v7 + 120) = 0x500000009;
          *(v7 + 8) = 16199;
          if (a2 == 6)
          {
            v10 >>= 3;
            LODWORD(v12) = v12 - 3;
            goto LABEL_414;
          }

LABEL_169:
          v10 >>= 3;
          v12 = (v12 - 3);
          goto LABEL_396;
        }

        v56 = 16193;
      }

      *(v7 + 8) = v56;
      goto LABEL_169;
    case 10:
      goto LABEL_69;
    case 11:
      goto LABEL_71;
    case 12:
      goto LABEL_72;
    case 13:
      v10 >>= v12 & 7;
      if (v12 > 0x1F)
      {
        v12 = v12 & 0xFFFFFFF8;
      }

      else
      {
        v34 = v9;
        v9 = v12 & 0x18;
        do
        {
          if (!v13)
          {
            goto LABEL_404;
          }

          v35 = *v6++;
          v13 = (v13 - 1);
          v10 += v35 << v9;
          v36 = v9 + 8;
          v62 = v9 >= 0x18;
          v9 += 8;
        }

        while (!v62);
        v12 = v36;
        v9 = v34;
      }

      if ((v10 ^ (v10 >> 16)) != 0xFFFF)
      {
        v45 = "invalid stored block lengths";
        goto LABEL_394;
      }

      v12 = 0;
      *(v7 + 92) = v10;
      *(v7 + 8) = 16194;
      v10 = 0;
      if (a2 == 6)
      {
        goto LABEL_414;
      }

LABEL_101:
      *(v7 + 8) = 16195;
LABEL_102:
      v63 = *(v7 + 92);
      if (!v63)
      {
        goto LABEL_382;
      }

      if (v63 >= v13)
      {
        v63 = v13;
      }

      if (v63 >= v9)
      {
        v64 = v9;
      }

      else
      {
        v64 = v63;
      }

      if (v64)
      {
        v226 = v3;
        v65 = v9;
        v66 = a2;
        v67 = v14;
        v68 = v12;
        memcpy(v5, v6, v64);
        v12 = v68;
        v14 = v67;
        a2 = v66;
        LODWORD(v66) = v65;
        v3 = v226;
        v11 = (v7 + 152);
        v13 = (v13 - v64);
        v6 += v64;
        v9 = (v66 - v64);
        v5 += v64;
        *(v7 + 92) -= v64;
        goto LABEL_396;
      }

      goto LABEL_414;
    case 14:
      goto LABEL_101;
    case 15:
      goto LABEL_102;
    case 16:
      if (v12 > 0xD)
      {
        goto LABEL_86;
      }

      v34 = v9;
      v9 = v12;
      do
      {
        if (!v13)
        {
LABEL_404:
          LODWORD(v12) = v9;
          v17 = v230;
          LODWORD(v9) = v34;
          goto LABEL_415;
        }

        v57 = *v6++;
        v13 = (v13 - 1);
        v10 += v57 << v9;
        v58 = v9 + 8;
        v62 = v9 >= 6;
        v9 += 8;
      }

      while (!v62);
      LODWORD(v12) = v58;
      v9 = v34;
LABEL_86:
      v59 = v10 & 0x1F;
      v60 = (v10 >> 5) & 0x1F;
      *(v7 + 132) = (v10 & 0x1F) + 257;
      *(v7 + 136) = v60 + 1;
      v61 = ((v10 >> 10) & 0xF) + 4;
      *(v7 + 128) = v61;
      v10 >>= 14;
      v12 = (v12 - 14);
      v62 = v59 > 0x1D || v60 >= 0x1E;
      if (v62)
      {
        v45 = "too many length or distance symbols";
        goto LABEL_394;
      }

      v225 = a2;
      a2 = v14;
      v14 = v9;
      v69 = 0;
      *(v7 + 140) = 0;
      *(v7 + 8) = 16197;
LABEL_114:
      LODWORD(v9) = v12;
      while (2)
      {
        if (v9 > 2)
        {
LABEL_118:
          v11[word_243991DB8[v69]] = v10 & 7;
          *(v7 + 140) = v69 + 1;
          v10 >>= 3;
          v9 = (v9 - 3);
          if (v61 != ++v69)
          {
            continue;
          }

          v12 = v9;
          v69 = v61;
LABEL_120:
          if (v69 <= 0x12)
          {
            v71 = &word_243991DB8[v69];
            v72 = v69 + 1;
            do
            {
              v73 = *v71++;
              v11[v73] = 0;
              v214 = v72++ == 19;
            }

            while (!v214);
            *(v7 + 140) = 19;
          }

          v74 = v12;
          *(v7 + 144) = v223;
          *(v7 + 104) = v223;
          *(v7 + 120) = 7;
          v75 = sub_24395EAC4(0, v11, 0x13u, (v7 + 144), (v7 + 120), (v7 + 792));
          v9 = v14;
          if (v75)
          {
            v230 = v75;
            *(v3 + 48) = "invalid code lengths set";
            *(v7 + 8) = 16209;
            v14 = a2;
            a2 = v225;
LABEL_290:
            v11 = (v7 + 152);
            v12 = v74;
            goto LABEL_396;
          }

          v37 = 0;
          v230 = 0;
          *(v7 + 140) = 0;
          *(v7 + 8) = 16198;
          v14 = a2;
          a2 = v225;
          v11 = (v7 + 152);
          v12 = v74;
LABEL_128:
          v76 = *(v7 + 132);
          v77 = *(v7 + 136) + v76;
          if (v37 >= v77)
          {
            goto LABEL_160;
          }

          v78 = *(v7 + 104);
          v79 = ~(-1 << *(v7 + 120));
          while (2)
          {
            v80 = v79 & v10;
            LODWORD(v81) = *(v78 + 4 * v80 + 1);
            if (v12 < v81)
            {
              v82 = v12;
              LODWORD(v83) = v13;
              v84 = v6;
              do
              {
                if (!v83)
                {
                  goto LABEL_402;
                }

                v83 = (v83 - 1);
                v85 = *v84++;
                v10 += v85 << v82;
                v82 += 8;
                v80 = v79 & v10;
                v81 = *(v78 + 4 * v80 + 1);
              }

              while (v82 < v81);
              v6 = v84;
              v13 = v83;
              LODWORD(v12) = v82;
            }

            v86 = *(v78 + 4 * v80 + 2);
            if (v86 <= 0xF)
            {
              v10 >>= v81;
              v12 = (v12 - v81);
              v11[v37++] = v86;
              goto LABEL_159;
            }

            if (v86 == 16)
            {
              v92 = (v81 + 2);
              if (v12 < v92)
              {
                v12 = v12;
                while (v13)
                {
                  v13 = (v13 - 1);
                  v93 = *v6++;
                  v10 += v93 << v12;
                  v12 += 8;
                  if (v12 >= v92)
                  {
                    goto LABEL_149;
                  }
                }

                goto LABEL_414;
              }

LABEL_149:
              v10 >>= v81;
              v12 = (v12 - v81);
              if (v37)
              {
                v90 = v11[v37 - 1];
                v91 = (v10 & 3) + 3;
                v10 >>= 2;
                v12 = (v12 - 2);
                goto LABEL_157;
              }

LABEL_397:
              v45 = "invalid bit length repeat";
              goto LABEL_394;
            }

            if (v86 == 17)
            {
              v87 = (v81 + 3);
              if (v12 < v87)
              {
                v88 = v9;
                v9 = v12;
                do
                {
                  if (!v13)
                  {
                    goto LABEL_405;
                  }

                  v13 = (v13 - 1);
                  v89 = *v6++;
                  v10 += v89 << v9;
                  v9 += 8;
                }

                while (v9 < v87);
                LODWORD(v12) = v9;
                v9 = v88;
              }

              v90 = 0;
              v91 = ((v10 >> v81) & 7) + 3;
              v10 = v10 >> v81 >> 3;
              v12 = (v12 - v81 - 3);
              goto LABEL_157;
            }

            v94 = (v81 + 7);
            if (v12 >= v94)
            {
              goto LABEL_156;
            }

            v88 = v9;
            v9 = v12;
            while (2)
            {
              if (!v13)
              {
LABEL_405:
                LODWORD(v12) = v9;
                v17 = v230;
                LODWORD(v9) = v88;
                goto LABEL_415;
              }

              v13 = (v13 - 1);
              v95 = *v6++;
              v10 += v95 << v9;
              v9 += 8;
              if (v9 < v94)
              {
                continue;
              }

              break;
            }

            LODWORD(v12) = v9;
            v9 = v88;
LABEL_156:
            v90 = 0;
            v91 = ((v10 >> v81) & 0x7F) + 11;
            v10 = v10 >> v81 >> 7;
            v12 = (v12 - v81 - 7);
LABEL_157:
            if (v91 + v37 > v77)
            {
              goto LABEL_397;
            }

            do
            {
              v11[v37++] = v90;
              --v91;
            }

            while (v91);
LABEL_159:
            *(v7 + 140) = v37;
            if (v37 < v77)
            {
              continue;
            }

            break;
          }

LABEL_160:
          if (!*(v7 + 664))
          {
            *(v3 + 48) = "invalid code -- missing end-of-block";
            *(v7 + 8) = 16209;
            goto LABEL_396;
          }

          v227 = v12;
          *(v7 + 144) = v223;
          *(v7 + 104) = v223;
          *(v7 + 120) = 9;
          v96 = v11;
          v97 = sub_24395EAC4(1, v11, v76, (v7 + 144), (v7 + 120), (v7 + 792));
          if (v97)
          {
            v230 = v97;
            *(v3 + 48) = "invalid literal/lengths set";
            *(v7 + 8) = 16209;
            v11 = v96;
            goto LABEL_178;
          }

          *(v7 + 112) = *(v7 + 144);
          *(v7 + 124) = 6;
          v100 = sub_24395EAC4(2, &v96[*(v7 + 132)], *(v7 + 136), (v7 + 144), (v7 + 124), (v7 + 792));
          if (!v100)
          {
            v230 = 0;
            *(v7 + 8) = 16199;
            v11 = (v7 + 152);
            LODWORD(v12) = v227;
            if (a2 == 6)
            {
              goto LABEL_414;
            }

LABEL_314:
            *(v7 + 8) = 16200;
LABEL_315:
            if (v13 >= 6 && v9 >= 0x102)
            {
              *(v3 + 24) = v5;
              *(v3 + 32) = v9;
              *v3 = v6;
              *(v3 + 8) = v13;
              *(v7 + 80) = v10;
              *(v7 + 88) = v12;
              sub_24395EEF0(v3, v14);
              v5 = *(v3 + 24);
              v9 = *(v3 + 32);
              v6 = *v3;
              v13 = *(v3 + 8);
              v10 = *(v7 + 80);
              v12 = *(v7 + 88);
              if (*(v7 + 8) == 16191)
              {
                *(v7 + 7148) = -1;
              }

LABEL_319:
              v11 = (v7 + 152);
              goto LABEL_396;
            }

            *(v7 + 7148) = 0;
            v151 = *(v7 + 104);
            v152 = -1 << *(v7 + 120);
            v153 = (v151 + 4 * (v10 & ~v152));
            LODWORD(v154) = v153[1];
            if (v12 < v154)
            {
              v155 = ~v152;
              LODWORD(v156) = v13;
              v157 = v6;
              v158 = v12;
              do
              {
                if (!v156)
                {
                  goto LABEL_402;
                }

                v156 = (v156 - 1);
                v159 = *v157++;
                v10 += v159 << v158;
                v158 += 8;
                v153 = (v151 + 4 * (v155 & v10));
                v154 = v153[1];
              }

              while (v158 < v154);
              v6 = v157;
              v13 = v156;
              LODWORD(v12) = v158;
            }

            v160 = v154;
            v161 = *(v153 + 1);
            v162 = *v153;
            if ((v162 - 1) > 0xE)
            {
              v160 = 0;
            }

            else
            {
              v163 = -1 << (v154 + v162);
              v164 = (v151 + 4 * (((v10 & ~v163) >> v154) + v161));
              v165 = v164[1];
              if (v154 + v165 > v12)
              {
                v166 = ~v163;
                LODWORD(v167) = v13;
                v168 = v6;
                v169 = v12;
                do
                {
                  if (!v167)
                  {
                    goto LABEL_402;
                  }

                  v167 = (v167 - 1);
                  v170 = *v168++;
                  v10 += v170 << v169;
                  v169 += 8;
                  v164 = (v151 + 4 * (((v10 & v166) >> v154) + v161));
                  v165 = v164[1];
                }

                while (v169 < (v154 + v165));
                v6 = v168;
                v13 = v167;
                LODWORD(v12) = v169;
              }

              v161 = *(v164 + 1);
              v162 = *v164;
              v10 >>= v154;
              LODWORD(v12) = v12 - v154;
              LODWORD(v154) = v165;
            }

            v10 >>= v154;
            v12 = (v12 - v154);
            *(v7 + 7148) = v160 + v154;
            *(v7 + 92) = v161;
            if (!v162)
            {
              v53 = 16205;
              goto LABEL_395;
            }

            if ((v162 & 0x20) != 0)
            {
              *(v7 + 7148) = -1;
LABEL_382:
              v53 = 16191;
            }

            else
            {
              if ((v162 & 0x40) != 0)
              {
                v45 = "invalid literal/length code";
                goto LABEL_394;
              }

              v38 = v162 & 0xF;
              *(v7 + 100) = v38;
              *(v7 + 8) = 16201;
              if ((v162 & 0xF) != 0)
              {
LABEL_45:
                if (v12 < v38)
                {
                  v39 = v12;
                  LODWORD(v40) = v13;
                  v41 = v6;
                  while (v40)
                  {
                    v40 = (v40 - 1);
                    v42 = *v41++;
                    v10 += v42 << v39;
                    v39 += 8;
                    if (v39 >= v38)
                    {
                      goto LABEL_164;
                    }
                  }

                  goto LABEL_402;
                }

                v41 = v6;
                v40 = v13;
                v39 = v12;
LABEL_164:
                v98 = *(v7 + 92) + (v10 & ~(-1 << v38));
                *(v7 + 92) = v98;
                v10 >>= v38;
                LODWORD(v12) = v39 - v38;
                *(v7 + 7148) += v38;
                v6 = v41;
                v13 = v40;
              }

              else
              {
LABEL_337:
                v98 = *(v7 + 92);
              }

              *(v7 + 7152) = v98;
              *(v7 + 8) = 16202;
LABEL_339:
              v171 = *(v7 + 112);
              v172 = -1 << *(v7 + 124);
              v173 = (v171 + 4 * (v10 & ~v172));
              LODWORD(v174) = v173[1];
              if (v12 < v174)
              {
                v175 = ~v172;
                LODWORD(v176) = v13;
                v177 = v6;
                v178 = v12;
                do
                {
                  if (!v176)
                  {
                    goto LABEL_402;
                  }

                  v176 = (v176 - 1);
                  v179 = *v177++;
                  v10 += v179 << v178;
                  v178 += 8;
                  v173 = (v171 + 4 * (v175 & v10));
                  v174 = v173[1];
                }

                while (v178 < v174);
                v6 = v177;
                v13 = v176;
                LODWORD(v12) = v178;
              }

              v180 = *(v173 + 1);
              LODWORD(v181) = *v173;
              if (v181 >= 0x10)
              {
                v189 = *(v7 + 7148);
              }

              else
              {
                v182 = -1 << (v174 + v181);
                v181 = v171 + 4 * (((v10 & ~v182) >> v174) + v180);
                v183 = *(v181 + 1);
                if (v174 + v183 > v12)
                {
                  v184 = ~v182;
                  LODWORD(v185) = v13;
                  v186 = v6;
                  v187 = v12;
                  do
                  {
                    if (!v185)
                    {
                      goto LABEL_402;
                    }

                    v185 = (v185 - 1);
                    v188 = *v186++;
                    v10 += v188 << v187;
                    v187 += 8;
                    v181 = v171 + 4 * (((v10 & v184) >> v174) + v180);
                    v183 = *(v181 + 1);
                  }

                  while (v187 < (v174 + v183));
                  v6 = v186;
                  v13 = v185;
                  LODWORD(v12) = v187;
                }

                v180 = *(v181 + 2);
                LOBYTE(v181) = *v181;
                v10 >>= v174;
                LODWORD(v12) = v12 - v174;
                v189 = *(v7 + 7148) + v174;
                LODWORD(v174) = v183;
              }

              v10 >>= v174;
              v12 = (v12 - v174);
              *(v7 + 7148) = v189 + v174;
              if ((v181 & 0x40) != 0)
              {
                v45 = "invalid distance code";
LABEL_394:
                *(v3 + 48) = v45;
                v53 = 16209;
                goto LABEL_395;
              }

              v24 = v181 & 0xF;
              *(v7 + 96) = v180;
              *(v7 + 100) = v24;
              *(v7 + 8) = 16203;
              if ((v181 & 0xF) != 0)
              {
LABEL_354:
                if (v12 < v24)
                {
                  v190 = v12;
                  LODWORD(v191) = v13;
                  v192 = v6;
                  while (v191)
                  {
                    v191 = (v191 - 1);
                    v193 = *v192++;
                    v10 += v193 << v190;
                    v190 += 8;
                    if (v190 >= v24)
                    {
                      goto LABEL_361;
                    }
                  }

LABEL_402:
                  LODWORD(v12) = v12 + 8 * v13;
                  v17 = v230;
                  v6 += v13;
                  LODWORD(v13) = 0;
                  goto LABEL_415;
                }

                v192 = v6;
                v191 = v13;
                v190 = v12;
LABEL_361:
                *(v7 + 96) += v10 & ~(-1 << v24);
                v10 >>= v24;
                v12 = v190 - v24;
                *(v7 + 7148) += v24;
                v6 = v192;
                v13 = v191;
              }

LABEL_362:
              *(v7 + 8) = 16204;
LABEL_363:
              if (!v9)
              {
                goto LABEL_414;
              }

              v194 = *(v7 + 96);
              if (v194 <= v14 - v9)
              {
                v196 = &v5[-v194];
                v197 = *(v7 + 92);
                v198 = v197;
              }

              else
              {
                v195 = v194 - (v14 - v9);
                if (v195 > *(v7 + 64) && *(v7 + 7144))
                {
                  v45 = "invalid distance too far back";
                  goto LABEL_394;
                }

                v199 = *(v7 + 68);
                v198 = v195 - v199;
                if (v195 <= v199)
                {
                  v200 = v199 - v195;
                  v198 = v195;
                }

                else
                {
                  v200 = *(v7 + 60) - v198;
                }

                v196 = (*(v7 + 72) + v200);
                v197 = *(v7 + 92);
                if (v198 >= v197)
                {
                  v198 = *(v7 + 92);
                }
              }

              if (v198 >= v9)
              {
                v198 = v9;
              }

              *(v7 + 92) = v197 - v198;
              v201 = v198;
              do
              {
                v202 = *v196++;
                *v5++ = v202;
                --v201;
              }

              while (v201);
              v9 = v9 - v198;
              if (*(v7 + 92))
              {
                goto LABEL_396;
              }

LABEL_379:
              v53 = 16200;
            }

LABEL_395:
            *(v7 + 8) = v53;
            goto LABEL_396;
          }

          v230 = v100;
          *(v3 + 48) = "invalid distances set";
          *(v7 + 8) = 16209;
          v11 = (v7 + 152);
LABEL_178:
          v12 = v227;
LABEL_396:
          v8 = *(v7 + 8);
          goto LABEL_8;
        }

        break;
      }

      if (v13)
      {
        v70 = *v6++;
        v13 = (v13 - 1);
        v10 += v70 << v9;
        LODWORD(v9) = v9 | 8;
        goto LABEL_118;
      }

LABEL_403:
      LODWORD(v12) = v9;
      v17 = v230;
      LODWORD(v9) = v14;
      LODWORD(v14) = a2;
      LODWORD(a2) = v225;
LABEL_415:
      *(v3 + 24) = v5;
      *(v3 + 32) = v9;
      *v3 = v6;
      *(v3 + 8) = v13;
      *(v7 + 80) = v10;
      *(v7 + 88) = v12;
      if (!*(v7 + 60))
      {
        if (v14 == v9)
        {
          goto LABEL_425;
        }

        v208 = *(v7 + 8);
        if (v208 > 0x3F50 || a2 == 4 && v208 > 0x3F4D)
        {
          goto LABEL_425;
        }
      }

      if (!sub_24395E940(v3, v5, v14 - v9))
      {
        LODWORD(v13) = *(v3 + 8);
        LODWORD(v9) = *(v3 + 32);
LABEL_425:
        v209 = (v14 - v9);
        *(v3 + 16) += v229 - v13;
        *(v3 + 40) += v209;
        *(v7 + 40) += v209;
        if ((*(v7 + 16) & 4) != 0 && v14 != v9)
        {
          v210 = *(v7 + 32);
          v211 = (*(v3 + 24) - v209);
          if (*(v7 + 24))
          {
            v212 = sub_24395A494(v210, v211, v209);
          }

          else
          {
            v212 = sub_24395A174(v210, v211, v209);
          }

          *(v7 + 32) = v212;
          *(v3 + 96) = v212;
        }

        v213 = *(v7 + 8);
        v214 = v213 == 16194 || v213 == 16199;
        if (v214)
        {
          v215 = 256;
        }

        else
        {
          v215 = 0;
        }

        *(v3 + 88) = *(v7 + 88) + ((*(v7 + 12) != 0) << 6) + ((v213 == 16191) << 7) + v215;
        if ((v14 == v9 && v229 == v13 || a2 == 4) && v17 == 0)
        {
          return 4294967291;
        }

        else
        {
          return v17;
        }
      }

      *(v7 + 8) = 16210;
      return 4294967292;
    case 17:
      v225 = a2;
      a2 = v14;
      v14 = v9;
      v61 = *(v7 + 128);
      v69 = *(v7 + 140);
      if (v69 >= v61)
      {
        goto LABEL_120;
      }

      goto LABEL_114;
    case 18:
      v37 = *(v7 + 140);
      goto LABEL_128;
    case 19:
      goto LABEL_314;
    case 20:
      goto LABEL_315;
    case 21:
      v38 = *(v7 + 100);
      if (v38)
      {
        goto LABEL_45;
      }

      goto LABEL_337;
    case 22:
      goto LABEL_339;
    case 23:
      v24 = *(v7 + 100);
      if (!v24)
      {
        goto LABEL_362;
      }

      goto LABEL_354;
    case 24:
      goto LABEL_363;
    case 25:
      if (!v9)
      {
        goto LABEL_414;
      }

      *v5++ = *(v7 + 92);
      v9 = (v9 - 1);
      goto LABEL_379;
    case 26:
      v25 = *(v7 + 16);
      if (!v25)
      {
        goto LABEL_300;
      }

      if (v12 > 0x1F)
      {
        goto LABEL_30;
      }

      v19 = v9;
      v9 = v12;
      while (v13)
      {
        v26 = *v6++;
        v13 = (v13 - 1);
        v10 += v26 << v9;
        v27 = v9 + 8;
        v62 = v9 >= 0x18;
        v9 += 8;
        if (v62)
        {
          v12 = v27;
          v9 = v19;
LABEL_30:
          v28 = (v14 - v9);
          *(v3 + 40) += v28;
          *(v7 + 40) += v28;
          v29 = v25 & 4;
          if ((v25 & 4) != 0 && v14 != v9)
          {
            v30 = v12;
            v31 = *(v7 + 32);
            v32 = &v5[-v28];
            if (*(v7 + 24))
            {
              v33 = sub_24395A494(v31, v32, v28);
            }

            else
            {
              v33 = sub_24395A174(v31, v32, v28);
            }

            *(v7 + 32) = v33;
            *(v3 + 96) = v33;
            v25 = *(v7 + 16);
            v29 = v25 & 4;
            v11 = (v7 + 152);
            v12 = v30;
          }

          if (v29)
          {
            v147 = bswap32(v10);
            v148 = *(v7 + 24) ? v10 : v147;
            if (v148 != *(v7 + 32))
            {
              *(v3 + 48) = "incorrect data check";
              *(v7 + 8) = 16209;
              v14 = v9;
              goto LABEL_396;
            }
          }

          v10 = 0;
          v12 = 0;
          v14 = v9;
LABEL_300:
          *(v7 + 8) = 16207;
LABEL_301:
          if (v25 && *(v7 + 24))
          {
            if (v12 <= 0x1F)
            {
              v19 = v9;
              v9 = v12;
              do
              {
                if (!v13)
                {
                  goto LABEL_401;
                }

                v149 = *v6++;
                v13 = (v13 - 1);
                v10 += v149 << v9;
                v150 = v9 + 8;
                v62 = v9 >= 0x18;
                v9 += 8;
              }

              while (!v62);
              v12 = v150;
              v9 = v19;
            }

            if ((v25 & 4) != 0 && v10 != *(v7 + 40))
            {
              v45 = "incorrect length check";
              goto LABEL_394;
            }

            v10 = 0;
            LODWORD(v12) = 0;
          }

          *(v7 + 8) = 16208;
          v17 = 1;
          goto LABEL_415;
        }
      }

LABEL_401:
      LODWORD(v12) = v9;
      v17 = v230;
      LODWORD(v9) = v19;
      goto LABEL_415;
    case 27:
      v25 = *(v7 + 16);
      goto LABEL_301;
    case 28:
      goto LABEL_415;
    case 29:
      goto LABEL_413;
    case 30:
      return 4294967292;
    default:
      return 4294967294;
  }
}

uint64_t sub_24395E940(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 56);
  v7 = *(v6 + 72);
  if (v7 || (v8 = 1, v7 = (*(a1 + 64))(*(a1 + 80), (1 << *(v6 + 56)), 1), (*(v6 + 72) = v7) != 0))
  {
    v9 = *(v6 + 60);
    if (!v9)
    {
      v9 = 1 << *(v6 + 56);
      *(v6 + 64) = 0;
      *(v6 + 60) = v9;
    }

    if (v9 <= a3)
    {
      memcpy(v7, (a2 - v9), v9);
      v8 = 0;
      v14 = *(v6 + 60);
      *(v6 + 68) = 0;
      goto LABEL_12;
    }

    v10 = *(v6 + 68);
    v11 = v9 - v10;
    if (v9 - v10 >= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = v11;
    }

    memcpy(&v7[v10], (a2 - a3), v12);
    if (v11 < a3)
    {
      v13 = a3 - v12;
      memcpy(*(v6 + 72), (a2 - v13), v13);
      v8 = 0;
      v14 = *(v6 + 60);
      *(v6 + 68) = v13;
LABEL_12:
      *(v6 + 64) = v14;
      return v8;
    }

    v8 = 0;
    v16 = *(v6 + 64);
    v17 = *(v6 + 68) + v12;
    v18 = *(v6 + 60);
    if (v17 == v18)
    {
      v17 = 0;
    }

    *(v6 + 68) = v17;
    if (v16 < v18)
    {
      v8 = 0;
      v14 = v16 + v12;
      goto LABEL_12;
    }
  }

  return v8;
}

uint64_t sub_24395EA68(uint64_t a1)
{
  if (sub_24395CEC4(a1))
  {
    return 4294967294;
  }

  v3 = *(a1 + 56);
  if (*(v3 + 72))
  {
    (*(a1 + 72))(*(a1 + 80), *(v3 + 72));
    v3 = *(a1 + 56);
  }

  (*(a1 + 72))(*(a1 + 80), v3);
  result = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_24395EAC4(int a1, unsigned __int16 *a2, unsigned int a3, _WORD **a4, unsigned int *a5, _WORD *a6)
{
  v60 = *MEMORY[0x277D85DE8];
  memset(v59, 0, sizeof(v59));
  if (a3)
  {
    v6 = a3;
    v7 = a2;
    do
    {
      v8 = *v7++;
      ++*(v59 + v8);
      --v6;
    }

    while (v6);
  }

  v9 = *a5;
  v10 = 15;
  while (!*(v59 + v10))
  {
    if (!--v10)
    {
      v11 = *a4;
      *a4 += 2;
      *v11 = 320;
      v11[1] = 0;
      v12 = *a4;
      *a4 += 2;
      *v12 = 320;
      v12[1] = 0;
      v13 = 1;
LABEL_8:
      v14 = 0;
      *a5 = v13;
      goto LABEL_38;
    }
  }

  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v10 < 2)
  {
    LODWORD(v15) = 1;
  }

  else
  {
    v15 = 1;
    while (!*(v59 + v15))
    {
      if (v10 == ++v15)
      {
        LODWORD(v15) = v10;
        break;
      }
    }
  }

  if (v9 <= v15)
  {
    v13 = v15;
  }

  else
  {
    v13 = v9;
  }

  v16 = 1;
  for (i = 2; i != 32; i += 2)
  {
    v16 = 2 * v16 - *(v59 + i);
    if (v16 < 0)
    {
      v14 = 0xFFFFFFFFLL;
      goto LABEL_38;
    }
  }

  if (!v16 || (v14 = 0xFFFFFFFFLL, a1) && v10 == 1)
  {
    v18 = 0;
    v19 = 0;
    v57 = 0;
    do
    {
      v19 += *(v59 + v18 + 2);
      *&v58[v18] = v19;
      v18 += 2;
    }

    while (v18 != 28);
    if (a3)
    {
      for (j = 0; j != a3; ++j)
      {
        v21 = a2[j];
        if (a2[j])
        {
          v22 = v56[v21];
          v56[v21] = v22 + 1;
          a6[v22] = j;
        }
      }
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v14 = 1;
        if (v13 > 9)
        {
          goto LABEL_38;
        }

        v55 = 0;
        v23 = 257;
        v24 = &unk_24399269C;
        v25 = 1;
        v26 = &unk_24399265E;
      }

      else
      {
        v23 = 0;
        v24 = &unk_24399271A;
        v26 = &unk_2439926DA;
        v55 = a1 == 2;
        v25 = 0;
        if (a1 == 2 && v13 > 9)
        {
          v14 = 1;
          goto LABEL_38;
        }
      }
    }

    else
    {
      v55 = 0;
      v25 = 0;
      v23 = 20;
      v26 = a6;
      v24 = a6;
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 1 << v13;
    v33 = (1 << v13) - 1;
    v34 = *a4;
    v35 = v13;
    v36 = -1;
    while (2)
    {
      v37 = 1 << v35;
      do
      {
        v38 = a6[v29];
        if (v38 + 1 >= v23)
        {
          if (v38 >= v23)
          {
            v39 = v24[2 * (v38 - v23)];
            LOWORD(v38) = v26[v38 - v23];
          }

          else
          {
            LOWORD(v38) = 0;
            v39 = 96;
          }
        }

        else
        {
          v39 = 0;
        }

        v40 = v15 - v30;
        v41 = -1 << (v15 - v30);
        v42 = v37;
        do
        {
          v43 = &v34[2 * (v31 >> v30) + 2 * v41 + 2 * v42];
          *v43 = v39;
          *(v43 + 1) = v40;
          v43[1] = v38;
          v42 += v41;
        }

        while (v42);
        v44 = 1 << (v15 - 1);
        do
        {
          v45 = v44;
          v44 >>= 1;
        }

        while ((v45 & v31) != 0);
        if (v45)
        {
          v31 = ((v45 - 1) & v31) + v45;
        }

        else
        {
          v31 = 0;
        }

        ++v29;
        v46 = *(v59 + v15) - 1;
        *(v59 + v15) = v46;
        if (!v46)
        {
          if (v15 == v10)
          {
            if (v31)
            {
              v54 = &v34[2 * v31];
              *v54 = 64;
              *(v54 + 1) = v40;
              v54[1] = 0;
            }

            *a4 += 2 * v32;
            goto LABEL_8;
          }

          LODWORD(v15) = a2[a6[v29]];
        }
      }

      while (v15 <= v13 || (v31 & v33) == v36);
      if (!v30)
      {
        v30 = v13;
      }

      v35 = v15 - v30;
      v47 = 1 << (v15 - v30);
      if (v15 < v10)
      {
        v35 = v10 - v30;
        v48 = v15;
        while (1)
        {
          v49 = v47 - *(v59 + v48);
          if (v49 < 1)
          {
            break;
          }

          v47 = 2 * v49;
          if (++v48 >= v10)
          {
            goto LABEL_67;
          }
        }

        v35 = v48 - v30;
LABEL_67:
        v47 = 1 << v35;
      }

      v32 += v47;
      if (v32 > 0x354)
      {
        v50 = v25;
      }

      else
      {
        v50 = 0;
      }

      v51 = v32 > 0x250 && v55;
      v14 = 1;
      if ((v50 & 1) == 0 && !v51)
      {
        v34 += 2 * v37;
        v52 = *a4;
        v53 = &(*a4)[2 * (v31 & v33)];
        *v53 = v35;
        *(v53 + 1) = v13;
        *(v53 + 2) = (v34 - v52) >> 2;
        v36 = v31 & v33;
        continue;
      }

      break;
    }
  }

LABEL_38:
  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

unsigned __int8 **sub_24395EEF0(unsigned __int8 **result, int a2)
{
  v2 = result[7];
  v3 = *result;
  v4 = &(*result)[*(result + 2) - 5];
  v5 = result[3];
  v6 = *(result + 8);
  v7 = v5 - (a2 - v6);
  v8 = &v5[v6 - 257];
  v9 = *(v2 + 15);
  v10 = *(v2 + 16);
  v11 = *(v2 + 17);
  v12 = *(v2 + 9);
  v13 = *(v2 + 10);
  v14 = *(v2 + 22);
  v15 = *(v2 + 13);
  v16 = *(v2 + 14);
  v17 = ~(-1 << *(v2 + 30));
  v18 = ~(-1 << *(v2 + 31));
  v19 = "invalid distance too far back";
LABEL_2:
  if (v14 <= 0xE)
  {
    v20 = (*v3 << v14) + v13;
    v21 = v3[1];
    v3 += 2;
    v13 = v20 + (v21 << (v14 + 8));
    v14 |= 0x10u;
  }

  for (i = v15 + 4 * (v13 & v17); ; i = v15 + 4 * *(i + 2) + 4 * (v13 & ~(-1 << v24)))
  {
    v23 = *(i + 1);
    v13 >>= v23;
    v14 -= v23;
    v24 = *i;
    if (!*i)
    {
      *v5++ = *(i + 2);
LABEL_10:
      if (v3 >= v4 || v5 >= v8)
      {
        goto LABEL_67;
      }

      goto LABEL_2;
    }

    if ((*i & 0x10) != 0)
    {
      v25 = *(i + 2);
      v26 = v24 & 0xF;
      if (v26)
      {
        if (v14 < v26)
        {
          v27 = *v3++;
          v13 += v27 << v14;
          v14 += 8;
        }

        v25 += v13 & ~(-1 << v26);
        v13 >>= v26;
        v14 -= v26;
      }

      if (v14 <= 0xE)
      {
        v28 = (*v3 << v14) + v13;
        v29 = v3[1];
        v3 += 2;
        v13 = v28 + (v29 << (v14 + 8));
        v14 |= 0x10u;
      }

      for (j = v16 + 4 * (v13 & v18); ; j = v16 + 4 * *(j + 2) + 4 * (v13 & ~(-1 << v32)))
      {
        v31 = *(j + 1);
        v13 >>= v31;
        v14 -= v31;
        v32 = *j;
        if ((*j & 0x10) != 0)
        {
          break;
        }

        if ((*j & 0x40) != 0)
        {
          v19 = "invalid distance code";
          goto LABEL_65;
        }
      }

      v33 = v32 & 0xF;
      if (v14 >= v33)
      {
        v34 = v14;
      }

      else
      {
        v13 += *v3 << v14;
        v34 = v14 + 8;
        if (v14 + 8 >= v33)
        {
          ++v3;
        }

        else
        {
          v35 = v3[1];
          v3 += 2;
          v13 += v35 << v34;
          v34 = v14 + 16;
        }
      }

      v36 = (v13 & ~(-1 << v33)) + *(j + 2);
      v13 >>= v33;
      v14 = v34 - v33;
      v37 = v36 - (v5 - v7);
      if (v36 <= v5 - v7)
      {
        v45 = 0;
        v46 = -v36;
        v47 = &v5[-v36 + 1];
        v48 = v25;
        do
        {
          v49 = &v5[v45];
          *v49 = *(v47 + v45 - 1);
          v49[1] = *(v47 + v45);
          v49[2] = *(v47 + v45 + 1);
          v48 -= 3;
          v45 += 3;
        }

        while (v48 > 2);
        v50 = &v5[v45];
        if (v25 != v45)
        {
          *v50 = v50[v46];
          if (v25 - 2 != v45)
          {
            v5 = v50 + 1;
            goto LABEL_10;
          }

          v51 = &v5[v45];
          v52 = v51[v46 + 1];
          v5 = v51 + 2;
LABEL_58:
          v50[1] = v52;
          goto LABEL_10;
        }

        goto LABEL_60;
      }

      if (v37 > v10 && *(v2 + 1786))
      {
LABEL_65:
        result[6] = v19;
        v57 = 16209;
        goto LABEL_66;
      }

      if (v11)
      {
        if (v11 < v37)
        {
          v38 = v11 + v9 - v37;
          v39 = v37 - v11;
          v40 = v25 - v39;
          if (v25 <= v39)
          {
            v44 = &v12[v38];
          }

          else
          {
            do
            {
              *v5++ = v12[v38++];
              --v39;
            }

            while (v39);
            v25 = v40 - v11;
            if (v40 <= v11)
            {
              v25 = v40;
              v44 = v12;
            }

            else
            {
              v41 = v11;
              v42 = v12;
              do
              {
                v43 = *v42++;
                *v5++ = v43;
                --v41;
              }

              while (v41);
              v44 = &v5[-v36];
            }
          }

LABEL_53:
          if (v25 < 3)
          {
            v50 = v5;
            v56 = v44;
            if (v25)
            {
              goto LABEL_56;
            }
          }

          else
          {
            do
            {
              *v5 = *v44;
              v5[1] = v44[1];
              v56 = v44 + 3;
              v50 = v5 + 3;
              v5[2] = v44[2];
              v25 -= 3;
              v44 += 3;
              v5 += 3;
            }

            while (v25 > 2);
            if (v25)
            {
LABEL_56:
              *v50 = *v56;
              v5 = v50 + 1;
              if (v25 != 2)
              {
                goto LABEL_10;
              }

              v52 = v56[1];
              v5 = v50 + 2;
              goto LABEL_58;
            }
          }

LABEL_60:
          v5 = v50;
          goto LABEL_10;
        }

        v44 = &v12[v11 - v37];
        v53 = v25 - v37;
        if (v25 <= v37)
        {
          goto LABEL_53;
        }

        do
        {
          v55 = *v44++;
          *v5++ = v55;
          --v37;
        }

        while (v37);
      }

      else
      {
        v44 = &v12[v9 - v37];
        v53 = v25 - v37;
        if (v25 <= v37)
        {
          goto LABEL_53;
        }

        do
        {
          v54 = *v44++;
          *v5++ = v54;
          --v37;
        }

        while (v37);
      }

      v44 = &v5[-v36];
      v25 = v53;
      goto LABEL_53;
    }

    if ((*i & 0x40) != 0)
    {
      break;
    }
  }

  if ((*i & 0x20) == 0)
  {
    v19 = "invalid literal/length code";
    goto LABEL_65;
  }

  v57 = 16191;
LABEL_66:
  *(v2 + 2) = v57;
LABEL_67:
  v58 = &v3[-(v14 >> 3)];
  *result = v58;
  result[3] = v5;
  *(result + 2) = v4 - v58 + 5;
  *(result + 8) = v8 - v5 + 257;
  *(v2 + 10) = v13 & ~(-1 << (v14 & 7));
  *(v2 + 22) = v14 & 7;
  return result;
}

double sub_24395F35C(uint64_t a1)
{
  *(a1 + 2904) = a1 + 212;
  *(a1 + 2920) = &off_278DDAD08;
  *(a1 + 2928) = a1 + 2504;
  *(a1 + 2944) = &off_278DDAD28;
  *(a1 + 2952) = a1 + 2748;
  *(a1 + 2968) = &unk_278DDAD48;
  *(a1 + 5936) = 0;
  *(a1 + 5940) = 0;
  return sub_24395F3A4(a1);
}

double sub_24395F3A4(uint64_t a1)
{
  v1 = xmmword_24398E4C0;
  v2 = xmmword_24398E4D0;
  v3 = xmmword_24398E4E0;
  v4 = xmmword_24398C940;
  v5 = (a1 + 240);
  v6 = 288;
  v7 = vdupq_n_s64(0x11EuLL);
  v8 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v4)), *v1.i8), *v1.i8).u8[0])
    {
      *(v5 - 14) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v4)), *&v1), *&v1).i8[1])
    {
      *(v5 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v1, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v3))), *&v1).i8[2])
    {
      *(v5 - 10) = 0;
      *(v5 - 8) = 0;
    }

    if (vuzp1_s8(*&v1, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v2)), *&v1)).i32[1])
    {
      *(v5 - 6) = 0;
    }

    if (vuzp1_s8(*&v1, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v2)), *&v1)).i8[5])
    {
      *(v5 - 4) = 0;
    }

    if (vuzp1_s8(*&v1, vuzp1_s16(*&v1, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v1)))).i8[6])
    {
      *(v5 - 2) = 0;
      *v5 = 0;
    }

    v2 = vaddq_s64(v2, v8);
    v3 = vaddq_s64(v3, v8);
    v4 = vaddq_s64(v4, v8);
    v5 += 16;
    v1 = vaddq_s64(v1, v8);
    v6 -= 8;
  }

  while (v6);
  v9 = xmmword_24398E4C0;
  v10 = xmmword_24398E4D0;
  v11 = xmmword_24398E4E0;
  v12 = xmmword_24398C940;
  v13 = (a1 + 2532);
  v14 = 32;
  v15 = vdupq_n_s64(0x1EuLL);
  v16 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v15, v12)), *v9.i8), *v9.i8).u8[0])
    {
      *(v13 - 14) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v12)), *&v9), *&v9).i8[1])
    {
      *(v13 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v11))), *&v9).i8[2])
    {
      *(v13 - 10) = 0;
      *(v13 - 8) = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v10)), *&v9)).i32[1])
    {
      *(v13 - 6) = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v10)), *&v9)).i8[5])
    {
      *(v13 - 4) = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v9)))).i8[6])
    {
      *(v13 - 2) = 0;
      *v13 = 0;
    }

    v10 = vaddq_s64(v10, v16);
    v11 = vaddq_s64(v11, v16);
    v12 = vaddq_s64(v12, v16);
    v13 += 16;
    v9 = vaddq_s64(v9, v16);
    v14 -= 8;
  }

  while (v14);
  v17 = xmmword_24398E4E0;
  v18 = xmmword_24398C940;
  v19 = (a1 + 2760);
  v20 = 20;
  v21 = vdupq_n_s64(0x13uLL);
  v22 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v21, v18)), *v17.i8).u8[0])
    {
      *(v19 - 6) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v18)), *&v17).i8[2])
    {
      *(v19 - 4) = 0;
    }

    if (vuzp1_s16(*&v17, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v17))).i32[1])
    {
      *(v19 - 2) = 0;
      *v19 = 0;
    }

    v17 = vaddq_s64(v17, v22);
    v18 = vaddq_s64(v18, v22);
    v19 += 8;
    v20 -= 4;
  }

  while (v20);
  *(a1 + 1236) = 1;
  *(a1 + 5900) = 0;
  result = 0.0;
  *(a1 + 5912) = 0u;
  *(a1 + 5928) = 0;
  return result;
}

uint64_t sub_24395F6F4(uint64_t a1, const void *a2, size_t a3, int a4)
{
  v7 = *(a1 + 5940);
  if (v7 < 14)
  {
    *(a1 + 5936) |= a4 << v7;
    v14 = v7 + 3;
  }

  else
  {
    v8 = *(a1 + 5936) | (a4 << v7);
    *(a1 + 5936) = v8;
    v9 = *(a1 + 16);
    v10 = *(a1 + 40);
    *(a1 + 40) = v10 + 1;
    *(v9 + v10) = v8;
    LOBYTE(v8) = *(a1 + 5937);
    v11 = *(a1 + 16);
    v12 = *(a1 + 40);
    *(a1 + 40) = v12 + 1;
    *(v11 + v12) = v8;
    v13 = *(a1 + 5940);
    *(a1 + 5936) = a4 >> (16 - v13);
    v14 = v13 - 13;
  }

  *(a1 + 5940) = v14;
  result = sub_24395F838(a1);
  v16 = *(a1 + 16);
  v17 = *(a1 + 40);
  *(a1 + 40) = v17 + 1;
  *(v16 + v17) = a3;
  v18 = *(a1 + 16);
  v19 = *(a1 + 40);
  *(a1 + 40) = v19 + 1;
  *(v18 + v19) = BYTE1(a3);
  v20 = *(a1 + 16);
  v21 = *(a1 + 40);
  *(a1 + 40) = v21 + 1;
  *(v20 + v21) = ~a3;
  v22 = *(a1 + 16);
  v23 = *(a1 + 40);
  *(a1 + 40) = v23 + 1;
  *(v22 + v23) = ~a3 >> 8;
  if (a3)
  {
    result = memcpy((*(a1 + 16) + *(a1 + 40)), a2, a3);
  }

  *(a1 + 40) += a3;
  return result;
}

uint64_t sub_24395F838(uint64_t result)
{
  v1 = *(result + 5940);
  if (v1 >= 9)
  {
    v2 = (result + 16);
    v3 = *(result + 16);
    v4 = (result + 40);
    v5 = *(result + 40);
    v6 = *(result + 5936);
    *(result + 40) = v5 + 1;
    *(v3 + v5) = v6;
    v7 = *(result + 5937);
LABEL_5:
    v8 = *v2;
    v9 = (*v4)++;
    *(v8 + v9) = v7;
    goto LABEL_6;
  }

  if (v1 >= 1)
  {
    v7 = *(result + 5936);
    v2 = (result + 16);
    v4 = (result + 40);
    goto LABEL_5;
  }

LABEL_6:
  *(result + 5936) = 0;
  *(result + 5940) = 0;
  return result;
}

uint64_t sub_24395F8B0(uint64_t result)
{
  v1 = *(result + 5940);
  if (v1 == 16)
  {
    v2 = 0;
    v3 = *(result + 5936);
    v4 = *(result + 40);
    *(result + 40) = v4 + 1;
    *(*(result + 16) + v4) = v3;
    v5 = *(result + 5937);
    v6 = *(result + 16);
    v7 = *(result + 40);
    *(result + 40) = v7 + 1;
    *(v6 + v7) = v5;
    *(result + 5936) = 0;
  }

  else
  {
    if (v1 < 8)
    {
      return result;
    }

    v8 = *(result + 5936);
    v9 = *(result + 16);
    v10 = *(result + 40);
    *(result + 40) = v10 + 1;
    *(v9 + v10) = v8;
    *(result + 5936) = *(result + 5937);
    v2 = *(result + 5940) - 8;
  }

  *(result + 5940) = v2;
  return result;
}

uint64_t sub_24395F940(uint64_t result)
{
  v1 = *(result + 5940);
  v2 = *(result + 5936);
  v3 = v2 | (2 << v1);
  *(result + 5936) = v2 | (2 << v1);
  if (v1 < 14)
  {
    v9 = v1 + 3;
  }

  else
  {
    v4 = *(result + 16);
    v5 = *(result + 40);
    *(result + 40) = v5 + 1;
    *(v4 + v5) = v3;
    v6 = *(result + 5937);
    v7 = *(result + 16);
    v8 = *(result + 40);
    *(result + 40) = v8 + 1;
    *(v7 + v8) = v6;
    LODWORD(v7) = *(result + 5940);
    v3 = 2u >> (16 - v7);
    *(result + 5936) = v3;
    v9 = v7 - 13;
  }

  *(result + 5940) = v9;
  if (v9 < 10)
  {
    v15 = v9 + 7;
  }

  else
  {
    v10 = *(result + 16);
    v11 = *(result + 40);
    *(result + 40) = v11 + 1;
    *(v10 + v11) = v3;
    v12 = *(result + 5937);
    v13 = *(result + 16);
    v14 = *(result + 40);
    *(result + 40) = v14 + 1;
    *(v13 + v14) = v12;
    *(result + 5936) = 0;
    v15 = *(result + 5940) - 9;
  }

  *(result + 5940) = v15;
  return sub_24395F8B0(result);
}

void sub_24395FA10(uint64_t a1, const void *a2, size_t a3, int a4)
{
  if (*(a1 + 196) < 1)
  {
    v11 = 0;
    v12 = a3 + 5;
    goto LABEL_24;
  }

  if (*(*a1 + 88) == 2)
  {
    v8 = 0;
    v9 = 4093624447;
    do
    {
      if ((v9 & 1) != 0 && *(a1 + 212 + v8))
      {
        v10 = 0;
        goto LABEL_13;
      }

      v9 >>= 1;
      v8 += 4;
    }

    while (v8 != 128);
    if (!*(a1 + 248) && !*(a1 + 252) && !*(a1 + 264))
    {
      v72 = 0;
      v73 = a1 + 340;
      while (1)
      {
        v10 = *(v73 + v72);
        if (*(v73 + v72))
        {
          break;
        }

        v72 += 4;
        if (v72 == 896)
        {
          goto LABEL_13;
        }
      }
    }

    v10 = 1;
LABEL_13:
    *(*a1 + 88) = v10;
  }

  sub_24395FF60(a1, a1 + 2904);
  sub_24395FF60(a1, a1 + 2928);
  sub_243960894(a1, a1 + 212, *(a1 + 2912));
  sub_243960894(a1, a1 + 2504, *(a1 + 2936));
  sub_24395FF60(a1, a1 + 2952);
  v11 = 0x12u;
  while (!*(a1 + 2748 + 4 * byte_243993098[v11] + 2))
  {
    if (v11-- <= 3)
    {
      v11 = 2;
      break;
    }
  }

  v14 = *(a1 + 5912) + 3 * v11;
  *(a1 + 5912) = v14 + 17;
  v15 = v14 + 27;
  v12 = (*(a1 + 5920) + 10) >> 3;
  if (v12 <= v15 >> 3)
  {
LABEL_24:
    v17 = v12;
    if (!a2)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v16 = v15 >> 3;
  if (*(a1 + 200) == 4)
  {
    v17 = (*(a1 + 5920) + 10) >> 3;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (a3 + 4 <= v17)
  {
    sub_24395F6F4(a1, a2, a3, a4);
    goto LABEL_52;
  }

LABEL_27:
  v18 = *(a1 + 5940);
  if (v12 == v17)
  {
    v19 = a4 + 2;
    if (v18 < 14)
    {
      *(a1 + 5936) |= v19 << v18;
      v26 = v18 + 3;
    }

    else
    {
      v20 = *(a1 + 5936) | (v19 << v18);
      *(a1 + 5936) = v20;
      v21 = *(a1 + 16);
      v22 = *(a1 + 40);
      *(a1 + 40) = v22 + 1;
      *(v21 + v22) = v20;
      LOBYTE(v20) = *(a1 + 5937);
      v23 = *(a1 + 16);
      v24 = *(a1 + 40);
      *(a1 + 40) = v24 + 1;
      *(v23 + v24) = v20;
      v25 = *(a1 + 5940);
      *(a1 + 5936) = (a4 + 2) >> (16 - v25);
      v26 = v25 - 13;
    }

    *(a1 + 5940) = v26;
    v36 = &unk_243992A68;
    v37 = &unk_243992EE8;
  }

  else
  {
    v27 = a4 + 4;
    if (v18 < 14)
    {
      v34 = *(a1 + 5936) | (v27 << v18);
      v35 = v18 + 3;
    }

    else
    {
      v28 = *(a1 + 5936) | (v27 << v18);
      *(a1 + 5936) = v28;
      v29 = *(a1 + 16);
      v30 = *(a1 + 40);
      *(a1 + 40) = v30 + 1;
      *(v29 + v30) = v28;
      LOBYTE(v28) = *(a1 + 5937);
      v31 = *(a1 + 16);
      v32 = *(a1 + 40);
      *(a1 + 40) = v32 + 1;
      *(v31 + v32) = v28;
      v33 = *(a1 + 5940);
      v34 = (a4 + 4) >> (16 - v33);
      v35 = v33 - 13;
    }

    *(a1 + 5940) = v35;
    v38 = *(a1 + 2912);
    v39 = *(a1 + 2936);
    v40 = v38 + 65280;
    if (v35 < 12)
    {
      v46 = v34 | (v40 << v35);
      v47 = v35 + 5;
    }

    else
    {
      v41 = v34 | (v40 << v35);
      *(a1 + 5936) = v41;
      v42 = *(a1 + 16);
      v43 = *(a1 + 40);
      *(a1 + 40) = v43 + 1;
      *(v42 + v43) = v41;
      LOBYTE(v41) = *(a1 + 5937);
      v44 = *(a1 + 16);
      v45 = *(a1 + 40);
      *(a1 + 40) = v45 + 1;
      *(v44 + v45) = v41;
      LODWORD(v44) = *(a1 + 5940);
      v46 = (v38 - 256) >> (16 - v44);
      v47 = v44 - 11;
    }

    *(a1 + 5940) = v47;
    if (v47 < 12)
    {
      v53 = v46 | (v39 << v47);
      v54 = v47 + 5;
    }

    else
    {
      v48 = v46 | (v39 << v47);
      *(a1 + 5936) = v48;
      v49 = *(a1 + 16);
      v50 = *(a1 + 40);
      *(a1 + 40) = v50 + 1;
      *(v49 + v50) = v48;
      LOBYTE(v48) = *(a1 + 5937);
      v51 = *(a1 + 16);
      v52 = *(a1 + 40);
      *(a1 + 40) = v52 + 1;
      *(v51 + v52) = v48;
      LODWORD(v51) = *(a1 + 5940);
      v53 = v39 >> (16 - v51);
      v54 = v51 - 11;
    }

    *(a1 + 5940) = v54;
    v55 = v11 + 65533;
    if (v54 < 13)
    {
      v61 = v53 | (v55 << v54);
      *(a1 + 5936) = v61;
      v62 = v54 + 4;
    }

    else
    {
      v56 = v53 | (v55 << v54);
      *(a1 + 5936) = v56;
      v57 = *(a1 + 16);
      v58 = *(a1 + 40);
      *(a1 + 40) = v58 + 1;
      *(v57 + v58) = v56;
      LOBYTE(v56) = *(a1 + 5937);
      v59 = *(a1 + 16);
      v60 = *(a1 + 40);
      *(a1 + 40) = v60 + 1;
      *(v59 + v60) = v56;
      LODWORD(v59) = *(a1 + 5940);
      v61 = (v11 - 3) >> (16 - v59);
      *(a1 + 5936) = v61;
      v62 = v59 - 12;
    }

    *(a1 + 5940) = v62;
    if ((v11 & 0x80000000) == 0)
    {
      v63 = v11 + 1;
      v64 = byte_243993098;
      do
      {
        v65 = *v64++;
        v66 = *(a1 + 2748 + 4 * v65 + 2);
        v61 |= v66 << v62;
        *(a1 + 5936) = v61;
        if (v62 < 14)
        {
          v62 += 3;
        }

        else
        {
          v67 = *(a1 + 16);
          v68 = *(a1 + 40);
          *(a1 + 40) = v68 + 1;
          *(v67 + v68) = v61;
          v69 = *(a1 + 5937);
          v70 = *(a1 + 16);
          v71 = *(a1 + 40);
          *(a1 + 40) = v71 + 1;
          *(v70 + v71) = v69;
          LODWORD(v70) = *(a1 + 5940);
          v61 = v66 >> (16 - v70);
          *(a1 + 5936) = v61;
          v62 = v70 - 13;
        }

        *(a1 + 5940) = v62;
        --v63;
      }

      while (v63);
    }

    sub_243960998(a1, a1 + 212, v38);
    sub_243960998(a1, a1 + 2504, v39);
    v36 = (a1 + 212);
    v37 = (a1 + 2504);
  }

  sub_2439603F4(a1, v36, v37);
LABEL_52:
  sub_24395F3A4(a1);
  if (a4)
  {

    sub_24395F838(a1);
  }
}

uint64_t sub_24395FF60(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *v5;
  v7 = *(v5 + 5);
  *(a1 + 5300) = 0x23D00000000;
  if (v7 < 1)
  {
    v12 = 0;
    v10 = -1;
  }

  else
  {
    v8 = 0;
    v9 = (v4 + 2);
    v10 = -1;
    do
    {
      if (*(v9 - 1))
      {
        v11 = *(a1 + 5300) + 1;
        *(a1 + 5300) = v11;
        *(a1 + 3008 + 4 * v11) = v8;
        *(a1 + 5308 + v8) = 0;
        v10 = v8;
      }

      else
      {
        *v9 = 0;
      }

      ++v8;
      v9 += 2;
    }

    while (v7 != v8);
    v12 = *(a1 + 5300);
    if (v12 > 1)
    {
      goto LABEL_20;
    }
  }

  v13 = v10;
  do
  {
    if (v13 < 2)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 + 1;
    *(a1 + 5300) = v15;
    *(a1 + 3008 + 4 * v15) = v14;
    *(v4 + 4 * v14) = 1;
    if (v13 >= 2)
    {
      v10 = v13;
    }

    else
    {
      v10 = v13 + 1;
    }

    *(a1 + 5308 + v14) = 0;
    --*(a1 + 5912);
    if (v6)
    {
      *(a1 + 5920) -= *(v6 + 4 * v14 + 2);
    }

    v12 = *(a1 + 5300);
    v13 = v10;
  }

  while (v12 < 2);
LABEL_20:
  *(a2 + 8) = v10;
  v16 = v12 >> 1;
  do
  {
    sub_2439607B0(a1, v4, v16);
    v17 = v16-- != 0;
  }

  while (v16 != 0 && v17);
  v18 = *(a1 + 5300);
  v19 = a1 + 3008;
  v20 = a1 + 5308;
  v21 = v7;
  v22 = 4 * v7;
  do
  {
    v23 = *(a1 + 3012);
    *(a1 + 5300) = v18 - 1;
    *(a1 + 3012) = *(v19 + 4 * v18);
    sub_2439607B0(a1, v4, 1);
    v24 = *(a1 + 3012);
    v25 = *(a1 + 5304) - 1;
    *(a1 + 5304) = v25;
    *(v19 + 4 * v25) = v23;
    v26 = *(a1 + 5304) - 1;
    *(a1 + 5304) = v26;
    *(v19 + 4 * v26) = v24;
    v27 = (v4 + 4 * v23);
    v28 = (v4 + 4 * v24);
    *(v4 + v22) = *v28 + *v27;
    v29 = *(v20 + v24);
    if (*(v20 + v23) > v29)
    {
      LOBYTE(v29) = *(v20 + v23);
    }

    *(v20 + v21) = v29 + 1;
    v28[1] = v21;
    v27[1] = v21;
    *(a1 + 3012) = v21;
    result = sub_2439607B0(a1, v4, 1);
    v18 = *(a1 + 5300);
    v22 += 4;
    ++v21;
  }

  while (v18 > 1);
  v31 = *(a1 + 3012);
  v32 = *(a1 + 5304) - 1;
  *(a1 + 5304) = v32;
  *(v19 + 4 * v32) = v31;
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v36 = *v35;
  v37 = v35[1];
  v38 = *(v35 + 4);
  v39 = *(v35 + 6);
  v40 = a1 + 2976;
  *(a1 + 2992) = 0u;
  *(a1 + 2976) = 0u;
  *(v33 + 4 * *(v19 + 4 * *(a1 + 5304)) + 2) = 0;
  v41 = *(a1 + 5304);
  if (v41 <= 571)
  {
    v42 = 0;
    v43 = v41 + 2;
    v44 = (a1 + 4 * v41 + 3012);
    do
    {
      v46 = *v44++;
      v45 = v46;
      v47 = (v33 + 4 * v46);
      v48 = *(v33 + 4 * v47[1] + 2);
      v49 = v39 <= v48;
      if (v39 > v48)
      {
        v50 = v48 + 1;
      }

      else
      {
        v50 = v39;
      }

      if (v49)
      {
        ++v42;
      }

      v47[1] = v50;
      if (v45 <= v34)
      {
        ++*(v40 + 2 * v50);
        v51 = v45 >= v38 ? *(v37 + 4 * (v45 - v38)) : 0;
        v52 = *v47;
        *(a1 + 5912) += v52 * (v51 + v50);
        if (v36)
        {
          *(a1 + 5920) += v52 * (v51 + *(v36 + 4 * v45 + 2));
        }
      }

      result = v43 + 1;
    }

    while (v43++ != 573);
    if (v42)
    {
      do
      {
        v54 = (a1 + 2 * v39 + 2976);
        v55 = (v39 << 32) + 0x100000000;
        do
        {
          v57 = *--v54;
          v56 = v57;
          v55 -= 0x100000000;
        }

        while (!v57);
        result = (v56 - 1);
        *v54 = result;
        *(v40 + (v55 >> 31)) += 2;
        --*(v40 + 2 * v39);
        v58 = __OFSUB__(v42, 2);
        v42 -= 2;
      }

      while (!((v42 < 0) ^ v58 | (v42 == 0)));
      if (v39)
      {
        v59 = 573;
        do
        {
          v60 = *(v40 + 2 * v39);
          if (*(v40 + 2 * v39))
          {
            do
            {
              v61 = (a1 + 3004 + 4 * v59);
              do
              {
                v63 = *v61--;
                v62 = v63;
                --v59;
              }

              while (v63 > v34);
              v64 = (v33 + 4 * v62);
              v65 = v39 - v64[1];
              if (v65)
              {
                result = *(a1 + 5912);
                *(a1 + 5912) = result + v65 * *v64;
                v64[1] = v39;
              }

              --v60;
            }

            while (v60);
          }

          --v39;
        }

        while (v39);
      }
    }
  }

  v66 = 0;
  v67 = 0;
  do
  {
    v67 = 2 * (v67 + *(v40 + v66 * 2));
    v76[++v66] = v67;
  }

  while (v66 != 15);
  if ((v10 & 0x80000000) == 0)
  {
    v68 = 0;
    do
    {
      v69 = (v4 + 4 * v68);
      v70 = v69[1];
      if (v69[1])
      {
        v71 = 0;
        v72 = v76[v69[1]];
        v76[v69[1]] = v72 + 1;
        v73 = v70 + 1;
        do
        {
          v74 = v71 | v72 & 1;
          v72 >>= 1;
          v71 = 2 * v74;
          --v73;
        }

        while (v73 > 1);
        *v69 = v74;
      }

      ++v68;
    }

    while (v68 != v10 + 1);
  }

  v75 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2439603F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 5900))
  {
    v3 = 0;
    while (1)
    {
      v4 = *(result + 5888);
      v5 = *(v4 + v3) | (*(v4 + v3 + 1) << 8);
      v6 = *(v4 + v3 + 2);
      if (v5)
      {
        break;
      }

      v20 = (a2 + 4 * v6);
      v21 = v20[1];
      v22 = *(result + 5940);
      v23 = *v20;
      v24 = *(result + 5936);
      v25 = v24 | (v23 << v22);
      *(result + 5936) = v24 | (v23 << v22);
      if (v22 > 16 - v21)
      {
        v26 = *(result + 16);
        v27 = *(result + 40);
        *(result + 40) = v27 + 1;
        *(v26 + v27) = v25;
        LOBYTE(v26) = *(result + 5937);
        v28 = *(result + 16);
        v29 = *(result + 40);
        *(result + 40) = v29 + 1;
        *(v28 + v29) = v26;
        LODWORD(v26) = *(result + 5940);
        *(result + 5936) = v23 >> (16 - v26);
        v30 = v21 + v26;
LABEL_24:
        v40 = v30 - 16;
        goto LABEL_26;
      }

      v40 = v22 + v21;
LABEL_26:
      *(result + 5940) = v40;
LABEL_27:
      v3 += 3;
      if (v3 >= *(result + 5900))
      {
        goto LABEL_30;
      }
    }

    v7 = byte_243992968[v6];
    v8 = a2 + 4 * v7;
    v9 = *(v8 + 1030);
    v10 = *(result + 5940);
    v11 = *(v8 + 1028);
    v12 = *(result + 5936);
    v13 = v12 | (v11 << v10);
    *(result + 5936) = v12 | (v11 << v10);
    if (v10 <= 16 - v9)
    {
      v19 = v10 + v9;
    }

    else
    {
      v14 = *(result + 16);
      v15 = *(result + 40);
      *(result + 40) = v15 + 1;
      *(v14 + v15) = v13;
      v16 = *(result + 5937);
      v17 = *(result + 16);
      v18 = *(result + 40);
      *(result + 40) = v18 + 1;
      *(v17 + v18) = v16;
      LODWORD(v17) = *(result + 5940);
      v13 = v11 >> (16 - v17);
      *(result + 5936) = v13;
      v19 = v9 + v17 - 16;
    }

    *(result + 5940) = v19;
    if ((v7 - 28) >= 0xFFFFFFFFFFFFFFECLL)
    {
      v31 = dword_243992F60[v7];
      v32 = v6 - dword_2439930AC[v7];
      v33 = v32 << v19;
      if (v19 <= 16 - v31)
      {
        v13 |= v33;
        *(result + 5936) = v13;
        v19 += v31;
      }

      else
      {
        v34 = v32;
        v35 = v13 | v33;
        *(result + 5936) = v35;
        v36 = *(result + 16);
        v37 = *(result + 40);
        *(result + 40) = v37 + 1;
        *(v36 + v37) = v35;
        LOBYTE(v35) = *(result + 5937);
        v38 = *(result + 16);
        v39 = *(result + 40);
        *(result + 40) = v39 + 1;
        *(v38 + v39) = v35;
        LODWORD(v38) = *(result + 5940);
        v13 = v34 >> (16 - v38);
        *(result + 5936) = v13;
        v19 = v31 + v38 - 16;
      }

      *(result + 5940) = v19;
    }

    v41 = v5 - 1;
    if (v5 >= 0x101)
    {
      v42 = ((v5 - 1) >> 7) + 256;
    }

    else
    {
      v42 = v5 - 1;
    }

    v43 = byte_243992768[v42];
    v44 = (a3 + 4 * v43);
    v45 = v44[1];
    v46 = *v44;
    v47 = v13 | (v46 << v19);
    *(result + 5936) = v47;
    if (v19 <= 16 - v45)
    {
      v40 = v19 + v45;
    }

    else
    {
      v48 = *(result + 16);
      v49 = *(result + 40);
      *(result + 40) = v49 + 1;
      *(v48 + v49) = v47;
      v50 = *(result + 5937);
      v51 = *(result + 16);
      v52 = *(result + 40);
      *(result + 40) = v52 + 1;
      *(v51 + v52) = v50;
      LODWORD(v51) = *(result + 5940);
      v47 = v46 >> (16 - v51);
      *(result + 5936) = v47;
      v40 = v45 + v51 - 16;
    }

    *(result + 5940) = v40;
    if (v43 < 4)
    {
      goto LABEL_27;
    }

    v53 = dword_243992FD4[v43];
    v54 = v41 - dword_243993120[v43];
    v55 = v54 << v40;
    if (v40 <= 16 - v53)
    {
      *(result + 5936) = v47 | v55;
      v40 += v53;
      goto LABEL_26;
    }

    v56 = v54;
    v57 = v47 | v55;
    *(result + 5936) = v57;
    v58 = *(result + 16);
    v59 = *(result + 40);
    *(result + 40) = v59 + 1;
    *(v58 + v59) = v57;
    LOBYTE(v57) = *(result + 5937);
    v60 = *(result + 16);
    v61 = *(result + 40);
    *(result + 40) = v61 + 1;
    *(v60 + v61) = v57;
    v62 = *(result + 5940);
    *(result + 5936) = v56 >> (16 - v62);
    v30 = v53 + v62;
    goto LABEL_24;
  }

  v40 = *(result + 5940);
LABEL_30:
  v63 = *(a2 + 1026);
  v64 = *(a2 + 1024);
  v65 = *(result + 5936);
  v66 = v65 | (v64 << v40);
  *(result + 5936) = v65 | (v64 << v40);
  if (v40 <= 16 - v63)
  {
    v73 = v40 + v63;
  }

  else
  {
    v67 = *(result + 16);
    v68 = *(result + 40);
    *(result + 40) = v68 + 1;
    *(v67 + v68) = v66;
    v69 = *(result + 5937);
    v70 = *(result + 16);
    v71 = *(result + 40);
    *(result + 40) = v71 + 1;
    *(v70 + v71) = v69;
    v72 = *(result + 5940);
    *(result + 5936) = v64 >> (16 - v72);
    v73 = v63 + v72 - 16;
  }

  *(result + 5940) = v73;
  return result;
}

uint64_t sub_2439607B0(uint64_t result, uint64_t a2, int a3)
{
  v3 = result + 3008;
  v4 = *(result + 3008 + 4 * a3);
  v5 = 2 * a3;
  v6 = *(result + 5300);
  if (2 * a3 <= v6)
  {
    v8 = result + 5308;
    while (1)
    {
      if (v5 >= v6)
      {
        v7 = v5;
        v9 = v5;
      }

      else
      {
        v9 = v5;
        v10 = *(v3 + 4 * (v5 | 1));
        v11 = *(a2 + 4 * v10);
        v12 = *(v3 + 4 * v5);
        v13 = *(a2 + 4 * v12);
        if (v11 >= v13)
        {
          if (v11 != v13)
          {
            v7 = v5;
            goto LABEL_9;
          }

          v17 = *(v8 + v10);
          v7 = v5;
          if (v17 > *(v8 + v12))
          {
            goto LABEL_9;
          }
        }

        v9 = v5 | 1;
        v7 = v5 | 1;
      }

LABEL_9:
      v14 = *(a2 + 4 * v4);
      v15 = *(v3 + 4 * v9);
      v16 = *(a2 + 4 * v15);
      if (v14 < v16 || v14 == v16 && *(v8 + v4) <= *(v8 + v15))
      {
        break;
      }

      *(v3 + 4 * a3) = v15;
      v5 = 2 * v7;
      v6 = *(result + 5300);
      a3 = v7;
      if (2 * v7 > v6)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = a3;
LABEL_3:
  *(v3 + 4 * v7) = v4;
  return result;
}

_WORD *sub_243960894(_WORD *result, uint64_t a2, int a3)
{
  v3 = *(a2 + 2);
  *(a2 + 4 * a3 + 6) = -1;
  if ((a3 & 0x80000000) == 0)
  {
    v4 = 0;
    if (v3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }

    if (v3)
    {
      v6 = 7;
    }

    else
    {
      v6 = 138;
    }

    v7 = result + 1374;
    v8 = (a3 + 1);
    v9 = (a2 + 6);
    v10 = 0xFFFFFFFFLL;
    do
    {
      v12 = *v9;
      v9 += 2;
      v11 = v12;
      v13 = v4 + 1;
      if (v4 + 1 < v6 && v3 == v11)
      {
        v3 = v10;
      }

      else
      {
        if (v13 >= v5)
        {
          if (v3)
          {
            if (v3 != v10)
            {
              ++v7[2 * v3];
            }

            ++result[1406];
          }

          else if (v4 > 9)
          {
            ++result[1410];
          }

          else
          {
            ++result[1408];
          }
        }

        else
        {
          v7[2 * v3] += v13;
        }

        if (v3 == v11)
        {
          v15 = 6;
        }

        else
        {
          v15 = 7;
        }

        if (v3 == v11)
        {
          v16 = 3;
        }

        else
        {
          v16 = 4;
        }

        v13 = 0;
        if (v11)
        {
          v6 = v15;
        }

        else
        {
          v6 = 138;
        }

        if (v11)
        {
          v5 = v16;
        }

        else
        {
          v5 = 3;
        }
      }

      v10 = v3;
      v4 = v13;
      v3 = v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_243960998(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 2);
    if (*(a2 + 2))
    {
      v6 = 7;
    }

    else
    {
      v6 = 138;
    }

    if (*(a2 + 2))
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    v8 = result + 2748;
    v9 = -1;
    do
    {
      ++v3;
      v10 = *(a2 + 4 * v3 + 2);
      v11 = v4 + 1;
      if (v4 + 1 >= v6 || v5 != v10)
      {
        if (v11 >= v7)
        {
          v22 = *(result + 5940);
          if (v5)
          {
            if (v5 != v9)
            {
              v23 = (v8 + 4 * v5);
              v24 = v23[1];
              v25 = *v23;
              v26 = *(result + 5936);
              v27 = v26 | (v25 << v22);
              *(result + 5936) = v26 | (v25 << v22);
              if (v22 <= 16 - v24)
              {
                v22 += v24;
              }

              else
              {
                v28 = *(result + 16);
                v29 = *(result + 40);
                *(result + 40) = v29 + 1;
                *(v28 + v29) = v27;
                LOBYTE(v28) = *(result + 5937);
                v30 = *(result + 16);
                v31 = *(result + 40);
                *(result + 40) = v31 + 1;
                *(v30 + v31) = v28;
                LODWORD(v28) = *(result + 5940);
                *(result + 5936) = v25 >> (16 - v28);
                v22 = v24 + v28 - 16;
              }

              *(result + 5940) = v22;
              v11 = v4;
            }

            v51 = *(result + 2814);
            v52 = *(result + 2812);
            v53 = *(result + 5936) | (v52 << v22);
            if (v22 <= 16 - v51)
            {
              v59 = v22 + v51;
            }

            else
            {
              *(result + 5936) = v53;
              v54 = *(result + 16);
              v55 = *(result + 40);
              *(result + 40) = v55 + 1;
              *(v54 + v55) = v53;
              v56 = *(result + 5937);
              v57 = *(result + 16);
              v58 = *(result + 40);
              *(result + 40) = v58 + 1;
              *(v57 + v58) = v56;
              LODWORD(v57) = *(result + 5940);
              v53 = v52 >> (16 - v57);
              v59 = v51 + v57 - 16;
            }

            *(result + 5940) = v59;
            v60 = v11 + 65533;
            v61 = v53 | (v60 << v59);
            *(result + 5936) = v61;
            if (v59 < 15)
            {
              v69 = v59 + 2;
            }

            else
            {
              v62 = *(result + 16);
              v63 = *(result + 40);
              *(result + 40) = v63 + 1;
              *(v62 + v63) = v61;
              v64 = *(result + 5937);
              v65 = *(result + 16);
              v66 = *(result + 40);
              *(result + 40) = v66 + 1;
              *(v65 + v66) = v64;
              v67 = v60;
              v68 = *(result + 5940);
              *(result + 5936) = v67 >> (16 - v68);
              v69 = v68 - 14;
            }
          }

          else
          {
            v32 = *(result + 5936);
            if (v4 > 9)
            {
              v42 = *(result + 2822);
              v43 = *(result + 2820);
              v44 = v32 | (v43 << v22);
              if (v22 <= 16 - v42)
              {
                v50 = v22 + v42;
              }

              else
              {
                *(result + 5936) = v44;
                v45 = *(result + 16);
                v46 = *(result + 40);
                *(result + 40) = v46 + 1;
                *(v45 + v46) = v44;
                v47 = *(result + 5937);
                v48 = *(result + 16);
                v49 = *(result + 40);
                *(result + 40) = v49 + 1;
                *(v48 + v49) = v47;
                LODWORD(v48) = *(result + 5940);
                v44 = v43 >> (16 - v48);
                v50 = v42 + v48 - 16;
              }

              *(result + 5940) = v50;
              v78 = v4 + 65526;
              v79 = v78 << v50;
              if (v50 < 10)
              {
                *(result + 5936) = v44 | v79;
                v69 = v50 + 7;
              }

              else
              {
                v80 = v44 | v79;
                *(result + 5936) = v80;
                v81 = *(result + 16);
                v82 = *(result + 40);
                *(result + 40) = v82 + 1;
                *(v81 + v82) = v80;
                LOBYTE(v80) = *(result + 5937);
                v83 = *(result + 16);
                v84 = *(result + 40);
                *(result + 40) = v84 + 1;
                *(v83 + v84) = v80;
                v85 = *(result + 5940);
                *(result + 5936) = v78 >> (16 - v85);
                v69 = v85 - 9;
              }
            }

            else
            {
              v33 = *(result + 2818);
              v34 = *(result + 2816);
              v35 = v32 | (v34 << v22);
              if (v22 <= 16 - v33)
              {
                v41 = v22 + v33;
              }

              else
              {
                *(result + 5936) = v35;
                v36 = *(result + 16);
                v37 = *(result + 40);
                *(result + 40) = v37 + 1;
                *(v36 + v37) = v35;
                v38 = *(result + 5937);
                v39 = *(result + 16);
                v40 = *(result + 40);
                *(result + 40) = v40 + 1;
                *(v39 + v40) = v38;
                LODWORD(v39) = *(result + 5940);
                v35 = v34 >> (16 - v39);
                v41 = v33 + v39 - 16;
              }

              *(result + 5940) = v41;
              v70 = v4 + 65534;
              v71 = v70 << v41;
              if (v41 < 14)
              {
                *(result + 5936) = v35 | v71;
                v69 = v41 + 3;
              }

              else
              {
                v72 = v35 | v71;
                *(result + 5936) = v72;
                v73 = *(result + 16);
                v74 = *(result + 40);
                *(result + 40) = v74 + 1;
                *(v73 + v74) = v72;
                LOBYTE(v72) = *(result + 5937);
                v75 = *(result + 16);
                v76 = *(result + 40);
                *(result + 40) = v76 + 1;
                *(v75 + v76) = v72;
                v77 = *(result + 5940);
                *(result + 5936) = v70 >> (16 - v77);
                v69 = v77 - 13;
              }
            }
          }

          *(result + 5940) = v69;
        }

        else
        {
          v12 = (v8 + 4 * v5);
          v13 = *(result + 5940);
          do
          {
            v14 = v12[1];
            v15 = *v12;
            v16 = *(result + 5936);
            v17 = v16 | (v15 << v13);
            *(result + 5936) = v16 | (v15 << v13);
            if (v13 <= 16 - v14)
            {
              v13 += v14;
            }

            else
            {
              v18 = *(result + 16);
              v19 = *(result + 40);
              *(result + 40) = v19 + 1;
              *(v18 + v19) = v17;
              LOBYTE(v18) = *(result + 5937);
              v20 = *(result + 16);
              v21 = *(result + 40);
              *(result + 40) = v21 + 1;
              *(v20 + v21) = v18;
              LODWORD(v18) = *(result + 5940);
              *(result + 5936) = v15 >> (16 - v18);
              v13 = v14 + v18 - 16;
            }

            *(result + 5940) = v13;
            --v11;
          }

          while (v11);
        }

        if (v5 == v10)
        {
          v86 = 3;
        }

        else
        {
          v86 = 4;
        }

        if (v5 == v10)
        {
          v87 = 6;
        }

        else
        {
          v87 = 7;
        }

        if (v10)
        {
          v7 = v86;
        }

        else
        {
          v7 = 3;
        }

        if (v10)
        {
          v6 = v87;
        }

        else
        {
          v6 = 138;
        }

        v11 = 0;
        v9 = v5;
      }

      v5 = v10;
      v4 = v11;
    }

    while (v3 != a3 + 1);
  }

  return result;
}

uint64_t sub_243960E4C(uint64_t a1, void *a2)
{
  v3 = a1 + 8;
  result = *(a1 + 8);
  *a2 = *(v3 + 8);
  return result;
}

uint64_t sub_243960E58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16) - a2;
  *(result + 8) += a2;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_243960E6C(_BYTE *a1, uint64_t a2, void *a3)
{
  if (a2 >= 1)
  {
    v3 = *a1 & 0x7F;
    if ((*a1 & 0x80) == 0)
    {
LABEL_3:
      *a3 = v3;
      return 1;
    }

    if (a2 != 1)
    {
      v5 = a1[1];
      v3 = *a1 & 0x7F | ((v5 & 0x7F) << 7);
      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_3;
      }

      if (a2 >= 3)
      {
        v6 = a1[2];
        v3 = v3 & 0xFFE03FFF | ((v6 & 0x7F) << 14);
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_3;
        }

        if (a2 != 3)
        {
          v7 = a1[3];
          v3 = v3 & 0xF01FFFFF | ((v7 & 0x7F) << 21);
          if ((v7 & 0x80000000) == 0)
          {
            goto LABEL_3;
          }

          if (a2 >= 5)
          {
            v8 = a1[4];
            if (v8 <= 0xF)
            {
              v3 |= v8 << 28;
              goto LABEL_3;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_243960EF0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v2 == v3)
  {
    v4 = *a1;
    v5 = *(a1 + 6);
    (*(**a1 + 32))();
    v16 = 0;
    v6 = (*(**a1 + 24))(*a1, &v16);
    v7 = v16;
    *(a1 + 6) = v16;
    *(a1 + 28) = v7 == 0;
    if (!v7)
    {
      return 0;
    }

    v2 = v6;
    v3 = (v6 + v7);
    a1[2] = v3;
  }

  v8 = word_2439931E0[*v2] >> 11;
  v9 = v8 + 1;
  v10 = v3 - v2;
  if (v3 - v2 < (v8 + 1))
  {
    v11 = a1 + 29;
    memmove(a1 + 29, v2, v10);
    (*(**a1 + 32))(*a1, *(a1 + 6));
    *(a1 + 6) = 0;
    while (1)
    {
      v16 = 0;
      v12 = (*(**a1 + 24))(*a1, &v16);
      if (!v16)
      {
        return 0;
      }

      if (v9 - v10 >= v16)
      {
        v13 = v16;
      }

      else
      {
        v13 = v9 - v10;
      }

      memcpy(&v11[v10], v12, v13);
      v10 += v13;
      (*(**a1 + 32))(*a1, v13);
      if (v10 >= v9)
      {
        v14 = &v11[v9];
        goto LABEL_14;
      }
    }
  }

  if (v10 > 4)
  {
    a1[1] = v2;
  }

  else
  {
    v11 = a1 + 29;
    memmove(a1 + 29, v2, v10 & 7);
    (*(**a1 + 32))(*a1, *(a1 + 6));
    *(a1 + 6) = 0;
    v14 = a1 + (v10 & 7) + 29;
LABEL_14:
    a1[1] = v11;
    a1[2] = v14;
  }

  return 1;
}

uint64_t sub_243961114(void *a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = -7;
  while (1)
  {
    v9 = 0;
    v5 = (*(**a1 + 24))(*a1, &v9);
    if (!v9)
    {
      return 0;
    }

    v6 = *v5;
    (*(**a1 + 32))(*a1, 1);
    v7 = (v6 & 0x7F) << (v4 + 7);
    if (v7 >> (v4 + 7) != (v6 & 0x7F))
    {
      return 0;
    }

    *a2 |= v7;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v4 += 7;
    if (v4 > 0x18)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_243961204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = &unk_2856A2A38;
  v5[1] = a1;
  v5[2] = a2;
  v3 = sub_24396127C(v5, a3);
  nullsub_8(v5);
  return v3;
}

void sub_243961268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nullsub_8(va);
  _Unwind_Resume(a1);
}

BOOL sub_24396127C(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v7 = a2;
  v8 = a2;
  memset(&v10[1], 0, 21);
  v10[0] = a1;
  v9 = 0;
  v4 = (sub_243961114(v10, &v9) & 1) != 0 && ((*(*a1 + 16))(a1), v8 = a2 + v9, sub_2439613CC(v10, &v6), BYTE4(v10[3]) == 1) && v7 == v8;
  (*(*v10[0] + 32))(v10[0], LODWORD(v10[3]));
  return v4;
}

void sub_243961364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_243961378(va);
  _Unwind_Resume(a1);
}

void *sub_2439613CC(void *result, uint64_t a2)
{
  v3 = result;
  v30 = *MEMORY[0x277D85DE8];
  v28 = xmmword_2439931D0;
  v29 = -1;
  v4 = result[1];
  if ((result[2] - v4) > 4)
  {
LABEL_4:
    while (1)
    {
      v7 = *v4;
      v6 = v4 + 1;
      v5 = v7;
      if ((v7 & 3) != 0)
      {
        break;
      }

      v15 = (v5 >> 2) + 1;
      v16 = v3[2];
      v17 = v16 - v6;
      v18 = *(a2 + 8);
      v19 = *(a2 + 16) - v18;
      v20 = v5 <= 0x3F && v17 >= 0x15;
      if (v20 && v19 >= 0x10)
      {
        *v18 = *v6;
        *(a2 + 8) = v18 + v15;
        v4 = v6 + v15;
      }

      else
      {
        if (v5 >= 0xED)
        {
          v15 = ((*(&v28 + (v5 >> 2) - 59) & *v6) + 1);
          v6 = (v6 + (v5 >> 2) - 59);
          v17 = v16 - v6;
        }

        if (v17 < v15)
        {
          while (1)
          {
            v22 = *(a2 + 8);
            if (*(a2 + 16) - v22 < v17)
            {
              goto LABEL_44;
            }

            memcpy(*(a2 + 8), v6, v17);
            *(a2 + 8) = v22 + v17;
            (*(**v3 + 32))(*v3, *(v3 + 6));
            v27 = 0;
            result = (*(**v3 + 24))(*v3, &v27);
            v23 = v27;
            *(v3 + 6) = v27;
            if (!v23)
            {
              goto LABEL_44;
            }

            v6 = result;
            v15 -= v17;
            v3[2] = result + v23;
            v17 = v23;
            if (v23 >= v15)
            {
              v18 = *(a2 + 8);
              v19 = *(a2 + 16) - v18;
              break;
            }
          }
        }

        if (v19 < v15)
        {
          goto LABEL_44;
        }

        result = memcpy(v18, v6, v15);
        *(a2 + 8) = v18 + v15;
        v4 = v6 + v15;
LABEL_11:
        if ((v3[2] - v4) <= 4)
        {
          v3[1] = v4;
          result = sub_243960EF0(v3);
          if (!result)
          {
            goto LABEL_44;
          }

          v4 = v3[1];
        }
      }
    }

    v8 = word_2439931E0[v5];
    v9 = (v8 & 0x700) + (*(&v28 + (v8 >> 11)) & *v6);
    v10 = *(a2 + 8);
    if (&v10[-*a2] <= v9 - 1)
    {
      goto LABEL_44;
    }

    v11 = &v10[v8];
    v12 = *(a2 + 16);
    if (v11 > v12)
    {
      goto LABEL_44;
    }

    v13 = &v10[-v9];
    if (v9 > 7)
    {
      goto LABEL_8;
    }

    if (v12 - 14 < v10)
    {
      v25 = v8;
      if (v8)
      {
        do
        {
          *v10 = v10[-v9];
          ++v10;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      do
      {
        *v10 = *v13;
        v10 += v9;
        v20 = v9 >= 4;
        v9 *= 2;
      }

      while (!v20);
      if (v10 < v11)
      {
LABEL_8:
        while (v10 <= v12 - 16)
        {
          *v10 = *v13;
          *(v10 + 1) = *(v13 + 1);
          v13 += 16;
          v10 += 16;
          if (v10 >= v11)
          {
            goto LABEL_10;
          }
        }

        if (v10 <= v12 - 8)
        {
          v24 = *v13;
          v13 += 8;
          *v10 = v24;
          v10 += 8;
        }

        if (v10 < v11)
        {
          do
          {
            v14 = *v13++;
            *v10++ = v14;
          }

          while (v10 != v11);
        }
      }
    }

LABEL_10:
    v4 = v6 + (v8 >> 11);
    *(a2 + 8) = v11;
    goto LABEL_11;
  }

  result = sub_243960EF0(result);
  if (result)
  {
    v4 = v3[1];
    goto LABEL_4;
  }

LABEL_44:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_243961720()
{
  if ((atomic_load_explicit(&qword_27ED970C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27ED970C8))
  {
    v2 = operator new(8uLL);
    pthread_key_create(v2, sub_243961E90);
    qword_27ED970C0 = v2;
    __cxa_guard_release(&qword_27ED970C8);
  }

  v0 = qword_27ED970C0;

  return sub_2439617D0(v0);
}

void sub_2439617A8(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_27ED970C8);
  _Unwind_Resume(a1);
}

void *sub_2439617D0(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x10uLL);
    *v2 = -1;
    v2[1] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
}

void *sub_243961830(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v6 = *(a2 + 16);
    if (*(a1 + 48) >= (2 * v6))
    {
      v7 = 2 * v6;
    }

    else
    {
      v7 = *(a1 + 48);
    }
  }

  else
  {
    v7 = *(a1 + 40);
  }

  if (a3 >= 0xFFFFFFFFFFFFFFE8)
  {
    sub_2439675B4(v12, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/arena.cc", 116);
    v8 = sub_2439675CC(v12, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): ");
    sub_243967708(&v11, &v8->__r_.__value_.__l.__data_);
    sub_243967710(v12);
  }

  if (v7 <= a3 + 24)
  {
    v9 = a3 + 24;
  }

  else
  {
    v9 = v7;
  }

  result = (*(a1 + 72))(v9);
  *result = a2;
  result[1] = 24;
  result[2] = v9;
  atomic_fetch_add_explicit((a1 + 16), v9, memory_order_relaxed);
  return result;
}

void sub_2439618F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

char *sub_243961920(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = a1[3];
  do
  {
    if (result)
    {
      if ((2 * *result) >= 0x40)
      {
        v7 = 64;
      }

      else
      {
        v7 = 2 * *result;
      }
    }

    else
    {
      v7 = 8;
    }

    v8 = (16 * v7 + 23) & 0xFF0;
    v9 = a1[5];
    if (a1[6] - v9 < v8)
    {
      result = sub_243961DF8(a1, v8);
      v10 = a1[3];
    }

    else
    {
      a1[5] = &v9[v8];
      v10 = result;
      result = v9;
    }

    *result = v7;
    *(result + 1) = v10;
    a1[3] = result;
    a1[7] = (result + 16);
    a1[8] = &result[16 * v7 + 16];
  }

  while (!v7);
  *(result + 2) = a2;
  *(result + 3) = a3;
  a1[7] = (result + 32);
  return result;
}

char *sub_243961A00(uint64_t a1, unint64_t a2)
{
  v4 = sub_243961720();
  v5 = v4;
  if (*v4 == *(a1 + 32))
  {
    explicit = v4[1];
    goto LABEL_3;
  }

  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  if (explicit && explicit[1] == v5)
  {
LABEL_3:
    v7 = explicit[5];
    if (explicit[6] - v7 < a2)
    {

      return sub_243961DF8(explicit, a2);
    }

    else
    {
      explicit[5] = v7 + a2;
      return v7;
    }
  }

  return sub_243961AB8(a1, a2);
}

char *sub_243961AB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_243961C8C(a1);
  v4 = v3[5];
  if (v3[6] - v4 < a2)
  {

    return sub_243961DF8(v3, a2);
  }

  else
  {
    v3[5] = v4 + a2;
    return v4;
  }
}

char *sub_243961B18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_243961720();
  if (*v6 == *(a1 + 32))
  {
    explicit = v6[1];
    goto LABEL_3;
  }

  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  if (explicit && explicit[1] == v6)
  {
LABEL_3:

    return sub_243961BC0(explicit, a2, a3);
  }

  return sub_243961C40(a1, a2, a3);
}

char *sub_243961BC0(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1[5];
  if (a1[6] - v5 < a2)
  {
    v5 = sub_243961DF8(a1, a2);
  }

  else
  {
    a1[5] = &v5[a2];
  }

  v6 = a1[7];
  if (v6 == a1[8])
  {
    sub_243961920(a1, v5, a3);
  }

  else
  {
    *v6 = v5;
    v6[1] = a3;
    a1[7] = (v6 + 2);
  }

  return v5;
}

char *sub_243961C40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_243961C8C(a1);

  return sub_243961BC0(v5, a2, a3);
}

unint64_t sub_243961C8C(uint64_t a1)
{
  v2 = sub_243961720();
  if (*v2 == *(a1 + 32))
  {
    return v2[1];
  }

  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  if (explicit && *(explicit + 8) == v2)
  {
    return explicit;
  }

  v5 = sub_243961720();

  return sub_243961D08(a1, v5);
}

unint64_t sub_243961D08(uint64_t a1, uint64_t a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    while (*(explicit + 8) != a2)
    {
      explicit = *(explicit + 32);
      if (!explicit)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    if (*(a1 + 40) <= 0x60uLL)
    {
      v5 = 96;
    }

    else
    {
      v5 = *(a1 + 40);
    }

    v6 = (*(a1 + 72))(v5);
    *v6 = 0;
    v6[1] = 24;
    v6[2] = v5;
    atomic_fetch_add_explicit((a1 + 16), v5, memory_order_relaxed);
    v6[3] = a1;
    explicit = (v6 + 3);
    v6[1] = 96;
    v6[4] = a2;
    v6[5] = v6;
    v7 = v6 + v6[2];
    v6[8] = v6 + 12;
    v6[9] = v7;
    v6[6] = 0;
    v6[10] = 0;
    v6[11] = 0;
    v8 = *a1;
    v6[7] = *a1;
    v9 = v8;
    atomic_compare_exchange_strong_explicit(a1, &v9, (v6 + 3), memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      v10 = v9;
      do
      {
        v6[7] = v9;
        atomic_compare_exchange_strong_explicit(a1, &v10, explicit, memory_order_release, memory_order_relaxed);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  sub_243961720()[1] = explicit;
  v12 = *(a1 + 32);
  *sub_243961720() = v12;
  atomic_store(explicit, (a1 + 8));
  return explicit;
}

char *sub_243961DF8(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  v5 = v4[2];
  v8 = a1 + 5;
  result = a1[5];
  v7 = v8[1];
  do
  {
    v4[1] = &result[v5 - v7];
    v4 = sub_243961830(*a1, v4, a2);
    a1[2] = v4;
    v9 = v4[1];
    v5 = v4[2];
    result = v4 + v9;
    v7 = v4 + v5;
    a1[5] = v4 + v9;
    a1[6] = v4 + v5;
  }

  while (v5 - v9 < a2);
  a1[5] = &result[a2];
  return result;
}

uint64_t sub_243961E70(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 88);
  if (v3)
  {
    return v3(a2, a3, *(result + 112));
  }

  return result;
}

void sub_243961E90(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t *sub_243961E9C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void sub_243962240(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_243962254()
{
  if ((atomic_load_explicit(&qword_27ED97048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27ED97048))
  {
    qword_27ED97020 = 0;
    *algn_27ED97028 = 0;
    qword_27ED97030 = 0;
    sub_243967B44(sub_243962240, &qword_27ED97020);

    __cxa_guard_release(&qword_27ED97048);
  }
}