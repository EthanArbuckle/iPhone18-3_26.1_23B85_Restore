uint64_t sub_1A7CEDAF0(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = 0;
    v6 = result + 48;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = (v6 + 56 * v5);
      v9 = v8;
      while (1)
      {
        v10 = *v9;
        v9 += 7;
        if (v10 == a2)
        {
          break;
        }

        ++v5;
        v8 = v9;
        if (v3 == v5)
        {
          goto LABEL_22;
        }
      }

      if (v2)
      {
      }

      if (v3 < v5)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      if (v5 < 0)
      {
        goto LABEL_26;
      }

      v11 = 0;
      v12 = v5;
      while (v8[v11] == a2)
      {
        ++v12;
        v11 += 7;
        if (v3 == v12)
        {
          v12 = v3;
          break;
        }
      }

      if (v12 < v5)
      {
        goto LABEL_27;
      }

      if (v3 < v12)
      {
        goto LABEL_28;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A7CCC08C(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1A7CCC08C((v13 > 1), v14 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v5;
      *(v15 + 40) = v12;
      if (v12 >= v3)
      {
        return sub_1A7E232D0();
      }

      v5 = v12 + 1;
    }

    while (v3 != v12 + 1);
  }

LABEL_22:
  if (v2)
  {
  }

  return sub_1A7E232D0();
}

uint64_t sub_1A7CEDC98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1E69E7CC0];
  v47 = *(result + 16);
  v6 = 0;
  if (v47)
  {
    v7 = 0;
    v8 = result + 32;
    v45 = *(a5 + 16);
    v46 = *(a4 + 16);
    v44 = a4 + 32;
    v9 = (a5 + 64);
    while (1)
    {
      v10 = *(v8 + 16);
      v48 = *v8;
      *v49 = v10;
      *&v49[14] = *(v8 + 30);
      v11 = v7 >= v46 ? 1 : *(v44 + 8 * v7);
      if (v45 == v7)
      {
        break;
      }

      v51 = *v9;
      v52[0] = v49[21];
      *&v52[8] = *&v49[8];
      sub_1A7CF36A8(&v48, &v53);
      sub_1A7CF36A8(&v48, &v53);
      CLIText.formatted(maxWidth:pad:useColors:)(v11, 1, &v53);

      v12 = *(&v54 + 1);
      v13 = v55;
      sub_1A7CC9878(&v53, *(&v54 + 1));
      v14 = *(v13 + 8);
      sub_1A7CF36A8(&v48, &v51);
      v15 = v14(v12, v13);
      v16 = *(&v54 + 1);
      v17 = v55;
      sub_1A7CC9878(&v53, *(&v54 + 1));
      v18 = (*(v17 + 16))(v16, v17);
      v19 = *(&v54 + 1);
      v20 = v55;
      sub_1A7CC9878(&v53, *(&v54 + 1));
      v21 = (*(v20 + 24))(v19, v20);
      sub_1A7CF3704(&v48);
      v51 = v48;
      *v52 = *v49;
      *&v52[14] = *&v49[14];
      sub_1A7B0CD6C(&v53);
      v53 = v51;
      v54 = *v52;
      *&v55 = *&v52[16];
      *(&v55 + 1) = v15;
      *&v56 = v18;
      *(&v56 + 1) = v21;
      sub_1A7CF3670(&v53, &v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A7CCC998(0, *(v5 + 2) + 1, 1, v5);
      }

      v23 = *(v5 + 2);
      v22 = *(v5 + 3);
      if (v23 >= v22 >> 1)
      {
        v5 = sub_1A7CCC998((v22 > 1), v23 + 1, 1, v5);
      }

      ++v7;
      *(v5 + 2) = v23 + 1;
      v24 = &v5[64 * v23];
      v25 = v53;
      v26 = v54;
      v27 = v56;
      *(v24 + 4) = v55;
      *(v24 + 5) = v27;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v28 = *(*(&v56 + 1) + 16);
      result = sub_1A7CF3758(&v53);
      if (v6 <= v28)
      {
        v6 = v28;
      }

      v9 = (v9 + 56);
      v8 += 40;
      if (v47 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v29 = *(v5 + 2);
    if (v29)
    {
      v50 = MEMORY[0x1E69E7CC0];
      sub_1A7CCE9D8(0, v29, 0);
      v30 = v50;
      v31 = v29 - 1;
      for (i = 32; ; i += 64)
      {
        v33 = *&v5[i];
        v34 = *&v5[i + 16];
        v35 = *&v5[i + 48];
        v55 = *&v5[i + 32];
        v56 = v35;
        v53 = v33;
        v54 = v34;
        v36 = *(&v35 + 1);
        v38 = *&v5[i + 16];
        v37 = *&v5[i + 32];
        v48 = *&v5[i];
        *v49 = v38;
        *&v49[16] = v37;
        sub_1A7CF3670(&v53, &v51);
        v50 = v30;
        v40 = *(v30 + 16);
        v39 = *(v30 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1A7CCE9D8((v39 > 1), v40 + 1, 1);
          v30 = v50;
        }

        *(v30 + 16) = v40 + 1;
        v41 = v30 + (v40 << 6);
        v42 = v48;
        v43 = *&v49[16];
        *(v41 + 48) = *v49;
        *(v41 + 64) = v43;
        *(v41 + 32) = v42;
        *(v41 + 80) = v6;
        *(v41 + 88) = v36;
        if (!v31)
        {
          break;
        }

        --v31;
      }
    }
  }

  return result;
}

uint64_t sub_1A7CEE038@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v177 = sub_1A7CEC4E8(a1, a3, a4, a5 & 0xFFFFFFFF01);
  v7 = *(a4 + 16);
  if (v7)
  {
    v8 = a4 + 41;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v8 - 1);

      v12 = sub_1A7CEDC98(v11, v10, a2 & 1, v177, a3);
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1A7CCCBB0(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1A7CCCBB0((v20 > 1), v21 + 1, 1, v19);
      }

      v9 = v19;
      *(v19 + 2) = v21 + 1;
      v22 = &v19[32 * v21];
      *(v22 + 4) = v12;
      v8 += 16;
      *(v22 + 20) = v14;
      *(v22 + 6) = v16;
      *(v22 + 7) = v18;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v160 = *(v9 + 2);
  if (!v160)
  {
    v155 = MEMORY[0x1E69E7CC0];
LABEL_163:
    v156 = *(v155 + 16);
    a6[3] = &type metadata for CLIFormattedText;
    a6[4] = &protocol witness table for CLIFormattedText;
    v157 = v155;

    *a6 = a1;
    a6[1] = v156;
    a6[2] = v157;
    return result;
  }

  v161 = v9 + 32;

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v174 = v9;
  while (2)
  {
    if (v24 >= *(v9 + 2))
    {
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    v28 = &v161[32 * v24];
    v29 = *(v28 + 3);
    v170 = *(v28 + 2);
    v172 = v28;
    v162 = v25;
    v176 = v24;
    v178 = v29;
    if (v24)
    {
    }

    else
    {
      *&v193 = 0;
      *(&v193 + 1) = 0xE000000000000000;
      v30 = *(v29 + 16);
      if (v30)
      {
        swift_bridgeObjectRetain_n();

        v31 = *(v29 + 66);
        v32 = *(v29 + 66) != 0;
        v33 = v9;
        v34 = *(v29 + 67);
        v35 = sub_1A7D7EE30((v31 << 8) | (*(v29 + 65) << 24));
        MEMORY[0x1AC561C90](v35);

        v36 = sub_1A7D7EE30(v31 & 0xFFFF00FF | (v31 << 8));
        *&v189 = 0;
        *(&v189 + 1) = 0xE000000000000000;
        *&v185 = v36;
        *(&v185 + 1) = v37;
        sub_1A7CC7DFC();
        v38 = sub_1A7E22A30();
        v40 = v39;

        MEMORY[0x1AC561C90](v38, v40);

        v41 = *(v33 + 2);
        if (v41)
        {
          v41 = *(v33 + 7);
          if (*(v41 + 16) < 2uLL)
          {
            LODWORD(v41) = 0;
          }

          else
          {
            if (v34 <= *(v41 + 129))
            {
              v34 = *(v41 + 129);
            }

            LODWORD(v41) = *(v41 + 130) << 8;
          }
        }

        v42 = sub_1A7D7EE30(v41 | (v34 << 24) | v31);
        MEMORY[0x1AC561C90](v42);

        v43 = v30 - 1;
        if (v43)
        {
          v50 = 0;
          v51 = 2;
          do
          {
            v55 = *(v29 + v50 + 130);
            v167 = *(v29 + v50 + 130) != 0;
            v53 = *(v29 + v50 + 131);
            v56 = sub_1A7D7EE30(v55 | (v55 << 8));
            *&v189 = 0;
            *(&v189 + 1) = 0xE000000000000000;
            *&v185 = v56;
            *(&v185 + 1) = v57;
            sub_1A7CC7DFC();
            v58 = sub_1A7E22A30();
            v60 = v59;

            MEMORY[0x1AC561C90](v58, v60);

            v52 = *(v174 + 2);
            if (v52)
            {
              v61 = *(v174 + 7);
              if (v51 < *(v61 + 16))
              {
                v52 = v61 + v50;
                if (v53 <= *(v52 + 193))
                {
                  v53 = *(v52 + 193);
                }

                LODWORD(v52) = *(v52 + 194) << 8;
              }

              else
              {
                LODWORD(v52) = 0;
              }
            }

            v32 |= v167;
            v54 = sub_1A7D7EE30(v52 | (v53 << 24) | v55);
            MEMORY[0x1AC561C90](v54);

            v50 += 64;
            ++v51;
            --v43;
            v29 = v178;
          }

          while (v43);
        }

        v44 = *(&v193 + 1);
        if (v32)
        {
          v45 = v193;
          result = sub_1A7CCCAA4(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v46 = result;
          v48 = *(result + 16);
          v47 = *(result + 24);
          v9 = v174;
          if (v48 >= v47 >> 1)
          {
            result = sub_1A7CCCAA4((v47 > 1), v48 + 1, 1, result);
            v46 = result;
          }

          *(v46 + 2) = v48 + 1;
          v49 = &v46[16 * v48];
          *(v49 + 4) = v45;
          *(v49 + 5) = v44;
          v24 = 0;
          v29 = v178;
          goto LABEL_41;
        }

        v9 = v174;
        v24 = 0;
      }

      else
      {
      }
    }

    v46 = MEMORY[0x1E69E7CC0];
LABEL_41:
    if (v170 < 0)
    {
      goto LABEL_165;
    }

    if (v170)
    {
      v62 = 0;
      v63 = *(v29 + 16);
      v165 = v63;
      do
      {
        v64 = 0xE000000000000000;
        *&v193 = 0;
        *(&v193 + 1) = 0xE000000000000000;
        if (v63)
        {
          v168 = v46;

          v66 = 1;
          v67 = v63;
          v68 = 129;
          do
          {
            v73 = *(v65 + v68 - 62);
            v74 = *(v65 + v68 - 41);
            if (v68 == 129)
            {
              v75 = sub_1A7D7EE30((*(v65 + 65) << 16) | (*(v65 + 65) << 24));
              v77 = v76;

              MEMORY[0x1AC561C90](v75, v77);
              v9 = v174;
            }

            else
            {
            }

            if (v62 >= *(v74 + 16))
            {

              *&v189 = 0;
              *(&v189 + 1) = 0xE000000000000000;
              *&v185 = 32;
              *(&v185 + 1) = 0xE100000000000000;
              sub_1A7CC7DFC();
              v81 = sub_1A7E22A30();
            }

            else
            {
              v78 = v74 + 16 * v62;
              v80 = *(v78 + 32);
              v79 = *(v78 + 40);

              v81 = v80;
              v82 = v79;
            }

            MEMORY[0x1AC561C90](v81, v82);
            v24 = v176;

            if (v176 < *(v9 + 2))
            {
              v83 = *(v172 + 3);
              if (v66 < *(v83 + 16))
              {
                v84 = *(v83 + v68);
                if (v73 <= v84)
                {
                  v73 = v84;
                }
              }
            }

            if (v73 > 4)
            {
              v69 = 8623330;
              if (v73 != 8)
              {
                v69 = 9541090;
              }

              if (v73 == 7)
              {
                v69 = 8557794;
              }

              v70 = 9410018;
              if (v73 == 5)
              {
                v70 = 9344482;
              }

              if (v73 <= 6)
              {
                v71 = v70;
              }

              else
              {
                v71 = v69;
              }

              v72 = 0xA300000000000000;
            }

            else if (v73 <= 1)
            {
              if (v73)
              {
                v71 = 9082082;
              }

              else
              {
                v71 = 32;
              }

              if (v73)
              {
                v72 = 0xA300000000000000;
              }

              else
              {
                v72 = 0xE100000000000000;
              }
            }

            else if (v73 == 2)
            {
              v71 = 9147618;
              v72 = 0xA300000000000000;
            }

            else
            {
              if (v73 == 3)
              {
                v71 = 8819938;
              }

              else
              {
                v71 = 8885474;
              }

              v72 = 0xA300000000000000;
            }

            MEMORY[0x1AC561C90](v71, v72);

            v68 += 64;
            ++v66;
            --v67;
            v65 = v178;
          }

          while (v67);

          v64 = *(&v193 + 1);
          v85 = v193;
          v63 = v165;
          v46 = v168;
        }

        else
        {
          v85 = 0;
        }

        v86 = v46;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v46 = v86;
        }

        else
        {
          v46 = sub_1A7CCCAA4(0, *(v86 + 2) + 1, 1, v86);
        }

        v88 = *(v46 + 2);
        v87 = *(v46 + 3);
        if (v88 >= v87 >> 1)
        {
          v46 = sub_1A7CCCAA4((v87 > 1), v88 + 1, 1, v46);
        }

        ++v62;
        *(v46 + 2) = v88 + 1;
        v89 = &v46[16 * v88];
        *(v89 + 4) = v85;
        *(v89 + 5) = v64;
      }

      while (v62 != v170);
    }

    v169 = v46;
    v90 = v24 + 1;

    v197 = 0;
    v198 = 0xE000000000000000;
    v91 = v178;
    v163 = v24 + 1;
    v166 = *(v178 + 16);
    if (!v166)
    {

LABEL_147:

      result = v162;
      v140 = v169;
      goto LABEL_148;
    }

    v92 = 0;
    v93 = 96;
    v94 = 1;
    v164 = &v161[32 * v90];
    while (1)
    {
      v95 = *(v91 + v93 - 31);
      v96 = *(v91 + v93 - 29);
      v97 = *(v91 + v93 - 28);
      v98 = *(v91 + v93 - 28) != 0;
      if (v90 >= *(v174 + 2) || (v99 = *(v164 + 3), v94 - 1 >= *(v99 + 16)))
      {
        v195 = 0u;
        v196 = 0u;
        v193 = 0u;
        v194 = 0u;
      }

      else
      {
        v100 = v99 + v93;
        v101 = *(v100 - 64);
        v102 = *(v100 - 48);
        v103 = *(v100 - 16);
        v187 = *(v100 - 32);
        v188 = v103;
        v185 = v101;
        v186 = v102;
        v189 = *(v100 - 64);
        v190 = *(v100 - 48);
        v191 = *(v100 - 32);
        v192 = *(v100 - 16);
        v104 = v94;
        sub_1A7CF3670(&v185, &v181);
        v94 = v104;
        v193 = v189;
        v194 = v190;
        v195 = v191;
        v196 = v192;
      }

      if (v24 >= *(v174 + 2) || (v105 = *(v172 + 3), v94 >= *(v105 + 16)))
      {
        v191 = 0u;
        v192 = 0u;
        v189 = 0u;
        v190 = 0u;
      }

      else
      {
        v106 = (v105 + v93);
        v107 = *v106;
        v108 = v106[1];
        v109 = v106[3];
        v183 = v106[2];
        v184 = v109;
        v181 = v107;
        v182 = v108;
        v185 = *v106;
        v186 = v106[1];
        v187 = v106[2];
        v188 = v106[3];
        v110 = v94;
        sub_1A7CF3670(&v181, v180);
        v94 = v110;
        v189 = v185;
        v190 = v186;
        v191 = v187;
        v192 = v188;
      }

      v171 = v94;
      if (v90 >= *(v174 + 2) || (v111 = *(v164 + 3), v94 >= *(v111 + 16)))
      {
        v112 = v98;
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
      }

      else
      {
        v112 = v98;
        v113 = (v111 + v93);
        v114 = *v113;
        v115 = v113[1];
        v116 = v113[3];
        v180[2] = v113[2];
        v180[3] = v116;
        v180[0] = v114;
        v180[1] = v115;
        v181 = *v113;
        v182 = v113[1];
        v183 = v113[2];
        v184 = v113[3];
        sub_1A7CF3670(v180, v179);
        v185 = v181;
        v186 = v182;
        v187 = v183;
        v188 = v184;
      }

      v117 = *(&v194 + 1);
      v118 = v93;
      if (v93 == 96)
      {
        if (*(&v194 + 1))
        {
          v119 = BYTE1(v195) << 24;
        }

        else
        {
          v119 = 0;
        }

        v120 = sub_1A7D7EE30(v119 | (v95 << 16) | (v97 << 8));
        MEMORY[0x1AC561C90](v120);

        v117 = *(&v194 + 1);
      }

      v121 = BYTE2(v195);
      if (v97 > BYTE2(v195))
      {
        v121 = v97;
      }

      if (v117)
      {
        v122 = v121;
      }

      else
      {
        v122 = v97;
      }

      v123 = sub_1A7D7EE30(v122 | (v122 << 8));
      *&v181 = 0;
      *(&v181 + 1) = 0xE000000000000000;
      *&v180[0] = v123;
      *(&v180[0] + 1) = v124;
      sub_1A7CC7DFC();
      v125 = sub_1A7E22A30();
      v127 = v126;

      MEMORY[0x1AC561C90](v125, v127);

      v128 = *(&v194 + 1);
      v129 = BYTE2(v195);
      if (v97 > BYTE2(v195))
      {
        v129 = v97;
      }

      if (*(&v194 + 1))
      {
        v130 = v129;
      }

      else
      {
        v130 = v97;
      }

      v131 = BYTE4(v191);
      if (!*(&v190 + 1))
      {
        v131 = 0;
      }

      v132 = v131;
      if (v131 <= BYTE2(v187))
      {
        v132 = BYTE2(v187);
      }

      if (*(&v186 + 1))
      {
        v133 = v132;
      }

      else
      {
        v133 = v131;
      }

      if (*(&v190 + 1))
      {
        v134 = BYTE1(v191);
        sub_1A7CC9970(&v189, &qword_1EB2B5430);
        if (v96 <= v134)
        {
          v96 = v134;
        }

        v128 = *(&v194 + 1);
      }

      v24 = v176;
      if (v128)
      {
        v135 = BYTE3(v195);
        sub_1A7CC9970(&v193, &qword_1EB2B5430);
        if (!*(&v186 + 1))
        {
          goto LABEL_135;
        }
      }

      else
      {
        v135 = 0;
        if (!*(&v186 + 1))
        {
          goto LABEL_135;
        }
      }

      v136 = BYTE1(v187);
      sub_1A7CC9970(&v185, &qword_1EB2B5430);
      if (v135 <= v136)
      {
        v135 = v136;
      }

      v90 = v163;
LABEL_135:
      v92 |= v112;
      v137 = sub_1A7D7EE30((v96 << 16) | (v135 << 24) | (v133 << 8) | v130);
      MEMORY[0x1AC561C90](v137);

      if (v166 == v171)
      {
        break;
      }

      v94 = v171 + 1;
      v93 = v118 + 64;
      v91 = v178;
    }

    if ((v92 & 1) == 0)
    {
      v9 = v174;
      goto LABEL_147;
    }

    v138 = v197;
    v139 = v198;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v140 = v169;
    }

    else
    {
      v140 = sub_1A7CCCAA4(0, *(v169 + 2) + 1, 1, v169);
    }

    v142 = *(v140 + 2);
    v141 = *(v140 + 3);
    v9 = v174;
    result = v162;
    if (v142 >= v141 >> 1)
    {
      v140 = sub_1A7CCCAA4((v141 > 1), v142 + 1, 1, v140);
      result = v162;
    }

    *(v140 + 2) = v142 + 1;
    v143 = &v140[16 * v142];
    *(v143 + 4) = v138;
    *(v143 + 5) = v139;
LABEL_148:
    v144 = *(v140 + 2);
    v145 = *(result + 16);
    v146 = v145 + v144;
    if (__OFADD__(v145, v144))
    {
      goto LABEL_166;
    }

    v147 = v140;
    result = swift_isUniquelyReferenced_nonNull_native();
    v148 = v162;
    if (!result || v146 > *(v162 + 24) >> 1)
    {
      if (v145 <= v146)
      {
        v149 = v145 + v144;
      }

      else
      {
        v149 = v145;
      }

      result = sub_1A7CCCAA4(result, v149, 1, v162);
      v148 = result;
    }

    if (*(v147 + 2))
    {
      v27 = v163;
      if ((*(v148 + 24) >> 1) - *(v148 + 16) < v144)
      {
        goto LABEL_168;
      }

      v150 = v148;
      swift_arrayInitWithCopy();

      v25 = v150;
      if (!v144)
      {
        goto LABEL_13;
      }

      v151 = *(v150 + 16);
      v152 = __OFADD__(v151, v144);
      v153 = v151 + v144;
      if (v152)
      {
        goto LABEL_169;
      }

      *(v150 + 16) = v153;
LABEL_13:
      v24 = v27;
      if (v27 == v160)
      {
        v154 = v25;

        v155 = v154;
        goto LABEL_163;
      }

      continue;
    }

    break;
  }

  v26 = v148;

  v25 = v26;
  v27 = v163;
  if (!v144)
  {
    goto LABEL_13;
  }

LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
  return result;
}

uint64_t sub_1A7CEEDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v80 = *MEMORY[0x1E69E9840];
  v75 = a1;
  v77[4] = BYTE4(a3);
  *v77 = a3;
  v67 = *(a2 + 16);
  if (v67)
  {
    v64 = a2 + 32;

    for (i = 0; i != v67; ++i)
    {
      v5 = *(v64 + 16 * i);
      v6 = *(v5 + 16);
      if (v6)
      {

        for (j = 0; j != v6; ++j)
        {
          if (j >= *(v5 + 16))
          {
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
          }

          if (*(v3 + 2) <= j)
          {
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = sub_1A7CCC644(0, *(v3 + 2) + 1, 1, v3);
              }

              v9 = *(v3 + 2);
              v8 = *(v3 + 3);
              if (v9 >= v8 >> 1)
              {
                v3 = sub_1A7CCC644((v8 > 1), v9 + 1, 1, v3);
              }

              *(v3 + 2) = v9 + 1;
              v10 = &v3[56 * v9];
              *(v10 + 2) = xmmword_1A7E44250;
              *(v10 + 6) = 1;
              v10[56] = 2;
              *(v10 + 57) = v72;
              *(v10 + 15) = *(&v72 + 3);
              *(v10 + 4) = vdupq_n_s64(1uLL);
              *(v10 + 40) = 0;
              v10[82] = 1;
            }

            while (v9 < j);
            v75 = v3;
          }
        }
      }
    }

    v11 = MEMORY[0x1E69E7CC0];
    v73 = MEMORY[0x1E69E7CC0];

    sub_1A7CCE988(0, v67, 0);
    v12 = 0;
    v13 = v73;
    do
    {
      v14 = (v64 + 16 * v12);
      v15 = *v14;
      v69 = v14[8];
      v63 = v14[9];
      v16 = *(*v14 + 16);
      v17 = *(v3 + 2);

      if (v16 >= v17)
      {
        v18 = v15;
      }

      else
      {

        v18 = v15;
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1A7CCC868(0, *(v18 + 2) + 1, 1, v18);
          }

          v20 = *(v18 + 2);
          v19 = *(v18 + 3);
          v21 = v20 + 1;
          if (v20 >= v19 >> 1)
          {
            v18 = sub_1A7CCC868((v19 > 1), v20 + 1, 1, v18);
          }

          *(v18 + 2) = v21;
          v22 = &v18[40 * v20];
          *(v22 + 4) = 0;
          *(v22 + 5) = 0;
          v22[48] = 1;
          *(v22 + 13) = *&v71[3];
          *(v22 + 49) = *v71;
          *(v22 + 7) = v11;
          *(v22 + 16) = 0;
          *(v22 + 34) = 0;
        }

        while (v21 < *(v3 + 2));
      }

      v72 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1A7CCE988((v23 > 1), v24 + 1, 1);
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v18;
      ++v12;
      *(v25 + 40) = v69;
      *(v25 + 41) = v63;
    }

    while (v12 != v67);
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v76 = v13;
  sub_1A7CEC0F8();
  v26 = v75;
  v27 = v77[0];
  v28 = *&v77[1];
  v75 = 0;
  v29 = sub_1A7E22070();
  v61 = MEMORY[0x1AC561960](1, v29, &v75);
  v30 = v13;
  v31 = WORD1(v75);
  v75 = v26;
  v76 = v13;
  v77[0] = v27;
  *&v77[1] = v28;
  v65 = *(v13 + 16);
  if (!v65)
  {
    goto LABEL_63;
  }

  v32 = 0;
  v68 = v13 + 32;
  do
  {
    if (v32 >= *(v30 + 16))
    {
      goto LABEL_70;
    }

    v33 = *(v68 + 16 * v32);
    v34 = *(v33 + 16);
    if (v34)
    {

      for (k = 0; k != v34; ++k)
      {
        if (k >= *(v33 + 16))
        {
          goto LABEL_69;
        }

        if (*(v26 + 2) <= k)
        {
          do
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_1A7CCC644(0, *(v26 + 2) + 1, 1, v26);
            }

            v37 = *(v26 + 2);
            v36 = *(v26 + 3);
            if (v37 >= v36 >> 1)
            {
              v26 = sub_1A7CCC644((v36 > 1), v37 + 1, 1, v26);
            }

            *(v26 + 2) = v37 + 1;
            v38 = &v26[56 * v37];
            *(v38 + 2) = xmmword_1A7E44250;
            *(v38 + 6) = 1;
            v38[56] = 2;
            *(v38 + 57) = v72;
            *(v38 + 15) = *(&v72 + 3);
            *(v38 + 4) = vdupq_n_s64(1uLL);
            *(v38 + 40) = 0;
            v38[82] = 1;
          }

          while (v37 < k);
          v75 = v26;
        }
      }

      v30 = v13;
    }

    ++v32;
  }

  while (v32 != v65);
  v39 = *(v30 + 16);
  if (v39)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v74 = MEMORY[0x1E69E7CC0];

    sub_1A7CCE988(0, v39, 0);
    v41 = 0;
    v42 = v74;
    v62 = v39;
    do
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_71;
      }

      v44 = (v68 + 16 * v41);
      v45 = *v44;
      v70 = v44[8];
      v66 = v44[9];
      v46 = *(*v44 + 16);
      v47 = *(v26 + 2);

      if (v46 >= v47)
      {
        v48 = v45;
      }

      else
      {

        v48 = v45;
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1A7CCC868(0, *(v48 + 2) + 1, 1, v48);
          }

          v50 = *(v48 + 2);
          v49 = *(v48 + 3);
          v51 = v50 + 1;
          if (v50 >= v49 >> 1)
          {
            v48 = sub_1A7CCC868((v49 > 1), v50 + 1, 1, v48);
          }

          *(v48 + 2) = v51;
          v52 = &v48[40 * v50];
          *(v52 + 4) = 0;
          *(v52 + 5) = 0;
          v52[48] = 1;
          *(v52 + 13) = *&v71[3];
          *(v52 + 49) = *v71;
          *(v52 + 7) = v40;
          *(v52 + 16) = 0;
          *(v52 + 34) = 0;
        }

        while (v51 < *(v26 + 2));
      }

      v54 = *(v74 + 16);
      v53 = *(v74 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1A7CCE988((v53 > 1), v54 + 1, 1);
      }

      *(v74 + 16) = v54 + 1;
      v55 = v74 + 16 * v54;
      *(v55 + 32) = v48;
      *(v55 + 40) = v70;
      *(v55 + 41) = v66;
      v41 = v43;
    }

    while (v43 != v62);
    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_63:

    v42 = MEMORY[0x1E69E7CC0];
  }

  if (v61)
  {
    v56 = 80;
  }

  else
  {
    v56 = v31;
  }

  v76 = v42;
  sub_1A7CEC0F8();
  sub_1A7CEE038(v56, 1, v75, v76, v77[0] | (v77[1] << 8) | (v77[2] << 16) | (v77[3] << 24) | (v77[4] << 32), &v75);

  v57 = v78;
  v58 = v79;
  sub_1A7CC9878(&v75, v78);
  (*(v58 + 24))(v57, v58);
  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CF3788(&qword_1EB2B3088, &qword_1EB2B4AA0);
  v59 = sub_1A7E221F0();

  sub_1A7B0CD6C(&v75);
  return v59;
}

uint64_t sub_1A7CEF5D0@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 17);

  sub_1A7CEBF20();
  sub_1A7CEC0F8();
  sub_1A7CEE038(a1, a2, v8, v9, v10 | (v11 << 8) | (BYTE1(v11) << 16) | (BYTE2(v11) << 24) | (HIBYTE(v11) << 32), a3);
}

unint64_t sub_1A7CEF6A8(uint64_t a1)
{
  result = sub_1A7CEF6D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A7CEF6D0()
{
  result = qword_1EB2B5428;
  if (!qword_1EB2B5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5428);
  }

  return result;
}

uint64_t sub_1A7CEF724(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A7D602E4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1A7E23080();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1A7E22580();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1A7CEF858(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A7CEF858(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A7CF0024(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1A7CEFDA4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A7CCC08C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1A7CCC08C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1A7CEFDA4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1A7CEFDA4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1A7CEFF98(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A7CF0024(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1A7CF0038(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](a2);
  v6 = sub_1A7E23240();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A7CF1688(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A7CF0154(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A7E23200();
  sub_1A7E22350();
  v8 = sub_1A7E23240();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1A7E230D0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1A7CF17D4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A7CF02C8(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v9 = *v6;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](*a2);
  v10 = sub_1A7E23240();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A7CD1F00(a2, v23, a3);
    v22 = *v20;
    sub_1A7CF1C54(v23, v12, isUniquelyReferenced_nonNull_native, a5, a6, a3);
    *v20 = v22;
    sub_1A7CE5028(a2, a1, a3);
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    sub_1A7CD1F00(*(v9 + 48) + 24 * v12, v23, a3);
    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = swift_unknownObjectWeakLoadStrong();
    sub_1A7CC9970(v23, a3);
    if (!Strong)
    {
      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }

    if (v15)
    {
      break;
    }

LABEL_4:
    swift_unknownObjectRelease();
LABEL_5:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (Strong != v15)
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_1A7CC9970(a2, a3);
  sub_1A7CD1F00(*(v9 + 48) + 24 * v12, a1, a3);
  return 0;
}

uint64_t sub_1A7CF04F4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  v11 = *v5;
  sub_1A7E23200();
  sub_1A7E22350();
  v12 = sub_1A7E23240();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = (*(v11 + 48) + 32 * v14);
      v17 = *v16 == a2 && v16[1] == a3;
      if (v17 || (sub_1A7E230D0() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = *(v11 + 48) + 32 * v14;
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    *a1 = *v20;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    *(a1 + 24) = v23;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;

    sub_1A7CF1954(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v5 = v24;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5;
    return 1;
  }
}

uint64_t sub_1A7CF0694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](a2);
  v8 = sub_1A7E23240();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 16 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
    *a1 = *(*(v7 + 48) + 16 * v10);
    swift_unknownObjectRetain();
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v13 = swift_unknownObjectRetain();
    sub_1A7CF1AF4(v13, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }
}

uint64_t sub_1A7CF080C()
{
  v1 = v0;
  v2 = *v0;
  sub_1A7CC7FFC(&qword_1EB2B5468);
  result = sub_1A7E22B10();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v16);
      result = sub_1A7E23240();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A7CF0A5C()
{
  v1 = v0;
  v2 = *v0;
  sub_1A7CC7FFC(&qword_1EB2B54B8);
  result = sub_1A7E22B10();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A7CF0CBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v7 = *v4;
  sub_1A7CC7FFC(a2);
  result = sub_1A7E22B10();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      sub_1A7CE5028(*(v7 + 48) + 24 * (v18 | (v10 << 6)), v29, a4);
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v29[0]);
      result = sub_1A7E23240();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v16 + 8 * v23);
          if (v27 != -1)
          {
            v17 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_1A7CE5028(v29, *(v9 + 48) + 24 * v17, a4);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v7 + 32);
    if (v28 >= 64)
    {
      bzero((v7 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v28;
    }

    v6 = v4;
    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_1A7CF0F3C()
{
  v1 = v0;
  v2 = *v0;
  sub_1A7CC7FFC(&qword_1EB2B5498);
  result = sub_1A7E22B10();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 32 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v31 = *(v17 + 17);
      v30 = *(v17 + 24);
      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 32 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      *(v13 + 17) = v31;
      v2 = v29;
      *(v13 + 24) = v30;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A7CF11C4()
{
  v1 = *v0;
  sub_1A7CC7FFC(&qword_1EB2B5490);
  result = sub_1A7E22B10();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v23 = *(*(v1 + 48) + 16 * (v12 | (v4 << 6)));
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v23);
      result = sub_1A7E23240();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v10 + 8 * v17);
          if (v21 != -1)
          {
            v11 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v3 + 48) + 16 * v11) = v23;
      ++*(v3 + 16);
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= v9)
      {
        break;
      }

      v14 = v5[v4];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    v22 = 1 << *(v1 + 32);
    if (v22 >= 64)
    {
      bzero((v1 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v22;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1A7CF1418()
{
  v1 = v0;
  v2 = *v0;
  sub_1A7CC7FFC(&qword_1EB2B5478);
  result = sub_1A7E22B10();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 2 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v18);
      MEMORY[0x1AC562AF0](v19);
      result = sub_1A7E23240();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 2 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A7CF1688(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A7CF080C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1A7CF1FF0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A7CF28EC();
  }

  v8 = *v3;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v4);
  result = sub_1A7E23240();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A7E23130();
  __break(1u);
  return result;
}

uint64_t sub_1A7CF17D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A7CF0A5C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A7CF2154();
      goto LABEL_16;
    }

    sub_1A7CF2B0C();
  }

  v10 = *v4;
  sub_1A7E23200();
  sub_1A7E22350();
  result = sub_1A7E23240();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A7E230D0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A7E23130();
  __break(1u);
  return result;
}

uint64_t sub_1A7CF1954(uint64_t result, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a6)
  {
    sub_1A7CF0F3C();
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1A7CF2498();
      goto LABEL_16;
    }

    sub_1A7CF2F94();
  }

  v14 = *v6;
  sub_1A7E23200();
  sub_1A7E22350();
  result = sub_1A7E23240();
  v15 = -1 << *(v14 + 32);
  a5 = result & ~v15;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    do
    {
      v17 = (*(v14 + 48) + 32 * a5);
      if (*v17 == v11 && v17[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A7E230D0();
      if (result)
      {
        goto LABEL_19;
      }

      a5 = (a5 + 1) & v16;
    }

    while (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_16:
  v19 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v20 = *(v19 + 48) + 32 * a5;
  *v20 = v11;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A7E23130();
  __break(1u);
  return result;
}

uint64_t sub_1A7CF1AF4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_1A7CF11C4();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1A7CF260C();
      a3 = v9;
      goto LABEL_12;
    }

    sub_1A7CF31F8();
  }

  v10 = *v4;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v6);
  result = sub_1A7E23240();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    while (*(*(v10 + 48) + 16 * a3) != v6)
    {
      a3 = (a3 + 1) & v12;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v14 = (*(v13 + 48) + 16 * a3);
  *v14 = v6;
  v14[1] = a2;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A7E23130();
  __break(1u);
  return result;
}

uint64_t sub_1A7CF1C54(void *a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1A7CF0CBC(v10 + 1, a4, a5, a6);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1A7CF22D4(a4, a5, a6);
        goto LABEL_17;
      }

      sub_1A7CF2D44(v10 + 1, a4, a5, a6);
    }

    v12 = *v6;
    sub_1A7E23200();
    MEMORY[0x1AC562AF0](*a1);
    v13 = sub_1A7E23240();
    v14 = -1 << *(v12 + 32);
    a2 = v13 & ~v14;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      do
      {
        sub_1A7CD1F00(*(v12 + 48) + 24 * a2, v24, a6);
        Strong = swift_unknownObjectWeakLoadStrong();
        v17 = swift_unknownObjectWeakLoadStrong();
        sub_1A7CC9970(v24, a6);
        if (Strong)
        {
          if (v17)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (Strong == v17)
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else if (!v17)
        {
          goto LABEL_20;
        }

        swift_unknownObjectRelease();
LABEL_11:
        a2 = (a2 + 1) & v15;
      }

      while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_17:
  v18 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1A7CE5028(a1, *(v18 + 48) + 24 * a2, a6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_20:
    sub_1A7CC7FFC(a6);
    result = sub_1A7E23130();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1A7CF1E70(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_1A7CF1418();
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1A7CF27AC();
      a2 = v8;
      goto LABEL_15;
    }

    sub_1A7CF3430();
  }

  v9 = *v3;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v4);
  MEMORY[0x1AC562AF0](HIBYTE(v4));
  result = sub_1A7E23240();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = (*(v9 + 48) + 2 * a2);
      v13 = *v12;
      v14 = v12[1];
      if (v13 == v5 && HIBYTE(v4) == v14)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = (*(v16 + 48) + 2 * a2);
  *v17 = v5;
  v17[1] = HIBYTE(v4);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1A7E23130();
  __break(1u);
  return result;
}

void *sub_1A7CF1FF0()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5468);
  v2 = *v0;
  v3 = sub_1A7E22B00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A7CF2154()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B54B8);
  v2 = *v0;
  v3 = sub_1A7E22B00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A7CF22D4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  sub_1A7CC7FFC(a1);
  v6 = *v3;
  v7 = sub_1A7E22B00();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = 24 * (v18 | (v12 << 6));
        sub_1A7CD1F00(*(v6 + 48) + v21, v22, a3);
        result = sub_1A7CE5028(v22, *(v8 + 48) + v21, a3);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_1A7CF2498()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5498);
  v2 = *v0;
  v3 = sub_1A7E22B00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v19;
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A7CF260C()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5490);
  v2 = *v0;
  v3 = sub_1A7E22B00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A7CF27AC()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5478);
  v2 = *v0;
  v3 = sub_1A7E22B00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A7CF28EC()
{
  v1 = v0;
  v2 = *v0;
  sub_1A7CC7FFC(&qword_1EB2B5468);
  result = sub_1A7E22B10();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v15);
      result = sub_1A7E23240();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A7CF2B0C()
{
  v1 = v0;
  v2 = *v0;
  sub_1A7CC7FFC(&qword_1EB2B54B8);
  result = sub_1A7E22B10();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1A7E23200();

      sub_1A7E22350();
      result = sub_1A7E23240();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A7CF2D44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v7 = *v4;
  sub_1A7CC7FFC(a2);
  result = sub_1A7E22B10();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      sub_1A7CD1F00(*(v7 + 48) + 24 * (v17 | (v10 << 6)), v27, a4);
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v27[0]);
      result = sub_1A7E23240();
      v20 = -1 << *(v9 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v15 + 8 * v22);
          if (v26 != -1)
          {
            v16 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1A7CE5028(v27, *(v9 + 48) + 24 * v16, a4);
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v4;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }

  return result;
}

uint64_t sub_1A7CF2F94()
{
  v1 = v0;
  v2 = *v0;
  sub_1A7CC7FFC(&qword_1EB2B5498);
  result = sub_1A7E22B10();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 32 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v29 = *(v17 + 17);
      v30 = *(v17 + 16);
      v20 = *(v17 + 24);
      sub_1A7E23200();

      sub_1A7E22350();
      result = sub_1A7E23240();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 32 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v30;
      *(v13 + 17) = v29;
      *(v13 + 24) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A7CF31F8()
{
  v1 = v0;
  v2 = *v0;
  sub_1A7CC7FFC(&qword_1EB2B5490);
  result = sub_1A7E22B10();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v22 = *(*(v2 + 48) + 16 * (v12 | (v5 << 6)));
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v22);
      result = sub_1A7E23240();
      v15 = -1 << *(v4 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v10 + 8 * v17);
          if (v21 != -1)
          {
            v11 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 16 * v11) = v22;
      ++*(v4 + 16);
      result = swift_unknownObjectRetain();
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A7CF3430()
{
  v1 = v0;
  v2 = *v0;
  sub_1A7CC7FFC(&qword_1EB2B5478);
  result = sub_1A7E22B10();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 2 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v17);
      MEMORY[0x1AC562AF0](v18);
      result = sub_1A7E23240();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 2 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A7CF3788(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7CF37D0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_1A7CCC75C(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

__n128 sub_1A7CF3914(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A7CF3928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CF3970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7CF39D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD22FC;

  return sub_1A7CF3A68(a1);
}

uint64_t sub_1A7CF3A68(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1A7CC7FFC(&qword_1EB2B4A80);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for LinkState(0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7CF3BAC, 0, 0);
}

void sub_1A7CF3BAC()
{
  v1 = LinkEngine.linkConnector.getter();
  v65 = v2;
  if (!v1)
  {
    goto LABEL_56;
  }

  v3 = *(v0 + 144);
  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 16));
  v5 = v4 + 64;
  v74 = MEMORY[0x1E69E7CC0];
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;

  v10 = 0;
  if (v8)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      while (1)
      {

        v8 &= v8 - 1;
        if (sub_1A7CF44C4())
        {
          sub_1A7E22BF0();
          sub_1A7E22C40();
          sub_1A7E22C50();
          sub_1A7E22C00();
          v10 = v11;
          if (!v8)
          {
            goto LABEL_8;
          }
        }

        else
        {

          v10 = v11;
          if (!v8)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v11 = v10;
      }
    }
  }

  v12 = *(v0 + 152);

  v5 = v74;
  os_unfair_lock_lock((v12 + 32));
  v73 = *(v12 + 36);
  os_unfair_lock_unlock((v12 + 32));
  if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
  {
LABEL_54:
    v13 = sub_1A7E22DA0();
    if (!v13)
    {
      goto LABEL_55;
    }

LABEL_17:
    if (v13 < 1)
    {
      __break(1u);
      return;
    }

    v14 = 0;
    v71 = v13;
    v72 = v5 & 0xC000000000000001;
    v70 = v5;
    while (1)
    {
      if (v72)
      {
        v18 = MEMORY[0x1AC562480](v14, v5);
        if (!v73)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v14 >= *(v5 + 16))
        {
          goto LABEL_53;
        }

        v18 = *(v5 + 8 * v14 + 32);

        if (!v73)
        {
LABEL_31:
          os_unfair_lock_lock((v18 + 40));
          v24 = type metadata accessor for LinkStateComponent(0);
          v25 = v24;
          v26 = *(v18 + 48);
          if (*(v26 + 16) && (v27 = sub_1A7CD0DFC(v24), (v28 & 1) != 0))
          {
            sub_1A7B0CD10(*(v26 + 56) + 32 * v27, v0 + 16);
          }

          else
          {
            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
          }

          v35 = *(v0 + 176);
          os_unfair_lock_unlock((v18 + 40));
          sub_1A7CC7FFC(&qword_1EB2B66D0);
          v36 = swift_dynamicCast();
          v37 = *(v25 - 8);
          v67 = *(v37 + 56);
          v67(v35, v36 ^ 1u, 1, v25);
          v69 = *(v37 + 48);
          v38 = v69(v35, 1, v25);
          v39 = *(v0 + 232);
          v40 = *(v0 + 176);
          if (v38)
          {
            sub_1A7CD9FEC(v40);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v49 = *(v0 + 224);
            v50 = *(v0 + 176);
            sub_1A7CD0EC4(v40, v49);
            v51 = v50;
            v13 = v71;
            sub_1A7CD9FEC(v51);
            sub_1A7CF4888(v49, v39, type metadata accessor for LinkState);
          }

          v52 = *(v0 + 232);
          if (swift_getEnumCaseMultiPayload() > 1)
          {

            sub_1A7CD0E68(v52);
            v5 = v70;
            goto LABEL_23;
          }

          v53 = *(v0 + 216);
          v54 = *(v0 + 168);
          v64 = *(v0 + 160);
          v55 = sub_1A7E22CF0();
          (*(*(v55 - 8) + 8))(v52, v55);
          sub_1A7E22CC0();
          swift_storeEnumTagMultiPayload();
          sub_1A7CD0EC4(v53, v54);
          v67(v54, 0, 1, v25);
          os_unfair_lock_lock((v18 + 40));
          sub_1A7CDA3E0(v54, v64);
          v56 = v69(v64, 1, v25);
          v57 = *(v0 + 160);
          if (v56 == 1)
          {
            sub_1A7CD9FEC(*(v0 + 160));
            *(v0 + 48) = 0u;
            *(v0 + 64) = 0u;
          }

          else
          {
            *(v0 + 72) = v25;
            v58 = sub_1A7CC98BC((v0 + 48));
            sub_1A7CF4888(v57, v58, type metadata accessor for LinkStateComponent);
          }

          v59 = *(v0 + 216);
          v60 = *(v0 + 168);
          sub_1A7CC8D74(v0 + 48, v25);
          os_unfair_lock_unlock((v18 + 40));
          sub_1A7CD0E68(v59);
          sub_1A7CD9FEC(v60);
          ObjectType = swift_getObjectType();
          (*(v65 + 24))(v18, ObjectType);
          goto LABEL_21;
        }
      }

      os_unfair_lock_lock((v18 + 40));
      v19 = type metadata accessor for LinkStateComponent(0);
      v20 = v19;
      v21 = *(v18 + 48);
      if (*(v21 + 16) && (v22 = sub_1A7CD0DFC(v19), (v23 & 1) != 0))
      {
        sub_1A7B0CD10(*(v21 + 56) + 32 * v22, v0 + 80);
      }

      else
      {
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
      }

      v29 = *(v0 + 200);
      os_unfair_lock_unlock((v18 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      v30 = swift_dynamicCast();
      v31 = *(v20 - 8);
      v66 = *(v31 + 56);
      v66(v29, v30 ^ 1u, 1, v20);
      v68 = *(v31 + 48);
      v32 = v68(v29, 1, v20);
      v33 = *(v0 + 256);
      v34 = *(v0 + 200);
      if (v32)
      {
        sub_1A7CD9FEC(v34);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v41 = *(v0 + 248);
        v42 = *(v0 + 200);
        sub_1A7CD0EC4(v34, v41);
        sub_1A7CD9FEC(v42);
        sub_1A7CF4888(v41, v33, type metadata accessor for LinkState);
      }

      v43 = *(v0 + 256);
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_1A7CD0E68(v43);
        goto LABEL_22;
      }

      v44 = *(v0 + 240);
      v45 = *(v0 + 192);
      v63 = *(v0 + 184);
      sub_1A7CD0E68(v43);
      sub_1A7E22CC0();
      swift_storeEnumTagMultiPayload();
      sub_1A7CD0EC4(v44, v45);
      v66(v45, 0, 1, v20);
      os_unfair_lock_lock((v18 + 40));
      sub_1A7CDA3E0(v45, v63);
      v46 = v68(v63, 1, v20);
      v47 = *(v0 + 184);
      if (v46 == 1)
      {
        sub_1A7CD9FEC(*(v0 + 184));
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0u;
      }

      else
      {
        *(v0 + 136) = v20;
        v48 = sub_1A7CC98BC((v0 + 112));
        sub_1A7CF4888(v47, v48, type metadata accessor for LinkStateComponent);
      }

      v15 = *(v0 + 240);
      v16 = *(v0 + 192);
      sub_1A7CC8D74(v0 + 112, v20);
      os_unfair_lock_unlock((v18 + 40));
      sub_1A7CD0E68(v15);
      sub_1A7CD9FEC(v16);
      v17 = swift_getObjectType();
      (*(v65 + 8))(v18, v17);
LABEL_21:

      v5 = v70;
LABEL_22:
      v13 = v71;
LABEL_23:
      if (v13 == ++v14)
      {
        goto LABEL_55;
      }
    }
  }

  v13 = *(v74 + 16);
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_55:

  swift_unknownObjectRelease();
LABEL_56:

  v62 = *(v0 + 8);

  v62();
}

BOOL sub_1A7CF44C4()
{
  LinkEngineLink.definition.getter(&v2);
  v0 = v2;
  if (v2)
  {

    sub_1A7CDB84C(v0);
    LinkDefinition.idsLinkType.getter(&v3);
    sub_1A7CDB84C(v0);
    return v3 - 1 < 2;
  }

  else
  {
    sub_1A7CDB84C(0);
    return 0;
  }
}

uint64_t sub_1A7CF458C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for IDSConnectAllEndToEndLinksPlugin.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A7CF4698(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1A7E44458;
  *(v3 + 24) = v1;

  sub_1A7D20F9C(v4, &unk_1A7E44460, v3, v2);
}

uint64_t sub_1A7CF4728(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD22FC;

  return sub_1A7CF39D0(a1);
}

uint64_t sub_1A7CF47C0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD2A2C;

  return sub_1A7D193A4(a1, a2, v6);
}

uint64_t sub_1A7CF4888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7CF48F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = 13160;
  v30 = 0xE200000000000000;
  v28 = &v29;
  result = sub_1A7DB1A5C(sub_1A7CF67EC, v27, a1);
  if (result)
  {
    *a2 = 0x332F50545448;
    *(a2 + 8) = 0xE600000000000000;
    v6 = 512;
LABEL_10:
    *(a2 + 16) = v6;
    goto LABEL_11;
  }

  v29 = 12904;
  v30 = 0xE200000000000000;
  MEMORY[0x1EEE9AC00](result, v5);
  v26 = &v29;
  result = sub_1A7DB1A5C(sub_1A7CF680C, v25, a1);
  if (result)
  {
    v8 = 0x322F50545448;
    v9 = 0xE600000000000000;
LABEL_5:
    *a2 = v8;
    *(a2 + 8) = v9;
    v6 = 1024;
    goto LABEL_10;
  }

  v29 = 0x616C65722D736469;
  v30 = 0xE900000000000079;
  MEMORY[0x1EEE9AC00](result, v7);
  v26 = &v29;
  v10 = sub_1A7DB1A5C(sub_1A7CF680C, v25, a1);
  if (v10)
  {
    v29 = 7365492;
    v30 = 0xE300000000000000;
    MEMORY[0x1EEE9AC00](v10, v11);
    v26 = &v29;
    result = sub_1A7DB1A5C(sub_1A7CF680C, v25, a1);
    if (result)
    {
      *a2 = 5260116;
      *(a2 + 8) = 0xE300000000000000;
LABEL_9:
      v6 = 256;
      goto LABEL_10;
    }

    v29 = 7365749;
    v30 = 0xE300000000000000;
    MEMORY[0x1EEE9AC00](result, v12);
    v26 = &v29;
    result = sub_1A7DB1A5C(sub_1A7CF680C, v25, a1);
    if (result)
    {
      v8 = 5260373;
      v9 = 0xE300000000000000;
      goto LABEL_5;
    }

    v29 = 0x736C742D656B6166;
    v30 = 0xE800000000000000;
    MEMORY[0x1EEE9AC00](result, v13);
    v26 = &v29;
    result = sub_1A7DB1A5C(sub_1A7CF680C, v25, a1);
    if (result)
    {
      *a2 = 0x534C54656B6146;
      *(a2 + 8) = 0xE700000000000000;
      goto LABEL_9;
    }
  }

  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v14, 0);
    v15 = v29;
    v16 = (a1 + 40);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v29 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_1A7CCE918((v19 > 1), v20 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v20 + 1;
      v21 = v15 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 2;
      --v14;
    }

    while (v14);
  }

  v29 = v15;
  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CD0F8C();
  v22 = sub_1A7E221F0();
  v24 = v23;

  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = 0;
LABEL_11:
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 2;
  return result;
}

uint64_t sub_1A7CF4CB8(uint64_t a1)
{
  if (a1)
  {
    sub_1A7CC7FFC(&qword_1EB2B4AD0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1A7E418C0;
    *(v2 + 32) = vdupq_n_s64(1uLL);
    *(v2 + 48) = 2;
    *(v2 + 56) = 1;
    *(v2 + 64) = xmmword_1A7E418E0;
    *(v2 + 80) = 1792;
    v16 = v2;
    *(v2 + 82) = 1;
    v3 = &unk_1A7E44000;
    if ((a1 & 0x1000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    v3 = &unk_1A7E44000;
    if ((a1 & 0x1000000) != 0)
    {
LABEL_3:
      sub_1A7CC7FFC(&qword_1EB2B4AD0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1A7E418C0;
      *(v4 + 32) = vdupq_n_s64(1uLL);
      *(v4 + 48) = 2;
      *(v4 + 56) = 1;
      *(v4 + 64) = v3[71];
      *(v4 + 80) = 0;
      *(v4 + 82) = 3;
      if ((a1 & 0x100000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = MEMORY[0x1E69E7CC0];
      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x100000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1A7CC7FFC(&qword_1EB2B4AD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  *(v5 + 32) = vdupq_n_s64(1uLL);
  *(v5 + 48) = 2;
  *(v5 + 56) = 1;
  *(v5 + 64) = v3[71];
  *(v5 + 80) = 0;
  *(v5 + 82) = 3;
  if ((a1 & 0x10000000000) != 0)
  {
LABEL_5:
    sub_1A7CC7FFC(&qword_1EB2B4AD0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A7E418C0;
    *(v6 + 32) = vdupq_n_s64(1uLL);
    *(v6 + 48) = 2;
    *(v6 + 56) = 1;
    *(v6 + 64) = v3[71];
    *(v6 + 80) = 0;
    *(v6 + 82) = 3;
    goto LABEL_10;
  }

LABEL_9:
  v6 = MEMORY[0x1E69E7CC0];
LABEL_10:
  sub_1A7CC7FFC(&qword_1EB2B4AD0);
  v7 = swift_allocObject();
  v8 = vdupq_n_s64(1uLL);
  *(v7 + 16) = xmmword_1A7E418C0;
  *(v7 + 32) = v8;
  *(v7 + 48) = 3;
  *(v7 + 56) = 1;
  *(v7 + 64) = v8;
  *(v7 + 80) = 0;
  *(v7 + 82) = 1;
  if ((a1 & 0x10000000000) != 0)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1A7E418C0;
    *(v9 + 32) = vdupq_n_s64(1uLL);
    *(v9 + 48) = 2;
    *(v9 + 56) = 1;
    *(v9 + 64) = xmmword_1A7E418E0;
    *(v9 + 80) = 0;
    *(v9 + 82) = 1;
    if ((a1 & 0x100000000) != 0)
    {
LABEL_12:
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A7E418C0;
      *(v10 + 32) = vdupq_n_s64(1uLL);
      *(v10 + 48) = 2;
      *(v10 + 56) = 1;
      *(v10 + 64) = xmmword_1A7E418E0;
      *(v10 + 80) = 0;
      *(v10 + 82) = 1;
      if ((a1 & 0x1000000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x1000000) != 0)
  {
LABEL_13:
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A7E418C0;
    *(v11 + 32) = vdupq_n_s64(1uLL);
    *(v11 + 48) = 2;
    *(v11 + 56) = 1;
    *(v11 + 64) = xmmword_1A7E418E0;
    *(v11 + 80) = 0;
    *(v11 + 82) = 1;
    if ((a1 & 0x1000000000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v12 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x10000) != 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_18:
  v11 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x1000000000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A7E418C0;
  *(v12 + 32) = vdupq_n_s64(1uLL);
  *(v12 + 48) = 2;
  *(v12 + 56) = 1;
  *(v12 + 64) = vdupq_n_s64(3uLL);
  *(v12 + 80) = 7;
  *(v12 + 82) = 2;
  if ((a1 & 0x10000) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = swift_allocObject();
  v14 = vdupq_n_s64(1uLL);
  *(v13 + 16) = xmmword_1A7E418C0;
  *(v13 + 32) = v14;
  *(v13 + 48) = 1;
  *(v13 + 56) = 2;
  *(v13 + 64) = v14;
  *(v13 + 80) = 0;
  *(v13 + 82) = 1;
LABEL_21:
  sub_1A7DDF27C(v4);
  sub_1A7DDF27C(v5);
  sub_1A7DDF27C(v6);
  sub_1A7DDF27C(v7);
  sub_1A7DDF27C(v9);
  sub_1A7DDF27C(v10);
  sub_1A7DDF27C(v11);
  sub_1A7DDF27C(v12);
  sub_1A7DDF27C(v13);
  return v16;
}

uint64_t sub_1A7CF5100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CF52E8(a1 & 0x101010101010101);
  sub_1A7CC7FFC(&qword_1EB2B4AD8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  *(v5 + 32) = v4;
  v17 = v5;
  *(v5 + 40) = 2304;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(type metadata accessor for LEToolLink() - 8);
    v8 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = sub_1A7CF57BC(a1 & 0x101010101010101, v8);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1A7E418C0;
      *(v12 + 32) = v11;
      *(v12 + 40) = 1792;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1A7CCD0AC(0, v10[2] + 1, 1, v10);
      }

      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        v10 = sub_1A7CCD0AC((v13 > 1), v14 + 1, 1, v10);
      }

      v10[2] = v14 + 1;
      v10[v14 + 4] = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1A7CF37D0(v10);

  sub_1A7DDF188(v15);
  return v17;
}

uint64_t sub_1A7CF52E8(uint64_t a1)
{
  if (a1)
  {
    sub_1A7CF6318(0x6574617453, 0xE500000000000000, 1, 0);
    v3 = v2;
    sub_1A7CC7FFC(&qword_1EB2B4AE0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A7E418C0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 56) = v3;
    *(v4 + 64) = 0;
    v34 = v4;
    *(v4 + 68) = 0;
    if ((a1 & 0x1000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x1000000) != 0)
    {
LABEL_3:
      sub_1A7CF6318(1836020294, 0xE400000000000000, 1, 0);
      v6 = v5;
      sub_1A7CC7FFC(&qword_1EB2B4AE0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1A7E418C0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 1;
      *(v7 + 56) = v6;
      *(v7 + 64) = 0;
      v33 = v7;
      *(v7 + 68) = 0;
      if ((a1 & 0x100000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v10 = MEMORY[0x1E69E7CC0];
      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x100000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1A7CF6318(1064718409, 0xE400000000000000, 1, 0);
  v9 = v8;
  sub_1A7CC7FFC(&qword_1EB2B4AE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 1;
  *(v10 + 56) = v9;
  *(v10 + 64) = 0;
  *(v10 + 68) = 0;
  if ((a1 & 0x10000000000) != 0)
  {
LABEL_5:
    sub_1A7CF6318(5521746, 0xE300000000000000, 1, 0);
    v12 = v11;
    sub_1A7CC7FFC(&qword_1EB2B4AE0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A7E418C0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 1;
    *(v13 + 56) = v12;
    *(v13 + 64) = 0;
    *(v13 + 68) = 0;
    goto LABEL_10;
  }

LABEL_9:
  v13 = MEMORY[0x1E69E7CC0];
LABEL_10:
  sub_1A7CF6318(540945696, 0xE400000000000000, 1, 0);
  v15 = v14;
  sub_1A7CC7FFC(&qword_1EB2B4AE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A7E418C0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 1;
  *(v16 + 56) = v15;
  *(v16 + 64) = 0;
  *(v16 + 68) = 0;
  if ((a1 & 0x10000000000) != 0)
  {
    sub_1A7CF6318(5521746, 0xE300000000000000, 1, 0);
    v31 = v30;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A7E418C0;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    *(v17 + 48) = 1;
    *(v17 + 56) = v31;
    *(v17 + 64) = 0;
    *(v17 + 68) = 0;
    if ((a1 & 0x100000000) != 0)
    {
LABEL_12:
      sub_1A7CF6318(1064718409, 0xE400000000000000, 1, 0);
      v19 = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1A7E418C0;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      *(v20 + 48) = 1;
      *(v20 + 56) = v19;
      *(v20 + 64) = 0;
      *(v20 + 68) = 0;
      if ((a1 & 0x1000000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x1000000) != 0)
  {
LABEL_13:
    sub_1A7CF6318(28500, 0xE200000000000000, 1, 0);
    v22 = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1A7E418C0;
    *(v23 + 32) = 0;
    *(v23 + 40) = 0;
    *(v23 + 48) = 1;
    *(v23 + 56) = v22;
    *(v23 + 64) = 0;
    *(v23 + 68) = 0;
    if ((a1 & 0x1000000000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v26 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x10000) != 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_18:
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x1000000000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  sub_1A7CF6318(0x6C6F636F746F7250, 0xE800000000000000, 1, 0);
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1A7E418C0;
  *(v26 + 32) = 0;
  *(v26 + 40) = 0;
  *(v26 + 48) = 1;
  *(v26 + 56) = v25;
  *(v26 + 64) = 0;
  *(v26 + 68) = 0;
  if ((a1 & 0x10000) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  sub_1A7CF6318(1701667150, 0xE400000000000000, 1, 0);
  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A7E418C0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = 1;
  *(v29 + 56) = v28;
  *(v29 + 64) = 0;
  *(v29 + 68) = 0;
LABEL_21:
  sub_1A7DDF370(v33);
  sub_1A7DDF370(v10);
  sub_1A7DDF370(v13);
  sub_1A7DDF370(v16);
  sub_1A7DDF370(v17);
  sub_1A7DDF370(v20);
  sub_1A7DDF370(v23);
  sub_1A7DDF370(v26);
  sub_1A7DDF370(v29);
  return v34;
}

uint64_t sub_1A7CF57BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = type metadata accessor for LEToolLink();
    sub_1A7CD0EC4(a2 + *(v8 + 24), v7);
    sub_1A7CC7FFC(&qword_1EB2B4D10);
    v9 = swift_allocObject();
    v81 = xmmword_1A7E418C0;
    *(v9 + 16) = xmmword_1A7E418C0;
    LinkState.cli.getter(v9 + 32);
    sub_1A7CD0E68(v7);
    sub_1A7CC7FFC(&qword_1EB2B4AE0);
    v10 = swift_allocObject();
    *(v10 + 16) = v81;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = 1;
    *(v10 + 56) = v9;
    *(v10 + 64) = 0;
    v80 = v10;
    *(v10 + 68) = 0;
    if ((a1 & 0x1000000) != 0)
    {
LABEL_3:
      v11 = sub_1A7CF5F34(a2);
      sub_1A7CC7FFC(&qword_1EB2B4AE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1A7E418C0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 1;
      *(v12 + 56) = v11;
      *(v12 + 64) = 0;
      v79 = v12;
      *(v12 + 68) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v80 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x1000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_6:
  if ((a1 & 0x100000000) != 0)
  {
    v17 = *(a2 + 192);
    v98 = *(a2 + 176);
    v99 = v17;
    v100 = *(a2 + 208);
    v101 = *(a2 + 224);
    v18 = *(a2 + 128);
    v94 = *(a2 + 112);
    v95 = v18;
    v19 = *(a2 + 160);
    v96 = *(a2 + 144);
    v97 = v19;
    v20 = *(a2 + 64);
    v90 = *(a2 + 48);
    v91 = v20;
    v21 = *(a2 + 96);
    v92 = *(a2 + 80);
    v93 = v21;
    v22 = *(a2 + 32);
    v88 = *(a2 + 16);
    v89 = v22;
    v23 = sub_1A7CF6774(&v88);
    v24 = v88;
    if (v23 == 1)
    {
      v24 = 3;
    }

    v25 = *&aIpv4_2[8 * v24];
    v26 = 0x1010204u >> (8 * v24);
    sub_1A7CC7FFC(&qword_1EB2B4D10);
    v27 = swift_allocObject();
    v81 = xmmword_1A7E418C0;
    *(v27 + 16) = xmmword_1A7E418C0;
    *(v27 + 32) = v25;
    *(v27 + 40) = 0xE400000000000000;
    *(v27 + 48) = 0;
    *(v27 + 49) = v26;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    *(v27 + 72) = 2;
    sub_1A7CC7FFC(&qword_1EB2B4AE0);
    v13 = swift_allocObject();
    *(v13 + 16) = v81;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 1;
    *(v13 + 56) = v27;
    *(v13 + 64) = 0;
    *(v13 + 68) = 0;
    if ((a1 & 0x10000000000) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x10000000000) != 0)
    {
LABEL_8:
      sub_1A7CF6228(a2);
      v15 = v14;
      sub_1A7CC7FFC(&qword_1EB2B4AE0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1A7E418C0;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0;
      *(v16 + 48) = 1;
      *(v16 + 56) = v15;
      *(v16 + 64) = 0;
      *(v16 + 68) = 0;
      goto LABEL_13;
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_13:
  sub_1A7CF6318(540945696, 0xE400000000000000, 0, 6);
  v29 = v28;
  v30 = sub_1A7CC7FFC(&qword_1EB2B4AE0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1A7E418C0;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  *(v31 + 48) = 1;
  *(v31 + 56) = v29;
  *(v31 + 64) = 0;
  *(v31 + 68) = 0;
  v81 = xmmword_1A7E418C0;
  if ((a1 & 0x10000000000) == 0)
  {
    v32 = v30;
    v78 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_23:
    v77 = MEMORY[0x1E69E7CC0];
    v44 = v32;
    if ((a1 & 0x1000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v47 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x1000000000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  sub_1A7CF6390(a2);
  v60 = v59;
  v32 = v30;
  v61 = swift_allocObject();
  *(v61 + 16) = v81;
  *(v61 + 32) = 0;
  *(v61 + 40) = 0;
  *(v61 + 48) = 1;
  *(v61 + 56) = v60;
  *(v61 + 64) = 0;
  v78 = v61;
  *(v61 + 68) = 0;
  if ((a1 & 0x100000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v33 = *(a2 + 192);
  v98 = *(a2 + 176);
  v99 = v33;
  v100 = *(a2 + 208);
  v101 = *(a2 + 224);
  v34 = *(a2 + 128);
  v94 = *(a2 + 112);
  v95 = v34;
  v35 = *(a2 + 160);
  v96 = *(a2 + 144);
  v97 = v35;
  v36 = *(a2 + 64);
  v90 = *(a2 + 48);
  v91 = v36;
  v37 = *(a2 + 96);
  v92 = *(a2 + 80);
  v93 = v37;
  v38 = *(a2 + 32);
  v88 = *(a2 + 16);
  v89 = v38;
  v39 = sub_1A7CF6774(&v88);
  v40 = BYTE8(v94);
  if (v39 == 1)
  {
    v40 = 3;
  }

  v41 = *&aIpv4_2[8 * v40];
  v42 = 0x1010204u >> (8 * v40);
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v43 = swift_allocObject();
  *(v43 + 16) = v81;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0xE400000000000000;
  *(v43 + 48) = 0;
  *(v43 + 49) = v42;
  *(v43 + 56) = 0;
  *(v43 + 64) = 0;
  *(v43 + 72) = 2;
  v44 = v32;
  v45 = swift_allocObject();
  *(v45 + 16) = v81;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  *(v45 + 48) = 1;
  *(v45 + 56) = v43;
  *(v45 + 64) = 0;
  v77 = v45;
  *(v45 + 68) = 0;
  if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v46 = sub_1A7CF6480(a2);
  v47 = swift_allocObject();
  *(v47 + 16) = v81;
  *(v47 + 32) = 0;
  *(v47 + 40) = 0;
  *(v47 + 48) = 1;
  *(v47 + 56) = v46;
  *(v47 + 64) = 0;
  *(v47 + 68) = 0;
  if ((a1 & 0x1000000000000) != 0)
  {
LABEL_19:
    v48 = *(a2 + 192);
    v98 = *(a2 + 176);
    v99 = v48;
    v100 = *(a2 + 208);
    v101 = *(a2 + 224);
    v49 = *(a2 + 128);
    v94 = *(a2 + 112);
    v95 = v49;
    v50 = *(a2 + 160);
    v96 = *(a2 + 144);
    v97 = v50;
    v51 = *(a2 + 64);
    v90 = *(a2 + 48);
    v91 = v51;
    v52 = *(a2 + 96);
    v92 = *(a2 + 80);
    v93 = v52;
    v53 = *(a2 + 32);
    v88 = *(a2 + 16);
    v89 = v53;
    if (sub_1A7CF6774(&v88) == 1 || !v101)
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      sub_1A7CF48F0(v54, v82);

      v55 = v82[0];
      v76 = v82[1];
      v74 = v84;
      v75 = v83;
      v72 = v86;
      v73 = v85;
      v71 = v87;
      sub_1A7CC7FFC(&qword_1EB2B4D10);
      v56 = swift_allocObject();
      *(v56 + 16) = v81;
      v57 = v76;
      *(v56 + 32) = v55;
      *(v56 + 40) = v57;
      LOBYTE(v57) = v74;
      *(v56 + 48) = v75;
      *(v56 + 49) = v57;
      v58 = v72;
      *(v56 + 56) = v73;
      *(v56 + 64) = v58;
      *(v56 + 72) = v71;
    }

    v62 = swift_allocObject();
    *(v62 + 16) = v81;
    *(v62 + 32) = 0;
    *(v62 + 40) = 0;
    *(v62 + 48) = 1;
    *(v62 + 56) = v56;
    *(v62 + 64) = 0;
    *(v62 + 68) = 0;
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_25:
  v62 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x10000) == 0)
  {
LABEL_29:
    v68 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

LABEL_26:
  v76 = v44;
  v63 = v16;
  v64 = v13;
  v66 = *a2;
  v65 = *(a2 + 8);
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v67 = swift_allocObject();
  *(v67 + 16) = v81;
  *(v67 + 32) = v66;
  *(v67 + 40) = v65;
  v13 = v64;
  v16 = v63;
  *(v67 + 48) = 0;
  *(v67 + 56) = 0;
  *(v67 + 64) = 0;
  *(v67 + 72) = 2;
  v68 = swift_allocObject();
  *(v68 + 16) = v81;
  *(v68 + 32) = 0;
  *(v68 + 40) = 0;
  *(v68 + 48) = 1;
  *(v68 + 56) = v67;
  *(v68 + 64) = 0;
  *(v68 + 68) = 0;

LABEL_30:
  v102 = v80;
  sub_1A7DDF370(v79);
  sub_1A7DDF370(v13);
  sub_1A7DDF370(v16);
  sub_1A7DDF370(v31);
  sub_1A7DDF370(v78);
  sub_1A7DDF370(v77);
  sub_1A7DDF370(v47);
  sub_1A7DDF370(v62);
  sub_1A7DDF370(v68);
  return v102;
}

uint64_t sub_1A7CF5F34(uint64_t a1)
{
  v1 = *(a1 + 192);
  v30 = *(a1 + 176);
  v31 = v1;
  v32 = *(a1 + 208);
  v33 = *(a1 + 224);
  v2 = *(a1 + 128);
  v26 = *(a1 + 112);
  v27 = v2;
  v3 = *(a1 + 160);
  v28 = *(a1 + 144);
  v29 = v3;
  v4 = *(a1 + 64);
  v22 = *(a1 + 48);
  v23 = v4;
  v5 = *(a1 + 96);
  v24 = *(a1 + 80);
  v25 = v5;
  v6 = *(a1 + 32);
  v20 = *(a1 + 16);
  v21 = v6;
  if (sub_1A7CF6774(&v20) == 1)
  {
    goto LABEL_9;
  }

  v7 = v21;
  if (!v21)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *(&v20 + 1);
  v10 = MEMORY[0x1E69E7CC0];
  if (v20 <= 1u)
  {
    if (v20)
    {
      sub_1A7CC7FFC(&qword_1EB2B4D10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A7E418C0;
      *(v10 + 32) = 91;
      *(v10 + 40) = 0xE100000000000000;
      *(v10 + 48) = 768;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      *(v10 + 72) = 2;
      v8 = 1;
    }

    goto LABEL_7;
  }

  if (v20 != 2)
  {
LABEL_9:
    sub_1A7CC7FFC(&qword_1EB2B4D10);
    result = swift_allocObject();
    *(result + 16) = xmmword_1A7E418C0;
    *(result + 32) = 0x5049206F4ELL;
    *(result + 40) = 0xE500000000000000;
    *(result + 48) = 256;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 2;
    return result;
  }

LABEL_7:
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A7E418C0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v7;
  *(v11 + 48) = 768;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 2;
  if (v8)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A7E418C0;
    *(v12 + 32) = 93;
    *(v12 + 40) = 0xE100000000000000;
    *(v12 + 48) = 768;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 2;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (BYTE10(v21) == 1)
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1A7E418C0;
    *(v15 + 32) = 58;
    *(v15 + 40) = 0xE100000000000000;
    *(v15 + 48) = 1024;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    *(v15 + 72) = 2;
    sub_1A7CF6798();

    v16 = sub_1A7E22A90();
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1A7E418C0;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    *(v19 + 48) = 1024;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    *(v19 + 72) = 2;
    sub_1A7DDF090(v19);
    v14 = v15;
  }

  sub_1A7DDF090(v11);
  sub_1A7DDF090(v12);
  sub_1A7DDF090(v14);
  return v10;
}

double sub_1A7CF6228(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  v2 = *(a1 + 192);
  v22 = *(a1 + 176);
  v23 = v2;
  v24 = *(a1 + 208);
  v25 = *(a1 + 224);
  v3 = *(a1 + 128);
  v18 = *(a1 + 112);
  v19 = v3;
  v4 = *(a1 + 160);
  v20 = *(a1 + 144);
  v21 = v4;
  v5 = *(a1 + 64);
  v14 = *(a1 + 48);
  v15 = v5;
  v6 = *(a1 + 96);
  v16 = *(a1 + 80);
  v17 = v6;
  v7 = *(a1 + 32);
  v12 = *(a1 + 16);
  v13 = v7;
  if (sub_1A7CF6774(&v12) == 1 || (v14 & 1) != 0)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v1 = IDSRadioAccessTechnology.description.getter(SHIDWORD(v13));
    v8 = v9;
  }

  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v10 = swift_allocObject();
  *&result = 1;
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = v1;
  *(v10 + 40) = v8;
  *(v10 + 48) = 1280;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 2;
  return result;
}

double sub_1A7CF6318(uint64_t a1, uint64_t a2, char a3, char a4)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v8 = swift_allocObject();
  *&result = 1;
  *(v8 + 16) = xmmword_1A7E418C0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 49) = a4;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 2;
  return result;
}

double sub_1A7CF6390(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  v2 = *(a1 + 192);
  v15 = *(a1 + 176);
  v16 = v2;
  v17 = *(a1 + 208);
  v18 = *(a1 + 224);
  v3 = *(a1 + 128);
  v12[6] = *(a1 + 112);
  v12[7] = v3;
  v4 = *(a1 + 160);
  v13 = *(a1 + 144);
  v14 = v4;
  v5 = *(a1 + 64);
  v12[2] = *(a1 + 48);
  v12[3] = v5;
  v6 = *(a1 + 96);
  v12[4] = *(a1 + 80);
  v12[5] = v6;
  v7 = *(a1 + 32);
  v12[0] = *(a1 + 16);
  v12[1] = v7;
  if (sub_1A7CF6774(v12) == 1 || (BYTE8(v13) & 1) != 0)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v1 = IDSRadioAccessTechnology.description.getter(SDWORD1(v13));
    v8 = v9;
  }

  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v10 = swift_allocObject();
  *&result = 1;
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = v1;
  *(v10 + 40) = v8;
  *(v10 + 48) = 1280;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 2;
  return result;
}

uint64_t sub_1A7CF6480(uint64_t a1)
{
  v1 = *(a1 + 192);
  v25 = *(a1 + 176);
  v26 = v1;
  v27 = *(a1 + 208);
  v28 = *(a1 + 224);
  v2 = *(a1 + 128);
  v21 = *(a1 + 112);
  v22 = v2;
  v3 = *(a1 + 160);
  v23 = *(a1 + 144);
  v24 = v3;
  v4 = *(a1 + 64);
  v20[2] = *(a1 + 48);
  v20[3] = v4;
  v5 = *(a1 + 96);
  v20[4] = *(a1 + 80);
  v20[5] = v5;
  v6 = *(a1 + 32);
  v20[0] = *(a1 + 16);
  v20[1] = v6;
  if (sub_1A7CF6774(v20) == 1)
  {
    goto LABEL_9;
  }

  v7 = *(&v22 + 1);
  if (!*(&v22 + 1))
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = v22;
  v10 = MEMORY[0x1E69E7CC0];
  if (BYTE8(v21) <= 1u)
  {
    if (BYTE8(v21))
    {
      sub_1A7CC7FFC(&qword_1EB2B4D10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A7E418C0;
      *(v10 + 32) = 91;
      *(v10 + 40) = 0xE100000000000000;
      *(v10 + 48) = 768;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      *(v10 + 72) = 2;
      v8 = 1;
    }

    goto LABEL_7;
  }

  if (BYTE8(v21) != 2)
  {
LABEL_9:
    sub_1A7CC7FFC(&qword_1EB2B4D10);
    result = swift_allocObject();
    *(result + 16) = xmmword_1A7E418C0;
    *(result + 32) = 0x5049206F4ELL;
    *(result + 40) = 0xE500000000000000;
    *(result + 48) = 256;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 2;
    return result;
  }

LABEL_7:
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A7E418C0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v7;
  *(v11 + 48) = 768;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 2;
  if (v8)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A7E418C0;
    *(v12 + 32) = 93;
    *(v12 + 40) = 0xE100000000000000;
    *(v12 + 48) = 768;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 2;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (BYTE2(v23) == 1)
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1A7E418C0;
    *(v15 + 32) = 58;
    *(v15 + 40) = 0xE100000000000000;
    *(v15 + 48) = 1024;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    *(v15 + 72) = 2;
    sub_1A7CF6798();

    v16 = sub_1A7E22A90();
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1A7E418C0;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    *(v19 + 48) = 1024;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    *(v19 + 72) = 2;
    sub_1A7DDF090(v19);
    v14 = v15;
  }

  sub_1A7DDF090(v11);
  sub_1A7DDF090(v12);
  sub_1A7DDF090(v14);
  return v10;
}

uint64_t sub_1A7CF6774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1A7CF6798()
{
  result = qword_1EB2B54C8;
  if (!qword_1EB2B54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B54C8);
  }

  return result;
}

void sub_1A7CF6828(void *a1, unsigned __int8 *a2)
{
  v146 = *a2;
  v145 = a2[1];
  v144 = a2[2];
  v143 = a2[3];
  v142 = a2[4];
  v141 = a2[5];
  v140 = a2[6];
  v139 = a2[7];
  v4 = *v2;
  v5 = v2[1];
  if (v2[3] < 0)
  {
    v128 = v2[1];
    v48 = v2[4];
    v125 = v2[2];
    v49 = a1[3];
    v50 = a1[4];
    v133 = v2[3];
    sub_1A7CC9878(a1, v49);
    strcpy(&v135, "Two-Way (");
    WORD1(v135._object) = 0;
    HIDWORD(v135._object) = -385875968;
    if ((v4 & 0x100) != 0)
    {
      v51 = 0x6F74616974696E49;
    }

    else
    {
      v51 = 0x6E65697069636552;
    }

    if ((v4 & 0x100) != 0)
    {
      v52 = 0xE900000000000072;
    }

    else
    {
      v52 = 0xE900000000000074;
    }

    MEMORY[0x1AC561C90](v51, v52);

    MEMORY[0x1AC561C90](14889, 0xE200000000000000);
    v136 = 769;
    v137 = 0uLL;
    v138 = 2;
    CLIPrinter.print(_:)(&v135._countAndFlagsBits, v49, v50);

    sub_1A7CC9878(a1, a1[3]);
    IDSGLTwoWayLinkConnectorPlugin.Behavior.cli.getter(&v135);
    v53 = CLIString.description.getter();
    v55 = v54;

    MEMORY[0x1AC561C90](v53, v55);

    v56._countAndFlagsBits = 0x203A65646F4DLL;
    v56._object = 0xE600000000000000;
    CLIPrinter.print(_:)(v56);

    sub_1A7CC9878(a1, a1[3]);
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    CLIPrinter.print(_:)(v57);
    sub_1A7CC9878(a1, a1[3]);
    v135._countAndFlagsBits = 0xD000000000000018;
    v135._object = 0x80000001A7EAE3C0;
    v136 = 1;
    v137 = 0uLL;
    v138 = 2;
    v58 = CLIString.description.getter();
    v60 = v59;

    v61 = MEMORY[0x1AC561E20](v48, &type metadata for IDSLinkCellularTuple);
    v63 = v62;

    MEMORY[0x1AC561C90](v61, v63);

    v64._countAndFlagsBits = v58;
    v64._object = v60;
    CLIPrinter.print(_:)(v64);

    sub_1A7CC9878(a1, a1[3]);
    v135._countAndFlagsBits = 0xD000000000000018;
    v135._object = 0x80000001A7EAE3E0;
    v136 = 1;
    v137 = 0uLL;
    v138 = 2;
    v65 = CLIString.description.getter();
    v67 = v66;

    if (v133 == 3)
    {
      v68 = 0xE300000000000000;
      v69 = 7104878;
    }

    else
    {
      v69 = IDSLinkCellularTuple.description.getter();
      v68 = v70;
    }

    v71 = v128;
    MEMORY[0x1AC561C90](v69, v68);

    MEMORY[0x1AC561C90](0, 0xE000000000000000);

    v72._countAndFlagsBits = v65;
    v72._object = v67;
    CLIPrinter.print(_:)(v72);

    sub_1A7CC9878(a1, a1[3]);
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    CLIPrinter.print(_:)(v73);
    v74 = a1[3];
    v75 = a1[4];
    sub_1A7CC9878(a1, v74);
    strcpy(&v135, "Allocations:");
    BYTE5(v135._object) = 0;
    HIWORD(v135._object) = -5120;
    v136 = 769;
    v137 = 0uLL;
    v138 = 2;
    CLIPrinter.print(_:)(&v135._countAndFlagsBits, v74, v75);

    v126 = *(v128 + 16);
    if (v126)
    {
      v76 = 0;
      while (v76 < *(v71 + 16))
      {
        v78 = v128 + 32 + 32 * v76;
        v79 = *(v78 + 24);
        v130 = v76 + 1;
        v80 = *(v78 + 16);
        v82 = *v78;
        v81 = *(v78 + 8);
        sub_1A7CC9878(a1, a1[3]);
        v135._countAndFlagsBits = 0;
        v135._object = 0xE000000000000000;

        sub_1A7E22B70();

        v135._countAndFlagsBits = 8237;
        v135._object = 0xE200000000000000;
        MEMORY[0x1AC561C90](v82, v81);

        MEMORY[0x1AC561C90](0xD000000000000012, 0x80000001A7EAE400);
        v83 = 0x6C6C65436E6F4ELL;
        if (v80 != 1)
        {
          v83 = 7958081;
        }

        v84 = 0xE700000000000000;
        if (v80 != 1)
        {
          v84 = 0xE300000000000000;
        }

        if (v80)
        {
          v85 = v83;
        }

        else
        {
          v85 = 1819043139;
        }

        if (v80)
        {
          v86 = v84;
        }

        else
        {
          v86 = 0xE400000000000000;
        }

        MEMORY[0x1AC561C90](v85, v86);

        CLIPrinter.print(_:)(v135);

        v87 = *(v79 + 16);
        if (v87)
        {
          v88 = (v79 + 40);
          do
          {
            v89 = *(v88 - 1);
            v90 = *v88;
            sub_1A7CC9878(a1, a1[3]);
            v135._countAndFlagsBits = 0;
            v135._object = 0xE000000000000000;

            sub_1A7E22B70();

            strcpy(&v135, "  - Endpoint: ");
            HIBYTE(v135._object) = -18;
            MEMORY[0x1AC561C90](v89, v90);

            CLIPrinter.print(_:)(v135);

            v88 += 2;
            --v87;
          }

          while (v87);
        }

        sub_1A7CC9878(a1, a1[3]);
        v77._countAndFlagsBits = 0;
        v77._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v77);
        v71 = v128;
        v76 = v130;
        if (v130 == v126)
        {
          goto LABEL_58;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_58:
      sub_1A7CC9878(a1, a1[3]);
      v91._countAndFlagsBits = 0;
      v91._object = 0xE000000000000000;
      CLIPrinter.print(_:)(v91);
      v92 = a1[3];
      v93 = a1[4];
      sub_1A7CC9878(a1, v92);
      strcpy(&v135, "Link Mapping");
      BYTE5(v135._object) = 0;
      HIWORD(v135._object) = -5120;
      v136 = 769;
      v137 = 0uLL;
      v138 = 2;
      CLIPrinter.print(_:)(&v135._countAndFlagsBits, v92, v93);

      v94 = *(v125 + 16);
      if (v94)
      {
        v95 = (v125 + 40);
        do
        {
          v134 = v94;
          v111 = *(v95 - 4);
          v112 = v95[1];
          v127 = *v95;
          v129 = *(v95 + 16);
          v113 = v95[4];
          sub_1A7CC9878(a1, a1[3]);
          LOWORD(v135._countAndFlagsBits) = v111;

          v131 = v113;

          v135._countAndFlagsBits = IDSLinkCellularTuple.description.getter();
          v135._object = v114;
          v136 = 1537;
          v137 = 0uLL;
          v138 = 2;
          v115 = CLIString.description.getter();
          v117 = v116;

          MEMORY[0x1AC561C90](v115, v117);

          v118._countAndFlagsBits = 8237;
          v118._object = 0xE200000000000000;
          CLIPrinter.print(_:)(v118);

          sub_1A7CC9878(a1, a1[3]);
          v135._countAndFlagsBits = 0;
          v135._object = 0xE000000000000000;
          sub_1A7E22B70();

          strcpy(&v135, "  Allocation: ");
          HIBYTE(v135._object) = -18;
          MEMORY[0x1AC561C90](v127, v112);

          MEMORY[0x1AC561C90](0xD000000000000012, 0x80000001A7EAE420);
          v119 = 0x6C6C65436E6F4ELL;
          if (v129 != 1)
          {
            v119 = 7958081;
          }

          v120 = 0xE700000000000000;
          if (v129 != 1)
          {
            v120 = 0xE300000000000000;
          }

          if (v129)
          {
            v121 = v119;
          }

          else
          {
            v121 = 1819043139;
          }

          if (v129)
          {
            v122 = v120;
          }

          else
          {
            v122 = 0xE400000000000000;
          }

          MEMORY[0x1AC561C90](v121, v122);

          MEMORY[0x1AC561C90](41, 0xE100000000000000);
          CLIPrinter.print(_:)(v135);

          sub_1A7CC9878(a1, a1[3]);
          v123._countAndFlagsBits = 0;
          v123._object = 0xE000000000000000;
          CLIPrinter.print(_:)(v123);
          if (*(v113 + 16))
          {
            if (v139)
            {
              v96 = 0x100000000000000;
            }

            else
            {
              v96 = 0;
            }

            v97 = 0x1000000000000;
            if (!v140)
            {
              v97 = 0;
            }

            v98 = 0x10000000000;
            if (!v141)
            {
              v98 = 0;
            }

            v99 = 0x100000000;
            if (!v142)
            {
              v99 = 0;
            }

            v100 = 0x1000000;
            if (!v143)
            {
              v100 = 0;
            }

            v101 = 0x10000;
            if (!v144)
            {
              v101 = 0;
            }

            v102 = 256;
            if (!v145)
            {
              v102 = 0;
            }

            v103 = v102 | v146 | v101 | v100 | v99 | v98 | v97;
            v104 = sub_1A7CF4CB8(v103 | v96);
            v105 = sub_1A7CF5100(v103 | v96, v131);

            v106 = a1[3];
            v107 = a1[4];
            sub_1A7CC9878(a1, v106);
            *&v137 = &type metadata for CLIIndented;
            *(&v137 + 1) = sub_1A7CF7858();
            v108 = swift_allocObject();
            v135._countAndFlagsBits = v108;
            *(v108 + 40) = &type metadata for CLITable;
            v109 = sub_1A7CF78AC();
            *(v108 + 16) = v104;
            *(v108 + 24) = v105;
            *(v108 + 32) = 0;
            *(v108 + 36) = 0;
            *(v108 + 48) = v109;
            *(v108 + 56) = 538976288;
            *(v108 + 64) = 0xE400000000000000;
            CLIPrinter.print(_:)(&v135, v106, v107);
            sub_1A7B0CD6C(&v135);
          }

          else
          {

            sub_1A7CC9878(a1, a1[3]);
            v124._countAndFlagsBits = 0x6F4E202020202020;
            v124._object = 0xEF2E736B6E696C20;
            CLIPrinter.print(_:)(v124);
          }

          sub_1A7CC9878(a1, a1[3]);
          v110._countAndFlagsBits = 0;
          v110._object = 0xE000000000000000;
          CLIPrinter.print(_:)(v110);
          v95 += 6;
          v94 = v134 - 1;
        }

        while (v134 != 1);
      }
    }
  }

  else
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1A7CC9878(a1, v6);
    v135._countAndFlagsBits = 0xD00000000000001ALL;
    v135._object = 0x80000001A7EAE440;
    v136 = 769;
    v137 = 0uLL;
    v138 = 2;
    CLIPrinter.print(_:)(&v135._countAndFlagsBits, v6, v7);

    sub_1A7CC9878(a1, a1[3]);
    IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.cli.getter(&v135);
    v8 = CLIString.description.getter();
    v10 = v9;

    MEMORY[0x1AC561C90](v8, v10);

    v11._countAndFlagsBits = 0x203A65646F4DLL;
    v11._object = 0xE600000000000000;
    CLIPrinter.print(_:)(v11);

    sub_1A7CC9878(a1, a1[3]);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    CLIPrinter.print(_:)(v12);
    v13 = *(v5 + 16);
    if (v13)
    {
      v14 = (v5 + 40);
      do
      {
        v132 = v13;
        v30 = *(v14 - 8);
        v31 = *v14;
        sub_1A7CC9878(a1, a1[3]);
        v32 = 0x72616C756C6C6543;
        if (v30 != 2)
        {
          v32 = 0x6E776F6E6B6E55;
        }

        v33 = 0xE800000000000000;
        if (v30 != 2)
        {
          v33 = 0xE700000000000000;
        }

        v34 = 1766222167;
        if (!v30)
        {
          v34 = 0x6465726957;
        }

        v35 = 0xE500000000000000;
        if (v30)
        {
          v35 = 0xE400000000000000;
        }

        if (v30 > 1)
        {
          v36 = v33;
        }

        else
        {
          v32 = v34;
          v36 = v35;
        }

        v135._countAndFlagsBits = v32;
        v135._object = v36;
        v136 = 1025;
        v137 = 0uLL;
        v138 = 2;

        v37 = CLIString.description.getter();
        v39 = v38;

        MEMORY[0x1AC561C90](v37, v39);

        v40._countAndFlagsBits = 538976288;
        v40._object = 0xE400000000000000;
        CLIPrinter.print(_:)(v40);

        v41 = a1[3];
        v42 = a1[4];
        sub_1A7CC9878(a1, v41);
        *&v137 = &type metadata for CLIIndented;
        v43 = sub_1A7CF7858();
        *(&v137 + 1) = v43;
        v44 = swift_allocObject();
        v135._countAndFlagsBits = v44;
        *(v44 + 40) = &type metadata for CLIRule;
        v45 = sub_1A7CE5D50();
        *(v44 + 16) = 9;
        *(v44 + 48) = v45;
        *(v44 + 56) = 538976288;
        *(v44 + 64) = 0xE400000000000000;
        CLIPrinter.print(_:)(&v135, v41, v42);
        sub_1A7B0CD6C(&v135);
        sub_1A7CC9878(a1, a1[3]);
        v46._countAndFlagsBits = 0;
        v46._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v46);
        if (*(v31 + 16))
        {
          v15 = 0x100000000000000;
          if ((v139 & 1) == 0)
          {
            v15 = 0;
          }

          v16 = 0x1000000000000;
          if ((v140 & 1) == 0)
          {
            v16 = 0;
          }

          v17 = 0x100000000;
          if ((v142 & 1) == 0)
          {
            v17 = 0;
          }

          v18 = 0x1000000;
          if ((v143 & 1) == 0)
          {
            v18 = 0;
          }

          v19 = 0x10000;
          if ((v144 & 1) == 0)
          {
            v19 = 0;
          }

          v20 = 256;
          if ((v145 & 1) == 0)
          {
            v20 = 0;
          }

          v21 = v20 & 0xFFFFFFFFFFFFFFFELL | v146 & 1 | v19 | v18;
          v22 = v17 | v16 | v15;
          v23 = sub_1A7CF4CB8(v21 | v22);
          v24 = sub_1A7CF5100(v21 | v22, v31);

          v25 = a1[3];
          v26 = a1[4];
          sub_1A7CC9878(a1, v25);
          *&v137 = &type metadata for CLIIndented;
          *(&v137 + 1) = v43;
          v27 = swift_allocObject();
          v135._countAndFlagsBits = v27;
          *(v27 + 40) = &type metadata for CLITable;
          v28 = sub_1A7CF78AC();
          *(v27 + 16) = v23;
          *(v27 + 24) = v24;
          *(v27 + 32) = 0;
          *(v27 + 36) = 0;
          *(v27 + 48) = v28;
          *(v27 + 56) = 538976288;
          *(v27 + 64) = 0xE400000000000000;
          CLIPrinter.print(_:)(&v135, v25, v26);
          sub_1A7B0CD6C(&v135);
        }

        else
        {

          sub_1A7CC9878(a1, a1[3]);
          v47._countAndFlagsBits = 0x6F4E202020202020;
          v47._object = 0xEF2E736B6E696C20;
          CLIPrinter.print(_:)(v47);
        }

        sub_1A7CC9878(a1, a1[3]);
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v29);
        v14 += 2;
        v13 = v132 - 1;
      }

      while (v132 != 1);
    }
  }
}

unint64_t sub_1A7CF7858()
{
  result = qword_1EB2B54D0;
  if (!qword_1EB2B54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B54D0);
  }

  return result;
}

unint64_t sub_1A7CF78AC()
{
  result = qword_1EB2B54D8;
  if (!qword_1EB2B54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B54D8);
  }

  return result;
}

uint64_t CLIPrinter.print(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a1 + 40);
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A7E418C0;
  *(v11 + 32) = v5;
  *(v11 + 40) = v4;
  *(v11 + 48) = v6;
  *(v11 + 49) = v7;
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  *(v11 + 72) = v10;
  v16[3] = &type metadata for CLIText;
  v16[4] = sub_1A7CF7A10();
  v12 = swift_allocObject();
  v16[0] = v12;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 1;
  *(v12 + 40) = v11;
  v13 = *(a3 + 8);

  v13(v16, a2, a3);
  return sub_1A7B0CD6C(v16);
}

unint64_t sub_1A7CF7A10()
{
  result = qword_1EB2B54E0;
  if (!qword_1EB2B54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B54E0);
  }

  return result;
}

uint64_t CLIPrinter.print(_:)(uint64_t (*a1)(void), uint64_t a2, Swift::Int a3, IDSFoundation::CLITextAlign a4)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v9 = a1();
  v11.leadingPadding = v7;
  v11.trailingPadding = a3;
  v11.alignment = a4;
  CLIPrinter.print(_:)(v11);
}

Swift::Void __swiftcall CLIPrinter.print(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 2;

  CLIPrinter.print(_:)(&v5._countAndFlagsBits, v4, v3);
}

Swift::Void __swiftcall CLIPrinter.print(_:)(IDSFoundation::CLIText a1)
{
  v1 = *&a1.alignment;
  trailingPadding = a1.trailingPadding;
  v3 = *a1.leadingPadding;
  v4 = *(a1.leadingPadding + 8);
  v5 = *(a1.leadingPadding + 16);
  v6 = *(a1.leadingPadding + 24);
  v9[3] = &type metadata for CLIText;
  v9[4] = sub_1A7CF7A10();
  v7 = swift_allocObject();
  v9[0] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v8 = *(v1 + 8);

  v8(v9, trailingPadding, v1);
  sub_1A7B0CD6C(v9);
}

uint64_t CLIPrinter.print(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1A7CC9878(a1, v5);
  v7 = *(v6 + 8);
  v9[3] = &type metadata for CLIText;
  v9[4] = sub_1A7CF7A10();
  v9[0] = swift_allocObject();
  v7(v5, v6);
  (*(a3 + 8))(v9, a2, a3);
  return sub_1A7B0CD6C(v9);
}

{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A7E418C0;
  v7 = a1[3];
  v8 = a1[4];
  sub_1A7CC9878(a1, v7);
  (*(v8 + 8))(v7, v8);
  v11[3] = &type metadata for CLIText;
  v11[4] = sub_1A7CF7A10();
  v9 = swift_allocObject();
  v11[0] = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 1;
  *(v9 + 40) = v6;
  (*(a3 + 8))(v11, a2, a3);
  return sub_1A7B0CD6C(v11);
}

{
  sub_1A7CC9878(a1, a1[3]);
  v7[0] = sub_1A7E23090();
  v7[1] = v5;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2;
  CLIPrinter.print(_:)(v7, a2, a3);
}

uint64_t sub_1A7CF7EC8()
{
  if (*v0)
  {
    return 0x6F4C74656B636170;
  }

  else
  {
    return 0x69676E456B6E696CLL;
  }
}

uint64_t sub_1A7CF7F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69676E456B6E696CLL && a2 == 0xEA0000000000656ELL;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F4C74656B636170 && a2 == 0xE900000000000067)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7CF7FF8(uint64_t a1)
{
  v2 = sub_1A7CF85AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CF8034(uint64_t a1)
{
  v2 = sub_1A7CF85AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CF8070(uint64_t a1)
{
  v2 = sub_1A7CF870C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CF80AC(uint64_t a1)
{
  v2 = sub_1A7CF870C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CF80E8(uint64_t a1)
{
  v2 = sub_1A7CF8664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CF8124(uint64_t a1)
{
  v2 = sub_1A7CF8664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSToolRequest.Request.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B54E8);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v29 = &v26 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B54F0);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v28 = &v26 - v7;
  v27 = type metadata accessor for LEToolRequestMessage(0);
  MEMORY[0x1EEE9AC00](v27, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IDSToolRequest.Request(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A7CC7FFC(&qword_1EB2B54F8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v26 - v18;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CF85AC();
  sub_1A7E23260();
  sub_1A7CF8600(v34, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v14;
    v37 = 1;
    sub_1A7CF8664();
    v21 = v29;
    sub_1A7E22F80();
    v36 = v20;
    sub_1A7CF86B8();
    v22 = v33;
    sub_1A7E23030();
    (*(v32 + 8))(v21, v22);
  }

  else
  {
    sub_1A7CF8E64(v14, v10, type metadata accessor for LEToolRequestMessage);
    v35 = 0;
    sub_1A7CF870C();
    v23 = v28;
    sub_1A7E22F80();
    sub_1A7CF8ECC(&qword_1EB2B5520, type metadata accessor for LEToolRequestMessage);
    v24 = v31;
    sub_1A7E23030();
    (*(v30 + 8))(v23, v24);
    sub_1A7CF8760(v10);
  }

  return (*(v16 + 8))(v19, v15);
}

unint64_t sub_1A7CF85AC()
{
  result = qword_1EB2B5500;
  if (!qword_1EB2B5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5500);
  }

  return result;
}

uint64_t sub_1A7CF8600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSToolRequest.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7CF8664()
{
  result = qword_1EB2B5508;
  if (!qword_1EB2B5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5508);
  }

  return result;
}

unint64_t sub_1A7CF86B8()
{
  result = qword_1EB2B5510;
  if (!qword_1EB2B5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5510);
  }

  return result;
}

unint64_t sub_1A7CF870C()
{
  result = qword_1EB2B5518;
  if (!qword_1EB2B5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5518);
  }

  return result;
}

uint64_t sub_1A7CF8760(uint64_t a1)
{
  v2 = type metadata accessor for LEToolRequestMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IDSToolRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v49 = sub_1A7CC7FFC(&qword_1EB2B5528);
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v3);
  v53 = &v47 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B5530);
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v55 = &v47 - v8;
  v9 = sub_1A7CC7FFC(&qword_1EB2B5538);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for IDSToolRequest.Request(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v47 - v23;
  v25 = a1[3];
  v58 = a1;
  sub_1A7CC9878(a1, v25);
  sub_1A7CF85AC();
  v26 = v57;
  sub_1A7E23250();
  if (!v26)
  {
    v47 = v16;
    v48 = v24;
    v57 = v20;
    v28 = v54;
    v27 = v55;
    v29 = v56;
    v30 = sub_1A7E22F70();
    v31 = (2 * *(v30 + 16)) | 1;
    v59 = v30;
    v60 = v30 + 32;
    v61 = 0;
    v62 = v31;
    v32 = sub_1A7CDB538();
    v33 = v9;
    if (v32 == 2 || v61 != v62 >> 1)
    {
      v40 = sub_1A7E22BD0();
      swift_allocError();
      v42 = v41;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v42 = v13;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v28 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32)
      {
        v63 = 1;
        sub_1A7CF8664();
        v34 = v53;
        sub_1A7E22E70();
        v35 = v29;
        sub_1A7CF8E10();
        v36 = v49;
        sub_1A7E22F30();
        (*(v52 + 8))(v34, v36);
        (*(v28 + 8))(v12, v33);
        swift_unknownObjectRelease();
        v37 = v47;
        *v47 = v63;
        swift_storeEnumTagMultiPayload();
        v38 = v37;
        v39 = v48;
        sub_1A7CF8E64(v38, v48, type metadata accessor for IDSToolRequest.Request);
      }

      else
      {
        v63 = 0;
        sub_1A7CF870C();
        v44 = v27;
        sub_1A7E22E70();
        type metadata accessor for LEToolRequestMessage(0);
        sub_1A7CF8ECC(&qword_1EB2B5548, type metadata accessor for LEToolRequestMessage);
        v45 = v57;
        v46 = v50;
        sub_1A7E22F30();
        (*(v51 + 8))(v44, v46);
        (*(v28 + 8))(v12, v33);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v39 = v48;
        sub_1A7CF8E64(v45, v48, type metadata accessor for IDSToolRequest.Request);
        v35 = v56;
      }

      sub_1A7CF8E64(v39, v35, type metadata accessor for IDSToolRequest.Request);
    }
  }

  return sub_1A7B0CD6C(v58);
}

unint64_t sub_1A7CF8E10()
{
  result = qword_1EB2B5540;
  if (!qword_1EB2B5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5540);
  }

  return result;
}

uint64_t sub_1A7CF8E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7CF8ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A7CF8F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7CF8FE4(uint64_t a1)
{
  v2 = sub_1A7CF91D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CF9020(uint64_t a1)
{
  v2 = sub_1A7CF91D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSToolRequest.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5550);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CF91D4();
  sub_1A7E23260();
  type metadata accessor for IDSToolRequest.Request(0);
  sub_1A7CF8ECC(&qword_1EB2B5560, type metadata accessor for IDSToolRequest.Request);
  sub_1A7E23030();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1A7CF91D4()
{
  result = qword_1EB2B5558;
  if (!qword_1EB2B5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5558);
  }

  return result;
}

uint64_t IDSToolRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for IDSToolRequest.Request(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A7CC7FFC(&qword_1EB2B5568);
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for IDSToolRequest(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CF91D4();
  sub_1A7E23250();
  if (!v2)
  {
    v15 = v18;
    sub_1A7CF8ECC(&qword_1EB2B5570, type metadata accessor for IDSToolRequest.Request);
    v16 = v20;
    sub_1A7E22F30();
    (*(v19 + 8))(v10, v7);
    sub_1A7CF8E64(v16, v14, type metadata accessor for IDSToolRequest.Request);
    sub_1A7CF8E64(v14, v15, type metadata accessor for IDSToolRequest);
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7CF94D4(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5550);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CF91D4();
  sub_1A7E23260();
  type metadata accessor for IDSToolRequest.Request(0);
  sub_1A7CF8ECC(&qword_1EB2B5560, type metadata accessor for IDSToolRequest.Request);
  sub_1A7E23030();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A7CF9674()
{
  result = type metadata accessor for IDSToolRequest.Request(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A7CF96E0()
{
  result = type metadata accessor for LEToolRequestMessage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A7CF978C()
{
  result = qword_1EB2B5598;
  if (!qword_1EB2B5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5598);
  }

  return result;
}

unint64_t sub_1A7CF97E4()
{
  result = qword_1EB2B55A0;
  if (!qword_1EB2B55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55A0);
  }

  return result;
}

unint64_t sub_1A7CF983C()
{
  result = qword_1EB2B55A8;
  if (!qword_1EB2B55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55A8);
  }

  return result;
}

unint64_t sub_1A7CF9894()
{
  result = qword_1EB2B55B0;
  if (!qword_1EB2B55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55B0);
  }

  return result;
}

unint64_t sub_1A7CF98EC()
{
  result = qword_1EB2B55B8;
  if (!qword_1EB2B55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55B8);
  }

  return result;
}

unint64_t sub_1A7CF9944()
{
  result = qword_1EB2B55C0;
  if (!qword_1EB2B55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55C0);
  }

  return result;
}

unint64_t sub_1A7CF999C()
{
  result = qword_1EB2B55C8;
  if (!qword_1EB2B55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55C8);
  }

  return result;
}

unint64_t sub_1A7CF99F4()
{
  result = qword_1EB2B55D0;
  if (!qword_1EB2B55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55D0);
  }

  return result;
}

unint64_t sub_1A7CF9A4C()
{
  result = qword_1EB2B55D8;
  if (!qword_1EB2B55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55D8);
  }

  return result;
}

unint64_t sub_1A7CF9AA4()
{
  result = qword_1EB2B55E0;
  if (!qword_1EB2B55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55E0);
  }

  return result;
}

unint64_t sub_1A7CF9AFC()
{
  result = qword_1EB2B55E8;
  if (!qword_1EB2B55E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55E8);
  }

  return result;
}

unint64_t sub_1A7CF9B54()
{
  result = qword_1EB2B55F0;
  if (!qword_1EB2B55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55F0);
  }

  return result;
}

uint64_t sub_1A7CF9BA8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_1A7E22840();
  if (!v22)
  {
    return sub_1A7E22570();
  }

  v44 = v22;
  v48 = sub_1A7E22C70();
  v35 = sub_1A7E22C80();
  sub_1A7E22C10();
  result = sub_1A7E22830();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_1A7E22890();
      v26 = v14;
      v27 = v14;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1A7E22C60();
      result = sub_1A7E22860();
      ++v24;
      v14 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*LinkEnginePluginHook.on(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v3 + 4);
  sub_1A7CFB6F8(&v3[6], a1, a2, a3, *(v7 + 80));
  type metadata accessor for LinkEnginePluginHook.State();
  os_unfair_lock_unlock(v3 + 4);
  result = sub_1A7CFB568();
  if (result)
  {
    v9 = result;
    result(a1, a2, a3);

    return sub_1A7B15088(v9);
  }

  return result;
}

void LinkEnginePluginHook.makeIterator()(uint64_t *a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock(v1 + 4);
  sub_1A7CFBAF8(v1 + 3, *(v3 + 80), a1);
  type metadata accessor for LinkEnginePluginHook.State();
  sub_1A7E225E0();
  swift_getWitnessTable();
  sub_1A7E22D50();

  os_unfair_lock_unlock(v1 + 4);
}

BOOL sub_1A7CFA174()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_1A7CFA1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  swift_unknownObjectWeakInit();
  *a3 = a1;
  a3[2] = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1A7CFA24C()
{
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](*v0);
  return sub_1A7E23240();
}

uint64_t sub_1A7CFA298()
{
  sub_1A7E23200();
  sub_1A7CE6038();
  return sub_1A7E23240();
}

uint64_t sub_1A7CFA2D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v97 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v94 = &v79 - v9;
  v10 = type metadata accessor for LinkEnginePluginHook.PluginWrapper();
  v99 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v88 = sub_1A7E229A0();
  v12 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v13);
  v90 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v87 = &v79 - v17;
  v18 = sub_1A7E22570();

  v1[1] = v18;
  v19 = swift_allocObject();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1A7E22150();
  v79 = v19;
  *(v19 + 16) = v21;
  v22 = swift_allocObject();
  v23 = sub_1A7E22150();
  v81 = v22;
  *(v22 + 16) = v23;
  v24 = swift_allocObject();
  v25 = sub_1A7E22800();
  swift_getTupleTypeMetadata2();
  v26 = sub_1A7E22570();
  v27 = sub_1A7CFC18C(v26, v10, v25, WitnessTable);

  *(v24 + 16) = v27;
  v80 = v1;
  v28 = *v1;
  v31 = *(*v1 + 64);
  v30 = *v1 + 64;
  v29 = v31;
  v32 = 1 << *(v28 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v29;
  v82 = (v32 + 63) >> 6;
  v91 = TupleTypeMetadata2;
  v89 = TupleTypeMetadata2 - 8;
  v96 = v10 - 8;
  v83 = v4 + 16;
  v95 = (v4 + 32);
  v86 = (v12 + 32);
  v84 = v4;
  v85 = (v4 + 8);
  v92 = v28;

  v36 = 0;
  v93 = v30;
  while (v34)
  {
    v37 = v36;
LABEL_15:
    v40 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v41 = v40 | (v37 << 6);
    v42 = v92;
    v43 = *(v10 - 8);
    (*(v43 + 16))(v101, *(v92 + 48) + 24 * v41, v10);
    v44 = v84;
    v45 = v99;
    (*(v84 + 16))(v94, *(v42 + 56) + *(v84 + 72) * v41, v99);
    v47 = v90;
    v46 = v91;
    v98 = *(v91 + 48);
    (*(v43 + 32))(v90, v101, v10);
    (*(v44 + 32))(&v47[v98], v94, v45);
    v48 = *(v46 - 8);
    (*(v48 + 56))(v47, 0, 1, v46);
LABEL_16:
    v49 = v87;
    (*v86)();
    if ((*(v48 + 48))(v49, 1, v46) == 1)
    {
      v67 = v92;

      v68 = 1 << *(v67 + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & *(v67 + 64);
      v71 = (v68 + 63) >> 6;

      v72 = 0;
      v73 = v80;
      v74 = v79;
      for (i = v93; v70; i = v93)
      {
        v76 = v72;
LABEL_33:
        v77 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v78 = *(v10 - 8);
        (*(v78 + 16))(v101, *(v92 + 48) + 24 * (v77 | (v76 << 6)), v10);
        sub_1A7CFAF04(v101, v81, v74, v24, v73, v2);
        result = (*(v78 + 8))(v101, v10);
      }

      while (1)
      {
        v76 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_37;
        }

        if (v76 >= v71)
        {

          *(v73 + 16) = 0;
          return result;
        }

        v70 = *(i + 8 * v76);
        ++v72;
        if (v70)
        {
          v72 = v76;
          goto LABEL_33;
        }
      }
    }

    v50 = *(v46 + 48);
    v98 = *(v10 - 8);
    (*(v98 + 32))(v101, v49, v10);
    v51 = &v49[v50];
    v52 = v97;
    v53 = v99;
    (*v95)(v97, v51, v99);
    v54 = *&v52[*(v53 + 32)];
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = (v98 + 8);
      v57 = (v54 + 40);
      do
      {
        v58 = *v57;
        v59 = swift_unknownObjectRetain_n();
        sub_1A7CFA1E4(v59, v58, v100);
        sub_1A7CFABD0(v101, v100, v24, v2);
        swift_unknownObjectRelease();
        (*v56)(v100, v10);
        v57 += 2;
        --v55;
      }

      while (v55);
    }

    v60 = *&v97[*(v99 + 28)];
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = (v98 + 8);
      v63 = (v60 + 40);
      do
      {
        v64 = *v63;
        v65 = swift_unknownObjectRetain_n();
        sub_1A7CFA1E4(v65, v64, v100);
        sub_1A7CFABD0(v100, v101, v24, v2);
        swift_unknownObjectRelease();
        (*v62)(v100, v10);
        v63 += 2;
        --v61;
      }

      while (v61);
    }

    (*v85)(v97, v99);
    result = (*(v98 + 8))(v101, v10);
    v30 = v93;
  }

  if (v82 <= v36 + 1)
  {
    v38 = v36 + 1;
  }

  else
  {
    v38 = v82;
  }

  v39 = v38 - 1;
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v82)
    {
      v66 = v91;
      v48 = *(v91 - 8);
      (*(v48 + 56))(v90, 1, 1, v91);
      v34 = 0;
      v36 = v39;
      v46 = v66;
      goto LABEL_16;
    }

    v34 = *(v30 + 8 * v37);
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1A7CFABD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = type metadata accessor for LinkEnginePluginHook.PluginWrapper();
  v19 = *(v9 - 8);
  v17 = *(v19 + 16);
  v17(v20, a2, v9);
  swift_beginAccess();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = sub_1A7CFC478;
  v10[4] = v8;
  swift_isUniquelyReferenced_nonNull_native();
  v21[0] = *(a3 + 16);
  v11 = v21[0];
  *(a3 + 16) = 0x8000000000000000;
  WitnessTable = swift_getWitnessTable();
  v18 = a1;
  sub_1A7CFBDBC(a1, v9, WitnessTable);
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

  v14 = v13;
  sub_1A7E22800();
  sub_1A7E22D80();
  if (sub_1A7E22D60())
  {
    sub_1A7CFBDBC(v18, v9, WitnessTable);
    if ((v14 & 1) != (v15 & 1))
    {
      goto LABEL_8;
    }
  }

  *(a3 + 16) = v21[0];
  if ((v14 & 1) == 0)
  {
    (v10[3])();
    v17(v21, v18, v9);
    sub_1A7E22D70();
  }

  sub_1A7E227D0();
  swift_endAccess();
  (*(v19 + 8))(v21, v9);
}

uint64_t sub_1A7CFAE74()
{
  v0 = type metadata accessor for LinkEnginePluginHook.PluginWrapper();
  v1 = sub_1A7E22570();
  if (sub_1A7E225B0())
  {
    WitnessTable = swift_getWitnessTable();
    v3 = sub_1A7CFC484(v1, v0, WitnessTable);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  return v3;
}

uint64_t sub_1A7CFAF04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a3;
  v10 = a1;
  v45 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies();
  v44 = sub_1A7E229A0();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v13);
  v47 = &v39 - v14;
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v43 = &v39 - v17;
  swift_beginAccess();
  v55 = a2;
  v18 = type metadata accessor for LinkEnginePluginHook.PluginWrapper();

  swift_getWitnessTable();
  v19 = sub_1A7E227F0();

  if ((v19 & 1) == 0)
  {
    v54 = a5;
    v21 = *(v18 - 8);
    v22 = *(v21 + 16);
    v51 = v21 + 16;
    v52 = v22;
    v22(v56, v10, v18);
    swift_beginAccess();
    v23 = sub_1A7E22800();
    sub_1A7E227D0();
    swift_endAccess();
    v24 = *(v21 + 8);
    v53 = v21 + 8;
    v50 = v24;
    v24(v57, v18);
    swift_beginAccess();
    v41 = v23;
    sub_1A7E221A0();
    v25 = v56[0];
    if (v56[0])
    {
      v39 = v12;
      v26 = a4;
      v27 = v49;
      v40 = v10;
      result = swift_endAccess();
      v28 = 0;
      v29 = 1 << *(v25 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v31 = v30 & *(v25 + 56);
      for (i = (v29 + 63) >> 6; v31; result = v50(v57, v18))
      {
        v33 = v28;
LABEL_11:
        v34 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v52(v57, *(v25 + 48) + 24 * (v34 | (v33 << 6)), v18);
        sub_1A7CFAF04(v57, v55, v27, v26, v54, a6);
      }

      while (1)
      {
        v33 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v33 >= i)
        {

          v10 = v40;
          v12 = v39;
          goto LABEL_15;
        }

        v31 = *(v25 + 56 + 8 * v33);
        ++v28;
        if (v31)
        {
          v28 = v33;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      swift_endAccess();
LABEL_15:
      v35 = v47;
      sub_1A7E221A0();
      v36 = v48;
      if ((*(v48 + 48))(v35, 1, v12) == 1)
      {
        (*(v42 + 8))(v35, v44);
      }

      else
      {
        v37 = v43;
        (*(v36 + 32))(v43, v35, v12);
        (*(v45 + 16))(v46, v37, a6);
        sub_1A7E225E0();
        sub_1A7E225C0();
        (*(v36 + 8))(v37, v12);
      }

      swift_beginAccess();
      sub_1A7E227E0();
      swift_endAccess();
      v38 = sub_1A7E229A0();
      (*(*(v38 - 8) + 8))(v57, v38);
      v52(v56, v10, v18);
      swift_beginAccess();
      sub_1A7E227D0();
      swift_endAccess();
      return v50(v57, v18);
    }
  }

  return result;
}

uint64_t (*sub_1A7CFB568())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v1 = *&v0->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v0 + 4);
  v2 = *(v1 + 80);
  sub_1A7CFB66C(&v0[6], v2, v7);
  type metadata accessor for LinkEnginePluginHook.State();
  sub_1A7CC9830(&qword_1EB2B4B58);
  swift_getFunctionTypeMetadata2();
  sub_1A7E229A0();
  os_unfair_lock_unlock(v0 + 4);
  v3 = v7[0];
  if (!v7[0])
  {
    return 0;
  }

  v4 = v7[1];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  return sub_1A7CFC898;
}

uint64_t sub_1A7CFB66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4)
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = v4;
    v7[4] = v5;
    v8 = sub_1A7CFC8D4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a3 = v8;
  a3[1] = v7;
  return sub_1A7B151B0(v4);
}

uint64_t sub_1A7CFB6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies();
  v13 = sub_1A7E229A0();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v22[-1] - v15;
  v17 = swift_unknownObjectRetain();
  sub_1A7CFA1E4(v17, a3, v22);
  (*(v9 + 16))(v11, a4, a5);
  (*(v9 + 32))(v16, v11, a5);
  v18 = type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies();
  v19 = MEMORY[0x1E69E7CC0];
  *&v16[*(v18 + 28)] = MEMORY[0x1E69E7CC0];
  *&v16[*(v18 + 32)] = v19;
  (*(*(v12 - 8) + 56))(v16, 0, 1, v12);
  type metadata accessor for LinkEnginePluginHook.PluginWrapper();
  swift_getWitnessTable();
  sub_1A7E22190();
  result = sub_1A7E221B0();
  *(a1 + 16) = 1;
  return result;
}

void LinkEnginePluginHook.off(_:)(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(v2 + 4);
  sub_1A7CFB9B4(&v2[6], a1, a2);
  type metadata accessor for LinkEnginePluginHook.State();

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1A7CFB9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies();
  v5 = sub_1A7E229A0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12[-1] - v7;
  v9 = swift_unknownObjectRetain();
  sub_1A7CFA1E4(v9, a3, v12);
  (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
  type metadata accessor for LinkEnginePluginHook.PluginWrapper();
  swift_getWitnessTable();
  sub_1A7E22190();
  return sub_1A7E221B0();
}

uint64_t sub_1A7CFBAF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v6 = type metadata accessor for LinkEnginePluginHook.State();
    sub_1A7CFA2D8(v6);
  }

  v7 = *a1;
  type metadata accessor for LinkEnginePluginHook.PluginWrapper();
  type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies();
  WitnessTable = swift_getWitnessTable();
  v15[5] = v7;
  MEMORY[0x1EEE9AC00](WitnessTable, v9);
  v15[2] = a2;
  v10 = sub_1A7E22180();

  v11 = swift_getWitnessTable();
  v13 = sub_1A7CF9BA8(sub_1A7CFC840, v15, v10, a2, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);

  *a3 = v13;
  a3[1] = 0;
  return result;
}

uint64_t LinkEnginePluginHook.deinit()
{
  type metadata accessor for LinkEnginePluginHook.State();
  sub_1A7E21CB0();
  sub_1A7E22990();
  return v0;
}

uint64_t LinkEnginePluginHook.__deallocating_deinit()
{
  LinkEnginePluginHook.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A7CFBCF4@<X0>(uint64_t *a1@<X8>)
{
  LinkEnginePluginHook.makeIterator()(a1);
}

uint64_t sub_1A7CFBD3C()
{
  v0 = sub_1A7CFC480();

  return v0;
}

unint64_t sub_1A7CFBDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7E221C0();

  return sub_1A7CFBE18(a1, v6, a2, a3);
}

unint64_t sub_1A7CFBE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1A7E22240();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1A7CFC06C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A7CFC0A8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A7CFC0CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CFC114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7CFC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_1A7E225B0())
  {
    sub_1A7E22E30();
    v14 = sub_1A7E22E20();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1A7E225B0();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_1A7E22590())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1A7E22B90();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1A7CFBDBC(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1A7CFC484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = &v40 - v11;
  v41 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  if (sub_1A7E225B0())
  {
    sub_1A7E22B30();
    v17 = sub_1A7E22B20();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  v45 = sub_1A7E225B0();
  if (!v45)
  {
    return v17;
  }

  v18 = 0;
  v50 = (v6 + 16);
  v51 = v17 + 56;
  v47 = v6 + 32;
  v49 = (v6 + 8);
  v42 = v6;
  v43 = v5;
  v44 = v16;
  while (1)
  {
    v19 = sub_1A7E22590();
    sub_1A7E22550();
    if (v19)
    {
      v20 = *(v6 + 16);
      v20(v16, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18), a2);
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (v21)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1A7E22B90();
      if (v41 != 8)
      {
        goto LABEL_23;
      }

      v53 = result;
      v20 = *v50;
      (*v50)(v16, &v53, a2);
      swift_unknownObjectRelease();
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (v21)
      {
LABEL_20:
        __break(1u);
        return v17;
      }
    }

    v48 = v22;
    v46 = *(v6 + 32);
    v46(v52, v16, a2);
    v23 = sub_1A7E221C0();
    v24 = v17;
    v25 = -1 << *(v17 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v51 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v20(v8, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = sub_1A7E22240();
        v34 = *v49;
        (*v49)(v8, a2);
        if (v33)
        {
          v34(v52, a2);
          a3 = v32;
          v6 = v42;
          v5 = v43;
          v17 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v51 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v42;
      v5 = v43;
    }

    v35 = v52;
    *(v51 + 8 * v27) = v29 | v28;
    v36 = *(v24 + 48) + v30 * v26;
    v17 = v24;
    result = (v46)(v36, v35, a2);
    v38 = *(v24 + 16);
    v21 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v21)
    {
      break;
    }

    *(v24 + 16) = v39;
LABEL_7:
    v16 = v44;
    v18 = v48;
    if (v48 == v45)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A7CFC898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

void sub_1A7CFC940()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A7CFCCD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A7CFC9C8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1A7CFCB0C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1A7CFCCD4()
{
  if (!qword_1EB2B2940)
  {
    sub_1A7CC9830(&qword_1EB2B4B58);
    v0 = sub_1A7E225E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B2940);
    }
  }
}

uint64_t sub_1A7CFCD38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A7CFCD74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 16) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 8) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CFCDC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      *(result + 16) = 1;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IDSLinkEndpointCellularState.uniqueIDSortableIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t IDSLinkEndpointCellularState.uniqueID.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x6C6C65436E6F4ELL;
  if (*v0 != 1)
  {
    v2 = 7958081;
    v1 = 0xE300000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1819043139;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v3, v4);

  return 0x3D6C6C6563;
}

uint64_t sub_1A7CFCEF4()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1A7CFCF24()
{
  v1 = 0xE700000000000000;
  v2 = 0x6C6C65436E6F4ELL;
  if (*v0 != 1)
  {
    v2 = 7958081;
    v1 = 0xE300000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1819043139;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v3, v4);

  return 0x3D6C6C6563;
}

void LinkEndpoint.idsCellularState.getter(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointCellularState), (v5 & 1) != 0) && (sub_1A7B0CD10(*(v3 + 56) + 32 * v4, v8), sub_1A7B1503C(v8, &v7), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) != 0) && v10)
  {
    v6 = v9;
  }

  else
  {
    v6 = 1;
  }

  *a1 = v6;
}