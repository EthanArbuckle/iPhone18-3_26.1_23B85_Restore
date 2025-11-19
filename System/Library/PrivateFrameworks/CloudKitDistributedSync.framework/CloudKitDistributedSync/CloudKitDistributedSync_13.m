uint64_t sub_2439436B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4;
  v15 = a4 - v8;
  v16 = a4 - v8;
  v129 = a7;
  v127 = a6;
  if (v9 < a4 - v8)
  {
    do
    {
      LODWORD(v9) = sub_24393E37C(a2, (v8 + v9), a5, v15, 5, 0) + v9;
    }

    while (v9 < v15);
    v8 = *(a2 + 8);
    v16 = v13 - v8;
    a7 = v129;
    a6 = v127;
  }

  v140 = v8;
  *(a2 + 44) = v15;
  v17 = *(a2 + 276);
  if (v17 >= 0xFFF)
  {
    v18 = 4095;
  }

  else
  {
    v18 = v17;
  }

  v110 = 0xCF1BBCDCBB000000 * *v13;
  v113 = v110 >> -*(a2 + 264);
  v114 = *(a2 + 112);
  v19 = *(v114 + 4 * v113);
  v115 = *(a2 + 128);
  v112 = -1 << (*(a2 + 260) - 1);
  v20 = v16 + v112 + 1;
  if (v16 < ~v112)
  {
    v20 = 0;
  }

  v135 = v20;
  v21 = 1 << *(a2 + 256);
  v23 = *(a2 + 24);
  v22 = *(a2 + 28);
  if (v16 - v22 > v21 && *(a2 + 40) == 0)
  {
    v25 = v16 - v21;
  }

  else
  {
    v25 = v22;
  }

  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v138 = v26;
  v141[0] = 0;
  v111 = *(a2 + 268);
  v116 = a2;
  v27 = *(a2 + 248);
  v28 = *(v27 + 8);
  v137 = *v27;
  v29 = *(v27 + 28);
  v30 = v25 - (*v27 - v28);
  v108 = *(v27 + 264);
  v109 = v27;
  v130 = ~(-1 << (*(v27 + 260) - 1));
  v107 = *v27 - v28;
  v31 = v107 + (-1 << (*(v27 + 260) - 1)) + 1;
  if (*v27 - v28 - v29 <= v130)
  {
    v31 = *(v27 + 28);
  }

  v131 = v31;
  v32 = (a8 - 1);
  v136 = v23;
  v123 = v16;
  v133 = *(v27 + 8);
  v134 = *(v27 + 28);
  v126 = v25 - (*v27 - v28);
  v10 = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v33 = a7 + 3;
    v34 = v16 - v23;
    v35 = v16 - v29 - v30;
    v36 = v13 + 2;
    v37 = a5 - 7;
    v121 = a5 - 1;
    v122 = a5 - 3;
    v106 = v13 + 6;
    v38 = v28 - v30;
    v39 = a7;
    v40 = a1;
    v120 = v35;
    v118 = a5 - 7;
    v119 = v13 + 2;
    v117 = v38;
    while (1)
    {
      if (v39 == 3)
      {
        v41 = *a6 - 1;
      }

      else
      {
        v41 = a6[v39];
      }

      v42 = v16 - v41;
      if (v41 - 1 >= v34)
      {
        if (v41 - 1 < v35 && v42 - v23 <= 0xFFFFFFFC)
        {
          v55 = v38 + v42;
          if (*v13 == *v55)
          {
            v56 = v36;
            v57 = a5;
            v58 = v40;
            v59 = v18;
            v60 = v25;
            v124 = v10;
            v61 = v32;
            v62 = v13;
            v63 = a5;
            v64 = v34;
            v65 = sub_243913D40(v56, (v55 + 4), v57, v137, (v140 + v23));
            v38 = v117;
            v37 = v118;
            v36 = v119;
            v34 = v64;
            a5 = v63;
            v13 = v62;
            v32 = v61;
            v16 = v123;
            v10 = v124;
            v25 = v60;
            v18 = v59;
            v40 = v58;
            a6 = v127;
            a7 = v129;
            v23 = v136;
            v66 = v65 + 4;
            v35 = v120;
            goto LABEL_59;
          }
        }

LABEL_45:
        v66 = 0;
        goto LABEL_59;
      }

      if (v42 < v25 || *v13 != *(v13 - v41))
      {
        goto LABEL_45;
      }

      v44 = -v41;
      v45 = (v36 - v41);
      if (v37 <= v36)
      {
        break;
      }

      v46 = *v45;
      if (v46 == *v36)
      {
        v47 = 0;
        v45 = (v106 + v44);
        v48 = v106;
        while (v48 < v37)
        {
          v50 = *v45;
          v45 += 4;
          v49 = v50;
          v52 = *v48;
          v48 += 4;
          v51 = v52;
          v47 += 8;
          if (v49 != v52)
          {
            v53 = v47 + (__clz(__rbit64(v51 ^ v49)) >> 3);
            goto LABEL_58;
          }
        }

        goto LABEL_47;
      }

      v53 = __clz(__rbit64(*v36 ^ v46)) >> 3;
LABEL_58:
      v66 = v53 + 4;
LABEL_59:
      if (v32 < v66)
      {
        v67 = (v40 + 8 * v10);
        *v67 = v39 - a7 + 1;
        v67[1] = v66;
        v10 = (v10 + 1);
        if (v66 > v18)
        {
          return v10;
        }

        v32 = v66;
        if ((v13 + v66) == a5)
        {
          return v10;
        }
      }

      if (++v39 == v33)
      {
        goto LABEL_65;
      }
    }

    v48 = v36;
LABEL_47:
    if (v48 < v122 && *v45 == *v48)
    {
      v45 += 2;
      v48 += 2;
    }

    if (v48 < v121 && *v45 == *v48)
    {
      ++v45;
      ++v48;
    }

    if (v48 < a5 && *v45 == *v48)
    {
      LODWORD(v48) = v48 + 1;
    }

    LODWORD(v53) = v48 - v36;
    goto LABEL_58;
  }

  v40 = a1;
LABEL_65:
  v68 = (v115 + 8 * (v16 & ~v112));
  v69 = v16 + 9;
  v70 = 1 << v111;
  *(v114 + 4 * v113) = v16;
  if (v19 < v138)
  {
    v139 = a5;
    *v68 = 0;
    goto LABEL_110;
  }

  v71 = 0;
  v72 = 0;
  v73 = v68 + 1;
  v74 = a5 - 7;
  v75 = v16 + 3;
  v76 = ~v112;
  while (1)
  {
    v77 = v71 >= v72 ? v72 : v71;
    v78 = v140 + v19;
    v79 = v13 + v77;
    v80 = (v78 + v77);
    if (v74 <= v13 + v77)
    {
      v82 = (v13 + v77);
    }

    else
    {
      if (*v80 != *v79)
      {
        v87 = __clz(__rbit64(*v79 ^ *v80)) >> 3;
        goto LABEL_90;
      }

      v81 = 0;
      v80 = (v140 + 8 + v77 + v19);
      v82 = (v13 + v77 + 8);
      while (v82 < v74)
      {
        v84 = *v80++;
        v83 = v84;
        v86 = *v82;
        v82 += 4;
        v85 = v86;
        v81 += 8;
        if (v83 != v86)
        {
          v87 = v81 + (__clz(__rbit64(v85 ^ v83)) >> 3);
          v76 = ~v112;
          goto LABEL_90;
        }
      }

      v76 = ~v112;
    }

    if (v82 < a5 - 3 && *v80 == *v82)
    {
      v80 = (v80 + 4);
      v82 += 2;
    }

    if (v82 < a5 - 1 && *v80 == *v82)
    {
      v80 = (v80 + 2);
      ++v82;
    }

    if (v82 < a5 && *v80 == *v82)
    {
      v82 = (v82 + 1);
    }

    v87 = v82 - v79;
LABEL_90:
    v88 = v87 + v77;
    if (v88 > v32)
    {
      if (v88 > v69 - v19)
      {
        v69 = v19 + v88;
      }

      v89 = (v40 + 8 * v10);
      *v89 = v75 - v19;
      v89[1] = v88;
      v10 = (v10 + 1);
      if (v88 > 0x1000 || (v13 + v88) == a5)
      {
        *v73 = 0;
        *v68 = 0;
        goto LABEL_134;
      }

      v32 = v88;
    }

    v91 = (v115 + 8 * (v19 & v76));
    if (*(v78 + v88) < *(v13 + v88))
    {
      break;
    }

    *v73 = v19;
    if (v19 <= v135)
    {
      v73 = v141;
      goto LABEL_109;
    }

    v73 = (v115 + 8 * (v19 & v76));
    v72 = v88;
LABEL_103:
    if (--v70)
    {
      v19 = *v91;
      if (*v91 >= v138)
      {
        continue;
      }
    }

    goto LABEL_109;
  }

  *v68 = v19;
  if (v19 > v135)
  {
    v68 = v91 + 1;
    v71 = v88;
    ++v91;
    goto LABEL_103;
  }

  v68 = v141;
LABEL_109:
  v139 = a5;
  *v73 = 0;
  *v68 = 0;
  v16 = v123;
  if (v70)
  {
LABEL_110:
    v92 = *(*(v109 + 112) + 4 * (v110 >> -v108));
    if (v92 > v134)
    {
      v93 = 0;
      v94 = 0;
      v128 = *(v109 + 128);
      v125 = v16 + 3;
      v95 = v70 - 1;
      while (1)
      {
        if (v93 >= v94)
        {
          v96 = v94;
        }

        else
        {
          v96 = v93;
        }

        v97 = sub_243913D40((v13 + v96), (v133 + v92 + v96), v139, v137, (v140 + v23));
        v98 = v97 + v96;
        if (v97 + v96 + v92 >= v107)
        {
          v99 = v140 + v126 + v92;
        }

        else
        {
          v99 = v133 + v92;
        }

        if (v98 <= v32)
        {
          v23 = v136;
        }

        else
        {
          if (v98 > v69 - (v92 + v126))
          {
            v69 = v92 + v126 + v98;
          }

          v100 = (a1 + 8 * v10);
          *v100 = v125 - (v92 + v126);
          v100[1] = v98;
          v10 = (v10 + 1);
          if (v98 > 0x1000)
          {
            break;
          }

          v32 = v97 + v96;
          v23 = v136;
          if ((v13 + v98) == v139)
          {
            break;
          }
        }

        if (v92 > v131)
        {
          v101 = *(v99 + v98);
          v102 = *(v13 + v98);
          v103 = v101 >= v102;
          v104 = v101 < v102;
          if (v103)
          {
            v94 = v97 + v96;
          }

          if (!v103)
          {
            v93 = v97 + v96;
          }

          v103 = v95-- != 0;
          if (v103)
          {
            v92 = *(v128 + 8 * (v92 & v130) + 4 * v104);
            if (v92 > v134)
            {
              continue;
            }
          }
        }

        break;
      }
    }
  }

LABEL_134:
  *(v116 + 44) = v69 - 8;
  return v10;
}

uint64_t sub_243943EB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4;
  v15 = a4 - v8;
  v16 = a4 - v8;
  v129 = a7;
  v127 = a6;
  if (v9 < a4 - v8)
  {
    do
    {
      LODWORD(v9) = sub_24393E37C(a2, (v8 + v9), a5, v15, 6, 0) + v9;
    }

    while (v9 < v15);
    v8 = *(a2 + 8);
    v16 = v13 - v8;
    a7 = v129;
    a6 = v127;
  }

  v140 = v8;
  *(a2 + 44) = v15;
  v17 = *(a2 + 276);
  if (v17 >= 0xFFF)
  {
    v18 = 4095;
  }

  else
  {
    v18 = v17;
  }

  v110 = 0xCF1BBCDCBF9B0000 * *v13;
  v113 = v110 >> -*(a2 + 264);
  v114 = *(a2 + 112);
  v19 = *(v114 + 4 * v113);
  v115 = *(a2 + 128);
  v112 = -1 << (*(a2 + 260) - 1);
  v20 = v16 + v112 + 1;
  if (v16 < ~v112)
  {
    v20 = 0;
  }

  v135 = v20;
  v21 = 1 << *(a2 + 256);
  v23 = *(a2 + 24);
  v22 = *(a2 + 28);
  if (v16 - v22 > v21 && *(a2 + 40) == 0)
  {
    v25 = v16 - v21;
  }

  else
  {
    v25 = v22;
  }

  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v138 = v26;
  v141[0] = 0;
  v111 = *(a2 + 268);
  v116 = a2;
  v27 = *(a2 + 248);
  v28 = *(v27 + 8);
  v137 = *v27;
  v29 = *(v27 + 28);
  v30 = v25 - (*v27 - v28);
  v108 = *(v27 + 264);
  v109 = v27;
  v130 = ~(-1 << (*(v27 + 260) - 1));
  v107 = *v27 - v28;
  v31 = v107 + (-1 << (*(v27 + 260) - 1)) + 1;
  if (*v27 - v28 - v29 <= v130)
  {
    v31 = *(v27 + 28);
  }

  v131 = v31;
  v32 = (a8 - 1);
  v136 = v23;
  v123 = v16;
  v133 = *(v27 + 8);
  v134 = *(v27 + 28);
  v126 = v25 - (*v27 - v28);
  v10 = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v33 = a7 + 3;
    v34 = v16 - v23;
    v35 = v16 - v29 - v30;
    v36 = v13 + 2;
    v37 = a5 - 7;
    v121 = a5 - 1;
    v122 = a5 - 3;
    v106 = v13 + 6;
    v38 = v28 - v30;
    v39 = a7;
    v40 = a1;
    v120 = v35;
    v118 = a5 - 7;
    v119 = v13 + 2;
    v117 = v38;
    while (1)
    {
      if (v39 == 3)
      {
        v41 = *a6 - 1;
      }

      else
      {
        v41 = a6[v39];
      }

      v42 = v16 - v41;
      if (v41 - 1 >= v34)
      {
        if (v41 - 1 < v35 && v42 - v23 <= 0xFFFFFFFC)
        {
          v55 = v38 + v42;
          if (*v13 == *v55)
          {
            v56 = v36;
            v57 = a5;
            v58 = v40;
            v59 = v18;
            v60 = v25;
            v124 = v10;
            v61 = v32;
            v62 = v13;
            v63 = a5;
            v64 = v34;
            v65 = sub_243913D40(v56, (v55 + 4), v57, v137, (v140 + v23));
            v38 = v117;
            v37 = v118;
            v36 = v119;
            v34 = v64;
            a5 = v63;
            v13 = v62;
            v32 = v61;
            v16 = v123;
            v10 = v124;
            v25 = v60;
            v18 = v59;
            v40 = v58;
            a6 = v127;
            a7 = v129;
            v23 = v136;
            v66 = v65 + 4;
            v35 = v120;
            goto LABEL_59;
          }
        }

LABEL_45:
        v66 = 0;
        goto LABEL_59;
      }

      if (v42 < v25 || *v13 != *(v13 - v41))
      {
        goto LABEL_45;
      }

      v44 = -v41;
      v45 = (v36 - v41);
      if (v37 <= v36)
      {
        break;
      }

      v46 = *v45;
      if (v46 == *v36)
      {
        v47 = 0;
        v45 = (v106 + v44);
        v48 = v106;
        while (v48 < v37)
        {
          v50 = *v45;
          v45 += 4;
          v49 = v50;
          v52 = *v48;
          v48 += 4;
          v51 = v52;
          v47 += 8;
          if (v49 != v52)
          {
            v53 = v47 + (__clz(__rbit64(v51 ^ v49)) >> 3);
            goto LABEL_58;
          }
        }

        goto LABEL_47;
      }

      v53 = __clz(__rbit64(*v36 ^ v46)) >> 3;
LABEL_58:
      v66 = v53 + 4;
LABEL_59:
      if (v32 < v66)
      {
        v67 = (v40 + 8 * v10);
        *v67 = v39 - a7 + 1;
        v67[1] = v66;
        v10 = (v10 + 1);
        if (v66 > v18)
        {
          return v10;
        }

        v32 = v66;
        if ((v13 + v66) == a5)
        {
          return v10;
        }
      }

      if (++v39 == v33)
      {
        goto LABEL_65;
      }
    }

    v48 = v36;
LABEL_47:
    if (v48 < v122 && *v45 == *v48)
    {
      v45 += 2;
      v48 += 2;
    }

    if (v48 < v121 && *v45 == *v48)
    {
      ++v45;
      ++v48;
    }

    if (v48 < a5 && *v45 == *v48)
    {
      LODWORD(v48) = v48 + 1;
    }

    LODWORD(v53) = v48 - v36;
    goto LABEL_58;
  }

  v40 = a1;
LABEL_65:
  v68 = (v115 + 8 * (v16 & ~v112));
  v69 = v16 + 9;
  v70 = 1 << v111;
  *(v114 + 4 * v113) = v16;
  if (v19 < v138)
  {
    v139 = a5;
    *v68 = 0;
    goto LABEL_110;
  }

  v71 = 0;
  v72 = 0;
  v73 = v68 + 1;
  v74 = a5 - 7;
  v75 = v16 + 3;
  v76 = ~v112;
  while (1)
  {
    v77 = v71 >= v72 ? v72 : v71;
    v78 = v140 + v19;
    v79 = v13 + v77;
    v80 = (v78 + v77);
    if (v74 <= v13 + v77)
    {
      v82 = (v13 + v77);
    }

    else
    {
      if (*v80 != *v79)
      {
        v87 = __clz(__rbit64(*v79 ^ *v80)) >> 3;
        goto LABEL_90;
      }

      v81 = 0;
      v80 = (v140 + 8 + v77 + v19);
      v82 = (v13 + v77 + 8);
      while (v82 < v74)
      {
        v84 = *v80++;
        v83 = v84;
        v86 = *v82;
        v82 += 4;
        v85 = v86;
        v81 += 8;
        if (v83 != v86)
        {
          v87 = v81 + (__clz(__rbit64(v85 ^ v83)) >> 3);
          v76 = ~v112;
          goto LABEL_90;
        }
      }

      v76 = ~v112;
    }

    if (v82 < a5 - 3 && *v80 == *v82)
    {
      v80 = (v80 + 4);
      v82 += 2;
    }

    if (v82 < a5 - 1 && *v80 == *v82)
    {
      v80 = (v80 + 2);
      ++v82;
    }

    if (v82 < a5 && *v80 == *v82)
    {
      v82 = (v82 + 1);
    }

    v87 = v82 - v79;
LABEL_90:
    v88 = v87 + v77;
    if (v88 > v32)
    {
      if (v88 > v69 - v19)
      {
        v69 = v19 + v88;
      }

      v89 = (v40 + 8 * v10);
      *v89 = v75 - v19;
      v89[1] = v88;
      v10 = (v10 + 1);
      if (v88 > 0x1000 || (v13 + v88) == a5)
      {
        *v73 = 0;
        *v68 = 0;
        goto LABEL_134;
      }

      v32 = v88;
    }

    v91 = (v115 + 8 * (v19 & v76));
    if (*(v78 + v88) < *(v13 + v88))
    {
      break;
    }

    *v73 = v19;
    if (v19 <= v135)
    {
      v73 = v141;
      goto LABEL_109;
    }

    v73 = (v115 + 8 * (v19 & v76));
    v72 = v88;
LABEL_103:
    if (--v70)
    {
      v19 = *v91;
      if (*v91 >= v138)
      {
        continue;
      }
    }

    goto LABEL_109;
  }

  *v68 = v19;
  if (v19 > v135)
  {
    v68 = v91 + 1;
    v71 = v88;
    ++v91;
    goto LABEL_103;
  }

  v68 = v141;
LABEL_109:
  v139 = a5;
  *v73 = 0;
  *v68 = 0;
  v16 = v123;
  if (v70)
  {
LABEL_110:
    v92 = *(*(v109 + 112) + 4 * (v110 >> -v108));
    if (v92 > v134)
    {
      v93 = 0;
      v94 = 0;
      v128 = *(v109 + 128);
      v125 = v16 + 3;
      v95 = v70 - 1;
      while (1)
      {
        if (v93 >= v94)
        {
          v96 = v94;
        }

        else
        {
          v96 = v93;
        }

        v97 = sub_243913D40((v13 + v96), (v133 + v92 + v96), v139, v137, (v140 + v23));
        v98 = v97 + v96;
        if (v97 + v96 + v92 >= v107)
        {
          v99 = v140 + v126 + v92;
        }

        else
        {
          v99 = v133 + v92;
        }

        if (v98 <= v32)
        {
          v23 = v136;
        }

        else
        {
          if (v98 > v69 - (v92 + v126))
          {
            v69 = v92 + v126 + v98;
          }

          v100 = (a1 + 8 * v10);
          *v100 = v125 - (v92 + v126);
          v100[1] = v98;
          v10 = (v10 + 1);
          if (v98 > 0x1000)
          {
            break;
          }

          v32 = v97 + v96;
          v23 = v136;
          if ((v13 + v98) == v139)
          {
            break;
          }
        }

        if (v92 > v131)
        {
          v101 = *(v99 + v98);
          v102 = *(v13 + v98);
          v103 = v101 >= v102;
          v104 = v101 < v102;
          if (v103)
          {
            v94 = v97 + v96;
          }

          if (!v103)
          {
            v93 = v97 + v96;
          }

          v103 = v95-- != 0;
          if (v103)
          {
            v92 = *(v128 + 8 * (v92 & v130) + 4 * v104);
            if (v92 > v134)
            {
              continue;
            }
          }
        }

        break;
      }
    }
  }

LABEL_134:
  *(v116 + 44) = v69 - 8;
  return v10;
}

uint64_t sub_2439446B4(uint64_t a1, unsigned int *a2, int *a3)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a3 - v4;
  v7 = *a3;
  v8 = 32 - *(a1 + 48);
  if (v5 < a3 - v4)
  {
    do
    {
      *(v3 + 4 * ((900185344 * *(v4 + v5)) >> v8)) = v5;
      ++v5;
    }

    while (v5 < v6);
  }

  *a2 = v6;
  return *(v3 + 4 * ((900185344 * v7) >> v8));
}

uint64_t sub_243944718(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if ((*(a1 + 3128) & 1) == 0)
  {
    sub_243902A14(*a1);
  }

  sub_243944860(a1);
  v2 = *(a1 + 8);
  v3 = *(a1 + 3040);
  v10 = *(a1 + 3088);
  v11 = *(a1 + 3104);
  sub_24394498C(v2, v3 + 1, &v10);
  sub_243944A38(*(a1 + 16));
  sub_243944B08(*(a1 + 24));
  sub_243944A38(*(a1 + 32));
  v4 = *(a1 + 608);
  v5 = *(a1 + 616);
  pthread_mutex_destroy((a1 + 336));
  pthread_cond_destroy((a1 + 400));
  pthread_mutex_destroy((a1 + 2864));
  pthread_cond_destroy((a1 + 2928));
  if (*(a1 + 696))
  {
    if (!v4)
    {
      free(*(a1 + 696));
      v6 = *(a1 + 712);
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4(v5);
  }

  v6 = *(a1 + 712);
  if (v6)
  {
    if (v4)
    {
      v4(v5);
      goto LABEL_12;
    }

LABEL_11:
    free(v6);
  }

LABEL_12:
  sub_2439087B0(*(a1 + 3112));
  if (*(a1 + 312))
  {
    v7 = *(a1 + 3096);
    if (v7)
    {
      v7(*(a1 + 3104));
    }

    else
    {
      free(*(a1 + 312));
    }
  }

  v8 = *(a1 + 3096);
  if (v8)
  {
    v8(*(a1 + 3104), a1);
  }

  else
  {
    free(a1);
  }

  return 0;
}

void sub_243944860(uint64_t a1)
{
  v2 = 0;
  v15 = *MEMORY[0x277D85DE8];
  do
  {
    v3 = *(a1 + 8) + 464 * v2;
    v11 = *(v3 + 16);
    v12 = *(v3 + 32);
    v13 = *(v3 + 48);
    v14 = *(v3 + 64);
    v8 = *(v3 + 80);
    v9 = *(v3 + 96);
    v10 = *(v3 + 112);
    sub_243944BA8(*(a1 + 16), *(v3 + 160), *(v3 + 168));
    v4 = (*(a1 + 8) + 464 * v2);
    v4[27] = 0u;
    v4[28] = 0u;
    v4[25] = 0u;
    v4[26] = 0u;
    v4[23] = 0u;
    v4[24] = 0u;
    v4[21] = 0u;
    v4[22] = 0u;
    v4[19] = 0u;
    v4[20] = 0u;
    v4[17] = 0u;
    v4[18] = 0u;
    v4[15] = 0u;
    v4[16] = 0u;
    v4[13] = 0u;
    v4[14] = 0u;
    v4[11] = 0u;
    v4[12] = 0u;
    v4[9] = 0u;
    v4[10] = 0u;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    v5 = (*(a1 + 8) + 464 * v2);
    v5[1] = v11;
    v5[2] = v12;
    v5[3] = v13;
    v5[4] = v14;
    v6 = (*(a1 + 8) + 464 * v2);
    v6[5] = v8;
    v6[6] = v9;
    v6[7] = v10;
    ++v2;
  }

  while (v2 <= *(a1 + 3040));
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 3056) = 1;
  v7 = *MEMORY[0x277D85DE8];
}

void sub_24394498C(char *a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = a2;
      v6 = (a1 + 80);
      do
      {
        pthread_mutex_destroy(&v6[-2].__opaque[24]);
        pthread_cond_destroy(v6);
        v6 = (v6 + 464);
        --v5;
      }

      while (v5);
    }

    v7 = *(a3 + 8);
    if (v7)
    {
      v8 = *(a3 + 16);

      v7(v8, a1);
    }

    else
    {

      free(a1);
    }
  }
}

void sub_243944A38(pthread_mutex_t *a1)
{
  if (a1)
  {
    if (*a1[1].__opaque)
    {
      v2 = 0;
      v3 = &a1[1].__opaque[32];
      do
      {
        if (*v3)
        {
          v4 = *&a1[1].__opaque[16];
          if (v4)
          {
            v4(*&a1[1].__opaque[24]);
          }

          else
          {
            free(*v3);
          }
        }

        ++v2;
        v3 += 2;
      }

      while (v2 < *a1[1].__opaque);
    }

    pthread_mutex_destroy(a1);
    v5 = *&a1[1].__opaque[16];
    if (v5)
    {
      v6 = *&a1[1].__opaque[24];

      v5(v6, a1);
    }

    else
    {

      free(a1);
    }
  }
}

void sub_243944B08(pthread_mutex_t *a1)
{
  if (SLODWORD(a1[1].__sig) >= 1)
  {
    v2 = 0;
    do
    {
      sub_2439068DC(*&a1[1].__opaque[8 * v2++ + 24]);
    }

    while (v2 < SLODWORD(a1[1].__sig));
  }

  pthread_mutex_destroy(a1);
  v3 = *&a1[1].__opaque[8];
  if (v3)
  {
    v4 = *&a1[1].__opaque[16];

    v3(v4, a1);
  }

  else
  {

    free(a1);
  }
}

void sub_243944BA8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    pthread_mutex_lock(a1);
    v6 = *(a1 + 76);
    if (v6 >= *(a1 + 72))
    {
      pthread_mutex_unlock(a1);
      v8 = *(a1 + 88);
      if (v8)
      {
        v9 = *(a1 + 96);

        v8(v9, a2);
      }

      else
      {

        free(a2);
      }
    }

    else
    {
      *(a1 + 76) = v6 + 1;
      v7 = a1 + 16 * v6;
      *(v7 + 104) = a2;
      *(v7 + 112) = a3;

      pthread_mutex_unlock(a1);
    }
  }
}

uint64_t sub_243944C7C(int *a1, char *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v69 = 0;
  if (a5 < 0x5D4)
  {
    return -44;
  }

  v8 = (a4 + 1236);
  v5 = sub_243901C74((a4 + 1236), 0x100uLL, a4, &v69, &v69 + 1, a2, a3, (a4 + 104), 0x36CuLL);
  if (v5 > 0xFFFFFFFFFFFFFF88)
  {
    return v5;
  }

  v9 = *a1;
  v10 = *a1;
  v11 = v10 + 1;
  if ((v10 + 1) < 0xB)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = 11;
  }

  v14 = v69;
  v13 = HIDWORD(v69);
  v15 = HIDWORD(v69) - v12;
  if (HIDWORD(v69) <= v12)
  {
    if (HIDWORD(v69) < v12)
    {
      v16 = v12 - HIDWORD(v69);
      if (v69)
      {
        v17 = v8;
        v18 = v69;
        do
        {
          if (*v17)
          {
            v19 = v16;
          }

          else
          {
            v19 = 0;
          }

          *v17++ += v19;
          --v18;
        }

        while (v18);
      }

      if (v16 < v12)
      {
        v20 = (a4 + 4 * v12);
        v21 = v12;
        do
        {
          *v20-- = *(a4 + 4 * (v15 + v21--));
        }

        while (v16 < v21);
      }

      bzero((a4 + 4 * (v16 - (v12 + ~v13))), 4 * (v12 + ~v13) + 4);
    }

    goto LABEL_21;
  }

  v12 = HIDWORD(v69);
  if (HIDWORD(v69) <= v11)
  {
LABEL_21:
    v22 = 0;
    *a1 = v9;
    *(a1 + 1) = 0;
    *(a1 + 2) = v12;
    *(a1 + 3) = HIBYTE(v9);
    v23 = a4 + 52;
    v24 = v12 + 1;
    v25 = v24;
    v26 = a4;
    do
    {
      v27 = *v26;
      v26[13] = v22;
      v22 += v27;
      ++v26;
      --v25;
    }

    while (v25);
    if (v14 < 4)
    {
      LODWORD(v28) = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v30 = v8[v28 + i];
          v31 = *(v23 + 4 * v30);
          *(v23 + 4 * v30) = v31 + 1;
          *(a4 + 980 + v31) = v28 + i;
        }

        v28 += 4;
      }

      while (v28 < (v14 - 3));
    }

    if (v28 < v14)
    {
      v28 = v28;
      do
      {
        v32 = v8[v28];
        v33 = *(v23 + 4 * v32);
        *(v23 + 4 * v32) = v33 + 1;
        *(a4 + 980 + v33) = v28++;
      }

      while (v14 != v28);
    }

    v34 = 0;
    v35 = a4 + 980;
    v36 = *a4;
    v37 = a1 + 3;
    v38 = a1 + 1;
    v39 = a1 + 7;
    v40 = a1 + 5;
    v41 = a1 + 5;
    v42 = 1;
    while (1)
    {
      v43 = *(a4 + 4 * v42);
      v44 = 1 << v42 >> 1;
      v45 = v24 - v42;
      if (v44 > 3)
      {
        break;
      }

      if (v44 == 1)
      {
        if (v43 >= 1)
        {
          v60 = (v40 + 2 * v34);
          v61 = *(a4 + 4 * v42);
          v62 = (v35 + v36);
          do
          {
            v63 = *v62++;
            *(v60 - 1) = v45;
            *v60 = v63;
            v60 += 2;
            --v61;
          }

          while (v61);
        }

        goto LABEL_61;
      }

      if (v44 != 2)
      {
        goto LABEL_47;
      }

      if (v43 >= 1)
      {
        v46 = (v35 + v36);
        v47 = *(a4 + 4 * v42);
        v48 = (v39 + 2 * v34);
        do
        {
          v49 = *v46++;
          *(v48 - 3) = v45;
          *(v48 - 2) = v49;
          *(v48 - 1) = v45;
          *v48 = v49;
          v48 += 4;
          --v47;
        }

        while (v47);
      }

LABEL_61:
      v36 += v43;
      v34 += v43 * v44;
      if (++v42 == v24)
      {
        return v5;
      }
    }

    if (v44 == 4)
    {
      if (v43 >= 1)
      {
        v64 = (v38 + 2 * v34);
        v65 = *(a4 + 4 * v42);
        v66 = (v35 + v36);
        do
        {
          v67 = *v66++;
          *v64++ = 0x1000100010001 * ((v24 - v42) | (v67 << 8));
          --v65;
        }

        while (v65);
      }

      goto LABEL_61;
    }

    if (v44 == 8)
    {
      if (v43 >= 1)
      {
        v50 = (v37 + 2 * v34);
        v51 = *(a4 + 4 * v42);
        v52 = (v35 + v36);
        do
        {
          v53 = *v52++;
          v54 = 0x1000100010001 * ((v24 - v42) | (v53 << 8));
          *(v50 - 1) = v54;
          *v50 = v54;
          v50 += 2;
          --v51;
        }

        while (v51);
      }

      goto LABEL_61;
    }

LABEL_47:
    if (v43 >= 1)
    {
      v55 = 0;
      v56 = (v41 + 2 * v34);
      do
      {
        if (v44 >= 1)
        {
          v57 = 0;
          v58 = 0x1000100010001 * ((v24 - v42) | (*(v35 + v55 + v36) << 8));
          v59 = v56;
          do
          {
            *(v59 - 2) = v58;
            *(v59 - 1) = v58;
            *v59 = v58;
            v59[1] = v58;
            v59 += 4;
            v57 += 16;
          }

          while (v57 < v44);
        }

        ++v55;
        v56 = (v56 + 2 * v44);
      }

      while (v55 != v43);
    }

    goto LABEL_61;
  }

  return -44;
}

unint64_t sub_243945030(_DWORD *a1, char *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 < 0x84C)
  {
    return -1;
  }

  v82[12] = v5;
  v82[13] = v6;
  v10 = *a1;
  v80 = a1 + 1;
  *(a4 + 704) = 0u;
  *(a4 + 720) = 0u;
  *(a4 + 672) = 0u;
  *(a4 + 688) = 0u;
  *(a4 + 640) = 0u;
  *(a4 + 656) = 0u;
  *(a4 + 624) = 0u;
  if (v10 > 0xCu)
  {
    return -44;
  }

  v82[0] = 0;
  result = sub_243901C74((a4 + 992), 0x100uLL, a4 + 624, v82, v82 + 1, a2, a3, (a4 + 1248), 0x36CuLL);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v11 = HIDWORD(v82[0]);
    if (HIDWORD(v82[0]) > v10)
    {
      return -44;
    }

    v57 = result;
    v64 = a4 + 676;
    v12 = (a4 + 680);
    v14 = HIDWORD(v82[0]) < 0xC && v10 == 12;
    v65 = HIDWORD(v82[0]) + 1;
    v15 = -1;
    v16 = HIDWORD(v82[0]);
    do
    {
      v17 = *(a4 + 624 + 4 * v16--);
      ++v15;
    }

    while (!v17);
    if (v14)
    {
      v18 = 11;
    }

    else
    {
      v18 = v10;
    }

    v19 = v16 + 2;
    if (v16 >= 0xFFFFFFFE)
    {
      v23 = 0;
    }

    else
    {
      v20 = 0;
      v21 = (a4 + 628);
      v22 = v19 - 1;
      do
      {
        v23 = *v21 + v20;
        v21[14] = v20;
        ++v21;
        v20 = v23;
        --v22;
      }

      while (v22);
    }

    *v12 = v23;
    v12[v19] = v23;
    v24 = LODWORD(v82[0]);
    if (LODWORD(v82[0]))
    {
      v25 = 0;
      do
      {
        v26 = *(a4 + 992 + v25);
        v27 = v12[v26];
        v12[v26] = v27 + 1;
        *(a4 + 736 + v27) = v25++;
      }

      while (v24 != v25);
    }

    *v12 = 0;
    if (v19 >= 2)
    {
      v28 = 0;
      v29 = v18 - v11;
      v30 = v19 - 1;
      v31 = a4;
      do
      {
        *(v31 + 4) = v28;
        v31 += 4;
        v28 += *(v31 + 624) << v29++;
        --v30;
      }

      while (v30);
    }

    v76 = v16 + 1;
    v32 = v18 - v15;
    v63 = v15 + 1;
    if (v15 + 1 < (v18 - v15))
    {
      v33 = v15 + 1;
      v34 = 13 * v33;
      do
      {
        if (v19 >= 2)
        {
          v35 = v19 - 1;
          v36 = (a4 + 4);
          do
          {
            v36[v34] = *v36 >> v33;
            ++v36;
            --v35;
          }

          while (v35);
        }

        ++v33;
        v34 += 13;
      }

      while (v32 != v33);
    }

    v58 = v10;
    v61 = a4;
    v59 = a1;
    if (v76 >= 1)
    {
      v37 = a4 + 736;
      v60 = v65 - v18;
      v62 = a1 + 5;
      v71 = (2 * v11) | 1;
      LODWORD(v38) = v71 - v18;
      v39 = 1;
      v66 = v19;
      while (1)
      {
        v69 = v38 - 1;
        v70 = v11;
        v38 = v38 <= 1 ? 1 : v38;
        v40 = *(v64 + 4 * v39);
        v68 = v39 + 1;
        v41 = *(v64 + 4 * (v39 + 1));
        v42 = v65 - v39;
        v43 = v18 - (v65 - v39);
        if (v43 >= v63)
        {
          break;
        }

        sub_2439464F4(&v80[*(v61 + 4 * v39)], (v37 + v40), (v37 + v41), v42, v18, 0, 1);
LABEL_60:
        v11 = v70 - 1;
        --v71;
        v39 = v68;
        LODWORD(v38) = v69;
        if (v68 == v66)
        {
          goto LABEL_61;
        }
      }

      if (v40 == v41)
      {
        goto LABEL_60;
      }

      v44 = 52 * v11;
      v75 = v61 + 4 * v38;
      v74 = v71 - v38;
      v73 = v66 - v38;
      v45 = 1 << v43;
      LODWORD(v38) = v42 + v60;
      v77 = v42 + v60;
      if ((v42 + v60) <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v38;
      }

      v81 = v38;
      v46 = *(v61 + 4 * v39);
      v67 = v61 + 52 * v42;
      v72 = (v42 << 16) + 0x1000000;
      v79 = *(v64 + 4 * (v39 + 1));
      v78 = 1 << v43;
      while (1)
      {
        v47 = *(v37 + v40);
        v48 = &v80[v46];
        if (v77 >= 2)
        {
          v49 = v72 | v47 | ((v72 | v47) << 32);
          if (v45 == 2)
          {
            v50 = &v80[v46];
          }

          else
          {
            if (v45 != 4)
            {
              v51 = *(v67 + 4 * v81);
              if (v51 >= 1)
              {
                v52 = 0;
                v53 = &v62[v46];
                do
                {
                  *(v53 - 2) = v49;
                  *(v53 - 1) = v49;
                  *v53 = v49;
                  v53[1] = v49;
                  v53 += 4;
                  v52 += 8;
                }

                while (v52 < v51);
              }

              goto LABEL_56;
            }

            *v48 = v49;
            v50 = v48 + 1;
          }

          *v50 = v49;
        }

LABEL_56:
        if (v81 <= v76)
        {
          v54 = v73;
          v55 = v74;
          v56 = v75;
          do
          {
            sub_2439464F4(v48 + 4 * *(v56 + v44), (v37 + *(v56 + 676)), (v37 + *(v56 + 680)), v55, v18, v47, 2);
            v56 += 4;
            --v55;
            --v54;
          }

          while (v54);
        }

        v45 = v78;
        v46 += v78;
        if (v79 == ++v40)
        {
          goto LABEL_60;
        }
      }
    }

LABEL_61:
    *v59 = v58;
    v59[1] = 1;
    v59[2] = v18;
    v59[3] = HIBYTE(v58);
    return v57;
  }

  return result;
}

uint64_t sub_2439454DC(char *a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, int *a5)
{
  if (!a4)
  {
    return -72;
  }

  v5 = a4 - 8;
  if (a4 < 8)
  {
    v6 = *a3;
    if (a4 > 4)
    {
      if (a4 != 5)
      {
        if (a4 != 6)
        {
          v6 |= a3[6] << 48;
        }

        v6 += a3[5] << 40;
      }

      v6 += a3[4] << 32;
    }

    else
    {
      if (a4 == 2)
      {
LABEL_24:
        v6 += a3[1] << 8;
        goto LABEL_25;
      }

      if (a4 == 3)
      {
LABEL_23:
        v6 += a3[2] << 16;
        goto LABEL_24;
      }

      if (a4 != 4)
      {
LABEL_25:
        if (!a3[a4 - 1])
        {
          return -20;
        }

        v5 = 0;
        v7 = __clz(a3[a4 - 1]) - 8 * a4 + 41;
        v8 = &a1[a2];
        v9 = a5 + 1;
        v10 = *a5;
        v11 = HIWORD(*a5);
        if (a2 < 8)
        {
          goto LABEL_57;
        }

        goto LABEL_27;
      }
    }

    v6 += a3[3] << 24;
    goto LABEL_23;
  }

  if (!a3[a4 - 1])
  {
    return -1;
  }

  if (a4 <= 0xFFFFFFFFFFFFFF88)
  {
    v6 = *&a3[v5];
    v7 = 8 - (__clz(a3[a4 - 1]) ^ 0x1F);
    v8 = &a1[a2];
    v9 = a5 + 1;
    v10 = *a5;
    v11 = HIWORD(*a5);
    if (a2 <= 7)
    {
      if (a4 >= 16)
      {
        LODWORD(v12) = v7 >> 3;
        v7 &= 7u;
      }

      else
      {
        if (a4 == 8)
        {
LABEL_57:
          if ((v8 - a1) >= 2)
          {
            v48 = (v8 - 2);
            v49 = -v11 & 0x3F;
            while (v7 <= 0x40)
            {
              if (v5 >= 8)
              {
                v52 = v7 >> 3;
                v7 &= 7u;
                v51 = 1;
              }

              else
              {
                if (!v5)
                {
                  break;
                }

                v50 = &a3[v5 - (v7 >> 3)];
                v51 = v50 >= a3;
                v52 = v50 < a3 ? v5 : v7 >> 3;
                v7 -= 8 * v52;
              }

              v5 -= v52;
              v6 = *&a3[v5];
              if (a1 > v48 || !v51)
              {
                break;
              }

              v53 = &v9[(v6 << v7) >> v49];
              *a1 = *v53;
              v7 += *(v53 + 2);
              a1 += *(v53 + 3);
            }

            while (a1 <= v48)
            {
              v54 = &v9[(v6 << v7) >> v49];
              *a1 = *v54;
              v7 += *(v54 + 2);
              a1 += *(v54 + 3);
            }
          }

          if (a1 < v8)
          {
            v55 = &v9[(v6 << v7) >> -v11];
            *a1 = *v55;
            if (v55[3] == 1)
            {
              v7 += v55[2];
            }

            else if (v7 <= 0x3F)
            {
              v56 = v7 + v55[2];
              if (v56 >= 0x40)
              {
                v7 = 64;
              }

              else
              {
                v7 = v56;
              }
            }
          }

          if (v7 == 64 && v5 == 0)
          {
            return a2;
          }

          else
          {
            return -20;
          }
        }

        v12 = v7 >> 3;
        if (&a3[v5 - v12] < a3)
        {
          LODWORD(v12) = a4 - 8;
        }

        v7 -= 8 * v12;
      }

      v5 -= v12;
      v6 = *&a3[v5];
      goto LABEL_57;
    }

LABEL_27:
    v13 = v10 & 0xFC0000;
    v14 = -v11 & 0x3F;
    v15 = &a1[a2];
    v16 = a5 + 1;
    if (v13 >= 0xC0000)
    {
      v34 = (v15 - 7);
      do
      {
        if (v5 >= 8)
        {
          v37 = v7 >> 3;
          v7 &= 7u;
          v36 = 1;
        }

        else
        {
          if (!v5)
          {
            goto LABEL_57;
          }

          v35 = &a3[v5 - (v7 >> 3)];
          v36 = v35 >= a3;
          if (v35 < a3)
          {
            v37 = v5;
          }

          else
          {
            v37 = v7 >> 3;
          }

          v7 -= 8 * v37;
        }

        v5 -= v37;
        v6 = *&a3[v5];
        if (a1 >= v34)
        {
          break;
        }

        if (!v36)
        {
          break;
        }

        v38 = &v16[(v6 << v7) >> v14];
        *a1 = *v38;
        v39 = v7 + *(v38 + 2);
        v40 = &a1[*(v38 + 3)];
        v41 = &v16[(v6 << v39) >> v14];
        *v40 = *v41;
        v42 = v39 + *(v41 + 2);
        v43 = &v40[*(v41 + 3)];
        v44 = &v16[(v6 << v42) >> v14];
        *v43 = *v44;
        v45 = v42 + *(v44 + 2);
        v46 = &v43[*(v44 + 3)];
        v47 = &v16[(v6 << v45) >> v14];
        *v46 = *v47;
        v7 = v45 + *(v47 + 2);
        a1 = &v46[*(v47 + 3)];
      }

      while (v7 <= 0x40);
    }

    else
    {
      v17 = (v15 - 9);
      do
      {
        if (v5 >= 8)
        {
          v20 = v7 >> 3;
          v7 &= 7u;
          v19 = 1;
        }

        else
        {
          if (!v5)
          {
            goto LABEL_57;
          }

          v18 = &a3[v5 - (v7 >> 3)];
          v19 = v18 >= a3;
          if (v18 < a3)
          {
            v20 = v5;
          }

          else
          {
            v20 = v7 >> 3;
          }

          v7 -= 8 * v20;
        }

        v5 -= v20;
        v6 = *&a3[v5];
        if (a1 >= v17)
        {
          break;
        }

        if (!v19)
        {
          break;
        }

        v21 = &v16[(v6 << v7) >> v14];
        *a1 = *v21;
        v22 = v7 + *(v21 + 2);
        v23 = &a1[*(v21 + 3)];
        v24 = &v16[(v6 << v22) >> v14];
        *v23 = *v24;
        v25 = v22 + *(v24 + 2);
        v26 = &v23[*(v24 + 3)];
        v27 = &v16[(v6 << v25) >> v14];
        *v26 = *v27;
        v28 = v25 + *(v27 + 2);
        v29 = &v26[*(v27 + 3)];
        v30 = &v16[(v6 << v28) >> v14];
        *v29 = *v30;
        v31 = v28 + *(v30 + 2);
        v32 = &v29[*(v30 + 3)];
        v33 = &v16[(v6 << v31) >> v14];
        *v32 = *v33;
        v7 = v31 + *(v33 + 2);
        a1 = &v32[*(v33 + 3)];
      }

      while (v7 <= 0x40);
    }

    goto LABEL_57;
  }

  return a4;
}

BOOL sub_243945968(unint64_t a1, unint64_t a2)
{
  if (a2 >= a1)
  {
    v2 = 15;
  }

  else
  {
    v2 = (16 * a2 / a1);
  }

  v3 = (&unk_2439901DC + 16 * v2);
  v4 = *v3 + v3[1] * (a1 >> 8);
  LODWORD(v3) = v3[2] + v3[3] * (a1 >> 8);
  return v3 + (v3 >> 5) < v4;
}

unint64_t sub_2439459B4(int *a1, _BYTE *a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  result = sub_243944C7C(a1, a4, a5, a6, a7);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (a5 <= result)
    {
      return -72;
    }

    else
    {

      return sub_243945A64(a2, a3, &a4[result], a5 - result, a1);
    }
  }

  return result;
}

uint64_t sub_243945A54(char *a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, int *a5)
{
  if (*(a5 + 1))
  {
    return sub_2439454DC(a1, a2, a3, a4, a5);
  }

  else
  {
    return sub_243945A64(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_243945A64(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return -72;
  }

  v5 = &a1[a2];
  v6 = a5 + 4;
  v7 = *(a5 + 2);
  v8 = a4 - 8;
  if (a4 < 8)
  {
    v10 = *a3;
    if (a4 > 4)
    {
      if (a4 != 5)
      {
        if (a4 != 6)
        {
          v10 |= a3[6] << 48;
        }

        v10 += a3[5] << 40;
      }

      v10 += a3[4] << 32;
    }

    else
    {
      if (a4 == 2)
      {
LABEL_24:
        v10 += a3[1] << 8;
LABEL_25:
        if (!a3[a4 - 1])
        {
          return -20;
        }

        v11 = __clz(a3[a4 - 1]) - 8 * a4 + 41;
        if (a2 < 4)
        {
          v9 = a3;
          goto LABEL_45;
        }

        v8 = 0;
        v9 = a3;
LABEL_28:
        v14 = -v7 & 0x3F;
        v15 = a1;
        while (1)
        {
          if (v8 >= 8)
          {
            LODWORD(v16) = v11 >> 3;
            v11 &= 7u;
            v18 = 1;
          }

          else
          {
            if (!v8)
            {
              break;
            }

            v16 = v11 >> 3;
            v17 = &v9[-v16];
            v18 = v17 >= a3;
            if (v17 < a3)
            {
              LODWORD(v16) = v8;
            }

            v11 -= 8 * v16;
          }

          v8 -= v16;
          v9 = &a3[v8];
          v10 = *&a3[v8];
          if (v15 >= v5 - 3 || !v18)
          {
            break;
          }

          v19 = (v6 + 2 * ((v10 << v11) >> v14));
          v20 = v11 + *v19;
          *v15 = v19[1];
          v21 = (v6 + 2 * ((v10 << v20) >> v14));
          v22 = v20 + *v21;
          v15[1] = v21[1];
          v23 = (v6 + 2 * ((v10 << v22) >> v14));
          v24 = v22 + *v23;
          v15[2] = v23[1];
          v25 = (v6 + 2 * ((v10 << v24) >> v14));
          v26 = v25[1];
          v11 = v24 + *v25;
          v12 = v15 + 4;
          v15[3] = v26;
          v15 += 4;
          if (v11 > 0x40)
          {
            goto LABEL_46;
          }
        }

        v12 = v15;
        goto LABEL_46;
      }

      if (a4 == 3)
      {
LABEL_23:
        v10 += a3[2] << 16;
        goto LABEL_24;
      }

      if (a4 != 4)
      {
        goto LABEL_25;
      }
    }

    v10 += a3[3] << 24;
    goto LABEL_23;
  }

  if (!a3[a4 - 1])
  {
    return -1;
  }

  if (a4 <= 0xFFFFFFFFFFFFFF88)
  {
    v9 = &a3[v8];
    v10 = *&a3[v8];
    v11 = 8 - (__clz(a3[a4 - 1]) ^ 0x1F);
    if (a2 <= 3)
    {
      if (a4 >= 16)
      {
        LODWORD(v13) = v11 >> 3;
        v11 &= 7u;
      }

      else
      {
        v12 = a1;
        if (!v8)
        {
LABEL_46:
          if (v12 < v5)
          {
            v27 = -v7 & 0x3F;
            v28 = &a1[a2] - v12;
            do
            {
              v29 = (v6 + 2 * ((v10 << v11) >> v27));
              v11 += *v29;
              *v12++ = v29[1];
              --v28;
            }

            while (v28);
          }

          if (v11 == 64 && v9 == a3)
          {
            return a2;
          }

          else
          {
            return -20;
          }
        }

        v13 = v11 >> 3;
        if (&v9[-v13] < a3)
        {
          LODWORD(v13) = v8;
        }

        v11 -= 8 * v13;
      }

      v9 -= v13;
      v10 = *v9;
LABEL_45:
      v12 = a1;
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  return a4;
}

unint64_t sub_243945CE0(char *a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unsigned int *a5, char a6)
{
  if (*(a5 + 1))
  {
    return sub_243945CF0(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return sub_2439460C8(a1, a2, a3, a4, a5, a6);
  }
}

unint64_t sub_243945CF0(char *a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unsigned int *a5, char a6)
{
  if ((a6 & 0x20) != 0)
  {
    goto LABEL_53;
  }

  v51 = 0;
  memset(v50, 0, sizeof(v50));
  memset(v49, 0, sizeof(v49));
  memset(v48, 0, sizeof(v48));
  result = sub_2439480D4(v48, a1, a2, a3, a4, a5);
  if (result - 1 <= 0xFFFFFFFFFFFFFF87)
  {
    v12 = a5 + 1;
    sub_243947E84(v48);
    v13 = 0;
    v14 = (a2 + 3) >> 2;
    v15 = a1;
    while (1)
    {
      v16 = (&a1[a2] - v15);
      v15 += v14;
      if (v14 > v16)
      {
        v15 = &a1[a2];
      }

      v17 = *(v49 + v13);
      if (v17 > v15)
      {
        return -20;
      }

      v18 = *(v48 + v13);
      if (v18 < *(&v50[3] + v13 + 1) - 8)
      {
        return -20;
      }

      v19 = *v18;
      v20 = __clz(__rbit64(*(v50 + v13)));
      v21 = *(&v50[3] + 1);
      v22 = *(&v50[3] + 1) + 8;
      v23 = &v15[-v17];
      if (&v15[-v17] < 8)
      {
        break;
      }

      v24 = *(v49 + v13);
      do
      {
        if (v18 >= v22)
        {
          LODWORD(v25) = v20 >> 3;
          LODWORD(v20) = v20 & 7;
          v26 = 1;
        }

        else
        {
          if (v18 == v21)
          {
            break;
          }

          v25 = v20 >> 3;
          v26 = (v18 - v25) >= v21;
          if ((v18 - v25) < v21)
          {
            LODWORD(v25) = v18 - v21;
          }

          LODWORD(v20) = v20 - 8 * v25;
        }

        v18 = (v18 - v25);
        v19 = *v18;
        if (v24 >= v15 - 9)
        {
          break;
        }

        if (!v26)
        {
          break;
        }

        v27 = &v12[(v19 << v20) >> 53];
        *v24 = *v27;
        v28 = v20 + *(v27 + 2);
        v29 = &v24[*(v27 + 3)];
        v30 = &v12[(v19 << v28) >> 53];
        *v29 = *v30;
        v31 = v28 + *(v30 + 2);
        v32 = &v29[*(v30 + 3)];
        v33 = &v12[(v19 << v31) >> 53];
        *v32 = *v33;
        v34 = v31 + *(v33 + 2);
        v35 = &v32[*(v33 + 3)];
        v36 = &v12[(v19 << v34) >> 53];
        *v35 = *v36;
        v37 = v34 + *(v36 + 2);
        v38 = &v35[*(v36 + 3)];
        v39 = &v12[(v19 << v37) >> 53];
        *v38 = *v39;
        LODWORD(v20) = v37 + *(v39 + 2);
        v24 = &v38[*(v39 + 3)];
      }

      while (v20 <= 0x40);
      v23 = v15 - v24;
      v41 = v20;
LABEL_30:
      if (v23 >= 2)
      {
        v42 = (v15 - 2);
        while (v41 <= 0x40)
        {
          if (v18 >= v22)
          {
            LODWORD(v43) = v41 >> 3;
            v41 &= 7u;
            v44 = 1;
          }

          else
          {
            if (v18 == v21)
            {
              break;
            }

            v43 = v41 >> 3;
            v44 = (v18 - v43) >= v21;
            if ((v18 - v43) < v21)
            {
              LODWORD(v43) = v18 - v21;
            }

            v41 -= 8 * v43;
          }

          v18 = (v18 - v43);
          v19 = *v18;
          if (v24 > v42 || !v44)
          {
            break;
          }

          v45 = &v12[(v19 << v41) >> 53];
          *v24 = *v45;
          v41 += *(v45 + 2);
          v24 += *(v45 + 3);
        }

        while (v24 <= v42)
        {
          v46 = &v12[(v19 << v41) >> 53];
          *v24 = *v46;
          LOBYTE(v41) = v41 + *(v46 + 2);
          v24 += *(v46 + 3);
        }
      }

      if (v24 < v15)
      {
        *v24++ = *(v12 + (((v19 << v41) >> 51) & 0x1FFC));
      }

      v47 = &v24[*(v49 + v13) - v17];
      *(v49 + v13) = v47;
      if (v47 != v15)
      {
        return -20;
      }

      if (++v13 == 4)
      {
        result = a2;
        goto LABEL_52;
      }
    }

    if (v18 >= v22)
    {
      v40 = v20 >> 3;
      v41 = v20 & 7;
    }

    else
    {
      if (v18 == *(&v50[3] + 1))
      {
        v41 = v20;
        goto LABEL_28;
      }

      v40 = v20 >> 3;
      if (v18 - v40 >= *(&v50[3] + 1))
      {
        v40 = v40;
      }

      else
      {
        v40 = (v18 - DWORD2(v50[3]));
      }

      v41 = v20 - 8 * v40;
    }

    v18 = (v18 - v40);
    v19 = *v18;
LABEL_28:
    v24 = *(v49 + v13);
    goto LABEL_30;
  }

LABEL_52:
  if (!result)
  {
LABEL_53:

    return sub_243946658(a1, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_2439460C8(_BYTE *a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 0x20) == 0)
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    memset(v41, 0, sizeof(v41));
    memset(v40, 0, sizeof(v40));
    result = sub_2439480D4(v40, a1, a2, a3, a4, a5);
    if (result - 1 <= 0xFFFFFFFFFFFFFF87)
    {
      v12 = a5 + 4;
      sub_2439490C8(v40);
      v13 = 0;
      v14 = (a2 + 3) >> 2;
      v15 = a1;
      while (1)
      {
        v16 = (&a1[a2] - v15);
        v15 += v14;
        if (v14 > v16)
        {
          v15 = &a1[a2];
        }

        v17 = *(v41 + v13);
        if (v17 > v15)
        {
          return -20;
        }

        v18 = *(v40 + v13);
        if (v18 < *(&v42[3] + v13 + 1) - 8)
        {
          return -20;
        }

        v19 = *v18;
        v20 = __clz(__rbit64(*(v42 + v13)));
        v21 = *(&v42[3] + 1);
        v22 = *(&v42[3] + 1) + 8;
        v23 = &v15[-v17];
        if (&v15[-v17] < 4)
        {
          break;
        }

        v24 = *(v41 + v13);
        while (1)
        {
          if (v18 >= v22)
          {
            LODWORD(v25) = v20 >> 3;
            LODWORD(v20) = v20 & 7;
            v26 = 1;
          }

          else
          {
            if (v18 == v21)
            {
              break;
            }

            v25 = v20 >> 3;
            v26 = (v18 - v25) >= v21;
            if ((v18 - v25) < v21)
            {
              LODWORD(v25) = v18 - v21;
            }

            LODWORD(v20) = v20 - 8 * v25;
          }

          v18 = (v18 - v25);
          v19 = *v18;
          if (v24 >= v15 - 3 || !v26)
          {
            break;
          }

          v27 = (v12 + 2 * ((v19 << v20) >> 53));
          v28 = v20 + *v27;
          *v24 = v27[1];
          v29 = (v12 + 2 * ((v19 << v28) >> 53));
          v30 = v28 + *v29;
          v24[1] = v29[1];
          v31 = (v12 + 2 * ((v19 << v30) >> 53));
          v32 = v30 + *v31;
          v24[2] = v31[1];
          v33 = (v12 + 2 * ((v19 << v32) >> 53));
          v34 = v33[1];
          LODWORD(v20) = v32 + *v33;
          v35 = v24 + 4;
          v24[3] = v34;
          v24 += 4;
          if (v20 > 0x40)
          {
            goto LABEL_30;
          }
        }

        v35 = v24;
LABEL_30:
        if (v35 < v15)
        {
          v37 = v15 - v35;
          do
          {
            v38 = (v12 + 2 * ((v19 << v20) >> 53));
            LODWORD(v20) = v20 + *v38;
            *v35++ = v38[1];
            --v37;
          }

          while (v37);
          v17 = *(v41 + v13);
        }

        v39 = &v23[v17];
        *(v41 + v13) = v39;
        if (v39 != v15)
        {
          return -20;
        }

        if (++v13 == 4)
        {
          result = a2;
          goto LABEL_37;
        }
      }

      if (v18 >= v22)
      {
        v36 = v20 >> 3;
        LODWORD(v20) = v20 & 7;
      }

      else
      {
        if (v18 == *(&v42[3] + 1))
        {
LABEL_28:
          v35 = *(v41 + v13);
          goto LABEL_30;
        }

        v36 = v20 >> 3;
        if (v18 - v36 >= *(&v42[3] + 1))
        {
          v36 = v36;
        }

        else
        {
          v36 = (v18 - DWORD2(v42[3]));
        }

        LODWORD(v20) = v20 - 8 * v36;
      }

      v19 = *(v18 - v36);
      goto LABEL_28;
    }

LABEL_37:
    if (result)
    {
      return result;
    }
  }

  return sub_243948258(a1, a2, a3, a4, a5);
}

unint64_t sub_2439463A4(unsigned int *a1, char *a2, unint64_t a3, char *a4, unint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  if (!a3)
  {
    return -70;
  }

  if (!a5)
  {
    return -20;
  }

  if (sub_243945968(a3, a5))
  {
    result = sub_243945030(a1, a4, a5, a6, a7);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    if (a5 > result)
    {

      return sub_243945CF0(a2, a3, &a4[result], a5 - result, a1, a8);
    }

    return -72;
  }

  result = sub_243944C7C(a1, a4, a5, a6, a7);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  if (a5 <= result)
  {
    return -72;
  }

  return sub_2439460C8(a2, a3, &a4[result], a5 - result, a1, a8);
}

uint64_t sub_2439464F4(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, int a4, char a5, int a6, int a7)
{
  v7 = (1 << (a5 - a4));
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      for (; a2 != a3; result += 16)
      {
        v23 = *a2++;
        v22 = v23;
        v24 = a6 + (v23 << 8);
        if (a7 != 1)
        {
          v22 = v24;
        }

        v25 = ((a7 << 24) + (a4 << 16) + v22) | (((a7 << 24) + (a4 << 16) + v22) << 32);
        *result = v25;
        *(result + 8) = v25;
      }
    }

    else
    {
      if (v7 != 8)
      {
LABEL_16:
        while (a2 != a3)
        {
          v16 = *a2;
          if (a7 != 1)
          {
            v16 = a6 + (v16 << 8);
          }

          v17 = ((a7 << 24) + (a4 << 16) + v16) | (((a7 << 24) + (a4 << 16) + v16) << 32);
          v18 = result + 4 * v7;
          do
          {
            *result = v17;
            *(result + 8) = v17;
            *(result + 16) = v17;
            *(result + 24) = v17;
            result += 32;
          }

          while (result != v18);
          ++a2;
        }

        return result;
      }

      for (; a2 != a3; result += 32)
      {
        v13 = *a2++;
        v12 = v13;
        v14 = a6 + (v13 << 8);
        if (a7 != 1)
        {
          v12 = v14;
        }

        v15 = ((a7 << 24) + (a4 << 16) + v12) | (((a7 << 24) + (a4 << 16) + v12) << 32);
        *result = v15;
        *(result + 8) = v15;
        *(result + 16) = v15;
        *(result + 24) = v15;
      }
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        for (; a2 != a3; result += 8)
        {
          v9 = *a2++;
          v8 = v9;
          v10 = a6 + (v9 << 8);
          if (a7 != 1)
          {
            v8 = v10;
          }

          v11 = (a7 << 24) + (a4 << 16) + v8;
          *result = v11;
          *(result + 4) = v11;
        }

        return result;
      }

      goto LABEL_16;
    }

    for (; a2 != a3; result += 4)
    {
      v20 = *a2++;
      v19 = v20;
      v21 = a6 + (v20 << 8);
      if (a7 != 1)
      {
        v19 = v21;
      }

      *result = (a7 << 24) + (a4 << 16) + v19;
    }
  }

  return result;
}

unint64_t sub_243946658(char *a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, unsigned int *a5)
{
  if (a4 < 0xA)
  {
    return -20;
  }

  v304 = v5;
  v305 = v6;
  v10 = a5 + 1;
  v11 = *a5;
  v303 = 0;
  v301 = 0u;
  v302 = 0u;
  result = -20;
  if (a2 >= 6)
  {
    v13 = &a1[a2];
    v14 = *a3;
    v15 = a3[1];
    v16 = a3[2];
    v17 = v14 + v15 + v16 + 6;
    v18 = &a1[(a2 + 3) >> 2];
    v19 = &v18[(a2 + 3) >> 2];
    if (a4 >= v17 && &v19[(a2 + 3) >> 2] <= v13)
    {
      if (!*a3)
      {
        return -72;
      }

      v21 = a3 + v14 + 6;
      if (v14 >= 8)
      {
        if (!*(v21 - 1))
        {
          return -1;
        }

        v22 = (v21 - 8);
        v23 = *(v21 - 1);
        v24 = 8 - (__clz(*(v21 - 1)) ^ 0x1F);
        if (!a3[1])
        {
          return -72;
        }

        goto LABEL_28;
      }

      v23 = *(a3 + 6);
      if (*a3 > 4u)
      {
        if (v14 != 5)
        {
          if (v14 != 6)
          {
            v23 |= *(a3 + 12) << 48;
          }

          v23 += *(a3 + 11) << 40;
        }

        v23 += *(a3 + 10) << 32;
      }

      else
      {
        if (v14 == 2)
        {
LABEL_25:
          v23 += *(a3 + 7) << 8;
          goto LABEL_26;
        }

        if (v14 == 3)
        {
LABEL_24:
          v23 += *(a3 + 8) << 16;
          goto LABEL_25;
        }

        if (v14 != 4)
        {
LABEL_26:
          if (!*(v21 - 1))
          {
            return result;
          }

          v24 = __clz(*(v21 - 1)) - 8 * v14 + 41;
          v22 = a3 + 3;
          if (!a3[1])
          {
            return -72;
          }

LABEL_28:
          v25 = &v21[v15];
          if (v15 >= 8)
          {
            if (!*(v25 - 1))
            {
              return -1;
            }

            v26 = *(v25 - 1);
            v293 = v25 - 8;
            v27 = 8 - (__clz(*(v25 - 1)) ^ 0x1F);
LABEL_46:
            if (a3[2])
            {
              v294 = &v19[(a2 + 3) >> 2];
              v28 = &v25[v16];
              if (v16 >= 8)
              {
                if (*(v28 - 1))
                {
                  v288 = v22;
                  v289 = &v21[v15];
                  v290 = &a1[a2];
                  v291 = a3 + v14 + 6;
                  v292 = a3 + 3;
                  v287 = v28 - 8;
                  v299 = *(v28 - 1);
                  v300 = 8 - (__clz(*(v28 - 1)) ^ 0x1F);
                  goto LABEL_68;
                }

                return -1;
              }

              v29 = *v25;
              if (a3[2] > 4u)
              {
                if (v16 != 5)
                {
                  if (v16 != 6)
                  {
                    v29 |= v25[6] << 48;
                  }

                  v29 += v25[5] << 40;
                }

                v29 += v25[4] << 32;
              }

              else
              {
                if (v16 == 2)
                {
LABEL_65:
                  v29 += v25[1] << 8;
LABEL_66:
                  if (!*(v28 - 1))
                  {
                    return result;
                  }

                  v288 = v22;
                  v289 = &v21[v15];
                  v290 = &a1[a2];
                  v291 = v21;
                  v292 = a3 + 3;
                  v299 = v29;
                  v300 = __clz(*(v28 - 1)) - 8 * v16 + 41;
                  v287 = &v21[v15];
LABEL_68:
                  result = sub_243902854(&v301, v28, a4 - v17);
                  v31 = v291;
                  v30 = v292;
                  v33 = v289;
                  v32 = v290;
                  v34 = v288;
                  v36 = v293;
                  v35 = v294;
                  v37 = &v18[(a2 + 3) >> 2];
                  if (result > 0xFFFFFFFFFFFFFF88)
                  {
                    return result;
                  }

                  v38 = HIWORD(v11);
                  v296 = a3 + 7;
                  v297 = (v291 + 8);
                  v298 = (v289 + 8);
                  if (&v290[-v294] < 8)
                  {
                    v47 = v294;
                    v44 = &v18[(a2 + 3) >> 2];
                    v46 = &a1[(a2 + 3) >> 2];
                    v39 = v287;
                  }

                  else
                  {
                    v39 = v287;
                    if (v294 >= (v290 - 7))
                    {
                      v47 = v294;
                      v44 = &v18[(a2 + 3) >> 2];
                      v46 = &a1[(a2 + 3) >> 2];
                    }

                    else
                    {
                      v40 = v288;
                      v41 = v301;
                      v42 = -v38 & 0x3F;
                      v43 = DWORD2(v301);
                      v295 = v303;
                      v44 = &v18[(a2 + 3) >> 2];
                      v45 = v302;
                      v46 = &a1[(a2 + 3) >> 2];
                      v47 = v294;
                      do
                      {
                        v48 = v39;
                        v49 = v36;
                        v50 = &v10[(v23 << v24) >> v42];
                        *a1 = *v50;
                        v51 = v24 + *(v50 + 2);
                        v52 = &a1[*(v50 + 3)];
                        v53 = &v10[(v26 << v27) >> v42];
                        *v46 = *v53;
                        v54 = v27 + *(v53 + 2);
                        v55 = &v46[*(v53 + 3)];
                        v56 = &v10[(v299 << v300) >> v42];
                        *v44 = *v56;
                        v57 = v300 + *(v56 + 2);
                        v58 = &v44[*(v56 + 3)];
                        v59 = &v10[(v41 << v43) >> v42];
                        *v47 = *v59;
                        v60 = v43 + *(v59 + 2);
                        v61 = (v47 + *(v59 + 3));
                        v62 = &v10[(v23 << v51) >> v42];
                        *v52 = *v62;
                        v63 = v51 + *(v62 + 2);
                        v64 = *(v62 + 3);
                        v65 = &v10[(v26 << v54) >> v42];
                        *v55 = *v65;
                        v66 = v54 + *(v65 + 2);
                        v67 = &v55[*(v65 + 3)];
                        v68 = &v10[(v299 << v57) >> v42];
                        *v58 = *v68;
                        v69 = v57 + *(v68 + 2);
                        v70 = &v58[*(v68 + 3)];
                        v71 = &v10[(v41 << v60) >> v42];
                        *v61 = *v71;
                        v72 = v60 + *(v71 + 2);
                        v73 = (v61 + *(v71 + 3));
                        v74 = &v52[v64];
                        v75 = &v10[(v23 << v63) >> v42];
                        *v74 = *v75;
                        v76 = v63 + *(v75 + 2);
                        v77 = &v74[*(v75 + 3)];
                        v78 = &v10[(v26 << v66) >> v42];
                        *v67 = *v78;
                        v79 = v66 + *(v78 + 2);
                        v80 = &v67[*(v78 + 3)];
                        v81 = &v10[(v299 << v69) >> v42];
                        *v70 = *v81;
                        v82 = v69 + *(v81 + 2);
                        v83 = &v70[*(v81 + 3)];
                        v84 = &v10[(v41 << v72) >> v42];
                        *v73 = *v84;
                        v85 = v72 + *(v84 + 2);
                        v86 = (v73 + *(v84 + 3));
                        v87 = &v10[(v23 << v76) >> v42];
                        *v77 = *v87;
                        v24 = v76 + *(v87 + 2);
                        v88 = *(v87 + 3);
                        v89 = &v10[(v26 << v79) >> v42];
                        *v80 = *v89;
                        v90 = *(v89 + 2);
                        v91 = *(v89 + 3);
                        v92 = &v10[(v299 << v82) >> v42];
                        *v83 = *v92;
                        v93 = *(v92 + 2);
                        v94 = *(v92 + 3);
                        v95 = &v10[(v41 << v85) >> v42];
                        *v86 = *v95;
                        if (v40 < v296)
                        {
                          v96 = 3;
                        }

                        else
                        {
                          v96 = 0;
                          v97 = (v40 - (v24 >> 3));
                          v24 &= 7u;
                          v40 = v97;
                          v23 = *v97;
                        }

                        v27 = v79 + v90;
                        v98 = *(v95 + 2);
                        v99 = *(v95 + 3);
                        v36 = v49;
                        if (v49 < v297)
                        {
                          v100 = 3;
                        }

                        else
                        {
                          v100 = 0;
                          v36 = &v49[-(v27 >> 3)];
                          v27 &= 7u;
                          v26 = *v36;
                        }

                        v39 = v48;
                        v101 = v82 + v93;
                        if (v39 < v298)
                        {
                          v300 = v82 + v93;
                          v102 = 3;
                          v103 = v299;
                        }

                        else
                        {
                          v102 = 0;
                          v39 -= v101 >> 3;
                          v300 = v101 & 7;
                          v103 = *v39;
                        }

                        v43 = v85 + v98;
                        if (v45 < v295)
                        {
                          v104 = 3;
                        }

                        else
                        {
                          v104 = 0;
                          v45 = (v45 - (v43 >> 3));
                          v43 &= 7u;
                          v41 = *v45;
                        }

                        v299 = v103;
                        a1 = &v77[v88];
                        v46 = &v80[v91];
                        v44 = &v83[v94];
                        v47 = (v86 + v99);
                        v105 = v100 | v96 | v102 | v104;
                      }

                      while (v86 + v99 < v290 - 7 && v105 == 0);
                      *&v302 = v45;
                      *&v301 = v41;
                      DWORD2(v301) = v43;
                      v31 = v291;
                      v30 = v292;
                      v33 = v289;
                      v32 = v290;
                      v34 = v40;
                      v38 = HIWORD(v11);
                      v35 = v294;
                      v37 = &v18[(a2 + 3) >> 2];
                    }
                  }

                  result = -20;
                  if (a1 > v18 || v46 > v37 || v44 > v35)
                  {
                    return result;
                  }

                  v107 = v39;
                  if ((v18 - a1) >= 8)
                  {
                    if (BYTE2(v11) >= 0xCu)
                    {
                      if (v24 <= 0x40)
                      {
                        v126 = -v38 & 0x3F;
                        do
                        {
                          if (v34 >= v296)
                          {
                            LODWORD(v127) = v24 >> 3;
                            v24 &= 7u;
                            v128 = 1;
                          }

                          else
                          {
                            if (v34 == v30)
                            {
                              goto LABEL_129;
                            }

                            v127 = v24 >> 3;
                            v128 = (v34 - v127) >= v30;
                            if ((v34 - v127) < v30)
                            {
                              LODWORD(v127) = v34 - v30;
                            }

                            v37 = &v18[(a2 + 3) >> 2];
                            v24 -= 8 * v127;
                          }

                          v34 = (v34 - v127);
                          v23 = *v34;
                          if (a1 >= v18 - 7)
                          {
                            break;
                          }

                          if (!v128)
                          {
                            break;
                          }

                          v129 = &v10[(v23 << v24) >> v126];
                          *a1 = *v129;
                          v130 = v24 + *(v129 + 2);
                          v131 = &a1[*(v129 + 3)];
                          v132 = &v10[(v23 << v130) >> v126];
                          *v131 = *v132;
                          v133 = v130 + *(v132 + 2);
                          v134 = &v131[*(v132 + 3)];
                          v135 = &v10[(v23 << v133) >> v126];
                          *v134 = *v135;
                          v136 = v133 + *(v135 + 2);
                          v137 = &v134[*(v135 + 3)];
                          v138 = &v10[(v23 << v136) >> v126];
                          *v137 = *v138;
                          v24 = v136 + *(v138 + 2);
                          v139 = *(v138 + 3);
                          v35 = v294;
                          v37 = &v18[(a2 + 3) >> 2];
                          a1 = &v137[v139];
                        }

                        while (v24 <= 0x40);
                      }
                    }

                    else if (v24 <= 0x40)
                    {
                      v108 = -v38 & 0x3F;
                      do
                      {
                        if (v34 >= v296)
                        {
                          LODWORD(v109) = v24 >> 3;
                          v24 &= 7u;
                          v110 = 1;
                        }

                        else
                        {
                          if (v34 == v30)
                          {
                            goto LABEL_129;
                          }

                          v109 = v24 >> 3;
                          v110 = (v34 - v109) >= v30;
                          if ((v34 - v109) < v30)
                          {
                            LODWORD(v109) = v34 - v30;
                          }

                          v37 = &v18[(a2 + 3) >> 2];
                          v24 -= 8 * v109;
                        }

                        v34 = (v34 - v109);
                        v23 = *v34;
                        if (a1 >= v18 - 9)
                        {
                          break;
                        }

                        if (!v110)
                        {
                          break;
                        }

                        v111 = &v10[(v23 << v24) >> v108];
                        *a1 = *v111;
                        v112 = v24 + *(v111 + 2);
                        v113 = &a1[*(v111 + 3)];
                        v114 = &v10[(v23 << v112) >> v108];
                        *v113 = *v114;
                        v115 = v112 + *(v114 + 2);
                        v116 = &v113[*(v114 + 3)];
                        v117 = &v10[(v23 << v115) >> v108];
                        *v116 = *v117;
                        v118 = v115 + *(v117 + 2);
                        v119 = &v116[*(v117 + 3)];
                        v120 = &v10[(v23 << v118) >> v108];
                        *v119 = *v120;
                        v121 = v118 + *(v120 + 2);
                        v122 = &v119[*(v120 + 3)];
                        v123 = &v10[(v23 << v121) >> v108];
                        *v122 = *v123;
                        v24 = v121 + *(v123 + 2);
                        v124 = *(v123 + 3);
                        v35 = v294;
                        v37 = &v18[(a2 + 3) >> 2];
                        a1 = &v122[v124];
                      }

                      while (v24 <= 0x40);
                    }

LABEL_130:
                    if ((v18 - a1) >= 2)
                    {
                      v140 = (v18 - 2);
                      v141 = -v38 & 0x3F;
                      while (v24 <= 0x40)
                      {
                        if (v34 >= v296)
                        {
                          LODWORD(v142) = v24 >> 3;
                          v24 &= 7u;
                          v143 = 1;
                        }

                        else
                        {
                          if (v34 == v30)
                          {
                            break;
                          }

                          v142 = v24 >> 3;
                          v143 = (v34 - v142) >= v30;
                          if ((v34 - v142) < v30)
                          {
                            LODWORD(v142) = v34 - v30;
                          }

                          v37 = &v18[(a2 + 3) >> 2];
                          v24 -= 8 * v142;
                        }

                        v34 = (v34 - v142);
                        v23 = *v34;
                        if (a1 > v140 || !v143)
                        {
                          break;
                        }

                        v144 = &v10[(v23 << v24) >> v141];
                        *a1 = *v144;
                        v24 += *(v144 + 2);
                        a1 += *(v144 + 3);
                      }

                      while (a1 <= v140)
                      {
                        v145 = &v10[(v23 << v24) >> v141];
                        *a1 = *v145;
                        v24 += *(v145 + 2);
                        a1 += *(v145 + 3);
                      }
                    }

                    v146 = v24;
                    if (a1 < v18)
                    {
                      v147 = &v10[(v23 << v24) >> -v38];
                      *a1 = *v147;
                      if (v147[3] == 1)
                      {
                        v146 = v24 + v147[2];
                      }

                      else if (v24 <= 0x3F)
                      {
                        v148 = v24 + v147[2];
                        if (v148 >= 0x40)
                        {
                          v146 = 64;
                        }

                        else
                        {
                          v146 = v148;
                        }
                      }
                    }

                    if (v37 - v46 >= 8)
                    {
                      if (BYTE2(v11) >= 0xCu)
                      {
                        if (v27 <= 0x40)
                        {
                          v167 = v37 - 7;
                          v168 = -v38 & 0x3F;
                          do
                          {
                            if (v36 >= v297)
                            {
                              LODWORD(v169) = v27 >> 3;
                              v27 &= 7u;
                              v170 = 1;
                            }

                            else
                            {
                              if (v36 == v31)
                              {
                                goto LABEL_186;
                              }

                              v169 = v27 >> 3;
                              v170 = &v36[-v169] >= v31;
                              if (&v36[-v169] < v31)
                              {
                                LODWORD(v169) = v36 - v31;
                              }

                              v37 = &v18[(a2 + 3) >> 2];
                              v27 -= 8 * v169;
                            }

                            v36 -= v169;
                            v26 = *v36;
                            if (v46 >= v167)
                            {
                              break;
                            }

                            if (!v170)
                            {
                              break;
                            }

                            v171 = &v10[(v26 << v27) >> v168];
                            *v46 = *v171;
                            v172 = v27 + *(v171 + 2);
                            v173 = &v46[*(v171 + 3)];
                            v174 = &v10[(v26 << v172) >> v168];
                            *v173 = *v174;
                            v175 = v172 + *(v174 + 2);
                            v176 = &v173[*(v174 + 3)];
                            v177 = &v10[(v26 << v175) >> v168];
                            *v176 = *v177;
                            v178 = v175 + *(v177 + 2);
                            v179 = &v176[*(v177 + 3)];
                            v180 = &v10[(v26 << v178) >> v168];
                            *v179 = *v180;
                            v27 = v178 + *(v180 + 2);
                            v37 = &v18[(a2 + 3) >> 2];
                            v46 = &v179[*(v180 + 3)];
                          }

                          while (v27 <= 0x40);
                        }
                      }

                      else if (v27 <= 0x40)
                      {
                        v149 = v37 - 9;
                        v150 = -v38 & 0x3F;
                        do
                        {
                          if (v36 >= v297)
                          {
                            LODWORD(v151) = v27 >> 3;
                            v27 &= 7u;
                            v152 = 1;
                          }

                          else
                          {
                            if (v36 == v31)
                            {
                              goto LABEL_186;
                            }

                            v151 = v27 >> 3;
                            v152 = &v36[-v151] >= v31;
                            if (&v36[-v151] < v31)
                            {
                              LODWORD(v151) = v36 - v31;
                            }

                            v37 = &v18[(a2 + 3) >> 2];
                            v27 -= 8 * v151;
                          }

                          v36 -= v151;
                          v26 = *v36;
                          if (v46 >= v149)
                          {
                            break;
                          }

                          if (!v152)
                          {
                            break;
                          }

                          v153 = &v10[(v26 << v27) >> v150];
                          *v46 = *v153;
                          v154 = v27 + *(v153 + 2);
                          v155 = &v46[*(v153 + 3)];
                          v156 = &v10[(v26 << v154) >> v150];
                          *v155 = *v156;
                          v157 = v154 + *(v156 + 2);
                          v158 = &v155[*(v156 + 3)];
                          v159 = &v10[(v26 << v157) >> v150];
                          *v158 = *v159;
                          v160 = v157 + *(v159 + 2);
                          v161 = &v158[*(v159 + 3)];
                          v162 = &v10[(v26 << v160) >> v150];
                          *v161 = *v162;
                          v163 = v160 + *(v162 + 2);
                          v164 = &v161[*(v162 + 3)];
                          v165 = &v10[(v26 << v163) >> v150];
                          *v164 = *v165;
                          v27 = v163 + *(v165 + 2);
                          v37 = &v18[(a2 + 3) >> 2];
                          v46 = &v164[*(v165 + 3)];
                        }

                        while (v27 <= 0x40);
                      }

LABEL_187:
                      if (v37 - v46 >= 2)
                      {
                        v181 = v37 - 2;
                        v182 = -v38 & 0x3F;
                        while (v27 <= 0x40)
                        {
                          if (v36 >= v297)
                          {
                            LODWORD(v183) = v27 >> 3;
                            v27 &= 7u;
                            v184 = 1;
                          }

                          else
                          {
                            if (v36 == v31)
                            {
                              break;
                            }

                            v183 = v27 >> 3;
                            v184 = &v36[-v183] >= v31;
                            if (&v36[-v183] < v31)
                            {
                              LODWORD(v183) = v36 - v31;
                            }

                            v37 = &v18[(a2 + 3) >> 2];
                            v27 -= 8 * v183;
                          }

                          v36 -= v183;
                          v26 = *v36;
                          if (v46 > v181 || !v184)
                          {
                            break;
                          }

                          v185 = &v10[(v26 << v27) >> v182];
                          *v46 = *v185;
                          v27 += *(v185 + 2);
                          v46 += *(v185 + 3);
                        }

                        while (v46 <= v181)
                        {
                          v186 = &v10[(v26 << v27) >> v182];
                          *v46 = *v186;
                          v27 += *(v186 + 2);
                          v46 += *(v186 + 3);
                        }
                      }

                      v187 = v299;
                      if (v46 < v37)
                      {
                        v188 = &v10[(v26 << v27) >> -v38];
                        *v46 = *v188;
                        if (v188[3] == 1)
                        {
                          v27 += v188[2];
                        }

                        else if (v27 <= 0x3F)
                        {
                          v189 = v27 + v188[2];
                          if (v189 >= 0x40)
                          {
                            v27 = 64;
                          }

                          else
                          {
                            v27 = v189;
                          }
                        }
                      }

                      if (v35 - v44 >= 8)
                      {
                        if (BYTE2(v11) >= 0xCu)
                        {
                          if (v300 > 0x40)
                          {
                            goto LABEL_245;
                          }

                          v211 = -v38 & 0x3F;
                          while (1)
                          {
                            v191 = v187;
                            if (v107 >= v298)
                            {
                              v213 = v300 >> 3;
                              v195 = v300 & 7;
                              v214 = 1;
                            }

                            else
                            {
                              if (v107 == v33)
                              {
LABEL_243:
                                v107 = v33;
                                v187 = v191;
                                goto LABEL_245;
                              }

                              v212 = v300 >> 3;
                              v213 = v107 - v33;
                              v214 = &v107[-v212] >= v33;
                              if (&v107[-v212] >= v33)
                              {
                                v213 = v300 >> 3;
                              }

                              v195 = v300 - 8 * v213;
                            }

                            v107 -= v213;
                            v187 = *v107;
                            if (v44 >= v35 - 7 || !v214)
                            {
                              goto LABEL_242;
                            }

                            v215 = &v10[(v187 << v195) >> v211];
                            *v44 = *v215;
                            v216 = v195 + *(v215 + 2);
                            v217 = &v44[*(v215 + 3)];
                            v218 = &v10[(v187 << v216) >> v211];
                            *v217 = *v218;
                            v219 = v216 + *(v218 + 2);
                            v220 = &v217[*(v218 + 3)];
                            v221 = &v10[(v187 << v219) >> v211];
                            *v220 = *v221;
                            v222 = v219 + *(v221 + 2);
                            v223 = &v220[*(v221 + 3)];
                            v224 = &v10[(v187 << v222) >> v211];
                            *v223 = *v224;
                            v225 = v222 + *(v224 + 2);
                            v44 = &v223[*(v224 + 3)];
                            v300 = v225;
                            if (v225 > 0x40)
                            {
                              goto LABEL_245;
                            }
                          }
                        }

                        if (v300 <= 0x40)
                        {
                          v190 = -v38 & 0x3F;
                          while (1)
                          {
                            v191 = v187;
                            if (v107 >= v298)
                            {
                              v193 = v300 >> 3;
                              v195 = v300 & 7;
                              v194 = 1;
                            }

                            else
                            {
                              if (v107 == v33)
                              {
                                goto LABEL_243;
                              }

                              v192 = v300 >> 3;
                              v193 = v107 - v33;
                              v194 = &v107[-v192] >= v33;
                              if (&v107[-v192] >= v33)
                              {
                                v193 = v300 >> 3;
                              }

                              v195 = v300 - 8 * v193;
                            }

                            v107 -= v193;
                            v187 = *v107;
                            if (v44 >= v35 - 9 || !v194)
                            {
                              break;
                            }

                            v196 = &v10[(v187 << v195) >> v190];
                            *v44 = *v196;
                            v197 = v195 + *(v196 + 2);
                            v198 = &v44[*(v196 + 3)];
                            v199 = &v10[(v187 << v197) >> v190];
                            *v198 = *v199;
                            v200 = v197 + *(v199 + 2);
                            v201 = &v198[*(v199 + 3)];
                            v202 = &v10[(v187 << v200) >> v190];
                            *v201 = *v202;
                            v203 = v200 + *(v202 + 2);
                            v204 = &v201[*(v202 + 3)];
                            v205 = &v10[(v187 << v203) >> v190];
                            *v204 = *v205;
                            v206 = v203 + *(v205 + 2);
                            v207 = &v204[*(v205 + 3)];
                            v208 = &v10[(v187 << v206) >> v190];
                            *v207 = *v208;
                            v209 = v206 + *(v208 + 2);
                            v44 = &v207[*(v208 + 3)];
                            v300 = v209;
                            if (v209 > 0x40)
                            {
                              goto LABEL_245;
                            }
                          }

LABEL_242:
                          v300 = v195;
                        }

LABEL_245:
                        if (v35 - v44 < 2)
                        {
                          v233 = v36;
                        }

                        else
                        {
                          v226 = v35 - 2;
                          v227 = -v38 & 0x3F;
                          if (v300 <= 0x40)
                          {
                            while (1)
                            {
                              if (v107 >= v298)
                              {
                                v229 = v300 >> 3;
                                v231 = v300 & 7;
                                v230 = 1;
                              }

                              else
                              {
                                if (v107 == v33)
                                {
                                  goto LABEL_259;
                                }

                                v228 = v300 >> 3;
                                v229 = v107 - v33;
                                v230 = &v107[-v228] >= v33;
                                if (&v107[-v228] >= v33)
                                {
                                  v229 = v300 >> 3;
                                }

                                v231 = v300 - 8 * v229;
                              }

                              v107 -= v229;
                              v187 = *v107;
                              if (v44 > v226 || !v230)
                              {
                                break;
                              }

                              v232 = &v10[(v187 << v231) >> v227];
                              *v44 = *v232;
                              v44 += *(v232 + 3);
                              v300 = v231 + *(v232 + 2);
                              if (v300 > 0x40)
                              {
                                goto LABEL_259;
                              }
                            }

                            v300 = v231;
                          }

LABEL_259:
                          v233 = v36;
                          if (v44 <= v226)
                          {
                            v234 = v300;
                            do
                            {
                              v235 = &v10[(v187 << v234) >> v227];
                              *v44 = *v235;
                              v234 += *(v235 + 2);
                              v44 += *(v235 + 3);
                            }

                            while (v44 <= v226);
LABEL_263:
                            v236 = (v290 - 7);
                            if (v44 < v35)
                            {
                              v237 = &v10[(v187 << v234) >> -v38];
                              *v44 = *v237;
                              if (v237[3] == 1)
                              {
                                v234 += v237[2];
                              }

                              else if (v234 <= 0x3F)
                              {
                                v238 = v234 + v237[2];
                                if (v238 >= 0x40)
                                {
                                  v234 = 64;
                                }

                                else
                                {
                                  v234 = v238;
                                }
                              }
                            }

                            if (v32 - v47 >= 8)
                            {
                              v239 = DWORD2(v301);
                              if (BYTE2(v11) >= 0xCu)
                              {
                                if (DWORD2(v301) <= 0x40)
                                {
                                  v254 = -v38 & 0x3F;
                                  do
                                  {
                                    if (v302 >= v303)
                                    {
                                      v258 = (v302 - (v239 >> 3));
                                      *&v302 = v258;
                                      v239 &= 7u;
                                      v257 = 1;
                                    }

                                    else
                                    {
                                      if (v302 == *(&v302 + 1))
                                      {
                                        goto LABEL_308;
                                      }

                                      v255 = v236;
                                      v256 = v239 >> 3;
                                      v257 = (v302 - v256) >= *(&v302 + 1);
                                      if ((v302 - v256) < *(&v302 + 1))
                                      {
                                        v256 = (v302 - DWORD2(v302));
                                      }

                                      else
                                      {
                                        v256 = v256;
                                      }

                                      v258 = (v302 - v256);
                                      *&v302 = v302 - v256;
                                      v239 -= 8 * v256;
                                      v236 = v255;
                                    }

                                    DWORD2(v301) = v239;
                                    v259 = *v258;
                                    *&v301 = v259;
                                    if (v47 >= v236)
                                    {
                                      break;
                                    }

                                    if (!v257)
                                    {
                                      break;
                                    }

                                    v260 = &v10[(v259 << v239) >> v254];
                                    *v47 = *v260;
                                    DWORD2(v301) = v239 + *(v260 + 2);
                                    v261 = (v47 + *(v260 + 3));
                                    v262 = &v10[v301 << SBYTE8(v301) >> v254];
                                    *v261 = *v262;
                                    DWORD2(v301) += *(v262 + 2);
                                    v263 = (v261 + *(v262 + 3));
                                    v264 = &v10[v301 << SBYTE8(v301) >> v254];
                                    *v263 = *v264;
                                    DWORD2(v301) += *(v264 + 2);
                                    v265 = (v263 + *(v264 + 3));
                                    v266 = &v10[v301 << SBYTE8(v301) >> v254];
                                    *v265 = *v266;
                                    v239 = DWORD2(v301) + *(v266 + 2);
                                    DWORD2(v301) = v239;
                                    v47 = (v265 + *(v266 + 3));
                                  }

                                  while (v239 <= 0x40);
                                }
                              }

                              else if (DWORD2(v301) <= 0x40)
                              {
                                v240 = -v38 & 0x3F;
                                do
                                {
                                  if (v302 >= v303)
                                  {
                                    v243 = (v302 - (v239 >> 3));
                                    *&v302 = v243;
                                    v239 &= 7u;
                                    v242 = 1;
                                  }

                                  else
                                  {
                                    if (v302 == *(&v302 + 1))
                                    {
                                      goto LABEL_308;
                                    }

                                    v241 = v239 >> 3;
                                    v242 = (v302 - v241) >= *(&v302 + 1);
                                    if ((v302 - v241) < *(&v302 + 1))
                                    {
                                      v241 = (v302 - DWORD2(v302));
                                    }

                                    else
                                    {
                                      v241 = v241;
                                    }

                                    v243 = (v302 - v241);
                                    *&v302 = v302 - v241;
                                    v239 -= 8 * v241;
                                  }

                                  DWORD2(v301) = v239;
                                  v244 = *v243;
                                  *&v301 = v244;
                                  if (v47 >= v32 - 9)
                                  {
                                    break;
                                  }

                                  if (!v242)
                                  {
                                    break;
                                  }

                                  v245 = &v10[(v244 << v239) >> v240];
                                  *v47 = *v245;
                                  DWORD2(v301) = v239 + *(v245 + 2);
                                  v246 = (v47 + *(v245 + 3));
                                  v247 = &v10[v301 << SBYTE8(v301) >> v240];
                                  *v246 = *v247;
                                  DWORD2(v301) += *(v247 + 2);
                                  v248 = (v246 + *(v247 + 3));
                                  v249 = &v10[v301 << SBYTE8(v301) >> v240];
                                  *v248 = *v249;
                                  DWORD2(v301) += *(v249 + 2);
                                  v250 = (v248 + *(v249 + 3));
                                  v251 = &v10[v301 << SBYTE8(v301) >> v240];
                                  *v250 = *v251;
                                  DWORD2(v301) += *(v251 + 2);
                                  v252 = (v250 + *(v251 + 3));
                                  v253 = &v10[v301 << SBYTE8(v301) >> v240];
                                  *v252 = *v253;
                                  v239 = DWORD2(v301) + *(v253 + 2);
                                  DWORD2(v301) = v239;
                                  v47 = (v252 + *(v253 + 3));
                                }

                                while (v239 <= 0x40);
                              }

                              goto LABEL_308;
                            }

                            v239 = DWORD2(v301);
                            if (DWORD2(v301) <= 0x40)
                            {
                              if (v302 >= v303)
                              {
                                v269 = (v302 - (DWORD2(v301) >> 3));
                                *&v302 = v269;
                                v239 = BYTE8(v301) & 7;
                              }

                              else
                              {
                                if (v302 == *(&v302 + 1))
                                {
                                  goto LABEL_308;
                                }

                                v267 = DWORD2(v301) >> 3;
                                if (v302 - v267 >= *(&v302 + 1))
                                {
                                  v268 = v267;
                                }

                                else
                                {
                                  v268 = (v302 - DWORD2(v302));
                                }

                                v269 = (v302 - v268);
                                *&v302 = v302 - v268;
                                v239 = DWORD2(v301) - 8 * v268;
                              }

                              DWORD2(v301) = v239;
                              *&v301 = *v269;
                            }

LABEL_308:
                            if (v32 - v47 >= 2)
                            {
                              v270 = v32 - 2;
                              v271 = -v38 & 0x3F;
                              while (v239 <= 0x40)
                              {
                                if (v302 >= v303)
                                {
                                  v274 = (v302 - (v239 >> 3));
                                  *&v302 = v274;
                                  v239 &= 7u;
                                  v273 = 1;
                                }

                                else
                                {
                                  if (v302 == *(&v302 + 1))
                                  {
                                    break;
                                  }

                                  v272 = v239 >> 3;
                                  v273 = (v302 - v272) >= *(&v302 + 1);
                                  v272 = (v302 - v272) < *(&v302 + 1) ? (v302 - DWORD2(v302)) : v272;
                                  v274 = (v302 - v272);
                                  *&v302 = v302 - v272;
                                  v239 -= 8 * v272;
                                }

                                DWORD2(v301) = v239;
                                v275 = *v274;
                                *&v301 = v275;
                                if (v47 > v270 || !v273)
                                {
                                  break;
                                }

                                v276 = &v10[(v275 << v239) >> v271];
                                *v47 = *v276;
                                v239 = DWORD2(v301) + *(v276 + 2);
                                DWORD2(v301) = v239;
                                v47 = (v47 + *(v276 + 3));
                              }

                              while (v47 <= v270)
                              {
                                v277 = &v10[v301 << v239 >> v271];
                                *v47 = *v277;
                                v239 = DWORD2(v301) + *(v277 + 2);
                                DWORD2(v301) = v239;
                                v47 = (v47 + *(v277 + 3));
                              }
                            }

                            if (v47 < v32)
                            {
                              v278 = &v10[v301 << v239 >> -v38];
                              *v47 = *v278;
                              if (v278[3] == 1)
                              {
                                v239 = DWORD2(v301) + v278[2];
                              }

                              else
                              {
                                v239 = DWORD2(v301);
                                if (DWORD2(v301) <= 0x3F)
                                {
                                  v279 = DWORD2(v301) + v278[2];
                                  if (v279 >= 0x40)
                                  {
                                    v239 = 64;
                                  }

                                  else
                                  {
                                    v239 = v279;
                                  }
                                }
                              }
                            }

                            if (v239 == 64 && v302 == *(&v302 + 1) && v234 == 64 && v107 == v33 && v27 == 64 && v233 == v31 && v146 == 64 && v34 == v30)
                            {
                              return a2;
                            }

                            else
                            {
                              return -20;
                            }
                          }
                        }

                        v234 = v300;
                        goto LABEL_263;
                      }

                      if (v300 > 0x40)
                      {
                        goto LABEL_245;
                      }

                      if (v107 >= v298)
                      {
                        LODWORD(v210) = v300 >> 3;
                        v300 &= 7u;
                      }

                      else
                      {
                        if (v107 == v33)
                        {
                          v107 = v33;
                          goto LABEL_245;
                        }

                        v210 = v300 >> 3;
                        if (&v107[-v210] < v33)
                        {
                          LODWORD(v210) = v107 - v33;
                        }

                        v300 -= 8 * v210;
                      }

                      v107 -= v210;
                      v187 = *v107;
                      goto LABEL_245;
                    }

                    if (v27 > 0x40)
                    {
                      goto LABEL_187;
                    }

                    if (v36 >= v297)
                    {
                      LODWORD(v166) = v27 >> 3;
                      v27 &= 7u;
                    }

                    else
                    {
                      if (v36 == v31)
                      {
LABEL_186:
                        v36 = v31;
                        goto LABEL_187;
                      }

                      v166 = v27 >> 3;
                      if (&v36[-v166] < v31)
                      {
                        LODWORD(v166) = v36 - v31;
                      }

                      v27 -= 8 * v166;
                    }

                    v36 -= v166;
                    v26 = *v36;
                    goto LABEL_187;
                  }

                  if (v24 > 0x40)
                  {
                    goto LABEL_130;
                  }

                  if (v34 >= v296)
                  {
                    LODWORD(v125) = v24 >> 3;
                    v24 &= 7u;
                  }

                  else
                  {
                    if (v34 == v30)
                    {
LABEL_129:
                      v34 = v30;
                      goto LABEL_130;
                    }

                    v125 = v24 >> 3;
                    if ((v34 - v125) < v30)
                    {
                      LODWORD(v125) = v34 - v30;
                    }

                    v24 -= 8 * v125;
                  }

                  v34 = (v34 - v125);
                  v23 = *v34;
                  goto LABEL_130;
                }

                if (v16 == 3)
                {
LABEL_64:
                  v29 += v25[2] << 16;
                  goto LABEL_65;
                }

                if (v16 != 4)
                {
                  goto LABEL_66;
                }
              }

              v29 += v25[3] << 24;
              goto LABEL_64;
            }

            return -72;
          }

          v26 = *v21;
          if (a3[1] > 4u)
          {
            if (v15 != 5)
            {
              if (v15 != 6)
              {
                v26 |= v21[6] << 48;
              }

              v26 += v21[5] << 40;
            }

            v26 += v21[4] << 32;
          }

          else
          {
            if (v15 == 2)
            {
LABEL_43:
              v26 += v21[1] << 8;
LABEL_44:
              if (!*(v25 - 1))
              {
                return result;
              }

              v27 = __clz(*(v25 - 1)) - 8 * v15 + 41;
              v293 = a3 + v14 + 6;
              goto LABEL_46;
            }

            if (v15 == 3)
            {
LABEL_42:
              v26 += v21[2] << 16;
              goto LABEL_43;
            }

            if (v15 != 4)
            {
              goto LABEL_44;
            }
          }

          v26 += v21[3] << 24;
          goto LABEL_42;
        }
      }

      v23 += *(a3 + 9) << 24;
      goto LABEL_24;
    }
  }

  return result;
}

double sub_243947E84(__int128 *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12);
  v2 = *(a1 + 13);
  v3 = a1[5];
  v48 = a1[4];
  v49 = v3;
  v4 = a1[1];
  v46 = *a1;
  v47 = v4;
  v5 = a1[3];
  *v45 = a1[2];
  *&v45[16] = v5;
  v42 = *&v45[8];
  v6 = *(&v5 + 1);
  v7 = *(a1 + 14);
  v43 = *(&v5 + 1);
  v44 = v7;
  while (1)
  {
    v8 = 0;
    v9 = ((v46 - v2) * 0x2492492492492493uLL) >> 64;
    v10 = vdupq_n_s64((v9 + ((v46 - v2 - v9) >> 1)) >> 2);
    do
    {
      v11 = vsubq_s64(*(&v42 + v8), *&v45[v8]);
      v11.i64[0] /= 0xAuLL;
      v11.i64[1] /= 0xAuLL;
      v10 = vbslq_s8(vcgtq_u64(v11, v10), v10, v11);
      v8 += 16;
    }

    while (v8 != 32);
    v12 = vextq_s8(v10, v10, 8uLL).u64[0];
    v13 = vbsl_s8(vcgtd_u64(v12, v10.u64[0]), *v10.i8, v12);
    if (*&v13 < 2uLL || *(&v46 + 1) < v46 || v47 < *(&v46 + 1) || *(&v47 + 1) < v47)
    {
      break;
    }

    v14 = 0;
    v15 = &v6[5 * *&v13];
    while (1)
    {
      for (i = 0; i != 24; i += 8)
      {
        v17 = *(&v48 + i);
        v18 = (v1 + 4 * (v17 >> 53));
        v19 = *v18;
        v20 = *(v18 + 2);
        v21 = *(v18 + 3);
        v22 = *&v45[i];
        *(&v48 + i) = v17 << v20;
        *v22 = v19;
        *&v45[i] = v22 + v21;
      }

      if (++v14 == 5)
      {
        v23 = 0;
        v24 = *(&v49 + 1);
        v25 = (v1 + 4 * (*(&v49 + 1) >> 53));
        v26 = *v25;
        v27 = *(v25 + 2);
        v28 = *(v25 + 3);
        v29 = *&v45[24];
        **&v45[24] = v26;
        *(&v49 + 1) = v24 << v27;
        v6 = (v29 + v28);
        do
        {
          v30 = *(&v49 + 1);
          v31 = (v1 + 4 * (*(&v49 + 1) >> 53));
          v32 = *v31;
          v33 = *(v31 + 2);
          v34 = *(v31 + 3);
          *v6 = v32;
          *(&v49 + 1) = v30 << v33;
          v6 += v34;
          v35 = __clz(__rbit64(*(&v48 + v23)));
          LOBYTE(v34) = v35 & 7;
          v36 = (*(&v46 + v23) - (v35 >> 3));
          *(&v46 + v23) = v36;
          *(&v48 + v23) = (*v36 | 1) << v34;
          v23 += 8;
        }

        while (v23 != 32);
        v14 = 0;
        *&v45[24] = v6;
        if (v6 >= v15)
        {
          break;
        }
      }
    }
  }

  v37 = v49;
  a1[4] = v48;
  a1[5] = v37;
  v38 = v47;
  *a1 = v46;
  a1[1] = v38;
  result = *v45;
  v40 = *&v45[16];
  a1[2] = *v45;
  a1[3] = v40;
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2439480D4(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, unint64_t a5, uint64_t a6)
{
  if (a5 < 0xA)
  {
    return -20;
  }

  if (*(a6 + 2) << 16 != 720896)
  {
    return 0;
  }

  v6 = 0;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4 + v7 + 6;
  a1[15] = a4 + 3;
  a1[16] = v10;
  v11 = &v10[v8];
  v12 = &v10[v8 + v9];
  a1[17] = &v10[v8];
  a1[18] = v12;
  if (v7 < 0x10)
  {
    return v6;
  }

  if (v8 < 8)
  {
    return v6;
  }

  if (v9 < 8)
  {
    return v6;
  }

  v13 = v7 + v8 + v9 + 6;
  if (a5 - v13 < 8)
  {
    return v6;
  }

  if (a5 < v13)
  {
    return -20;
  }

  *a1 = v10 - 8;
  a1[1] = v11 - 8;
  v14 = a4 + a5;
  a1[2] = v12 - 8;
  a1[3] = a4 + a5 - 8;
  v15 = a2 + ((a3 + 3) >> 2);
  a1[4] = a2;
  a1[5] = v15;
  v16 = v15 + ((a3 + 3) >> 2);
  v17 = v16 + ((a3 + 3) >> 2);
  a1[6] = v16;
  a1[7] = v17;
  if (v17 >= a2 + a3)
  {
    return 0;
  }

  v18 = 8 - (__clz(*(v10 - 1)) ^ 0x1F);
  if (*(v10 - 1))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  a1[8] = (*(v10 - 1) | 1) << v19;
  v20 = 8 - (__clz(*(v11 - 1)) ^ 0x1F);
  if (*(v11 - 1))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  a1[9] = (*(v11 - 1) | 1) << v21;
  v22 = 8 - (__clz(*(v12 - 1)) ^ 0x1F);
  if (*(v12 - 1))
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  a1[10] = (*(v12 - 1) | 1) << v23;
  v24 = 8 - (__clz(*(v14 - 1)) ^ 0x1F);
  if (*(v14 - 1))
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v14 - 1) | 1;
  a1[13] = a4 + 7;
  a1[14] = a2 + a3;
  a1[11] = v26 << v25;
  a1[12] = a6 + 4;
  return 1;
}

unint64_t sub_243948258(_BYTE *a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5)
{
  if (a4 < 0xA)
  {
    return -20;
  }

  v191 = v5;
  v192 = v6;
  v190 = 0;
  v188 = 0u;
  v189 = 0u;
  result = -20;
  if (a2 >= 6)
  {
    v12 = *a3;
    v13 = a3[1];
    v14 = a3[2];
    v15 = v12 + v13 + v14 + 6;
    v16 = &a1[(a2 + 3) >> 2];
    v17 = v16 + ((a2 + 3) >> 2);
    if (a4 >= v15 && v17 + ((a2 + 3) >> 2) <= &a1[a2])
    {
      if (!*a3)
      {
        return -72;
      }

      v19 = a3 + v12 + 6;
      if (v12 >= 8)
      {
        if (!*(v19 - 1))
        {
          return -1;
        }

        v20 = (v19 - 8);
        v21 = *(v19 - 1);
        v22 = 8 - (__clz(*(v19 - 1)) ^ 0x1F);
        if (!a3[1])
        {
          return -72;
        }

        goto LABEL_28;
      }

      v21 = *(a3 + 6);
      if (*a3 > 4u)
      {
        if (v12 != 5)
        {
          if (v12 != 6)
          {
            v21 |= *(a3 + 12) << 48;
          }

          v21 += *(a3 + 11) << 40;
        }

        v21 += *(a3 + 10) << 32;
      }

      else
      {
        if (v12 == 2)
        {
LABEL_25:
          v21 += *(a3 + 7) << 8;
          goto LABEL_26;
        }

        if (v12 == 3)
        {
LABEL_24:
          v21 += *(a3 + 8) << 16;
          goto LABEL_25;
        }

        if (v12 != 4)
        {
LABEL_26:
          if (!*(v19 - 1))
          {
            return result;
          }

          v22 = __clz(*(v19 - 1)) - 8 * v12 + 41;
          v20 = a3 + 3;
          if (!a3[1])
          {
            return -72;
          }

LABEL_28:
          v23 = &v19[v13];
          if (v13 >= 8)
          {
            if (!*(v23 - 1))
            {
              return -1;
            }

            v186 = v20;
            v25 = v23 - 8;
            v24 = *(v23 - 1);
            v26 = 8 - (__clz(*(v23 - 1)) ^ 0x1F);
            goto LABEL_46;
          }

          v24 = *v19;
          if (a3[1] > 4u)
          {
            if (v13 != 5)
            {
              if (v13 != 6)
              {
                v24 |= v19[6] << 48;
              }

              v24 += v19[5] << 40;
            }

            v24 += v19[4] << 32;
          }

          else
          {
            if (v13 == 2)
            {
LABEL_43:
              v24 += v19[1] << 8;
LABEL_44:
              if (!*(v23 - 1))
              {
                return -20;
              }

              v186 = v20;
              v26 = __clz(*(v23 - 1)) - 8 * v13 + 41;
              v25 = a3 + v12 + 6;
LABEL_46:
              if (a3[2])
              {
                v187 = v24;
                v27 = &v23[v14];
                v180 = a3 + v12 + 6;
                v181 = (v17 + ((a2 + 3) >> 2));
                if (v14 >= 8)
                {
                  if (*(v27 - 1))
                  {
                    v177 = &v19[v13];
                    v178 = (v16 + ((a2 + 3) >> 2));
                    v175 = *(a5 + 2);
                    v179 = &a1[a2];
                    v174 = a3 + 3;
                    v184 = *(v27 - 1);
                    v185 = v25;
                    v176 = v27 - 8;
                    v28 = 8 - (__clz(*(v27 - 1)) ^ 0x1F);
LABEL_67:
                    result = sub_243902854(&v188, v27, a4 - v15);
                    v30 = v179;
                    v31 = v181;
                    v32 = v178;
                    if (result > 0xFFFFFFFFFFFFFF88)
                    {
                      return result;
                    }

                    v33 = (v179 - 3);
                    v34 = a5 + 4;
                    v35 = (a2 + 3) >> 2;
                    v36 = a3 + 7;
                    v182 = (v180 + 8);
                    v183 = (v177 + 8);
                    if ((v179 - v181) < 8)
                    {
                      v87 = v22;
                      v88 = v26;
                      v89 = v28;
                      v90 = v181;
                      v91 = v178;
                      v92 = &a1[(a2 + 3) >> 2];
                      v93 = a1;
                      v38 = v176;
                    }

                    else
                    {
                      v37 = v188;
                      v38 = v176;
                      if (v181 >= v33)
                      {
                        v90 = v181;
                        v91 = v178;
                        v92 = &a1[(a2 + 3) >> 2];
                        v93 = a1;
                      }

                      else
                      {
                        v39 = -v175 & 0x3F;
                        v40 = DWORD2(v188);
                        v41 = v190;
                        v42 = v189;
                        v43 = 3 * v35;
                        v44 = a1;
                        do
                        {
                          v45 = v33;
                          v46 = v32;
                          v47 = v44;
                          v48 = &v44[v35];
                          v49 = &v44[2 * v35];
                          v50 = &v44[v43];
                          v51 = (v34 + 2 * ((v21 << v22) >> v39));
                          v52 = v51[1];
                          LODWORD(v51) = v22 + *v51;
                          *v47 = v52;
                          v53 = (v34 + 2 * ((v187 << v26) >> v39));
                          v54 = v53[1];
                          LODWORD(v53) = v26 + *v53;
                          *v48 = v54;
                          v55 = (v34 + 2 * ((v184 << v28) >> v39));
                          v56 = v55[1];
                          LODWORD(v55) = v28 + *v55;
                          *v49 = v56;
                          v57 = (v34 + 2 * ((v37 << v40) >> v39));
                          v58 = v40 + *v57;
                          *v50 = v57[1];
                          v59 = (v34 + 2 * ((v21 << v51) >> v39));
                          LODWORD(v51) = v51 + *v59;
                          v47[1] = v59[1];
                          v60 = (v34 + 2 * ((v187 << v53) >> v39));
                          LODWORD(v53) = v53 + *v60;
                          v48[1] = v60[1];
                          v61 = (v34 + 2 * ((v184 << v55) >> v39));
                          LODWORD(v55) = v55 + *v61;
                          v49[1] = v61[1];
                          v62 = (v34 + 2 * ((v37 << v58) >> v39));
                          v63 = v58 + *v62;
                          v50[1] = v62[1];
                          v64 = (v34 + 2 * ((v21 << v51) >> v39));
                          v65 = v64[1];
                          LODWORD(v64) = v51 + *v64;
                          v47[2] = v65;
                          v66 = (v34 + 2 * ((v187 << v53) >> v39));
                          v67 = v53 + *v66;
                          v48[2] = v66[1];
                          v68 = (v34 + 2 * ((v184 << v55) >> v39));
                          v69 = v68[1];
                          v70 = v55 + *v68;
                          v49[2] = v69;
                          v71 = (v34 + 2 * ((v37 << v63) >> v39));
                          v72 = v63 + *v71;
                          v50[2] = v71[1];
                          v73 = (v34 + 2 * ((v21 << v64) >> v39));
                          v22 = v64 + *v73;
                          v47[3] = v73[1];
                          v74 = (v34 + 2 * ((v187 << v67) >> v39));
                          v75 = *v74;
                          v48[3] = v74[1];
                          v76 = (v34 + 2 * ((v184 << v70) >> v39));
                          v77 = *v76;
                          v49[3] = v76[1];
                          v78 = (v34 + 2 * ((v37 << v72) >> v39));
                          v79 = *v78;
                          v50[3] = v78[1];
                          v80 = v38;
                          if (v186 < v36)
                          {
                            v81 = 3;
                          }

                          else
                          {
                            v81 = 0;
                            v82 = (v186 - (v22 >> 3));
                            v22 &= 7u;
                            v186 = v82;
                            v21 = *v82;
                          }

                          v26 = v67 + v75;
                          if (v185 < v182)
                          {
                            v83 = 3;
                          }

                          else
                          {
                            v83 = 0;
                            v84 = &v185[-(v26 >> 3)];
                            v26 &= 7u;
                            v185 = v84;
                            v187 = *v84;
                          }

                          v28 = v70 + v77;
                          v38 = v80;
                          if (v80 < v183)
                          {
                            v85 = 3;
                          }

                          else
                          {
                            v85 = 0;
                            v38 = &v80[-(v28 >> 3)];
                            v28 &= 7u;
                            v184 = *v38;
                          }

                          v32 = v46;
                          v40 = v72 + v79;
                          v33 = v45;
                          if (v42 < v41)
                          {
                            v86 = 3;
                          }

                          else
                          {
                            v86 = 0;
                            v42 = (v42 - (v40 >> 3));
                            v40 &= 7u;
                            v37 = *v42;
                          }

                          if ((v50 + 4) >= v45)
                          {
                            break;
                          }

                          v44 = v47 + 4;
                        }

                        while (!(v83 | v81 | v85 | v86));
                        v93 = v47 + 4;
                        DWORD2(v188) = v40;
                        *&v189 = v42;
                        v92 = &v47[v35 + 4];
                        v91 = &v93[2 * v35];
                        v90 = &v93[v43];
                        v30 = v179;
                        v31 = v181;
                      }

                      *&v188 = v37;
                      v87 = v22;
                      v88 = v26;
                      v89 = v28;
                    }

                    result = -20;
                    if (v93 > v16 || v92 > v32 || v91 > v31)
                    {
                      return result;
                    }

                    if ((v16 - v93) < 4)
                    {
                      v95 = v174;
                      v96 = v175;
                      v97 = v185;
                      v98 = v186;
                      v94 = v30;
                      if (v87 <= 0x40)
                      {
                        if (v186 >= v36)
                        {
                          v98 = (v186 - (v87 >> 3));
                          v87 &= 7u;
                        }

                        else
                        {
                          if (v186 == v174)
                          {
                            v110 = v93;
                            v98 = v174;
                            goto LABEL_121;
                          }

                          v111 = v87 >> 3;
                          if ((v186 - v111) >= v174)
                          {
                            v111 = v111;
                          }

                          else
                          {
                            v111 = (v186 - v174);
                          }

                          v98 = (v186 - v111);
                          v87 -= 8 * v111;
                        }

                        v21 = *v98;
                      }
                    }

                    else
                    {
                      v94 = v30;
                      v95 = v174;
                      v96 = v175;
                      v97 = v185;
                      v98 = v186;
                      if (v87 <= 0x40)
                      {
                        v99 = -v175 & 0x3F;
                        while (1)
                        {
                          if (v98 >= v36)
                          {
                            LODWORD(v100) = v87 >> 3;
                            v87 &= 7u;
                            v101 = 1;
                          }

                          else
                          {
                            if (v98 == v174)
                            {
                              v98 = v174;
                              v110 = v93;
LABEL_120:
                              v93 = v110;
LABEL_121:
                              if (v93 >= v16)
                              {
                                v113 = v94;
                                v114 = v180;
                              }

                              else
                              {
                                v112 = &a1[v35] - v110;
                                v113 = v94;
                                v114 = v180;
                                do
                                {
                                  v115 = (v34 + 2 * ((v21 << v87) >> (-v96 & 0x3F)));
                                  v87 += *v115;
                                  *v93++ = v115[1];
                                  --v112;
                                }

                                while (v112);
                              }

                              if ((v32 - v92) >= 4)
                              {
                                v116 = v177;
                                if (v88 > 0x40)
                                {
                                  goto LABEL_152;
                                }

                                v117 = -v96 & 0x3F;
                                v118 = v92;
                                while (1)
                                {
                                  if (v97 >= v182)
                                  {
                                    LODWORD(v119) = v88 >> 3;
                                    v88 &= 7u;
                                    v120 = 1;
                                  }

                                  else
                                  {
                                    if (v97 == v114)
                                    {
                                      v97 = v114;
LABEL_149:
                                      v92 = v118;
                                      goto LABEL_152;
                                    }

                                    v119 = v88 >> 3;
                                    v120 = &v97[-v119] >= v114;
                                    if (&v97[-v119] < v114)
                                    {
                                      LODWORD(v119) = v97 - v114;
                                    }

                                    v31 = v181;
                                    v88 -= 8 * v119;
                                  }

                                  v97 -= v119;
                                  v187 = *v97;
                                  if (v118 >= v32 - 3 || !v120)
                                  {
                                    goto LABEL_149;
                                  }

                                  v121 = (v34 + 2 * ((v187 << v88) >> v117));
                                  v122 = v88 + *v121;
                                  *v118 = v121[1];
                                  v123 = (v34 + 2 * ((v187 << v122) >> v117));
                                  v124 = v122 + *v123;
                                  v118[1] = v123[1];
                                  v125 = (v34 + 2 * ((v187 << v124) >> v117));
                                  v126 = v124 + *v125;
                                  v118[2] = v125[1];
                                  v127 = (v34 + 2 * ((v187 << v126) >> v117));
                                  v128 = v127[1];
                                  v88 = v126 + *v127;
                                  v92 = v118 + 4;
                                  v118[3] = v128;
                                  v118 += 4;
                                  if (v88 > 0x40)
                                  {
                                    goto LABEL_152;
                                  }
                                }
                              }

                              v116 = v177;
                              if (v88 <= 0x40)
                              {
                                if (v97 >= v182)
                                {
                                  LODWORD(v129) = v88 >> 3;
                                  v88 &= 7u;
                                }

                                else
                                {
                                  if (v97 == v114)
                                  {
                                    v97 = v114;
                                    goto LABEL_152;
                                  }

                                  v129 = v88 >> 3;
                                  if (&v97[-v129] < v114)
                                  {
                                    LODWORD(v129) = v97 - v114;
                                  }

                                  v88 -= 8 * v129;
                                }

                                v97 -= v129;
                                v187 = *v97;
                              }

LABEL_152:
                              while (v92 < v32)
                              {
                                v130 = (v34 + 2 * ((v187 << v88) >> (-v96 & 0x3F)));
                                v88 += *v130;
                                *v92++ = v130[1];
                              }

                              if ((v31 - v91) < 4)
                              {
                                v131 = v184;
                                if (v89 > 0x40)
                                {
                                  goto LABEL_179;
                                }

                                if (v38 >= v183)
                                {
                                  LODWORD(v144) = v89 >> 3;
                                  v89 &= 7u;
                                }

                                else
                                {
                                  if (v38 == v116)
                                  {
                                    v38 = v116;
                                    goto LABEL_179;
                                  }

                                  v144 = v89 >> 3;
                                  if (&v38[-v144] < v116)
                                  {
                                    LODWORD(v144) = v38 - v116;
                                  }

                                  v89 -= 8 * v144;
                                }

                                v38 -= v144;
                                v131 = *v38;
                                goto LABEL_179;
                              }

                              v131 = v184;
                              if (v89 > 0x40)
                              {
                                goto LABEL_179;
                              }

                              v132 = -v96 & 0x3F;
                              v133 = v91;
                              while (1)
                              {
                                if (v38 >= v183)
                                {
                                  LODWORD(v134) = v89 >> 3;
                                  v89 &= 7u;
                                  v135 = 1;
                                }

                                else
                                {
                                  if (v38 == v116)
                                  {
                                    v38 = v116;
LABEL_177:
                                    v91 = v133;
LABEL_179:
                                    while (v91 < v31)
                                    {
                                      v145 = (v34 + 2 * ((v131 << v89) >> (-v96 & 0x3F)));
                                      v89 += *v145;
                                      *v91++ = v145[1];
                                    }

                                    if ((v113 - v90) < 4)
                                    {
                                      v146 = DWORD2(v188);
                                      if (DWORD2(v188) <= 0x40)
                                      {
                                        if (v189 >= v190)
                                        {
                                          v163 = (v189 - (DWORD2(v188) >> 3));
                                          *&v189 = v163;
                                          v146 = BYTE8(v188) & 7;
                                        }

                                        else
                                        {
                                          if (v189 == *(&v189 + 1))
                                          {
                                            goto LABEL_204;
                                          }

                                          v161 = DWORD2(v188) >> 3;
                                          if (v189 - v161 >= *(&v189 + 1))
                                          {
                                            v162 = v161;
                                          }

                                          else
                                          {
                                            v162 = (v189 - DWORD2(v189));
                                          }

                                          v163 = (v189 - v162);
                                          *&v189 = v189 - v162;
                                          v146 = DWORD2(v188) - 8 * v162;
                                        }

                                        DWORD2(v188) = v146;
                                        *&v188 = *v163;
                                      }
                                    }

                                    else
                                    {
                                      v146 = DWORD2(v188);
                                      if (DWORD2(v188) <= 0x40)
                                      {
                                        v147 = -v96 & 0x3F;
                                        while (1)
                                        {
                                          if (v189 >= v190)
                                          {
                                            v150 = (v189 - (v146 >> 3));
                                            *&v189 = v150;
                                            v146 &= 7u;
                                            v149 = 1;
                                          }

                                          else
                                          {
                                            if (v189 == *(&v189 + 1))
                                            {
                                              break;
                                            }

                                            v148 = v146 >> 3;
                                            v149 = (v189 - v148) >= *(&v189 + 1);
                                            v148 = (v189 - v148) < *(&v189 + 1) ? (v189 - DWORD2(v189)) : v148;
                                            v150 = (v189 - v148);
                                            *&v189 = v189 - v148;
                                            v146 -= 8 * v148;
                                          }

                                          DWORD2(v188) = v146;
                                          v151 = *v150;
                                          *&v188 = v151;
                                          if (v90 >= v33 || !v149)
                                          {
                                            break;
                                          }

                                          v152 = (v34 + 2 * ((v151 << v146) >> v147));
                                          v153 = v152[1];
                                          DWORD2(v188) = v146 + *v152;
                                          *v90 = v153;
                                          v154 = (v34 + 2 * (v188 << SBYTE8(v188) >> v147));
                                          v155 = v154[1];
                                          DWORD2(v188) += *v154;
                                          v90[1] = v155;
                                          v156 = (v34 + 2 * (v188 << SBYTE8(v188) >> v147));
                                          v157 = v156[1];
                                          DWORD2(v188) += *v156;
                                          v90[2] = v157;
                                          v158 = (v34 + 2 * (v188 << SBYTE8(v188) >> v147));
                                          v159 = v158[1];
                                          DWORD2(v188) += *v158;
                                          v160 = v90 + 4;
                                          v90[3] = v159;
                                          v146 = DWORD2(v188);
                                          v90 += 4;
                                          if (DWORD2(v188) > 0x40)
                                          {
                                            goto LABEL_206;
                                          }
                                        }

                                        v160 = v90;
LABEL_206:
                                        v90 = v160;
LABEL_207:
                                        if (v90 < v113)
                                        {
                                          v164 = &a1[a2] - v160;
                                          do
                                          {
                                            v165 = (v34 + 2 * (v188 << SBYTE8(v188) >> (-v96 & 0x3F)));
                                            v166 = v165[1];
                                            DWORD2(v188) += *v165;
                                            *v90++ = v166;
                                            --v164;
                                          }

                                          while (v164);
                                          v146 = DWORD2(v188);
                                        }

                                        if (v146 == 64 && v189 == *(&v189 + 1) && v89 == 64 && v38 == v116 && v88 == 64 && v97 == v114 && v87 == 64 && v98 == v95)
                                        {
                                          return a2;
                                        }

                                        else
                                        {
                                          return -20;
                                        }
                                      }
                                    }

LABEL_204:
                                    v160 = v90;
                                    goto LABEL_207;
                                  }

                                  v134 = v89 >> 3;
                                  v135 = &v38[-v134] >= v116;
                                  if (&v38[-v134] < v116)
                                  {
                                    LODWORD(v134) = v38 - v116;
                                  }

                                  v89 -= 8 * v134;
                                }

                                v38 -= v134;
                                v131 = *v38;
                                if (v133 >= v31 - 3 || !v135)
                                {
                                  goto LABEL_177;
                                }

                                v136 = (v34 + 2 * ((v131 << v89) >> v132));
                                v137 = v89 + *v136;
                                *v133 = v136[1];
                                v138 = (v34 + 2 * ((v131 << v137) >> v132));
                                v139 = v137 + *v138;
                                v133[1] = v138[1];
                                v140 = (v34 + 2 * ((v131 << v139) >> v132));
                                v141 = v139 + *v140;
                                v133[2] = v140[1];
                                v142 = (v34 + 2 * ((v131 << v141) >> v132));
                                v143 = v142[1];
                                v89 = v141 + *v142;
                                v91 = v133 + 4;
                                v133[3] = v143;
                                v133 += 4;
                                if (v89 > 0x40)
                                {
                                  goto LABEL_179;
                                }
                              }
                            }

                            v100 = v87 >> 3;
                            v101 = (v98 - v100) >= v174;
                            if ((v98 - v100) < v174)
                            {
                              LODWORD(v100) = v98 - v174;
                            }

                            v97 = v185;
                            v87 -= 8 * v100;
                          }

                          v98 = (v98 - v100);
                          v21 = *v98;
                          if (v93 >= v16 - 3 || !v101)
                          {
                            v110 = v93;
                            v31 = v181;
                            goto LABEL_120;
                          }

                          v102 = (v34 + 2 * ((v21 << v87) >> v99));
                          v103 = v87 + *v102;
                          *v93 = v102[1];
                          v104 = (v34 + 2 * ((v21 << v103) >> v99));
                          v105 = v103 + *v104;
                          v93[1] = v104[1];
                          v106 = (v34 + 2 * ((v21 << v105) >> v99));
                          v107 = v105 + *v106;
                          v93[2] = v106[1];
                          v108 = (v34 + 2 * ((v21 << v107) >> v99));
                          v109 = v108[1];
                          v87 = v107 + *v108;
                          v110 = v93 + 4;
                          v93[3] = v109;
                          v93 += 4;
                          v31 = v181;
                          if (v87 > 0x40)
                          {
                            goto LABEL_120;
                          }
                        }
                      }
                    }

                    v110 = v93;
                    goto LABEL_121;
                  }

                  return -1;
                }

                v29 = *v23;
                if (a3[2] > 4u)
                {
                  if (v14 != 5)
                  {
                    if (v14 != 6)
                    {
                      v29 |= v23[6] << 48;
                    }

                    v29 += v23[5] << 40;
                  }

                  v29 += v23[4] << 32;
                }

                else
                {
                  if (v14 == 2)
                  {
LABEL_64:
                    v29 += v23[1] << 8;
                    goto LABEL_65;
                  }

                  if (v14 == 3)
                  {
LABEL_63:
                    v29 += v23[2] << 16;
                    goto LABEL_64;
                  }

                  if (v14 != 4)
                  {
LABEL_65:
                    if (*(v27 - 1))
                    {
                      v184 = v29;
                      v185 = v25;
                      v178 = (v16 + ((a2 + 3) >> 2));
                      v179 = &a1[a2];
                      v175 = *(a5 + 2);
                      v174 = a3 + 3;
                      v28 = __clz(*(v27 - 1)) - 8 * v14 + 41;
                      v176 = &v19[v13];
                      v177 = &v19[v13];
                      goto LABEL_67;
                    }

                    return -20;
                  }
                }

                v29 += v23[3] << 24;
                goto LABEL_63;
              }

              return -72;
            }

            if (v13 == 3)
            {
LABEL_42:
              v24 += v19[2] << 16;
              goto LABEL_43;
            }

            if (v13 != 4)
            {
              goto LABEL_44;
            }
          }

          v24 += v19[3] << 24;
          goto LABEL_42;
        }
      }

      v21 += *(a3 + 9) << 24;
      goto LABEL_24;
    }
  }

  return result;
}

double sub_2439490C8(__int128 *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 13);
  v1 = *(a1 + 14);
  v3 = *(a1 + 12);
  v4 = a1[5];
  v35 = a1[4];
  v36 = v4;
  v5 = a1[1];
  v33 = *a1;
  v34 = v5;
  v6 = a1[3];
  v31 = a1[2];
  v32 = v6;
  v7 = v33;
  v8 = (v1 - *(&v6 + 1)) / 5uLL;
  v9 = ((v33 - v2) * 0x2492492492492493uLL) >> 64;
  v10 = (v9 + ((v33 - v2 - v9) >> 1)) >> 2;
  if (v8 >= v10)
  {
    v8 = v10;
  }

  v11 = 5 * v8;
  if (v11 >= 20)
  {
    v12 = *(&v6 + 1) + v11;
    do
    {
      if (*(&v33 + 1) < v7)
      {
        break;
      }

      if (v34 < *(&v33 + 1) || *(&v34 + 1) < v34)
      {
        break;
      }

      v14 = 0;
      while (1)
      {
        for (i = 0; i != 32; i += 8)
        {
          v16 = *(&v35 + i);
          v17 = *(v3 + ((v16 >> 52) & 0xFFE));
          *(&v35 + i) = v16 << v17;
          *(*(&v31 + i) + v14) = HIBYTE(v17);
        }

        if (++v14 == 5)
        {
          for (j = 0; j != 32; j += 8)
          {
            v19 = __clz(__rbit64(*(&v35 + j)));
            v20 = v19 & 7;
            *(&v31 + j) += 5;
            v21 = (*(&v33 + j) - (v19 >> 3));
            *(&v33 + j) = v21;
            *(&v35 + j) = (*v21 | 1) << v20;
          }

          v14 = 0;
          if (*(&v32 + 1) >= v12)
          {
            break;
          }
        }
      }

      v22 = (v1 - *(&v32 + 1)) / 5uLL;
      v7 = v33;
      v23 = ((v33 - v2) * 0x2492492492492493uLL) >> 64;
      v24 = (v23 + ((v33 - v2 - v23) >> 1)) >> 2;
      if (v22 >= v24)
      {
        v22 = v24;
      }

      v25 = 5 * v22;
      v12 = *(&v32 + 1) + 5 * v22;
    }

    while (v25 >= 20);
  }

  v26 = v36;
  a1[4] = v35;
  a1[5] = v26;
  v27 = v34;
  *a1 = v33;
  a1[1] = v27;
  result = *&v31;
  v29 = v32;
  a1[2] = v31;
  a1[3] = v29;
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_24394929C(uint64_t a1, uint64_t a2)
{
  *(a1 + 30192) = *(a2 + 27316);
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 29896) = v2;
  *(a1 + 29904) = v2;
  v4 = v2 + v3;
  *(a1 + 29912) = v4;
  *(a1 + 29888) = v4;
  if (*(a2 + 27320))
  {
    *a1 = a2 + 24;
    *(a1 + 8) = a2 + 6184;
    *&result = 0x100000001;
    *(a1 + 30000) = 0x100000001;
    *(a1 + 16) = a2 + 4128;
    *(a1 + 24) = a2 + 10288;
    *(a1 + 26684) = *(a2 + 26676);
    *(a1 + 26688) = *(a2 + 26680);
    *(a1 + 26692) = *(a2 + 26684);
  }

  else
  {
    result = 0.0;
    *(a1 + 30000) = 0;
  }

  return result;
}

uint64_t sub_243949324(void **a1)
{
  if (a1)
  {
    v2 = a1[3417];
    v3 = a1[3418];
    if (*a1)
    {
      if (v2)
      {
        v2(a1[3418]);
LABEL_6:
        (v2)(v3, a1);
        return 0;
      }

      free(*a1);
    }

    else if (v2)
    {
      goto LABEL_6;
    }

    free(a1);
  }

  return 0;
}

uint64_t sub_24394939C(uint64_t result)
{
  if (result)
  {
    return *(result + 27316);
  }

  return result;
}

char *sub_2439493AC(__int128 *a1)
{
  v1 = *a1;
  if ((*a1 == 0) != (*(a1 + 1) == 0))
  {
    return 0;
  }

  if (v1)
  {
    result = v1(*(a1 + 2), 95976);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = malloc(0x176E8uLL);
    if (!result)
    {
      return result;
    }
  }

  v4 = *a1;
  *(result + 3768) = *(a1 + 2);
  *(result + 1883) = v4;
  *(result + 3739) = 0;
  *(result + 7549) = 0;
  *(result + 7550) = 0;
  *(result + 3784) = 0;
  *(result + 7556) = 0;
  *(result + 3788) = 0;
  *(result + 7578) = 0;
  *(result + 30324) = 0;
  *(result + 11996) = 0;
  *(result + 1888) = 0u;
  *(result + 3763) = 0;
  *(result + 3771) = 0;
  *(result + 1886) = 0u;
  *(result + 30232) = 0u;
  *(result + 3782) = 134217729;
  return result;
}

uint64_t sub_24394949C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 30168))
  {
    return -64;
  }

  v2 = *(result + 30136);
  v3 = *(result + 30144);
  sub_243949324(*(result + 30176));
  *(v1 + 30200) = 0;
  *(v1 + 30176) = 0u;
  if (*(v1 + 30232))
  {
    if (v2)
    {
      v2(v3);
    }

    else
    {
      free(*(v1 + 30232));
    }
  }

  *(v1 + 30232) = 0;
  v4 = *(v1 + 30304);
  if (v4)
  {
    v5 = *(v1 + 30312);
    switch(v5)
    {
      case 7:
        sub_243959CBC(v4);
        break;
      case 6:
        sub_243956ADC(v4);
        break;
      case 5:
        sub_2439535C0(v4);
        break;
    }
  }

  v6 = *(v1 + 30208);
  if (v6)
  {
    if (*v6)
    {
      if (v2)
      {
        v2(v3);
LABEL_20:
        (v2)(v3, v6);
LABEL_23:
        *(v1 + 30208) = 0;
        goto LABEL_24;
      }

      free(*v6);
    }

    else if (v2)
    {
      goto LABEL_20;
    }

    free(v6);
    goto LABEL_23;
  }

LABEL_24:
  if (v2)
  {
    (v2)(v3, v1);
  }

  else
  {
    free(v1);
  }

  return 0;
}

uint64_t sub_2439495C0(uint64_t a1, unint64_t a2, int a3)
{
  v3 = 5;
  if (a3)
  {
    v3 = 1;
  }

  if (v3 > a2)
  {
    return -72;
  }

  v5 = *(a1 + v3 - 1);
  v6 = v5 < 0x40;
  v7 = qword_243990568[v5 & 3];
  v8 = *(&unk_243990588 + ((v5 >> 3) & 0x18));
  LODWORD(v5) = v5 & 0x20;
  v9 = v5 == 0;
  v10 = v6 & (v5 >> 5);
  v11 = v7 + v3 + v8;
  if (v9)
  {
    ++v11;
  }

  return v11 + v10;
}

size_t sub_24394962C(uint64_t a1, char *__src, size_t __n, int a4)
{
  if (a4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 5;
  }

  if (!__src && __n)
  {
    return -1;
  }

  if (v7 <= __n)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    if (a4 == 1 || *__src == -47205080)
    {
      v9 = sub_2439495C0(__src, __n, a4);
      if (v9 <= __n)
      {
        *(a1 + 24) = v9;
        v10 = __src[v7 - 1];
        if ((v10 & 8) != 0)
        {
          return -14;
        }

        else
        {
          if ((v10 & 0x20) != 0)
          {
            v12 = 0;
          }

          else
          {
            v11 = __src[v7];
            if (v11 > 0xAF)
            {
              return -16;
            }

            ++v7;
            v12 = (1 << ((v11 >> 3) + 10)) + ((1 << ((v11 >> 3) + 10)) >> 3) * (v11 & 7);
          }

          v13 = v10 & 3;
          v14 = v10 >> 6;
          if (v13 > 1)
          {
            if (v13 == 2)
            {
              v13 = *&__src[v7];
              v7 += 2;
            }

            else
            {
              v13 = *&__src[v7];
              v7 += 4;
            }
          }

          else if ((v10 & 3) != 0)
          {
            v13 = __src[v7++];
          }

          v15 = (v10 >> 2) & 1;
          if (v10 >> 6 > 1)
          {
            if (v14 == 2)
            {
              v16 = *&__src[v7];
            }

            else
            {
              v16 = *&__src[v7];
            }
          }

          else if (v14)
          {
            v16 = *&__src[v7] + 256;
          }

          else if ((v10 & 0x20) != 0)
          {
            v16 = __src[v7];
          }

          else
          {
            v16 = -1;
          }

          v7 = 0;
          if ((v10 & 0x20) != 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = v12;
          }

          *a1 = v16;
          *(a1 + 8) = v17;
          if (v17 >= 0x20000)
          {
            LODWORD(v17) = 0x20000;
          }

          *(a1 + 16) = v17;
          *(a1 + 20) = 0;
          *(a1 + 28) = v13;
          *(a1 + 32) = v15;
        }
      }

      else
      {
        return v9;
      }
    }

    else
    {
      if (*__src >> 4 != 25481893)
      {
        return -10;
      }

      if (__n >= 8)
      {
        v7 = 0;
        *a1 = *(__src + 1);
        *(a1 + 20) = 1;
      }

      else
      {
        return 8;
      }
    }
  }

  else if (__n)
  {
    if (a4 != 1)
    {
      __dst = -47205080;
      memcpy(&__dst, __src, __n);
      if (__dst != -47205080)
      {
        __dst = 407710288;
        memcpy(&__dst, __src, __n);
        if (__dst >> 4 != 25481893)
        {
          return -10;
        }
      }
    }
  }

  return v7;
}

uint64_t sub_243949878(void *a1, char *a2, uint64_t a3, unint64_t a4, size_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v15 = a1 + 3584;
  if (a8)
  {
    a6 = sub_2438F4D6C(a8);
    a7 = sub_2438E2638(a8);
  }

  v16 = 5;
  if (v15[358])
  {
    v16 = 1;
  }

  if (v16 > a5)
  {
    v17 = a2;
    goto LABEL_7;
  }

  v59 = a7;
  v20 = 0;
  v17 = a2;
  while (1)
  {
LABEL_12:
    while (a5 < 4)
    {
LABEL_23:
      v60 = v20;
      if (a8)
      {
        sub_24394A4B4(v14, a8);
      }

      else
      {
        v24 = sub_24394A364(v14, a6, v59);
        if (v24 > 0xFFFFFFFFFFFFFF88)
        {
          return v24;
        }
      }

      sub_24394E678(v14, v17, a3);
      v25 = v15[358];
      v26 = 9;
      if (v25)
      {
        v26 = 5;
      }

      if (a5 < v26)
      {
        goto LABEL_33;
      }

      if (v25)
      {
        v27 = 1;
      }

      else
      {
        v27 = 5;
      }

      v28 = sub_2439495C0(a4, v27, v25);
      v18 = v28;
      if (v28 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_101;
      }

      if (a5 < v28 + 3)
      {
LABEL_33:
        v18 = -72;
        goto LABEL_101;
      }

      v29 = sub_24394A00C(v14, a4, v28);
      if (v29 > 0xFFFFFFFFFFFFFF88)
      {
        v18 = v29;
        goto LABEL_101;
      }

      v53 = v15;
      v51 = a6;
      v57 = a2;
      v30 = (a4 + v18);
      LODWORD(__len) = 0;
      v62 = 0;
      v54 = a5 - v18;
      v31 = sub_24394A66C((a4 + v18), a5 - v18, &v62);
      v32 = v31;
      if (v31 > 0xFFFFFFFFFFFFFF88)
      {
        v18 = v31;
LABEL_99:
        a2 = v57;
        a6 = v51;
LABEL_100:
        v15 = v53;
        goto LABEL_101;
      }

      v52 = &v17[a3];
      v33 = v17;
      while (1)
      {
        v36 = v54 - 3 >= v32;
        v54 = v54 - 3 - v32;
        if (!v36)
        {
          v18 = -72;
          goto LABEL_99;
        }

        v34 = v30 + 3;
        v35 = &v17[a3];
        v36 = v30 + 3 < v52 && v34 >= v33;
        if (v36)
        {
          v35 = v30 + 3;
        }

        if (v62 == 2)
        {
          v37 = v30 + 3;
          v18 = sub_24394B1F4(v14, v33, v35 - v33, v34, v32, 1, 0);
          if (v18 > 0xFFFFFFFFFFFFFF88)
          {
            goto LABEL_99;
          }
        }

        else
        {
          if (v62 == 1)
          {
            v18 = __len;
            if (v35 - v33 < __len)
            {
              goto LABEL_110;
            }

            if (v33)
            {
              v37 = v30 + 3;
              memset(v33, *v34, __len);
              goto LABEL_64;
            }

            if (__len)
            {
              goto LABEL_114;
            }
          }

          else
          {
            if (v62)
            {
              goto LABEL_109;
            }

            if (v32 > v52 - v33)
            {
LABEL_110:
              v18 = -70;
              goto LABEL_99;
            }

            if (v33)
            {
              v37 = v30 + 3;
              memmove(v33, v34, v32);
              v18 = v32;
              goto LABEL_64;
            }

            if (v32)
            {
LABEL_114:
              v18 = -74;
              goto LABEL_99;
            }
          }

          v37 = v30 + 3;
          v18 = 0;
        }

LABEL_64:
        if (v53[360])
        {
          sub_243902CD0((v14 + 3751), v33, v18);
        }

        v33 += v18;
        v30 = &v37[v32];
        if (HIDWORD(v62))
        {
          break;
        }

        LODWORD(__len) = 0;
        v62 = 0;
        v32 = sub_24394A66C(v30, v54, &v62);
        v18 = v32;
        if (v32 >= 0xFFFFFFFFFFFFFF89)
        {
          goto LABEL_99;
        }
      }

      v49 = v14[3741];
      v18 = v33 - v17;
      if (v49 != -1 && v18 != v49)
      {
LABEL_109:
        v18 = -20;
        goto LABEL_99;
      }

      a6 = v51;
      if (!v53[322])
      {
        a4 = v30;
        a5 = v54;
LABEL_116:
        a2 = v57;
        goto LABEL_100;
      }

      v50 = v54 - 4;
      if (v54 < 4)
      {
        v18 = -22;
        goto LABEL_116;
      }

      v55 = v30;
      v15 = v53;
      if (v53[359] || *v55 == sub_243902E7C(v14 + 3751))
      {
        a4 = (v55 + 2);
        a5 = v50;
      }

      else
      {
        v18 = -22;
      }

      a2 = v57;
LABEL_101:
      if (((sub_243903034(v18) == 10) & v60) != 0)
      {
        return -72;
      }

      if (v18 > 0xFFFFFFFFFFFFFF88)
      {
        return v18;
      }

      v17 += v18;
      a3 -= v18;
      v16 = 5;
      if (v15[358])
      {
        v16 = 1;
      }

      v20 = 1;
      if (a5 < v16)
      {
LABEL_7:
        if (a5)
        {
          return -72;
        }

        else
        {
          return v17 - a2;
        }
      }
    }

    if ((*a4 + 47205083) > 2)
    {
      break;
    }

    v62 = 0;
    __len = 0;
    v64 = 0;
    v23 = *a4;
    v61 = v20;
    if (*a4 == -47205081)
    {
      sub_243959AF4(a4, a5, &__len, &v64);
    }

    else if (v23 == -47205082)
    {
      sub_24395696C(a4, a5, &__len, &v64);
    }

    else if (v23 == -47205083)
    {
      sub_243953500(a4, a5, &__len, &v64);
    }

    else
    {
      __len = -10;
    }

    if (__len <= a5 || __len >= 0xFFFFFFFFFFFFFF89)
    {
      v18 = __len;
    }

    else
    {
      v18 = -72;
    }

    if (v18 > 0xFFFFFFFFFFFFFF88)
    {
      return v18;
    }

    if (v14[3771])
    {
      return -64;
    }

    if (v18 < 4)
    {
      return -10;
    }

    v39 = *a4;
    v56 = v14;
    v58 = a2;
    if (*a4 == -47205081)
    {
      v40 = v15;
      v41 = a6;
      sub_24395890C();
      if (!v47)
      {
        return -64;
      }

      v48 = v47;
      v44 = sub_243959564(v47, v17, a3, a4, v18, v41, v59);
      sub_243958948(v48);
    }

    else if (v39 == -47205082)
    {
      v40 = v15;
      v41 = a6;
      sub_2439559DC();
      if (!v45)
      {
        return -64;
      }

      v46 = v45;
      v44 = sub_243956688(v45, v17, a3, a4, v18, v41, v59);
      sub_2439521C4(v46);
    }

    else
    {
      if (v39 != -47205083)
      {
        return -10;
      }

      v40 = v15;
      v41 = a6;
      sub_24395217C();
      if (!v42)
      {
        return -64;
      }

      v43 = v42;
      v44 = sub_243953208(v42, v17, a3, a4, v18, v41, v59);
      sub_2439521C4(v43);
    }

    v20 = v61;
    if (v44 > 0xFFFFFFFFFFFFFF88)
    {
      return v44;
    }

    v17 += v44;
    a3 -= v44;
    a4 += v18;
    a5 -= v18;
    if (v40[358])
    {
      v16 = 1;
    }

    else
    {
      v16 = 5;
    }

    a6 = v41;
    v15 = v40;
    v14 = v56;
    a2 = v58;
    if (a5 < v16)
    {
      goto LABEL_7;
    }
  }

  if (*a4 >> 4 != 25481893)
  {
    goto LABEL_23;
  }

  if (a5 < 8)
  {
    return -72;
  }

  v21 = *(a4 + 4);
  if (v21 > 0xFFFFFFF7)
  {
    return -14;
  }

  v22 = v21 + 8;
  if (v22 <= a5)
  {
    v18 = v22;
  }

  else
  {
    v18 = -72;
  }

  if (v18 <= 0xFFFFFFFFFFFFFF88)
  {
    a4 += v18;
    a5 -= v18;
    if (a5 < v16)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  return v18;
}

uint64_t sub_243949F3C(void *a1, char *a2, uint64_t a3, unint64_t a4, size_t a5)
{
  sub_243949FB0(a1);

  return sub_243949878(a1, a2, a3, a4, a5, 0, 0, v10);
}

double sub_243949FB0(uint64_t a1)
{
  v2 = *(a1 + 30200);
  if (v2 == -1)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    *(a1 + 30200) = 0;
LABEL_4:
    v3 = *(a1 + 30184);
    return result;
  }

  sub_243949324(*(a1 + 30176));
  *(a1 + 30200) = 0;
  result = 0.0;
  *(a1 + 30176) = 0u;
  return result;
}

size_t sub_24394A00C(uint64_t a1, char *a2, size_t a3)
{
  v5 = (a1 + 28672);
  result = sub_24394962C(a1 + 29928, a2, a3, *(a1 + 30104));
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (result)
    {
      return -72;
    }

    else
    {
      if (v5[386] == 1 && *(a1 + 30208))
      {
        sub_24394A5AC(a1);
      }

      v7 = v5[321];
      if (v7 && v5[380] != v7)
      {
        return -32;
      }

      else
      {
        if (v5[322])
        {
          v8 = v5[359];
          v5[360] = v8 == 0;
          if (!v8)
          {
            sub_243902C88(a1 + 30008, 0);
          }
        }

        else
        {
          v5[360] = 0;
        }

        result = 0;
        *(a1 + 29976) += a3;
      }
    }
  }

  return result;
}

uint64_t sub_24394A0DC(int *a1, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3 >= 9)
  {
    v6 = a2 + 8;
    v7 = sub_243945030(a1 + 2566, (a2 + 8), a3 - 8, a1, 0x2818uLL);
    if (v7 <= 0xFFFFFFFFFFFFFF88)
    {
      v8 = v7;
      v9 = a2 + a3;
      v10 = (v6 + v7);
      v27 = 0;
      v28 = 31;
      v11 = sub_243901C10(v29, &v28, &v27, v10, a2 + a3 - v10);
      if (v11 <= 0xFFFFFFFFFFFFFF88 && v28 <= 0x1F && v27 < 9)
      {
        v12 = v11;
        sub_24394AC14(a1 + 1026, v29, v28, &unk_243990308, &unk_243990388, v27, (a1 + 6666));
        v13 = v10 + v12;
        v27 = 0;
        v28 = 52;
        v14 = sub_243901C10(v29, &v28, &v27, (v10 + v12), v9 - (v10 + v12));
        if (v14 <= 0xFFFFFFFFFFFFFF88 && v28 <= 0x34 && v27 < 0xA)
        {
          v15 = v14;
          sub_24394AC14(a1 + 1540, v29, v28, &unk_2439903A8, &unk_24399047C, v27, (a1 + 6666));
          v16 = &v13[v15];
          v27 = 0;
          v28 = 35;
          v17 = sub_243901C10(v29, &v28, &v27, &v13[v15], v9 - &v13[v15]);
          if (v17 <= 0xFFFFFFFFFFFFFF88 && v28 <= 0x23 && v27 < 0xA)
          {
            v18 = v17;
            sub_24394AC14(a1, v29, v28, &unk_2439904B4, &unk_243990544, v27, (a1 + 6666));
            v19 = &v16[v18 + 12];
            if (v19 <= v9)
            {
              v22 = 0;
              v23 = v9 - v19;
              v24 = -8 - (v8 + v12 + v15 + v18);
              while (1)
              {
                v25 = *(v8 + v12 + v18 + v15 + a2 + 8 + 4 * v22);
                if (!v25 || v23 < v25)
                {
                  break;
                }

                a1[v22++ + 6663] = v25;
                v24 -= 4;
                if (v22 == 3)
                {
                  result = -v24;
                  goto LABEL_14;
                }
              }
            }
          }
        }
      }
    }
  }

  result = -30;
LABEL_14:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24394A364(uint64_t a1, char *a2, unint64_t a3)
{
  result = 0;
  v5 = 5;
  if (*(a1 + 30104))
  {
    v5 = 1;
  }

  *(a1 + 29920) = v5;
  *(a1 + 26684) = 0x400000001;
  *(a1 + 26692) = 8;
  *(a1 + 29888) = 0u;
  *(a1 + 29904) = 0u;
  *(a1 + 29976) = 0u;
  *(a1 + 10296) = 201326604;
  *(a1 + 30192) = 0;
  *(a1 + 29992) = xmmword_2439902E0;
  *a1 = a1 + 32;
  *(a1 + 8) = a1 + 6192;
  *(a1 + 16) = a1 + 4136;
  *(a1 + 24) = a1 + 10296;
  if (a2 && a3)
  {
    if (a3 >= 8 && *a2 == -332356553)
    {
      *(a1 + 30192) = *(a2 + 1);
      v8 = sub_24394A0DC((a1 + 32), a2, a3);
      if (v8 > 0xFFFFFFFFFFFFFF88)
      {
        return -30;
      }

      v9 = &a2[v8];
      *(a1 + 30000) = 0x100000001;
      v10 = *(a1 + 29888);
      v11 = *(a1 + 29896);
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v9 = a2;
    }

    result = 0;
    *(a1 + 29912) = v10;
    *(a1 + 29904) = &v9[v11 - v10];
    *(a1 + 29896) = v9;
    *(a1 + 29888) = &a2[a3];
  }

  return result;
}

uint64_t sub_24394A4B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 28672;
  if (a2)
  {
    v5 = sub_2438F4D6C(a2);
    *(v4 + 1524) = *(a1 + 29912) != v5 + sub_2438E2638(a2);
  }

  v6 = 5;
  if (*(v4 + 1432))
  {
    v6 = 1;
  }

  *(a1 + 29920) = v6;
  *(a1 + 29888) = 0u;
  *(a1 + 29904) = 0u;
  *(a1 + 29976) = 0u;
  *(a1 + 10296) = 201326604;
  *(v4 + 1520) = 0;
  *(v4 + 1320) = xmmword_2439902E0;
  *(a1 + 26684) = 0x400000001;
  *(a1 + 26692) = 8;
  *a1 = a1 + 32;
  *(a1 + 8) = a1 + 6192;
  *(a1 + 16) = a1 + 4136;
  *(a1 + 24) = a1 + 10296;
  if (a2)
  {
    sub_24394929C(a1, a2);
  }

  return 0;
}

uint64_t sub_24394A5AC(uint64_t result)
{
  if (*(result + 30184))
  {
    v1 = result;
    v2 = (result + 28672);
    v3 = *(result + 30208);
    v4 = *(result + 29956);
    LODWORD(v11) = v4;
    v5 = sub_243902B30(&v11, 4uLL, 0);
    v6 = v3[1] - 1;
    v7 = v6 & v5;
    do
    {
      v8 = v7;
      result = sub_24394939C(*(*v3 + 8 * v7));
      v7 = (v8 & v6) + 1;
    }

    while (result != v4 && result != 0);
    v10 = *(*v3 + 8 * v8);
    if (v10)
    {
      result = sub_243949324(*(v1 + 30176));
      *(v1 + 30176) = 0;
      v2[380] = v2[321];
      *(v1 + 30184) = v10;
      v2[382] = -1;
    }
  }

  return result;
}

uint64_t sub_24394A66C(unsigned __int16 *a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    return -72;
  }

  v4 = *a1;
  v5 = (v4 & 0xFFF8 | (*(a1 + 2) << 16)) >> 3;
  result = (v4 >> 1) & 3;
  *a3 = result;
  a3[1] = v4 & 1;
  a3[2] = v5;
  if (result != 1)
  {
    if (result == 3)
    {
      return -20;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t sub_24394A6C0(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  if (a3 < 2)
  {
    return -20;
  }

  v10 = a1 + 28672;
  v11 = *a2;
  v12 = v11 & 3;
  if (v12 <= 1)
  {
    if ((v11 & 3) == 0)
    {
      v13 = (v11 >> 2) & 3;
      v14 = 0x20000;
      if (a5 < 0x20000)
      {
        v14 = a5;
      }

      if (v13 == 1)
      {
        v15 = *a2 >> 4;
        v16 = 2;
      }

      else
      {
        if (v13 == 3)
        {
          if (a3 != 2)
          {
            v15 = (*a2 | (a2[2] << 16)) >> 4;
            v16 = 3;
            goto LABEL_32;
          }

          return -20;
        }

        v15 = v11 >> 3;
        v16 = 1;
      }

LABEL_32:
      if (a4)
      {
        _ZF = 1;
      }

      else
      {
        _ZF = v15 == 0;
      }

      v30 = !_ZF;
      v6 = -70;
      if (v14 >= v15 && (v30 & 1) == 0)
      {
        if (a6 || v15 + 131136 >= a5)
        {
          if (v15 <= 0x10000)
          {
            v31 = 0;
            v34 = 0;
            v32 = (a1 + 30380);
            *(a1 + 30360) = a1 + 30380;
            v33 = a1 + 30380 + v15;
          }

          else
          {
            v32 = (a4 + v14 - v15 + 65504);
            v33 = a4 + v14 - 32;
            *(a1 + 30360) = v32;
            v34 = 2;
            v31 = 1;
          }
        }

        else
        {
          v31 = 0;
          v32 = (a4 + 131104);
          *(a1 + 30360) = a4 + 131104;
          v33 = a4 + 131104 + v15;
          v34 = 1;
        }

        *(a1 + 30368) = v33;
        *(v10 + 1704) = v34;
        v6 = v16 + v15;
        if (v16 + v15 + 32 <= a3)
        {
          v42 = &a2[v16];
          *(a1 + 30120) = v42;
          *(a1 + 30152) = v15;
          *(a1 + 30368) = &v42[v15];
          *(v10 + 1704) = 0;
          return v6;
        }

        if (v6 > a3)
        {
          return -20;
        }

        v39 = &a2[v16];
        if (v31)
        {
          memcpy(v32, &a2[v16], v15 - 0x10000);
          v32 = (a1 + 30380);
          v40 = &v39[v15 - 0x10000];
          v41 = 0x10000;
        }

        else
        {
          v40 = &a2[v16];
          v41 = v15;
        }

        memcpy(v32, v40, v41);
        *(a1 + 30120) = *(a1 + 30360);
        *(a1 + 30152) = v15;
      }

      return v6;
    }

    v25 = (v11 >> 2) & 3;
    v26 = 0x20000;
    if (a5 < 0x20000)
    {
      v26 = a5;
    }

    if (v25 == 1)
    {
      if (a3 == 2)
      {
        return -20;
      }

      v27 = *a2 >> 4;
      v28 = 2;
    }

    else if (v25 == 3)
    {
      if (a3 < 4)
      {
        return -20;
      }

      v27 = (*a2 | (a2[2] << 16)) >> 4;
      v28 = 3;
    }

    else
    {
      v27 = v11 >> 3;
      v28 = 1;
    }

    if (a4 || !v27)
    {
      if (v27 > 0x20000)
      {
        return -20;
      }

      if (v27 <= a5)
      {
        if (a6 || v27 + 131136 >= a5)
        {
          v46 = v27 - 0x10000;
          if (v27 > 0x10000)
          {
            v47 = (a4 + v26 - v27 + 65504);
            *(a1 + 30360) = v47;
            *(a1 + 30368) = &v47[v46];
            *(v10 + 1704) = 2;
            memset(v47, a2[v28], v46);
            v48 = a2[v28];
            v35 = (a1 + 30380);
            v49 = 0x10000;
LABEL_81:
            memset(v35, v48, v49);
            *(a1 + 30120) = *(a1 + 30360);
            *(a1 + 30152) = v27;
            return v28 + 1;
          }

          v36 = 0;
          v35 = (a1 + 30380);
        }

        else
        {
          v35 = (a4 + 131104);
          v36 = 1;
        }

        *(a1 + 30360) = v35;
        *(a1 + 30368) = &v35[v27];
        *(v10 + 1704) = v36;
        v48 = a2[v28];
        v49 = v27;
        goto LABEL_81;
      }
    }

    return -70;
  }

  if (v12 != 2 && !*(a1 + 30000))
  {
    return -30;
  }

  if (a3 < 5)
  {
    return -20;
  }

  v17 = (v11 >> 2) & 3;
  v18 = *a2;
  if (a5 >= 0x20000)
  {
    v19 = 0x20000;
  }

  else
  {
    v19 = a5;
  }

  v20 = *(a1 + 30220) != 0;
  if (v17 == 2)
  {
    v21 = (v18 >> 4) & 0x3FFF;
    v22 = v18 >> 18;
    v23 = 1;
    v24 = 4;
  }

  else if (v17 == 3)
  {
    v21 = (v18 >> 4) & 0x3FFFF;
    v22 = (v18 >> 22) | (a2[4] << 10);
    v23 = 1;
    v24 = 5;
  }

  else
  {
    v23 = v17 != 0;
    v21 = (v18 >> 4) & 0x3FF;
    v22 = (v18 >> 14) & 0x3FF;
    v24 = 3;
  }

  if (!a4 && v21)
  {
    return -70;
  }

  v37 = v21;
  if (v21 > 0x20000)
  {
    return -20;
  }

  if (v21 < 6 && v23)
  {
    return -24;
  }

  v6 = v24 + v22;
  if (v24 + v22 > a3)
  {
    return -20;
  }

  if (v19 < v37)
  {
    return -70;
  }

  if (a6 || v37 + 131136 >= a5)
  {
    if (v37 <= 0x10000)
    {
      v45 = 0;
      v43 = (a1 + 30380);
      *(a1 + 30360) = a1 + 30380;
      v44 = a1 + 30380 + v37;
    }

    else
    {
      v44 = a4 + v19;
      v43 = (a4 + v19 - v37);
      *(a1 + 30360) = v43;
      v45 = 2;
    }
  }

  else
  {
    v43 = (a4 + 131104);
    *(a1 + 30360) = a4 + 131104;
    v44 = a4 + 131104 + v37;
    v45 = 1;
  }

  v50 = 16 * v20;
  *(a1 + 30368) = v44;
  *(a1 + 30376) = v45;
  if (v37 >= 0x301 && *(a1 + 30196))
  {
    v51 = 0;
    do
    {
      _X13 = *(a1 + 24) + v51;
      __asm { PRFM            #2, [X13] }

      v57 = v51 >> 2;
      v51 += 64;
    }

    while (v57 < 0xFF1);
  }

  if (v12 == 3)
  {
    v58 = *(a1 + 24);
    v59 = &a2[v24];
    if (v23)
    {
      v60 = sub_243945CE0(v43, v37, v59, v22, v58, v50);
    }

    else
    {
      v60 = sub_243945A54(v43, v37, v59, v22, v58);
    }
  }

  else
  {
    v61 = (a1 + 10296);
    v62 = &a2[v24];
    v63 = a1 + 27324;
    if (v23)
    {
      v60 = sub_2439463A4(v61, v43, v37, v62, v22, v63, 0xA00uLL, v50);
    }

    else
    {
      v60 = sub_2439459B4(v61, v43, v37, v62, v22, v63, 0xA00uLL);
    }
  }

  v64 = v60;
  if (*(v10 + 1704) == 2)
  {
    memcpy((a1 + 30380), (*(a1 + 30368) - 0x10000), 0x10000uLL);
    memmove((*(a1 + 30360) + 65504), *(a1 + 30360), v37 - 0x10000);
    *(v10 + 1688) = vaddq_s64(*(v10 + 1688), xmmword_2439905B0);
  }

  if (v64 > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  *(a1 + 30120) = *(a1 + 30360);
  *(a1 + 30152) = v37;
  *(v10 + 1328) = 1;
  if (v12 == 2)
  {
    *(a1 + 24) = a1 + 10296;
  }

  return v6;
}

int *sub_24394AC14(int *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = result + 2;
  v8 = (1 << a6);
  v9 = (v8 - 1);
  v10 = (a3 + 1);
  if (a3 == -1)
  {
    *result = 1;
    result[1] = a6;
    v11 = (v8 >> 3) + (v8 >> 1) + 3;
LABEL_23:
    v31 = 0;
    v32 = 0;
    do
    {
      v7[2 * (v32 & v9) + 1] = *(a7 + v31 + 106);
      v7[2 * ((v32 + v11) & v9) + 1] = *(a7 + v31 + 107);
      v32 = (v32 + 2 * v11) & v9;
      v31 += 2;
    }

    while (v31 < v8);
    goto LABEL_33;
  }

  v12 = 0;
  v13 = a7 + 106;
  v14 = 1;
  v15 = v8 - 1;
  do
  {
    v16 = *(a2 + 2 * v12);
    if (v16 == -1)
    {
      v18 = &v7[2 * v15--];
      v18[1] = v12;
      v17 = 1;
    }

    else
    {
      v17 = *(a2 + 2 * v12);
      if (0x10000 << (a6 - 1) >> 16 <= v16)
      {
        v14 = 0;
      }
    }

    *(a7 + 2 * v12++) = v17;
  }

  while (v10 != v12);
  *result = v14;
  result[1] = a6;
  v19 = v8 >> 3;
  if (v15 == v9)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v19 + 3;
    do
    {
      v24 = *(a2 + 2 * v20);
      *(v13 + v21) = v22;
      if (v24 >= 9)
      {
        v25 = 0;
        if (v24 <= 0x10)
        {
          v26 = 16;
        }

        else
        {
          v26 = v24;
        }

        v27 = (v26 - 9) >> 3;
        v28 = vdupq_n_s64(v27);
        v29 = (v13 + v21 + 16);
        do
        {
          v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v25), xmmword_24398C940)));
          if (v30.i8[0])
          {
            *(v29 - 1) = v22;
          }

          if (v30.i8[4])
          {
            *v29 = v22;
          }

          v25 += 2;
          v29 += 2;
        }

        while (((v27 + 2) & 0x3FFFFFFFFFFFFFFELL) != v25);
      }

      v21 += v24;
      ++v20;
      v22 += 0x101010101010101;
    }

    while (v20 != v10);
    v11 = v23 + (v8 >> 1);
    goto LABEL_23;
  }

  v33 = 0;
  v34 = 0;
  v35 = v19 + (v8 >> 1) + 3;
  do
  {
    v36 = *(a2 + 2 * v33);
    if (v36 >= 1)
    {
      for (i = 0; i != v36; ++i)
      {
        v7[2 * v34 + 1] = v33;
        do
        {
          v34 = (v35 + v34) & v9;
        }

        while (v34 > v15);
      }
    }

    ++v33;
  }

  while (v33 != v10);
LABEL_33:
  v38 = result + 3;
  v39 = (1 << a6);
  do
  {
    v40 = *v38;
    v41 = *(a7 + 2 * v40);
    *(a7 + 2 * v40) = v41 + 1;
    v42 = a6 - 31 + __clz(v41);
    *(v38 - 1) = v42;
    *(v38 - 2) = (v41 << v42) - v8;
    *(v38 - 2) = *(a5 + v40);
    *v38 = *(a4 + 4 * v40);
    v38 += 2;
    --v39;
  }

  while (v39);
  return result;
}

uint64_t sub_24394AE58(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a4)
  {
    return -72;
  }

  v5 = a3 + 1;
  v6 = *a3;
  if (*a3)
  {
    if ((v6 & 0x80) != 0)
    {
      if (v6 == 255)
      {
        if (a4 < 3)
        {
          return -72;
        }

        v5 = a3 + 3;
        v6 = *(a3 + 1) + 32512;
      }

      else
      {
        if (a4 < 2)
        {
          return -72;
        }

        v5 = a3 + 2;
        v6 = (a3[1] | (v6 << 8)) - 0x8000;
      }
    }

    v8 = &a3[a4];
    *a2 = v6;
    v9 = v5 + 1;
    if (v5 + 1 > &a3[a4])
    {
      return -72;
    }

    v11 = *v5;
    v12 = sub_24394B064(a1 + 32, a1, v11 >> 6, 0x23u, 9u, v9, v8 - v9, &unk_2439905C0, &unk_243990650, &unk_243990674, *(a1 + 30004), *(a1 + 30196), v6, a1 + 27324);
    if (v12 > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }

    v13 = &v9[v12];
    v14 = sub_24394B064(a1 + 4136, (a1 + 16), (v11 >> 4) & 3, 0x1Fu, 8u, v13, v8 - v13, &unk_24399087C, &unk_2439908FC, &unk_24399091C, *(a1 + 30004), *(a1 + 30196), v6, a1 + 27324);
    if (v14 > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }

    v15 = &v13[v14];
    v16 = sub_24394B064(a1 + 6192, (a1 + 8), (v11 >> 2) & 3, 0x34u, 9u, v15, v8 - v15, &unk_243990A24, &unk_243990AF8, &unk_243990B30, *(a1 + 30004), *(a1 + 30196), v6, a1 + 27324);
    if (v16 > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }

    else
    {
      return &v15[v16] - a3;
    }
  }

  else
  {
    *a2 = 0;
    if (a4 == 1)
    {
      return 1;
    }

    else
    {
      return -72;
    }
  }
}

uint64_t sub_24394B064(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, _DWORD *a6, size_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, uint64_t a14)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = a4;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v17 = 0;
      *a2 = a10;
      goto LABEL_19;
    }

    if (!a7)
    {
      v17 = -72;
      goto LABEL_19;
    }

    if (*a6 <= a4)
    {
      v20 = *(a8 + 4 * *a6);
      v21 = *(a9 + *a6);
      *a1 = 0;
      *(a1 + 11) = 0;
      *(a1 + 8) = 0;
      *(a1 + 10) = v21;
      *(a1 + 12) = v20;
      *a2 = a1;
      v17 = 1;
      goto LABEL_19;
    }

LABEL_17:
    v17 = -20;
    goto LABEL_19;
  }

  if (a3 == 2)
  {
    v31 = 0;
    v19 = sub_243901C10(v33, &v32, &v31, a6, a7);
    if (v19 <= 0xFFFFFFFFFFFFFF88 && v31 <= a5)
    {
      v17 = v19;
      sub_24394AC14(a1, v33, v32, a8, a9, v31, a14);
      *a2 = a1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!a11)
  {
    goto LABEL_17;
  }

  v17 = 0;
  if (a12 && a13 >= 25)
  {
    v22 = 0;
    do
    {
      _X11 = *a2 + v22;
      __asm { PRFM            #2, [X11] }

      v22 += 64;
    }

    while (v22 < 8 * ((1 << a5) + 1));
    v17 = 0;
  }

LABEL_19:
  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

unint64_t sub_24394B1F4(uint64_t a1, char *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, int a6, int a7)
{
  if (a5 > 0x20000)
  {
    return -72;
  }

  v31 = v7;
  v32 = v8;
  result = sub_24394A6C0(a1, a4, a5, a2, a3, a7);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v16 = &a4[result];
    v17 = a5 - result;
    if (a6)
    {
      v18 = *(a1 + 29944) >= a3 ? a3 : *(a1 + 29944);
    }

    else
    {
      v18 = a3 >= 0x20000 ? 0x20000 : a3;
    }

    v19 = *(a1 + 29904);
    v20 = *(a1 + 30196);
    v30 = 0;
    result = sub_24394AE58(a1, &v30, v16, v17);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v21 = result;
      v22 = !a2 || a3 == 0;
      v23 = v30;
      v24 = !v22 || v30 <= 0;
      v25 = !v24;
      result = -70;
      if (a2 <= 0xFFFFFFFFFFEFFFFFLL && !v25)
      {
        v26 = v17 - v21;
        if (!v20 && &a2[v18 - v19] >= 0x1000001 && v30 >= 9)
        {
          v27 = v30;
          v28 = sub_24394B398(*(a1 + 16), v30);
          v23 = v27;
          v20 = v28 > 6;
        }

        *(a1 + 30196) = 0;
        if (v20)
        {
          return sub_24394B3F4(a1, a2, a3, &v16[v21], v26, v23);
        }

        else
        {
          v29 = &v16[v21];
          if (*(a1 + 30376) == 2)
          {
            return sub_24394CD7C(a1, a2, a3, v29, v26, v23);
          }

          else
          {
            return sub_24394DF14(a1, a2, a3, v29, v26, v23);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_24394B398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  v4 = *(a1 + 4);
  v5 = 1;
  do
  {
    v6 = *(a1 + 8 + 8 * (v5 - 1) + 2);
    if (v3 <= v6)
    {
      v3 = *(a1 + 8 + 8 * (v5 - 1) + 2);
    }

    else
    {
      v3 = v3;
    }

    if (v6 > 0x16)
    {
      ++v2;
    }
  }

  while (!(v5++ >> v4));
  return (v2 << (8 - v4)) | (v3 << 32);
}

unint64_t sub_24394B3F4(uint64_t a1, char *__dst, uint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v6 = __dst;
  v333[22] = *MEMORY[0x277D85DE8];
  v324 = a1 + 26684;
  v8 = *(a1 + 30376);
  if (v8 == 1)
  {
    v9 = *(a1 + 30360);
  }

  else
  {
    v9 = &__dst[a3];
  }

  v10 = *(a1 + 30120);
  v328 = v10;
  v11 = *(a1 + 30368);
  if (!a6)
  {
    v18 = v6;
    goto LABEL_16;
  }

  v12 = *(a1 + 29896);
  v316 = *(a1 + 29904);
  v13 = *(a1 + 29912);
  v326 = 0u;
  memset(v327, 0, sizeof(v327));
  *(a1 + 30004) = 1;
  v14 = 88;
  v15 = 26684;
  v325 = 0u;
  do
  {
    *(&v325 + v14) = *(a1 + v15);
    v14 += 8;
    v15 += 4;
  }

  while (v14 != 112);
  if (a6 >= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = a6;
  }

  if (!a5)
  {
    goto LABEL_253;
  }

  *(&v326 + 1) = a4;
  *&v327[0] = a4 + 8;
  if (a5 < 8)
  {
    v23 = *a4;
    *&v326 = a4;
    *&v325 = v23;
    if (a5 > 4)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          v23 |= a4[6] << 48;
        }

        v23 += a4[5] << 40;
      }

      v23 += a4[4] << 32;
    }

    else
    {
      if (a5 == 2)
      {
LABEL_37:
        *&v325 = v23 + (a4[1] << 8);
LABEL_38:
        if (!a4[a5 - 1])
        {
          goto LABEL_253;
        }

        DWORD2(v325) = __clz(a4[a5 - 1]) - 8 * a5 + 41;
        goto LABEL_40;
      }

      if (a5 == 3)
      {
LABEL_36:
        v23 += a4[2] << 16;
        goto LABEL_37;
      }

      if (a5 != 4)
      {
        goto LABEL_38;
      }
    }

    v23 += a4[3] << 24;
    goto LABEL_36;
  }

  v17 = *&a4[a5 - 8];
  *&v326 = &a4[a5 - 8];
  *&v325 = v17;
  if (!HIBYTE(v17) || (DWORD2(v325) = 8 - (__clz(HIBYTE(v17)) ^ 0x1F), a5 > 0xFFFFFFFFFFFFFF88))
  {
LABEL_253:
    v22 = -20;
    goto LABEL_254;
  }

LABEL_40:
  v310 = v16;
  v313 = v11;
  v311 = v9;
  v309 = v6;
  v317 = v12;
  v26 = (v6 - v12);
  sub_24394E6A8(v327 + 1, &v325, *a1);
  sub_24394E6A8(&v327[1] + 1, &v325, *(a1 + 16));
  sub_24394E6A8(&v327[2] + 1, &v325, *(a1 + 8));
  v27 = DWORD2(v325);
  v323 = v13;
  if (DWORD2(v325) <= 0x40)
  {
    v30 = 0;
    v31 = *(&v326 + 1);
    v32 = *(&v327[0] + 1);
    v33 = *&v327[0];
    v34 = *&v327[1];
    v35 = *(&v327[2] + 1);
    v36 = *&v327[3];
    v37 = *(&v327[1] + 1);
    v38 = *&v327[2];
    v39 = v325;
    v40 = v326;
    v28 = v310 & ~(v310 >> 31);
    v41 = v333;
    v42 = *(&v327[3] + 1);
    v43 = *&v327[4];
    v29 = v317;
    while (1)
    {
      if (v40 >= v33)
      {
        v40 = (v40 - (v27 >> 3));
        *&v326 = v40;
        v27 &= 7u;
      }

      else
      {
        if (v40 == v31)
        {
          goto LABEL_51;
        }

        v44 = v27 >> 3;
        if ((v40 - v44) >= v31)
        {
          v44 = v44;
        }

        else
        {
          v44 = (v40 - v31);
        }

        v40 = (v40 - v44);
        *&v326 = v40;
        v27 -= 8 * v44;
      }

      DWORD2(v325) = v27;
      v39 = *v40;
      *&v325 = *v40;
LABEL_51:
      if (v28 == v30)
      {
        v80 = a6;
        goto LABEL_94;
      }

      v45 = (v34 + 8 * v32);
      v46 = (v36 + 8 * v35);
      v47 = *(v46 + 1);
      v48 = *(v45 + 1);
      v49 = (v38 + 8 * v37);
      v50 = *(v49 + 1);
      v51 = *(v45 + 2);
      v52 = *(v46 + 2);
      v53 = *(v49 + 2);
      v54 = *v45;
      v55 = *v46;
      v56 = *v49;
      v57 = *(v45 + 3);
      v58 = *(v46 + 3);
      v59 = *(v49 + 3);
      if (v53 >= 2)
      {
        v60 = v39 << v27 >> -v53;
        v27 += v53;
        *(&v327[4] + 1) = v43;
        v43 = v42;
        v42 = v60 + v50;
        goto LABEL_56;
      }

      if (!*(v49 + 2))
      {
        v42 = *(&v327[3] + (v48 == 0) + 1);
        v43 = *(&v327[3] + (v48 != 0) + 1);
        goto LABEL_56;
      }

      if (v48)
      {
        v50 = v50;
      }

      else
      {
        v50 = (v50 + 1);
      }

      v77 = v39 << v27++;
      DWORD2(v325) = v27;
      v78 = v50 + (v77 >> 63);
      if (v78 == 3)
      {
        v79 = v42 - 1;
        if (v42 - 1 <= 1)
        {
          v79 = 1;
        }
      }

      else
      {
        v79 = *(&v327[3] + v78 + 1);
        if (v79 <= 1)
        {
          v79 = 1;
        }

        if (v78 == 1)
        {
          goto LABEL_89;
        }
      }

      *(&v327[4] + 1) = v43;
LABEL_89:
      v43 = v42;
      v42 = v79;
LABEL_56:
      v61 = v52 + v51 + v53;
      *(&v327[3] + 1) = v42;
      *&v327[4] = v43;
      v62 = (v39 << v27 >> -v52) + v47;
      if (v52)
      {
        v27 += v52;
        v63 = v62;
      }

      else
      {
        v63 = v47;
      }

      if (v61 >= 0x1Fu)
      {
        v13 = v323;
        if (v27 <= 0x40)
        {
          if (v40 >= v33)
          {
            v40 = (v40 - (v27 >> 3));
            *&v326 = v40;
            v27 &= 7u;
LABEL_84:
            v39 = *v40;
            *&v325 = *v40;
            goto LABEL_61;
          }

          if (v40 != v31)
          {
            v76 = v27 >> 3;
            if ((v40 - v76) >= v31)
            {
              v76 = v76;
            }

            else
            {
              v76 = (v40 - v31);
            }

            v40 = (v40 - v76);
            *&v326 = v40;
            v27 -= 8 * v76;
            goto LABEL_84;
          }
        }
      }

      else
      {
        v13 = v323;
      }

LABEL_61:
      v64 = (v39 << v27 >> -v51) + v48;
      if (v51)
      {
        v27 += v51;
      }

      else
      {
        v64 = v48;
      }

      v65 = v27 + v57;
      v32 = ((v39 >> -v65) & dword_243990D38[v57]) + v54;
      v66 = v65 + v58;
      v35 = ((v39 >> -v66) & dword_243990D38[v58]) + v55;
      *(&v327[2] + 1) = v35;
      v27 = v66 + v59;
      v67 = (v39 >> -v27) & dword_243990D38[v59];
      DWORD2(v325) = v27;
      v37 = v67 + v56;
      *(&v327[0] + 1) = v32;
      *(&v327[1] + 1) = v37;
      v68 = &v26[v64];
      if (v42 <= &v26[v64])
      {
        v69 = v317;
      }

      else
      {
        v69 = v13;
      }

      _X5 = &v68[v69 - v42];
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X5,#0x40]
      }

      v26 = &v68[v63];
      *(v41 - 2) = v64;
      *(v41 - 1) = v63;
      *v41 = v42;
      v41 += 3;
      ++v30;
      v28 = v310 & ~(v310 >> 31);
      if (v27 > 0x40)
      {
        LODWORD(v28) = v30;
        goto LABEL_93;
      }
    }
  }

  LODWORD(v28) = 0;
  v29 = v317;
LABEL_93:
  v80 = a6;
  if (v28 < v310)
  {
    goto LABEL_253;
  }

LABEL_94:
  v312 = v311 - 32;
  v18 = v309;
  while (v27 < 0x41)
  {
    v81 = v326;
    if (v326 >= *&v327[0])
    {
      v81 = (v326 - (v27 >> 3));
      *&v326 = v81;
      v27 &= 7u;
    }

    else
    {
      if (v326 == *(&v326 + 1))
      {
        goto LABEL_104;
      }

      v82 = v27 >> 3;
      if ((v326 - v82) >= *(&v326 + 1))
      {
        v83 = v82;
      }

      else
      {
        v83 = (v326 - DWORD2(v326));
      }

      v81 = (v326 - v83);
      *&v326 = v326 - v83;
      v27 -= 8 * v83;
    }

    DWORD2(v325) = v27;
    *&v325 = *v81;
LABEL_104:
    if (v28 >= v80)
    {
      goto LABEL_255;
    }

    v84 = (*&v327[1] + 8 * *(&v327[0] + 1));
    v85 = (*&v327[3] + 8 * *(&v327[2] + 1));
    v86 = (*&v327[2] + 8 * *(&v327[1] + 1));
    v87 = *(v85 + 1);
    v88 = *(v84 + 1);
    v89 = *(v86 + 1);
    v90 = *(v84 + 2);
    v91 = *(v85 + 2);
    v92 = *(v86 + 2);
    v93 = *v84;
    v94 = *v85;
    v95 = *v86;
    v96 = *(v84 + 3);
    v97 = *(v85 + 3);
    v98 = *(v86 + 3);
    if (v92 >= 2)
    {
      v99 = v325 << v27 >> -v92;
      v27 += v92;
      v100 = v99 + v89;
      v327[4] = *(&v327[3] + 8);
      goto LABEL_110;
    }

    if (*(v86 + 2))
    {
      if (v88)
      {
        v89 = v89;
      }

      else
      {
        v89 = (v89 + 1);
      }

      v174 = v325 << v27++;
      DWORD2(v325) = v27;
      v175 = v89 + (v174 >> 63);
      if (v175 == 3)
      {
        if ((*(&v327[3] + 1) - 1) <= 1)
        {
          v100 = 1;
        }

        else
        {
          v100 = *(&v327[3] + 1) - 1;
        }

        goto LABEL_208;
      }

      if (*(&v327[3] + v175 + 1) <= 1uLL)
      {
        v100 = 1;
      }

      else
      {
        v100 = *(&v327[3] + v175 + 1);
      }

      if (v175 != 1)
      {
LABEL_208:
        *(&v327[4] + 1) = *&v327[4];
      }

      v101 = *(&v327[3] + 1);
      goto LABEL_109;
    }

    v100 = *(&v327[3] + (v88 == 0) + 1);
    v101 = *(&v327[3] + (v88 != 0) + 1);
LABEL_109:
    *&v327[4] = v101;
LABEL_110:
    *(&v327[3] + 1) = v100;
    if (v91)
    {
      v102 = v325 << v27 >> -v91;
      v27 += v91;
      v87 += v102;
    }

    v322 = v26;
    if ((v91 + v90 + v92) >= 0x1Fu && v27 <= 0x40)
    {
      if (v81 >= *&v327[0])
      {
        v171 = (v81 - (v27 >> 3));
        *&v326 = v171;
        v27 &= 7u;
      }

      else
      {
        if (v81 == *(&v326 + 1))
        {
          goto LABEL_113;
        }

        v169 = v27 >> 3;
        if (v81 - v169 >= *(&v326 + 1))
        {
          v170 = v169;
        }

        else
        {
          v170 = (v81 - DWORD2(v326));
        }

        v171 = (v81 - v170);
        *&v326 = v171;
        v27 -= 8 * v170;
      }

      *&v325 = *v171;
    }

LABEL_113:
    v103 = (v325 << v27 >> -v90) + v88;
    _ZF = v90 == 0;
    if (v90)
    {
      v105 = v27 + v90;
    }

    else
    {
      v105 = v27;
    }

    if (_ZF)
    {
      v106 = v88;
    }

    else
    {
      v106 = v103;
    }

    v107 = ((v325 >> -(v105 + v96)) & dword_243990D38[v96]) + v93;
    v108 = v105 + v96 + v97;
    *(&v327[2] + 1) = ((v325 >> -v108) & dword_243990D38[v97]) + v94;
    v109 = v108 + v98;
    v110 = v325 >> -(v108 + v98);
    v111 = dword_243990D38[v98];
    DWORD2(v325) = v109;
    *(&v327[0] + 1) = v107;
    *(&v327[1] + 1) = (v110 & v111) + v95;
    v321 = v100;
    if (*(v324 + 3692) != 2)
    {
      v319 = v87;
      v127 = &v332[3 * (v28 & 7)];
      v128 = *v127;
      v129 = v127[1];
      v130 = v127[2];
      v131 = &v18[*v127];
      v132 = v328;
      v133 = &v328[*v127];
      _X8 = &v131[-v130];
      __asm { PRFM            #0, [X8] }

      if (v133 > v313 || (v22 = v129 + v128, &v18[v129 + v128] > v312))
      {
        v329 = v128;
        v330 = v129;
        v331 = v130;
        v139 = v18;
        v172 = v106;
        v13 = v323;
        v173 = sub_24394E7F4(v18, v311, &v329, &v328, v313, v29, v316, v323);
        v80 = a6;
        v22 = v173;
        v106 = v172;
        goto LABEL_160;
      }

      *v18 = *v328;
      v235 = v128 > 0x10;
      v136 = v128 - 16;
      if (v235)
      {
        *(v18 + 1) = *(v132 + 1);
        if (v136 >= 17)
        {
          v178 = v18 + 32;
          v179 = (v132 + 48);
          do
          {
            *v178 = *(v179 - 1);
            v180 = *v179;
            v179 += 2;
            *(v178 + 1) = v180;
            v178 += 32;
          }

          while (v178 < v131);
        }
      }

      v328 = v133;
      if (v130 > v131 - v29)
      {
        if (v130 > &v131[-v316])
        {
          goto LABEL_253;
        }

        v137 = v106;
        v138 = v28;
        v139 = v18;
        v28 = _X8 - v29;
        v140 = (v323 + _X8 - v29);
        if (v140 + v129 > v323)
        {
          memmove(v131, v140, v29 - _X8);
          v131 -= v28;
          v129 += v28;
          _X8 = v29;
          v80 = a6;
          v18 = v139;
          LODWORD(v28) = v138;
          v106 = v137;
          goto LABEL_141;
        }

        memmove(v131, v140, v129);
        v80 = a6;
        v152 = v322;
        v13 = v323;
        LODWORD(v28) = v138;
LABEL_166:
        v87 = v319;
        v106 = v137;
LABEL_167:
        if (v22 > 0xFFFFFFFFFFFFFF88)
        {
          goto LABEL_254;
        }

        v159 = &v152[v106];
        v29 = v317;
        if (v321 <= v159)
        {
          v160 = v317;
        }

        else
        {
          v160 = v13;
        }

        _X9 = &v159[v160 - v321];
        __asm
        {
          PRFM            #0, [X9]
          PRFM            #0, [X9,#0x40]
        }

        v164 = &v332[3 * (v28 & 7)];
        *v164 = v106;
        v164[1] = v87;
        v164[2] = v321;
        v18 = &v139[v22];
        goto LABEL_178;
      }

LABEL_141:
      if (v130 >= 0x10)
      {
        *v131 = *_X8;
        if (v129 >= 17)
        {
          v139 = v18;
          v141 = v131 + 16;
          v142 = (_X8 + 32);
          v13 = v323;
          do
          {
            *v141 = *(v142 - 1);
            v143 = *v142;
            v142 += 2;
            *(v141 + 1) = v143;
            v141 += 32;
          }

          while (v141 < &v131[v129]);
LABEL_160:
          v152 = v322;
LABEL_161:
          v87 = v319;
          goto LABEL_167;
        }

LABEL_155:
        v139 = v18;
LABEL_156:
        v13 = v323;
        goto LABEL_160;
      }

      if (v130 > 7)
      {
        *v131 = *_X8;
      }

      else
      {
        v183 = dword_243990DD8[v130];
        *v131 = *_X8;
        v131[1] = _X8[1];
        v131[2] = _X8[2];
        v131[3] = _X8[3];
        v184 = &_X8[dword_243990DB8[v130]];
        *(v131 + 1) = *v184;
        _X8 = &v184[-v183];
      }

      v139 = v18;
      if (v129 < 9)
      {
        goto LABEL_156;
      }

      v193 = _X8 + 8;
      v194 = v131 + 8;
      v195 = &v131[v129];
      if (v131 - _X8 > 15)
      {
        *v194 = *v193;
        if (v129 >= 25)
        {
          v203 = v131 + 24;
          v204 = (_X8 + 40);
          do
          {
            *v203 = *(v204 - 1);
            v205 = *v204;
            v204 += 2;
            *(v203 + 1) = v205;
            v203 += 32;
          }

          while (v203 < v195);
        }
      }

      else
      {
        do
        {
          v196 = *v193;
          v193 = (v193 + 8);
          *v194 = v196;
          v194 += 8;
        }

        while (v194 < v195);
      }

      goto LABEL_250;
    }

    v112 = v328;
    v113 = &v332[3 * (v28 & 7)];
    v114 = *v113;
    v115 = &v328[*v113];
    v116 = *(a1 + 30368);
    if (v115 <= v116)
    {
      v319 = v87;
      v144 = v115 - 32;
      v145 = v113[1];
      v146 = v113[2];
      if (v115 > v313 || (v22 = v145 + v114, &v18[v145 + v114] > v144))
      {
        v329 = v114;
        v330 = v145;
        v331 = v146;
        v13 = v323;
        v139 = v18;
        v176 = v106;
        v177 = sub_24394EAB0(v18, v311, v144, &v329, &v328, v313, v29, v316, v323);
        v80 = a6;
        v22 = v177;
        v106 = v176;
      }

      else
      {
        v147 = &v18[v114];
        *v18 = *v328;
        if (v114 > 0x10)
        {
          *(v18 + 1) = *(v112 + 1);
          if (v114 - 16 >= 17)
          {
            v185 = v18 + 32;
            v186 = (v112 + 48);
            do
            {
              *v185 = *(v186 - 1);
              v187 = *v186;
              v186 += 2;
              *(v185 + 1) = v187;
              v185 += 32;
            }

            while (v185 < v147);
          }
        }

        v148 = &v147[-v146];
        v328 = v115;
        if (v146 > v147 - v29)
        {
          if (v146 > &v147[-v316])
          {
            goto LABEL_253;
          }

          v149 = v28;
          v137 = v106;
          v139 = v18;
          v28 = v148 - v29;
          v150 = (v323 + v148 - v29);
          if (v150 + v145 <= v323)
          {
            memmove(v147, v150, v145);
            v80 = a6;
            v152 = v322;
            v13 = v323;
            LODWORD(v28) = v149;
            goto LABEL_166;
          }

          v151 = v29 - v148;
          v148 = v29;
          memmove(v147, v150, v151);
          v147 -= v28;
          v145 += v28;
          v80 = a6;
          v18 = v139;
          LODWORD(v28) = v149;
          v106 = v137;
        }

        if (v146 >= 0x10)
        {
          *v147 = *v148;
          if (v145 >= 17)
          {
            v139 = v18;
            v153 = v147 + 16;
            v154 = (v148 + 32);
            v13 = v323;
            do
            {
              *v153 = *(v154 - 1);
              v155 = *v154;
              v154 += 2;
              *(v153 + 1) = v155;
              v153 += 32;
            }

            while (v153 < &v147[v145]);
            goto LABEL_160;
          }

          goto LABEL_155;
        }

        v139 = v18;
        if (v146 > 7)
        {
          *v147 = *v148;
        }

        else
        {
          v191 = dword_243990DD8[v146];
          *v147 = *v148;
          v147[1] = v148[1];
          v147[2] = v148[2];
          v147[3] = v148[3];
          v192 = &v148[dword_243990DB8[v146]];
          *(v147 + 1) = *v192;
          v148 = &v192[-v191];
        }

        if (v145 < 9)
        {
          goto LABEL_242;
        }

        v199 = (v148 + 8);
        v200 = v147 + 8;
        v201 = &v147[v145];
        if (v147 - v148 <= 15)
        {
          do
          {
            v202 = *v199++;
            *v200 = v202;
            v200 += 8;
          }

          while (v200 < v201);
          goto LABEL_250;
        }

        *v200 = *v199;
        if (v145 < 25)
        {
LABEL_242:
          v80 = a6;
          goto LABEL_156;
        }

        v213 = v147 + 24;
        v214 = (v148 + 40);
        do
        {
          *v213 = *(v214 - 1);
          v215 = *v214;
          v214 += 2;
          *(v213 + 1) = v215;
          v213 += 32;
        }

        while (v213 < v201);
LABEL_250:
        v80 = a6;
        v13 = v323;
      }

      v152 = v322;
      goto LABEL_161;
    }

    v117 = v116 - v328;
    v320 = v28;
    if (v116 != v328)
    {
      if (v117 > v311 - v18)
      {
        goto LABEL_22;
      }

      v118 = v106;
      v119 = v18;
      sub_24394E748(v18, v328, v117);
      v106 = v118;
      v29 = v317;
      v80 = a6;
      v114 -= v117;
      *v113 = v114;
      v18 = &v119[v117];
    }

    v328 = (v324 + 3696);
    *(v324 + 3692) = 0;
    v121 = v113[1];
    v120 = v113[2];
    v122 = &v18[v114];
    _X26 = &v18[v114 - v120];
    __asm { PRFM            #0, [X26] }

    v318 = v18;
    if (v114 > 0x10000 || (v22 = v121 + v114, &v18[v121 + v114] > v312))
    {
      v329 = v114;
      v330 = v121;
      v331 = v120;
      v181 = v106;
      v182 = sub_24394E7F4(v18, v311, &v329, &v328, a1 + 95916, v29, v316, v323);
      v80 = a6;
      v22 = v182;
      v106 = v181;
      goto LABEL_247;
    }

    *v18 = *(v324 + 3696);
    if (v114 > 0x10)
    {
      *(v18 + 1) = *(v324 + 3712);
      if (v114 - 16 >= 17)
      {
        v188 = v18 + 32;
        v189 = (v324 + 3744);
        do
        {
          *v188 = *(v189 - 1);
          v190 = *v189;
          v189 += 2;
          *(v188 + 1) = v190;
          v188 += 32;
        }

        while (v188 < v122);
      }
    }

    v328 = (a1 + 30380 + v114);
    if (v120 <= v122 - v29)
    {
      goto LABEL_131;
    }

    if (v120 > &v122[-v316])
    {
      goto LABEL_253;
    }

    v314 = v106;
    v125 = _X26 - v29;
    v126 = (v323 + _X26 - v29);
    if (v126 + v121 > v323)
    {
      _X26 = v29;
      memmove(v122, v126, -v125);
      v122 -= v125;
      v121 += v125;
      v80 = a6;
      v106 = v314;
LABEL_131:
      if (v120 >= 0x10)
      {
        *v122 = *_X26;
        if (v121 >= 17)
        {
          v156 = v122 + 16;
          v157 = (_X26 + 32);
          LODWORD(v28) = v320;
          do
          {
            *v156 = *(v157 - 1);
            v158 = *v157;
            v157 += 2;
            *(v156 + 1) = v158;
            v156 += 32;
          }

          while (v156 < &v122[v121]);
        }

        else
        {
          LODWORD(v28) = v320;
        }

        goto LABEL_173;
      }

      if (v120 > 7)
      {
        *v122 = *_X26;
      }

      else
      {
        v197 = dword_243990DD8[v120];
        *v122 = *_X26;
        v122[1] = _X26[1];
        v122[2] = _X26[2];
        v122[3] = _X26[3];
        v198 = &_X26[dword_243990DB8[v120]];
        *(v122 + 1) = *v198;
        _X26 = &v198[-v197];
      }

      if (v121 >= 9)
      {
        v206 = _X26 + 8;
        v207 = v122 + 8;
        v208 = &v122[v121];
        if (v122 - _X26 > 15)
        {
          *v207 = *v206;
          if (v121 >= 25)
          {
            v210 = v122 + 24;
            v211 = (_X26 + 40);
            do
            {
              *v210 = *(v211 - 1);
              v212 = *v211;
              v211 += 2;
              *(v210 + 1) = v212;
              v210 += 32;
            }

            while (v210 < v208);
          }
        }

        else
        {
          do
          {
            v209 = *v206;
            v206 = (v206 + 8);
            *v207 = v209;
            v207 += 8;
          }

          while (v207 < v208);
        }
      }

      v80 = a6;
LABEL_247:
      LODWORD(v28) = v320;
      goto LABEL_173;
    }

    memmove(v122, v126, v121);
    v80 = a6;
    LODWORD(v28) = v320;
    v106 = v314;
LABEL_173:
    if (v22 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_254;
    }

    v159 = &v26[v106];
    v29 = v317;
    if (v321 <= &v26[v106])
    {
      v165 = v317;
    }

    else
    {
      v165 = v323;
    }

    _X9 = &v159[v165 - v321];
    __asm
    {
      PRFM            #0, [X9]
      PRFM            #0, [X9,#0x40]
    }

    *v113 = v106;
    v113[1] = v87;
    v113[2] = v321;
    v13 = v323;
    v18 = &v318[v22];
    v313 = a1 + 95916;
LABEL_178:
    v26 = &v159[v87];
    LODWORD(v28) = v28 + 1;
    v27 = DWORD2(v325);
  }

  if (v28 < v80)
  {
    goto LABEL_253;
  }

LABEL_255:
  v218 = v28 - v310;
  if (v218 < v80)
  {
    v11 = v313;
    while (1)
    {
      v219 = &v332[3 * (v218 & 7)];
      if (*(v324 + 3692) == 2)
      {
        v220 = v328;
        v221 = *v219;
        v222 = &v328[*v219];
        v223 = *(a1 + 30368);
        if (v222 > v223)
        {
          v224 = v223 - v328;
          if (v223 == v328)
          {
            v225 = (v324 + 3696);
          }

          else
          {
            v225 = (v324 + 3696);
            if (v224 > v311 - v18)
            {
              goto LABEL_22;
            }

            v226 = v18;
            sub_24394E748(v18, v328, v224);
            v29 = v317;
            v80 = a6;
            v221 -= v224;
            *v219 = v221;
            v18 = &v226[v224];
          }

          v328 = v225;
          *(v324 + 3692) = 0;
          v253 = v219[1];
          v254 = v219[2];
          v255 = &v18[v221];
          v22 = v253 + v221;
          _X8 = &v18[v221 - v254];
          __asm { PRFM            #0, [X8] }

          if (v221 > 0x10000 || &v18[v253 + v221] > v312)
          {
            v329 = v221;
            v330 = v253;
            v331 = v254;
            v272 = v18;
            v13 = v323;
            v273 = sub_24394E7F4(v18, v311, &v329, &v328, a1 + 95916, v29, v316, v323);
            v18 = v272;
            v29 = v317;
            v80 = a6;
            v22 = v273;
          }

          else
          {
            *v18 = *v225;
            if (v221 > 0x10)
            {
              *(v18 + 1) = *(v324 + 3712);
              if (v221 - 16 >= 17)
              {
                v279 = v18 + 32;
                v280 = (v324 + 3744);
                do
                {
                  *v279 = *(v280 - 1);
                  v281 = *v280;
                  v280 += 2;
                  *(v279 + 1) = v281;
                  v279 += 32;
                }

                while (v279 < v255);
              }
            }

            v328 = &v225[v221];
            if (v254 <= v255 - v29)
            {
LABEL_299:
              v13 = v323;
              if (v254 < 0x10)
              {
                if (v254 > 7)
                {
                  *v255 = *_X8;
                }

                else
                {
                  v288 = dword_243990DD8[v254];
                  *v255 = *_X8;
                  v255[1] = _X8[1];
                  v255[2] = _X8[2];
                  v255[3] = _X8[3];
                  v289 = &_X8[dword_243990DB8[v254]];
                  *(v255 + 1) = *v289;
                  _X8 = &v289[-v288];
                }

                if (v253 >= 9)
                {
                  v297 = _X8 + 8;
                  v298 = v255 + 8;
                  v299 = &v255[v253];
                  if (v255 - _X8 > 15)
                  {
                    *v298 = *v297;
                    if (v253 >= 25)
                    {
                      v304 = v255 + 24;
                      v305 = (_X8 + 40);
                      do
                      {
                        *v304 = *(v305 - 1);
                        v306 = *v305;
                        v305 += 2;
                        *(v304 + 1) = v306;
                        v304 += 32;
                      }

                      while (v304 < v299);
                    }
                  }

                  else
                  {
                    do
                    {
                      v300 = *v297;
                      v297 = (v297 + 8);
                      *v298 = v300;
                      v298 = (v298 + 8);
                    }

                    while (v298 < v299);
                  }
                }

                v80 = a6;
                v29 = v317;
                goto LABEL_313;
              }

              *v255 = *_X8;
              if (v253 >= 17)
              {
                v262 = v255 + 16;
                v263 = (_X8 + 32);
                do
                {
                  *v262 = *(v263 - 1);
                  v264 = *v263;
                  v263 += 2;
                  *(v262 + 1) = v264;
                  v262 += 32;
                }

                while (v262 < &v255[v253]);
              }
            }

            else
            {
              if (v254 > &v255[-v316])
              {
                goto LABEL_253;
              }

              v259 = v18;
              v260 = _X8 - v29;
              v261 = (v323 + _X8 - v29);
              if (v261 + v253 > v323)
              {
                memmove(v255, v261, v29 - _X8);
                v255 -= v260;
                v253 += v260;
                _X8 = v29;
                v80 = a6;
                v18 = v259;
                goto LABEL_299;
              }

              memmove(v255, v261, v253);
              v80 = a6;
              v18 = v259;
LABEL_313:
              v13 = v323;
            }
          }

          if (v22 >= 0xFFFFFFFFFFFFFF89)
          {
            goto LABEL_254;
          }

          v18 += v22;
          v11 = a1 + 95916;
          goto LABEL_316;
        }

        v244 = v222 - 32;
        v245 = v219[1];
        v246 = v219[2];
        v22 = v245 + v221;
        if (v222 > v11 || &v18[v245 + v221] > v244)
        {
          v329 = v221;
          v330 = v245;
          v331 = v246;
          v13 = v323;
          v237 = v18;
          v268 = sub_24394EAB0(v18, v311, v244, &v329, &v328, v11, v29, v316, v323);
          goto LABEL_320;
        }

        v248 = &v18[v221];
        *v18 = *v328;
        if (v221 > 0x10)
        {
          *(v18 + 1) = *(v220 + 1);
          if (v221 - 16 >= 17)
          {
            v276 = v18 + 32;
            v277 = (v220 + 48);
            do
            {
              *v276 = *(v277 - 1);
              v278 = *v277;
              v277 += 2;
              *(v276 + 1) = v278;
              v276 += 32;
            }

            while (v276 < v248);
          }
        }

        v249 = &v248[-v246];
        v328 = v222;
        v13 = v323;
        if (v246 > v248 - v29)
        {
          if (v246 > &v248[-v316])
          {
            goto LABEL_253;
          }

          v237 = v18;
          v250 = v249 - v29;
          v239 = (v323 + v249 - v29);
          v240 = v29;
          if (v239 + v245 <= v323)
          {
            v251 = v248;
            v252 = v245;
LABEL_308:
            memmove(v251, v239, v252);
            v80 = a6;
            v29 = v240;
            goto LABEL_309;
          }

          memmove(v248, v239, v29 - v249);
          v248 -= v250;
          v245 += v250;
          v249 = v29;
          v80 = a6;
          v18 = v237;
          v13 = v323;
        }

        if (v246 < 0x10)
        {
          v237 = v18;
          if (v246 > 7)
          {
            *v248 = *v249;
          }

          else
          {
            v282 = dword_243990DD8[v246];
            *v248 = *v249;
            v248[1] = v249[1];
            v248[2] = v249[2];
            v248[3] = v249[3];
            v283 = &v249[dword_243990DB8[v246]];
            *(v248 + 1) = *v283;
            v249 = &v283[-v282];
          }

          if (v245 >= 9)
          {
            v290 = v249 + 8;
            v291 = v248 + 8;
            v292 = &v248[v245];
            if (v248 - v249 > 15)
            {
              *v291 = *v290;
              if (v245 >= 25)
              {
                v301 = v248 + 24;
                v302 = (v249 + 40);
                do
                {
                  *v301 = *(v302 - 1);
                  v303 = *v302;
                  v302 += 2;
                  *(v301 + 1) = v303;
                  v301 += 32;
                }

                while (v301 < v292);
              }
            }

            else
            {
              do
              {
                v293 = *v290;
                v290 = (v290 + 8);
                *v291 = v293;
                v291 += 8;
              }

              while (v291 < v292);
            }
          }

          goto LABEL_362;
        }

        *v248 = *v249;
        if (v245 >= 17)
        {
          v237 = v18;
          v265 = v248 + 16;
          v266 = (v249 + 32);
          do
          {
            *v265 = *(v266 - 1);
            v267 = *v266;
            v266 += 2;
            *(v265 + 1) = v267;
            v265 += 32;
          }

          while (v265 < &v248[v245]);
          goto LABEL_310;
        }
      }

      else
      {
        v227 = *v219;
        v228 = v219[1];
        v229 = v219[2];
        v230 = &v18[v227];
        v22 = v228 + v227;
        v231 = v328;
        v232 = &v328[v227];
        _X8 = &v18[v227 - v229];
        __asm { PRFM            #0, [X8] }

        v235 = &v328[v227] > v11 || &v18[v228 + v227] > v312;
        if (v235)
        {
          v329 = v227;
          v330 = v228;
          v331 = v229;
          v237 = v18;
          v268 = sub_24394E7F4(v18, v311, &v329, &v328, v11, v29, v316, v13);
LABEL_320:
          v29 = v317;
          v80 = a6;
          v22 = v268;
          goto LABEL_310;
        }

        *v18 = *v328;
        v235 = v227 > 0x10;
        v236 = v227 - 16;
        if (v235)
        {
          *(v18 + 1) = *(v231 + 1);
          if (v236 >= 17)
          {
            v269 = v18 + 32;
            v270 = (v231 + 48);
            do
            {
              *v269 = *(v270 - 1);
              v271 = *v270;
              v270 += 2;
              *(v269 + 1) = v271;
              v269 += 32;
            }

            while (v269 < v230);
          }
        }

        v328 = v232;
        if (v229 > v230 - v29)
        {
          if (v229 > &v230[-v316])
          {
            goto LABEL_253;
          }

          v237 = v18;
          v238 = _X8 - v29;
          v239 = (v323 + _X8 - v29);
          v240 = v29;
          if (v239 + v228 <= v323)
          {
            v251 = v230;
            v252 = v228;
            goto LABEL_308;
          }

          memmove(v230, v239, v29 - _X8);
          v230 -= v238;
          v228 += v238;
          _X8 = v29;
          v80 = a6;
          v18 = v237;
          v13 = v323;
        }

        if (v229 < 0x10)
        {
          v237 = v18;
          if (v229 > 7)
          {
            *v230 = *_X8;
          }

          else
          {
            v274 = dword_243990DD8[v229];
            *v230 = *_X8;
            v230[1] = _X8[1];
            v230[2] = _X8[2];
            v230[3] = _X8[3];
            v275 = &_X8[dword_243990DB8[v229]];
            *(v230 + 1) = *v275;
            _X8 = &v275[-v274];
          }

          if (v228 >= 9)
          {
            v284 = _X8 + 8;
            v285 = v230 + 8;
            v286 = &v230[v228];
            if (v230 - _X8 > 15)
            {
              *v285 = *v284;
              if (v228 >= 25)
              {
                v294 = v230 + 24;
                v295 = (_X8 + 40);
                do
                {
                  *v294 = *(v295 - 1);
                  v296 = *v295;
                  v295 += 2;
                  *(v294 + 1) = v296;
                  v294 += 32;
                }

                while (v294 < v286);
              }
            }

            else
            {
              do
              {
                v287 = *v284;
                v284 = (v284 + 8);
                *v285 = v287;
                v285 += 8;
              }

              while (v285 < v286);
            }
          }

LABEL_362:
          v80 = a6;
          v29 = v317;
LABEL_309:
          v13 = v323;
          goto LABEL_310;
        }

        *v230 = *_X8;
        if (v228 >= 17)
        {
          v237 = v18;
          v241 = v230 + 16;
          v242 = (_X8 + 32);
          do
          {
            *v241 = *(v242 - 1);
            v243 = *v242;
            v242 += 2;
            *(v241 + 1) = v243;
            v241 += 32;
          }

          while (v241 < &v230[v228]);
          goto LABEL_310;
        }
      }

      v237 = v18;
LABEL_310:
      if (v22 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_254;
      }

      v18 = &v237[v22];
LABEL_316:
      if (++v218 == v80)
      {
        goto LABEL_368;
      }
    }
  }

  v11 = v313;
LABEL_368:
  v307 = 88;
  v308 = v324;
  do
  {
    *v308++ = *(&v325 + v307);
    v307 += 8;
  }

  while (v307 != 112);
  v8 = *(v324 + 3692);
  v10 = v328;
  v6 = v309;
  v9 = v311;
LABEL_16:
  if (v8 == 2)
  {
    v19 = v11 - v10;
    if (v11 - v10 > v9 - v18)
    {
LABEL_22:
      v22 = -70;
      goto LABEL_254;
    }

    if (v18)
    {
      v20 = v18;
      memmove(v18, v10, v11 - v10);
      v18 = &v20[v19];
    }

    v10 = (a1 + 30380);
    v11 = a1 + 95916;
  }

  v21 = v11 - v10;
  if (v11 - v10 > v9 - v18)
  {
    goto LABEL_22;
  }

  if (v18)
  {
    v24 = v18;
    memmove(v18, v10, v11 - v10);
    v25 = &v24[v21];
  }

  else
  {
    v25 = 0;
  }

  v22 = v25 - v6;
LABEL_254:
  v216 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_24394CD7C(uint64_t a1, char *__dst, uint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v6 = __dst;
  v7 = a1;
  v8 = a1 + 26684;
  v9 = &__dst[a3];
  v10 = *(a1 + 30120);
  v220 = v10;
  v11 = *(a1 + 30368);
  v211 = a6;
  if (!a6)
  {
    v16 = __dst;
    goto LABEL_10;
  }

  v12 = *(a1 + 29896);
  v215 = *(a1 + 29912);
  v216 = *(a1 + 29904);
  v218 = 0u;
  memset(v219, 0, sizeof(v219));
  *(a1 + 30004) = 1;
  v13 = 88;
  v14 = 26684;
  v217 = 0u;
  do
  {
    *(&v217 + v13) = *(a1 + v14);
    v13 += 8;
    v14 += 4;
  }

  while (v13 != 112);
  if (!a5)
  {
    return -20;
  }

  *(&v218 + 1) = a4;
  *&v219[0] = a4 + 8;
  if (a5 >= 8)
  {
    v15 = *&a4[a5 - 8];
    *&v218 = &a4[a5 - 8];
    *&v217 = v15;
    if (!HIBYTE(v15))
    {
      return -20;
    }

    DWORD2(v217) = 8 - (__clz(HIBYTE(v15)) ^ 0x1F);
    if (a5 > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }

    goto LABEL_34;
  }

  v20 = *a4;
  *&v218 = a4;
  *&v217 = v20;
  if (a5 > 4)
  {
    if (a5 != 5)
    {
      if (a5 != 6)
      {
        v20 |= a4[6] << 48;
      }

      v20 += a4[5] << 40;
    }

    v20 += a4[4] << 32;
    goto LABEL_29;
  }

  if (a5 != 2)
  {
    if (a5 == 3)
    {
LABEL_30:
      v20 += a4[2] << 16;
      goto LABEL_31;
    }

    if (a5 != 4)
    {
      goto LABEL_32;
    }

LABEL_29:
    v20 += a4[3] << 24;
    goto LABEL_30;
  }

LABEL_31:
  *&v217 = v20 + (a4[1] << 8);
LABEL_32:
  if (!a4[a5 - 1])
  {
    return -20;
  }

  DWORD2(v217) = __clz(a4[a5 - 1]) - 8 * a5 + 41;
LABEL_34:
  v213 = v11;
  sub_24394E6A8(v219 + 1, &v217, *a1);
  sub_24394E6A8(&v219[1] + 1, &v217, v7[2]);
  sub_24394E6A8(&v219[2] + 1, &v217, v7[1]);
  v22 = (*&v219[1] + 8 * *(&v219[0] + 1));
  v23 = (*&v219[3] + 8 * *(&v219[2] + 1));
  v24 = (*&v219[2] + 8 * *(&v219[1] + 1));
  v25 = *(v23 + 1);
  v26 = *(v22 + 1);
  v27 = *(v24 + 1);
  v28 = *(v22 + 2);
  v29 = *(v23 + 2);
  v30 = *(v24 + 2);
  v31 = *v22;
  v32 = *v23;
  v33 = *v24;
  v34 = *(v22 + 3);
  v35 = *(v23 + 3);
  v36 = *(v24 + 3);
  v209 = v8;
  v212 = v7;
  if (v30 < 2)
  {
    if (!*(v24 + 2))
    {
      v38 = *(&v219[3] + (v26 == 0) + 1);
      *&v219[4] = *(&v219[3] + (v26 != 0) + 1);
      v11 = v213;
      goto LABEL_39;
    }

    if (v26)
    {
      v27 = v27;
    }

    else
    {
      v27 = (v27 + 1);
    }

    v193 = v217 << SBYTE8(v217);
    ++DWORD2(v217);
    v194 = v27 + (v193 >> 63);
    if (v194 == 3)
    {
      if ((*(&v219[3] + 1) - 1) <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = *(&v219[3] + 1) - 1;
      }
    }

    else
    {
      if (*(&v219[3] + v194 + 1) <= 1uLL)
      {
        v38 = 1;
      }

      else
      {
        v38 = *(&v219[3] + v194 + 1);
      }

      if (v194 == 1)
      {
        goto LABEL_264;
      }
    }

    *(&v219[4] + 1) = *&v219[4];
LABEL_264:
    *&v219[4] = *(&v219[3] + 1);
    goto LABEL_36;
  }

  v37 = v217 << SBYTE8(v217) >> -v30;
  DWORD2(v217) += v30;
  v38 = v37 + v27;
  v219[4] = *(&v219[3] + 8);
LABEL_36:
  v11 = v213;
LABEL_39:
  v39 = v29 + v28 + v30;
  *(&v219[3] + 1) = v38;
  if (v29)
  {
    v40 = v217 << SBYTE8(v217) >> -v29;
    DWORD2(v217) += v29;
    v25 += v40;
  }

  v41 = DWORD2(v217);
  if (v39 >= 0x1Fu && DWORD2(v217) <= 0x40)
  {
    v189 = v218;
    if (v218 >= *&v219[0])
    {
      *&v218 = v218 - (DWORD2(v217) >> 3);
      v41 = BYTE8(v217) & 7;
      *&v217 = *v218;
      v11 = v213;
    }

    else
    {
      v11 = v213;
      if (v218 != *(&v218 + 1))
      {
        v190 = DWORD2(v217) >> 3;
        if (v218 - v190 >= *(&v218 + 1))
        {
          v191 = v190;
        }

        else
        {
          v191 = (v218 - DWORD2(v218));
        }

        *&v218 = v218 - v191;
        v41 = DWORD2(v217) - 8 * v191;
        *&v217 = *(v189 - v191);
      }
    }
  }

  v42 = (v217 << v41 >> -v28) + v26;
  _ZF = v28 == 0;
  if (v28)
  {
    v44 = v41 + v28;
  }

  else
  {
    v44 = v41;
  }

  if (_ZF)
  {
    v45 = v26;
  }

  else
  {
    v45 = v42;
  }

  v46 = ((v217 >> -(v44 + v34)) & dword_243990D38[v34]) + v31;
  *(&v219[2] + 1) = ((v217 >> -(v44 + v34 + v35)) & dword_243990D38[v35]) + v32;
  v47 = v44 + v34 + v35 + v36;
  v48 = (v217 >> -(v44 + v34 + v35 + v36)) & dword_243990D38[v36];
  DWORD2(v217) = v47;
  *(&v219[0] + 1) = v46;
  *(&v219[1] + 1) = v48 + v33;
  v49 = &v10[v45];
  v50 = v7[3796];
  v208 = v6;
  v210 = v9;
  v16 = v6;
  if (&v10[v45] <= v50)
  {
    v51 = v211;
    while (1)
    {
      v52 = v49 - 32;
      if (v49 > v11 || (v19 = v45 + v25, &v16[v45 + v25] > v52))
      {
        v221 = v45;
        v222 = v25;
        v223 = v38;
        v90 = sub_24394EAB0(v16, v9, v52, &v221, &v220, v213, v12, v216, v215);
        v11 = v213;
        v19 = v90;
      }

      else
      {
        v53 = &v16[v45];
        *v16 = *v10;
        if (v45 > 0x10)
        {
          *(v16 + 1) = *(v10 + 1);
          if (v45 - 16 >= 17)
          {
            v91 = v16 + 32;
            v92 = (v10 + 48);
            do
            {
              *v91 = *(v92 - 1);
              v93 = *v92;
              v92 += 2;
              *(v91 + 1) = v93;
              v91 += 32;
            }

            while (v91 < v53);
          }
        }

        v54 = &v53[-v38];
        v220 = v49;
        if (v38 > v53 - v12)
        {
          if (v38 > &v53[-v216])
          {
            return -20;
          }

          v55 = v54 - v12;
          v56 = (v215 + v54 - v12);
          if (v56 + v25 <= v215)
          {
            memmove(&v16[v45], v56, v25);
            v7 = v212;
            v11 = v213;
            goto LABEL_63;
          }

          v57 = &v16[v45];
          v58 = v25;
          memmove(v57, v56, v12 - v54);
          v53 -= v55;
          v25 = v55 + v58;
          v54 = v12;
          v11 = v213;
        }

        if (v38 >= 0x10)
        {
          *v53 = *v54;
          if (v25 >= 17)
          {
            v59 = v53 + 16;
            v60 = (v54 + 32);
            do
            {
              *v59 = *(v60 - 1);
              v61 = *v60;
              v60 += 2;
              *(v59 + 1) = v61;
              v59 += 32;
            }

            while (v59 < &v53[v25]);
          }

LABEL_61:
          v7 = v212;
          goto LABEL_63;
        }

        if (v38 > 7)
        {
          *v53 = *v54;
        }

        else
        {
          v97 = dword_243990DD8[v38];
          *v53 = *v54;
          v53[1] = v54[1];
          v53[2] = v54[2];
          v53[3] = v54[3];
          v98 = &v54[dword_243990DB8[v38]];
          *(v53 + 1) = *v98;
          v54 = &v98[-v97];
        }

        if (v25 < 9)
        {
          goto LABEL_61;
        }

        v101 = v54 + 8;
        v102 = v53 + 8;
        v103 = &v53[v25];
        if (v53 - v54 > 15)
        {
          *v102 = *v101;
          if (v25 >= 25)
          {
            v105 = v53 + 24;
            v106 = (v54 + 40);
            do
            {
              *v105 = *(v106 - 1);
              v107 = *v106;
              v106 += 2;
              v105[1] = v107;
              v105 += 2;
            }

            while (v105 < v103);
          }

          goto LABEL_61;
        }

        v7 = v212;
        do
        {
          v104 = *v101;
          v101 = (v101 + 8);
          *v102 = v104;
          v102 = (v102 + 8);
        }

        while (v102 < v103);
      }

LABEL_63:
      if (v19 > 0xFFFFFFFFFFFFFF88)
      {
        return v19;
      }

      v16 += v19;
      if (!--v51)
      {
        goto LABEL_230;
      }

      v62 = DWORD2(v217);
      if (DWORD2(v217) <= 0x40)
      {
        if (v218 >= *&v219[0])
        {
          v65 = (v218 - (DWORD2(v217) >> 3));
          *&v218 = v65;
          v62 = BYTE8(v217) & 7;
        }

        else
        {
          if (v218 == *(&v218 + 1))
          {
            goto LABEL_74;
          }

          v63 = DWORD2(v217) >> 3;
          if (v218 - v63 >= *(&v218 + 1))
          {
            v64 = v63;
          }

          else
          {
            v64 = (v218 - DWORD2(v218));
          }

          v65 = (v218 - v64);
          *&v218 = v218 - v64;
          v62 = DWORD2(v217) - 8 * v64;
        }

        *&v217 = *v65;
      }

LABEL_74:
      v66 = (*&v219[1] + 8 * *(&v219[0] + 1));
      v67 = (*&v219[3] + 8 * *(&v219[2] + 1));
      v68 = (*&v219[2] + 8 * *(&v219[1] + 1));
      v25 = *(v67 + 1);
      v69 = *(v66 + 1);
      v70 = *(v68 + 1);
      v71 = *(v66 + 2);
      v72 = *(v67 + 2);
      v73 = *(v68 + 2);
      v74 = *v66;
      v75 = *v67;
      v76 = *v68;
      v77 = *(v66 + 3);
      v78 = *(v67 + 3);
      v79 = *(v68 + 3);
      if (v73 >= 2)
      {
        v80 = v217 << v62 >> -v73;
        v62 += v73;
        v38 = v80 + v70;
        *(&v219[4] + 1) = *&v219[4];
        goto LABEL_76;
      }

      if (*(v68 + 2))
      {
        if (v69)
        {
          v70 = v70;
        }

        else
        {
          v70 = (v70 + 1);
        }

        v99 = v217 << v62++;
        DWORD2(v217) = v62;
        v100 = v70 + (v99 >> 63);
        if (v100 == 3)
        {
          if ((*(&v219[3] + 1) - 1) <= 1)
          {
            v38 = 1;
          }

          else
          {
            v38 = *(&v219[3] + 1) - 1;
          }

          goto LABEL_120;
        }

        if (*(&v219[3] + v100 + 1) <= 1uLL)
        {
          v38 = 1;
        }

        else
        {
          v38 = *(&v219[3] + v100 + 1);
        }

        if (v100 != 1)
        {
LABEL_120:
          *(&v219[4] + 1) = *&v219[4];
        }

LABEL_76:
        v81 = &v219[3] + 8;
        goto LABEL_79;
      }

      v38 = *(&v219[3] + (v69 == 0) + 1);
      v81 = &v219[3] + 8 * (v69 != 0) + 8;
LABEL_79:
      v82 = *v81;
      *(&v219[3] + 1) = v38;
      *&v219[4] = v82;
      if (v72)
      {
        v83 = v217 << v62 >> -v72;
        v62 += v72;
        v25 += v83;
      }

      if ((v72 + v71 + v73) < 0x1Fu || v62 > 0x40)
      {
        goto LABEL_82;
      }

      if (v218 >= *&v219[0])
      {
        v96 = (v218 - (v62 >> 3));
        *&v218 = v96;
        v62 &= 7u;
LABEL_115:
        *&v217 = *v96;
        goto LABEL_82;
      }

      if (v218 != *(&v218 + 1))
      {
        v94 = v62 >> 3;
        if ((v218 - v94) >= *(&v218 + 1))
        {
          v95 = v94;
        }

        else
        {
          v95 = (v218 - DWORD2(v218));
        }

        v96 = (v218 - v95);
        *&v218 = v218 - v95;
        v62 -= 8 * v95;
        goto LABEL_115;
      }

LABEL_82:
      v84 = (v217 << v62 >> -v71) + v69;
      if (v71)
      {
        v62 += v71;
        v45 = v84;
      }

      else
      {
        v45 = v69;
      }

      v85 = v62 + v77;
      v86 = ((v217 >> -v85) & dword_243990D38[v77]) + v74;
      v87 = v85 + v78;
      *(&v219[2] + 1) = ((v217 >> -v87) & dword_243990D38[v78]) + v75;
      v88 = v87 + v79;
      v89 = (v217 >> -v88) & dword_243990D38[v79];
      DWORD2(v217) = v88;
      *(&v219[0] + 1) = v86;
      *(&v219[1] + 1) = v89 + v76;
      v10 = v220;
      v49 = &v220[v45];
      v50 = v7[3796];
      if (&v220[v45] > v50)
      {
        v211 = v51;
        break;
      }
    }
  }

  if (v211 < 1)
  {
    return -20;
  }

  v108 = v50 - v10;
  if (v50 != v10)
  {
    if (v108 > v9 - v16)
    {
      return -70;
    }

    v109 = v10;
    v110 = v50 - v10;
    v111 = v25;
    sub_24394E748(v16, v109, v110);
    v25 = v111;
    v45 -= v108;
    v16 += v108;
  }

  v220 = (v209 + 3696);
  v11 = v7 + 95916;
  *(v209 + 3692) = 0;
  v112 = &v16[v45];
  _X8 = &v16[v45 - v38];
  __asm { PRFM            #0, [X8] }

  v118 = v9 - 32;
  v214 = v11;
  if (v45 > 0x10000 || (v19 = v45 + v25, &v16[v45 + v25] > v118))
  {
    v221 = v45;
    v222 = v25;
    v223 = v38;
    v192 = sub_24394E7F4(v16, v9, &v221, &v220, v11, v12, v216, v215);
    v11 = v214;
    v19 = v192;
    goto LABEL_145;
  }

  *v16 = *(v209 + 3696);
  if (v45 > 0x10)
  {
    *(v16 + 1) = *(v209 + 3712);
    if (v45 - 16 >= 17)
    {
      v195 = v16 + 32;
      v196 = (v209 + 3744);
      do
      {
        *v195 = *(v196 - 1);
        v197 = *v196;
        v196 += 2;
        *(v195 + 1) = v197;
        v195 += 32;
      }

      while (v195 < v112);
    }
  }

  v220 = v212 + v45 + 30380;
  if (v38 <= v112 - v12)
  {
    goto LABEL_136;
  }

  if (v38 > &v112[-v216])
  {
    return -20;
  }

  v119 = _X8 - v12;
  v120 = (v215 + _X8 - v12);
  if (v120 + v25 <= v215)
  {
    memmove(v112, v120, v25);
LABEL_144:
    v11 = v214;
    goto LABEL_145;
  }

  v207 = v25;
  memmove(v112, v120, v12 - _X8);
  v112 -= v119;
  v25 = v119 + v207;
  _X8 = v12;
  v11 = v214;
LABEL_136:
  if (v38 < 0x10)
  {
    if (v38 > 7)
    {
      *v112 = *_X8;
    }

    else
    {
      v198 = dword_243990DD8[v38];
      *v112 = *_X8;
      v112[1] = _X8[1];
      v112[2] = _X8[2];
      v112[3] = _X8[3];
      v199 = &_X8[dword_243990DB8[v38]];
      *(v112 + 1) = *v199;
      _X8 = &v199[-v198];
    }

    if (v25 >= 9)
    {
      v200 = _X8 + 8;
      v201 = v112 + 8;
      v202 = &v112[v25];
      if (v112 - _X8 > 15)
      {
        *v201 = *v200;
        if (v25 >= 25)
        {
          v204 = v112 + 24;
          v205 = (_X8 + 40);
          do
          {
            *v204 = *(v205 - 1);
            v206 = *v205;
            v205 += 2;
            *(v204 + 1) = v206;
            v204 += 32;
          }

          while (v204 < v202);
        }
      }

      else
      {
        do
        {
          v203 = *v200;
          v200 = (v200 + 8);
          *v201 = v203;
          v201 = (v201 + 8);
        }

        while (v201 < v202);
      }
    }

    goto LABEL_144;
  }

  *v112 = *_X8;
  if (v25 >= 17)
  {
    v121 = v112 + 16;
    v122 = (_X8 + 32);
    do
    {
      *v121 = *(v122 - 1);
      v123 = *v122;
      v122 += 2;
      *(v121 + 1) = v123;
      v121 += 32;
    }

    while (v121 < &v112[v25]);
  }

LABEL_145:
  if (v19 > 0xFFFFFFFFFFFFFF88)
  {
    return v19;
  }

  v16 += v19;
  v124 = v211 - 1;
  if (v211 != 1)
  {
    v125 = DWORD2(v217);
    if (DWORD2(v217) > 0x40)
    {
      goto LABEL_156;
    }

    if (v218 >= *&v219[0])
    {
      v128 = (v218 - (DWORD2(v217) >> 3));
      *&v218 = v128;
      v125 = BYTE8(v217) & 7;
    }

    else
    {
      if (v218 == *(&v218 + 1))
      {
        goto LABEL_156;
      }

      v126 = DWORD2(v217) >> 3;
      if (v218 - v126 >= *(&v218 + 1))
      {
        v127 = v126;
      }

      else
      {
        v127 = (v218 - DWORD2(v218));
      }

      v128 = (v218 - v127);
      *&v218 = v218 - v127;
      v125 = DWORD2(v217) - 8 * v127;
    }

    *&v217 = *v128;
LABEL_156:
    while (1)
    {
      v129 = (*&v219[1] + 8 * *(&v219[0] + 1));
      v130 = (*&v219[3] + 8 * *(&v219[2] + 1));
      v131 = (*&v219[2] + 8 * *(&v219[1] + 1));
      v132 = *(v130 + 1);
      v133 = *(v129 + 1);
      v134 = *(v131 + 1);
      v135 = *(v129 + 2);
      v136 = *(v130 + 2);
      v137 = *(v131 + 2);
      v138 = *v129;
      v139 = *v130;
      v140 = *v131;
      v141 = *(v129 + 3);
      v142 = *(v130 + 3);
      v143 = *(v131 + 3);
      if (v137 >= 2)
      {
        break;
      }

      if (*(v131 + 2))
      {
        if (v133)
        {
          v134 = v134;
        }

        else
        {
          v134 = (v134 + 1);
        }

        v177 = v217 << v125++;
        DWORD2(v217) = v125;
        v178 = v134 + (v177 >> 63);
        if (v178 == 3)
        {
          if ((*(&v219[3] + 1) - 1) <= 1)
          {
            v145 = 1;
          }

          else
          {
            v145 = *(&v219[3] + 1) - 1;
          }

          goto LABEL_222;
        }

        if (*(&v219[3] + v178 + 1) <= 1uLL)
        {
          v145 = 1;
        }

        else
        {
          v145 = *(&v219[3] + v178 + 1);
        }

        if (v178 != 1)
        {
LABEL_222:
          *(&v219[4] + 1) = *&v219[4];
        }

LABEL_158:
        v146 = &v219[3] + 8;
        goto LABEL_161;
      }

      v145 = *(&v219[3] + (v133 == 0) + 1);
      v146 = &v219[3] + 8 * (v133 != 0) + 8;
LABEL_161:
      v147 = *v146;
      *(&v219[3] + 1) = v145;
      *&v219[4] = v147;
      if (v136)
      {
        v148 = v217 << v125 >> -v136;
        v125 += v136;
        v132 += v148;
      }

      if ((v136 + v135 + v137) >= 0x1Fu && v125 <= 0x40)
      {
        if (v218 >= *&v219[0])
        {
          v171 = (v218 - (v125 >> 3));
          *&v218 = v171;
          v125 &= 7u;
        }

        else
        {
          if (v218 == *(&v218 + 1))
          {
            goto LABEL_164;
          }

          v169 = v125 >> 3;
          if ((v218 - v169) >= *(&v218 + 1))
          {
            v170 = v169;
          }

          else
          {
            v170 = (v218 - DWORD2(v218));
          }

          v171 = (v218 - v170);
          *&v218 = v218 - v170;
          v125 -= 8 * v170;
        }

        *&v217 = *v171;
      }

LABEL_164:
      v149 = (v217 << v125 >> -v135) + v133;
      if (v135)
      {
        v125 += v135;
        v133 = v149;
      }

      v150 = v125 + v141;
      v151 = ((v217 >> -v150) & dword_243990D38[v141]) + v138;
      v152 = v150 + v142;
      *(&v219[2] + 1) = ((v217 >> -v152) & dword_243990D38[v142]) + v139;
      v153 = v152 + v143;
      v154 = (v217 >> -v153) & dword_243990D38[v143];
      DWORD2(v217) = v153;
      *(&v219[0] + 1) = v151;
      *(&v219[1] + 1) = v154 + v140;
      v155 = &v16[v133];
      v156 = v220;
      v157 = &v220[v133];
      _X8 = &v16[v133 - v145];
      __asm { PRFM            #0, [X8] }

      if (&v220[v133] > v11 || (v19 = v133 + v132, &v16[v133 + v132] > v118))
      {
        v221 = v133;
        v222 = v132;
        v223 = v145;
        v168 = sub_24394E7F4(v16, v210, &v221, &v220, v11, v12, v216, v215);
        v11 = v214;
        v19 = v168;
      }

      else
      {
        *v16 = *v220;
        if (v133 > 0x10)
        {
          *(v16 + 1) = *(v156 + 1);
          if ((v133 - 16) >= 17)
          {
            v172 = v16 + 32;
            v173 = (v156 + 48);
            do
            {
              *v172 = *(v173 - 1);
              v174 = *v173;
              v173 += 2;
              *(v172 + 1) = v174;
              v172 += 32;
            }

            while (v172 < v155);
          }
        }

        v220 = v157;
        if (v145 <= v155 - v12)
        {
          goto LABEL_173;
        }

        if (v145 > &v155[-v216])
        {
          return -20;
        }

        v160 = _X8 - v12;
        v161 = (v215 + _X8 - v12);
        if (v161 + v132 > v215)
        {
          memmove(&v16[v133], v161, v12 - _X8);
          v155 -= v160;
          v132 += v160;
          _X8 = v12;
          v11 = v214;
LABEL_173:
          if (v145 < 0x10)
          {
            if (v145 > 7)
            {
              *v155 = *_X8;
            }

            else
            {
              v175 = dword_243990DD8[v145];
              *v155 = *_X8;
              v155[1] = _X8[1];
              v155[2] = _X8[2];
              v155[3] = _X8[3];
              v176 = &_X8[dword_243990DB8[v145]];
              *(v155 + 1) = *v176;
              _X8 = &v176[-v175];
            }

            if (v132 >= 9)
            {
              v179 = _X8 + 8;
              v180 = v155 + 8;
              v181 = &v155[v132];
              if (v155 - _X8 > 15)
              {
                *v180 = *v179;
                if (v132 >= 25)
                {
                  v183 = v155 + 24;
                  v184 = (_X8 + 40);
                  do
                  {
                    *v183 = *(v184 - 1);
                    v185 = *v184;
                    v184 += 2;
                    v183[1] = v185;
                    v183 += 2;
                  }

                  while (v183 < v181);
                }
              }

              else
              {
                do
                {
                  v182 = *v179;
                  v179 = (v179 + 8);
                  *v180 = v182;
                  v180 = (v180 + 8);
                }

                while (v180 < v181);
              }
            }
          }

          else
          {
            *v155 = *_X8;
            if (v132 >= 17)
            {
              v162 = v155 + 16;
              v163 = (_X8 + 32);
              do
              {
                *v162 = *(v163 - 1);
                v164 = *v163;
                v163 += 2;
                *(v162 + 1) = v164;
                v162 += 32;
              }

              while (v162 < &v155[v132]);
            }
          }

          goto LABEL_179;
        }

        memmove(&v16[v133], v161, v132);
        v11 = v214;
      }

LABEL_179:
      if (v19 > 0xFFFFFFFFFFFFFF88)
      {
        return v19;
      }

      v16 += v19;
      if (!--v124)
      {
        goto LABEL_229;
      }

      v125 = DWORD2(v217);
      if (DWORD2(v217) <= 0x40)
      {
        if (v218 >= *&v219[0])
        {
          v167 = (v218 - (DWORD2(v217) >> 3));
          *&v218 = v167;
          v125 = BYTE8(v217) & 7;
          goto LABEL_189;
        }

        if (v218 != *(&v218 + 1))
        {
          v165 = DWORD2(v217) >> 3;
          if (v218 - v165 >= *(&v218 + 1))
          {
            v166 = v165;
          }

          else
          {
            v166 = (v218 - DWORD2(v218));
          }

          v167 = (v218 - v166);
          *&v218 = v218 - v166;
          v125 = DWORD2(v217) - 8 * v166;
LABEL_189:
          DWORD2(v217) = v125;
          *&v217 = *v167;
        }
      }
    }

    v144 = v217 << v125 >> -v137;
    v125 += v137;
    v145 = v144 + v134;
    *(&v219[4] + 1) = *&v219[4];
    goto LABEL_158;
  }

LABEL_229:
  v7 = v212;
LABEL_230:
  v6 = v208;
  v8 = v209;
  v9 = v210;
  if (DWORD2(v217) <= 0x40)
  {
    v19 = -20;
    if (DWORD2(v217) != 64 || v218 >= *&v219[0] || v218 != *(&v218 + 1))
    {
      return v19;
    }
  }

  v187 = 88;
  v188 = v209;
  do
  {
    *v188++ = *(&v217 + v187);
    v187 += 8;
  }

  while (v187 != 112);
  v10 = v220;
LABEL_10:
  if (*(v8 + 3692) == 2)
  {
    v17 = v11 - v10;
    if (v11 - v10 > v9 - v16)
    {
      return -70;
    }

    if (v16)
    {
      memmove(v16, v10, v11 - v10);
      v16 += v17;
    }

    v10 = v7 + 30380;
    v11 = v7 + 95916;
    *(v8 + 3692) = 0;
  }

  v18 = v11 - v10;
  if (v11 - v10 > v9 - v16)
  {
    return -70;
  }

  if (v16)
  {
    memcpy(v16, v10, v11 - v10);
    v21 = &v16[v18];
  }

  else
  {
    v21 = 0;
  }

  return v21 - v6;
}