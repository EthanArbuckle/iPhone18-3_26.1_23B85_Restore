uint64_t sub_1D119F998(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, __int128 *), uint64_t a5, uint64_t a6)
{
  v121 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v7 = *v121;
    if (*v121)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    goto LABEL_133;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      ++v8;
      goto LABEL_13;
    }

    v12 = *a3;
    v13 = *a3 + 72 * v11;
    v165 = *v13;
    v14 = *(v13 + 16);
    v15 = *(v13 + 32);
    v16 = *(v13 + 48);
    v169 = *(v13 + 64);
    v167 = v15;
    v168 = v16;
    v166 = v14;
    v17 = *(v13 + 48);
    v162 = *(v13 + 32);
    v163 = v17;
    v164 = *(v13 + 64);
    v18 = *(v13 + 16);
    v160 = *v13;
    v161 = v18;
    v19 = (v12 + 72 * v10);
    v170 = *v19;
    v21 = v19[2];
    v20 = v19[3];
    v22 = v19[1];
    v174 = *(v19 + 64);
    v172 = v21;
    v173 = v20;
    v171 = v22;
    v23 = v19[3];
    v157 = v19[2];
    v158 = v23;
    v159 = *(v19 + 64);
    v24 = v19[1];
    v155 = *v19;
    v156 = v24;
    sub_1D1095034(&v165, &v150);
    sub_1D1095034(&v170, &v150);
    v25 = a4(&v160, &v155);
    if (v6)
    {
LABEL_104:
      v147 = v157;
      v148 = v158;
      v149 = v159;
      v145 = v155;
      v146 = v156;
      sub_1D1095108(&v145);
      v152 = v162;
      v153 = v163;
      v154 = v164;
      v150 = v160;
      v151 = v161;
      sub_1D1095108(&v150);
    }

    v26 = v25;
    v147 = v157;
    v148 = v158;
    v149 = v159;
    v145 = v155;
    v146 = v156;
    sub_1D1095108(&v145);
    v152 = v162;
    v153 = v163;
    v154 = v164;
    v150 = v160;
    v151 = v161;
    result = sub_1D1095108(&v150);
    v27 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      v8 = v10 + 2;
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_82;
    }

    v28 = v12 + 72 * v10 + 144;
    while (1)
    {
      v8 = v27;
      v138[0] = *v28;
      v29 = *(v28 + 16);
      v30 = *(v28 + 32);
      v31 = *(v28 + 48);
      v139 = *(v28 + 64);
      v138[2] = v30;
      v138[3] = v31;
      v138[1] = v29;
      v32 = *(v28 + 48);
      v135 = *(v28 + 32);
      v136 = v32;
      v137 = *(v28 + 64);
      v33 = *(v28 + 16);
      v133 = *v28;
      v134 = v33;
      v140 = *(v28 - 72);
      v34 = *(v28 - 40);
      v35 = *(v28 - 24);
      v36 = *(v28 - 56);
      v144 = *(v28 - 8);
      v142 = v34;
      v143 = v35;
      v141 = v36;
      v37 = *(v28 - 56);
      v38 = *(v28 - 24);
      v130 = *(v28 - 40);
      v131 = v38;
      v132 = *(v28 - 8);
      v128 = *(v28 - 72);
      v129 = v37;
      sub_1D1095034(v138, v126);
      sub_1D1095034(&v140, v126);
      v39 = a4(&v133, &v128);
      v124[2] = v130;
      v124[3] = v131;
      v125 = v132;
      v124[0] = v128;
      v124[1] = v129;
      sub_1D1095108(v124);
      v126[2] = v135;
      v126[3] = v136;
      v127 = v137;
      v126[0] = v133;
      v126[1] = v134;
      result = sub_1D1095108(v126);
      if ((v26 ^ v39))
      {
        break;
      }

      v27 = v8 + 1;
      v28 += 72;
      if (v7 == v8 + 1)
      {
        v11 = v8;
        v8 = v7;
        if ((v26 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_82:
        if (v8 >= v10)
        {
          if (v10 <= v11)
          {
            v7 = 72 * v8 - 72;
            v108 = 72 * v10;
            v109 = v8;
            v119 = v10;
            do
            {
              if (v10 != --v109)
              {
                v110 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v111 = v110 + v7;
                v141 = *(v110 + v108 + 16);
                v142 = *(v110 + v108 + 32);
                v143 = *(v110 + v108 + 48);
                v144 = *(v110 + v108 + 64);
                v140 = *(v110 + v108);
                result = memmove((v110 + v108), (v110 + v7), 0x48uLL);
                *(v111 + 16) = v141;
                *(v111 + 32) = v142;
                *(v111 + 48) = v143;
                *(v111 + 64) = v144;
                *v111 = v140;
              }

              ++v10;
              v7 -= 72;
              v108 += 72;
            }

            while (v10 < v109);
            v10 = v119;
          }

          goto LABEL_13;
        }

LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }
    }

    v11 = v8 - 1;
    if (v26)
    {
      goto LABEL_82;
    }

LABEL_13:
    v40 = a3[1];
    if (v8 >= v40)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_123;
    }

    if (v8 - v10 >= a6)
    {
      goto LABEL_136;
    }

    v41 = v10 + a6;
    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v41 >= v40)
    {
      v41 = a3[1];
    }

    if (v41 < v10)
    {
      goto LABEL_126;
    }

    if (v8 == v41)
    {
LABEL_136:
      if (v8 < v10)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v88 = *a3;
      v89 = *a3 + 72 * v8;
      v7 = v10 - v8 + 1;
      v116 = v41;
      do
      {
        v117 = v7;
        v118 = v89;
        while (1)
        {
          v165 = *v89;
          v90 = *(v89 + 16);
          v91 = *(v89 + 32);
          v92 = *(v89 + 48);
          v169 = *(v89 + 64);
          v167 = v91;
          v168 = v92;
          v166 = v90;
          v93 = *(v89 + 48);
          v162 = *(v89 + 32);
          v163 = v93;
          v164 = *(v89 + 64);
          v94 = *(v89 + 16);
          v160 = *v89;
          v161 = v94;
          v170 = *(v89 - 72);
          v95 = *(v89 - 40);
          v96 = *(v89 - 24);
          v97 = *(v89 - 56);
          v174 = *(v89 - 8);
          v172 = v95;
          v173 = v96;
          v171 = v97;
          v98 = *(v89 - 56);
          v99 = *(v89 - 24);
          v157 = *(v89 - 40);
          v158 = v99;
          v159 = *(v89 - 8);
          v155 = *(v89 - 72);
          v156 = v98;
          sub_1D1095034(&v165, &v150);
          sub_1D1095034(&v170, &v150);
          v100 = a4(&v160, &v155);
          if (v6)
          {
            goto LABEL_104;
          }

          v101 = v100;
          v147 = v157;
          v148 = v158;
          v149 = v159;
          v145 = v155;
          v146 = v156;
          sub_1D1095108(&v145);
          v152 = v162;
          v153 = v163;
          v154 = v164;
          v150 = v160;
          v151 = v161;
          result = sub_1D1095108(&v150);
          if ((v101 & 1) == 0)
          {
            break;
          }

          if (!v88)
          {
            goto LABEL_129;
          }

          v102 = v89 - 72;
          v141 = *(v89 + 16);
          v142 = *(v89 + 32);
          v143 = *(v89 + 48);
          v144 = *(v89 + 64);
          v140 = *v89;
          v103 = *(v89 - 24);
          *(v89 + 32) = *(v89 - 40);
          *(v89 + 48) = v103;
          *(v89 + 64) = *(v89 - 8);
          v104 = *(v89 - 56);
          *v89 = *(v89 - 72);
          *(v89 + 16) = v104;
          *v102 = v140;
          v105 = v141;
          v106 = v142;
          v107 = v143;
          *(v102 + 64) = v144;
          *(v102 + 32) = v106;
          *(v102 + 48) = v107;
          *(v102 + 16) = v105;
          if (!v7)
          {
            break;
          }

          ++v7;
          v89 -= 72;
        }

        ++v8;
        v89 = v118 + 72;
        v7 = v117 - 1;
      }

      while (v8 != v116);
      v8 = v116;
      if (v116 < v10)
      {
        goto LABEL_122;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v7 = v10;
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_1D10F7610((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v7;
    *(v45 + 5) = v8;
    v46 = *v121;
    if (!*v121)
    {
      goto LABEL_132;
    }

    if (v43)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v47 = v44 - 1;
    if (v44 >= 4)
    {
      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_109;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_110;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_112;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_115;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_121;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_62;
      }

      goto LABEL_41;
    }

    if (v44 == 3)
    {
      v48 = *(v9 + 4);
      v49 = *(v9 + 5);
      v58 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      v51 = v58;
LABEL_41:
      if (v51)
      {
        goto LABEL_111;
      }

      v64 = &v9[16 * v44];
      v66 = *v64;
      v65 = *(v64 + 1);
      v67 = __OFSUB__(v65, v66);
      v68 = v65 - v66;
      v69 = v67;
      if (v67)
      {
        goto LABEL_114;
      }

      v70 = &v9[16 * v47 + 32];
      v72 = *v70;
      v71 = *(v70 + 1);
      v58 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v58)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v68, v73))
      {
        goto LABEL_118;
      }

      if (v68 + v73 >= v50)
      {
        if (v50 < v73)
        {
          v47 = v44 - 2;
        }

        goto LABEL_62;
      }

      goto LABEL_55;
    }

    v74 = &v9[16 * v44];
    v76 = *v74;
    v75 = *(v74 + 1);
    v58 = __OFSUB__(v75, v76);
    v68 = v75 - v76;
    v69 = v58;
LABEL_55:
    if (v69)
    {
      goto LABEL_113;
    }

    v77 = &v9[16 * v47];
    v79 = *(v77 + 4);
    v78 = *(v77 + 5);
    v58 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if (v58)
    {
      goto LABEL_116;
    }

    if (v80 < v68)
    {
      goto LABEL_3;
    }

LABEL_62:
    v7 = v47 - 1;
    if (v47 - 1 >= v44)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_128;
    }

    v85 = *&v9[16 * v7 + 32];
    v86 = *&v9[16 * v47 + 40];
    sub_1D11A2360((*a3 + 72 * v85), (*a3 + 72 * *&v9[16 * v47 + 32]), (*a3 + 72 * v86), v46, a4);
    if (v6)
    {
    }

    if (v86 < v85)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D1245848(v9);
    }

    if (v7 >= *(v9 + 2))
    {
      goto LABEL_108;
    }

    v87 = &v9[16 * v7];
    *(v87 + 4) = v85;
    *(v87 + 5) = v86;
    v175 = v9;
    result = sub_1D12457BC(v47);
    v9 = v175;
    v44 = *(v175 + 2);
    if (v44 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  result = sub_1D1245848(v9);
  v9 = result;
LABEL_95:
  v175 = v9;
  v112 = *(v9 + 2);
  if (v112 < 2)
  {
  }

  while (*a3)
  {
    v113 = *&v9[16 * v112];
    v114 = *&v9[16 * v112 + 24];
    sub_1D11A2360((*a3 + 72 * v113), (*a3 + 72 * *&v9[16 * v112 + 16]), (*a3 + 72 * v114), v7, a4);
    if (v6)
    {
    }

    if (v114 < v113)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D1245848(v9);
    }

    if (v112 - 2 >= *(v9 + 2))
    {
      goto LABEL_120;
    }

    v115 = &v9[16 * v112];
    *v115 = v113;
    *(v115 + 1) = v114;
    v175 = v9;
    result = sub_1D12457BC(v112 - 1);
    v9 = v175;
    v112 = *(v175 + 2);
    if (v112 <= 1)
    {
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_1D11A0364(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a3;
  v9 = result;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v9 = *v9;
    if (v9)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_95;
    }

    goto LABEL_134;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v133 = result;
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 >= v10)
    {
      v41 = v11 + 1;
    }

    else
    {
      v137 = v12;
      v139 = v10;
      v14 = v11;
      v15 = *v8;
      v16 = (*v8 + 48 * v13);
      v17 = v16[1];
      v18 = v16[2];
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[5];
      v154 = *v16;
      v155 = v17;
      v156 = v18;
      v157 = v19;
      v158 = v20;
      v159 = v21;
      v22 = (v15 + 48 * v14);
      v23 = v22[1];
      v24 = v22[2];
      v25 = v22[3];
      v26 = v22[4];
      v27 = v22[5];
      v148 = *v22;
      v149 = v23;
      v150 = v24;
      v151 = v25;
      v152 = v26;
      v153 = v27;

      v144 = a4(&v154, &v148);
      if (v7)
      {
      }

      v130 = 48 * v14;
      v28 = (v15 + 48 * v14 + 136);
      v135 = v14;
      v29 = v14;
      while (v139 - 2 != v29)
      {
        v30 = *(v28 - 4);
        v31 = *(v28 - 3);
        v32 = *(v28 - 2);
        v33 = *(v28 - 1);
        v34 = *v28;
        v154 = *(v28 - 5);
        v155 = v30;
        v156 = v31;
        v157 = v32;
        v158 = v33;
        v159 = v34;
        v35 = *(v28 - 10);
        v36 = *(v28 - 9);
        v37 = *(v28 - 8);
        v38 = *(v28 - 7);
        v39 = *(v28 - 6);
        v148 = *(v28 - 11);
        v149 = v35;
        v150 = v36;
        v151 = v37;
        v152 = v38;
        v153 = v39;

        v40 = a4(&v154, &v148);

        ++v29;
        v28 += 6;
        if ((v144 ^ v40))
        {
          v41 = v29 + 1;
          goto LABEL_12;
        }
      }

      v29 = v139 - 1;
      v41 = v139;
LABEL_12:
      v8 = a3;
      v11 = v135;
      v12 = v137;
      v9 = v133;
      if ((v144 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v41 < v135)
      {
        goto LABEL_128;
      }

      if (v135 <= v29)
      {
        v112 = 48 * v41 - 24;
        v113 = v130 + 40;
        v114 = v41;
        v115 = v135;
        v7 = 0;
        do
        {
          if (v115 != --v114)
          {
            v116 = *a3;
            if (!*a3)
            {
              goto LABEL_132;
            }

            v117 = (v116 + v113);
            v118 = *(v116 + v113 - 40);
            v119 = v116 + v112;
            v120 = *(v117 - 3);
            v121 = *(v117 - 1);
            v122 = *v117;
            v123 = *(v119 + 8);
            v124 = *(v119 - 8);
            *(v117 - 5) = *(v119 - 24);
            *(v117 - 3) = v124;
            *(v117 - 1) = v123;
            *(v119 - 24) = v118;
            *(v119 - 8) = v120;
            *(v119 + 8) = v121;
            *(v119 + 16) = v122;
          }

          ++v115;
          v112 -= 48;
          v113 += 48;
        }

        while (v115 < v114);
      }

      else
      {
LABEL_15:
        v7 = 0;
      }
    }

    v42 = *(v8 + 8);
    if (v41 >= v42)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v41, v11))
    {
      goto LABEL_124;
    }

    if (v41 - v11 >= a6)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v11 + a6 >= v42)
    {
      v43 = *(v8 + 8);
    }

    else
    {
      v43 = v11 + a6;
    }

    if (v43 < v11)
    {
      goto LABEL_127;
    }

    if (v41 == v43)
    {
LABEL_25:
      v44 = v41;
      if (v41 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v136 = v11;
      v138 = v12;
      v147 = v7;
      v93 = *v8;
      v94 = (*v8 + 48 * v41 - 48);
      v95 = v11 - v41;
      v143 = v43;
      v145 = *v8;
      do
      {
        v140 = v41;
        v96 = (v93 + 48 * v41);
        v97 = *v96;
        v98 = v96[1];
        v99 = v96[2];
        v100 = v96[3];
        v101 = v96[4];
        v102 = v96[5];
        v131 = v95;
        v132 = v94;
        while (1)
        {
          v154 = v97;
          v155 = v98;
          v156 = v99;
          v157 = v100;
          v158 = v101;
          v159 = v102;
          v103 = v94[1];
          v104 = v94[2];
          v105 = v94[3];
          v106 = v94[4];
          v107 = v94[5];
          v148 = *v94;
          v149 = v103;
          v150 = v104;
          v151 = v105;
          v152 = v106;
          v153 = v107;

          v108 = a4(&v154, &v148);
          if (v147)
          {
          }

          v109 = v108;

          if ((v109 & 1) == 0)
          {
            break;
          }

          v93 = v145;
          if (!v145)
          {
            goto LABEL_130;
          }

          v97 = v94[6];
          v98 = v94[7];
          v99 = v94[8];
          v100 = v94[9];
          v101 = v94[10];
          v102 = v94[11];
          v110 = *(v94 + 1);
          *(v94 + 3) = *v94;
          *(v94 + 4) = v110;
          *(v94 + 5) = *(v94 + 2);
          *v94 = v97;
          v94[1] = v98;
          v94[2] = v99;
          v94[3] = v100;
          v94[4] = v101;
          v94[5] = v102;
          v94 -= 6;
          if (__CFADD__(v95++, 1))
          {
            goto LABEL_84;
          }
        }

        v93 = v145;
LABEL_84:
        v41 = v140 + 1;
        v94 = v132 + 6;
        v95 = v131 - 1;
        v44 = v143;
      }

      while (v140 + 1 != v143);
      v7 = 0;
      v8 = a3;
      v11 = v136;
      v12 = v138;
      v9 = v133;
      if (v143 < v136)
      {
        goto LABEL_123;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v45 = v11;
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
    }

    v47 = *(v12 + 16);
    v46 = *(v12 + 24);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_1D10F7610((v46 > 1), v47 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 16) = v48;
    v49 = v12 + 16 * v47;
    *(v49 + 32) = v45;
    *(v49 + 40) = v44;
    v50 = *v9;
    if (!*v9)
    {
      goto LABEL_133;
    }

    v142 = v44;
    if (v47)
    {
      break;
    }

LABEL_3:
    v10 = *(v8 + 8);
    v11 = v142;
    if (v142 >= v10)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v51 = v48 - 1;
    if (v48 >= 4)
    {
      v56 = v12 + 32 + 16 * v48;
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_110;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_111;
      }

      v63 = (v12 + 16 * v48);
      v65 = *v63;
      v64 = v63[1];
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_113;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_116;
      }

      if (v67 >= v59)
      {
        v85 = (v12 + 32 + 16 * v51);
        v87 = *v85;
        v86 = v85[1];
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_122;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v48 == 3)
    {
      v52 = *(v12 + 32);
      v53 = *(v12 + 40);
      v62 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      v55 = v62;
LABEL_45:
      if (v55)
      {
        goto LABEL_112;
      }

      v68 = (v12 + 16 * v48);
      v70 = *v68;
      v69 = v68[1];
      v71 = __OFSUB__(v69, v70);
      v72 = v69 - v70;
      v73 = v71;
      if (v71)
      {
        goto LABEL_115;
      }

      v74 = (v12 + 32 + 16 * v51);
      v76 = *v74;
      v75 = v74[1];
      v62 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v62)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v72, v77))
      {
        goto LABEL_119;
      }

      if (v72 + v77 >= v54)
      {
        if (v54 < v77)
        {
          v51 = v48 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_59;
    }

    v78 = (v12 + 16 * v48);
    v80 = *v78;
    v79 = v78[1];
    v62 = __OFSUB__(v79, v80);
    v72 = v79 - v80;
    v73 = v62;
LABEL_59:
    if (v73)
    {
      goto LABEL_114;
    }

    v81 = v12 + 16 * v51;
    v83 = *(v81 + 32);
    v82 = *(v81 + 40);
    v62 = __OFSUB__(v82, v83);
    v84 = v82 - v83;
    if (v62)
    {
      goto LABEL_117;
    }

    if (v84 < v72)
    {
      goto LABEL_3;
    }

LABEL_66:
    v89 = v51 - 1;
    if (v51 - 1 >= v48)
    {
      break;
    }

    if (!*v8)
    {
      goto LABEL_129;
    }

    v90 = *(v12 + 32 + 16 * v89);
    v91 = *(v12 + 32 + 16 * v51 + 8);
    sub_1D11A2908((*v8 + 48 * v90), (*v8 + 48 * *(v12 + 32 + 16 * v51)), (*v8 + 48 * v91), v50, a4);
    if (v7)
    {
    }

    if (v91 < v90)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D1245848(v12);
    }

    if (v89 >= *(v12 + 16))
    {
      goto LABEL_109;
    }

    v92 = v12 + 16 * v89;
    *(v92 + 32) = v90;
    *(v92 + 40) = v91;
    v160 = v12;
    result = sub_1D12457BC(v51);
    v12 = v160;
    v48 = *(v160 + 16);
    if (v48 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  result = sub_1D1245848(v12);
  v12 = result;
LABEL_95:
  v160 = v12;
  v125 = *(v12 + 16);
  if (v125 < 2)
  {
  }

  while (1)
  {
    v126 = *v8;
    if (!*v8)
    {
      break;
    }

    v8 = *(v12 + 16 * v125);
    v127 = v12;
    v128 = *(v12 + 16 * (v125 - 1) + 32);
    v12 = *(v12 + 16 * (v125 - 1) + 40);
    sub_1D11A2908((v126 + 48 * v8), (v126 + 48 * v128), (v126 + 48 * v12), v9, a4);
    if (v7)
    {
    }

    if (v12 < v8)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_1D1245848(v127);
    }

    if (v125 - 2 >= *(v127 + 2))
    {
      goto LABEL_121;
    }

    v129 = &v127[16 * v125];
    *v129 = v8;
    *(v129 + 1) = v12;
    v160 = v127;
    result = sub_1D12457BC(v125 - 1);
    v12 = v160;
    v125 = *(v160 + 16);
    v8 = a3;
    if (v125 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1D11A0C8C(uint64_t result, uint64_t a2, char *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v108 = result;
  v9 = *(a3 + 1);
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v7 = v8;
    v8 = *v108;
    if (*v108)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_93;
    }

    goto LABEL_131;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v13 >= v9)
    {
      v26 = v13;
    }

    else
    {
      v14 = v12;
      v15 = *v8;
      v16 = (*v8 + 16 * v13);
      v17 = v16[1];
      v115 = *v16;
      v116 = v17;
      v18 = (v15 + 16 * v14);
      v7 = v18[1];
      v113 = *v18;
      v114 = v7;

      v109 = a4(&v115, &v113);
      if (v6)
      {
LABEL_102:
      }

      v19 = v9;
      v20 = 0;
      v100 = v19 - 1;
      v104 = v14;
      v106 = v19;
      v21 = v14 - v19 + 2;
      v22 = 16 * v14;
      v23 = v15 + v22 + 24;
      while (v21 + v20)
      {
        v24 = *(v23 + 16);
        v115 = *(v23 + 8);
        v116 = v24;
        v7 = *v23;
        v113 = *(v23 - 8);
        v114 = v7;

        v25 = a4(&v115, &v113);

        ++v20;
        v23 += 16;
        if ((v109 ^ v25))
        {
          v12 = v104;
          v100 = v104 + v20;
          v26 = v104 + v20 + 1;
          goto LABEL_12;
        }
      }

      v12 = v104;
      v26 = v106;
LABEL_12:
      v8 = a3;
      if (v109)
      {
        if (v26 < v12)
        {
          goto LABEL_125;
        }

        if (v12 <= v100)
        {
          v87 = 0;
          v88 = 16 * v26;
          v89 = v12;
          do
          {
            if (v89 != v26 + v87 - 1)
            {
              v90 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v91 = (v90 + v22);
              v92 = v90 + v88;
              v93 = *v91;
              v94 = v91[1];
              *v91 = *(v92 - 16);
              *(v92 - 16) = v93;
              *(v92 - 8) = v94;
            }

            ++v89;
            --v87;
            v88 -= 16;
            v22 += 16;
          }

          while (v89 < v26 + v87);
        }
      }
    }

    v27 = *(v8 + 1);
    if (v26 >= v27)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v26, v12))
    {
      goto LABEL_121;
    }

    if (v26 - v12 >= a6)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v12, a6))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v28 = v26;
    if (v12 + a6 >= v27)
    {
      v29 = *(v8 + 1);
    }

    else
    {
      v29 = v12 + a6;
    }

    if (v29 < v12)
    {
      goto LABEL_124;
    }

    v30 = v28;
    if (v28 == v29)
    {
      v26 = v28;
LABEL_25:
      if (v26 < v12)
      {
        goto LABEL_120;
      }

      goto LABEL_26;
    }

    v77 = *v8;
    v78 = *v8 + 16 * v28;
    v105 = v12;
    v79 = v12 - v30;
    v111 = v29;
    do
    {
      v107 = v30;
      v80 = (v77 + 16 * v30);
      v81 = *v80;
      v82 = v80[1];
      v99 = v79;
      v101 = v78;
      v83 = v78;
      do
      {
        v115 = v81;
        v116 = v82;
        v7 = *(v83 - 1);
        v113 = *(v83 - 2);
        v114 = v7;

        v84 = a4(&v115, &v113);
        if (v6)
        {
          goto LABEL_102;
        }

        v85 = v84;

        if ((v85 & 1) == 0)
        {
          break;
        }

        if (!v77)
        {
          goto LABEL_127;
        }

        v81 = *v83;
        v82 = v83[1];
        *v83 = *(v83 - 1);
        *(v83 - 1) = v82;
        *(v83 - 2) = v81;
        v83 -= 2;
      }

      while (!__CFADD__(v79++, 1));
      v30 = v107 + 1;
      v78 = v101 + 16;
      v79 = v99 - 1;
      v26 = v111;
    }

    while (v107 + 1 != v111);
    v8 = a3;
    v12 = v105;
    if (v111 < v105)
    {
      goto LABEL_120;
    }

LABEL_26:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v32 = *(v11 + 2);
    v31 = *(v11 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      result = sub_1D10F7610((v31 > 1), v32 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v33;
    v34 = &v11[16 * v32];
    *(v34 + 4) = v12;
    *(v34 + 5) = v26;
    v7 = *v108;
    if (!*v108)
    {
      goto LABEL_130;
    }

    v110 = v26;
    if (v32)
    {
      break;
    }

LABEL_3:
    v9 = *(v8 + 1);
    v10 = v110;
    if (v110 >= v9)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v11[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_107;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_108;
      }

      v47 = &v11[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_110;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_113;
      }

      if (v51 >= v43)
      {
        v69 = &v11[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_119;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v33 == 3)
    {
      v36 = *(v11 + 4);
      v37 = *(v11 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_45:
      if (v39)
      {
        goto LABEL_109;
      }

      v52 = &v11[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v58 = &v11[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_116;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_59;
    }

    v62 = &v11[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_59:
    if (v57)
    {
      goto LABEL_111;
    }

    v65 = &v11[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_114;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_66:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v8)
    {
      goto LABEL_126;
    }

    v74 = *&v11[16 * v73 + 32];
    v75 = *&v11[16 * v35 + 40];
    sub_1D11A338C((*v8 + 16 * v74), (*v8 + 16 * *&v11[16 * v35 + 32]), (*v8 + 16 * v75), v7, a4);
    if (v6)
    {
    }

    if (v75 < v74)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D1245848(v11);
    }

    if (v73 >= *(v11 + 2))
    {
      goto LABEL_106;
    }

    v76 = &v11[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v117 = v11;
    result = sub_1D12457BC(v35);
    v11 = v117;
    v33 = *(v117 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  result = sub_1D1245848(v11);
  v11 = result;
LABEL_93:
  v117 = v11;
  v95 = *(v11 + 2);
  if (v95 < 2)
  {
  }

  while (*v7)
  {
    v96 = *&v11[16 * v95];
    v97 = *&v11[16 * v95 + 24];
    sub_1D11A338C((*v7 + 16 * v96), (*v7 + 16 * *&v11[16 * v95 + 16]), (*v7 + 16 * v97), v8, a4);
    if (v6)
    {
    }

    if (v97 < v96)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D1245848(v11);
    }

    if (v95 - 2 >= *(v11 + 2))
    {
      goto LABEL_118;
    }

    v98 = &v11[16 * v95];
    *v98 = v96;
    *(v98 + 1) = v97;
    v117 = v11;
    result = sub_1D12457BC(v95 - 1);
    v11 = v117;
    v95 = *(v117 + 2);
    if (v95 <= 1)
    {
    }
  }

LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1D11A13AC(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  __srca = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    v12 = 48 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
      a4 = __srca;
    }

    v13 = &a4[v12];
    if (v8 < 48 || v6 >= v5)
    {
LABEL_16:
      v6 = v7;
      goto LABEL_43;
    }

    v63 = &a4[v12];
    v65 = v5;
    while (1)
    {
      v67 = v7;
      v14 = *(v6 + 1);
      v15 = *(v6 + 2);
      v16 = *(v6 + 3);
      v17 = *(v6 + 4);
      v18 = v6;
      v19 = v6[40];
      v78 = *v6;
      v79 = v14;
      v80 = v15;
      v81 = v16;
      v82 = v17;
      v83 = v19;
      v20 = *(a4 + 1);
      v21 = *(a4 + 2);
      v22 = *(a4 + 3);
      v23 = *(a4 + 4);
      __srcb = a4;
      v72 = *a4;
      v24 = a4[40];
      v73 = v20;
      v74 = v21;
      v75 = v22;
      v76 = v23;
      v77 = v24;

      v25 = v84;
      v26 = a5(&v78, &v72);
      v84 = v25;
      if (v25)
      {

        v56 = __srcb;
        v57 = 48 * ((v63 - __srcb) / 48);
        v58 = v67;
        if (v67 >= __srcb && v67 < &__srcb[v57] && v67 == __srcb)
        {
          return 1;
        }

LABEL_47:
        memmove(v58, v56, v57);
        return 1;
      }

      v27 = v26;

      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = v18;
      v6 = v18 + 48;
      v29 = v67;
      a4 = __srcb;
      v13 = v63;
      if (v67 != v18)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 = v29 + 48;
      if (a4 >= v13 || v6 >= v65)
      {
        goto LABEL_16;
      }
    }

    v28 = __srcb;
    a4 = __srcb + 48;
    v29 = v67;
    v6 = v18;
    v13 = v63;
    if (v67 == __srcb)
    {
      goto LABEL_14;
    }

LABEL_13:
    v30 = *v28;
    v31 = *(v28 + 2);
    *(v29 + 1) = *(v28 + 1);
    *(v29 + 2) = v31;
    *v29 = v30;
    goto LABEL_14;
  }

  v32 = 48 * v11;
  if (a4 != __src || &__src[v32] <= a4)
  {
    memmove(a4, __src, 48 * v11);
    a4 = __srca;
  }

  v13 = &a4[v32];
  if (v10 < 48 || v6 <= v7)
  {
    goto LABEL_43;
  }

  v68 = v7;
LABEL_23:
  v66 = v5;
  v33 = 0;
  v34 = v6;
  v35 = v13;
  v60 = v6 - 48;
  v61 = v6;
  v62 = v13;
  while (1)
  {
    v64 = v33;
    v36 = &v35[v33];
    v37 = &v35[v33 - 48];
    v39 = *&v35[v33 - 40];
    v38 = *&v35[v33 - 32];
    v40 = *(v36 - 3);
    v41 = *(v36 - 2);
    v42 = *(v36 - 8);
    v78 = *v37;
    v79 = v39;
    v80 = v38;
    v81 = v40;
    v82 = v41;
    v83 = v42;
    v43 = *(v34 - 5);
    v44 = *(v34 - 4);
    v45 = *(v34 - 3);
    v46 = *(v34 - 2);
    v47 = *(v34 - 8);
    v72 = *(v34 - 6);
    v73 = v43;
    v74 = v44;
    v75 = v45;
    v76 = v46;
    v77 = v47;

    v48 = v84;
    v49 = a5(&v78, &v72);
    v84 = v48;
    if (v48)
    {
      break;
    }

    v50 = v49;

    if (v50)
    {
      v5 = v66 + v64 - 48;
      v6 = v60;
      a4 = __srca;
      if (v66 + v64 != v61)
      {
        v54 = *v60;
        v55 = *(v60 + 2);
        *(v66 + v64 - 32) = *(v60 + 1);
        *(v66 + v64 - 16) = v55;
        *v5 = v54;
      }

      v13 = &v62[v64];
      if (&v62[v64] <= __srca || v60 <= v68)
      {
        v13 = &v62[v64];
        goto LABEL_43;
      }

      goto LABEL_23;
    }

    a4 = __srca;
    v34 = v61;
    if (v66 + v64 != v36)
    {
      v51 = (v66 + v64 - 48);
      v52 = *v37;
      v53 = *(v37 + 32);
      v51[1] = *(v37 + 16);
      v51[2] = v53;
      *v51 = v52;
    }

    v33 = v64 - 48;
    v35 = v62;
    v13 = &v62[v64 - 48];
    if (v13 <= __srca)
    {
      v6 = v61;
LABEL_43:
      v57 = 48 * ((v13 - a4) / 48);
      if (v6 >= a4 && v6 < &a4[v57] && v6 == a4)
      {
        return 1;
      }

      v58 = v6;
      v56 = a4;
      goto LABEL_47;
    }
  }

  v56 = __srca;
  v58 = v61;
  v57 = 48 * ((v62 - __srca + v64) / 48);
  if (v61 < __srca || v61 >= &__srca[v57] || v61 != __srca)
  {
    goto LABEL_47;
  }

  return 1;
}

uint64_t sub_1D11A18FC(char *__dst, char *__src, _OWORD *a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v64 = a5;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 24;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 24;
  if (v10 >= v12)
  {
    if (a4 != __src || &__src[24 * v12] <= a4)
    {
      v28 = a4;
      memmove(a4, __src, 24 * v12);
      a4 = v28;
    }

    v14 = &a4[24 * v12];
    v13 = a4;
    if (v11 >= 24 && v7 > v8)
    {
      v56 = v8;
      v50 = v7;
      v52 = a4;
LABEL_23:
      v29 = 0;
      v7 = v50;
      v30 = v14;
      v50 -= 24;
      v51 = v6;
      v53 = v14;
      __dsta = v7;
      while (1)
      {
        v31 = &v30[v29];
        v32 = &v30[v29 - 24];
        v34 = *&v30[v29 - 16];
        v33 = *&v30[v29 - 8];
        v61 = *v32;
        v62 = v34;
        v63 = v33;
        v35 = *(v7 - 3);
        v36 = *(v7 - 2);
        v37 = *(v7 - 1);
        v58 = v35;
        v59 = v36;
        v60 = v37;

        v38 = v64(&v61, &v58);
        if (v5)
        {
          break;
        }

        v39 = v38;

        if (v39)
        {
          v6 = (v51 + v29 - 24);
          if (v51 + v29 != __dsta)
          {
            v42 = *v50;
            *(v51 + v29 - 8) = *(v50 + 2);
            *v6 = v42;
          }

          v14 = &v53[v29];
          v13 = v52;
          v5 = 0;
          if (&v53[v29] <= v52 || v50 <= v56)
          {
            v14 = &v53[v29];
            v7 = v50;
            goto LABEL_42;
          }

          goto LABEL_23;
        }

        v30 = v53;
        v7 = __dsta;
        if (v51 + v29 != v31)
        {
          v40 = v51 + v29 - 24;
          v41 = *v32;
          *(v40 + 16) = *(v32 + 2);
          *v40 = v41;
        }

        v29 -= 24;
        v14 = &v53[v29];
        v13 = v52;
        if (&v53[v29] <= v52)
        {
          goto LABEL_42;
        }
      }

      v46 = v52;
      v47 = (v53 - v52 + v29) / 24;
      v43 = __dsta;
      if (__dsta < v52 || __dsta >= &v52[24 * v47])
      {
        memmove(__dsta, v52, 24 * v47);
        return 1;
      }

      if (__dsta != v52)
      {
        v45 = 24 * v47;
LABEL_47:
        memmove(v43, v46, v45);
        return 1;
      }

      return 1;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[24 * v10] <= a4)
    {
      memmove(a4, __dst, 24 * v10);
    }

    v14 = &v13[24 * v10];
    if (v9 >= 24 && v7 < v6)
    {
      v57 = &v13[24 * v10];
      while (1)
      {
        v55 = v8;
        v15 = v6;
        v16 = *v7;
        v17 = *(v7 + 1);
        v18 = v7;
        v19 = *(v7 + 2);
        v61 = v16;
        v62 = v17;
        v63 = v19;
        v20 = *(v13 + 1);
        v21 = *(v13 + 2);
        v58 = *v13;
        v59 = v20;
        v60 = v21;

        v22 = v64(&v61, &v58);
        if (v5)
        {
          break;
        }

        v23 = v22;

        if (v23)
        {
          v24 = v18;
          v7 = v18 + 24;
          v25 = v55;
          v26 = v55 == v18;
        }

        else
        {
          v24 = v13;
          v25 = v55;
          v26 = v55 == v13;
          v13 += 24;
          v7 = v18;
        }

        v6 = v15;
        v14 = v57;
        if (!v26)
        {
          v27 = *v24;
          *(v25 + 2) = *(v24 + 2);
          *v25 = v27;
        }

        v8 = v25 + 24;
        if (v13 >= v57 || v7 >= v15)
        {
          goto LABEL_16;
        }
      }

      v43 = v55;
      v44 = (v57 - v13) / 24;
      if (v55 < v13 || v55 >= &v13[24 * v44])
      {
        memmove(v55, v13, 24 * v44);
        return 1;
      }

      if (v55 != v13)
      {
        v45 = 24 * v44;
LABEL_46:
        v46 = v13;
        goto LABEL_47;
      }

      return 1;
    }

LABEL_16:
    v7 = v8;
  }

LABEL_42:
  v48 = (v14 - v13) / 24;
  if (v7 < v13 || v7 >= &v13[24 * v48] || v7 != v13)
  {
    v45 = 24 * v48;
    v43 = v7;
    goto LABEL_46;
  }

  return 1;
}

uint64_t sub_1D11A1DF0(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(__int128 *, __int128 *))
{
  v77 = a5;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 80;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 80;
  if (v10 < v12)
  {
    v13 = __dst;
    if (a4 != __dst || &__dst[80 * v10] <= a4)
    {
      memmove(a4, __dst, 80 * v10);
    }

    v14 = (v6 + 80 * v10);
    if (v9 < 80)
    {
LABEL_6:
      v8 = v13;
      goto LABEL_48;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_6;
      }

      v67 = *v8;
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      v19 = *(v8 + 4);
      v70 = *(v8 + 3);
      v71 = v19;
      v68 = v17;
      v69 = v18;
      memmove(&__dsta, v8, 0x50uLL);
      v72 = *v6;
      v20 = *(v6 + 16);
      v21 = *(v6 + 32);
      v22 = *(v6 + 64);
      v75 = *(v6 + 48);
      v76 = v22;
      v73 = v20;
      v74 = v21;
      memmove(&v57, v6, 0x50uLL);
      sub_1D10932A8(&v67, &v52);
      sub_1D10932A8(&v72, &v52);
      v23 = v77(&__dsta, &v57);
      if (v5)
      {
        v49 = v59;
        v50 = v60;
        v51 = v61;
        v47 = v57;
        v48 = v58;
        sub_1D1093370(&v47);
        v54 = v64;
        v55 = v65;
        v56 = v66;
        v52 = __dsta;
        v53 = v63;
        sub_1D1093370(&v52);
        v42 = &v14[-v6] / 80;
        if (v13 < v6 || v13 >= v6 + 80 * v42 || v13 != v6)
        {
          v41 = 80 * v42;
          v40 = v13;
          goto LABEL_52;
        }

        return 1;
      }

      v24 = v23;
      v49 = v59;
      v50 = v60;
      v51 = v61;
      v47 = v57;
      v48 = v58;
      sub_1D1093370(&v47);
      v54 = v64;
      v55 = v65;
      v56 = v66;
      v52 = __dsta;
      v53 = v63;
      sub_1D1093370(&v52);
      if (v24)
      {
        break;
      }

      v15 = v6;
      v16 = v13 == v6;
      v6 += 80;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v13 += 80;
      if (v6 >= v14)
      {
        goto LABEL_6;
      }
    }

    v15 = v8;
    v16 = v13 == v8;
    v8 += 80;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v13, v15, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[80 * v12] <= a4)
  {
    memmove(a4, __src, 80 * v12);
  }

  v14 = (v6 + 80 * v12);
  if (v11 >= 80)
  {
    v25 = v5;
    if (v8 > __dst)
    {
      v26 = -v6;
      while (2)
      {
        v27 = v25;
        v45 = v8;
        v8 -= 80;
        v28 = &v14[v26];
        v7 -= 80;
        v29 = v14;
        while (1)
        {
          v14 = v29;
          v29 -= 80;
          v67 = *(v14 - 5);
          v30 = *(v14 - 4);
          v31 = *(v14 - 3);
          v32 = *(v14 - 1);
          v70 = *(v14 - 2);
          v71 = v32;
          v68 = v30;
          v69 = v31;
          memmove(&__dsta, v29, 0x50uLL);
          v33 = *(v8 + 3);
          v74 = *(v8 + 2);
          v75 = v33;
          v76 = *(v8 + 4);
          v34 = *(v8 + 1);
          v72 = *v8;
          v73 = v34;
          v59 = v74;
          v60 = v33;
          v61 = v76;
          v57 = v72;
          v58 = v34;
          sub_1D10932A8(&v67, &v52);
          sub_1D10932A8(&v72, &v52);
          v35 = v77(&__dsta, &v57);
          if (v27)
          {
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v47 = v57;
            v48 = v58;
            sub_1D1093370(&v47);
            v54 = v64;
            v55 = v65;
            v56 = v66;
            v52 = __dsta;
            v53 = v63;
            sub_1D1093370(&v52);
            v39 = v28 / 80;
            v40 = v45;
            if (v45 < v6 || v45 >= v6 + 80 * v39)
            {
              memmove(v45, v6, 80 * v39);
              return 1;
            }

            if (v45 == v6)
            {
              return 1;
            }

            v41 = 80 * v39;
            goto LABEL_52;
          }

          v36 = v35;
          v49 = v59;
          v50 = v60;
          v51 = v61;
          v47 = v57;
          v48 = v58;
          sub_1D1093370(&v47);
          v54 = v64;
          v55 = v65;
          v56 = v66;
          v52 = __dsta;
          v53 = v63;
          sub_1D1093370(&v52);
          v37 = v7 + 80;
          if (v36)
          {
            break;
          }

          if (v37 < v14 || v7 >= v14 || v37 != v14)
          {
            memmove(v7, v29, 0x50uLL);
          }

          v28 -= 80;
          v7 -= 80;
          if (v29 <= v6)
          {
            v14 = v29;
            v8 = v45;
            goto LABEL_48;
          }
        }

        if (v37 < v45 || v7 >= v45)
        {
          memmove(v7, v8, 0x50uLL);
          v25 = 0;
          v38 = __dst;
          v26 = -v6;
        }

        else
        {
          v25 = 0;
          v38 = __dst;
          v26 = -v6;
          if (v37 != v45)
          {
            memmove(v7, v8, 0x50uLL);
          }
        }

        if (v14 > v6 && v8 > v38)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_48:
  v43 = &v14[-v6] / 80;
  if (v8 < v6 || v8 >= v6 + 80 * v43 || v8 != v6)
  {
    v41 = 80 * v43;
    v40 = v8;
LABEL_52:
    memmove(v40, v6, v41);
  }

  return 1;
}

uint64_t sub_1D11A2360(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(__int128 *, __int128 *))
{
  v76 = a5;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 72;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 72;
  if (v10 < v12)
  {
    v13 = 72 * v10;
    v14 = __dst;
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, v13);
    }

    v15 = &v6[v13];
    if (v9 < 72)
    {
LABEL_6:
      v8 = v14;
      goto LABEL_48;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_6;
      }

      v66 = *v8;
      v18 = *(v8 + 1);
      v19 = *(v8 + 2);
      v20 = *(v8 + 3);
      v70 = v8[64];
      v68 = v19;
      v69 = v20;
      v67 = v18;
      memmove(&__dsta, v8, 0x41uLL);
      v71 = *v6;
      v21 = *(v6 + 1);
      v22 = *(v6 + 2);
      v23 = *(v6 + 3);
      v75 = v6[64];
      v73 = v22;
      v74 = v23;
      v72 = v21;
      memmove(&v56, v6, 0x41uLL);
      sub_1D1095034(&v66, &v51);
      sub_1D1095034(&v71, &v51);
      v24 = v76(&__dsta, &v56);
      if (v5)
      {
        v48 = v58;
        v49 = v59;
        v50 = v60;
        v46 = v56;
        v47 = v57;
        sub_1D1095108(&v46);
        v53 = v63;
        v54 = v64;
        v55 = v65;
        v51 = __dsta;
        v52 = v62;
        sub_1D1095108(&v51);
        v41 = 72 * ((v15 - v6) / 72);
        if (v14 < v6 || v14 >= &v6[v41] || v14 != v6)
        {
          v42 = v14;
          goto LABEL_52;
        }

        return 1;
      }

      v25 = v24;
      v48 = v58;
      v49 = v59;
      v50 = v60;
      v46 = v56;
      v47 = v57;
      sub_1D1095108(&v46);
      v53 = v63;
      v54 = v64;
      v55 = v65;
      v51 = __dsta;
      v52 = v62;
      sub_1D1095108(&v51);
      if (v25)
      {
        break;
      }

      v16 = v6;
      v17 = v14 == v6;
      v6 += 72;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v14 += 72;
      if (v6 >= v15)
      {
        goto LABEL_6;
      }
    }

    v16 = v8;
    v17 = v14 == v8;
    v8 += 72;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v14, v16, 0x48uLL);
    goto LABEL_9;
  }

  v26 = 72 * v12;
  if (a4 != __src || &__src[v26] <= a4)
  {
    memmove(a4, __src, 72 * v12);
  }

  v15 = &v6[v26];
  if (v11 >= 72)
  {
    v27 = v5;
    if (v8 > __dst)
    {
      v28 = -v6;
      while (2)
      {
        v29 = v27;
        v44 = v8;
        v8 -= 72;
        v30 = &v15[v28];
        v7 -= 72;
        v31 = v15;
        while (1)
        {
          v15 = v31;
          v31 -= 72;
          v66 = *(v15 - 72);
          v32 = *(v15 - 56);
          v33 = *(v15 - 40);
          v34 = *(v15 - 24);
          v70 = *(v15 - 8);
          v68 = v33;
          v69 = v34;
          v67 = v32;
          memmove(&__dsta, v31, 0x41uLL);
          v35 = *(v8 + 3);
          v73 = *(v8 + 2);
          v74 = v35;
          v75 = v8[64];
          v36 = *(v8 + 1);
          v71 = *v8;
          v72 = v36;
          v58 = v73;
          v59 = v35;
          v60 = v75;
          v56 = v71;
          v57 = v36;
          sub_1D1095034(&v66, &v51);
          sub_1D1095034(&v71, &v51);
          v37 = v76(&__dsta, &v56);
          if (v29)
          {
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v46 = v56;
            v47 = v57;
            sub_1D1095108(&v46);
            v53 = v63;
            v54 = v64;
            v55 = v65;
            v51 = __dsta;
            v52 = v62;
            sub_1D1095108(&v51);
            v41 = 72 * (v30 / 72);
            v42 = v44;
            if (v44 < v6 || v44 >= &v6[v41])
            {
              memmove(v44, v6, v41);
            }

            else if (v44 != v6)
            {
              goto LABEL_52;
            }

            return 1;
          }

          v38 = v37;
          v48 = v58;
          v49 = v59;
          v50 = v60;
          v46 = v56;
          v47 = v57;
          sub_1D1095108(&v46);
          v53 = v63;
          v54 = v64;
          v55 = v65;
          v51 = __dsta;
          v52 = v62;
          sub_1D1095108(&v51);
          v39 = v7 + 72;
          if (v38)
          {
            break;
          }

          if (v39 < v15 || v7 >= v15 || v39 != v15)
          {
            memmove(v7, v31, 0x48uLL);
          }

          v30 -= 72;
          v7 -= 72;
          if (v31 <= v6)
          {
            v15 = v31;
            v8 = v44;
            goto LABEL_48;
          }
        }

        if (v39 < v44 || v7 >= v44)
        {
          memmove(v7, v8, 0x48uLL);
          v27 = 0;
          v40 = __dst;
          v28 = -v6;
        }

        else
        {
          v27 = 0;
          v40 = __dst;
          v28 = -v6;
          if (v39 != v44)
          {
            memmove(v7, v8, 0x48uLL);
          }
        }

        if (v15 > v6 && v8 > v40)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_48:
  v41 = 72 * ((v15 - v6) / 72);
  if (v8 < v6 || v8 >= &v6[v41] || v8 != v6)
  {
    v42 = v8;
LABEL_52:
    memmove(v42, v6, v41);
  }

  return 1;
}

uint64_t sub_1D11A2908(char *__dst, char *__src, _OWORD *a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v72 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[48 * v11] <= a4)
    {
      memmove(a4, __src, 48 * v11);
      a4 = v72;
    }

    v12 = &a4[48 * v11];
    if (v10 >= 48 && v6 > v7)
    {
      v70 = v7;
LABEL_23:
      v68 = v5;
      v32 = 0;
      v33 = v6;
      v34 = v12;
      v62 = v6 - 48;
      v63 = v6;
      v64 = v12;
      do
      {
        v66 = v32;
        v35 = &v34[v32];
        v36 = &v34[v32 - 48];
        v38 = *&v34[v32 - 40];
        v37 = *&v34[v32 - 32];
        v40 = *(v35 - 3);
        v39 = *(v35 - 2);
        v41 = *(v35 - 1);
        v80 = *v36;
        v81 = v38;
        v82 = v37;
        v83 = v40;
        v84 = v39;
        v85 = v41;
        v42 = *(v33 - 5);
        v43 = *(v33 - 4);
        v44 = *(v33 - 3);
        v45 = *(v33 - 2);
        v46 = *(v33 - 1);
        v74 = *(v33 - 6);
        v75 = v42;
        v76 = v43;
        v77 = v44;
        v78 = v45;
        v79 = v46;

        v47 = v86;
        v48 = a5(&v80, &v74);
        v86 = v47;
        if (v47)
        {

          v55 = v72;
          v57 = v63;
          v56 = (v64 - v72 + v66) / 48;
          if (v63 < v72)
          {
            goto LABEL_39;
          }

          goto LABEL_37;
        }

        v49 = v48;

        if (v49)
        {
          v5 = (v68 + v66 - 48);
          v6 = v62;
          a4 = v72;
          if (v68 + v66 != v63)
          {
            v53 = *v62;
            v54 = *(v62 + 2);
            *(v68 + v66 - 32) = *(v62 + 1);
            *(v68 + v66 - 16) = v54;
            *v5 = v53;
          }

          v12 = &v64[v66];
          if (&v64[v66] <= v72 || v62 <= v70)
          {
            v12 = &v64[v66];
            goto LABEL_41;
          }

          goto LABEL_23;
        }

        a4 = v72;
        v33 = v63;
        if (v68 + v66 != v35)
        {
          v50 = (v68 + v66 - 48);
          v51 = *v36;
          v52 = *(v36 + 32);
          v50[1] = *(v36 + 16);
          v50[2] = v52;
          *v50 = v51;
        }

        v32 = v66 - 48;
        v34 = v64;
        v12 = &v64[v66 - 48];
      }

      while (v12 > v72);
      v6 = v63;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
      a4 = v72;
    }

    v12 = &a4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      v65 = &a4[48 * v9];
      v67 = v5;
      while (1)
      {
        v69 = v7;
        v13 = *(v6 + 1);
        v14 = *(v6 + 2);
        v15 = *(v6 + 3);
        v16 = *(v6 + 4);
        v17 = *(v6 + 5);
        v18 = v6;
        v80 = *v6;
        v81 = v13;
        v82 = v14;
        v83 = v15;
        v84 = v16;
        v85 = v17;
        v19 = *(a4 + 1);
        v20 = *(a4 + 2);
        v21 = *(a4 + 3);
        v22 = *(a4 + 4);
        v23 = *(a4 + 5);
        v73 = a4;
        v74 = *a4;
        v75 = v19;
        v76 = v20;
        v77 = v21;
        v78 = v22;
        v79 = v23;

        v24 = v86;
        v25 = a5(&v80, &v74);
        v86 = v24;
        if (v24)
        {

          v55 = v73;
          v56 = (v65 - v73) / 48;
          v57 = v69;
          if (v69 < v73)
          {
            goto LABEL_39;
          }

LABEL_37:
          if (v57 >= &v55[48 * v56] || v57 != v55)
          {
LABEL_39:
            v58 = 48 * v56;
            goto LABEL_45;
          }

          return 1;
        }

        v26 = v25;

        if ((v26 & 1) == 0)
        {
          break;
        }

        v27 = v18;
        v6 = v18 + 48;
        v28 = v69;
        a4 = v73;
        v29 = v67;
        if (v69 != v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 = v28 + 48;
        v12 = v65;
        if (a4 >= v65 || v6 >= v29)
        {
          goto LABEL_16;
        }
      }

      v27 = v73;
      a4 = v73 + 48;
      v28 = v69;
      v6 = v18;
      v29 = v67;
      if (v69 == v73)
      {
        goto LABEL_14;
      }

LABEL_13:
      v30 = *v27;
      v31 = *(v27 + 2);
      *(v28 + 1) = *(v27 + 1);
      *(v28 + 2) = v31;
      *v28 = v30;
      goto LABEL_14;
    }

LABEL_16:
    v6 = v7;
  }

LABEL_41:
  v59 = ((v12 - a4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v60 = (v59 >> 3) + (v59 >> 63);
  if (v6 < a4 || v6 >= &a4[48 * v60] || v6 != a4)
  {
    v58 = 48 * v60;
    v57 = v6;
    v55 = a4;
LABEL_45:
    memmove(v57, v55, v58);
  }

  return 1;
}

uint64_t sub_1D11A2E1C(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(__int128 *, __int128 *))
{
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    v12 = a4;
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v13 = &v12[56 * v9];
    v14 = v89;
    if (v8 < 56 || v6 >= v5)
    {
LABEL_16:
      v6 = v7;
      goto LABEL_45;
    }

    v72 = &v12[56 * v9];
    while (1)
    {
      v74 = v7;
      v15 = v5;
      v16 = *(v6 + 2);
      v17 = v6[24];
      v18 = *(v6 + 4);
      v19 = *(v6 + 5);
      v20 = *(v6 + 6);
      v21 = v6;
      v83 = *v6;
      v84 = v16;
      v85 = v17;
      v86 = v18;
      v87 = v19;
      v88 = v20;
      v22 = *(v12 + 2);
      v23 = v12[24];
      v24 = *(v12 + 4);
      v25 = *(v12 + 5);
      v26 = *(v12 + 6);
      v77 = *v12;
      v78 = v22;
      v79 = v23;
      v80 = v24;
      v81 = v25;
      v82 = v26;

      v27 = a5(&v83, &v77);
      if (v14)
      {

        v61 = v74;
        v62 = (v72 - v12) / 56;
        if (v74 < v12 || v74 >= &v12[56 * v62])
        {
          memmove(v74, v12, 56 * v62);
        }

        else if (v74 != v12)
        {
          v63 = 56 * v62;
          goto LABEL_49;
        }

        return 1;
      }

      v28 = v27;

      if ((v28 & 1) == 0)
      {
        break;
      }

      v29 = v21;
      v6 = v21 + 56;
      v30 = v74;
      v5 = v15;
      if (v74 != v21)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 = v30 + 56;
      v13 = v72;
      if (v12 >= v72 || v6 >= v5)
      {
        goto LABEL_16;
      }
    }

    v29 = v12;
    v30 = v74;
    v31 = v74 == v12;
    v12 += 56;
    v6 = v21;
    v5 = v15;
    if (v31)
    {
      goto LABEL_14;
    }

LABEL_13:
    v32 = *v29;
    v33 = *(v29 + 1);
    v34 = *(v29 + 2);
    *(v30 + 6) = *(v29 + 6);
    *(v30 + 1) = v33;
    *(v30 + 2) = v34;
    *v30 = v32;
    goto LABEL_14;
  }

  if (a4 != __src || &__src[56 * v11] <= a4)
  {
    v35 = a4;
    memmove(a4, __src, 56 * v11);
    a4 = v35;
  }

  v13 = &a4[56 * v11];
  v12 = a4;
  if (v10 < 56 || v6 <= v7)
  {
    goto LABEL_45;
  }

  v73 = a4;
  v75 = v7;
LABEL_23:
  v36 = 0;
  v37 = v6;
  v38 = v13;
  v68 = v6 - 56;
  v69 = v5;
  v70 = v13;
  v71 = v6;
  while (1)
  {
    v39 = &v38[v36];
    v40 = &v38[v36 - 56];
    v41 = *&v38[v36 - 40];
    v42 = v38[v36 - 32];
    v43 = *&v38[v36 - 24];
    v44 = *(v39 - 2);
    v45 = *(v39 - 1);
    v83 = *v40;
    v84 = v41;
    v85 = v42;
    v86 = v43;
    v87 = v44;
    v88 = v45;
    v46 = *(v37 - 5);
    v47 = *(v37 - 32);
    v48 = *(v37 - 3);
    v49 = *(v37 - 2);
    v50 = *(v37 - 1);
    v77 = *(v37 - 56);
    v78 = v46;
    v79 = v47;
    v80 = v48;
    v81 = v49;
    v82 = v50;

    v51 = v89;
    v52 = a5(&v83, &v77);
    v89 = v51;
    if (v51)
    {
      break;
    }

    v53 = v52;

    if (v53)
    {
      v6 = v68;
      v5 = v69 + v36 - 56;
      if (v69 + v36 != v71)
      {
        v58 = *v68;
        v59 = *(v68 + 1);
        v60 = *(v68 + 2);
        *(v69 + v36 - 8) = *(v68 + 6);
        *(v69 + v36 - 40) = v59;
        *(v69 + v36 - 24) = v60;
        *v5 = v58;
      }

      v13 = &v70[v36];
      if (&v70[v36] <= v73 || v68 <= v75)
      {
        v13 = &v70[v36];
        goto LABEL_44;
      }

      goto LABEL_23;
    }

    v38 = v70;
    v37 = v71;
    if (v69 + v36 != v39)
    {
      v54 = v69 + v36 - 56;
      v55 = *v40;
      v56 = *(v40 + 16);
      v57 = *(v40 + 32);
      *(v54 + 48) = *(v40 + 48);
      *(v54 + 16) = v56;
      *(v54 + 32) = v57;
      *v54 = v55;
    }

    v36 -= 56;
    v13 = &v70[v36];
    if (&v70[v36] <= v73)
    {
      v6 = v71;
LABEL_44:
      v12 = v73;
LABEL_45:
      v66 = (v13 - v12) / 56;
      if (v6 >= v12 && v6 < &v12[56 * v66] && v6 == v12)
      {
        return 1;
      }

      v63 = 56 * v66;
      v61 = v6;
LABEL_49:
      v64 = v12;
LABEL_50:
      memmove(v61, v64, v63);
      return 1;
    }
  }

  v61 = v71;
  v64 = v73;
  v65 = (v70 - v73 + v36) / 56;
  if (v71 < v73 || v71 >= &v73[56 * v65])
  {
    memmove(v71, v73, 56 * v65);
    return 1;
  }

  if (v71 != v73)
  {
    v63 = 56 * v65;
    goto LABEL_50;
  }

  return 1;
}

uint64_t sub_1D11A338C(char *__dst, char *a2, char *a3, char *__src, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v57 = a5;
  v6 = a3;
  v7 = a2 - __dst;
  v8 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v8 = a2 - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = a2;
    v14 = __src;
    v15 = __dst;
    if (__src != __dst || &__dst[16 * v9] <= __src)
    {
      memmove(__src, __dst, 16 * v9);
    }

    v16 = &v14[16 * v9];
    if (v7 < 16 || v13 >= v6)
    {
LABEL_21:
      a2 = v15;
      goto LABEL_40;
    }

    v17 = v13;
    v52 = &v14[16 * v9];
    while (1)
    {
      v18 = v6;
      v19 = *(v17 + 1);
      v55 = *v17;
      v56 = v19;
      v20 = *(v14 + 1);
      v53 = *v14;
      v54 = v20;

      v21 = v57(&v55, &v53);
      if (v5)
      {

        v43 = v52 - v14 + 15;
        if (v52 - v14 >= 0)
        {
          v43 = v52 - v14;
        }

        v44 = v43 >> 4;
        if (v15 < v14 || v15 >= &v14[v43 & 0xFFFFFFFFFFFFFFF0])
        {
          memmove(v15, v14, 16 * v44);
        }

        else if (v15 != v14)
        {
          v39 = 16 * v44;
          v40 = v15;
LABEL_46:
          v41 = v14;
LABEL_47:
          memmove(v40, v41, v39);
        }

        return 1;
      }

      v22 = v21;

      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = v17;
      v24 = v15 == v17;
      v17 += 16;
      v6 = v18;
      if (!v24)
      {
        goto LABEL_18;
      }

LABEL_19:
      v15 += 16;
      v16 = v52;
      if (v14 >= v52 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v23 = v14;
    v24 = v15 == v14;
    v14 += 16;
    v6 = v18;
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v15 = *v23;
    goto LABEL_19;
  }

  if (__src != a2 || &a2[16 * v12] <= __src)
  {
    v25 = a2;
    v26 = __src;
    memmove(__src, a2, 16 * v12);
    __src = v26;
    a2 = v25;
  }

  __srca = __src;
  v16 = &__src[16 * v12];
  if (v10 < 16 || a2 <= __dst)
  {
    v14 = __src;
    goto LABEL_40;
  }

LABEL_27:
  v50 = v6;
  v27 = 0;
  v28 = v16;
  v48 = a2 - 16;
  while (1)
  {
    v29 = v28;
    v30 = &v28[v27];
    v31 = &v28[v27 - 16];
    v32 = *&v28[v27 - 8];
    v55 = *v31;
    v56 = v32;
    v33 = *(a2 - 1);
    v34 = a2;
    v53 = *(a2 - 2);
    v54 = v33;

    v35 = v57(&v55, &v53);
    if (v5)
    {
      break;
    }

    v36 = v35;

    if (v36)
    {
      v6 = &v50[v27 - 16];
      a2 = v48;
      if (&v50[v27] != v34)
      {
        *v6 = *v48;
      }

      v16 = &v29[v27];
      v14 = __srca;
      if (&v29[v27] <= __srca || v48 <= __dst)
      {
        v16 = &v29[v27];
LABEL_40:
        v37 = v16 - v14;
        v38 = v37 + 15;
        if (v37 >= 0)
        {
          v38 = v37;
        }

        if (a2 < v14 || a2 >= &v14[v38 & 0xFFFFFFFFFFFFFFF0] || a2 != v14)
        {
          v39 = 16 * (v38 >> 4);
          v40 = a2;
          goto LABEL_46;
        }

        return 1;
      }

      goto LABEL_27;
    }

    a2 = v34;
    v28 = v29;
    if (&v50[v27] != v30)
    {
      *&v50[v27 - 16] = *v31;
    }

    v27 -= 16;
    v16 = &v29[v27];
    v14 = __srca;
    if (&v29[v27] <= __srca)
    {
      goto LABEL_40;
    }
  }

  v41 = __srca;
  v45 = v29 - __srca + v27;
  v46 = v45 + 15;
  if (v45 >= 0)
  {
    v46 = v29 - __srca + v27;
  }

  v47 = v46 >> 4;
  if (v34 < __srca || v34 >= &__srca[v46 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v34, __srca, 16 * v47);
  }

  else if (v34 != __srca)
  {
    v39 = 16 * v47;
    v40 = v34;
    goto LABEL_47;
  }

  return 1;
}

uint64_t sub_1D11A37AC(uint64_t a1, void (*a2)(void *__return_ptr, _OWORD *, uint64_t), uint64_t a3, uint64_t (*a4)(BOOL, unint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v48 = MEMORY[0x1E69E7CC0];
    a4(0, v5, 0);
    v41 = v48;
    v7 = a1 + 64;
    result = sub_1D139104C();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v33 = v5;
    v34 = v10;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v36 = v9;
      v13 = *(a1 + 56);
      v14 = (*(a1 + 48) + 48 * v8);
      v16 = v14[1];
      v15 = v14[2];
      v47[0] = *v14;
      v47[1] = v16;
      v47[2] = v15;
      v17 = *(v13 + 8 * v8);
      sub_1D11A3A9C(v47, v42);

      a2(v42, v47, v17);
      v19 = v42[0];
      v18 = v42[1];
      v20 = v42[2];
      v40 = v43;
      v38 = v45;
      v39 = v44;
      v37 = v46;
      sub_1D10ECBE8(v47);

      v21 = v41;
      v48 = v41;
      v23 = *(v41 + 16);
      v22 = *(v41 + 24);
      if (v23 >= v22 >> 1)
      {
        result = a4(v22 > 1, v23 + 1, 1);
        v21 = v48;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 56 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v18;
      *(v24 + 48) = v20;
      *(v24 + 56) = v40;
      *(v24 + 64) = v39;
      *(v24 + 72) = v38;
      *(v24 + 80) = v37;
      v11 = 1 << *(a1 + 32);
      if (v8 >= v11)
      {
        goto LABEL_25;
      }

      v7 = a1 + 64;
      v25 = *(a1 + 64 + 8 * v12);
      if ((v25 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v41 = v21;
      v10 = v34;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v26 = v25 & (-2 << (v8 & 0x3F));
      if (v26)
      {
        v11 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v12 << 6;
        v28 = v12 + 1;
        v29 = (a1 + 72 + 8 * v12);
        while (v28 < (v11 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1D1105004(v8, v34, 0);
            v11 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_1D1105004(v8, v34, 0);
      }

LABEL_4:
      v9 = v36 + 1;
      v8 = v11;
      if (v36 + 1 == v33)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D11A3AF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D11A3C30(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 sub_1D11A3B54@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    goto LABEL_2;
  }

  v4 = a1[2].n128_u64[0];
  v7 = a1[2].n128_i64[1];
  if (!v7)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if (!v3)
  {
LABEL_2:
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v8 = a1;
    v9 = a3;
    v10 = sub_1D11362EC(a1[2].n128_i64[0], v7);
    if (v11)
    {
      v12 = (*(a2 + 56) + 16 * v10);
      v4 = *v12;
      v5 = v12[1];
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    a3 = v9;
    a1 = v8;
  }

LABEL_10:
  v13 = a1[1].n128_u64[0];
  v14 = a1[1].n128_u8[8];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = v13;
  a3[1].n128_u8[8] = v14;
  a3[2].n128_u64[0] = v4;
  a3[2].n128_u64[1] = v5;
  return result;
}

void sub_1D11A3C30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D11A3C8C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D109515C(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

BOOL sub_1D11A3D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E6969770];
  sub_1D11A3C30(0, &qword_1EC60DF40, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v18 - v12;
  v18[2] = a1;
  v18[3] = a2;
  v18[0] = a3;
  v18[1] = a4;
  v14 = sub_1D138D67C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a5, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  sub_1D10940C8();

  v16 = sub_1D1390FFC();
  sub_1D11A3AF8(v13, &qword_1EC60DF40, v10);

  return v16 == -1;
}

BOOL sub_1D11A3EC8(__int128 *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = a1[3];
  v13 = a1[2];
  v14 = v4;
  v15 = *(a1 + 64);
  v5 = a1[1];
  v11 = *a1;
  v12 = v5;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v10 = *(a2 + 64);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return sub_1D114E1FC(v9, v3) == -1;
}

BOOL sub_1D11A3F64(__int128 *a1, __int128 *a2)
{
  v3 = *(v2 + 16);
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a1[4];
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v11[4] = a2[4];
  v8 = *a2;
  v11[1] = a2[1];
  v10[4] = v5;
  v11[0] = v8;
  return sub_1D119C218(v10, v11, v3);
}

BOOL sub_1D11A3FCC(_OWORD *a1, _OWORD *a2)
{
  v3 = *(v2 + 16);
  v4 = a1[1];
  v7[3] = *a1;
  v7[4] = v4;
  v7[5] = a1[2];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  return sub_1D114D138(v7, v3) == -1;
}

uint64_t type metadata accessor for InternalAllHealthRecordsFeedViewController()
{
  result = qword_1EC60C5E0;
  if (!qword_1EC60C5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D11A40DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + qword_1EC60AAB8) healthStore];
  v4 = [v3 profileIdentifier];

  sub_1D139092C();
  v5 = type metadata accessor for HealthRecordsFeedDataSourceProvider();
  v6 = swift_allocObject();
  sub_1D102CC18(&v9, v6 + 16);
  *(v6 + 56) = v4;
  a1[3] = v5;
  result = sub_1D11A4714(&qword_1EC60C5F8, v7, type metadata accessor for HealthRecordsFeedDataSourceProvider);
  a1[4] = result;
  *a1 = v6;
  return result;
}

id sub_1D11A41C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalAllHealthRecordsFeedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D11A4200()
{
  v1 = v0;
  v2 = sub_1D138E35C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  v32[0] = v0;
  v9 = *(v0 + 40);
  v10 = __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v9);
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v14 = sub_1D138D8BC();
  (*(v11 + 8))(v13, v9);
  sub_1D11A46C4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D139E700;
  v16 = *(v1 + 56);
  *(v15 + 32) = v16;
  v17 = type metadata accessor for HealthRecordsFeedDataSourceProvider();
  v19 = sub_1D11A4714(&qword_1EC60C5F0, v18, type metadata accessor for HealthRecordsFeedDataSourceProvider);
  v20 = v16;
  v30 = MEMORY[0x1D3883730](v14, v15, v17, v19);

  sub_1D138E31C();
  v21 = sub_1D138E33C();
  v23 = v22;
  v24 = sub_1D138E2BC();
  v25 = *(*(v24 - 8) + 48);
  if (!v25(v23, 1, v24))
  {
    swift_getKeyPath();
    v31 = [objc_opt_self() absoluteDimension_];
    sub_1D138E2AC();
  }

  v21(v32, 0);
  v26 = sub_1D138E33C();
  if (!v25(v27, 1, v24))
  {
    swift_getKeyPath();
    v31 = [objc_opt_self() absoluteDimension_];
    sub_1D138E2AC();
  }

  v26(v32, 0);
  sub_1D10A5CE8();
  (*(v3 + 16))(v6, v8, v2);
  v28 = sub_1D138E0DC();
  (*(v3 + 8))(v8, v2);
  sub_1D11A4714(&qword_1EC60A0C0, 255, sub_1D10A5CE8);
  return v28;
}

uint64_t sub_1D11A4674()
{
  sub_1D10A5BE4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D139E700;
  *(v0 + 32) = sub_1D11A4200();
  *(v0 + 40) = v1;
  return v0;
}

void sub_1D11A46C4()
{
  if (!qword_1EC60A0A8)
  {
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A0A8);
    }
  }
}

uint64_t sub_1D11A4714(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D11A475C()
{
  v1 = v0;
  v2 = sub_1D138FF3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D108310C();
  *v5 = sub_1D1390A7C();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1D138FF5C();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = *(v1 + 64);
    if (v7)
    {
      v8 = *(v1 + 104);
      v9 = *(v7 + qword_1EC60DC98);
      *(v7 + qword_1EC60DC98) = v8;
      v10 = v8;

      sub_1D122D058(v9);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D11A48BC()
{
  if (qword_1EC608E90 != -1)
  {
    swift_once();
  }

  if (byte_1EC60F770 != 1)
  {
    return 0;
  }

  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for AccountLoginDataSource(0);
  swift_allocObject();
  v3 = v2;

  v4 = sub_1D10A10FC(v3, v1);
  v0[7] = v4;

  return v4;
}

uint64_t sub_1D11A4990()
{
  v1 = v0;
  v2 = *(*(v0 + 24) + 16);
  type metadata accessor for PatientDetailsDataSource();
  swift_allocObject();
  v3 = v2;
  v4 = sub_1D122DF4C(v3);

  v5 = *(v1 + 104);
  v6 = *(v4 + qword_1EC60DC98);
  *(v4 + qword_1EC60DC98) = v5;
  v7 = v5;
  sub_1D122D058(v6);

  *(v1 + 64) = v4;

  return v4;
}

uint64_t sub_1D11A4A44()
{
  v1 = [*(v0 + 16) provenance];
  v2 = [v1 type];

  if (v2)
  {
    return 0;
  }

  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  type metadata accessor for DownloadDetailsDataSource();
  swift_allocObject();
  v6 = v5;

  v7 = sub_1D125794C(v6, v4);
  *(v0 + 72) = v7;

  return v7;
}

uint64_t sub_1D11A4B0C()
{
  v1 = v0;
  if (qword_1EC608E90 != -1)
  {
    swift_once();
  }

  if (byte_1EC60F770 != 1)
  {
    return 0;
  }

  v2 = *(v0 + 16);
  v3 = sub_1D13909CC();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v5 = v1[2];
  v4 = v1[3];
  type metadata accessor for SharingDataSource(0);
  swift_allocObject();
  v6 = v5;

  v1[10] = sub_1D1347DB8(v6, v4);

  v7 = v1[11];
  if (v7)
  {
    sub_1D102CE24(v1[11]);

    v7(v8);
    sub_1D102CC60(v7);
  }

  result = v1[10];
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D11A4C3C(void *a1)
{
  v2 = v1;
  sub_1D11A6AAC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1D138FF3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D108310C();
  *v10 = sub_1D1390A7C();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v11 = sub_1D138FF5C();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = v2[2];
    v2[2] = a1;
    v14 = a1;

    if (v2[4])
    {
      v15 = *(v2[3] + 16);

      v16 = [v15 clinicalSourcesDataProvider];
      sub_1D12F96C8(v14, v16);
    }

    v17 = v2[7];
    v18 = MEMORY[0x1E69E85E0];
    if (v17)
    {
      v19 = sub_1D13905DC();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      sub_1D13905AC();
      swift_retain_n();
      v20 = v14;
      v21 = sub_1D139059C();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = v18;
      v22[4] = v17;
      v22[5] = v20;
      sub_1D107877C(0, 0, v6, &unk_1D139F1F0, v22);
    }

    if (v2[9])
    {

      sub_1D1257FAC(v14);
    }

    if (v2[10])
    {

      sub_1D13490BC(v14);
    }

    v23 = sub_1D13905DC();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    sub_1D13905AC();

    v24 = sub_1D139059C();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v18;
    v25[4] = v2;
    sub_1D107877C(0, 0, v6, &unk_1D13A6B70, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D11A4FD8()
{
  v1 = v0;
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [*(v1 + 16) identifier];
  sub_1D138D5CC();

  v8 = sub_1D138D5AC();
  (*(v3 + 8))(v5, v2);
  v9 = [v6 _privateSourceForClinicalAccountIdentifier_name_];

  v10 = [*(*(v1 + 24) + 16) clinicalSourcesDataProvider];
  aBlock[4] = sub_1D11A6A3C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1139D74;
  aBlock[3] = &block_descriptor_26;
  v11 = _Block_copy(aBlock);

  [v10 fetchAccountOwnerForSource:v9 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1D11A51C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138FECC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D138FF0C();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D108310C();
  v11 = sub_1D1390A7C();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1D11A6A5C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_46;
  v13 = _Block_copy(aBlock);

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D11A6A64(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D11A6AAC(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v16);
}

void sub_1D11A54B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v7 = a2;
    v3 = sub_1D13910DC();
    a2 = v7;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_3:
    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if (v4)
    {
      __break(1u);
    }

    else if ((a2 & 0xC000000000000001) == 0)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v5 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(a2 + 8 * v5 + 32);
        goto LABEL_8;
      }

      __break(1u);
      return;
    }

    v3 = MEMORY[0x1D3886B70](v5, a2);
    goto LABEL_8;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    goto LABEL_3;
  }

LABEL_8:
  v6 = *(a1 + 104);
  *(a1 + 104) = v3;
  v8 = v3;

  sub_1D11A475C();
}

uint64_t sub_1D11A557C()
{

  sub_1D102CC60(*(v0 + 88));

  return v0;
}

uint64_t sub_1D11A55EC()
{
  sub_1D11A557C();

  return swift_deallocClassInstance();
}

uint64_t sub_1D11A5668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1D138F0BC();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_1D13905AC();
  v4[11] = sub_1D139059C();
  v7 = sub_1D139055C();
  v4[12] = v7;
  v4[13] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D11A575C, v7, v6);
}

uint64_t sub_1D11A575C()
{
  v1 = *(v0[7] + 16);
  v0[14] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1D11A5810;

  return ClinicalAccountManager.newerAccount(of:)(v2);
}

uint64_t sub_1D11A5810(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1D11A5A10;
  }

  else
  {
    v8 = v4[14];
    v4[17] = a1;

    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1D11A593C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D11A593C()
{
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = [v1 title];
    v3 = sub_1D139016C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_1D11A5C54(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D11A5A10()
{
  v23 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  sub_1D138F06C();
  v3 = v1;
  v4 = sub_1D138F0AC();
  v5 = sub_1D13907FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 72);
    v20 = *(v0 + 64);
    v21 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *(v0 + 48) = v6;
    v22 = v9;
    *v8 = 136446210;
    v10 = v6;
    sub_1D10FAA88(0, &qword_1EE06B690);
    sub_1D13916AC();
    v11 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v12 = sub_1D13901EC();
    v14 = sub_1D11DF718(v12, v13, &v22);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1D101F000, v4, v5, "Failed to fetch newer accounts: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38882F0](v9, -1, -1);
    MEMORY[0x1D38882F0](v8, -1, -1);

    (*(v7 + 8))(v21, v20);
  }

  else
  {
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D11A5C54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D11A6AAC(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  if (a2)
  {
    v10 = sub_1D138D67C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1D10F90E4(0, &qword_1EE06B080, &qword_1EE06B070);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D139E700;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1D1089930();
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    v12 = qword_1EE06AD00;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_1D138D1CC();
    v15 = v14;
    if (*(v11 + 16))
    {
      v16 = sub_1D139019C();
      v18 = v17;

      sub_1D10CD608(v9);
      v15 = v18;
    }

    else
    {
      v16 = v13;
      sub_1D10CD608(v9);
    }

    v25 = *(v3 + 40);
    if (v25)
    {
      v26 = (v25 + qword_1EC60C170);
      v27 = *(v25 + qword_1EC60C170);
      v28 = *(v25 + qword_1EC60C170 + 8);
      *v26 = v16;
      v26[1] = v15;

      sub_1D1177B48(v27, v28);
      sub_1D1172C9C();

      v29 = *(v3 + 48);
      if (!v29)
      {
        return result;
      }
    }

    else
    {

      v29 = *(v3 + 48);
      if (!v29)
      {
        return result;
      }
    }

    v30 = *(v29 + qword_1EC60C170);
    v31 = *(v29 + qword_1EC60C170 + 8);
    *(v29 + qword_1EC60C170) = xmmword_1D139E800;

    sub_1D1177B48(v30, v31);
    sub_1D1172C9C();
  }

  else
  {
    v19 = *(v3 + 40);
    if (v19)
    {
      v20 = *(v19 + qword_1EC60C170);
      v21 = *(v19 + qword_1EC60C170 + 8);
      *(v19 + qword_1EC60C170) = xmmword_1D139E800;

      sub_1D1177B48(v20, v21);
      sub_1D1172C9C();
    }

    v22 = *(v3 + 48);
    if (v22)
    {
      v23 = *(v22 + qword_1EC60C170);
      v24 = *(v22 + qword_1EC60C170 + 8);
      *(v22 + qword_1EC60C170) = xmmword_1D139E7F0;

      sub_1D1177B48(v23, v24);
      sub_1D1172C9C();
    }
  }

  return result;
}

uint64_t sub_1D11A5FC0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  *(v5 + 16) = result + 1;
  v6 = v5 + 16 * result;
  *(v6 + 32) = a2;
  *(v6 + 40) = a5;
  return result;
}

uint64_t sub_1D11A5FD8(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1D11A6AAC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v9 = sub_1D13905DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D13905AC();
  v10 = a1;

  v11 = sub_1D139059C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v3;
  sub_1D107877C(0, 0, v8, &unk_1D13A6B78, v12);

  sub_1D11A4FD8();
  return v3;
}

uint64_t sub_1D11A6160()
{
  v1 = v0;
  sub_1D1177AD0();
  v62 = v2;
  v64 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v65;
  v4 = *(*(v0 + 24) + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = [v4 clinicalSourcesDataProvider];
  type metadata accessor for AccountSourceDataSource();
  swift_allocObject();
  v8 = sub_1D12F9AAC(v6, v7);

  v1[4] = v8;

  v65[0] = v8;
  v65[1] = MEMORY[0x1E69A3698];
  v9 = v1[2];
  type metadata accessor for DeleteAccountDataSource(0);
  v10 = swift_allocObject();
  v60 = xmmword_1D139E800;
  *(v10 + qword_1EC60C170) = xmmword_1D139E800;
  sub_1D11A6AAC(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  v57 = v11;
  v12 = *(sub_1D138E52C() - 8);
  v58 = *(v12 + 72);
  v56 = *(v12 + 80);
  v50 = (v56 + 32) & ~v56;
  v13 = swift_allocObject();
  v63 = xmmword_1D139E700;
  *(v13 + 16) = xmmword_1D139E700;
  sub_1D10F90E4(0, &qword_1EC60B640, &qword_1EC60F6A0);
  v55 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v63;
  v16 = type metadata accessor for DeleteAccountItem(0);
  swift_allocObject();
  v54 = v5;
  swift_retain_n();
  v17 = v9;
  v18 = sub_1D11777F8(v17, v5);

  *(v15 + 56) = v16;
  v53 = sub_1D11A6A64(&qword_1EC60C600, type metadata accessor for DeleteAccountItem);
  *(v15 + 64) = v53;
  *(v15 + 32) = v18;
  sub_1D138E4DC();
  *(swift_allocObject() + 16) = v60;
  type metadata accessor for DeleteAccountSourceDataSource(0);
  *(swift_allocObject() + qword_1EC60C150) = v60;
  *(v10 + qword_1EC60C168) = sub_1D138EA8C();
  v19 = *MEMORY[0x1E69A35E8];
  v20 = *(v64 + 104);
  v64 += 104;
  v52 = v20;
  v20(v61, v19, v62);

  v21 = sub_1D138E17C();

  v1[5] = v21;

  v51 = sub_1D11A6A64(&qword_1EC60C608, type metadata accessor for DeleteAccountDataSource);
  v65[2] = v21;
  v65[3] = v51;
  v65[4] = sub_1D11A48BC();
  v65[5] = v22;
  v65[6] = sub_1D11A4990();
  v65[7] = MEMORY[0x1E69A3698];
  v23 = v1[2];
  v24 = swift_allocObject();
  v60 = xmmword_1D139E7F0;
  *(v24 + qword_1EC60C170) = xmmword_1D139E7F0;
  *(swift_allocObject() + 16) = v63;
  v25 = swift_allocObject();
  *(v25 + 16) = v63;
  swift_allocObject();
  v26 = v54;

  v27 = v23;
  v28 = sub_1D11777F8(v27, v26);
  v29 = v53;
  *(v25 + 56) = v16;
  *(v25 + 64) = v29;
  *(v25 + 32) = v28;
  sub_1D138E4DC();
  *(swift_allocObject() + 16) = v60;
  *(swift_allocObject() + qword_1EC60C150) = v60;
  *(v24 + qword_1EC60C168) = sub_1D138EA8C();
  v52(v61, *MEMORY[0x1E69A35F0], v62);

  v30 = sub_1D138E17C();

  v1[6] = v30;

  v65[8] = v30;
  v65[9] = v51;
  v65[10] = sub_1D11A4A44();
  v65[11] = v31;
  v65[12] = sub_1D11A4B0C();
  v65[13] = v32;
  result = [objc_opt_self() isAppleInternalInstall];
  v34 = 0;
  v35 = 0;
  if (result)
  {
    v36 = v1[2];
    type metadata accessor for InternalDetailsDataSource(0);
    swift_allocObject();

    v37 = v36;
    v34 = sub_1D125E3E8(v37, v26);

    v35 = MEMORY[0x1E69A35A0];
  }

  v38 = 0;
  v65[14] = v34;
  v65[15] = v35;
  v39 = MEMORY[0x1E69E7CC0];
  v40 = v59;
LABEL_4:
  if (v38 <= 8)
  {
    v41 = 8;
  }

  else
  {
    v41 = v38;
  }

  v42 = v41 + 1;
  v43 = &v40[2 * v38];
  while (1)
  {
    if (v38 == 8)
    {
      sub_1D11A69D0();
      swift_arrayDestroy();
      return v39;
    }

    if (v42 == ++v38)
    {
      break;
    }

    v44 = v43 + 2;
    v45 = *v43;
    v43 += 2;
    if (v45)
    {
      v46 = *(v44 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D10F776C(0, v39[2] + 1, 1, v39);
        v39 = result;
      }

      v48 = v39[2];
      v47 = v39[3];
      if (v48 >= v47 >> 1)
      {
        result = sub_1D10F776C((v47 > 1), v48 + 1, 1, v39);
        v39 = result;
      }

      v39[2] = v48 + 1;
      v49 = &v39[2 * v48];
      v49[4] = v45;
      v49[5] = v46;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroyTm_5()
{
  if ((*(v0 + 24) - 1) >= 2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1D11A69D0()
{
  if (!qword_1EC60ACB0)
  {
    sub_1D10FAA88(255, &qword_1EC60A0A0);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60ACB0);
    }
  }
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D11A6A64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D11A6AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D11A6B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D11A5668(a1, v4, v5, v6);
}

id HKUIMetricColors.init(keyColor:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setKeyColor_];
  v3 = [objc_opt_self() systemLightGrayColor];
  [v2 setContextViewPrimaryTextColor_];

  v4 = [v2 contextViewPrimaryTextColor];
  [v2 setContextViewSecondaryTextColor_];

  return v2;
}

id sub_1D11A6CB4()
{
  swift_getObjCClassMetadata();
  v0 = static HKUIMetricColors.chartFilterDefaultForSingle()();

  return v0;
}

id sub_1D11A6CF8(SEL *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = objc_opt_self();
  v4 = [v3 *a1];
  [v2 setKeyColor_];
  v5 = [v3 labelColor];
  [v2 setContextViewPrimaryTextColor_];

  v6 = [v2 contextViewPrimaryTextColor];
  [v2 setContextViewSecondaryTextColor_];

  return v2;
}

id sub_1D11A6DE4()
{
  swift_getObjCClassMetadata();
  v0 = static HKUIMetricColors.chartFilterDefaultForMultiple()();

  return v0;
}

id sub_1D11A6E1C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v2 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v3) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1132068864;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  [v2 setAdjustsFontForContentSizeCategory_];
  sub_1D10A5C9C(0, &qword_1EE06B560);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139EAB0;
  *(v5 + 32) = sub_1D139016C();
  *(v5 + 40) = v6;
  *(v5 + 48) = 0xD00000000000001ELL;
  *(v5 + 56) = 0x80000001D13A6B70;
  *(v5 + 64) = 0x656C746954;
  *(v5 + 72) = 0xE500000000000000;
  v7 = sub_1D139044C();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  [v2 setAccessibilityIdentifier_];
  return v2;
}

id sub_1D11A6FE4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v2 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v2 setContentHuggingPriority:0 forAxis:v5];
  [v2 setAdjustsFontForContentSizeCategory_];
  sub_1D10A5C9C(0, &qword_1EE06B560);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139EAB0;
  *(v6 + 32) = sub_1D139016C();
  *(v6 + 40) = v7;
  *(v6 + 48) = 0xD00000000000001ELL;
  *(v6 + 56) = 0x80000001D13A6B70;
  *(v6 + 64) = 1702125892;
  *(v6 + 72) = 0xE400000000000000;
  v8 = sub_1D139044C();

  v9 = HKUIJoinStringsForAutomationIdentifier();

  [v2 setAccessibilityIdentifier_];
  return v2;
}

id sub_1D11A71E0()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___dateChevronConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___dateChevronConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___dateChevronConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_chevronView) leadingAnchor];
    v5 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateLabel) trailingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:8.0];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D11A7300(uint64_t *a1, void *a2, SEL *a3, double a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = *&v4[*a1];
  }

  else
  {
    v10 = [*&v4[*a2] *a3];
    v11 = [v4 *a3];
    v12 = [v10 constraintEqualToAnchor:v11 constant:a4];

    v13 = *&v4[v5];
    *&v4[v5] = v12;
    v7 = v12;

    v6 = 0;
  }

  v14 = v6;
  return v7;
}

void sub_1D11A73D0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_viewData);
  swift_beginAccess();
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[4];
    v5 = __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    v6 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = (*(v4 + 24))(v3, v4);
    (*(v6 + 8))(v8, v3);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_headerImage);
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_headerImage) = v9;

  v11 = v2[3];
  if (v11)
  {
    v12 = v2[4];
    v13 = __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    v14 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v13);
    v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = (*(v12 + 8))(v11, v12);
    v19 = v18;
    (*(v14 + 8))(v16, v11);
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_title);
  *v20 = v17;
  v20[1] = v19;

  v21 = v2[3];
  if (!v21 || (v22 = v2[4], v23 = __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]), v24 = *(v21 - 8), MEMORY[0x1EEE9AC00](v23), v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), (*(v24 + 16))(v26), v27 = (*(v22 + 16))(v21, v22), v29 = v28, (*(v24 + 8))(v26, v21), !v29))
  {

    v29 = 0xE100000000000000;
    v27 = 32;
  }

  v30 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateString);
  *v30 = v27;
  v30[1] = v29;

  v31 = v2[3];
  if (v31)
  {
    v32 = v2[4];
    v33 = __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    v34 = *(v31 - 8);
    MEMORY[0x1EEE9AC00](v33);
    v36 = &v39 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v36);
    v37 = (*(v32 + 32))(v31, v32);
    (*(v34 + 8))(v36, v31);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_categoryColor);
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_categoryColor) = v37;

  sub_1D11A7D54();
  sub_1D11A8004();
  sub_1D11A8270();
}

char *sub_1D11A7870(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_minimumViewHeight] = 0x404E000000000000;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_categoryIconImageView;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_titleLabel;
  *&v5[v12] = sub_1D11A6E1C();
  v13 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateLabel;
  *&v5[v13] = sub_1D11A6FE4();
  v14 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_chevronView;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v15 setContentMode_];
  sub_1D106F934(0, &qword_1EE06A540);
  v16 = sub_1D1390CFC();
  [v15 setImage_];

  v17 = [objc_opt_self() tertiaryLabelColor];
  [v15 setTintColor_];

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v18) = 1148846080;
  [v15 setContentHuggingPriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v19];

  *&v5[v14] = v15;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___bottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___dateChevronConstraint] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___dateTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___chevronTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_activeConstraints] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_headerImage] = 0;
  v20 = &v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_title];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateString];
  *v21 = 0;
  v21[1] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_categoryColor] = 0;
  v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_hidesChevron] = 0;
  v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_hidesHeaderSymbolForAccessibilitySizing] = 1;
  v22 = &v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_baseAccessibilityIdentifier];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v5[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_viewData];
  v24 = type metadata accessor for ConceptFeedItemBrowseTitleView();
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v34.receiver = v5;
  v34.super_class = v24;
  v25 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = *&v25[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_titleLabel];
  sub_1D106F934(0, &qword_1EC60E670);
  v27 = sub_1D1390C6C();
  [v26 setFont_];

  v28 = *&v25[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateLabel];
  v29 = sub_1D1390C6C();
  [v28 setFont_];

  [v25 addSubview_];
  [v25 addSubview_];
  [v25 addSubview_];
  [v25 addSubview_];
  sub_1D11A8270();
  sub_1D10BB580(0, &qword_1EC60D0C0, sub_1D107F520);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D139E700;
  v31 = sub_1D138F4EC();
  v32 = MEMORY[0x1E69DC2B0];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  MEMORY[0x1D3886600](v30, sel_traitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_);

  swift_unknownObjectRelease();

  return v25;
}

void sub_1D11A7D54()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_categoryIconImageView];
  [v2 setImage_];
  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1D1390B5C();
  [v2 setHidden_];
  if (*&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_title + 8])
  {
    v5 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_titleLabel];
    sub_1D10BB580(0, &qword_1EC60F520, sub_1D106F814);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E700;
    v7 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v8 = objc_opt_self();

    v9 = v7;
    v10 = [v8 labelColor];
    *(inited + 64) = sub_1D106F934(0, &qword_1EE06B6E0);
    *(inited + 40) = v10;
    sub_1D109B2B4(inited);
    swift_setDeallocating();
    sub_1D11A92F4(inited + 32, sub_1D106F814);
    v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v12 = sub_1D139012C();

    type metadata accessor for Key(0);
    sub_1D106F8DC();
    v13 = sub_1D138FFEC();

    v14 = [v11 initWithString:v12 attributes:v13];

    [v5 setAttributedText_];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_titleLabel] setAttributedText_];

    [v2 setImage_];
  }
}

void sub_1D11A8004()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateLabel);
  sub_1D10BB580(0, &qword_1EC60F520, sub_1D106F814);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  v3 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v4 = objc_opt_self();

  v5 = v3;
  v6 = [v4 secondaryLabelColor];
  *(inited + 64) = sub_1D106F934(0, &qword_1EE06B6E0);
  *(inited + 40) = v6;
  sub_1D109B2B4(inited);
  swift_setDeallocating();
  sub_1D11A92F4(inited + 32, sub_1D106F814);
  v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v8 = sub_1D139012C();

  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v9 = sub_1D138FFEC();

  v10 = [v7 initWithString:v8 attributes:v9];

  [v1 setAttributedText_];
}

void sub_1D11A8270()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_activeConstraints;
  swift_beginAccess();
  v90 = v3;
  sub_1D106F934(0, &qword_1EC609690);

  v4 = sub_1D139044C();

  v89 = v2;
  [v2 deactivateConstraints_];

  v5 = [v1 heightAnchor];
  v6 = [v5 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v7) = 1148829696;
  [v6 setPriority_];
  v8 = sub_1D11A72DC();
  LODWORD(v9) = 1148846080;
  [v8 setPriority_];

  v10 = [v1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  LOBYTE(v10) = sub_1D1390B5C();
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  if (v10)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D139FBC0;
    v13 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_titleLabel];
    v14 = [v13 leadingAnchor];
    v15 = [v1 &selRef_hrui_insurance + 1];
    v16 = [v14 constraintEqualToAnchor:v15 constant:14.0];

    *(v12 + 32) = v16;
    v17 = [v13 topAnchor];
    v18 = [v1 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:8.0];

    *(v12 + 40) = v19;
    v20 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateLabel];
    v21 = [v20 topAnchor];
    v22 = [v13 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:2.0];

    *(v12 + 48) = v23;
    v24 = [v20 leadingAnchor];
    v25 = [v1 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:14.0];

    *(v12 + 56) = v26;
    v27 = [v20 bottomAnchor];
    v28 = [v1 safeAreaLayoutGuide];
    v29 = [v28 bottomAnchor];

    v30 = [v27 constraintEqualToAnchor:v29 constant:-8.0];
    *(v12 + 64) = v30;
    v31 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_chevronView];
    v32 = [v31 leadingAnchor];
    v33 = [v13 trailingAnchor];
    v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:0.0];

    *(v12 + 72) = v34;
    v35 = [v31 leadingAnchor];
    v36 = [v20 trailingAnchor];
    v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36 constant:0.0];

    v38 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___chevronTrailingConstraint];
    *(v12 + 80) = v37;
    *(v12 + 88) = v38;
    v39 = v38;
    v40 = [v31 firstBaselineAnchor];
    v41 = [v13 firstBaselineAnchor];
    v42 = [v40 constraintEqualToAnchor_];

    v43 = v6;
    *(v12 + 96) = v42;
    *(v12 + 104) = v6;
    *&v1[v90] = v12;
    v44 = v6;
  }

  else
  {
    v45 = swift_allocObject();
    v46 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___chevronTrailingConstraint];
    *(v45 + 16) = xmmword_1D13A6B80;
    *(v45 + 32) = v46;
    v47 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_categoryIconImageView];
    v48 = v46;
    v49 = [v47 leadingAnchor];
    v50 = [v1 &selRef_hrui_insurance + 1];
    v51 = [v49 constraintEqualToAnchor:v50 constant:14.0];

    *(v45 + 40) = v51;
    v52 = [v47 centerYAnchor];
    v53 = [v1 &selRef_dequeueReusableCellWithIdentifier_];
    v54 = [v52 constraintEqualToAnchor_];

    *(v45 + 48) = v54;
    v55 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_titleLabel];
    v56 = [v55 &selRef_hrui_insurance + 1];
    v57 = [v47 trailingAnchor];
    v58 = [v56 &selRef:v57 deactivateConstraints:16.0 + 6];

    *(v45 + 56) = v58;
    v59 = [v55 topAnchor];
    v60 = [v1 topAnchor];
    v61 = [v59 &selRef:v60 deactivateConstraints:8.0 + 6];

    *(v45 + 64) = v61;
    v62 = [v55 trailingAnchor];
    v63 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateLabel];
    v64 = [v63 leadingAnchor];
    v65 = [v62 constraintLessThanOrEqualToAnchor:v64 constant:-0.0];

    *(v45 + 72) = v65;
    *(v45 + 80) = sub_1D11A71C0();
    v66 = [v63 topAnchor];
    v67 = [v1 topAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:8.0];

    *(v45 + 88) = v68;
    v69 = [v63 bottomAnchor];
    v70 = [v1 bottomAnchor];
    v71 = [v69 constraintGreaterThanOrEqualToAnchor:v70 constant:-8.0];

    *(v45 + 96) = v71;
    v72 = [v63 leadingAnchor];
    v73 = [v55 trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73 constant:8.0];

    *(v45 + 104) = v74;
    v75 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_chevronView] centerYAnchor];
    v76 = [v63 centerYAnchor];
    v77 = [v75 constraintEqualToAnchor_];

    *(v45 + 112) = v77;
    v43 = v6;
    *(v45 + 120) = sub_1D11A71E0();
    *(v45 + 128) = v6;
    *&v1[v90] = v45;
    v78 = v6;

    v79 = [v47 image];
    if (v79)
    {
      v80 = v79;
      v81 = [v47 widthAnchor];
      v82 = [v47 heightAnchor];
      [v80 size];
      v84 = v83;
      [v80 size];
      v86 = [v81 constraintEqualToAnchor:v82 multiplier:v84 / v85];

      swift_beginAccess();
      v87 = v86;
      MEMORY[0x1D3885D90]();
      if (*((*&v1[v90] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v90] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      swift_endAccess();
    }
  }

  v88 = sub_1D139044C();

  [v89 activateConstraints_];
}

id sub_1D11A8D40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptFeedItemBrowseTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D11A8EC8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_minimumViewHeight) = 0x404E000000000000;
  v2 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_categoryIconImageView;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_titleLabel;
  *(v1 + v4) = sub_1D11A6E1C();
  v5 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateLabel;
  *(v1 + v5) = sub_1D11A6FE4();
  v6 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_chevronView;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v7 setContentMode_];
  sub_1D106F934(0, &qword_1EE06A540);
  v8 = sub_1D1390CFC();
  [v7 setImage_];

  v9 = [objc_opt_self() tertiaryLabelColor];
  [v7 setTintColor_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v10) = 1148846080;
  [v7 setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v11];

  *(v1 + v6) = v7;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___bottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___dateChevronConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___dateTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView____lazy_storage___chevronTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_activeConstraints) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_headerImage) = 0;
  v12 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_title);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateString);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_categoryColor) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_hidesChevron) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_hidesHeaderSymbolForAccessibilitySizing) = 1;
  v14 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_baseAccessibilityIdentifier);
  *v14 = 0;
  v14[1] = 0;
  v15 = v1 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_viewData;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D11A91A8(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    sub_1D11A7D54();
    sub_1D11A8004();

    sub_1D11A8270();
    return;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1D139016C();
  v8 = v7;
  if (v6 != sub_1D139016C() || v8 != v9)
  {
    v11 = sub_1D139162C();

    if (v11)
    {
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D11A92F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for RecordConceptsDataSource()
{
  result = qword_1EC60C6A8;
  if (!qword_1EC60C6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D11A93F0()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D11A94C4()
{
  v2 = v0;
  v3 = sub_1D138FF3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v6 = sub_1D1390A7C();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1D138FF5C();
  v9 = *(v4 + 8);
  v8 = v4 + 8;
  v9(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_24;
  }

  v1 = qword_1EC60C6A0;
  v10 = [*(v2 + qword_1EC60C6A0) conceptNameItems];
  sub_1D106F934(0, &qword_1EC609BE8);
  v3 = sub_1D139045C();

  v8 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v26 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    if (i < 0)
    {
      __break(1u);
LABEL_27:
      sub_1D13904BC();
LABEL_20:
      sub_1D13904FC();
      v14 = v26;
      goto LABEL_21;
    }

    v25 = v2;
    if (v8)
    {
      v13 = sub_1D13910DC();
    }

    else
    {
      v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0;
    v2 = v13 & ~(v13 >> 63);
    while (v2 != v15)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1D3886B70](v15, v3);
      }

      else
      {
        if (v15 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v16 = *(v3 + 8 * v15 + 32);
      }

      v17 = v16;
      sub_1D11A9B20(v15, v16);

      sub_1D13912AC();
      v8 = *(v26 + 16);
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      if (i == ++v15)
      {

        v2 = v25;
        v14 = v26;
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v26 = v14;
  if ([*(v2 + v1) state] == 1)
  {
    sub_1D11A9A48();
    v19 = v18;
    v21 = v20;
    sub_1D114E434(&unk_1F4D04A80);
    type metadata accessor for TitleSubtitleDetailItem(0);
    v22 = swift_allocObject();
    v23 = sub_1D138D5DC();
    v22[2] = 0xD000000000000013;
    v22[3] = 0x80000001D13C0DA0;
    v22[4] = 0xD00000000000001CLL;
    v22[5] = 0x80000001D13C0DC0;
    v22[6] = 0;
    v22[7] = v12;
    v22[8] = v19;
    v22[9] = v21;
    MEMORY[0x1D3885D90](v23);
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_21:
  sub_1D110A398(v14);

  sub_1D138E5AC();
}

uint64_t sub_1D11A9908()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D11A9960@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D138F36C();
  v3 = sub_1D138DE3C();
  swift_allocObject();
  v4 = sub_1D138DE1C();
  a1[3] = v3;
  result = sub_1D10B71CC();
  a1[4] = result;
  *a1 = v4;
  return result;
}

void sub_1D11A9A48()
{
  sub_1D1086E1C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D139E700;
  *(v0 + 32) = sub_1D139016C();
  *(v0 + 40) = v1;

  sub_1D1121FC4(v2);
  v3 = sub_1D139044C();

  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (v4)
  {
    sub_1D139016C();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1D11A9B20(uint64_t a1, void *a2)
{
  sub_1D1086E1C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E710;
  *(inited + 32) = 0x43747065636E6F43;
  *(inited + 40) = 0xEB000000006C6C65;
  *(inited + 48) = sub_1D13915CC();
  *(inited + 56) = v4;
  sub_1D11A9A48();
  v6 = v5;
  v8 = v7;
  swift_setDeallocating();
  swift_arrayDestroy();
  result = [a2 title];
  if (result)
  {
    v10 = result;
    v11 = sub_1D139016C();
    v13 = v12;

    v14 = [a2 subtitle];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1D139016C();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    type metadata accessor for TitleSubtitleDetailItem(0);
    v19 = swift_allocObject();
    sub_1D138D5DC();
    v19[2] = v11;
    v19[3] = v13;
    v20 = MEMORY[0x1E69E7CC0];
    v19[4] = v16;
    v19[5] = v18;
    v19[6] = 0;
    v19[7] = v20;
    v19[8] = v6;
    v19[9] = v8;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HKClinicalAccountStore.requiresOnboardingPublisher()()
{
  sub_1D11A9E0C();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v0;
  sub_1D11AABC0(0, &qword_1EE06A6F8, MEMORY[0x1E695C028]);
  sub_1D11A9E8C();
  v6 = v0;
  sub_1D138F75C();
  sub_1D11A9FAC();
  v7 = sub_1D138F80C();
  (*(v3 + 8))(v5, v2);
  return v7;
}

void sub_1D11A9E0C()
{
  if (!qword_1EE06A6D8)
  {
    sub_1D11AABC0(255, &qword_1EE06A6F8, MEMORY[0x1E695C028]);
    sub_1D11A9E8C();
    v0 = sub_1D138F76C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A6D8);
    }
  }
}

unint64_t sub_1D11A9E8C()
{
  result = qword_1EE06A700;
  if (!qword_1EE06A700)
  {
    sub_1D11AABC0(255, &qword_1EE06A6F8, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06A700);
  }

  return result;
}

uint64_t sub_1D11A9F00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_1D11AABC0(0, &qword_1EE06A6F8, MEMORY[0x1E695C028]);
  swift_allocObject();
  v4 = a1;
  result = sub_1D138F73C();
  *a2 = result;
  return result;
}

unint64_t sub_1D11A9FAC()
{
  result = qword_1EE06A6E0;
  if (!qword_1EE06A6E0)
  {
    sub_1D11A9E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06A6E0);
  }

  return result;
}

uint64_t sub_1D11AA004(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D11AAB6C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1D13905DC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = sub_1D11AA16C;
  v11[6] = v9;

  v12 = a3;
  sub_1D107877C(0, 0, v8, &unk_1D13A6C18, v11);
}

uint64_t sub_1D11AA16C(__int16 a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 0x1FF;
  return v2(&v4);
}

uint64_t sub_1D11AA1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = sub_1D138F0BC();
  v6[38] = v7;
  v6[39] = *(v7 - 8);
  v6[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D11AA270, 0, 0);
}

uint64_t sub_1D11AA270()
{
  v1 = v0[35];
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_1D11AA380;
  v2 = swift_continuation_init();
  sub_1D11AA9C8();
  v0[25] = v3;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D11AAA38;
  v0[21] = &block_descriptor_27;
  v0[22] = v2;
  [v1 deviceConfigurationSupportsHealthRecords_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D11AA380()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1D11AA774;
  }

  else
  {
    v2 = sub_1D11AA490;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D11AA490()
{
  if (*(v0 + 272) == 1)
  {
    v1 = *(v0 + 280);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 336;
    *(v0 + 88) = sub_1D11AA61C;
    v2 = swift_continuation_init();
    sub_1D11AABC0(0, &qword_1EE06A648, MEMORY[0x1E69E86F8]);
    *(v0 + 264) = v3;
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1D11AAB10;
    *(v0 + 232) = &block_descriptor_13_0;
    *(v0 + 240) = v2;
    [v1 hasGatewayBackedHealthRecordsAccountWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }

  else
  {
    (*(v0 + 288))(0);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D11AA61C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D11AA6FC, 0, 0);
}

uint64_t sub_1D11AA6FC()
{
  (*(v0 + 288))((*(v0 + 336) & 1) == 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D11AA774()
{
  v1 = v0[41];
  swift_willThrow();
  sub_1D138F06C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[41];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D101F000, v3, v4, "HKClinicalAccountStore.requiresOnboardingPublisher failed with error: %@", v6, 0xCu);
    sub_1D10B8240(v7);
    MEMORY[0x1D38882F0](v7, -1, -1);
    MEMORY[0x1D38882F0](v6, -1, -1);
  }

  v11 = v0[40];
  v10 = v0[41];
  v12 = v0[38];
  v13 = v0[39];
  v14 = v0[36];

  (*(v13 + 8))(v11, v12);
  v14(0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D11AA900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D108077C;

  return sub_1D11AA1AC(a1, v4, v5, v6, v7, v8);
}

void sub_1D11AA9C8()
{
  if (!qword_1EE06A640)
  {
    type metadata accessor for HKFailableBooleanResult(255);
    sub_1D10922EC();
    v0 = sub_1D139061C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A640);
    }
  }
}

uint64_t sub_1D11AAA38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D10922EC();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1D11AAB10(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

void sub_1D11AAB6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D11AABC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id NSSecureCodingBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1D11ABF64(a1);
  (*(*(*(v2 + 10) - 8) + 8))(a1);
  return v5;
}

id NSSecureCodingBox.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D11ABF64(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

id NSSecureCodingBox.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_1D138F0BC();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v23 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *((v5 & v4) + 0x50);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v21[-v11];
  v13 = [a1 decodeDataObject];
  if (v13)
  {
    v22 = a1;
    v14 = v13;
    v15 = sub_1D138D3DC();
    v17 = v16;

    sub_1D138CE9C();
    swift_allocObject();
    sub_1D138CE8C();
    sub_1D138CE7C();
    sub_1D1083DAC(v15, v17);

    (*(v10 + 32))(&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x68)], v12, v9);
    v18 = type metadata accessor for NSSecureCodingBox();
    v26.receiver = v2;
    v26.super_class = v18;
    v19 = objc_msgSendSuper2(&v26, sel_init);

    return v19;
  }

  else
  {

    type metadata accessor for NSSecureCodingBox();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void sub_1D11AB2AC(void *a1)
{
  v2 = sub_1D138F0BC();
  MEMORY[0x1EEE9AC00](v2);
  sub_1D138CF0C();
  swift_allocObject();
  sub_1D138CEFC();
  v3 = sub_1D138CEEC();
  v5 = v4;

  v6 = sub_1D138D3CC();
  sub_1D1083DAC(v3, v5);
  [a1 encodeDataObject_];
}

void sub_1D11AB5DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D11AB2AC(v4);
}

id NSSecureCodingBox.init(from:)(uint64_t a1)
{
  v3 = v1;
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *(v5 + 0x50);
  v15 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  sub_1D13917EC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for NSSecureCodingBox();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
    v12 = *(v5 + 88);
    sub_1D139163C();
    (*(v15 + 32))(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68), v9, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v11 = type metadata accessor for NSSecureCodingBox();
    v13.receiver = v1;
    v13.super_class = v11;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_1D11AB8EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D139180C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D139164C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

id NSSecureCodingBox.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D11ABAB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D139162C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D11ABB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D11ABAB4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D11ABB74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D1099E60();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D11ABBAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D11ABC00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

id NSSecureCodingBox.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSSecureCodingBox();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D11ABD3C(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v11[1] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v11[0] = *((v5 & v4) + 0x60);
  type metadata accessor for NSSecureCodingBox.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1D139159C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D139181C();
  sub_1D139158C();
  return (*(v7 + 8))(v9, v6);
}

id sub_1D11ABF14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = NSSecureCodingBox.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1D11ABF64(uint64_t a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)], a1, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50));
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NSSecureCodingBox();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D11AC0A4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1D11AC338(void *a1)
{
  v2 = v1;
  v138 = sub_1D138ED7C();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v151 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138E6BC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v132 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v124 - v9;
  v150 = sub_1D138E5EC();
  v11 = *(v150 - 8);
  v12 = MEMORY[0x1EEE9AC00](v150);
  v134 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v140 = &v124 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v124 - v16;
  v18 = [a1 traitCollection];
  v19 = [v18 preferredContentSizeCategory];

  sub_1D1282884();
  sub_1D138E60C();
  sub_1D138E66C();
  sub_1D138E68C();
  sub_1D138E69C();
  sub_1D11580B0();
  v145 = v20;
  v21 = *(v20 + 48);
  v22 = *(v6 + 16);
  v149 = v6 + 16;
  v147 = v22;
  v23 = v5;
  v127 = v5;
  v22(v17, v10, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  v133 = v6;
  v25 = v6 + 8;
  v144 = *(v6 + 8);
  v144(v10, v23);
  v152 = v17;
  *&v17[v21] = Strong;
  v143 = *MEMORY[0x1E69A36B0];
  v142 = *(v11 + 104);
  v142(v17);
  LOBYTE(v6) = *(v2 + 16);
  v27 = *(v2 + 24);
  v26 = *(v2 + 32);
  v28 = v2;
  sub_1D1072E70(v2 + 40, &v156);
  LODWORD(v136) = *(v2 + 80);
  v126 = type metadata accessor for UDCDataSourceFactory.SectionConfiguration();
  v29 = swift_allocObject();
  *(v29 + 16) = v6;
  v30 = v27;
  v148 = v27;
  *(v29 + 24) = v27;
  *(v29 + 32) = v26;
  v146 = v26;
  sub_1D102CC18(&v156, v29 + 40);
  v139 = v11;
  v141 = *(v11 + 32);
  v141(v29 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType, v152, v150);
  *(v29 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType) = v136;
  v31 = (v29 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_footerText);
  *v31 = 0;
  v31[1] = 0;
  v152 = v29;
  *(v29 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_sortByDate) = 1;
  v32 = v26;
  v33 = v30;
  v34 = v32;
  v35 = v33;
  v135 = v34;
  v136 = v35;
  sub_1D138E65C();
  sub_1D138E66C();
  sub_1D138E68C();
  sub_1D138E69C();
  v36 = *(v145 + 48);
  v37 = v140;
  v38 = v127;
  v147(v140, v10, v127);
  v39 = swift_unknownObjectWeakLoadStrong();
  v131 = v25;
  v144(v10, v38);
  *(v37 + v36) = v39;
  v40 = v150;
  v130 = v11 + 104;
  (v142)(v37, v143, v150);
  LOBYTE(v36) = *(v28 + 16);
  sub_1D1072E70(v28 + 40, &v155);
  v128 = v28;
  LOBYTE(v39) = *(v28 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  v42 = v146;
  *(v41 + 24) = v148;
  *(v41 + 32) = v42;
  sub_1D102CC18(&v155, v41 + 40);
  v129 = v11 + 32;
  v141(v41 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType, v37, v40);
  *(v41 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType) = v39;
  v43 = (v41 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_footerText);
  *v43 = 0;
  v43[1] = 0;
  v140 = v41;
  *(v41 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_sortByDate) = 0;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v125 = sub_1D138D1CC();
  v45 = v44;
  sub_1D138E65C();
  v46 = v132;
  sub_1D138E5FC();
  v47 = v144;
  v144(v10, v38);
  (*(v133 + 32))(v10, v46, v38);
  sub_1D138E66C();
  sub_1D138E68C();
  sub_1D138E69C();
  v48 = *(v145 + 48);
  v49 = v134;
  v147(v134, v10, v38);
  v50 = v128;
  v51 = swift_unknownObjectWeakLoadStrong();
  v47(v10, v38);
  *&v49[v48] = v51;
  v52 = v150;
  (v142)(v49, v143, v150);
  LOBYTE(v47) = *(v50 + 16);
  sub_1D1072E70(v50 + 40, &v154);
  v53 = *(v50 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v47;
  v55 = v146;
  *(v54 + 24) = v148;
  *(v54 + 32) = v55;
  sub_1D102CC18(&v154, v54 + 40);
  v141(v54 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType, v49, v52);
  *(v54 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType) = v53;
  v56 = (v54 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_footerText);
  *v56 = v125;
  v56[1] = v45;
  v149 = v45;
  *(v54 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_sortByDate) = 0;
  if (*(v50 + 16) == 2)
  {
    v57 = sub_1D115C3E4(v140);
    v59 = v58;
    v60 = sub_1D10F776C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v153 = v60;
    v62 = v60[2];
    v61 = v60[3];
    v63 = v138;
    if (v62 >= v61 >> 1)
    {
      v60 = sub_1D10F776C((v61 > 1), v62 + 1, 1, v60);
      v153 = v60;
    }

    ObjectType = swift_getObjectType();
    sub_1D11A5FC0(v62, v57, &v153, ObjectType, v59);
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
    v63 = v138;
  }

  v65 = sub_1D115A808(v152);
  v67 = v66;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v153 = v60;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v60 = sub_1D10F776C(0, v60[2] + 1, 1, v60);
    v153 = v60;
  }

  v70 = v60[2];
  v69 = v60[3];
  if (v70 >= v69 >> 1)
  {
    v60 = sub_1D10F776C((v69 > 1), v70 + 1, 1, v60);
    v153 = v60;
  }

  v71 = swift_getObjectType();
  sub_1D11A5FC0(v70, v65, &v153, v71, v67);
  v72 = v137;
  v73 = *(v137 + 104);
  v74 = v151;
  v73(v151, *MEMORY[0x1E69A3E50], v63);
  v75 = sub_1D115BA98(v74, v152);
  v77 = v76;
  v78 = *(v72 + 8);
  v78(v74, v63);
  v153 = v60;
  v80 = v60[2];
  v79 = v60[3];
  if (v80 >= v79 >> 1)
  {
    v60 = sub_1D10F776C((v79 > 1), v80 + 1, 1, v60);
    v153 = v60;
  }

  v81 = swift_getObjectType();
  sub_1D11A5FC0(v80, v75, &v153, v81, v77);
  v82 = v151;
  v73(v151, *MEMORY[0x1E69A3E58], v63);
  v83 = sub_1D115BA98(v82, v152);
  v85 = v84;
  v78(v82, v63);
  v153 = v60;
  v87 = v60[2];
  v86 = v60[3];
  if (v87 >= v86 >> 1)
  {
    v60 = sub_1D10F776C((v86 > 1), v87 + 1, 1, v60);
    v153 = v60;
  }

  v88 = swift_getObjectType();
  sub_1D11A5FC0(v87, v83, &v153, v88, v85);
  v89 = v151;
  v73(v151, *MEMORY[0x1E69A3E68], v63);
  v90 = sub_1D115BA98(v89, v152);
  v92 = v91;
  v78(v89, v63);
  v153 = v60;
  v94 = v60[2];
  v93 = v60[3];
  if (v94 >= v93 >> 1)
  {
    v60 = sub_1D10F776C((v93 > 1), v94 + 1, 1, v60);
    v153 = v60;
  }

  v95 = swift_getObjectType();
  sub_1D11A5FC0(v94, v90, &v153, v95, v92);
  v96 = v151;
  v73(v151, *MEMORY[0x1E69A3E60], v63);
  v97 = sub_1D115BA98(v96, v152);
  v99 = v98;
  v78(v96, v63);
  v153 = v60;
  v101 = v60[2];
  v100 = v60[3];
  if (v101 >= v100 >> 1)
  {
    v60 = sub_1D10F776C((v100 > 1), v101 + 1, 1, v60);
    v153 = v60;
  }

  v102 = swift_getObjectType();
  sub_1D11A5FC0(v101, v97, &v153, v102, v99);
  v103 = v151;
  v73(v151, *MEMORY[0x1E69A3E38], v63);
  v104 = sub_1D115BA98(v103, v152);
  v106 = v105;
  v78(v103, v63);
  v153 = v60;
  v108 = v60[2];
  v107 = v60[3];
  if (v108 >= v107 >> 1)
  {
    v60 = sub_1D10F776C((v107 > 1), v108 + 1, 1, v60);
    v153 = v60;
  }

  v109 = v140;
  v110 = swift_getObjectType();
  sub_1D11A5FC0(v108, v104, &v153, v110, v106);
  v111 = sub_1D115C9F0(v109);
  v113 = v112;
  v153 = v60;
  v115 = v60[2];
  v114 = v60[3];
  if (v115 >= v114 >> 1)
  {
    v60 = sub_1D10F776C((v114 > 1), v115 + 1, 1, v60);
    v153 = v60;
  }

  v116 = swift_getObjectType();
  sub_1D11A5FC0(v115, v111, &v153, v116, v113);
  v117 = sub_1D115D194(v54);
  v119 = v118;
  v153 = v60;
  v121 = v60[2];
  v120 = v60[3];
  if (v121 >= v120 >> 1)
  {
    v60 = sub_1D10F776C((v120 > 1), v121 + 1, 1, v60);

    v153 = v60;
  }

  else
  {
  }

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm(v54 + 40);
  (*(v139 + 8))(v54 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType, v150);

  swift_deallocClassInstance();
  v122 = swift_getObjectType();
  sub_1D11A5FC0(v121, v117, &v153, v122, v119);
  return v60;
}

void *sub_1D11AD1C0()
{
  v1 = v0;
  v2 = sub_1D138E6BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v88 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v81 - v6;
  v8 = sub_1D138E5EC();
  v104 = *(v8 - 8);
  v9 = v104;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v90 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v92 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v81 - v14;
  sub_1D138E60C();
  sub_1D138E66C();
  sub_1D138E68C();
  sub_1D138E69C();
  sub_1D11580B0();
  v99 = v16;
  v17 = *(v16 + 48);
  v18 = *(v3 + 16);
  v101 = v3 + 16;
  v100 = v18;
  v18(v15, v7, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  v89 = v3;
  v20 = *(v3 + 8);
  v94 = v3 + 8;
  v98 = v20;
  v20(v7, v2);
  *&v15[v17] = Strong;
  v96 = *MEMORY[0x1E69A36B0];
  v21 = *(v9 + 104);
  v97 = v9 + 104;
  v95 = v21;
  v22 = v8;
  v105 = v8;
  v21(v15);
  LOBYTE(v9) = *(v1 + 16);
  v24 = *(v1 + 24);
  v23 = *(v1 + 32);
  sub_1D1072E70(v1 + 40, &v109);
  LODWORD(v91) = *(v1 + 80);
  v25 = type metadata accessor for UDCDataSourceFactory.SectionConfiguration();
  v26 = swift_allocObject();
  *(v26 + 16) = v9;
  *(v26 + 24) = v24;
  *(v26 + 32) = v23;
  v102 = v23;
  v103 = v24;
  sub_1D102CC18(&v109, v26 + 40);
  v27 = (v104 + 32);
  v93 = *(v104 + 32);
  v93(v26 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType, v15, v22);
  *(v26 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType) = v91;
  v28 = (v26 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_footerText);
  *v28 = 0;
  v28[1] = 0;
  *(v26 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_sortByDate) = 0;
  v29 = v23;
  v30 = v24;
  v86 = v29;
  v85 = v30;
  sub_1D138E65C();
  sub_1D138E66C();
  sub_1D138E68C();
  sub_1D138E69C();
  v31 = *(v99 + 48);
  v32 = v92;
  v100(v92, v7, v2);
  v33 = swift_unknownObjectWeakLoadStrong();
  v91 = v2;
  v98(v7, v2);
  *&v32[v31] = v33;
  v34 = v105;
  v95(v32, v96, v105);
  LOBYTE(v33) = *(v1 + 16);
  sub_1D1072E70(v1 + 40, &v108);
  LOBYTE(v31) = *(v1 + 80);
  v87 = v25;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  v36 = v102;
  *(v35 + 24) = v103;
  *(v35 + 32) = v36;
  sub_1D102CC18(&v108, v35 + 40);
  v92 = v27;
  v93(v35 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType, v32, v34);
  *(v35 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType) = v31;
  v37 = (v35 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_footerText);
  *v37 = 0;
  v37[1] = 0;
  *(v35 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_sortByDate) = 0;
  v38 = v1;
  if (*(v1 + 16) - 1 > 1)
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v39 = sub_1D115A808(v26);
    v41 = v40;
    v42 = sub_1D10F776C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v107 = v42;
    v44 = v42[2];
    v43 = v42[3];
    if (v44 >= v43 >> 1)
    {
      v42 = sub_1D10F776C((v43 > 1), v44 + 1, 1, v42);
      v107 = v42;
    }

    ObjectType = swift_getObjectType();
    sub_1D11A5FC0(v44, v39, &v107, ObjectType, v41);
  }

  v46 = sub_1D115B1D8(v26);
  v48 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v107 = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_1D10F776C(0, v42[2] + 1, 1, v42);
    v107 = v42;
  }

  v51 = v42[2];
  v50 = v42[3];
  if (v51 >= v50 >> 1)
  {
    v42 = sub_1D10F776C((v50 > 1), v51 + 1, 1, v42);
    v107 = v42;
  }

  v52 = swift_getObjectType();
  sub_1D11A5FC0(v51, v46, &v107, v52, v48);
  if (*(v38 + 16) == 2)
  {
    v84 = v26;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v83 = sub_1D138D1CC();
    v82 = v53;
    sub_1D138E65C();
    v54 = v88;
    sub_1D138E5FC();
    v55 = v91;
    v56 = v98;
    v98(v7, v91);
    (*(v89 + 32))(v7, v54, v55);
    sub_1D138E66C();
    sub_1D138E68C();
    sub_1D138E69C();
    v57 = *(v99 + 48);
    v58 = v90;
    v100(v90, v7, v55);
    v59 = swift_unknownObjectWeakLoadStrong();
    v56(v7, v55);
    v60 = v82;
    *&v58[v57] = v59;
    v61 = v105;
    v95(v58, v96, v105);
    LOBYTE(v59) = *(v38 + 16);
    sub_1D1072E70(v38 + 40, v106);
    v62 = *(v38 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v59;
    v64 = v102;
    *(v63 + 24) = v103;
    *(v63 + 32) = v64;
    sub_1D102CC18(v106, v63 + 40);
    v93(v63 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType, v58, v61);
    *(v63 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType) = v62;
    v65 = (v63 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_footerText);
    *v65 = v83;
    v65[1] = v60;
    *(v63 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_sortByDate) = 0;
    v66 = v85;
    v67 = v86;
    v68 = sub_1D115C9F0(v35);
    v70 = v69;
    v107 = v42;
    v72 = v42[2];
    v71 = v42[3];
    if (v72 >= v71 >> 1)
    {
      v42 = sub_1D10F776C((v71 > 1), v72 + 1, 1, v42);
      v107 = v42;
    }

    v73 = swift_getObjectType();
    sub_1D11A5FC0(v72, v68, &v107, v73, v70);
    v74 = sub_1D115D194(v63);
    v76 = v75;
    v107 = v42;
    v78 = v42[2];
    v77 = v42[3];
    if (v78 >= v77 >> 1)
    {
      v42 = sub_1D10F776C((v77 > 1), v78 + 1, 1, v42);

      v107 = v42;
    }

    else
    {
    }

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm(v63 + 40);
    (*(v104 + 8))(v63 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType, v105);

    swift_deallocClassInstance();
    v79 = swift_getObjectType();
    sub_1D11A5FC0(v78, v74, &v107, v79, v76);
  }

  else
  {
  }

  return v42;
}

uint64_t sub_1D11ADC50(uint64_t a1, unsigned __int8 a2)
{
  sub_1D11ADEE0(0, &qword_1EC60A098, sub_1D10A5C3C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E700;
  v21 = a2;
  v20 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(v2 + 64);
  v8 = __swift_project_boxed_opaque_existential_1Tm((v2 + 40), v7);
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = v5;
  v13 = v6;
  v14 = sub_1D138D8BC();
  (*(v9 + 8))(v11, v7);
  v15 = objc_allocWithZone(type metadata accessor for UDCOlderOtherLabsDataSource());
  v16 = sub_1D111B9E4(&v21, &v20, v13, v5, v14);

  v17 = sub_1D11ADE88();
  *(v4 + 32) = v16;
  *(v4 + 40) = v17;
  return v4;
}

uint64_t sub_1D11ADE0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5));

  MEMORY[0x1D3888420](v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t sub_1D11ADE88()
{
  result = qword_1EC60C880;
  if (!qword_1EC60C880)
  {
    type metadata accessor for UDCOlderOtherLabsDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C880);
  }

  return result;
}

void sub_1D11ADEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D11ADF78(void (*a1)(char *))
{
  v2 = sub_1D138D57C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D53C();
  a1(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t static DateInterval.dayInterval(containing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v39 = sub_1D138D75C();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11AEADC(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v34 - v7;
  v8 = sub_1D138D76C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138D57C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v42 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v41 = &v34 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v38 = &v34 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  sub_1D138D72C();
  v35 = a1;
  sub_1D138D6AC();
  v22 = *(v9 + 8);
  v36 = v9 + 8;
  v23 = v8;
  v22(v11, v8);
  sub_1D138D72C();
  v24 = v39;
  (*(v3 + 104))(v5, *MEMORY[0x1E6969A48], v39);
  v25 = v37;
  v40 = v21;
  sub_1D138D70C();
  (*(v3 + 8))(v5, v24);
  v22(v11, v23);
  v26 = *(v13 + 48);
  if (v26(v25, 1, v12) == 1)
  {
    v27 = *(v13 + 16);
    v28 = v38;
    v27(v38, v35, v12);
    v29 = v26(v25, 1, v12);
    v30 = v28;
    if (v29 != 1)
    {
      sub_1D109AC18(v25);
    }
  }

  else
  {
    v30 = v38;
    (*(v13 + 32))(v38, v25, v12);
    v27 = *(v13 + 16);
  }

  v31 = v40;
  v27(v41, v40, v12);
  v27(v42, v30, v12);
  sub_1D138CF8C();
  v32 = *(v13 + 8);
  v32(v30, v12);
  return (v32)(v31, v12);
}

uint64_t static DateInterval.dayInterval(containing:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D138D57C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 date];
  sub_1D138D52C();

  static DateInterval.dayInterval(containing:)(v7, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t static DateInterval.dayInterval(containing:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D138D57C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11AEADC(0, &qword_1EC60C888, sub_1D11AEB40, MEMORY[0x1E696B370]);
  v6 = sub_1D138FF7C();
  v7 = [v6 date];
  sub_1D138D52C();

  static DateInterval.dayInterval(containing:)(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t static DateInterval.weekInterval(ending:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1D138D75C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D138D76C();
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11AEADC(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_1D138D57C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v27 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v26 = &v25 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - v19;
  sub_1D138D72C();
  (*(v4 + 104))(v6, *MEMORY[0x1E6969A48], v3);
  sub_1D138D70C();
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v25);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    v22 = *(v14 + 16);
    v23 = a1;
    v22(v20, a1, v13);
    if (v21(v12, 1, v13) != 1)
    {
      sub_1D109AC18(v12);
    }
  }

  else
  {
    v23 = a1;
    (*(v14 + 32))(v20, v12, v13);
    v22 = *(v14 + 16);
  }

  v22(v26, v20, v13);
  v22(v27, v23, v13);
  sub_1D138CF8C();
  return (*(v14 + 8))(v20, v13);
}

void sub_1D11AEADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D11AEB40()
{
  result = qword_1EC60C890;
  if (!qword_1EC60C890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60C890);
  }

  return result;
}

uint64_t DateInterval.contains(_:)(void *a1)
{
  v2 = sub_1D138D57C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 date];
  sub_1D138D52C();

  LOBYTE(v6) = sub_1D138CFAC();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t DateInterval.contains(_:)()
{
  v0 = sub_1D138D57C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11AEADC(0, &qword_1EC60C888, sub_1D11AEB40, MEMORY[0x1E696B370]);
  v4 = sub_1D138FF7C();
  v5 = [v4 date];
  sub_1D138D52C();

  LOBYTE(v5) = sub_1D138CFAC();
  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t UIView.sizeThatFits(width:)(double a1)
{
  v2 = v1;
  v4 = sub_1D139160C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 sizeThatFits_];
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7040], v4);
  v8 = [v2 traitCollection];
  [v8 displayScale];
  sub_1D138D86C();
  [v8 displayScale];
  sub_1D138D86C();

  return (*(v5 + 8))(v7, v4);
}

id sub_1D11AEFB4()
{
  v0 = _sSo6UIViewC15HealthRecordsUIE11makeChevronAByFZ_0();

  return v0;
}

__C::CGRect __swiftcall UIView.insetRect(_:by:)(__C::CGRect _, NSDirectionalEdgeInsets by)
{
  trailing = by.trailing;
  leading = by.leading;
  top = by.top;
  height = _.size.height;
  width = _.size.width;
  y = _.origin.y;
  x = _.origin.x;
  if ([v2 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v10 = trailing;
  }

  else
  {
    v10 = leading;
  }

  v11 = UIEdgeInsetsInsetRect(x, y, width, height, top, v10);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

id _sSo6UIViewC15HealthRecordsUIE11makeChevronAByFZ_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v0 setContentMode_];
  sub_1D1121DAC();
  v1 = sub_1D1390CFC();
  [v0 setImage_];

  v2 = [objc_opt_self() tertiaryLabelColor];
  [v0 setTintColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v3) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v4];

  return v0;
}

unint64_t RecordCategoryViewController.ModeSegment.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D11AF248()
{
  result = qword_1EC60C898;
  if (!qword_1EC60C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C898);
  }

  return result;
}

uint64_t _s11DisplayModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s11DisplayModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D11AF410(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_1D11AF43C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

uint64_t sub_1D11AF480(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return 0;
}

char *sub_1D11AF4E4(_BYTE *a1)
{
  if (*a1 == 2)
  {
    return &unk_1F4D04A90;
  }

  v2 = sub_1D10F909C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1D10F909C((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 1;
  v5 = v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    result = v5;
  }

  else
  {
    result = sub_1D10F909C(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(result + 2);
  v6 = *(result + 3);
  if (v7 >= v6 >> 1)
  {
    result = sub_1D10F909C((v6 > 1), v7 + 1, 1, result);
  }

  *(result + 2) = v7 + 1;
  result[v7 + 32] = 2;
  return result;
}

unint64_t sub_1D11AF5FC()
{
  result = qword_1EC60C8A0;
  if (!qword_1EC60C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C8A0);
  }

  return result;
}

uint64_t ViewControllerFactoryError.hashValue.getter()
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](0);
  return sub_1D13917CC();
}

uint64_t ViewControllerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  return sub_1D13917CC();
}

uint64_t ConceptViewControllerFactory.makeViewController(forConcept:fromDisplayCategory:highlightedRecord:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 48);
  v16 = *(a2 + 32);
  v17 = v10;
  v18 = *(a2 + 64);
  v11 = *(a2 + 16);
  v12 = [objc_allocWithZone(MEMORY[0x1E696C020]) initWithRawIdentifier_];
  v13 = (*(a6 + 8))(v12, &v15, a3, a4, a5, a6);

  return v13;
}

unint64_t sub_1D11AF818()
{
  result = qword_1EC60C8A8;
  if (!qword_1EC60C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C8A8);
  }

  return result;
}

unint64_t sub_1D11AF870()
{
  result = qword_1EC60C8B0;
  if (!qword_1EC60C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C8B0);
  }

  return result;
}

id sub_1D11AF9E4()
{
  v1 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___cancelBarButtonItem;
  v2 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___cancelBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___cancelBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_didTapCancel_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D11AFA6C()
{
  v1 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___actionBarButtonItem;
  v2 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___actionBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___actionBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v0 action:sel_didTapSave_];
    [v4 setEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D11AFB08()
{
  v1 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___tableView;
  v2 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___tableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___tableView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ContentSizedTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setScrollEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D11AFBB8()
{
  v1 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = v0;
    sub_1D11B175C();
    v5 = objc_allocWithZone(sub_1D138E7AC());
    v6 = sub_1D138E79C();
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 setShowsHorizontalScrollIndicator_];
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D11AFC64()
{
  v1 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1D11AFCFC()
{
  v1 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___pdfPaddingConstraints;
  if (*(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___pdfPaddingConstraints))
  {
    v2 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___pdfPaddingConstraints);
  }

  else
  {
    sub_1D10A5C9C(0, &qword_1EE06A4C0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D139E6E0;
    v3 = sub_1D11AFBB8();
    v4 = [v3 topAnchor];

    v5 = sub_1D11AFB08();
    v6 = [v5 bottomAnchor];

    v7 = OBJC_IVAR___HRPDFConfigurationViewController_pdfPadding;
    v8 = [v4 constraintEqualToAnchor:v6 constant:*(v0 + OBJC_IVAR___HRPDFConfigurationViewController_pdfPadding)];

    *(v2 + 32) = v8;
    v9 = sub_1D11AFC64();
    v10 = [v9 bottomAnchor];

    v11 = [*(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView) bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:*(v0 + v7)];

    *(v2 + 40) = v12;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1D11AFE94()
{
  v1 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___pdfHeightConstraint;
  v2 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___pdfHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___pdfHeightConstraint);
  }

  else
  {
    v4 = sub_1D11AFBB8();
    v5 = [v4 heightAnchor];

    v6 = [v5 constraintEqualToConstant_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1D11B0018()
{
  v1 = v0;
  v2 = sub_1D138E77C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11B6F38(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v81 - v7;
  v9 = type metadata accessor for PDFConfigurationViewController();
  v84.receiver = v0;
  v84.super_class = v9;
  objc_msgSendSuper2(&v84, sel_viewDidLoad);
  v10 = *&v0[OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = [Strong clinicalAccountStore];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (*(v10 + 104))
  {
    v14 = sub_1D13905DC();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_1D13905AC();
    swift_retain_n();
    v15 = sub_1D139059C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v13;
    sub_1D107877C(0, 0, v8, &unk_1D13A74A0, v16);
  }

  else
  {
    v18 = swift_allocObject();
    v18[2] = v10;
    v18[3] = sub_1D11B6F9C;
    v18[4] = v13;
    aBlock[4] = sub_1D11B6FA4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D131A0A0;
    aBlock[3] = &block_descriptor_95;
    v19 = _Block_copy(aBlock);
    swift_retain_n();

    [v12 fetchAllAccountsWithCompletion_];

    _Block_release(v19);
  }

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v20 = sub_1D139012C();

  [v1 setTitle_];

  v21 = [v1 navigationItem];
  v22 = sub_1D11AF9E4();
  [v21 setLeftBarButtonItem_];

  v23 = [v1 navigationItem];
  v24 = sub_1D11AFA6C();
  [v23 setRightBarButtonItem_];

  v25 = [v1 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = v25;
  v27 = [objc_opt_self() systemGroupedBackgroundColor];
  [v26 setBackgroundColor_];

  v28 = sub_1D11AFB08();
  [v28 setDelegate_];

  v29 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___tableView;
  [*&v1[OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___tableView] setDataSource_];
  v30 = *&v1[v29];
  sub_1D106F934(0, &qword_1EC60CA50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = v30;
  v33 = sub_1D139012C();
  [v32 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v33];

  v34 = *&v1[v29];
  v35 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v36 = v34;
  v37 = [v35 initWithFrame_];
  [v36 setTableFooterView_];

  [*&v1[v29] setSectionFooterHeight_];
  v38 = sub_1D11AFBB8();
  [v38 setDataSource_];

  v39 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView;
  v40 = *&v1[OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView];
  v41 = objc_allocWithZone(MEMORY[0x1E69DCD80]);
  v42 = v40;
  v43 = [v41 initWithTarget:v1 action:sel_didPinchPDF_];
  [v42 addGestureRecognizer_];

  v44 = *&v1[v39];
  (*(v3 + 104))(v5, *MEMORY[0x1E69A3720], v2);
  v45 = v44;
  sub_1D138E78C();

  (*(v3 + 8))(v5, v2);
  v46 = [v1 view];
  if (!v46)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v47 = v46;
  v48 = sub_1D11AFC64();
  [v47 addSubview_];

  v49 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___scrollView;
  [*&v1[OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___scrollView] addSubview_];
  [*&v1[v49] addSubview_];
  v50 = *&v1[v49];
  v51 = [v1 view];
  [v50 hk:v51 alignConstraintsWithView:?];

  v52 = objc_opt_self();
  sub_1D11AFCFC();
  v81 = sub_1D106F934(0, &qword_1EC609690);
  v53 = sub_1D139044C();

  v82 = v52;
  [v52 activateConstraints_];

  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1D13A72C0;
  v55 = [*&v1[v29] topAnchor];
  v56 = [*&v1[v49] topAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v54 + 32) = v57;
  v58 = [*&v1[v29] leadingAnchor];
  v59 = [*&v1[v49] leadingAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v54 + 40) = v60;
  v61 = [*&v1[v29] widthAnchor];
  v62 = [v1 view];
  if (!v62)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v63 = v62;
  v64 = [v62 widthAnchor];

  v65 = [v61 constraintEqualToAnchor_];
  *(v54 + 48) = v65;
  v66 = [*&v1[v29] trailingAnchor];
  v67 = [*&v1[v49] trailingAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v54 + 56) = v68;
  v69 = [*&v1[v39] leadingAnchor];
  v70 = [*&v1[v49] leadingAnchor];
  v71 = [v69 constraintEqualToAnchor_];

  *(v54 + 64) = v71;
  v72 = [*&v1[v39] widthAnchor];
  v73 = [v1 view];
  if (v73)
  {
    v74 = v73;
    v75 = [v73 widthAnchor];

    v76 = [v72 constraintEqualToAnchor_];
    *(v54 + 72) = v76;
    *(v54 + 80) = sub_1D11AFE94();
    v77 = [*&v1[v39] trailingAnchor];
    v78 = [*&v1[v49] trailingAnchor];
    v79 = [v77 constraintEqualToAnchor_];

    *(v54 + 88) = v79;
    v80 = sub_1D139044C();

    [v82 activateConstraints_];

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1D11B0B60(uint64_t a1)
{
  sub_1D11B6F38(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D13905DC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D13905AC();

  v6 = sub_1D139059C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1D107877C(0, 0, v4, &unk_1D13A74A8, v7);
}

uint64_t sub_1D11B0CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v4[12] = sub_1D13905AC();
  v4[13] = sub_1D139059C();
  v6 = sub_1D139055C();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D11B0D44, v6, v5);
}

uint64_t sub_1D11B0D44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v0[17] = sub_1D139059C();
    v3 = sub_1D139055C();
    v0[18] = v3;
    v0[19] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1D11B0E60, v3, v2);
  }

  else
  {

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      sub_1D11B2198();
    }

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D11B0E60()
{
  v1 = v0[16];
  v2 = OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource;
  v0[20] = OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource;
  v3 = *(v1 + v2);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong healthStore];

  type metadata accessor for PDFDataProvider();
  inited = swift_initStackObject();
  v0[21] = inited;
  *(inited + 16) = v5;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1D11B0F60;

  return sub_1D12DF634(v3, 1);
}

uint64_t sub_1D11B0F60(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  *(*v1 + 184) = a1;

  swift_setDeallocating();

  v4 = *(v2 + 152);
  v5 = *(v2 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D11B10B4, v5, v4);
}

uint64_t sub_1D11B10B4()
{
  v1 = v0[23];
  v2 = v0[16];

  sub_1D12A6014(v1);

  v3 = v0[14];
  v4 = v0[15];

  return MEMORY[0x1EEE6DFA0](sub_1D11B1140, v3, v4);
}

uint64_t sub_1D11B1140()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D11B2198();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D11B1218(char a1)
{
  v3 = sub_1D138FF3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PDFConfigurationViewController();
  v18.receiver = v1;
  v18.super_class = v7;
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1 & 1);
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE06AEB8;
  v9 = OBJC_IVAR___CHRAnalyticsManager_managerQueue;
  v10 = *(qword_1EE06AEB8 + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
  *v6 = v10;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8018], v3);
  v11 = v10;
  LOBYTE(v10) = sub_1D138FF5C();
  result = (*(v4 + 8))(v6, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = *(v8 + v9);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D13A72D0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 11;
  *(v14 + 48) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1D11B712C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1D11B7134;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10DD3BC;
  aBlock[3] = &block_descriptor_86;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v13, v16);
  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void sub_1D11B1504()
{
  v1 = sub_1D11B175C();
  v2 = sub_1D11AFBB8();
  [v2 setCollectionViewLayout:v1 animated:0];

  [v1 itemSize];
  v4 = v3;
  v5 = sub_1D11AFE94();
  [v5 setConstant_];

  v6 = sub_1D11AFC64();
  v7 = [v6 safeAreaLayoutGuide];

  [v7 layoutFrame];
  Height = CGRectGetHeight(v23);
  v9 = sub_1D11AFB08();
  [v9 contentSize];
  v11 = v10;

  v12 = (Height - v11 - v4) * 0.5;
  if (v12 <= 30.0)
  {
    v12 = 30.0;
  }

  v13 = OBJC_IVAR___HRPDFConfigurationViewController_pdfPadding;
  if (v12 != *&v0[OBJC_IVAR___HRPDFConfigurationViewController_pdfPadding])
  {
    v21 = v7;
    *&v0[OBJC_IVAR___HRPDFConfigurationViewController_pdfPadding] = v12;
    v14 = sub_1D11AFCFC();
    v15 = v14;
    if (v14 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
    {
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1D3886B70](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        [v18 setConstant_];

        ++v17;
        if (v20 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    v7 = v21;
  }

  v22.receiver = v0;
  v22.super_class = type metadata accessor for PDFConfigurationViewController();
  objc_msgSendSuper2(&v22, sel_viewDidLayoutSubviews);
}

id sub_1D11B175C()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;

    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    v14 = round(CGRectGetHeight(v18) * 0.5);
    v15 = sub_1D138E6EC();
    sub_1D138E6CC();
    if (v4 + -30.0 < round(v14 / v16))
    {
      sub_1D138E6CC();
    }

    v17 = objc_allocWithZone(v15);
    return sub_1D138E6DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D11B1900(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1D138F0BC();
  *&v74 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - v8;
  v10 = sub_1D138FF3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1D138EE7C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = &v2[OBJC_IVAR___HRPDFConfigurationViewController_state];
  v16 = *&v2[OBJC_IVAR___HRPDFConfigurationViewController_state + 24];
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    v67 = v4;
    v68 = a1;
    v70 = v2;
    v17 = *v15;
    v18 = v15[1];
    v19 = v15[2];
    sub_1D1083D58(*v15, v18);

    sub_1D11B6EE4(v17, v18, v19, v16);
    sub_1D1083D58(v17, v18);
    sub_1D138EE1C();
    v69 = sub_1D138E8AC();
    v20 = objc_allocWithZone(v69);
    v71 = v17;
    v72 = v18;
    v21 = v19;
    v22 = sub_1D138E89C();
    if (v22)
    {
      v23 = v22;
      if (qword_1EE06A170 != -1)
      {
        swift_once();
      }

      v24 = qword_1EE06AEB8;
      v25 = OBJC_IVAR___CHRAnalyticsManager_managerQueue;
      v26 = *(qword_1EE06AEB8 + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
      *v13 = v26;
      (*(v11 + 104))(v13, *MEMORY[0x1E69E8018], v10);
      v27 = v26;
      LOBYTE(v26) = sub_1D138FF5C();
      (*(v11 + 8))(v13, v10);
      if (v26)
      {
        v28 = *(v24 + v25);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D13A72E0;
        *(v29 + 32) = 0;
        *(v29 + 40) = 11;
        *(v29 + 48) = 0;
        v30 = swift_allocObject();
        *(v30 + 16) = sub_1D11B6F34;
        *(v30 + 24) = v29;
        aBlock[4] = sub_1D1080D80;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D10DD3BC;
        aBlock[3] = &block_descriptor_75_0;
        v31 = _Block_copy(aBlock);

        dispatch_sync(v28, v31);
        _Block_release(v31);
        LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

        if ((v31 & 1) == 0)
        {
          sub_1D10A5C9C(0, &qword_1EC60AEB8);
          v32 = swift_allocObject();
          v74 = xmmword_1D139E700;
          *(v32 + 16) = xmmword_1D139E700;
          *(v32 + 56) = v69;
          *(v32 + 32) = v23;
          v33 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
          v34 = v23;
          v35 = sub_1D139044C();

          v36 = [v33 initWithActivityItems:v35 applicationActivities:0];

          sub_1D11B6F38(0, &unk_1EC60CA40, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
          v37 = swift_allocObject();
          *(v37 + 16) = v74;
          v38 = *MEMORY[0x1E69CDAA8];
          *(v37 + 32) = *MEMORY[0x1E69CDAA8];
          type metadata accessor for ActivityType(0);
          v39 = v38;
          v40 = sub_1D139044C();

          [v36 setExcludedActivityTypes_];

          v41 = [v36 popoverPresentationController];
          v42 = v70;
          if (v41)
          {
            v43 = v41;
            [v41 setSourceItem_];
          }

          [v42 presentViewController:v36 animated:1 completion:0];

          v45 = v71;
          v44 = v72;
          sub_1D1083DAC(v71, v72);
          sub_1D11B6CBC(v45, v44, v19, v16);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    sub_1D138F06C();
    v54 = v70;
    v55 = sub_1D138F0AC();
    v56 = sub_1D139081C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v57 = 136446210;
      v76 = ObjectType;
      swift_getMetatypeMetadata();
      v59 = sub_1D13901EC();
      v61 = sub_1D11DF718(v59, v60, aBlock);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_1D101F000, v55, v56, "[%{public}s]: Unable to instantiate activity item source", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1D38882F0](v58, -1, -1);
      MEMORY[0x1D38882F0](v57, -1, -1);

      v63 = v71;
      v62 = v72;
      sub_1D1083DAC(v71, v72);
      sub_1D11B6CBC(v63, v62, v21, v16);
    }

    else
    {
      v65 = v71;
      v64 = v72;
      sub_1D11B6CBC(v71, v72, v19, v16);
      sub_1D1083DAC(v65, v64);
    }

    (*(v74 + 8))(v9, v67);
  }

  else
  {
    sub_1D138F06C();
    v46 = v2;
    v47 = sub_1D138F0AC();
    v48 = sub_1D139081C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136446210;
      v76 = ObjectType;
      swift_getMetatypeMetadata();
      v51 = sub_1D13901EC();
      v53 = sub_1D11DF718(v51, v52, aBlock);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_1D101F000, v47, v48, "[%{public}s]: No PDF data generated", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1D38882F0](v50, -1, -1);
      MEMORY[0x1D38882F0](v49, -1, -1);
    }

    (*(v74 + 8))(v6, v4);
  }
}

uint64_t sub_1D11B2198()
{
  v1 = v0;
  sub_1D11B6F38(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v27 - v3;
  v4 = sub_1D138FF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v7 = sub_1D1390A7C();
  v8 = *MEMORY[0x1E69E8020];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  v10 = sub_1D138FF5C();
  v11 = *(v5 + 8);
  result = v11(v7, v4);
  if (v10)
  {
    v13 = sub_1D11AFB08();
    [v13 reloadData];

    v27 = OBJC_IVAR___HRPDFConfigurationViewController_pdfGenerationTask;
    if (*&v1[OBJC_IVAR___HRPDFConfigurationViewController_pdfGenerationTask])
    {

      sub_1D13905EC();
    }

    *v7 = sub_1D1390A7C();
    v9(v7, v8, v4);
    v14 = sub_1D138FF5C();
    result = v11(v7, v4);
    if (v14)
    {
      v15 = &v1[OBJC_IVAR___HRPDFConfigurationViewController_state];
      v16 = *&v1[OBJC_IVAR___HRPDFConfigurationViewController_state];
      v17 = *&v1[OBJC_IVAR___HRPDFConfigurationViewController_state + 8];
      v18 = *&v1[OBJC_IVAR___HRPDFConfigurationViewController_state + 16];
      v19 = *&v1[OBJC_IVAR___HRPDFConfigurationViewController_state + 24];
      *v15 = 0;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *(v15 + 3) = 1;
      sub_1D11B6CBC(v16, v17, v18, v19);
      sub_1D11B37C0();
      v20 = sub_1D13905DC();
      v21 = v28;
      (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
      sub_1D13905AC();
      v22 = v1;
      v23 = sub_1D139059C();
      v24 = swift_allocObject();
      v25 = MEMORY[0x1E69E85E0];
      v24[2] = v23;
      v24[3] = v25;
      v24[4] = v22;
      v26 = sub_1D107877C(0, 0, v21, &unk_1D13A7490, v24);
      *&v1[v27] = v26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D11B24E4()
{
  v0[2] = sub_1D13905AC();
  v0[3] = sub_1D139059C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D10AA380;

  return sub_1D11B2590();
}

uint64_t sub_1D11B2590()
{
  v1[6] = v0;
  v1[7] = swift_getObjectType();
  v2 = sub_1D138F0BC();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_1D138FF3C();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = sub_1D13905AC();
  v1[15] = sub_1D139059C();
  v5 = sub_1D139055C();
  v1[16] = v5;
  v1[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D11B26F0, v5, v4);
}

uint64_t sub_1D11B26F0()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource);
  *(v0 + 144) = *(v1 + 16);
  *(v0 + 152) = *(v1 + 24);
  *(v0 + 264) = *(v1 + 32);
  sub_1D13905FC();
  *(v0 + 160) = 0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong healthStore];

  type metadata accessor for PDFDataProvider();
  inited = swift_initStackObject();
  *(v0 + 168) = inited;
  *(inited + 16) = v3;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_1D11B29C4;

  return sub_1D12DF634(v1, 0);
}

uint64_t sub_1D11B29C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  *(*v1 + 184) = a1;

  swift_setDeallocating();

  v4 = *(v2 + 136);
  v5 = *(v2 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D11B2B18, v5, v4);
}

uint64_t sub_1D11B2B18()
{
  v25 = v0;
  v1 = *(v0 + 160);
  sub_1D13905FC();
  if (v1)
  {

    v2 = *(v0 + 48);
    sub_1D138F06C();
    v3 = v2;
    v4 = sub_1D138F0AC();
    v5 = sub_1D139081C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    v9 = *(v0 + 64);
    if (v6)
    {
      v10 = *(v0 + 56);
      v23 = *(v0 + 80);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136446210;
      *(v0 + 40) = v10;
      swift_getMetatypeMetadata();
      v13 = sub_1D13901EC();
      v15 = sub_1D11DF718(v13, v14, &v24);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D101F000, v4, v5, "[%{public}s]: PDF generation was cancelled", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1D38882F0](v12, -1, -1);
      MEMORY[0x1D38882F0](v11, -1, -1);

      (*(v7 + 8))(v23, v9);
    }

    else
    {

      (*(v7 + 8))(v8, v9);
    }

    v16 = *(v0 + 8);

    return v16();
  }

  else if (*(*(v0 + 184) + 16))
  {
    sub_1D13905FC();
    *(v0 + 192) = 0;
    v18 = *(v0 + 264);
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_1D11B2E00;
    v20 = *(v0 + 184);
    v21 = *(v0 + 144);
    v22 = *(v0 + 152);

    return sub_1D12337FC(v20, v21, v22, v18);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D11B3620, 0, 0);
  }
}

uint64_t sub_1D11B2E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[26] = a1;
  v6[27] = a2;
  v6[28] = a3;
  v6[29] = a4;

  v7 = v5[17];
  v8 = v5[16];

  return MEMORY[0x1EEE6DFA0](sub_1D11B2F50, v8, v7);
}

uint64_t sub_1D11B2F50()
{
  v24 = v0;
  v1 = v0[29];
  v2 = v0[24];
  sub_1D13905FC();
  if (v1)
  {
    if (v2)
    {
      v4 = v0[26];
      v3 = v0[27];

      sub_1D1083DAC(v4, v3);
LABEL_6:
      v5 = v0[6];
      sub_1D138F06C();
      v6 = v5;
      v7 = sub_1D138F0AC();
      v8 = sub_1D139081C();

      v9 = os_log_type_enabled(v7, v8);
      v10 = v0[9];
      v11 = v0[10];
      v12 = v0[8];
      if (v9)
      {
        v13 = v0[7];
        v22 = v0[10];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v23 = v15;
        *v14 = 136446210;
        v0[5] = v13;
        swift_getMetatypeMetadata();
        v16 = sub_1D13901EC();
        v18 = sub_1D11DF718(v16, v17, &v23);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_1D101F000, v7, v8, "[%{public}s]: PDF generation was cancelled", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1D38882F0](v15, -1, -1);
        MEMORY[0x1D38882F0](v14, -1, -1);

        (*(v10 + 8))(v22, v12);
      }

      else
      {

        (*(v10 + 8))(v11, v12);
      }

      v19 = v0[1];

      return v19();
    }

    v21 = sub_1D11B31B0;
  }

  else
  {
    if (v2)
    {

      goto LABEL_6;
    }

    v21 = sub_1D11B340C;
  }

  return MEMORY[0x1EEE6DFA0](v21, 0, 0);
}

uint64_t sub_1D11B31B0()
{
  *(v0 + 240) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D11B323C, v2, v1);
}

uint64_t sub_1D11B323C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  sub_1D106F934(0, &qword_1EE06B760);
  *v1 = sub_1D1390A7C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8020], v3);
  v4 = sub_1D138FF5C();
  v5 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v8 = *(v0 + 232);
    v9 = *(v0 + 208);
    v10 = (*(v0 + 48) + OBJC_IVAR___HRPDFConfigurationViewController_state);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = v10[3];
    v16 = *(v0 + 216);
    *v10 = v9;
    *(v10 + 1) = v16;
    v10[3] = v8;
    sub_1D11B6CBC(v11, v12, v13, v14);
    sub_1D1083D58(v9, v16);

    sub_1D11B37C0();

    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v5 = sub_1D11B338C;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D11B338C()
{
  sub_1D1083DAC(v0[26], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D11B340C()
{
  *(v0 + 248) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D11B3498, v2, v1);
}

uint64_t sub_1D11B3498()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  sub_1D106F934(0, &qword_1EE06B760);
  *v1 = sub_1D1390A7C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8020], v3);
  v4 = sub_1D138FF5C();
  v5 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v8 = (v0[6] + OBJC_IVAR___HRPDFConfigurationViewController_state);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    *v8 = 0u;
    *(v8 + 1) = 0u;
    sub_1D11B6CBC(v9, v10, v11, v12);
    sub_1D11B37C0();
    v6 = v0[16];
    v7 = v0[17];
    v5 = sub_1D11B35AC;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D11B35AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D11B3620()
{
  *(v0 + 256) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D11B36AC, v2, v1);
}

uint64_t sub_1D11B36AC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  sub_1D106F934(0, &qword_1EE06B760);
  *v1 = sub_1D1390A7C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8020], v3);
  v4 = sub_1D138FF5C();
  v5 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v8 = (v0[6] + OBJC_IVAR___HRPDFConfigurationViewController_state);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    *v8 = 0u;
    *(v8 + 1) = 0u;
    sub_1D11B6CBC(v9, v10, v11, v12);
    sub_1D11B37C0();
    v6 = v0[16];
    v7 = v0[17];
    v5 = sub_1D11B7130;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1D11B37C0()
{
  v1 = v0;
  v2 = sub_1D138E77C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_state);
  v7 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_state + 8);
  v8 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_state + 16);
  v9 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_state + 24);
  if (!v9)
  {
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    sub_1D138E00C();
    swift_allocObject();
    sub_1D138DFFC();
    sub_1D138E39C();

    v10 = sub_1D11AFA6C();
    [v10 setEnabled_];

    v11 = sub_1D11AFBB8();
    (*(v3 + 104))(v5, *MEMORY[0x1E69A3720], v2);
    sub_1D138E78C();

LABEL_8:
    (*(v3 + 8))(v5, v2);
    goto LABEL_9;
  }

  v23 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_state + 16);
  sub_1D1083D58(v6, v7);

  sub_1D1083D58(v6, v7);
  v12 = objc_allocWithZone(MEMORY[0x1E6978028]);
  sub_1D1083D58(v6, v7);
  v13 = sub_1D138D3CC();
  v14 = [v12 initWithData_];

  sub_1D1083DAC(v6, v7);
  if (!v14)
  {
    sub_1D1083DAC(v6, v7);
    v8 = v23;
LABEL_7:
    v23 = v8;
    sub_1D138E00C();
    swift_allocObject();
    sub_1D138DFFC();
    v22 = v7;
    sub_1D138E39C();

    v19 = sub_1D11AFA6C();
    [v19 setEnabled_];

    v20 = sub_1D11AFBB8();
    (*(v3 + 104))(v5, *MEMORY[0x1E69A3718], v2);
    sub_1D138E78C();

    sub_1D11B6CBC(v6, v22, v23, v9);
    goto LABEL_8;
  }

  sub_1D138E00C();
  swift_allocObject();
  v22 = v14;
  sub_1D138DFFC();
  sub_1D138E39C();

  v15 = sub_1D11AFA6C();
  [v15 setEnabled_];

  v16 = sub_1D11AFBB8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69A3710], v2);
  sub_1D138E78C();

  (*(v3 + 8))(v5, v2);
  v17 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView;
  [*(v1 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView) reloadData];
  v18 = *(v1 + v17);
  [v18 setContentOffset:1 animated:{0.0, 0.0}];
  sub_1D11B6CBC(v6, v7, v23, v9);

  sub_1D1083DAC(v6, v7);
LABEL_9:
  v21 = sub_1D11AFBB8();
  [v21 reloadData];
}

id sub_1D11B3DC0(void *a1)
{
  v2 = v1;
  v4 = sub_1D138F3FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D139012C();
  v9 = sub_1D138D7DC();
  v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:v9];

  v11 = *(v2 + OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource);
  v12 = sub_1D12A8E6C();
  v14 = v13;
  sub_1D138F3EC();

  v37 = v12;
  sub_1D138F3BC();
  v15 = sub_1D138D7FC();
  v38 = v5;
  if (v15 == 2)
  {
    v16 = v4;
    sub_1D12A4C30();
  }

  else
  {
    v16 = v4;
    if (v15 == 1)
    {
      sub_1D12A4AC4();
    }

    else if (!v15)
    {
      sub_1D12A47B4();
    }
  }

  v36 = v11;
  sub_1D138F29C();
  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  v19 = sub_1D138F2FC();
  sub_1D138F2DC();
  v19(&v43, 0);
  v20 = [v17 secondaryLabelColor];
  v21 = sub_1D138F34C();
  sub_1D138F2DC();
  v21(&v43, 0);
  v22 = v16;
  v45 = v16;
  v46 = MEMORY[0x1E69DC110];
  v23 = __swift_allocate_boxed_opaque_existential_1(&v43);
  v24 = v38;
  (*(v38 + 16))(v23, v7, v22);
  MEMORY[0x1D38861C0](&v43);
  v25 = sub_1D138D7FC();
  if ((v25 - 1) >= 2 && (v25 || !*(v36 + 40)))
  {
    v27 = 0;
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v27 = 3;
  }

  [v10 setSelectionStyle_];
  [v10 setAccessoryType_];
  if (v14)
  {
    v43 = v37;
    v44 = v14;
    v41 = 32;
    v42 = 0xE100000000000000;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D10940C8();
    v28 = sub_1D1390FBC();
    v30 = v29;

    sub_1D10A5C9C(0, &qword_1EE06B560);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D139E710;
    *(v31 + 32) = 0x6F6974704F464450;
    *(v31 + 40) = 0xEA0000000000736ELL;
    v43 = v28;
    v44 = v30;

    MEMORY[0x1D3885C10](1819043139, 0xE400000000000000);

    v32 = v44;
    *(v31 + 48) = v43;
    *(v31 + 56) = v32;
    v33 = sub_1D139044C();

    v34 = HKUIJoinStringsForAutomationIdentifier();

    [v10 setAccessibilityIdentifier_];
  }

  (*(v24 + 8))(v7, v22);
  return v10;
}

void sub_1D11B4324(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = a1;
    v9 = [v2 navigationController];
    if (v9)
    {
      v10 = v9;
      [v9 pushViewController:v21 animated:1];
    }

    v11 = v21;
  }

  else
  {
    sub_1D138F06C();
    v12 = v2;
    v13 = sub_1D138F0AC();
    v14 = sub_1D139081C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = ObjectType;
      v23 = v16;
      *v15 = 136446210;
      swift_getMetatypeMetadata();
      v17 = sub_1D13901EC();
      v19 = sub_1D11DF718(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1D101F000, v13, v14, "[%{public}s]: Cannot present, view controller is nil", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1D38882F0](v16, -1, -1);
      MEMORY[0x1D38882F0](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_1D11B46B0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D138D82C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1D138F0BC();
  v9 = *(v120 - 1);
  MEMORY[0x1EEE9AC00](v120);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v113 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v113 - v17;
  v19 = [a1 state];
  if ((v19 - 4) < 2)
  {
    sub_1D138F06C();
    v95 = v2;
    v96 = sub_1D138F0AC();
    v97 = sub_1D139081C();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v121 = ObjectType;
      v122 = v99;
      *v98 = 136446210;
      swift_getMetatypeMetadata();
      v100 = sub_1D13901EC();
      v102 = sub_1D11DF718(v100, v101, &v122);

      *(v98 + 4) = v102;
      _os_log_impl(&dword_1D101F000, v96, v97, "[%{public}s]: PDF zoom gesture failed or was cancelled", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      MEMORY[0x1D38882F0](v99, -1, -1);
      MEMORY[0x1D38882F0](v98, -1, -1);
    }

    (*(v9 + 8))(v14, v120);
LABEL_22:
    sub_1D11B50F8();
    return;
  }

  if (v19 == 3)
  {
    sub_1D138F06C();
    v103 = v2;
    v104 = sub_1D138F0AC();
    v105 = sub_1D139081C();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v121 = ObjectType;
      v122 = v107;
      *v106 = 136446210;
      swift_getMetatypeMetadata();
      v108 = sub_1D13901EC();
      v110 = sub_1D11DF718(v108, v109, &v122);

      *(v106 + 4) = v110;
      _os_log_impl(&dword_1D101F000, v104, v105, "[%{public}s]: PDF zoom gesture ended", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      MEMORY[0x1D38882F0](v107, -1, -1);
      MEMORY[0x1D38882F0](v106, -1, -1);
    }

    (*(v9 + 8))(v11, v120);
    [a1 scale];
    if (v111 > 1.2)
    {
      sub_1D11B51A4();
      return;
    }

    goto LABEL_22;
  }

  if (v19 == 1)
  {
    v118 = v6;
    sub_1D138F06C();
    v20 = v2;
    v21 = sub_1D138F0AC();
    v22 = sub_1D139081C();
    v119 = v20;

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v117 = v5;
      v24 = v23;
      v25 = swift_slowAlloc();
      v121 = ObjectType;
      v122 = v25;
      *v24 = 136446210;
      swift_getMetatypeMetadata();
      v26 = sub_1D13901EC();
      v28 = sub_1D11DF718(v26, v27, &v122);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1D101F000, v21, v22, "[%{public}s]: PDF zoom gesture began", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1D38882F0](v25, -1, -1);
      v29 = v24;
      v5 = v117;
      MEMORY[0x1D38882F0](v29, -1, -1);
    }

    (*(v9 + 8))(v18, v120);
    v30 = v119;
    v31 = sub_1D11AFBB8();
    v32 = OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView;
    [a1 locationInView_];
    v33 = [v31 indexPathForItemAtPoint_];

    if (v33)
    {
      sub_1D138D7EC();

      v34 = *&v30[v32];
      v35 = sub_1D138D7DC();
      v36 = [v34 cellForItemAtIndexPath_];

      v37 = v118;
      if (v36)
      {
        sub_1D138DE9C();
        if (swift_dynamicCastClass())
        {
          v117 = v5;
          v38 = sub_1D138DE8C();
          v39 = OBJC_IVAR___HRPDFConfigurationViewController_pinchedPageImageView;
          v40 = *&v30[OBJC_IVAR___HRPDFConfigurationViewController_pinchedPageImageView];
          *&v30[OBJC_IVAR___HRPDFConfigurationViewController_pinchedPageImageView] = v38;
          v41 = v38;

          v42 = [v30 view];
          if (v42)
          {
            v43 = v42;
            [v42 bounds];
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v51 = v50;

            v52 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
            v53 = OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationBackgroundView;
            v54 = *&v30[OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationBackgroundView];
            *&v30[OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationBackgroundView] = v52;

            v55 = [v41 image];
            v56 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

            v57 = OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationView;
            v58 = *&v30[OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationView];
            *&v30[OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationView] = v56;

            v59 = v41;
            v60 = [v59 window];
            if (!v60)
            {
LABEL_34:

              sub_1D11B50F8();
              goto LABEL_35;
            }

            v61 = v60;
            v62 = [v59 superview];
            if (!v62)
            {
LABEL_33:

              goto LABEL_34;
            }

            v120 = v62;
            v63 = [v30 view];
            if (v63)
            {
              v64 = v63;
              v65 = [v63 superview];

              if (v65)
              {
                v116 = v65;
                v66 = v119;
                v67 = *&v119[v53];
                if (v67)
                {
                  v68 = *&v119[v39];
                  if (v68)
                  {
                    v69 = *&v119[v57];
                    if (v69)
                    {
                      v114 = v69;
                      v70 = v68;
                      v71 = v66;
                      v72 = v67;
                      v115 = v70;
                      [v70 setAlpha_];
                      v73 = [v71 view];
                      if (v73)
                      {
                        v74 = v73;
                        [v73 frame];
                        v76 = v75;
                        v78 = v77;

                        [v116 convertPoint:v61 toCoordinateSpace:{v76, v78}];
                        v80 = v79;
                        v82 = v81;
                        [v72 frame];
                        [v72 setFrame_];
                        v83 = [objc_opt_self() whiteColor];
                        [v72 setBackgroundColor_];

                        [v72 setAlpha_];
                        v84 = [v72 layer];
                        sub_1D138D84C();
                        [v84 setCornerRadius_];

                        [v72 setClipsToBounds_];
                        [v61 addSubview_];
                        [v61 bringSubviewToFront_];
                        v85 = v114;
                        [v59 bounds];
                        [v85 bounds];
                        [v85 setBounds_];
                        [v59 frame];
                        v87 = v86;
                        v89 = v88;

                        v90 = v120;
                        [v120 convertPoint:v61 toCoordinateSpace:{v87, v89}];
                        v92 = v91;
                        v94 = v93;
                        [v85 frame];
                        [v85 setFrame_];

                        [v61 addSubview_];
                        [v61 bringSubviewToFront_];

LABEL_35:
                        (*(v118 + 8))(v8, v117);
                        return;
                      }

                      goto LABEL_38;
                    }
                  }
                }

                v61 = v120;
                v112 = v116;
              }

              else
              {
                v112 = v120;
              }

              v61 = v112;
              goto LABEL_33;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }
      }

      (*(v37 + 8))(v8, v5);
    }
  }
}

void sub_1D11B50F8()
{
  v1 = OBJC_IVAR___HRPDFConfigurationViewController_pinchedPageImageView;
  v2 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_pinchedPageImageView);
  if (v2)
  {
    [v2 setAlpha_];
  }

  v3 = OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationBackgroundView;
  [*(v0 + OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationBackgroundView) removeFromSuperview];
  v4 = OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationView;
  v5 = *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationView);
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;

  v7 = *(v0 + v3);
  *(v0 + v3) = 0;

  v8 = *(v0 + v4);
  *(v0 + v4) = 0;
}

void sub_1D11B51A4()
{
  v1 = *&v0[OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationView];
  v2 = OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationBackgroundView;
  v3 = *&v0[OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationBackgroundView];
  v4 = OBJC_IVAR___HRPDFConfigurationViewController_pinchedPageImageView;
  v5 = *&v0[OBJC_IVAR___HRPDFConfigurationViewController_pinchedPageImageView];
  *&v0[OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationView] = 0;
  *&v0[v2] = 0;
  v6 = *&v0[v4];
  *&v0[v4] = 0;
  v17 = v5;

  v18 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v23 = sub_1D11B6C80;
  v24 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1D10CBD3C;
  v22 = &block_descriptor_28;
  v8 = _Block_copy(&aBlock);
  v9 = v1;
  v10 = v3;

  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v5;
  v11[4] = v1;
  v11[5] = v3;
  v23 = sub_1D11B6CA0;
  v24 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1D12A900C;
  v22 = &block_descriptor_53_0;
  v12 = _Block_copy(&aBlock);
  v13 = v17;
  v14 = v10;
  v15 = v9;
  v16 = v0;

  [v18 animateWithDuration:0x10000 delay:v8 options:v12 animations:0.3 completion:0.0];
  _Block_release(v12);
  _Block_release(v8);
}