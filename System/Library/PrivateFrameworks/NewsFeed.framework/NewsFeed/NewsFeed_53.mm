uint64_t sub_1D600BA14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D6997950(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      if ((v9 - 1) >= 0xB)
      {
        if (*v4)
        {
          goto LABEL_5;
        }
      }

LABEL_5:
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D6997950((v10 > 1), v11 + 1, 1);
      }

      v4 += 40;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 40 * v11;
      *(v12 + 32) = v5;
      *(v12 + 40) = v6;
      *(v12 + 48) = v7;
      *(v12 + 56) = v8;
      *(v12 + 64) = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D600BB30(uint64_t a1)
{
  v2 = type metadata accessor for FormatOption();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v170 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v190 = MEMORY[0x1E69E7CC0];
    sub_1D6997860(0, v11, 0);
    v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v14 = a1 + v13;
    v12 = v190;
    v15 = *(v3 + 72);
    v183 = v13;
    v184 = v15;
    v181 = v2;
    while (1)
    {
      sub_1D5D251EC(v14, v6, type metadata accessor for FormatOption);
      v16 = *v6;
      v17 = v6[2];
      v18 = v17 >> 60;
      v185 = v6[1];
      if ((v17 >> 60) <= 7)
      {
        break;
      }

      if (v18 <= 11)
      {
        if ((v18 - 9) >= 3)
        {
          v17 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        }

LABEL_15:

        goto LABEL_16;
      }

      if (v18 != 12)
      {
        goto LABEL_15;
      }

      v27 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v28 = swift_allocObject();
      v29 = v28;
      if (v27 < 0)
      {
        v35 = v27 & 0x1FFFFFFFFFFFFFFFLL;
        v182 = v16;
        v36 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v37 = *(v35 + 24);
        v38 = *(v35 + 32);
        v39 = *(v35 + 40);
        v40 = swift_allocObject();
        *(v40 + 16) = v36;
        *(v40 + 24) = v37;
        *(v40 + 32) = v38;
        *(v40 + 40) = v39;
        *(v29 + 16) = v40 | 0x6000000000000000;
        v41 = v37;
        v42 = v38;
        v16 = v182;
        v13 = v183;
        v43 = v39;
        v2 = v181;
        sub_1D5F58038(v36, v41, v42, v43);
      }

      else
      {
        *(v28 + 16) = v27;
      }

      v17 = v29 | 0xC000000000000000;

      v15 = v184;
LABEL_16:
      *v10 = v16;
      *(v10 + 1) = v30;
      *(v10 + 2) = v17;
      *(v10 + 3) = 1;
      v31 = *(v2 + 28);
      v32 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v32 - 8) + 56))(&v10[v31], 1, 1, v32);
      sub_1D60112C4(v6, type metadata accessor for FormatOption);
      v190 = v12;
      v34 = *(v12 + 16);
      v33 = *(v12 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D6997860(v33 > 1, v34 + 1, 1);
        v15 = v184;
        v12 = v190;
      }

      *(v12 + 16) = v34 + 1;
      sub_1D5D247E0(v10, v12 + v13 + v34 * v15);
      v14 += v15;
      if (!--v11)
      {
        return v12;
      }
    }

    if ((v17 >> 60) >= 7)
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v20 = swift_allocObject();
      v21 = v19 >> 60;
      if ((v19 >> 60) > 8)
      {
        if (v21 == 9)
        {
          v45 = v19 & 0xFFFFFFFFFFFFFFFLL;
          v47 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v46 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v182 = v16;
          v48 = *(v45 + 32);
          LODWORD(v180) = *(v45 + 40);
          v22 = v20;
          v49 = swift_allocObject();
          *(v49 + 16) = v47;
          *(v49 + 24) = v46;
          *(v49 + 32) = v48;
          *(v49 + 40) = v180;
          *(v22 + 16) = v49 | 0x7000000000000000;

          v50 = v47;
          v15 = v184;
          v51 = v48;
          v16 = v182;
          sub_1D5F58038(v50, v46, v51, v180);
        }

        else
        {
          v22 = v20;
          v24 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v23 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          if (v21 == 10)
          {
            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v23;
            v26 = v25 | 0x4000000000000000;
          }

          else
          {
            v52 = swift_allocObject();
            *(v52 + 16) = v24;
            *(v52 + 24) = v23;
            v26 = v52 | 0x8000000000000000;
          }

          *(v22 + 16) = v26;

          v15 = v184;
        }

        goto LABEL_30;
      }

      if ((v21 - 4) < 5 || v21 < 3)
      {
        *(v20 + 16) = v19;
        v22 = v20;

LABEL_30:
        v17 = v22 | 0x7000000000000000;
        v30 = v185;
        v13 = v183;
        goto LABEL_16;
      }

      v53 = v19 & 0xFFFFFFFFFFFFFFFLL;
      v55 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v54 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v179 = v20;
      v180 = v53;
      v56 = v55 >> 60;
      v182 = v16;
      if ((v55 >> 60) <= 8)
      {
        if ((v56 - 4) >= 5 && v56 >= 3)
        {
          v177 = v55;
          v90 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v91 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v92 = v90 >> 60;
          v178 = v90;
          if ((v90 >> 60) <= 8)
          {
            if ((v92 - 4) >= 5 && v92 >= 3)
            {
              v176 = v54;
              v150 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v151 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v175 = swift_allocObject();
              v188 = v150;
              v189 = v151;

              v54 = v176;

              sub_1D6E0CAE0(&v187);
              sub_1D6E0CAE0(&v186);

              v152 = v186;
              v153 = v175;
              *(v175 + 16) = v187;
              *(v153 + 24) = v152;
              v175 = v153 | 0x3000000000000000;
            }

            else
            {
              v108 = v90;

              swift_retain_n();

              v175 = v108;
            }
          }

          else if (v92 == 9)
          {
            v176 = v54;
            v110 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v173 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v111 = v173;
            v174 = v110;
            v172 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            LODWORD(v171) = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v112 = swift_allocObject();
            *(v112 + 16) = v111;
            *(v112 + 24) = v110;
            v113 = v172;
            *(v112 + 32) = v172;
            LOBYTE(v111) = v171;
            *(v112 + 40) = v171;
            v175 = v112 | 0x7000000000000000;

            v54 = v176;

            sub_1D5F58038(v173, v174, v113, v111);
          }

          else
          {
            v93 = v54;
            v176 = v90 & 0xFFFFFFFFFFFFFFFLL;
            v94 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v95 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            if (v92 == 10)
            {
              v96 = swift_allocObject();
              *(v96 + 16) = v94;
              *(v96 + 24) = v95;
              v97 = v96 | 0x4000000000000000;
            }

            else
            {
              v119 = swift_allocObject();
              *(v119 + 16) = v94;
              *(v119 + 24) = v95;
              v97 = v119 | 0x8000000000000000;
            }

            v175 = v97;

            v54 = v93;
          }

          v120 = v91 >> 60;
          v15 = v184;
          if ((v91 >> 60) <= 8)
          {
            if ((v120 - 4) >= 5 && v120 >= 3)
            {
              v159 = v91 & 0xFFFFFFFFFFFFFFFLL;
              v176 = v91 & 0xFFFFFFFFFFFFFFFLL;
              v160 = v54;
              v162 = *((v91 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v161 = *(v159 + 24);
              v163 = swift_allocObject();
              v188 = v162;
              v189 = v161;

              sub_1D6E0CAE0(&v187);
              sub_1D6E0CAE0(&v186);
              v15 = v184;
              v54 = v160;

              v164 = v186;
              *(v163 + 16) = v187;
              *(v163 + 24) = v164;

              v91 = v163 | 0x3000000000000000;
            }

            else
            {
            }
          }

          else if (v120 == 9)
          {
            v176 = v54;
            v127 = v91 & 0xFFFFFFFFFFFFFFFLL;
            v129 = *((v91 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v128 = *((v91 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v130 = *((v91 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            LODWORD(v174) = *(v127 + 40);
            v131 = swift_allocObject();
            *(v131 + 16) = v129;
            *(v131 + 24) = v128;
            *(v131 + 32) = v130;
            v132 = v174;
            *(v131 + 40) = v174;
            sub_1D5F58038(v129, v128, v130, v132);
            v54 = v176;

            v91 = v131 | 0x7000000000000000;
            v15 = v184;
          }

          else
          {
            v121 = v54;
            v122 = v91 & 0xFFFFFFFFFFFFFFFLL;
            v124 = *((v91 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v123 = *(v122 + 24);
            if (v120 == 10)
            {
              v125 = swift_allocObject();
              *(v125 + 16) = v124;
              *(v125 + 24) = v123;

              v91 = v125 | 0x4000000000000000;
            }

            else
            {
              v146 = swift_allocObject();
              *(v146 + 16) = v124;
              *(v146 + 24) = v123;

              v91 = v146 | 0x8000000000000000;
            }

            v15 = v184;
            v54 = v121;
          }

          v147 = swift_allocObject();
          *(v147 + 16) = v175;
          *(v147 + 24) = v91;
          v178 = v147 | 0x3000000000000000;
          v16 = v182;
          v55 = v177;
        }

        else
        {

          swift_retain_n();

          v178 = v55;
        }
      }

      else if (v56 == 9)
      {
        v176 = v54;
        v62 = v55 & 0xFFFFFFFFFFFFFFFLL;
        v63 = v55;
        v64 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v65 = *(v62 + 24);
        v174 = v64;
        v177 = v63;
        v66 = *(v62 + 32);
        v67 = *(v62 + 40);
        LODWORD(v175) = v67;
        v68 = swift_allocObject();
        *(v68 + 16) = v64;
        *(v68 + 24) = v65;
        v69 = v66;
        *(v68 + 32) = v66;
        *(v68 + 40) = v67;
        v178 = v68 | 0x7000000000000000;

        v54 = v176;

        v15 = v184;
        v16 = v182;
        v70 = v69;
        v55 = v177;
        sub_1D5F58038(v174, v65, v70, v175);
      }

      else
      {
        v58 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v57 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        if (v56 == 10)
        {
          v59 = swift_allocObject();
          *(v59 + 16) = v58;
          *(v59 + 24) = v57;
          v60 = v59 | 0x4000000000000000;
        }

        else
        {
          v71 = swift_allocObject();
          *(v71 + 16) = v58;
          *(v71 + 24) = v57;
          v60 = v71 | 0x8000000000000000;
        }

        v178 = v60;

        v15 = v184;
        v16 = v182;
      }

      v72 = v54 >> 60;
      if ((v54 >> 60) > 8)
      {
        v73 = v54 & 0xFFFFFFFFFFFFFFFLL;
        if (v72 != 9)
        {
          v75 = *(v73 + 16);
          v74 = *(v73 + 24);
          if (v72 == 10)
          {
            v76 = swift_allocObject();
            *(v76 + 16) = v75;
            *(v76 + 24) = v74;
            v77 = v76 | 0x4000000000000000;
          }

          else
          {
            v88 = swift_allocObject();
            *(v88 + 16) = v75;
            *(v88 + 24) = v74;
            v77 = v88 | 0x8000000000000000;
          }

          v54 = v77;

          v15 = v184;
          v16 = v182;
          goto LABEL_56;
        }

        v79 = *(v73 + 16);
        v80 = *(v73 + 24);
        v177 = v55;
        v81 = *(v73 + 32);
        v82 = *(v73 + 40);
        v83 = swift_allocObject();
        *(v83 + 16) = v79;
        *(v83 + 24) = v80;
        *(v83 + 32) = v81;
        v84 = v82;
        *(v83 + 40) = v82;
        v85 = v83 | 0x7000000000000000;
        v86 = v79;
        v15 = v184;
        v87 = v80;
        v16 = v182;
        sub_1D5F58038(v86, v87, v81, v84);
        v54 = v85;

LABEL_53:

LABEL_56:
        v89 = swift_allocObject();
        v22 = v179;
        *(v89 + 16) = v178;
        *(v89 + 24) = v54;
        *(v22 + 16) = v89 | 0x3000000000000000;

        v2 = v181;
        goto LABEL_30;
      }

      if ((v72 - 4) < 5 || v72 < 3)
      {
        goto LABEL_53;
      }

      v98 = v54 & 0xFFFFFFFFFFFFFFFLL;
      v99 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v100 = *(v98 + 24);
      v101 = v99 >> 60;
      v176 = v99;
      v177 = v55;
      v175 = v98;
      if ((v99 >> 60) <= 8)
      {
        if ((v101 - 4) >= 5 && v101 >= 3)
        {
          v154 = v99 & 0xFFFFFFFFFFFFFFFLL;
          v155 = *(v154 + 16);
          v156 = *(v154 + 24);
          v157 = swift_allocObject();
          v188 = v155;
          v189 = v156;

          sub_1D6E0CAE0(&v187);
          sub_1D6E0CAE0(&v186);
          v15 = v184;

          v158 = v186;
          *(v157 + 16) = v187;
          *(v157 + 24) = v158;
          v174 = v157 | 0x3000000000000000;
          goto LABEL_91;
        }

        swift_retain_n();
        v174 = v99;
      }

      else
      {
        v102 = v99 & 0xFFFFFFFFFFFFFFFLL;
        if (v101 == 9)
        {
          v114 = *(v102 + 24);
          v173 = *(v102 + 16);
          v115 = *(v102 + 32);
          v170 = v114;
          v171 = v115;
          v116 = *(v102 + 40);
          LODWORD(v172) = v116;
          v117 = swift_allocObject();
          v118 = v170;
          *(v117 + 16) = v173;
          *(v117 + 24) = v118;
          *(v117 + 32) = v115;
          *(v117 + 40) = v116;
          v174 = v117 | 0x7000000000000000;

          v15 = v184;
          v16 = v182;
          sub_1D5F58038(v173, v118, v171, v172);
        }

        else
        {
          v104 = *(v102 + 16);
          v103 = *(v102 + 24);
          if (v101 == 10)
          {
            v105 = swift_allocObject();
            *(v105 + 16) = v104;
            *(v105 + 24) = v103;
            v106 = v105 | 0x4000000000000000;
          }

          else
          {
            v133 = swift_allocObject();
            *(v133 + 16) = v104;
            *(v133 + 24) = v103;
            v106 = v133 | 0x8000000000000000;
          }

          v174 = v106;

          v15 = v184;
LABEL_91:
          v16 = v182;
        }
      }

      v134 = v100 >> 60;
      if ((v100 >> 60) <= 8)
      {
        if ((v134 - 4) >= 5 && v134 >= 3)
        {
          v165 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v166 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v167 = swift_allocObject();
          v188 = v165;
          v189 = v166;

          sub_1D6E0CAE0(&v187);
          sub_1D6E0CAE0(&v186);
          v15 = v184;

          v168 = v186;
          *(v167 + 16) = v187;
          *(v167 + 24) = v168;

          v100 = v167 | 0x3000000000000000;
          v16 = v182;
        }

        else
        {
        }
      }

      else
      {
        v135 = v100 & 0xFFFFFFFFFFFFFFFLL;
        if (v134 == 9)
        {
          v141 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v140 = *(v135 + 24);
          v142 = *(v135 + 32);
          LODWORD(v173) = *(v135 + 40);
          v143 = swift_allocObject();
          *(v143 + 16) = v141;
          *(v143 + 24) = v140;
          *(v143 + 32) = v142;
          v144 = v173;
          *(v143 + 40) = v173;
          v145 = v140;
          v16 = v182;
          sub_1D5F58038(v141, v145, v142, v144);

          v100 = v143 | 0x7000000000000000;
          v15 = v184;
        }

        else
        {
          v137 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v136 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          if (v134 == 10)
          {
            v138 = swift_allocObject();
            *(v138 + 16) = v137;
            *(v138 + 24) = v136;

            v100 = v138 | 0x4000000000000000;
          }

          else
          {
            v148 = swift_allocObject();
            *(v148 + 16) = v137;
            *(v148 + 24) = v136;

            v100 = v148 | 0x8000000000000000;
          }

          v15 = v184;
          v16 = v182;
        }
      }

      v149 = swift_allocObject();
      *(v149 + 16) = v174;
      *(v149 + 24) = v100;

      v54 = v149 | 0x3000000000000000;
      goto LABEL_56;
    }

    goto LABEL_15;
  }

  return v12;
}

uint64_t sub_1D600CADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D69978B0(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 2);
      v13 = *(v4 - 7);
      v14 = *(v4 - 8);
      v7 = *v4;

      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_1D6E0CAE0(&v15);

      v8 = v15;

      v16 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D69978B0((v9 > 1), v10 + 1, 1);
        v2 = v16;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 40 * v10;
      *(v11 + 32) = v5;
      *(v11 + 40) = v8;
      *(v11 + 48) = v6;
      *(v11 + 56) = v14;
      *(v11 + 57) = v13;
      *(v11 + 64) = v7;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D600CC40(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v148 = MEMORY[0x1E69E7CC0];
    sub_1D6997A80(0, v1, 0);
    v4 = (a1 + 48);
    v2 = v148;
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      if ((~v6 & 0xF000000000000007) != 0)
      {
        v8 = v6 >> 60;
        if ((v6 >> 60) > 8)
        {
          v140 = v2;
          v142 = v1;
          v9 = *v4;
          if (v8 == 9)
          {
            v16 = v6 & 0xFFFFFFFFFFFFFFFLL;
            v17 = *(v4 - 2);
            v18 = *(v4 - 1);
            v19 = *(v16 + 16);
            v20 = *(v16 + 24);
            v21 = *(v16 + 32);
            v22 = *(v16 + 40);
            v23 = swift_allocObject();
            *(v23 + 16) = v19;
            *(v23 + 24) = v20;
            *(v23 + 32) = v21;
            *(v23 + 40) = v22;
            v14 = v23 | 0x7000000000000000;
            sub_1D5CFCFAC(v17);
            sub_1D5D04BD4(v18);
            sub_1D5D04BD4(v7);
            v24 = v19;
            v5 = v18;
            v6 = v17;
            sub_1D5F58038(v24, v20, v21, v22);
          }

          else
          {
            v10 = *(v4 - 1);
            v12 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v11 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            if (v8 == 10)
            {
              v13 = swift_allocObject();
              *(v13 + 16) = v12;
              *(v13 + 24) = v11;
              v14 = v13 | 0x4000000000000000;
            }

            else
            {
              v25 = swift_allocObject();
              *(v25 + 16) = v12;
              *(v25 + 24) = v11;
              v14 = v25 | 0x8000000000000000;
            }

            sub_1D5CFCFAC(v6);
            sub_1D5D04BD4(v10);
            sub_1D5D04BD4(v9);

            v5 = v10;
            v7 = v9;
          }

          v2 = v140;
          v1 = v142;
          goto LABEL_19;
        }

        if ((v8 - 4) >= 5 && v8 >= 3)
        {
          v29 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v143 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v30 = v143 >> 60;
          v139 = *(v4 - 1);
          if ((v143 >> 60) <= 8)
          {
            if ((v30 - 4) >= 5 && v30 >= 3)
            {
              v66 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v65 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v67 = v66 >> 60;
              v138 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if ((v66 >> 60) <= 8)
              {
                if ((v67 - 4) >= 5 && v67 >= 3)
                {
                  v116 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v134 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v136 = swift_allocObject();
                  v146 = v134;
                  v147 = v116;
                  sub_1D5CFCFAC(v6);
                  sub_1D5D04BD4(v5);
                  sub_1D5D04BD4(v7);
                  sub_1D5CFCFAC(v6);

                  sub_1D6E0CAE0(&v145);
                  sub_1D6E0CAE0(&v144);

                  v117 = v144;
                  *(v136 + 16) = v145;
                  *(v136 + 24) = v117;
                  v135 = v136 | 0x3000000000000000;
                }

                else
                {
                  sub_1D5CFCFAC(v6);
                  sub_1D5D04BD4(v5);
                  sub_1D5D04BD4(v7);
                  sub_1D5CFCFAC(v6);

                  swift_retain_n();

                  v135 = v66;
                }
              }

              else if (v67 == 9)
              {
                v91 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v128 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v124 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v132 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v92 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v125 = v92;
                v93 = swift_allocObject();
                *(v93 + 16) = v128;
                *(v93 + 24) = v91;
                *(v93 + 32) = v124;
                *(v93 + 40) = v92;
                v65 = v132;
                v135 = v93 | 0x7000000000000000;
                sub_1D5CFCFAC(v6);
                sub_1D5D04BD4(v5);
                sub_1D5D04BD4(v7);
                sub_1D5CFCFAC(v6);

                sub_1D5F58038(v128, v91, v124, v125);
              }

              else
              {
                v68 = v66 & 0xFFFFFFFFFFFFFFFLL;
                v70 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v69 = *(v68 + 24);
                if (v67 == 10)
                {
                  v71 = swift_allocObject();
                  *(v71 + 16) = v70;
                  *(v71 + 24) = v69;
                  v72 = v71 | 0x4000000000000000;
                }

                else
                {
                  v94 = swift_allocObject();
                  *(v94 + 16) = v70;
                  *(v94 + 24) = v69;
                  v72 = v94 | 0x8000000000000000;
                }

                v135 = v72;
                sub_1D5CFCFAC(v6);
                sub_1D5D04BD4(v5);
                sub_1D5D04BD4(v7);
                sub_1D5CFCFAC(v6);
              }

              v95 = v65 >> 60;
              if ((v65 >> 60) <= 8)
              {
                if ((v95 - 4) >= 5 && v95 >= 3)
                {
                  v118 = v65 & 0xFFFFFFFFFFFFFFFLL;
                  v119 = *((v65 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v120 = *(v118 + 24);
                  v121 = swift_allocObject();
                  v146 = v119;
                  v147 = v120;

                  sub_1D6E0CAE0(&v145);
                  sub_1D6E0CAE0(&v144);

                  v122 = v144;
                  *(v121 + 16) = v145;
                  *(v121 + 24) = v122;

                  v65 = v121 | 0x3000000000000000;
                }

                else
                {
                }
              }

              else
              {
                v96 = v65 & 0xFFFFFFFFFFFFFFFLL;
                if (v95 == 9)
                {
                  v102 = *((v65 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v101 = *((v65 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v103 = *((v65 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v133 = *(v96 + 40);
                  v104 = swift_allocObject();
                  *(v104 + 16) = v102;
                  *(v104 + 24) = v101;
                  *(v104 + 32) = v103;
                  *(v104 + 40) = v133;
                  sub_1D5F58038(v102, v101, v103, v133);

                  v65 = v104 | 0x7000000000000000;
                }

                else
                {
                  v98 = *((v65 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v97 = *(v96 + 24);
                  if (v95 == 10)
                  {
                    v99 = swift_allocObject();
                    *(v99 + 16) = v98;
                    *(v99 + 24) = v97;

                    v65 = v99 | 0x4000000000000000;
                  }

                  else
                  {
                    v105 = swift_allocObject();
                    *(v105 + 16) = v98;
                    *(v105 + 24) = v97;

                    v65 = v105 | 0x8000000000000000;
                  }
                }
              }

              v106 = swift_allocObject();
              v29 = v138;
              *(v106 + 16) = v135;
              *(v106 + 24) = v65;
              v141 = v106 | 0x3000000000000000;
            }

            else
            {
              sub_1D5CFCFAC(v6);
              sub_1D5D04BD4(v5);
              sub_1D5D04BD4(v7);
              sub_1D5CFCFAC(v6);

              swift_retain_n();
              v141 = v143;
            }
          }

          else if (v30 == 9)
          {
            v37 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v137 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v38 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v126 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v129 = v38;
            v39 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v40 = swift_allocObject();
            *(v40 + 16) = v37;
            *(v40 + 24) = v126;
            *(v40 + 32) = v38;
            *(v40 + 40) = v39;
            v141 = v40 | 0x7000000000000000;
            sub_1D5CFCFAC(v6);
            v29 = v137;
            sub_1D5D04BD4(v5);
            sub_1D5D04BD4(v7);
            sub_1D5CFCFAC(v6);

            sub_1D5F58038(v37, v126, v129, v39);
          }

          else
          {
            v31 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v33 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v32 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            if (v30 == 10)
            {
              v34 = swift_allocObject();
              *(v34 + 16) = v33;
              *(v34 + 24) = v32;
              v35 = v34 | 0x4000000000000000;
            }

            else
            {
              v41 = swift_allocObject();
              *(v41 + 16) = v33;
              *(v41 + 24) = v32;
              v35 = v41 | 0x8000000000000000;
            }

            v141 = v35;
            sub_1D5CFCFAC(v6);
            sub_1D5D04BD4(v5);
            sub_1D5D04BD4(v7);
            sub_1D5CFCFAC(v6);

            v29 = v31;
          }

          v42 = v29 >> 60;
          if ((v29 >> 60) <= 8)
          {
            if ((v42 - 4) >= 5 && v42 >= 3)
            {
              v48 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v49 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v50 = v48 >> 60;
              if ((v48 >> 60) <= 8)
              {
                if ((v50 - 4) >= 5 && v50 >= 3)
                {
                  v111 = v48 & 0xFFFFFFFFFFFFFFFLL;
                  v112 = *(v111 + 16);
                  v113 = *(v111 + 24);
                  v114 = swift_allocObject();
                  v146 = v112;
                  v147 = v113;

                  sub_1D6E0CAE0(&v145);
                  sub_1D6E0CAE0(&v144);

                  v115 = v144;
                  *(v114 + 16) = v145;
                  *(v114 + 24) = v115;
                  v131 = v114 | 0x3000000000000000;
                }

                else
                {

                  swift_retain_n();
                  v131 = v48;
                }
              }

              else
              {
                v51 = v48 & 0xFFFFFFFFFFFFFFFLL;
                if (v50 == 9)
                {
                  v75 = *(v51 + 16);
                  v76 = *(v51 + 24);
                  v77 = *(v51 + 32);
                  v127 = *(v51 + 40);
                  v78 = swift_allocObject();
                  *(v78 + 16) = v75;
                  *(v78 + 24) = v76;
                  *(v78 + 32) = v77;
                  *(v78 + 40) = v127;
                  v131 = v78 | 0x7000000000000000;

                  sub_1D5F58038(v75, v76, v77, v127);
                }

                else
                {
                  v53 = *(v51 + 16);
                  v52 = *(v51 + 24);
                  if (v50 == 10)
                  {
                    v54 = swift_allocObject();
                    *(v54 + 16) = v53;
                    *(v54 + 24) = v52;
                    v55 = v54 | 0x4000000000000000;
                  }

                  else
                  {
                    v79 = swift_allocObject();
                    *(v79 + 16) = v53;
                    *(v79 + 24) = v52;
                    v55 = v79 | 0x8000000000000000;
                  }

                  v131 = v55;
                }
              }

              v80 = v49 >> 60;
              if ((v49 >> 60) <= 8)
              {
                if ((v80 - 4) >= 5 && v80 >= 3)
                {
                  v107 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v108 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v109 = swift_allocObject();
                  v146 = v107;
                  v147 = v108;

                  sub_1D6E0CAE0(&v145);
                  sub_1D6E0CAE0(&v144);

                  v110 = v144;
                  *(v109 + 16) = v145;
                  *(v109 + 24) = v110;

                  v49 = v109 | 0x3000000000000000;
                }

                else
                {
                }
              }

              else
              {
                v81 = v49 & 0xFFFFFFFFFFFFFFFLL;
                if (v80 == 9)
                {
                  v86 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v85 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v87 = *(v81 + 32);
                  v130 = *(v81 + 40);
                  v88 = swift_allocObject();
                  *(v88 + 16) = v86;
                  *(v88 + 24) = v85;
                  *(v88 + 32) = v87;
                  *(v88 + 40) = v130;
                  sub_1D5F58038(v86, v85, v87, v130);

                  v49 = v88 | 0x7000000000000000;
                }

                else
                {
                  v83 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v82 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  if (v80 == 10)
                  {
                    v84 = swift_allocObject();
                    *(v84 + 16) = v83;
                    *(v84 + 24) = v82;

                    v49 = v84 | 0x4000000000000000;
                  }

                  else
                  {
                    v89 = swift_allocObject();
                    *(v89 + 16) = v83;
                    *(v89 + 24) = v82;

                    v49 = v89 | 0x8000000000000000;
                  }
                }
              }

              v90 = swift_allocObject();
              *(v90 + 16) = v131;
              *(v90 + 24) = v49;

              v29 = v90 | 0x3000000000000000;
              goto LABEL_49;
            }
          }

          else
          {
            v43 = v29 & 0xFFFFFFFFFFFFFFFLL;
            if (v42 != 9)
            {
              v45 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v44 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if (v42 == 10)
              {
                v46 = swift_allocObject();
                *(v46 + 16) = v45;
                *(v46 + 24) = v44;
                v47 = v46 | 0x4000000000000000;
              }

              else
              {
                v63 = swift_allocObject();
                *(v63 + 16) = v45;
                *(v63 + 24) = v44;
                v47 = v63 | 0x8000000000000000;
              }

              v29 = v47;

              goto LABEL_49;
            }

            v56 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v57 = *(v43 + 24);
            v58 = *(v43 + 32);
            v59 = *(v43 + 40);
            v60 = swift_allocObject();
            *(v60 + 16) = v56;
            *(v60 + 24) = v57;
            *(v60 + 32) = v58;
            *(v60 + 40) = v59;
            v61 = v60 | 0x7000000000000000;
            v62 = v56;
            v29 = v61;
            sub_1D5F58038(v62, v57, v58, v59);
          }

LABEL_49:
          v64 = swift_allocObject();
          *(v64 + 16) = v141;
          *(v64 + 24) = v29;
          sub_1D5C84FF4(v6);
          v14 = v64 | 0x3000000000000000;
          v5 = v139;
          goto LABEL_19;
        }

        sub_1D5CFCFAC(*(v4 - 2));
        sub_1D5D04BD4(v5);
        sub_1D5D04BD4(v7);
        sub_1D5CFCFAC(v6);
      }

      else
      {
        sub_1D5CFCFAC(*(v4 - 2));
        sub_1D5D04BD4(v5);
        sub_1D5D04BD4(v7);
      }

      v14 = v6;
LABEL_19:
      sub_1D5D04BD4(v5);
      sub_1D5D04BD4(v7);
      sub_1D5C84FF4(v6);
      sub_1D5C8500C(v5);
      sub_1D5C8500C(v7);
      v148 = v2;
      v27 = *(v2 + 16);
      v26 = *(v2 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D6997A80((v26 > 1), v27 + 1, 1);
        v2 = v148;
      }

      v4 += 3;
      *(v2 + 16) = v27 + 1;
      v28 = (v2 + 24 * v27);
      v28[4] = v14;
      v28[5] = v5;
      v28[6] = v7;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D600DA28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v263 = MEMORY[0x1E69E7CC0];
    sub_1D6997980(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v263;
    do
    {
      v5 = v4[5];
      v6 = v4[7];
      v258 = v4[6];
      v259 = v6;
      v7 = v4[1];
      v8 = v4[3];
      v254 = v4[2];
      v255 = v8;
      v9 = v4[3];
      v10 = v4[5];
      v256 = v4[4];
      v257 = v10;
      v11 = v4[1];
      v252 = *v4;
      v253 = v11;
      v12 = v4[7];
      v261[6] = v258;
      v261[7] = v12;
      v261[2] = v254;
      v261[3] = v9;
      v261[5] = v5;
      v261[4] = v256;
      v260 = *(v4 + 128);
      v262 = *(v4 + 128);
      v261[1] = v7;
      v261[0] = v252;
      v13 = sub_1D5F78DC4(v261);
      if (v13)
      {
        if (v13 == 1)
        {
          v14 = sub_1D5DEA32C(v261);
          v236 = *v14;
          v15 = *(v14 + 64);
          v17 = *(v14 + 16);
          v16 = *(v14 + 32);
          v239 = *(v14 + 48);
          v240 = v15;
          v237 = v17;
          v238 = v16;
          v19 = *(v14 + 96);
          v18 = *(v14 + 112);
          v20 = *(v14 + 80);
          v244 = *(v14 + 128);
          v242 = v19;
          v243 = v18;
          v241 = v20;
          if (sub_1D6011234(&v236) != 1)
          {
            v41 = sub_1D5D756B8(&v236);
            v42 = *(v41 + 48);
            v44 = *v41;
            v43 = *(v41 + 16);
            v212 = *(v41 + 32);
            v213 = v42;
            v210 = v44;
            v211 = v43;
            v45 = *(v41 + 112);
            v47 = *(v41 + 64);
            v46 = *(v41 + 80);
            v216 = *(v41 + 96);
            v217 = v45;
            v214 = v47;
            v215 = v46;
            if (sub_1D6011280(&v210) == 1)
            {
              v48 = sub_1D5D756C8(&v210);
              v49 = *v48;
              v50 = *(v48 + 8);
              v51 = *(v48 + 48);
              v52 = *(v48 + 56);
              v53 = *(v48 + 64);
              v54 = *(v48 + 104);
              v55 = *(v48 + 112);
              v56 = *(v48 + 120);
              v196 = *(v48 + 88);
              v200 = *(v48 + 72);
              v188 = *(v48 + 32);
              v192 = *(v48 + 16);
              sub_1D5ECEF80(&v252, &v245);
              sub_1D5ECEF80(&v252, &v245);

              v57 = sub_1D600A03C(v55);
              sub_1D5ECEFDC(&v252);
              sub_1D5ECEFDC(&v252);
              LOBYTE(v227) = v51;
              LOBYTE(v218) = v54;
              *&v245 = v49;
              *(&v245 + 1) = v50;
              v246 = v192;
              v247 = v188;
              LOBYTE(v248) = v51;
              *(&v248 + 1) = v52;
              *v249 = v53;
              *&v249[24] = v196;
              *&v249[8] = v200;
              v249[40] = v54;
              *&v250 = v57;
              *(&v250 + 1) = v56;
              sub_1D5C326F0(&v245);
            }

            else
            {
              v64 = sub_1D5D756C8(&v210);
              v65 = *v64;
              v66 = *(v64 + 8);
              v68 = *(v64 + 48);
              v67 = *(v64 + 56);
              v198 = *(v64 + 32);
              v202 = *(v64 + 16);
              sub_1D5ECEF80(&v252, &v245);
              sub_1D5ECEF80(&v252, &v245);

              sub_1D5D615EC(v68);
              v69 = sub_1D600A03C(v65);
              sub_1D5ECEFDC(&v252);
              sub_1D5ECEFDC(&v252);
              *&v245 = v69;
              *(&v245 + 1) = v66;
              v246 = v202;
              v247 = v198;
              *&v248 = v68;
              *(&v248 + 1) = v67;
              sub_1D5C32704(&v245);
            }

            *v208 = *v249;
            *&v208[16] = *&v249[16];
            *&v208[32] = *&v249[32];
            v209 = v250;
            v204 = v245;
            v205 = v246;
            v206 = v247;
            v207 = v248;
            v70 = *(v41 + 128);
            v222 = *v249;
            v223 = *&v249[16];
            v224 = *&v249[32];
            v225 = v250;
            v218 = v245;
            v219 = v246;
            v220 = v247;
            v221 = v248;
            v226 = v70;
            sub_1D601128C(&v218);
            goto LABEL_26;
          }

          v21 = sub_1D5D756B8(&v236);
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = *v21 >> 60;
          if (v24 > 8)
          {
            if (v24 == 9)
            {
              v72 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v73 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v74 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v75 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
              v76 = swift_allocObject();
              *(v76 + 16) = v72;
              *(v76 + 24) = v73;
              *(v76 + 32) = v74;
              *(v76 + 40) = v75;
              v22 = v76 | 0x7000000000000000;
              sub_1D5F58038(v72, v73, v74, v75);
            }

            else
            {
              v26 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v25 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if (v24 == 10)
              {
                v27 = swift_allocObject();
                *(v27 + 16) = v26;
                *(v27 + 24) = v25;
                v22 = v27 | 0x4000000000000000;
              }

              else
              {
                v77 = swift_allocObject();
                *(v77 + 16) = v26;
                *(v77 + 24) = v25;
                v22 = v77 | 0x8000000000000000;
              }
            }

LABEL_25:
            *&v218 = v22;
            BYTE8(v218) = v23;
            sub_1D6011240(&v218);
LABEL_26:
            v233 = v224;
            v234 = v225;
            v235 = v226;
            v229 = v220;
            v230 = v221;
            v231 = v222;
            v232 = v223;
            v227 = v218;
            v228 = v219;
            sub_1D6011260(&v227);
            *&v249[32] = v233;
            v250 = v234;
            v251 = v235;
            v247 = v229;
            v248 = v230;
            *v249 = v231;
            *&v249[16] = v232;
            v40 = v227;
            v39 = v228;
            goto LABEL_27;
          }

          if ((v24 - 4) < 5 || v24 < 3)
          {
            *&v249[32] = v258;
            v250 = v259;
            v251 = v260;
            v247 = v254;
            v248 = v255;
            *v249 = v256;
            *&v249[16] = v257;
            v245 = v252;
            v246 = v253;
            v71 = sub_1D5DEA32C(&v245);
            sub_1D5F78E88(v71, &v227);
            goto LABEL_25;
          }

          v87 = v22 & 0xFFFFFFFFFFFFFFFLL;
          v89 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v88 = *(v87 + 24);
          v90 = v89 >> 60;
          if ((v89 >> 60) <= 8)
          {
            if ((v90 - 4) >= 5 && v90 >= 3)
            {
              v194 = v88;
              v123 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v124 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v125 = v123 >> 60;
              if ((v123 >> 60) <= 8)
              {
                if ((v125 - 4) >= 5 && v125 >= 3)
                {
                  v167 = v123 & 0xFFFFFFFFFFFFFFFLL;
                  v168 = *(v167 + 16);
                  v169 = *(v167 + 24);
                  v190 = swift_allocObject();
                  *&v227 = v168;
                  *(&v227 + 1) = v169;
                  sub_1D5ECEF80(&v252, &v245);
                  sub_1D5ECEF80(&v252, &v245);

                  sub_1D6E0CAE0(&v245);
                  sub_1D6E0CAE0(&v218);

                  v170 = v218;
                  *(v190 + 16) = v245;
                  *(v190 + 24) = v170;
                  v189 = v190 | 0x3000000000000000;
                }

                else
                {
                  sub_1D5ECEF80(&v252, &v245);
                  sub_1D5ECEF80(&v252, &v245);

                  swift_retain_n();

                  v189 = v123;
                }
              }

              else
              {
                v126 = v123 & 0xFFFFFFFFFFFFFFFLL;
                if (v125 == 9)
                {
                  v136 = *(v126 + 16);
                  v135 = *(v126 + 24);
                  v183 = *(v126 + 32);
                  v181 = *(v126 + 40);
                  v137 = swift_allocObject();
                  *(v137 + 16) = v136;
                  *(v137 + 24) = v135;
                  *(v137 + 32) = v183;
                  *(v137 + 40) = v181;
                  v189 = v137 | 0x7000000000000000;
                  sub_1D5ECEF80(&v252, &v245);
                  sub_1D5ECEF80(&v252, &v245);

                  sub_1D5F58038(v136, v135, v183, v181);
                }

                else
                {
                  v128 = *(v126 + 16);
                  v127 = *(v126 + 24);
                  if (v125 == 10)
                  {
                    v129 = swift_allocObject();
                    *(v129 + 16) = v128;
                    *(v129 + 24) = v127;
                    v130 = v129 | 0x4000000000000000;
                  }

                  else
                  {
                    v148 = swift_allocObject();
                    *(v148 + 16) = v128;
                    *(v148 + 24) = v127;
                    v130 = v148 | 0x8000000000000000;
                  }

                  v189 = v130;
                  sub_1D5ECEF80(&v252, &v245);
                  sub_1D5ECEF80(&v252, &v245);
                }
              }

              v149 = v124 >> 60;
              if ((v124 >> 60) <= 8)
              {
                if ((v149 - 4) >= 5 && v149 >= 3)
                {
                  v175 = v124 & 0xFFFFFFFFFFFFFFFLL;
                  v176 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v177 = *(v175 + 24);
                  v178 = swift_allocObject();
                  *&v245 = v176;
                  *(&v245 + 1) = v177;

                  sub_1D6E0CAE0(&v227);
                  sub_1D6E0CAE0(&v218);

                  v179 = v218;
                  *(v178 + 16) = v227;
                  *(v178 + 24) = v179;

                  v124 = v178 | 0x3000000000000000;
                }

                else
                {
                }
              }

              else
              {
                v150 = v124 & 0xFFFFFFFFFFFFFFFLL;
                if (v149 == 9)
                {
                  v154 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v186 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v155 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v156 = *(v150 + 40);
                  v157 = swift_allocObject();
                  *(v157 + 16) = v186;
                  *(v157 + 24) = v154;
                  *(v157 + 32) = v155;
                  *(v157 + 40) = v156;
                  sub_1D5F58038(v186, v154, v155, v156);

                  v124 = v157 | 0x7000000000000000;
                }

                else
                {
                  v152 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v151 = *(v150 + 24);
                  if (v149 == 10)
                  {
                    v153 = swift_allocObject();
                    *(v153 + 16) = v152;
                    *(v153 + 24) = v151;

                    v124 = v153 | 0x4000000000000000;
                  }

                  else
                  {
                    v160 = swift_allocObject();
                    *(v160 + 16) = v152;
                    *(v160 + 24) = v151;

                    v124 = v160 | 0x8000000000000000;
                  }
                }
              }

              v161 = swift_allocObject();
              *(v161 + 16) = v189;
              *(v161 + 24) = v124;
              v203 = v161 | 0x3000000000000000;
              v88 = v194;
            }

            else
            {
              sub_1D5ECEF80(&v252, &v245);
              sub_1D5ECEF80(&v252, &v245);

              swift_retain_n();
              v203 = v89;
            }
          }

          else if (v90 == 9)
          {
            v95 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v96 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v193 = v88;
            v97 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v98 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v99 = swift_allocObject();
            *(v99 + 16) = v95;
            *(v99 + 24) = v96;
            *(v99 + 32) = v97;
            *(v99 + 40) = v98;
            v203 = v99 | 0x7000000000000000;
            sub_1D5ECEF80(&v252, &v245);
            sub_1D5ECEF80(&v252, &v245);

            v100 = v97;
            v88 = v193;
            sub_1D5F58038(v95, v96, v100, v98);
          }

          else
          {
            v92 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v91 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            if (v90 == 10)
            {
              v93 = swift_allocObject();
              *(v93 + 16) = v92;
              *(v93 + 24) = v91;
              v94 = v93 | 0x4000000000000000;
            }

            else
            {
              v101 = swift_allocObject();
              *(v101 + 16) = v92;
              *(v101 + 24) = v91;
              v94 = v101 | 0x8000000000000000;
            }

            v203 = v94;
            sub_1D5ECEF80(&v252, &v245);
            sub_1D5ECEF80(&v252, &v245);
          }

          v102 = v88 >> 60;
          if ((v88 >> 60) <= 8)
          {
            if ((v102 - 4) < 5 || v102 < 3)
            {
              goto LABEL_54;
            }

            v107 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v108 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v109 = v107 >> 60;
            if ((v107 >> 60) <= 8)
            {
              if ((v109 - 4) >= 5 && v109 >= 3)
              {
                v162 = v107 & 0xFFFFFFFFFFFFFFFLL;
                v163 = *(v162 + 16);
                v164 = *(v162 + 24);
                v165 = swift_allocObject();
                *&v245 = v163;
                *(&v245 + 1) = v164;

                sub_1D6E0CAE0(&v227);
                sub_1D6E0CAE0(&v218);

                v166 = v218;
                *(v165 + 16) = v227;
                *(v165 + 24) = v166;
                v185 = v165 | 0x3000000000000000;
              }

              else
              {

                swift_retain_n();
                v185 = v107;
              }
            }

            else
            {
              v110 = v107 & 0xFFFFFFFFFFFFFFFLL;
              if (v109 == 9)
              {
                v131 = *(v110 + 16);
                v182 = *(v110 + 24);
                v132 = *(v110 + 32);
                v133 = *(v110 + 40);
                v134 = swift_allocObject();
                *(v134 + 16) = v131;
                *(v134 + 24) = v182;
                *(v134 + 32) = v132;
                *(v134 + 40) = v133;
                v185 = v134 | 0x7000000000000000;

                sub_1D5F58038(v131, v182, v132, v133);
              }

              else
              {
                v112 = *(v110 + 16);
                v111 = *(v110 + 24);
                if (v109 == 10)
                {
                  v113 = swift_allocObject();
                  *(v113 + 16) = v112;
                  *(v113 + 24) = v111;
                  v114 = v113 | 0x4000000000000000;
                }

                else
                {
                  v138 = swift_allocObject();
                  *(v138 + 16) = v112;
                  *(v138 + 24) = v111;
                  v114 = v138 | 0x8000000000000000;
                }

                v185 = v114;
              }
            }

            v139 = v108 >> 60;
            if ((v108 >> 60) <= 8)
            {
              if ((v139 - 4) >= 5 && v139 >= 3)
              {
                v171 = *((v108 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v172 = *((v108 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v173 = swift_allocObject();
                *&v245 = v171;
                *(&v245 + 1) = v172;

                sub_1D6E0CAE0(&v227);
                sub_1D6E0CAE0(&v218);

                v174 = v218;
                *(v173 + 16) = v227;
                *(v173 + 24) = v174;

                v108 = v173 | 0x3000000000000000;
              }

              else
              {
              }
            }

            else
            {
              v140 = v108 & 0xFFFFFFFFFFFFFFFLL;
              if (v139 == 9)
              {
                v144 = *((v108 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v184 = *(v140 + 16);
                v145 = *(v140 + 32);
                v146 = *(v140 + 40);
                v147 = swift_allocObject();
                *(v147 + 16) = v184;
                *(v147 + 24) = v144;
                *(v147 + 32) = v145;
                *(v147 + 40) = v146;
                sub_1D5F58038(v184, v144, v145, v146);

                v108 = v147 | 0x7000000000000000;
              }

              else
              {
                v142 = *((v108 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v141 = *((v108 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v139 == 10)
                {
                  v143 = swift_allocObject();
                  *(v143 + 16) = v142;
                  *(v143 + 24) = v141;

                  v108 = v143 | 0x4000000000000000;
                }

                else
                {
                  v158 = swift_allocObject();
                  *(v158 + 16) = v142;
                  *(v158 + 24) = v141;

                  v108 = v158 | 0x8000000000000000;
                }
              }
            }

            v159 = swift_allocObject();
            *(v159 + 16) = v185;
            *(v159 + 24) = v108;

            v88 = v159 | 0x3000000000000000;
          }

          else
          {
            v103 = v88 & 0xFFFFFFFFFFFFFFFLL;
            if (v102 == 9)
            {
              v115 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v116 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v117 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v118 = *(v103 + 40);
              v119 = swift_allocObject();
              *(v119 + 16) = v115;
              *(v119 + 24) = v116;
              *(v119 + 32) = v117;
              *(v119 + 40) = v118;
              v120 = v117;
              v88 = v119 | 0x7000000000000000;
              sub_1D5F58038(v115, v116, v120, v118);
            }

            else
            {
              v105 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v104 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if (v102 == 10)
              {
                v106 = swift_allocObject();
                *(v106 + 16) = v105;
                *(v106 + 24) = v104;
                v88 = v106 | 0x4000000000000000;
              }

              else
              {
                v121 = swift_allocObject();
                *(v121 + 16) = v105;
                *(v121 + 24) = v104;
                v88 = v121 | 0x8000000000000000;
              }
            }

LABEL_54:
          }

          v122 = swift_allocObject();
          *(v122 + 16) = v203;
          *(v122 + 24) = v88;
          sub_1D5ECEFDC(&v252);
          sub_1D5ECEFDC(&v252);
          v22 = v122 | 0x3000000000000000;
          goto LABEL_25;
        }

        sub_1D5DEA32C(v261);
        *&v249[32] = v258;
        v250 = v259;
        v251 = v260;
        v247 = v254;
        v248 = v255;
        *v249 = v256;
        *&v249[16] = v257;
        v40 = v252;
        v39 = v253;
      }

      else
      {
        v28 = sub_1D5DEA32C(v261);
        sub_1D5F78F40(v28, &v218);
        v231 = v222;
        v232 = v223;
        v233 = v224;
        v234 = v225;
        v227 = v218;
        v228 = v219;
        v229 = v220;
        v230 = v221;
        if (sub_1D6011280(&v227) == 1)
        {
          v29 = sub_1D5D756C8(&v227);
          v30 = *v29;
          v31 = *(v29 + 8);
          v32 = *(v29 + 48);
          v33 = *(v29 + 56);
          v34 = *(v29 + 64);
          v35 = *(v29 + 104);
          v36 = *(v29 + 112);
          v37 = *(v29 + 120);
          v195 = *(v29 + 88);
          v199 = *(v29 + 72);
          v187 = *(v29 + 32);
          v191 = *(v29 + 16);
          sub_1D5ECEF80(&v252, &v245);

          v38 = sub_1D600A03C(v36);
          sub_1D5ECEFDC(&v252);
          LOBYTE(v245) = v32;
          LOBYTE(v236) = v35;
          *&v204 = v30;
          *(&v204 + 1) = v31;
          v205 = v191;
          v206 = v187;
          LOBYTE(v207) = v32;
          *(&v207 + 1) = v33;
          *v208 = v34;
          *&v208[24] = v195;
          *&v208[8] = v199;
          v208[40] = v35;
          *&v209 = v38;
          *(&v209 + 1) = v37;
          sub_1D5C326F0(&v204);
        }

        else
        {
          v58 = sub_1D5D756C8(&v227);
          v59 = *v58;
          v60 = *(v58 + 8);
          v61 = *(v58 + 48);
          v62 = *(v58 + 56);
          v197 = *(v58 + 32);
          v201 = *(v58 + 16);
          sub_1D5ECEF80(&v252, &v245);

          sub_1D5D615EC(v61);
          v63 = sub_1D600A03C(v59);
          sub_1D5ECEFDC(&v252);
          *&v204 = v63;
          *(&v204 + 1) = v60;
          v205 = v201;
          v206 = v197;
          *&v207 = v61;
          *(&v207 + 1) = v62;
          sub_1D5C32704(&v204);
        }

        v214 = *v208;
        v215 = *&v208[16];
        v216 = *&v208[32];
        v217 = v209;
        v210 = v204;
        v211 = v205;
        v212 = v206;
        v213 = v207;
        nullsub_1();
        sub_1D5F78F40(&v210, &v236);
        sub_1D60112A8(&v236);
        *&v249[32] = v242;
        v250 = v243;
        v251 = v244;
        v247 = v238;
        v248 = v239;
        *v249 = v240;
        *&v249[16] = v241;
        v40 = v236;
        v39 = v237;
      }

LABEL_27:
      v245 = v40;
      v246 = v39;
      v263 = v2;
      v79 = *(v2 + 16);
      v78 = *(v2 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1D6997980((v78 > 1), v79 + 1, 1);
        v2 = v263;
      }

      *(v2 + 16) = v79 + 1;
      v80 = v2 + 136 * v79;
      *(v80 + 32) = v245;
      v81 = v246;
      v82 = v247;
      v83 = *v249;
      *(v80 + 80) = v248;
      *(v80 + 96) = v83;
      *(v80 + 48) = v81;
      *(v80 + 64) = v82;
      v84 = *&v249[16];
      v85 = *&v249[32];
      v86 = v250;
      *(v80 + 160) = v251;
      *(v80 + 128) = v85;
      *(v80 + 144) = v86;
      *(v80 + 112) = v84;
      v4 = (v4 + 136);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t FormatGroupNodeStyle.deinit()
{

  sub_1D5ED348C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1D600ECE4(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  v1 = *(v0 + 296);
  v2 = *(v0 + 328);
  v8[8] = *(v0 + 312);
  v8[9] = v2;
  v9 = *(v0 + 344);
  v3 = *(v0 + 264);
  v4 = *(v0 + 280);
  v8[4] = *(v0 + 248);
  v8[5] = v3;
  v5 = *(v0 + 232);
  v8[6] = v4;
  v8[7] = v1;
  v6 = *(v0 + 200);
  v8[0] = *(v0 + 184);
  v8[1] = v6;
  v8[2] = *(v0 + 216);
  v8[3] = v5;
  sub_1D6011068(v8, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
  return v0;
}

uint64_t sub_1D600ECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 != 254)
  {
  }

  return result;
}

uint64_t FormatGroupNodeStyle.__deallocating_deinit()
{
  FormatGroupNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D600ED58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66603D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FormatGroupNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatGroupNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatGroupNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v4 = *(v1 + 112);
  v10 = *(v1 + 96);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 128);
  v6 = *(v1 + 64);
  v9[0] = *(v1 + 48);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D60080F4(v9, v8, &qword_1EDF33718, &type metadata for FormatShadow);
}

uint64_t FormatGroupNodeStyle.Selector.visualEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = *(v1 + 312);
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v17[4] = *(v1 + 216);
  v17[5] = v3;
  v4 = *(v1 + 248);
  v5 = *(v1 + 168);
  v17[0] = *(v1 + 152);
  v17[1] = v5;
  v17[2] = *(v1 + 184);
  v17[3] = v2;
  v7 = *(v1 + 264);
  v6 = *(v1 + 280);
  v17[6] = v4;
  v17[7] = v7;
  v8 = *(v1 + 264);
  v9 = *(v1 + 280);
  v10 = *(v1 + 296);
  v17[8] = v6;
  v17[9] = v10;
  v11 = *(v1 + 296);
  *(a1 + 128) = v9;
  *(a1 + 144) = v11;
  *(a1 + 160) = *(v1 + 312);
  v12 = *(v1 + 200);
  v13 = *(v1 + 232);
  *(a1 + 64) = *(v1 + 216);
  *(a1 + 80) = v13;
  *(a1 + 96) = *(v1 + 248);
  *(a1 + 112) = v8;
  v14 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v14;
  *(a1 + 32) = *(v1 + 184);
  *(a1 + 48) = v12;
  return sub_1D60080F4(v17, v16, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
}

BOOL _s8NewsFeed20FormatGroupNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = *(a1 + 40);
  v10 = *(a1 + 6);
  v112 = *(a1 + 5);
  v113 = v10;
  v114 = *(a1 + 7);
  v115 = *(a1 + 128);
  v11 = *(a1 + 4);
  v110 = *(a1 + 3);
  v111 = v11;
  v12 = a1[17];
  v50 = *(a1 + 144);
  v47 = *(a1 + 145);
  v126 = *(a1 + 156);
  v13 = *(a1 + 35);
  v14 = *(a1 + 33);
  v125 = *(a1 + 37);
  v124 = v13;
  v15 = *(a1 + 31);
  v123 = v14;
  v122 = v15;
  v16 = *(a1 + 27);
  v121 = *(a1 + 29);
  v120 = v16;
  v17 = *(a1 + 23);
  v119 = *(a1 + 25);
  v118 = v17;
  v18 = *(a1 + 19);
  v117 = *(a1 + 21);
  v116 = v18;
  v19 = *a2;
  v20 = a2[1];
  v22 = a2[2];
  v21 = a2[3];
  v23 = a2[4];
  v24 = *(a2 + 40);
  v25 = *(a2 + 6);
  v129 = *(a2 + 5);
  v130 = v25;
  v131 = *(a2 + 7);
  v132 = *(a2 + 128);
  v26 = *(a2 + 4);
  v127 = *(a2 + 3);
  v128 = v26;
  v27 = a2[17];
  v48 = *(a2 + 144);
  v49 = *(a2 + 145);
  v143 = *(a2 + 156);
  v28 = *(a2 + 35);
  v29 = *(a2 + 33);
  v142 = *(a2 + 37);
  v141 = v28;
  v30 = *(a2 + 31);
  v140 = v29;
  v139 = v30;
  v31 = *(a2 + 27);
  v138 = *(a2 + 29);
  v137 = v31;
  v32 = *(a2 + 23);
  v136 = *(a2 + 25);
  v135 = v32;
  v33 = *(a2 + 19);
  v134 = *(a2 + 21);
  v133 = v33;
  if ((v4 != v19 || v5 != v20) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v22)
    {
      return 0;
    }

    v34 = sub_1D633C9E8(v6, v22);

    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v9 > 0xFD)
  {
    sub_1D5ED34B0(v8, v7, v9);
    sub_1D5ED34B0(v21, v23, v24);
    if (v24 > 0xFD)
    {
      sub_1D5ED348C(v8, v7, v9);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  *&__src[0] = v8;
  *(&__src[0] + 1) = v7;
  LOBYTE(__src[1]) = v9;
  if (v24 > 0xFD)
  {
    sub_1D5ED34B0(v8, v7, v9);
    sub_1D5ED34B0(v21, v23, v24);
    sub_1D5ED34B0(v8, v7, v9);
    sub_1D5ED34A0(v8, v7, v9);
LABEL_14:
    sub_1D5ED348C(v8, v7, v9);
    sub_1D5ED348C(v21, v23, v24);
    return 0;
  }

  *&__dst[0] = v21;
  *(&__dst[0] + 1) = v23;
  LOBYTE(__dst[1]) = v24;
  sub_1D5ED34B0(v8, v7, v9);
  sub_1D5ED34B0(v21, v23, v24);
  sub_1D5ED34B0(v8, v7, v9);
  v35 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(__src, __dst);
  sub_1D5ED34A0(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
  sub_1D5ED34A0(*&__src[0], *(&__src[0] + 1), __src[1]);
  sub_1D5ED348C(v8, v7, v9);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v55 = v112;
  v56 = v113;
  v57 = v114;
  v53 = v110;
  v54 = v111;
  *(&__dst[1] + 7) = v128;
  *(&__dst[2] + 7) = v129;
  *(&__dst[3] + 7) = v130;
  *(&__dst[4] + 7) = v131;
  v36 = v115;
  *(__dst + 7) = v127;
  v37 = v132;
  if (v115 == 254)
  {
    if (v132 == 254)
    {
      __src[2] = v112;
      __src[3] = v113;
      __src[4] = v114;
      __src[1] = v111;
      __src[0] = v110;
      LOBYTE(__src[5]) = -2;
      sub_1D60080F4(&v110, &v99, &qword_1EDF33718, &type metadata for FormatShadow);
      sub_1D60080F4(&v127, &v99, &qword_1EDF33718, &type metadata for FormatShadow);
      sub_1D6011068(__src, &qword_1EDF33718, &type metadata for FormatShadow);
      goto LABEL_27;
    }

    sub_1D60080F4(&v110, __src, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D60080F4(&v127, __src, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_22:
    __src[2] = v55;
    __src[3] = v56;
    __src[4] = v57;
    __src[1] = v54;
    __src[0] = v53;
    *(&__src[7] + 1) = __dst[2];
    *(&__src[8] + 1) = __dst[3];
    *(&__src[9] + 1) = __dst[4];
    *(&__src[5] + 1) = __dst[0];
    LOBYTE(__src[5]) = v36;
    *&__src[10] = *(&__dst[4] + 15);
    *(&__src[6] + 1) = __dst[1];
    BYTE8(__src[10]) = v37;
    v38 = &qword_1EC8822D8;
    v39 = &qword_1EDF33718;
    v40 = &type metadata for FormatShadow;
    v41 = __src;
LABEL_23:
    sub_1D6011324(v41, v38, v39, v40);
    return 0;
  }

  __src[2] = v112;
  __src[3] = v113;
  __src[4] = v114;
  __src[1] = v111;
  __src[0] = v110;
  LOBYTE(__src[5]) = v115;
  v101 = v112;
  v102 = v113;
  v103 = v114;
  LOBYTE(v104) = v115;
  v99 = v110;
  v100 = v111;
  if (v132 == 254)
  {
    v89 = __src[2];
    v90 = __src[3];
    v91 = __src[4];
    LOBYTE(v92) = __src[5];
    v87 = __src[0];
    v88 = __src[1];
    sub_1D60080F4(&v110, &v75, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D60080F4(&v127, &v75, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D60080F4(__src, &v75, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D601144C(&v87);
    goto LABEL_22;
  }

  v89 = v129;
  v90 = v130;
  v91 = v131;
  v88 = v128;
  v87 = v127;
  LOBYTE(v92) = v132;
  sub_1D60080F4(&v110, &v75, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D60080F4(&v127, &v75, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D60080F4(__src, &v75, &qword_1EDF33718, &type metadata for FormatShadow);
  v43 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v99, &v87);
  v66 = v89;
  v67 = v90;
  v68 = v91;
  LOBYTE(v69) = v92;
  v64 = v87;
  v65 = v88;
  sub_1D601144C(&v64);
  v77 = v101;
  v78 = v102;
  v79 = v103;
  LOBYTE(v80) = v104;
  v75 = v99;
  v76 = v100;
  sub_1D601144C(&v75);
  v89 = v55;
  v90 = v56;
  v91 = v57;
  v88 = v54;
  v87 = v53;
  LOBYTE(v92) = v36;
  sub_1D6011068(&v87, &qword_1EDF33718, &type metadata for FormatShadow);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if (v12)
  {
    if (!v27)
    {
      return 0;
    }

    v44 = sub_1D633A310(v12, v27);

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v27)
    {
      return 0;
    }
  }

  if (v50 == 2)
  {
    v45 = v49;
    if (v48 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v45 = v49;
    if (v48 == 2 || ((v48 ^ v50) & 1) != 0)
    {
      return result;
    }
  }

  if (v47 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }

    goto LABEL_43;
  }

  result = 0;
  if (v45 != 2 && ((v45 ^ v47) & 1) == 0)
  {
LABEL_43:
    __src[8] = v124;
    __src[9] = v125;
    __src[4] = v120;
    __src[5] = v121;
    __src[7] = v123;
    __src[6] = v122;
    __src[0] = v116;
    __src[1] = v117;
    __src[3] = v119;
    __src[2] = v118;
    *(&__src[18] + 8) = v141;
    *(&__src[19] + 8) = v142;
    *(&__src[16] + 8) = v139;
    *(&__src[17] + 8) = v140;
    *(&__src[13] + 8) = v136;
    *(&__src[14] + 8) = v137;
    *(&__src[15] + 8) = v138;
    *(&__src[10] + 8) = v133;
    *(&__src[11] + 8) = v134;
    *(&__src[12] + 8) = v135;
    v107 = v124;
    v108 = v125;
    v103 = v120;
    v104 = v121;
    v106 = v123;
    v105 = v122;
    v99 = v116;
    v100 = v117;
    LOWORD(__src[10]) = v126;
    WORD4(__src[20]) = v143;
    v109 = v126;
    v102 = v119;
    v101 = v118;
    if (sub_1D60081E0(&v99) == 1)
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
        v95 = __src[8];
        v96 = __src[9];
        v97 = __src[10];
        v91 = __src[4];
        v92 = __src[5];
        v94 = __src[7];
        v93 = __src[6];
        v87 = __src[0];
        v88 = __src[1];
        v90 = __src[3];
        v89 = __src[2];
        sub_1D60080F4(&v116, &v75, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        sub_1D60080F4(&v133, &v75, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        sub_1D6011068(&v87, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        return 1;
      }

      sub_1D60080F4(&v116, &v87, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      sub_1D60080F4(&v133, &v87, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    }

    else
    {
      v95 = __src[8];
      v96 = __src[9];
      v91 = __src[4];
      v92 = __src[5];
      v94 = __src[7];
      v93 = __src[6];
      v87 = __src[0];
      v88 = __src[1];
      v90 = __src[3];
      v89 = __src[2];
      v83 = __src[8];
      v84 = __src[9];
      v79 = __src[4];
      v80 = __src[5];
      v81 = __src[6];
      v82 = __src[7];
      v75 = __src[0];
      v76 = __src[1];
      v97 = __src[10];
      v85 = __src[10];
      v77 = __src[2];
      v78 = __src[3];
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
        v72 = *(&__src[18] + 8);
        v73 = *(&__src[19] + 8);
        v74 = WORD4(__src[20]);
        v68 = *(&__src[14] + 8);
        v69 = *(&__src[15] + 8);
        v70 = *(&__src[16] + 8);
        v71 = *(&__src[17] + 8);
        v64 = *(&__src[10] + 8);
        v65 = *(&__src[11] + 8);
        v66 = *(&__src[12] + 8);
        v67 = *(&__src[13] + 8);
        sub_1D60080F4(&v116, &v53, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        sub_1D60080F4(&v133, &v53, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        sub_1D60080F4(&v87, &v53, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        v46 = _s8NewsFeed18FormatVisualEffectO2eeoiySbAC_ACtFZ_0(&v75, &v64);
        v51[8] = v72;
        v51[9] = v73;
        v52 = v74;
        v51[4] = v68;
        v51[5] = v69;
        v51[6] = v70;
        v51[7] = v71;
        v51[0] = v64;
        v51[1] = v65;
        v51[2] = v66;
        v51[3] = v67;
        sub_1D60113F8(v51);
        v61 = v83;
        v62 = v84;
        v63 = v85;
        v57 = v79;
        v58 = v80;
        v59 = v81;
        v60 = v82;
        v53 = v75;
        v54 = v76;
        v55 = v77;
        v56 = v78;
        sub_1D60113F8(&v53);
        v72 = __src[8];
        v73 = __src[9];
        v74 = __src[10];
        v68 = __src[4];
        v69 = __src[5];
        v70 = __src[6];
        v71 = __src[7];
        v64 = __src[0];
        v65 = __src[1];
        v66 = __src[2];
        v67 = __src[3];
        sub_1D6011068(&v64, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        return v46;
      }

      v72 = __src[8];
      v73 = __src[9];
      v74 = __src[10];
      v68 = __src[4];
      v69 = __src[5];
      v70 = __src[6];
      v71 = __src[7];
      v64 = __src[0];
      v65 = __src[1];
      v66 = __src[2];
      v67 = __src[3];
      sub_1D60080F4(&v116, &v53, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      sub_1D60080F4(&v133, &v53, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      sub_1D60080F4(&v87, &v53, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      sub_1D60113F8(&v64);
    }

    memcpy(__dst, __src, 0x14AuLL);
    v38 = &unk_1EC8822E0;
    v39 = &qword_1EDF2D860;
    v40 = &type metadata for FormatVisualEffect;
    v41 = __dst;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1D600FC00(uint64_t a1)
{
  result = sub_1D600FD38(&qword_1EC8822B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D600FC44(uint64_t a1)
{
  *(a1 + 16) = sub_1D600FD38(&qword_1EDF2B240);
  result = sub_1D600FD38(&qword_1EDF0F108);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D600FCAC(void *a1)
{
  a1[1] = sub_1D600FD38(&qword_1EDF2B240);
  a1[2] = sub_1D600FD38(&qword_1EDF0F108);
  result = sub_1D600FD38(&qword_1EC8822C0);
  a1[3] = result;
  return result;
}

uint64_t sub_1D600FD38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatGroupNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D600FD78(uint64_t a1)
{
  result = sub_1D600FDA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D600FDA0()
{
  result = qword_1EC8822C8;
  if (!qword_1EC8822C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822C8);
  }

  return result;
}

unint64_t sub_1D600FDF4(uint64_t a1)
{
  *(a1 + 8) = sub_1D600FE24();
  result = sub_1D600FE78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D600FE24()
{
  result = qword_1EDF2B248;
  if (!qword_1EDF2B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B248);
  }

  return result;
}

unint64_t sub_1D600FE78()
{
  result = qword_1EDF2B250;
  if (!qword_1EDF2B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B250);
  }

  return result;
}

unint64_t sub_1D600FECC(void *a1)
{
  a1[1] = sub_1D600FE24();
  a1[2] = sub_1D600FE78();
  result = sub_1D600FF04();
  a1[3] = result;
  return result;
}

unint64_t sub_1D600FF04()
{
  result = qword_1EC8822D0;
  if (!qword_1EC8822D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed12FormatStringOSg(uint64_t a1)
{
  v1 = (*(a1 + 48) >> 9) & 0x1C | (*(a1 + 48) >> 14);
  v2 = v1 ^ 0x1F;
  v3 = 32 - v1;
  if (v2 >= 0x1D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatVisualEffectO(uint64_t a1)
{
  v1 = *(a1 + 136) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatVisualEffectOSg(uint64_t a1)
{
  v1 = *(a1 + 10);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D600FFFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 314))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6010044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 314) = 1;
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
      return result;
    }

    *(result + 314) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D60100E8()
{
  if (!qword_1EDF05850)
  {
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05850);
    }
  }
}

unint64_t sub_1D601014C()
{
  result = qword_1EDF32428;
  if (!qword_1EDF32428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32428);
  }

  return result;
}

void sub_1D6010208()
{
  if (!qword_1EDF0A940)
  {
    sub_1D6010264();
    v0 = type metadata accessor for FormatNodeStyleSelectorOrder();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0A940);
    }
  }
}

unint64_t sub_1D6010264()
{
  result = qword_1EDF0F110;
  if (!qword_1EDF0F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F110);
  }

  return result;
}

uint64_t sub_1D60102B8(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, 0x13AuLL);
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  v6 = *(a1 + 40);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v7;
  v8 = *(&__dst[8] + 1);
  if (!*(&__dst[8] + 1))
  {
  }

  *(v2 + 56) = v8;
  v9 = *&__dst[1];
  if (!*&__dst[1])
  {
  }

  *(v2 + 64) = v9;
  v10 = *(&__dst[1] + 1);
  v11 = *&__dst[2];
  v12 = BYTE8(__dst[2]);
  v13 = *(&__dst[1] + 1);
  v14 = *&__dst[2];
  v15 = BYTE8(__dst[2]);
  if (BYTE8(__dst[2]) >= 0xFEu)
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v15 = *(a1 + 88);
    sub_1D5ED34B0(v13, v14, v15);
  }

  *(v2 + 72) = v13;
  *(v2 + 80) = v14;
  *(v2 + 88) = v15;
  if (LOBYTE(__dst[8]) == 254)
  {
    v16 = *(a1 + 144);
    v61 = *(a1 + 128);
    v62 = v16;
    v63 = *(a1 + 160);
    LOBYTE(v64) = *(a1 + 176);
    v17 = *(a1 + 112);
    v59 = *(a1 + 96);
    v60 = v17;
    sub_1D60080F4(&v59, &v50, &qword_1EDF33718, &type metadata for FormatShadow);
    v72 = v61;
    v73 = v62;
    v74 = v63;
    v75 = v64;
    v18 = v59;
    v19 = v60;
  }

  else
  {
    v72 = __dst[5];
    v73 = __dst[6];
    v74 = __dst[7];
    v75 = __dst[8];
    v18 = __dst[3];
    v19 = __dst[4];
  }

  v70 = v18;
  v71 = v19;
  v20 = v73;
  *(v2 + 128) = v72;
  *(v2 + 144) = v20;
  *(v2 + 160) = v74;
  *(v2 + 176) = v75;
  v21 = v71;
  *(v2 + 96) = v70;
  *(v2 + 112) = v21;
  v22 = __dst[9];
  if (LOBYTE(__dst[9]) == 2)
  {
    v22 = *(a1 + 177);
  }

  *(v2 + 177) = v22;
  v23 = BYTE1(__dst[9]);
  if (BYTE1(__dst[9]) == 2)
  {
    v23 = *(a1 + 178);
  }

  *(v2 + 178) = v23;

  sub_1D5ED34B0(v10, v11, v12);
  sub_1D60080F4(&__dst[3], &v59, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D60080F4(&__dst[9] + 8, &v59, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
  sub_1D60101D8(__dst);
  v67 = *(&__dst[17] + 8);
  v68 = *(&__dst[18] + 8);
  v69 = WORD4(__dst[19]);
  v63 = *(&__dst[13] + 8);
  v64 = *(&__dst[14] + 8);
  v65 = *(&__dst[15] + 8);
  v66 = *(&__dst[16] + 8);
  v59 = *(&__dst[9] + 8);
  v60 = *(&__dst[10] + 8);
  v61 = *(&__dst[11] + 8);
  v62 = *(&__dst[12] + 8);
  if (sub_1D60081E0(&v59) == 1)
  {
    v24 = *(a1 + 232);
    v25 = *(a1 + 248);
    v26 = *(a1 + 200);
    v39 = *(a1 + 184);
    v40 = v26;
    v41 = *(a1 + 216);
    v42 = v24;
    v27 = *(a1 + 296);
    v28 = *(a1 + 328);
    v47 = *(a1 + 312);
    v48 = v28;
    v29 = *(a1 + 264);
    v30 = *(a1 + 280);
    v43 = v25;
    v44 = v29;
    v49 = *(a1 + 344);
    v45 = v30;
    v46 = v27;
    sub_1D60080F4(&v39, &v50, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    v56 = v47;
    v57 = v48;
    v58 = v49;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v50 = v39;
    v51 = v40;
    v32 = v41;
    v31 = v42;
  }

  else
  {
    v56 = *(&__dst[17] + 8);
    v57 = *(&__dst[18] + 8);
    v58 = WORD4(__dst[19]);
    v52 = *(&__dst[13] + 8);
    v53 = *(&__dst[14] + 8);
    v54 = *(&__dst[15] + 8);
    v55 = *(&__dst[16] + 8);
    v50 = *(&__dst[9] + 8);
    v51 = *(&__dst[10] + 8);
    v32 = *(&__dst[11] + 8);
    v31 = *(&__dst[12] + 8);
  }

  *(v2 + 232) = v31;
  v33 = v53;
  *(v2 + 248) = v52;
  v34 = v51;
  *(v2 + 184) = v50;
  *(v2 + 200) = v34;
  *(v2 + 216) = v32;
  v35 = v56;
  v36 = v57;
  v37 = v54;
  *(v2 + 296) = v55;
  *(v2 + 312) = v35;
  *(v2 + 328) = v36;
  *(v2 + 344) = v58;
  *(v2 + 264) = v33;
  *(v2 + 280) = v37;
  return v2;
}

void sub_1D6010694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a18 >> 62 == 2)
  {

    sub_1D60107DC(a3, a4, a5, a6, a7, a8, a9);

    sub_1D5C84FF4(a11);

    sub_1D60107F0(a13, a14, a15);
    sub_1D60107F0(a16, a17, a18);

    sub_1D60107F0(a19, a20, a21);
  }
}

uint64_t sub_1D60107DC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  if ((a7 >> 11) <= 0x1Eu)
  {
    return sub_1D5E1DE98(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1D60107F0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D5D2F2C4(result, a2, a3 & 1);
  }

  return result;
}

void *sub_1D6010808(__int128 *a1, uint64_t a2)
{
  v3 = a1[7];
  v89 = a1[6];
  v90 = v3;
  v91 = a1[8];
  v92 = *(a1 + 18);
  v4 = a1[3];
  v85 = a1[2];
  v86 = v4;
  v5 = a1[5];
  v87 = a1[4];
  v88 = v5;
  v6 = a1[1];
  v83 = *a1;
  v84 = v6;
  v7 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7274590;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v7);
  sub_1D5EA74B8();
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v53 = *(*(v9 - 8) + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  v12 = (v11 + v10);
  if (a2)
  {
    v13 = *(a2 + 40);
    v52 = *(a2 + 32);

    v14 = sub_1D6009CB8();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 64) = 0x5800000000000000;
    v16 = sub_1D601118C;
  }

  else
  {
    v16 = sub_1D70DD9D8;
    v15 = 0;
    v52 = 0;
    v13 = 0xE000000000000000;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = (v12 + *(v17 + 24));
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *(v11 + v10) = v52;
  v12[2] = 0;
  v12[3] = 0;
  v12[1] = v13;
  v20 = v12 + *(v17 + 28);
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  v21 = *(*(v17 - 8) + 56);
  v21(v12, 0, 1, v17);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v11, v79);
  swift_setDeallocating();
  sub_1D60112C4(v12, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v8 + 56) = &type metadata for FormatInspectionGroup;
  *(v8 + 64) = &off_1F518B2C0;
  v22 = swift_allocObject();
  *(v8 + 32) = v22;
  v23 = v79[1];
  *(v22 + 16) = v79[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v80;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7279960;
  v25 = v24 + v10;
  sub_1D711F844(1701869908, 0xE400000000000000, 0x70756F7247, 0xE500000000000000, (v24 + v10));
  v21((v24 + v10), 0, 1, v17);
  if (a2)
  {
    v26 = *(a2 + 56);

    sub_1D711B070(0x6168706C41, 0xE500000000000000, v26, (v25 + v53));
    v21((v25 + v53), 0, 1, v17);
    v27 = *(a2 + 177);
  }

  else
  {
    sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v25 + v53));
    v21((v25 + v53), 0, 1, v17);
    v27 = 2;
  }

  sub_1D711E9F0(0x426F547370696C43, 0xED000073646E756FLL, v27, (v25 + 2 * v53));
  v21((v25 + 2 * v53), 0, 1, v17);
  v28 = 3 * v53;
  if (a2)
  {
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, *(a2 + 178), (v25 + v28));
    v21((v25 + v28), 0, 1, v17);
    v29 = *(a2 + 296);
    v30 = *(a2 + 328);
    v68 = *(a2 + 312);
    v69 = v30;
    v70 = *(a2 + 344);
    v31 = *(a2 + 264);
    v32 = *(a2 + 280);
    v64 = *(a2 + 248);
    v65 = v31;
    v33 = *(a2 + 232);
    v66 = v32;
    v67 = v29;
    v34 = *(a2 + 200);
    v60 = *(a2 + 184);
    v61 = v34;
    v62 = *(a2 + 216);
    v63 = v33;
    sub_1D60080F4(&v60, &v54, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    v77[8] = v68;
    v77[9] = v69;
    v78 = v70;
    v77[4] = v64;
    v77[5] = v65;
    v77[6] = v66;
    v77[7] = v67;
    v77[0] = v60;
    v77[1] = v61;
    v77[2] = v62;
    v77[3] = v63;
  }

  else
  {
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, 2u, (v25 + v28));
    v21((v25 + v28), 0, 1, v17);
    sub_1D6011040(v77);
  }

  sub_1D7123244(0x45206C6175736956, 0xED00007463656666, v77, (v25 + 4 * v53));
  v21((v25 + 4 * v53), 0, 1, v17);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v24, v81);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v8 + 96) = &type metadata for FormatInspectionGroup;
  *(v8 + 104) = &off_1F518B2C0;
  v35 = swift_allocObject();
  *(v8 + 72) = v35;
  v36 = v81[1];
  *(v35 + 16) = v81[0];
  *(v35 + 32) = v36;
  *(v35 + 48) = v82;
  v66 = v89;
  v67 = v90;
  v68 = v91;
  *&v69 = v92;
  v62 = v85;
  v63 = v86;
  v64 = v87;
  v65 = v88;
  v60 = v83;
  v61 = v84;
  if (a2)
  {
    v37 = *(a2 + 72);
    v38 = *(a2 + 80);
    v39 = *(a2 + 88);
    sub_1D5ED34B0(v37, v38, v39);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = -2;
  }

  *&v54 = v37;
  *(&v54 + 1) = v38;
  LOBYTE(v55) = v39;
  v40 = sub_1D6D9893C(&v60, &v54);
  sub_1D5ED348C(v54, *(&v54 + 1), v55);
  *(v8 + 136) = &type metadata for FormatInspection;
  *(v8 + 144) = &off_1F51E3FD0;
  *(v8 + 112) = v40;
  if (a2)
  {
    v41 = *(a2 + 144);
    v56 = *(a2 + 128);
    v57 = v41;
    v58 = *(a2 + 160);
    v59 = *(a2 + 176);
    v42 = *(a2 + 112);
    v54 = *(a2 + 96);
    v55 = v42;
    sub_1D60080F4(&v54, &v71, &qword_1EDF33718, &type metadata for FormatShadow);
    v43 = v54;
    v44 = v55;
    v45 = v56;
    v46 = v57;
    v47 = v58;
    v48 = v59;
  }

  else
  {
    v43 = 0uLL;
    v48 = -2;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
  }

  v71 = v43;
  v72 = v44;
  v73 = v45;
  v74 = v46;
  v75 = v47;
  v76 = v48;
  v49 = sub_1D686F740(&v83, &v71);
  v56 = v73;
  v57 = v74;
  v58 = v75;
  v59 = v76;
  v54 = v71;
  v55 = v72;
  sub_1D6011068(&v54, &qword_1EDF33718, &type metadata for FormatShadow);
  *(v8 + 176) = &type metadata for FormatInspection;
  *(v8 + 184) = &off_1F51E3FD0;
  *(v8 + 152) = v49;
  v50 = sub_1D7073500(v8);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v50;
}

double sub_1D6011040(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1D728D7B0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return result;
}

uint64_t sub_1D6011068(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B49D58(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D60110D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 59;
  if ((a7 >> 59) <= 0x11)
  {
    if (v7 > 0x11)
    {
      v7 = 0;
    }

    return ((&loc_1D60110F8 + funcs_1D6011100[v7]))();
  }

  return result;
}

uint64_t sub_1D6011104()
{
}

uint64_t sub_1D6011114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  sub_1D5ED348C(a5, a6, a7);
}

uint64_t objectdestroy_46Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D6011240(uint64_t result)
{
  v1 = *(result + 128);
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v1 & 0xF | 0x80;
  return result;
}

uint64_t sub_1D6011260(uint64_t result)
{
  v1 = *(result + 128) & 0x8F | 0x20;
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v1;
  return result;
}

uint64_t sub_1D601128C(uint64_t result)
{
  v1 = *(result + 128) & 0xF;
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v1;
  return result;
}

uint64_t sub_1D60112A8(uint64_t result)
{
  v1 = *(result + 128) & 0x8F;
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v1;
  return result;
}

uint64_t sub_1D60112C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6011324(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6011380(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6011380(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5B49D58(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t FormatContentSubgroupFilterLink.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatContentSubgroupFilterLink.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D601151C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D60115AC(uint64_t a1)
{
  v2 = sub_1D6011770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60115E8(uint64_t a1)
{
  v2 = sub_1D6011770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterLink.encode(to:)(void *a1)
{
  sub_1D6011948(0, &qword_1EDF02528, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6011770();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6011770()
{
  result = qword_1EDF09420;
  if (!qword_1EDF09420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09420);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterLink.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6011948(0, &qword_1EDF03918, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6011770();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = sub_1D72642BC();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6011948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6011770();
    v7 = a3(a1, &type metadata for FormatContentSubgroupFilterLink.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D60119AC(void *a1)
{
  a1[1] = sub_1D60119E4();
  a1[2] = sub_1D6011A38();
  result = sub_1D6011A8C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60119E4()
{
  result = qword_1EDF09400;
  if (!qword_1EDF09400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09400);
  }

  return result;
}

unint64_t sub_1D6011A38()
{
  result = qword_1EDF09408;
  if (!qword_1EDF09408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09408);
  }

  return result;
}

unint64_t sub_1D6011A8C()
{
  result = qword_1EC8822E8;
  if (!qword_1EC8822E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822E8);
  }

  return result;
}

uint64_t sub_1D6011AF8(void *a1)
{
  sub_1D6011948(0, &qword_1EDF02528, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6011770();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6011C68()
{
  result = qword_1EC8822F0;
  if (!qword_1EC8822F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822F0);
  }

  return result;
}

unint64_t sub_1D6011CC0()
{
  result = qword_1EDF09410;
  if (!qword_1EDF09410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09410);
  }

  return result;
}

unint64_t sub_1D6011D18()
{
  result = qword_1EDF09418;
  if (!qword_1EDF09418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09418);
  }

  return result;
}

uint64_t sub_1D6011D6C(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  *&v40 = a1;
  *(&v40 + 1) = a2;
  sub_1D6013F48();

  if (swift_dynamicCast())
  {
    sub_1D5B63F14(__src, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_1D7257EFC();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1D6013DD0(__src, &qword_1EC882308, sub_1D6013F48);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D7263E5C();
  }

  sub_1D6013760(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1D6014064(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0], v9);
  v10 = sub_1D6013828(sub_1D6014104);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1D725861C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1D6BA2080(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1D726229C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D72622DC();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D7263E5C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1D6BA2080(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1D72622AC();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_1D725862C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_1D725862C();
    sub_1D5B952E4(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_1D5B952E4(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1D5E3E824(*&__src[0], *(&__src[0] + 1));

  sub_1D5B952F8(v32, *(&v32 + 1));
  return v32;
}

uint64_t FormatFloat.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1D725BD1C();
  v12 = __swift_project_value_buffer(v11, qword_1EDFFCD30);
  (*(*(v11 - 8) + 16))(v7, v12, v11);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v7, sub_1D5B4AA6C, 0, v9, v10);
  sub_1D5D2CE68(v7, type metadata accessor for FormatVersionRequirement);
  if (!v2)
  {
    if (v8 >> 61)
    {
      v17 = v8;
      FormatFloat.description.getter();
      __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
      sub_1D726473C();
    }

    else
    {
      v17 = *(v8 + 16);
      __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
      sub_1D5B578C4();
      sub_1D726476C();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t FormatFloat.description.getter()
{
  v1 = *v0 >> 61;
  if (v1 <= 1)
  {
    if (!v1)
    {
      return sub_1D7262A9C();
    }

    v9 = 0x286C65786970;
    v8 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v8);
    goto LABEL_11;
  }

  if (v1 == 2)
  {
    v2 = 0x2864656C616373;
    goto LABEL_8;
  }

  if (v1 != 3)
  {
    v6 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v9 = 0x286E6F6974706FLL;

    MEMORY[0x1DA6F9910](v6, v7);
LABEL_11:

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return v9;
  }

  v2 = 0x6163736E5563616DLL;
LABEL_8:
  v9 = v2;

  v5 = FormatFloat.description.getter(v4);
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);

  return v9;
}

uint64_t static FormatFloat.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 61 != 1)
      {
        goto LABEL_23;
      }

      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v3 &= 0x1FFFFFFFFFFFFFFFuLL;
    }

    else
    {
      if (v3 >> 61)
      {
        goto LABEL_23;
      }

      v5 = *(v2 + 16);
    }

    if (v5 == *(v3 + 16))
    {
LABEL_22:
      v7 = 1;
      return v7 & 1;
    }

LABEL_23:
    v7 = 0;
    return v7 & 1;
  }

  if (v4 == 2)
  {
    if (v3 >> 61 == 2)
    {
LABEL_10:
      v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = v6;

      v7 = static FormatFloat.== infix(_:_:)(&v13, &v12);

      return v7 & 1;
    }

    goto LABEL_23;
  }

  if (v4 == 3)
  {
    if (v3 >> 61 != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (v3 >> 61 != 4)
  {
    goto LABEL_23;
  }

  v8 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  v9 = v3 & 0x1FFFFFFFFFFFFFFFLL;
  if (*(v8 + 16) == *(v9 + 16) && *(v8 + 24) == *(v9 + 24))
  {
    goto LABEL_22;
  }

  return sub_1D72646CC();
}

uint64_t FormatFloat.optionIdentifiers.getter()
{
  if ((*v0 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v3 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_1D5C3C480();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  return v4;
}

uint64_t FormatFloat.init(value:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = result;
  return result;
}

void FormatFloat.value(contextLayoutOptions:)(uint64_t a1)
{
  sub_1D5D27D10(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for FormatOption();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1 >> 61;
  if (v13 > 1)
  {
    if (v13 == 2 || v13 == 3)
    {
      v19 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      FormatFloat.value(contextLayoutOptions:)(a1);
    }

    else
    {
      v15 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v16 = v10;

      FormatOptionCollection.subscript.getter(v15, v14, v6);
      if ((*(v8 + 48))(v6, 1, v16) == 1)
      {
        sub_1D6013DD0(v6, &qword_1EDF337F0, type metadata accessor for FormatOption);
        type metadata accessor for FormatLayoutError();
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        *v17 = v15;
        v17[1] = v14;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {

        sub_1D5D247E0(v6, v12);
        v19 = *(v12 + 2);

        sub_1D6012BB8(&v19, a1, v12);

        sub_1D5D2CE68(v12, type metadata accessor for FormatOption);
      }
    }
  }
}

double sub_1D6012BB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a1 >> 60;
  if (v6 <= 0xD)
  {
    if (((1 << v6) & 0x3EE0) != 0)
    {
LABEL_10:
      type metadata accessor for FormatLayoutError();
      sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      sub_1D5D2477C(a3, v16);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return v3;
    }

    if (v6 == 4)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFFLL;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (*(v9 + 16))
      {
        v11 = *(*(a2 + 40) + 16);
        swift_beginAccess();
        if (*(*(v11 + 16) + 16))
        {
          v27 = *(a2 + 56);

          v13 = sub_1D6F622E0(v12);
          sub_1D5B886D0(v13);
          v14 = v27;
        }

        else
        {

          v14 = sub_1D6E46E28();
        }

        v8 = sub_1D5FA1B60(v14, v8, v9);
      }

      return v8;
    }

    if (v6 == 8)
    {
      v26[0] = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      v3 = sub_1D6012BB8(v26, a2, a3);

      return v3;
    }
  }

  if (v6 < 3)
  {
    goto LABEL_10;
  }

  v18 = v5 & 0xFFFFFFFFFFFFFFFLL;
  v3 = *(v18 + 16);
  v19 = *(v18 + 24);
  if (*(v19 + 16))
  {
    v21 = *(*(a2 + 40) + 16);
    swift_beginAccess();
    if (*(*(v21 + 16) + 16))
    {
      v27 = *(a2 + 56);

      v23 = sub_1D6F622E0(v22);
      sub_1D5B886D0(v23);
      v24 = v27;
    }

    else
    {

      v24 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v24, v19);
    v3 = v25;
  }

  return v3;
}

uint64_t sub_1D6012E70()
{
  if ((*v0 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v3 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_1D5C3C480();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  return v4;
}

uint64_t sub_1D6012EE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

void sub_1D6012F28(uint64_t a1@<X0>, void *a2@<X8>)
{
  FormatFloat.value(contextLayoutOptions:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

void sub_1D6012F58()
{
  v1 = *v0 >> 61;
  if (v1 <= 2)
  {
    if (v1 < 2)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v1 == 3)
  {
LABEL_5:
    sub_1D6012F58();
    return;
  }

  v3 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v4 = sub_1D5E26E28(&unk_1F50F4560);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = 0;
  sub_1D6C4D24C(v5 | 0x3000000000000000);
}

void FormatFloat.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatOption();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27D10(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  v18 = *v2;
  v19 = *v2 >> 61;
  if (v19 > 2)
  {
    v20 = v18 & 0x1FFFFFFFFFFFFFFFLL;
    if (v19 != 3)
    {
      v36 = v6;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);

      v37 = sub_1D5E26E28(&unk_1F50F65A8);
      v38 = v21;
      v35 = v22;
      v23 = v22;
      v24 = v36;
      FormatOptionCollection.subscript.getter(v23, v21, v13);
      if ((*(v24 + 48))(v13, 1, v5) == 1)
      {

        sub_1D6013DD0(v13, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if ((*(a2 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          v27 = v38;
          *v28 = v35;
          v28[1] = v27;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return;
        }

        v25 = 1;
      }

      else
      {
        sub_1D5D247E0(v13, v9);
        v40 = v9[2];
        v26 = v37;

        FormatOptionValue.type.getter(&v39);
        if ((sub_1D6183C84(v39, v26) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError();
          sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          v30 = v29;
          v32 = *v9;
          v31 = v9[1];
          v40 = v9[2];

          FormatOptionValue.type.getter(&v39);
          v33 = v39;
          *v30 = v32;
          *(v30 + 8) = v31;
          *(v30 + 16) = v33;
          *(v30 + 24) = v26;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D5D2CE68(v9, type metadata accessor for FormatOption);
          return;
        }

        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v9, v17);
        v25 = 0;
      }

      (*(v24 + 56))(v17, v25, 1, v5);
      sub_1D6013DD0(v17, &qword_1EDF337F0, type metadata accessor for FormatOption);
      return;
    }
  }

  else
  {
    if (v19 < 2)
    {
      return;
    }

    v20 = v18 & 0x1FFFFFFFFFFFFFFFLL;
  }

  v40 = *(v20 + 16);

  FormatFloat.bind(binder:context:)(a1, a2);
}

void sub_1D6013498()
{
  v1 = *v0 >> 61;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        *v2 = 0xD000000000000011;
        v2[1] = 0x80000001D73C5F20;
      }

      else
      {
        v7 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v6 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        type metadata accessor for FormatLayoutError();
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v9 = v8;

        sub_1D7263D4C();

        strcpy(v11, "Float option: ");
        HIBYTE(v11[1]) = -18;
        MEMORY[0x1DA6F9910](v7, v6);

        v10 = v11[1];
        *v9 = v11[0];
        v9[1] = v10;
      }

      goto LABEL_11;
    }

    type metadata accessor for FormatLayoutError();
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    v4 = 0x63732074616F6C46;
    v5 = 0xEC00000064656C61;
LABEL_10:
    *v3 = v4;
    v3[1] = v5;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  if (v1)
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    v4 = 0x69702074616F6C46;
    v5 = 0xEB000000006C6578;
    goto LABEL_10;
  }
}

uint64_t sub_1D6013760@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1D6013FAC(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1D7257CFC();
      swift_allocObject();
      v8 = sub_1D7257C9C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1D725860C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1D6013828(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1D5B952F8(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D5B952F8(v6, v5);
    *v3 = xmmword_1D728EF50;
    sub_1D5B952F8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1D7257CAC() && __OFSUB__(v6, sub_1D7257CDC()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1D7257CFC();
      swift_allocObject();
      v13 = sub_1D7257C8C();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1D6013CCC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1D5B952F8(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1D728EF50;
    sub_1D5B952F8(0, 0xC000000000000000);
    sub_1D72585CC();
    result = sub_1D6013CCC(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_1D6013BCC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D6013FAC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D601416C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D60141E8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1D6013C60(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D6013CCC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D7257CAC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D7257CDC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1D7257CCC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1D6013D80@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_1D7263D5C();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6013DD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5D27D10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D6013E2C(uint64_t a1)
{
  result = sub_1D6013E54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6013E54()
{
  result = qword_1EC8822F8;
  if (!qword_1EC8822F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822F8);
  }

  return result;
}

unint64_t sub_1D6013EA8(void *a1)
{
  a1[1] = sub_1D5C35218();
  a1[2] = sub_1D5C3526C();
  result = sub_1D5C352C0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6013EE4()
{
  result = qword_1EC882300;
  if (!qword_1EC882300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882300);
  }

  return result;
}

unint64_t sub_1D6013F48()
{
  result = qword_1EDF18AE0;
  if (!qword_1EDF18AE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF18AE0);
  }

  return result;
}

uint64_t sub_1D6013FAC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1D6014064(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1D7257CFC();
      swift_allocObject();
      sub_1D7257CBC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D725860C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1D6014104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1D6013C60(sub_1D601426C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1D601416C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D7257CFC();
  swift_allocObject();
  result = sub_1D7257C9C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D725860C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D60141E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D7257CFC();
  swift_allocObject();
  result = sub_1D7257C9C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

_BYTE *sub_1D601428C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1D6014334(uint64_t a1, uint64_t a2)
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *BundleSessionManager.__allocating_init(bundleSessionProvider:newsletterManager:appConfigurationManager:familySharingStatusManager:featureAvailability:bundleSubscriptionManager:bundleSubscriptionDetectionManager:sceneManager:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v10 = v9;
  v52 = a7;
  v53 = a8;
  v54 = a6;
  v55 = a1;
  v51 = a5;
  v58 = a3;
  v59 = a4;
  v56 = a9;
  v57 = a2;
  v13 = type metadata accessor for BundleSessionCache();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v51 - v19;
  v21 = objc_allocWithZone(v10);
  *&v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_observers] = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_notificationCenter;
  v23 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v24 = sub_1D726203C();
  v25 = [v23 initWithBundleIdentifier_];

  *&v21[v22] = v25;
  v26 = &v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_cachedBundleSessionKey];
  *v26 = 0xD000000000000015;
  *(v26 + 1) = 0x80000001D73C5F40;
  v27 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager__sessionCache;
  swift_storeEnumTagMultiPayload();
  sub_1D5B79BDC(v20, v16, type metadata accessor for BundleSessionCache);
  sub_1D5B5D86C(0, &qword_1EDF17AC8, type metadata accessor for BundleSessionCache, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  v28 = sub_1D725B94C();
  sub_1D5B79C44(v20, type metadata accessor for BundleSessionCache);
  *&v21[v27] = v28;
  v29 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager__sceneIsActive;
  v60[0] = 1;
  sub_1D5B79CA4(0, &qword_1EDF3B9E0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  *&v21[v29] = sub_1D725B94C();
  sub_1D5B68374(a1, &v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider]);
  v30 = v58;
  *&v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_newsletterManager] = v57;
  *&v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_appConfigurationManager] = v30;
  v31 = &v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_familySharingStatusManager];
  v32 = v51;
  *v31 = v59;
  *(v31 + 1) = v32;
  sub_1D5B68374(a6, &v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability]);
  v33 = v53;
  *&v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionManager] = v52;
  sub_1D5B68374(v33, &v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionDetectionManager]);
  v61.receiver = v21;
  v61.super_class = v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = objc_msgSendSuper2(&v61, sel_init);
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 defaultCenter];
  v38 = sub_1D726203C();
  [v37 addObserver:v36 selector:sel_familySharingStatusDidChange name:v38 object:0];

  v39 = [v35 defaultCenter];
  v40 = v36;
  v41 = sub_1D726203C();
  [v39 addObserver:v40 selector:sel_resetSession name:v41 object:0];

  v42 = *&v40[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_notificationCenter];
  v43 = v40;
  [v42 setPrivateDelegate_];
  [v57 addObserver_];
  v44 = v33[4];
  v45 = v33;
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v46 = *(v44 + 16);
  v47 = v43;
  v46();

  v48 = v56;
  __swift_project_boxed_opaque_existential_1(v56, v56[3]);
  sub_1D5B7A064(&qword_1EDF0F468, v49, type metadata accessor for BundleSessionManager);
  sub_1D725B54C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v47;
}

uint64_t BundleSessionManager.refreshSession(with:trigger:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for BundleSessionCache();
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  *(v4 + 64) = swift_task_alloc();
  v6 = type metadata accessor for BundleSession();
  *(v4 + 72) = v6;
  v7 = *(v6 - 8);
  *(v4 + 80) = v7;
  *(v4 + 88) = *(v7 + 64);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 136) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1D6014AEC, 0, 0);
}

uint64_t sub_1D6014AEC()
{
  v16 = v0;
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  *(v0 + 120) = __swift_project_value_buffer(v1, qword_1EDFFC720);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "BundleSessionManager will attempt to refresh session.", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 24);

  v15[0] = v5;
  if (sub_1D6015400(v6, v15))
  {
    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D5B42000, v7, v8, "BundleSessionManager will rebuild session.", v9, 2u);
      MEMORY[0x1DA6FD500](v9, -1, -1);
    }

    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_1D6014D98;
    v11 = *(v0 + 16);

    return sub_1D6015AB8(v11);
  }

  else
  {
    sub_1D6019CD8();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D6014D98()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6014F1C, 0, 0);
  }
}

uint64_t sub_1D6014F1C()
{
  v37 = v0;
  sub_1D5B79BDC(v0[2], v0[14], type metadata accessor for BundleSession);
  v1 = sub_1D725C3FC();
  v2 = sub_1D7262EDC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136315138;
    v7 = BundleSession.description.getter();
    v9 = v8;
    sub_1D5B79C44(v4, type metadata accessor for BundleSession);
    v10 = sub_1D5BC5100(v7, v9, &v36);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1D5B42000, v1, v2, "BundleSessionManager did rebuild rebuild session: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  else
  {

    sub_1D5B79C44(v4, type metadata accessor for BundleSession);
  }

  v35 = v0[12];
  v11 = v0[10];
  v34 = v0[13];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];
  v15 = v0[4];
  v33 = v0[6];
  v16 = v0[2];
  sub_1D5B79BDC(v16, v13, type metadata accessor for BundleSession);
  v17 = *(v11 + 56);
  v17(v13, 0, 1, v12);
  sub_1D60161FC(v13);
  sub_1D5B88A40(v13, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  sub_1D5B79BDC(v16, v14, type metadata accessor for BundleSession);
  v17(v14, 0, 1, v12);
  swift_storeEnumTagMultiPayload();
  sub_1D5B79BDC(v14, v33, type metadata accessor for BundleSessionCache);

  sub_1D725B97C();

  sub_1D5B79C44(v14, type metadata accessor for BundleSessionCache);
  sub_1D5B79BDC(v16, v34, type metadata accessor for BundleSession);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  sub_1D5E31B7C(v34, v19 + v18);
  v20 = v15;
  sub_1D725BFFC();

  sub_1D5B79BDC(v16, v35, type metadata accessor for BundleSession);
  v21 = sub_1D725C3FC();
  v22 = sub_1D7262EDC();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[12];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315138;
    v27 = BundleSession.description.getter();
    v29 = v28;
    sub_1D5B79C44(v24, type metadata accessor for BundleSession);
    v30 = sub_1D5BC5100(v27, v29, &v36);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1D5B42000, v21, v22, "BundleSessionManager successfully refreshed session: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1DA6FD500](v26, -1, -1);
    MEMORY[0x1DA6FD500](v25, -1, -1);
  }

  else
  {

    sub_1D5B79C44(v24, type metadata accessor for BundleSession);
  }

  v31 = v0[1];

  return v31();
}

BOOL sub_1D6015400(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for BundleSessionCache();
  *&v8 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *a2;
  if (![a1 isSubscribed])
  {
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D725C42C();
    __swift_project_value_buffer(v14, qword_1EDFFC720);
    v15 = sub_1D725C3FC();
    v16 = sub_1D7262EBC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D5B42000, v15, v16, "BundleSessionManager will not rebuild session because the user is not subscribed. Will reset any existing session.", v17, 2u);
      MEMORY[0x1DA6FD500](v17, -1, -1);
    }

    sub_1D6016C3C();
    sub_1D6019CD8();
    swift_allocError();
    v19 = 1;
    goto LABEL_20;
  }

  sub_1D725B96C();

  if (v43[0] != 1)
  {
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725C42C();
    __swift_project_value_buffer(v20, qword_1EDFFC720);
    v21 = sub_1D725C3FC();
    v22 = sub_1D7262EBC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D5B42000, v21, v22, "BundleSessionManager will not rebuild session because the application is not active.", v23, 2u);
      MEMORY[0x1DA6FD500](v23, -1, -1);
    }

    sub_1D6019CD8();
    swift_allocError();
    v19 = 3;
LABEL_20:
    *v18 = v19;
    swift_willThrow();
    return v13;
  }

  sub_1D5B68374(v3 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider, v43);
  sub_1D601A450();
  type metadata accessor for BundleSessionDemoProvider();
  if (swift_dynamicCast())
  {

    return (v11 & 1) == 0 && v11 != 2;
  }

  else
  {

    sub_1D725B96C();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDF175C0 != -1)
        {
          swift_once();
        }

        v26 = sub_1D725C42C();
        __swift_project_value_buffer(v26, qword_1EDFFC720);
        v27 = sub_1D725C3FC();
        v28 = sub_1D7262EDC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1D5B42000, v27, v28, "BundleSessionManager will rebuild session because the session should fetch.", v29, 2u);
          MEMORY[0x1DA6FD500](v29, -1, -1);
        }

        sub_1D5B88A40(v10, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
        return 1;
      }

      else
      {
        if (qword_1EDF175C0 != -1)
        {
          swift_once();
        }

        v34 = sub_1D725C42C();
        __swift_project_value_buffer(v34, qword_1EDFFC720);
        v35 = sub_1D725C3FC();
        v36 = sub_1D7262EDC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1D5B42000, v35, v36, "BundleSessionManager will rebuild session because the session is unfetched.", v37, 2u);
          MEMORY[0x1DA6FD500](v37, -1, -1);
        }

        return 1;
      }
    }

    else if (sub_1D601826C())
    {
      if (qword_1EDF175C0 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725C42C();
      __swift_project_value_buffer(v30, qword_1EDFFC720);
      v31 = sub_1D725C3FC();
      v32 = sub_1D7262EDC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D5B42000, v31, v32, "BundleSessionManager will rebuild session because the current session is expired.", v33, 2u);
        MEMORY[0x1DA6FD500](v33, -1, -1);
      }

      sub_1D5B79C44(v10, type metadata accessor for BundleSessionCache);
      return 1;
    }

    else
    {
      if (qword_1EDF175C0 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725C42C();
      __swift_project_value_buffer(v38, qword_1EDFFC720);
      v39 = sub_1D725C3FC();
      v40 = sub_1D7262EDC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1D5B42000, v39, v40, "BundleSessionManager will not rebuild session because the current session is not expired.", v41, 2u);
        MEMORY[0x1DA6FD500](v41, -1, -1);
      }

      sub_1D5B79C44(v10, type metadata accessor for BundleSessionCache);
      return 0;
    }
  }
}

uint64_t sub_1D6015AB8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for BundleSession();
  v2[8] = swift_task_alloc();
  v3 = sub_1D725891C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6015BA8, 0, 0);
}

uint64_t sub_1D6015BA8()
{
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  *(v0 + 96) = __swift_project_value_buffer(v1, qword_1EDFFC720);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "BundleSessionManager will rebuild session.", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 48);

  *(v0 + 104) = sub_1D6018624();
  sub_1D60188C0(v5);
  v7 = *(v6 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 24);
  v8 = *(v6 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability), v7);
  if ((*(v8 + 176))(v7, v8))
  {
    v9 = (sub_1D601826C() & 1) != 0 && !sub_1D6019844();
  }

  else
  {
    v9 = 2;
  }

  *(v0 + 120) = v9;
  if (qword_1EDF09030 != -1)
  {
    swift_once();
  }

  sub_1D725B96C();

  v10 = *(v0 + 32);
  if (v10)
  {
    v11 = [*(v0 + 32) authorizationStatus];

    v12 = v11 == 1;
    if (v11 == 2)
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 121) = v12;
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_1D6015E18;

  return sub_1D6018B34(v0 + 16);
}

uint64_t sub_1D6015E18()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6015F14, 0, 0);
}

uint64_t sub_1D6015F14()
{
  v32 = v0;
  v29 = *(v0 + 24);
  v30 = *(v0 + 16);
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_newsletterManager);
  v2 = [v1 cachedNewsletters];
  if (v2)
  {
    v3 = v2;
    sub_1D5B5A498(0, &qword_1EDF1AC18);
    v28 = sub_1D726267C();
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v0 + 121);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v27 = *(v0 + 64);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  v11 = [v1 isSubscribed];
  v12 = sub_1D6019090();
  *v10 = v5;
  (*(v7 + 32))(&v10[v9[5]], v6, v8);
  v10[v9[6]] = v4;
  v10[v9[7]] = v26;
  v13 = &v10[v9[8]];
  *v13 = v30;
  *(v13 + 1) = v29;
  *&v10[v9[9]] = v28;
  v10[v9[10]] = v11;
  v10[v9[11]] = v12 & 1;
  sub_1D5B79BDC(v10, v27, type metadata accessor for BundleSession);
  v14 = sub_1D725C3FC();
  v15 = sub_1D7262EDC();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 64);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    v20 = BundleSession.description.getter();
    v22 = v21;
    sub_1D5B79C44(v17, type metadata accessor for BundleSession);
    v23 = sub_1D5BC5100(v20, v22, &v31);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1D5B42000, v14, v15, "BundleSessionManager rebuilt session with value: %s.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1DA6FD500](v19, -1, -1);
    MEMORY[0x1DA6FD500](v18, -1, -1);
  }

  else
  {

    sub_1D5B79C44(v17, type metadata accessor for BundleSession);
  }

  v24 = *(v0 + 8);

  return v24();
}

void sub_1D60161FC(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B5D86C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v47 = &v42 - v6;
  v7 = type metadata accessor for BundleSession();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v43 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5C1FDAC();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, v3);
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v42 - v21);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - v25;
  BundleSessionManager.cachedSession.getter(&v42 - v25);
  v27 = *(v12 + 56);
  v46 = a1;
  sub_1D5B8866C(a1, v15);
  sub_1D5B8866C(v26, &v15[v27]);
  v28 = *(v8 + 48);
  if (v28(v15, 1, v7) != 1)
  {
    sub_1D5B8866C(v15, v22);
    if (v28(&v15[v27], 1, v7) != 1)
    {
      v35 = v43;
      sub_1D5E31B7C(&v15[v27], v43);
      v36 = _s8NewsFeed13BundleSessionV2eeoiySbAC_ACtFZ_0(v22, v35);
      sub_1D5B79C44(v35, type metadata accessor for BundleSession);
      v37 = MEMORY[0x1E69E6720];
      sub_1D5B88A40(v26, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
      sub_1D5B79C44(v22, type metadata accessor for BundleSession);
      sub_1D5B88A40(v15, &qword_1EDF33290, type metadata accessor for BundleSession, v37, sub_1D5B5D86C);
      if (v36)
      {
        goto LABEL_9;
      }

LABEL_7:
      v29 = sub_1D726294C();
      v30 = v47;
      (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
      v31 = v45;
      sub_1D5B8866C(v46, v45);
      v32 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      sub_1D6014334(v31, v33 + v32);
      *(v33 + ((v17 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
      v34 = v1;
      sub_1D67E16B0(0, 0, v30, &unk_1D728F2B8, v33);

      sub_1D5B88A40(v30, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5B5D86C);
      return;
    }

    sub_1D5B88A40(v26, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    sub_1D5B79C44(v22, type metadata accessor for BundleSession);
LABEL_6:
    sub_1D5B79C44(v15, sub_1D5C1FDAC);
    goto LABEL_7;
  }

  sub_1D5B88A40(v26, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  if (v28(&v15[v27], 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_1D5B88A40(v15, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
LABEL_9:
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725C42C();
  __swift_project_value_buffer(v38, qword_1EDFFC720);
  v39 = sub_1D725C3FC();
  v40 = sub_1D7262EDC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1D5B42000, v39, v40, "BundleSessionManager will not write session to disk since there is no change.", v41, 2u);
    MEMORY[0x1DA6FD500](v41, -1, -1);
  }
}

uint64_t sub_1D601689C(char *a1, uint64_t a2)
{
  v28 = a2;
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v27 = &v25 - v6;
  v7 = sub_1D7261B9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v11 = sub_1D726308C();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1D7261BBC();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    result = sub_1D7263BFC();
    v15 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v13 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_observers;
  result = swift_beginAccess();
  v2 = *&a1[v13];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    return result;
  }

LABEL_4:
  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    v26 = a1;
    v29 = v2 & 0xC000000000000001;

    v16 = 0;
    v17 = v27;
    do
    {
      if (v29)
      {
        v18 = MEMORY[0x1DA6FB460](v16, v2);
      }

      else
      {
        v18 = *(v2 + 8 * v16 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 24);
        ObjectType = swift_getObjectType();
        v31[3] = type metadata accessor for BundleSessionManager();
        v31[4] = &protocol witness table for BundleSessionManager;
        v20 = v26;
        v31[0] = v26;
        sub_1D5B79BDC(v28, v17, type metadata accessor for BundleSession);
        v21 = type metadata accessor for BundleSession();
        (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
        v22 = v15;
        v23 = *(v19 + 8);
        v24 = v20;
        v23(v31, v17, ObjectType, v19);
        v15 = v22;

        swift_unknownObjectRelease();
        sub_1D5B88A40(v17, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      else
      {
      }

      ++v16;
    }

    while (v15 != v16);
  }

  return result;
}

uint64_t sub_1D6016C3C()
{
  v0 = type metadata accessor for BundleSessionCache();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19 - v6;
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v19 - v10;
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D725C42C();
  __swift_project_value_buffer(v12, qword_1EDFFC720);
  v13 = sub_1D725C3FC();
  v14 = sub_1D7262EDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D5B42000, v13, v14, "BundleSessionManager will reset the session if it exists.", v15, 2u);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  v16 = type metadata accessor for BundleSession();
  v17 = *(*(v16 - 8) + 56);
  v17(v11, 1, 1, v16);
  sub_1D60161FC(v11);
  sub_1D5B88A40(v11, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  v17(v7, 1, 1, v16);
  swift_storeEnumTagMultiPayload();
  sub_1D5B79BDC(v7, v3, type metadata accessor for BundleSessionCache);

  sub_1D725B97C();

  return sub_1D5B79C44(v7, type metadata accessor for BundleSessionCache);
}

id BundleSessionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D6017014(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64684;

  return BundleSessionManager.refreshSession(with:trigger:)(a1, a2, a3);
}

uint64_t BundleSessionManager.add(observer:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v23 = a1;
  v6 = sub_1D7261B9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v10 = sub_1D726308C();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v11 = sub_1D7261BBC();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v3 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_observers;
    swift_beginAccess();
    v6 = *(v4 + v3);
    v24 = MEMORY[0x1E69E7CC0];
    if (!(v6 >> 62))
    {
      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  v12 = sub_1D7263BFC();
LABEL_4:

  if (v12)
  {
    v21 = a2;
    v22 = v4;
    v13 = 0;
    a2 = v6 & 0xC000000000000001;
    while (1)
    {
      if (a2)
      {
        MEMORY[0x1DA6FB460](v13, v6);
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v16 = v24;
          a2 = v21;
          v4 = v22;
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v15 = Strong, swift_unknownObjectRelease(), v15 == v23))
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v13;
      if (v4 == v12)
      {
        goto LABEL_18;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(v4 + v3) = v16;

  type metadata accessor for BundleSessionManagerObserverProxy();
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v18 = swift_beginAccess();
  MEMORY[0x1DA6F9CE0](v18);
  if (*((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  return swift_endAccess();
}

uint64_t BundleSessionManager.remove(observer:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7261B9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v8 = sub_1D726308C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v9 = sub_1D7261BBC();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v9 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_observers;
    swift_beginAccess();
    v4 = *(v2 + v9);
    v17 = MEMORY[0x1E69E7CC0];
    if (!(v4 >> 62))
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v10 = sub_1D7263BFC();
LABEL_4:

  if (v10)
  {
    v15 = v9;
    v16 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v2, v4);
        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v2 = v16;
          v13 = v17;
          v9 = v15;
          goto LABEL_20;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v9 = Strong, swift_unknownObjectRelease(), v9 == a1))
      {
      }

      else
      {
        v9 = &v17;
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v2;
      if (v11 == v10)
      {
        goto LABEL_18;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(v2 + v9) = v13;
}

Swift::Void __swiftcall BundleSessionManager.didUpdateNewsletters(from:to:)(Swift::OpaquePointer from, Swift::OpaquePointer to)
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for BundleSessionCache();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  if ((sub_1D635D3FC(from._rawValue, to._rawValue) & 1) == 0)
  {
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725C42C();
    __swift_project_value_buffer(v20, qword_1EDFFC720);
    v21 = sub_1D725C3FC();
    v22 = sub_1D7262EDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D5B42000, v21, v22, "BundleSessionManager did detect change in newsletter enrollment.", v23, 2u);
      MEMORY[0x1DA6FD500](v23, -1, -1);
    }

    sub_1D725B96C();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return;
      }
    }

    else
    {
      sub_1D6014334(v19, v7);
      sub_1D5B8866C(v7, v15);
      swift_storeEnumTagMultiPayload();
      sub_1D5B79BDC(v15, v11, type metadata accessor for BundleSessionCache);

      sub_1D725B97C();

      sub_1D5B79C44(v15, type metadata accessor for BundleSessionCache);
      v19 = v7;
    }

    sub_1D5B88A40(v19, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  }
}

uint64_t sub_1D6017BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for BundleSession();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6017D18, 0, 0);
}

uint64_t sub_1D6017D18()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_1D5B8866C(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D5B88A40(v0[4], &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = sub_1D726203C();
    [v4 removeObjectForKey_];

    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v6 = sub_1D725C42C();
    __swift_project_value_buffer(v6, qword_1EDFFC720);
    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D5B42000, v7, v8, "BundleSessionManager removed session from disk.", v9, 2u);
      MEMORY[0x1DA6FD500](v9, -1, -1);
    }
  }

  else
  {
    sub_1D5E31B7C(v0[4], v0[7]);
    sub_1D72578EC();
    swift_allocObject();
    sub_1D72578DC();
    sub_1D5B7A064(&qword_1EDF11EB0, 255, type metadata accessor for BundleSession);
    v10 = sub_1D72578BC();
    v12 = v11;

    v13 = [objc_opt_self() standardUserDefaults];
    v14 = sub_1D725865C();
    v15 = sub_1D726203C();
    [v13 setObject:v14 forKey:v15];

    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725C42C();
    __swift_project_value_buffer(v16, qword_1EDFFC720);
    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EDC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[7];
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D5B42000, v17, v18, "BundleSessionManager wrote session to disk.", v21, 2u);
      MEMORY[0x1DA6FD500](v21, -1, -1);
    }

    sub_1D5B952F8(v10, v12);

    sub_1D5B79C44(v20, type metadata accessor for BundleSession);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D601826C()
{
  v1 = sub_1D725891C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v29 - v8;
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for BundleSession();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  BundleSessionManager.cachedSession.getter(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D5B88A40(v13, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    v19 = 1;
  }

  else
  {
    sub_1D5E31B7C(v13, v18);
    v20 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider + 24);
    v21 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider + 32);
    v22 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider), v20);
    v29[1] = v29;
    v23 = *(v20 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22, v22);
    v26 = v29 - v25;
    (*(v23 + 16))(v29 - v25, v24);
    (*(v21 + 8))(v20, v21);
    (*(v23 + 8))(v26, v20);
    sub_1D725880C();
    sub_1D72588CC();
    v19 = sub_1D725883C();
    v27 = *(v2 + 8);
    v27(v5, v1);
    v27(v9, v1);
    sub_1D5B79C44(v18, type metadata accessor for BundleSession);
  }

  return v19 & 1;
}

uint64_t sub_1D6018624()
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17[-1] - v7;
  v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 24);
  v10 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability), v9);
  if (((*(v10 + 176))(v9, v10) & 1) != 0 && (sub_1D601826C() & 1) != 0 && sub_1D6019844())
  {
    sub_1D5B68374(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    BundleSessionManager.cachedSession.getter(v8);
    v13 = (*(v12 + 16))(v8, v11, v12);
    sub_1D5B88A40(v8, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    BundleSessionManager.cachedSession.getter(v4);
    v14 = type metadata accessor for BundleSession();
    if ((*(*(v14 - 8) + 48))(v4, 1, v14) == 1)
    {
      sub_1D5B88A40(v4, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
      return 0;
    }

    else
    {
      v13 = *v4;
      sub_1D5B79C44(v4, type metadata accessor for BundleSession);
    }
  }

  return v13;
}

uint64_t sub_1D60188C0@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for BundleSession();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  BundleSessionManager.cachedSession.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D5B88A40(v6, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    return sub_1D72588CC();
  }

  else
  {
    sub_1D5E31B7C(v6, v11);
    v13 = *(v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 24);
    v14 = *(v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability), v13);
    if (((*(v14 + 176))(v13, v14) & 1) != 0 && (sub_1D601826C() & 1) != 0 && sub_1D6019844())
    {
      sub_1D72588CC();
    }

    else
    {
      v15 = *(v7 + 20);
      v16 = sub_1D725891C();
      (*(*(v16 - 8) + 16))(a1, &v11[v15], v16);
    }

    return sub_1D5B79C44(v11, type metadata accessor for BundleSession);
  }
}

uint64_t sub_1D6018B34(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1D5B5D86C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6018BF4, 0, 0);
}

uint64_t sub_1D6018BF4()
{
  if (qword_1EC87D7D0 != -1)
  {
    swift_once();
  }

  if (sub_1D72596AC())
  {
    sub_1D72596FC();
    sub_1D72596DC();
    if (qword_1EC87D7C0 != -1)
    {
      swift_once();
    }

    sub_1D72596CC();

    v1 = *(v0 + 80);
    sub_1D72596DC();
    if (qword_1EC87D7C8 != -1)
    {
      swift_once();
    }

    sub_1D72596CC();

    v2 = *(v0 + 40);
    if (v1 > 1)
    {
      v11 = *(v0 + 32);
      if (v1 == 2)
      {
        v12 = 0x8000000000000000;
      }

      else
      {
        v12 = 0x8000000000000001;
      }

      *v2 = v12;
      v2[1] = v11;
    }

    else if (v1)
    {
      *v2 = 0;
      v2[1] = 0;
    }

    else
    {
      *v2 = xmmword_1D728CF30;
    }

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    sub_1D726291C();
    v5 = sub_1D726294C();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    v7 = v4;
    v8 = sub_1D6BD1698(0, 0, v3, &unk_1D728F2D0, v6);
    *(v0 + 64) = v8;
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    sub_1D5B79CA4(0, &qword_1EDF33B80, &type metadata for FamilyStatus, MEMORY[0x1E69E6720]);
    *v9 = v0;
    v9[1] = sub_1D6018EE0;

    return MEMORY[0x1EEE6DA40](v0 + 16, v8, v10);
  }
}

uint64_t sub_1D6018EE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6018FF8, 0, 0);
}

uint64_t sub_1D6018FF8()
{
  v1 = vdup_n_s32(v0[1].i64[0] >> 1 == 0xFFFFFFFF);
  v2.i64[0] = v1.u32[0];
  v2.i64[1] = v1.u32[1];
  *v0[2].i64[1] = vbslq_s8(vcltzq_s64(vshlq_n_s64(v2, 0x3FuLL)), xmmword_1D728CF30, v0[1]);

  v3 = v0->i64[1];

  return v3();
}

uint64_t sub_1D6019090()
{
  v1 = v0;
  sub_1D5B5D86C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v48 - v4;
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 24);
  v16 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability), v15);
  if (((*(v16 + 176))(v15, v16) & 1) == 0)
  {
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725C42C();
    __swift_project_value_buffer(v26, qword_1EDFFC720);
    v22 = sub_1D725C3FC();
    v23 = sub_1D7262EDC();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "BundleSessionManager will not slot premium headlines because the feature is disabled.";
    goto LABEL_16;
  }

  v17 = [*(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionManager) cachedSubscription];
  v18 = [v17 isSubscribed];

  if (!v18)
  {
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725C42C();
    __swift_project_value_buffer(v27, qword_1EDFFC720);
    v22 = sub_1D725C3FC();
    v23 = sub_1D7262EDC();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "BundleSessionManager will not slot premium headlines because the user is not subscribed.";
    goto LABEL_16;
  }

  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionDetectionManager + 24);
  v20 = *(v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionDetectionManager + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionDetectionManager), v19);
  (*(v20 + 8))(v19, v20);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5B88A40(v5, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B5D86C);
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725C42C();
    __swift_project_value_buffer(v21, qword_1EDFFC720);
    v22 = sub_1D725C3FC();
    v23 = sub_1D7262EDC();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "BundleSessionManager will not slot premium headlines because the user is not a detected new subscriber.";
LABEL_16:
    _os_log_impl(&dword_1D5B42000, v22, v23, v25, v24, 2u);
    MEMORY[0x1DA6FD500](v24, -1, -1);
LABEL_17:

    return 0;
  }

  (*(v7 + 32))(v14, v5, v6);
  v29 = [*(v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_appConfigurationManager) appConfiguration];
  if (([v29 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    if (qword_1EDF175C0 == -1)
    {
LABEL_29:
      v40 = sub_1D725C42C();
      __swift_project_value_buffer(v40, qword_1EDFFC720);
      v41 = sub_1D725C3FC();
      v42 = sub_1D7262EDC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1D5B42000, v41, v42, "BundleSessionManager will not slot premium headlines because the slotting time could not be determined.", v43, 2u);
        MEMORY[0x1DA6FD500](v43, -1, -1);
      }

      (*(v7 + 8))(v14, v6);
      return 0;
    }

LABEL_38:
    swift_once();
    goto LABEL_29;
  }

  v30 = [v29 maximumPremiumHeadlinesGroupSlottingTime];
  swift_unknownObjectRelease();
  sub_1D725890C();
  sub_1D72587FC();
  v32 = v31;
  v33 = v31;
  v35 = *(v7 + 8);
  v7 += 8;
  v34 = v35;
  v35(v10, v6);
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v32 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v30 < v32)
  {
    if (qword_1EDF175C0 == -1)
    {
LABEL_25:
      v36 = sub_1D725C42C();
      __swift_project_value_buffer(v36, qword_1EDFFC720);
      v37 = sub_1D725C3FC();
      v38 = sub_1D7262EDC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1D5B42000, v37, v38, "BundleSessionManager will not slot premium headlines because the user is outside the eligible detection window.", v39, 2u);
        MEMORY[0x1DA6FD500](v39, -1, -1);
      }

      v34(v14, v6);
      return 0;
    }

LABEL_41:
    swift_once();
    goto LABEL_25;
  }

  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725C42C();
  __swift_project_value_buffer(v44, qword_1EDFFC720);
  v45 = sub_1D725C3FC();
  v46 = sub_1D7262EDC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1D5B42000, v45, v46, "BundleSessionManager will slot premium headlines.", v47, 2u);
    MEMORY[0x1DA6FD500](v47, -1, -1);
  }

  v34(v14, v6);
  return 1;
}

BOOL sub_1D6019844()
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v14 - v3;
  v5 = type metadata accessor for BundleSession();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  BundleSessionManager.cachedSession.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D5B88A40(v4, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    return 1;
  }

  else
  {
    sub_1D5E31B7C(v4, v9);
    v11 = [*(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_appConfigurationManager) appConfiguration];
    if ([v11 respondsToSelector_])
    {
      v12 = [v11 maximumBundleSessionValue];
      swift_unknownObjectRelease();
      v13 = *v9;
      sub_1D5B79C44(v9, type metadata accessor for BundleSession);
      return v13 < v12;
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1D5B79C44(v9, type metadata accessor for BundleSession);
      return 0;
    }
  }
}

uint64_t sub_1D6019A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D6019AB0, 0, 0);
}

uint64_t sub_1D6019AB0()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_familySharingStatusManager + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 48))(ObjectType, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D6019B5C()
{

  sub_1D725B97C();
}

uint64_t sub_1D6019BB0()
{
  swift_getObjectType();

  return sub_1D725B1DC();
}

uint64_t sub_1D6019C08()
{
  swift_getObjectType();

  return sub_1D725B20C();
}

uint64_t sub_1D6019C44()
{
  swift_getObjectType();

  return sub_1D725B1FC();
}

uint64_t sub_1D6019C9C()
{
  swift_getObjectType();

  return sub_1D725B1AC();
}

unint64_t sub_1D6019CD8()
{
  result = qword_1EDF2E6C0[0];
  if (!qword_1EDF2E6C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2E6C0);
  }

  return result;
}

uint64_t sub_1D6019D2C()
{
  v1 = *(type metadata accessor for BundleSession() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D601689C(v2, v3);
}

uint64_t sub_1D6019D90(const char *a1)
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = type metadata accessor for BundleSessionCache();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v23 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v23 - v16;
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725C42C();
  __swift_project_value_buffer(v18, qword_1EDFFC720);
  v19 = sub_1D725C3FC();
  v20 = sub_1D7262EDC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D5B42000, v19, v20, a1, v21, 2u);
    MEMORY[0x1DA6FD500](v21, -1, -1);
  }

  sub_1D725B96C();

  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    sub_1D6014334(v17, v5);
    sub_1D5B8866C(v5, v13);
    swift_storeEnumTagMultiPayload();
    sub_1D5B79BDC(v13, v9, type metadata accessor for BundleSessionCache);

    sub_1D725B97C();

    sub_1D5B79C44(v13, type metadata accessor for BundleSessionCache);
    v17 = v5;
    return sub_1D5B88A40(v17, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  }

  if (result == 1)
  {
    return sub_1D5B88A40(v17, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  }

  return result;
}

uint64_t dispatch thunk of BundleSessionManagerType.refreshSession(with:trigger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64684;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1D601A248(uint64_t a1)
{
  v3 = v2;
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D5B64684;

  return sub_1D6017BFC(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_1D601A39C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6019A90(a1, v4, v5, v6);
}

unint64_t sub_1D601A450()
{
  result = qword_1EC882448;
  if (!qword_1EC882448)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC882448);
  }

  return result;
}

uint64_t type metadata accessor for FormatScopedOption()
{
  result = qword_1EC8824B0;
  if (!qword_1EC8824B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D601A500()
{
  result = type metadata accessor for FormatOption();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FormatCompilerSlotDefinition.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatCompilerSlotDefinition.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatCompilerSlotDefinition.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatCompilerSlotDefinition.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FormatCompilerSlotDefinition.properties.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t FormatCompilerSlotDefinition.transforms.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1D601A7C8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v6 = v5;
  v79 = a3;
  v10 = type metadata accessor for FormatCompilerProperty(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatPropertyDefinition(0);
  v77 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v80 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B58F2C(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v60 - v20;
  v70 = type metadata accessor for FormatCompilerSlotDefinitionItemSet();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v67, v25);
  v69 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  v27 = a1[1];
  v29 = a2[3];
  v65 = a2[2];
  v66 = v28;
  v30 = a2[5];
  v64 = a2[4];
  v31 = a2[6];
  v32 = a2[7];
  v71 = a2;
  v33 = *(v31 + 16);
  v72 = v24;
  v73 = a5;
  v74 = v32;
  if (v33)
  {
    v60 = v21;
    v61 = v27;
    v81 = MEMORY[0x1E69E7CC0];
    v78 = v31;

    v62 = v30;

    v75 = v33;
    result = sub_1D6998644(0, v33, 0);
    v35 = 0;
    v36 = v81;
    v37 = v78;
    v76 = v78 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v38 = v29;
    while (v35 < *(v37 + 16))
    {
      sub_1D601C418(v76 + *(v11 + 72) * v35, v14);
      sub_1D7075A68(v79, v80);
      if (v6)
      {
        sub_1D601C5C4(v14, type metadata accessor for FormatCompilerProperty);

        *v63 = v6;
        return result;
      }

      sub_1D601C5C4(v14, type metadata accessor for FormatCompilerProperty);
      v81 = v36;
      v40 = *(v36 + 16);
      v39 = *(v36 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D6998644(v39 > 1, v40 + 1, 1);
        v36 = v81;
      }

      ++v35;
      *(v36 + 16) = v40 + 1;
      result = sub_1D601C49C(v80, v36 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v40, type metadata accessor for FormatPropertyDefinition);
      v37 = v78;
      if (v75 == v35)
      {
        v29 = v38;
        v21 = v60;
        v41 = v61;
        v42 = v62;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = v27;

    v36 = MEMORY[0x1E69E7CC0];
    v42 = v30;
LABEL_11:
    v43 = type metadata accessor for FormatCompilerSlotDefinition(0);
    v44 = v71;
    v45 = v69;
    sub_1D5D67840(v71 + *(v43 + 44), &v69[*(v67 + 40)], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v46 = v65;
    *v45 = v66;
    v45[1] = v41;
    v45[2] = v46;
    v45[3] = v29;
    v45[4] = v64;
    v45[5] = v42;
    v47 = MEMORY[0x1E69E7CC0];
    v48 = v74;
    v45[6] = MEMORY[0x1E69E7CC0];
    v45[7] = v48;
    v45[8] = v36;
    sub_1D5D67840(v44 + *(v43 + 40), v21, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    v49 = *(v68 + 48);
    v50 = v70;
    if (v49(v21, 1, v70) == 1)
    {
      v51 = v21;
      v52 = *(v50 + 20);
      v53 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
      v54 = v72;
      (*(*(v53 - 8) + 56))(&v72[v52], 1, 1, v53);
      v55 = *(v50 + 24);
      v56 = sub_1D725B76C();
      (*(*(v56 - 8) + 56))(&v54[v55], 1, 1, v56);
      *v54 = v47;
      v57 = v49(v51, 1, v50);
      v58 = v73;
      if (v57 != 1)
      {
        sub_1D5CDE540(v51, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      }
    }

    else
    {
      v54 = v72;
      sub_1D601C49C(v21, v72, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      v58 = v73;
    }

    sub_1D601C49C(v45, v58, type metadata accessor for FormatSlotDefinition);
    v59 = type metadata accessor for FormatCompilingSlotDefinition(0);
    return sub_1D601C49C(v54, v58 + *(v59 + 20), type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  }

  return result;
}

size_t sub_1D601AE88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v7 = v5;
  v43 = a3;
  v11 = type metadata accessor for FormatCompilerProperty(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatPropertyDefinition(0);
  v42 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v44 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[1];
  v38 = a1;
  v20 = *a1;
  v21 = *(type metadata accessor for FormatCompilingSlotDefinition(0) + 20);
  v39 = a2;
  v37 = a2 + v21;
  v22 = *(a2 + v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    v36 = a4;
    v34 = a5;
    v45[0] = MEMORY[0x1E69E7CC0];
    v35 = v19;

    v40 = v23;
    result = sub_1D6998644(0, v23, 0);
    v25 = 0;
    v26 = v45[0];
    v41 = v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    while (v25 < *(v22 + 16))
    {
      sub_1D601C418(v41 + *(v12 + 72) * v25, v15);
      sub_1D7075A68(v43, v44);
      if (v7)
      {
        sub_1D601C5C4(v15, type metadata accessor for FormatCompilerProperty);

        a4 = v36;
        goto LABEL_13;
      }

      sub_1D601C5C4(v15, type metadata accessor for FormatCompilerProperty);
      v45[0] = v26;
      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D6998644(v27 > 1, v28 + 1, 1);
        v26 = v45[0];
      }

      ++v25;
      *(v26 + 16) = v28 + 1;
      result = sub_1D601C49C(v44, v26 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v28, type metadata accessor for FormatPropertyDefinition);
      if (v40 == v25)
      {
        a5 = v34;
        v19 = v35;
        a4 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
LABEL_11:
    sub_1D601B220(v38, v39, v43, v45);
    if (v7)
    {

LABEL_13:
      *a4 = v7;
    }

    else
    {
      v29 = v45[0];
      v30 = v45[1];
      v31 = *(type metadata accessor for FormatCompilerSlotDefinitionItemSet() + 24);
      v32 = type metadata accessor for FormatSlotDefinitionItemSet();
      sub_1D5D67840(v37 + v31, a5 + *(v32 + 36), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      a5[3] = 0;
      a5[4] = 0;
      *a5 = v20;
      a5[1] = v19;
      a5[2] = v26;
      result = sub_1D5CDE22C(0);
      a5[3] = v29;
      a5[4] = v30;
    }
  }

  return result;
}

void sub_1D601B220(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v43 = a3;
  v40 = a2;
  v7 = type metadata accessor for FormatCompilerProperty(0);
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatPropertyDefinition(0);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B58F2C(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v38 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 24))
  {
    goto LABEL_4;
  }

  v37 = *(a1 + 32);
  v23 = v40 + *(type metadata accessor for FormatCompilingSlotDefinition(0) + 20);
  v24 = type metadata accessor for FormatCompilerSlotDefinitionItemSet();
  sub_1D5D67840(v23 + *(v24 + 20), v18, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D5CDE540(v18, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
LABEL_4:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v25 = v38;
  v26 = sub_1D601C49C(v18, v38, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  v27 = *v25;
  v28 = *(*v25 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v36 = a4;
    v44 = MEMORY[0x1E69E7CC0];
    v39 = v28;
    sub_1D6998644(0, v28, 0);
    v30 = 0;
    v29 = v44;
    v40 = v27 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    while (v30 < *(v27 + 16))
    {
      sub_1D601C418(v40 + *(v42 + 72) * v30, v10);
      sub_1D7075A68(v43, v14);
      if (v4)
      {
        sub_1D601C5C4(v10, type metadata accessor for FormatCompilerProperty);

        v25 = v38;
        goto LABEL_17;
      }

      v31 = v27;
      sub_1D601C5C4(v10, type metadata accessor for FormatCompilerProperty);
      v44 = v29;
      v33 = *(v29 + 16);
      v32 = *(v29 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D6998644(v32 > 1, v33 + 1, 1);
        v29 = v44;
      }

      ++v30;
      *(v29 + 16) = v33 + 1;
      v26 = sub_1D601C49C(v14, v29 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33, type metadata accessor for FormatPropertyDefinition);
      v27 = v31;
      if (v39 == v30)
      {
        a4 = v36;
        v25 = v38;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    MEMORY[0x1EEE9AC00](v26, v28);
    v34 = v43;
    *(&v36 - 2) = v25;
    *(&v36 - 1) = v34;
    v35 = sub_1D5ECAFC8(sub_1D601C47C, (&v36 - 4), v37);
    if (v4)
    {
    }

    else
    {
      *a4 = v29;
      a4[1] = v35;
    }

LABEL_17:
    sub_1D601C5C4(v25, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  }
}

size_t sub_1D601B6F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v33 = a4;
  v6 = v5;
  v38 = a3;
  v10 = type metadata accessor for FormatCompilerProperty(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v34 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormatPropertyDefinition(0);
  v37 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[1];
  v35 = a1;
  v19 = *a1;
  if (*(a2 + 8))
  {
    v20 = *(a2 + 8);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);
  if (v21)
  {
    v31 = a5;
    v32 = v18;
    v40 = MEMORY[0x1E69E7CC0];

    result = sub_1D6998644(0, v21, 0);
    v23 = 0;
    v24 = v40;
    v36 = v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v25 = v34;
    while (v23 < *(v20 + 16))
    {
      sub_1D601C418(v36 + *(v11 + 72) * v23, v25);
      sub_1D7075A68(v38, v17);
      if (v6)
      {
        sub_1D601C5C4(v25, type metadata accessor for FormatCompilerProperty);

        *v33 = v6;
        return result;
      }

      v39 = 0;
      v26 = v11;
      sub_1D601C5C4(v25, type metadata accessor for FormatCompilerProperty);
      v40 = v24;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D6998644(v27 > 1, v28 + 1, 1);
        v25 = v34;
        v24 = v40;
      }

      ++v23;
      *(v24 + 16) = v28 + 1;
      result = sub_1D601C49C(v17, v24 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, type metadata accessor for FormatPropertyDefinition);
      v11 = v26;
      v6 = v39;
      if (v21 == v23)
      {

        a5 = v31;
        v29 = v32;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = v18;

    v24 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v30 = type metadata accessor for FormatSlotDefinitionItemSet();
    sub_1D5D67840(v35 + *(v30 + 36), a5 + *(v30 + 36), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    a5[3] = 0;
    a5[4] = 0;
    *a5 = v19;
    a5[1] = v29;
    a5[2] = v24;
    result = sub_1D5CDE22C(0);
    a5[3] = 0;
    a5[4] = 0;
  }

  return result;
}

BOOL _s8NewsFeed28FormatCompilerSlotDefinitionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D725B76C();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6A58];
  sub_1D5B58F2C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v55 = &v50 - v10;
  sub_1D601C504(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v7);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v50 - v14;
  v16 = type metadata accessor for FormatCompilerSlotDefinitionItemSet();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B58F2C(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = (&v50 - v23);
  sub_1D601C504(0, &qword_1EC8824D0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v50 - v28;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D72646CC() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D72646CC() & 1) == 0 || (sub_1D633C7DC(a1[6], a2[6]) & 1) == 0 || (sub_1D633C830(a1[7], a2[7]) & 1) == 0 || a1[8] != a2[8])
  {
    return 0;
  }

  v30 = type metadata accessor for FormatCompilerSlotDefinition(0);
  v31 = *(v30 + 40);
  v51 = v30;
  v52 = v31;
  v53 = *(v26 + 48);
  sub_1D5D67840(a1 + v31, v29, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  sub_1D5D67840(a2 + v52, &v29[v53], qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  v32 = *(v17 + 48);
  if (v32(v29, 1, v16) != 1)
  {
    sub_1D5D67840(v29, v24, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    if (v32(&v29[v53], 1, v16) != 1)
    {
      sub_1D601C49C(&v29[v53], v20, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      v37 = _s8NewsFeed35FormatCompilerSlotDefinitionItemSetV2eeoiySbAC_ACtFZ_0(v24, v20);
      sub_1D601C5C4(v20, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      sub_1D601C5C4(v24, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      sub_1D5CDE540(v29, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      if (!v37)
      {
        return 0;
      }

      goto LABEL_20;
    }

    sub_1D601C5C4(v24, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
LABEL_18:
    v33 = &qword_1EC8824D0;
    v34 = qword_1EDF43EE0;
    v35 = type metadata accessor for FormatCompilerSlotDefinitionItemSet;
    v36 = v29;
LABEL_26:
    sub_1D601C568(v36, v33, v34, v35);
    return 0;
  }

  if (v32(&v29[v53], 1, v16) != 1)
  {
    goto LABEL_18;
  }

  sub_1D5CDE540(v29, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
LABEL_20:
  v38 = *(v51 + 44);
  v39 = *(v12 + 48);
  v40 = MEMORY[0x1E69D6A58];
  sub_1D5D67840(a1 + v38, v15, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5D67840(a2 + v38, &v15[v39], &qword_1EDF45AD0, v40);
  v42 = v56;
  v41 = v57;
  v43 = *(v56 + 48);
  if (v43(v15, 1, v57) == 1)
  {
    if (v43(&v15[v39], 1, v41) == 1)
    {
      sub_1D5CDE540(v15, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_25;
  }

  v44 = v55;
  sub_1D5D67840(v15, v55, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v43(&v15[v39], 1, v41) == 1)
  {
    (*(v42 + 8))(v44, v41);
LABEL_25:
    v33 = &qword_1EDF3BA98;
    v34 = &qword_1EDF45AD0;
    v35 = MEMORY[0x1E69D6A58];
    v36 = v15;
    goto LABEL_26;
  }

  v46 = &v15[v39];
  v47 = v54;
  (*(v42 + 32))(v54, v46, v41);
  sub_1D5B58EE4(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v48 = sub_1D7261FBC();
  v49 = *(v42 + 8);
  v49(v47, v41);
  v49(v44, v41);
  sub_1D5CDE540(v15, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v48 & 1) != 0;
}

uint64_t sub_1D601C1E0(uint64_t a1)
{
  result = sub_1D5B58EE4(&qword_1EC8824C0, type metadata accessor for FormatCompilerSlotDefinition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D601C238(void *a1)
{
  a1[1] = sub_1D5B58EE4(&qword_1EDF44520, type metadata accessor for FormatCompilerSlotDefinition);
  a1[2] = sub_1D5B58EE4(&qword_1EDF44528, type metadata accessor for FormatCompilerSlotDefinition);
  result = sub_1D5B58EE4(&qword_1EC8824C8, type metadata accessor for FormatCompilerSlotDefinition);
  a1[3] = result;
  return result;
}

void sub_1D601C2E4()
{
  if (!qword_1EDF441F0)
  {
    sub_1D5B57DEC();
    sub_1D5B56404();
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF441F0);
    }
  }
}

uint64_t sub_1D601C394()
{
  result = type metadata accessor for FormatSlotDefinition();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatCompilerSlotDefinitionItemSet();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D601C418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerProperty(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D601C49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D601C504(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5B58F2C(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D601C568(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D601C504(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D601C5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Dictionary<>.seedFormatCodingVersion(mode:)(uint64_t a1)
{
  v77 = a1;
  v1 = sub_1D725BD1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v70 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v69 = &v62 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v68 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v67 = &v62 - v13;
  v76 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v76, v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatVersionInfo(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2ECB0(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v66 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v65 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v62 - v29;
  v31 = sub_1D7263FCC();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v64 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v63 = &v62 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v62 - v40;
  sub_1D7263FBC();
  v75 = *(v32 + 48);
  result = v75(v30, 1, v31);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v71 = *(v32 + 32);
  v72 = v31;
  v71(v41, v30, v31);
  v43 = v77;
  sub_1D6026904(v77, v20, type metadata accessor for FormatVersioningMode);
  v44 = *(v17 + 20);
  v73 = v2;
  v74 = v1;
  (*(v2 + 56))(&v20[v44], 1, 1, v1);
  *&v20[*(v17 + 24)] = MEMORY[0x1E69E7CC0];
  sub_1D5C2ECB0(0, &qword_1EC8824D8, type metadata accessor for FormatVersionInfo, type metadata accessor for Box);
  v46 = v45;
  v47 = swift_allocObject();
  sub_1D60269C0(v20, v47 + *(*v47 + 88), type metadata accessor for FormatVersionInfo);
  v79 = v46;
  v78[0] = v47;
  sub_1D5B7C248(v78, v41);
  sub_1D6026904(v43, v16, type metadata accessor for FormatVersioningMode);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v49 = v73;
    v48 = v74;
    v50 = v67;
    (*(v73 + 32))(v67, v16, v74);
    v57 = *(v49 + 16);
    v52 = v68;
    v57(v68, v50, v48);
    v58 = v65;
    sub_1D7263FBC();
    v59 = v72;
    result = v75(v58, 1, v72);
    if (result != 1)
    {
      v55 = v63;
      v71(v63, v58, v59);
      v79 = v48;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
      v57(boxed_opaque_existential_1, v52, v48);
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return result;
  }

  if (result != 1)
  {
    return result;
  }

  v49 = v73;
  v48 = v74;
  v50 = v69;
  (*(v73 + 32))(v69, v16, v74);
  v51 = *(v49 + 16);
  v52 = v70;
  v51(v70, v50, v48);
  v53 = v66;
  sub_1D7263FBC();
  v54 = v72;
  result = v75(v53, 1, v72);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v55 = v64;
  v71(v64, v53, v54);
  v79 = v48;
  v56 = __swift_allocate_boxed_opaque_existential_1(v78);
  v51(v56, v52, v48);
LABEL_8:
  sub_1D5B7C248(v78, v55);
  v61 = *(v49 + 8);
  v61(v52, v48);
  return (v61)(v50, v48);
}

uint64_t static CodingUserInfoKey.formatCodingVersionInfo.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5C2ECB0(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  sub_1D7263FBC();
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D601CE38(uint64_t a1, uint64_t *a2)
{
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v9 - v6;
  sub_1D5D2C7C0(a1, &v9 - v6, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
  return Dictionary<>.formatCodingVersionInfo.setter(v7, *a2);
}

void (*Dictionary<>.formatCodingVersionInfo.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *a1 = a2;
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v5);
    v6 = malloc(v5);
  }

  a1[2] = v6;
  Dictionary<>.formatCodingVersionInfo.getter(a2, v6);
  return sub_1D601CFF0;
}

void sub_1D601CFF0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D5D2C7C0(a1[2], v2, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    Dictionary<>.formatCodingVersionInfo.setter(v2, v4);
    sub_1D5D2CCD8(v3, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
  }

  else
  {
    Dictionary<>.formatCodingVersionInfo.setter(a1[2], v4);
  }

  free(v3);

  free(v2);
}

uint64_t sub_1D601D0A0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1D601D14C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v2, v7, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5B580C0(0, &qword_1EDF45AB8);

      v9 = sub_1D725BD1C();
      v10 = *(v9 - 8);
      (*(v10 + 56))(a1, 1, 1, v9);
      return (*(v10 + 8))(v7, v9);
    }

    else
    {
      sub_1D5B58478();
      v15 = *(v14 + 48);

      v16 = sub_1D725BD1C();
      v17 = *(v16 - 8);
      (*(v17 + 32))(a1, v7, v16);
      (*(v17 + 56))(a1, 0, 1, v16);
      return (*(v17 + 8))(&v7[v15], v16);
    }
  }

  else
  {
    v12 = sub_1D725BD1C();
    v13 = *(v12 - 8);
    (*(v13 + 32))(a1, v7, v12);
    return (*(v13 + 56))(a1, 0, 1, v12);
  }
}

uint64_t sub_1D601D3E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v2, v7, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5B580C0(0, &qword_1EDF45AB8);
      v10 = &v7[*(v9 + 48)];
      v11 = *v10;
      v12 = *(v10 + 1);
      sub_1D5B580C0(0, &qword_1EC882658);
      v14 = v13;
      v15 = (a1 + *(v13 + 48));
      v16 = sub_1D725BD1C();
      (*(*(v16 - 8) + 32))(a1, v7, v16);
      *v15 = v11;
      v15[1] = v12;
      return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
    }

    else
    {
      sub_1D5B58478();
      v20 = *(v19 + 48);
      v21 = &v7[*(v19 + 64)];
      v22 = *v21;
      v23 = *(v21 + 1);
      sub_1D5B580C0(0, &qword_1EC882658);
      v25 = v24;
      v26 = (a1 + *(v24 + 48));
      v27 = sub_1D725BD1C();
      v28 = *(v27 - 8);
      (*(v28 + 32))(a1, &v7[v20], v27);
      *v26 = v22;
      v26[1] = v23;
      (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
      return (*(v28 + 8))(v7, v27);
    }
  }

  else
  {
    sub_1D5B580C0(0, &qword_1EC882658);
    (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
    return sub_1D60262D0(v7, type metadata accessor for FormatVersionRequirement.Value);
  }
}

uint64_t sub_1D601D6C4()
{
  v1 = v0;
  v2 = sub_1D725BD1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v1, v18, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5B580C0(0, &qword_1EDF45AB8);

      (*(v3 + 32))(v14, v18, v2);
      v20 = sub_1D725BCAC();
      (*(v3 + 8))(v14, v2);
    }

    else
    {
      sub_1D5B58478();
      v23 = *(v22 + 48);

      v24 = *(v3 + 32);
      v24(v10, v18, v2);
      v24(v6, &v18[v23], v2);
      sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
      if (sub_1D7261F5C())
      {
        v20 = 0;
      }

      else
      {
        v20 = sub_1D725BCAC();
      }

      v25 = *(v3 + 8);
      v25(v6, v2);
      v25(v10, v2);
    }
  }

  else
  {
    (*(v3 + 32))(v14, v18, v2);
    sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
    v21 = sub_1D7261F5C();
    (*(v3 + 8))(v14, v2);
    v20 = v21 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_1D601DA30()
{
  v1 = v0;
  v2 = sub_1D725BD1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v33 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v33 - v17;
  v19 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v1, v22, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5B580C0(0, &qword_1EDF45AB8);
      v25 = *&v22[*(v24 + 48) + 8];
      (*(v3 + 32))(v14, v22, v2);
      sub_1D72621EC();
      sub_1D725BC9C();
      sub_1D72621EC();

      sub_1D7264A2C();
      if (v25)
      {
        sub_1D72621EC();
      }

      return (*(v3 + 8))(v14, v2);
    }

    else
    {
      sub_1D5B58478();
      v28 = *(v27 + 48);
      v29 = &v22[*(v27 + 64)];
      v30 = *(v29 + 1);
      v33[1] = *v29;
      v31 = *(v3 + 32);
      v31(v10, v22, v2);
      v31(v6, &v22[v28], v2);
      sub_1D72621EC();
      sub_1D725BC9C();
      sub_1D72621EC();

      sub_1D725BC9C();
      sub_1D72621EC();

      sub_1D7264A2C();
      if (v30)
      {
        sub_1D72621EC();
      }

      v32 = *(v3 + 8);
      v32(v6, v2);
      return (v32)(v10, v2);
    }
  }

  else
  {
    (*(v3 + 32))(v18, v22, v2);
    sub_1D72621EC();
    sub_1D725BC9C();
    sub_1D72621EC();

    return (*(v3 + 8))(v18, v2);
  }
}

uint64_t sub_1D601DE50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v44, v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FormatVersionRequirement.DeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v43, v5);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FormatVersionRequirement.IntroducedRequirement(0);
  MEMORY[0x1EEE9AC00](v40, v7);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026A28(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v45 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v18 = v48;
  sub_1D7264B0C();
  if (v18)
  {
    v22 = a1;
  }

  else
  {
    v20 = v45;
    v19 = v46;
    v39 = v17;
    v21 = v47;
    v48 = a1;
    sub_1D6025FA8();
    v49 = 0uLL;
    sub_1D726431C();
    v24 = v13;
    if (v50)
    {
      v49 = xmmword_1D7279980;
      if (v50 == 1)
      {
        sub_1D60247F8(&qword_1EC882620, type metadata accessor for FormatVersionRequirement.DeprecatedRequirement);
        v26 = v42;
        v25 = v43;
        sub_1D726431C();
        (*(v20 + 8))(v24, v10);
        sub_1D5B580C0(0, &qword_1EDF45AB8);
        v28 = *(v27 + 48);
        v29 = sub_1D725BD1C();
        v30 = v39;
        (*(*(v29 - 8) + 32))(v39, v26, v29);
        *(v30 + v28) = *&v26[*(v25 + 20)];
      }

      else
      {
        sub_1D60247F8(&qword_1EC882618, type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement);
        v31 = v41;
        v32 = v44;
        sub_1D726431C();
        (*(v20 + 8))(v13, v10);
        sub_1D5B58478();
        v35 = *(v34 + 64);
        v45 = *(v34 + 48);
        v46 = v35;
        v36 = v31;
        v37 = sub_1D725BD1C();
        v38 = *(*(v37 - 8) + 32);
        v30 = v39;
        v38(v39, v36, v37);
        v38((v30 + v45), &v36[*(v32 + 20)], v37);
        *&v46[v30] = *&v36[*(v32 + 24)];
      }
    }

    else
    {
      v49 = xmmword_1D7279980;
      sub_1D60247F8(&qword_1EC882628, type metadata accessor for FormatVersionRequirement.IntroducedRequirement);
      sub_1D726431C();
      (*(v20 + 8))(v13, v10);
      v33 = sub_1D725BD1C();
      v30 = v39;
      (*(*(v33 - 8) + 32))(v39, v19, v33);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D60269C0(v30, v21, type metadata accessor for FormatVersionRequirement.Value);
    v22 = v48;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D601E488(void *a1)
{
  v74 = type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v74, v2);
  v75 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FormatVersionRequirement.DeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v72, v4);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatVersionRequirement.IntroducedRequirement(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D725BD1C();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v10);
  v78 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v79 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v77 = &v71 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v76 = &v71 - v20;
  v21 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026A28(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v86 = v25;
  v84 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v71 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v82 = v28;
  sub_1D7264B5C();
  sub_1D6026904(v80, v24, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v41 = v9;
    v42 = v83;
    v43 = v76;
    v44 = v24;
    v45 = v85;
    (*(v83 + 32))(v76, v44, v85);
    v88 = 0;
    sub_1D6025FFC();
    v87 = 0uLL;
    v38 = v86;
    v46 = v81;
    v39 = v82;
    sub_1D726443C();
    if (!v46)
    {
      (*(v42 + 16))(v41, v43, v45);
      v87 = xmmword_1D7279980;
      sub_1D60247F8(&qword_1EC882648, type metadata accessor for FormatVersionRequirement.IntroducedRequirement);
      sub_1D726443C();
      sub_1D60262D0(v41, type metadata accessor for FormatVersionRequirement.IntroducedRequirement);
    }

    (*(v42 + 8))(v43, v45);
    return (*(v84 + 8))(v39, v38);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5B580C0(0, &qword_1EDF45AB8);
    v31 = &v24[*(v30 + 48)];
    v33 = *v31;
    v32 = *(v31 + 1);
    v34 = v83;
    v35 = v77;
    v36 = v24;
    v37 = v85;
    (*(v83 + 32))(v77, v36, v85);
    v88 = 1;
    sub_1D6025FFC();
    v87 = 0uLL;
    v38 = v86;
    v40 = v81;
    v39 = v82;
    sub_1D726443C();
    if (v40)
    {
    }

    else
    {
      v61 = v73;
      (*(v34 + 16))(v73, v35, v37);
      v62 = (v61 + *(v72 + 20));
      *v62 = v33;
      v62[1] = v32;
      v87 = xmmword_1D7279980;
      sub_1D60247F8(&qword_1EC882640, type metadata accessor for FormatVersionRequirement.DeprecatedRequirement);
      sub_1D726443C();
      sub_1D60262D0(v61, type metadata accessor for FormatVersionRequirement.DeprecatedRequirement);
    }

    (*(v34 + 8))(v35, v37);
    return (*(v84 + 8))(v39, v38);
  }

  sub_1D5B58478();
  v48 = *(v47 + 48);
  v49 = &v24[*(v47 + 64)];
  v50 = v49[1];
  v80 = *v49;
  v51 = v83;
  v52 = *(v83 + 32);
  v53 = v79;
  v54 = v85;
  v52(v79, v24, v85);
  v55 = v78;
  v52(v78, &v24[v48], v54);
  v88 = 2;
  sub_1D6025FFC();
  v87 = 0uLL;
  v56 = v86;
  v58 = v81;
  v57 = v82;
  sub_1D726443C();
  if (v58)
  {

    v59 = *(v51 + 8);
    v59(v55, v54);
    v59(v53, v54);
    return (*(v84 + 8))(v57, v56);
  }

  else
  {
    v81 = v50;
    v63 = *(v51 + 16);
    v64 = v53;
    v65 = v75;
    v63(v75, v64, v54);
    v66 = v74;
    v63((v65 + *(v74 + 20)), v55, v54);
    v67 = (v65 + *(v66 + 24));
    v68 = v81;
    *v67 = v80;
    v67[1] = v68;
    v87 = xmmword_1D7279980;
    sub_1D60247F8(&qword_1EC882638, type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement);
    v69 = v86;
    sub_1D726443C();
    sub_1D60262D0(v65, type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement);
    v70 = *(v51 + 8);
    v70(v78, v54);
    v70(v79, v54);
    return (*(v84 + 8))(v57, v69);
  }
}

uint64_t sub_1D601ECB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1D725BD1C();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026A28(0, &qword_1EC8826F0, sub_1D602696C, &type metadata for FormatVersionRequirement.IntroducedRequirement.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FormatVersionRequirement.IntroducedRequirement(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602696C();
  v15 = v23;
  sub_1D7264B0C();
  if (!v15)
  {
    v16 = v20;
    v17 = v21;
    sub_1D60247F8(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
    sub_1D726431C();
    (*(v16 + 8))(v10, v7);
    (*(v17 + 32))(v14, v22, v3);
    sub_1D60269C0(v14, v19, type metadata accessor for FormatVersionRequirement.IntroducedRequirement);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D601EF94(void *a1)
{
  sub_1D6026A28(0, &qword_1EC882708, sub_1D60268B0, &type metadata for FormatVersionRequirement.DeprecatedRequirement.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60268B0();
  sub_1D7264B5C();
  v12 = 0;
  sub_1D725BD1C();
  sub_1D60247F8(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for FormatVersionRequirement.DeprecatedRequirement(0);
    v11 = 1;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D601F180@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1D725BD1C();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026A28(0, &qword_1EC8826E0, sub_1D60268B0, &type metadata for FormatVersionRequirement.DeprecatedRequirement.CodingKeys, MEMORY[0x1E69E6F48]);
  v31 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for FormatVersionRequirement.DeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60268B0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v15 = v27;
  v16 = v28;
  v33 = 0;
  sub_1D60247F8(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
  v17 = v29;
  sub_1D726431C();
  v18 = v25;
  (*(v16 + 32))(v25, v30, v17);
  v32 = 1;
  v19 = sub_1D726422C();
  v21 = v20;
  (*(v15 + 8))(v10, v31);
  v22 = (v18 + *(v11 + 20));
  *v22 = v19;
  v22[1] = v21;
  sub_1D6026904(v18, v26, type metadata accessor for FormatVersionRequirement.DeprecatedRequirement);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D60262D0(v18, type metadata accessor for FormatVersionRequirement.DeprecatedRequirement);
}

uint64_t sub_1D601F50C(void *a1)
{
  sub_1D6026A28(0, &qword_1EC882700, sub_1D602685C, &type metadata for FormatVersionRequirement.IntroducedThenDeprecatedRequirement.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602685C();
  sub_1D7264B5C();
  v13 = 0;
  sub_1D725BD1C();
  sub_1D60247F8(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement(0);
    v12 = 1;
    sub_1D726443C();
    v11 = 2;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D601F734@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v35 = sub_1D725BD1C();
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v34 = &v29 - v8;
  sub_1D6026A28(0, &qword_1EC8826D0, sub_1D602685C, &type metadata for FormatVersionRequirement.IntroducedThenDeprecatedRequirement.CodingKeys, MEMORY[0x1E69E6F48]);
  v37 = v9;
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602685C();
  v36 = v12;
  v17 = v38;
  sub_1D7264B0C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v33;
  v38 = a1;
  v29 = v13;
  v30 = v16;
  v41 = 0;
  sub_1D60247F8(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
  v19 = v34;
  v20 = v35;
  sub_1D726431C();
  v34 = *(v32 + 32);
  (v34)(v30, v19, v20);
  v40 = 1;
  v21 = v5;
  sub_1D726431C();
  v22 = v30;
  (v34)(&v30[*(v29 + 20)], v21, v20);
  v39 = 2;
  v23 = v36;
  v24 = sub_1D726422C();
  v26 = v25;
  (*(v18 + 8))(v23, v37);
  v27 = (v22 + *(v29 + 24));
  *v27 = v24;
  v27[1] = v26;
  sub_1D6026904(v22, v31, type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1D60262D0(v22, type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement);
}

uint64_t sub_1D601FBA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026A28(0, &qword_1EC8825F0, sub_1D6025E90, &type metadata for FormatVersionRequirement.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6025E90();
  v15 = v23;
  sub_1D7264B0C();
  if (!v15)
  {
    v16 = v21;
    sub_1D60247F8(&qword_1EC8825C8, type metadata accessor for FormatVersionRequirement.Value);
    v17 = v22;
    sub_1D726431C();
    (*(v16 + 8))(v10, v7);
    sub_1D60269C0(v17, v14, type metadata accessor for FormatVersionRequirement.Value);
    sub_1D60269C0(v14, v20, type metadata accessor for FormatVersionRequirement);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D601FE58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461636572706564;
  v4 = 0x80000001D73B7CD0;
  if (v2 == 1)
  {
    v5 = 0xEA00000000006465;
  }

  else
  {
    v3 = 0xD000000000000018;
    v5 = 0x80000001D73B7CD0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6375646F72746E69;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006465;
  }

  v8 = 0x7461636572706564;
  if (*a2 == 1)
  {
    v4 = 0xEA00000000006465;
  }

  else
  {
    v8 = 0xD000000000000018;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6375646F72746E69;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D601FF4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6025B5C();
  *a1 = result;
  return result;
}

void sub_1D601FF7C(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006465;
  v3 = *v1;
  v4 = 0x7461636572706564;
  v5 = 0x80000001D73B7CD0;
  if (v3 == 1)
  {
    v5 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6375646F72746E69;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1D6020090()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6020138()
{
  sub_1D72621EC();
}

uint64_t sub_1D60201CC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60202BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6375646F72746E69 && a2 == 0xEA00000000006465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D602034C(uint64_t a1)
{
  v2 = sub_1D602696C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6020388(uint64_t a1)
{
  v2 = sub_1D602696C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60203DC(void *a1)
{
  sub_1D6026A28(0, &qword_1EC882710, sub_1D602696C, &type metadata for FormatVersionRequirement.IntroducedRequirement.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602696C();
  sub_1D7264B5C();
  sub_1D725BD1C();
  sub_1D60247F8(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D6020588()
{
  if (*v0)
  {
    return 0x6D6563616C706572;
  }

  else
  {
    return 0x7461636572706564;
  }
}

uint64_t sub_1D60205D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461636572706564 && a2 == 0xEA00000000006465;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D60206B8(uint64_t a1)
{
  v2 = sub_1D60268B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60206F4(uint64_t a1)
{
  v2 = sub_1D60268B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6020760()
{
  v1 = 0x7461636572706564;
  if (*v0 != 1)
  {
    v1 = 0x6D6563616C706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6375646F72746E69;
  }
}

uint64_t sub_1D60207C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6025BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D60207EC(uint64_t a1)
{
  v2 = sub_1D602685C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6020828(uint64_t a1)
{
  v2 = sub_1D602685C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60208A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D602092C(uint64_t a1)
{
  v2 = sub_1D6025E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6020968(uint64_t a1)
{
  v2 = sub_1D6025E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60209A4()
{
  sub_1D7264A0C();
  sub_1D601DA30();
  return sub_1D7264A5C();
}

uint64_t sub_1D60209E4()
{
  sub_1D7264A0C();
  sub_1D601DA30();
  return sub_1D7264A5C();
}

uint64_t sub_1D6020A38(void *a1)
{
  sub_1D6026A28(0, &qword_1EC882600, sub_1D6025E90, &type metadata for FormatVersionRequirement.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6025E90();
  sub_1D7264B5C();
  type metadata accessor for FormatVersionRequirement.Value(0);
  sub_1D60247F8(&qword_1EC8825D0, type metadata accessor for FormatVersionRequirement.Value);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FormatVersionInfo.recordedDeprecations.getter()
{
  type metadata accessor for FormatVersionInfo(0);
}

uint64_t sub_1D6020CA0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v167 = a5;
  v168 = a4;
  v169 = a3;
  v170 = a2;
  v158 = sub_1D725A8FC();
  v183 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v6);
  v184 = v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1D5C2ECB0(0, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v160 = v155 - v11;
  v159 = type metadata accessor for FormatDeprecationWarning(0);
  v162 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v12);
  v165 = v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v161 = v155 - v16;
  sub_1D6026050();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v180 = v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60260B8();
  v177 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v176 = v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v178 = v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v155 - v28;
  sub_1D5C2ECB0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v8);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v164 = v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v155 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v155 - v39;
  v41 = sub_1D725BD1C();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v174 = v155 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v173 = v155 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v175 = v155 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v179 = v155 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v163 = v155 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v171 = v155 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = v155 - v62;
  v181 = a1;
  sub_1D601D14C(v40);
  v64 = *(v42 + 48);
  if (v64(v40, 1, v41) == 1)
  {
    v172 = v23;
    sub_1D5D2CCD8(v40, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v65 = v41;
    v66 = v42;
  }

  else
  {
    v156 = v36;
    v166 = v42;
    v71 = *(v42 + 32);
    v72 = v40;
    v73 = v42 + 32;
    v71(v63, v72, v41);
    v74 = v182;
    sub_1D6026904(v182, v29, type metadata accessor for FormatVersioningMode);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v157 = v71;
      v103 = v73;
      v172 = v23;
      v104 = *(type metadata accessor for FormatVersionInfo(0) + 20);
      v105 = v156;
      sub_1D5D2C7C0(v74 + v104, v156, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      if (v64(v105, 1, v41) == 1)
      {
        v106 = v105;
        v107 = MEMORY[0x1E69D6B38];
        sub_1D5D2CCD8(v106, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        sub_1D5D2CCD8(v74 + v104, &qword_1EDF45AC0, v107);
        v157(v74 + v104, v63, v41);
        v66 = v166;
        (*(v166 + 56))(v74 + v104, 0, 1, v41);
        v65 = v41;
      }

      else
      {
        v109 = v163;
        v155[1] = v103;
        v110 = v157;
        v157(v163, v105, v41);
        sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
        v111 = sub_1D7261F6C();
        v66 = v166;
        v112 = (v111 & 1) == 0;
        if (v111)
        {
          v113 = v109;
        }

        else
        {
          v113 = v63;
        }

        v114 = v74;
        if (v112)
        {
          v115 = v109;
        }

        else
        {
          v115 = v63;
        }

        (*(v166 + 8))(v113, v41);
        v116 = v164;
        v110(v164, v115, v41);
        (*(v66 + 56))(v116, 0, 1, v41);
        sub_1D6026144(v116, v114 + v104, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        v65 = v41;
      }
    }

    else
    {
      v75 = v171;
      (v71)();
      sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
      v65 = v41;
      if (sub_1D7261F5C())
      {
        v184 = v168();
        v157 = v71;
        v76 = v75;
        v77 = v63;
        v183 = v78;
        v182 = v170();
        v79 = type metadata accessor for FormatVersioningError(0);
        sub_1D60247F8(qword_1EC882508, type metadata accessor for FormatVersioningError);
        swift_allocError();
        v81 = v80;
        v82 = v166;
        (*(v166 + 16))(v80, v77, v65);
        v157(v81 + v79[5], v76, v65);
        v83 = (v81 + v79[6]);
        v84 = v183;
        *v83 = v184;
        v83[1] = v84;
        *(v81 + v79[7]) = v182;
        swift_willThrow();
        return (*(v82 + 8))(v77, v65);
      }

      v172 = v23;
      v66 = v166;
      v108 = *(v166 + 8);
      v108(v75, v41);
      v108(v63, v41);
    }
  }

  v67 = v180;
  sub_1D601D3E0(v180);
  sub_1D5B580C0(0, &qword_1EC882658);
  v69 = v68;
  if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
  {
    return sub_1D60262D0(v67, sub_1D6026050);
  }

  v85 = (v67 + *(v69 + 48));
  v86 = v67;
  v87 = *v85;
  v88 = v85[1];
  v89 = v177;
  v90 = v65;
  v91 = v176;
  v92 = &v176[*(v177 + 12)];
  v93 = *(v66 + 32);
  v93(v176, v86, v90);
  *v92 = v87;
  *(v92 + 1) = v88;
  v94 = &v91[*(v89 + 12)];
  v96 = *v94;
  v95 = v94[1];
  v97 = v179;
  v98 = v91;
  v99 = v90;
  v93(v179, v98, v90);
  v100 = v178;
  sub_1D6026904(v182, v178, type metadata accessor for FormatVersioningMode);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    (*(v66 + 8))(v97, v90);
  }

  else
  {
    v101 = v175;
    v93(v175, v100, v99);
    sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
    if (sub_1D7261F5C())
    {

      v102 = *(v66 + 8);
      v102(v101, v99);
      return (v102)(v97, v99);
    }

    else
    {
      v180 = v168();
      v178 = v117;
      v181 = v170();
      v166 = v66;
      v118 = v97;
      v119 = *(v66 + 16);
      v119(v173, v101, v99);
      v119(v174, v118, v99);
      v172 = v96;
      v120 = v159;
      v121 = *(v159 + 28);
      v122 = v165;
      v171 = &v165[*(v159 + 24)];
      v123 = sub_1D725A90C();
      v124 = *(v123 - 8);
      v125 = *(v124 + 56);
      v126 = (v124 + 56);
      v176 = v121;
      v127 = &v121[v122];
      v128 = v123;
      v125(v127, 1, 1, v123);
      v129 = &v122[*(v120 + 32)];
      *v129 = 0;
      *(v129 + 1) = 0;
      v177 = v129;
      v119(v122, v173, v99);
      v130 = &v122[*(v120 + 20)];
      v131 = v181;
      v119(v130, v174, v99);
      v132 = v171;
      *v171 = v172;
      *(v132 + 1) = v95;
      if (v131)
      {
        v170 = v126;
        v171 = v125;
        v172 = v99;
        v133 = *(v131 + 16);
        v134 = v182;
        if (v133)
        {
          v187 = MEMORY[0x1E69E7CC0];
          sub_1D6997254(0, v133, 0);
          v135 = v187;
          v136 = v131 + 32;
          v137 = v158;
          do
          {
            sub_1D5B68374(v136, &v185);
            __swift_project_boxed_opaque_existential_1(&v185, v186);
            sub_1D7264BEC();
            if (v138)
            {
              __swift_project_boxed_opaque_existential_1(&v185, v186);
              sub_1D7264BCC();
              sub_1D725A8EC();
            }

            else
            {
              sub_1D725A8DC();
            }

            __swift_destroy_boxed_opaque_existential_1(&v185);
            v187 = v135;
            v140 = *(v135 + 16);
            v139 = *(v135 + 24);
            if (v140 >= v139 >> 1)
            {
              sub_1D6997254(v139 > 1, v140 + 1, 1);
              v135 = v187;
            }

            *(v135 + 16) = v140 + 1;
            (*(v183 + 4))(v135 + ((v183[80] + 32) & ~v183[80]) + *(v183 + 9) * v140, v184, v137);
            v136 += 40;
            --v133;
          }

          while (v133);
          v134 = v182;
        }

        v141 = v165;
        v142 = v160;
        sub_1D725A88C();
        (v171)(v142, 0, 1, v128);
        v99 = v172;
        v143 = v166;
      }

      else
      {
        v142 = v160;
        v125(v160, 1, 1, v128);
        v143 = v166;
        v141 = v165;
        v134 = v182;
      }

      v144 = v178;
      v145 = v134;
      sub_1D6026144(v142, &v176[v141], &qword_1EDF17F38, MEMORY[0x1E69D6400]);
      v146 = v180;
      if (!v144)
      {
        v146 = sub_1D6023154(v141);
        v144 = v147;
      }

      v148 = *(v143 + 8);
      v148(v174, v99);
      v148(v173, v99);
      v149 = v177;

      *v149 = v146;
      v149[1] = v144;
      v150 = v161;
      sub_1D60269C0(v141, v161, type metadata accessor for FormatDeprecationWarning);
      v151 = *(type metadata accessor for FormatVersionInfo(0) + 24);
      v152 = *(v145 + v151);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v152 = sub_1D698BAAC(0, v152[2] + 1, 1, v152);
      }

      v154 = v152[2];
      v153 = v152[3];
      if (v154 >= v153 >> 1)
      {
        v152 = sub_1D698BAAC(v153 > 1, v154 + 1, 1, v152);
      }

      v148(v175, v99);
      v148(v179, v99);
      v152[2] = v154 + 1;
      result = sub_1D60269C0(v150, v152 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v154, type metadata accessor for FormatDeprecationWarning);
      *(v145 + v151) = v152;
    }
  }

  return result;
}

uint64_t sub_1D6021D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725BD1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v24 - v18;
  sub_1D6026904(v4, v10, type metadata accessor for FormatVersioningMode);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v22 = 0;
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    sub_1D5D2F260(a2, a3);
    sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
    v20 = sub_1D7261F5C();
    v21 = *(v12 + 8);
    v21(v15, v11);
    v21(v19, v11);
    v22 = v20 ^ 1;
  }

  return v22 & 1;
}

uint64_t sub_1D6021F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v10 = type metadata accessor for FormatVersioningError(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v5, v17, type metadata accessor for FormatVersioningMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = sub_1D725BD1C();
    EnumCaseMultiPayload = (*(*(v25 - 8) + 8))(v17, v25);
LABEL_7:
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v19);
    *(&v33 - 2) = a2;
    *(&v33 - 1) = a3;
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v33 - 2) = a4;
    *(&v33 - 1) = a5;
    v28 = v34;
    sub_1D6020CA0(v33, sub_1D6026280, v29, sub_1D6026DE8, (&v33 - 4));
    if (!v28)
    {
      LOBYTE(a2) = 1;
    }

    return a2 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v19);
  *(&v33 - 2) = a2;
  *(&v33 - 1) = a3;
  MEMORY[0x1EEE9AC00](v20, v21);
  *(&v33 - 2) = a4;
  *(&v33 - 1) = a5;
  v22 = v34;
  sub_1D6020CA0(v33, sub_1D6026DEC, v23, sub_1D60262A8, (&v33 - 4));
  LOBYTE(a2) = v22 == 0;
  if (v22)
  {
    v35 = v22;
    v24 = v22;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (!swift_dynamicCast())
    {

      v32 = sub_1D725BD1C();
      (*(*(v32 - 8) + 8))(v17, v32);
      return a2 & 1;
    }

    sub_1D60262D0(v13, type metadata accessor for FormatVersioningError);
  }

  v30 = sub_1D725BD1C();
  (*(*(v30 - 8) + 8))(v17, v30);
  return a2 & 1;
}

uint64_t FormatVersioningError.codingPath.getter()
{
  type metadata accessor for FormatVersioningError(0);
}

uint64_t FormatVersioningError.codingPath.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatVersioningError(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t FormatVersioningError.readableCodingPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatVersioningError(0) + 28));
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v3 = v19;
    v4 = v1 + 32;
    do
    {
      sub_1D5B68374(v4, v17);
      __swift_project_boxed_opaque_existential_1(v17, v18);
      sub_1D7264BEC();
      if (v5)
      {
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v6 = sub_1D7264BCC();
      }

      else
      {
        v6 = sub_1D72644BC();
      }

      v8 = v6;
      v9 = v7;
      __swift_destroy_boxed_opaque_existential_1(v17);
      v19 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D5BFC364((v10 > 1), v11 + 1, 1);
        v3 = v19;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v17[0] = v3;
  sub_1D5B58244(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v13 = sub_1D7261F3C();
  v15 = v14;

  v17[0] = 47;
  v17[1] = 0xE100000000000000;
  MEMORY[0x1DA6F9910](v13, v15);

  return v17[0];
}

uint64_t FormatVersioningError.failingProperty.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatVersioningError(0) + 28));
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  sub_1D5B68374(v1 + 40 * v2 - 8, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_1D7264BCC();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t FormatVersioningError.failingIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatVersioningError(0) + 28));
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  sub_1D5B68374(v1 + 40 * v2 - 8, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_1D7264BEC();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}