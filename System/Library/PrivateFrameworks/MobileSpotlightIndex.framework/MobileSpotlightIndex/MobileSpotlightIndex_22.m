unint64_t ZSTD_RowFindBestMatch_dictMatchState_4_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v158 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v141 = *(a1 + 24);
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v11 - v13;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  if (*(a1 + 252) >= 6u)
  {
    v16 = 6;
  }

  else
  {
    v16 = *(a1 + 252);
  }

  v17 = *(a1 + 232);
  v18 = (-1640531535 * *a2) >> (24 - *(v17 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X11 = (*(v17 + 56) + 2 * v19);
  _X9 = *(v17 + 96) + 4 * v19;
  __asm
  {
    PRFM            #0, [X9]
    PRFM            #0, [X9,#0x40]
    PRFM            #0, [X11]
    PRFM            #0, [X11,#0x40]
  }

  v29 = *(a1 + 44);
  if (v12 - v29 >= 0x181)
  {
    if (v29 <= 0xFFFFFF9F)
    {
      v111 = v29 + 96;
      do
      {
        v112 = (-1640531535 * *(v11 + 8 + v29)) >> (24 - v10);
        v113 = (v112 >> 2) & 0x3FFFFFC0;
        _X22 = v5 + 4 * v113;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v7 + 2 * v113;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x40]
        }

        v120 = *(v9 + 4 * (v29 & 7));
        *(v9 + 4 * (v29 & 7)) = v112;
        v121 = (v120 >> 2) & 0x3FFFFFC0;
        v122 = v5 + 4 * v121;
        v123 = (v7 + 2 * v121);
        v124 = (*v123 - 1) & 0x3F;
        *v123 = v124;
        v123[v124 + 16] = v120;
        *(v122 + 4 * v124) = v29++;
      }

      while (v111 != v29);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v125 = v12 - 32;
    LODWORD(v29) = v12 - 32;
    v126 = a2 + 1 - (v11 + v125);
    if ((v126 + 1) < 8)
    {
      v127 = v126 + 1;
    }

    else
    {
      v127 = 8;
    }

    if (a2 + 1 >= v11 + v125)
    {
      v128 = v127;
    }

    else
    {
      v128 = 0;
    }

    if (v125 < v128 + v125)
    {
      v129 = 24 - *(a1 + 52);
      do
      {
        v130 = (-1640531535 * *(v11 + v125)) >> v129;
        v131 = (v130 >> 2) & 0x3FFFFFC0;
        _X24 = v6 + 4 * v131;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x40]
        }

        _X23 = v8 + 2 * v131;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        *(v9 + 4 * (v125++ & 7)) = v130;
        --v128;
      }

      while (v128);
    }
  }

  v30 = 1 << v16;
  if (v29 < v12)
  {
    v31 = *(a1 + 8) + 8;
    v32 = 24 - *(a1 + 52);
    v29 = v29;
    do
    {
      v33 = (-1640531535 * *(v31 + v29)) >> v32;
      v34 = (v33 >> 2) & 0x3FFFFFC0;
      _X23 = v6 + 4 * v34;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v8 + 2 * v34;
      __asm
      {
        PRFM            #0, [X22]
        PRFM            #0, [X22,#0x40]
      }

      v41 = *(v9 + 4 * (v29 & 7));
      *(v9 + 4 * (v29 & 7)) = v33;
      v42 = (v41 >> 2) & 0x3FFFFFC0;
      v43 = v6 + 4 * v42;
      v44 = (v8 + 2 * v42);
      v45 = (*v44 - 1) & 0x3F;
      *v44 = v45;
      v44[v45 + 16] = v41;
      *(v43 + 4 * v45) = v29++;
    }

    while (v29 < v12);
  }

  *(a1 + 44) = v12;
  v46 = (-1640531535 * *(v11 + v12 + 8)) >> (24 - v10);
  v47 = (v46 >> 2) & 0x3FFFFFC0;
  _X3 = v5 + 4 * v47;
  __asm
  {
    PRFM            #0, [X3]
    PRFM            #0, [X3,#0x40]
  }

  _X3 = v7 + 2 * v47;
  __asm
  {
    PRFM            #0, [X3]
    PRFM            #0, [X3,#0x40]
  }

  v54 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v46;
  v55 = (v54 >> 2) & 0x3FFFFFC0;
  v56 = (v7 + 2 * v55);
  v57 = v56 + 16;
  v58 = *v56;
  v59 = v5 + 4 * v55;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v159 = vld4q_s8(v57);
  v60 = vdupq_n_s8(v54);
  v159.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v159.val[3], v60), vceqq_s8(v159.val[2], v60), 1uLL), vsriq_n_s8(vceqq_s8(v159.val[1], v60), vceqq_s8(v159.val[0], v60), 1uLL), 2uLL);
  v61 = vshrn_n_s16(vsriq_n_s8(v159.val[0], v159.val[0], 4uLL), 4uLL);
  v62 = v61;
  if (v61)
  {
    v63 = 0;
    v64 = __ROR8__(*&v61, v58);
    v65 = v30;
    while (1)
    {
      v66 = *(v59 + 4 * ((__clz(__rbit64(v64)) + v58) & 0x3F));
      if (v66 < v15)
      {
        break;
      }

      _X15 = v11 + v66;
      __asm { PRFM            #0, [X15] }

      v62 = (*&v63 + 1);
      *(&v142 + *&v63) = v66;
      v30 = v65 - 1;
      v64 &= v64 - 1;
      if (v64)
      {
        ++*&v63;
        if (--v65)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    v62 = v63;
    v30 = v65;
  }

LABEL_21:
  v69 = (v58 - 1) & 0x3F;
  *v56 = v69;
  v56[v69 + 16] = v54;
  v70 = *(a1 + 44);
  *(a1 + 44) = v70 + 1;
  *(v59 + 4 * v69) = v70;
  if (v62)
  {
    v71 = 0;
    v72 = a3 - 7;
    v73 = 3;
    while (1)
    {
      v74 = *(&v142 + v71);
      v75 = (v11 + v74);
      if (*(v11 + v74 + v73) != *(a2 + v73))
      {
        goto LABEL_44;
      }

      if (v72 <= a2)
      {
        v78 = a2;
      }

      else
      {
        v76 = *v75;
        if (v76 != *a2)
        {
          v83 = __clz(__rbit64(*a2 ^ v76)) >> 3;
          goto LABEL_42;
        }

        v77 = 0;
        v75 = (v11 + 8 + v74);
        v78 = a2 + 4;
        while (v78 < v72)
        {
          v80 = *v75;
          v75 += 4;
          v79 = v80;
          v82 = *v78;
          v78 += 4;
          v81 = v82;
          v77 += 8;
          if (v79 != v82)
          {
            v83 = v77 + (__clz(__rbit64(v81 ^ v79)) >> 3);
            goto LABEL_42;
          }
        }
      }

      if (v78 < a3 - 3 && *v75 == *v78)
      {
        v75 += 2;
        v78 += 2;
      }

      if (v78 < a3 - 1 && *v75 == *v78)
      {
        ++v75;
        ++v78;
      }

      if (v78 < a3 && *v75 == *v78)
      {
        v78 = (v78 + 1);
      }

      v83 = v78 - a2;
LABEL_42:
      if (v83 > v73)
      {
        *a4 = v12 + 2 - v74;
        v73 = v83;
        if ((a2 + v83) == a3)
        {
          goto LABEL_47;
        }
      }

LABEL_44:
      ++v71;
      v83 = v73;
      if (v71 == *&v62)
      {
        goto LABEL_47;
      }
    }
  }

  v83 = 3;
LABEL_47:
  v84 = *(v17 + 24);
  v85 = *v17;
  v86 = *(v17 + 8);
  v89 = *_X11;
  v87 = _X11 + 16;
  v88 = v89;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v160 = vld4q_s8(v87);
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v90 = vdupq_n_s8(v18);
  v91 = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v160.val[3], v90), vceqq_s8(v160.val[2], v90), 1uLL), vsriq_n_s8(vceqq_s8(v160.val[1], v90), vceqq_s8(v160.val[0], v90), 1uLL), 2uLL);
  v92 = vshrn_n_s16(vsriq_n_s8(v91, v91, 4uLL), 4uLL);
  if (v92)
  {
    v93 = v30 == 0;
  }

  else
  {
    v93 = 1;
  }

  if (!v93)
  {
    v94 = 0;
    v95 = __ROR8__(*&v92, v88);
    v96 = v30 - 1;
    while (1)
    {
      v97 = *(_X9 + 4 * ((__clz(__rbit64(v95)) + v88) & 0x3F));
      if (v97 < v84)
      {
        break;
      }

      _X0 = v86 + v97;
      __asm { PRFM            #0, [X0] }

      v100 = v94 + 1;
      *(&v142 + v94) = v97;
      v95 &= v95 - 1;
      if (v95)
      {
        _ZF = v96 == v94++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    v100 = v94;
    if (!v94)
    {
      goto LABEL_63;
    }

LABEL_58:
    v139 = a4;
    v101 = a2 + 2;
    v102 = *a2;
    v138 = v12 - v141 + v85 - v86 + 2;
    v103 = &v142;
    do
    {
      v105 = *v103++;
      v104 = v105;
      v106 = v86 + v105;
      if (*v106 == v102)
      {
        v107 = a3;
        v108 = ZSTD_count_2segments(v101, (v106 + 4), a3, v85, (v11 + v141));
        a3 = v107;
        if (v108 + 4 > v83)
        {
          *v139 = v138 - v104;
          v83 = v108 + 4;
          if ((a2 + v108 + 4) == v107)
          {
            break;
          }
        }
      }

      --v100;
    }

    while (v100);
  }

LABEL_63:
  v109 = *MEMORY[0x1E69E9840];
  return v83;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_5_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v146 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v129 = *(a1 + 24);
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v11 - v13;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  if (*(a1 + 252) >= 4u)
  {
    v16 = 4;
  }

  else
  {
    v16 = *(a1 + 252);
  }

  v17 = *(a1 + 232);
  v18 = (0xCF1BBCDCBB000000 * *a2) >> (56 - *(v17 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X11 = (*(v17 + 56) + 2 * v19);
  _X9 = *(v17 + 96) + 4 * v19;
  __asm
  {
    PRFM            #0, [X9]
    PRFM            #0, [X11]
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v103 = v27 + 96;
      do
      {
        v104 = (0xCF1BBCDCBB000000 * *(v11 + 8 + v27)) >> (56 - v10);
        v105 = (v104 >> 4) & 0xFFFFFF0;
        _X22 = v5 + 4 * v105;
        __asm { PRFM            #0, [X22] }

        _X20 = v7 + 2 * v105;
        __asm { PRFM            #0, [X20] }

        v110 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v104;
        v111 = (v110 >> 4) & 0xFFFFFF0;
        v112 = v5 + 4 * v111;
        v113 = (v7 + 2 * v111);
        v114 = (*v113 - 1) & 0xF;
        *v113 = v114;
        v113[v114 + 16] = v110;
        *(v112 + 4 * v114) = v27++;
      }

      while (v103 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v115 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v116 = a2 + 1 - (v11 + v115);
    if ((v116 + 1) < 8)
    {
      v117 = v116 + 1;
    }

    else
    {
      v117 = 8;
    }

    if (a2 + 1 >= v11 + v115)
    {
      v118 = v117;
    }

    else
    {
      v118 = 0;
    }

    if (v115 < v118 + v115)
    {
      v119 = 56 - *(a1 + 52);
      do
      {
        v120 = (0xCF1BBCDCBB000000 * *(v11 + v115)) >> v119;
        v121 = (v120 >> 4) & 0xFFFFFF0;
        _X24 = v6 + 4 * v121;
        __asm { PRFM            #0, [X24] }

        _X23 = v8 + 2 * v121;
        __asm { PRFM            #0, [X23] }

        *(v9 + 4 * (v115++ & 7)) = v120;
        --v118;
      }

      while (v118);
    }
  }

  v28 = 1 << v16;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 56 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (0xCF1BBCDCBB000000 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 4) & 0xFFFFFF0;
      _X23 = v6 + 4 * v32;
      __asm { PRFM            #0, [X23] }

      _X22 = v8 + 2 * v32;
      __asm { PRFM            #0, [X22] }

      v37 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v38 = (v37 >> 4) & 0xFFFFFF0;
      v39 = v6 + 4 * v38;
      v40 = (v8 + 2 * v38);
      v41 = (*v40 - 1) & 0xF;
      *v40 = v41;
      v40[v41 + 16] = v37;
      *(v39 + 4 * v41) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v42 = (0xCF1BBCDCBB000000 * *(v11 + v12 + 8)) >> (56 - v10);
  v43 = (v42 >> 4) & 0xFFFFFF0;
  _X3 = v5 + 4 * v43;
  __asm { PRFM            #0, [X3] }

  _X3 = v7 + 2 * v43;
  __asm { PRFM            #0, [X3] }

  v48 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v42;
  v49 = (v48 >> 4) & 0xFFFFFF0;
  v50 = v5 + 4 * v49;
  v51 = (v7 + 2 * v49);
  v52 = v51->i8[0];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v53 = vshlq_n_s16(vceqq_s8(v51[1], vdupq_n_s8(v48)), 7uLL);
  v54 = vshrq_n_u32(vsriq_n_s16(v53, v53, 0xEuLL), 0xEuLL);
  v55 = vsraq_n_u64(v54, v54, 0x1CuLL);
  if (v55.u8[0] | (v55.u8[8] << 8))
  {
    v56 = 0;
    v57 = ((v55.u8[0] | (v55.u8[8] << 8)) >> (v52 & 0xF)) | ((v55.u8[0] | (v55.u8[8] << 8)) << (-v52 & 0xF));
    v58 = v28;
    while (1)
    {
      v59 = *(v50 + 4 * ((__clz(__rbit64(v57)) + v52) & 0xF));
      if (v59 < v15)
      {
        break;
      }

      _X15 = v11 + v59;
      __asm { PRFM            #0, [X15] }

      v62 = v56 + 1;
      *(&v130 + v56) = v59;
      v28 = v58 - 1;
      v57 &= v57 - 1;
      if (v57)
      {
        ++v56;
        if (--v58)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v62 = v56;
    v28 = v58;
  }

  else
  {
    v62 = 0;
  }

LABEL_22:
  v63 = (v52 - 1) & 0xF;
  v51->i8[0] = v63;
  v51[1].i8[v63] = v48;
  v64 = *(a1 + 44);
  *(a1 + 44) = v64 + 1;
  *(v50 + 4 * v63) = v64;
  if (v62)
  {
    v65 = 0;
    v66 = a3 - 7;
    v67 = 3;
    while (1)
    {
      v68 = *(&v130 + v65);
      v69 = (v11 + v68);
      if (*(v11 + v68 + v67) != *(a2 + v67))
      {
        goto LABEL_45;
      }

      if (v66 <= a2)
      {
        v72 = a2;
      }

      else
      {
        v70 = *v69;
        if (v70 != *a2)
        {
          v77 = __clz(__rbit64(*a2 ^ v70)) >> 3;
          goto LABEL_43;
        }

        v71 = 0;
        v69 = (v11 + 8 + v68);
        v72 = a2 + 4;
        while (v72 < v66)
        {
          v74 = *v69;
          v69 += 4;
          v73 = v74;
          v76 = *v72;
          v72 += 4;
          v75 = v76;
          v71 += 8;
          if (v73 != v76)
          {
            v77 = v71 + (__clz(__rbit64(v75 ^ v73)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v72 < a3 - 3 && *v69 == *v72)
      {
        v69 += 2;
        v72 += 2;
      }

      if (v72 < a3 - 1 && *v69 == *v72)
      {
        ++v69;
        ++v72;
      }

      if (v72 < a3 && *v69 == *v72)
      {
        v72 = (v72 + 1);
      }

      v77 = v72 - a2;
LABEL_43:
      if (v77 > v67)
      {
        *a4 = v12 + 2 - v68;
        v67 = v77;
        if ((a2 + v77) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v65;
      v77 = v67;
      if (v65 == v62)
      {
        goto LABEL_48;
      }
    }
  }

  v77 = 3;
LABEL_48:
  v78 = *(v17 + 24);
  v79 = *v17;
  v80 = *(v17 + 8);
  v81 = _X11->i8[0];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v82 = vshlq_n_s16(vceqq_s8(_X11[1], vdupq_n_s8(v18)), 7uLL);
  v83 = vshrq_n_u32(vsriq_n_s16(v82, v82, 0xEuLL), 0xEuLL);
  v84 = vsraq_n_u64(v83, v83, 0x1CuLL);
  if (v84.u8[0] | (v84.u8[8] << 8))
  {
    v85 = v28 == 0;
  }

  else
  {
    v85 = 1;
  }

  if (!v85)
  {
    v86 = 0;
    v87 = ((v84.u8[0] | (v84.u8[8] << 8)) >> (v81 & 0xF)) | ((v84.u8[0] | (v84.u8[8] << 8)) << (-v81 & 0xF));
    v88 = v28 - 1;
    while (1)
    {
      v89 = *(_X9 + 4 * ((__clz(__rbit64(v87)) + v81) & 0xF));
      if (v89 < v78)
      {
        break;
      }

      _X0 = v80 + v89;
      __asm { PRFM            #0, [X0] }

      v92 = v86 + 1;
      *(&v130 + v86) = v89;
      v87 &= v87 - 1;
      if (v87)
      {
        _ZF = v88 == v86++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v92 = v86;
    if (!v86)
    {
      goto LABEL_64;
    }

LABEL_59:
    v127 = a4;
    v93 = a2 + 2;
    v94 = *a2;
    v126 = v12 - v129 + v79 - v80 + 2;
    v95 = &v130;
    do
    {
      v97 = *v95++;
      v96 = v97;
      v98 = v80 + v97;
      if (*v98 == v94)
      {
        v99 = a3;
        v100 = ZSTD_count_2segments(v93, (v98 + 4), a3, v79, (v11 + v129));
        a3 = v99;
        if (v100 + 4 > v77)
        {
          *v127 = v126 - v96;
          v77 = v100 + 4;
          if ((a2 + v100 + 4) == v99)
          {
            break;
          }
        }
      }

      --v92;
    }

    while (v92);
  }

LABEL_64:
  v101 = *MEMORY[0x1E69E9840];
  return v77;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_5_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v155 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v138 = *(a1 + 24);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v14 = a2 - v10 - v12;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  if (*(a1 + 252) >= 5u)
  {
    v15 = 5;
  }

  else
  {
    v15 = *(a1 + 252);
  }

  v16 = *(a1 + 232);
  v17 = (0xCF1BBCDCBB000000 * *a2) >> (56 - *(v16 + 52));
  v18 = (v17 >> 3) & 0x1FFFFFE0;
  _X11 = (*(v16 + 56) + 2 * v18);
  _X9 = *(v16 + 96) + 4 * v18;
  __asm
  {
    PRFM            #0, [X9]
    PRFM            #0, [X9,#0x40]
    PRFM            #0, [X11]
  }

  v27 = *(a1 + 44);
  if (v11 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v110 = v27 + 96;
      do
      {
        v111 = (0xCF1BBCDCBB000000 * *(v10 + 8 + v27)) >> (56 - v9);
        v112 = (v111 >> 3) & 0x1FFFFFE0;
        _X22 = v4 + 4 * v112;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v6 + 2 * v112;
        __asm { PRFM            #0, [X20] }

        v118 = *(v8 + 4 * (v27 & 7));
        *(v8 + 4 * (v27 & 7)) = v111;
        v119 = (v118 >> 3) & 0x1FFFFFE0;
        v120 = v4 + 4 * v119;
        v121 = (v6 + 2 * v119);
        v122 = (*v121 - 1) & 0x1F;
        *v121 = v122;
        v121[v122 + 16] = v118;
        *(v120 + 4 * v122) = v27++;
      }

      while (v110 != v27);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v123 = v11 - 32;
    LODWORD(v27) = v11 - 32;
    v124 = a2 + 1 - (v10 + v123);
    if ((v124 + 1) < 8)
    {
      v125 = v124 + 1;
    }

    else
    {
      v125 = 8;
    }

    if (a2 + 1 >= v10 + v123)
    {
      v126 = v125;
    }

    else
    {
      v126 = 0;
    }

    if (v123 < v126 + v123)
    {
      v127 = 56 - *(a1 + 52);
      do
      {
        v128 = (0xCF1BBCDCBB000000 * *(v10 + v123)) >> v127;
        v129 = (v128 >> 3) & 0x1FFFFFE0;
        _X24 = v5 + 4 * v129;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x40]
        }

        _X23 = v7 + 2 * v129;
        __asm { PRFM            #0, [X23] }

        *(v8 + 4 * (v123++ & 7)) = v128;
        --v126;
      }

      while (v126);
    }
  }

  v28 = 1 << v15;
  if (v27 < v11)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 56 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (0xCF1BBCDCBB000000 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 3) & 0x1FFFFFE0;
      _X23 = v5 + 4 * v32;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v7 + 2 * v32;
      __asm { PRFM            #0, [X22] }

      v38 = *(v8 + 4 * (v27 & 7));
      *(v8 + 4 * (v27 & 7)) = v31;
      v39 = (v38 >> 3) & 0x1FFFFFE0;
      v40 = v5 + 4 * v39;
      v41 = (v7 + 2 * v39);
      v42 = (*v41 - 1) & 0x1F;
      *v41 = v42;
      v41[v42 + 16] = v38;
      *(v40 + 4 * v42) = v27++;
    }

    while (v27 < v11);
  }

  *(a1 + 44) = v11;
  v43 = (0xCF1BBCDCBB000000 * *(v10 + v11 + 8)) >> (56 - v9);
  v44 = (v43 >> 3) & 0x1FFFFFE0;
  _X4 = v4 + 4 * v44;
  __asm
  {
    PRFM            #0, [X4]
    PRFM            #0, [X4,#0x40]
  }

  _X4 = v6 + 2 * v44;
  __asm { PRFM            #0, [X4] }

  v50 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v43;
  v51 = (v50 >> 3) & 0x1FFFFFE0;
  v52 = v4 + 4 * v51;
  v53 = (v6 + 2 * v51);
  v54 = (v53 + 16);
  v55 = *v53;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v156 = vld2q_s16(v54);
  v139 = 0u;
  v140 = 0u;
  v56 = vdupq_n_s8(v50);
  *v156.val[0].i8 = vqmovn_s16(vceqq_s8(v56, v156.val[0]));
  *v56.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v56, v156.val[1])), *v156.val[0].i8, 2uLL);
  v57 = vsri_n_s8(vuzp2_s8(*v56.i8, *v156.val[0].i8), vuzp1_s8(*v56.i8, *v156.val[0].i8), 4uLL).u32[0];
  if (v57)
  {
    v58 = 0;
    v59 = __ROR4__(v57, v55);
    v60 = v28;
    while (1)
    {
      v61 = *(v52 + 4 * ((__clz(__rbit64(v59)) + v55) & 0x1F));
      if (v61 < v14)
      {
        break;
      }

      _X15 = v10 + v61;
      __asm { PRFM            #0, [X15] }

      v64 = v58 + 1;
      *(&v139 + v58) = v61;
      v28 = v60 - 1;
      v59 &= v59 - 1;
      if (v59)
      {
        ++v58;
        if (--v60)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v64 = v58;
    v28 = v60;
  }

  else
  {
    v64 = 0;
  }

LABEL_22:
  v65 = (v55 - 1) & 0x1F;
  *v53 = v65;
  v53[v65 + 16] = v50;
  v66 = *(a1 + 44);
  *(a1 + 44) = v66 + 1;
  *(v52 + 4 * v65) = v66;
  if (v64)
  {
    v67 = 0;
    v68 = a3 - 7;
    v69 = 3;
    while (1)
    {
      v70 = *(&v139 + v67);
      v71 = (v10 + v70);
      if (*(v10 + v70 + v69) != *(a2 + v69))
      {
        goto LABEL_45;
      }

      if (v68 <= a2)
      {
        v74 = a2;
      }

      else
      {
        v72 = *v71;
        if (v72 != *a2)
        {
          v79 = __clz(__rbit64(*a2 ^ v72)) >> 3;
          goto LABEL_43;
        }

        v73 = 0;
        v71 = (v10 + 8 + v70);
        v74 = a2 + 4;
        while (v74 < v68)
        {
          v76 = *v71;
          v71 += 4;
          v75 = v76;
          v78 = *v74;
          v74 += 4;
          v77 = v78;
          v73 += 8;
          if (v75 != v78)
          {
            v79 = v73 + (__clz(__rbit64(v77 ^ v75)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v74 < a3 - 3 && *v71 == *v74)
      {
        v71 += 2;
        v74 += 2;
      }

      if (v74 < a3 - 1 && *v71 == *v74)
      {
        ++v71;
        ++v74;
      }

      if (v74 < a3 && *v71 == *v74)
      {
        v74 = (v74 + 1);
      }

      v79 = v74 - a2;
LABEL_43:
      if (v79 > v69)
      {
        *a4 = v11 + 2 - v70;
        v69 = v79;
        if ((a2 + v79) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v67;
      v79 = v69;
      if (v67 == v64)
      {
        goto LABEL_48;
      }
    }
  }

  v79 = 3;
LABEL_48:
  v80 = *(v16 + 24);
  v81 = *v16;
  v82 = *(v16 + 8);
  v85 = *_X11;
  v83 = (_X11 + 16);
  v84 = v85;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v157 = vld2q_s16(v83);
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v86 = vdupq_n_s8(v17);
  v139 = 0u;
  v140 = 0u;
  v87 = vqmovn_s16(vceqq_s8(v86, v157.val[0]));
  *v157.val[0].i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v86, v157.val[1])), v87, 2uLL);
  v88 = vsri_n_s8(vuzp2_s8(*v157.val[0].i8, v87), vuzp1_s8(*v157.val[0].i8, v87), 4uLL).u32[0];
  if (v88)
  {
    v89 = v28 == 0;
  }

  else
  {
    v89 = 1;
  }

  if (!v89)
  {
    v90 = 0;
    v91 = __ROR4__(v88, v84);
    v92 = v28 - 1;
    while (1)
    {
      v93 = *(_X9 + 4 * ((__clz(__rbit64(v91)) + v84) & 0x1F));
      if (v93 < v80)
      {
        break;
      }

      _X0 = v82 + v93;
      __asm { PRFM            #0, [X0] }

      v96 = v90 + 1;
      *(&v139 + v90) = v93;
      v91 &= v91 - 1;
      if (v91)
      {
        _ZF = v92 == v90++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v96 = v90;
    if (!v90)
    {
      goto LABEL_64;
    }

LABEL_59:
    v97 = a2 + 2;
    v98 = *a2;
    v135 = v11 - v138 + v81 - v82 + 2;
    v99 = &v139;
    do
    {
      v101 = *v99++;
      v100 = v101;
      v102 = v82 + v101;
      if (*v102 == v98)
      {
        v103 = (v10 + v138);
        v104 = a3;
        v105 = v10;
        v106 = v81;
        v107 = ZSTD_count_2segments(v97, (v102 + 4), a3, v81, v103);
        v81 = v106;
        v10 = v105;
        a3 = v104;
        if (v107 + 4 > v79)
        {
          *a4 = v135 - v100;
          v79 = v107 + 4;
          if ((a2 + v107 + 4) == v104)
          {
            break;
          }
        }
      }

      --v96;
    }

    while (v96);
  }

LABEL_64:
  v108 = *MEMORY[0x1E69E9840];
  return v79;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_5_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v158 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v141 = *(a1 + 24);
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v11 - v13;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  if (*(a1 + 252) >= 6u)
  {
    v16 = 6;
  }

  else
  {
    v16 = *(a1 + 252);
  }

  v17 = *(a1 + 232);
  v18 = (0xCF1BBCDCBB000000 * *a2) >> (56 - *(v17 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X11 = (*(v17 + 56) + 2 * v19);
  _X9 = *(v17 + 96) + 4 * v19;
  __asm
  {
    PRFM            #0, [X9]
    PRFM            #0, [X9,#0x40]
    PRFM            #0, [X11]
    PRFM            #0, [X11,#0x40]
  }

  v29 = *(a1 + 44);
  if (v12 - v29 >= 0x181)
  {
    if (v29 <= 0xFFFFFF9F)
    {
      v111 = v29 + 96;
      do
      {
        v112 = (0xCF1BBCDCBB000000 * *(v11 + 8 + v29)) >> (56 - v10);
        v113 = (v112 >> 2) & 0x3FFFFFC0;
        _X22 = v5 + 4 * v113;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v7 + 2 * v113;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x40]
        }

        v120 = *(v9 + 4 * (v29 & 7));
        *(v9 + 4 * (v29 & 7)) = v112;
        v121 = (v120 >> 2) & 0x3FFFFFC0;
        v122 = v5 + 4 * v121;
        v123 = (v7 + 2 * v121);
        v124 = (*v123 - 1) & 0x3F;
        *v123 = v124;
        v123[v124 + 16] = v120;
        *(v122 + 4 * v124) = v29++;
      }

      while (v111 != v29);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v125 = v12 - 32;
    LODWORD(v29) = v12 - 32;
    v126 = a2 + 1 - (v11 + v125);
    if ((v126 + 1) < 8)
    {
      v127 = v126 + 1;
    }

    else
    {
      v127 = 8;
    }

    if (a2 + 1 >= v11 + v125)
    {
      v128 = v127;
    }

    else
    {
      v128 = 0;
    }

    if (v125 < v128 + v125)
    {
      v129 = 56 - *(a1 + 52);
      do
      {
        v130 = (0xCF1BBCDCBB000000 * *(v11 + v125)) >> v129;
        v131 = (v130 >> 2) & 0x3FFFFFC0;
        _X24 = v6 + 4 * v131;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x40]
        }

        _X23 = v8 + 2 * v131;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        *(v9 + 4 * (v125++ & 7)) = v130;
        --v128;
      }

      while (v128);
    }
  }

  v30 = 1 << v16;
  if (v29 < v12)
  {
    v31 = *(a1 + 8) + 8;
    v32 = 56 - *(a1 + 52);
    v29 = v29;
    do
    {
      v33 = (0xCF1BBCDCBB000000 * *(v31 + v29)) >> v32;
      v34 = (v33 >> 2) & 0x3FFFFFC0;
      _X23 = v6 + 4 * v34;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v8 + 2 * v34;
      __asm
      {
        PRFM            #0, [X22]
        PRFM            #0, [X22,#0x40]
      }

      v41 = *(v9 + 4 * (v29 & 7));
      *(v9 + 4 * (v29 & 7)) = v33;
      v42 = (v41 >> 2) & 0x3FFFFFC0;
      v43 = v6 + 4 * v42;
      v44 = (v8 + 2 * v42);
      v45 = (*v44 - 1) & 0x3F;
      *v44 = v45;
      v44[v45 + 16] = v41;
      *(v43 + 4 * v45) = v29++;
    }

    while (v29 < v12);
  }

  *(a1 + 44) = v12;
  v46 = (0xCF1BBCDCBB000000 * *(v11 + v12 + 8)) >> (56 - v10);
  v47 = (v46 >> 2) & 0x3FFFFFC0;
  _X3 = v5 + 4 * v47;
  __asm
  {
    PRFM            #0, [X3]
    PRFM            #0, [X3,#0x40]
  }

  _X3 = v7 + 2 * v47;
  __asm
  {
    PRFM            #0, [X3]
    PRFM            #0, [X3,#0x40]
  }

  v54 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v46;
  v55 = (v54 >> 2) & 0x3FFFFFC0;
  v56 = (v7 + 2 * v55);
  v57 = v56 + 16;
  v58 = *v56;
  v59 = v5 + 4 * v55;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v159 = vld4q_s8(v57);
  v60 = vdupq_n_s8(v54);
  v159.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v159.val[3], v60), vceqq_s8(v159.val[2], v60), 1uLL), vsriq_n_s8(vceqq_s8(v159.val[1], v60), vceqq_s8(v159.val[0], v60), 1uLL), 2uLL);
  v61 = vshrn_n_s16(vsriq_n_s8(v159.val[0], v159.val[0], 4uLL), 4uLL);
  v62 = v61;
  if (v61)
  {
    v63 = 0;
    v64 = __ROR8__(*&v61, v58);
    v65 = v30;
    while (1)
    {
      v66 = *(v59 + 4 * ((__clz(__rbit64(v64)) + v58) & 0x3F));
      if (v66 < v15)
      {
        break;
      }

      _X15 = v11 + v66;
      __asm { PRFM            #0, [X15] }

      v62 = (*&v63 + 1);
      *(&v142 + *&v63) = v66;
      v30 = v65 - 1;
      v64 &= v64 - 1;
      if (v64)
      {
        ++*&v63;
        if (--v65)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    v62 = v63;
    v30 = v65;
  }

LABEL_21:
  v69 = (v58 - 1) & 0x3F;
  *v56 = v69;
  v56[v69 + 16] = v54;
  v70 = *(a1 + 44);
  *(a1 + 44) = v70 + 1;
  *(v59 + 4 * v69) = v70;
  if (v62)
  {
    v71 = 0;
    v72 = a3 - 7;
    v73 = 3;
    while (1)
    {
      v74 = *(&v142 + v71);
      v75 = (v11 + v74);
      if (*(v11 + v74 + v73) != *(a2 + v73))
      {
        goto LABEL_44;
      }

      if (v72 <= a2)
      {
        v78 = a2;
      }

      else
      {
        v76 = *v75;
        if (v76 != *a2)
        {
          v83 = __clz(__rbit64(*a2 ^ v76)) >> 3;
          goto LABEL_42;
        }

        v77 = 0;
        v75 = (v11 + 8 + v74);
        v78 = a2 + 4;
        while (v78 < v72)
        {
          v80 = *v75;
          v75 += 4;
          v79 = v80;
          v82 = *v78;
          v78 += 4;
          v81 = v82;
          v77 += 8;
          if (v79 != v82)
          {
            v83 = v77 + (__clz(__rbit64(v81 ^ v79)) >> 3);
            goto LABEL_42;
          }
        }
      }

      if (v78 < a3 - 3 && *v75 == *v78)
      {
        v75 += 2;
        v78 += 2;
      }

      if (v78 < a3 - 1 && *v75 == *v78)
      {
        ++v75;
        ++v78;
      }

      if (v78 < a3 && *v75 == *v78)
      {
        v78 = (v78 + 1);
      }

      v83 = v78 - a2;
LABEL_42:
      if (v83 > v73)
      {
        *a4 = v12 + 2 - v74;
        v73 = v83;
        if ((a2 + v83) == a3)
        {
          goto LABEL_47;
        }
      }

LABEL_44:
      ++v71;
      v83 = v73;
      if (v71 == *&v62)
      {
        goto LABEL_47;
      }
    }
  }

  v83 = 3;
LABEL_47:
  v84 = *(v17 + 24);
  v85 = *v17;
  v86 = *(v17 + 8);
  v89 = *_X11;
  v87 = _X11 + 16;
  v88 = v89;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v160 = vld4q_s8(v87);
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v90 = vdupq_n_s8(v18);
  v91 = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v160.val[3], v90), vceqq_s8(v160.val[2], v90), 1uLL), vsriq_n_s8(vceqq_s8(v160.val[1], v90), vceqq_s8(v160.val[0], v90), 1uLL), 2uLL);
  v92 = vshrn_n_s16(vsriq_n_s8(v91, v91, 4uLL), 4uLL);
  if (v92)
  {
    v93 = v30 == 0;
  }

  else
  {
    v93 = 1;
  }

  if (!v93)
  {
    v94 = 0;
    v95 = __ROR8__(*&v92, v88);
    v96 = v30 - 1;
    while (1)
    {
      v97 = *(_X9 + 4 * ((__clz(__rbit64(v95)) + v88) & 0x3F));
      if (v97 < v84)
      {
        break;
      }

      _X0 = v86 + v97;
      __asm { PRFM            #0, [X0] }

      v100 = v94 + 1;
      *(&v142 + v94) = v97;
      v95 &= v95 - 1;
      if (v95)
      {
        _ZF = v96 == v94++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    v100 = v94;
    if (!v94)
    {
      goto LABEL_63;
    }

LABEL_58:
    v139 = a4;
    v101 = a2 + 2;
    v102 = *a2;
    v138 = v12 - v141 + v85 - v86 + 2;
    v103 = &v142;
    do
    {
      v105 = *v103++;
      v104 = v105;
      v106 = v86 + v105;
      if (*v106 == v102)
      {
        v107 = a3;
        v108 = ZSTD_count_2segments(v101, (v106 + 4), a3, v85, (v11 + v141));
        a3 = v107;
        if (v108 + 4 > v83)
        {
          *v139 = v138 - v104;
          v83 = v108 + 4;
          if ((a2 + v108 + 4) == v107)
          {
            break;
          }
        }
      }

      --v100;
    }

    while (v100);
  }

LABEL_63:
  v109 = *MEMORY[0x1E69E9840];
  return v83;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_6_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v146 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v129 = *(a1 + 24);
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v11 - v13;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  if (*(a1 + 252) >= 4u)
  {
    v16 = 4;
  }

  else
  {
    v16 = *(a1 + 252);
  }

  v17 = *(a1 + 232);
  v18 = (0xCF1BBCDCBF9B0000 * *a2) >> (56 - *(v17 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X11 = (*(v17 + 56) + 2 * v19);
  _X9 = *(v17 + 96) + 4 * v19;
  __asm
  {
    PRFM            #0, [X9]
    PRFM            #0, [X11]
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v103 = v27 + 96;
      do
      {
        v104 = (0xCF1BBCDCBF9B0000 * *(v11 + 8 + v27)) >> (56 - v10);
        v105 = (v104 >> 4) & 0xFFFFFF0;
        _X22 = v5 + 4 * v105;
        __asm { PRFM            #0, [X22] }

        _X20 = v7 + 2 * v105;
        __asm { PRFM            #0, [X20] }

        v110 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v104;
        v111 = (v110 >> 4) & 0xFFFFFF0;
        v112 = v5 + 4 * v111;
        v113 = (v7 + 2 * v111);
        v114 = (*v113 - 1) & 0xF;
        *v113 = v114;
        v113[v114 + 16] = v110;
        *(v112 + 4 * v114) = v27++;
      }

      while (v103 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v115 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v116 = a2 + 1 - (v11 + v115);
    if ((v116 + 1) < 8)
    {
      v117 = v116 + 1;
    }

    else
    {
      v117 = 8;
    }

    if (a2 + 1 >= v11 + v115)
    {
      v118 = v117;
    }

    else
    {
      v118 = 0;
    }

    if (v115 < v118 + v115)
    {
      v119 = 56 - *(a1 + 52);
      do
      {
        v120 = (0xCF1BBCDCBF9B0000 * *(v11 + v115)) >> v119;
        v121 = (v120 >> 4) & 0xFFFFFF0;
        _X24 = v6 + 4 * v121;
        __asm { PRFM            #0, [X24] }

        _X23 = v8 + 2 * v121;
        __asm { PRFM            #0, [X23] }

        *(v9 + 4 * (v115++ & 7)) = v120;
        --v118;
      }

      while (v118);
    }
  }

  v28 = 1 << v16;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 56 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (0xCF1BBCDCBF9B0000 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 4) & 0xFFFFFF0;
      _X23 = v6 + 4 * v32;
      __asm { PRFM            #0, [X23] }

      _X22 = v8 + 2 * v32;
      __asm { PRFM            #0, [X22] }

      v37 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v38 = (v37 >> 4) & 0xFFFFFF0;
      v39 = v6 + 4 * v38;
      v40 = (v8 + 2 * v38);
      v41 = (*v40 - 1) & 0xF;
      *v40 = v41;
      v40[v41 + 16] = v37;
      *(v39 + 4 * v41) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v42 = (0xCF1BBCDCBF9B0000 * *(v11 + v12 + 8)) >> (56 - v10);
  v43 = (v42 >> 4) & 0xFFFFFF0;
  _X3 = v5 + 4 * v43;
  __asm { PRFM            #0, [X3] }

  _X3 = v7 + 2 * v43;
  __asm { PRFM            #0, [X3] }

  v48 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v42;
  v49 = (v48 >> 4) & 0xFFFFFF0;
  v50 = v5 + 4 * v49;
  v51 = (v7 + 2 * v49);
  v52 = v51->i8[0];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v53 = vshlq_n_s16(vceqq_s8(v51[1], vdupq_n_s8(v48)), 7uLL);
  v54 = vshrq_n_u32(vsriq_n_s16(v53, v53, 0xEuLL), 0xEuLL);
  v55 = vsraq_n_u64(v54, v54, 0x1CuLL);
  if (v55.u8[0] | (v55.u8[8] << 8))
  {
    v56 = 0;
    v57 = ((v55.u8[0] | (v55.u8[8] << 8)) >> (v52 & 0xF)) | ((v55.u8[0] | (v55.u8[8] << 8)) << (-v52 & 0xF));
    v58 = v28;
    while (1)
    {
      v59 = *(v50 + 4 * ((__clz(__rbit64(v57)) + v52) & 0xF));
      if (v59 < v15)
      {
        break;
      }

      _X15 = v11 + v59;
      __asm { PRFM            #0, [X15] }

      v62 = v56 + 1;
      *(&v130 + v56) = v59;
      v28 = v58 - 1;
      v57 &= v57 - 1;
      if (v57)
      {
        ++v56;
        if (--v58)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v62 = v56;
    v28 = v58;
  }

  else
  {
    v62 = 0;
  }

LABEL_22:
  v63 = (v52 - 1) & 0xF;
  v51->i8[0] = v63;
  v51[1].i8[v63] = v48;
  v64 = *(a1 + 44);
  *(a1 + 44) = v64 + 1;
  *(v50 + 4 * v63) = v64;
  if (v62)
  {
    v65 = 0;
    v66 = a3 - 7;
    v67 = 3;
    while (1)
    {
      v68 = *(&v130 + v65);
      v69 = (v11 + v68);
      if (*(v11 + v68 + v67) != *(a2 + v67))
      {
        goto LABEL_45;
      }

      if (v66 <= a2)
      {
        v72 = a2;
      }

      else
      {
        v70 = *v69;
        if (v70 != *a2)
        {
          v77 = __clz(__rbit64(*a2 ^ v70)) >> 3;
          goto LABEL_43;
        }

        v71 = 0;
        v69 = (v11 + 8 + v68);
        v72 = a2 + 4;
        while (v72 < v66)
        {
          v74 = *v69;
          v69 += 4;
          v73 = v74;
          v76 = *v72;
          v72 += 4;
          v75 = v76;
          v71 += 8;
          if (v73 != v76)
          {
            v77 = v71 + (__clz(__rbit64(v75 ^ v73)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v72 < a3 - 3 && *v69 == *v72)
      {
        v69 += 2;
        v72 += 2;
      }

      if (v72 < a3 - 1 && *v69 == *v72)
      {
        ++v69;
        ++v72;
      }

      if (v72 < a3 && *v69 == *v72)
      {
        v72 = (v72 + 1);
      }

      v77 = v72 - a2;
LABEL_43:
      if (v77 > v67)
      {
        *a4 = v12 + 2 - v68;
        v67 = v77;
        if ((a2 + v77) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v65;
      v77 = v67;
      if (v65 == v62)
      {
        goto LABEL_48;
      }
    }
  }

  v77 = 3;
LABEL_48:
  v78 = *(v17 + 24);
  v79 = *v17;
  v80 = *(v17 + 8);
  v81 = _X11->i8[0];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v82 = vshlq_n_s16(vceqq_s8(_X11[1], vdupq_n_s8(v18)), 7uLL);
  v83 = vshrq_n_u32(vsriq_n_s16(v82, v82, 0xEuLL), 0xEuLL);
  v84 = vsraq_n_u64(v83, v83, 0x1CuLL);
  if (v84.u8[0] | (v84.u8[8] << 8))
  {
    v85 = v28 == 0;
  }

  else
  {
    v85 = 1;
  }

  if (!v85)
  {
    v86 = 0;
    v87 = ((v84.u8[0] | (v84.u8[8] << 8)) >> (v81 & 0xF)) | ((v84.u8[0] | (v84.u8[8] << 8)) << (-v81 & 0xF));
    v88 = v28 - 1;
    while (1)
    {
      v89 = *(_X9 + 4 * ((__clz(__rbit64(v87)) + v81) & 0xF));
      if (v89 < v78)
      {
        break;
      }

      _X0 = v80 + v89;
      __asm { PRFM            #0, [X0] }

      v92 = v86 + 1;
      *(&v130 + v86) = v89;
      v87 &= v87 - 1;
      if (v87)
      {
        _ZF = v88 == v86++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v92 = v86;
    if (!v86)
    {
      goto LABEL_64;
    }

LABEL_59:
    v127 = a4;
    v93 = a2 + 2;
    v94 = *a2;
    v126 = v12 - v129 + v79 - v80 + 2;
    v95 = &v130;
    do
    {
      v97 = *v95++;
      v96 = v97;
      v98 = v80 + v97;
      if (*v98 == v94)
      {
        v99 = a3;
        v100 = ZSTD_count_2segments(v93, (v98 + 4), a3, v79, (v11 + v129));
        a3 = v99;
        if (v100 + 4 > v77)
        {
          *v127 = v126 - v96;
          v77 = v100 + 4;
          if ((a2 + v100 + 4) == v99)
          {
            break;
          }
        }
      }

      --v92;
    }

    while (v92);
  }

LABEL_64:
  v101 = *MEMORY[0x1E69E9840];
  return v77;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_6_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v155 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v138 = *(a1 + 24);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v14 = a2 - v10 - v12;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  if (*(a1 + 252) >= 5u)
  {
    v15 = 5;
  }

  else
  {
    v15 = *(a1 + 252);
  }

  v16 = *(a1 + 232);
  v17 = (0xCF1BBCDCBF9B0000 * *a2) >> (56 - *(v16 + 52));
  v18 = (v17 >> 3) & 0x1FFFFFE0;
  _X11 = (*(v16 + 56) + 2 * v18);
  _X9 = *(v16 + 96) + 4 * v18;
  __asm
  {
    PRFM            #0, [X9]
    PRFM            #0, [X9,#0x40]
    PRFM            #0, [X11]
  }

  v27 = *(a1 + 44);
  if (v11 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v110 = v27 + 96;
      do
      {
        v111 = (0xCF1BBCDCBF9B0000 * *(v10 + 8 + v27)) >> (56 - v9);
        v112 = (v111 >> 3) & 0x1FFFFFE0;
        _X22 = v4 + 4 * v112;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v6 + 2 * v112;
        __asm { PRFM            #0, [X20] }

        v118 = *(v8 + 4 * (v27 & 7));
        *(v8 + 4 * (v27 & 7)) = v111;
        v119 = (v118 >> 3) & 0x1FFFFFE0;
        v120 = v4 + 4 * v119;
        v121 = (v6 + 2 * v119);
        v122 = (*v121 - 1) & 0x1F;
        *v121 = v122;
        v121[v122 + 16] = v118;
        *(v120 + 4 * v122) = v27++;
      }

      while (v110 != v27);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v123 = v11 - 32;
    LODWORD(v27) = v11 - 32;
    v124 = a2 + 1 - (v10 + v123);
    if ((v124 + 1) < 8)
    {
      v125 = v124 + 1;
    }

    else
    {
      v125 = 8;
    }

    if (a2 + 1 >= v10 + v123)
    {
      v126 = v125;
    }

    else
    {
      v126 = 0;
    }

    if (v123 < v126 + v123)
    {
      v127 = 56 - *(a1 + 52);
      do
      {
        v128 = (0xCF1BBCDCBF9B0000 * *(v10 + v123)) >> v127;
        v129 = (v128 >> 3) & 0x1FFFFFE0;
        _X24 = v5 + 4 * v129;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x40]
        }

        _X23 = v7 + 2 * v129;
        __asm { PRFM            #0, [X23] }

        *(v8 + 4 * (v123++ & 7)) = v128;
        --v126;
      }

      while (v126);
    }
  }

  v28 = 1 << v15;
  if (v27 < v11)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 56 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (0xCF1BBCDCBF9B0000 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 3) & 0x1FFFFFE0;
      _X23 = v5 + 4 * v32;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v7 + 2 * v32;
      __asm { PRFM            #0, [X22] }

      v38 = *(v8 + 4 * (v27 & 7));
      *(v8 + 4 * (v27 & 7)) = v31;
      v39 = (v38 >> 3) & 0x1FFFFFE0;
      v40 = v5 + 4 * v39;
      v41 = (v7 + 2 * v39);
      v42 = (*v41 - 1) & 0x1F;
      *v41 = v42;
      v41[v42 + 16] = v38;
      *(v40 + 4 * v42) = v27++;
    }

    while (v27 < v11);
  }

  *(a1 + 44) = v11;
  v43 = (0xCF1BBCDCBF9B0000 * *(v10 + v11 + 8)) >> (56 - v9);
  v44 = (v43 >> 3) & 0x1FFFFFE0;
  _X4 = v4 + 4 * v44;
  __asm
  {
    PRFM            #0, [X4]
    PRFM            #0, [X4,#0x40]
  }

  _X4 = v6 + 2 * v44;
  __asm { PRFM            #0, [X4] }

  v50 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v43;
  v51 = (v50 >> 3) & 0x1FFFFFE0;
  v52 = v4 + 4 * v51;
  v53 = (v6 + 2 * v51);
  v54 = (v53 + 16);
  v55 = *v53;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v156 = vld2q_s16(v54);
  v139 = 0u;
  v140 = 0u;
  v56 = vdupq_n_s8(v50);
  *v156.val[0].i8 = vqmovn_s16(vceqq_s8(v56, v156.val[0]));
  *v56.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v56, v156.val[1])), *v156.val[0].i8, 2uLL);
  v57 = vsri_n_s8(vuzp2_s8(*v56.i8, *v156.val[0].i8), vuzp1_s8(*v56.i8, *v156.val[0].i8), 4uLL).u32[0];
  if (v57)
  {
    v58 = 0;
    v59 = __ROR4__(v57, v55);
    v60 = v28;
    while (1)
    {
      v61 = *(v52 + 4 * ((__clz(__rbit64(v59)) + v55) & 0x1F));
      if (v61 < v14)
      {
        break;
      }

      _X15 = v10 + v61;
      __asm { PRFM            #0, [X15] }

      v64 = v58 + 1;
      *(&v139 + v58) = v61;
      v28 = v60 - 1;
      v59 &= v59 - 1;
      if (v59)
      {
        ++v58;
        if (--v60)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v64 = v58;
    v28 = v60;
  }

  else
  {
    v64 = 0;
  }

LABEL_22:
  v65 = (v55 - 1) & 0x1F;
  *v53 = v65;
  v53[v65 + 16] = v50;
  v66 = *(a1 + 44);
  *(a1 + 44) = v66 + 1;
  *(v52 + 4 * v65) = v66;
  if (v64)
  {
    v67 = 0;
    v68 = a3 - 7;
    v69 = 3;
    while (1)
    {
      v70 = *(&v139 + v67);
      v71 = (v10 + v70);
      if (*(v10 + v70 + v69) != *(a2 + v69))
      {
        goto LABEL_45;
      }

      if (v68 <= a2)
      {
        v74 = a2;
      }

      else
      {
        v72 = *v71;
        if (v72 != *a2)
        {
          v79 = __clz(__rbit64(*a2 ^ v72)) >> 3;
          goto LABEL_43;
        }

        v73 = 0;
        v71 = (v10 + 8 + v70);
        v74 = a2 + 4;
        while (v74 < v68)
        {
          v76 = *v71;
          v71 += 4;
          v75 = v76;
          v78 = *v74;
          v74 += 4;
          v77 = v78;
          v73 += 8;
          if (v75 != v78)
          {
            v79 = v73 + (__clz(__rbit64(v77 ^ v75)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v74 < a3 - 3 && *v71 == *v74)
      {
        v71 += 2;
        v74 += 2;
      }

      if (v74 < a3 - 1 && *v71 == *v74)
      {
        ++v71;
        ++v74;
      }

      if (v74 < a3 && *v71 == *v74)
      {
        v74 = (v74 + 1);
      }

      v79 = v74 - a2;
LABEL_43:
      if (v79 > v69)
      {
        *a4 = v11 + 2 - v70;
        v69 = v79;
        if ((a2 + v79) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v67;
      v79 = v69;
      if (v67 == v64)
      {
        goto LABEL_48;
      }
    }
  }

  v79 = 3;
LABEL_48:
  v80 = *(v16 + 24);
  v81 = *v16;
  v82 = *(v16 + 8);
  v85 = *_X11;
  v83 = (_X11 + 16);
  v84 = v85;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v157 = vld2q_s16(v83);
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v86 = vdupq_n_s8(v17);
  v139 = 0u;
  v140 = 0u;
  v87 = vqmovn_s16(vceqq_s8(v86, v157.val[0]));
  *v157.val[0].i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v86, v157.val[1])), v87, 2uLL);
  v88 = vsri_n_s8(vuzp2_s8(*v157.val[0].i8, v87), vuzp1_s8(*v157.val[0].i8, v87), 4uLL).u32[0];
  if (v88)
  {
    v89 = v28 == 0;
  }

  else
  {
    v89 = 1;
  }

  if (!v89)
  {
    v90 = 0;
    v91 = __ROR4__(v88, v84);
    v92 = v28 - 1;
    while (1)
    {
      v93 = *(_X9 + 4 * ((__clz(__rbit64(v91)) + v84) & 0x1F));
      if (v93 < v80)
      {
        break;
      }

      _X0 = v82 + v93;
      __asm { PRFM            #0, [X0] }

      v96 = v90 + 1;
      *(&v139 + v90) = v93;
      v91 &= v91 - 1;
      if (v91)
      {
        _ZF = v92 == v90++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v96 = v90;
    if (!v90)
    {
      goto LABEL_64;
    }

LABEL_59:
    v97 = a2 + 2;
    v98 = *a2;
    v135 = v11 - v138 + v81 - v82 + 2;
    v99 = &v139;
    do
    {
      v101 = *v99++;
      v100 = v101;
      v102 = v82 + v101;
      if (*v102 == v98)
      {
        v103 = (v10 + v138);
        v104 = a3;
        v105 = v10;
        v106 = v81;
        v107 = ZSTD_count_2segments(v97, (v102 + 4), a3, v81, v103);
        v81 = v106;
        v10 = v105;
        a3 = v104;
        if (v107 + 4 > v79)
        {
          *a4 = v135 - v100;
          v79 = v107 + 4;
          if ((a2 + v107 + 4) == v104)
          {
            break;
          }
        }
      }

      --v96;
    }

    while (v96);
  }

LABEL_64:
  v108 = *MEMORY[0x1E69E9840];
  return v79;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_6_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v158 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v141 = *(a1 + 24);
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v11 - v13;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  if (*(a1 + 252) >= 6u)
  {
    v16 = 6;
  }

  else
  {
    v16 = *(a1 + 252);
  }

  v17 = *(a1 + 232);
  v18 = (0xCF1BBCDCBF9B0000 * *a2) >> (56 - *(v17 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X11 = (*(v17 + 56) + 2 * v19);
  _X9 = *(v17 + 96) + 4 * v19;
  __asm
  {
    PRFM            #0, [X9]
    PRFM            #0, [X9,#0x40]
    PRFM            #0, [X11]
    PRFM            #0, [X11,#0x40]
  }

  v29 = *(a1 + 44);
  if (v12 - v29 >= 0x181)
  {
    if (v29 <= 0xFFFFFF9F)
    {
      v111 = v29 + 96;
      do
      {
        v112 = (0xCF1BBCDCBF9B0000 * *(v11 + 8 + v29)) >> (56 - v10);
        v113 = (v112 >> 2) & 0x3FFFFFC0;
        _X22 = v5 + 4 * v113;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v7 + 2 * v113;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x40]
        }

        v120 = *(v9 + 4 * (v29 & 7));
        *(v9 + 4 * (v29 & 7)) = v112;
        v121 = (v120 >> 2) & 0x3FFFFFC0;
        v122 = v5 + 4 * v121;
        v123 = (v7 + 2 * v121);
        v124 = (*v123 - 1) & 0x3F;
        *v123 = v124;
        v123[v124 + 16] = v120;
        *(v122 + 4 * v124) = v29++;
      }

      while (v111 != v29);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v125 = v12 - 32;
    LODWORD(v29) = v12 - 32;
    v126 = a2 + 1 - (v11 + v125);
    if ((v126 + 1) < 8)
    {
      v127 = v126 + 1;
    }

    else
    {
      v127 = 8;
    }

    if (a2 + 1 >= v11 + v125)
    {
      v128 = v127;
    }

    else
    {
      v128 = 0;
    }

    if (v125 < v128 + v125)
    {
      v129 = 56 - *(a1 + 52);
      do
      {
        v130 = (0xCF1BBCDCBF9B0000 * *(v11 + v125)) >> v129;
        v131 = (v130 >> 2) & 0x3FFFFFC0;
        _X24 = v6 + 4 * v131;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x40]
        }

        _X23 = v8 + 2 * v131;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        *(v9 + 4 * (v125++ & 7)) = v130;
        --v128;
      }

      while (v128);
    }
  }

  v30 = 1 << v16;
  if (v29 < v12)
  {
    v31 = *(a1 + 8) + 8;
    v32 = 56 - *(a1 + 52);
    v29 = v29;
    do
    {
      v33 = (0xCF1BBCDCBF9B0000 * *(v31 + v29)) >> v32;
      v34 = (v33 >> 2) & 0x3FFFFFC0;
      _X23 = v6 + 4 * v34;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v8 + 2 * v34;
      __asm
      {
        PRFM            #0, [X22]
        PRFM            #0, [X22,#0x40]
      }

      v41 = *(v9 + 4 * (v29 & 7));
      *(v9 + 4 * (v29 & 7)) = v33;
      v42 = (v41 >> 2) & 0x3FFFFFC0;
      v43 = v6 + 4 * v42;
      v44 = (v8 + 2 * v42);
      v45 = (*v44 - 1) & 0x3F;
      *v44 = v45;
      v44[v45 + 16] = v41;
      *(v43 + 4 * v45) = v29++;
    }

    while (v29 < v12);
  }

  *(a1 + 44) = v12;
  v46 = (0xCF1BBCDCBF9B0000 * *(v11 + v12 + 8)) >> (56 - v10);
  v47 = (v46 >> 2) & 0x3FFFFFC0;
  _X3 = v5 + 4 * v47;
  __asm
  {
    PRFM            #0, [X3]
    PRFM            #0, [X3,#0x40]
  }

  _X3 = v7 + 2 * v47;
  __asm
  {
    PRFM            #0, [X3]
    PRFM            #0, [X3,#0x40]
  }

  v54 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v46;
  v55 = (v54 >> 2) & 0x3FFFFFC0;
  v56 = (v7 + 2 * v55);
  v57 = v56 + 16;
  v58 = *v56;
  v59 = v5 + 4 * v55;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v159 = vld4q_s8(v57);
  v60 = vdupq_n_s8(v54);
  v159.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v159.val[3], v60), vceqq_s8(v159.val[2], v60), 1uLL), vsriq_n_s8(vceqq_s8(v159.val[1], v60), vceqq_s8(v159.val[0], v60), 1uLL), 2uLL);
  v61 = vshrn_n_s16(vsriq_n_s8(v159.val[0], v159.val[0], 4uLL), 4uLL);
  v62 = v61;
  if (v61)
  {
    v63 = 0;
    v64 = __ROR8__(*&v61, v58);
    v65 = v30;
    while (1)
    {
      v66 = *(v59 + 4 * ((__clz(__rbit64(v64)) + v58) & 0x3F));
      if (v66 < v15)
      {
        break;
      }

      _X15 = v11 + v66;
      __asm { PRFM            #0, [X15] }

      v62 = (*&v63 + 1);
      *(&v142 + *&v63) = v66;
      v30 = v65 - 1;
      v64 &= v64 - 1;
      if (v64)
      {
        ++*&v63;
        if (--v65)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    v62 = v63;
    v30 = v65;
  }

LABEL_21:
  v69 = (v58 - 1) & 0x3F;
  *v56 = v69;
  v56[v69 + 16] = v54;
  v70 = *(a1 + 44);
  *(a1 + 44) = v70 + 1;
  *(v59 + 4 * v69) = v70;
  if (v62)
  {
    v71 = 0;
    v72 = a3 - 7;
    v73 = 3;
    while (1)
    {
      v74 = *(&v142 + v71);
      v75 = (v11 + v74);
      if (*(v11 + v74 + v73) != *(a2 + v73))
      {
        goto LABEL_44;
      }

      if (v72 <= a2)
      {
        v78 = a2;
      }

      else
      {
        v76 = *v75;
        if (v76 != *a2)
        {
          v83 = __clz(__rbit64(*a2 ^ v76)) >> 3;
          goto LABEL_42;
        }

        v77 = 0;
        v75 = (v11 + 8 + v74);
        v78 = a2 + 4;
        while (v78 < v72)
        {
          v80 = *v75;
          v75 += 4;
          v79 = v80;
          v82 = *v78;
          v78 += 4;
          v81 = v82;
          v77 += 8;
          if (v79 != v82)
          {
            v83 = v77 + (__clz(__rbit64(v81 ^ v79)) >> 3);
            goto LABEL_42;
          }
        }
      }

      if (v78 < a3 - 3 && *v75 == *v78)
      {
        v75 += 2;
        v78 += 2;
      }

      if (v78 < a3 - 1 && *v75 == *v78)
      {
        ++v75;
        ++v78;
      }

      if (v78 < a3 && *v75 == *v78)
      {
        v78 = (v78 + 1);
      }

      v83 = v78 - a2;
LABEL_42:
      if (v83 > v73)
      {
        *a4 = v12 + 2 - v74;
        v73 = v83;
        if ((a2 + v83) == a3)
        {
          goto LABEL_47;
        }
      }

LABEL_44:
      ++v71;
      v83 = v73;
      if (v71 == *&v62)
      {
        goto LABEL_47;
      }
    }
  }

  v83 = 3;
LABEL_47:
  v84 = *(v17 + 24);
  v85 = *v17;
  v86 = *(v17 + 8);
  v89 = *_X11;
  v87 = _X11 + 16;
  v88 = v89;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v160 = vld4q_s8(v87);
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v90 = vdupq_n_s8(v18);
  v91 = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v160.val[3], v90), vceqq_s8(v160.val[2], v90), 1uLL), vsriq_n_s8(vceqq_s8(v160.val[1], v90), vceqq_s8(v160.val[0], v90), 1uLL), 2uLL);
  v92 = vshrn_n_s16(vsriq_n_s8(v91, v91, 4uLL), 4uLL);
  if (v92)
  {
    v93 = v30 == 0;
  }

  else
  {
    v93 = 1;
  }

  if (!v93)
  {
    v94 = 0;
    v95 = __ROR8__(*&v92, v88);
    v96 = v30 - 1;
    while (1)
    {
      v97 = *(_X9 + 4 * ((__clz(__rbit64(v95)) + v88) & 0x3F));
      if (v97 < v84)
      {
        break;
      }

      _X0 = v86 + v97;
      __asm { PRFM            #0, [X0] }

      v100 = v94 + 1;
      *(&v142 + v94) = v97;
      v95 &= v95 - 1;
      if (v95)
      {
        _ZF = v96 == v94++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    v100 = v94;
    if (!v94)
    {
      goto LABEL_63;
    }

LABEL_58:
    v139 = a4;
    v101 = a2 + 2;
    v102 = *a2;
    v138 = v12 - v141 + v85 - v86 + 2;
    v103 = &v142;
    do
    {
      v105 = *v103++;
      v104 = v105;
      v106 = v86 + v105;
      if (*v106 == v102)
      {
        v107 = a3;
        v108 = ZSTD_count_2segments(v101, (v106 + 4), a3, v85, (v11 + v141));
        a3 = v107;
        if (v108 + 4 > v83)
        {
          *v139 = v138 - v104;
          v83 = v108 + 4;
          if ((a2 + v108 + 4) == v107)
          {
            break;
          }
        }
      }

      --v100;
    }

    while (v100);
  }

LABEL_63:
  v109 = *MEMORY[0x1E69E9840];
  return v83;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v143 = *(a1 + 24);
  v14 = a2 - v11 - v13;
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v14 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  v17 = *(a1 + 232);
  v18 = v16 - 4;
  if (v16 >= 4)
  {
    v19 = 4;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  v20 = (-1640531535 * *a2) >> (34 - *(v17 + 248));
  _X9 = *(v17 + 96) + 16 * v20;
  __asm { PRFM            #0, [X9] }

  v26 = 1 << v18;
  if (!(!_ZF & _CF))
  {
    v26 = 0;
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v111 = v27 + 96;
      do
      {
        v112 = (-1640531535 * *(v11 + 8 + v27)) >> (24 - v10);
        v113 = (v112 >> 4) & 0xFFFFFF0;
        _X19 = v5 + 4 * v113;
        __asm { PRFM            #0, [X19] }

        _X7 = v7 + 2 * v113;
        __asm { PRFM            #0, [X7] }

        v118 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v112;
        v119 = (v118 >> 4) & 0xFFFFFF0;
        v120 = v5 + 4 * v119;
        v121 = (v7 + 2 * v119);
        v122 = (*v121 - 1) & 0xF;
        *v121 = v122;
        v121[v122 + 16] = v118;
        *(v120 + 4 * v122) = v27++;
      }

      while (v111 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v123 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v124 = a2 + 1 - (v11 + v123);
    if ((v124 + 1) < 8)
    {
      v125 = v124 + 1;
    }

    else
    {
      v125 = 8;
    }

    if (a2 + 1 >= v11 + v123)
    {
      v126 = v125;
    }

    else
    {
      v126 = 0;
    }

    if (v123 < v126 + v123)
    {
      v127 = 24 - *(a1 + 52);
      do
      {
        v128 = (-1640531535 * *(v11 + v123)) >> v127;
        v129 = (v128 >> 4) & 0xFFFFFF0;
        _X22 = v6 + 4 * v129;
        __asm { PRFM            #0, [X22] }

        _X20 = v8 + 2 * v129;
        __asm { PRFM            #0, [X20] }

        *(v9 + 4 * (v123++ & 7)) = v128;
        --v126;
      }

      while (v126);
    }
  }

  v28 = 1 << v19;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 24 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (-1640531535 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 4) & 0xFFFFFF0;
      _X20 = v6 + 4 * v32;
      __asm { PRFM            #0, [X20] }

      _X19 = v8 + 2 * v32;
      __asm { PRFM            #0, [X19] }

      v37 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v38 = (v37 >> 4) & 0xFFFFFF0;
      v39 = v6 + 4 * v38;
      v40 = (v8 + 2 * v38);
      v41 = (*v40 - 1) & 0xF;
      *v40 = v41;
      v40[v41 + 16] = v37;
      *(v39 + 4 * v41) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v42 = (-1640531535 * *(v11 + v12 + 8)) >> (24 - v10);
  v43 = (v42 >> 4) & 0xFFFFFF0;
  _X1 = v5 + 4 * v43;
  __asm { PRFM            #0, [X1] }

  _X16 = v7 + 2 * v43;
  __asm { PRFM            #0, [X16] }

  v48 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v42;
  v49 = (v48 >> 4) & 0xFFFFFF0;
  v50 = v5 + 4 * v49;
  v51 = (v7 + 2 * v49);
  v52 = v51->i8[0];
  memset(v144, 0, sizeof(v144));
  v53 = vshlq_n_s16(vceqq_s8(v51[1], vdupq_n_s8(v48)), 7uLL);
  v54 = vshrq_n_u32(vsriq_n_s16(v53, v53, 0xEuLL), 0xEuLL);
  v55 = vsraq_n_u64(v54, v54, 0x1CuLL);
  if (v55.u8[0] | (v55.u8[8] << 8))
  {
    v56 = 0;
    v57 = ((v55.u8[0] | (v55.u8[8] << 8)) >> (v52 & 0xF)) | ((v55.u8[0] | (v55.u8[8] << 8)) << (-v52 & 0xF));
    v58 = v28;
    while (1)
    {
      v59 = *(v50 + 4 * ((__clz(__rbit64(v57)) + v52) & 0xF));
      if (v59 < v14)
      {
        break;
      }

      _X13 = v11 + v59;
      __asm { PRFM            #0, [X13] }

      v62 = v56 + 1;
      *(v144 + v56) = v59;
      v28 = v58 - 1;
      v57 &= v57 - 1;
      if (v57)
      {
        ++v56;
        if (--v58)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    v62 = v56;
    v28 = v58;
  }

  else
  {
    v62 = 0;
  }

LABEL_23:
  v63 = 4 * v20;
  v64 = (v52 - 1) & 0xF;
  v51->i8[0] = v64;
  v51[1].i8[v64] = v48;
  v65 = *(a1 + 44);
  *(a1 + 44) = v65 + 1;
  *(v50 + 4 * v64) = v65;
  if (v62)
  {
    v66 = 0;
    v67 = a3 - 7;
    v68 = 3;
    while (1)
    {
      v69 = *(v144 + v66);
      v70 = (v11 + v69);
      if (*(v11 + v69 + v68) != *(a2 + v68))
      {
        goto LABEL_46;
      }

      if (v67 <= a2)
      {
        v73 = a2;
      }

      else
      {
        v71 = *v70;
        if (v71 != *a2)
        {
          v78 = __clz(__rbit64(*a2 ^ v71)) >> 3;
          goto LABEL_44;
        }

        v72 = 0;
        v70 = (v11 + 8 + v69);
        v73 = a2 + 4;
        while (v73 < v67)
        {
          v75 = *v70;
          v70 += 4;
          v74 = v75;
          v77 = *v73;
          v73 += 4;
          v76 = v77;
          v72 += 8;
          if (v74 != v77)
          {
            v78 = v72 + (__clz(__rbit64(v76 ^ v74)) >> 3);
            goto LABEL_44;
          }
        }
      }

      if (v73 < a3 - 3 && *v70 == *v73)
      {
        v70 += 2;
        v73 += 2;
      }

      if (v73 < a3 - 1 && *v70 == *v73)
      {
        ++v70;
        ++v73;
      }

      if (v73 < a3 && *v70 == *v73)
      {
        v73 = (v73 + 1);
      }

      v78 = v73 - a2;
LABEL_44:
      if (v78 > v68)
      {
        *a4 = v12 + 2 - v69;
        v68 = v78;
        if ((a2 + v78) == a3)
        {
          goto LABEL_49;
        }
      }

LABEL_46:
      ++v66;
      v78 = v68;
      if (v66 == v62)
      {
        goto LABEL_49;
      }
    }
  }

  v78 = 3;
LABEL_49:
  v142 = v11;
  v79 = 0;
  v80 = *v17;
  v81 = *(v17 + 8);
  v82 = *v17 - v81 - v143;
  v83 = (*(v17 + 96) + 4 * v63);
  do
  {
    _X11 = v81 + v83[v79];
    __asm { PRFM            #0, [X11] }

    ++v79;
  }

  while (v79 != 3);
  v86 = v83[3];
  _X27 = (*(v17 + 112) + 4 * (v86 >> 8));
  __asm { PRFM            #0, [X27] }

  LODWORD(v89) = v28 + v26;
  v90 = a3;
  v138 = v12;
  if (v89)
  {
    v136 = v83[3];
    v135 = v89;
    if (v89 >= 3)
    {
      v89 = 3;
    }

    else
    {
      v89 = v89;
    }

    v137 = *v17 - v81 - v143;
    v139 = v12 + v82 + 2;
    v134 = v89;
    v91 = v89;
    while (1)
    {
      v93 = *v83++;
      v92 = v93;
      if (!v93)
      {
        break;
      }

      if (*(v81 + v92) == *a2)
      {
        v94 = ZSTD_count_2segments(a2 + 2, (v81 + v92 + 4), a3, v80, (v142 + v143));
        a3 = v90;
        v95 = v94 + 4;
        if (v94 + 4 > v78)
        {
          *a4 = (v139 - v92);
          v78 = v94 + 4;
          if ((a2 + v95) == v90)
          {
            goto LABEL_76;
          }
        }
      }

      if (!--v91)
      {
        v82 = v137;
        LOBYTE(v86) = v136;
        LODWORD(v89) = v135;
        v96 = v134;
        goto LABEL_63;
      }
    }

LABEL_75:
    v95 = v78;
    goto LABEL_76;
  }

  v96 = 0;
LABEL_63:
  v97 = v89 - v96;
  if (v97 >= v86)
  {
    v98 = v86;
  }

  else
  {
    v98 = v97;
  }

  if (!v98)
  {
    goto LABEL_75;
  }

  v99 = 4 * v98;
  v100 = _X27;
  do
  {
    v101 = *v100++;
    _X10 = v81 + v101;
    __asm { PRFM            #0, [X10] }

    v99 -= 4;
  }

  while (v99);
  v104 = *a2;
  v140 = v138 + v82 + 2;
  v95 = v78;
  do
  {
    v106 = *_X27++;
    v105 = v106;
    v107 = v81 + v106;
    if (*v107 == v104)
    {
      v108 = ZSTD_count_2segments(a2 + 2, (v107 + 4), a3, v80, (v142 + v143));
      a3 = v90;
      if (v108 + 4 > v95)
      {
        *a4 = v140 - v105;
        v95 = v108 + 4;
        if ((a2 + v108 + 4) == v90)
        {
          break;
        }
      }
    }

    --v98;
  }

  while (v98);
LABEL_76:
  v109 = *MEMORY[0x1E69E9840];
  return v95;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v149 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v147 = *(a1 + 24);
  v14 = a2 - v11 - v13;
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v14 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  v17 = *(a1 + 232);
  v18 = v16 - 5;
  if (v16 >= 5)
  {
    v19 = 5;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  v20 = (-1640531535 * *a2) >> (34 - *(v17 + 248));
  _X9 = *(v17 + 96) + 16 * v20;
  __asm { PRFM            #0, [X9] }

  v26 = 1 << v18;
  if (!(!_ZF & _CF))
  {
    v26 = 0;
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v113 = v27 + 96;
      do
      {
        v114 = (-1640531535 * *(v11 + 8 + v27)) >> (24 - v10);
        v115 = (v114 >> 3) & 0x1FFFFFE0;
        _X19 = v5 + 4 * v115;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v7 + 2 * v115;
        __asm { PRFM            #0, [X7] }

        v121 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v114;
        v122 = (v121 >> 3) & 0x1FFFFFE0;
        v123 = v5 + 4 * v122;
        v124 = (v7 + 2 * v122);
        v125 = (*v124 - 1) & 0x1F;
        *v124 = v125;
        v124[v125 + 16] = v121;
        *(v123 + 4 * v125) = v27++;
      }

      while (v113 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v126 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v127 = a2 + 1 - (v11 + v126);
    if ((v127 + 1) < 8)
    {
      v128 = v127 + 1;
    }

    else
    {
      v128 = 8;
    }

    if (a2 + 1 >= v11 + v126)
    {
      v129 = v128;
    }

    else
    {
      v129 = 0;
    }

    if (v126 < v129 + v126)
    {
      v130 = 24 - *(a1 + 52);
      do
      {
        v131 = (-1640531535 * *(v11 + v126)) >> v130;
        v132 = (v131 >> 3) & 0x1FFFFFE0;
        _X22 = v6 + 4 * v132;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v8 + 2 * v132;
        __asm { PRFM            #0, [X20] }

        *(v9 + 4 * (v126++ & 7)) = v131;
        --v129;
      }

      while (v129);
    }
  }

  v28 = 1 << v19;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 24 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (-1640531535 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 3) & 0x1FFFFFE0;
      _X20 = v6 + 4 * v32;
      __asm
      {
        PRFM            #0, [X20]
        PRFM            #0, [X20,#0x40]
      }

      _X19 = v8 + 2 * v32;
      __asm { PRFM            #0, [X19] }

      v38 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v39 = (v38 >> 3) & 0x1FFFFFE0;
      v40 = v6 + 4 * v39;
      v41 = (v8 + 2 * v39);
      v42 = (*v41 - 1) & 0x1F;
      *v41 = v42;
      v41[v42 + 16] = v38;
      *(v40 + 4 * v42) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v43 = (-1640531535 * *(v11 + v12 + 8)) >> (24 - v10);
  v44 = (v43 >> 3) & 0x1FFFFFE0;
  _X1 = v5 + 4 * v44;
  __asm
  {
    PRFM            #0, [X1]
    PRFM            #0, [X1,#0x40]
  }

  _X16 = v7 + 2 * v44;
  __asm { PRFM            #0, [X16] }

  v50 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v43;
  v51 = (v50 >> 3) & 0x1FFFFFE0;
  v52 = v5 + 4 * v51;
  v53 = (v7 + 2 * v51);
  v54 = (v53 + 16);
  v55 = *v53;
  v150 = vld2q_s16(v54);
  memset(v148, 0, sizeof(v148));
  v56 = vdupq_n_s8(v50);
  *v150.val[0].i8 = vqmovn_s16(vceqq_s8(v56, v150.val[0]));
  *v56.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v56, v150.val[1])), *v150.val[0].i8, 2uLL);
  v57 = vsri_n_s8(vuzp2_s8(*v56.i8, *v150.val[0].i8), vuzp1_s8(*v56.i8, *v150.val[0].i8), 4uLL).u32[0];
  if (v57)
  {
    v58 = 0;
    v59 = __ROR4__(v57, v55);
    v60 = v28;
    while (1)
    {
      v61 = *(v52 + 4 * ((__clz(__rbit64(v59)) + v55) & 0x1F));
      if (v61 < v14)
      {
        break;
      }

      _X13 = v11 + v61;
      __asm { PRFM            #0, [X13] }

      v64 = v58 + 1;
      *(v148 + v58) = v61;
      v28 = v60 - 1;
      v59 &= v59 - 1;
      if (v59)
      {
        ++v58;
        if (--v60)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    v64 = v58;
    v28 = v60;
  }

  else
  {
    v64 = 0;
  }

LABEL_23:
  v65 = 4 * v20;
  v66 = (v55 - 1) & 0x1F;
  *v53 = v66;
  v53[v66 + 16] = v50;
  v67 = *(a1 + 44);
  *(a1 + 44) = v67 + 1;
  *(v52 + 4 * v66) = v67;
  if (v64)
  {
    v68 = 0;
    v69 = a3 - 7;
    v70 = 3;
    while (1)
    {
      v71 = *(v148 + v68);
      v72 = (v11 + v71);
      if (*(v11 + v71 + v70) != *(a2 + v70))
      {
        goto LABEL_46;
      }

      if (v69 <= a2)
      {
        v75 = a2;
      }

      else
      {
        v73 = *v72;
        if (v73 != *a2)
        {
          v80 = __clz(__rbit64(*a2 ^ v73)) >> 3;
          goto LABEL_44;
        }

        v74 = 0;
        v72 = (v11 + 8 + v71);
        v75 = a2 + 4;
        while (v75 < v69)
        {
          v77 = *v72;
          v72 += 4;
          v76 = v77;
          v79 = *v75;
          v75 += 4;
          v78 = v79;
          v74 += 8;
          if (v76 != v79)
          {
            v80 = v74 + (__clz(__rbit64(v78 ^ v76)) >> 3);
            goto LABEL_44;
          }
        }
      }

      if (v75 < a3 - 3 && *v72 == *v75)
      {
        v72 += 2;
        v75 += 2;
      }

      if (v75 < a3 - 1 && *v72 == *v75)
      {
        ++v72;
        ++v75;
      }

      if (v75 < a3 && *v72 == *v75)
      {
        v75 = (v75 + 1);
      }

      v80 = v75 - a2;
LABEL_44:
      if (v80 > v70)
      {
        *a4 = v12 + 2 - v71;
        v70 = v80;
        if ((a2 + v80) == a3)
        {
          goto LABEL_49;
        }
      }

LABEL_46:
      ++v68;
      v80 = v70;
      if (v68 == v64)
      {
        goto LABEL_49;
      }
    }
  }

  v80 = 3;
LABEL_49:
  v146 = v11;
  v81 = 0;
  v82 = *v17;
  v83 = *(v17 + 8);
  v84 = *v17 - v83 - v147;
  v85 = (*(v17 + 96) + 4 * v65);
  do
  {
    _X11 = v83 + v85[v81];
    __asm { PRFM            #0, [X11] }

    ++v81;
  }

  while (v81 != 3);
  v88 = v85[3];
  _X27 = (*(v17 + 112) + 4 * (v88 >> 8));
  __asm { PRFM            #0, [X27] }

  LODWORD(v91) = v28 + v26;
  v92 = a3;
  v142 = v12;
  if (v91)
  {
    v140 = v85[3];
    v139 = v91;
    if (v91 >= 3)
    {
      v91 = 3;
    }

    else
    {
      v91 = v91;
    }

    v141 = *v17 - v83 - v147;
    v143 = v12 + v84 + 2;
    v138 = v91;
    v93 = v91;
    while (1)
    {
      v95 = *v85++;
      v94 = v95;
      if (!v95)
      {
        break;
      }

      if (*(v83 + v94) == *a2)
      {
        v96 = ZSTD_count_2segments(a2 + 2, (v83 + v94 + 4), a3, v82, (v146 + v147));
        a3 = v92;
        v97 = v96 + 4;
        if (v96 + 4 > v80)
        {
          *a4 = (v143 - v94);
          v80 = v96 + 4;
          if ((a2 + v97) == v92)
          {
            goto LABEL_76;
          }
        }
      }

      if (!--v93)
      {
        v84 = v141;
        LOBYTE(v88) = v140;
        LODWORD(v91) = v139;
        v98 = v138;
        goto LABEL_63;
      }
    }

LABEL_75:
    v97 = v80;
    goto LABEL_76;
  }

  v98 = 0;
LABEL_63:
  v99 = v91 - v98;
  if (v99 >= v88)
  {
    v100 = v88;
  }

  else
  {
    v100 = v99;
  }

  if (!v100)
  {
    goto LABEL_75;
  }

  v101 = 4 * v100;
  v102 = _X27;
  do
  {
    v103 = *v102++;
    _X10 = v83 + v103;
    __asm { PRFM            #0, [X10] }

    v101 -= 4;
  }

  while (v101);
  v106 = *a2;
  v144 = v142 + v84 + 2;
  v97 = v80;
  do
  {
    v108 = *_X27++;
    v107 = v108;
    v109 = v83 + v108;
    if (*v109 == v106)
    {
      v110 = ZSTD_count_2segments(a2 + 2, (v109 + 4), a3, v82, (v146 + v147));
      a3 = v92;
      if (v110 + 4 > v97)
      {
        *a4 = v144 - v107;
        v97 = v110 + 4;
        if ((a2 + v110 + 4) == v92)
        {
          break;
        }
      }
    }

    --v100;
  }

  while (v100);
LABEL_76:
  v111 = *MEMORY[0x1E69E9840];
  return v97;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v153 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v151 = *(a1 + 24);
  v14 = a2 - v11 - v13;
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v14 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  v17 = *(a1 + 232);
  v18 = v16 - 6;
  if (v16 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  v20 = (-1640531535 * *a2) >> (34 - *(v17 + 248));
  _X9 = *(v17 + 96) + 16 * v20;
  __asm { PRFM            #0, [X9] }

  v26 = 1 << v18;
  if (!(!_ZF & _CF))
  {
    v26 = 0;
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v115 = v27 + 96;
      do
      {
        v116 = (-1640531535 * *(v11 + 8 + v27)) >> (24 - v10);
        v117 = (v116 >> 2) & 0x3FFFFFC0;
        _X19 = v5 + 4 * v117;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v7 + 2 * v117;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x40]
        }

        v124 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v116;
        v125 = (v124 >> 2) & 0x3FFFFFC0;
        v126 = v5 + 4 * v125;
        v127 = (v7 + 2 * v125);
        v128 = (*v127 - 1) & 0x3F;
        *v127 = v128;
        v127[v128 + 16] = v124;
        *(v126 + 4 * v128) = v27++;
      }

      while (v115 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v129 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v130 = a2 + 1 - (v11 + v129);
    if ((v130 + 1) < 8)
    {
      v131 = v130 + 1;
    }

    else
    {
      v131 = 8;
    }

    if (a2 + 1 >= v11 + v129)
    {
      v132 = v131;
    }

    else
    {
      v132 = 0;
    }

    if (v129 < v132 + v129)
    {
      v133 = 24 - *(a1 + 52);
      do
      {
        v134 = (-1640531535 * *(v11 + v129)) >> v133;
        v135 = (v134 >> 2) & 0x3FFFFFC0;
        _X22 = v6 + 4 * v135;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v8 + 2 * v135;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x40]
        }

        *(v9 + 4 * (v129++ & 7)) = v134;
        --v132;
      }

      while (v132);
    }
  }

  v28 = 1 << v19;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 24 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (-1640531535 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 2) & 0x3FFFFFC0;
      _X20 = v6 + 4 * v32;
      __asm
      {
        PRFM            #0, [X20]
        PRFM            #0, [X20,#0x40]
      }

      _X19 = v8 + 2 * v32;
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0, [X19,#0x40]
      }

      v39 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v40 = (v39 >> 2) & 0x3FFFFFC0;
      v41 = v6 + 4 * v40;
      v42 = (v8 + 2 * v40);
      v43 = (*v42 - 1) & 0x3F;
      *v42 = v43;
      v42[v43 + 16] = v39;
      *(v41 + 4 * v43) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v44 = (-1640531535 * *(v11 + v12 + 8)) >> (24 - v10);
  v45 = (v44 >> 2) & 0x3FFFFFC0;
  _X1 = v5 + 4 * v45;
  __asm
  {
    PRFM            #0, [X1]
    PRFM            #0, [X1,#0x40]
  }

  _X16 = v7 + 2 * v45;
  __asm
  {
    PRFM            #0, [X16]
    PRFM            #0, [X16,#0x40]
  }

  v52 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v44;
  v53 = (v52 >> 2) & 0x3FFFFFC0;
  v54 = (v7 + 2 * v53);
  v55 = v54 + 16;
  v56 = *v54;
  v57 = v5 + 4 * v53;
  memset(v152, 0, sizeof(v152));
  v154 = vld4q_s8(v55);
  v58 = vdupq_n_s8(v52);
  v154.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v154.val[3], v58), vceqq_s8(v154.val[2], v58), 1uLL), vsriq_n_s8(vceqq_s8(v154.val[1], v58), vceqq_s8(v154.val[0], v58), 1uLL), 2uLL);
  v59 = vshrn_n_s16(vsriq_n_s8(v154.val[0], v154.val[0], 4uLL), 4uLL);
  v60 = v59;
  if (v59)
  {
    v61 = 0;
    v62 = __ROR8__(*&v59, v56);
    v63 = v28;
    while (1)
    {
      v64 = *(v57 + 4 * ((__clz(__rbit64(v62)) + v56) & 0x3F));
      if (v64 < v14)
      {
        break;
      }

      _X13 = v11 + v64;
      __asm { PRFM            #0, [X13] }

      v60 = (*&v61 + 1);
      *(v152 + *&v61) = v64;
      v28 = v63 - 1;
      v62 &= v62 - 1;
      if (v62)
      {
        ++*&v61;
        if (--v63)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v60 = v61;
    v28 = v63;
  }

LABEL_22:
  v67 = 4 * v20;
  v68 = (v56 - 1) & 0x3F;
  *v54 = v68;
  v54[v68 + 16] = v52;
  v69 = *(a1 + 44);
  *(a1 + 44) = v69 + 1;
  *(v57 + 4 * v68) = v69;
  if (v60)
  {
    v70 = 0;
    v71 = a3 - 7;
    v72 = 3;
    while (1)
    {
      v73 = *(v152 + v70);
      v74 = (v11 + v73);
      if (*(v11 + v73 + v72) != *(a2 + v72))
      {
        goto LABEL_45;
      }

      if (v71 <= a2)
      {
        v77 = a2;
      }

      else
      {
        v75 = *v74;
        if (v75 != *a2)
        {
          v82 = __clz(__rbit64(*a2 ^ v75)) >> 3;
          goto LABEL_43;
        }

        v76 = 0;
        v74 = (v11 + 8 + v73);
        v77 = a2 + 4;
        while (v77 < v71)
        {
          v79 = *v74;
          v74 += 4;
          v78 = v79;
          v81 = *v77;
          v77 += 4;
          v80 = v81;
          v76 += 8;
          if (v78 != v81)
          {
            v82 = v76 + (__clz(__rbit64(v80 ^ v78)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v77 < a3 - 3 && *v74 == *v77)
      {
        v74 += 2;
        v77 += 2;
      }

      if (v77 < a3 - 1 && *v74 == *v77)
      {
        ++v74;
        ++v77;
      }

      if (v77 < a3 && *v74 == *v77)
      {
        v77 = (v77 + 1);
      }

      v82 = v77 - a2;
LABEL_43:
      if (v82 > v72)
      {
        *a4 = v12 + 2 - v73;
        v72 = v82;
        if ((a2 + v82) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v70;
      v82 = v72;
      if (v70 == *&v60)
      {
        goto LABEL_48;
      }
    }
  }

  v82 = 3;
LABEL_48:
  v150 = v11;
  v83 = 0;
  v84 = *v17;
  v85 = *(v17 + 8);
  v86 = *v17 - v85 - v151;
  v87 = (*(v17 + 96) + 4 * v67);
  do
  {
    _X11 = v85 + v87[v83];
    __asm { PRFM            #0, [X11] }

    ++v83;
  }

  while (v83 != 3);
  v90 = v87[3];
  _X27 = (*(v17 + 112) + 4 * (v90 >> 8));
  __asm { PRFM            #0, [X27] }

  LODWORD(v93) = v28 + v26;
  v94 = a3;
  v146 = v12;
  if (v93)
  {
    v144 = v87[3];
    v143 = v93;
    if (v93 >= 3)
    {
      v93 = 3;
    }

    else
    {
      v93 = v93;
    }

    v145 = *v17 - v85 - v151;
    v147 = v12 + v86 + 2;
    v142 = v93;
    v95 = v93;
    while (1)
    {
      v97 = *v87++;
      v96 = v97;
      if (!v97)
      {
        break;
      }

      if (*(v85 + v96) == *a2)
      {
        v98 = ZSTD_count_2segments(a2 + 2, (v85 + v96 + 4), a3, v84, (v150 + v151));
        a3 = v94;
        v99 = v98 + 4;
        if (v98 + 4 > v82)
        {
          *a4 = (v147 - v96);
          v82 = v98 + 4;
          if ((a2 + v99) == v94)
          {
            goto LABEL_75;
          }
        }
      }

      if (!--v95)
      {
        v86 = v145;
        LOBYTE(v90) = v144;
        LODWORD(v93) = v143;
        v100 = v142;
        goto LABEL_62;
      }
    }

LABEL_74:
    v99 = v82;
    goto LABEL_75;
  }

  v100 = 0;
LABEL_62:
  v101 = v93 - v100;
  if (v101 >= v90)
  {
    v102 = v90;
  }

  else
  {
    v102 = v101;
  }

  if (!v102)
  {
    goto LABEL_74;
  }

  v103 = 4 * v102;
  v104 = _X27;
  do
  {
    v105 = *v104++;
    _X10 = v85 + v105;
    __asm { PRFM            #0, [X10] }

    v103 -= 4;
  }

  while (v103);
  v108 = *a2;
  v148 = v146 + v86 + 2;
  v99 = v82;
  do
  {
    v110 = *_X27++;
    v109 = v110;
    v111 = v85 + v110;
    if (*v111 == v108)
    {
      v112 = ZSTD_count_2segments(a2 + 2, (v111 + 4), a3, v84, (v150 + v151));
      a3 = v94;
      if (v112 + 4 > v99)
      {
        *a4 = v148 - v109;
        v99 = v112 + 4;
        if ((a2 + v112 + 4) == v94)
        {
          break;
        }
      }
    }

    --v102;
  }

  while (v102);
LABEL_75:
  v113 = *MEMORY[0x1E69E9840];
  return v99;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v143 = *(a1 + 24);
  v14 = a2 - v11 - v13;
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v14 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  v17 = *(a1 + 232);
  v18 = v16 - 4;
  if (v16 >= 4)
  {
    v19 = 4;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  v20 = (0xCF1BBCDCBB000000 * *a2) >> (66 - *(v17 + 248));
  _X9 = *(v17 + 96) + 16 * v20;
  __asm { PRFM            #0, [X9] }

  v26 = 1 << v18;
  if (!(!_ZF & _CF))
  {
    v26 = 0;
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v111 = v27 + 96;
      do
      {
        v112 = (0xCF1BBCDCBB000000 * *(v11 + 8 + v27)) >> (56 - v10);
        v113 = (v112 >> 4) & 0xFFFFFF0;
        _X19 = v5 + 4 * v113;
        __asm { PRFM            #0, [X19] }

        _X7 = v7 + 2 * v113;
        __asm { PRFM            #0, [X7] }

        v118 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v112;
        v119 = (v118 >> 4) & 0xFFFFFF0;
        v120 = v5 + 4 * v119;
        v121 = (v7 + 2 * v119);
        v122 = (*v121 - 1) & 0xF;
        *v121 = v122;
        v121[v122 + 16] = v118;
        *(v120 + 4 * v122) = v27++;
      }

      while (v111 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v123 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v124 = a2 + 1 - (v11 + v123);
    if ((v124 + 1) < 8)
    {
      v125 = v124 + 1;
    }

    else
    {
      v125 = 8;
    }

    if (a2 + 1 >= v11 + v123)
    {
      v126 = v125;
    }

    else
    {
      v126 = 0;
    }

    if (v123 < v126 + v123)
    {
      v127 = 56 - *(a1 + 52);
      do
      {
        v128 = (0xCF1BBCDCBB000000 * *(v11 + v123)) >> v127;
        v129 = (v128 >> 4) & 0xFFFFFF0;
        _X22 = v6 + 4 * v129;
        __asm { PRFM            #0, [X22] }

        _X20 = v8 + 2 * v129;
        __asm { PRFM            #0, [X20] }

        *(v9 + 4 * (v123++ & 7)) = v128;
        --v126;
      }

      while (v126);
    }
  }

  v28 = 1 << v19;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 56 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (0xCF1BBCDCBB000000 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 4) & 0xFFFFFF0;
      _X20 = v6 + 4 * v32;
      __asm { PRFM            #0, [X20] }

      _X19 = v8 + 2 * v32;
      __asm { PRFM            #0, [X19] }

      v37 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v38 = (v37 >> 4) & 0xFFFFFF0;
      v39 = v6 + 4 * v38;
      v40 = (v8 + 2 * v38);
      v41 = (*v40 - 1) & 0xF;
      *v40 = v41;
      v40[v41 + 16] = v37;
      *(v39 + 4 * v41) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v42 = (0xCF1BBCDCBB000000 * *(v11 + v12 + 8)) >> (56 - v10);
  v43 = (v42 >> 4) & 0xFFFFFF0;
  _X1 = v5 + 4 * v43;
  __asm { PRFM            #0, [X1] }

  _X16 = v7 + 2 * v43;
  __asm { PRFM            #0, [X16] }

  v48 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v42;
  v49 = (v48 >> 4) & 0xFFFFFF0;
  v50 = v5 + 4 * v49;
  v51 = (v7 + 2 * v49);
  v52 = v51->i8[0];
  memset(v144, 0, sizeof(v144));
  v53 = vshlq_n_s16(vceqq_s8(v51[1], vdupq_n_s8(v48)), 7uLL);
  v54 = vshrq_n_u32(vsriq_n_s16(v53, v53, 0xEuLL), 0xEuLL);
  v55 = vsraq_n_u64(v54, v54, 0x1CuLL);
  if (v55.u8[0] | (v55.u8[8] << 8))
  {
    v56 = 0;
    v57 = ((v55.u8[0] | (v55.u8[8] << 8)) >> (v52 & 0xF)) | ((v55.u8[0] | (v55.u8[8] << 8)) << (-v52 & 0xF));
    v58 = v28;
    while (1)
    {
      v59 = *(v50 + 4 * ((__clz(__rbit64(v57)) + v52) & 0xF));
      if (v59 < v14)
      {
        break;
      }

      _X13 = v11 + v59;
      __asm { PRFM            #0, [X13] }

      v62 = v56 + 1;
      *(v144 + v56) = v59;
      v28 = v58 - 1;
      v57 &= v57 - 1;
      if (v57)
      {
        ++v56;
        if (--v58)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    v62 = v56;
    v28 = v58;
  }

  else
  {
    v62 = 0;
  }

LABEL_23:
  v63 = 4 * v20;
  v64 = (v52 - 1) & 0xF;
  v51->i8[0] = v64;
  v51[1].i8[v64] = v48;
  v65 = *(a1 + 44);
  *(a1 + 44) = v65 + 1;
  *(v50 + 4 * v64) = v65;
  if (v62)
  {
    v66 = 0;
    v67 = a3 - 7;
    v68 = 3;
    while (1)
    {
      v69 = *(v144 + v66);
      v70 = (v11 + v69);
      if (*(v11 + v69 + v68) != *(a2 + v68))
      {
        goto LABEL_46;
      }

      if (v67 <= a2)
      {
        v73 = a2;
      }

      else
      {
        v71 = *v70;
        if (v71 != *a2)
        {
          v78 = __clz(__rbit64(*a2 ^ v71)) >> 3;
          goto LABEL_44;
        }

        v72 = 0;
        v70 = (v11 + 8 + v69);
        v73 = a2 + 4;
        while (v73 < v67)
        {
          v75 = *v70;
          v70 += 4;
          v74 = v75;
          v77 = *v73;
          v73 += 4;
          v76 = v77;
          v72 += 8;
          if (v74 != v77)
          {
            v78 = v72 + (__clz(__rbit64(v76 ^ v74)) >> 3);
            goto LABEL_44;
          }
        }
      }

      if (v73 < a3 - 3 && *v70 == *v73)
      {
        v70 += 2;
        v73 += 2;
      }

      if (v73 < a3 - 1 && *v70 == *v73)
      {
        ++v70;
        ++v73;
      }

      if (v73 < a3 && *v70 == *v73)
      {
        v73 = (v73 + 1);
      }

      v78 = v73 - a2;
LABEL_44:
      if (v78 > v68)
      {
        *a4 = v12 + 2 - v69;
        v68 = v78;
        if ((a2 + v78) == a3)
        {
          goto LABEL_49;
        }
      }

LABEL_46:
      ++v66;
      v78 = v68;
      if (v66 == v62)
      {
        goto LABEL_49;
      }
    }
  }

  v78 = 3;
LABEL_49:
  v142 = v11;
  v79 = 0;
  v80 = *v17;
  v81 = *(v17 + 8);
  v82 = *v17 - v81 - v143;
  v83 = (*(v17 + 96) + 4 * v63);
  do
  {
    _X11 = v81 + v83[v79];
    __asm { PRFM            #0, [X11] }

    ++v79;
  }

  while (v79 != 3);
  v86 = v83[3];
  _X27 = (*(v17 + 112) + 4 * (v86 >> 8));
  __asm { PRFM            #0, [X27] }

  LODWORD(v89) = v28 + v26;
  v90 = a3;
  v138 = v12;
  if (v89)
  {
    v136 = v83[3];
    v135 = v89;
    if (v89 >= 3)
    {
      v89 = 3;
    }

    else
    {
      v89 = v89;
    }

    v137 = *v17 - v81 - v143;
    v139 = v12 + v82 + 2;
    v134 = v89;
    v91 = v89;
    while (1)
    {
      v93 = *v83++;
      v92 = v93;
      if (!v93)
      {
        break;
      }

      if (*(v81 + v92) == *a2)
      {
        v94 = ZSTD_count_2segments(a2 + 2, (v81 + v92 + 4), a3, v80, (v142 + v143));
        a3 = v90;
        v95 = v94 + 4;
        if (v94 + 4 > v78)
        {
          *a4 = (v139 - v92);
          v78 = v94 + 4;
          if ((a2 + v95) == v90)
          {
            goto LABEL_76;
          }
        }
      }

      if (!--v91)
      {
        v82 = v137;
        LOBYTE(v86) = v136;
        LODWORD(v89) = v135;
        v96 = v134;
        goto LABEL_63;
      }
    }

LABEL_75:
    v95 = v78;
    goto LABEL_76;
  }

  v96 = 0;
LABEL_63:
  v97 = v89 - v96;
  if (v97 >= v86)
  {
    v98 = v86;
  }

  else
  {
    v98 = v97;
  }

  if (!v98)
  {
    goto LABEL_75;
  }

  v99 = 4 * v98;
  v100 = _X27;
  do
  {
    v101 = *v100++;
    _X10 = v81 + v101;
    __asm { PRFM            #0, [X10] }

    v99 -= 4;
  }

  while (v99);
  v104 = *a2;
  v140 = v138 + v82 + 2;
  v95 = v78;
  do
  {
    v106 = *_X27++;
    v105 = v106;
    v107 = v81 + v106;
    if (*v107 == v104)
    {
      v108 = ZSTD_count_2segments(a2 + 2, (v107 + 4), a3, v80, (v142 + v143));
      a3 = v90;
      if (v108 + 4 > v95)
      {
        *a4 = v140 - v105;
        v95 = v108 + 4;
        if ((a2 + v108 + 4) == v90)
        {
          break;
        }
      }
    }

    --v98;
  }

  while (v98);
LABEL_76:
  v109 = *MEMORY[0x1E69E9840];
  return v95;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v149 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v147 = *(a1 + 24);
  v14 = a2 - v11 - v13;
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v14 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  v17 = *(a1 + 232);
  v18 = v16 - 5;
  if (v16 >= 5)
  {
    v19 = 5;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  v20 = (0xCF1BBCDCBB000000 * *a2) >> (66 - *(v17 + 248));
  _X9 = *(v17 + 96) + 16 * v20;
  __asm { PRFM            #0, [X9] }

  v26 = 1 << v18;
  if (!(!_ZF & _CF))
  {
    v26 = 0;
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v113 = v27 + 96;
      do
      {
        v114 = (0xCF1BBCDCBB000000 * *(v11 + 8 + v27)) >> (56 - v10);
        v115 = (v114 >> 3) & 0x1FFFFFE0;
        _X19 = v5 + 4 * v115;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v7 + 2 * v115;
        __asm { PRFM            #0, [X7] }

        v121 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v114;
        v122 = (v121 >> 3) & 0x1FFFFFE0;
        v123 = v5 + 4 * v122;
        v124 = (v7 + 2 * v122);
        v125 = (*v124 - 1) & 0x1F;
        *v124 = v125;
        v124[v125 + 16] = v121;
        *(v123 + 4 * v125) = v27++;
      }

      while (v113 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v126 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v127 = a2 + 1 - (v11 + v126);
    if ((v127 + 1) < 8)
    {
      v128 = v127 + 1;
    }

    else
    {
      v128 = 8;
    }

    if (a2 + 1 >= v11 + v126)
    {
      v129 = v128;
    }

    else
    {
      v129 = 0;
    }

    if (v126 < v129 + v126)
    {
      v130 = 56 - *(a1 + 52);
      do
      {
        v131 = (0xCF1BBCDCBB000000 * *(v11 + v126)) >> v130;
        v132 = (v131 >> 3) & 0x1FFFFFE0;
        _X22 = v6 + 4 * v132;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v8 + 2 * v132;
        __asm { PRFM            #0, [X20] }

        *(v9 + 4 * (v126++ & 7)) = v131;
        --v129;
      }

      while (v129);
    }
  }

  v28 = 1 << v19;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 56 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (0xCF1BBCDCBB000000 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 3) & 0x1FFFFFE0;
      _X20 = v6 + 4 * v32;
      __asm
      {
        PRFM            #0, [X20]
        PRFM            #0, [X20,#0x40]
      }

      _X19 = v8 + 2 * v32;
      __asm { PRFM            #0, [X19] }

      v38 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v39 = (v38 >> 3) & 0x1FFFFFE0;
      v40 = v6 + 4 * v39;
      v41 = (v8 + 2 * v39);
      v42 = (*v41 - 1) & 0x1F;
      *v41 = v42;
      v41[v42 + 16] = v38;
      *(v40 + 4 * v42) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v43 = (0xCF1BBCDCBB000000 * *(v11 + v12 + 8)) >> (56 - v10);
  v44 = (v43 >> 3) & 0x1FFFFFE0;
  _X1 = v5 + 4 * v44;
  __asm
  {
    PRFM            #0, [X1]
    PRFM            #0, [X1,#0x40]
  }

  _X16 = v7 + 2 * v44;
  __asm { PRFM            #0, [X16] }

  v50 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v43;
  v51 = (v50 >> 3) & 0x1FFFFFE0;
  v52 = v5 + 4 * v51;
  v53 = (v7 + 2 * v51);
  v54 = (v53 + 16);
  v55 = *v53;
  v150 = vld2q_s16(v54);
  memset(v148, 0, sizeof(v148));
  v56 = vdupq_n_s8(v50);
  *v150.val[0].i8 = vqmovn_s16(vceqq_s8(v56, v150.val[0]));
  *v56.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v56, v150.val[1])), *v150.val[0].i8, 2uLL);
  v57 = vsri_n_s8(vuzp2_s8(*v56.i8, *v150.val[0].i8), vuzp1_s8(*v56.i8, *v150.val[0].i8), 4uLL).u32[0];
  if (v57)
  {
    v58 = 0;
    v59 = __ROR4__(v57, v55);
    v60 = v28;
    while (1)
    {
      v61 = *(v52 + 4 * ((__clz(__rbit64(v59)) + v55) & 0x1F));
      if (v61 < v14)
      {
        break;
      }

      _X13 = v11 + v61;
      __asm { PRFM            #0, [X13] }

      v64 = v58 + 1;
      *(v148 + v58) = v61;
      v28 = v60 - 1;
      v59 &= v59 - 1;
      if (v59)
      {
        ++v58;
        if (--v60)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    v64 = v58;
    v28 = v60;
  }

  else
  {
    v64 = 0;
  }

LABEL_23:
  v65 = 4 * v20;
  v66 = (v55 - 1) & 0x1F;
  *v53 = v66;
  v53[v66 + 16] = v50;
  v67 = *(a1 + 44);
  *(a1 + 44) = v67 + 1;
  *(v52 + 4 * v66) = v67;
  if (v64)
  {
    v68 = 0;
    v69 = a3 - 7;
    v70 = 3;
    while (1)
    {
      v71 = *(v148 + v68);
      v72 = (v11 + v71);
      if (*(v11 + v71 + v70) != *(a2 + v70))
      {
        goto LABEL_46;
      }

      if (v69 <= a2)
      {
        v75 = a2;
      }

      else
      {
        v73 = *v72;
        if (v73 != *a2)
        {
          v80 = __clz(__rbit64(*a2 ^ v73)) >> 3;
          goto LABEL_44;
        }

        v74 = 0;
        v72 = (v11 + 8 + v71);
        v75 = a2 + 4;
        while (v75 < v69)
        {
          v77 = *v72;
          v72 += 4;
          v76 = v77;
          v79 = *v75;
          v75 += 4;
          v78 = v79;
          v74 += 8;
          if (v76 != v79)
          {
            v80 = v74 + (__clz(__rbit64(v78 ^ v76)) >> 3);
            goto LABEL_44;
          }
        }
      }

      if (v75 < a3 - 3 && *v72 == *v75)
      {
        v72 += 2;
        v75 += 2;
      }

      if (v75 < a3 - 1 && *v72 == *v75)
      {
        ++v72;
        ++v75;
      }

      if (v75 < a3 && *v72 == *v75)
      {
        v75 = (v75 + 1);
      }

      v80 = v75 - a2;
LABEL_44:
      if (v80 > v70)
      {
        *a4 = v12 + 2 - v71;
        v70 = v80;
        if ((a2 + v80) == a3)
        {
          goto LABEL_49;
        }
      }

LABEL_46:
      ++v68;
      v80 = v70;
      if (v68 == v64)
      {
        goto LABEL_49;
      }
    }
  }

  v80 = 3;
LABEL_49:
  v146 = v11;
  v81 = 0;
  v82 = *v17;
  v83 = *(v17 + 8);
  v84 = *v17 - v83 - v147;
  v85 = (*(v17 + 96) + 4 * v65);
  do
  {
    _X11 = v83 + v85[v81];
    __asm { PRFM            #0, [X11] }

    ++v81;
  }

  while (v81 != 3);
  v88 = v85[3];
  _X27 = (*(v17 + 112) + 4 * (v88 >> 8));
  __asm { PRFM            #0, [X27] }

  LODWORD(v91) = v28 + v26;
  v92 = a3;
  v142 = v12;
  if (v91)
  {
    v140 = v85[3];
    v139 = v91;
    if (v91 >= 3)
    {
      v91 = 3;
    }

    else
    {
      v91 = v91;
    }

    v141 = *v17 - v83 - v147;
    v143 = v12 + v84 + 2;
    v138 = v91;
    v93 = v91;
    while (1)
    {
      v95 = *v85++;
      v94 = v95;
      if (!v95)
      {
        break;
      }

      if (*(v83 + v94) == *a2)
      {
        v96 = ZSTD_count_2segments(a2 + 2, (v83 + v94 + 4), a3, v82, (v146 + v147));
        a3 = v92;
        v97 = v96 + 4;
        if (v96 + 4 > v80)
        {
          *a4 = (v143 - v94);
          v80 = v96 + 4;
          if ((a2 + v97) == v92)
          {
            goto LABEL_76;
          }
        }
      }

      if (!--v93)
      {
        v84 = v141;
        LOBYTE(v88) = v140;
        LODWORD(v91) = v139;
        v98 = v138;
        goto LABEL_63;
      }
    }

LABEL_75:
    v97 = v80;
    goto LABEL_76;
  }

  v98 = 0;
LABEL_63:
  v99 = v91 - v98;
  if (v99 >= v88)
  {
    v100 = v88;
  }

  else
  {
    v100 = v99;
  }

  if (!v100)
  {
    goto LABEL_75;
  }

  v101 = 4 * v100;
  v102 = _X27;
  do
  {
    v103 = *v102++;
    _X10 = v83 + v103;
    __asm { PRFM            #0, [X10] }

    v101 -= 4;
  }

  while (v101);
  v106 = *a2;
  v144 = v142 + v84 + 2;
  v97 = v80;
  do
  {
    v108 = *_X27++;
    v107 = v108;
    v109 = v83 + v108;
    if (*v109 == v106)
    {
      v110 = ZSTD_count_2segments(a2 + 2, (v109 + 4), a3, v82, (v146 + v147));
      a3 = v92;
      if (v110 + 4 > v97)
      {
        *a4 = v144 - v107;
        v97 = v110 + 4;
        if ((a2 + v110 + 4) == v92)
        {
          break;
        }
      }
    }

    --v100;
  }

  while (v100);
LABEL_76:
  v111 = *MEMORY[0x1E69E9840];
  return v97;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v153 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v151 = *(a1 + 24);
  v14 = a2 - v11 - v13;
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v14 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  v17 = *(a1 + 232);
  v18 = v16 - 6;
  if (v16 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  v20 = (0xCF1BBCDCBB000000 * *a2) >> (66 - *(v17 + 248));
  _X9 = *(v17 + 96) + 16 * v20;
  __asm { PRFM            #0, [X9] }

  v26 = 1 << v18;
  if (!(!_ZF & _CF))
  {
    v26 = 0;
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v115 = v27 + 96;
      do
      {
        v116 = (0xCF1BBCDCBB000000 * *(v11 + 8 + v27)) >> (56 - v10);
        v117 = (v116 >> 2) & 0x3FFFFFC0;
        _X19 = v5 + 4 * v117;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v7 + 2 * v117;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x40]
        }

        v124 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v116;
        v125 = (v124 >> 2) & 0x3FFFFFC0;
        v126 = v5 + 4 * v125;
        v127 = (v7 + 2 * v125);
        v128 = (*v127 - 1) & 0x3F;
        *v127 = v128;
        v127[v128 + 16] = v124;
        *(v126 + 4 * v128) = v27++;
      }

      while (v115 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v129 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v130 = a2 + 1 - (v11 + v129);
    if ((v130 + 1) < 8)
    {
      v131 = v130 + 1;
    }

    else
    {
      v131 = 8;
    }

    if (a2 + 1 >= v11 + v129)
    {
      v132 = v131;
    }

    else
    {
      v132 = 0;
    }

    if (v129 < v132 + v129)
    {
      v133 = 56 - *(a1 + 52);
      do
      {
        v134 = (0xCF1BBCDCBB000000 * *(v11 + v129)) >> v133;
        v135 = (v134 >> 2) & 0x3FFFFFC0;
        _X22 = v6 + 4 * v135;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v8 + 2 * v135;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x40]
        }

        *(v9 + 4 * (v129++ & 7)) = v134;
        --v132;
      }

      while (v132);
    }
  }

  v28 = 1 << v19;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 56 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (0xCF1BBCDCBB000000 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 2) & 0x3FFFFFC0;
      _X20 = v6 + 4 * v32;
      __asm
      {
        PRFM            #0, [X20]
        PRFM            #0, [X20,#0x40]
      }

      _X19 = v8 + 2 * v32;
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0, [X19,#0x40]
      }

      v39 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v40 = (v39 >> 2) & 0x3FFFFFC0;
      v41 = v6 + 4 * v40;
      v42 = (v8 + 2 * v40);
      v43 = (*v42 - 1) & 0x3F;
      *v42 = v43;
      v42[v43 + 16] = v39;
      *(v41 + 4 * v43) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v44 = (0xCF1BBCDCBB000000 * *(v11 + v12 + 8)) >> (56 - v10);
  v45 = (v44 >> 2) & 0x3FFFFFC0;
  _X1 = v5 + 4 * v45;
  __asm
  {
    PRFM            #0, [X1]
    PRFM            #0, [X1,#0x40]
  }

  _X16 = v7 + 2 * v45;
  __asm
  {
    PRFM            #0, [X16]
    PRFM            #0, [X16,#0x40]
  }

  v52 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v44;
  v53 = (v52 >> 2) & 0x3FFFFFC0;
  v54 = (v7 + 2 * v53);
  v55 = v54 + 16;
  v56 = *v54;
  v57 = v5 + 4 * v53;
  memset(v152, 0, sizeof(v152));
  v154 = vld4q_s8(v55);
  v58 = vdupq_n_s8(v52);
  v154.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v154.val[3], v58), vceqq_s8(v154.val[2], v58), 1uLL), vsriq_n_s8(vceqq_s8(v154.val[1], v58), vceqq_s8(v154.val[0], v58), 1uLL), 2uLL);
  v59 = vshrn_n_s16(vsriq_n_s8(v154.val[0], v154.val[0], 4uLL), 4uLL);
  v60 = v59;
  if (v59)
  {
    v61 = 0;
    v62 = __ROR8__(*&v59, v56);
    v63 = v28;
    while (1)
    {
      v64 = *(v57 + 4 * ((__clz(__rbit64(v62)) + v56) & 0x3F));
      if (v64 < v14)
      {
        break;
      }

      _X13 = v11 + v64;
      __asm { PRFM            #0, [X13] }

      v60 = (*&v61 + 1);
      *(v152 + *&v61) = v64;
      v28 = v63 - 1;
      v62 &= v62 - 1;
      if (v62)
      {
        ++*&v61;
        if (--v63)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v60 = v61;
    v28 = v63;
  }

LABEL_22:
  v67 = 4 * v20;
  v68 = (v56 - 1) & 0x3F;
  *v54 = v68;
  v54[v68 + 16] = v52;
  v69 = *(a1 + 44);
  *(a1 + 44) = v69 + 1;
  *(v57 + 4 * v68) = v69;
  if (v60)
  {
    v70 = 0;
    v71 = a3 - 7;
    v72 = 3;
    while (1)
    {
      v73 = *(v152 + v70);
      v74 = (v11 + v73);
      if (*(v11 + v73 + v72) != *(a2 + v72))
      {
        goto LABEL_45;
      }

      if (v71 <= a2)
      {
        v77 = a2;
      }

      else
      {
        v75 = *v74;
        if (v75 != *a2)
        {
          v82 = __clz(__rbit64(*a2 ^ v75)) >> 3;
          goto LABEL_43;
        }

        v76 = 0;
        v74 = (v11 + 8 + v73);
        v77 = a2 + 4;
        while (v77 < v71)
        {
          v79 = *v74;
          v74 += 4;
          v78 = v79;
          v81 = *v77;
          v77 += 4;
          v80 = v81;
          v76 += 8;
          if (v78 != v81)
          {
            v82 = v76 + (__clz(__rbit64(v80 ^ v78)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v77 < a3 - 3 && *v74 == *v77)
      {
        v74 += 2;
        v77 += 2;
      }

      if (v77 < a3 - 1 && *v74 == *v77)
      {
        ++v74;
        ++v77;
      }

      if (v77 < a3 && *v74 == *v77)
      {
        v77 = (v77 + 1);
      }

      v82 = v77 - a2;
LABEL_43:
      if (v82 > v72)
      {
        *a4 = v12 + 2 - v73;
        v72 = v82;
        if ((a2 + v82) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v70;
      v82 = v72;
      if (v70 == *&v60)
      {
        goto LABEL_48;
      }
    }
  }

  v82 = 3;
LABEL_48:
  v150 = v11;
  v83 = 0;
  v84 = *v17;
  v85 = *(v17 + 8);
  v86 = *v17 - v85 - v151;
  v87 = (*(v17 + 96) + 4 * v67);
  do
  {
    _X11 = v85 + v87[v83];
    __asm { PRFM            #0, [X11] }

    ++v83;
  }

  while (v83 != 3);
  v90 = v87[3];
  _X27 = (*(v17 + 112) + 4 * (v90 >> 8));
  __asm { PRFM            #0, [X27] }

  LODWORD(v93) = v28 + v26;
  v94 = a3;
  v146 = v12;
  if (v93)
  {
    v144 = v87[3];
    v143 = v93;
    if (v93 >= 3)
    {
      v93 = 3;
    }

    else
    {
      v93 = v93;
    }

    v145 = *v17 - v85 - v151;
    v147 = v12 + v86 + 2;
    v142 = v93;
    v95 = v93;
    while (1)
    {
      v97 = *v87++;
      v96 = v97;
      if (!v97)
      {
        break;
      }

      if (*(v85 + v96) == *a2)
      {
        v98 = ZSTD_count_2segments(a2 + 2, (v85 + v96 + 4), a3, v84, (v150 + v151));
        a3 = v94;
        v99 = v98 + 4;
        if (v98 + 4 > v82)
        {
          *a4 = (v147 - v96);
          v82 = v98 + 4;
          if ((a2 + v99) == v94)
          {
            goto LABEL_75;
          }
        }
      }

      if (!--v95)
      {
        v86 = v145;
        LOBYTE(v90) = v144;
        LODWORD(v93) = v143;
        v100 = v142;
        goto LABEL_62;
      }
    }

LABEL_74:
    v99 = v82;
    goto LABEL_75;
  }

  v100 = 0;
LABEL_62:
  v101 = v93 - v100;
  if (v101 >= v90)
  {
    v102 = v90;
  }

  else
  {
    v102 = v101;
  }

  if (!v102)
  {
    goto LABEL_74;
  }

  v103 = 4 * v102;
  v104 = _X27;
  do
  {
    v105 = *v104++;
    _X10 = v85 + v105;
    __asm { PRFM            #0, [X10] }

    v103 -= 4;
  }

  while (v103);
  v108 = *a2;
  v148 = v146 + v86 + 2;
  v99 = v82;
  do
  {
    v110 = *_X27++;
    v109 = v110;
    v111 = v85 + v110;
    if (*v111 == v108)
    {
      v112 = ZSTD_count_2segments(a2 + 2, (v111 + 4), a3, v84, (v150 + v151));
      a3 = v94;
      if (v112 + 4 > v99)
      {
        *a4 = v148 - v109;
        v99 = v112 + 4;
        if ((a2 + v112 + 4) == v94)
        {
          break;
        }
      }
    }

    --v102;
  }

  while (v102);
LABEL_75:
  v113 = *MEMORY[0x1E69E9840];
  return v99;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v143 = *(a1 + 24);
  v14 = a2 - v11 - v13;
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v14 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  v17 = *(a1 + 232);
  v18 = v16 - 4;
  if (v16 >= 4)
  {
    v19 = 4;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  v20 = (0xCF1BBCDCBF9B0000 * *a2) >> (66 - *(v17 + 248));
  _X9 = *(v17 + 96) + 16 * v20;
  __asm { PRFM            #0, [X9] }

  v26 = 1 << v18;
  if (!(!_ZF & _CF))
  {
    v26 = 0;
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v111 = v27 + 96;
      do
      {
        v112 = (0xCF1BBCDCBF9B0000 * *(v11 + 8 + v27)) >> (56 - v10);
        v113 = (v112 >> 4) & 0xFFFFFF0;
        _X19 = v5 + 4 * v113;
        __asm { PRFM            #0, [X19] }

        _X7 = v7 + 2 * v113;
        __asm { PRFM            #0, [X7] }

        v118 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v112;
        v119 = (v118 >> 4) & 0xFFFFFF0;
        v120 = v5 + 4 * v119;
        v121 = (v7 + 2 * v119);
        v122 = (*v121 - 1) & 0xF;
        *v121 = v122;
        v121[v122 + 16] = v118;
        *(v120 + 4 * v122) = v27++;
      }

      while (v111 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v123 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v124 = a2 + 1 - (v11 + v123);
    if ((v124 + 1) < 8)
    {
      v125 = v124 + 1;
    }

    else
    {
      v125 = 8;
    }

    if (a2 + 1 >= v11 + v123)
    {
      v126 = v125;
    }

    else
    {
      v126 = 0;
    }

    if (v123 < v126 + v123)
    {
      v127 = 56 - *(a1 + 52);
      do
      {
        v128 = (0xCF1BBCDCBF9B0000 * *(v11 + v123)) >> v127;
        v129 = (v128 >> 4) & 0xFFFFFF0;
        _X22 = v6 + 4 * v129;
        __asm { PRFM            #0, [X22] }

        _X20 = v8 + 2 * v129;
        __asm { PRFM            #0, [X20] }

        *(v9 + 4 * (v123++ & 7)) = v128;
        --v126;
      }

      while (v126);
    }
  }

  v28 = 1 << v19;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 56 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (0xCF1BBCDCBF9B0000 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 4) & 0xFFFFFF0;
      _X20 = v6 + 4 * v32;
      __asm { PRFM            #0, [X20] }

      _X19 = v8 + 2 * v32;
      __asm { PRFM            #0, [X19] }

      v37 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v38 = (v37 >> 4) & 0xFFFFFF0;
      v39 = v6 + 4 * v38;
      v40 = (v8 + 2 * v38);
      v41 = (*v40 - 1) & 0xF;
      *v40 = v41;
      v40[v41 + 16] = v37;
      *(v39 + 4 * v41) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v42 = (0xCF1BBCDCBF9B0000 * *(v11 + v12 + 8)) >> (56 - v10);
  v43 = (v42 >> 4) & 0xFFFFFF0;
  _X1 = v5 + 4 * v43;
  __asm { PRFM            #0, [X1] }

  _X16 = v7 + 2 * v43;
  __asm { PRFM            #0, [X16] }

  v48 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v42;
  v49 = (v48 >> 4) & 0xFFFFFF0;
  v50 = v5 + 4 * v49;
  v51 = (v7 + 2 * v49);
  v52 = v51->i8[0];
  memset(v144, 0, sizeof(v144));
  v53 = vshlq_n_s16(vceqq_s8(v51[1], vdupq_n_s8(v48)), 7uLL);
  v54 = vshrq_n_u32(vsriq_n_s16(v53, v53, 0xEuLL), 0xEuLL);
  v55 = vsraq_n_u64(v54, v54, 0x1CuLL);
  if (v55.u8[0] | (v55.u8[8] << 8))
  {
    v56 = 0;
    v57 = ((v55.u8[0] | (v55.u8[8] << 8)) >> (v52 & 0xF)) | ((v55.u8[0] | (v55.u8[8] << 8)) << (-v52 & 0xF));
    v58 = v28;
    while (1)
    {
      v59 = *(v50 + 4 * ((__clz(__rbit64(v57)) + v52) & 0xF));
      if (v59 < v14)
      {
        break;
      }

      _X13 = v11 + v59;
      __asm { PRFM            #0, [X13] }

      v62 = v56 + 1;
      *(v144 + v56) = v59;
      v28 = v58 - 1;
      v57 &= v57 - 1;
      if (v57)
      {
        ++v56;
        if (--v58)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    v62 = v56;
    v28 = v58;
  }

  else
  {
    v62 = 0;
  }

LABEL_23:
  v63 = 4 * v20;
  v64 = (v52 - 1) & 0xF;
  v51->i8[0] = v64;
  v51[1].i8[v64] = v48;
  v65 = *(a1 + 44);
  *(a1 + 44) = v65 + 1;
  *(v50 + 4 * v64) = v65;
  if (v62)
  {
    v66 = 0;
    v67 = a3 - 7;
    v68 = 3;
    while (1)
    {
      v69 = *(v144 + v66);
      v70 = (v11 + v69);
      if (*(v11 + v69 + v68) != *(a2 + v68))
      {
        goto LABEL_46;
      }

      if (v67 <= a2)
      {
        v73 = a2;
      }

      else
      {
        v71 = *v70;
        if (v71 != *a2)
        {
          v78 = __clz(__rbit64(*a2 ^ v71)) >> 3;
          goto LABEL_44;
        }

        v72 = 0;
        v70 = (v11 + 8 + v69);
        v73 = a2 + 4;
        while (v73 < v67)
        {
          v75 = *v70;
          v70 += 4;
          v74 = v75;
          v77 = *v73;
          v73 += 4;
          v76 = v77;
          v72 += 8;
          if (v74 != v77)
          {
            v78 = v72 + (__clz(__rbit64(v76 ^ v74)) >> 3);
            goto LABEL_44;
          }
        }
      }

      if (v73 < a3 - 3 && *v70 == *v73)
      {
        v70 += 2;
        v73 += 2;
      }

      if (v73 < a3 - 1 && *v70 == *v73)
      {
        ++v70;
        ++v73;
      }

      if (v73 < a3 && *v70 == *v73)
      {
        v73 = (v73 + 1);
      }

      v78 = v73 - a2;
LABEL_44:
      if (v78 > v68)
      {
        *a4 = v12 + 2 - v69;
        v68 = v78;
        if ((a2 + v78) == a3)
        {
          goto LABEL_49;
        }
      }

LABEL_46:
      ++v66;
      v78 = v68;
      if (v66 == v62)
      {
        goto LABEL_49;
      }
    }
  }

  v78 = 3;
LABEL_49:
  v142 = v11;
  v79 = 0;
  v80 = *v17;
  v81 = *(v17 + 8);
  v82 = *v17 - v81 - v143;
  v83 = (*(v17 + 96) + 4 * v63);
  do
  {
    _X11 = v81 + v83[v79];
    __asm { PRFM            #0, [X11] }

    ++v79;
  }

  while (v79 != 3);
  v86 = v83[3];
  _X27 = (*(v17 + 112) + 4 * (v86 >> 8));
  __asm { PRFM            #0, [X27] }

  LODWORD(v89) = v28 + v26;
  v90 = a3;
  v138 = v12;
  if (v89)
  {
    v136 = v83[3];
    v135 = v89;
    if (v89 >= 3)
    {
      v89 = 3;
    }

    else
    {
      v89 = v89;
    }

    v137 = *v17 - v81 - v143;
    v139 = v12 + v82 + 2;
    v134 = v89;
    v91 = v89;
    while (1)
    {
      v93 = *v83++;
      v92 = v93;
      if (!v93)
      {
        break;
      }

      if (*(v81 + v92) == *a2)
      {
        v94 = ZSTD_count_2segments(a2 + 2, (v81 + v92 + 4), a3, v80, (v142 + v143));
        a3 = v90;
        v95 = v94 + 4;
        if (v94 + 4 > v78)
        {
          *a4 = (v139 - v92);
          v78 = v94 + 4;
          if ((a2 + v95) == v90)
          {
            goto LABEL_76;
          }
        }
      }

      if (!--v91)
      {
        v82 = v137;
        LOBYTE(v86) = v136;
        LODWORD(v89) = v135;
        v96 = v134;
        goto LABEL_63;
      }
    }

LABEL_75:
    v95 = v78;
    goto LABEL_76;
  }

  v96 = 0;
LABEL_63:
  v97 = v89 - v96;
  if (v97 >= v86)
  {
    v98 = v86;
  }

  else
  {
    v98 = v97;
  }

  if (!v98)
  {
    goto LABEL_75;
  }

  v99 = 4 * v98;
  v100 = _X27;
  do
  {
    v101 = *v100++;
    _X10 = v81 + v101;
    __asm { PRFM            #0, [X10] }

    v99 -= 4;
  }

  while (v99);
  v104 = *a2;
  v140 = v138 + v82 + 2;
  v95 = v78;
  do
  {
    v106 = *_X27++;
    v105 = v106;
    v107 = v81 + v106;
    if (*v107 == v104)
    {
      v108 = ZSTD_count_2segments(a2 + 2, (v107 + 4), a3, v80, (v142 + v143));
      a3 = v90;
      if (v108 + 4 > v95)
      {
        *a4 = v140 - v105;
        v95 = v108 + 4;
        if ((a2 + v108 + 4) == v90)
        {
          break;
        }
      }
    }

    --v98;
  }

  while (v98);
LABEL_76:
  v109 = *MEMORY[0x1E69E9840];
  return v95;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v149 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v147 = *(a1 + 24);
  v14 = a2 - v11 - v13;
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v14 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  v17 = *(a1 + 232);
  v18 = v16 - 5;
  if (v16 >= 5)
  {
    v19 = 5;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  v20 = (0xCF1BBCDCBF9B0000 * *a2) >> (66 - *(v17 + 248));
  _X9 = *(v17 + 96) + 16 * v20;
  __asm { PRFM            #0, [X9] }

  v26 = 1 << v18;
  if (!(!_ZF & _CF))
  {
    v26 = 0;
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v113 = v27 + 96;
      do
      {
        v114 = (0xCF1BBCDCBF9B0000 * *(v11 + 8 + v27)) >> (56 - v10);
        v115 = (v114 >> 3) & 0x1FFFFFE0;
        _X19 = v5 + 4 * v115;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v7 + 2 * v115;
        __asm { PRFM            #0, [X7] }

        v121 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v114;
        v122 = (v121 >> 3) & 0x1FFFFFE0;
        v123 = v5 + 4 * v122;
        v124 = (v7 + 2 * v122);
        v125 = (*v124 - 1) & 0x1F;
        *v124 = v125;
        v124[v125 + 16] = v121;
        *(v123 + 4 * v125) = v27++;
      }

      while (v113 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v126 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v127 = a2 + 1 - (v11 + v126);
    if ((v127 + 1) < 8)
    {
      v128 = v127 + 1;
    }

    else
    {
      v128 = 8;
    }

    if (a2 + 1 >= v11 + v126)
    {
      v129 = v128;
    }

    else
    {
      v129 = 0;
    }

    if (v126 < v129 + v126)
    {
      v130 = 56 - *(a1 + 52);
      do
      {
        v131 = (0xCF1BBCDCBF9B0000 * *(v11 + v126)) >> v130;
        v132 = (v131 >> 3) & 0x1FFFFFE0;
        _X22 = v6 + 4 * v132;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v8 + 2 * v132;
        __asm { PRFM            #0, [X20] }

        *(v9 + 4 * (v126++ & 7)) = v131;
        --v129;
      }

      while (v129);
    }
  }

  v28 = 1 << v19;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 56 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (0xCF1BBCDCBF9B0000 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 3) & 0x1FFFFFE0;
      _X20 = v6 + 4 * v32;
      __asm
      {
        PRFM            #0, [X20]
        PRFM            #0, [X20,#0x40]
      }

      _X19 = v8 + 2 * v32;
      __asm { PRFM            #0, [X19] }

      v38 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v39 = (v38 >> 3) & 0x1FFFFFE0;
      v40 = v6 + 4 * v39;
      v41 = (v8 + 2 * v39);
      v42 = (*v41 - 1) & 0x1F;
      *v41 = v42;
      v41[v42 + 16] = v38;
      *(v40 + 4 * v42) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v43 = (0xCF1BBCDCBF9B0000 * *(v11 + v12 + 8)) >> (56 - v10);
  v44 = (v43 >> 3) & 0x1FFFFFE0;
  _X1 = v5 + 4 * v44;
  __asm
  {
    PRFM            #0, [X1]
    PRFM            #0, [X1,#0x40]
  }

  _X16 = v7 + 2 * v44;
  __asm { PRFM            #0, [X16] }

  v50 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v43;
  v51 = (v50 >> 3) & 0x1FFFFFE0;
  v52 = v5 + 4 * v51;
  v53 = (v7 + 2 * v51);
  v54 = (v53 + 16);
  v55 = *v53;
  v150 = vld2q_s16(v54);
  memset(v148, 0, sizeof(v148));
  v56 = vdupq_n_s8(v50);
  *v150.val[0].i8 = vqmovn_s16(vceqq_s8(v56, v150.val[0]));
  *v56.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v56, v150.val[1])), *v150.val[0].i8, 2uLL);
  v57 = vsri_n_s8(vuzp2_s8(*v56.i8, *v150.val[0].i8), vuzp1_s8(*v56.i8, *v150.val[0].i8), 4uLL).u32[0];
  if (v57)
  {
    v58 = 0;
    v59 = __ROR4__(v57, v55);
    v60 = v28;
    while (1)
    {
      v61 = *(v52 + 4 * ((__clz(__rbit64(v59)) + v55) & 0x1F));
      if (v61 < v14)
      {
        break;
      }

      _X13 = v11 + v61;
      __asm { PRFM            #0, [X13] }

      v64 = v58 + 1;
      *(v148 + v58) = v61;
      v28 = v60 - 1;
      v59 &= v59 - 1;
      if (v59)
      {
        ++v58;
        if (--v60)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    v64 = v58;
    v28 = v60;
  }

  else
  {
    v64 = 0;
  }

LABEL_23:
  v65 = 4 * v20;
  v66 = (v55 - 1) & 0x1F;
  *v53 = v66;
  v53[v66 + 16] = v50;
  v67 = *(a1 + 44);
  *(a1 + 44) = v67 + 1;
  *(v52 + 4 * v66) = v67;
  if (v64)
  {
    v68 = 0;
    v69 = a3 - 7;
    v70 = 3;
    while (1)
    {
      v71 = *(v148 + v68);
      v72 = (v11 + v71);
      if (*(v11 + v71 + v70) != *(a2 + v70))
      {
        goto LABEL_46;
      }

      if (v69 <= a2)
      {
        v75 = a2;
      }

      else
      {
        v73 = *v72;
        if (v73 != *a2)
        {
          v80 = __clz(__rbit64(*a2 ^ v73)) >> 3;
          goto LABEL_44;
        }

        v74 = 0;
        v72 = (v11 + 8 + v71);
        v75 = a2 + 4;
        while (v75 < v69)
        {
          v77 = *v72;
          v72 += 4;
          v76 = v77;
          v79 = *v75;
          v75 += 4;
          v78 = v79;
          v74 += 8;
          if (v76 != v79)
          {
            v80 = v74 + (__clz(__rbit64(v78 ^ v76)) >> 3);
            goto LABEL_44;
          }
        }
      }

      if (v75 < a3 - 3 && *v72 == *v75)
      {
        v72 += 2;
        v75 += 2;
      }

      if (v75 < a3 - 1 && *v72 == *v75)
      {
        ++v72;
        ++v75;
      }

      if (v75 < a3 && *v72 == *v75)
      {
        v75 = (v75 + 1);
      }

      v80 = v75 - a2;
LABEL_44:
      if (v80 > v70)
      {
        *a4 = v12 + 2 - v71;
        v70 = v80;
        if ((a2 + v80) == a3)
        {
          goto LABEL_49;
        }
      }

LABEL_46:
      ++v68;
      v80 = v70;
      if (v68 == v64)
      {
        goto LABEL_49;
      }
    }
  }

  v80 = 3;
LABEL_49:
  v146 = v11;
  v81 = 0;
  v82 = *v17;
  v83 = *(v17 + 8);
  v84 = *v17 - v83 - v147;
  v85 = (*(v17 + 96) + 4 * v65);
  do
  {
    _X11 = v83 + v85[v81];
    __asm { PRFM            #0, [X11] }

    ++v81;
  }

  while (v81 != 3);
  v88 = v85[3];
  _X27 = (*(v17 + 112) + 4 * (v88 >> 8));
  __asm { PRFM            #0, [X27] }

  LODWORD(v91) = v28 + v26;
  v92 = a3;
  v142 = v12;
  if (v91)
  {
    v140 = v85[3];
    v139 = v91;
    if (v91 >= 3)
    {
      v91 = 3;
    }

    else
    {
      v91 = v91;
    }

    v141 = *v17 - v83 - v147;
    v143 = v12 + v84 + 2;
    v138 = v91;
    v93 = v91;
    while (1)
    {
      v95 = *v85++;
      v94 = v95;
      if (!v95)
      {
        break;
      }

      if (*(v83 + v94) == *a2)
      {
        v96 = ZSTD_count_2segments(a2 + 2, (v83 + v94 + 4), a3, v82, (v146 + v147));
        a3 = v92;
        v97 = v96 + 4;
        if (v96 + 4 > v80)
        {
          *a4 = (v143 - v94);
          v80 = v96 + 4;
          if ((a2 + v97) == v92)
          {
            goto LABEL_76;
          }
        }
      }

      if (!--v93)
      {
        v84 = v141;
        LOBYTE(v88) = v140;
        LODWORD(v91) = v139;
        v98 = v138;
        goto LABEL_63;
      }
    }

LABEL_75:
    v97 = v80;
    goto LABEL_76;
  }

  v98 = 0;
LABEL_63:
  v99 = v91 - v98;
  if (v99 >= v88)
  {
    v100 = v88;
  }

  else
  {
    v100 = v99;
  }

  if (!v100)
  {
    goto LABEL_75;
  }

  v101 = 4 * v100;
  v102 = _X27;
  do
  {
    v103 = *v102++;
    _X10 = v83 + v103;
    __asm { PRFM            #0, [X10] }

    v101 -= 4;
  }

  while (v101);
  v106 = *a2;
  v144 = v142 + v84 + 2;
  v97 = v80;
  do
  {
    v108 = *_X27++;
    v107 = v108;
    v109 = v83 + v108;
    if (*v109 == v106)
    {
      v110 = ZSTD_count_2segments(a2 + 2, (v109 + 4), a3, v82, (v146 + v147));
      a3 = v92;
      if (v110 + 4 > v97)
      {
        *a4 = v144 - v107;
        v97 = v110 + 4;
        if ((a2 + v110 + 4) == v92)
        {
          break;
        }
      }
    }

    --v100;
  }

  while (v100);
LABEL_76:
  v111 = *MEMORY[0x1E69E9840];
  return v97;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v153 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v151 = *(a1 + 24);
  v14 = a2 - v11 - v13;
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v14 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  v17 = *(a1 + 232);
  v18 = v16 - 6;
  if (v16 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  v20 = (0xCF1BBCDCBF9B0000 * *a2) >> (66 - *(v17 + 248));
  _X9 = *(v17 + 96) + 16 * v20;
  __asm { PRFM            #0, [X9] }

  v26 = 1 << v18;
  if (!(!_ZF & _CF))
  {
    v26 = 0;
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v115 = v27 + 96;
      do
      {
        v116 = (0xCF1BBCDCBF9B0000 * *(v11 + 8 + v27)) >> (56 - v10);
        v117 = (v116 >> 2) & 0x3FFFFFC0;
        _X19 = v5 + 4 * v117;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v7 + 2 * v117;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x40]
        }

        v124 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v116;
        v125 = (v124 >> 2) & 0x3FFFFFC0;
        v126 = v5 + 4 * v125;
        v127 = (v7 + 2 * v125);
        v128 = (*v127 - 1) & 0x3F;
        *v127 = v128;
        v127[v128 + 16] = v124;
        *(v126 + 4 * v128) = v27++;
      }

      while (v115 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v129 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v130 = a2 + 1 - (v11 + v129);
    if ((v130 + 1) < 8)
    {
      v131 = v130 + 1;
    }

    else
    {
      v131 = 8;
    }

    if (a2 + 1 >= v11 + v129)
    {
      v132 = v131;
    }

    else
    {
      v132 = 0;
    }

    if (v129 < v132 + v129)
    {
      v133 = 56 - *(a1 + 52);
      do
      {
        v134 = (0xCF1BBCDCBF9B0000 * *(v11 + v129)) >> v133;
        v135 = (v134 >> 2) & 0x3FFFFFC0;
        _X22 = v6 + 4 * v135;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v8 + 2 * v135;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x40]
        }

        *(v9 + 4 * (v129++ & 7)) = v134;
        --v132;
      }

      while (v132);
    }
  }

  v28 = 1 << v19;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 56 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (0xCF1BBCDCBF9B0000 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 2) & 0x3FFFFFC0;
      _X20 = v6 + 4 * v32;
      __asm
      {
        PRFM            #0, [X20]
        PRFM            #0, [X20,#0x40]
      }

      _X19 = v8 + 2 * v32;
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0, [X19,#0x40]
      }

      v39 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v40 = (v39 >> 2) & 0x3FFFFFC0;
      v41 = v6 + 4 * v40;
      v42 = (v8 + 2 * v40);
      v43 = (*v42 - 1) & 0x3F;
      *v42 = v43;
      v42[v43 + 16] = v39;
      *(v41 + 4 * v43) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v44 = (0xCF1BBCDCBF9B0000 * *(v11 + v12 + 8)) >> (56 - v10);
  v45 = (v44 >> 2) & 0x3FFFFFC0;
  _X1 = v5 + 4 * v45;
  __asm
  {
    PRFM            #0, [X1]
    PRFM            #0, [X1,#0x40]
  }

  _X16 = v7 + 2 * v45;
  __asm
  {
    PRFM            #0, [X16]
    PRFM            #0, [X16,#0x40]
  }

  v52 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v44;
  v53 = (v52 >> 2) & 0x3FFFFFC0;
  v54 = (v7 + 2 * v53);
  v55 = v54 + 16;
  v56 = *v54;
  v57 = v5 + 4 * v53;
  memset(v152, 0, sizeof(v152));
  v154 = vld4q_s8(v55);
  v58 = vdupq_n_s8(v52);
  v154.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v154.val[3], v58), vceqq_s8(v154.val[2], v58), 1uLL), vsriq_n_s8(vceqq_s8(v154.val[1], v58), vceqq_s8(v154.val[0], v58), 1uLL), 2uLL);
  v59 = vshrn_n_s16(vsriq_n_s8(v154.val[0], v154.val[0], 4uLL), 4uLL);
  v60 = v59;
  if (v59)
  {
    v61 = 0;
    v62 = __ROR8__(*&v59, v56);
    v63 = v28;
    while (1)
    {
      v64 = *(v57 + 4 * ((__clz(__rbit64(v62)) + v56) & 0x3F));
      if (v64 < v14)
      {
        break;
      }

      _X13 = v11 + v64;
      __asm { PRFM            #0, [X13] }

      v60 = (*&v61 + 1);
      *(v152 + *&v61) = v64;
      v28 = v63 - 1;
      v62 &= v62 - 1;
      if (v62)
      {
        ++*&v61;
        if (--v63)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v60 = v61;
    v28 = v63;
  }

LABEL_22:
  v67 = 4 * v20;
  v68 = (v56 - 1) & 0x3F;
  *v54 = v68;
  v54[v68 + 16] = v52;
  v69 = *(a1 + 44);
  *(a1 + 44) = v69 + 1;
  *(v57 + 4 * v68) = v69;
  if (v60)
  {
    v70 = 0;
    v71 = a3 - 7;
    v72 = 3;
    while (1)
    {
      v73 = *(v152 + v70);
      v74 = (v11 + v73);
      if (*(v11 + v73 + v72) != *(a2 + v72))
      {
        goto LABEL_45;
      }

      if (v71 <= a2)
      {
        v77 = a2;
      }

      else
      {
        v75 = *v74;
        if (v75 != *a2)
        {
          v82 = __clz(__rbit64(*a2 ^ v75)) >> 3;
          goto LABEL_43;
        }

        v76 = 0;
        v74 = (v11 + 8 + v73);
        v77 = a2 + 4;
        while (v77 < v71)
        {
          v79 = *v74;
          v74 += 4;
          v78 = v79;
          v81 = *v77;
          v77 += 4;
          v80 = v81;
          v76 += 8;
          if (v78 != v81)
          {
            v82 = v76 + (__clz(__rbit64(v80 ^ v78)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v77 < a3 - 3 && *v74 == *v77)
      {
        v74 += 2;
        v77 += 2;
      }

      if (v77 < a3 - 1 && *v74 == *v77)
      {
        ++v74;
        ++v77;
      }

      if (v77 < a3 && *v74 == *v77)
      {
        v77 = (v77 + 1);
      }

      v82 = v77 - a2;
LABEL_43:
      if (v82 > v72)
      {
        *a4 = v12 + 2 - v73;
        v72 = v82;
        if ((a2 + v82) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v70;
      v82 = v72;
      if (v70 == *&v60)
      {
        goto LABEL_48;
      }
    }
  }

  v82 = 3;
LABEL_48:
  v150 = v11;
  v83 = 0;
  v84 = *v17;
  v85 = *(v17 + 8);
  v86 = *v17 - v85 - v151;
  v87 = (*(v17 + 96) + 4 * v67);
  do
  {
    _X11 = v85 + v87[v83];
    __asm { PRFM            #0, [X11] }

    ++v83;
  }

  while (v83 != 3);
  v90 = v87[3];
  _X27 = (*(v17 + 112) + 4 * (v90 >> 8));
  __asm { PRFM            #0, [X27] }

  LODWORD(v93) = v28 + v26;
  v94 = a3;
  v146 = v12;
  if (v93)
  {
    v144 = v87[3];
    v143 = v93;
    if (v93 >= 3)
    {
      v93 = 3;
    }

    else
    {
      v93 = v93;
    }

    v145 = *v17 - v85 - v151;
    v147 = v12 + v86 + 2;
    v142 = v93;
    v95 = v93;
    while (1)
    {
      v97 = *v87++;
      v96 = v97;
      if (!v97)
      {
        break;
      }

      if (*(v85 + v96) == *a2)
      {
        v98 = ZSTD_count_2segments(a2 + 2, (v85 + v96 + 4), a3, v84, (v150 + v151));
        a3 = v94;
        v99 = v98 + 4;
        if (v98 + 4 > v82)
        {
          *a4 = (v147 - v96);
          v82 = v98 + 4;
          if ((a2 + v99) == v94)
          {
            goto LABEL_75;
          }
        }
      }

      if (!--v95)
      {
        v86 = v145;
        LOBYTE(v90) = v144;
        LODWORD(v93) = v143;
        v100 = v142;
        goto LABEL_62;
      }
    }

LABEL_74:
    v99 = v82;
    goto LABEL_75;
  }

  v100 = 0;
LABEL_62:
  v101 = v93 - v100;
  if (v101 >= v90)
  {
    v102 = v90;
  }

  else
  {
    v102 = v101;
  }

  if (!v102)
  {
    goto LABEL_74;
  }

  v103 = 4 * v102;
  v104 = _X27;
  do
  {
    v105 = *v104++;
    _X10 = v85 + v105;
    __asm { PRFM            #0, [X10] }

    v103 -= 4;
  }

  while (v103);
  v108 = *a2;
  v148 = v146 + v86 + 2;
  v99 = v82;
  do
  {
    v110 = *_X27++;
    v109 = v110;
    v111 = v85 + v110;
    if (*v111 == v108)
    {
      v112 = ZSTD_count_2segments(a2 + 2, (v111 + 4), a3, v84, (v150 + v151));
      a3 = v94;
      if (v112 + 4 > v99)
      {
        *a4 = v148 - v109;
        v99 = v112 + 4;
        if ((a2 + v112 + 4) == v94)
        {
          break;
        }
      }
    }

    --v102;
  }

  while (v102);
LABEL_75:
  v113 = *MEMORY[0x1E69E9840];
  return v99;
}

uint64_t ZSTD_fseBitCost(unsigned __int16 *a1, unsigned int *a2, unsigned int a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = 1 << (v3 - 1);
  }

  else
  {
    v4 = 1;
  }

  if (a1[1] < a3)
  {
    return -1;
  }

  v6 = 0;
  v7 = a3 + 1;
  v8 = &a1[2 * v4 + 4];
  do
  {
    v10 = *v8;
    v8 += 4;
    v9 = v10;
    v12 = *a2++;
    v11 = v12;
    if (v12)
    {
      v13 = ((HIWORD(v9) + 1) << 8) - ((((HIWORD(v9) + 1) << 24) - ((v9 + (1 << v3)) << 8)) >> v3);
      if (v13 >= (v3 << 8) + 256)
      {
        return -1;
      }

      v6 += v11 * v13;
    }

    --v7;
  }

  while (v7);
  return v6 >> 8;
}

unint64_t ZSTD_crossEntropyCost(unsigned __int16 *a1, char a2, int *a3, int a4)
{
  v4 = 0;
  if ((a4 + 1) > 1)
  {
    v5 = (a4 + 1);
  }

  else
  {
    v5 = 1;
  }

  do
  {
    v7 = *a1++;
    v6 = v7;
    if (v7 == 0xFFFF)
    {
      v6 = 1;
    }

    v8 = *a3++;
    v4 += (kInverseProbabilityLog256[v6 << (8 - a2)] * v8);
    --v5;
  }

  while (v5);
  return v4 >> 8;
}

uint64_t ZSTD_selectEncodingType(_DWORD *a1, unsigned int *a2, unsigned int a3, unint64_t a4, unint64_t a5, unsigned int a6, unsigned __int16 *a7, unsigned __int16 *a8, char a9, int a10, unsigned int a11)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a4 != a5)
  {
    if (a11 > 3)
    {
      v17 = a2;
      if (a10)
      {
        v18 = 0;
        if (a3 + 1 > 1)
        {
          v19 = a3 + 1;
        }

        else
        {
          v19 = 1;
        }

        v20 = a2;
        do
        {
          v22 = *a8++;
          v21 = v22;
          if (v22 == 0xFFFF)
          {
            v21 = 1;
          }

          v23 = *v20++;
          v18 += (kInverseProbabilityLog256[v21 << (8 - a9)] * v23);
          --v19;
        }

        while (v19);
        v24 = v18 >> 8;
      }

      else
      {
        v24 = -1;
      }

      if (*a1)
      {
        v25 = ZSTD_fseBitCost(a7, a2, a3);
      }

      else
      {
        v25 = -1;
      }

      memset(v38, 0, sizeof(v38));
      memset(v37, 0, 106);
      v26 = FSE_optimalTableLog(a6, a5, a3);
      v27 = FSE_normalizeCount(v37, v26, v17, a5, a3, a5 > 0x7FF);
      if (v27 <= 0xFFFFFFFFFFFFFF88)
      {
        v27 = FSE_writeNCount(v38, 0x200uLL, v37, a3, v26);
      }

      v28 = 0;
      if (a3 + 1 > 1)
      {
        v29 = a3 + 1;
      }

      else
      {
        v29 = 1;
      }

      do
      {
        v31 = *v17++;
        v30 = v31;
        v32 = v31 << 8;
        if (v32 >= a5 || v30 == 0)
        {
          v34 = v32 / a5;
        }

        else
        {
          v34 = 1;
        }

        v28 += kInverseProbabilityLog256[v34] * v30;
        --v29;
      }

      while (v29);
      v35 = (v28 >> 8) + 8 * v27;
      if (v24 <= v25 && v24 <= v35)
      {
        goto LABEL_42;
      }

      if (v25 <= v35)
      {
LABEL_45:
        result = 3;
        goto LABEL_46;
      }
    }

    else if (a10)
    {
      if (a5 > 0x3E7 || *a1 != 2)
      {
        if (a5 >= (10 - a11) << a9 >> 3 && a5 >> (a9 - 1) <= a4)
        {
          goto LABEL_44;
        }

LABEL_42:
        result = 0;
        *a1 = 0;
        goto LABEL_46;
      }

      goto LABEL_45;
    }

LABEL_44:
    *a1 = 1;
    result = 2;
    goto LABEL_46;
  }

  *a1 = 0;
  result = a4 > 2 || a10 == 0;
LABEL_46:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ZSTD_buildCTable(_WORD *a1, unint64_t a2, _WORD *__dst, unsigned int a4, int a5, unsigned int *a6, unsigned int a7, _BYTE *a8, uint64_t a9, unsigned __int16 *a10, int a11, int a12, const void *a13, size_t a14, __int16 *a15, unint64_t a16)
{
  v21 = -1;
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v25 = a9;
      v26 = FSE_optimalTableLog(a4, a9, a7);
      v27 = a8[a9 - 1];
      v28 = a6[v27];
      if (v28 >= 2)
      {
        a6[v27] = v28 - 1;
        v25 = a9 - 1;
      }

      v22 = FSE_normalizeCount(a15, v26, a6, v25, a7, v25 > 0x7FF);
      if (v22 > 0xFFFFFFFFFFFFFF88)
      {
        return v22;
      }

      v21 = FSE_writeNCount(a1, a2, a15, a7, v26);
      if (v21 <= 0xFFFFFFFFFFFFFF88)
      {
        v29 = FSE_buildCTable_wksp(__dst, a15, a7, v26, a15 + 54, 0x474uLL);
        if (v29 >= 0xFFFFFFFFFFFFFF89)
        {
          return v29;
        }
      }
    }

    else if (a5 == 3)
    {
      memcpy(__dst, a13, a14);
      return 0;
    }
  }

  else
  {
    if (a5)
    {
      if (a5 != 1)
      {
        return v21;
      }

      v22 = FSE_buildCTable_rle(__dst, a7);
      if (v22 <= 0xFFFFFFFFFFFFFF88)
      {
        if (!a2)
        {
          return -70;
        }

        *a1 = *a8;
        return 1;
      }

      return v22;
    }

    v23 = FSE_buildCTable_wksp(__dst, a10, a12, a11, a15, a16);
    if (v23 >= 0xFFFFFFFFFFFFFF89)
    {
      return v23;
    }

    else
    {
      return 0;
    }
  }

  return v21;
}

uint64_t ZSTD_encodeSequences(unint64_t *a1, unint64_t a2, unsigned __int16 *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8, uint64_t a9, unint64_t a10, int a11)
{
  if (a2 < 9)
  {
    return -70;
  }

  v12 = a10 - 1;
  v13 = *(a4 + a10 - 1);
  v15 = *a3;
  v14 = a3 + 2;
  v16 = 1 << (v15 - 1);
  v105 = v15;
  if (!v15)
  {
    v16 = 1;
  }

  v106 = &v14[2 * v16];
  v17 = v14[((((*&v106[4 * v13 + 2] + 0x8000) & 0xFFFF0000) - *&v106[4 * v13 + 2]) >> ((*&v106[4 * v13 + 2] + 0x8000) >> 16)) + *&v106[4 * v13]];
  v18 = a1 + a2;
  v19 = *(a6 + v12);
  v21 = *a5;
  v20 = a5 + 2;
  v22 = 1 << (v21 - 1);
  v104 = v21;
  if (!v21)
  {
    v22 = 1;
  }

  v23 = &v20[2 * v22];
  v24 = &v23[4 * *(a6 + v12)];
  v25 = v20[((((*(v24 + 1) + 0x8000) & 0xFFFF0000) - *(v24 + 1)) >> ((*(v24 + 1) + 0x8000) >> 16)) + *v24];
  v26 = *(a8 + v12);
  v27 = (v18 - 8);
  v29 = *a7;
  v28 = a7 + 2;
  v30 = 1 << (v29 - 1);
  v103 = v29;
  if (!v29)
  {
    v30 = 1;
  }

  v31 = &v28[2 * v30];
  v32 = v28[((((*&v31[4 * v26 + 2] + 0x8000) & 0xFFFF0000) - *&v31[4 * v26 + 2]) >> ((*&v31[4 * v26 + 2] + 0x8000) >> 16)) + *&v31[4 * v26]];
  v33 = (a9 + 8 * v12);
  v34 = LL_bits_2[v26];
  v35 = ML_bits_2[v13];
  v36 = ((BIT_mask_0[v35] & *(v33 + 3)) << v34) | BIT_mask_0[v34] & *(v33 + 2);
  v37 = v35 + v34;
  if (a11)
  {
    if (v19 > 0x37)
    {
      v39 = *v33;
      v38 = v19 - 56;
      if (v19 != 56)
      {
        v44 = ((BIT_mask_0[v38] & v39) << v37) | v36;
        v45 = v37 + v38;
        v46 = v45 >> 3;
        *a1 = v44;
        if ((a1 + v46) <= v27)
        {
          v43 = (a1 + v46);
        }

        else
        {
          v43 = v27;
        }

        v37 = v45 & 7;
        v36 = v44 >> (8 * v46);
        v19 = 56;
        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v38) = 0;
      v39 = *v33;
    }

    v43 = a1;
LABEL_19:
    v41 = ((BIT_mask_0[v19] & (v39 >> v38)) << v37) | v36;
    v42 = v37 + v19;
    goto LABEL_20;
  }

  v41 = ((BIT_mask_0[v19] & *v33) << v37) | v36;
  v42 = v37 + v19;
  v43 = a1;
LABEL_20:
  v47 = v42 >> 3;
  *v43 = v41;
  v48 = (v43 + v47);
  if ((v43 + v47) > v27)
  {
    v48 = v27;
  }

  v49 = v41 >> (8 * v47);
  v50 = v42 & 7;
  v51 = a10 - 2;
  v102 = a1;
  if (a10 >= 2)
  {
    v52 = a9 + 8 * a10 - 16;
    do
    {
      v53 = *(a8 + v51);
      v54 = *(a6 + v51);
      v55 = *(a4 + v51);
      v56 = LL_bits_2[v53];
      v57 = ML_bits_2[v55];
      v58 = (v25 + *&v23[4 * *(a6 + v51) + 2]) >> 16;
      v59 = (v25 & BIT_mask_0[v58]) << v50;
      v60 = v50 + v58;
      v25 = v20[(v25 >> ((v25 + *&v23[4 * *(a6 + v51) + 2]) >> 16)) + *&v23[4 * *(a6 + v51)]];
      v61 = &v106[4 * v55];
      v62 = *v61;
      v63 = (v17 + *(v61 + 1)) >> 16;
      v64 = (v17 & BIT_mask_0[v63]) << v60;
      v65 = v60 + v63;
      v17 = v14[(v17 >> v63) + v62];
      v66 = &v31[4 * v53];
      LODWORD(v63) = *v66;
      v67 = (v32 + *(v66 + 1)) >> 16;
      v68 = v59 | v49 | v64 | ((v32 & BIT_mask_0[v67]) << v65);
      v69 = v65 + v67;
      v32 = v28[(v32 >> v67) + v63];
      v70 = v56 + v54 + v57;
      if (v70 >= 0x1F)
      {
        v71 = v69 >> 3;
        *v48 = v68;
        if ((v48 + v71) <= v27)
        {
          v48 = (v48 + v71);
        }

        else
        {
          v48 = v27;
        }

        v69 &= 7u;
        v68 >>= 8 * v71;
      }

      v72 = v69 + v56;
      v73 = ((BIT_mask_0[v56] & *(v52 + 4)) << v69) | ((BIT_mask_0[v57] & *(v52 + 6)) << (v69 + v56)) | v68;
      v74 = v72 + v57;
      if (v70 >= 0x39)
      {
        v75 = v74 >> 3;
        *v48 = v73;
        if ((v48 + v75) <= v27)
        {
          v48 = (v48 + v75);
        }

        else
        {
          v48 = v27;
        }

        v74 &= 7u;
        v73 >>= 8 * v75;
      }

      if (a11)
      {
        if (v54 > 0x37)
        {
          v77 = *v52;
          v76 = v54 - 56;
          if (v54 != 56)
          {
            v79 = ((BIT_mask_0[v76] & v77) << v74) | v73;
            v80 = (v74 + v76) >> 3;
            *v48 = v79;
            if ((v48 + v80) <= v27)
            {
              v48 = (v48 + v80);
            }

            else
            {
              v48 = v27;
            }

            v74 = (v74 + v76) & 7;
            v73 = v79 >> (8 * v80);
            v54 = 56;
          }
        }

        else
        {
          LOBYTE(v76) = 0;
          v77 = *v52;
        }

        v78 = v77 >> v76;
      }

      else
      {
        v78 = *v52;
      }

      v81 = ((BIT_mask_0[v54] & v78) << v74) | v73;
      v82 = (v74 + v54) >> 3;
      *v48 = v81;
      if ((v48 + v82) <= v27)
      {
        v48 = (v48 + v82);
      }

      else
      {
        v48 = v27;
      }

      v49 = v81 >> (8 * v82);
      --v51;
      v50 = (v74 + v54) & 7;
      v52 -= 8;
    }

    while (v51 < a10);
  }

  v83 = ((v17 & BIT_mask_0[v105]) << v50) | v49;
  v84 = v50 + v105;
  v85 = v84 >> 3;
  *v48 = v83;
  v86 = (v48 + v85);
  if ((v48 + v85) > v27)
  {
    v86 = v27;
  }

  v87 = v84 & 7;
  v88 = ((v25 & BIT_mask_0[v104]) << v87) | (v83 >> (8 * v85));
  v89 = v87 + v104;
  v90 = v89 >> 3;
  *v86 = v88;
  v91 = (v86 + v90);
  if (v91 > v27)
  {
    v91 = v27;
  }

  v92 = v89 & 7;
  v93 = ((v32 & BIT_mask_0[v103]) << v92) | (v88 >> (8 * v90));
  v94 = v92 + v103;
  v95 = v94 >> 3;
  *v91 = v93;
  v96 = (v91 + v95);
  if (v96 > v27)
  {
    v96 = v27;
  }

  v97 = v94 & 7;
  v98 = (v93 >> (8 * v95)) | (1 << v97);
  v99 = v97 + 1;
  *v96 = v98;
  v100 = v96 + (v99 >> 3);
  if (v100 > v27)
  {
    v100 = v27;
  }

  if (v100 >= v27)
  {
    return -70;
  }

  v101 = ((v99 & 7) != 0 ? v100 + 1 : v100);
  result = v101 - v102;
  if (v101 == v102)
  {
    return -70;
  }

  return result;
}

unint64_t ZSTD_compressBound(unint64_t a1)
{
  v1 = (0x20000 - a1) >> 11;
  if (a1 >= 0x20000)
  {
    v1 = 0;
  }

  return a1 + (a1 >> 8) + v1;
}

uint64_t ZSTD_createCCtx_advanced(void *a1)
{
  if ((*a1 == 0) != (a1[1] == 0))
  {
    return 0;
  }

  v5 = *a1;
  v6 = a1[2];
  v3 = ZSTD_customMalloc(0x13C8uLL, &v5);
  v1 = v3;
  if (v3)
  {
    v5 = *a1;
    v6 = a1[2];
    bzero(v3, 0x13C8uLL);
    *(v1 + 744) = v5;
    *(v1 + 760) = v6;
    ZSTD_CCtx_reset(v1, 2);
  }

  return v1;
}

unint64_t ZSTD_freeCCtx(unint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 776))
    {
      return -64;
    }

    else
    {
      v2 = *(result + 560) > result || *(result + 568) < result;
      v3 = (result + 3496);
      v4 = *(result + 3496);
      v6 = *(v1 + 744);
      v7 = *(v1 + 760);
      ZSTD_customFree(v4, &v6);
      ZSTD_freeCDict(*(v1 + 3528));
      *v3 = 0u;
      *(v1 + 3512) = 0u;
      *(v1 + 3528) = 0u;
      *(v1 + 3544) = 0u;
      *(v1 + 3560) = 0;
      v6 = *(v1 + 744);
      v7 = *(v1 + 760);
      v5 = *(v1 + 560);
      *(v1 + 560) = 0u;
      *(v1 + 576) = 0u;
      *(v1 + 592) = 0u;
      *(v1 + 608) = 0u;
      ZSTD_customFree(v5, &v6);
      if (v2)
      {
        v6 = *(v1 + 744);
        v7 = *(v1 + 760);
        ZSTD_customFree(v1, &v6);
      }

      return 0;
    }
  }

  return result;
}

double ZSTD_CCtx_refCDict(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 3456))
  {
    v11 = v2;
    v12 = v3;
    v6 = (a1 + 3496);
    v7 = *(a1 + 3496);
    v9 = *(a1 + 744);
    v10 = *(a1 + 760);
    ZSTD_customFree(v7, &v9);
    ZSTD_freeCDict(*(a1 + 3528));
    result = 0.0;
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *(a1 + 3560) = 0;
    *(a1 + 3536) = a2;
  }

  return result;
}

double ZSTD_CCtx_reset(uint64_t a1, int a2)
{
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    *(a1 + 3456) = 0;
    *(a1 + 632) = 0;
  }

  if ((a2 & 0xFFFFFFFE) == 2 && !*(a1 + 3456))
  {
    v3 = (a1 + 3496);
    v4 = *(a1 + 3496);
    v6 = *(a1 + 744);
    v7 = *(a1 + 760);
    ZSTD_customFree(v4, &v6);
    ZSTD_freeCDict(*(a1 + 3528));
    result = 0.0;
    *v3 = 0u;
    *(a1 + 3512) = 0u;
    *(a1 + 3528) = 0u;
    *(a1 + 3544) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 60) = 3;
    *(a1 + 48) = 1;
    *(a1 + 3560) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
  }

  return result;
}

__n128 ZSTD_adjustCParams_internal@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    v5 = a2 == -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = 513;
  if (!v5)
  {
    v6 = a2;
  }

  if (a4 != 2)
  {
    v6 = a2;
  }

  if (a4 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  if (a4 == 1)
  {
    v8 = a2;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 | v7) >> 30)
  {
    v11 = *a1;
    if (v8 == -1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v9 = __clz(v8 + v7 - 1) ^ 0x1F;
    if (v8 + v7 >= 0x40)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 6;
    }

    v11 = *a1;
    if (*a1 > v10)
    {
      *a1 = v10;
      v11 = v10;
    }
  }

  v12 = (1 << v11) + v7;
  v13 = v8 + v7;
  v14 = v12 >> 31;
  v15 = __clz(v12 - 1) ^ 0x1F;
  if (v14)
  {
    v16 = 31;
  }

  else
  {
    v16 = v15 + 1;
  }

  if (1 << v11 < v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  if (v7)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  v19 = *(a1 + 4);
  v20 = v19 - (*(a1 + 24) > 5u);
  if (*(a1 + 8) > v18 + 1)
  {
    *(a1 + 8) = v18 + 1;
  }

  if (v20 > v18)
  {
    *(a1 + 4) = v19 + v18 - v20;
  }

LABEL_34:
  if (v11 <= 9)
  {
    *a1 = 10;
  }

  *a5 = *a1;
  result = *(a1 + 12);
  *(a5 + 12) = result;
  return result;
}

double ZSTD_getCParamsFromCCtxParams@<D0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a2;
  if (a2 == -1)
  {
    if (a1[16] <= 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = a1[16];
    }
  }

  memset(v11, 0, sizeof(v11));
  v12 = 0;
  ZSTD_getCParams_internal(a1[11], v7, a3, a4, v11);
  if (a1[24] == 1)
  {
    LODWORD(v11[0]) = 27;
  }

  ZSTD_overrideCParams(v11, a1 + 1);
  *&result = ZSTD_adjustCParams_internal(v11, v7, a3, a4, a5).n128_u64[0];
  return result;
}

double ZSTD_getCParams_internal@<D0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a4 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  if (a2 != -1 || v7)
  {
    if (v7)
    {
      v9 = a2 == -1;
    }

    else
    {
      v9 = 0;
    }

    v10 = 500;
    if (!v9)
    {
      v10 = 0;
    }

    v8 = v7 + a2 + v10;
  }

  else
  {
    v8 = -1;
  }

  v25 = v5;
  v26 = v6;
  v11 = 3;
  if (a1 >= 0x16)
  {
    v12 = 22;
  }

  else
  {
    v12 = a1;
  }

  if (a1 < 0)
  {
    v12 = 0;
  }

  if (a1)
  {
    v11 = v12;
  }

  v13 = v8 < 0x40001;
  if (v8 <= 0x20000)
  {
    ++v13;
  }

  if (v8 > 0x4000)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = &ZSTD_defaultCParameters + 644 * v14 + 28 * v11;
  v21 = *v15;
  v16 = *(v15 + 4);
  v17 = *(v15 + 5);
  v18 = *(v15 + 6);
  if (a1 <= 0xFFFE0000)
  {
    v19 = -131072;
  }

  else
  {
    v19 = a1;
  }

  if (a1 < 0)
  {
    v17 = -v19;
  }

  v22 = v16;
  v23 = v17;
  v24 = v18;
  *&result = ZSTD_adjustCParams_internal(&v21, a2, a3, a4, a5).n128_u64[0];
  return result;
}

_DWORD *ZSTD_overrideCParams(_DWORD *result, _DWORD *a2)
{
  if (*a2)
  {
    *result = *a2;
  }

  v2 = a2[2];
  if (v2)
  {
    result[2] = v2;
  }

  v3 = a2[1];
  if (v3)
  {
    result[1] = v3;
  }

  v4 = a2[3];
  if (v4)
  {
    result[3] = v4;
  }

  v5 = a2[4];
  if (v5)
  {
    result[4] = v5;
  }

  v6 = a2[5];
  if (v6)
  {
    result[5] = v6;
  }

  v7 = a2[6];
  if (v7)
  {
    result[6] = v7;
  }

  return result;
}

uint64_t ZSTD_estimateCCtxSize_usingCCtxParams_internal(int *a1, __int128 *a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v11 = 1 << *a1;
  if (v11 >= a7)
  {
    v11 = a7;
  }

  if (v11 >= 0x20000)
  {
    v11 = 0x20000;
  }

  if (a7)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (a1[4] == 3)
  {
    v13 = 3;
  }

  else
  {
    v13 = 4;
  }

  v14 = v12 / v13;
  matched = ZSTD_sizeof_matchState(a1, a4, 0, 1);
  v21 = *a2;
  v22 = *(a2 + 2);
  TableSize = ZSTD_ldm_getTableSize(&v21);
  v21 = *a2;
  v22 = *(a2 + 2);
  MaxNbSeq = ZSTD_ldm_getMaxNbSeq(&v21, v12);
  if (*a2 == 1)
  {
    v18 = (12 * MaxNbSeq + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  else
  {
    v18 = 0;
  }

  v19 = 25248;
  if (!a3)
  {
    v19 = 20184;
  }

  return a5 + a6 + v19 + matched + v12 + ((8 * v14 + 63) & 0x7FFFFFFC0) + v14 + 2 * v14 + TableSize + v18 + 32;
}

uint64_t ZSTD_seqToCodes(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  v3 = *(result + 8) - *result;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = (v3 >> 3);
    v5 = (*result + 6);
    v6 = *(result + 48);
    v7 = *(result + 40);
    v8 = *(result + 32);
    do
    {
      v9 = *(v5 - 1);
      if (v9 < 0x40)
      {
        LOBYTE(v10) = ZSTD_LLcode_LL_Code[*(v5 - 1)];
      }

      else
      {
        v10 = 50 - __clz(v9);
      }

      v11 = *v5;
      *v8 = v10;
      *v6 = __clz(*(v5 - 3)) ^ 0x1F;
      if (v11 < 0x80)
      {
        LOBYTE(v11) = ZSTD_MLcode_ML_Code[v11];
      }

      else
      {
        v11 = 67 - __clz(v11);
      }

      v5 += 4;
      *v7++ = v11;
      ++v8;
      ++v6;
      --v4;
    }

    while (v4);
  }

  v12 = *(result + 72);
  if (v12 == 1)
  {
    *(v2 + *(result + 76)) = 35;
    v12 = *(result + 72);
  }

  if (v12 == 2)
  {
    *(v1 + *(result + 76)) = 52;
  }

  return result;
}

uint64_t (*ZSTD_selectBlockCompressor(int a1, int a2, int a3))()
{
  v3 = a1 - 3;
  v4 = a2 != 1 || v3 > 2;
  v5 = &ZSTD_selectBlockCompressor_rowBasedBlockCompressors[3 * a3] + v3;
  if (v4)
  {
    v5 = &ZSTD_selectBlockCompressor_blockCompressor[10 * a3] + a1;
  }

  return *v5;
}

uint64_t ZSTD_resetSeqStore(uint64_t result)
{
  *(result + 24) = *(result + 16);
  *(result + 8) = *result;
  *(result + 72) = 0;
  return result;
}

uint64_t ZSTD_buildBlockEntropyStats(void *a1, char *__src, void *__dst, _DWORD *a4, uint64_t a5, char *a6, unint64_t a7)
{
  v15 = a1[2];
  v14 = a1[3];
  v16 = a4[18];
  if (v16 == 1)
  {
    goto LABEL_7;
  }

  if (v16 == 2)
  {
    LODWORD(v38) = 255;
    memcpy(__dst, __src, 0x810uLL);
    goto LABEL_25;
  }

  if (a4[7] != 1)
  {
LABEL_7:
    v18 = __src + 2056;
    v37 = *(__src + 514);
    LODWORD(v38) = 255;
    memcpy(__dst, __src, 0x810uLL);
  }

  else
  {
    v17 = a4[6];
    v37 = *(__src + 514);
    LODWORD(v38) = 255;
    memcpy(__dst, __src, 0x810uLL);
    if (v17)
    {
      goto LABEL_25;
    }

    v18 = __src + 2056;
  }

  v19 = v14 - v15;
  v20 = 63;
  if (*v18 == 2)
  {
    v20 = 6;
  }

  if (v20 >= v19)
  {
    goto LABEL_25;
  }

  v21 = HIST_count_wksp(a6, &v38, v15, v19, a6, a7);
  v22 = v21;
  if (v21 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_36;
  }

  if (v21 == v19)
  {
    v23 = 1;
LABEL_26:
    *a5 = v23;
    *(a5 + 136) = 0;
    goto LABEL_27;
  }

  if (v21 <= (v19 >> 7) + 4)
  {
LABEL_25:
    v23 = 0;
    goto LABEL_26;
  }

  v36 = a7;
  v24 = a7 - 1024;
  v25 = v37;
  if (v37 == 1)
  {
    v25 = HUF_validateCTable(__src, a6, v38);
  }

  bzero(__dst, 0x808uLL);
  v26 = HUF_optimalTableLog(0xBu, v19, v38);
  v22 = HUF_buildCTable_wksp(__dst, a6, v38, v26, (a6 + 1024), v24);
  if (v22 > 0xFFFFFFFFFFFFFF88)
  {
LABEL_36:
    *(a5 + 136) = v22;
    return v22;
  }

  v27 = HUF_estimateCompressedSize(__dst, a6, v38);
  v28 = v24;
  v29 = v27;
  v22 = HUF_writeCTable_wksp((a5 + 4), 0x80uLL, __dst, v38, v22, (a6 + 1024), v28);
  if (v25)
  {
    v30 = HUF_estimateCompressedSize(__src, a6, v38);
    if (v30 < v19 && (v22 + 12 >= v19 || v30 <= v22 + v29))
    {
      memcpy(__dst, __src, 0x810uLL);
      v23 = 3;
      goto LABEL_39;
    }
  }

  if (v22 + v29 >= v19)
  {
    memcpy(__dst, __src, 0x810uLL);
    v23 = 0;
LABEL_39:
    a7 = v36;
    goto LABEL_26;
  }

  *a5 = 2;
  *(__dst + 514) = 1;
  *(a5 + 136) = v22;
  a7 = v36;
  if (v22 > 0xFFFFFFFFFFFFFF88)
  {
    return v22;
  }

LABEL_27:
  v31 = a1[1] - *a1;
  if (v31)
  {
    ZSTD_buildSequencesStatistics(a1, v31 >> 3, (__src + 2064), (__dst + 258), (a5 + 156), a5 + 289, a4[7], a6, &v38, a6 + 212, a7 - 212);
    v31 = v40;
    if (v40 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_32;
    }

    v32 = v38;
    v33 = v39;
    v34 = v41;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    *(__dst + 1401) = 0;
    v32 = 0;
    __dst[701] = 0;
  }

  *(a5 + 144) = v32;
  *(a5 + 152) = v33;
  *(a5 + 304) = v34;
LABEL_32:
  *(a5 + 296) = v31;
  if (v31 >= 0xFFFFFFFFFFFFFF89)
  {
    return v31;
  }

  else
  {
    return 0;
  }
}

uint64_t ZSTD_compressContinue_internal(uint64_t a1, char *a2, unint64_t a3, char *__src, size_t __n, int a6, int a7)
{
  if (!*a1)
  {
    return -60;
  }

  v11 = a2;
  v13 = a3;
  v14 = 0;
  if (a6 && *a1 == 1)
  {
    v15 = ZSTD_writeFrameHeader(a2, a3, (a1 + 192), *(a1 + 632) - 1, *(a1 + 544));
    v14 = v15;
    if (v15 > 0xFFFFFFFFFFFFFF88)
    {
      return v14;
    }

    v13 -= v15;
    v11 += v15;
    *a1 = 2;
  }

  if (!__n)
  {
    return v14;
  }

  v89 = (a1 + 3088);
  v16 = *(a1 + 3088);
  if (*(a1 + 3208))
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 == __src;
  }

  v18 = !v17;
  if (v17)
  {
    v19 = *(a1 + 3104);
    v21 = *(a1 + 3116);
    LODWORD(v20) = *(a1 + 3112);
  }

  else
  {
    v19 = *(a1 + 3096);
    v20 = &v16[-v19];
    v21 = *(a1 + 3112);
    *(a1 + 3116) = v21;
    *(a1 + 3112) = v20;
    *(a1 + 3104) = v19;
    *(a1 + 3096) = __src - v20;
    if (v20 - v21 <= 7)
    {
      *(a1 + 3116) = v20;
      v21 = v20;
    }
  }

  v24 = &__src[__n];
  *v89 = &__src[__n];
  if (&__src[__n] > v19 + v21 && v19 + v20 > __src)
  {
    v26 = &v24[-v19];
    if (v26 > v20)
    {
      LODWORD(v26) = v20;
    }

    *(a1 + 3116) = v26;
  }

  if (v18)
  {
    *(a1 + 3208) = 0;
    *(a1 + 3132) = v20;
  }

  if (*(a1 + 288) == 1)
  {
    v27 = *(a1 + 904);
    if (v27 == __src)
    {
      v28 = *(a1 + 920);
      v30 = *(a1 + 932);
      LODWORD(v29) = *(a1 + 928);
    }

    else
    {
      v28 = *(a1 + 912);
      v29 = &v27[-v28];
      v30 = *(a1 + 928);
      *(a1 + 932) = v30;
      *(a1 + 928) = v29;
      *(a1 + 920) = v28;
      *(a1 + 912) = __src - v29;
      if (v29 - v30 <= 7)
      {
        *(a1 + 932) = v29;
        v30 = v29;
      }
    }

    *(a1 + 904) = v24;
    if (v24 > v28 + v30 && v28 + v29 > __src)
    {
      v31 = &v24[-v28];
      if (v31 > v29)
      {
        LODWORD(v31) = v29;
      }

      *(a1 + 932) = v31;
    }
  }

  if (!a6)
  {
    ZSTD_overflowCorrectIfNeeded(v89, (a1 + 560), (a1 + 192), __src, v24);
    v22 = ZSTD_compressBlock_internal(a1, v11, v13, __src, __n, 0);
    goto LABEL_122;
  }

  v82 = v14;
  v32 = *(a1 + 624);
  v33 = *(a1 + 196);
  if (*(a1 + 228))
  {
    ZSTD_XXH64_update(a1 + 656, __src, __n);
  }

  v34 = 1 << v33;
  v81 = a7;
  v87 = v34;
  v88 = a7 & 1;
  v85 = (a1 + 3968);
  v90 = (a1 + 3888);
  v83 = __n;
  v35 = __n;
  v36 = v11;
  v37 = v13;
  do
  {
    v38 = v88;
    if (v32 < v35)
    {
      v38 = 0;
    }

    v94 = v38;
    if (v37 < 6)
    {
      return -70;
    }

    if (v35 < v32)
    {
      v32 = v35;
    }

    ZSTD_overflowCorrectIfNeeded(v89, (a1 + 560), (a1 + 192), __src, __src + v32);
    v39 = *(a1 + 3096);
    v93 = &__src[v32];
    v40 = *(a1 + 3128);
    if (v40 + v34 < (__src + v32 - v39))
    {
      v40 = 0;
      *(a1 + 3128) = 0;
      *(a1 + 3320) = 0;
    }

    v41 = __src - v39;
    v42 = *(a1 + 3116);
    if (v40 + v34 < v41)
    {
      if (v42 < v41 - v34)
      {
        *(a1 + 3116) = v41 - v34;
        v42 = v41 - v34;
      }

      if (*(a1 + 3112) < v42)
      {
        *(a1 + 3112) = v42;
      }

      *(a1 + 3128) = 0;
      *(a1 + 3320) = 0;
    }

    if (*(a1 + 3132) < v42)
    {
      *(a1 + 3132) = v42;
    }

    if (*(a1 + 248))
    {
      v43 = ZSTD_buildSeqStore(a1, __src, v32);
      v22 = v43;
      if (v43 > 0xFFFFFFFFFFFFFF88)
      {
        return v22;
      }

      if (!v43)
      {
        if (!*(a1 + 816) && *(a1 + 832) - *(a1 + 824) <= 0x1FuLL && *(a1 + 848) - *(a1 + 840) <= 9uLL && ZSTD_isRLE(__src, v32))
        {
          v74 = *__src;
          *v36 = v94 | (8 * v32) | 2;
          v36[2] = v32 >> 13;
          v36[3] = v74;
          v22 = 4;
LABEL_66:
          v45 = *(a1 + 3072);
          if (*(v45 + 5604) == 2)
          {
            *(v45 + 5604) = 1;
          }

          goto LABEL_116;
        }

        v44 = ZSTD_compressSuperBlock(a1, v36, v37, __src, v32, v94);
        if (v44 != -70)
        {
          v22 = v44;
          if (v44 > 0xFFFFFFFFFFFFFF88)
          {
            return v22;
          }

          v49 = *(a1 + 220);
          v50 = v49 <= 7 ? 6 : v49 - 1;
          if (v44 && v44 < v32 - (v32 >> v50) + 1)
          {
            *(a1 + 3072) = vextq_s8(*(a1 + 3072), *(a1 + 3072), 8uLL);
            goto LABEL_66;
          }
        }
      }

      v22 = v32 + 3;
      if (v32 + 3 > v37)
      {
        return -70;
      }

      *v36 = v94 | (8 * v32);
      v36[2] = v32 >> 13;
      memcpy(v36 + 3, __src, v32);
      if (v22 > 0xFFFFFFFFFFFFFF88)
      {
        return v22;
      }

      goto LABEL_66;
    }

    if (*(a1 + 332) != 1)
    {
      v48 = ZSTD_compressBlock_internal(a1, v36 + 3, v37 - 3, __src, v32, 1);
      v22 = v48;
      if (v48 > 0xFFFFFFFFFFFFFF88)
      {
        return v22;
      }

      if (v48 == 1)
      {
        v75 = 2;
        v76 = v32;
LABEL_111:
        *v36 = v75 | v94 | (8 * v76);
        v36[2] = v76 >> 13;
        v22 = v48 + 3;
        goto LABEL_116;
      }

      if (v48)
      {
        v75 = 4;
        v76 = v48;
        goto LABEL_111;
      }

      goto LABEL_76;
    }

    v46 = ZSTD_buildSeqStore(a1, __src, v32);
    v22 = v46;
    if (v46 > 0xFFFFFFFFFFFFFF88)
    {
      return v22;
    }

    if (v46 == 1)
    {
      v47 = *(a1 + 3072);
      if (*(v47 + 5604) == 2)
      {
        *(v47 + 5604) = 1;
      }

LABEL_76:
      v22 = v32 + 3;
      if (v32 + 3 > v37)
      {
        return -70;
      }

      *v36 = v94 | (8 * v32);
      v36[2] = v32 >> 13;
      memcpy(v36 + 3, __src, v32);
      goto LABEL_115;
    }

    v84 = v11;
    v51 = 0;
    v52 = *(a1 + 832) - *(a1 + 824);
    v53 = v52 >> 3;
    v97 = a1 + 3968;
    v98 = 0;
    if ((v52 >> 3) >= 5)
    {
      ZSTD_deriveBlockSplitsHelper(&v97, 0, (v52 >> 3), a1, (a1 + 824));
      v51 = v98;
      *(v97 + 4 * v98) = v53;
    }

    v54 = *(a1 + 3072);
    v97 = *(v54 + 5616);
    LODWORD(v98) = *(v54 + 5624);
    v95 = v97;
    v96 = v98;
    *v90 = 0u;
    *(a1 + 3904) = 0u;
    *(a1 + 3920) = 0u;
    *(a1 + 3936) = 0u;
    *(a1 + 3952) = 0u;
    if (v51)
    {
      v91 = v51;
      ZSTD_deriveSeqStoreChunk(a1 + 3808, (a1 + 824), 0, *v85);
      v22 = 0;
      v55 = 0;
      v92 = 0;
      v80 = v37;
      v56 = v37;
      v57 = v36;
      v86 = v36;
      while (1)
      {
        v58 = ZSTD_countSeqStoreLiteralsBytes(a1 + 3808);
        v59 = *(a1 + 3816);
        v60 = *(a1 + 3808);
        v61 = v59 - v60;
        if (v59 == v60)
        {
          v62 = 0;
        }

        else
        {
          v62 = 0;
          v63 = v61 >> 3;
          v64 = *(a1 + 3884);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v65 = (v60 + 6);
          do
          {
            v66 = *v65;
            v65 += 4;
            v62 += v66 + 3;
            if (!v64 && *(a1 + 3880) == 2)
            {
              v62 += 0x10000;
            }

            --v64;
            --v63;
          }

          while (v63);
        }

        v67 = v62 + v58;
        v68 = v62 + v58 + v92;
        v92 = v68;
        if (v55 == v91)
        {
          v67 = v67 + v32 - v68;
          v69 = v94;
        }

        else
        {
          ZSTD_deriveSeqStoreChunk(v90, (a1 + 824), v85[v55], v85[v55 + 1]);
          v69 = 0;
        }

        v70 = ZSTD_compressSeqStore_singleBlock(a1, (a1 + 3808), &v97, &v95, v57, v56, __src, v67, v69, 1);
        if (v70 > 0xFFFFFFFFFFFFFF88)
        {
          break;
        }

        __src += v67;
        v57 += v70;
        v56 -= v70;
        v22 += v70;
        v71 = *(a1 + 3936);
        *(a1 + 3840) = *(a1 + 3920);
        *(a1 + 3856) = v71;
        *(a1 + 3872) = *(a1 + 3952);
        v72 = *(a1 + 3904);
        *(a1 + 3808) = *v90;
        *(a1 + 3824) = v72;
        ++v55;
        v36 = v86;
        if (v55 > v91)
        {
          v73 = *(a1 + 3072);
          *(v73 + 5616) = v97;
          *(v73 + 5624) = v98;
          v37 = v80;
          goto LABEL_114;
        }
      }

      v22 = v70;
      v37 = v80;
      v36 = v86;
    }

    else
    {
      v22 = ZSTD_compressSeqStore_singleBlock(a1, (a1 + 824), &v97, &v95, v36, v37, __src, v32, v94, 0);
    }

LABEL_114:
    v11 = v84;
LABEL_115:
    if (v22 >= 0xFFFFFFFFFFFFFF89)
    {
      return v22;
    }

LABEL_116:
    v36 += v22;
    v37 -= v22;
    *(a1 + 816) = 0;
    __src = v93;
    v35 -= v32;
    v34 = v87;
  }

  while (v35);
  if (v81 && v36 > v11)
  {
    *a1 = 3;
  }

  v22 = v36 - v11;
  v14 = v82;
  __n = v83;
LABEL_122:
  if (v22 <= 0xFFFFFFFFFFFFFF88)
  {
    v77 = *(a1 + 640) + __n;
    *(a1 + 640) = v77;
    *(a1 + 648) += v22 + v14;
    v78 = *(a1 + 632);
    if (v77 + 1 <= v78 || v78 == 0)
    {
      v22 += v14;
    }

    else
    {
      return -72;
    }
  }

  return v22;
}

uint64_t ZSTD_compressBlock(uint64_t a1, char *a2, unint64_t a3, char *a4, size_t a5)
{
  LODWORD(v5) = 1 << *(a1 + 196);
  if (v5 >= 0x20000)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = v5;
  }

  if (v5 >= a5)
  {
    return ZSTD_compressContinue_internal(a1, a2, a3, a4, a5, 0, 0);
  }

  else
  {
    return -72;
  }
}

uint64_t ZSTD_loadCEntropy(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  memset(v48, 0, 64);
  v8 = a3 + 8;
  *(a1 + 2056) = 1;
  v41 = 31;
  LODWORD(v42) = 255;
  v40 = 1;
  v9 = HUF_readCTable(a1, &v42, (a3 + 8), a4 - 8, &v40);
  if (!v40)
  {
    *(a1 + 2056) = 2;
  }

  if (v9 < 0xFFFFFFFFFFFFFF89 && v42 > 0xFE)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v9 < 0xFFFFFFFFFFFFFF89 && v42 > 0xFE)
  {
    v11 = a3 + a4;
    v12 = v8 + v10;
    LODWORD(v42) = 0;
    v13 = FSE_readNCount(v48, &v41, &v42, v8 + v10, v11 - (v8 + v10));
    if (v13 <= 0xFFFFFFFFFFFFFF88 && v42 < 9)
    {
      v14 = v13;
      v15 = FSE_buildCTable_wksp((a1 + 2064), v48, 31, v42, a2, 0x2200uLL);
      v16 = v12 + v14;
      v17 = v15 >= 0xFFFFFFFFFFFFFF89 ? v12 : v12 + v14;
      if (v15 <= 0xFFFFFFFFFFFFFF88)
      {
        v46 = 0u;
        memset(v47, 0, sizeof(v47));
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v39 = 0;
        v40 = 52;
        v18 = FSE_readNCount(&v42, &v40, &v39, v16, v11 - v16);
        if (v18 <= 0xFFFFFFFFFFFFFF88 && v39 <= 9)
        {
          v19 = v18;
          if (FSE_buildCTable_wksp((a1 + 2836), &v42, v40, v39, a2, 0x2200uLL) <= 0xFFFFFFFFFFFFFF88)
          {
            if (v40 >= 0x34)
            {
              v21 = 0;
              while (*(&v42 + v21))
              {
                v21 += 2;
                if (v21 == 106)
                {
                  v20 = 2;
                  goto LABEL_22;
                }
              }
            }

            v20 = 1;
LABEL_22:
            *(a1 + 5608) = v20;
            v22 = v17 + v19;
            *&v46 = 0;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v39 = 0;
            v40 = 35;
            v23 = FSE_readNCount(&v42, &v40, &v39, v22, v11 - v22);
            if (v23 <= 0xFFFFFFFFFFFFFF88 && v39 <= 9)
            {
              v24 = v23;
              if (FSE_buildCTable_wksp((a1 + 4288), &v42, v40, v39, a2, 0x2200uLL) <= 0xFFFFFFFFFFFFFF88)
              {
                if (v40 >= 0x23)
                {
                  v26 = 0;
                  while (*(&v42 + v26))
                  {
                    v26 += 2;
                    if (v26 == 72)
                    {
                      v25 = 2;
                      goto LABEL_31;
                    }
                  }
                }

                v25 = 1;
LABEL_31:
                *(a1 + 5612) = v25;
                v27 = (v22 + v24);
                v28 = v22 + v24 + 12;
                if (v28 <= v11)
                {
                  *(a1 + 5616) = *v27;
                  *(a1 + 5620) = v27[1];
                  *(a1 + 5624) = v27[2];
                  v31 = __clz(v11 - v28 + 0x20000) ^ 0x1F;
                  if (v11 - v28 >= 0xFFFE0000)
                  {
                    v31 = 31;
                  }

                  if (v41 >= v31)
                  {
                    v33 = v31 + 1;
                    v34 = v48;
                    while (*v34++)
                    {
                      if (!--v33)
                      {
                        v32 = 2;
                        goto LABEL_42;
                      }
                    }
                  }

                  v32 = 1;
LABEL_42:
                  v36 = 0;
                  *(a1 + 5604) = v32;
                  while (1)
                  {
                    v37 = *(a1 + 5616 + v36);
                    if (!v37 || v11 - v28 < v37)
                    {
                      break;
                    }

                    v36 += 4;
                    if (v36 == 12)
                    {
                      result = v28 - a3;
                      goto LABEL_33;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  result = -30;
LABEL_33:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_compressBegin_internal(uint64_t a1, _DWORD *a2, unint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8, int a9)
{
  if (!a6)
  {
    v13 = a3;
    result = ZSTD_resetCCtx_internal(a1, a7, a8, a3, 0, a9);
    if (result >= 0xFFFFFFFFFFFFFF89)
    {
      return result;
    }

    result = ZSTD_compress_insertDictionary(*(a1 + 3072), (a1 + 3088), a1 + 904, (a1 + 560), (a1 + 192), a2, v13, a4, a5, *(a1 + 3368));
LABEL_26:
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    *(a1 + 544) = result;
    *(a1 + 552) = v13;
    return 0;
  }

  v13 = *(a6 + 8);
  if (!v13 || a8 >= 0x20000 && a8 != -1 && 6 * v13 <= a8 && *(a6 + 6036) || (v14 = *(a7 + 68), v14 == 3))
  {
    result = ZSTD_resetCCtx_internal(a1, a7, a8, *(a6 + 8), 0, a9);
    if (result >= 0xFFFFFFFFFFFFFF89)
    {
      return result;
    }

    result = ZSTD_compress_insertDictionary(*(a1 + 3072), (a1 + 3088), a1 + 904, (a1 + 560), (a1 + 192), *a6, *(a6 + 8), *(a6 + 16), a5, *(a1 + 3368));
    goto LABEL_26;
  }

  v15 = *(a6 + 220);
  v16 = *(a6 + 360);
  if (v15)
  {
    goto LABEL_6;
  }

  if (a8 == -1 || attachDictSizeCutoffs[v16] >= a8)
  {
    if (v14 == 2)
    {
LABEL_34:
      v32 = *(a7 + 128);
      v33 = *(a7 + 144);
      v34 = *(a7 + 96);
      v56 = *(a7 + 112);
      v57 = v32;
      v35 = *(a7 + 160);
      v58 = v33;
      v59 = v35;
      v36 = *(a7 + 64);
      v37 = *(a7 + 80);
      v38 = *(a7 + 32);
      v52 = *(a7 + 48);
      v53 = v36;
      v54 = v37;
      v55 = v34;
      v39 = *(a7 + 16);
      *v50 = *a7;
      *&v50[16] = v39;
      v40 = *&v50[4];
      *&v50[4] = *(a6 + 336);
      *&v50[16] = *(a6 + 348);
      v51 = v38;
      *&v50[4] = v40;
      LODWORD(v58) = *(a6 + 6040);
      result = ZSTD_resetCCtx_internal(a1, v50, a8, 0, 1, a9);
      if (result > 0xFFFFFFFFFFFFFF88)
      {
        return result;
      }

      *(a1 + 592) = *(a1 + 576);
      v41 = *(a6 + 360);
      if (v41 == 1 || (v41 - 3) <= 2 && *(a6 + 6040) == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = 4 << *(a6 + 340);
      }

      v43 = *(a6 + 344);
      memcpy(*(a1 + 3184), *(a6 + 192), 4 << v43);
      v44 = *(a1 + 220);
      if (v44 != 1 && ((v44 - 3) > 2 || *(a1 + 336) != 1))
      {
        memcpy(*(a1 + 3200), *(a6 + 208), v42);
      }

      if ((*(a6 + 360) - 6) >= 0xFFFFFFFD && *(a6 + 6040) == 1)
      {
        memcpy(*(a1 + 3144), *(a6 + 152), 2 << v43);
      }

      v45 = *(a1 + 3136);
      if (v45)
      {
        v46 = 4 << v45;
      }

      else
      {
        v46 = 0;
      }

      bzero(*(a1 + 3192), v46);
      v47 = *(a1 + 584);
      if (*(a1 + 592) < v47)
      {
        *(a1 + 592) = v47;
      }

      v48 = *(a6 + 96);
      v49 = *(a6 + 112);
      *(a1 + 3120) = *(a6 + 128);
      *(a1 + 3088) = v48;
      *(a1 + 3104) = v49;
      *(a1 + 3128) = *(a6 + 136);
      goto LABEL_53;
    }
  }

  else if (v14 != 1)
  {
    goto LABEL_34;
  }

  if (*(a7 + 48))
  {
    goto LABEL_34;
  }

LABEL_6:
  v17 = *(a7 + 144);
  v57 = *(a7 + 128);
  v58 = v17;
  v59 = *(a7 + 160);
  v18 = *(a7 + 80);
  v53 = *(a7 + 64);
  v54 = v18;
  v19 = *(a7 + 112);
  v55 = *(a7 + 96);
  v56 = v19;
  v20 = *(a7 + 16);
  *v50 = *a7;
  *&v50[16] = v20;
  v21 = *(a7 + 48);
  v51 = *(a7 + 32);
  v52 = v21;
  v22 = *&v50[4];
  v23 = *(a6 + 344) - 2;
  if (v23 <= 6)
  {
    v23 = 6;
  }

  if (v16 - 3 >= 3 || v15 == 0)
  {
    v25 = *(a6 + 344);
  }

  else
  {
    v25 = v23;
  }

  v60 = *(a6 + 336);
  v61 = v25;
  v62 = *(a6 + 348);
  v63 = *(a6 + 356);
  v64 = v16;
  ZSTD_adjustCParams_internal(&v60, a8, v13, 1, &v50[4]);
  v26 = *(a6 + 6040);
  *&v50[4] = v22;
  LODWORD(v58) = v26;
  result = ZSTD_resetCCtx_internal(a1, v50, a8, 0, 0, a9);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v28 = *(a6 + 96) - *(a6 + 104);
    if (*(a6 + 120) != v28)
    {
      *(a1 + 3320) = a6 + 96;
      v29 = *(a1 + 3112);
      if (v29 < v28)
      {
        *(a1 + 3088) = *(a1 + 3096) + v28;
        *(a1 + 3116) = v28;
        *(a1 + 3112) = v28;
        v29 = v28;
      }

      *(a1 + 3128) = v29;
    }

LABEL_53:
    *(a1 + 544) = *(a6 + 6032);
    *(a1 + 552) = *(a6 + 8);
    memcpy(*(a1 + 3072), (a6 + 376), 0x1600uLL);
    return 0;
  }

  return result;
}

unint64_t ZSTD_compressEnd(uint64_t a1, char *a2, unint64_t a3, char *a4, size_t a5)
{
  result = ZSTD_compressContinue_internal(a1, a2, a3, a4, a5, 1, 1);
  v9 = result;
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  v10 = *a1;
  if (!*a1)
  {
    return -60;
  }

  v11 = &a2[result];
  v12 = a3 - result;
  if (v10 == 3)
  {
    v14 = v11;
  }

  else
  {
    if (v10 == 1)
    {
      result = ZSTD_writeFrameHeader(v11, v12, (a1 + 192), 0, 0);
      if (result > 0xFFFFFFFFFFFFFF88)
      {
        return result;
      }

      v12 -= result;
      v13 = &v11[result];
      *a1 = 2;
    }

    else
    {
      v13 = v11;
    }

    if (v12 < 4)
    {
      return -70;
    }

    *v13 = 1;
    v14 = v13 + 3;
    v12 -= 3;
  }

  if (!*(a1 + 228))
  {
    goto LABEL_16;
  }

  v15 = ZSTD_XXH64_digest((a1 + 656));
  if (v12 < 4)
  {
    return -70;
  }

  *v14 = v15;
  v14 += 4;
LABEL_16:
  *a1 = 0;
  result = v14 - v11;
  if ((v14 - v11) <= 0xFFFFFFFFFFFFFF88)
  {
    v16 = *(a1 + 632);
    if (v16 && v16 != *(a1 + 640) + 1)
    {
      return -72;
    }

    else
    {
      result += v9;
    }
  }

  return result;
}

unint64_t ZSTD_sizeof_matchState(int *a1, int a2, int a3, int a4)
{
  v4 = a1[6];
  if ((!a3 || a4) && (v4 == 1 || a2 == 1 && v4 - 3 < 3))
  {
    v5 = 0;
  }

  else
  {
    v5 = 4 << a1[1];
  }

  v6 = a1[2];
  if (a4 && a1[4] == 3)
  {
    v7 = *a1;
    if (*a1 >= 0x11)
    {
      v7 = 17;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 >= 6;
  v9 = v4 - 6;
  v10 = v9 == 0 || !v8 || a4 == 0;
  v11 = 64;
  if (!v10)
  {
    v11 = 149248;
  }

  v12 = v9 >= 0xFFFFFFFD && a2 == 1;
  v13 = ((2 << v6) + 63) & 0xFFFFFFFFFFFFFFC0;
  v14 = 4 << v6;
  if (!v12)
  {
    v13 = 0;
  }

  if (v7)
  {
    v15 = 4 << v7;
  }

  else
  {
    v15 = 0;
  }

  return v11 + v5 + v14 + v13 + v15;
}

unint64_t ZSTD_createCDict_advanced(const void *a1, unint64_t a2, int a3, int a4, _OWORD *a5, __int128 *a6)
{
  memset(v9, 0, sizeof(v9));
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *(v9 + 4) = *a5;
  v9[1] = *(a5 + 12);
  v10 = 0u;
  LODWORD(v10) = 1;
  v18 = *a6;
  v19 = *(a6 + 2);
  v7 = *a6;
  v8 = *(a6 + 2);
  return ZSTD_createCDict_advanced2(a1, a2, a3, a4, v9, &v7);
}

unint64_t ZSTD_createCDict_advanced2(const void *a1, unint64_t a2, int a3, int a4, _OWORD *a5, uint64_t *a6)
{
  v6 = a5[9];
  v51 = a5[8];
  v52 = v6;
  v53 = a5[10];
  v7 = a5[5];
  v47 = a5[4];
  v48 = v7;
  v8 = a5[7];
  v49 = a5[6];
  v50 = v8;
  v9 = a5[1];
  *v44 = *a5;
  *&v44[16] = v9;
  v10 = a5[3];
  v11 = *a6;
  v12 = a6[1];
  v13 = *a6 == 0;
  v45 = a5[2];
  v46 = v10;
  if ((v13 ^ (v12 == 0)))
  {
    return 0;
  }

  v19 = DWORD2(v50);
  if (DWORD2(v50))
  {
    memset(v34, 0, 28);
    ZSTD_getCParams_internal(SHIDWORD(v45), 0, a2, 2, v34);
    v20 = *&v34[24];
    if ((*&v34[24] - 3) >= 3)
    {
      v21 = *&v34[8];
    }

    else
    {
      v21 = *&v34[8] + 2;
    }

    v22.i64[0] = *v34;
    v22.i32[2] = v21;
    v22.i32[3] = *(v34 | 0xC);
    v23 = vbslq_s8(vceqzq_s32(*&v44[4]), v22, *&v44[4]);
    v24 = vbsl_s8(vceqz_s32(*&v44[20]), *&v34[16], *&v44[20]);
    if (*&v44[28])
    {
      v20 = *&v44[28];
    }
  }

  else
  {
    ZSTD_getCParamsFromCCtxParams(v44, -1, a2, 2, v34);
    v23 = *v34;
    v24 = *&v34[16];
    v20 = *&v34[24];
  }

  if ((v20 - 6) < 0xFFFFFFFD || (v23.i32[2] > v23.i32[1] ? (v25 = v23.i32[1] >= 0x19u) : (v25 = 1), v25))
  {
    DWORD2(v50) = 0;
    ZSTD_getCParamsFromCCtxParams(v44, -1, a2, 2, v34);
    v19 = 0;
    v23 = *v34;
    v24 = *&v34[16];
    v20 = *&v34[24];
  }

  *&v44[4] = v23;
  *&v44[20] = v24;
  *&v44[28] = v20;
  v26 = v52;
  if (!v52)
  {
    if ((v20 - 6) >= 0xFFFFFFFD)
    {
      if (v23.i32[0] > 0xEu)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }
    }

    else
    {
      v26 = 2;
    }
  }

  LODWORD(v52) = v26;
  *v34 = *&v44[4];
  *&v34[12] = *&v44[16];
  v27 = a6[2];
  matched = ZSTD_sizeof_matchState(v34, v26, v19, 0);
  v29 = ((a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 14752;
  if (a3 == 1)
  {
    v29 = 14752;
  }

  v30 = matched + v29;
  v54 = v11;
  v55 = v12;
  v56 = v27;
  v31 = ZSTD_customMalloc(matched + v29, &v54);
  v32 = v31;
  if (v31)
  {
    v31[4] = v31;
    v31[5] = v31 + v30;
    v31[6] = v31 + 756;
    v31[7] = v31 + 756;
    v31[8] = v31 + 756;
    v31[9] = v31 + v30;
    v31[10] = 0;
    v31[11] = 0;
    v31[751] = v11;
    v31[752] = v12;
    v31[753] = v27;
    *(v31 + 1509) = 0;
    *(v31 + 1510) = v26;
  }

  else
  {
    v54 = v11;
    v55 = v12;
    v56 = v27;
    ZSTD_customFree(0, &v54);
  }

  v41 = v51;
  v42 = v52;
  v43 = v53;
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v40 = v50;
  *v34 = *v44;
  *&v34[16] = *&v44[16];
  v35 = v45;
  v36 = v46;
  if (ZSTD_initCDict_internal(v32, a1, a2, a3, a4, v34) >= 0xFFFFFFFFFFFFFF89)
  {
    ZSTD_freeCDict(v32);
    return 0;
  }

  return v32;
}